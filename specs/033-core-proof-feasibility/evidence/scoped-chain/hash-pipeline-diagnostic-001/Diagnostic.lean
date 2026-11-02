import Core033.BlockIngress
import Core033.PaddingStream
import Core033.SHAMaterializedFinal

/- Composition of the concrete word programs, including every byte-to-word
edge. Physical state/authenticated message supply and actual composite matrix
ports must still realize these inputs; this is not a whole-K certificate. -/
namespace Core033.HashPipeline
open SHA256

def ingressWords (bytes : Bytes) : List Word :=
  BlockIngress.program.eval (BlockIngress.byteInputs bytes)

theorem ingress_word_exact (bytes : Bytes) (index : Nat) (bound : index<16) :
    (ingressWords bytes).getD index 0=wordFromBytes bytes (4*index) := by
  rw [ingressWords,BlockIngress.complete_block_ingress,PaddingStream.getD_append_cases]
  simp only [List.length_map,List.length_range,if_pos bound,
    List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]

def compressionInputs (state : HashState) (bytes : Bytes) (index : Nat) : Word :=
  if index<8 then (stateWords state).getD index 0 else (ingressWords bytes).getD (index-8) 0

theorem state_inputs_exact (state : HashState) (bytes : Bytes) :
    SHA256Compiled.expectedState (compressionInputs state bytes)=state := by
  cases state
  rfl

theorem block_inputs_exact (state : HashState) (bytes : Bytes) :
    SHA256Compiled.expectedBlock (compressionInputs state bytes)=parseBlock bytes := by
  funext index
  have bound:=index.isLt
  change (if 8+index.val<8 then _ else (ingressWords bytes).getD (8+index.val-8) 0)=_
  rw [if_neg (by omega),show 8+index.val-8=index.val by omega]
  exact ingress_word_exact bytes index.val bound

theorem compression_exact (state : HashState) (bytes : Bytes) :
    SHAMaterialized.program.eval (compressionInputs state bytes)=
      stateWords (compress state (parseBlock bytes)) := by
  rw [SHAMaterialized.program_meaning,state_inputs_exact,block_inputs_exact]

theorem padded_step_exact (message : Bytes) (state : HashStream.State)
    (valid : HashStream.Valid message state) :
    SHAMaterialized.program.eval
      (compressionInputs state.current (PaddingStream.block message state.processed))=
        stateWords (HashStream.next state).current := by
  rw [compression_exact,PaddingStream.hash_stream_step message state valid]

theorem complete_stream_exact (message : Bytes) (after : HashStream.State) (count : Nat)
    (trace : HashStream.Trace (HashStream.start message) after count)
    (ready : HashStream.Ready after) :
    count=HashStream.blockCount message ∧ stateBytes after.current=digestBytes message :=
  HashStream.complete_trace_exact_steps message after count trace ready

end Core033.HashPipeline
