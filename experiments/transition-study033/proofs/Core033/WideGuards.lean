import Core033.WideControl

namespace Core033.WideGuards
open WordControl WideControl

def zeroWord (word : Pair) : Word := WordControl.zeroWord word.low &&& WordControl.zeroWord word.high

theorem pair_zero_iff (word : Pair) : word.low=0 ∧ word.high=0 ↔ word.raw=0 := by
  constructor
  · rintro ⟨low,high⟩
    unfold Pair.raw
    rw [low,high]
    rfl
  · intro zero
    unfold Pair.raw at zero
    constructor
    · apply BitVec.eq_of_toNat_eq
      change word.low.toNat=0
      omega
    · apply BitVec.eq_of_toNat_eq
      change word.high.toNat=0
      omega

theorem zero_word_exact (word : Pair) : zeroWord word=boolWord (decide (word.raw=0)) := by
  unfold zeroWord
  rw [WordControl.zero_word_exact,WordControl.zero_word_exact,bool_and]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.and_eq_true,decide_eq_true_eq]
  exact pair_zero_iff word

def increment (word : Pair) : Pair := WideControl.add word (ofRaw 1)

theorem increment_raw (word : Pair) : (increment word).raw=(word.raw+1)%2^64 := by
  rw [increment,pair_add_exact,of_raw_value]
  rfl

def incrementAllowed (word : Pair) : Word := zeroWord (increment word) ^^^ 1

theorem increment_allowed_exact (word : Pair) : incrementAllowed word=boolWord (decide (word.raw<2^64-1)) := by
  unfold incrementAllowed
  rw [zero_word_exact,bool_not]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq,increment_raw]
  have bound:=pair_raw_bound word
  omega

theorem increment_without_wrap (word : Pair) (allowed : word.raw<2^64-1) :
    (increment word).raw=word.raw+1 := by
  rw [increment_raw,Nat.mod_eq_of_lt (by omega)]

def decrement (word : Pair) : Pair := WideControl.add word (ofRaw (2^64-1))

theorem decrement_without_wrap (word : Pair) (nonzero : 0<word.raw) : (decrement word).raw=word.raw-1 := by
  have bound:=pair_raw_bound word
  rw [decrement,pair_add_exact,of_raw_value]
  omega

def decrementAllowed (word : Pair) : Word := zeroWord word ^^^ 1

theorem decrement_allowed_exact (word : Pair) : decrementAllowed word=boolWord (decide (0<word.raw)) := by
  unfold decrementAllowed
  rw [zero_word_exact,bool_not]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.not_eq_true',decide_eq_false_iff_not,decide_eq_true_eq]
  omega

end Core033.WideGuards
