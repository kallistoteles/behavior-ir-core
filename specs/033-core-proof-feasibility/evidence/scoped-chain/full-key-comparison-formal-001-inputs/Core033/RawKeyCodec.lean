import Core033.Codec
import Core033.Views

/- A byte view of an already typed key for physical request/leaf comparison.
Raw format parsing alone does not establish UTF8 validity or a Core key. The
whole K refinement must bind this view to the typed request/authenticated node;
Init must establish valid seed keys independently. No codec/acceptance change. -/
namespace Core033.RawKeyCodec
open Codec

structure KeyBytes where
  entity : Bytes
  id : Bytes
  deriving DecidableEq

def ofKey (key : Reference.Key) : KeyBytes := ⟨textBytes key.entity,textBytes key.id⟩
def Bounded (key : KeyBytes) : Prop := key.entity≠[] ∧ key.entity.length≤64 ∧ key.id.length≤64

def encode (key : KeyBytes) : Bytes := record ⟨1,by decide⟩ (blob key.entity++blob key.id)

def read (bytes : Bytes) : Option (KeyBytes × Bytes) := do
  let rest ← readTag ⟨1,by decide⟩ bytes
  let (entityBytes,rest) ← readBlob 64 rest
  let (idBytes,rest) ← readBlob 64 rest
  if entityBytes=[] then none else some (⟨entityBytes,idBytes⟩,rest)

theorem typed_encoding (key : Reference.Key) : encode (ofKey key)=encodeKey key := rfl

theorem typed_bounded (key : Reference.Key) (bounded : KeyBounded key) : Bounded (ofKey key) := by
  refine ⟨?_,bounded.2.1,bounded.2.2⟩
  intro empty
  have same : textBytes key.entity=textBytes "" := empty
  exact bounded.1 (text_bytes_exact _ _ same)

theorem read_suffix (key : KeyBytes) (bounded : Bounded key) (suffix : Bytes) :
    read (encode key++suffix)=some (key,suffix) := by
  have entityWidth : key.entity.length<2^32 := by have bound:=bounded.2.1;omega
  have idWidth : key.id.length<2^32 := by have bound:=bounded.2.2;omega
  have shape : encode key++suffix=header ⟨1,by decide⟩++(blob key.entity++(blob key.id++suffix)) := by
    simp only [encode,record,header,List.append_assoc]
  rw [shape]
  unfold read
  rw [read_tag_suffix]
  simp only [Bind.bind,Option.bind]
  rw [read_blob_suffix 64 _ _ bounded.2.1 entityWidth]
  simp only [Bind.bind,Option.bind]
  rw [read_blob_suffix 64 _ _ bounded.2.2 idWidth]
  simp only [Bind.bind,Option.bind,if_neg bounded.1]

theorem typed_read_suffix (key : Reference.Key) (bounded : KeyBounded key) (suffix : Bytes) :
    read (encodeKey key++suffix)=some (ofKey key,suffix) := by
  rw [←typed_encoding]
  exact read_suffix _ (typed_bounded key bounded) suffix

theorem same_view_exact (left right : Reference.Key) : ofKey left=ofKey right ↔ left=right := by
  constructor
  · intro same
    have entities:=congrArg KeyBytes.entity same
    have identifiers:=congrArg KeyBytes.id same
    have entityExact:=text_bytes_exact left.entity right.entity entities
    have idExact:=text_bytes_exact left.id right.id identifiers
    cases left
    cases right
    cases entityExact
    cases idExact
    rfl
  · intro same
    rw [same]

theorem typed_parse_exact (bytes : Bytes) (key : Reference.Key) (bounded : KeyBounded key)
    (boundToTypedBytes : bytes=encodeKey key) : parseKey bytes=some key := by
  rw [boundToTypedBytes]
  exact key_roundtrip key bounded

def lookupAt (tree : Views.Tree α n) (path : Views.Path n) (wanted : KeyBytes) : Views.Lookup α :=
  match tree.lookup path with
  | none => .absent
  | some (stored,value) => if ofKey stored=wanted then .found value else .addressCollision stored

theorem typed_lookup_exact (tree : Views.Tree α n) (address : Reference.Key → Views.Path n) (wanted : Reference.Key) :
    lookupAt tree (address wanted) (ofKey wanted)=tree.find address wanted := by
  unfold lookupAt Views.Tree.find
  cases found : tree.lookup (address wanted) with
  | none => rfl
  | some entry => simp only [same_view_exact]

theorem different_view_is_address_collision (tree : Views.Tree α n) (path : Views.Path n)
    (wanted : KeyBytes) (stored : Reference.Key) (value : α)
    (found : tree.lookup path=some (stored,value)) (different : ofKey stored≠wanted) :
    lookupAt tree path wanted=.addressCollision stored := by
  simp only [lookupAt,found,if_neg different]

def padded (key : Reference.Key) : Bytes := encodeKey key++List.replicate (192-(encodeKey key).length) 0

theorem padded_size (key : Reference.Key) (bounded : KeyBounded key) : (padded key).length=192 := by
  have size:=key_packet_bound key bounded
  simp only [padded,List.length_append,List.length_replicate]
  omega

theorem padded_equality_exact (left right : Reference.Key) (leftBound : KeyBounded left) (rightBound : KeyBounded right) :
    padded left=padded right ↔ left=right := by
  constructor
  · intro same
    have first:=typed_read_suffix left leftBound (List.replicate (192-(encodeKey left).length) 0)
    have second:=typed_read_suffix right rightBound (List.replicate (192-(encodeKey right).length) 0)
    have pairExact:=Option.some.inj (first.symm.trans ((congrArg read same).trans second))
    exact (same_view_exact left right).mp (congrArg Prod.fst pairExact)
  · intro same
    rw [same]

end Core033.RawKeyCodec
