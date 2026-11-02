import Core033.BranchAdmissionProgram
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.BranchAdmissionGuards
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
abbrev program := BranchAdmissionProgram.program

def wires : List Nat := (List.range 7).map (fun position=>WordMatrix.outputBase program+position)
def compile (p : Nat) : R1CS.Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=7 := by decide

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  obtain ⟨position,member,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp member
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+position<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem forced_output_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<7) : (program.eval inputs).getD position 0=1 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues position (by rw [output_count];exact bound)
  have one : valuation (WordMatrix.outputBase program+position)=1 :=
    forced.2 _ (List.mem_map.mpr ⟨position,List.mem_range.mpr bound,rfl⟩)
  have castOne : (((program.eval inputs).getD position 0).toNat : F)=((1 : WordIR.Word).toNat : F) := by
    simpa using evaluated.symm.trans one
  exact WordPorts.full_port_unique large 32 (by decide) _ _ castOne

theorem accepted_admission {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted inputs := by
  have all:=forced_output_one large valid valuation inputs accepted inputValues
  have evaluated : ∀ flag∈program.eval inputs,flag=1 := by
    intro flag member
    obtain ⟨position,bound,same⟩:=List.getElem_of_mem member
    have size : (program.eval inputs).length=7 := by
      change (program.outputs.map _).length=7
      rw [List.length_map,output_count]
    have inRange : position<7 := by omega
    have value : (program.eval inputs).getD position 0=flag := by
      rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem bound,Option.getD_some,same]
    rw [←value]
    exact all position inRange
  exact (BranchAdmissionProgram.exact_admission inputs).mp evaluated

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
  obtain ⟨position,member,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp member
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    satisfied inputValues position (by rw [output_count];exact bound)
  have programAdmitted:=(BranchAdmissionProgram.exact_admission inputs).mpr admitted
  have inProgram : (program.eval inputs).getD position 0∈program.eval inputs := by
    have length : position<(program.eval inputs).length := by
      change position<(program.outputs.map _).length
      rw [List.length_map,output_count]
      exact bound
    have found : (program.eval inputs)[position]?=some ((program.eval inputs).getD position 0) := by
      rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem length,Option.getD_some]
    exact List.mem_of_getElem? found
  have wordOne:=programAdmitted _ inProgram
  rw [wordOne] at evaluated
  simpa using evaluated

end Core033.BranchAdmissionGuards
