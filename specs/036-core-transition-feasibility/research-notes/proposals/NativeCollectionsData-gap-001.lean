module
public import CollectionsData
@[expose] public section

/- Unadmitted representation candidate for the exact external type names.
This is positive storage data, with allocator parameter retained as a phantom.
No native layout, ordering, allocator, dictionary or API behavior is admitted.
Validity/order/length relations remain outside these data declarations. -/

@[rust_type "alloc::collections::btree::map::BTreeMap" (body := .opaque)]
structure alloc.collections.btree.map.BTreeMap (K V A : Type) where
  data : Correspondence036.CollectionsData.Map K V

@[rust_type "alloc::collections::btree::map::Iter" (body := .opaque)]
structure alloc.collections.btree.map.Iter (K V : Type) where
  remaining : List (K × V)

@[rust_type "alloc::collections::btree::map::IntoIter" (body := .opaque)]
structure alloc.collections.btree.map.IntoIter (K V A : Type) where
  remaining : List (K × V)

@[rust_type "alloc::collections::btree::map::Values" (body := .opaque)]
structure alloc.collections.btree.map.Values (K V : Type) where
  remaining : List (K × V)

@[rust_type "alloc::collections::btree::set::BTreeSet" (body := .opaque)]
structure alloc.collections.btree.set.BTreeSet (K A : Type) where
  data : List K

@[rust_type "alloc::collections::btree::map::entry::VacantEntry" (mutRegions := #[0]) (body := .opaque)]
structure alloc.collections.btree.map.entry.VacantEntry (K V A : Type) where
  front : Correspondence036.CollectionsData.Map K V
  key : K
  suffix : Correspondence036.CollectionsData.Map K V

@[rust_type "alloc::collections::btree::map::entry::OccupiedEntry" (mutRegions := #[0]) (body := .opaque)]
structure alloc.collections.btree.map.entry.OccupiedEntry (K V A : Type) where
  front : Correspondence036.CollectionsData.Map K V
  stored : K
  value : V
  suffix : Correspondence036.CollectionsData.Map K V

@[rust_type "serde_json::map::Map" (body := .opaque)]
structure serde_json.map.Map (K V : Type) where
  data : Correspondence036.CollectionsData.Map K V
