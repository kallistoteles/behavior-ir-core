import Core033.WordSequence
import Core033.ByteLimbCodec

namespace Core033.DigestWords

def expressions : List WordStage.Expr := (List.range 8).map ByteOrder.expression

def program : WordIR.Program := WordSequence.program 8 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 8 := by
  simp only [expressions,List.forall_mem_map]
  intro register member
  have bound:=List.mem_range.mp member
  simpa only [ByteOrder.expression,WordStage.Expr.Bounded,and_true,and_self] using bound

theorem program_meaning (inputs : Nat → WordIR.Word) :
    program.eval inputs=(List.range 8).map (fun index=>ByteOrder.byteSwap (inputs index)) := by
  rw [program,WordSequence.program_meaning 8 expressions expressions_bounded]
  simp only [expressions,List.map_map,Function.comp_def,ByteOrder.expression_meaning]

theorem exact_sha_digest_bytes (state : SHA256.HashState) :
    (program.eval (fun index=>(SHA256.stateWords state).getD index 0)).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=SHA256.stateBytes state := by
  rw [program_meaning]
  change (SHA256.stateWords state).flatMap (fun word=>Codec.encodeLE 4 (ByteOrder.byteSwap word).toNat)=_
  simp only [ByteOrder.little_endian_swapped_is_sha_bytes,SHA256.stateBytes]

end Core033.DigestWords
