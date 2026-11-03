import Core033.WordBarrel
import Core033.WordBit
import Core033.ControlPrimitives
import Core033.ScalarRanges

namespace Core033.WordShiftProgram
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def expression (register bit : Nat) : Expr :=
  ControlPrimitives.select (WordBit.expression 1 bit) (.shr (.input register) (2^bit)) (.input register)

def step (current : Nat × Builder) (bit : Nat) : Nat × Builder := compile (expression current.1 bit) current.2

def initial : Builder := Builder.empty 2

def compute : Nat → Nat × Builder
  | 0 => (0,initial)
  | count+1 => step (compute count) count

theorem step_extends (current : Nat × Builder) (bit : Nat) : Extends current.2 (step current bit).2 :=
  compile_extends _ _

theorem compute_extends (count : Nat) : Extends initial (compute count).2 := by
  induction count with
  | zero => exact extends_refl initial
  | succ count ih => exact extends_trans _ _ _ ih (step_extends _ _)

theorem step_meaning (current : Nat × Builder) (bit : Nat) (inputs : Nat → Word)
    (value amount : Word) (meaning : Meaning current.2 inputs current.1 value)
    (amountBound : 1<current.2.next) (amountExact : current.2.values inputs 1=amount) :
    Meaning (step current bit).2 inputs (step current bit).1 (WordBarrel.stage amount.toNat value bit) := by
  have bounded : (expression current.1 bit).Bounded current.2.next := by
    simp [expression,ControlPrimitives.select,WordBit.expression,Expr.Bounded,meaning.1,amountBound]
  have compiled:=compile_sound (expression current.1 bit) current.2 inputs bounded
  have evaluated : (expression current.1 bit).eval (current.2.values inputs)=WordBarrel.stage amount.toNat value bit := by
    change ControlPrimitives.selectRaw (WordBit.bitWord (current.2.values inputs 1) bit)
      ((current.2.values inputs current.1).ushiftRight (2^bit)) (current.2.values inputs current.1)=_
    rw [amountExact,meaning.2,WordBit.bit_word_exact]
    exact WordControl.select_word_exact _ _ _
  rw [evaluated] at compiled
  exact compiled

theorem compute_meaning (count : Nat) (inputs : Nat → Word) :
    Meaning (compute count).2 inputs (compute count).1
      ((List.range count).foldl (WordBarrel.stage (inputs 1).toNat) (inputs 0)) := by
  induction count with
  | zero => exact ⟨by decide,rfl⟩
  | succ count ih =>
    have extended:=compute_extends count
    have nextBound:=extends_next initial (compute count).2 extended
    have amountBound : 1<(compute count).2.next := by change 2≤(compute count).2.next at nextBound;omega
    have amountExact : (compute count).2.values inputs 1=inputs 1 :=
      extends_values initial (compute count).2 extended inputs 1 (by decide)
    have result:=step_meaning (compute count) count inputs _ (inputs 1) ih amountBound amountExact
    simpa only [compute,List.range_succ,List.foldl_append,List.foldl_cons,List.foldl_nil] using result

def flagExpression : Expr := ControlPrimitives.zero (.shr (.input 1) 5)
def finalStage := compile flagExpression (compute 5).2

def program : Program := ⟨2,finalStage.2.operations,[(compute 5).1,finalStage.1]⟩

theorem flag_bounded : flagExpression.Bounded (compute 5).2.next := by
  have nextBound:=extends_next initial (compute 5).2 (compute_extends 5)
  have amountBound : 1<(compute 5).2.next := by change 2≤(compute 5).2.next at nextBound;omega
  simp [flagExpression,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded,amountBound]

theorem flag_meaning (inputs : Nat → Word) :
    Meaning finalStage.2 inputs finalStage.1 (ScalarRanges.flag 5 (inputs 1)) := by
  have amountExact : (compute 5).2.values inputs 1=inputs 1 :=
    extends_values initial (compute 5).2 (compute_extends 5) inputs 1 (by decide)
  have compiled:=compile_sound flagExpression (compute 5).2 inputs flag_bounded
  have evaluated : flagExpression.eval ((compute 5).2.values inputs)=ScalarRanges.flag 5 (inputs 1) := by
    change WordControl.zeroWord (((compute 5).2.values inputs 1).ushiftRight 5)=_
    rw [amountExact]
    rfl
  rw [evaluated] at compiled
  exact compiled

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=[WordBarrel.shift (inputs 0) (inputs 1).toNat,ScalarRanges.flag 5 (inputs 1)] := by
  have value:=compute_meaning 5 inputs
  have kept:=meaning_extends (compute 5).2 finalStage.2 (compile_extends flagExpression _) inputs _ _ value
  have flag:=flag_meaning inputs
  change [finalStage.2.values inputs (compute 5).1,finalStage.2.values inputs finalStage.1]=_
  rw [kept.2,flag.2]
  rfl

theorem exact_admitted_shift (inputs : Nat → Word) (bound : (inputs 1).toNat<32) :
    (program.eval inputs).getD 0 0=(inputs 0).ushiftRight (inputs 1).toNat := by
  rw [program_meaning]
  exact WordBarrel.exact_shift _ _ bound

theorem admission_exact (inputs : Nat → Word) :
    (program.eval inputs).getD 1 0=WordControl.boolWord (decide ((inputs 1).toNat<32)) := by
  rw [program_meaning]
  exact ScalarRanges.flag_exact _ _

end Core033.WordShiftProgram
