import Core033.WordControl

namespace Core033.WordBarrel
open WordIR

theorem shift_sum (word : Word) (first second : Nat) :
    (word.ushiftRight first).ushiftRight second=word.ushiftRight (first+second) := by
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro index bound
  simp [BitVec.getLsbD_ushiftRight,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]

def stage (amount : Nat) (word : Word) (bit : Nat) : Word :=
  if amount.testBit bit then word.ushiftRight (2^bit) else word

def shift (word : Word) (amount : Nat) : Word := [0,1,2,3,4].foldl (stage amount) word

theorem exact_shift (word : Word) (amount : Nat) (bound : amount<32) : shift word amount=word.ushiftRight amount := by
  have cases : amount=0 ∨ amount=1 ∨ amount=2 ∨ amount=3 ∨ amount=4 ∨ amount=5 ∨ amount=6 ∨ amount=7 ∨ amount=8 ∨ amount=9 ∨ amount=10 ∨ amount=11 ∨ amount=12 ∨ amount=13 ∨ amount=14 ∨ amount=15 ∨ amount=16 ∨ amount=17 ∨ amount=18 ∨ amount=19 ∨ amount=20 ∨ amount=21 ∨ amount=22 ∨ amount=23 ∨ amount=24 ∨ amount=25 ∨ amount=26 ∨ amount=27 ∨ amount=28 ∨ amount=29 ∨ amount=30 ∨ amount=31 := by omega
  rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals simp [shift,stage,Nat.testBit_eq_decide_div_mod_eq,shift_sum]

end Core033.WordBarrel
