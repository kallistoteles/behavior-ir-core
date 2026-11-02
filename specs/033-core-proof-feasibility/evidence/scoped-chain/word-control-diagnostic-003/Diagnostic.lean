import Core033.WordIR
import Init.Data.BitVec.Bitblast

/- Control helpers use only operations already covered by actual u32 source and
field-row schemas. Helpers are wrapping words; Core overflow remains explicit. -/
namespace Core033.WordControl
abbrev Word := WordIR.Word

def boolWord (bit : Bool) : Word := if bit then 1 else 0

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
    simp only [carryWord,BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,Nat.add_zero,decide_true,Bool.true_and,carry_bit,carry]
    cases decide (2^32≤a.toNat+b.toNat) <;> rfl
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
    change ((0 : Word) &&& yes) ^^^ ((~~~(0 : Word)) &&& no)=no
    simp
  | true =>
    change ((~~~(0 : Word)) &&& yes) ^^^ ((0 : Word) &&& no)=yes
    simp

theorem bool_word_range (bit : Bool) : (boolWord bit).toNat≤1 := by
  cases bit <;> decide

theorem bool_not (bit : Bool) : boolWord bit ^^^ 1=boolWord (!bit) := by
  cases bit <;> rfl

theorem bool_and (a b : Bool) : boolWord a &&& boolWord b=boolWord (a && b) := by
  cases a <;> cases b <;> rfl

end Core033.WordControl
