import Core033.PairedPathStateMeaning

namespace Core033.PairedPathAssignments
open WordIR WordStage PairedPathRound PairedPathState PairedPathRouting PairedPathStateMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval WordInline.inline WordSequence.compileAll PairedPathRound.selectors

theorem old_mask (inputs : Nat → Word) :
    round.2.values inputs (selectors.1.getD 3 0)=WordControl.boolWord (decide (inputs 0=3)) := by
  have value:=(selector_at_round inputs 3 (by decide)).2
  change round.2.values inputs (selectors.1.getD 3 0)=WordEquality.equalWord (inputs 0) 3 at value
  exact value.trans (WordEquality.equal_word_exact _ _)

theorem new_mask (inputs : Nat → Word) :
    round.2.values inputs (selectors.1.getD 4 0)=WordControl.boolWord (decide (inputs 0=6)) := by
  have value:=(selector_at_round inputs 4 (by decide)).2
  change round.2.values inputs (selectors.1.getD 4 0)=WordEquality.equalWord (inputs 0) 6 at value
  exact value.trans (WordEquality.equal_word_exact _ _)

theorem physical_state (inputs : Nat → Word) (index : Nat) (bound : index<96) :
    (program.eval inputs).getD index 0=project inputs (localWords inputs)
      (WordControl.boolWord (decide (inputs 0=3))) (WordControl.boolWord (decide (inputs 0=6))) index := by
  have first:=congrArg (fun mask=>project inputs (localWords inputs) mask
    (round.2.values inputs (selectors.1.getD 4 0)) index) (old_mask inputs)
  have second:=congrArg (fun mask=>project inputs (localWords inputs)
    (WordControl.boolWord (decide (inputs 0=3))) mask index) (new_mask inputs)
  exact (PairedPathPorts.state_word inputs index bound).trans
    ((original_projected inputs index bound).trans (first.trans second))

theorem old_parent_projection (inputs localValues : Nat → Word) (oldMask newMask : Word)
    (index : Nat) (bound : index<12) :
    project inputs localValues oldMask newMask (55+index)=
      ControlPrimitives.selectRaw oldMask (localValues (parentIndex index)) (inputs (55+index)) := by
  simp only [project,if_neg (by omega : 55+index≠0),if_neg (by omega : 55+index≠2),
    if_neg (by omega : ¬(47≤55+index ∧ 55+index<55)),
    if_pos (by omega : 55≤55+index ∧ 55+index<67),Nat.add_sub_cancel_left]

theorem new_parent_projection (inputs localValues : Nat → Word) (oldMask newMask : Word)
    (index : Nat) (bound : index<12) :
    project inputs localValues oldMask newMask (67+index)=
      ControlPrimitives.selectRaw newMask (localValues (parentIndex index)) (inputs (67+index)) := by
  simp only [project,if_neg (by omega : 67+index≠0),if_neg (by omega : 67+index≠2),
    if_neg (by omega : ¬(47≤67+index ∧ 67+index<55)),
    if_neg (by omega : ¬(55≤67+index ∧ 67+index<67)),
    if_pos (by omega : 67≤67+index ∧ 67+index<79),Nat.add_sub_cancel_left]

theorem old_parent_word (inputs : Nat → Word) (index : Nat) (bound : index<12) :
    (program.eval inputs).getD (55+index) 0=
      if inputs 0=3 then localWords inputs (parentIndex index) else inputs (55+index) := by
  have state:=physical_state inputs (55+index) (by omega)
  have projection:=old_parent_projection inputs (localWords inputs)
    (WordControl.boolWord (decide (inputs 0=3))) (WordControl.boolWord (decide (inputs 0=6))) index bound
  have selected:=WordControl.select_word_exact (decide (inputs 0=3))
    (localWords inputs (parentIndex index)) (inputs (55+index))
  exact state.trans (projection.trans (by simpa only [decide_eq_true_eq] using selected))

theorem new_parent_word (inputs : Nat → Word) (index : Nat) (bound : index<12) :
    (program.eval inputs).getD (67+index) 0=
      if inputs 0=6 then localWords inputs (parentIndex index) else inputs (67+index) := by
  have state:=physical_state inputs (67+index) (by omega)
  have projection:=new_parent_projection inputs (localWords inputs)
    (WordControl.boolWord (decide (inputs 0=3))) (WordControl.boolWord (decide (inputs 0=6))) index bound
  have selected:=WordControl.select_word_exact (decide (inputs 0=6))
    (localWords inputs (parentIndex index)) (inputs (67+index))
  exact state.trans (projection.trans (by simpa only [decide_eq_true_eq] using selected))

end Core033.PairedPathAssignments
