import Core033.WordIR
import Init.Data.BitVec.Bitblast

/- Control helpers use only operations already covered by actual u32 source and
field-row schemas. Helpers are wrapping words; Core overflow remains explicit. -/
namespace Core033.WordControl
abbrev Word := WordIR.Word

def boolWord (bit : Bool) : Word := if bit then 1 else 0

theorem bool_word_low_bit (bit : Bool) : (boolWord bit).getLsbD 0=bit := by
  cases bit <;> rfl

def carryWord (a b : Word) : Word :=
  ((a &&& b) ^^^ ((a ^^^ b) &&& (~~~(a+b)))).ushiftRight 31

theorem carry_bit (a b : Word) :
    (((a &&& b) ^^^ ((a ^^^ b) &&& (~~~(a+b))))).getLsbD 31=
      BitVec.carry 32 a b false := by
  rw [BitVec.carry_succ 31 a b false]
  simp only [BitVec.getLsbD_xor,BitVec.getLsbD_and,BitVec.getLsbD_not,
    show 31<32 by decide,decide_true,Bool.true_and,BitVec.getLsbD_add (by decide : 31<32)]
  cases a.getLsbD 31 <;> cases b.getLsbD 31 <;> cases BitVec.carry 31 a b false <;> rfl

theorem carry_word_exact (a b : Word) :
    carryWord a b=boolWord (decide (2^32≤a.toNat+b.toNat)) := by
  have carry:=BitVec.carry_width (x:=a) (y:=b) (c:=false)
  simp only [Bool.toNat_false,Nat.add_zero] at carry
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro index bound
  by_cases zero : index=0
  · subst index
    simp only [carryWord,BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,Nat.add_zero,carry_bit,carry,bool_word_low_bit]
    rfl
  · have after : 32≤31+index := by omega
    simp only [carryWord,BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,decide_eq_true bound,Bool.true_and,BitVec.getLsbD_of_ge _ _ after]
    cases decide (2^32≤a.toNat+b.toNat) <;> simp [boolWord,zero]

def selectWord (condition : Bool) (yes no : Word) : Word :=
  let mask := ~~~(boolWord condition)+1
  (mask &&& yes) ^^^ ((~~~mask) &&& no)

theorem select_word_exact (condition : Bool) (yes no : Word) :
    selectWord condition yes no=(if condition then yes else no) := by
  cases condition with
  | false =>
    apply BitVec.eq_of_getLsbD_eq_iff.mpr
    intro index bound
    change ((0#32 &&& yes) ^^^ (BitVec.allOnes 32 &&& no)).getLsbD index=no.getLsbD index
    simp only [BitVec.getLsbD_xor,BitVec.getLsbD_and,BitVec.getLsbD_zero,BitVec.getLsbD_allOnes,
      decide_eq_true bound,Bool.false_and,Bool.true_and,Bool.false_xor]
  | true =>
    apply BitVec.eq_of_getLsbD_eq_iff.mpr
    intro index bound
    change ((BitVec.allOnes 32 &&& yes) ^^^ (0#32 &&& no)).getLsbD index=yes.getLsbD index
    simp only [BitVec.getLsbD_xor,BitVec.getLsbD_and,BitVec.getLsbD_zero,BitVec.getLsbD_allOnes,
      decide_eq_true bound,Bool.false_and,Bool.true_and,Bool.xor_false]

theorem bool_word_range (bit : Bool) : (boolWord bit).toNat≤1 := by
  cases bit <;> decide

theorem bool_not (bit : Bool) : boolWord bit ^^^ 1=boolWord (!bit) := by
  cases bit <;> rfl

theorem bool_and (a b : Bool) : boolWord a &&& boolWord b=boolWord (a && b) := by
  cases a <;> cases b <;> rfl

def lessWord (a b : Word) : Word := carryWord b (~~~a)

theorem less_word_exact (a b : Word) : lessWord a b=boolWord (decide (a.toNat<b.toNat)) := by
  unfold lessWord
  rw [carry_word_exact]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq,BitVec.toNat_not]
  have low:=a.isLt
  have high:=b.isLt
  omega

def zeroWord (word : Word) : Word := lessWord 0 word ^^^ 1

theorem zero_word_exact (word : Word) : zeroWord word=boolWord (decide (word=0)) := by
  unfold zeroWord
  rw [less_word_exact,bool_not]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.not_eq_true',decide_eq_false_iff_not,Nat.not_lt,BitVec.toNat_zero]
  constructor
  · intro zero
    apply BitVec.eq_of_toNat_eq
    simpa only [BitVec.toNat_zero] using Nat.eq_zero_of_le_zero zero
  · intro zero
    simp only [zero,BitVec.toNat_zero,Nat.le_refl]

def signWord (word : Word) : Word := word.ushiftRight 31

theorem sign_word_exact (word : Word) : signWord word=boolWord (decide (2^31≤word.toNat)) := by
  have bound:=word.isLt
  apply BitVec.eq_of_toNat_eq
  simp only [signWord,BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
  by_cases sign : 2^31≤word.toNat
  · simp only [boolWord,decide_eq_true sign,if_true,BitVec.toNat_ofNat]
    omega
  · simp only [boolWord,decide_eq_false sign,if_false,BitVec.toNat_ofNat]
    omega

end Core033.WordControl
