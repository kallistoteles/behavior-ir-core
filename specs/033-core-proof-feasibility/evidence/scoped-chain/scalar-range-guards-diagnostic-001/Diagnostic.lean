import Core033.ScalarRanges
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.ScalarRangeGuards
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000

inductive Kind where
  | boolean | byte | short
  deriving DecidableEq

def Kind.position : Kind → Nat | .boolean=>0 | .byte=>1 | .short=>2
def Kind.bits : Kind → Nat | .boolean=>1 | .byte=>8 | .short=>16
abbrev program := ScalarRanges.program

def wires (kind : Kind) : List Nat := [WordMatrix.outputBase program+kind.position]
def compile (p : Nat) (kind : Kind) : R1CS.Matrix := GuardMatrix.force (WordMatrix.compile p program) (wires kind)

theorem output_count : program.outputs.length=3 := by decide

theorem position_bound (kind : Kind) : kind.position<program.outputs.length := by
  rw [output_count]
  cases kind <;> decide

theorem flag_output (inputs : Nat → WordIR.Word) (kind : Kind) :
    (program.eval inputs).getD kind.position 0=ScalarRanges.flag kind.bits (inputs 0) := by
  rw [ScalarRanges.program_meaning]
  cases kind <;> rfl

theorem guard_wire_bounds (p : Nat) (kind : Kind) : ∀ wire∈wires kind,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  simp only [wires,List.mem_singleton] at member
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  have bound:=position_bound kind
  constructor
  · omega
  · change WordMatrix.outputBase program+kind.position<WordMatrix.outputBase program+program.outputs.length
    omega

theorem accepted_range {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (kind : Kind)
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p kind).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 0).toNat<2^kind.bits := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) (wires kind) rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues kind.position (position_bound kind)
  have one : valuation (WordMatrix.outputBase program+kind.position)=1 := forced.2 _ (by simp [wires])
  have wordOne:=evaluated.symm.trans one
  rw [flag_output inputs kind,ScalarRanges.flag_exact] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem range_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (kind : Kind) (inputs : Nat → WordIR.Word)
    (bounded : (inputs 0).toNat<2^kind.bits) :
    ∃ valuation : Nat → F,(compile p kind).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues,_⟩:=WordMatrix.matrix_complete (F:=F) large program valid inputs
  refine ⟨valuation,?_,inputValues⟩
  apply (GuardMatrix.satisfaction_exact (WordMatrix.compile p program) (wires kind) rfl valuation).mpr
  refine ⟨satisfied,?_⟩
  intro wire member
  simp only [wires,List.mem_singleton] at member
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    satisfied inputValues kind.position (position_bound kind)
  rw [flag_output inputs kind,ScalarRanges.flag_exact,
    show decide ((inputs 0).toNat<2^kind.bits)=true from decide_eq_true bounded] at evaluated
  have oneNat : (WordControl.boolWord true).toNat=1 := by decide
  simpa only [oneNat,Nat.cast_one] using evaluated

end Core033.ScalarRangeGuards
