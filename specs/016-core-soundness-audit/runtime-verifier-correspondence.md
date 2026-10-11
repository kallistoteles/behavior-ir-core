# Runtime–verifier correspondence audit

Baseline: Core `v0.12.1`, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Owner: VERIFY. This report is
an evidence-qualified audit under the [evidence contract](contracts/audit-evidence.md),
not a new language contract or a machine-checked proof. COORD has reconciled B1
scope and a different-person MODEL reviewer accepted the qualified source table.
E-COORD-009/012–016 establishes actual execution/collection and ignored-case
accounting. Named joint premises remain qualified; neither inventory
reconciliation, source review nor green regressions proves universal simulation.

## Meaning of a verification result

For an admitted module, selected profile and explicit solver, the verifier asks
whether the encoded violation of a particular property is satisfiable over the
runtime-guaranteed domain. UNSAT is `PROVEN`. A SAT assignment is a semantic
counterexample only after concrete evaluation reproduces the nominated failure.
UNKNOWN, unsupported encoding, unrepresentable model, or a SAT assignment that
cannot be confirmed is `INCONCLUSIVE`. Such a result blocks certification; it is
not itself an unsound proof. An empty/non-complete profile proves only its selected
checks, never all program safety requirements.

The mathematical premise is **simulation**: every legal runtime execution in a
check's claimed domain must be represented by a solver model satisfying its
assumptions, and the selected runtime violation must satisfy the solver violation
predicate. Under solver correctness, UNSAT then excludes that violation. Neither
successful SAT confirmation nor the absence of a reproduced counterexample proves
this universally. Tests support portions of that simulation argument.

`checks.rs:197` runs the unrestricted query before nice-value/witness restrictions;
`checks.rs:295` requires confirmation for safety SAT. Three explicit relational
member slots are used only in witness search, never as a finite-universe premise
in proofs. `reads.rs:351` and `migration.rs:278` follow the same principle with
their respective concrete confirmation paths. Warning checks have distinct meaning:
UNSAT establishes dead/redundant/constant-rule warnings; SAT simply provides a
witness against the warning and need not be confirmed to protect a safety claim.

## Profile and historical applicability

| Axis | Audited contract and enforcing locations | Consequence |
| --- | --- | --- |
| Fresh document admission | core `wire.rs:1016`; current decoder0.4–0.8 |0.1–0.3 rounded arithmetic documents are rejected. Advertised format arrays are not sufficient admission evidence; COORD F-COORD-011 tracks the inconsistency. |
| Runtime semantic profile | core `semantic/types.rs`, module accessor; Wire0.8 is CommandIntents | Current complete snapshot/structured evidence contracts cannot silently be applied to earlier runtime paths. |
| Verifier implementation | verify `lib.rs:29`, `VERIFIER_VERSION = 0.8.0` | Check keys, manifests and current envelopes bind this encoding version. |
| Solver | `solver.rs:55`, Z3 4.16.0; fixed seeds and rlimit at231 | Solver correctness remains an external assumption. Generic diagnostics may warn about another solver version; fresh authenticated producer rejects it at trusted.rs:1807. |
| Development cache | `cache.rs:39`, `checks.rs:436`; cache key check and decode only | Local cached results are diagnostic artifacts under cache-integrity assumption. A caller-controlled matching cache can manufacture diagnostic `PROVEN`; it is not current authenticated proof authority. |
| Fresh authenticated proof | trusted.rs:588; semantic_proof.rs:215; `verify_complete` atlib.rs:210 | Recompute from canonical admitted exact subject with cache=None, enumerate all selected sites, require exact current manifest, sign actual report; no promotion of development cache/raw caller report. |
| Archived proofs | trusted.rs:1938 and2473 allow0.7.0/current envelope decode | Structural decoding of an old envelope preserves historical evidence. `validate_for_subject` at2536 derives the current manifest; historical decode does not grant current eligibility. |
| Read records | core read.rs legacyv1/currentv2; fresh read proof at reads.rs:66 | Legacy reads assume typed domains only; current reads assume actual enforced snapshot and argument validity. A historical Wire0.8 v1 replay retains v1 behavior. |
| Migration subject | migration matches exact source/target behavior plus schemas | Equal SchemaHash alone is insufficient for a proof subject whose rules differ. |

## Check inventory

| Check / construct ID | Exact implementation | Claimed domain / property | Result handling |
| --- | --- | --- | --- |
| C-VERIFY-001 preservation | checks.rs:655; encode.rs:1576 | Bound surviving/created entity invariants and constraints; affected module invariants in outgoing path. This is not automatically a proof about every unchanged entity's cross-entity invariant. | UNSAT proves selected rule cannot fail on reached path; SAT confirmed `RuleFails`. |
| C-VERIFY-002 referential_integrity | checks.rs:717; encode.rs:1662 | A removed typed identity cannot retain an incoming ref in S'. | Uses unbound ref UF plus bound/created refs; concrete facts add witness referrer. |
| C-VERIFY-003 postcondition | checks.rs:757 | Reached postcondition after earlier conditions/errors, outgoing expressions on S'. | SAT confirmed exact nominated postcondition failure. |
| C-VERIFY-004 evaluation_error/action | checks.rs:808 | Reached expression error, earlier errors excluded; incoming validity checks are domain establishment, not selected body safety sites. | Exact structured error node/code for current profile; legacy message confirmation. |
| C-VERIFY-005 evaluation_error/read | reads.rs:351 | Declared value/filter/projected item over actual read domain, with no successful-membership premise for filter errors. | Full read evaluation must reproduce failure; current failing record includes snapshot. |
| C-VERIFY-006 dead_action | checks.rs:975 | No typed valid bindings reach end of preconditions. | Warning; complete authenticated sites still enumerate redundancy checks even if dead. |
| C-VERIFY-007 redundant_precondition | checks.rs:975 | Earlier path/noerror entails selected precondition. | Warning; this does not discharge evaluation errors in the selected condition. |
| C-VERIFY-008 always_true/always_false | checks.rs:1058, RuleEncoding at1716 | Boolean derived rule on typed and entity-constrained arguments, conditioned on no error. | Warning; no unrestricted state-validity or totality claim. |
| C-VERIFY-009 migration_narrowing | migration.rs:397 | Transform Option/enum narrowing cannot fail from source-valid entity under requirements. | Concrete transform_one confirmation; requirement-dependence listed under. |
| C-VERIFY-010 evaluation_error/migration | migration.rs:397 | Transform numeric/error sites on same source/requirement domain. | Unencodable -> inconclusive; first same-field errors respected. |
| C-VERIFY-011 migration_constraint | migration.rs:489 | Every target entity rule on transformed value, assuming transform success; unchanged types' new rules checked too. | Unsupported target rule -> inconclusive, not ignored successful proof. |
| C-VERIFY-012 migration references | migration.rs:631 | Target Ref carried from source Ref to same type. | Construction sufficient criterion; new/non-carried refs inconclusive. |
| C-VERIFY-013 migration module_invariant | migration.rs:690 | Same source invariant and all dependency fields carried unchanged. | Sufficient construction criterion; otherwise precision-debt inconclusive. |
| C-VERIFY-014 requirement safety | migration.rs:897 | Requirements' error sites under source module-invariant premises. | Current complete authenticated enumeration includes them; SAT is inconclusive absent full-state confirmation. |
| C-VERIFY-015 authenticated completeness | trusted.rs:552,588,2287,2536 | Exact subject/profile/version/site manifest equals every report check; aggregate result follows checks/findings. | Signature and trust policy do not prove encoding correctness. |

## Guarantee–assumption correspondence

Rows are scoped under O-VERIFY-001 (operator/domain simulation), O-VERIFY-002
(current incoming validity), O-VERIFY-003 (historical domains), O-VERIFY-004
(result activation), O-VERIFY-005 (relational overapproximation), O-VERIFY-006
(migration premises), and O-VERIFY-007 (proof trust). Every row uses E-VERIFY-001
inspection evidence and the relevant test group in
[test coverage](evidence/fragments/VERIFY/test-coverage.md). Exact source sites below
refer to the immutable baseline. Primary code-local status is **established by a
code invariant** where an enforcing branch is identified; universal whole-engine
simulation remains **not yet established**.

| Runtime/admission guarantee | Relied on? / exact encoded assumption | Exact enforcement | Scope and qualification |
| --- | --- | --- | --- |
| Bool/Int/Enum/String/typed Id domains | Yes; declare_value encode.rs:455: Bool, i64 range, enum indices, String | core semantic/value.rs decoding; eval.rs:132/208 | Current/legacy typed inputs. Real-encoded decimals intentionally overapproximate input spellings; that weakens precision rather than discarding legal values. |
| Nominals carry underlying domain plus declared scale/grid | Yes; declare_value fixed-scale grid/range at470 | core eval.rs:33; decimal.rs and typecheck | Distinct nominal types checked at admission, while solver sort may coincide; semantic type preservation premise must hold before encoding. |
| Options distinguish absence from present value | Yes; Term::Opt flag plus inner domain, Eq/Ne compares presence then value | core semantic/value.rs; eval Option branches | Arbitrary inactive payload symbolic values are ignored by presence. No nested Option assumed unless admitted. |
| Exact representation intermediates have finite sufficient bound | Yes; encode.rs:646 invokes bounds::representation_safety before encoding | core admit/bounds.rs:387–518 recursively visits children/derived/folds | Unsupported bounds block proof even when historical admission allowed program. General rational sum is not capped at runtime limit; i64::MIN uses64-bit absolute bound. |
| Integer +/−/× either exact i64 result or error | Yes; encode.rs:728 range predicates | core eval.rs arithmetic; checked operations | No rounded integer division: I÷I is exact ratio at admission; unexpected Int division encoding refuses. |
| Rational/fixed-scale arithmetic has no hidden rounding | Yes; encode_exact at971 uses mathematical Reals and explicit div0; fixed-scale range everywhere | core exact.rs, eval_exact_inner at1132 and fixed_value at1096 | Bounded representation must be separately justified. SMT Real models value, not allocation history. |
| Rescale obeys six explicit rounding modes and range | Yes; encode.rs:846; rounding_constraint at1129 | core exact.rs round/rescale, eval rescale branch | Floor/ceiling/toward0/away0/half-up/half-even including signs and ties need arithmetic regression coverage. |
| Conversion/wrap/store must be lossless or explicitly rescaled | Yes; stored exact nominal range predicates, Wrap range and migration Narrowing | core admit/typecheck.rs conversion rules, eval.rs:2738 stored_value | Solver is not allowed to invent lossy stores that admission rejects. |
| Comparisons evaluate both operands in order | Yes; encode.rs:695 concatenates children obligations | core eval.rs Cmp | Eq/Ne for Option ignore inactive payload; ordered comparisons require admitted ordered type. |
| And/Or short-circuit from left to right | Yes; encode.rs:766 path guards accumulated from prior truth/falsehood | core eval.rs And/Or | Checks exclude earlier errors independently; false/true earlier branch skips later body. |
| Coalesce evaluates default only on None | Yes; encode.rs:810 guard not(some) on default | core eval.rs ValueOr | Some construction, IsSome/None and Not retain active child errors. |
| Derived args are typed, finite DAG composition | Yes; encode.rs:663 recursively applies body under formal bindings; memo includes env/post | core admission graph/typecheck, module evaluation_order, eval.rs DerivedRef | Complete bounds follow all derived bodies. Memoization is acceleration, not independent proof authority. |
| State action aliases forbidden by typed identity | Yes; encode.rs:1226 pairwise distinct typed state params | core eval.rs:2659 and3550; invocation resolved alias checks | Input/read parameters may alias; this axiom is only state action bindings. |
| Repeated read identities have equal fields and count once | Yes; relational.rs:279 representative guards / content equality | facts check_snapshot and current validate_snapshot_bindings at4082 | Projection member can equal a read parameter. Existing concrete singleton regression challenges false lower bound. |
| Current incoming S satisfies complete Behavior | Yes; ActionEncoding assumes global rules at1276; read valid_entity/global assumptions at66/225 | core eval.rs:2567/4043, read path3768; Store validate_snapshot | Different schema-equal Behavior still validated. Cross-component guarantees need PERSIST/MODEL review; no global theorem from named functions alone. |
| Input/context entities satisfy constraints, not state invariants | Yes; action Constraint steps any role; reads.rs:77 filters invariants to State | core run_rules role checks; current read argument checks | Historical plain-read domain is weaker and intentionally handled separately. |
| Legacy plain reads do not establish entity validity | Yes; reads.rs:66 returns no validity assumptions for Legacy | core evaluate_read_inner legacy branch | No fresh assumption added merely because old Store often validated S. |
| Bound state entities exist / are used / refs target existing identities | Yes; encode ensure_facts at277, action references at1257 | complete snapshot, Facts consistency, bound_entity validation, Store | Integrity of canonical backend snapshot is trusted within mandatory checked Backend contract; arbitrary lying outside it not universally detected. |
| Existence implies used; referenced implies exists | Yes; fact at316 assertions at337 | core Facts/check_snapshot lifecycle consistency | Historical used facts explicit; equal live StateId does not substitute for equal used history. |
| Creates never reuse identity and cannot conflict | Yes; encode.rs:1478 lifecycle cond not used and distinct creates/removes | core run_transition lifecycle; Store prepare/commit ever_used | Freshness remains historical. Creates are expressions against S, refs/rules against coherent S'. |
| Exists(S') = (exists(S) or created) and not removed | Yes; encode.rs:354 | core eval.rs:934 exists_at | No claim that removals are incremental-cache eligible. |
| Referenced(S') accounts for unbound, surviving bound and created refs | Yes; encode.rs:403 plus world env_post | core eval.rs:983 incoming_prime, full reference facts | `refd` UF deliberately stands for unbound referrers, avoiding double count. |
| Effects/creation values/command bodies read S | Yes; encode.rs:1341 onward uses env, commands at1495 before post flag | core run_transition at2766 | Effects produce candidate S'; later effects cannot read partially mutated predecessor fields. |
| Command false guard skips payload completely | Yes; encode.rs:1528 payload obligation guard includes guard truth | core run_transition command phase | Guard is not an action precondition; an inactive emission does not deny business delta. |
| Canonical emissions/field order, multiplicity and fail-fast errors | Yes; encode.rs command counts/semantic paths; path at1689 | admitted command emissions order, core commands bag/hash; eval command loop | Current profile owns canonical semantic error precedence, not source/provenance order. |
| Preconditions, earlier error/constraint failures stop later safety sites | Yes; ActionEncoding::path/noerr at1679–1703 and checks.rs:808 | core run_rules and run_transition | No fabrication of skipped evaluation/backend error. |
| Query membership is a set of typed IDs | Yes; relational known_cands representative and summaries | core query_s/members, Facts query agreement | Backend enumeration order is not query meaning; canonical evaluation order matters only for selected errors/evidence. |
| Where evaluates body only after base membership | Read projection predicate at114 guards body with base and base-safe | core query_s at446 | Relational summary error flags conservatively overapproximate candidate activation; they do not assume successful filter when looking for error. |
| Union/intersection/difference membership laws; both operands evaluated | Yes; reads predicate141, relational member_q414 | core query_s Set branches | Difference cannot hide excluded branch errors. |
| Captures determine query instance | Yes; relational inst_args at394; equal captures imply UF congruence | core captures at416, query fact agreement1936 | Changed capture creates unrelated summary, not a false same-instance axiom. Derived captured non-candidate reads may refuse encoding. |
| Count includes known members without finite universe cap | Yes; s_count at614 lower bound; exact touched/create delta count_of647 | core fold count, supplied complete universe | Symbolic count may be larger than concrete witness; unsupported reconstruction is inconclusive. |
| Sum equals known sum when count has no unknown member | Yes; sum_of at671 implication count=known_count, touched/create delta | core fold Sum, exact or checked intermediate additions | Free partial-fold error flag protects against out-of-range intermediate despite safe final sum; representation bounds independently conservative. |
| Any/All use existence/counterexample counts | Yes; encode_relational953 normalization to narrowed counts | core fold Any/All short-circuit | Free error flags may admit spurious earlier/later error models; concrete confirmation prevents false counterexamples. |
| Min/Max empty -> None; creates compose; removals/updates can invalidate old extremum | Yes; extremum_of745 fresh post values on touched state | core fold Min/Max Option semantics | Fresh extrema are precision debt, not unsupported language semantics. |
| Unique delta only assumes a uniqueness conjunct known true on S | Yes; held_uniques and delta_unique; relational unique_of865 | core affects/held_uniques361; incoming global validation | Unique nested under disjunction is not assumed independently true; explicit regression covers it. |
| Module invariant dependency skipping uses transitive semantic signature | Yes; ActionEncoding at1641 calls affects | core eval.rs:381; admission signature analysis | Cross-entity unchanged entity rules are distinct from global invariant signatures; see shared validity lead and O-VERIFY-008. |
| Migration exact source Behavior valid, requirements hold | Yes; migration setup78 source rules/global/requirements | core migration/apply.rs:428,470,475 | Dropping an unencodable source assumption overapproximates legal input, so conservative; not a basis to add unknown target guarantees. |
| Migration target full state must satisfy target rules | Yes local target rule predicates, reference/global sufficient criteria | apply.rs:543 validates full target | Local transform_one witnesses lack whole-state validity proof. Uncarried refs/new global queries remain inconclusive. |
| Warning rules assume only valid parameter constraints and noerror | Yes; RuleEncoding1716; checks vacuity1058 | Rule warning contract, typed decode/constraints | No safety or totality asserted by vacuity warning alone. |
| Operational solver faults are not completed current semantic proof | Yes; trusted OperationalSolver records abort;588 refuses report | solver run_process118 and protocol validation268 | Generic diagnostic inconclusive vs authenticated infrastructure failure kept distinct. |
| Every performed backend operation retains error contract | Proof engine has no authority to erase mandatory checks | Store boundary; complete snapshots | Excluded backend call traces/hypothetical unused failures do not weaken trust/concurrency obligations. |

## Proof obligations and limitations

| ID | Proposition / primary status | Supporting scope and remaining premise |
| --- | --- | --- |
| O-VERIFY-001 | Every legal typed scalar/operator execution simulates encoded result/error: **not yet established** globally | Explicit enforcing branches above and regressions support individual domains; no complete operator-composition machine proof, fuzz envelope or independent arithmetic formalization supplied. |
| O-VERIFY-002 | Current incoming full snapshot + argument validity matches assumptions: **established by a code invariant** for identified profile0.8 entry branches | Concrete negative tests execute in E-COORD-009/016; MODEL/PERSIST named joint premises accepted under conforming Backend completeness/coherence. |
| O-VERIFY-003 | Legacy read proof assumes only historically established domain: **established by a code invariant** | reads.rs:66 profile guard. Historical replay selection is PERSIST obligation, not inferred from current record generation. |
| O-VERIFY-004 | Safety-site activation reflects guard/short-circuit/fail-fast runtime: **not yet established** for every legal composed program | Source table identifies guards; E-COORD-009/016 executes the selected regression corpus, recorded separately in O010. No universal composition proof follows. |
| O-VERIFY-005 | All legal query states embed in unconstrained summary proof model: **not yet established** globally | UF count lower bounds, exact deltas, uniqueness assumptions and free error flags inspected. Counterexample witness bounds are excluded from proof premise. |
| O-VERIFY-006 | Sufficient migration proof premises are enforced at apply: **established by a code invariant** | Exact behaviors/source validity/requirements/full target validation. Solver arithmetic correctness external and composition limitation remains. |
| O-VERIFY-007 | Fresh proof trust cannot depend on writable development cache: **established by a code invariant** | semantic_proof/checks no cache, exact manifest and current versions. Signer secret custody and actual solver correctness **assumed but documented** separately. |
| O-VERIFY-008 | Whole-state preservation of every unchanged cross-entity entity invariant: **not yet established** | Bound/created-only preservation enumeration is not complete unchanged-row validation. E-INCREMENTAL-002 confirms F-INCREMENTAL-001 S0/High ordinary G3 omission; absence of a generalized verifier check is not fabricated `PROVEN` evidence. |
| O-VERIFY-009 | Z3 and supplied Solver correctly report satisfiability: **assumed but documented** | Solver trait is explicitly injected. Trusted producer validates named version/protocol, not binary authenticity or SMT theorem by independent checker. |
| O-VERIFY-010 | Collected activation/domain regressions exercise the expected runtime-confirmed alias, bound, filter and command guard/payload classifications: **covered empirically by tests** | E-COORD-009/012/013/016 executes soundness_regressions9, verify read_soundness6 and command_safety12, all passing,0 ignored/filtered. Runtime confirmation shares evaluator; authenticated enumeration shares encoder. This is scoped corpus evidence, not O001/O004/O005 universality. |

## Prior leads and disposition

Prior F1 filter-success assumption and F2 read-domain mismatch from
`docs/soundness-remediation.md` are independently inspected in current source:
projection filter error steps have no successful-membership assumption, nested
false base guards dangerous body, difference evaluates excluded errors, current
reads validate complete state while legacy proofs remain weaker, and input/context
arguments do not assume state invariants. They remain regression-supported
non-findings only after new016 executions are attached; historical statements
alone do not close them.

Prior alias and hidden exact-child false-proof defects have concrete runtime
fixtures and `no_false_proof` assertions. Selected runs must reproduce both runtime
failure and refusal of false `verified` result. No currently inspected case is
claimed a new legal `PROVEN` contradiction without that exact evidence.

Source-only open matters, development-cache integrity and no formal universal
simulation theorem are explicit limits. Verifier precision gaps are not S2.
Current unresolved shared state-validity defects constrain Core's verdict even if
no selected verifier check itself has been contradicted.

## Evidence / review status

E-VERIFY-001: inspection of all verifier source families, runtime/admission
enforcement and baseline authority; see
[source inventory](evidence/fragments/VERIFY/source-inventory.md).
Actual collection/execution is in E-COORD-009/012–016, summarized with comparator
limits in [test coverage](evidence/fragments/VERIFY/test-coverage.md). Exact
unchanged-baseline canonical gates pass; named nonignored workspace cases are
reconciled to quiet group counts, with ignored cases explicitly excluded.
Independent MODEL review accepts the qualified source report. Admission→verifier
and Evaluation→Store→verifier joint notes retain exact producer/consumer premises
and confirmed ordinary G3 omission, independently reviewed in R-VERIFY-006.
No legal false PROVEN is demonstrated here, and no universal simulation theorem
is asserted. No fixes, record/hash changes, solver changes or public API changes
were made by VERIFY.
