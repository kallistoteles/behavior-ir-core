import Core033.WordStage
import Core033.WordPacking

namespace Core033.ByteOrder
abbrev Word := WordIR.Word

/-- SHA emits big-endian word bytes; the profile packs digest bytes into
little-endian u64 limbs. This seven-operation permutation makes that boundary
explicit using only already supported u32 primitive operations. -/
def byteSwap (word : Word) : Word :=
  (word.rotateRight 24 &&& 0x00ff00ff) ^^^ (word.rotateRight 8 &&& 0xff00ff00)

def swapIndex (index : Nat) : Nat := 8*(3-index/8)+index%8

theorem swapped_bit (word : Word) (index : Nat) (bound : index<32) :
    (byteSwap word).getLsbD index=word.getLsbD (swapIndex index) := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 ∨ index=26 ∨ index=27 ∨ index=28 ∨ index=29 ∨ index=30 ∨ index=31 := by omega
  rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals simp [byteSwap,swapIndex,BitVec.getLsbD_rotateRight]

theorem swap_index_bound (index : Nat) (bound : index<32) : swapIndex index<32 := by
  unfold swapIndex
  omega

theorem swap_index_involution (index : Nat) (bound : index<32) : swapIndex (swapIndex index)=index := by
  unfold swapIndex
  omega

theorem byte_swap_involution (word : Word) : byteSwap (byteSwap word)=word := by
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro index bound
  rw [swapped_bit _ index bound,swapped_bit _ _ (swap_index_bound index bound),swap_index_involution index bound]

def expression (register : Nat) : WordStage.Expr :=
  .bxor (.band (.rotr (.input register) 24) (.literal 0x00ff00ff))
    (.band (.rotr (.input register) 8) (.literal 0xff00ff00))

theorem expression_meaning (values : Nat → Word) (register : Nat) :
    (expression register).eval values=byteSwap (values register) := rfl

end Core033.ByteOrder
