import Core033.HashBlockMeaning

/- The concrete same-register block refines the original padded hash stream.
The physical controller must still establish these state/byte port bindings. -/
namespace Core033.HashBlockStream

theorem padded_step (message : SHA256.Bytes) (state : HashStream.State)
    (valid : HashStream.Valid message state) :
    HashBlockProgram.program.eval
      (HashBlockMeaning.typedInputs state.current (PaddingStream.block message state.processed))=
        SHA256.stateWords (HashStream.next state).current++List.replicate 64 1 := by
  rw [HashBlockMeaning.complete_typed_block,PaddingStream.hash_stream_step message state valid]

theorem complete_trace (message : SHA256.Bytes) (after : HashStream.State) (count : Nat)
    (trace : HashStream.Trace (HashStream.start message) after count)
    (ready : HashStream.Ready after) :
    count=HashStream.blockCount message ∧ SHA256.stateBytes after.current=SHA256.digestBytes message :=
  HashPipeline.complete_stream_exact message after count trace ready

end Core033.HashBlockStream
