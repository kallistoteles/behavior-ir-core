import Core033.WideGuards
import Core033.Codec

namespace Core033.SignedGuards
open WordControl WideControl

theorem signed_raw_exact (word : IR.Word64) : Codec.signedValue word.raw=word.signed := by
  have bound:=word.low.isLt
  change word.low.val<2^63 at bound
  cases sign : word.negative <;>
    simp only [Codec.signedValue,IR.Word64.raw,IR.Word64.signed,sign,Bool.false_eq_true,
      Bool.true_eq,if_true,if_false,IR.half] <;>
    split <;> omega

def positiveWord (word : Pair) : Word :=
  (signWord word.high ^^^ 1) &&& (WideGuards.zeroWord word ^^^ 1)

theorem positive_word_exact (word : Pair) :
    positiveWord word=boolWord (decide (0<(toIR word).signed)) := by
  unfold positiveWord
  rw [sign_word_exact,bool_not,WideGuards.zero_word_exact,bool_not,bool_and]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.and_eq_true,Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq]
  have rawBound:=pair_raw_bound word
  have lowBound:=word.low.isLt
  have highBound:=word.high.isLt
  have signed : (toIR word).signed=Codec.signedValue word.raw := by
    rw [←signed_raw_exact,to_ir_raw]
  rw [signed]
  have unpack : word.raw=word.low.toNat+4294967296*word.high.toNat := rfl
  unfold Codec.signedValue
  split <;> omega

theorem exact_reference_int64 (value : Reference.Int64) :
    positiveWord (ofRaw (Codec.rawSigned value))=boolWord (decide (0<value.value)) := by
  rw [positive_word_exact,←signed_raw_exact,to_ir_raw,of_raw_value]
  have bound:=Codec.signed_raw_bound value
  rw [Nat.mod_eq_of_lt (by simpa only [IR.modulus64] using bound),Codec.signed_raw_meaning]

end Core033.SignedGuards
