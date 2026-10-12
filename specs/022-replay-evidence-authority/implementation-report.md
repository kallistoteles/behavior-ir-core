# Core 022 implementation report

Core now interprets the original replay attempt once through its strict recorded
profile authority. Store adds exact historical anchoring and truth of the claims
actually established on that path. This repairs both022 findings without making
rejected request data authoritative state or granting replay commit authority.

## Implementation and correctness boundary

[Checked read preparation/reproduction](../../crates/behavior-core/src/read.rs)
retains exact refused text and exact admitted module binding. A transport-refusal
proof is private and per-call, and exists only after full reproduction/comparison
and actual transport refusal. Ordinary reads still use actual historical values,
facts and Store snapshot validation.

[Invocation replay authority](../../crates/behavior-core/src/invocation/replay.rs)
preserves intent, host invocation and documents origin. Full original Core
comparison precedes progress/claim extraction. Atomic Snapshot rejection yields
no semantic Snapshot; earlier accepted values/facts remain historical claims,
and sparse missing values stay unavailable. Typed claim comparison reuses the
existing query/capture registry and canonical typed codecs. Core also owns full
envelope/nested comparison, metadata restoration and sealing.

[Store integration](../../crates/behavior-store/src/store.rs) and
[bounded canonical loaders](../../crates/behavior-store/src/store/replay_evidence.rs)
establish the historical coordinate/schema and canonical surviving values,
references and query universes. Ordinary resolution routes retain full parent
prevalidation even when their reported stage is DECODE. Archived action
rederivation retains historical017 meaning. Actual performed direct Backend
errors and evaluator FactError stay separate; first-difference and schema/error
precedence remain unchanged. Fresh-only bundle construction remains enforced.

The governing rule is phase-sensitive replay: rejected data proves what was
attempted, not what was historically true. Operations may be omitted only when
their semantic/trust obligations do not exist on the reproduced path or are
otherwise already established. Replay cannot produce canonical writes, dispatch,
fresh bundles or uncommitted validation certificates.

## Compatibility and protected surfaces

The [pre-change assessment](compatibility-assessment.md) discloses the two live
Store non-match-to-match corrections. Original records, historical profiles and
capture limits remain intact.022 alone is patch-class under the corrective replay
precedent; delivery including017 retains its minor classification. No release
number, merge, tag, publication or ecosystem pin is selected here.

[Source custody](evidence/source-custody.json) confirms unchanged supported
facade/Backend, Cargo/toolchain metadata, schema/hash/record/serialization
implementation and original016/017/018/019–021 artifacts and verifier source.
New integration hooks are internal doc-hidden Core machinery, absent from the
supported facade. No Wire, persisted record format, hash/schema rule, Backend
method, verifier version or fresh semantic capability is added.

Original40 record/setup/attempt files remain byte-for-byte unchanged. The original
README and41-member checksum view are separately retained; current100-file
custody includes the updated explanation and59 additive action capture files.
Fifteen new profile/outcome records are genuine old/current producer output,
never current records retagged as historical. A narrow live018 sandbox stub keeps
its original isolated hook tests runnable without changing018 assertions/labels.

## Retained evidence and assessment

Separate genuine baseline semantic RED receipts exist for R022-01,02,03,04 and
the supplied-Snapshot correction before production edits. US1/US2 additional
contract RED barriers, exact GREENs and original identities are retained in the
[execution ledger](evidence/execution-ledger.md). Support/admission failures,
ENOSPC, interrupted evidence and test-source recovery remain honestly classified;
they are never claimed as semantic RED or success. Scope-neutral history/index
controls already passing are preservation evidence.

Full targeted validation passes129 Core,157 Store,4 private authority and66 facade
consumer tests, none ignored, plus29 protocol subprocess controls. The feature
subset contains125 collected tests. The actual38-cell runner produces identical
bytes across two executions. Four runnable protocol RED lanes cover runner,
checker, exact-byte custody and parent-hook behavior before their corresponding
implementation. Protocol mocks are not semantic replay proof or final gates.
The limited early runner scheduling against the confirmed stable19-record slice
is disclosed, rather than backdating full inventory completion.

[Exact coverage](evidence/matrix-coverage.json) accounts for all786 reviewed
dispositions:224 feature,468 inherited 018,62 unsupported/admission,14 atomic
Snapshot positives and18 protocol cases, including three expected baselineREDs.
Four Store-read N/A cases have explicit code-based reasons. No missing,
unexpected, duplicate or ignored required ID is counted as completed.

[Read closure](evidence/us1-read-review.md),
[invocation closure](evidence/us2-invocation-review.md),
[historical closure](evidence/us3-history-review.md) and the independent
[targeted re-audit](evidence/targeted-re-audit.md) separately assess each finding.
F-REPLAY-022-001 and F-REPLAY-022-002 are addressed in the inspected implementation.
A second [independent production-boundary review](evidence/independent-boundary-review.md) also finds no blocker and retains its exact source fingerprints. No unresolved in-scope implementation contradiction blocks freeze. Final
O022-14/O022-15 delivery closure still requires the external exact-revision receipt.

This is scoped022 remediation, not whole-kernel soundness or completion of queued
019–021. Immutable coherent Backend history and complete primary enumeration,
existing typed arithmetic/canonicalization/query/profile contracts, cryptographic
assumptions and historical capture limits remain documented premises. Endpoint
checks do not establish a new full-prefix adversarial backend audit. Safe parent
cache reconstruction is allowed; caches never define semantic authority.

## Constitution and immutable delivery

Existing Rust/crate boundaries, typed proof objects and pure Core comparison
preserve deterministic evaluation and explicit evidence. No new dependency,
unsafe code, generic IVM engine or public language/API extension is introduced.
Meaningful test-first evidence precedes every in-scope runtime correction and
new deterministic protocol behavior. Already-correct preservation controls and
resource/setup corrections are distinguished. Documentation links and whitespace
are checked; protected source surfaces and original fixture custody are verified.

Tracked implementation, fixtures, reports and T001–T049 bookkeeping are finalized
before commit/freeze. T050–T053 deliberately remain unchecked in that frozen
source; their actual completion belongs to the [external receipt](evidence/validation-location.md)
keyed by the full candidate SHA. All eleven canonical gates and the official
exact-revision facade consumer must pass there against the clean committed
checkout. This report cannot embed or attest its own containing-commit SHA,
a different later merge/rebase/squash commit or a future release.
