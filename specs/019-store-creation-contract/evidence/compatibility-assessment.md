# Compatibility Assessment: Core019

Assessment source: `9d3fcfeb8764773332bbf5a69881ab0b49644fd9`, containing the completed017/018/022 integration.
This records the approved019 contract and versioning assessment. Executed scoped
evidence is linked in implementation-report.md and case-closure.md; final exact
revision evidence remains external. This grants no release publication.

## Public contract change

019 establishes one current Backend creation semantics: atomic public Absent →
Complete publication, private staging isolation, exact original-creation-bound
idempotent retry, deterministic established conflict and preservation of subsequent
history including migrations. Existing implementations that compile but fail these
obligations are nonconforming. Previous success/commit-only tests do not establish
the newly stated creation law.

Keep `Backend::create -> Result<(), BackendError>`, `Store::create -> R<Self>`,
`Store::open -> R<Self>` and the shared conformance factory. Equivalent creation
retry changes from already-created refusal to verified recovery; ordinary open
gains structural integrity checks and remains cold. `StoreError::Contract` carries
stable `STORE_CREATION_CONFLICT` and `STORE_INCOMPLETE` codes. Backend errors remain
operational and never imply rollback. Only independently established complete
foreign publication can supersede an original creation error with conflict.

## Preserved meaning and identity

No change to Behavior syntax, admitted Wire IR, BehaviorHash/SchemaHash, existing
genesis/StoreId/StateId domains, historical record formats, replay profiles, command
dispatch or verifier version. Legacy-v1 seed ordering and raw-versus-normalized
representation retain historical contracts; v2 preserves canonical typed-key order.
Generic module-free open does not certify full typed Ref or Behavior validity.
Module-bearing original-request retry establishes the stronger product.

## Versioning and consumer obligations

Under [current 0.x policy](../../../docs/versioning.md), this is a minor-class
public Backend-contract change: external implementers must adapt to new mandatory
semantics despite unchanged signatures. Numerical release/tag selection is later
delivery work. Combined release implications from 017 are retained; 019 itself
requires no new Wire/store-document/hash/verifier version.

Inventory first-party hosts and wrappers, extend shared creation conformance, run
real named durable-host fault windows under disclosed OS/storage assumptions and
publish an external Backend migration guide. The Core Rust facade consumer must
validate the exact delivered revision. Physical durability rests on a conforming
host, coherent immutable history, disclosed atomicity/sync guarantees and identity
premises; finite process tests prove neither arbitrary Backend honesty nor power
loss survival.

The ecosystem's published-Core pin and packaging remain unchanged. PyBackend,
AnyBackend and DictBackend are later migration consumers; local experiments or
Core tests do not prove release compatibility. No tracked path override, tag,
release, merge or ecosystem dependency update belongs to this implementation.

## Delivery evidence

Finalize source, tests, reports and bookkeeping before freezing a candidate. Run
canonical `nix develop -c scripts/gates.sh` and exact-revision
`scripts/check-consumer.sh --rev <candidate>` without changing frozen tracked
files. Bind repository/SHA, commands/statuses, toolchain/environment and logs
externally. Dependency receipts and later different merge/release SHAs require
their own assurance and are not silently promoted to 019 evidence.

## Implementation evidence

[Case closure](case-closure.md), [Backend assessment](backend-assessment.md) and
[targeted re-audit](targeted-re-audit.md) document executed supported-profile and
facade/host evidence, independent review and explicit premises. All protected
historical bytes/exports/lock metadata remain unchanged. The separately reproduced
v2 query-candidate defect is preserved as an open follow-up, not repaired by019.
Numerical release/tag/pin changes remain outside scope.
