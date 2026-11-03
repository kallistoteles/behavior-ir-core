import Core033.AuthenticatedBranchPairStep
import Core033.AuthenticatedBranchOwnRecord
import Core033.PairedPathSharedFrame
import Core033.PairedPathCounterTrace

namespace Core033.AuthenticatedBranchCompletion
open WordIR AuthenticatedBranchTrace AuthenticatedBranchPairProjection AuthenticatedBranchPairStep
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def midpoint (inputs : Nat → Word) := iterate 3 inputs

theorem midpoint_phase (inputs : Nat → Word) (start : inputs 0=1) : midpoint inputs 0=4 :=
  (phase_iterate 3 inputs).trans (congrArg (fun word : Word=>word+BitVec.ofNat 32 3) start)

theorem pair_start (inputs : Nat → Word) (start : inputs 0=1) : pairedInputs (midpoint inputs) 0=1 :=
  congrArg (fun word : Word=>word-3) (midpoint_phase inputs start)

theorem iterate_add (first later : Nat) (inputs : Nat → Word) :
    iterate (first+later) inputs=iterate later (iterate first inputs) := by
  induction later with
  | zero => rfl
  | succ later induction => exact congrArg next induction

theorem final_pair_ports (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<96) :
    pairedInputs (iterate 9 inputs) index=PairedPathTrace.iterate 6 (pairedInputs (midpoint inputs)) index :=
  (congrArg (fun frame=>pairedInputs frame index) (iterate_add 3 6 inputs)).trans
    (iterate_refines 6 (midpoint inputs) (midpoint_phase inputs start) (by decide) index bound)

theorem final_positive_port (inputs : Nat → Word) (start : inputs 0=1)
    (index : Nat) (positive : 0<index) (bound : index<96) :
    iterate 9 inputs index=PairedPathTrace.iterate 6 (pairedInputs (midpoint inputs)) index := by
  have projection : pairedInputs (iterate 9 inputs) index=iterate 9 inputs index := if_neg (by omega)
  exact projection.symm.trans (final_pair_ports inputs start index bound)

theorem final_root_bytes (inputs : Nat → Word) (start : inputs 0=1)
    (base : Nat) (positive : 0<base) (bound : base+8≤96) :
    PairedPathDigestTrace.rootBytes (iterate 9 inputs) base=
      PairedPathDigestTrace.rootBytes (PairedPathTrace.iterate 6 (pairedInputs (midpoint inputs))) base := by
  have roots : (List.range 8).map (fun index=>iterate 9 inputs (base+index))=
      (List.range 8).map (fun index=>PairedPathTrace.iterate 6 (pairedInputs (midpoint inputs)) (base+index)) := by
    apply List.map_congr_left
    intro index member
    have rangeBound:=List.mem_range.mp member
    exact final_positive_port inputs start (base+index) (by omega) (by omega)
  exact congrArg (fun words : List Word=>words.flatMap (fun word=>Codec.encodeLE 4 word.toNat)) roots

theorem complete_both_parent_digests (inputs : Nat → Word) (start : inputs 0=1) :
    PairedPathDigestTrace.rootBytes (iterate 9 inputs) 55=
      SHA256.digestBytes (PathFrameHashPipeline.message (FrameHashControllerMeaning.frameInputs
        (PairedPathRouting.routedWord (pairedInputs (midpoint inputs))))) ∧
    PairedPathDigestTrace.rootBytes (iterate 9 inputs) 67=
      SHA256.digestBytes (PathFrameHashPipeline.message (FrameHashControllerMeaning.frameInputs
        (PairedPathRouting.routedWord (PairedPathSharedFrame.newInputs (pairedInputs (midpoint inputs)))))) := by
  have paired:=PairedPathSharedFrame.six_step_original_both_messages (pairedInputs (midpoint inputs)) (pair_start inputs start)
  exact ⟨(final_root_bytes inputs start 55 (by decide) (by decide)).trans paired.1,
    (final_root_bytes inputs start 67 (by decide) (by decide)).trans paired.2⟩

theorem midpoint_counter (inputs : Nat → Word) (start : inputs 0=1) : midpoint inputs 2=inputs 2 := by
  have first : inputs 0≠9 := by rw [start];decide
  have phaseOne : next inputs 0=2 := (next_phase inputs).trans (congrArg (fun word : Word=>word+1) start)
  have second : next inputs 0≠9 := by rw [phaseOne];decide
  have phaseTwo:=AuthenticatedBranchOwnReturn.after_two_phase inputs start
  have third : next (next inputs) 0≠9 := by rw [phaseTwo];decide
  exact (AuthenticatedBranchOwnContinuity.counter_word (next (next inputs)) third).trans
    ((AuthenticatedBranchOwnContinuity.counter_word (next inputs) second).trans
      (AuthenticatedBranchOwnContinuity.counter_word inputs first))

theorem complete_counter (inputs : Nat → Word) (start : inputs 0=1) : iterate 9 inputs 2=inputs 2+1 := by
  have paired:=PairedPathCounterTrace.final_counter (pairedInputs (midpoint inputs)) (pair_start inputs start)
  have original : pairedInputs (midpoint inputs) 2=midpoint inputs 2 := if_neg (by decide)
  exact (final_positive_port inputs start 2 (by decide) (by decide)).trans
    (paired.trans (congrArg (fun word : Word=>word+1) (original.trans (midpoint_counter inputs start))))

theorem complete_unwrapped_counter (inputs : Nat → Word) (start : inputs 0=1) (bound : (inputs 2).toNat<256) :
    (iterate 9 inputs 2).toNat=(inputs 2).toNat+1 :=
  (congrArg BitVec.toNat (complete_counter inputs start)).trans (PathCounterProgram.branch_coordinates (inputs 2) bound).1

theorem sibling_through_parents (count : Nat) (inputs : Nat → Word) (start : inputs 0=1) (bound : count≤6)
    (index : Nat) (wordBound : index<12) :
    iterate count (midpoint inputs) (35+index)=midpoint inputs (35+index) := by
  have projection : pairedInputs (iterate count (midpoint inputs)) (35+index)=
      iterate count (midpoint inputs) (35+index) := if_neg (by omega)
  have actual:=iterate_refines count (midpoint inputs) (midpoint_phase inputs start) bound (35+index) (by omega)
  have preserved:=PairedPathTrace.original_iterate count (pairedInputs (midpoint inputs)) (35+index)
    (by omega) (by omega) (by omega) (by omega)
  have original : pairedInputs (midpoint inputs) (35+index)=midpoint inputs (35+index) := if_neg (by omega)
  exact projection.symm.trans (actual.trans (preserved.trans original))

end Core033.AuthenticatedBranchCompletion
