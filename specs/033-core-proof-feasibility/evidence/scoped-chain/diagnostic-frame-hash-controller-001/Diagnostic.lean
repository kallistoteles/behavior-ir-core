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

end Core033.FrameHashController
