module
public import NativeJsonIterators
public import CollectionsGap
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036
set_option linter.unusedVariables false

/- Exact signature candidates, not native admission. The vacant representation
retains the captured insertion gap. Rust allocator/drop/size/trait/source and
caller-compatible mutation relations remain mandatory separate obligations. -/
namespace Correspondence036.NativeEntryOperations
open Correspondence036.CollectionsData Correspondence036.CollectionsFocus
abbrev Gap := Correspondence036.CollectionsGap.Entry
abbrev NativeEntry := alloc.collections.btree.map.entry.Entry

def encode {K V A : Type} : Gap K V → NativeEntry K V A
| .vacant front key suffix => .Vacant ⟨front, key, suffix⟩
| .occupied front stored current suffix => .Occupied ⟨front, stored, current, suffix⟩

def decode {K V A : Type} : NativeEntry K V A → Gap K V
| .Vacant entry => .vacant entry.front entry.key entry.suffix
| .Occupied entry => .occupied entry.front entry.stored entry.value entry.suffix

def render {K V A : Type} (entry : NativeEntry K V A) : Map K V :=
  CollectionsGap.toMap (decode entry)

theorem decode_encode {K V A : Type} (entry : Gap K V) :
    decode (encode (A := A) entry) = entry := by
  cases entry <;> rfl

theorem encode_decode {K V A : Type} (entry : NativeEntry K V A) :
    encode (decode entry) = entry := by
  cases entry with
  | Vacant entry => cases entry; rfl
  | Occupied entry => cases entry; rfl

theorem render_encode {K V A : Type} (entry : Gap K V) :
    render (encode (A := A) entry) = CollectionsGap.toMap entry := by
  simp [render, decode_encode]
end Correspondence036.NativeEntryOperations

/-- [alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<K, V, A>}::entry]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 1503:4-1505:15
    Name pattern: [alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<@K, @V, @A>}::entry]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<@K, @V, @A>}::entry"] def alloc.collections.btree.map.BTreeMap.impl.entry {K : Type _} {V : Type _} {A : Type _} (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) (corecmpOrdInst : core.cmp.Ord K) : alloc.collections.btree.map.BTreeMap K V A → K → Result ((alloc.collections.btree.map.entry.Entry K V A) × (alloc.collections.btree.map.entry.Entry K V A → alloc.collections.btree.map.BTreeMap K V A)) :=
  fun map key => do
    let captured ← Correspondence036.CollectionsGap.captureM corecmpOrdInst.cmp key map.data
    ok (Correspondence036.NativeEntryOperations.encode captured,
        fun replacement => ⟨Correspondence036.NativeEntryOperations.render replacement⟩)

/-- [alloc::collections::btree::map::entry::{alloc::collections::btree::map::entry::Entry<'a, K, V, A>}::or_default]:
    Source: '/rustc/library/alloc/src/collections/btree/map/entry.rs', lines 363:4-363:40
    Name pattern: [alloc::collections::btree::map::entry::{alloc::collections::btree::map::entry::Entry<'a, @K, @V, @A>}::or_default]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::entry::{alloc::collections::btree::map::entry::Entry<'a, @K, @V, @A>}::or_default"] def alloc.collections.btree.map.entry.Entry.impl.or_default {K : Type _} {V : Type _} {A : Type _} (corecmpOrdInst : core.cmp.Ord K) (coredefaultDefaultInst : core.default.Default V) (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) : alloc.collections.btree.map.entry.Entry K V A → Result (V × (V → alloc.collections.btree.map.entry.Entry K V A)) :=
  fun entry => match entry with
  | .Vacant vacant => do
    let current ← coredefaultDefaultInst.default
    ok (current, fun replacement => .Occupied ⟨vacant.front, vacant.key, replacement, vacant.suffix⟩)
  | .Occupied occupied =>
    ok (occupied.value, fun replacement => .Occupied ⟨occupied.front, occupied.stored, replacement, occupied.suffix⟩)


namespace Correspondence036.NativeEntryOperations
open Correspondence036.CollectionsData Correspondence036.CollectionsFocus

theorem or_default_gap {K V A : Type} (order : core.cmp.Ord K)
    (default : core.default.Default V) (allocator : core.alloc.AllocatorClone A)
    (entry : NativeEntry K V A) :
    alloc.collections.btree.map.entry.Entry.impl.or_default order default allocator entry =
      (do let (current, backward) ← CollectionsGap.orDefault (fun _ => default.default) (decode entry)
          ok (current, fun replacement => encode (backward replacement))) := by
  cases entry with
  | Vacant entry => cases entry; cases default.default <;> rfl
  | Occupied entry => cases entry; rfl

theorem entry_captured {K V A : Type} (allocator : core.alloc.AllocatorClone A)
    (order : core.cmp.Ord K) (map : alloc.collections.btree.map.BTreeMap K V A)
    (key : K) (captured : Gap K V)
    (searched : CollectionsGap.captureM order.cmp key map.data = ok captured) :
    alloc.collections.btree.map.BTreeMap.impl.entry allocator order map key =
      ok (encode captured, fun replacement =>
        alloc.collections.btree.map.BTreeMap.mk (render replacement)) := by
  simp [alloc.collections.btree.map.BTreeMap.impl.entry, searched]

theorem backward_render {K V A : Type} (entry : Gap K V) :
    (alloc.collections.btree.map.BTreeMap.mk (A := A) (render (encode (A := A) entry))).data =
      CollectionsGap.toMap entry := by
  exact render_encode entry

end Correspondence036.NativeEntryOperations
