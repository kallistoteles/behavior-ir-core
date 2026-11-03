import Core033.PathFrameGuards
import Core033.ParentBranchCompleteness

namespace Core033.PathFrameCompleteness
open WordIR PathFrameProgram PathFrameMeaning PathFrameCoordinates
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def CanonicalChildren (inputs : Nat → Word) : Prop :=
  ∀ position,position<4 → ∃ value,BooleanValues.decode (inputs (30+position))=some value

theorem parent_left_count (inputs : Nat → Word) :
    BranchAdmission.left (parentInputs inputs)=
      if direction inputs then (⟨inputs 28,inputs 29⟩ : WideControl.Pair) else ⟨inputs 26,inputs 27⟩ := by
  change WideControl.Pair.mk ((WordSwapProgram.program.eval (swapInputs inputs)).getD 8 0)
    ((WordSwapProgram.program.eval (swapInputs inputs)).getD 9 0)=_
  rw [canonical_swap]
  cases choice : direction inputs <;> rfl

theorem parent_right_count (inputs : Nat → Word) :
    BranchAdmission.right (parentInputs inputs)=
      if direction inputs then (⟨inputs 26,inputs 27⟩ : WideControl.Pair) else ⟨inputs 28,inputs 29⟩ := by
  change WideControl.Pair.mk ((WordSwapProgram.program.eval (swapInputs inputs)).getD 20 0)
    ((WordSwapProgram.program.eval (swapInputs inputs)).getD 21 0)=_
  rw [canonical_swap]
  cases choice : direction inputs <;> rfl

theorem parent_boolean_word (inputs : Nat → Word) (position : Nat) (bound : position<4) :
    parentInputs inputs (22+position)=
      if direction inputs then inputs (if position=0 then 31 else if position=1 then 30 else if position=2 then 33 else 32)
      else inputs (30+position) := by
  have cases : position=0 ∨ position=1 ∨ position=2 ∨ position=3 := by omega
  rcases cases with rfl|rfl|rfl|rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 10 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 22 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 11 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 23 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl

end Core033.PathFrameCompleteness
