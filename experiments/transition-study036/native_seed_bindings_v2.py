"""Exact actual514 external blocks; conditional model meanings, no admission."""

from native_borrow_bindings_v2 import PRIMITIVES as BORROW_PRIMITIVES
from native_row_bindings_v2 import (
    MODEL as ROW_MODEL,
    ROW_DICTIONARY_PRIMITIVES,
    ROW_PRIMITIVES,
    _bind_named_primitives,
)

MODEL = "Correspondence036.NativeTypedSeedOperations."
SEED_PRIMITIVES = {
    name: {**spec, "implementation": spec["implementation"].replace(ROW_MODEL, MODEL)}
    for name, spec in {**ROW_PRIMITIVES, **ROW_DICTIONARY_PRIMITIVES}.items()
    if name
    not in {
        "serde_json.value.Value.Insts.CoreCloneClone.clone",
        "serde_json.map.MapStringValue.impl.new",
        "serde_json.map.MapStringValue.impl.insert",
    }
}
SEED_PRIMITIVES.update(
    {
        name: dict(
            rust=rust,
            signature=": String → Result Str",
            implementation="Correspondence036.NativeStringBorrow.borrowResult",
        )
        for name, rust in BORROW_PRIMITIVES.items()
    }
)
SEED_PRIMITIVES.update(
    {
        "alloc.collections.btree.map.BTreeMap.impl.insert": dict(
            rust="alloc::collections::btree::map::{alloc::collections::btree::map::BTreeMap<@K, @V, @A>}::insert",
            signature="{K : Type _} {V : Type _} {A : Type _} (coreallocAllocatorCloneInst : core.alloc.AllocatorClone A) (corecmpOrdInst : core.cmp.Ord K) : alloc.collections.btree.map.BTreeMap K V A → K → V → Result ((Option V) × (alloc.collections.btree.map.BTreeMap K V A))",
            implementation=MODEL + "insert coreallocAllocatorCloneInst corecmpOrdInst",
        ),
        "alloc.collections.btree.set.BTreeSetTGlobal.impl.new": dict(
            rust="alloc::collections::btree::set::{alloc::collections::btree::set::BTreeSet<@T, alloc::alloc::Global>}::new",
            signature="(T : Type _) : Result (alloc.collections.btree.set.BTreeSet T alloc.alloc.Global)",
            implementation=MODEL + "newSet T",
        ),
        "alloc.string.String.Insts.CoreCmpPartialEqString.eq": dict(
            rust="alloc::string::{core::cmp::PartialEq<alloc::string::String, alloc::string::String>}::eq",
            signature=": String → String → Result Bool",
            implementation=MODEL + "eqString",
        ),
        "alloc.string.String.Insts.CoreCmpPartialOrdString.partial_cmp": dict(
            rust="alloc::string::{core::cmp::PartialOrd<alloc::string::String, alloc::string::String>}::partial_cmp",
            signature=": String → String → Result (Option Ordering)",
            implementation=MODEL + "partialCmpString",
        ),
        "alloc.string.String.Insts.CoreCmpOrd.cmp": dict(
            rust="alloc::string::{core::cmp::Ord<alloc::string::String>}::cmp",
            signature=": String → String → Result Ordering",
            implementation=MODEL + "cmpString",
        ),
        "alloc.string.String.Insts.CoreCloneClone.clone": dict(
            rust="alloc::string::{core::clone::Clone<alloc::string::String>}::clone",
            signature=": String → Result String",
            implementation=MODEL + "cloneString",
        ),
    }
)


def bind_seed_primitives(external, bindings):
    return _bind_named_primitives(external, bindings, SEED_PRIMITIVES)
