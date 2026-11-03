import Core033.ParentBranchGuards

namespace Core033.ParentBranchCompleteness
open WordIR ParentBranchProgram
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def CanonicalChildren (inputs : Nat → Word) : Prop :=
  ∀ position,position<4 → ∃ value,BooleanValues.decode (inputs (22+position))=some value

theorem derived_admission (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (depth : (inputs 1).toNat<256)
    (children : CanonicalChildren inputs)
    (bounded : WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576) :
    BranchAdmission.Admitted (branchInputs inputs) := by
  obtain ⟨lp,leftPositive⟩:=children 0 (by decide)
  obtain ⟨rp,rightPositive⟩:=children 1 (by decide)
  obtain ⟨lc,leftCovered⟩:=children 2 (by decide)
  obtain ⟨rc,rightCovered⟩:=children 3 (by decide)
  apply BranchAdmission.admitted_complete
  · exact kind
  · exact depth
  · refine ⟨lp && rp,?_⟩
    rw [ParentBranchEncoding.positive_word inputs lp rp
      (BooleanValues.decoded_reconstructs _ _ leftPositive).symm
      (BooleanValues.decoded_reconstructs _ _ rightPositive).symm]
    exact BooleanValues.boolean_complete _
  · refine ⟨lc && rc,?_⟩
    rw [ParentBranchEncoding.covered_word inputs lc rc
      (BooleanValues.decoded_reconstructs _ _ leftCovered).symm
      (BooleanValues.decoded_reconstructs _ _ rightCovered).symm]
    exact BooleanValues.boolean_complete _
  · rfl
  · exact bounded

theorem all_flags_one (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (depth : (inputs 1).toNat<256)
    (children : CanonicalChildren inputs)
    (bounded : WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576) :
    ∀ position,position<12 → (program.eval inputs).getD (115+position) 0=1 := by
  intro position bound
  by_cases branchFlag : position<7
  · rw [ParentBranchGuards.branch_flag inputs position branchFlag]
    have length : (BranchAdmission.flags (branchInputs inputs)).length=7 := rfl
    have found : (BranchAdmission.flags (branchInputs inputs))[position]?=
        some ((BranchAdmission.flags (branchInputs inputs)).getD position 0) := by
      rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by omega),Option.getD_some]
    exact derived_admission inputs kind depth children bounded _ (List.mem_of_getElem? found)
  · by_cases countFlag : position=7
    · subst position
      rw [show 115+7=122 by decide,ParentBranchGuards.count_flag,BranchAdmission.bool_word_one]
      exact decide_eq_true bounded
    · have indexBound : position-8<4 := by omega
      rw [show 115+position=123+(position-8) by omega,ParentBranchGuards.child_boolean_flag inputs _ indexBound]
      exact (BooleanValues.guard_admits_exactly_booleans _).mpr (children _ indexBound)

theorem typed_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (depth : (inputs 1).toNat<256)
    (children : CanonicalChildren inputs)
    (bounded : WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576) :
    ∃ valuation : Nat → F,(ParentBranchGuards.compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) :=
  ParentBranchGuards.admitted_complete large inputs (all_flags_one inputs kind depth children bounded)

end Core033.ParentBranchCompleteness
