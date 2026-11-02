import Core033.PaddingWords

namespace Core033.LengthBytes
open WordIR WordStage

def lowByte (word : Word) : Word := word &&& 255

theorem low_byte_nat (word : Word) : (lowByte word).toNat=word.toNat%256 := by
  change (word &&& (BitVec.ofNat 32 (2^8-1))).toNat=_
  rw [BitVec.toNat_and]
  change word.toNat &&& (2^8-1)=word.toNat%2^8
  exact Nat.and_two_pow_sub_one_eq_mod _ _

def words (length : Word) : List Word :=
  [0,0,0,PaddingWords.bitLengthHigh length,lowByte (length.ushiftRight 21),
    lowByte (length.ushiftRight 13),lowByte (length.ushiftRight 5),
    lowByte (PaddingWords.bitLengthLow length)]

theorem exact_length_bytes (length : Word) :
    (words length).map (fun word=>UInt8.ofNat word.toNat)=SHA256.lengthBytes length.toNat := by
  apply List.ext_getElem
  · simp [words,SHA256.lengthBytes]
  · intro index left right
    have bound : index<8 := by simpa [words] using left
    have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 := by omega
    rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp only [words,List.map_cons,List.map_nil,List.getElem_cons_zero,List.getElem_cons_succ,
      SHA256.lengthBytes,List.getElem_map,List.getElem_range]
    all_goals apply UInt8.eq_of_toNat_eq
    all_goals simp only [low_byte_nat,PaddingWords.bit_length_high,PaddingWords.bit_length_low,
      BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow,UInt8.toNat_ofNat']
    all_goals have wordBound:=length.isLt
    all_goals omega

def expressions : List WordStage.Expr :=
  [.literal 0,.literal 0,.literal 0,.shr (.input 0) 29,
    .band (.shr (.input 0) 21) (.literal 255),
    .band (.shr (.input 0) 13) (.literal 255),
    .band (.shr (.input 0) 5) (.literal 255),
    .band (.band (.rotr (.input 0) 29) (.literal 0xfffffff8)) (.literal 255)]

def program : WordIR.Program := WordSequence.program 1 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 1 := by
  simp [expressions,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=words (inputs 0) := by
  rw [program,WordSequence.program_meaning 1 expressions expressions_bounded]
  rfl

end Core033.LengthBytes
