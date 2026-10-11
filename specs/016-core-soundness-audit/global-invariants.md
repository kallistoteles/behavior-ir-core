# Global invariant audit

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880` (Core v0.12.1), tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This report records existing
obligations from `PRINCIPLES.md`, constitution and versioned feature contracts;
it does not make newly discovered candidates normative by declaration.
Initial source evidence is E-MODEL-001. Executable and independent-review
references are added through MODEL's handoff; an open specialist dependency is
never resolved by agreement alone.

## Candidate global invariants and scope

The five primary statuses have their exact meaning in
[contracts/audit-evidence.md](contracts/audit-evidence.md). Status applies to the
qualified proposition in a row, not to all conceivable programs. A counterexample
or missing global theorem keeps the global obligation `not yet established` even
when many constituent code invariants and tests hold.

| G | Existing obligation / authority | Applicability and premises | Enforcing/relevant locations | Global status / linked obligations |
| --- | --- | --- | --- | --- |
| G1 | Equal canonical semantic inputs produce equal semantic results/evidence. Constitution IV; PRINCIPLES §2; 013 semantic-ir | same M/profile, exact S/history facts/I/C, coherent provider; historical diagnostic profiles differ | core eval/record/read, canonical hashing, Store snapshot endpoints; no implicit clock/network | not yet established globally; O-MODEL-001/007/009; F-MODEL-001 partial-fold lead closed as documented behavior, not a determinism defect |
| G2 | Admitted operations preserve declared types. 001 typing; 003/004 numeric; 013 payload contract | successful admission, valid decoded domain, applicable exact grid/count bounds; input/context constraints separate from state invariants | types/typecheck/bounds; eval decode/fixed/stored_value; commands checked constructor | not yet established globally; O-MODEL-002/003/014; finite aggregate intermediate bounds need explicit scope |
| G3 | Ordinary committed transition yields a valid S' under exact M/Σ. PRINCIPLES valid-transition formula; 013 snapshot validity; persistence §pipeline | valid exact parent, full dependency/reference/freshness/evidence obligations; cannot redefine Valid as touched-row validity | eval check_behavior_snapshot/run_transition; Store validate_snapshot and commit; incremental eligibility/fallback | not yet established; O-MODEL-005/019; F-INCREMENTAL-001 nonlocal creation is confirmed S0/High by E-INCREMENTAL-002/R-VERIFY-006, not waived by fallback agreement |
| G4 | Historical interpretation keeps original schema/semantic meaning. PRINCIPLES immutability; docs/versioning; 009 schema history; 013 compatibility | exact original module/record/profile; current proof eligibility is a separate property | profile-retaining Module, frozen legacy codec/replay, schema_at/migration previous-schema chain | not yet established globally; O-MODEL-010/013/017; admitted format labels do not prove old decoder support |
| G5 | Identities preserve declared semantic equivalence and all required distinctions before hashing. PRINCIPLES §6; 001 hashing; 013 identity | canonical unambiguous preimages and scoped SHA/MuHash security assumptions; finite digests are not mathematically injective | admit/hash, schema, canonical, Store documents/MuHash, read/command identities | not yet established globally; O-MODEL-009; complete IDENTITY inventory/source audit is finished, while universal preimage-equivalence and legacy length premises remain unproved |
| G6 | All semantic influences are explicit inputs; current facts coherent with S, history facts explicit. PRINCIPLES §2/7/8; facts/lifecycle contracts | caller/host context typed; providers snapshot-bound and coherent; no trust claim from unverified data-version text | EvaluationFacts; Supplied/ValidatedProvider; canonical records; F_H formal signature | established by a code invariant for explicit evaluator inputs; O-MODEL-006 external completeness remains assumed; prior formal omission F-COORD-006 corrected |
| G7 | Replay reproduces contracted original computation from immutable evidence. Constitution IV; persistence replay; 010/012/013 | exact historical schema/profile, recorded observations/snapshot; legacy v1 capture limits explicit; store-backed checks at recorded endpoint | record/read/invocation replay, Store replay data/behavior/index/migration | not yet established globally; O-MODEL-013; replay equality does not authenticate arbitrary backend evidence |
| G8 | Physical representation/indexes cannot change semantic result. Persistence guiding invariant and query contract | conforming complete keys/indexes, immutable snapshot reads; conformance detects examples, not arbitrary dishonesty | query candidate rechecks, replay_index, Store head/version verification | assumed but documented for arbitrary Backend completeness; O-MODEL-016; concrete backends separately tested |
| G9 | Authoritative commit is atomic durable unit; partial candidate cannot become history truth. 005/013 atomic store contract | conforming Backend atomicCAS/crash durability; response loss ≠ failed durability | Backend commit contract; InMemory staged commit; Store exact CAS/recovery; durable consumer scoped | assumed but documented for arbitrary backend durability; O-MODEL-016; concrete injected cases provide supplementary empirical evidence |
| G10 | Verifier assumptions exactly follow guaranteed runtime/admission domains. 002/013 correspondence; docs/verification | exact verifier version, check/profile, incoming-validity premise established; solver itself trusted | Verify encode/checks/reads/relational/migration versus Core bounds/eval/current read | not yet established globally; O-MODEL-017; unproven encodings must be inconclusive, not PROVEN |
| G11 | Optimizations preserve semantic results/errors/evidence/identities while maintaining every obligation. 014/015 spec/correctness; PRINCIPLES optimization principle | exact state/history/schema/behavior binding; all skipped dependency closures proven unaffected; operational trace excluded | Store snapshot cache/incremental candidate/dependency/post-CAS; evaluator query/unique reuse | not yet established globally; O-MODEL-019; independent validity needed beyond common-reference agreement |
| G12 | Derived caches/indexes are reconstructible acceleration, never semantic authority. PRINCIPLES cache statement; persistence indexes; 014/015 | canonical source retained; invalidation and exact keys sound; assumptions about private-memory integrity explicit | Module immutable StoreSchema memo, Store validated snapshot and backend_mut reset; ref/query indexes/replay reconstruction | established by a code invariant for private cache identity/exclusion and explicit eviction sites; O-MODEL-019 reconstruction/equivalence remain separate checks |

## Qualified proof obligations

Exactly one primary status applies to each row. Source reasoning and tests are
supplementary support; no test is relabeled a formal proof. Shared specialist
results should refine these rows by splitting scope, not silently upgrading them.

| Obligation | Exact proposition and domain | Primary status | Authority, enforcement, evidence and limitations |
| --- | --- | --- | --- |
| O-MODEL-001 | The evaluator is a function of explicit module/environment/phase/fact answers, with deterministic reached-branch order under one profile | established by a code invariant | PRINCIPLES, constitution IV; `eval.rs:305,1220–1528,2766`; E-MODEL-001. Depends on provider determinism and numerical primitive/library behavior; not an exhaustive expression proof. |
| O-MODEL-002 | Decoder/typechecker enforce scalar/enum/nominal/option/entity domains and admitted operation permissions; runtime rejects finite value overflow | established by a code invariant | 001 typing, 003/004; `value.rs:45`, `types.rs:267,275,478`, eval fixed/decode/checked arithmetic. Numeric aggregate total/partial interpretation separate. |
| O-MODEL-003 | Numeric arithmetic is exact within admitted bounds; explicit rescale is only rounded narrowing; admitted scalar exact expression bounds≤511 bits | established by a code invariant | 004 numeric contract, `admit/bounds.rs`, exact checked rational arithmetic and six round modes. Aggregate cardinality is not statically fixed; no unconditional universe-wide bound theorem asserted. |
| O-MODEL-004 | Typed identities are distinct from existence/history; creation needs id∉U_H, removal retains U_H, aliases cannot address same hidden cell twice | established by a code invariant | 006/PRINCIPLES; facts used vs exists; run_transition lifecycle; `eval.rs:3550`; Backend historical facts assumed honest/coherent. |
| O-MODEL-005 | Every allowed ordinary commit preserves all per-entity/global/reference validity obligations on complete child S' | not yet established | PRINCIPLES valid transition, 013/015; complete snapshot checker exists (`eval.rs:2232`) but unsupported ordinary transition paths may recheck only bound/created rows; F-INCREMENTAL-001 actual direct child-predicate RED E-INCREMENTAL-002. A green full-vs-fast differential test does not discharge this. |
| O-MODEL-006 | State facts derive coherently from supplied complete S; historical used facts are explicit; query/field redundancy cannot contradict normalized state | established by a code invariant | `facts.rs:560`, `eval.rs:1936,2348,4043–4165`; F-COORD-006/008 reassessment. Plain partial legacy facts have narrower guarantee; arbitrary provider completeness assumed, not authenticated. |
| O-MODEL-007 | Queries denote same-type sets independent of backend enumeration; folds use declared canonical traversal, finite-prefix error checks and empty results | established by a code invariant | 007 data model/FR-020a, `docs/verification.md` partial-sum checks, `expr.rs:125`, eval membership/folds. F-MODEL-001 closed as documented behavior; supplementary set/order/empty regressions are scoped, not global mathematical proof. |
| O-MODEL-008 | Effects derive simultaneous real-cell/lifecycle Δ from original S; refusal/error never exposes successful partial Δ/K | established by a code invariant | PRINCIPLES/006/013; `eval.rs:2766–3399`, world overlay and return-record discard; no external mutation during evaluation. Replay/canonical record correspondence separate. |
| O-MODEL-009 | Each content identity has an unambiguous domain-separated canonical preimage respecting that domain's equivalence | not yet established | 001/009/013 hashing; completed IDENTITY domain/opcode/type inventory and executed vector/property review provide scoped evidence. O-IDENTITY-001 universal preimage equivalence and O006 blanket legacy size premise remain unestablished; this is a remaining theorem/premise limit, not unfinished domain-audit work. SHA256 collision resistance and MuHash security are assumptions; no mathematical collision-free finite hash claim. |
| O-MODEL-010 | Implemented admitted-module/standalone historical codecs use the recorded profile; schema history and migration applicability bind exact source/target and validate complete target | established by a code invariant | 009, docs persistence/versioning; schema pairs, schema_at/history, standalone record-profile dispatch and migration source/target checks; assumes immutable authentic history and exact supplied module resolver. Historical Store-backed read/inner-invocation profile preservation is expressly excluded and remains O-MODEL-013/F-PERSIST-001 not yet established. |
| O-MODEL-011 | Reads are pure and current v2 validates complete required state; projections/filters/errors archive enough contracted evidence | established by a code invariant | 010/current remediation; `read.rs:49,409,540`, eval read + validate_complete_snapshot; legacy read-v1 semantics not upgraded. Store read shared reference and no command emission path. |
| O-MODEL-012 | Invocation binds exactly typed targets/inputs, trusted context and one snapshot; refusals precede body; state aliases and contradictory entities rejected | established by a code invariant | 012; invocation resolve/snapshot/intent shape and eval alias checks. Transport parser and authorization separately TRUST reviewed. |
| O-MODEL-013 | Record-profile replay rederives original contracted semantic output without mutation/dispatch/current external dependence | not yet established | 001/010/012/013; completed PERSIST/IDENTITY/TRUST source/field-tamper review and actual representative corpus. E-PERSIST-004/R-VERIFY-005 confirms Store historical v1 profile substitution; E-TRUST-002/R-MODEL-004 confirms current raw Store duplicate acceptance. These concrete unresolved defects plus unexhausted field/profile combinations limit the global proposition; legacy evidence limits are retained. |
| O-MODEL-014 | Commands are typed guarded products at original S, K is multiset with multiplicity, false guard suppresses payload and denial/error exposes no partial K | established by a code invariant | 013 semantic-ir; commands checked constructor and bag, eval canonical command loop. Does not prove delivery or authorization. |
| O-MODEL-015 | Only exact committed occurrences, not candidate requests or above-head records, are dispatchable | established by a code invariant | 013 store/replay; private constructors/checked commands_since, exact event identities; host delivery responsibility and arbitrary Backend honesty remain external. |
| O-MODEL-016 | Backend answers complete immutable as-of state/history and atomically durably commits the entire semantic bundle | assumed but documented | Backend trait `lib.rs:43`; 005/013. Core can check bindings/conformance/history, cannot force a hostile backend's physical durability; concrete fault/crash tests scoped. |
| O-MODEL-017 | Every PROVEN check denotes all legal executions admitted under exact runtime/profile assumptions | not yet established | 002/013, Verify encode/checks/reads/relational; completed R-MODEL-001 correspondence challenge and named joint legal-input review plus O-VERIFY-010 actual corpus. O-VERIFY-001/004/005 universal simulation/activation/embedding remain unestablished; no reproduced legal false PROVEN in this lane. Solver correctness trusted and INCONCLUSIVE not unsoundness. |
| O-MODEL-018 | Evidence integrity/authentication/authorization are separate, and selected policy authorizes exact candidate/store/history/behavior | not yet established | 008/013/governance; completed R-MODEL-003 TRUST challenge and named governance/commit joint review establish scoped current code guarantees under documented issuer/policy/solver/backend premises. O-TRUST-008/011 all-path equivalence/exhaustive negative coverage remains unestablished. A content hash is not authority. |
| O-MODEL-019 | Reuse is exact-state-bound, skipped obligations unaffected, candidate evidence publishes only after Applied, reconstruction yields full-reference result | not yet established | 014/015; completed INCREMENTAL source/oracle/fault/differential review distinguishes established exact-key/locality/lifecycle subobligations from sampled empirical equivalence. Selected local carry has qualified support; no universal all-path theorem is supplied, and the ordinary ineligible child route's G3 defect is confirmed F-INCREMENTAL-001. |

## Additional invariants discovered

These are refinements of existing contracts, not new language requirements.

- **G13 — Proposal isolation**: evaluation/replay cannot dispatch external commands
  or mutate canonical store history. Supported by O-MODEL-008/011/013/014;
  authority PRINCIPLES §4 and 013 external boundary; exact backend/host dispatch
  responsibility stays separate.
- **G14 — Monotone identity lifetime**: `dom(S)⊆U_H`, `U_H` never shrinks,
  removal does not permit reuse. Existing 006 contract; O-MODEL-004.
- **G15 — Error activation**: only reached expressions may contribute semantic
  evaluation errors/observations, under each profile's ordered/canonical operation
  contract. Existing ordinary short-circuit/013 guarded-command contract;
  O-MODEL-001/014 plus verifier correspondence.
- **G16 — Mathematical collection fidelity**: sets have no duplicate membership,
  bags preserve multiplicity, sequences retain contracted order, maps retain named
  association. Existing 007/010/013 contracts; O-MODEL-007/009/014. Canonical
  deterministic representation alone cannot settle an underspecified error rule.

## Cross-boundary acceptance limits

G9/O-MODEL-016's documented arbitrary-backend atomicity premise applies to
`Backend::commit`. Initial `Backend::create` has a stated successful product
(genesis, head, seed versions and reference index), but no equally explicit
failure/lost-acknowledgment/retry law. PERSIST's F-PERSIST-002 therefore records a
bounded S4 underspecification: no audit argument may infer that creation failures
are atomic, or infer an actual partial-write defect, from the commit-only law.
MODEL independently checked 005 FR-006 and data-model/store-api authority; those
define commit failure injection but do not settle initial creation failure.
This does not weaken the successful-genesis validity requirement.

Admission→runtime/verifier cannot close O-MODEL-017 solely because typechecks pass.
Evaluation→Store must establish O-MODEL-005 over unchanged entities as well as
changed ones. Query/read→record must distinguish complete validation capture from
actual body observation and historical read-v1 limits. Commands→governance→CAS
must establish whole-candidate authority before committed occurrence exposure.
Schema→history must preserve exact declarations and semantic profiles. Full→reuse
must preserve all obligations; backend traces/hypothetical errors are excluded,
but trust/concurrency/freshness obligations remain mandatory.

Any final global verdict is coordinator-owned and waits for independent joint
review. This report's open statuses constrain that verdict; known blockers are
not fixed during this audit.


## Executed evidence qualification

E-COORD-009 canonical gates pass on the exact unchanged release. E012/013/016
reconcile793 workspace collected cases,24 ignored and769 default executed passes;
MODEL's selected-target independent accounting is E-MODEL-005. Primitive and
read/query/lifecycle negatives therefore provide actual regression evidence,
with generator/helper limits in MODEL/test-coverage. They do not upgrade global
G3: E-INCREMENTAL-002 confirms a successfully committed invalid child and
R-VERIFY-006 independently accepts F-INCREMENTAL-001 S0/High. Known historical
Store replay and raw duplicate parsing defects are also separate G4/G7 limits;
no exact schema/cache/hash key can erase them. Actual fixed-seed E-MODEL-002
primitive/hash/query/read-replay 34 tests and E-MODEL-003 private derivative 4 tests
pass. E-MODEL-004 explicitly selected 1000 permutation/index case passes 1 test,
zero ignored. E-INCREMENTAL-003 passes 17 selected oracle/dependency/lifecycle
tests, 1 workload ignored/2 other tests filtered; E-INCREMENTAL-004 passes 1 existing
invalid-child characterization with9 other tests filtered. None closes the
global G3/G4/G7/G10/G11 propositions. Generator/shared-helper limitations remain
explicit, and ignored 10k cases are not passing evidence.
