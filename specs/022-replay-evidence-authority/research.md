# Research: Replay Evidence Authority

**Date**: 2026-10-12. **Source revision**: `52a3ce71148f03625150b99aa67f3b39f18853cd`.
Runtime baseline is frozen 018 `391017e536ff64ddf94999ec126bc71799952264`.
Three read-only research tracks inspected Core, Store and validation/delivery.
This document records design decisions; no runtime test or remediation was executed
by the planning workflow. Repository contracts and source are the authorities.

## R1 — One bounded interpretation boundary

**Decision**: Extend `PreparedReadReplay` and factor invocation replay into private
checked preparation/reproduction helpers. Core selects original request evidence,
source kind, recorded profile and comparison. Store supplies historical evidence.

**Rationale**: [read preparation](../../crates/behavior-core/src/read.rs) already
retains original text but Store discards it. [invocation replay](../../crates/behavior-core/src/invocation.rs)
already distinguishes intent, invocation and documents archives; Store currently
interprets every decode archive through the intent route. Reuse these authorities
rather than maintain three independent fixes or a second Store interpreter.

**Alternatives considered**: Local Store `if` patches retain duplicated semantics.
A generic replay/dataflow framework adds scope without addressing another supported
construct. A new public record sum type would change bytes unnecessarily.

## R2 — Actual progress, not reported stage

**Decision**: Trace established snapshot/request/resolution components during the
existing reference execution. Return opaque internal reproduction evidence only
after complete record comparison; preparation alone establishes no failure phase.

**Rationale**: `invoke_document` decodes Snapshot before preparing the invocation.
Snapshot decoding is atomic, but resolution can report `INCOMPLETE_SNAPSHOT` or
inconsistent facts with a `DECODE` label after both documents decoded. The first
sorted problem's stage is not a computation trace. A recorded stage is untrusted.

**Alternatives considered**: Branching only on `outcome.stage` erases established
components. Adding public fields to `ReadExecution` or persisted progress would
change protected APIs/formats. Use private traced helpers alongside existing types.

## R3 — Sparse availability and explicit truth claims

**Decision**: Reproduce documents-origin refusals using the original supplied
snapshot, then reconcile the claims retained by successfully decoded components.
Do not fill missing values from Store before reproducing that attempt.

**Rationale**: A partial Snapshot may express positive existence without providing
a value. Missing values are unavailable evidence, not a claim of absence. An
explicit universe is exhaustive; an explicit negative existence or an actually
performed `unknown` resolution is a truth claim. These distinctions already exist
in [Snapshot/resolution](../../crates/behavior-core/src/invocation.rs).

**Alternatives considered**: Full equality for every supplied snapshot imposes
later-phase obligations on decode failures. Completing the snapshot from Store
changes the original computation. Ignoring accepted snapshot claims allows false
historical assertions. Claim-scoped reconciliation preserves all three distinctions.

## R4 — Historical capture limitations

**Decision**: Retain intent/invocation/documents source-kind semantics exactly.
Original intent/invocation decode archives do not acquire an invented snapshot.
Missing historical refusal evidence and unsupported combinations remain limited.

**Rationale**: Some source kinds archive only the rejected document, even when
the original caller decoded a snapshot earlier. Core's existing replay can establish
only the components available in the record. Preserve the documented
[018 compatibility domain](../018-strict-profile-replay/contracts/support-matrix.md).

**Alternatives considered**: Treating an archive as complete input would fabricate
evidence. Retagging v1 as v2 changes history. Granting replay support just because
a decoder accepts a shape confuses syntax with the contracted compatibility domain.

## R5 — Independent historical anchoring

**Decision**: Use Store's canonical data-version/history/schema helpers to establish
the exact coordinate independently of rejected request content. Keep applicable
checks even on decode-only paths; avoid retroactive whole-state validation.

**Rationale**: [Store](../../crates/behavior-store/src/store.rs) provides
`state_of_data_version`, `history_at`/`history_with_head` and `bind_schema`.
Matching standalone evidence does not establish history truth. Read Behavior need
not equal the last committed action Behavior when the schema contract permits it.
Genesis anchoring can inspect seed content; this is not proof that a rejected
request snapshot successfully decoded. Later endpoint/header checks rely on the
existing immutable-history/backend-coherence premise, not a full-prefix audit.

**Alternatives considered**: Trust the record coordinate, skip schema on refusal,
or demand latest-head Behavior equality: all violate existing binding rules. Calling
`validate_range` or full `validated_versions` on every decode refusal creates
unreached-phase obligations and avoidable work.

## R6 — Core claim definitions, Store answer loading

**Decision**: Core produces bounded typed demands for accepted values, explicit
facts, complete memberships and actual resolution claims. Store loads fallible
historical answers; Core compares canonical typed values and existing query semantics.

**Rationale**: Snapshot field/reference/query claims require exact semantics.
Existing query collection, capture environments and matching remain the authority;
legacy registries cannot be replaced by current definitions. Reuse canonical
surviving-version/content checks without their unrelated full-snapshot-validation
side effect. An explicit claim that cannot be checked must deterministically
non-match; it cannot become an assumed true fact.

**Alternatives considered**: A Store query evaluator duplicates language semantics.
Trusting recorded materializations or indexes grants them authority. A generic
backend semantic callback silently conflates backend failures and evaluation errors.

## R7 — Preserve check order and error channels

**Decision**: Keep read Store anchoring/prevalidation before reproduction as today;
keep invocation standalone whole-record reproduction before Store anchoring as
today. Do not eagerly decode inner profiles ahead of existing facts/resolution checks.
Keep direct loading failures operational and existing evaluator `FactError` paths unchanged.

**Rationale**: Error/first-diff precedence is observable. Store read currently validates
its canonical snapshot before transport decoding. That remains an independently
applicable Store precondition, not validation of rejected supplied state. Existing
action `SnapshotFacts.used` errors can become `UNKNOWN_FACT`; 022 does not globally
turn them into Store operational errors. Hypothetical errors in omitted calls are
not fabricated, but the obligations of performed calls remain.

**Alternatives considered**: Unconditionally replay reads standalone first, run an
eager closed-shape codec, or globally translate `FactError` changes unrelated
precedence/categories. Preserve existing branches and insert only the needed checks.

## R8 — Preserve action authority separation

**Decision**: Keep 017 archived-action rederivation and current evaluated-body routes.
Replay uses checked reproduction hooks and cannot call the fresh bundle builder.

**Rationale**: [017 decision semantics](../017-resulting-state-validity/contracts/decision.md)
and Store's archived/current branches distinguish original historical meaning from
fresh commit eligibility. The existing Fresh-only guard is defense in depth, not
permission for replay to construct a discarded bundle. Test actual zero construction
with a fresh positive control proving the probe works.

**Alternatives considered**: Route all replay through fresh invoke and discard its
bundle afterward: this violates FR-011 even without a commit. Retain only read
regressions: this misses the action/archive integration risk.

## R9 — Corrective compatibility and versioning

**Decision**: Write an explicit assessment before code changes. 022 alone is
patch-class under [current policy](../../docs/versioning.md), conditional on preserving
protected contracts; combined 017 delivery remains minor. Publish nothing in planning.

**Rationale**: The intentional Store non-match → match correction repairs the
agreed replay contract without new formats, identity rules or verifier outcomes.
Two live expectations require correction: Store's transport reconstruction-limit
test and its malformed-snapshot decode refusal bundle-probe test. Preserve frozen
018 fixtures and receipts; the latter's old expectation reflected retroactive
snapshot equality, which conflicts with the clarified phase-sensitive model.

The assessment must address the same-minor-line “identical results” promise in
the versioning contract: these corrections preserve the specified reference
interpretation but intentionally change observed buggy Store outcomes. Existing
018 remediation provides the patch precedent; it is not evidence that the
old outcomes remain identical. Disclose the exception and reassess if a protected
format/API/identity/verifier contract needs to change.

**Alternatives considered**: Let the old test override the agreed contract, silently
refresh historical fixtures, or select a release number now: none provides an honest
compatibility argument. Reassess if implementation discovers a protected contract change.

## R10 — Test-first, deterministic coverage and revision evidence

**Decision**: Add independently named RED regressions, additive 022 fixtures and
strict executed-case accounting. Extend the existing determinism gate with a
twice-run canonical JSONL example and test-first protocol negatives. Freeze tracked
work before final gates and attach results outside that immutable checkout.

**Rationale**: The exploratory reproducer was not retained. A passing test asserting
a known limit is not RED. Existing 018 fixtures remain useful preservation evidence
but its receipt attests only its SHA. Exact-revision consumer validation must use
the supported facade dependency and candidate-local fixtures/CLI at the same SHA.
Self-referential reports cannot embed their own containing commit's final hash.

**Alternatives considered**: Count zero/ignored tests as success, refresh expected
outputs from the fixed runtime, accept a default/path consumer as exact-revision
evidence, or amend reports after freezing: each weakens provenance.

## Resolved technical questions

All planning questions are resolved by the existing contracts and the accepted
clarification. Detailed Rust signatures may be refined while keeping opaque
construction and these responsibilities. No new technology selection, dependency,
Wire version, backend capability or unapproved semantic decision is required.
