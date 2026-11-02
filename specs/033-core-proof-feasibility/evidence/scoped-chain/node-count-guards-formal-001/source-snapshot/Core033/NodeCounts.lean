import Core033.WideControl

namespace Core033.NodeCounts
open WordControl WideControl

def within (word : Pair) : Word :=
  zeroWord word.high &&& (lessWord 1048576 word.low ^^^ 1)

theorem within_exact (word : Pair) : within word=boolWord (decide (word.raw≤1048576)) := by
  rw [within,zero_word_exact,less_word_exact,bool_not,bool_and]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.and_eq_true,decide_eq_true_eq,Bool.not_eq_true',decide_eq_false_iff_not]
  have lowBound:=word.low.isLt
  have highBound:=word.high.isLt
  have zero : word.high=0 ↔ word.high.toNat=0 := by
    constructor
    · intro same;rw [same];rfl
    · intro same;apply BitVec.eq_of_toNat_eq;exact same
  rw [zero]
  change (word.high.toNat=0 ∧ ¬(1048576 : Word).toNat<word.low.toNat) ↔ _
  have constant : (1048576 : Word).toNat=1048576 := by decide
  rw [constant]
  unfold Pair.raw
  omega

def allowed (left right : Pair) : Word :=
  within left &&& within right &&& within (add left right)

theorem allowed_exact (left right : Pair) :
    allowed left right=boolWord (decide (left.raw+right.raw≤1048576)) := by
  rw [allowed,within_exact,within_exact,within_exact,bool_and,bool_and]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.and_eq_true,decide_eq_true_eq,pair_add_exact]
  constructor
  · rintro ⟨⟨leftBound,rightBound⟩,sumBound⟩
    rw [Nat.mod_eq_of_lt (by omega)] at sumBound
    exact sumBound
  · intro sumBound
    refine ⟨⟨by omega,by omega⟩,?_⟩
    rw [Nat.mod_eq_of_lt (by omega)]
    exact sumBound

theorem exact_sum (left right : Pair) (bounded : left.raw+right.raw≤1048576) :
    (add left right).raw=left.raw+right.raw := by
  rw [pair_add_exact,Nat.mod_eq_of_lt (by omega)]

theorem zero_high_word (word : Pair) (bounded : word.raw≤1048576) : word.high=0 := by
  have lowBound:=word.low.isLt
  unfold Pair.raw at bounded
  apply BitVec.eq_of_toNat_eq
  change word.high.toNat=0
  omega

end Core033.NodeCounts
