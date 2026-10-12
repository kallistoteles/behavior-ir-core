# Execution Ledger: Core 022

Implementation begins at `f0d2a5102adcb0b491cac166f023fd87bb03e7a7`, with
runtime baseline frozen 018 `391017e536ff64ddf94999ec126bc71799952264`.
Historical receipts are not attributed to new runs. Each retained run records
repository/HEAD, actual source/test/fixture digests, exact argument-vector command,
working directory, pinned environment identity, timestamps, exit status and separate
stdout/stderr locations under `runs/`. This is evidence, not semantic state.

Statuses are distinct: not run, setup/unavailable failure, semantic RED, passing
preservation/control, GREEN, failed, skipped and inconclusive. Zero collected tests
and compile failures never establish a finding. No matrix cell is executed merely
because its expected outcome was inventoried. A coordinator reconciles worker
outputs into coverage without allowing parallel ledger mutation.

## Setup

T001: clean isolated branch, correct remote, frozen 018 ancestry, owning instructions,
ignore rules and tool versions inspected. Requirements checklist 16/16 passed.
T002: pre-implementation compatibility assessment records both observable fixes,
the two live assertions and the malformed-Snapshot retroactive equality error.
No production source or historical evidence changed at this checkpoint.

## Runs and phase checkpoints

- [baseline/store-collection](runs/baseline/store-collection/run.json): exit 101,
  test scaffolding compile failure (`RefEdge` has no serde Serialize). This is
  setup failure, not semantic RED. Test-only correction uses its existing `to_json`;
  production remains unchanged. Subsequent collection has a separate receipt.
- [baseline/store-collection-corrected](runs/baseline/store-collection-corrected/run.json):
  exit 0, ten tests collected, none ignored. This is collection evidence.
- [baseline/capture](runs/baseline/capture/run.json): exit 0, one actual capture
  test, nineteen records and nineteen attempted-request documents produced through
  real Core/Store APIs. All standalone reproductions and seven legal Store controls
  passed; canonical authority was unchanged. This is fixture/control evidence.
- [baseline/ordinary-controls](runs/baseline/ordinary-controls/run.json): exit 0,
  one executed control test; ordinary reads, semantic refusals, bindings and valid
  origins passed before correction. No mutation was observed.
- [baseline/r022-01-red](runs/baseline/r022-01-red/run.json) and
  [baseline/r022-02-red](runs/baseline/r022-02-red/run.json): each exit 101, exactly
  one collected/executed test, with standalone reproduction and coordinate checks
  passing before the required Store-match assertion failed. Store reconstructed
  placeholder input/context and added facts absent from the refused computation.
- [baseline/r022-03-red](runs/baseline/r022-03-red/run.json) and
  [baseline/r022-04-red](runs/baseline/r022-04-red/run.json): each exit 101, exactly
  one executed test, failing only the required Store match after legal controls.
  First difference: recorded invocation origin was reconstructed as intent.
- [baseline/malformed-snapshot-red](runs/baseline/malformed-snapshot-red/run.json)
  and [baseline/contradictory-snapshot-red](runs/baseline/contradictory-snapshot-red/run.json):
  each exit 101, exactly one executed test. Actual Snapshot rejection and standalone
  reproduction passed; the new Store-match assertion failed at the host case's
  archived context. Later loop members were not executed and are not counted here.

These six failures are genuine semantic RED on the unchanged runtime digest
`d10a589a8b87815536d955421dc9b64f9af7616d656a1d5c196625d134e7fd59`.
No production source was changed before their execution. Core baseline controls
and the shared T008 review still remain prerequisites for production edits.

T003 inventory review: 116 concrete new cases, nineteen replay-runner records
across 38 applicable boundaries, 468 inherited 018 required cells, 62 concrete
unsupported/admission cells and eighteen protocol cells. Explicit N/A excludes
commands in pre-command decision profiles; no unsupported route is runner success.
T005 custody review: all 41 exact record/setup/attempt/README checksums and the
external unchanged 018 module input verified. Manifest expectations remain
contract-derived and are not blessed by runtime capture. Source custody links the
actual capture receipt and immutable archive checksums. T007 has retained each
named failure; T006/T008 remain open until Core controls execute.

- [baseline/core-collection](runs/baseline/core-collection/run.json): exit 0,
  ten Core tests collected.
- [baseline/core-controls](runs/baseline/core-controls/run.json): exit 0, all ten
  tests executed with no ignores. Every one of nineteen captured original records
  reproduced under Core with unchanged identity; source/phase/availability and
  distinct semantic-input controls passed. No Store-truth claim is inferred from
  these standalone matches.

T008 shared barrier review complete: the six retained semantic RED commands each
execute exactly one test on the unchanged runtime source; legal Core/Store controls
pass and captured original coordinates/identities are checked. Setup compilation
failure is explicitly excluded. No production edits preceded this barrier. US1
test expansion may proceed; T012 remains the barrier for its production changes.

## US1 pre-implementation expansion

- US1 collection receipts: [Core](runs/us1-red/core-collection/run.json) collects
  seventeen tests; [Store](runs/us1-red/store-collection/run.json) eighteen;
  [consumer](runs/us1-red/consumer-collection/run.json) three. Each exits 0.
- [consumer-control](runs/us1-red/consumer-control/run.json): exit 0, one legal
  ordinary/semantic/binding control using the supported facade and actual captured
  Store coordinate. No private crate imports or dependency metadata changes.
- [consumer-input](runs/us1-red/consumer-input/run.json) and
  [consumer-context](runs/us1-red/consumer-context/run.json): each exit 101 with
  exactly one executed semantic RED. Fresh actual record bytes, standalone match,
  coordinate and read-only checks pass before the Store-match assertion fails.
- [core-module-binding](runs/us1-red/core-module-binding/run.json): exit 101,
  exactly one genuine RED. Existing checked integration accepts reuse under a
  different admitted representation with equal BehaviorHash/profile; the expected
  exact-binding rejection fails. Fresh preparation remains a passing control.
- [core-read-contract](runs/us1-red/core-read-contract/run.json): fifteen passing
  tests, the genuine module-binding RED, and one incorrect test expectation about
  first-diff ordering. Resealed substitution is already rejected at `record_id`;
  expecting the modified field first contradicts existing comparison semantics.
  That failure is test correction evidence, not a product defect.
- [store-read-contract](runs/us1-red/store-read-contract/run.json): two passing
  tests, the two retained read findings, and five test-support failures. The new
  advanced Store helper attempted a Wire 0.8 commit with legacy genesis, correctly
  refused as `HISTORY_FORMAT_UPGRADE_REQUIRED` in three tests. Two other tests fail
  their prerequisite standalone-consistency assertions on constructed substitutions.
  None of those five establishes the intended new product RED.
- [store-linkage](runs/us1-red/store-linkage/run.json): the same genesis setup
  failure before the linkage assertion. This is **not** linkage RED.
- [store-facterror-control](runs/us1-red/store-facterror-control/run.json): exit 0,
  one executed auxiliary action test, actual `used_at` callback failure preserves
  ERROR/UNKNOWN_FACT and a legal fresh bundle control. Read grammar excludes this
  operator; no fictitious read compatibility cell is attributed.

Test-only corrections are required before T012. Runtime source remains unchanged;
original fixture bytes and prior receipts are retained.

- [core-read-contract-corrected](runs/us1-red/core-read-contract-corrected/run.json):
  sixteen preservation tests pass; only the genuine exact-module-binding RED
  remains. Existing first-diff behavior is now tested correctly.
- [store-collection-corrected](runs/us1-red/store-collection-corrected/run.json):
  eighteen tests collected, exit 0, after legal v2 genesis and authoritative read
  identity resealing corrections in test helpers only.
- [store-read-contract-corrected](runs/us1-red/store-read-contract-corrected/run.json):
  nine selected tests: six pass, two are the known read findings, one fails its
  alternate-module admission setup (`CREATE_INCOMPLETE` after adding a field).
  All selected tests ran; the setup failure does not establish schema-order RED.
- [store-linkage-corrected](runs/us1-red/store-linkage-corrected/run.json): exit 0,
  exactly one test. With legal v2 history, existing checks already reject the
  corrupt linkage; this is a preservation control, **not** new RED.
- [store-schema-order-control](runs/us1-red/store-schema-order-control/run.json):
  exit 101 at alternate-module admission before the ordering assertion. A final
  test-only correction remains before the US1 production barrier.
- [store-schema-order-control-corrected](runs/us1-red/store-schema-order-control-corrected/run.json):
  exit 0, exactly one executed ordering control after correcting only the unused
  alternate-module action definitions. Wrong schema wins before the armed history
  fault (zero fault hits); matching schema reaches the fault and returns Backend.

T012 review complete. T009–T011 were collected and exercised on unchanged runtime
source; all intended read regressions and the exact-module check have genuine RED,
and all preservation controls now pass. Test-support mistakes remain retained and
excluded. T013–T016 may now proceed; invocation correction still awaits T022.

## US1 implementation and GREEN

T013/T014: hidden checked Core read helpers retain exact original text/profile and
admitted representation, reproduce complete evidence, then expose actual parser
refusal. Ordinary request construction and complete comparison remain in Core.
T015: Store consumes typed bindings/actual values, preserves schema and full parent
prevalidation, and adds canonical history checking after those prerequisites.
T016: only the live 018 transport-limit assertion is corrected; original test name,
label and archives remain. [Live corrected assertion RED](runs/us1-red/live-read-expectation/run.json)
and [GREEN](runs/us1-green/live-read-expectation/run.json) are retained separately.

All completed US1 GREEN receipts bind runtime digest
`349bb2dd35a918dc6bd6897672ba6b2dfca551b4dfcd56142695bc0ac488b080`
and test digest `22e30b035e37937b11fc0112b48f114643470e8d92a42b5b366e959e8a1d0585`:

- Exact R022-01 and R022-02 each execute one passing test.
- Core feature target: seventeen passing tests, none ignored.
- Store read filter: nine passing tests, remaining invocation-story cases filtered.
- Facade feature target: three passing tests, none ignored.
- Existing Core read/invocation preservation targets: 35 passing tests.
- Existing Store read/invocation/history/conformance targets: eighteen passing tests.
- Canonical `scripts/check-consumer.sh`: exit 0, 53 passing tests. Ordinary empty
  harness/doc targets are not required compatibility coverage.

T017 actual observations are recorded in [partial matrix coverage](matrix-coverage.json).
T018 source/identity/error review is [us1-read-review.md](us1-read-review.md).
F-REPLAY-022-001 has scoped read-path evidence; this does not establish the remaining
invocation/history/protocol stories or final frozen delivery. US2 test work may
proceed; its production still requires T022.

## US2 environment recovery

Disk space exhausted during initial consumer compilation. The
[initial collection receipt](runs/us2-red/consumer-collection/run.json) records
exit 101 before tests. Two concurrent control capture processes failed to finish
their receipts; original stdout/stderr and empty receipt bytes are retained with
explicit [origin-control interruption](runs/us2-red/consumer-origin-controls/interruption.json)
and [false-history interruption](runs/us2-red/consumer-false-history-control/interruption.json)
notes. Seven subsequent exact-name capture attempts could not create directories
and never launched their test commands. None establishes semantic RED or success.

Recovery deleted only reproducible build output in this isolated checkout:
`consumer/target`, `target/debug/incremental`, and
`target/consumer/debug/incremental`, freeing approximately 3.1 GiB. Original fixture
checksums all remain intact. No tracked production source or historical evidence
was removed. Targeted consumer runs now share the existing canonical script's
`target/consumer` build directory to avoid another duplicate cache.

An interrupted Core test-file patch truncated the untracked feature test source.
The Core writer restored its prior seventeen controls by replaying the exact
relevant tool-transcript patches, with pinned rustfmt after each and atomic
replacement. No memory approximation was used. Recovery inputs and the restored
file's SHA-256 are retained in [source custody](source-custody.json). T019 was then
applied atomically, producing 25 tests. This changes no original run or its digest.
The restored/extended tests are re-reviewed and executed before T022.

## US2 pre-implementation evidence

- Recovered [consumer collection](runs/us2-red/consumer-collection-recovered/run.json):
  twelve tests; [origin controls](runs/us2-red/consumer-origin-controls-recovered/run.json)
  and [false-history controls](runs/us2-red/consumer-false-history-control-recovered/run.json)
  each execute one passing test. These negatives are preservation controls, not
  proof that the old implementation checked the historical claim correctly.
- Seven separate facade assertions execute exactly one test each and exit 101:
  [R022-03](runs/us2-red/r022-03-consumer/run.json),
  [R022-04](runs/us2-red/r022-04-consumer/run.json),
  malformed [host](runs/us2-red/malformed-host-consumer/run.json) /
  [intent](runs/us2-red/malformed-intent-consumer/run.json), contradictory
  [host](runs/us2-red/contradictory-host-consumer/run.json) /
  [intent](runs/us2-red/contradictory-intent-consumer/run.json), and
  [truthful sparse availability](runs/us2-red/sparse-truth-consumer/run.json).
  Actual producer bytes, coordinate, Core match and canonical authority controls
  succeed before the Store-match assertion fails. These are semantic RED.
- [Core collection](runs/us2-red/core-collection/run.json) and
  [Core control suite](runs/us2-red/core-contract-controls/run.json): 25 tests,
  all pass, none ignored. Prior controls are restored from exact patch content;
  new source/stage/context/availability/nested/metadata controls are preservation
  evidence under unchanged Core invocation semantics.
- [Store collection](runs/us2-red/store-collection/run.json): 42 tests. Initial
  [claim setup](runs/us2-red/store-claim-setup-control/run.json) fails admission of
  an effectless registration action; it is test-support failure. Adding a legal
  self-assignment in that test model yields a passing
  [genuine setup control](runs/us2-red/store-claim-setup-control-corrected/run.json).
  It establishes ordinary actual Store replay, accepted sparse availability and
  real registered query evidence before testing historical claim correction.
- [Store contract suite](runs/us2-red/store-claim-contract/run.json): sixteen
  passing controls, 26 semantic failures, none ignored. Each failing claim test
  establishes accepted Snapshot plus matching Core reproduction first. Truthful
  claims fail Store matching; substituted/uncheckable claims fail the assertion
  that Store identifies the retained historical claim rather than rejecting a
  different invocation origin. [Exact value guard RED](runs/us2-red/store-value-claim-guard/run.json)
  and [positive/query guard filter](runs/us2-red/store-positive-claims/run.json)
  are retained separately. Atomic-rejection loop cases stop at their first failing
  Store assertion; later members are not inferred as executed baseline coverage.

All US2 semantic runs above precede any invocation production edit and bind the
US1 runtime digest `349bb2dd35a918dc6bd6897672ba6b2dfca551b4dfcd56142695bc0ac488b080`.
T022 review complete: T019–T021 source is collected, relevant RED and controls are
retained, and original four finding receipts remain separate. T023–T031 may now
proceed. Evaluated-body callback error channels must remain in the existing Store
execution route; new archived-claim direct loading does not replace them.

Append actual receipt links and assertion interpretations as work proceeds; never
prefill successful counts or closed findings.

Final delivery results are external to the frozen checkout as specified by
`validation-location.md` when created. Track T050–T053 completion there rather
than modifying this report or frozen task checkboxes after final validation.

## US2 implementation and GREEN closure

Runtime source digest `638cc154c24b3854cd6b826b1a078236eed308d9b9fef58557bc8058f427e6b4`; test digest `7b62838cb4b075397175d36f17624f5a9bc068df22a99e95073bfb4b9f3b5e4c`. All nine US2 GREEN commands exit zero. Core 25, Store 42, facade 12, bundle probes 2; exact R022-03 and R022-04 each execute one test. Core preservation 34, Store preservation 35 and canonical consumer 62 substantive tests pass. No ignored tests. See [scoped invocation review](us2-invocation-review.md) and individual `runs/us2-green/*/run.json` receipts.

Removed only the isolated checkout incremental build caches after these commands completed to retain disk space for subsequent validation. No source, fixture or evidence changes were made by that cleanup.

## US3 controls in progress

Core preservation collects and passes 31 tests (`us3-controls/core022-collection`, `core022-preservation`); consumer collects and passes 16 (`consumer-collection`, `consumer-complete`). These are preservation evidence, not new semantic RED.

The first authority-probe build failed because test support used a private field, nonexistent hash helper and an incorrect comparison type. The next two runs exposed an invalid test command-stream field and a missing invocation identity prefix. These are setup/control-construction failures, not Core defects or test-first evidence. Correcting only test support yields `us3-controls/authority-probes-identity-corrected`: four passing probes, including authentic fresh command ALLOW/bundle construction, unchanged captured 0.7 inner decision, current replay, malformed/nonmatching evidence, evaluation error and decode refusal. Parent cache certificates are checked against exact committed history; zero canonical writes or fresh replay bundles are required. The constructed enclosing archived wrapper is a new test control, not claimed as original captured wrapper bytes.

Scheduling deviation: T039/T040's runner test-first lane began before full T038 dynamic inventory reconciliation. The coordinator had independently confirmed the unchanged 19 captured runner cases and their 38 boundaries; the genuine baseline RED binds that stable subset. No fixture expectation or source correction was moved ahead of a RED barrier. Full T038/T043 coverage remains unclaimed until reconciled. This limited parallel scheduling deviation is retained explicitly rather than backdating a task's completion.

## US3 collected preservation closure (T033–T037)

`us3-controls/store-collection` collects 55 integration tests; `store-contract` retains 53 passing controls and two setup/assertion-support failures. Decimal read setup omitted required reference evidence, and an ordinary evaluated record was compared to the wrong literal outcome category. Neither is product RED. After test-only correction, `store-contract-corrected` passes all 55 with none ignored. A separate exact decimal-control run is retained. The test executes 108 original 018 archive cells across original head, later writes and real migration, plus independent coordinate/equal-state, canonical enumeration and optional-index controls. Evaluator Used callback replay produces Ok(nonmatch), while direct accepted-claim loading failure remains Err(Backend); actual operation probes establish both paths. Genuine rejected-Snapshot replay omits an unneeded entity read while still performing independent history checks.

Together with 31 Core, 16 consumer and four unit authority probes, all 106 collected story controls now pass. The new historical action-profile corpus and final exhaustive coverage/protocol reconciliation remain additional required work; this checkpoint alone does not complete T038–T053. No in-scope production defect was discovered by these preservation controls.

## Protocol test-first lanes (T039–T042)

The stable captured runner slice has exactly 19 originals and 38 boundaries. Retained executable baseline RED lanes are `protocol-red/runner/actual-baseline` (real canonical 018 runner passes its positive control but lacks 022 coverage), `protocol-red/checker/existing018-baseline` (old checker accepts its 018 positive before rejecting valid mocked 022 output), and `protocol-red/hook/existing-parent-baseline` (all old operations succeed with the new checker present, but no call occurs). These are coverage/integration RED, not Core semantic defects or missing executable failures.

A separate new custody guard gets its own runnable RED at `protocol-red/checker/fixture-custody-candidate`: the working candidate catalog accepted a copied semantic fixture with changed whitespace bytes. Only then was exact checksum refusal added. `protocol-green/checker/candidate-protocol` passes 19 output modes plus missing/changed-fixture negatives; `actual-twice-run` passes two actual no-mock 38-cell executions. `protocol-green/runner/actual-candidate`, `hook/candidate` and `all-candidate` pass their own subjects. Real runner emits actual ReplayResult, with 35 matches and three expected historical-claim nonmatches; no canned output or protocol mocks establish replay truth.

The existing live 018 hook test sandbox needed one harmless 022 stub to keep its old isolated subject runnable; `protocol-support/legacy018/unadapted-sandbox` is a missing-file support failure, not RED. Both `protocol-green/legacy018/before022-hook` and `isolated-sandbox-candidate` pass unchanged 018 assertions/labels/digests. The real parent adds one failure-propagating 022 hook without replacing its prior checks. Each protocol detail receipt records exact subject/harness hashes and actual statuses. Full inventory reconciliation and final gates remain separate.

## Additional complete action profile controls

New `archive_action_profiles022` controls use an independently proven original pre017 producer binary and clean exact `932eb8188dc28393213491e27f66e3bc7e273a6b` source. Captures emit genuine 0.4–0.7 records rather than retagging current output. All 12 historical plus three current ALLOW/DENY/ERROR combinations pass Core and Store invocation, giving 30 profile/outcome cells, plus real coordinate/source input guard: 16 tests in `us3-controls/archive-action-profile-outcomes`. Separate original-producer receipts and the archive-actions manifest retain lineage and 58 file checksums. Initial capture-model missing command_effects and bound-known existence observation failures are setup-only; no bad partial archive was overwritten or called semantic RED.

Prefreeze initial clippy rejected two unnecessary reference clones in new Core test support. The Core writer replaced those with std::slice::from_ref without changing production semantics. Final tooling validation remains required against the complete source.

## Inventory and custody closure (T038–T044)

The final reviewed source inventory has 224 applicable feature cells, 468 inherited018 cells, 62 unsupported/admission controls, 14 separate atomic Snapshot-positive auxiliary cells and 18 protocol cases. [Coverage reconciliation](matrix-coverage.json) attributes all786 IDs to actual successful named tests/branch assertions or actual runner rows; the three intentional baseline protocolREDs remain labeled as retained expected failures. No required case is inferred from a zero-test, ignored, skipped, setup-failed or failed overall run. Four Store-read N/A cases have explicit code/contract explanations; their invocation counterparts remain exercised. Assertions can jointly discharge overlapping obligations, but required IDs are unique. Repeated execution is not counted as additional coverage.

All19 original runner members,38 rows, expected results, profile/DV/identity and original40 record/setup/attempt bytes are unchanged. The initial41-file checksum manifest and original README are separately preserved. Current100-file checksum coverage includes the updated explanation and59 additive action-capture files. Sourcecustody verifies protected facade/Backend/schema/hash/serialization/toolchain files plus016/017/018/019–021 reports, archives and verifier implementation unchanged. Current Core32, Store57, archive16, facade16 and authority4 targeted tests pass; setup-only corrections remain retained separately.

The supplemental U06 read-definition .1/.2/.3/.5 guard first failed because test support asked a declared-row capture manifest for an ad-hoc definition hash. Using the unchanged full018checksum authority establishes all four genuine refusal assertions in `core022-supplementary-preservation-corrected`. No runtime correction resulted.

## Full targeted validation and independent review

All current full targeted runs pass: Core129, Store157, privateauthority4 and canonical facade66 substantive tests, none ignored; complete candidate protocol29 subprocess controls passes after updated100-file custody. Actual356 test executions are separately retained under `runs/us3-green/`. Property iterations/repeated cells/zero-test auxiliary targets are not inflated into the count. Coverage generation was rerun against these actual outputs and attributes all786 reviewed dispositions without missing/unexpected/duplicate required IDs. See [historical review](us3-history-review.md).

The independent [targeted re-audit](targeted-re-audit.md) finds no bounded production contradiction and separately addresses both findings. Final O022-14 is explicitly not established until frozen-revision gates and the exact-revision consumer run. Root's later README custody update is qualified: original40artifact files unchanged, originalREADME/41-member manifest separately retained; current100-file view is additive and explained. Build-cache cleanup removed only completed compiler output after checking no rustc was active, preserving source/evidence.

The separate consumer/protocol writer additionally reviewed all six changed production boundaries independently; [boundary review](independent-boundary-review.md) finds no blocker, records exact file fingerprints, and leaves O022-14 pending. No production/test edits followed either independent review.

## Pre-freeze bookkeeping complete

T001–T049 are complete with retained scope/evidence. Final clippy exits0 (`pre-freeze/clippy-final`); pinned fmt, feature/docs link checking, all100fixture digests and git diff --check pass. Both independent source reviews find no in-scope blocker and preserve external premises. Post-implement extension-hooks file is absent. Final tasks T050–T053 remain intentionally unchecked in trackedsource and are completed only in the immutable external candidate receipt. No report embeds its own containing commit SHA.

## Final staging evidence-format correction

The first staged diff check exposed exact Cargo stdout terminal blank lines and a
required space-prefixed blank context line in a retained literal recovery patch.
The earlier unstaged check did not include untracked evidence, so it did not
establish whitespace cleanliness of the complete candidate. Runtime, test,
fixture and original receipt bytes remain unchanged. Scoped Git attributes now
exclude only terminal blank-line checks on raw stdout and whitespace checks on
literal recovery patches, preserving byte custody; ordinary source/scripts/docs
retain their full checks. The implementation commit preceded this packaging
correction and is not the frozen delivery candidate. The subsequent finalized
commit receives its own complete final gates/consumer validation.
