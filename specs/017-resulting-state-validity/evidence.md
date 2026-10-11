# Implementation Evidence: Core017

Status: US1–US4 and integrated polish implemented with scoped GREEN evidence;
canonical candidate gates, exact-revision consumer and final-head checks pending.

The owning checkout is `behavior-ir-core-017`, branch `017-resulting-state-validity`,
origin `git@github.com:kallistoteles/behavior-ir-core.git`. It was clean at start
(commit `932eb8188dc28393213491e27f66e3bc7e273a6b`).

[Baseline](evidence/baseline.json) records source/test digests and the pinned
Rust 1.98.1 / Nix environment. The specification base is
`5949cb111cd6c5af34b0fc9083e78810df450fce`; audit016 is immutable at
`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.

Requirements review remains 13/16 checked. CHK003/CHK013/CHK015 are joint-review
items and remain untouched. The user's standing instruction authorizes proceeding
without another approval request; this does not constitute independent review.

The two analysis findings are corrected in task sequencing before production
changes: new root-cause RED before foundational code; explicit current-policy
consumer adaptation before the US2 checkpoint. Full canonical consumer success
is a final integrated-candidate obligation.

No extension registry exists. Existing Git ignore patterns cover Cargo targets,
Python caches, environment files and logs; no other build-tool ignore files apply.
Implementation evidence uses `.txt` logs so it is reviewable and tracked.

## Setup checkpoint (T001–T004)

The archive worker captured baseline decisions, standalone/nested replay,
read-v2 and committed command evidence before production edits. The root agent
independently verified all 315 baseline file digests, 546 historical fixture
digests and 42 captured artifact digests against the
[archive manifest](../../../tests/fixtures/resulting-state-validity/archive-manifest.json).
Its SHA256 is `22ac55b27f02f03d99e09a8f28609600f643f34b85681297bb7375383725e771`.
The baseline counterexample was ALLOW and committed, while the independent
membership predicate demonstrated an invalid child. The valid-create control
committed and remained valid. These are historical capture results, not new
remediation GREEN tests. Requirement mapping and the
[execution protocol](evidence/protocol.md) now exist; no production code changed
at this checkpoint.

## Test-first foundation checkpoint (T005–T007)

The root agent reviewed the independent predicates and accepted ordering/profile
assertions before production changes. Actual pinned-Nix final baseline runs:

| Target | Executed | Passed controls | Intended failures | Ignored |
| --- | ---: | ---: | ---: | ---: |
| Core validity | 4 | 2 | 2 | 0 |
| Store validity | 3 | 1 | 2 | 0 |
| Core ordering | 6 | 1 | 5 | 0 |
| Core profiles | 11 | 2 | 9 | 0 |
| Core schema availability | 2 | 0 | 2 | 0 |

Both Store negative profiles committed an invalid child and failed the direct G3
membership predicate. Core controls cover valid creation and an admitted
identity-assignment no-op; Store's command-profile control uses a legal v2
genesis. See [root/order runs](evidence/runs/foundation/tests-seed/summary.md) and
[profile runs](evidence/runs/foundation/profiles-seed/after-fixture-correction/run.json).
Initial fixture compilation/admission/history-format failures are retained and
excluded from semantic RED. Some deep codec assertions are behind the initially
failing version assertion; their individual rejection paths must execute at
GREEN, and are not each claimed as independently observed RED.

Immediately before the first production edit the root agent independently
verified every T001 baseline file digest was unchanged. Production work now
starts with private execution purpose and complete-parent capture. The complete
child validity defect remains deliberately unfixed during foundation.

## Foundation readiness (T008–T012)

Private Current/Archived execution, complete-parent capture/refusal provenance,
closed decision0.8 codec and schema are integrated. All 11 profile and 2 schema
tests pass. Seven original decision0.4–0.7/read-v2 replay controls reproduce their
archived results with a rebuilt CLI, including the old invalid ALLOW.
[Codec/archive runs](evidence/runs/foundation/record-codec-archive/run.json)
retain exact commands, output and digests; original0.7 constructor/validator
bodies and schema are unchanged.

[Integrated runs](evidence/runs/foundation/integrated/run.json) still show the
two Core and two Store audit failures and four canonical-order failures, with
passing valid controls. They are deliberately retained for US1. The public
surface script and admission fixtures pass. Canonical tagged hash vectors pass;
an existing test that creates a fresh decision and expects historical0.5/0.6
fails on the deliberately new0.8 header. Its archive/fresh harness adaptation
belongs to US4; this is not a hashing-algorithm defect or a green workspace gate.
Foundation readiness is a scoped checkpoint, not delivery or audit closure.

## US1 reviewed RED barrier (T013–T016)

Before complete-child production edits, the root reviewed the independent finite
model, direct membership/Ref/aggregate predicates, lifecycle and first-failure
assertions. Compiled/admitted runs collected Core validity 14 (7 passing
controls, 7 failures), Store validity 7 (2 controls, 5 failures), ordering 6
(2 controls, 4 failures), and properties 9 (3 controls, 6 failures in both
language profiles). The old fresh characterization has 1 selected failure;
9 unrelated tests are intentionally filtered in that targeted run. Source
manifests confirm production unchanged throughout those runs.

See `evidence/runs/US1/tests/summary.md` and
`evidence/runs/US1/properties/both-profiles/run.json`. The query replay failure
is genuine: parent field facts held a child value. This newly observed defect
is corrected alongside child coverage; comprehensive unbound observation
routing remains US2. No assertion or archive is weakened.

## US2/US3 checkpoints

[US2](evidence/US2.md) records exact boundary/verifier/consumer GREEN, current
policy adaptation and remaining historical command-demo and partial-input harness
failures explicitly assigned to US4. [US3](evidence/US3.md) records reviewed
pre-change RED, exact-profile cache/snapshot implementation and integrated GREEN
controls, including actual backend counters and excluded setup/harness errors.
Neither checkpoint is a green full workspace gate or historical validity claim.

The separately captured [signed original event](evidence/runs/US4/signed-archive08-baseline/summary.md)
uses the original source and genuine verifier0.8.0 signatures. It supplements,
without replacing, the initial immutable archive. It is historical evidence,
not a current certificate. US4 production remains unchanged while root-reviewed
new regressions execute.


## Integrated implementation and polish (T047–T063)

[US1](evidence/US1.md), [US2](evidence/US2.md), [US3](evidence/US3.md) and
[US4](evidence/US4.md) record the actual reviewed RED/GREEN barriers, controls,
profile/identity matrix and setup limitations. Current ordinary paths use the
complete-child schedule and decision08. Archived replay/recovery reproduces the
original profiles read-only, including invalid historical ALLOW; old authority
never becomes a new live candidate or Current cache certificate.

Required [metamorphic properties](evidence/runs/polish/metamorphic/README.md)
execute three Core tests and the bounded Store property:16 seeds×two real index
modes×seven cold/warm probes, including full record and transition/bundle hashes.
An independent count12 and actual indexSome/None counters avoid a vacuous toggle.
Existing release stress tests remain ignored and are never counted as passing.

The new determinism harness first observed the unchanged invocation gate accepting
an archived profile as fresh action evidence. Actual corrected protocol tests and
[real CLI runs](evidence/runs/polish/T063/corrected-cli-and-units/run.json) pass:
five independent Current cases,106 immutable archived replay cases, all existing
history/invocation/command/verification checks,19 admission/hash tests and the
unchanged138-item public surface. The first real CLI attempt exposed an incorrect
gate exit-code expectation(ERROR is3), which was corrected with its mock; a
misspelled test target was a setup error. Neither is a Core defect or semantic RED.
Concurrent unrelated test/schema edits are disclosed by capture manifests; final
candidate gates must bind the integrated tree.

The original broad Store run is retained as297PASS/10FAIL/19existing ignored.
Targeted adaptations preserve independent arithmetic/index/history oracles and
use the new canonical witness/read keys. The discovered
[wrapper-schema integration](evidence/runs/US4/wrapper-schema-green-reviewed/summary.md)
has actual compiled RED before the minimal canonical-ref/known-verifier09 fix;
all20 trusted-governance cases now pass. Historical branches and closed unknown-field
refusal remain intact. This does not close the separate RC-002 audit findings.

[Archive integrity](evidence/runs/polish/archive-integrity/verification.json)
independently verifies545 original semantic/support fixture bytes,42 initial
captures,106 compatibility records and63 genuine signed archival artifacts.
The fixture navigation README is the sole disclosed documentation-only exception;
its original digest remains in the unchanged546-entry baseline manifest.

The targeted re-audit establishes the Current runtime correction conditionally on
canonical inputs and the existing backend/solver contracts. Universal formal proof,
independent requirements review, broader O-VERIFY-008 and the separate read/replay/
creation-failure/version/quality remediation branches are not claimed complete.
The feature requires a future minor release; no release number, tag, merge or
ecosystem dependency update is performed here.


The release-check clean-smoke input also needed complete Current parent facts.
Its [actual RED/GREEN](evidence/runs/polish/T063/release-smoke-green/run.json)
executes precisely Step4 with the compiled CLI in an empty environment. Only a
temporary request gains the explicit fixture Invoice row and empty User inventory;
historical fixture bytes are unchanged. The independent expected child refusal,
typed invariant witness and strict replay pass. No release build, skipped-gates
release check, tag or publication was performed.


## Candidate provenance (T064)

The precommit [source/test/fixture manifest](evidence/runs/candidate/source-test-fixture-manifest.json)
binds every production crate, consumer harness, schema, gate script and fixture,
plus pinned Cargo/Nix/toolchain/public-surface metadata. Explicit staging is limited
to this feature's reviewed file list. Full candidate SHA and push evidence will be
recorded after the commit; canonical gates and exact Git-revision consumer remain
mandatory before completion. PR16 remains draft. No sibling worktree or ecosystem
pin is staged, merged or released.
