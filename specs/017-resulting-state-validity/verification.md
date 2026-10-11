# Verification Coverage: Core017

**Status**: Setup coverage established for T003. Every new remediation test and
runtime gate listed below is future work: not authored, collected or executed by
this document. No finding or proof obligation is closed.

**Authority**: [specification](spec.md), [tasks](tasks.md),
[decision contract](contracts/decision.md), [profile contract](contracts/profiles.md),
[data model](data-model.md) and [proof obligations](correctness.md).
[Implementation evidence](evidence.md) and [baseline](evidence/baseline.json)
identify the actual checkout and source digests. The immutable audit remains at
`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`; the specification base is
`5949cb111cd6c5af34b0fc9083e78810df450fce`.

## Evidence states and execution barriers

`Planned` means a named oracle and future run exist in this coverage map. It does
not mean a test file exists or an assertion has passed. `Collected` requires an
actual nonzero test listing. `Observed RED` requires compiled tests to execute
and fail at the intended semantic assertion, with positive controls inspected.
`Observed GREEN` requires the same intended cases to execute successfully on the
identified implementation. An existing passing control is never relabeled RED.
Compilation failures, missing targets, ignored tests and zero selected cases do
not establish either semantic RED or GREEN.

T005/T006 tests and T007 observed root-cause/order/profile RED precede every
foundational production change. T012 must retain the intentionally unfixed
child-validity/order evidence; codec readiness is not validity remediation.
Subsequent US1–US4 changes have their own collected RED barriers. Task completion,
independent review, required gates and finding disposition are separate facts.
The evidence protocol is produced by T004; every run must retain source/test
digests, exact pinned-Nix command, collected/executed/ignored/filtered counts,
controls, assertion output and exit status.

## Independent oracles and disclosed shared helpers

| Oracle / helper | Independence and required use | Evidence state |
| --- | --- | --- |
| Audited membership predicate | Independently apply creation to the valid parent `E#e0.target="new"`; new membership makes `not exists(e0.target)` false. The proposed child predicate is computed without asking any validator which rows to inspect. Fresh evaluation must DENY/CONSTRAINT_VIOLATED; no invalid commit is allowed. A fresh identity absent from every survivor's target is the positive control. | Original016 counterexample established; new017 regression Planned |
| Finite child model | Reconstruct every parent key/value and apply all updates/creates/removals simultaneously in a test-owned mapping. Check concrete membership, arithmetic and reference predicates independently of the production validity verdict, affected set and validation cache. Removed entities have no child obligations. | Planned, T015/T016/T021 |
| Canonical witness oracle | Test-owned ordered cases choose the first false/erroring entity obligation: decoded type/Id UTF-8 bytes, per-entity invariants then constraints, semantic declaration keys with declared before synthesized. Compare typed subject/declaration and reached evidence, not a formatted label alone. | Planned, T006/T007/T018–T021/T061 |
| No-authoritative-mutation oracle | Capture canonical head/history/schema, entity versions, live keys, reference edges and committed command occurrences before refusal. Compare them after attempted fresh work. Observe actual durable history separately when acknowledgment is lost. | Planned, T006/T014/T024/T039/T048 |
| Frozen bytes/identities | Digest original fixtures before production changes; archive reproduction compares original bytes, record/wrapper identities, schema/history position and command occurrence identities. New evidence-derived identities are compared only within the same profile. | Manifest capture T002; actual checks Planned |
| Private `full_child` | Existing `crates/behavior-store/src/store/incremental/tests.rs` reconstructs rows and Ref edges without affected sets or cached indexes, but uses production `check_behavior_snapshot` for its verdict. It is independent reconstruction, not an independent validity implementation. Pair it with direct model predicates. | Existing helper inspected; new017 execution Planned |
| Full/cache differential comparison | Same-profile paths must agree on result, canonical first witness, typed observations, derived evidence and record identity. Shared expression/snapshot helpers are disclosed; agreement cannot rule out a shared omission. | Planned, T037–T046 |
| Verifier correspondence | Compare supported symbolic prefixes/assumptions with actual runtime witnesses and independently identified predicates. Unsupported complete-world claims remain INCONCLUSIVE; no legal false PROVEN case is inferred from the audit. | Planned, T025/T030–T036 |

The original audit source and actual failing run linked in spec.md establish the
existing defect. They do not establish017 test-first compliance or universal
correctness. A later STATE_INVALID read corroborates invalid state but cannot
undo an invalid commit. The existing
`nonlocal_creation_preserves_014_refusal_boundary` characterization currently
asserts bad current commitment; T014 replaces its fresh expectation while T002
preserves the old ALLOW separately as archived computation evidence.

Entity rules use admitted `exists`/`referenced` and transitive derived dependencies.
Query/aggregate tests use admitted action/global scope. No test relaxes admission
or introduces currently prohibited entity-query syntax.

The agreed test product for a new child-validity trace step is
`subject: {entity,id}` and `obligation`. A declared obligation has exact keys
`{kind,source:"declared",name,hash}`; a synthesized Ref obligation has
`{kind:"constraint",source:"synthesized_reference",entity_declaration,field,hash}`.
Its descriptor hash matches `trace.hash`. The subject identifies the actual
SPrime entity, not an invented action parameter. Foundation tests assert these
products using existing JSON-facing APIs before the new codec/scheduler exists.

## Requirement coverage

All rows currently have evidence state **Planned**. Source review, archived audit
evidence and this mapping do not convert any row to implementation verification.

| Requirement | Story / contract / proof | Future test and run coverage | Acceptance oracle |
| --- | --- | --- | --- |
| FR-001 complete child validity | US1; decision inputs/outcomes; P1/P2 | Core/Store resulting_state_validity; resulting_state_properties; T006/T007, T013–T022 | Every successful reconstructed child satisfies every required obligation; independent audit predicate |
| FR-002 check or prove unaffected | US1/US3; complete schedule; P2/P3/P4 | Lifecycle/nonlocal/global corpus, private dependency/reference tests and reuse tests; T013/T015/T019/T038/T043–T046 | Unknown dependency is affected; no uncovered survivor omitted |
| FR-003 refuse audited creation | US1; decision outcomes; P2 | Core/Store root-cause cases and fresh characterization; T006/T007/T014/T021/T022 | DENY/CONSTRAINT_VIOLATED before success/bundle/commit, unchanged authoritative parent |
| FR-004 every current ordinary path | US1/US2; profile matrix; P2/P4 | Plain/observed/provider, intent/invocation, Store evaluate/invoke/rederive/commit and facade; T023–T029/T035 | Equivalent canonical inputs satisfy the same validity guarantee; no provisional bypass |
| FR-005 existing phase/category | US2; outcome/precedence contract; P3 | resulting_state_order and boundary tests; T006/T007/T023–T028 | Postcondition priority; existing DENY/reached ERROR categories; unrelated stages retain placement |
| FR-006 lifecycle/dependency matrix | US1/US3; coverage constraints; P1/P2 | Creates/updates/removals, survivors, derived aliases, refs, globals, no-op/empty types/command-only and invalid parent; T013–T016/T038 | Simultaneous child; removed rows absent; valid controls succeed; admitted scope only |
| FR-007 reuse is optimization | US3; equivalence boundary; P3/P4 | resulting_state_reuse and private guard/oracle tests; T037/T038/T040–T046 | Same required semantic result/evidence; conservative eligibility and full fallback preserved |
| FR-008 exact evidence binding | US2/US3; exact input model; P4 | Forged/stale bundles, schema/Behavior/profile/history substitutions, same StateId at different positions; T024/T037–T044 | No mismatched proof reuse; historical freshness/refs/authorization/CAS remain mandatory |
| FR-009 promotion only after commit | US3/US4; evidence lifecycle; P4 | resulting_state_commit_faults, commands, recovery/history cases; T039/T045/T048/T053 | Refusal/CAS/non-application publish nothing; durable lost-ack classified through exact history |
| FR-010 explicit compatibility/version matrix | US4; profiles and identity matrix; P5/P6 | Profile/schema, nested/Store/command readers, current verifier/policy/reporting; T005/T008–T012/T025–T035/T047–T059 | Correct fresh0.8 versus archived0.4–0.7; versions/provenance explicit, no guessed dispatch |
| FR-011 immutable history | US4; archive contract; P5 | Archive manifest, byte/hash goldens, original read/migration/occurrence controls; T002/T047–T059 | Original bytes/meaning unchanged; new evidence has deliberate identity consequences |
| FR-012 independent evidence | US1/US3; oracle disclosure; P1/P2/P4 | Concrete membership/model predicates alongside reconstruction/differential tests; T006/T015/T021/T046 | Neither shared-validator equality nor passing bad characterization counts as preservation |
| FR-013 scoped verifier promise | US2; correspondence contract; P6 | resulting_state_order/governance verifier tests and existing preservation/error/query controls; T025/T030–T036/T062 | Exact prefix/assumption/witness scope; conservative INCONCLUSIVE; no invented false PROVEN claim |
| FR-014 error provenance | US2/US3; equivalence/errors; P3/P4 | Actual provider failures, unreachable errors, backend/CAS/non-application/lost-ack controls; T023/T024/T039/T040/T045 | Keep semantic false/error/input/backend categories and mandatory trust obligations distinct |
| FR-015 canonical semantic order | US2; decision/data-model ordering; P3 | resulting_state_order/metamorphic plus backend enumeration/index tests; T006/T018/T020/T061 | Decoded identity bytes, invariants then constraints per entity, semantic descriptors; no diagnostic/layout order |
| FR-016 same-profile first failure/evidence | US2/US3/US4; equivalence/profile contracts; P3/P4/P5 | Mixed false/error cases, cache/backend/layout permutations, typed witnesses and same-profile replay; T021/T023/T037/T047/T061 | Earliest canonical failing obligation wins; no global ERROR-versus-DENY rank; evidence preserved |

## Story and success-criterion checkpoints

| Story / scenarios | Required outcomes | Task checkpoint / planned evidence |
| --- | --- | --- |
| US1.1–3 | Audited refusal, independently valid successful controls, every admitted lifecycle/nonlocal/global affected obligation discharged | T021/T022; evidence/runs/US1 and evidence/US1.md |
| US2.1–7 | Every boundary, postcondition priority, reached errors, canonical cross/same-entity failure, enumeration/cache stability and metadata-neutral semantic keys | T035/T036; evidence/runs/US2 and evidence/US2.md |
| US3.1–3 | Exact justified reuse, conservative fallback, conflict/non-application versus actual durable lost-ack without speculative promotion | T045/T046; evidence/runs/US3 and evidence/US3.md |
| US4.1–5 | Immutable original reproduction, invalid old parent refused fresh, same-profile controls, obsolete uncommitted bundles refused/exact recovery read-only, no old-Wire fresh bypass | T057/T059; evidence/runs/US4 and evidence/US4.md |

| Success criterion | Measured disposition required | State |
| --- | --- | --- |
| SC-001 | Zero successful invalid audit transitions/commits; valid parent/candidate controls execute; direct unchanged-row predicate recorded | Planned |
| SC-002 | All supported entrypoint/lifecycle cases and mixed-error/permutation controls execute with zero unexplained semantic differences | Planned |
| SC-003 | Every successful corpus child is independently reconstructed and satisfies direct/transitive/global/reference predicates; shared helpers disclosed | Planned |
| SC-004 | Invalid refusals produce zero authoritative child/history/commands; conflict/non-application/lost-ack controls prove their separate outcomes | Planned |
| SC-005 | Every compatibility row executes; archive bytes/identities match; every new profile/evidence/verifier/version consequence named | Planned |
| SC-006 | Scoped propositions, construction/invariants, tests, assumptions and gaps assigned separately to the three audit obligations | Planned |

## Current and archived execution coverage

This table applies [the profile contract](contracts/profiles.md), rather than
letting caller input select an optimizer or a historical evaluator. Every future
case remains **Planned** until actual run/fixture evidence is attached.

| Boundary / input | Expected computation and result | Required control / planned target |
| --- | --- | --- |
| Fresh plain/observed/provider/intent/action invocation, Wire0.1–0.8 | Corrected decision0.8/complete_resulting_state.v1; audit creation denied, complete valid controls allowed | Core validity/profiles/boundaries; Legacy and CommandIntents inputs |
| Fresh Store evaluate/invoke/current rederive/live commit | Corrected exact-parent computation; invalid child cannot produce a live bundle or commit | Store validity/boundaries; stale/forged candidates and no-mutation snapshots |
| Fresh operation at a historical position | Current corrected computation under exact historical inputs; old position does not request archived behavior | Store history; past invocation yields no live candidate |
| Standalone replay of decision0.4–0.7 | Original archived result/bytes, including old audited ALLOW; no claim of valid complete child | Frozen archive manifest and Core profiles; original inputs need no newly invented universe |
| Standalone replay of decision0.8 | Corrected same-profile result/evidence from complete archived parent/history facts | Core profiles/schema; missing/contradictory universe and typed subject tampering |
| Nested action invocation replay | Nested validated decision profile; original outer bytes/identity; no writes/dispatch | Core profiles and Store history; wrapper/nested substitutions |
| Nested read replay, read-v1/read-v2 | Existing read profiles, unchanged by017 | Existing read goldens/replay controls; no claim to close018 |
| Store behavior/history/invocation replay | Each original decision profile and exact historical schema/position; read-only reproduction | Store history/command-history, schema/position substitution controls |
| Old uncommitted allowed bundle | Refuse new live commitment; require current fresh evaluation and renewed exact-candidate authority | Store history and governance tests; no legacy replay-to-commit bypass |
| Exact durable event recovery | Return original already:true event without a write, occurrence duplication or current cache promotion | Store history/fault tests, before/after history/cache/command snapshots |
| Already-invalid archived parent | Preserve archive, refuse fresh ordinary work; no automatic repair/adoption | Store history; original old ALLOW remains old ALLOW |
| Unsupported/missing/conflicting new markers | Explicit codec/input refusal or replay mismatch; no guessed legacy fallback | Core profiles/schema; both module branches and actual malformed inputs |
| New command/non-command decision readers | Strict version-first0.8 pairing; same command bag multiplicity and existing occurrence formulas | Store command-history/governance; non-command records cannot evade closed decoding |
| Current versus archived verifier/policy evidence | Current0.9 supported scope; earlier envelopes archival, never implicitly current authority | Verifier order/governance and facade policy controls; new policies have exact hashes |

BehaviorHash, SchemaHash, semantic item identities, StateId, Wire/admission, read
and migration interpretation, backend methods and public API signatures retain
their contracts. Newly produced decision-derived invocation/transition/history/
occurrence identities can differ because the new evidence differs. Tests must
compare profile-appropriate identities, rather than incorrectly demanding old
and new decision bytes be identical.

## Future collection and actual run registry

Paths and names in this registry are proposed test outputs. No expected name,
listing or count is a report that the test currently exists. Record actual
collection names/counts at each barrier and update this map when an assigned
author chooses additional names. Every selected target must have nonzero
executed cases and zero unexplained ignored/filtered acceptance cases.

| Run group | Target names / scope to collect | Initial evidence destination | State |
| --- | --- | --- | --- |
| Foundation T005/T006/T007 | Core resulting_state_profiles, resulting_state_schema, resulting_state_validity, resulting_state_order; Store resulting_state_validity | evidence/runs/foundation | Planned; root/order RED precedes T008 |
| US1 T016/T021/T022 | Core validity/order/properties; Store validity and corrected fresh incremental characterization | evidence/runs/US1 | Planned |
| US2 T027/T035/T036 | Core/Store resulting_state_boundaries; verifier resulting_state_order/governance; facade resulting_state_validity; existing verifier controls | evidence/runs/US2 | Planned; full integrated consumer GREEN not claimed here |
| US3 T040/T045/T046 | Store resulting_state_reuse/resulting_state_commit_faults; private incremental/dependency; existing reuse/lifecycle/concurrency/commands | evidence/runs/US3 | Planned |
| US4 T050/T057/T059 | Core profiles/schema; Store resulting_state_history/resulting_state_command_history; original/current conformance and governance | evidence/runs/US4 | Planned |
| Cross-cutting T061/T063 | Core resulting_state_metamorphic; required Store query_order_props; script test_resulting_state_determinism | Evidence linked by final evidence.md | Planned; any new defect needs its own RED before fix |
| Gates T065 | Exact committed candidate; canonical scripts/gates.sh | evidence/runs/gates | Not run |
| Revision consumer T066 | Exact pushed FULL_CANDIDATE_SHA; canonical check-consumer.sh --rev | evidence/runs/consumer | Not run |
| Final head T068 | Actual final PR16 head and required CI checks | Final evidence.md | Not checked |

After the proposed targets are written, collection/execution commands include:

```bash
nix develop -c cargo test -p behavior-core --test resulting_state_validity -- --list
nix develop -c cargo test -p behavior-core --test resulting_state_validity -- --nocapture
nix develop -c cargo test -p behavior-core --test resulting_state_order -- --list
nix develop -c cargo test -p behavior-core --test resulting_state_order -- --nocapture
nix develop -c cargo test -p behavior-core --test resulting_state_profiles -- --list
nix develop -c cargo test -p behavior-core --test resulting_state_profiles -- --nocapture
nix develop -c cargo test -p behavior-core --test resulting_state_schema -- --list
nix develop -c cargo test -p behavior-core --test resulting_state_schema -- --nocapture
nix develop -c cargo test -p behavior-store --test resulting_state_validity -- --list
nix develop -c cargo test -p behavior-store --test resulting_state_validity -- --nocapture
```

Existing `scripts/gates.sh` executes workspace tests but not the excluded
consumer crate or ignored tests through cargo alone; the gate also runs the
canonical consumer script. A targeted facade test can use
`nix develop -c cargo test --manifest-path consumer/Cargo.toml --test resulting_state_validity`
after its file is written. This narrow check is not the complete consumer gate.
Full candidate checks remain:

```bash
nix develop -c scripts/gates.sh
nix develop -c scripts/check-consumer.sh --rev FULL_CANDIDATE_SHA
```

`FULL_CANDIDATE_SHA` is replaced with the actual pushed, tested revision. No
published Core Release or ecosystem pin compatibility follows merely from that
candidate test. Optional ignored timing workloads are performance evidence,
never validity acceptance or an automatically passing suite.

## Proof dispositions and review ownership

| Obligation | Reference proposition | Planned evidence and limitation | Current disposition |
| --- | --- | --- | --- |
| P1 / O-MODEL-005 support | Complete simultaneous candidate equals apply(parent,delta) | Direct complete model, lifecycle/type/key/refs, valid controls; coherent input/backend domain remains an assumption | Not established for017 |
| P2 / O-MODEL-005 | Valid parent and fresh ordinary ALLOW imply complete valid child | Independent audit predicate and finite model properties plus source invariant review; tests are empirical support | Original defect remains open |
| P3 / O-INCREMENTAL-008 support | Least canonical false/error witness and required semantic evidence preserved | Black-box order, typed witnesses, metadata/backend/cache permutations; skipping true checks must also preserve evidence | Not established for017 |
| P4 / O-INCREMENTAL-008 | Exact bound evidence reused only after atomic commit | Profile/history/CAS/lost-ack/command controls and cache source invariant review; host atomicity is an existing trust assumption | Not established for017 |
| P5 | Original immutable replay versus corrected current computation | Archive digest/byte/identity matrix, explicit dispatch, read-only replay/recovery and no old candidate bypass | Not established for017 |
| P6 / O-VERIFY-008 | Verifier assumptions/prefix/witness scope matches current guarantees | Targeted symbolic/runtime comparison, conservative unsupported claims and version/provenance checks; not every verifier property | Not established for017 |

CHK003, CHK013 and CHK015 in the requirements checklist belong to joint review
and remain unchecked. Test authors, planning self-review and standing permission
to implement cannot stand in for that review. This coverage document does not
change any checklist or task checkbox.

T062/T067 must separately report construction, enforced code invariants,
observed empirical coverage, documented assumptions and unresolved gaps in the
targeted re-audit. Preserve016's finding/verdict and evidence;017 may record its
scoped remediation disposition only after actual evidence review. No global
SOUND verdict, other018–021 finding closure, merge, release or tag is implied.
