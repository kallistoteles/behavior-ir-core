import Core033.PairedPathRoundTrace

namespace Core033.PairedPathDigestTrace
open WordIR PairedPathRound PairedPathTrace PairedPathRoundTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def rootBytes (inputs : Nat → Word) (start : Nat) : Codec.Bytes :=
  ((List.range 8).map (fun index=>inputs (start+index))).flatMap (fun word=>Codec.encodeLE 4 word.toNat)

theorem root_parent_index (index : Nat) (bound : index<8) : parentIndex index=11+index := by
  simp only [parentIndex,if_pos bound]

theorem after_two_old_phase (inputs : Nat → Word) (start : inputs 0=1) : next (next inputs) 0=3 := by
  have phase:=phase_iterate 2 inputs
  have initial:=congrArg (fun word : Word=>word+BitVec.ofNat 32 2) start
  exact phase.trans initial

theorem after_two_new_phase (inputs : Nat → Word) (start : inputs 0=4) : next (next inputs) 0=6 := by
  have phase:=phase_iterate 2 inputs
  have initial:=congrArg (fun word : Word=>word+BitVec.ofNat 32 2) start
  exact phase.trans initial

theorem old_root_word (inputs : Nat → Word) (start : inputs 0=1)
    (index : Nat) (bound : index<8) :
    next (next (next inputs)) (55+index)=PairedPathStateMeaning.localWords (next (next inputs)) (11+index) := by
  have result:=PairedPathAssignments.old_parent_word (next (next inputs)) index (by omega)
  have phase:=after_two_old_phase inputs start
  have selected : (if next (next inputs) 0=3 then
      PairedPathStateMeaning.localWords (next (next inputs)) (parentIndex index)
      else next (next inputs) (55+index))=
        PairedPathStateMeaning.localWords (next (next inputs)) (parentIndex index) := if_pos phase
  exact result.trans (selected.trans (congrArg (PairedPathStateMeaning.localWords (next (next inputs))) (root_parent_index index bound)))

theorem new_root_word (inputs : Nat → Word) (start : inputs 0=4)
    (index : Nat) (bound : index<8) :
    next (next (next inputs)) (67+index)=PairedPathStateMeaning.localWords (next (next inputs)) (11+index) := by
  have result:=PairedPathAssignments.new_parent_word (next (next inputs)) index (by omega)
  have phase:=after_two_new_phase inputs start
  have selected : (if next (next inputs) 0=6 then
      PairedPathStateMeaning.localWords (next (next inputs)) (parentIndex index)
      else next (next inputs) (67+index))=
        PairedPathStateMeaning.localWords (next (next inputs)) (parentIndex index) := if_pos phase
  exact result.trans (selected.trans (congrArg (PairedPathStateMeaning.localWords (next (next inputs))) (root_parent_index index bound)))

theorem old_full_digest (inputs : Nat → Word) (start : inputs 0=1) :
    rootBytes (iterate 3 inputs) 55=SHA256.digestBytes (PathFrameHashPipeline.message
      (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord inputs))) := by
  have roots : (List.range 8).map (fun index=>iterate 3 inputs (55+index))=
      (List.range 8).map (fun index=>PairedPathStateMeaning.localWords (next (next inputs)) (11+index)) := by
    apply List.map_congr_left
    intro index member
    exact old_root_word inputs start index (List.mem_range.mp member)
  exact (congrArg (fun words : List Word=>words.flatMap (fun word=>Codec.encodeLE 4 word.toNat)) roots).trans
    (third_full_digest inputs (Or.inl start))

theorem new_full_digest (inputs : Nat → Word) (start : inputs 0=4) :
    rootBytes (iterate 3 inputs) 67=SHA256.digestBytes (PathFrameHashPipeline.message
      (FrameHashControllerMeaning.frameInputs (PairedPathRouting.routedWord inputs))) := by
  have roots : (List.range 8).map (fun index=>iterate 3 inputs (67+index))=
      (List.range 8).map (fun index=>PairedPathStateMeaning.localWords (next (next inputs)) (11+index)) := by
    apply List.map_congr_left
    intro index member
    exact new_root_word inputs start index (List.mem_range.mp member)
  exact (congrArg (fun words : List Word=>words.flatMap (fun word=>Codec.encodeLE 4 word.toNat)) roots).trans
    (third_full_digest inputs (Or.inr start))

end Core033.PairedPathDigestTrace
