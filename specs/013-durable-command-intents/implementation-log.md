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
