import Core033.ControlPrimitives
import Core033.WordSequence
import Core033.HashStream

namespace Core033.PaddingWords
open WordIR WordStage

def lowSix (word : Word) : Word := word &&& 63

theorem low_six_exact (word : Word) : (lowSix word).toNat=word.toNat%64 := by
  change (word &&& (BitVec.ofNat 32 (2^6-1))).toNat=_
  rw [BitVec.toNat_and]
  change word.toNat &&& (2^6-1)=word.toNat%2^6
  exact Nat.and_two_pow_sub_one_eq_mod _ _

def zeroPadding (length : Word) : Word :=
  lowSix (119+(~~~(lowSix length)+1))

theorem zero_padding_exact (length : Word) :
    (zeroPadding length).toNat=SHA256.zeroCount length.toNat := by
  unfold zeroPadding
  rw [low_six_exact]
  simp only [BitVec.toNat_add,BitVec.toNat_not,low_six_exact]
  have bound:=Nat.mod_lt length.toNat (by decide : 0<64)
  change ((119+((4294967295-length.toNat%64+1)%4294967296))%4294967296)%64=
    (119-length.toNat%64)%64
  omega

def totalSize (length : Word) : Word := length+9+zeroPadding length

theorem total_size_exact (length : Word) (profile : length.toNat≤1073741824) :
    (totalSize length).toNat=length.toNat+9+SHA256.zeroCount length.toNat := by
  have zeros:=SHA256.zero_count_bound length.toNat
  simp only [totalSize,BitVec.toNat_add,zero_padding_exact]
  change ((length.toNat+9)%4294967296+SHA256.zeroCount length.toNat)%4294967296=_
  rw [Nat.mod_eq_of_lt (by omega),Nat.mod_eq_of_lt (by omega)]

/-- Two full u32 words encode the SHA 64-bit bit length; the profile's
one-gibibyte bound still needs a nonzero high word at the upper boundary. -/
def bitLengthLow (length : Word) : Word := (length.rotateRight 29) &&& 0xfffffff8
def bitLengthHigh (length : Word) : Word := length.ushiftRight 29

theorem bit_length_high (length : Word) :
    (bitLengthHigh length).toNat=length.toNat*8/4294967296 := by
  simp only [bitLengthHigh,BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
  omega

theorem bit_length_low (length : Word) :
    (bitLengthLow length).toNat=length.toNat*8%4294967296 := by
  have shifted : bitLengthLow length=length <<< 3 := by
    apply BitVec.eq_of_getLsbD_eq_iff.mpr
    intro index bound
    have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 ∨ index=26 ∨ index=27 ∨ index=28 ∨ index=29 ∨ index=30 ∨ index=31 := by omega
    rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp [bitLengthLow,BitVec.getLsbD_rotateRight,BitVec.getLsbD_shiftLeft]
  rw [shifted,BitVec.toNat_shiftLeft,Nat.shiftLeft_eq]

theorem full_bit_length_exact (length : Word) :
    (bitLengthLow length).toNat+4294967296*(bitLengthHigh length).toNat=length.toNat*8 := by
  rw [bit_length_low,bit_length_high]
  exact Nat.mod_add_div _ _

def lowSixExpr : WordStage.Expr := .band (.input 0) (.literal 63)
def zeroPaddingExpr : WordStage.Expr :=
  .band (.badd (.literal 119) (.badd (.bnot lowSixExpr) (.literal 1))) (.literal 63)
def totalSizeExpr : WordStage.Expr := .badd (.badd (.input 0) (.literal 9)) zeroPaddingExpr

def expressions : List WordStage.Expr :=
  [zeroPaddingExpr,totalSizeExpr,.band (.rotr (.input 0) 29) (.literal 0xfffffff8),
    .shr (.input 0) 29,.shr totalSizeExpr 6,
    ControlPrimitives.less (.input 0) (.literal 1073741825)]

def expected (inputs : Nat → Word) : List Word :=
  let length:=inputs 0
  [zeroPadding length,totalSize length,bitLengthLow length,bitLengthHigh length,
    (totalSize length).ushiftRight 6,WordControl.lessWord length 1073741825]

def program : WordIR.Program := WordSequence.program 1 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 1 := by
  simp [expressions,zeroPaddingExpr,totalSizeExpr,lowSixExpr,
    ControlPrimitives.less,ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 1 expressions expressions_bounded]
  rfl

theorem profile_guard_exact (inputs : Nat → Word) :
    (expected inputs).getD 5 0=WordControl.boolWord (decide ((inputs 0).toNat≤1073741824)) := by
  change WordControl.lessWord (inputs 0) 1073741825=_
  rw [WordControl.less_word_exact]
  congr 2
  change (inputs 0).toNat<1073741825 ↔ (inputs 0).toNat≤1073741824
  omega

theorem block_count_exact (inputs : Nat → Word) (profile : (inputs 0).toNat≤1073741824) :
    ((expected inputs).getD 4 0).toNat=
      ((inputs 0).toNat+9+SHA256.zeroCount (inputs 0).toNat)/64 := by
  change ((totalSize (inputs 0)).ushiftRight 6).toNat=_
  simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
  rw [total_size_exact (inputs 0) profile]

theorem byte_stream_size_exact (bytes : SHA256.Bytes) (length : Word)
    (represented : length.toNat=bytes.length) (profile : length.toNat≤1073741824) :
    (totalSize length).toNat=(SHA256.pad bytes).length := by
  rw [total_size_exact length profile,SHA256.padded_size,represented]

end Core033.PaddingWords
