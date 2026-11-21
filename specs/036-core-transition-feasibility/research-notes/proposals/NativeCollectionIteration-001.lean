module
public import NativeJsonIterators
public import CollectionsOrder
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036
set_option linter.unusedVariables false

/- Candidate exact-signature iterator API definitions. Every named external
binding is retained; no Rust/native primitive admission follows from an attribute.
Traversal exposes stored order; source representation must establish that this is
native ascending key order. Allocator/ownership/drop/world adequacy remains open. -/

/-- [alloc::collections::btree::map::{impl core::iter::traits::iterator::Iterator<(&'a K, &'a V)> for alloc::collections::btree::map::Iter<'a, K, V>}::next]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 1737:4-1737:48
    Name pattern: [alloc::collections::btree::map::{core::iter::traits::iterator::Iterator<alloc::collections::btree::map::Iter<'a, @K, @V>, (&'a @K, &'a @V)>}::next]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{core::iter::traits::iterator::Iterator<alloc::collections::btree::map::Iter<'a, @K, @V>, (&'a @K, &'a @V)>}::next"] def alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next {K : Type _} {V : Type _} : alloc.collections.btree.map.Iter K V → Result ((Option (K × V)) × (alloc.collections.btree.map.Iter K V)) :=
  fun cursor => match cursor.remaining with
  | [] => .ok (none, ⟨[]⟩)
  | row :: tail => .ok (some row, ⟨tail⟩)

/-- [alloc::collections::btree::map::{impl core::iter::traits::collect::IntoIterator<(&'a K, &'a V), alloc::collections::btree::map::Iter<'a, K, V>> for &'a alloc::collections::btree::map::BTreeMap<K, V, A>}::into_iter]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 1728:4-1728:40
    Name pattern: [alloc::collections::btree::map::{core::iter::traits::collect::IntoIterator<&'a alloc::collections::btree::map::BTreeMap<@K, @V, @A>, (&'a @K, &'a @V), alloc::collections::btree::map::Iter<'a, @K, @V>>}::into_iter]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{core::iter::traits::collect::IntoIterator<&'a alloc::collections::btree::map::BTreeMap<@K, @V, @A>, (&'a @K, &'a @V), alloc::collections::btree::map::Iter<'a, @K, @V>>}::into_iter"] def SharedABTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAKSharedAVIter.into_iter {K : Type _} {V : Type _} {A : Type _} (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) : alloc.collections.btree.map.BTreeMap K V A → Result (alloc.collections.btree.map.Iter K V) :=
  fun map => .ok ⟨Correspondence036.CollectionsOrder.entries map.data⟩

/-- [alloc::collections::btree::map::{impl core::iter::traits::collect::IntoIterator<(K, V), alloc::collections::btree::map::IntoIter<K, V, A>> for alloc::collections::btree::map::BTreeMap<K, V, A>}::into_iter]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 1890:4-1890:43
    Name pattern: [alloc::collections::btree::map::{core::iter::traits::collect::IntoIterator<alloc::collections::btree::map::BTreeMap<@K, @V, @A>, (@K, @V), alloc::collections::btree::map::IntoIter<@K, @V, @A>>}::into_iter]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{core::iter::traits::collect::IntoIterator<alloc::collections::btree::map::BTreeMap<@K, @V, @A>, (@K, @V), alloc::collections::btree::map::IntoIter<@K, @V, @A>>}::into_iter"] def alloc.collections.btree.map.BTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairIntoIter.into_iter {K : Type _} {V : Type _} {A : Type _} (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) : alloc.collections.btree.map.BTreeMap K V A → Result (alloc.collections.btree.map.IntoIter K V A) :=
  fun map => .ok ⟨Correspondence036.CollectionsOrder.entries map.data⟩

/-- [alloc::collections::btree::map::{impl core::iter::traits::iterator::Iterator<(K, V)> for alloc::collections::btree::map::IntoIter<K, V, A>}::next]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 1973:4-1973:40
    Name pattern: [alloc::collections::btree::map::{core::iter::traits::iterator::Iterator<alloc::collections::btree::map::IntoIter<@K, @V, @A>, (@K, @V)>}::next]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{core::iter::traits::iterator::Iterator<alloc::collections::btree::map::IntoIter<@K, @V, @A>, (@K, @V)>}::next"] def alloc.collections.btree.map.IntoIter.Insts.CoreIterTraitsIteratorIteratorPair.next {K : Type _} {V : Type _} {A : Type _} (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) : alloc.collections.btree.map.IntoIter K V A → Result ((Option (K × V)) × (alloc.collections.btree.map.IntoIter K V A)) :=
  fun cursor => match cursor.remaining with
  | [] => .ok (none, ⟨[]⟩)
  | row :: tail => .ok (some row, ⟨tail⟩)

/-- [alloc::collections::btree::map::{impl core::iter::traits::iterator::Iterator<&'a V> for alloc::collections::btree::map::Values<'a, K, V>}::next]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 2080:4-2080:39
    Name pattern: [alloc::collections::btree::map::{core::iter::traits::iterator::Iterator<alloc::collections::btree::map::Values<'a, @K, @V>, &'a @V>}::next]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{core::iter::traits::iterator::Iterator<alloc::collections::btree::map::Values<'a, @K, @V>, &'a @V>}::next"] def alloc.collections.btree.map.Values.Insts.CoreIterTraitsIteratorIteratorSharedAV.next {K : Type _} {V : Type _} : alloc.collections.btree.map.Values K V → Result ((Option V) × (alloc.collections.btree.map.Values K V)) :=
  fun cursor => match cursor.remaining with
  | [] => .ok (none, ⟨[]⟩)
  | row :: tail => .ok (some row.2, ⟨tail⟩)

/-- [alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<K, V, A>}::values]:
    Source: '/rustc/library/alloc/src/collections/btree/map.rs', lines 2786:4-2786:44
    Name pattern: [alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<@K, @V, @A>}::values]
    Visibility: public -/
@[rust_fun "alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<@K, @V, @A>}::values"] def alloc.collections.btree.map.BTreeMap.impl.values {K : Type _} {V : Type _} {A : Type _} (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) : alloc.collections.btree.map.BTreeMap K V A → Result (alloc.collections.btree.map.Values K V) :=
  fun map => .ok ⟨Correspondence036.CollectionsOrder.entries map.data⟩

/-- [serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::keys]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs', lines 319:4-319:30
    Name pattern: [serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::keys]
    Visibility: public -/
@[rust_fun "serde_json::map::{serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::keys"] def serde_json.map.MapStringValue.impl.keys : serde_json.map.Map String serde_json.value.Value → Result serde_json.map.Keys :=
  fun map => .ok ⟨(Correspondence036.CollectionsOrder.entries map.data).map Prod.fst⟩

/-- [serde_json::map::{impl core::iter::traits::collect::IntoIterator<(&'a alloc::string::String, &'a serde_json::value::Value), serde_json::map::Iter<'a>> for &'a serde_json::map::Map<alloc::string::String, serde_json::value::Value>}::into_iter]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs', lines 1051:4-1051:40
    Name pattern: [serde_json::map::{core::iter::traits::collect::IntoIterator<&'a serde_json::map::Map<alloc::string::String, serde_json::value::Value>, (&'a alloc::string::String, &'a serde_json::value::Value), serde_json::map::Iter<'a>>}::into_iter]
    Visibility: public -/
@[rust_fun "serde_json::map::{core::iter::traits::collect::IntoIterator<&'a serde_json::map::Map<alloc::string::String, serde_json::value::Value>, (&'a alloc::string::String, &'a serde_json::value::Value), serde_json::map::Iter<'a>>}::into_iter"] def SharedAMapStringValue.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAStringSharedAValueIter.into_iter : serde_json.map.Map String serde_json.value.Value → Result serde_json.map.Iter :=
  fun map => .ok ⟨Correspondence036.CollectionsOrder.entries map.data⟩

/-- [serde_json::map::{impl core::iter::traits::iterator::Iterator<(&'a alloc::string::String, &'a serde_json::value::Value)> for serde_json::map::Iter<'a>}::next]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs', lines 574:12-574:52; this code is generated from a macro invocation at: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs', lines 1069:0-1069:57
    Name pattern: [serde_json::map::{core::iter::traits::iterator::Iterator<serde_json::map::Iter<'a>, (&'a alloc::string::String, &'a serde_json::value::Value)>}::next]
    Visibility: public -/
@[rust_fun "serde_json::map::{core::iter::traits::iterator::Iterator<serde_json::map::Iter<'a>, (&'a alloc::string::String, &'a serde_json::value::Value)>}::next"] def serde_json.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAStringSharedAValue.next : serde_json.map.Iter → Result ((Option (String × serde_json.value.Value)) × serde_json.map.Iter) :=
  fun cursor => match cursor.remaining with
  | [] => .ok (none, ⟨[]⟩)
  | row :: tail => .ok (some row, ⟨tail⟩)

/-- [serde_json::map::{impl core::iter::traits::iterator::Iterator<&'a alloc::string::String> for serde_json::map::Keys<'a>}::next]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs', lines 574:12-574:52; this code is generated from a macro invocation at: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs', lines 1136:0-1136:44
    Name pattern: [serde_json::map::{core::iter::traits::iterator::Iterator<serde_json::map::Keys<'a>, &'a alloc::string::String>}::next]
    Visibility: public -/
@[rust_fun "serde_json::map::{core::iter::traits::iterator::Iterator<serde_json::map::Keys<'a>, &'a alloc::string::String>}::next"] def serde_json.map.Keys.Insts.CoreIterTraitsIteratorIteratorSharedAString.next : serde_json.map.Keys → Result ((Option String) × serde_json.map.Keys) :=
  fun cursor => match cursor.remaining with
  | [] => .ok (none, ⟨[]⟩)
  | key :: tail => .ok (some key, ⟨tail⟩)

namespace Correspondence036.NativeCollectionIteration
open Correspondence036.CollectionsData Correspondence036.CollectionsOrder
abbrev NativeValue := transition_study036.serde_json.value.Value

def consume {Item Cursor : Type} (next : Cursor → Result (Option Item × Cursor)) :
    Nat → Cursor → Result (List Item × Cursor)
| 0, cursor => .ok ([], cursor)
| count + 1, cursor => do
  let step ← next cursor
  match step.1 with
  | none => .ok ([], step.2)
  | some item => do
    let rest ← consume next count step.2
    .ok (item :: rest.1, rest.2)

theorem shared_next {K V : Type} (rows : List (K × V)) :
    alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next (⟨rows⟩ : alloc.collections.btree.map.Iter K V) = .ok (rows.head?, ⟨rows.tail⟩) := by
  cases rows <;> rfl

theorem owned_next {K V A : Type} (allocator : core.alloc.AllocatorClone A) (rows : List (K × V)) :
    alloc.collections.btree.map.IntoIter.Insts.CoreIterTraitsIteratorIteratorPair.next allocator (⟨rows⟩ : alloc.collections.btree.map.IntoIter K V A) = .ok (rows.head?, ⟨rows.tail⟩) := by
  cases rows <;> rfl

theorem json_next  (rows : List (String × NativeValue)) :
    serde_json.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAStringSharedAValue.next (⟨rows⟩ : serde_json.map.Iter) = .ok (rows.head?, ⟨rows.tail⟩) := by
  cases rows <;> rfl

theorem keys_next  (rows : List (String)) :
    serde_json.map.Keys.Insts.CoreIterTraitsIteratorIteratorSharedAString.next (⟨rows⟩ : serde_json.map.Keys) = .ok (rows.head?, ⟨rows.tail⟩) := by
  cases rows <;> rfl

theorem values_next {K V : Type} (rows : List (K × V)) :
    alloc.collections.btree.map.Values.Insts.CoreIterTraitsIteratorIteratorSharedAV.next (⟨rows⟩ : alloc.collections.btree.map.Values K V) =
      .ok (rows.head?.map Prod.snd, ⟨rows.tail⟩) := by
  cases rows <;> rfl

theorem shared_init {K V A : Type} (allocator : core.alloc.AllocatorClone A)
    (map : alloc.collections.btree.map.BTreeMap K V A) :
    SharedABTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAKSharedAVIter.into_iter allocator map = .ok (⟨entries map.data⟩ : alloc.collections.btree.map.Iter K V) := rfl

theorem owned_init {K V A : Type} (allocator : core.alloc.AllocatorClone A)
    (map : alloc.collections.btree.map.BTreeMap K V A) :
    alloc.collections.btree.map.BTreeMap.Insts.CoreIterTraitsCollectIntoIteratorPairIntoIter.into_iter allocator map = .ok (⟨entries map.data⟩ : alloc.collections.btree.map.IntoIter K V A) := rfl

theorem values_init {K V A : Type} (allocator : core.alloc.AllocatorClone A)
    (map : alloc.collections.btree.map.BTreeMap K V A) :
    alloc.collections.btree.map.BTreeMap.impl.values allocator map = .ok (⟨entries map.data⟩ : alloc.collections.btree.map.Values K V) := rfl

theorem json_init (map : serde_json.map.Map String NativeValue) :
    SharedAMapStringValue.Insts.CoreIterTraitsCollectIntoIteratorPairSharedAStringSharedAValueIter.into_iter map = .ok ⟨entries map.data⟩ := rfl

theorem keys_init (map : serde_json.map.Map String NativeValue) :
    serde_json.map.MapStringValue.impl.keys map = .ok ⟨(entries map.data).map Prod.fst⟩ := rfl

theorem consume_shared {K V : Type} (count : Nat) (rows : List (K × V)) :
    consume (alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next) count (⟨rows⟩ : alloc.collections.btree.map.Iter K V) =
      .ok (rows.take count, ⟨rows.drop count⟩) := by
  induction count generalizing rows with
  | zero => rfl
  | succ count ih =>
    cases rows with
    | nil => simp [consume, alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next]
    | cons item tail => simp [consume, alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next, ih]

theorem consume_owned {K V A : Type} (allocator : core.alloc.AllocatorClone A) (count : Nat) (rows : List (K × V)) :
    consume (alloc.collections.btree.map.IntoIter.Insts.CoreIterTraitsIteratorIteratorPair.next allocator) count (⟨rows⟩ : alloc.collections.btree.map.IntoIter K V A) =
      .ok (rows.take count, ⟨rows.drop count⟩) := by
  induction count generalizing rows with
  | zero => rfl
  | succ count ih =>
    cases rows with
    | nil => simp [consume, alloc.collections.btree.map.IntoIter.Insts.CoreIterTraitsIteratorIteratorPair.next]
    | cons item tail => simp [consume, alloc.collections.btree.map.IntoIter.Insts.CoreIterTraitsIteratorIteratorPair.next, ih]

theorem consume_json  (count : Nat) (rows : List (String × NativeValue)) :
    consume (serde_json.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAStringSharedAValue.next) count (⟨rows⟩ : serde_json.map.Iter) =
      .ok (rows.take count, ⟨rows.drop count⟩) := by
  induction count generalizing rows with
  | zero => rfl
  | succ count ih =>
    cases rows with
    | nil => simp [consume, serde_json.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAStringSharedAValue.next]
    | cons item tail => simp [consume, serde_json.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAStringSharedAValue.next, ih]

theorem consume_keys  (count : Nat) (rows : List (String)) :
    consume (serde_json.map.Keys.Insts.CoreIterTraitsIteratorIteratorSharedAString.next) count (⟨rows⟩ : serde_json.map.Keys) =
      .ok (rows.take count, ⟨rows.drop count⟩) := by
  induction count generalizing rows with
  | zero => rfl
  | succ count ih =>
    cases rows with
    | nil => simp [consume, serde_json.map.Keys.Insts.CoreIterTraitsIteratorIteratorSharedAString.next]
    | cons item tail => simp [consume, serde_json.map.Keys.Insts.CoreIterTraitsIteratorIteratorSharedAString.next, ih]

theorem consume_values {K V : Type} (count : Nat) (rows : List (K × V)) :
    consume alloc.collections.btree.map.Values.Insts.CoreIterTraitsIteratorIteratorSharedAV.next count (⟨rows⟩ : alloc.collections.btree.map.Values K V) =
      .ok ((rows.take count).map Prod.snd, ⟨rows.drop count⟩) := by
  induction count generalizing rows with
  | zero => rfl
  | succ count ih =>
    cases rows with
    | nil => simp [consume, alloc.collections.btree.map.Values.Insts.CoreIterTraitsIteratorIteratorSharedAV.next]
    | cons item tail => simp [consume, alloc.collections.btree.map.Values.Insts.CoreIterTraitsIteratorIteratorSharedAV.next, ih]

theorem consume_all_shared {K V : Type} (rows : List (K × V)) :
    consume alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next rows.length (⟨rows⟩ : alloc.collections.btree.map.Iter K V) =
      .ok (rows, ⟨[]⟩) := by
  rw [consume_shared]
  simp

theorem exhausted_shared {K V : Type} (count : Nat) :
    consume alloc.collections.btree.map.Iter.Insts.CoreIterTraitsIteratorIteratorPairSharedAKSharedAV.next count (⟨[]⟩ : alloc.collections.btree.map.Iter K V) =
      .ok ([], ⟨[]⟩) := by
  rw [consume_shared]
  simp

end Correspondence036.NativeCollectionIteration
