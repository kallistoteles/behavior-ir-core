# Proof obligations: Core Mathematical Soundness Audit

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This ledger records evidence, not a
claim that every obligation holds. Each qualified row has exactly one primary
status; differently supported premises are split. Source arguments, code
invariants and tests are not machine-checked proofs. No such proof is claimed.

[G1–G12 and G13–G16](global-invariants.md) retain their normative authorities,
scopes and mapping to the qualified MODEL rows below. A code invariant is an
inspected enforcement argument under its stated premises, not all-program
mathematical proof. In particular, G3 is concretely refuted on the ordinary
nonlocal creation path. Full/optimized agreement cannot repair that fact.

## Evidence vocabulary and primary status totals

- **proven by construction**: 1 qualified rows.
- **established by a code invariant**: 46 qualified rows.
- **covered empirically by tests**: 3 qualified rows.
- **assumed but documented**: 8 qualified rows.
- **not yet established**: 23 qualified rows.

Rows and exact primary fields are also retained in [obligations.json](evidence/obligations.json).

## MODEL

Origin: [global-invariants.md](global-invariants.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-MODEL-001 | The evaluator is a function of explicit module/environment/phase/fact answers, with deterministic reached-branch order under one profile | **established by a code invariant** | PRINCIPLES, constitution IV; `eval.rs:305,1220–1528,2766`; E-MODEL-001. Depends on provider determinism and numerical primitive/library behavior; not an exhaustive expression proof. |
| O-MODEL-002 | Decoder/typechecker enforce scalar/enum/nominal/option/entity domains and admitted operation permissions; runtime rejects finite value overflow | **established by a code invariant** | 001 typing, 003/004; `value.rs:45`, `types.rs:267,275,478`, eval fixed/decode/checked arithmetic. Numeric aggregate total/partial interpretation separate. |
| O-MODEL-003 | Numeric arithmetic is exact within admitted bounds; explicit rescale is only rounded narrowing; admitted scalar exact expression bounds≤511 bits | **established by a code invariant** | 004 numeric contract, `admit/bounds.rs`, exact checked rational arithmetic and six round modes. Aggregate cardinality is not statically fixed; no unconditional universe-wide bound theorem asserted. |
| O-MODEL-004 | Typed identities are distinct from existence/history; creation needs id∉U_H, removal retains U_H, aliases cannot address same hidden cell twice | **established by a code invariant** | 006/PRINCIPLES; facts used vs exists; run_transition lifecycle; `eval.rs:3550`; Backend historical facts assumed honest/coherent. |
| O-MODEL-005 | Every allowed ordinary commit preserves all per-entity/global/reference validity obligations on complete child S' | **not yet established** | PRINCIPLES valid transition, 013/015; complete snapshot checker exists (`eval.rs:2232`) but unsupported ordinary transition paths may recheck only bound/created rows; F-INCREMENTAL-001 actual direct child-predicate RED E-INCREMENTAL-002. A green full-vs-fast differential test does not discharge this. |
| O-MODEL-006 | State facts derive coherently from supplied complete S; historical used facts are explicit; query/field redundancy cannot contradict normalized state | **established by a code invariant** | `facts.rs:560`, `eval.rs:1936,2348,4043–4165`; F-COORD-006/008 reassessment. Plain partial legacy facts have narrower guarantee; arbitrary provider completeness assumed, not authenticated. |
| O-MODEL-007 | Queries denote same-type sets independent of backend enumeration; folds use declared canonical traversal, finite-prefix error checks and empty results | **established by a code invariant** | 007 data model/FR-020a, `docs/verification.md` partial-sum checks, `expr.rs:125`, eval membership/folds. F-MODEL-001 closed as documented behavior; supplementary set/order/empty regressions are scoped, not global mathematical proof. |
| O-MODEL-008 | Effects derive simultaneous real-cell/lifecycle Δ from original S; refusal/error never exposes successful partial Δ/K | **established by a code invariant** | PRINCIPLES/006/013; `eval.rs:2766–3399`, world overlay and return-record discard; no external mutation during evaluation. Replay/canonical record correspondence separate. |
| O-MODEL-009 | Each content identity has an unambiguous domain-separated canonical preimage respecting that domain's equivalence | **not yet established** | 001/009/013 hashing; completed IDENTITY domain/opcode/type inventory and executed vector/property review provide scoped evidence. O-IDENTITY-001 universal preimage equivalence and O006 blanket legacy size premise remain unestablished; this is a remaining theorem/premise limit, not unfinished domain-audit work. SHA256 collision resistance and MuHash security are assumptions; no mathematical collision-free finite hash claim. |
| O-MODEL-010 | Implemented admitted-module/standalone historical codecs use the recorded profile; schema history and migration applicability bind exact source/target and validate complete target | **established by a code invariant** | 009, docs persistence/versioning; schema pairs, schema_at/history, standalone record-profile dispatch and migration source/target checks; assumes immutable authentic history and exact supplied module resolver. Historical Store-backed read/inner-invocation profile preservation is expressly excluded and remains O-MODEL-013/F-PERSIST-001 not yet established. |
| O-MODEL-011 | Reads are pure and current v2 validates complete required state; projections/filters/errors archive enough contracted evidence | **established by a code invariant** | 010/current remediation; `read.rs:49,409,540`, eval read + validate_complete_snapshot; legacy read-v1 semantics not upgraded. Store read shared reference and no command emission path. |
| O-MODEL-012 | Invocation binds exactly typed targets/inputs, trusted context and one snapshot; refusals precede body; state aliases and contradictory entities rejected | **established by a code invariant** | 012; invocation resolve/snapshot/intent shape and eval alias checks. Transport parser and authorization separately TRUST reviewed. |
| O-MODEL-013 | Record-profile replay rederives original contracted semantic output without mutation/dispatch/current external dependence | **not yet established** | 001/010/012/013; completed PERSIST/IDENTITY/TRUST source/field-tamper review and actual representative corpus. E-PERSIST-004/R-VERIFY-005 confirms Store historical v1 profile substitution; E-TRUST-002/R-MODEL-004 confirms current raw Store duplicate acceptance. These concrete unresolved defects plus unexhausted field/profile combinations limit the global proposition; legacy evidence limits are retained. |
| O-MODEL-014 | Commands are typed guarded products at original S, K is multiset with multiplicity, false guard suppresses payload and denial/error exposes no partial K | **established by a code invariant** | 013 semantic-ir; commands checked constructor and bag, eval canonical command loop. Does not prove delivery or authorization. |
| O-MODEL-015 | Only exact committed occurrences, not candidate requests or above-head records, are dispatchable | **established by a code invariant** | 013 store/replay; private constructors/checked commands_since, exact event identities; host delivery responsibility and arbitrary Backend honesty remain external. |
| O-MODEL-016 | Backend answers complete immutable as-of state/history and atomically durably commits the entire semantic bundle | **assumed but documented** | Backend trait `lib.rs:43`; 005/013. Core can check bindings/conformance/history, cannot force a hostile backend's physical durability; concrete fault/crash tests scoped. |
| O-MODEL-017 | Every PROVEN check denotes all legal executions admitted under exact runtime/profile assumptions | **not yet established** | 002/013, Verify encode/checks/reads/relational; completed R-MODEL-001 correspondence challenge and named joint legal-input review plus O-VERIFY-010 actual corpus. O-VERIFY-001/004/005 universal simulation/activation/embedding remain unestablished; no reproduced legal false PROVEN in this lane. Solver correctness trusted and INCONCLUSIVE not unsoundness. |
| O-MODEL-018 | Evidence integrity/authentication/authorization are separate, and selected policy authorizes exact candidate/store/history/behavior | **not yet established** | 008/013/governance; completed R-MODEL-003 TRUST challenge and named governance/commit joint review establish scoped current code guarantees under documented issuer/policy/solver/backend premises. O-TRUST-008/011 all-path equivalence/exhaustive negative coverage remains unestablished. A content hash is not authority. |
| O-MODEL-019 | Reuse is exact-state-bound, skipped obligations unaffected, candidate evidence publishes only after Applied, reconstruction yields full-reference result | **not yet established** | 014/015; completed INCREMENTAL source/oracle/fault/differential review distinguishes established exact-key/locality/lifecycle subobligations from sampled empirical equivalence. Selected local carry has qualified support; no universal all-path theorem is supplied, and the ordinary ineligible child route's G3 defect is confirmed F-INCREMENTAL-001. |

## VERIFY

Origin: [runtime-verifier-correspondence.md](runtime-verifier-correspondence.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-VERIFY-001 | Every legal typed scalar/operator execution simulates encoded result/error: not yet established globally | **not yet established** | Explicit enforcing branches above and regressions support individual domains; no complete operator-composition machine proof, fuzz envelope or independent arithmetic formalization supplied. |
| O-VERIFY-002 | Current incoming full snapshot + argument validity matches assumptions: established by a code invariant for identified profile0.8 entry branches | **established by a code invariant** | Concrete negative tests execute in E-COORD-009/016; MODEL/PERSIST named joint premises accepted under conforming Backend completeness/coherence. |
| O-VERIFY-003 | Legacy read proof assumes only historically established domain: established by a code invariant | **established by a code invariant** | reads.rs:66 profile guard. Historical replay selection is PERSIST obligation, not inferred from current record generation. |
| O-VERIFY-004 | Safety-site activation reflects guard/short-circuit/fail-fast runtime: not yet established for every legal composed program | **not yet established** | Source table identifies guards; E-COORD-009/016 executes the selected regression corpus, recorded separately in O010. No universal composition proof follows. |
| O-VERIFY-005 | All legal query states embed in unconstrained summary proof model: not yet established globally | **not yet established** | UF count lower bounds, exact deltas, uniqueness assumptions and free error flags inspected. Counterexample witness bounds are excluded from proof premise. |
| O-VERIFY-006 | Sufficient migration proof premises are enforced at apply: established by a code invariant | **established by a code invariant** | Exact behaviors/source validity/requirements/full target validation. Solver arithmetic correctness external and composition limitation remains. |
| O-VERIFY-007 | Fresh proof trust cannot depend on writable development cache: established by a code invariant | **established by a code invariant** | semantic_proof/checks no cache, exact manifest and current versions. Signer secret custody and actual solver correctness **assumed but documented** separately. |
| O-VERIFY-008 | Whole-state preservation of every unchanged cross-entity entity invariant: not yet established | **not yet established** | Bound/created-only preservation enumeration is not complete unchanged-row validation. E-INCREMENTAL-002 confirms F-INCREMENTAL-001 S0/High ordinary G3 omission; absence of a generalized verifier check is not fabricated `PROVEN` evidence. |
| O-VERIFY-009 | Z3 and supplied Solver correctly report satisfiability: assumed but documented | **assumed but documented** | Solver trait is explicitly injected. Trusted producer validates named version/protocol, not binary authenticity or SMT theorem by independent checker. |
| O-VERIFY-010 | Collected activation/domain regressions exercise the expected runtime-confirmed alias, bound, filter and command guard/payload classifications: covered empirically by tests | **covered empirically by tests** | E-COORD-009/012/013/016 executes soundness_regressions9, verify read_soundness6 and command_safety12, all passing,0 ignored/filtered. Runtime confirmation shares evaluator; authenticated enumeration shares encoder. This is scoped corpus evidence, not O001/O004/O005 universality. |

## IDENTITY

Origin: [identity-audit.md](identity-audit.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-IDENTITY-001 | Canonical preimages preserve every distinction claimed by each published identity domain, under admitted typed inputs and profile-specific normalization. Domain/opcode/type inspection E-IDENTITY-001; independent vector/property cases are candidate evidence, not universal proof. | **not yet established** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-002 | Current command bags retain multiplicity, canonical products and definitions, and refuse equal-hash/different-content conflicts; exact checked lengths. `commands.rs:182`, `:204`, CheckedEnc, command_identity oracle suite. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-003 | Document serializer/strict decoder exclude floats, ambiguous duplicate keys and incidental map order under the current typed closed profile. `canonical.rs:20`, `:29`, `:105`; historical decoder limits stated separately. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-004 | Live StateId excludes history/order while committing to keyed live content, under valid normalized accumulator inputs. MuHash modular arithmetic and entity content constructors; state/order tests execute in E-COORD-009/016. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-005 | Digest/content identity security and authenticated signature unforgeability hold against the assumed adversary. SHA-256, MuHash3072 expansion/group assumptions and Ed25519 libraries; key custody is outside this lane. | **assumed but documented** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-006 | Every legacy encoder input obeys its u32 size premise, including oversized programmatic/historical strings/lists. Current 0.8 wire/command checks establish their narrower scope; blanket legacy premise not proven. | **not yet established** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-007 | Current detached diagnostic provenance does not affect Core record identity; inspected Core constructors/standalone replay preserve the selected historical record profile and bytes. Core read/invocation constructors and closed validation; prior F4 regressions execute in E-COORD-009/016. This does not establish Store historical replay: E-PERSIST-004 confirms unresolved F-PERSIST-001. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-008 | Candidate/authorization/event/occurrence constructors form an acyclic dependency graph with distinct identities and required independent context binding. Constructor inspection above plus TRUST/PERSIST live binding checks remain separate. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-009 | Validation reuse key binds exact history/schema/canonical behavior rather than data-only StateId. `store.rs:562`, `:1148`, `:1167`; child publication lifecycle assessed by INCREMENTAL. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-IDENTITY-010 | Every semantically relevant historical/current record alteration changes its applicable identity or is refused by replay/structural checks; excluded metadata/profile limits are respected. Representative cases execute in E-COORD-009/016, but F-TRUST-001 confirms current raw Store read duplicate acceptance and F-PERSIST-001 historical codec replay refusal; exhaustive per-field/profile coverage is not established. | **not yet established** | Scope, enforcing code, tests and limits in the originating row. |

## PERSIST

Origin: [persistence-replay-audit.md](persistence-replay-audit.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-PERSIST-001 | arbitrary Backend commit atomicity and crash durability | **assumed but documented** | `Backend` contract `lib.rs:38–47,99–109`; a conforming implementation supplies atomic commit and immutable consistent as-of snapshots. Existing 005 FR-006 scopes atomicity to commit, not create failure semantics. Core cannot roll back an adversarial host's partial mutation. |
| O-PERSIST-002 | complete in-memory commit argument validation before typed failure | **established by a code invariant** | `memory.rs:284–355`; caller supplies legal structured arguments, normal process execution; reference-backend conformance supplements but does not universalize this claim. |
| O-PERSIST-003 | commit-only command/event authority and original-event recovery | **established by a code invariant** | `store.rs:1948–2040,2344–2377`, `commands.rs:127–253`; conforming Backend and canonical history. Dedicated fault/tamper tests provide scoped empirical evidence. |
| O-PERSIST-004 | all physical creation/crash windows exercised | **not yet established** | Existing commit wrapper has no create fault injection. Consumer backend covers only its disclosed persistence windows. This empirical coverage limit is separate from F-PERSIST-002's mathematical contract ambiguity; neither shows a Core partial-write defect. |
| O-PERSIST-005 | Ref/index reconstruction derives from canonical schema/history in the inspected replay algorithms, not arbitrary index truth. | **established by a code invariant** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-006 | Backend enumeration, field-index and incoming-ref completeness/coherence. Runtime rechecks positives but does not universally authenticate all omissions. | **assumed but documented** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-007 | Data replay links history/schema/versions/live content with exact event chain under conforming immutable Backend and digest assumptions. This is not every original behavior property. | **established by a code invariant** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-008 | All supported standalone and Store replay profiles preserve original computation; E-PERSIST-004 and E-TRUST-002 are known historical Store v1 and current malformed-evidence counterexamples, F-PERSIST-001 and F-TRUST-001. | **not yet established** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-009 | First-party replay performs no canonical mutation or external command dispatch; external Backend method side effects remain host conformance. | **established by a code invariant** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-010 | Report accounts for record fields, serialized identity inclusion and profile-specific comparisons. Exhaustive per-field/per-profile negative execution is not claimed. | **established by a code invariant** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-011 | Successful Backend creation supplies complete genesis/seed/head/reference product; exact host initial durability cannot be inferred from source alone. | **assumed but documented** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |
| O-PERSIST-012 | Exact permitted post-error creation outcomes and lost-ack/retry/reopen law, F-PERSIST-002. | **not yet established** | Qualified source and scope from originating PERSIST handoff; replay/custody details in persistence-replay-audit.md. |

## TRUST

Origin: [trust-boundary-audit.md](trust-boundary-audit.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-TRUST-001 | Inspected current Core/security/capability document constructors use duplicate-safe, float-free closed decoding and typed bindings. B001–006/023; source inspection E-TRUST-001. This excludes raw Store read replay decoding at store.rs:1438; E-TRUST-002 confirms its duplicate rejection fails, F-TRUST-001/O012. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-002 | Complete current state is typed/normalized and overlap facts/bindings internally coherent before evaluation. B005–007, facts/eval sites; full mathematical G3 correctness remains separate. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-003 | External provider/backend snapshot completeness, immutable history and durable atomic CAS are truthful host promises. B007–008/012; Backend contract and relevant producer responsibilities. | **assumed but documented** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-004 | Live Store does not trust caller bundles/observations: exact schema/behavior/store/history/dependencies/write result rederived before commit. B010/013; canonical source flow; full-evaluator correctness is a premise. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-005 | Current required authorization verifies purpose/issuer, immutable policy role, exact candidate/proof/context and independently recomputed allow. B014–016; strict signature and checker sites. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-006 | Fresh authenticated computation cannot promote diagnostic cache/raw caller report or incomplete/non-reproducible prefix into proof. B016–018; cache=None path and exact complete manifest; poisoned-cache/process regressions execute in E-COORD-009/016. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-007 | Cryptographic key/signature/digest security, signer custody and solver UNSAT trust assumptions hold. These are separate external producers; solver/encoding simulation not reduced to a signature theorem. | **assumed but documented** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-008 | Every allowed skipped read/check has equivalent mandatory semantic/integrity evidence, including cache/index reconstruction and commit-only candidate publication across all paths. Joint PERSIST/INCREMENTAL review and exact fault evidence required. | **not yet established** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-009 | Historical structural evidence is not silently elevated to current authenticated authority; required old-store new writes refuse, and archived envelopes do not automatically satisfy the current expected proof manifest. B020 and versioned policy/format source. This does not establish all historical Store replay profile behavior: F-PERSIST-001/O-PERSIST-008 remain separate and open. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-010 | Core never dispatches external commands; Store occurrence enumeration derives only committed verified history. B022/023 source; external adapter scheduling/idempotency is independently responsible. | **established by a code invariant** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-011 | Complete FR027 negative/replay/tamper/fault coverage suffices for every public path. E-COORD-009/012–016 executes the representative ordinary corpus; it does not prove exhaustive field/profile/fault coverage. F-TRUST-001 demonstrates one missed path. | **not yet established** | Scope, enforcing code, tests and limits in the originating row. |
| O-TRUST-012 | Current raw Store read-record replay rejects contradictory duplicate keys before map reduction, as required for unambiguous current canonical evidence. `store.rs:1438`; E-TRUST-002 directly disproves this obligation on the inspected baseline, F-TRUST-001. | **not yet established** | Scope, enforcing code, tests and limits in the originating row. |

## INCREMENTAL

Origin: [incremental-validation-audit.md](incremental-validation-audit.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-INCREMENTAL-001 | exact same-snapshot reuse identity/checks: established by a code invariant | **established by a code invariant** | SnapshotIdentity equality and exact history/schema/source binding; assumes immutable honest canonical Backend snapshot; selected lifecycle/behavior/profile cases supplementary |
| O-INCREMENTAL-002 | transitive ordinary row locality allowlist excludes every varying external input: established by a code invariant | **established by a code invariant** | exhaustive ExprKind match, actual/formal binding closure, both profile target rules; finite admitted DAG assumed and tested aliases/nonlocal branches |
| O-INCREMENTAL-003 | unchanged synthesized references remain valid without removals: proven by construction | **proven by construction** | set inclusion of live identities; applies only valid parent's synthesized Ref obligations under no-removal guard, not arbitrary Exists/Referenced predicates |
| O-INCREMENTAL-004 | candidate complete changed/create validation matches full child on the sampled selected valid local domain: covered empirically by tests | **covered empirically by tests** | E-COORD-009/012/013/016 and fixed-seed E-INCREMENTAL-003 execute complete-row/ref reconstruction and 128-case property; ordinary validator shared; written locality/monotonicity argument separate, no universal machine proof |
| O-INCREMENTAL-005 | historical freshness/alias/lifecycle/integrity/governance/CAS obligations retained: established by a code invariant | **established by a code invariant** | unchanged ordinary evaluate/rederive/commit flow, Candidate never answers used; mandatory failure routes inspected; trust/durability external premise scoped |
| O-INCREMENTAL-006 | candidate evidence reusable only after exact Applied and exclusive patch ownership: established by a code invariant | **established by a code invariant** | Pending stack-local, Applied-only carry, exact child/parent/effective schema, Arc failure eviction; lostack/HeadMoved/genericerror default cases actually executed in E-COORD-009/012/013/016, ownership/exactchild E-INCREMENTAL-003 |
| O-INCREMENTAL-007 | cache loss/reopen/mutable access reconstruction restores canonical full validity: established by a code invariant | **established by a code invariant** | open None/backend_mut clear/full fallback; private memory corruption cannot be injected through public safe API; arbitrary backend dishonesty outside contract remains assumption |
| O-INCREMENTAL-008 | unsupported ordinary full route preserves complete child validity: not yet established | **not yet established** | F-INCREMENTAL-001 confirmed E-INCREMENTAL-002 direct RED/R-VERIFY-006; successful ordinary commit concretely violates G3; reference/optimized agreement does not discharge it |
| O-INCREMENTAL-009 | private reference derivative covers complete result replacement and does not become runtime semantics: established by a code invariant | **established by a code invariant** | cfg(test), exact replacement beforecheck; four private tests actually executed in E-MODEL-003, 96-case operator and separate composition property; same full evaluator shared, no operator support requirement introduced |
| O-INCREMENTAL-010 | compared semantic outcomes/evidence/record/hash/replay results unchanged on sampled guarded workflows: covered empirically by tests | **covered empirically by tests** | E-COORD-009/012/013/016 public lifecycle/cold controls and E-INCREMENTAL-003 explicit full-child control; E-MODEL-004: 1000 index/order variations; helpers shared; not a universal theorem or proof of unsupported ordinary G3 |

## QUALITY

Origin: [code-quality-audit.md](code-quality-audit.md); source/run details and domain limits remain part of each claim.

| Obligation | Qualified proposition | Primary status | Evidence and limits |
| --- | --- | --- | --- |
| O-QUALITY-001 | admitted opaque runtime construction invariants; excludes raw wire/JSON/evidence | **established by a code invariant** | Code-quality type-boundary inventory; dynamic/public raw validation remains distinct. |
| O-QUALITY-002 | all mode/primitive products statically encode every semantic distinction | **not yet established** | Some distinctions enforced dynamically; no blanket newtype requirement. |
| O-QUALITY-003 | one normative meaning and transparent duplicated execution across every profile | **not yet established** | F-INCREMENTAL-001/F-PERSIST-001/F-TRUST-001; deliberate historical separation is not duplication defect. |
| O-QUALITY-004 | absence of literal production panic/unwrap/expect/unreachable in first-party source | **established by a code invariant** | 67-file lexical inventory and cfg tracing:89 literal matched lines all test-only; dependencies/macros/implicit panics excluded. |
| O-QUALITY-005 | first-party unsafe absence | **established by a code invariant** | No unsafe blocks found; six entrypoints forbid unsafe; dependency internals excluded. |
| O-QUALITY-006 | all runtime/resource/dependency panic failures unreachable from any finite legal input | **not yet established** | Not inferred from lexical absence; stack/allocation/library behavior not exhaustively proved. |
| O-QUALITY-007 | no incompatible snapshot/version mutable leakage in inspected request-local and engine Store cache owners | **established by a code invariant** | Exact key/eviction source under host contract; legacy diagnostic cache assumes producer integrity; E-TRUST-003 confirms no fresh authenticated promotion. |
| O-QUALITY-008 | scoped source complexity accounting distinguishes lower bounds, algorithm work and constants | **established by a code invariant** | Code-quality n/r/q/d/c/h/m/b table; no measured performance or universal asymptotic theorem. |

## Blocking propositions and external assumptions

O-MODEL-005/O-INCREMENTAL-008/O-VERIFY-008 fail complete child preservation in
F-INCREMENTAL-001. O-PERSIST-008/O-MODEL-013 and O-TRUST-012/O-IDENTITY-010 are
unestablished and have the two reproduced S3 replay defects. O-PERSIST-012 is
ambiguous required creation-error semantics. These remain blocking; accepted
review and audit completion do not resolve them.

O-VERIFY-001/004/005, O-MODEL-017 and general identity/operator composition lack
universal correspondence evidence. This is not a demonstrated false PROVEN, but
is not represented as established. O-IDENTITY-006 retains unestablished blanket
legacy length premises. Independent arithmetic/query composition verification
and more exhaustive profile tampering are proposed evidence, not performed proof.

Backend completeness/immutable snapshots/atomic durability, solver validity,
cryptographic assumptions and signer custody remain documented external premises.
Core checks exact bindings; it cannot prove an adversarial backend's physical
persistence or infer authority from a hash. Initial creation's failure domain is
a distinct unknown, not imported from commit atomicity.

## Actual gates, collection and supplemental evidence

[E-COORD-009](evidence/runs/COORD/baseline-gates/run.json) runs the unchanged
`nix develop -c scripts/gates.sh` in the pinned environment on the audited release.
All eleven stages pass: format, clippy, workspace tests, build, determinism,
boundary, public surface, external consumer, workflows, terms and script tests.
No solver skip was observed. [E-COORD-016 collection reconciliation](evidence/test-collection.json)
retains actual names/groups: workspace793 collected,24 ignored,769 default tests
pass; external consumer33 collected/pass,0 ignored. Quiet default logs do not
individually name workspace tests; exact Cargo selection and all168 group counts
match collection. These are executed tests, not a soundness theorem.

Seven risk-directed unchanged-baseline supplements pass: primitive exact/hash/query/read
properties E-MODEL-002, private reference derivatives E-MODEL-003,1000 backend
permutation/index cases E-MODEL-004, selected full-child/candidate oracles
E-INCREMENTAL-003, known invalid-child characterization E-INCREMENTAL-004,
schema/state properties E-IDENTITY-002 and poisoned diagnostic cache refusal
E-TRUST-003. Fixed proptest seed20261010 is recorded only for these reruns;
default gate entropy seeds were not emitted. Private generic replacement tests
cover Value/Error transitions under pure/equality premises; they do not turn
delta evaluation into public language semantics or prove every optimized operator.

Three exact-base test-only overlay runs fail only their final semantic contract
assertions after positive controls: E-INCREMENTAL-002 (1failure), E-PERSIST-004
(2failures), E-TRUST-002 (1failure). They are successful reproductions of defects,
recorded with run outcome **fail**, not passes of required gates. No production
source, test helper or fixture changed; source and patch digests are retained.

## Differential, algebraic, metamorphic and fault accountability

[coverage.json](evidence/coverage.json) and lane test inventories retain all four
required comparisons, comparator independence and shared premises:

- Incremental/full: guarded candidates compared with independently reconstructed
  complete child rows/ref edges; ordinary validators remain shared. The direct
  child-predicate RED independently exposes the unsupported ordinary-route gap.
- Indexed/unindexed: original expressions/records compared across candidate index
  selection and explicit1000 permutation seeds. Shared evaluator means agreement
  alone cannot prove expression semantics; backend completeness remains assumed.
- Plain/Store: overlapping typed evaluator and Store-derived facts/records are
  compared under exact schema/data-version binding. Wrapper dispatch/decoding can
  diverge despite the shared evaluator, as the replay counterexamples demonstrate.
- Replay/original: immutable recorded requests/evidence are re-evaluated and
  compared; shared expression evaluation is explicitly not independent arithmetic
  or preservation proof. Supported historical Store profiles are refuted.

Canonical idempotence, typed encode/decode, unordered bag/map and metadata
permutations, StateId/history separation, query enumeration, reconstructed
reference indexes and cold/reopened cache controls are inspected and exercised
within the bounded collected domains. There is no blanket universal law proof.

Read-error, head-moved/CAS, commit BeforeWrite/AfterWrite acknowledgment windows,
recovery, poisoned diagnostic cache, tamper and wrong schema/behavior/evidence
cases execute in the default corpus. AfterWrite means applied but unacknowledged,
not rollback. First-party Backend mutation sites are create974, ordinary commit2348
and migration commit2627. Create fault/crash/error/retry windows lack exhaustive
coverage/law; arbitrary host internal mutations are not all injected. Safe public
Store cache access cannot corrupt private memory; cold/reopen/eviction controls
are not a proof against arbitrary memory corruption. Index omissions are a host
completeness premise, not authenticated merely by rechecking positives.

Of24 default-ignored tests, only query_order_props is additionally executed by
E-MODEL-004. The remaining23 are retained as **skipped**, split between latency
measurements and additional large-domain stress. Default bounded correctness,
1000-event histories, schema and fault cases do execute. None of the23 is counted
as passing. [Tooling assessment](evidence/fragments/COORD/tooling-assessment.md)
records feature-map equivalence and risk-based nonselection of Miri/sanitizers/new
fuzz dependencies; these are not tool passes. Historical test-first compliance
cannot be manufactured by this audit's newly added assertions.

## Review and custody

Each originating report has different-person review and author response. Six
[JOINT notes](evidence/reviews/JOINT/) state producer/consumer assumptions;
[significant findings](evidence/reviews/FINAL/critical-findings-review.md) and the
[trust review](evidence/reviews/FINAL/trust-finding.md) inspect actual controls,
logs and artifact digests. Whole-report review and final assessment are linked
from [audit-summary](audit-summary.md). Review establishes accountability, never
semantic truth by agreement. Final source/artifact custody and local delivery are
recorded in [delivery](evidence/fragments/COORD/delivery.md).
