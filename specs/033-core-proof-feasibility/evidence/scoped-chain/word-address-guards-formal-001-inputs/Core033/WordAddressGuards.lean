import Core033.WordAddressMeaning
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.WordAddressGuards
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev program := WordAddressProgram.program

def wires : List Nat := (List.range 3).map (fun position=>WordMatrix.outputBase program+(1+position))
def compile (p : Nat) : R1CS.Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=4 := by core033_kernel_decide

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+(1+position)<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem accepted_depth {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 8).toNat<256 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues 1 (by rw [output_count];decide)
  have one : valuation (WordMatrix.outputBase program+1)=1 :=
    forced.2 _ (List.mem_map.mpr ⟨0,List.mem_range.mpr (by decide),rfl⟩)
  have wordOne:=evaluated.symm.trans one
  rw [WordAddressMeaning.depth_admission_exact] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem accepted_address_bit {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (program.eval inputs).getD 0 0=WordControl.boolWord
      ((inputs ((inputs 8).toNat/32)).getLsbD (31-(inputs 8).toNat%32)) :=
  WordAddressMeaning.exact_admitted_address_bit inputs
    (accepted_depth large valid valuation inputs accepted inputValues)

theorem valid_flag_one (inputs : Nat → WordIR.Word) (depth : (inputs 8).toNat<256)
    (position : Nat) (bound : position<3) : (program.eval inputs).getD (1+position) 0=1 := by
  have atDrop : ((program.eval inputs).drop 1).getD position 0=(program.eval inputs).getD (1+position) 0 := by
    simp only [List.getD_eq_getElem?_getD,List.getElem?_drop]
  rw [←atDrop,WordAddressMeaning.all_valid_admission_flags inputs depth]
  have cases : position=0 ∨ position=1 ∨ position=2 := by omega
  rcases cases with rfl|rfl|rfl <;> rfl

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (inputs : Nat → WordIR.Word)
    (depth : (inputs 8).toNat<256) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues,_⟩:=WordMatrix.matrix_complete (F:=F) large program valid inputs
  refine ⟨valuation,?_,inputValues⟩
  apply (GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mpr
  refine ⟨satisfied,?_⟩
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    satisfied inputValues (1+position) (by rw [output_count];omega)
  rw [valid_flag_one inputs depth position bound] at evaluated
  simpa using evaluated

end Core033.WordAddressGuards
