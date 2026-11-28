module
public import NativeStringOperations
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Generic candidate collection APIs, not native/source/allocator admission.
The caller's comparison is executed; its errors propagate. No typed-view,
Store, row projection or desired Core result is interpreted here. -/
namespace Correspondence036.NativeWholeTypedOperations
open CollectionsData

def insertRows {K V : Type} (order : core.cmp.Ord K) (key : K) (value : V) :
    Map K V → Result (Option V × Map K V)
  | .nil => ok (none, .cons key value .nil)
  | .cons stored previous tail => do
    let compared ← order.cmp key stored
    match compared with
    | .lt => ok (none, .cons key value (.cons stored previous tail))
    | .eq => ok (some previous, .cons stored value tail)
    | .gt =>
      let (old, updated) ← insertRows order key value tail
      ok (old, .cons stored previous updated)

end Correspondence036.NativeWholeTypedOperations

@[rust_fun "alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<@K, @V, @A>}::insert"]
def alloc.collections.btree.map.BTreeMap.impl.insert
    {K : Type _} {V : Type _} {A : Type _}
    (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) (corecmpOrdInst : core.cmp.Ord K) :
    alloc.collections.btree.map.BTreeMap K V A → K → V →
      Result ((Option V) × (alloc.collections.btree.map.BTreeMap K V A)) :=
  fun rows key value => do
    let (old, updated) ← Correspondence036.NativeWholeTypedOperations.insertRows corecmpOrdInst key value rows.data
    ok (old, ⟨updated⟩)

@[rust_fun "alloc::collections::btree::set::{alloc::collections::btree::set::BTreeSet<@T, alloc::alloc::Global>}::new"]
def alloc.collections.btree.set.BTreeSetTGlobal.impl.new (T : Type _) :
    Result (alloc.collections.btree.set.BTreeSet T alloc.alloc.Global) := ok ⟨[]⟩

/- Keep the entire generated Ord/Eq dictionary. This candidate marker does
not assert concrete native equality or eliminate an actual comparison. -/
@[rust_fun "alloc::string::{core::cmp::Eq<alloc::string::String>}::assert_fields_are_eq"]
def alloc.string.String.Insts.CoreCmpEq.assert_fields_are_eq : String → Result Unit :=
  fun _ => ok ()
