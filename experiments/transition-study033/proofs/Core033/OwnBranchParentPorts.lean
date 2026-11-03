import Core033.OwnBranchOrdering
namespace Core033.OwnBranchParentPorts
open WordIR OwnBranchCoordinates OwnBranchOrdering
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def expected (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then inputs 1 else if index=1 then PathCounterProgram.depth (frameInputs inputs 1)
  else if index<23 then inputs index else if index=24 then inputs 23 else 1

def project (frame : Nat → Word) (words : List Word) (index : Nat) : Word :=
  if index=0 then frame 0 else if index=1 then PathCounterProgram.depth (frame 1)
  else words.getD (PathFrameProgram.parentSlot index) 0

def ordered (inputs : Nat → Word) : List Word :=
  (List.range 12).map (fun index=>PathFrameMeaning.swapInputs (frameInputs inputs) (1+index))++
    (List.range 12).map (fun index=>PathFrameMeaning.swapInputs (frameInputs inputs) (13+index))++[1]

theorem parent_projection (frame : Nat → Word) (index : Nat) :
    PathFrameMeaning.parentInputs frame index=
      project frame (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs frame)) index := rfl

theorem ordered_exact (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) :
    WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))=ordered inputs := by
  have direction : PathFrameMeaning.swapInputs (frameInputs inputs) 0=WordControl.boolWord false :=
    direction_zero inputs positive bounded
  have result:=WordSwapProgram.canonical_direction _ false direction
  simpa only [Bool.false_eq_true,ite_false,ordered] using result

theorem projected_fields (inputs : Nat → Word) (index : Nat) (bound : index<26) :
    project (frameInputs inputs) (ordered inputs) index=expected inputs index := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals rfl

theorem exact_ports (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) (index : Nat) (bound : index<26) :
    PathFrameMeaning.parentInputs (frameInputs inputs) index=expected inputs index :=
  (parent_projection (frameInputs inputs) index).trans
    ((congrArg (fun words=>project (frameInputs inputs) words index)
      (ordered_exact inputs positive bounded)).trans (projected_fields inputs index bound))

end Core033.OwnBranchParentPorts
