# Core 029 implementation evidence

Worktree: `/home/kalle/repos/behavior-ir-core-029`; branch
`029-incremental-global-validation`. Immutable reference: Core 0.15.0,
`6b93898a9375113f7a8946f23ab5535319b6f5d6`. Tested production source:
`919429b3f1bd7185a51c7c5fa9cb24c474229192`. Documentation/evidence commits do not
change that production subtree. No release was published.

## Readiness and evidence classes

G0–G4 pass. All 103 frozen cases, 927 retained rows, numerical budgets, regression
limits, primary improvements and growth/work criteria pass. Normal code gates and
performance acceptance are separate, conjunctive requirements. The reviewer-owned
requirements checklist passed 16/16; its markers were not edited.

- **Conditional mathematical argument:** [correctness.md](../correctness.md) and
  [construct-mapping.md](../construct-mapping.md), for arbitrary finite states under
  the stated premises. No Lean/SMT or machine-checked Rust claim.
- **Implementation correspondence:** complete record/observer/bundle/commit comparisons,
  independent expected outcomes and six actual production-premise mutation failures.
  [US2](us2.md), [mutations](premise-mutations.md).
- **Publication/recovery:** exact-state controls and a separate-process durable public
  consumer that persists a commit, loses its acknowledgement, recovers and replays
  without prepared state. [US3](us3.md).
- **Measured capacity:** frozen production-like release timings and separate work
  diagnostics. Timing/counters are never semantic evidence or cache authority.
- **Trusted components:** Core admission/evaluator/canonicalization, Rust classification,
  templates/deltas and Store correspondence, plus existing Backend completeness,
  immutable-history and atomic-CAS contracts. Tests do not remove these assumptions.

## Gate evidence

| Stage | Actual result and retained evidence |
|---|---|
| G0 | 103 cases × 3 production-like baseline runs; six work and four full-reference pilots; [baseline.jsonl](baseline.jsonl), [freeze](profile-freeze.sha256) |
| G1 | Nonempty red/green constructor, module, epoch, evaluation/reproduction controls; [feasibility](feasibility.md), `g1-*.txt` |
| G2 | Complete child/membership and independent 1000 ALLOW / 1001 DENY; [g2.md](g2.md), `g2-*.txt` |
| G3 | [gates.txt](gates.txt) ends `gates: OK`; exact [source/environment](gates-source.json), [US2](us2.md), [US3](us3.md) |
| G4 | [acceptance.json](acceptance.json): 103 passed, zero failed; [raw rows](scaling.jsonl), [manifest](campaign-manifest.json), [report](../evaluation-report.md) |

G3 has 236 Rust result groups: 1,791 passed, zero failed, 30 explicitly ignored.
The selected 029 measurements run separately; this does not claim every ignored
historical stress test was executed. Required formatting, Clippy, workspace tests/build,
determinism (106 immutable archives), boundary, public surface (139 checks), external
consumer, workflows, terminology and script checks pass. Core has 13 focused prepared
controls; Store has 41 focused incremental controls plus three explicitly ignored measurement entries.

Dev/test opt-level 1 retains debug assertions and overflow checks. Debug symbols and
incremental compilation are disabled for disk; three build jobs and serial outer tests
address this host and its existing 100ms mock-process fixture. Explicit concurrency
controls remain enabled. Frozen release build flags and budgets are unchanged.
Only this worktree's reconstructible build caches were cleaned; user work, other
worktrees and immutable saved baseline binaries were preserved.

## Results, attempts and provenance

At starting N=8192, eight real count-constrained creations plus final evaluation have
median cycle 26,870.894ms (release) versus 19,106.547ms (candidate), a 28.9% reduction.
The count-create growth slope is 2.347445ms per starting entity, below the frozen
3.062466 limit. The candidate performs zero full snapshot-row validations and one
row decode across that measured cycle, versus 204,900 and 1,245,767 in the release.
It still emits complete universe/member/child-trace evidence. Initial validation and
record-processing costs remain explicit; no constant total-transaction claim follows.

Every failed attempt remains visible; none enters the accepted candidate statistics.

| Attempt | Retained rows | Outcome / remediation |
|---|---:|---|
| [1cfec65](attempts/campaign-1cfec65/result.json) | 709 | Failed N2048 primary timing; [remove duplicate promotion work](promotion-remediation.md) |
| [b873d80 unisolated](attempts/campaign-b873d80-unisolated/result.json) | 505 | Failed small absolute budget; cause unknown; one declared whole controlled repeat |
| [b873d80 controlled](attempts/campaign-b873d80-controlled/result.json) | 703 | Failed small warm medians; [one exact module encoding](warm-remediation.md) |
| [446c55c](attempts/campaign-446c55c/result.json) | 702 | Failed absolute fallback budget; [restore early unsupported fallback](fallback-remediation.md) |
| [0d6a52c](attempts/campaign-0d6a52c/result.json) | 927 | One failed large fallback warm median; [restore original result allocation lifetime](fallback-lifetime.md) |
| 919429b final | 927 | Every required criterion passes |

Compilation errors, an initial zero-test filter, deliberately red controls, interrupted
gates, disk exhaustion and the existing concurrent mock timeout are retained separately.
They are not passing verification. Qualified nonempty selectors and subsequent green
runs are recorded. Inlining variants from the paired investigation were not retained.

The frozen profile SHA-256 is
`385be83edf49a383011946ea041dd41ec12a8b031ba687e5b3d4c0fb292ff36a`.
[baseline-build.json](baseline-build.json) binds original source, adapter/measurement
patch and immutable baseline binaries. The final campaign reuses all 412 complete
released-baseline rows (unchanged binaries/toolchain/harness), never prior candidate
results. The manifest records their source and checksum. The sole shared-harness
adaptation changes fixture-module visibility; the validator normalizes exactly those
bytes and verifies all remaining frozen bytes.

The public timing/work probes use a fresh process and Store per case. Forced-full
reference runs fresh Stores inside one Rust test process; its outer per-case elapsed
includes framing and HWM is cumulative diagnostic information. It reconstructs complete
parents and children. Only production-like candidate timings determine numerical
acceptance; diagnostic overhead is measured without subtraction. Named copy/hash
counters are site-specific proxies, not exact allocation or all-hash-input accounting.

Measurement data are **nonsemantic test/research artifacts, never included in
BehaviorHash, records or cache authority**. Source, binary, harness, toolchain, locks,
CPU affinity, phase resources, commands, return codes and raw output are bound in the
manifest and rows. [Exact orchestration](campaign-orchestration.txt) is host-specific
research provenance, not another release process.

## Reproduction and guide verification

[quickstart.md](../quickstart.md) contains the actual nonempty correctness/work,
migration, durable-consumer and full-gate selectors. They are covered by G1/G2/US2/US3
and the final G3 log. After isolated measurement finished, every documented collector
help command, the production-mode 128+8 creation smoke, clean production-source check
and the complete evaluator were executed again. The smoke ends with 136 E entities,
zero Other entities, no work instrumentation and a positive final drain. Its complete
observations match the frozen case. [guide-verification.json](guide-verification.json)
retains actual commands/results; [guide-acceptance.json](guide-acceptance.json) equals
the accepted verdict. Final documentation links are checked separately.

Use fresh outputs for another campaign and preserve failures. Collect all five required
groups; the evaluator rejects wrong provenance, incomplete/duplicate repetitions,
missing drain, mixed modes, missing budgets and semantic mismatch. It replaces a stale
passing output with failure before parsing. Correctness/work tests do not waive G4.

## Requirement traceability

| Requirement | Implemented argument/control/evidence |
|---|---|
| FR-001 | G0 released-source baseline; four global/control shapes, live/history dimensions |
| FR-002 | research.md, evaluation-report.md; baseline full-state work and output costs |
| FR-003 | `supported_global_cycles_do_not_revalidate_unchanged_rows`; independent typed allowed-row set per operation, including drain |
| FR-004 | `complete_creation_cycles_include_empty_multi_create_and_multiple_policy_bounds`; 1000/1001 control, frozen real-create corpus |
| FR-005 | conservative classifier, `actual_global_query_record_is_ineligible_for_incremental_carry_forward`, unsupported/reopen controls |
| FR-006 | correctness.md finite-state lemmas and observer/frame correspondence; conditional Rust boundary |
| FR-007 | prepared Core tests, full record/Observed equality, commands/errors/skips, public tamper rejection, historical gate |
| FR-008 | complete admitted obligation roots and actual ordinary World effects; mixed/suppressed/transitive dependency controls |
| FR-009 | opaque checked constructor/epoch, complete record comparison, six mutation controls; ordinary fallback |
| FR-010 | exact full module/schema/history/profile/epoch tests, including same BehaviorHash with changed metadata |
| FR-011 | failed/conflicting CAS, actual lost acknowledgement, idempotent retry; exact child-only promotion |
| FR-012 | invalid seed/migration target, migration_context/evidence, cold reopen, archived replay |
| FR-013 | correctness.md and this evidence-class/trust distinction |
| FR-014 | research.md assessment of existing Core reasoning and verified-results relevance; no unrelated proof machinery |
| FR-015 | whole-cycle profile and actual growing Store; setup/open/drain and process costs retained |
| FR-016 | pre-optimization numeric profile freeze, immutable hashes, all repetitions and failed attempts retained |
| FR-017 | immutable fixture/format audit, cross-mode semantic digests, replay after cache discard |
| FR-018 | unchanged Backend/facade, optional-index and reverse-enumeration controls, external durable consumer |
| FR-019 | full required G3, independent expected controls, mutations, recovery and measurement-validator negatives |
| FR-020 | evaluation-report.md and docs/incremental-validation.md; all frozen G4 criteria passed; residual costs measured |
| SC-001 | complete differential/independent controls and full G3: zero unexplained semantic mismatches |
| SC-002 | strict per-key work controls and large-population candidate work data ([G4 acceptance](acceptance.json)) |
| SC-003 | count boundary, actual simultaneous/fresh creates; no unchanged-row semantic checking |
| SC-004 | all 103 cases, 3 timing repetitions and every frozen growth/budget test ([G4 acceptance](acceptance.json)) |
| SC-005 | US3 exact anchor/recovery/migration and data/behavior replay matrix |
| SC-006 | conditional argument/construct map plus six behavioral mutation failures |
| SC-007 | final causal growth and residual-cost assessment ([G4 acceptance](acceptance.json)) |

| Story acceptance | Exact coverage |
|---|---|
| US1.1 | constant-true update work control + complete reference equality |
| US1.2 | count/update and unrelated-type growing-state controls |
| US1.3 | count/create complete cycles, strict work, batch2/8 and multiple rules |
| US1.4 | independently expected creation1000 ALLOW/1001 DENY and unchanged refused head |
| US2.1 | Core record/Observed, Store bundle/commit differential controls; Unicode metamorphic records/replay |
| US2.2 | overflow, lazy commands/payload failure, multiple constraints/skips and simultaneous creates |
| US2.3 | mixed/unknown/derived dependencies, removal/migration ordinary fallback |
| US3.1 | exact-parent/private epoch and failed/conflicting CAS controls |
| US3.2 | cold reopen, explicit Backend mutation, same-hash changed module/schema/profile controls |
| US3.3 | public Store lost acknowledgement and real separate-process durable consumer recovery |
| US4.1 | orthogonal live/history/batch/rule dimensions and every raw repetition ([G4 acceptance](acceptance.json)) |
| US4.2 | semantic-work counters versus complete output/parse/hash cost attribution ([G4 acceptance](acceptance.json)) |
| US4.3 | repeated growing creation at six populations; frozen slope/whole-cycle comparison ([G4 acceptance](acceptance.json)) |

## Compatibility and remaining limits

[compatibility.md](compatibility.md) audits the immutable baseline, facade, Backend,
canonical/historical formats, semantic identities, governance and replay. Published
fixtures/tags/records, dependency locks and consumer facade are unchanged. Prepared
state is ephemeral; it adds no durable business state or replay dependency.

Measured scope: current live Store::evaluate → commit → next evaluation, selected
literal Boolean/exact typed unfiltered count bounds, eligible scalar/positive-Ref row
evidence, updates and fresh creations. Starting populations reach 8192; the corresponding
eight-create runs reach 8200 live entities. Fixed-history, batch 2/8 and global-rule 1/4
interactions are measured. This is a demonstrated range, not a universal capacity ceiling.
Local derived observers, unsupported roots, removals/migrations, unified invocation,
declared reads, arbitrary relational queries and historical replay retain documented
ordinary paths/costs. Full output still scales with state/evidence size; no optimality
claim is made for every copy/parse/allocation. Backend-specific performance, unlimited
scale, every-global incrementality and private-application endurance are not established.


[final-audit.json](final-audit.json) records the link, source-subtree, checklist-marker,
compatibility-hash and guide/acceptance checks. `scripts/check-terms.sh` passes after
the final documentation changes. `.specify/extensions.yml` is absent, so no mandatory
or optional post-implementation hook is registered. All 51 implementation tasks close
against the results above; supported limits and trust assumptions remain explicit.
