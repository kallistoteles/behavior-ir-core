# Integrated implementation base

019 design was preserved in f7b7fcc before a non-fast-forward merge of completed
022, 3179b13163cd2bc9134176b78029dd39a5a90c8f. The resulting integration commit
is 9d3fcfeb8764773332bbf5a69881ab0b49644fd9, tree
60395c045d19363f6fea2ee3d530cf591cadfda8. Completed017 and018 are ancestors.
No merge conflicts or dependency overrides were introduced. This is the baseline
for new behavioral failures; the old draft revision is not used as a RED baseline.

## Private interface and ownership

Store lane owns store.rs and private store/initialization.rs. Its
ValidatedInitialization holds original Genesis, normalized V0, derived R0, H0,
and SeedFacts established by the existing complete seed validator. No serialized
or public certificate/mode is added. The structural inspector captures one head
following an immutable Some-genesis witness; it checks original versions and
membership/lifetimes, content hashes, seed accumulator and the current history/
schema endpoint. Generic open remains cold and cannot infer legacy field types
or Ref declarations from declaration hashes. Module-bearing retry additionally
compares exact normalized V0 and R0 against historical position zero.

Conformance/reference lane owns memory.rs, conformance.rs and fixture/protocol
tests. Durable lane owns consumer creation tests and durable_backend.rs. Test
lane owns Core creation contract/recovery/property and private cache tests.
Root alone owns task bookkeeping, integration, final gates and receipts.
No two lanes edit the same file concurrently.

On create error, perform one classification pass; only a verified complete
foreign lineage changes it to STORE_CREATION_CONFLICT. Preserve original error
for equivalent, absent, incomplete or unreadable secondary evidence. Candidate
cache promotion requires verified exact H0; advanced/migrated recovery is cold.
These boundaries follow the accepted contracts, not a new evaluator.
