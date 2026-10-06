# Implementation log — Durable Command Intents

## Scope and prerequisites

Implementation checkout: `/home/kalle/repos/behavior-ir-core`, branch
`013-durable-command-intents`. The original 012 checkout and all user-supplied
013 design artifacts are preserved. No release tags or artifacts are published.

## T001 — accepted predecessor

Accepted 012 revision: `1b79a88402852dcb4ba19b9b793d5a5c71bc4263`.
Its source revision is `7f06f02875c20442b68f3e0b68c999cd2a54186f`; the
acceptance commit changes only tasks, review and evidence. All 37 predecessor
tasks are checked after genuine acceptance: the unchanged full gate passed
(449 workspace tests, 21 ignored; 10 consumer tests), all 595 frozen digest keys
are unchanged, the required release performance test passed, and reproducible,
empty-environment/conformance release verification passed. See the predecessor
[review](../012-unified-invocation-model/checklists/implementation-review.md).

Baseline engine info confirms Core 0.11.0, Wire through 0.7, decision records
0.4/0.5/0.6 and verifier 0.6.0. Reserve Wire 0.8, decision record 0.7,
verifier 0.7.0 and Core 0.12.0; local tags contain only v0.10.1/v0.10.2.
No reserved domain has been implemented or reused.

## Evidence discipline

Every new semantic implementation or repair starts with a reviewed compiled
test observed failing for its intended semantic reason. Compiler failures,
scaffolding and already satisfied regressions are distinguished explicitly.
Per-task evidence belongs under `evidence/TNNN.md`; checkpoints consolidate
actual outcomes here. No new test establishes historical test-first compliance.

The prior Core-wide soundness audit remains open. Passing legacy tests proves
neither mathematical soundness nor completion of G1/G2/G3. Commands remain
disabled until those prerequisite contracts pass.

## T002/T003 — frozen compatibility and trust fixtures

Frozen 521 tracked legacy schema/fixture file hashes and 136 established
deterministic output hashes in `tests/fixtures/commands/legacy-baseline.json`.
This includes all published hash vectors and new accepted 012 invocation
goldens; no original fixture was rewritten. Verifier 0.6.0 attestations remain
historical structural evidence; new 0.7.0 outcomes are explicitly separate.

Created canonical test-only authorizer/verifier seeds, exact required/none/deny-all
evidence policies, complete execution policy/profile and explicit bound/unbound
Q. Existing dalek code derived both public keys through the legacy sign-waiver
CLI and matched their established fixture identities. Policy context explicitly
declares Bool/i64/String fields and typed expected values; time is fixed and
keys are distinct. No crypto dependency, environment discovery or live clock
was added. These fixtures do not establish v2 implementation or trust.

T004 baseline gate is pending; no foundational semantic test/code task is accepted.

## T004 — baseline gate passed

Pinned runtime checks: Rust 1.98.1 (48a229cea, 2026-09-01), Z3 4.16.0.
The unchanged `scripts/gates.sh` passed with exit 0 on accepted predecessor
source plus the new setup fixtures: fmt/clippy/workspace tests and build,
determinism, boundary, 93-item facade, external consumer, workflow/terms and
script tests. 449 workspace tests and 10 consumer tests passed; 21 tests were
ignored, not passed. All 521 frozen schema/fixture hashes were independently
rechecked and unchanged. Transcript: /tmp/013-baseline-gates.log.

No Core/Store/Verifier/CLI source changed during setup. Existing tests are
regression evidence, not proof of soundness. T005–T013 must now establish
compiled semantic red evidence before their implementation tasks.

## T005–T015 — prerequisite regressions and record boundary

T005–T013 have reviewed compiled red evidence under `evidence/`. Already green
cases and tests blocked by deliberately nonpassing new interfaces are identified
separately. Concrete false proofs, forged legacy authorization, incomplete state
validation, same-schema migration substitution and history/replay defects were
reproduced against the actual predecessor implementation.

T014/T015 are now green: strict duplicate/number decoding, typed read-record
integrity, fallible identity construction and duplicate-safe replay. The final
targeted run passed 34 tests across nine Core targets, exit 0, in
`/tmp/013-T014-T015-final-green.log`; all 521 frozen fixture/schema hashes remain
unchanged. Formatting was run. Trusted governance and history interfaces remain
explicitly nonpassing scaffolds. G1/G2/G3 and the full foundation gate are not
accepted; numeric and alias soundness repairs are next.

## T016–T034 — prerequisite implementation and targeted validation

Representation analysis now traverses complete numeric/query intermediates;
typed entity representatives prevent read aliases from inflating query cardinality.
The runtime establishes behavior-valid complete snapshots before new verifier
invariant assumptions. Migrations retain their exact source/target behavior pair.
Immutable typed policies, full independent Q/calendar/half-open trust eligibility,
strict detached signatures and actual fresh cache-free proof producers now govern
both state and migration commits. The store pins complete history, rederives live
candidate semantics and uses one atomic CAS. Both replay paths check original
history/trust; only Behavior replay claims semantic re-evaluation.

Concrete additional red→green defects include repeated proof-site loss, ignored
solver process/protocol failures, a guard bypass through blocked stdin/version
probe, open/nonreproducing witnesses, noncanonical v2 genesis seeds and
contradictory rehashed migration data. See the per-task evidence files for exact
transcripts and corrected test premises; compiler failures and initially rejected
nonconsistent test archives are not semantic red evidence.

Targeted results: nine audited soundness regressions, twenty trusted-policy tests,
eighteen proof tests plus the corrected operational guard, eight exact migration
context tests, ten history integrity tests, seventeen Store governance/schema
tests, four backend conformance tests and eight governance CLI tests pass.
The new external facade consumer also passes. Old replay property tests pass
(129.71 seconds for that target, one intentionally ignored performance test).
No claim of complete G1/G2/G3 or Core-wide soundness is made yet: the unchanged
full gate and final legacy comparison are T035 and remain pending.

Final typed-boundary follow-up passes 43/43 proof/governance tests in
/tmp/013-foundation-shapes-green.log: 23 trust/closed-document cases and
20 fresh proof/manifest/metamorphic/process cases. This includes the zero-budget
and candidate/signed-context decoder/schema parity fixes. All 521 frozen files
still match. The first whole gate found missing advertised v2 Store formats;
the second was deliberately stopped when additional compiled scalar-boundary
regressions justified a source repair. Neither partial run is acceptance.
The third whole run, /tmp/013-foundation-gates3.log, passed 407 tests before
the existing projection-fetch regression failed: 80 backend fetches for 20
members, against its unchanged limit of 40. Reads now reuse their validated
complete snapshot for bindings, queries and projections; historical used-ID
facts remain pinned backend reads. All 23 targeted validity/read/schema/replay
tests pass in /tmp/013-T035-read-snapshot-green.log. The replacement complete
unchanged gate is /tmp/013-foundation-gates4.log and remains pending.

## T035 — G1/G2/G3 accepted

The unchanged ordered full gate passed, exit 0, in
`/tmp/013-foundation-gates4.log`: 565 workspace tests, 21 intentionally ignored,
11 external consumer tests, formatting/clippy/build/determinism/boundary,
125 public surface items, workflow/terms and all seven discovered script suites.
All prerequisite targets listed in quickstart are included in the workspace run.

The fresh post-build digest `/tmp/013-foundation-final-digest.json` retains all
521 frozen legacy file hashes and 105 nonverification output hashes exactly.
The remaining 31 changed outputs are 27 new verifier 0.7.0 attestations, three
new migration attestations and the legacy authorization derived from the fresh
report. See `evidence/T035-legacy-comparison.json` for exact old/new hashes.
No historical verifier 0.6.0 fixture is rewritten or treated as trusted evidence.
The premature pre-build digest was discarded and was not acceptance evidence.

Validated implementation is the local source checkpoint `5388bcd`. This
acceptance follow-up changes evidence/tasks/logging only. G1/G2/G3 meet their
specified trust/proof/history prerequisites; 013 command stories are enabled.
The broader mathematical soundness audit remains open, and no command feature
or release has been accepted or published at this checkpoint.

## T036–T057 — mixed-command kernel implemented

Wire0.8 retains its explicit profile, checked product/scalar encodings, opaque
candidate intents and canonical emission/value bags. Guards run first on S;
false guards evaluate no payload, reached errors abort all proposed effects.
Complete incoming behavior validity is independently established. New record0.7
archives recomputable historical command/types and detaches source diagnostics;
invocation preserves that sidecar outside its semantic identity. The verifier
models reached guard/payload errors with complete canonical proof sites.

Foundation candidate/commit machinery already bound the full new inner record;
there was no need for a second outbox write. Its offline boundary now validates
the self-contained command archive too. The test-only host uses an OS writer
lock and one fsynced/renamed/fsynced-directory snapshot. Separate processes prove
pre-write atomic failure and exactly one original durable mixed event after
lost acknowledgment. This says nothing about exactly-once external execution.

Actual intermediate reds and corrected test premises are in T036–T043/T051/
T053/T057 evidence. Five independent binary domain vectors, 17 admission,
9 identity, 11 evaluation, 6 builder, 7 record, 7 safety, 8 mixed-store,
7 command-CLI and three actual host-persistence scenarios now pass. The host
harness has a fourth inactive worker test, not a fourth durability proof.
Workspace clippy and separate consumer clippy pass. All 521 frozen legacy files
are unchanged, the explicit facade lists 135 exports and the boundary check
passes. The final CLI run passes seven command plus two legacy invocation tests.

T058 is still pending the full workspace compatibility run. No command-only
story, committed adapter stream, final replay acceptance or release is claimed.
The full Core soundness audit remains open. No release tag or publication was made.

## T058 — US1 accepted

The complete workspace run /tmp/013-US1-workspace.log finished with exit0:
641 tests pass, 21 intentionally ignored. The separate external consumer run
/tmp/013-US1-consumer.log passes 15 tests with exit0. This includes every earlier
soundness/trust/history target plus all new command targets. Workspace/consumer
clippy, explicit 135-item facade and boundary checks pass. All 521 frozen
fixture/schema files are unchanged; original hash vectors, valid records,
legacy invocation bytes and replay outcomes pass their existing assertions.

The final legacy-context parser preservation is additionally covered by
/tmp/013-US1-cli-final2.log (7 command + 2 legacy invocation tests). The final
builder::SemanticProfile alias, required by the facade contract, compiles in
/tmp/013-US1-facade-alias.log and the sorted explicit surface check passes.
Runtime source checkpoint is a4c3563; this acceptance includes that additive
facade alias and evidence updates. This is a story checkpoint, not the
unchanged full shared gate/release acceptance required later by T110/T111.
Mixed atomic commit, reached/false guarded payload behavior, complete basis,
canonical identities/evidence, trusted binding and separate-process durable
recovery meet US1. Command-only actions and committed streaming are next.

## US2 — accepted command-only transitions

T059–T065 complete. Profile0.8 permits zero state bindings and rejects actions with no declared state/lifecycle/command effect before parameter resolution. All-false guards remain structurally effectful. Legacy admission and diagnostic rules are retained. Builder finish re-admission applies the same rule.

The existing atomic store algorithm already correctly handles empty version/removal/reference deltas once admission permits the action; T063 is verified integration, not an invented store repair. StateId, entity universe, exact versions and a nonempty reverse-reference index remain identical, while history advances. Stale candidates refuse even with empty realized K; original retries recover the same event after later commits without another CAS. Both prewrite abort and lost acknowledgment are covered.

Evidence: /tmp/013-T062-first.log (29 Core tests), /tmp/013-T063-first.log (12 Store tests), /tmp/013-US2-core.log (admission, frozen legacy invocation, command-only and guarded evaluation), /tmp/013-US2-consumer.log (5 facade tests, including complete receipt fixtures). Test expectation correction for the refusal stage is documented in T061. These are targeted story checks, not final release verification.

## US3 — accepted committed occurrences and stream

T066–T076 complete. Opaque occurrence/page types expose read-only evidence and no public unchecked candidate promotion. The occurrence domain binds exact commit history, intent content and canonical multiplicity; copies agree and divergent equal-state forks differ. Existing validated original-event recovery already meets T072 and is retained.

Checked requests use exclusive full HistoryRef endpoints, default256/range1–1024 events, and pin the captured ending head. Stream validates full history/data/trust and materialized as-of state/versions before returning commands, walks canonical events without an outbox/index authority, preserves whole-event counts, advances on empty/migration events and excludes above-head records. New negative tests exposed and repaired a stale materialized-version gap after the first implementation. Validation currently walks the complete pinned interval/history; max_records bounds scanned page events, not validation work or bytes.

Acceptance: /tmp/013-US3-store.log (4 occurrences, 8 stream/schema, 5 conformance tests including 31 cases per backend), /tmp/013-US3-consumer.log (2 facade and 4 process durability tests), /tmp/013-US3-doc.log (unchecked-constructor compile-fail), /tmp/013-US3-quality.log (workspace Store/all consumer test clippy and format). Public exports added explicitly and schema lexical/relational limits documented. No external-delivery theorem or executor added.

## US4 — accepted historical command replay

T077–T086 complete. Self-contained command/type archive validation, guard-path record replay and exact trusted/migration history replay were already implemented as shared US1/foundation requirements. Reviewed tests preserve that implementation. The observed new defect was map reduction of duplicate invocation-record keys in the programmatic replay facade; current-profile replay now parses strictly, while legacy parsing remains unchanged. CLI already rejected that transport before replay.

New receipt decision/invocation fixtures and a separate golden file record the canonical domain/BehaviorHash/intent hashes/invocation ID. Python hashlib independently computed decision identity sha256:49c210f0dfc6e88443837a8c154000ef3b9a546536334e6ce0caca105e3a89c8. Semantic bags, trace/observations and selected errors replay exactly after definition permutations/locations/query-binder/equal-alias changes. Changed archived semantics/count/occurrence assertion/head/parent/profile and missing/substituted modules fail; copied histories agree.

Acceptance: /tmp/013-US4-golden.log (7 Core replay tests), /tmp/013-US4-core.log (legacy/closed records), /tmp/013-US4-store.log (38 archive/history/migration/trust tests), /tmp/013-T079-final-first.log (facade read-only/no-business-execution scenario), /tmp/013-US4-cli.log (11 CLI cases), /tmp/013-US4-quality.log (format/clippy). Module-free data replay authenticates archived closed manifests as verifier attestations; live/Behavior paths independently derive them. Tests do not claim a Core executor was registered: no such API exists. Wider Core audit remains open.

## US5 — accepted explicit external result input

T087–T092 complete using existing primitives only. Payment status/attempt/provider reference are ordinary domain fields. The request commits state+ChargeCard; host execution consumes checked committed occurrences; receiving the host response leaves Core history unchanged. A later explicit result invocation checks the business attempt/status, remains read-only until commit, and commits separately. Both outcomes preserve/replay the original event; wrong correlation refuses. Mock retry/idempotency data lives outside Core.

Compiled scaffold failures: /tmp/013-T087-red.log (missing payment model), /tmp/013-US5-red.log (unimplemented host example). Green: /tmp/013-US5-first.log (3 consumer/example tests), /tmp/013-US5-quality-examples.log (format/all-consumer clippy and real success/failure example runs). docs/command-results.md explains occurrence vs business correlation and explicit compensation/causality. No Core callback or command-specific authority added.

## US6 — accepted payload safety and shared trusted governance

T093–T101 complete. Reviewed paired concrete/runtime and verifier tests cover nested exact/rescale, overflow/narrowing, query/derived payloads, guard exclusion and canonical prior-success paths. The US1/foundation encoder already implements these cases correctly; T097–T099 are verified shared integration, not new production repairs. Exact candidate K, declaration/count, store/head, policy/profile/proof and independently decoded Q/time are bound by the existing trusted mechanism. Earlier attachment/decoder refusal and check-level INCONCLUSIVE were corrected test premises, not soundness defects.

Acceptance: /tmp/013-US6-verify.log (64 tests), /tmp/013-US6-store.log (15), /tmp/013-T095-reviewed-first.log (2 facade tests), /tmp/013-US6-cli.log (10), /tmp/013-US6-quality-second.log (format/clippy). docs/verification.md records the scoped runtime/verifier correspondence, semantic equivalence laws, trust/solver/backend assumptions and the open wider Core audit. No external-delivery theorem or command authority is introduced.

## T102–T108 — supported demo, metadata and measured costs

The reviewed shell/demo scaffolds failed before implementation (T102/T103 evidence). The demo now exports candidate/bundle and independent context without commit, uses actual fresh CLI proof/signatures, commits with independently decoded Q, exposes only checked committed output and recovers the original event after a separate-process durable exit86. Consumer tests retry one mock idempotency key and refuse wrong Q without changing history. Both deterministic repeated histories and malformed/error-output script controls pass.

Core release metadata is0.12.0; accepted_wire_ir adds0.8 from decoder constants while wire_ir remains historical. Decision0.7 and command domains are reported; verifier semantics remain0.7.0. /tmp/013-T106-green.log passes4 CLI metadata cases; /tmp/013-polish-quality-second.log passes workspace/consumer format+clippy. Documentation describes the finite bag, acyclic occurrence identity, atomic history, trusted governance/adoption, explicit results and open wider audit.

/tmp/013-T108-perf-second.log passes27 measured semantic scenarios in one test. docs/command-performance.md records actual count axes and raw timings/page bytes, complete-snapshot and full-history validation costs and backend/trust/build limitations. No SLA/unchecked acceleration/new Core primitive is proposed. Full shared gate and exact pushed-revision release checks remain pending.

## T109 — final contract coverage and quickstart

/tmp/013-T109-quickstart.log exits0:190 tests across19 named quickstart/story targets, pinned rustc1.98.1/Z3 4.16.0,138-item explicit surface and boundary, actual admit/invoke/invoke-replay/engine-info, command determinism and both payment outcomes. /tmp/013-T109-demo-cli.log exits0 running each documented cargo-run prepare/proof/authorization/commit/stream/crash-recovery command with independent host context. Core/store schema parity targets cover current wire0.8, record0.7 and checked command stream; JSON Schema lexical/relational limitations remain documented. All521 frozen legacy files still match.

A detached consumer-layout check exposed five internal fixture-helper paths (/tmp/013-T109-isolation-red.log). This packaging/compiler gap is not claimed as a semantic TDD red. The pure test model is now local to consumer/tests/support/commands.rs. /tmp/013-T109-isolation-green.log exits0 with30 tests using only consumer plus public fixtures and the facade dependency; actual CLI comes from the same source candidate. No Core implementation repair was needed.

| Requirement | Implemented obligation | Acceptance evidence |
|---|---|---|
| FR-001 | Typed declarations/products, action-only admission, forbidden semantic objects | Core command_admission, command_builder; strict wire/schema tests |
| FR-002 | Versioned bag/product identity, multiplicity and schema separation | Core command_identity (independent domain oracles), command_evaluation, Store command_occurrences |
| FR-003 | Versioned bag/product identity, multiplicity and schema separation | Core command_identity (independent domain oracles), command_evaluation, Store command_occurrences |
| FR-004 | Typed declarations/products, action-only admission, forbidden semantic objects | Core command_admission, command_builder; strict wire/schema tests |
| FR-005 | Typed declarations/products, action-only admission, forbidden semantic objects | Core command_admission, command_builder; strict wire/schema tests |
| FR-006 | Typed declarations/products, action-only admission, forbidden semantic objects | Core command_admission, command_builder; strict wire/schema tests |
| FR-007 | Original exact basis; guard-first payload and no business callback | Core command_evaluation, Verify command_safety, consumer command_replay |
| FR-008 | Original exact basis; guard-first payload and no business callback | Core command_evaluation, Verify command_safety, consumer command_replay |
| FR-009 | Original exact basis; guard-first payload and no business callback | Core command_evaluation, Verify command_safety, consumer command_replay |
| FR-010 | Structural effectfulness; unchanged-state history; exact-head/idempotency | Core command_only_admission; Store/consumer command_only; command_crash_recovery |
| FR-011 | Immutable candidate bag, closed semantic record and frozen legacy versions | Core command_records, record_validation, command_replay; frozen521 file hashes and105 outputs |
| FR-012 | Versioned bag/product identity, multiplicity and schema separation | Core command_identity (independent domain oracles), command_evaluation, Store command_occurrences |
| FR-013 | Acyclic committed occurrence identity, equal copies/distinct forks | Store command_occurrences; opaque constructor compile-fail; consumer durable_commands |
| FR-014 | Acyclic committed occurrence identity, equal copies/distinct forks | Store command_occurrences; opaque constructor compile-fail; consumer durable_commands |
| FR-015 | Versioned bag/product identity, multiplicity and schema separation | Core command_identity (independent domain oracles), command_evaluation, Store command_occurrences |
| FR-016 | Immutable candidate bag, closed semantic record and frozen legacy versions | Core command_records, record_validation, command_replay; frozen521 file hashes and105 outputs |
| FR-017 | Immutable candidate bag, closed semantic record and frozen legacy versions | Core command_records, record_validation, command_replay; frozen521 file hashes and105 outputs |
| FR-018 | Immutable candidate bag, closed semantic record and frozen legacy versions | Core command_records, record_validation, command_replay; frozen521 file hashes and105 outputs |
| FR-019 | Atomic state/history/intents/idempotency; history-owned durability | Store durable_commands, history_integrity, conformance31 cases; actual command_crash_recovery |
| FR-020 | Atomic state/history/intents/idempotency; history-owned durability | Store durable_commands, history_integrity, conformance31 cases; actual command_crash_recovery |
| FR-021 | Atomic state/history/intents/idempotency; history-owned durability | Store durable_commands, history_integrity, conformance31 cases; actual command_crash_recovery |
| FR-022 | Checked pinned whole-event stream, read-only and host-only operational state | Store command_stream, command_occurrences; consumer durable_commands, command_demo |
| FR-023 | Checked pinned whole-event stream, read-only and host-only operational state | Store command_stream, command_occurrences; consumer durable_commands, command_demo |
| FR-024 | Checked pinned whole-event stream, read-only and host-only operational state | Store command_stream, command_occurrences; consumer durable_commands, command_demo |
| FR-025 | Structural effectfulness; unchanged-state history; exact-head/idempotency | Core command_only_admission; Store/consumer command_only; command_crash_recovery |
| FR-026 | Structural effectfulness; unchanged-state history; exact-head/idempotency | Core command_only_admission; Store/consumer command_only; command_crash_recovery |
| FR-027 | Structural effectfulness; unchanged-state history; exact-head/idempotency | Core command_only_admission; Store/consumer command_only; command_crash_recovery |
| FR-028 | External execution and delivery truth outside Core | Opaque public facade/no executor; consumer command_replay, command_verification, command_demo; boundary/surface checks |
| FR-029 | External execution and delivery truth outside Core | Opaque public facade/no executor; consumer command_replay, command_verification, command_demo; boundary/surface checks |
| FR-030 | Atomic state/history/intents/idempotency; history-owned durability | Store durable_commands, history_integrity, conformance31 cases; actual command_crash_recovery |
| FR-031 | External execution and delivery truth outside Core | Opaque public facade/no executor; consumer command_replay, command_verification, command_demo; boundary/surface checks |
| FR-032 | Immutable original event and explicit later domain result/correlation | consumer command_results, command_result_example; actual success/failure runs |
| FR-033 | Immutable original event and explicit later domain result/correlation | consumer command_results, command_result_example; actual success/failure runs |
| FR-034 | Immutable original event and explicit later domain result/correlation | consumer command_results, command_result_example; actual success/failure runs |
| FR-035 | Immutable original event and explicit later domain result/correlation | consumer command_results, command_result_example; actual success/failure runs |
| FR-036 | Typed declarations/products, action-only admission, forbidden semantic objects | Core command_admission, command_builder; strict wire/schema tests |
| FR-037 | Reachable expression failures exactly under true guard/prior success | Verify command_safety, soundness_regressions, trusted_verification; docs/verification correspondence table |
| FR-038 | External execution and delivery truth outside Core | Opaque public facade/no executor; consumer command_replay, command_verification, command_demo; boundary/surface checks |
| FR-039 | Shared trusted policy and exact whole-transition authorization | Store command_governance/trusted_governance/migration_context; consumer command_verification; actual CLI command_verification/demo |
| FR-040 | Shared trusted policy and exact whole-transition authorization | Store command_governance/trusted_governance/migration_context; consumer command_verification; actual CLI command_verification/demo |
| FR-041 | Historical exact intent/evidence reconstruction and divergence | Core/Store/consumer/CLI command_replay; closed archive negatives, copied histories, full context/manifests |
| FR-042 | External execution and delivery truth outside Core | Opaque public facade/no executor; consumer command_replay, command_verification, command_demo; boundary/surface checks |
| FR-043 | Historical exact intent/evidence reconstruction and divergence | Core/Store/consumer/CLI command_replay; closed archive negatives, copied histories, full context/manifests |
| FR-044 | Historical exact intent/evidence reconstruction and divergence | Core/Store/consumer/CLI command_replay; closed archive negatives, copied histories, full context/manifests |

| Criterion | Proven acceptance case | Evidence |
|---|---|---|
| SC-001 | Atomic mixed durability and injected prewrite/lost-ack failure | Store durable_commands + real consumer command_crash_recovery |
| SC-002 | History+1, unchanged StateId/versions/universe | Store command_only + consumer command_only |
| SC-003 | Evaluation/verification/replay/counterfactual never invoke business executor | consumer command_replay/command_verification; no Core executor registration API exists |
| SC-004 | Byte-identical replayed K and canonical semantic evidence | Core/Store/CLI command_replay + independently calculated receipt golden |
| SC-005 | Refusal/conflict/abort expose no new occurrence or partial atomic components | Store command_governance/durable_commands/command_stream + process abort |
| SC-006 | Stable observation/original recovery occurrence IDs | Store command_occurrences + consumer process/demo retry |
| SC-007 | Intentional repeated commits and divergent equal-state forks remain distinct | Store command_occurrences; bag multiplicity/permutations |
| SC-008 | Frozen valid legacy bytes/hashes/outcomes; fresh verifier separately versioned | 521-file hash comparison; full old suites and deterministic digest comparison |
| SC-009 | Missing/dropped command record and stale materialization conformance faults detected | Store conformance command_history mutants + command_stream partial_state_commit |
| SC-010 | Reachable payload errors and no external-service theorem | 12 paired command_safety cases; soundness_regressions; consumer/CLI command_verification |

Specification-quality checklist markers remain unchanged; all16 were already checked. Wider Core soundness audit, solver/key assumptions and arbitrary backend honesty remain open/scoped. Full shared gate and already-pushed revision/reproducible release checks are still pending.

Final digest: /tmp/013-final-digest.json (actual full determinism exits0). T109-digest-comparison.json records every current key and the31 fresh verifier/governance output differences under verifier0.7.0;105 nonverification baseline outputs are identical. Historical fixtures/attestations are unchanged and not retroactively authenticated. /tmp/013-T109-final-quality.log exits0 with final format/consumer clippy.

## T110 — first full-gate attempt

/tmp/013-T110-gates.log on50ccfe6209fcea1407ddc71dfe68f0d14b06c87c passed format/clippy and stopped at the older Core versions test, which still asserted a closed record0.4–0.6 metadata list. The supported record0.7 requires an additive assertion update; historical wire_ir remains unchanged and accepted_wire_ir has its own check. This is a stale metadata test, not permission to remove a semantic compatibility assertion. The full ordered gate will be rerun after the test update; T110/T111 remain pending.

## T110/T111 — final implementation acceptance

Validated runtime/fixture source: **328d61d79060b0fadd4c8731bc906739e497e826**, pushed on013-durable-command-intents. The full unchanged eleven-gate sequence in /tmp/013-T110-gates-second.log exits0:693 workspace tests,21 intentionally ignored,30 facade consumer tests; format/clippy/build/determinism/boundary/138-item public surface/workflows/terms/script checks all pass. The first metadata assertion failure was corrected and the entire gate rerun.

Only after the full gate and push, /tmp/013-T111-consumer-rev.log runs the exact Git revision as external dependency and passes30 tests. Only after that success, /tmp/013-T111-release.log runs release-check --skip-gates against the same clean revision. Two repeated release builds have identical checksums,0.12.0 metadata, canonical manifest, successful empty-environment admit/eval/replay and exact tracked conformance archive bytes. This is repeated-build evidence with the supported build cache, not a claim of independently cold compiler builds.

Release candidate assets: dist/013-validation-328d61d. Product tags remain v0.10.1/v0.10.2; nothing was tagged or published. Disposable tag/order rejection tests passed and touch no product history. Final-acceptance.json records exact source, log hashes and artifact manifest/checksums.

All111 tasks are now complete. Specification-quality checklists remain read-only with16/16 already checked. after_implement hooks: no .specify/extensions.yml exists. The acceptance commit adds only this evidence and task bookkeeping; release verification applies to the explicit source SHA above. The broader Core mathematical/security audit remains open and no global soundness/completeness certificate is claimed.
## Post-audit remediation, 2026-10-06

The user authorized implementation of F1–F6 from the read-only soundness audit of
`2c176a0ea98e3168186fd0e9ff0af9468173513b`. Initial Core regressions failed for
argument validation, duplicate-key invocation, diagnostic identity and failed-query replay;
the verifier regression reproduced a false PROVEN for a failing filter. Those failures were
observed before the corresponding implementation changes. New tests do not establish any
past test-first claim.

Current-profile reads now validate complete snapshots and argument constraints, retain
snapshot evidence through query failures and detach diagnostic provenance in read record v2.
Verifier 0.8.0 checks filter construction before assuming final membership and respects entity
roles. Historical read v1 evaluation/replay and archived verifier 0.7.0 decoding remain versioned
compatibility paths. Unified invocation and current-profile legacy entry points reject duplicate
keys before map reduction. Original policies/vectors remain frozen; examples explicitly select
the verifier-0.8 policy pair. PRINCIPLES includes explicit historical facts in T_B.

Additional compiled regressions first exposed detached diagnostics participating in typed
record equality, internal failure operands reaching capability responses, and read v2 missing
from format metadata. All three were corrected and the targeted regressions passed. The first
full workspace attempt also exposed a counterexample test harness substituting `facts: null`
for an absent optional facts section; the harness now preserves the actual recorded request.
The complete Verifier suite then passed 133 tests, with three intentionally ignored.

The unchanged eleven-gate sequence in `/tmp/core-soundness-gates-complete.log` exits 0:
716 workspace tests passed, 21 intentionally ignored, and 30 external-consumer tests passed.
Format, clippy, build, determinism, boundary, public surface, workflows, terms and executable
script checks all passed. The independent read-v2 schema parity regression ran in the Core
suite. All 521 frozen legacy schema/fixture files were separately compared and are unchanged.

This evidence applies to the working tree based on `2c176a0`, not to that old commit alone.
The 38 modified/new files were fingerprinted before the final gate and remained byte-identical
through it. `evidence/soundness-remediation.json` records their hashes, counts, the complete
gate transcript hash and targeted red/green logs. Subsequent edits only record acceptance
evidence and check T120. No tag, publication, or release artifact is part of this remediation;
the broader mathematical soundness claim remains limited by the documented contract assumptions.

## Quickstart policy alignment, 2026-10-06

The supported demo already selected the explicit verifier-0.8 policy pair, but the quickstart's
authorization command still named the archived 0.7 policy fixtures. Updated that command to
the matching `policy-verifier-0.8.json` and `evidence-policy-verifier-0.8.json`. Ran the exact
prepare, CLI verify, authorize, commit and stream sequence successfully, exit 0; transcript:
`/tmp/core-soundness-quickstart-policy-0.8.log`. Its hash is recorded in the remediation evidence.
Only documentation/evidence changed after the full gate; runtime source remains unchanged.

## Review follow-up: read replay integrity, 2026-10-06

The user authorized fixing all three review comments. Initial compiled tests reproduced five
semantic failures: successful read-only count/projection replay, exact-decimal replay,
semantically equal redundant decimal facts, and strict decoding refusal replay. The sixth
initial failure was a test fixture declaring standalone read IR 0.8; that codec remains 0.7.
It is not counted as semantic red evidence. Corrected the fixture and covered ad-hoc reads,
captured input, fold observations, empty results, tampering and store-free replay.

Query agreement now includes the resolved current read, whether declared or ad-hoc. Current
snapshot values and field facts are normalized through their admitted types before archiving.
Transport refusals retain original text in a restricted v2 `refused_request` field; replay
repeats decoding and the codec/schema prohibit body observations on those refusals. The
capability response omits the original text. Legacy v1 rules remain explicitly selected.

An additional compatibility regression reproduced a historical v1 query-agreement refusal
changing interpretation when reads were added to the shared registry. The registry extension
is now limited to the resolved current read, preserving the original v1 refusal. The initial
full-gate attempt was stopped for this correction and is not accepted as completed evidence.

Disk exhaustion was avoided through Cargo's supported package cleanup of regenerable build
artifacts (11.5 GiB removed); no source or release assets were removed. Targeted Core/Store/
Verifier regressions passed, including all 38 final targeted tests.

The final unchanged eleven-gate sequence in `/tmp/read-replay-review-gates.log` exits 0:
727 workspace tests passed, 21 intentionally ignored, and 30 external-consumer tests passed.
Format, clippy, build, determinism, boundary, public surface, workflows, terms and executable
script checks all passed. All 521 frozen legacy schema/fixture files are unchanged. The 41
modified/new files were fingerprinted before the final gate and remained byte-identical
through it. Earlier 716-test evidence applies only to the earlier fingerprinted working tree.

`evidence/read-replay-review.json` records the exact final source hashes, transcript hashes,
red evidence and actual test counts. Only this acceptance log, T124 and that evidence file
changed after the successful gate. All 124 implementation/remediation tasks are complete;
no tag, publication or release artifact is part of this follow-up.

## Merge follow-up: pinned gate tools, 2026-10-06

PR #11's first CI run on `9a6c468c7b411160e5b5a9b2e0fea719c49c1330` passed
format, clippy, all 727 workspace tests, build, determinism, boundary, public surface,
all 30 external-consumer tests, workflows and terms. The executable-script gate then failed
because `test_digest_subset.sh` used `rg`, which was available on the developer's host but
absent from the declared Nix shell. CI run: `37447984095`, gates job: `112217328382`.

The unchanged test reproduced that failure with `nix develop --ignore-environment` before
the fix (`/tmp/013-merge-missing-ripgrep-red.log`, exit 1). The shell now includes
`pkgs.ripgrep` from the existing locked nixpkgs input; no lockfile or runtime source changed.
The same isolated test passes (`/tmp/013-merge-missing-ripgrep-green.log`, exit 0), and
the complete executable-script suite passes (`/tmp/013-merge-script-tests-green.log`, exit 0).
T125 records this additional environment correction. The corrected PR's full CI run must
complete before merge; earlier acceptance evidence retains its exact original source scope.
