import Core033.ParentBranchProgram

namespace Core033.ParentBranchEncoding
open WordIR ParentBranchProgram
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem positive_word (inputs : Nat → Word) (left right : Bool)
    (leftWord : inputs 22=WordControl.boolWord left) (rightWord : inputs 23=WordControl.boolWord right) :
    branchInputs inputs 24=WordControl.boolWord (left && right) := by
  change inputs 22 &&& inputs 23=_
  rw [leftWord,rightWord,WordControl.bool_and]

theorem covered_word (inputs : Nat → Word) (left right : Bool)
    (leftWord : inputs 24=WordControl.boolWord left) (rightWord : inputs 25=WordControl.boolWord right) :
    branchInputs inputs 25=WordControl.boolWord (left && right) := by
  change inputs 24 &&& inputs 25=_
  rw [leftWord,rightWord,WordControl.bool_and]

theorem total_exact (inputs : Nat → Word)
    (bounded : (WideControl.Pair.raw ⟨inputs 18,inputs 19⟩)+(WideControl.Pair.raw ⟨inputs 20,inputs 21⟩)≤1048576) :
    WideControl.Pair.raw ⟨branchInputs inputs 22,branchInputs inputs 23⟩=
      WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩ :=
  NodeCounts.exact_sum _ _ bounded

theorem byte_word_count (inputs : Nat → Word) : (BranchWordProgram.program.eval inputs).length=115 := by
  have outputCount : BranchWordProgram.program.outputs.length=115 := by core033_kernel_decide
  simp only [WordIR.Program.eval,List.length_map,outputCount]

def emittedBytes (inputs : Nat → Word) : Codec.Bytes :=
  ((program.eval inputs).take 115).map (fun word=>UInt8.ofNat word.toNat)

theorem byte_prefix (inputs : Nat → Word) :
    (program.eval inputs).take 115=BranchWordProgram.program.eval (branchInputs inputs) := by
  rw [ParentBranchProgram.program_meaning,BranchCheckedProgram.program_meaning]
  rw [←byte_word_count (branchInputs inputs)]
  simp only [List.append_assoc,List.take_left]

theorem exact_computed_branch_bytes (inputs : Nat → Word) (lp rp lc rc : Bool)
    (leftPositive : inputs 22=WordControl.boolWord lp) (rightPositive : inputs 23=WordControl.boolWord rp)
    (leftCovered : inputs 24=WordControl.boolWord lc) (rightCovered : inputs 25=WordControl.boolWord rc) :
    emittedBytes inputs=BranchCodec.encode (BranchWordEncoding.branch (branchInputs inputs) (lp && rp) (lc && rc)) := by
  rw [emittedBytes,byte_prefix]
  exact BranchWordEncoding.exact_original_branch_encoding (branchInputs inputs) _ _
    (positive_word inputs lp rp leftPositive rightPositive) (covered_word inputs lc rc leftCovered rightCovered)

end Core033.ParentBranchEncoding
