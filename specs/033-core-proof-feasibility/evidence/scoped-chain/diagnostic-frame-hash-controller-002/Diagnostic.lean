import Core033.PathFrameHashPipeline
import Core033.PhaseStateUpdate

/- Concrete two-compression controller for an admitted 115-byte parent frame.
This is a component of the physical K construction, not a public endpoint.
Inputs: phase, 34 preserved frame words, 8 SHA continuation words.
Phase 1 uses IV and first block; phase 2 uses bound continuation and final block.
Both phases derive every message byte from the same preserved frame fields. -/
namespace Core033.FrameHashController
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def inputCount : Nat := 43
def phasePort : Nat := 0
def framePort (index : Nat) : Nat := 1+index
def shaPort (index : Nat) : Nat := 35+index

def initial : Builder := Builder.empty inputCount
def framed := WordInline.inline initial PathFrameProgram.program framePort
def frameRegister (index : Nat) := WordInlineOutputs.register initial PathFrameProgram.program framePort index

def second : Expr := WordEquality.expression (.input phasePort) (.literal 2)
def select (first later : Expr) : Expr := ControlPrimitives.select second later first

def stateExpression (index : Nat) : Expr :=
  select (.literal ((SHA256.stateWords SHA256.initial).getD index 0)) (.input (shaPort index))

def finalByteExpression (index : Nat) : Expr :=
  if index<51 then .input (frameRegister (64+index))
  else .literal (if index=51 then 128 else if index=62 then 3 else if index=63 then 152 else 0)

def byteExpression (index : Nat) : Expr :=
  select (.input (frameRegister index)) (finalByteExpression index)

def routedExpressions : List Expr :=
  (List.range 8).map stateExpression++(List.range 64).map byteExpression

def routed := WordSequence.compileAll framed.2 routedExpressions
def hashPort (index : Nat) := routed.1.getD index 0
def hashed := WordInline.inline routed.2 HashBlockProgram.program hashPort

def phaseExpression : Expr := select (.literal 2) (.literal 3)
def admissionExpression : Expr :=
  .bxor (WordEquality.expression (.input phasePort) (.literal 1)) second

def finalized := WordSequence.compileAll hashed.2 [phaseExpression,admissionExpression]
def outputs : List Nat :=
  finalized.1.take 1++(List.range 34).map framePort++hashed.1.take 8++
    (List.range 17).map (fun index=>frameRegister (115+index))++hashed.1.drop 8++finalized.1.drop 1

def program : Program := ⟨inputCount,finalized.2.operations,outputs⟩

theorem frame_ports : ∀ index,index<PathFrameProgram.program.inputCount → framePort index<initial.next := by
  intro index bound
  change index<34 at bound
  change 1+index<43
  omega

theorem frame_register_bound (index : Nat) (bound : index<133) : frameRegister index<framed.2.next :=
  (WordInlineOutputs.exact_output initial PathFrameProgram.program PathFrameProgram.program_valid framePort frame_ports
    (fun _=>0) index (by rw [PathFrameProgram.output_count];exact bound)).1

theorem original_bound (index : Nat) (bound : index<inputCount) : index<framed.2.next :=
  Nat.lt_of_lt_of_le bound (extends_next initial framed.2 (WordInline.builder_extends _ _ _))

theorem select_bounded (bound : Nat) (first later : Expr) (phaseBound : phasePort<bound)
    (firstBound : first.Bounded bound) (laterBound : later.Bounded bound) :
    (select first later).Bounded bound := by
  simp only [select,second,WordEquality.expression,ControlPrimitives.select,
    ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]
  tauto

theorem state_bounded (index : Nat) (bound : index<8) : (stateExpression index).Bounded framed.2.next := by
  apply select_bounded _ _ _ (original_bound phasePort (by decide)) trivial
  exact original_bound (shaPort index) (by unfold shaPort inputCount;omega)

theorem final_byte_bounded (index : Nat) (bound : index<64) : (finalByteExpression index).Bounded framed.2.next := by
  unfold finalByteExpression
  split_ifs with message
  · exact frame_register_bound (64+index) (by omega)
  · trivial

theorem byte_bounded (index : Nat) (bound : index<64) : (byteExpression index).Bounded framed.2.next :=
  select_bounded _ _ _ (original_bound phasePort (by decide))
    (frame_register_bound index (by omega)) (final_byte_bounded index bound)

theorem routed_bounded : ∀ expression∈routedExpressions,expression.Bounded framed.2.next := by
  intro expression member
  simp only [routedExpressions,List.mem_append,List.mem_map,List.mem_range] at member
  rcases member with ⟨index,bound,rfl⟩|⟨index,bound,rfl⟩
  · exact state_bounded index bound
  · exact byte_bounded index bound

end Core033.FrameHashController
