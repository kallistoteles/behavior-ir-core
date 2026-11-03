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

theorem port0 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 0=expected inputs 0 := by
  rfl
theorem port1 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 1=expected inputs 1 := by
  rfl
theorem port2 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 2=expected inputs 2 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 0 0=expected inputs 2
  rw [swap_left inputs positive bounded 0 (by decide)]
  rfl
theorem port3 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 3=expected inputs 3 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 1 0=expected inputs 3
  rw [swap_left inputs positive bounded 1 (by decide)]
  rfl
theorem port4 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 4=expected inputs 4 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 2 0=expected inputs 4
  rw [swap_left inputs positive bounded 2 (by decide)]
  rfl
theorem port5 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 5=expected inputs 5 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 3 0=expected inputs 5
  rw [swap_left inputs positive bounded 3 (by decide)]
  rfl
theorem port6 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 6=expected inputs 6 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 4 0=expected inputs 6
  rw [swap_left inputs positive bounded 4 (by decide)]
  rfl
theorem port7 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 7=expected inputs 7 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 5 0=expected inputs 7
  rw [swap_left inputs positive bounded 5 (by decide)]
  rfl
theorem port8 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 8=expected inputs 8 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 6 0=expected inputs 8
  rw [swap_left inputs positive bounded 6 (by decide)]
  rfl
theorem port9 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 9=expected inputs 9 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 7 0=expected inputs 9
  rw [swap_left inputs positive bounded 7 (by decide)]
  rfl
theorem port10 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 10=expected inputs 10 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 12 0=expected inputs 10
  rw [swap_right inputs positive bounded 0 (by decide)]
  rfl
theorem port11 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 11=expected inputs 11 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 13 0=expected inputs 11
  rw [swap_right inputs positive bounded 1 (by decide)]
  rfl
theorem port12 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 12=expected inputs 12 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 14 0=expected inputs 12
  rw [swap_right inputs positive bounded 2 (by decide)]
  rfl
theorem port13 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 13=expected inputs 13 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 15 0=expected inputs 13
  rw [swap_right inputs positive bounded 3 (by decide)]
  rfl
theorem port14 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 14=expected inputs 14 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 16 0=expected inputs 14
  rw [swap_right inputs positive bounded 4 (by decide)]
  rfl
theorem port15 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 15=expected inputs 15 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 17 0=expected inputs 15
  rw [swap_right inputs positive bounded 5 (by decide)]
  rfl
theorem port16 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 16=expected inputs 16 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 18 0=expected inputs 16
  rw [swap_right inputs positive bounded 6 (by decide)]
  rfl
theorem port17 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 17=expected inputs 17 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 19 0=expected inputs 17
  rw [swap_right inputs positive bounded 7 (by decide)]
  rfl
theorem port18 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 18=expected inputs 18 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 8 0=expected inputs 18
  rw [swap_left inputs positive bounded 8 (by decide)]
  rfl
theorem port19 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 19=expected inputs 19 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 9 0=expected inputs 19
  rw [swap_left inputs positive bounded 9 (by decide)]
  rfl
theorem port20 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 20=expected inputs 20 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 20 0=expected inputs 20
  rw [swap_right inputs positive bounded 8 (by decide)]
  rfl
theorem port21 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 21=expected inputs 21 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 21 0=expected inputs 21
  rw [swap_right inputs positive bounded 9 (by decide)]
  rfl
theorem port22 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 22=expected inputs 22 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 10 0=expected inputs 22
  rw [swap_left inputs positive bounded 10 (by decide)]
  rfl
theorem port23 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 23=expected inputs 23 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 22 0=expected inputs 23
  rw [swap_right inputs positive bounded 10 (by decide)]
  rfl
theorem port24 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 24=expected inputs 24 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 11 0=expected inputs 24
  rw [swap_left inputs positive bounded 11 (by decide)]
  rfl
theorem port25 (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) : PathFrameMeaning.parentInputs (frameInputs inputs) 25=expected inputs 25 := by
  change (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD 23 0=expected inputs 25
  rw [swap_right inputs positive bounded 11 (by decide)]
  rfl
theorem exact_ports (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) (index : Nat) (bound : index<26) :
    PathFrameMeaning.parentInputs (frameInputs inputs) index=expected inputs index := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  · exact port0 inputs positive bounded
  · exact port1 inputs positive bounded
  · exact port2 inputs positive bounded
  · exact port3 inputs positive bounded
  · exact port4 inputs positive bounded
  · exact port5 inputs positive bounded
  · exact port6 inputs positive bounded
  · exact port7 inputs positive bounded
  · exact port8 inputs positive bounded
  · exact port9 inputs positive bounded
  · exact port10 inputs positive bounded
  · exact port11 inputs positive bounded
  · exact port12 inputs positive bounded
  · exact port13 inputs positive bounded
  · exact port14 inputs positive bounded
  · exact port15 inputs positive bounded
  · exact port16 inputs positive bounded
  · exact port17 inputs positive bounded
  · exact port18 inputs positive bounded
  · exact port19 inputs positive bounded
  · exact port20 inputs positive bounded
  · exact port21 inputs positive bounded
  · exact port22 inputs positive bounded
  · exact port23 inputs positive bounded
  · exact port24 inputs positive bounded
  · exact port25 inputs positive bounded
end Core033.OwnBranchParentPorts
