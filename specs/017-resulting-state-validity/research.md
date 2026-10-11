# Research: Complete Resulting-State Validity

**Date**: 2026-10-11 | **Scope**: RC-001 / F-INCREMENTAL-001 only

Research examined the production source at specification base
`5949cb111cd6c5af34b0fc9083e78810df450fce` and the immutable 016 evidence linked
from [spec.md](spec.md). Three parallel research tracks covered shared evaluation,
historical profiles, and test/verifier evidence. No research track changed code
or executed remediation tests. Decisions below are planning design, not claims of
implementation or user acceptance of a new format.

## R1 — Correct the common evaluator, not only commit

**Decision**: Extend `run_transition`'s existing resulting-state checks. Use one
complete simultaneous child and the ordinary expression evaluator in `SPrime`.

**Evidence**: [eval.rs](../../crates/behavior-core/src/eval.rs), `run_transition`
currently builds outgoing checks from surviving state bindings and creations,
then runs postconditions, grouped invariants and grouped constraints.
[invocation.rs](../../crates/behavior-core/src/invocation.rs),
`invoke_resolved_version`, delegates actions through `evaluate_with_value`.
[store.rs](../../crates/behavior-store/src/store.rs), `evaluate` and `rederive`,
delegate to `evaluate_with`.

**Rationale**: A Store-only rejection leaves plain evaluation and invocation able
to claim a valid ordinary transition. Full parent checking does not establish
unchanged-row child obligations.

**Alternatives**: Reject only at commit; append a second observable validation
phase; widen 015's locality guard. All fail the accepted boundary or root cause.

## R2 — Capture complete state using existing facts

**Decision**: Reuse `facts.universe`, including every declared type and empty
universes. Extend the existing command-profile complete-parent capture to the
new fresh action evidence profile for all supported Wire versions. Derive the
child from that parent and the simultaneous delta. No new Backend or
EvaluationFacts method, public certificate, or snapshot document is needed.

**Evidence**: [eval.rs](../../crates/behavior-core/src/eval.rs),
`provider_snapshot`, `validate_complete_snapshot`, `snapshot_universe_json`, and
`evaluate_decoded_request`; [facts.rs](../../crates/behavior-core/src/facts.rs).
Provider capture already uses an unfiltered Select per entity type, sorts/checks
identities and obtains canonical values with the existing entity/field fallback.
Wire 0.8 decisions already archive complete parent universes. Capture Selects are
not ordinary observed query facts; replay need not resolve new synthetic query
names. Existing facts codecs support universe serialization.

**Rationale**: A partial set of bindings/facts cannot justify complete validity.
Current plain callers must supply complete facts; missing types, even empty ones,
are explicit snapshot refusals. Required failed queries/fields cannot be replaced
with empty universes. Store supplies captured canonical state through its existing
snapshot-backed facts adapter.

**Failure contract**: Keep actual existing routes explicit. Current command
snapshot capture maps failure to `INVALID_INPUT / INVALID_STATE_SNAPSHOT`;
required later fact failure follows its established evaluator error route;
backend failure before evaluation retains its Store error route. An operational
source must not be reported as a proven false child predicate. Optional
`entity()` failure may use the existing per-field fallback. This plan does not
redesign creation or backend failure algebra (019).

**Alternatives**: Infer completeness from bound rows; record synthetic queries;
add another validation snapshot field; add bulk backend access. The first is
unsound and the others add unnecessary representation or contract work.

## R3 — Define a semantic comparator, including synthesized obligations

**Decision**: Use UTF-8 byte lexicographic order of admitted nominal entity type
names and decoded identity strings, matching existing name/identity conventions.
Identity ordering uses the decoded string bytes, not quoted/escaped JSON bytes.
For each entity, invariants precede constraints. Within a category use a semantic
sum key: declared module binding first, synthesized reference obligation second.
Declared keys are `(kind, semantic binding name, existing item hash)`; synthesized
keys are `(entity declaration identity, reference field name, existing constraint
hash)`. The variant ordering is explicitly part of the corrected evaluation
profile's scheduling rule, not a new hash algorithm or public identity.

**Evidence**: [001 FR-006b](../001-verifiable-behavior-ir/spec.md) and
[R5](../001-verifiable-behavior-ir/research.md);
[admit/hash.rs](../../crates/behavior-core/src/admit/hash.rs), `module` and
`module_v2`, sort module entries by kind/name. Rule body hashes exclude symbolic
names, but module bindings include them. Synthesized Ref constraints in
[admit/typecheck.rs](../../crates/behavior-core/src/admit/typecheck.rs) are
excluded from the module name table and attached through semantic reference
fields. Their formatted `ref(E.field)` diagnostic is not the comparator key.

**Rationale**: The user's metadata-neutral identity requirement permits semantic
module names but not diagnostic strings. Identical rule bodies under two bindings
are still distinguishable declarations. There is no existing universal semantic
comparator for declared and synthesized obligations; this plan defines it without
inventing new identities. First false/error wins; no global error-versus-DENY rank.

**Alternatives**: Backend/map iteration; touched-row-first ordering; display names;
rule-body hashes alone. These either admit incidental ordering or conflate bindings.

## R4 — Use a new decision evidence profile; preserve archived computation

**Decision**: Planning selects D-017-003 option B: decision record `0.8` with
`validation_profile: "behavior.complete_resulting_state.v1"` for every fresh
ordinary action. Keep the existing module `SemanticProfile` and command-only
`semantic_profile: "0.8"` meaning unchanged. Replay selects an internal archived
computation from a validated record version/profile, never from engine release,
optional git revision, caller preference or BehaviorHash alone.

**Evidence**: [record.rs](../../crates/behavior-core/src/record.rs),
`DecisionRecord::with_profile` and `replay`, currently emit record 0.7 for command
modules and replay using the current evaluator. Module profiles in
[semantic/types.rs](../../crates/behavior-core/src/semantic/types.rs) distinguish
Legacy from CommandIntents, not corrected from historical computation.
[invocation.rs](../../crates/behavior-core/src/invocation.rs) has historical read
format selection without equivalent decision-profile selection. Store `rederive`
serves both history replay and live commit.

**Rationale**: Old and corrected decisions can share behavior/schema/language
identity but select different failures. Existing labels do not disambiguate them.
Historical matching reproduces a computation; it does not establish complete
validity or authorize a new commitment. [profile contract](contracts/profiles.md)
provides the exact matrix.

**Alternatives**: Change meaning under record 0.4–0.7; use Wire version or git
revision; leave old Wire modules as a fresh bypass. These violate preservation,
unambiguous dispatch, or complete current validity. An existing marker (option A)
would be simpler but source inspection finds none.

## R5 — Version only affected evidence and consumers

**Decision**: Add a closed record 0.8 codec/schema and version dispatch. Keep Wire
0.1–0.8, admission, semantic item/module/schema hashes, StateId, read records,
invocation v1, Store bundles v1/v2 and their domains unchanged. The existing
invocation and bundle formats already embed a record object; their identities
naturally change when that object changes. Preserve all historical bytes.

**Evidence**: [record.rs](../../crates/behavior-core/src/record.rs),
`DecisionRecord::from_json`; [invocation schema](../../schema/invocation-record-0.1.schema.json);
[documents.rs](../../crates/behavior-store/src/documents.rs), `CommitBundle`;
[trusted.rs](../../crates/behavior-verify/src/governance/trusted.rs),
`GovernanceCandidate::decode`; [commands.rs](../../crates/behavior-store/src/commands.rs).
Governance/command readers currently recognize record 0.7 or command fields;
version-first decoding must also cover non-command record 0.8.

**Consequences**: Decision/evidence-derived invocation, transition, candidate,
history and occurrence identities may differ in new computations. Same live state
still has the same StateId. Old exact-candidate authorization does not authorize a
new candidate. Reader support expands explicitly; no new facade symbol or host
backend method is required. Older partial plain evaluation requests require
complete state evidence for fresh execution. The release class is minor under
[versioning.md](../../docs/versioning.md); no exact Core Release, tag or publication
is selected. Metadata work unrelated to new supported formats belongs to 020.

**Failure evidence**: Evaluated records archive the complete canonical parent;
pre-evaluation refusals retain the failed inputs/capture evidence needed to
reproduce the refusal, following the read-v2 precedent. A transport text that
cannot be reconstructed from ordinary fields uses a conditional `refused_request`
field in the new codec. It is not synthetic reached body evidence. Actual
infrastructure failures need not become standalone-replayable semantic decisions.

## R6 — Separate live commitment from historical reproduction

**Decision**: Internal modes distinguish fresh rederivation, archived replay and
exact already-committed recovery. Only corrected fresh candidates may produce new
ordinary history. An old uncommitted bundle requires fresh evaluation and renewed
exact-candidate authorization. Exact recovery may return `already: true` without
writing or promoting historical validity.

**Evidence**: [store.rs](../../crates/behavior-store/src/store.rs), `commit`,
`rederive`, `replay_invocation`, and existing exact recovery handling.

**Rationale**: Making historical replay match must not reintroduce the missing
child obligation through live commit. Store-backed replay binds archived facts to
the exact historical schema/position and remains read-only. Already-invalid old
state remains immutable and refuses fresh ordinary work; repair/adoption is outside
017. Historical read replay defects remain the separate 018 remediation.

## R7 — Preserve cache bindings and disclose semantic work

**Decision**: Keep 014 parent reuse and 015 post-CAS carry-forward, add internal
validation-profile binding, and use the already captured snapshot adapter for
Store action evaluation/invocation/rederivation. First delivery computes the
canonical complete child schedule/evidence; do not skip child rule computation
unless identical required evidence and canonical first failure are established.

**Evidence**: [store.rs](../../crates/behavior-store/src/store.rs),
`SnapshotIdentity`, `ReadSnapshotFacts`, `validate_snapshot`;
[incremental/mod.rs](../../crates/behavior-store/src/store/incremental/mod.rs);
[snapshot_reuse.rs](../../crates/behavior-store/tests/snapshot_reuse.rs).

**Rationale**: Passing ordinary StoreFacts into complete capture would repeatedly
load all entities from the backend despite an exact cached snapshot. Passing its
captured values avoids that regression. Full child evaluation and archived
snapshot/evidence may still cost O(n) in memory/serialization and rule work. No
latency or constant-size-record claim is made. A future evidence-preserving skip
algorithm is an optimization, not a prerequisite for 017 correctness.

## R8 — Match verifier promises without broadening the language

**Decision**: Reconcile current symbolic failure prefixes and witness confirmation
with the new action profile. Version the current verification encoding to `0.9.0`
when that corrected encoding lands. Preserve previous 0.8.0/0.7.0 evidence as
archives, not current-subject proof. Unsupported complete-world claims remain
`INCONCLUSIVE`; do not assert that this runtime fix proves every property.

**Evidence**: [encode.rs](../../crates/behavior-verify/src/encode.rs),
`ActionEncoding::build`, currently groups bound/created invariants then constraints;
[confirm.rs](../../crates/behavior-verify/src/confirm.rs) confirms with fresh
evaluation; [trusted.rs](../../crates/behavior-verify/src/governance/trusted.rs)
checks current verifier version. New ordering can change which expression is
reached, so old evaluation-error premises cannot automatically apply.

**Rationale**: The verifier may assume exactly what current runtime guarantees.
The audit did not demonstrate a legal false PROVEN execution; investigate and
regress the changed prefixes before making such a claim. Do not build a general
symbolic database engine to avoid conservative incompleteness.

Entity constraints/invariants currently prohibit queries/aggregates even through
derived calls. Test nonlocal `exists`/`referenced` and derived thereof at entity
scope, and admitted queries/aggregates at global scope. Do not relax admission to
make an incorrectly worded fixture legal.

## R9 — Evidence must include a separate oracle and new RED

**Decision**: Start017 implementation with collected failing regressions. Retain
016's direct unchanged-row membership predicate as an independent oracle, plus
independent complete child reconstruction and valid controls. Differential tests
must disclose shared expression/snapshot helpers.

**Evidence**: [incremental_validation.rs](../../crates/behavior-store/tests/incremental_validation.rs),
`nonlocal_creation_preserves_014_refusal_boundary`, currently characterizes invalid
commit followed by `STATE_INVALID`; the immutable audit source/run in spec.md
actually fails a direct final membership assertion. The private 015 `full_child`
rebuilds data independently but uses the production snapshot validator.

**Rationale**: Two validators agreeing on the same omission is not preservation
proof. Historical RED is defect evidence, not test-first compliance for future
changes. Use the owning pinned Nix gates and public `behavior-engine` consumer.
No runtime gate or future test result is claimed by this planning command.

## R10 — Preserve typed child witnesses and identity-aware observations

**Decision**: New0.8 child-validity trace steps carry a typed subject `{entity,id}`
and semantic obligation descriptor. Declared descriptors include module binding
name and existing hash; synthesized descriptors include semantic reference-field
and entity declaration identity with the existing constraint hash. Descriptor
kind/variant is explicit. Display labels never replace typed identity.

**Evidence**: [record.rs](../../crates/behavior-core/src/record.rs),
`with_profile` strips diagnostic names for 0.7 and its SemanticTrace does not carry
an invariant subject. [eval.rs](../../crates/behavior-core/src/eval.rs),
`run_rules`, `push_frame` and `pop_frame`, route observations through action-bound
parameter mappings. New unchanged/unbound subjects cannot silently lose reads
through an empty parameter mapping.

**Rationale**: Body hashes can identify the same rule on multiple entities or
bindings; they alone cannot identify the selected witness. Route unbound reads
by typed identity/field and phase, retaining parent facts versus derived child
values correctly. Store bundle observation conversion must account for them,
with exact whole-snapshot/history consistency, not invent loaded action params.
Do not concatenate entity and ID into an ambiguous semantic key.

**Alternatives**: Bare rule hash; generated `E#id` label; recovery by incidental
trace position. Typed descriptors provide explicit independently testable evidence.
Old record trace shapes remain frozen. New codec/schemas admit these fields only
under the new evidence version.

Existing conformance/golden runners must separate historical record 0.4–0.7 replay
checks from fresh0.8 expected decisions. Preserve old fixture bytes; an internal
archive harness is not a public historical fresh-evaluation mode.
