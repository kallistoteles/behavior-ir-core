import Core033.WordBytesLE
import Core033.BranchCodec

namespace Core033.BranchWordProgram
open WordIR WordStage

def headerBytes : Codec.Bytes := Codec.header ⟨81,by decide⟩
def wordExpressions (register : Nat) : List WordStage.Expr :=
  (List.range 4).map (WordBytesLE.expression register)
def fieldExpressions (start count : Nat) : List WordStage.Expr :=
  (List.range' start count).flatMap wordExpressions

/-- kind, depth, eight LE words per child digest, six full count words, then
positive/coverage words. Admission of typed scalar/metadata fields is separate. -/
def expressions : List WordStage.Expr :=
  headerBytes.map (fun byte=>.literal (BitVec.ofNat 32 byte.toNat))++
    ([WordBytesLE.expression 0 0,WordBytesLE.expression 1 0,WordBytesLE.expression 1 1]++
      (fieldExpressions 2 8++(fieldExpressions 10 8++(fieldExpressions 18 2++
        (fieldExpressions 20 2++(fieldExpressions 22 2++
          [WordBytesLE.expression 24 0,WordBytesLE.expression 25 0]))))))

def program : WordIR.Program := WordSequence.program 26 expressions

def wordValues (inputs : Nat → Word) (register : Nat) : List Word :=
  (List.range 4).map (WordBytesLE.byteWord (inputs register))
def fieldValues (inputs : Nat → Word) (start count : Nat) : List Word :=
  (List.range' start count).flatMap (wordValues inputs)

def expected (inputs : Nat → Word) : List Word :=
  headerBytes.map (fun byte=>BitVec.ofNat 32 byte.toNat)++
    ([WordBytesLE.byteWord (inputs 0) 0,WordBytesLE.byteWord (inputs 1) 0,WordBytesLE.byteWord (inputs 1) 1]++
      (fieldValues inputs 2 8++(fieldValues inputs 10 8++(fieldValues inputs 18 2++
        (fieldValues inputs 20 2++(fieldValues inputs 22 2++
          [WordBytesLE.byteWord (inputs 24) 0,WordBytesLE.byteWord (inputs 25) 0]))))))

theorem word_expressions_bounded (register : Nat) (bounded : register<26) :
    ∀ expression∈wordExpressions register,expression.Bounded 26 := by
  simp only [wordExpressions,List.forall_mem_map]
  intro index member
  simp [WordBytesLE.expression,WordStage.Expr.Bounded,bounded]

theorem field_expressions_bounded (start count : Nat) (bounded : start+count≤26) :
    ∀ expression∈fieldExpressions start count,expression.Bounded 26 := by
  intro expression member
  obtain ⟨register,inRange,inWord⟩:=List.mem_flatMap.mp member
  have rangeBound:=List.mem_range'.mp inRange
  exact word_expressions_bounded register (by omega) expression inWord

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 26 := by
  have headerBound : ∀ expression∈headerBytes.map (fun byte=>WordStage.Expr.literal (BitVec.ofNat 32 byte.toNat)),
      expression.Bounded 26 := by simp [WordStage.Expr.Bounded]
  have prefixBound : ∀ expression∈[WordBytesLE.expression 0 0,WordBytesLE.expression 1 0,WordBytesLE.expression 1 1],
      expression.Bounded 26 := by simp [WordBytesLE.expression,WordStage.Expr.Bounded]
  have suffixBound : ∀ expression∈[WordBytesLE.expression 24 0,WordBytesLE.expression 25 0],
      expression.Bounded 26 := by simp [WordBytesLE.expression,WordStage.Expr.Bounded]
  unfold expressions
  exact List.forall_mem_append.mpr ⟨headerBound,List.forall_mem_append.mpr ⟨prefixBound,
    List.forall_mem_append.mpr ⟨field_expressions_bounded 2 8 (by decide),
      List.forall_mem_append.mpr ⟨field_expressions_bounded 10 8 (by decide),
        List.forall_mem_append.mpr ⟨field_expressions_bounded 18 2 (by decide),
          List.forall_mem_append.mpr ⟨field_expressions_bounded 20 2 (by decide),
            List.forall_mem_append.mpr ⟨field_expressions_bounded 22 2 (by decide),suffixBound⟩⟩⟩⟩⟩⟩⟩

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 26 expressions expressions_bounded]
  simp only [expressions,expected,fieldExpressions,fieldValues,wordExpressions,wordValues,
    List.map_append,List.map_cons,List.map_nil,List.map_flatMap,List.map_map,Function.comp_def,
    WordBytesLE.expression_meaning,WordStage.Expr.eval]
  rfl

theorem output_count : expressions.length=115 := by
  simp [expressions,headerBytes,Codec.header,Codec.magic_size,Codec.encodeLE_size,
    fieldExpressions,wordExpressions,List.length_flatMap]
  decide

end Core033.BranchWordProgram
