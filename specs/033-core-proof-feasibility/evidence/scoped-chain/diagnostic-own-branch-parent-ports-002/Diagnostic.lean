import Core033.OwnBranchOrdering
namespace Core033.OwnBranchParentPorts
open WordIR OwnBranchCoordinates OwnBranchOrdering
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval
def expected (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then inputs 1 else if index=1 then PathCounterProgram.depth (frameInputs inputs 1)
  else if index<23 then inputs index else if index=24 then inputs 23 else 1
/- Every original child root/count and OWN P/C field feeds the same branch
preimage. The synthetic true factors reproduce stored fields; they do not
authorize grandchild summaries or an expected sibling root. -/
theorem exact_ports (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) (index : Nat) (bound : index<26) :
    PathFrameMeaning.parentInputs (frameInputs inputs) index=expected inputs index := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  · rfl
  · rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 0 0=expected inputs 2
    rw [swap_left inputs positive bounded 0 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 1 0=expected inputs 3
    rw [swap_left inputs positive bounded 1 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 2 0=expected inputs 4
    rw [swap_left inputs positive bounded 2 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 3 0=expected inputs 5
    rw [swap_left inputs positive bounded 3 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 4 0=expected inputs 6
    rw [swap_left inputs positive bounded 4 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 5 0=expected inputs 7
    rw [swap_left inputs positive bounded 5 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 6 0=expected inputs 8
    rw [swap_left inputs positive bounded 6 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 7 0=expected inputs 9
    rw [swap_left inputs positive bounded 7 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 12 0=expected inputs 10
    rw [swap_right inputs positive bounded 0 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 13 0=expected inputs 11
    rw [swap_right inputs positive bounded 1 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 14 0=expected inputs 12
    rw [swap_right inputs positive bounded 2 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 15 0=expected inputs 13
    rw [swap_right inputs positive bounded 3 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 16 0=expected inputs 14
    rw [swap_right inputs positive bounded 4 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 17 0=expected inputs 15
    rw [swap_right inputs positive bounded 5 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 18 0=expected inputs 16
    rw [swap_right inputs positive bounded 6 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 19 0=expected inputs 17
    rw [swap_right inputs positive bounded 7 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 8 0=expected inputs 18
    rw [swap_left inputs positive bounded 8 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 9 0=expected inputs 19
    rw [swap_left inputs positive bounded 9 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 20 0=expected inputs 20
    rw [swap_right inputs positive bounded 8 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 21 0=expected inputs 21
    rw [swap_right inputs positive bounded 9 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 10 0=expected inputs 22
    rw [swap_left inputs positive bounded 10 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 22 0=expected inputs 23
    rw [swap_right inputs positive bounded 10 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 11 0=expected inputs 24
    rw [swap_left inputs positive bounded 11 (by decide)]
    rfl
  · change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 23 0=expected inputs 25
    rw [swap_right inputs positive bounded 11 (by decide)]
    rfl
end Core033.OwnBranchParentPorts
