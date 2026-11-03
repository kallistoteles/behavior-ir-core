import Core033.PathFrameEncoding
import Core033.BranchHashPipeline
import Core033.HashBlockMeaning

namespace Core033.PathFrameHashPipeline
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev message := PathFrameEncoding.message
abbrev branchInputs := PathFrameEncoding.branchInputs

theorem original_branch_message (inputs : Nat → Word) :
    message inputs=BranchHashPipeline.message (branchInputs inputs) := PathFrameEncoding.original_message inputs

theorem exact_two_blocks (inputs : Nat → Word) : HashStream.blockCount (message inputs)=2 := by
  rw [original_branch_message]
  exact BranchHashPipeline.exact_two_blocks _

def first (inputs : Nat → Word) : HashStream.State := HashStream.next (HashStream.start (message inputs))
def after (inputs : Nat → Word) : HashStream.State := HashStream.next (first inputs)

def firstInputs (inputs : Nat → Word) : Nat → Word :=
  HashBlockMeaning.typedInputs SHA256.initial (PaddingStream.block (message inputs) 0)
def secondInputs (inputs : Nat → Word) : Nat → Word :=
  HashBlockMeaning.typedInputs (first inputs).current (PaddingStream.block (message inputs) 1)

theorem first_valid (inputs : Nat → Word) : HashStream.Valid (message inputs) (first inputs) := by
  unfold first
  rw [original_branch_message]
  exact BranchHashPipeline.first_valid _

theorem first_block (inputs : Nat → Word) : HashBlockProgram.program.eval (firstInputs inputs)=
    SHA256.stateWords (first inputs).current++List.replicate 64 1 := by
  rw [firstInputs,HashBlockMeaning.complete_typed_block]
  have step:=PaddingStream.hash_stream_step (message inputs) (HashStream.start _) (HashStream.start_valid _)
  change (first inputs).current=SHA256.compress SHA256.initial (SHA256.parseBlock (PaddingStream.block (message inputs) 0)) at step
  rw [←step]

theorem second_block (inputs : Nat → Word) : HashBlockProgram.program.eval (secondInputs inputs)=
    SHA256.stateWords (after inputs).current++List.replicate 64 1 := by
  rw [secondInputs,HashBlockMeaning.complete_typed_block]
  have step:=PaddingStream.hash_stream_step (message inputs) (first inputs) (first_valid inputs)
  change (after inputs).current=SHA256.compress (first inputs).current (SHA256.parseBlock (PaddingStream.block (message inputs) 1)) at step
  rw [←step]

theorem exact_trace (inputs : Nat → Word) : HashStream.Trace (HashStream.start (message inputs)) (after inputs) 2 := by
  unfold after first
  rw [original_branch_message]
  exact BranchHashPipeline.exact_trace _

theorem ready (inputs : Nat → Word) : HashStream.Ready (after inputs) := by
  unfold after first
  rw [original_branch_message]
  exact BranchHashPipeline.after_ready _

theorem exact_final_bytes (inputs : Nat → Word) :
    SHA256.stateBytes (after inputs).current=SHA256.digestBytes (message inputs) :=
  (HashPipeline.complete_stream_exact (message inputs) (after inputs) 2 (exact_trace inputs) (ready inputs)).2

end Core033.PathFrameHashPipeline
