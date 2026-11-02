import Core033.PaddingByte

namespace Core033.PaddingByteProgram
open WordIR WordStage

def totalMinusExpr (amount : Nat) : WordStage.Expr :=
  .badd PaddingWords.totalSizeExpr (.literal (BitVec.ofNat 32 (4294967296-amount)))

def selectAt (amount : Nat) (yes no : WordStage.Expr) : WordStage.Expr :=
  ControlPrimitives.select (WordEquality.expression (.input 1) (totalMinusExpr amount)) yes no

def suffixExpr : WordStage.Expr :=
  selectAt 5 (.shr (.input 0) 29)
    (selectAt 4 (.band (.shr (.input 0) 21) (.literal 255))
      (selectAt 3 (.band (.shr (.input 0) 13) (.literal 255))
        (selectAt 2 (.band (.shr (.input 0) 5) (.literal 255))
          (selectAt 1 (.band (.band (.rotr (.input 0) 29) (.literal 0xfffffff8)) (.literal 255)) (.literal 0)))))

def byteExpr : WordStage.Expr :=
  ControlPrimitives.select (ControlPrimitives.less (.input 1) (.input 0)) (.input 2)
    (ControlPrimitives.select (WordEquality.expression (.input 1) (.input 0)) (.literal 128) suffixExpr)

def expressions : List WordStage.Expr :=
  [byteExpr,ControlPrimitives.less (.input 0) (.literal 1073741825),
    ControlPrimitives.less (.input 1) PaddingWords.totalSizeExpr,
    ControlPrimitives.zero (.shr (.input 2) 8)]

def expected (inputs : Nat → Word) : List Word :=
  [PaddingByte.byteWord (inputs 0) (inputs 1) (inputs 2),
    WordControl.lessWord (inputs 0) 1073741825,
    WordControl.lessWord (inputs 1) (PaddingWords.totalSize (inputs 0)),
    WordControl.zeroWord ((inputs 2).ushiftRight 8)]

def program : WordIR.Program := WordSequence.program 3 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 3 := by
  simp [expressions,byteExpr,suffixExpr,selectAt,totalMinusExpr,
    PaddingWords.totalSizeExpr,PaddingWords.zeroPaddingExpr,PaddingWords.lowSixExpr,
    WordEquality.expression,ControlPrimitives.select,ControlPrimitives.less,
    ControlPrimitives.zero,ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 3 expressions expressions_bounded]
  rfl

theorem profile_guard_exact (inputs : Nat → Word) :
    (expected inputs).getD 1 0=WordControl.boolWord (decide ((inputs 0).toNat≤1073741824)) := by
  change WordControl.lessWord (inputs 0) 1073741825=_
  rw [WordControl.less_word_exact]
  congr 2
  apply propext
  change (inputs 0).toNat<1073741825 ↔ (inputs 0).toNat≤1073741824
  omega

theorem position_guard_exact (inputs : Nat → Word) :
    (expected inputs).getD 2 0=WordControl.boolWord
      (decide ((inputs 1).toNat<(PaddingWords.totalSize (inputs 0)).toNat)) := by
  exact WordControl.less_word_exact _ _

theorem byte_guard_exact (inputs : Nat → Word) :
    (expected inputs).getD 3 0=WordControl.boolWord (decide ((inputs 2).toNat<256)) := by
  change WordControl.zeroWord ((inputs 2).ushiftRight 8)=_
  rw [WordControl.zero_word_exact]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  constructor
  · intro zero
    have value:=congrArg BitVec.toNat zero
    simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow] at value
    change (inputs 2).toNat/256=0 at value
    omega
  · intro bound
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
    change (inputs 2).toNat/256=0
    omega

theorem exact_stream_byte (bytes : SHA256.Bytes) (inputs : Nat → Word)
    (represented : (inputs 0).toNat=bytes.length) (profile : (inputs 0).toNat≤1073741824)
    (within : (inputs 1).toNat<(PaddingWords.totalSize (inputs 0)).toNat)
    (rawExact : (inputs 1).toNat<(inputs 0).toNat → inputs 2=PaddingByte.encodeByte (bytes.getD (inputs 1).toNat 0)) :
    (program.eval inputs).getD 0 0=PaddingByte.encodeByte (PaddingStream.byteAt bytes (inputs 1).toNat) := by
  rw [program_meaning]
  exact PaddingByte.exact_padding_byte bytes (inputs 0) (inputs 1) (inputs 2) represented profile within rawExact

end Core033.PaddingByteProgram
