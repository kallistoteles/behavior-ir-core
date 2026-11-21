module
public import Mathlib.Data.List.Nodup
public import Mathlib.Logic.Equiv.Defs
@[expose] public section

namespace Correspondence036.FiniteNativeIds

variable {Key Row : Type}

/-- A mathematical enumeration of arbitrary finite native keys. The source
    refinement must supply the actual complete, duplicate-free key list.
    This definition alone does not establish that native-to-list refinement. -/
structure Enumeration (Key : Type) where
  keys : List Key
  nodup : keys.Nodup

abbrev Present (e : Enumeration Key) := {key : Key // key ∈ e.keys}

def decode (e : Enumeration Key) (i : Fin e.keys.length) : Present e :=
  ⟨e.keys.get i, List.get_mem ..⟩

theorem decode_injective (e : Enumeration Key) : Function.Injective (decode e) := by
  intro i j same
  apply e.nodup.injective_get
  exact congrArg Subtype.val same

theorem decode_surjective (e : Enumeration Key) : Function.Surjective (decode e) := by
  intro key
  obtain ⟨i, hi, equal⟩ := List.mem_iff_getElem.mp key.property
  exact ⟨⟨i, hi⟩, Subtype.ext equal⟩

noncomputable def encode (e : Enumeration Key) (key : Present e) : Fin e.keys.length :=
  Classical.choose (decode_surjective e key)

theorem decode_encode (e : Enumeration Key) (key : Present e) :
    decode e (encode e key) = key := Classical.choose_spec (decode_surjective e key)

theorem encode_decode (e : Enumeration Key) (i : Fin e.keys.length) :
    encode e (decode e i) = i :=
  decode_injective e (decode_encode e (decode e i))

noncomputable def bijection (e : Enumeration Key) : Fin e.keys.length ≃ Present e where
  toFun := decode e
  invFun := encode e
  left_inv := encode_decode e
  right_inv := decode_encode e

/-- Equality of full rows is preserved by the indexing relation. No bound on
    the number, spelling or byte length of representable keys is introduced. -/
theorem lookup_transport (e : Enumeration Key) (rows : Key → Option Row)
    (key : Present e) :
    rows ((decode e (encode e key)).val) = rows key.val := by
  rw [decode_encode]

end Correspondence036.FiniteNativeIds
