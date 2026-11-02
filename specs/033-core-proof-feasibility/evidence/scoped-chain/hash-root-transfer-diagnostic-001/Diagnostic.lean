import Core033.BranchWordEncoding
import Core033.DigestRepresentation
import Core033.HashPipeline

/- Full child digest output to full parent preimage transfer. Physical source /
matrix composition must realize every one of these eight shared word wires. -/
namespace Core033.HashRootTransfer
open WordIR

def words (state : SHA256.HashState) : List Word :=
  DigestWords.program.eval (fun index=>(SHA256.stateWords state).getD index 0)

theorem word_count (state : SHA256.HashState) : (words state).length=8 := by
  rw [words,DigestWords.program_meaning]
  simp

theorem field_bytes_exact (state : SHA256.HashState) (inputs : Nat → Word) (start : Nat)
    (shared : ∀ index,index<8 → inputs (start+index)=(words state).getD index 0) :
    BranchWordEncoding.fieldBytes inputs start 8=SHA256.stateBytes state := by
  have rangeEight : List.range' start 8=[start,start+1,start+2,start+3,start+4,start+5,start+6,start+7] := rfl
  unfold BranchWordEncoding.fieldBytes
  rw [rangeEight]
  simp only [List.flatMap_cons,List.flatMap_nil,List.append_nil]
  rw [shared 0 (by decide),shared 1 (by decide),shared 2 (by decide),shared 3 (by decide),
    shared 4 (by decide),shared 5 (by decide),shared 6 (by decide),shared 7 (by decide)]
  simp only [words,DigestWords.program_meaning]
  change WordBytesLE.bytes (ByteOrder.byteSwap state.a)++(WordBytesLE.bytes (ByteOrder.byteSwap state.b)++
    (WordBytesLE.bytes (ByteOrder.byteSwap state.c)++(WordBytesLE.bytes (ByteOrder.byteSwap state.d)++
      (WordBytesLE.bytes (ByteOrder.byteSwap state.e)++(WordBytesLE.bytes (ByteOrder.byteSwap state.f)++
        (WordBytesLE.bytes (ByteOrder.byteSwap state.g)++WordBytesLE.bytes (ByteOrder.byteSwap state.h)))))))=_
  simp only [WordBytesLE.bytes_exact,ByteOrder.little_endian_swapped_is_sha_bytes]
  rfl

theorem completed_child_root (message : Codec.Bytes) (after : HashStream.State) (count : Nat)
    (trace : HashStream.Trace (HashStream.start message) after count) (ready : HashStream.Ready after)
    (inputs : Nat → Word) (start : Nat)
    (shared : ∀ index,index<8 → inputs (start+index)=(words after.current).getD index 0) :
    BranchWordEncoding.fieldBytes inputs start 8=DigestRepresentation.bytes (DigestRepresentation.hash message) := by
  rw [field_bytes_exact after.current inputs start shared,DigestRepresentation.hash_bytes_exact]
  exact (HashPipeline.complete_stream_exact message after count trace ready).2

end Core033.HashRootTransfer
