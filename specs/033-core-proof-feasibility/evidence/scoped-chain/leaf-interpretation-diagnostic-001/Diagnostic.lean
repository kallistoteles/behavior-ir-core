import Core033.LeafCodec

namespace Core033.LeafInterpretation
open Reference Views

def emptyKey : Key := ⟨"E",""⟩
def emptyValue : LiveValue := ⟨⟨0,by decide,by decide⟩,""⟩
def positive (value : LiveValue) : Bool := decide (0<value.x.value)

def ofLive : Option (Key × LiveValue) → LeafCodec.Leaf
  | none => .live emptyKey emptyValue false true
  | some (key,value) => .live key value true (positive value)

def ofUsed : Option (Key × Unit) → LeafCodec.Leaf
  | none => .used emptyKey false true
  | some (key,_) => .used key true true

def liveMeaning : LeafCodec.Leaf → Option (Key × LiveValue)
  | .live key value occupied _ => if occupied then some (key,value) else none
  | .used _ _ _ => none

def usedMeaning : LeafCodec.Leaf → Option (Key × Unit)
  | .used key occupied _ => if occupied then some (key,()) else none
  | .live _ _ _ _ => none

theorem live_inverse (value : Option (Key × LiveValue)) : liveMeaning (ofLive value)=value := by
  cases value <;> rfl

theorem used_inverse (value : Option (Key × Unit)) : usedMeaning (ofUsed value)=value := by
  cases value with
  | none => rfl
  | some entry => cases entry with | mk key value => cases value;rfl

def liveNode : LeafCodec.Leaf → Node LiveValue
  | .live key value occupied positive => if occupied then .occupied key value positive else .empty
  | .used _ _ _ => .empty

def usedNode : LeafCodec.Leaf → Node Unit
  | .used key occupied positive => if occupied then .occupied key () positive else .empty
  | .live _ _ _ _ => .empty

theorem live_node_exact (value : Option (Key × LiveValue)) : liveNode (ofLive value)=leafNode positive value := by
  cases value <;> rfl

theorem used_node_exact (value : Option (Key × Unit)) : usedNode (ofUsed value)=leafNode (fun _=>true) value := by
  cases value <;> rfl

def LiveBounded : Option (Key × LiveValue) → Prop
  | none => True
  | some (key,value) => Codec.KeyBounded key ∧ ValueCodec.Bounded value

def UsedBounded : Option (Key × Unit) → Prop
  | none => True
  | some (key,_) => Codec.KeyBounded key

theorem empty_key_bounded : Codec.KeyBounded emptyKey := by decide

theorem empty_value_bounded : ValueCodec.Bounded emptyValue := by decide

theorem live_framed (value : Option (Key × LiveValue)) (bounded : LiveBounded value) : LeafCodec.Framed (ofLive value) := by
  cases value with
  | none => exact ⟨empty_key_bounded,empty_value_bounded⟩
  | some entry => exact bounded

theorem used_framed (value : Option (Key × Unit)) (bounded : UsedBounded value) : LeafCodec.Framed (ofUsed value) := by
  cases value with
  | none => exact empty_key_bounded
  | some entry => exact bounded

theorem live_bytes_preserve_full_key_value (left right : Option (Key × LiveValue))
    (leftBound : LiveBounded left) (rightBound : LiveBounded right)
    (same : LeafCodec.encode (ofLive left)=LeafCodec.encode (ofLive right)) : left=right := by
  have leafSame:=LeafCodec.encoded_injective _ _ (live_framed left leftBound) (live_framed right rightBound) same
  have meanings:=congrArg liveMeaning leafSame
  rw [live_inverse,live_inverse] at meanings
  exact meanings

theorem used_bytes_preserve_full_identity (left right : Option (Key × Unit))
    (leftBound : UsedBounded left) (rightBound : UsedBounded right)
    (same : LeafCodec.encode (ofUsed left)=LeafCodec.encode (ofUsed right)) : left=right := by
  have leafSame:=LeafCodec.encoded_injective _ _ (used_framed left leftBound) (used_framed right rightBound) same
  have meanings:=congrArg usedMeaning leafSame
  rw [used_inverse,used_inverse] at meanings
  exact meanings

end Core033.LeafInterpretation
