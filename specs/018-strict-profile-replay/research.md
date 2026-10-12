# Research: Strict and Profile-Preserving Store Replay

**Date**: 2026-10-11

**Method**: Read-only source/contract research by profile, boundary and
evidence/delivery agents, consolidated by the primary agent. No builds or tests
were executed. Existing tests cited below are source evidence, not fresh passes.

**Revision**: `22459889e982068722616edead4132283d6cb7e4`; its main source base is
`5949cb111cd6c5af34b0fc9083e78810df450fce`. Local clarified018 documents supplement
that committed source. Relevant017 integration was inspected at
`02ba1b715919c132d7304dbc22231dcddc2ba714` without altering either branch.

## R018-01 — Compatibility domain

**Decision**: Use the nine supported rows and refusal families in
[support-matrix.md](contracts/support-matrix.md). Distinguish module Wire version,
ad-hoc read-document version, read-record profile and invocation envelope.

**Rationale**: Wire0.4–0.8 admission is enforced in `wire.rs:1016–1022`.
Declared reads require0.7; ad-hoc document0.7 is admitted against compatible
modules without changing module identity. `admit_read` has no minimum module
version gate (`read.rs:498–515`); `read_admission.rs:95–109` covers a0.6 base.
Historical v1 is explicitly supported even with Wire0.8; current v2 requires the
CommandIntents semantic profile. Invocation resolves declared capabilities.

**Alternatives considered**: Audit-only coverage would miss neighboring supported
profiles. A Cartesian product would misclassify unsupported or inapplicable
combinations. Metadata's wider0.1–0.8 advertisement contradicts admission; record
that separate020 issue without re-admitting old rounded arithmetic here.

**Authorities**: [read-wire](../010-first-class-reads/contracts/read-wire.md),
[read-api](../010-first-class-reads/contracts/read-api.md),
[read preservation](../../docs/soundness-remediation.md),
[versioning](../../docs/versioning.md), [invocation](../../docs/invocation.md).

## R018-02 — Raw decoding and replay preparation

**Decision**: Share the existing Core strict replay preparation and checked
profile selection, retaining evaluation/comparison order. Do not substitute a
blanket `ReadRecord::from_json` preflight.

**Rationale**: Core read replay at `read.rs:140–178` strictly decodes, selects the
recorded format and reconstructs evaluation. Store's `store.rs:1438` uses ordinary
map decoding, losing duplicate keys before comparison. The typed codec at
`read.rs:574–598,718…` additionally validates closed shapes and identity up front;
using it everywhere could change legacy first-difference reporting. Existing
replay recomputation already checks semantic contents and identities by comparison.

**Alternatives considered**: Ordinary JSON then canonicalization cannot recover
discarded keys. Separate duplicated decoders preserve divergence risk. Eager
current-profile validation of every historical record changes the wrong contract.

## R018-03 — Historical Store read execution

**Decision**: Factor a private Store read execution mode and a narrowly scoped
cross-crate Core hook, with a checked historical-v1/current-v2 profile. Fresh
public calls always retain current emission selection.

**Rationale**: Store `replay_read` calls fresh `self.read` at `store.rs:1466–1474`.
The existing Core `evaluate_read_with_version` is crate-private and already
provides archived read execution (`read.rs:64–73`). Make only the necessary
internal integration available across crates, not through `behavior-engine`.
Historical bindings, schema and facts still come from Store's recorded position.

**Alternatives considered**: Strict preflight followed by fresh wrappers still
substitutes v2. Returning standalone agreement while trusting archived facts
loses Store's stronger binding/integrity guarantee. A generic replay engine or
Backend profile API adds unnecessary public scope.

## R018-04 — Invocation sharing and017 integration

**Decision**: Preserve strict envelope preflight and existing Store resolution;
pass the checked inner read profile through the resolved evaluator. Preserve
refusal branches, metadata resealing, complete envelope comparison and017 action
replay. Use an explicit017 integration base for eventual implementation/delivery.

**Rationale**: Core invocation selects the archived read format at
`invocation.rs:1366–1382`; Store calls fresh `self.invoke` at `store.rs:1515`.
017 leaves both read defects open but adds an archived decision branch at its
`store.rs:1533…` and an archived decision argument to `invoke_resolved_version`.
Overwriting these methods with018's older copies would undo017.

**Alternatives considered**: A wholesale unified replay rewrite risks unrelated
record families. Independent implementation on old main is possible, but its
tests cannot substitute for final017 integration evidence. Stacking or updating
main is a later delivery step, not a planning-time checkout mutation.

**017 evidence**: [frozen profiles and separate RC-002 scope](https://github.com/kallistoteles/behavior-ir-core/blob/02ba1b715919c132d7304dbc22231dcddc2ba714/specs/017-resulting-state-validity/contracts/profiles.md).

## R018-05 — Result and diagnostic contract

**Decision**: Keep `matches: bool` and `diff: Option<String>`; invalid or ambiguous
evidence is a deterministic non-match. Preserve existing operational errors.
Use structured internal reasons only where compatible with the string surface.

**Rationale**: User-confirmed D018-01 A. `record.rs:166–187` defines the actual
Rust and JSON fields. Strict decoder errors already identify duplicate decoded
keys (`canonical.rs:75–80`) and can be rendered without a new API. Preserve
existing contractual paths and mismatch information; do not promise an exact
nested JSON path absent from the decoder. Parser details are explanatory text,
not a new semantic refusal variant or mandatory machine-readable grammar.

**Alternatives considered**: Object-valued `diff` or REFUSED_DOCUMENT would create
public migration scope. Fabricated failures for skipped backend calls confuse
semantics with execution traces. Blanket conversion of evaluator `FactError`s
into Store backend errors could also change existing behavior.

## R018-06 — Historical limits and raw refusal evidence

**Decision**: Preserve v1 provenance, capture gaps and historical query refusals;
keep v2 complete snapshot/error evidence and detached diagnostics. Distinguish
record-document strictness from the historical runtime's request decoder.

**Rationale**: Core raw read replay strictly decodes both formats. Invocation
`parse` likewise strictly decodes/canonicalizes (`invocation.rs:283–289`). Legacy
fresh/request evaluation is separately frozen (`read.rs:29–36`). The v2
`refused_request` is a string containing refused transport, not an embedded JSON
object to normalize or repair. Duplicate keys inside that string can be the
legitimate recorded refusal cause. Typed Store calls cannot originate every raw
transport refusal; document this boundary limit rather than promising universal
standalone/Store agreement.

**Alternatives considered**: Filling missing v1 facts, stripping all diagnostics
or upgrading every decoder changes history. Treating every standalone match as
a Store match ignores Store coordinate and origin limits.

## R018-07 — Test-first evidence and tooling

**Decision**: New reviewed, collected and executed regressions must demonstrate
semantic RED on the actual implementation base. Add matrix coverage checks,
existing property/metamorphic tools, a facade-only consumer and repeated outputs
through the existing determinism gate. Preserve old golden/digest entries.

**Rationale**: Immutable016 contains two historical Store failures and one
duplicate acceptance failure with valid controls. These establish the defects,
not018 test-first compliance. `scripts/gates.sh` collects workspace integration
tests; `scripts/check-consumer.sh` tests the separate facade consumer. Existing
determinism checks cover read/invocation goldens but need explicit018 Store output
coverage. Any script extension also needs its own meaningful RED-before-code test.

**Alternatives considered**: Zero collected tests, compilation failures, skipped
rows and refreshed goldens are not correctness evidence. No heavy fuzzing/proof
dependency is justified by these bounded defects.

## R018-08 — Versioning and closure

**Decision**:018 alone is patch-class under existing0.x policy; no format/hash/API
or verifier bump. Combined017 delivery retains017's minor classification. No
release number, tag, publication or ecosystem pin update during planning.

**Rationale**: The change restores previously contracted outcomes and refuses
already-invalid evidence. [Versioning](../../docs/versioning.md) permits fixes
that change no identity, format or verification outcome as patches.017 separately
changes decision/verifier profiles. Close only RC-002 and the associated targeted
proof obligations; keep016 immutable and historical premises explicit.

**Alternatives considered**: New read-record formats or rewritten archives are
unnecessary. Green gates cannot justify a whole-engine SOUND verdict.

All planning unknowns are resolved. Remaining work is implementation and evidence
generation, not an unresolved semantic decision.
