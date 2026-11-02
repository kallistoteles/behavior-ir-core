import Core033.WordSourceBlocks

namespace Core033.SourceReturns
open WordSource

def prefix (indices : List Nat) : Bytes := indices.flatMap (fun index=>name index++Codec.textBytes ", ")

theorem prefix_append (left right : List Nat) : prefix (left++right)=prefix left++prefix right := by
  simp only [prefix,List.flatMap_append]

theorem return_append_last (before : List Nat) (last : Nat) :
    returnBytes (before++[last])=prefix before++name last := by
  induction before with
  | nil => simp [returnBytes,prefix]
  | cons first rest ih =>
    cases rest with
    | nil => simp [returnBytes,prefix,List.append_assoc]
    | cons second rest =>
      simpa only [List.cons_append,returnBytes,prefix,List.flatMap_cons,List.append_assoc] using congrArg
        (fun bytes=>name first++Codec.textBytes ", "++bytes) ih

end Core033.SourceReturns
