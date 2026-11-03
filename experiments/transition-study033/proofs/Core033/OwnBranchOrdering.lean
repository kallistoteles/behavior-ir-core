import Core033.OwnBranchCoordinates

namespace Core033.OwnBranchOrdering
open WordIR OwnBranchCoordinates
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem direction_zero (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) :
    (WordAddressProgram.program.eval (PathFrameMeaning.addressInputs (frameInputs inputs))).getD 0 0=0 := by
  have depthBound : (PathCounterProgram.depth (frameInputs inputs 1)).toNat<256 := by
    rw [depth_exact inputs positive bounded]
    omega
  have addressDepth : (PathFrameMeaning.addressInputs (frameInputs inputs) 8).toNat<256 := depthBound
  rw [WordAddressMeaning.exact_admitted_address_bit _ addressDepth]
  have selectedBound : (PathFrameMeaning.addressInputs (frameInputs inputs) 8).toNat/32<8 := by omega
  have zeroWord : PathFrameMeaning.addressInputs (frameInputs inputs)
      ((PathFrameMeaning.addressInputs (frameInputs inputs) 8).toNat/32)=0 := by
    rw [PathFrameMeaning.addressInputs,if_pos selectedBound]
    exact address_zero inputs _ selectedBound
  rw [zeroWord]
  simp [BitVec.getLsbD_zero,WordControl.boolWord]

theorem swap_left (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) (index : Nat) (bound : index<12) :
    (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD index 0=
      frameInputs inputs (PathFrameProgram.childPort index) := by
  have direction : PathFrameMeaning.swapInputs (frameInputs inputs) 0=WordControl.boolWord false :=
    direction_zero inputs positive bounded
  rw [WordSwapProgram.canonical_direction _ false direction]
  simp only [Bool.false_eq_true,if_false,PaddingStream.getD_append_cases,List.length_append,List.length_map,List.length_range]
  rw [if_pos (by omega : index<12+12),if_pos bound]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]
  simp only [PathFrameMeaning.swapInputs,if_neg (by omega : 1+index≠0),
    if_pos (by omega : 1+index<13),Nat.add_sub_cancel_left]

theorem swap_right (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) (index : Nat) (bound : index<12) :
    (WordSwapProgram.program.eval (PathFrameMeaning.swapInputs (frameInputs inputs))).getD (12+index) 0=
      frameInputs inputs (PathFrameProgram.siblingPort index) := by
  have direction : PathFrameMeaning.swapInputs (frameInputs inputs) 0=WordControl.boolWord false :=
    direction_zero inputs positive bounded
  rw [WordSwapProgram.canonical_direction _ false direction]
  simp only [Bool.false_eq_true,if_false,PaddingStream.getD_append_cases,List.length_append,List.length_map,List.length_range]
  rw [if_pos (by omega : 12+index<12+12),if_neg (by omega : ¬12+index<12),Nat.add_sub_cancel_left]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]
  simp only [PathFrameMeaning.swapInputs,if_neg (by omega : 13+index≠0),
    if_neg (by omega : ¬13+index<13),Nat.add_sub_cancel_left]

end Core033.OwnBranchOrdering
