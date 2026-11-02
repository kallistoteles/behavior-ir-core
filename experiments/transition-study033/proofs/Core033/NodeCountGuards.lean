import Core033.GuardMatrix
import Core033.WordMatrixOutputs
import Core033.NodeCountProgram

namespace Core033.NodeCountGuards
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
open R1CS
abbrev program := NodeCountProgram.program

def wires : List Nat := [WordMatrix.outputBase program+2]
def compile (p : Nat) : Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=3 := by decide

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  simp only [wires,List.mem_singleton] at member
  subst wire
  have positive : 0<WordMatrix.outputBase program := by
    unfold WordMatrix.outputBase
    omega
  constructor
  · omega
  · change WordMatrix.outputBase program+2<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem well_formed (p : Nat) (large : 2^64<p) (fieldBound : p<2^256)
    (limit : (WordMatrix.compile p program).variableCount≤16777216) (valid : program.Valid) :
    (compile p).wellFormed=true :=
  GuardMatrix.well_formed (WordMatrix.compile p program) wires
    (WordMatrixShape.complete_well_formedness p program large fieldBound limit valid)
    large (guard_wire_bounds p)

theorem accepted_admission {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw≤1048576 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues 2 (by rw [output_count];decide)
  have guardOne : valuation (WordMatrix.outputBase program+2)=1 := forced.2 _ (by simp [wires])
  have wordOne:=evaluated.symm.trans guardOne
  rw [NodeCountProgram.admission_exact] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem accepted_sum {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ((program.eval inputs).getD 0 0).toNat+4294967296*((program.eval inputs).getD 1 0).toNat=
      (NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw :=
  NodeCountProgram.exact_admitted_sum inputs
    (accepted_admission large valid valuation inputs accepted inputValues)

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (inputs : Nat → WordIR.Word)
    (admission : (NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw≤1048576) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues,_⟩:=WordMatrix.matrix_complete (F:=F) large program valid inputs
  refine ⟨valuation,?_,inputValues⟩
  apply (GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mpr
  refine ⟨satisfied,?_⟩
  intro wire member
  simp only [wires,List.mem_singleton] at member
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    satisfied inputValues 2 (by rw [output_count];decide)
  rw [NodeCountProgram.admission_exact,show decide ((NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw≤1048576)=true from decide_eq_true admission] at evaluated
  have oneNat : (WordControl.boolWord true).toNat=1 := by decide
  simpa only [oneNat,Nat.cast_one] using evaluated

end Core033.NodeCountGuards
