import Core033.ControlPrimitives
import Core033.Codec

namespace Core033.Utf8Encoding
open WordIR WordStage

def chooseLess (word cutoff yes no : Word) : Word :=
  ControlPrimitives.selectRaw (WordControl.lessWord word cutoff) yes no

theorem choose_less (word cutoff yes no : Word) :
    chooseLess word cutoff yes no=(if word.toNat<cutoff.toNat then yes else no) := by
  rw [chooseLess,WordControl.less_word_exact]
  have select (bit : Bool) : ControlPrimitives.selectRaw (WordControl.boolWord bit) yes no=
      (if bit then yes else no) := WordControl.select_word_exact bit yes no
  rw [select]
  simp only [decide_eq_true_eq]

def part (word : Word) (shift mask prefixValue : Nat) : Word :=
  (word.ushiftRight shift &&& BitVec.ofNat 32 mask)+BitVec.ofNat 32 prefixValue

def first (word : Word) : Word :=
  chooseLess word 128 word (chooseLess word 2048 (part word 6 31 192)
    (chooseLess word 65536 (part word 12 15 224) (part word 18 7 240)))

def second (word : Word) : Word :=
  chooseLess word 128 0 (chooseLess word 2048 (part word 0 63 128)
    (chooseLess word 65536 (part word 6 63 128) (part word 12 63 128)))

def third (word : Word) : Word :=
  chooseLess word 2048 0 (chooseLess word 65536 (part word 0 63 128) (part word 6 63 128))

def fourth (word : Word) : Word := chooseLess word 65536 0 (part word 0 63 128)

def width (word : Word) : Word :=
  chooseLess word 128 1 (chooseLess word 2048 2 (chooseLess word 65536 3 4))

def scalarFlag (word : Word) : Word :=
  WordControl.lessWord word 1114112 &&&
    (WordControl.lessWord word 55296 ^^^ WordControl.lessWord word 57344 ^^^ 1)

def Scalar (word : Word) : Prop := word.toNat≤1114111 ∧ (word.toNat<55296 ∨ 57343<word.toNat)

theorem bool_xor (left right : Bool) :
    WordControl.boolWord left ^^^ WordControl.boolWord right=WordControl.boolWord (Bool.xor left right) := by
  cases left <;> cases right <;> rfl

theorem scalar_flag_exact (word : Word) :
    scalarFlag word=WordControl.boolWord (decide (Scalar word)) := by
  simp only [scalarFlag,WordControl.less_word_exact]
  change WordControl.boolWord (decide (word.toNat<1114112)) &&&
    (WordControl.boolWord (decide (word.toNat<55296)) ^^^
      WordControl.boolWord (decide (word.toNat<57344)) ^^^ WordControl.boolWord true)=_
  rw [bool_xor,bool_xor,WordControl.bool_and]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  by_cases low : word.toNat<55296 <;> by_cases high : word.toNat<57344 <;>
    by_cases upper : word.toNat<1114112
  all_goals simp [Scalar,low,high,upper]
  all_goals omega

def charWord (char : Char) : Word := char.val.toBitVec

theorem char_word_scalar (char : Char) : Scalar (charWord char) := by
  have valid:=char.valid
  change char.toNat.isValidChar at valid
  change char.toNat≤1114111 ∧ (char.toNat<55296 ∨ 57343<char.toNat)
  unfold Nat.isValidChar at valid
  omega

def toChar (word : Word) (valid : Scalar word) : Char :=
  Char.ofNatAux word.toNat (by unfold Scalar at valid;unfold Nat.isValidChar;omega)

theorem reconstructed_char_word (word : Word) (valid : Scalar word) : charWord (toChar word valid)=word := by
  apply BitVec.eq_of_toNat_eq
  change word.toNat=word.toNat
  rfl

end Core033.Utf8Encoding
