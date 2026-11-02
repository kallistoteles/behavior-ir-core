import Core033.Utf8Encoding
import Core033.WordSequence

namespace Core033.Utf8Program
open WordIR WordStage

def partExpr (shift mask prefixValue : Nat) : WordStage.Expr :=
  .badd (.band (.shr (.input 0) shift) (.literal (BitVec.ofNat 32 mask))) (.literal (BitVec.ofNat 32 prefixValue))

def lessExpr (cutoff : Nat) : WordStage.Expr :=
  ControlPrimitives.less (.input 0) (.literal (BitVec.ofNat 32 cutoff))

def chooseExpr (cutoff : Nat) (yes no : WordStage.Expr) : WordStage.Expr :=
  ControlPrimitives.select (lessExpr cutoff) yes no

def firstExpr : WordStage.Expr := chooseExpr 128 (.input 0)
  (chooseExpr 2048 (partExpr 6 31 192) (chooseExpr 65536 (partExpr 12 15 224) (partExpr 18 7 240)))
def secondExpr : WordStage.Expr := chooseExpr 128 (.literal 0)
  (chooseExpr 2048 (partExpr 0 63 128) (chooseExpr 65536 (partExpr 6 63 128) (partExpr 12 63 128)))
def thirdExpr : WordStage.Expr := chooseExpr 2048 (.literal 0)
  (chooseExpr 65536 (partExpr 0 63 128) (partExpr 6 63 128))
def fourthExpr : WordStage.Expr := chooseExpr 65536 (.literal 0) (partExpr 0 63 128)
def widthExpr : WordStage.Expr := chooseExpr 128 (.literal 1)
  (chooseExpr 2048 (.literal 2) (chooseExpr 65536 (.literal 3) (.literal 4)))
def scalarExpr : WordStage.Expr :=
  .band (lessExpr 1114112) (.bxor (.bxor (lessExpr 55296) (lessExpr 57344)) (.literal 1))

def expressions : List WordStage.Expr := [firstExpr,secondExpr,thirdExpr,fourthExpr,widthExpr,scalarExpr]
def program : WordIR.Program := WordSequence.program 1 expressions

def expected (inputs : Nat → Word) : List Word :=
  let word:=inputs 0
  [Utf8Encoding.first word,Utf8Encoding.second word,Utf8Encoding.third word,Utf8Encoding.fourth word,
    Utf8Encoding.width word,Utf8Encoding.scalarFlag word]

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 1 := by
  simp [expressions,firstExpr,secondExpr,thirdExpr,fourthExpr,widthExpr,scalarExpr,
    partExpr,chooseExpr,lessExpr,ControlPrimitives.select,ControlPrimitives.less,ControlPrimitives.carry,
    WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 1 expressions expressions_bounded]
  rfl

def emittedBytes (outputs : List Word) : List UInt8 :=
  ((outputs.take 4).map (fun word=>UInt8.ofNat word.toNat)).take ((outputs.getD 4 0).toNat)

theorem exact_encoding (inputs : Nat → Word) : emittedBytes (program.eval inputs)=Utf8Encoding.encoding (inputs 0) := by
  rw [program_meaning]
  rfl

theorem exact_character (char : Char) (inputs : Nat → Word) (represented : inputs 0=Utf8Encoding.charWord char) :
    emittedBytes (program.eval inputs)=String.utf8EncodeChar char := by
  rw [exact_encoding,represented,Utf8Encoding.encoding_char]

theorem exact_scalar_guard (inputs : Nat → Word) :
    (program.eval inputs).getD 5 0=WordControl.boolWord (decide (Utf8Encoding.Scalar (inputs 0))) := by
  rw [program_meaning]
  exact Utf8Encoding.scalar_flag_exact _

end Core033.Utf8Program
