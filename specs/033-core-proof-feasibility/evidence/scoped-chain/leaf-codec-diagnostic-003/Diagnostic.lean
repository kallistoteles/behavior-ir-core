import Core033.ValueCodec
import Core033.BranchCodec

namespace Core033.LeafCodec
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
open Codec

inductive Leaf where
  | live (key : Reference.Key) (value : Views.LiveValue) (occupied positive : Bool)
  | used (key : Reference.Key) (occupied positive : Bool)
  deriving DecidableEq

def Framed : Leaf → Prop
  | .live key value _ _ => KeyBounded key ∧ ValueCodec.Bounded value
  | .used key _ _ => KeyBounded key

def encode : Leaf → Bytes
  | .live key value occupied positive => header ⟨80,by decide⟩++
      (encodeLE 1 1++(encodeKey key++(ValueCodec.encode value++
        (encodeLE 8 (BranchCodec.boolNat occupied)++encodeLE 1 (BranchCodec.boolNat positive)))))
  | .used key occupied positive => header ⟨80,by decide⟩++
      (encodeLE 1 2++(encodeKey key++
        (encodeLE 8 (BranchCodec.boolNat occupied)++encodeLE 1 (BranchCodec.boolNat positive))))

def readOccupied (input : Bytes) : Option (Bool × Bytes) := do
  let (count,rest) ← readNatural 8 input
  if count=0 then some (false,rest) else if count=1 then some (true,rest) else none

theorem read_occupied_suffix (value : Bool) (suffix : Bytes) :
    readOccupied (encodeLE 8 (BranchCodec.boolNat value)++suffix)=some (value,suffix) := by
  have bound : BranchCodec.boolNat value<256^8 := by have h:=BranchCodec.bool_nat_range value;omega
  unfold readOccupied
  rw [read_integer_suffix 8 _ bound]
  cases value <;> simp [Bind.bind,Option.bind,BranchCodec.boolNat]

def read (input : Bytes) : Option (Leaf × Bytes) := do
  let rest ← readTag ⟨80,by decide⟩ input
  let (kind,rest) ← readNatural 1 rest
  if kind=1 then do
    let (key,rest) ← readKey rest
    let (value,rest) ← ValueCodec.read rest
    let (occupied,rest) ← readOccupied rest
    let (positive,rest) ← BranchCodec.readBool rest
    some (.live key value occupied positive,rest)
  else if kind=2 then do
    let (key,rest) ← readKey rest
    let (occupied,rest) ← readOccupied rest
    let (positive,rest) ← BranchCodec.readBool rest
    some (.used key occupied positive,rest)
  else none

theorem read_suffix (leaf : Leaf) (framed : Framed leaf) (suffix : Bytes) :
    read (encode leaf++suffix)=some (leaf,suffix) := by
  cases leaf with
  | live key value occupied positive =>
    have shape : encode (.live key value occupied positive)++suffix=header ⟨80,by decide⟩++
        (encodeLE 1 1++(encodeKey key++(ValueCodec.encode value++
          (encodeLE 8 (BranchCodec.boolNat occupied)++(encodeLE 1 (BranchCodec.boolNat positive)++suffix))))) := by
      simp only [encode,List.append_assoc]
    rw [shape]
    unfold read
    rw [read_tag_suffix]
    simp only [Bind.bind,Option.bind]
    rw [read_integer_suffix 1 1 (by decide)]
    simp only [Bind.bind,Option.bind,if_pos rfl]
    rw [read_key_suffix key framed.1]
    simp only [Bind.bind,Option.bind]
    rw [ValueCodec.read_suffix value framed.2]
    simp only [Bind.bind,Option.bind]
    rw [read_occupied_suffix]
    simp only [Bind.bind,Option.bind]
    rw [BranchCodec.read_bool_suffix]
    rfl
  | used key occupied positive =>
    have shape : encode (.used key occupied positive)++suffix=header ⟨80,by decide⟩++
        (encodeLE 1 2++(encodeKey key++
          (encodeLE 8 (BranchCodec.boolNat occupied)++(encodeLE 1 (BranchCodec.boolNat positive)++suffix)))) := by
      simp only [encode,List.append_assoc]
    rw [shape]
    unfold read
    rw [read_tag_suffix]
    simp only [Bind.bind,Option.bind]
    rw [read_integer_suffix 1 2 (by decide)]
    simp only [Bind.bind,Option.bind,show ¬(2:Nat)=1 by decide,if_false,if_pos rfl]
    rw [read_key_suffix key framed]
    simp only [Bind.bind,Option.bind]
    rw [read_occupied_suffix]
    simp only [Bind.bind,Option.bind]
    rw [BranchCodec.read_bool_suffix]
    rfl

def complete (input : Bytes) : Option Leaf := do
  let (leaf,rest) ← read input
  if rest=[] then some leaf else none

theorem complete_roundtrip (leaf : Leaf) (framed : Framed leaf) : complete (encode leaf)=some leaf := by
  have parsed:=read_suffix leaf framed []
  simp only [List.append_nil] at parsed
  simp [complete,parsed]

theorem encoded_injective (left right : Leaf) (leftBound : Framed left) (rightBound : Framed right)
    (same : encode left=encode right) : left=right := by
  have parsed:=congrArg complete same
  rw [complete_roundtrip left leftBound,complete_roundtrip right rightBound] at parsed
  exact Option.some.inj parsed

end Core033.LeafCodec
