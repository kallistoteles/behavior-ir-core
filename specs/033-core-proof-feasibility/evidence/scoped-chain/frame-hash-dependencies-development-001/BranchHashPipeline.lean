import Core033.BranchWordEncoding
import Core033.HashPipeline

/- Exact two-block SHA message construction for the frozen branch bytes.
Authenticated child digests, typed admission and physical matrix wiring remain
separate obligations. No hash oracle or unchecked digest is used here. -/
namespace Core033.BranchHashPipeline
open WordIR

def message (inputs : Nat → Word) : Codec.Bytes := BranchWordEncoding.emittedBytes inputs

theorem message_exact (inputs : Nat → Word) (positive covered : Bool)
    (positiveWord : inputs 24=WordControl.boolWord positive)
    (coveredWord : inputs 25=WordControl.boolWord covered) :
    message inputs=BranchCodec.encode (BranchWordEncoding.branch inputs positive covered) :=
  BranchWordEncoding.exact_original_branch_encoding inputs positive covered positiveWord coveredWord

theorem message_size (inputs : Nat → Word) : (message inputs).length=115 := by
  simp only [message,BranchWordEncoding.emittedBytes,BranchWordProgram.program_meaning,
    BranchWordProgram.expected,List.length_map,List.length_append,List.length_cons,List.length_nil,
    BranchWordProgram.fieldValues,BranchWordProgram.wordValues,List.length_flatMap]
  simp [BranchWordProgram.headerBytes,Codec.header,Codec.magic_size,Codec.encodeLE_size,
    List.map_const',List.length_range',List.sum_replicate_nat]

theorem exact_two_blocks (inputs : Nat → Word) : HashStream.blockCount (message inputs)=2 := by
  unfold HashStream.blockCount
  rw [SHA256.padded_size,message_size]
  decide

def first (inputs : Nat → Word) : HashStream.State := HashStream.next (HashStream.start (message inputs))
def after (inputs : Nat → Word) : HashStream.State := HashStream.next (first inputs)

theorem first_valid (inputs : Nat → Word) : HashStream.Valid (message inputs) (first inputs) := by
  apply HashStream.next_valid _ _ (HashStream.start_valid _)
  change 0<HashStream.blockCount (message inputs)
  rw [exact_two_blocks]
  decide

theorem after_valid (inputs : Nat → Word) : HashStream.Valid (message inputs) (after inputs) := by
  apply HashStream.next_valid _ _ (first_valid inputs)
  change 0<HashStream.blockCount (message inputs)-1
  rw [exact_two_blocks]
  decide

theorem after_ready (inputs : Nat → Word) : HashStream.Ready (after inputs) := by
  change HashStream.blockCount (message inputs)-1-1=0
  rw [exact_two_blocks]

theorem exact_trace (inputs : Nat → Word) :
    HashStream.Trace (HashStream.start (message inputs)) (after inputs) 2 := by
  apply HashStream.Trace.step _ (first inputs) _ 1
  · change 0<HashStream.blockCount (message inputs)
    rw [exact_two_blocks];decide
  · rfl
  · apply HashStream.Trace.step _ (after inputs) _ 0
    · change 0<HashStream.blockCount (message inputs)-1
      rw [exact_two_blocks];decide
    · rfl
    · exact HashStream.Trace.empty _

theorem first_compression (inputs : Nat → Word) :
    SHAMaterialized.program.eval
      (HashPipeline.compressionInputs SHA256.initial (PaddingStream.block (message inputs) 0))=
        SHA256.stateWords (first inputs).current :=
  HashPipeline.padded_step_exact (message inputs) (HashStream.start _) (HashStream.start_valid _)

theorem second_compression (inputs : Nat → Word) :
    SHAMaterialized.program.eval
      (HashPipeline.compressionInputs (first inputs).current (PaddingStream.block (message inputs) 1))=
        SHA256.stateWords (after inputs).current :=
  HashPipeline.padded_step_exact (message inputs) (first inputs) (first_valid inputs)

theorem exact_digest (inputs : Nat → Word) :
    (DigestWords.program.eval (fun index=>(SHA256.stateWords (after inputs).current).getD index 0)).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=SHA256.digestBytes (message inputs) :=
  HashPipeline.complete_digest_bytes (message inputs) (after inputs) 2 (exact_trace inputs) (after_ready inputs)

end Core033.BranchHashPipeline
