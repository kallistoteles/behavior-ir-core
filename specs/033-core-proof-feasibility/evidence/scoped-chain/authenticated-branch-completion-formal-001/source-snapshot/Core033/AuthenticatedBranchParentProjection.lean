import Core033.AuthenticatedBranchOwnProjection

namespace Core033.AuthenticatedBranchParentProjection
open WordIR WordStage AuthenticatedBranchRound AuthenticatedBranchRouting AuthenticatedBranchOwnProjection
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval WordInline.inline WordSequence.compileAll AuthenticatedBranchRound.selectors

theorem parent_active (inputs : Nat → Word) (notOwn : ¬(inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3))
    (index : Nat) (bound : index<43) : routedWord inputs index=
      PairedPathRouteMeaning.project inputs
        (WordControl.boolWord (decide (inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9)))
        (WordControl.boolWord (decide (inputs 0=2 ∨ inputs 0=5 ∨ inputs 0=8)))
        (WordControl.boolWord (decide (inputs 0=3 ∨ inputs 0=6 ∨ inputs 0=9))) index := by
  have truth : decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3)=false := decide_eq_false notOwn
  have mask : selectors.2.values inputs (selectors.1.getD 0 0)=0 :=
    (own_mask inputs).trans (congrArg WordControl.boolWord truth)
  have actual:=original_operands inputs index bound
  have selected:=congrArg (fun word=>ControlPrimitives.selectRaw word
    (ownProject inputs (phaseWord (selectors.2.values inputs)) index)
    (PairedPathRouteMeaning.project inputs (selectors.2.values inputs (selectors.1.getD 1 0))
      (selectors.2.values inputs (selectors.1.getD 2 0)) (selectors.2.values inputs (selectors.1.getD 3 0)) index)) mask
  have chosen:=WordControl.select_word_exact false
    (ownProject inputs (phaseWord (selectors.2.values inputs)) index)
    (PairedPathRouteMeaning.project inputs (selectors.2.values inputs (selectors.1.getD 1 0))
      (selectors.2.values inputs (selectors.1.getD 2 0)) (selectors.2.values inputs (selectors.1.getD 3 0)) index)
  have first:=congrArg (fun word=>PairedPathRouteMeaning.project inputs word
    (selectors.2.values inputs (selectors.1.getD 2 0)) (selectors.2.values inputs (selectors.1.getD 3 0)) index) (new_mask inputs)
  have second:=congrArg (fun word=>PairedPathRouteMeaning.project inputs
    (WordControl.boolWord (decide (inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9))) word
    (selectors.2.values inputs (selectors.1.getD 3 0)) index) (second_mask inputs)
  have third:=congrArg (fun word=>PairedPathRouteMeaning.project inputs
    (WordControl.boolWord (decide (inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9)))
    (WordControl.boolWord (decide (inputs 0=2 ∨ inputs 0=5 ∨ inputs 0=8))) word index) (third_mask inputs)
  exact actual.trans (selected.trans (chosen.trans (first.trans (second.trans third))))

end Core033.AuthenticatedBranchParentProjection
