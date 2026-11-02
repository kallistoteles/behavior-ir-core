import Core033.BranchCheckedProgram
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.BranchCheckedGuards
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev program := BranchCheckedProgram.program

def wires : List Nat := (List.range 7).map (fun position=>WordMatrix.outputBase program+(115+position))
def compile (p : Nat) : R1CS.Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=122 := by core033_kernel_decide

theorem flag_output (inputs : Nat → WordIR.Word) (position : Nat) :
    (program.eval inputs).getD (115+position) 0=(BranchAdmission.flags inputs).getD position 0 := by
  have same : ((program.eval inputs).drop 115).getD position 0=(program.eval inputs).getD (115+position) 0 := by
    simp only [List.getD_eq_getElem?_getD,List.getElem?_drop]
  rw [←same,BranchCheckedProgram.flags_exact]

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+(115+position)<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem forced_flag_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<7) : (BranchAdmission.flags inputs).getD position 0=1 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues (115+position) (by rw [output_count];omega)
  have one : valuation (WordMatrix.outputBase program+(115+position))=1 :=
    forced.2 _ (List.mem_map.mpr ⟨position,List.mem_range.mpr bound,rfl⟩)
  rw [flag_output] at evaluated
  have castOne : (((BranchAdmission.flags inputs).getD position 0).toNat : F)=((1 : WordIR.Word).toNat : F) := by
    simpa using evaluated.symm.trans one
  exact WordPorts.full_port_unique large 32 (by decide) _ _ castOne

theorem accepted_admission {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted inputs := by
  intro flag member
  obtain ⟨position,bound,same⟩:=List.getElem_of_mem member
  have length : (BranchAdmission.flags inputs).length=7 := rfl
  have inRange : position<7 := by omega
  have value : (BranchAdmission.flags inputs).getD position 0=flag := by
    rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem bound,Option.getD_some,same]
  rw [←value]
  exact forced_flag_one large valid valuation inputs accepted inputValues position inRange

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (inputs : Nat → WordIR.Word)
    (admitted : BranchAdmission.Admitted inputs) :
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
    satisfied inputValues (115+position) (by rw [output_count];omega)
  rw [flag_output] at evaluated
  have length : (BranchAdmission.flags inputs).length=7 := rfl
  have found : (BranchAdmission.flags inputs)[position]?=some ((BranchAdmission.flags inputs).getD position 0) := by
    rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by omega),Option.getD_some]
  have wordOne:=admitted _ (List.mem_of_getElem? found)
  rw [wordOne] at evaluated
  simpa using evaluated

end Core033.BranchCheckedGuards
