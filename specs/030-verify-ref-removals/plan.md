# Implementation Plan: Sound Verification of Ref-Target Removal

**Logical branch:** `030-verify-ref-removals` | **Date:** 2026-10-26
| **Specification:** [spec.md](spec.md)

**Checkout:** `/home/kalle/repos/behavior-ir-core-030`, detached at
`aff31ddda163e343be616cb378388e464b90933b`. Supply the logical feature context
explicitly to Spec Kit. Preserve existing uncommitted specification work.
Baseline: immutable Core 0.15.0 / verifier 0.10.0.

## Summary

Replace the conservative Ref-target-removal refusal with sound complete-world reasoning
for all three mandatory guarded patterns. Partition references into unchanged unbound
sources and actual surviving bound/created sources. Connect authored incoming-count
guards to the first partition through typed summary correspondence; derive the second
from simultaneous effects. Prove a sufficient complete-child reference-validity lemma
from the actual earlier execution prefix. Only a discharged lemma permits omitting
unbound reference failure contributions from later proof paths.

Emit actual complete-world reference obligations: proving only the old, potentially
unreachable final integrity check fails acceptance. Preserve execution, integrity,
runtime records and the public API. Unsupported or uncertain correspondence remains
inconclusive. This pass produces design, not implemented proofs or test results.

## Technical Context

**Language/version:** Repository-pinned Rust 1.98.1, edition 2024.

**Primary dependencies:** Existing locked Core/Verifier/facade crates, pinned Z3
(baseline 4.16.0), SMT process and evidence libraries. No new dependency, proof assistant,
solver or general relational framework.

**Storage:** Existing diagnostic cache and authenticated artifacts. Reference summaries
are private verification data, never Store state or replay dependencies.

**Testing:** Test-first Rust, public facade/CLI, independent Core execution, small-state
enumeration, actual premise mutations, genuine signed historical evidence and existing
`scripts/gates.sh` / release checks.

**Target platform / project:** Verification library and CLI inside the existing workspace;
preserve supported platforms and record actual measurement environment.

**Performance goals:** Mandatory positives must prove under the existing default profile:
rlimit 20,000,000 and 60,000ms wall guard at its existing solver-call scope. Record per-call
resources and complete invocation totals separately. Any budget revision needs explicit
justification before final evaluation. No new total-time or throughput claim is invented.

**Constraints:** Arbitrary finite populations; exact types, captures, effects and failure
prefixes. Witness bounds have no proof authority. Preserve runtime hashes/records and
immutable fixtures. Select verifier 0.11.0; delivery requires a 0.x minor engine release
under existing policy, selected separately. Preserve explicit 0.10 archive decoding and
exact-current fresh eligibility.

**Scale/scope:** Minimal guarded removal, joint referrer/target removal and guarded
retargeting before old-target removal. Principal mixed positives use filtered incoming
counts and allow arbitrary unrelated entities. Account for required/optional edge presence;
unrecognized optional-query forms retain honest fallback. No general joins, arbitrary
nonlocal row-rule support or universal first-failure encoding. Keep unrelated scope limits.

## Constitution Check

Pre-research and post-design review against constitution 1.1.0:

| Principle / constraint | Design obligation | Result |
|---|---|---|
| I–II | Deterministic admitted typed inventory; no AI runtime | PASS |
| III | Observe nonempty baseline/mutation failures before fixes | PASS; execution pending |
| IV | Pinned solver/profile; unchanged runtime; genuine 0.10 replay | PASS |
| V | Exact obligation/context, truthful outcomes | PASS |
| VI | Existing machinery plus one private reference module | PASS |
| VII: sound abstraction | Arbitrary-state partition and reviewed correspondence | PASS subject to G1 |
| VII: assumptions | No target/later-check success assumed; witness-only slots | PASS |
| VII: identities | New verifier; complete schema dependencies; independent manifests | PASS |
| Technology | Existing Rust/lock; typed errors; no unsafe; fmt/Clippy | PASS |
| Workflow | Planning only now; existing gates before completion | PASS |

No exception. Unestablished correspondence or missing mandatory proofs blocks acceptance;
it does not authorize weaker scope or vacuous assurance.

## Project Structure

### Documentation

```text
specs/030-verify-ref-removals/
├── spec.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
└── contracts/
    ├── reference-preservation.md
    ├── evidence-compatibility.md
    └── validation.md
```

Generate `tasks.md` separately. Later evidence includes baseline, correspondence review,
actual controls and final resources/results.

### Source touchpoints

```text
crates/behavior-verify/src/
├── encode.rs                    # action paths, actual world, removal scope gate
├── encode/ref_world.rs          # proposed private inventory/summary bridge
├── encode/relational.rs         # unrestricted summaries and actual effect deltas
├── encode/count_congruence.rs   # typed total-parent membership correspondence
├── checks.rs                    # actual reference sites/prefix/dependencies
├── confirm.rs                  # complete concrete witnesses and confirmation
├── hashing.rs, cache.rs, lib.rs # contextual identities and verifier 0.11.0
└── governance/
    ├── semantic_proof.rs        # independent trusted site inventory
    └── trusted.rs              # fresh eligibility and archive decoding
crates/behavior-verify/tests/    # new ref_removals.rs plus existing regression tests
crates/behavior-cli/tests/      # cli_verify / cli_engine_info
crates/behavior-store/tests/    # proof_version_history and reference/replay controls
consumer/tests/                 # new public ref_removals.rs; canonicalization
tests/fixtures/                 # neutral cases and separately named 0.11 expectations
docs/verification.md, docs/versioning.md
```

Core runtime and historical fixtures remain semantic authorities, unchanged in production.
Extend tests without depending on ecosystem source. A reproduced runtime defect requires
a separate scope decision.

## Phase 0 — Research

[research.md](research.md) resolves the runtime schedule, finite-state partition, guarded
mixed positives, existing results, failure classification and version/cache hazards.
Three read-only research agents examined encoding, runtime and evidence independently.
No unresolved user decision or new proof tool is required for task generation.

## Phase 1 — Design and implementation gates

### G0 — Preserve baseline and observe failures

Port neutral reproductions with provenance: inconclusive reports, empty-check controls,
an actual proved control, runtime outcomes and replay. Capture genuine nonempty signed
0.10 action and migration histories before the verifier bump. Write mandatory proof
tests and observe nonempty baseline failure; retain independent semantic expectations.

### G1 — Correspondence and complete feasibility slice

Write the general argument against `incoming_prime`, `complete_child` and
`run_complete_child_rules`. Implement the minimal inventory, residual-summary bridge
and actual reference proof sites. Demonstrate all three required positives under BOTH
IR 0.7 and 0.8 through normal preservation, under default budgets, with allowed executions,
unrelated rows and relevant guard-removal/unbound-referrer controls in each version.
Keep the refusal for every context lacking its sound replacement. The sufficient lemma
is auxiliary evidence, not a runtime check or substitute for public obligations.

**Gate:** All three nonvacuous positives and missing-guard/unbound-referrer controls
pass under both IR versions, with no unexplained circularity/correspondence gap.
All six positive pattern/version combinations are mandatory. If infeasible, report the
precise blocker and revise the design; do not shrink FR-003/004.

### G2 — Complete effects, prefixes and adversarial correspondence

Cover all incoming fields/types, optional presence, creates/retargets/removes, aliases,
self/cycles and unsupported forms. Test partial expressions, earlier failures and canonical
unbound Ref failures. Small-state enumeration supplies no population bound. Actual
coverage/context/prefix/witness premise mutations must fail behaviorally; restore code.
Confirm counterexamples at the actual Core site, subject and reason.

### G3 — Evidence identity and public compatibility

Integrate 0.11.0, complete incoming-schema cache dependencies, independent manifest sites
and negative inventory tests. Preserve archive versions, explicitly 0.10; keep existing
Store policies. Create newly named fresh expectations/policies. Test stale proof/cache
rejection, signed action/migration replay, original-event recovery and forbidden fresh
reuse. Public facade/CLI and repeated verification preserve runtime bytes/identities.
After the final manifest/cache integration, deliberately mutate production code to omit
a required trusted reference site and to permit stale incoming-schema cache dependencies.
Independent controls must fail behaviorally; restore exact source and rerun normal tests.
Altered artifact inputs and earlier semantic mutations do not replace these late controls.

### G4 — Required checks, resources and documentation

Run existing gates including solver, consumer, replay and authenticated evidence.
Measure all mandatory positives with exact source, solver/profile, query count, resources
and invocation totals. Document supported guards, real sites, assumptions and limits;
close compatibility and requirement traceability. Existing release checks apply at
release; no tag or publication here.

## Requirement traceability

| Requirements | Coverage |
|---|---|
| FR-001–002 | Research R1; G0 baseline/runtime schedule |
| FR-003–004 | Reference contract; G1 three nonvacuous positives |
| FR-005–006 | Complete edge/effect partition; G2 optional/multi-field controls |
| FR-007–009 | Guarded lemma; conservativity/prefix argument; witness-only slots |
| FR-010–013 | Supported grammar; G2 negatives/order/confirmation |
| FR-014–015 | Actual sites; independent manifest/cache inventory; G3 history split |
| FR-016–017 | Unchanged runtime; G3/G4 compatibility and existing checks |
| FR-018–019 | G4 budgets, total costs and user documentation |
| SC-001–002; US1.1–3, US2.1–2 | G1 actual proof inventory and allowed executions |
| SC-003–005; US2.3, US3.1–3 | G2 arbitrary-world/mutation/order/uncertainty matrix |
| SC-006; US4.1–2 | G3 evidence/public integration; G4 regressions |
| SC-007 | G4 default-budget and complete-invocation disclosure |

## Complexity Tracking

No constitutional exception. A private reference summary connects guards to arbitrary
unbound rows and actual early child failures. Final integrity Booleans, finite bound-row
models or refusal deletion cannot establish that connection. New general proof machinery
or runtime mechanisms are not justified.
