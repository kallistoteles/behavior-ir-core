import Core033.GuardMatrix
import Core033.WordMatrixOutputs

/- Generic physical output admission. Output flags are constrained to literal
one and connected to the complete u32 execution, rather than caller approvals. -/
namespace Core033.WordGuardSuffix
open WordIR

def wires (program : Program) (first count : Nat) : List Nat :=
  (List.range count).map (fun position=>WordMatrix.outputBase program+(first+position))
def compile (p : Nat) (program : Program) (first count : Nat) : R1CS.Matrix :=
  GuardMatrix.force (WordMatrix.compile p program) (wires program first count)

theorem wire_bounds (p : Nat) (program : Program) (first count : Nat)
    (bounded : first+count≤program.outputs.length) : ∀ wire∈wires program first count,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+(first+position)<WordMatrix.outputBase program+program.outputs.length
    omega

theorem forced_output_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (program : Program) (valid : program.Valid) (first count : Nat)
    (bounded : first+count≤program.outputs.length) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p program first count).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<count) : (program.eval inputs).getD (first+position) 0=1 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) (wires program first count) rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues (first+position) (by omega)
  have one : valuation (WordMatrix.outputBase program+(first+position))=1 :=
    forced.2 _ (List.mem_map.mpr ⟨position,List.mem_range.mpr bound,rfl⟩)
  have castOne : (((program.eval inputs).getD (first+position) 0).toNat : F)=((1 : Word).toNat : F) := by
    simpa using evaluated.symm.trans one
  exact WordPorts.full_port_unique large 32 (by decide) _ _ castOne

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (program : Program) (valid : program.Valid) (first count : Nat)
    (bounded : first+count≤program.outputs.length) (inputs : Nat → Word)
    (admitted : ∀ position,position<count → (program.eval inputs).getD (first+position) 0=1) :
    ∃ valuation : Nat → F,(compile p program first count).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues,_⟩:=WordMatrix.matrix_complete (F:=F) large program valid inputs
  refine ⟨valuation,?_,inputValues⟩
  apply (GuardMatrix.satisfaction_exact (WordMatrix.compile p program) (wires program first count) rfl valuation).mpr
  refine ⟨satisfied,?_⟩
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    satisfied inputValues (first+position) (by omega)
  rw [admitted position bound] at evaluated
  simpa using evaluated

end Core033.WordGuardSuffix
