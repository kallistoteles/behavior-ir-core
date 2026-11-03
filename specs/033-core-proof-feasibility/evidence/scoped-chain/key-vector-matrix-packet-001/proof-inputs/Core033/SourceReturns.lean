import Core033.WordSourceBlocks

namespace Core033.SourceReturns
open WordSource

def namePrefix (indices : List Nat) : Bytes := indices.flatMap (fun index=>name index++Codec.textBytes ", ")

theorem namePrefix_append (left right : List Nat) : namePrefix (left++right)=namePrefix left++namePrefix right := by
  simp only [namePrefix,List.flatMap_append]

theorem namePrefix_flatten (chunks : List (List Nat)) :
    namePrefix chunks.flatten=(chunks.map namePrefix).flatten := by
  induction chunks with
  | nil => rfl
  | cons chunk rest ih =>
    rw [List.flatten_cons,namePrefix_append,ih]
    rfl

theorem return_append_last (before : List Nat) (last : Nat) :
    returnBytes (before++[last])=namePrefix before++name last := by
  induction before with
  | nil => simp [returnBytes,namePrefix]
  | cons first rest ih =>
    cases rest with
    | nil => simp [returnBytes,namePrefix,List.append_assoc]
    | cons second rest =>
      simpa only [List.cons_append,returnBytes,namePrefix,List.flatMap_cons,List.append_assoc] using congrArg
        (fun bytes=>name first++Codec.textBytes ", "++bytes) ih

end Core033.SourceReturns
