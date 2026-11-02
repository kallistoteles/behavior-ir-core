import Core033.Codec

/- Frozen tag-81 branch framing only. Metadata validity, concrete hashing,
native/source and matrix correspondence are separate required checks. -/
namespace Core033.BranchCodec
open Codec

structure Branch where
  kind : Nat
  depth : Nat
  left : Bytes
  right : Bytes
  leftCount : Nat
  rightCount : Nat
  totalCount : Nat
  positive : Bool
  covered : Bool
  deriving DecidableEq

def boolNat (value : Bool) : Nat := if value then 1 else 0

def Framed (branch : Branch) : Prop :=
  (branch.kind=1 ∨ branch.kind=2) ∧ branch.depth<256 ∧
  branch.left.length=32 ∧ branch.right.length=32 ∧
  branch.leftCount<2^64 ∧ branch.rightCount<2^64 ∧ branch.totalCount<2^64

def MetadataAdmitted (branch : Branch) : Prop :=
  branch.totalCount=branch.leftCount+branch.rightCount ∧ branch.totalCount≤1048576

def encode (branch : Branch) : Bytes := header ⟨81,by decide⟩++
  (encodeLE 1 branch.kind++(encodeLE 2 branch.depth++(branch.left++(branch.right++
    (encodeLE 8 branch.leftCount++(encodeLE 8 branch.rightCount++(encodeLE 8 branch.totalCount++
      (encodeLE 1 (boolNat branch.positive)++encodeLE 1 (boolNat branch.covered)))))))))

def readBool (input : Bytes) : Option (Bool × Bytes) := do
  let (value,rest) ← readNatural 1 input
  if value=0 then some (false,rest) else if value=1 then some (true,rest) else none

def read (input : Bytes) : Option (Branch × Bytes) := do
  let rest ← readTag ⟨81,by decide⟩ input
  let (kind,rest) ← readNatural 1 rest
  if kind≠1 ∧ kind≠2 then none else do
    let (depth,rest) ← readNatural 2 rest
    if 256≤depth then none else do
      let (left,rest) ← readBytes 32 rest
      let (right,rest) ← readBytes 32 rest
      let (leftCount,rest) ← readNatural 8 rest
      let (rightCount,rest) ← readNatural 8 rest
      let (totalCount,rest) ← readNatural 8 rest
      let (positive,rest) ← readBool rest
      let (covered,rest) ← readBool rest
      some (⟨kind,depth,left,right,leftCount,rightCount,totalCount,positive,covered⟩,rest)

theorem bool_nat_range (value : Bool) : boolNat value<256 := by cases value <;> decide

theorem read_bool_suffix (value : Bool) (suffix : Bytes) :
    readBool (encodeLE 1 (boolNat value)++suffix)=some (value,suffix) := by
  unfold readBool
  rw [read_integer_suffix 1 _ (by simpa using bool_nat_range value)]
  cases value <;> simp [Bind.bind,Option.bind,boolNat]

theorem encoded_size (branch : Branch) (framed : Framed branch) : (encode branch).length=115 := by
  simp only [encode,header,List.length_append,magic_size,encodeLE_size,framed.2.2.1,framed.2.2.2.1]

theorem read_suffix (branch : Branch) (framed : Framed branch) (suffix : Bytes) :
    read (encode branch++suffix)=some (branch,suffix) := by
  have kindBound : branch.kind<256 := by rcases framed.1 with h|h <;> omega
  have depthBound : branch.depth<256^2 := by have:=framed.2.1;omega
  have leftRead := read_bytes_suffix branch.left
  have rightRead := read_bytes_suffix branch.right
  rw [framed.2.2.1] at leftRead
  rw [framed.2.2.2.1] at rightRead
  unfold read encode
  simp only [List.append_assoc]
  rw [read_tag_suffix]
  simp only [Bind.bind,Option.bind]
  rw [read_integer_suffix 1 _ (by simpa using kindBound)]
  simp only [Bind.bind,Option.bind]
  rw [if_neg (by rcases framed.1 with h|h <;> simp [h])]
  rw [read_integer_suffix 2 _ depthBound]
  simp only [Bind.bind,Option.bind]
  rw [if_neg (by have:=framed.2.1;omega),leftRead]
  simp only [Bind.bind,Option.bind]
  rw [rightRead]
  simp only [Bind.bind,Option.bind]
  rw [read_integer_suffix 8 _ (by simpa using framed.2.2.2.2.1)]
  simp only [Bind.bind,Option.bind]
  rw [read_integer_suffix 8 _ (by simpa using framed.2.2.2.2.2.1)]
  simp only [Bind.bind,Option.bind]
  rw [read_integer_suffix 8 _ (by simpa using framed.2.2.2.2.2.2)]
  simp only [Bind.bind,Option.bind]
  rw [read_bool_suffix]
  simp only [Bind.bind,Option.bind]
  rw [show encodeLE 1 (boolNat branch.covered)++suffix=
    encodeLE 1 (boolNat branch.covered)++suffix from rfl,read_bool_suffix]

def decodeComplete (input : Bytes) : Option Branch := do
  let (branch,rest) ← read input
  if rest=[] then some branch else none

theorem complete_roundtrip (branch : Branch) (framed : Framed branch) :
    decodeComplete (encode branch)=some branch := by
  have exactness:=read_suffix branch framed []
  simp only [List.append_nil] at exactness
  simp only [decodeComplete,exactness,Bind.bind,Option.bind,if_pos rfl]

theorem encoded_injective (left right : Branch) (leftFramed : Framed left) (rightFramed : Framed right)
    (same : encode left=encode right) : left=right := by
  have decoded:=congrArg decodeComplete same
  rw [complete_roundtrip left leftFramed,complete_roundtrip right rightFramed] at decoded
  exact Option.some.inj decoded

end Core033.BranchCodec
