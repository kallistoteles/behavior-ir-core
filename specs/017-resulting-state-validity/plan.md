# Implementation Plan: Complete Resulting-State Validity

**Branch**: `017-resulting-state-validity` | **Date**: 2026-10-11 | **Spec**: [spec.md](spec.md)

**Input**: The user's planning request, accepted existing-checks correction and
canonical semantic failure order, and immutable audit RC-001 evidence.
**Status**: Phase 0 research and Phase 1 design complete; no tasks, remediation
code, tests, tags or releases created. Version changes below are proposed design.

## Summary

Establish complete ordinary resulting-state validity in the common action
evaluator used by plain evaluation, invocation and Store. Capture complete exact
parent state through existing facts, apply the simultaneous delta, and extend the
existing entity validity checks to every surviving/created child entity.
Postconditions retain priority. Traverse entities by canonical semantic identity;
within each entity check invariants then constraints, using semantic declaration
keys. The first reached false/erroring obligation determines result and evidence.

Introduce decision record 0.8 with an explicit validation evidence profile so
corrected fresh evaluation can coexist with immutable historical computation.
Keep Wire IR, admission, BehaviorHash, SchemaHash, StateId and backend methods
unchanged. Historical replay is not authorization for a new commit. Reconcile
verifier prefixes and version current encoding, preserving conservative
INCONCLUSIVE and archived prior evidence. Keep exact parent reuse and post-commit
carry-forward; neither cache nor historical ALLOW establishes current validity.

[Research](research.md), [data model](data-model.md),
[decision contract](contracts/decision.md), [profile matrix](contracts/profiles.md)
and [proof obligations](correctness.md) supply the design details.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, from the owning rust-toolchain.toml;
pinned Nix flake/lock environment.
**Primary Dependencies**: Existing serde/serde_json, exact value implementation,
thiserror, proptest and Z3 verifier integration. No dependency additions.
**Storage**: Existing Backend, canonical history/schema and atomic CAS contracts;
existing snapshot/facts and one process-local validation cache. No persisted
validation flag, backend method or alternate state authority.
**Testing**: New collected RED-first Core/Store/consumer regressions, independent
membership/model oracles, property/differential/order/replay tests, fault controls,
JSON Schema conformance and the owning canonical gates.
**Target Platform**: Existing Core library/CLI platforms; develop and validate in
Nix from this repository root. Release artifact construction is outside this phase.
**Project Type**: Deterministic semantic kernel library/CLI correctness remediation.
**Performance Goals**: No latency target. Preserve existing warm backend-access
checks by using captured snapshot facts; disclose complete in-memory child rule
and evidence costs. Avoid repeated backend full-universe reads without weakening
validity or record requirements.
**Constraints**: Exact committed/history/schema/profile bindings; canonical first
failure; unchanged semantic input/hash domains; immutable historical evidence;
no fresh legacy bypass; no automatic repair/adoption; no general IVM engine.
**Scale/Scope**: One S0 root cause across all supported fresh ordinary action
paths and Wire 0.1–0.8; decision evidence/version integration and targeted verifier
correspondence. Findings018–021 remain separate.

All technical unknowns are resolved in research.md and the contracts. The proposed
record/verifier version consequences are explicit; no release number is selected.

## Constitution Check

**Before Phase 0**: Complete validity and the chosen failure order are explicit
requirements; the task belongs to Core. Historical/profile selection and complete
state evidence require source research. This is planning, not premature code work.

| Principle / gate | Design and required evidence | Result |
| --- | --- | --- |
| I. Deterministic Core | Existing pure evaluator, canonical semantic keys; no runtime AI, external business I/O, clocks or randomness. | Pass at design |
| II. Typed boundaries | Existing admitted IR and typed values; closed new record codec and explicit version/profile dispatch. | Pass at design |
| III. Test-first | Write, collect and observe new regression assertions fail before production changes; preserve exact RED/GREEN provenance. Original016 RED does not waive this. | Required during implementation |
| IV. Reproducibility/replay | Same-profile first failure/evidence; archived computation selected explicitly; unchanged old bytes and domains. | Pass at design |
| V. Explicit state/audit | Complete parent, simultaneous candidate and exact committed child are distinct; validation cache promotion only after atomic success. | Pass at design |
| VI. Simplicity | Extend shared evaluator and existing snapshot machinery; no crate, dependency, public delta/certificate API or backend method. | Pass at design |
| Rust/tooling | No unsafe, speculative dependencies or private build overrides; typed errors and documented invariants. Final source must pass canonical gates and public consumer. | Required during implementation |

**After Phase 1**: The contracts bind current and historical computation explicitly,
retain integrity/history/authorization obligations, and document evidence and
version consequences. No constitution exception is needed. This assessment is
about design; source correctness and tooling success are not yet established.

## Project Structure

### Documentation (this feature)

```text
specs/017-resulting-state-validity/
├── spec.md
├── decisions.md
├── plan.md
├── research.md
├── data-model.md
├── correctness.md
├── quickstart.md
├── contracts/
│   ├── decision.md
│   └── profiles.md
├── checklists/requirements.md
└── tasks.md                    # later speckit-tasks output; not created here
```

### Source Code (planned changes, not made here)

```text
crates/behavior-core/src/
    eval.rs                     # common candidate/schedule/evidence integration
    record.rs                   # record 0.8 codec and archived/current dispatch
    invocation.rs               # nested action-profile replay; reads preserved
crates/behavior-core/tests/
    resulting_state_validity.rs # proposed collected root-cause/coverage tests
    resulting_state_order.rs    # proposed canonical first-failure tests
    resulting_state_profiles.rs# proposed fresh/archive/refusal fixtures
crates/behavior-store/src/
    store.rs                    # snapshot-backed actions; live/archive modes
    store/incremental/          # exact profile binding and post-CAS carry checks
    commands.rs                 # checked record version dispatch
crates/behavior-store/tests/
    resulting_state_validity.rs # proposed path/commit/fault tests
    incremental_validation.rs  # correct fresh bug characterization
crates/behavior-verify/src/
    encode.rs, confirm.rs, lib.rs
    governance/trusted.rs       # strict candidate and verifier archive routing
schema/decision-record-0.8.schema.json  # proposed new evidence schema
consumer/tests/resulting_state_validity.rs # proposed facade-only consumer test
```

**Structure Decision**: Use existing modules and small internal typed helpers for
candidate coverage, semantic obligation keys and execution purpose. Separate
historical selection from Module's hashed language profile. Reuse ordinary
expression evaluation rather than building another validator or query engine.
Update CLI/version/conformance/document consumers of affected formats alongside
this integration; do not centralize unrelated version metadata (020).

## Design and Verification Sequence

1. Write root-cause and valid-control regressions across plain evaluation,
   invocation and Store. Collect and record actual semantic RED before editing
   the shared outgoing checks. Preserve historical counterexample evidence.
2. Write first-failure/completeness/profile regressions before implementing their
   new behavior. Define semantic keys including synthesized references, malformed
   snapshots and failure categories. Capture old decision fixtures before change.
3. Add internal current/archive execution purpose and record 0.8 dispatch with
   complete-state evidence. Keep historical schedules and their shared snapshot
   dependencies frozen; caller-controlled data cannot request historical mode.
4. Extend existing resulting-state checks to the complete simultaneous child,
   using ordinary SPrime evaluation and canonical scheduling. Global obligations
   are checked or proven unaffected; existing unrelated lifecycle/command stages
   keep their relative placement. Do not treat syntactic locality as proof.
5. Route Store actions through exact captured snapshot facts; distinguish live
   commit from archived rederivation and exact committed-event recovery. Reject
   old uncommitted candidates and require fresh exact authorization. Bind caches
   to validation profile and publish child evidence only after atomic commit.
6. Update closed record readers, governance candidate decoding, command streaming,
   nested invocation replay, schemas and new conformance fixtures and typed child-subject/declaration witness evidence.
   Route unbound field observations without empty-frame losses. Keep all old
   fixture bytes and hash vectors; current examples deliberately select new
   evidence. Golden/conformance runners separate archived replay expectations from
   current0.8 evaluation; never use frozen old output as the expected fresh result.
   Pre-evaluation refusal evidence must reproduce reached refusals.
7. Reconcile verifier symbolic prefixes and witness confirmation with corrected
   scheduling. Current verifier 0.9.0 must not use older proof/cache assumptions;
   unsupported complete-world claims remain INCONCLUSIVE. Preserve archive
   decoding and explicit policy eligibility, without silently upgrading policies.
8. Run independent-oracle/property/order/fault/replay suites, required gates and
   public consumer validation on the actual candidate. Record exact provenance.
   Perform the targeted RC-001 obligation re-audit, retaining immutable016.

This is design sequencing for later tasks, not an executed implementation list.
Future parallel work is safe after the shared profile, candidate and comparator
contracts are fixed: Core scheduler; Store lifecycle/cache tests; verifier
correspondence; and codec/conformance/consumer evidence. Each track owns explicit
files; shared eval/record/Store mutations are integrated sequentially. Agents
must not concurrently edit the same shared entrypoints.

## Requirements and Evidence Traceability

| Requirements | Design authority | Acceptance evidence |
| --- | --- | --- |
| FR-001–004, FR-006 | Complete candidate/shared evaluator | Independent audit predicate; all entrypoints/lifecycle cases; valid controls |
| FR-005, FR-015–016 | Canonical existing-checks first failure | Same-entity/cross-entity false/error, postcondition, metadata/backend/cache permutations |
| FR-007–009 | Exact snapshot and committed evidence lifecycle | Cold/warm/reopen/profile mismatch; historical freshness; CAS/non-application/lost-ack controls |
| FR-010–011 | Explicit evidence profile and compatibility matrix | Frozen old records; new 0.8; nested/Store replay; no old bundle bypass |
| FR-012–014 | Independent oracle, verifier limits, error provenance | Reconstruction/model predicates; differential helper disclosure; INCONCLUSIVE; actual provider failures |
| SC-001–006 | Combined contracts and proof obligations | Zero known successful invalid children, mutation refusal controls, scoped re-audit dispositions |

## Complexity Tracking

No constitution violations or additional dependencies are proposed. New evidence
and verifier versions are justified by preservation and correspondence, not by
an optimization strategy. Full canonical snapshot serialization and child checks
can be linear in state size; no optimization requirement weakens those obligations.
