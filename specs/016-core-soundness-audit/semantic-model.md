# Core mathematical model audit

## Scope and evidence

Audited source: release `v0.12.1`, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This describes existing meanings;
it neither adds a semantic feature nor repairs a defect. Source inspection is
E-MODEL-001. Execution coverage and independent review are recorded separately in
[evidence/fragments/MODEL/test-coverage.md](evidence/fragments/MODEL/test-coverage.md)
and [handoff.md](evidence/fragments/MODEL/handoff.md). Source locations below refer
to the immutable baseline, not an implicitly newer checkout.

The reference authorities are `PRINCIPLES.md`, the constitution, and the versioned
feature specifications/contracts. Earlier engine/Python contracts describe their
historical scope; today's consumer boundary is `behavior-engine`. Implementation
locations supply evidence of correspondence, not the desired meaning. Specialist
reports refine hash, verifier, persistence and trust scopes. All global conclusions
remain qualified by [global-invariants.md](global-invariants.md).

Notation: `M` is an admitted immutable module; `B` its behavior identity; `Σ` its
schema. `K=(entity type name, textual id)` is a typed entity identity. Live state
`S` is a finite partial mapping `K ⇀ EntityValue_Σ`. `H` is the exact immutable
history prefix; `U_H ⊆ K` its ever-used identities. `I` and `C` are typed input and
context mappings. `F` contains required current-state and historical evidence.
`O` is actual semantic observations; `E` denotes typed semantic failures. An
operation whose implementation returns a refusal-bearing record is modeled as a
sum of outcomes, not as an always successful function.

## Closed algebra inventory

[The subform inventory](evidence/fragments/MODEL/inventory.md) explicitly covers
10 Type variants, 7 Value variants, 24 expression families expanded to 43
operator subforms, 5 query operators, 6 rounding modes, 4 parameter roles,
9 name-table kinds, 3 state-effect forms and 6 fact sections/provider questions.
Those are closed-algebra denominators, not a claim that type/error/profile
combinations collapse to 34 operator families or that every branch is formally proved.

### Core construct table

Each row identifies the mathematical object independently of its Rust container.
`Seq` means contractually significant sequence; `canon` is representation ordering
for an unordered object. The obligation column is the qualified evidence link;
its exact primary status and premises are in the invariant report. The default
source-review evidence is E-MODEL-001; test evidence does not replace it.

| Construct ID / construct | Mathematical object and semantic inputs | Output / error domain | Identity and ordering | Reference implementation; authority | Obligation |
| --- | --- | --- | --- | --- | --- |
| C-MODEL-001 Bool | two-element set `{false,true}` | Bool; malformed input refusal | literal/expression hash; no order promised for arithmetic | `semantic/types.rs:123`, `value.rs:45`; 001 data model | O-MODEL-002 |
| C-MODEL-002 Int | integers in `[-2^63,2^63-1]` | Int; overflow evaluation error | numeric equality; ordered | `types.rs:125`, `value.rs:52`, `eval.rs:1391`; 004 numeric contract | O-MODEL-002 |
| C-MODEL-003 Decimal | exact finite decimals `c·10^-s`, `|c|<10^28`, `0≤s≤28` | Decimal; input rejection | equivalent decimal spellings normalize; numeric order | `decimal.rs:34,38,83`; 004 numeric contract | O-MODEL-002 |
| C-MODEL-004 String | finite Unicode string, current profile count/byte bounds | String; decoding/bound refusal | UTF-8 content, not host collation | `value.rs:63`; 013 semantic-ir Admission | O-MODEL-002 |
| C-MODEL-005 Enum | finite named declaration with distinct alternatives | member; unknown member refusal | declaration identity plus alternative; declaration order retained | `types.rs:74`, `value.rs:67`; 001 typing/hashing | O-MODEL-002 |
| C-MODEL-006 Nominal | tagged domain over Bool/Int/Decimal/String plus declared operation capability set | nominal values; forbidden-op/type/input rejection | declaration identity distinguishes equal underlying values of different types | `types.rs:81,478`; 001 typing, 003/004 numeric | O-MODEL-002 |
| C-MODEL-007 Fixed-scale nominal | decimal nominal restricted to grid `10^-scale` and magnitude `<10^(28-scale)`, `scale∈[0,28]` | on-grid value; grid/range/overflow failure | fixed-scale canonical text; numeric order only if declared | `decimal.rs:96,101`, `eval.rs:33,1096`; 003 numeric contract | O-MODEL-002 |
| C-MODEL-008 Option | disjoint sum `1 + T`; nested Option disallowed | None or present T | absence distinct; no implicit nested flattening | `types.rs:267`, `value.rs:74`; 001 typing | O-MODEL-002 |
| C-MODEL-009 Exact | reduced rational `n/d`, `d>0`, each absolute numerator/denominator bit length≤511, dimensionless or nominal unit | transient exact value; zero-division; internal-bound failure | rational equality and explicit unit; never stored/input/field | `exact.rs:17,71,78`, `types.rs:96`; 004 numeric contract | O-MODEL-003 |
| C-MODEL-010 Id<T> | typed identity `(T,id)` independent of current existence | inert identity; typed input rejection | type name and id; textual equality alone insufficient | `types.rs:135`; 006 data model | O-MODEL-004 |
| C-MODEL-011 Ref<T> | Id<T> field plus resulting-state existence obligation | reference; dangling-reference refusal | field declaration carries Ref distinction | `module.rs:99,111`, synthesized constraint; 006 contract | O-MODEL-004 |
| C-MODEL-012 EntityValue | finite named product of declared fields including immutable id | typed product; missing/extra/type/grid refusal | declaration plus id/value; named mapping not host iteration | `eval.rs:1717,1749`; 001/006/009 | O-MODEL-002 |
| C-MODEL-013 Expression | typed partial function over explicit environment/state/facts/profile | `Value_T + E` with observations | expression hash; operator input order applies | `expr.rs:12`, `eval.rs:1231`; PRINCIPLES, 004/007 | O-MODEL-001 |
| C-MODEL-014 Predicate | Expression with Bool result | true/false/error | expression identity; error/short-circuit contract | `eval.rs:1406`; 001/013 | O-MODEL-001 |
| C-MODEL-015 Conversion | typed embedding / explicit representation change | coerced value or admission/refusal/error | explicit nodes affect semantic form | `types.rs:198,275`; 004 numeric contract | O-MODEL-002 |
| C-MODEL-016 Rescale | grid rounding function indexed by scale/unit/mode | nominal finite value or overflow | six explicit rounding modes included in hash | `exact.rs:22,195`, `eval.rs:1365`; 003/004 | O-MODEL-003 |
| C-MODEL-017 Derived value/rule | immutable typed function composition over declared Read arguments; acyclic dependency DAG | typed value/Bool or E | derived hash, names bound by module; transitive closure required | `module.rs:142`, `eval.rs:1267`, `admit/graph.rs`; 001/004 | O-MODEL-006 |
| C-MODEL-018 Entity constraint | predicate defining admissible entity value; allowed state-fact dependencies under context | satisfied/violated/E | rule hash; named-map evaluation deterministic | `module.rs:234`, `eval.rs:1757,3456`; 001/006 | O-MODEL-005 |
| C-MODEL-019 Entity invariant | predicate over each live instance under applicable state | satisfied/violated/E | rule hash; per-type binding; not limited syntactically to fields | `module.rs:177`, `eval.rs:2232,2787`; PRINCIPLES/006 | O-MODEL-005 |
| C-MODEL-020 Module invariant | closed state predicate over declared query types/fields | satisfied/violated/E | invariant hash; signature derived and non-authoritative | `module.rs:207`, `eval.rs:381,2208`; 007 data model | O-MODEL-005 |
| C-MODEL-021 Module | immutable finite mapping from kind/name to admitted semantic item plus selected semantic profile | admitted M or structured admission failures | BehaviorHash; name binding semantic, loc metadata excluded | `module.rs:547`, `admit/mod.rs`; 001/013/011 | O-MODEL-009 |
| C-MODEL-022 Store schema | sorted mapping entity name→declaration identity including field dependencies | exact Σ; schema mismatch | SchemaHash, behavior-only changes excluded | `schema.rs:17,57`; 009 data model | O-MODEL-010 |
| C-MODEL-023 Live state | finite partial map K⇀typed values under Σ | S; invalid state | StateId commits live content, excludes position/revision | `behavior-store/muhash.rs`; persistence contract | O-MODEL-009 |
| C-MODEL-024 History | immutable sequence of atomic event records from genesis | H and exact endpoint | store identity, position, last-record hash; sequence semantic | `behavior-store/documents.rs`; 005/013 | O-MODEL-010 |
| C-MODEL-025 Lifetime registry | monotonically growing set U_H of typed identities ever created | used(K) Boolean | history-sensitive; not StateId content | `facts.rs:42`, Backend `used_at`; 006/PRINCIPLES | O-MODEL-004 |
| C-MODEL-026 Existence fact | predicate `K∈dom(S)` | Boolean or unknown/operational fact error | `(type,id)`; observed facts canon | `facts.rs:42`, `eval.rs:921`; 006 | O-MODEL-006 |
| C-MODEL-027 Incoming-reference fact | finite set of source-cell edges targeting K at S | complete edge set or fact error | source type/id/field; canon not sequence | `facts.rs:22,42`, `eval.rs:968`; 006 | O-MODEL-006 |
| C-MODEL-028 Universe evidence | complete per-type finite state mapping; explicit empty type required current profile | snapshot or inconsistency/invalid-state failure | ids unique; canon typed values | `facts.rs:104`, `eval.rs:4043`; 007/013 | O-MODEL-006 |
| C-MODEL-029 Query | typed finite subset of live identities, candidate-local filter plus captures | membership set or E | query definition/instance identity; backend order irrelevant | `expr.rs:125`, `eval.rs:446`; 007 | O-MODEL-007 |
| C-MODEL-030 Aggregate | typed fold/function over membership and lambda outputs, with contractual error order | scalar/Option/Bool or E | result evidence; canonical id traversal only where contract requires error selection | `eval.rs:783`; 007 data model | O-MODEL-007 |
| C-MODEL-031 Query/field observations | actual partial read relation, including complete membership per observed instance | O/F; inconsistency/unknown fact | instances and fields canonical, validation reads distinct from body reads | `facts.rs:91,104`, `eval.rs:270`; 007/013/current read | O-MODEL-006 |
| C-MODEL-032 State cell | `(entity type,id,field)` addressed independently of action parameter name | value; state-action alias/binding rejection | actual semantic cell; duplicate State-role action targets forbidden; read/input alias rules are distinct | `eval.rs:3550`, PRINCIPLES | O-MODEL-004 |
| C-MODEL-033 Update effect | declared assignment expression evaluated against original S | cell delta or E | ordered definitions retained; no execution side effect | `module.rs:267`, `eval.rs:2880`; 001 | O-MODEL-008 |
| C-MODEL-034 Create effect | absent lifetime→complete entity with fresh typed id | addition or ENTITY_ID_ALREADY_USED/conflict/E | id∉U_H, not merely absent in S | `module.rs:286`, `eval.rs:2970`; 006 | O-MODEL-004 |
| C-MODEL-035 Remove effect | live entity→absence while preserving lifetime/history | removal or dangling/conflict/refusal | removes live membership, never registry entries | `module.rs:316`, `eval.rs:3060`; 006 | O-MODEL-004 |
| C-MODEL-036 Delta/apply | finite compatible changes to real cells and entity membership; simultaneous RHS semantics | S'=apply(S,Δ), or refusal before persistence | lifecycle/effect record order versioned, real-cell identity | `eval.rs:2766`, Store bundle derivation; PRINCIPLES/006 | O-MODEL-008 |
| C-MODEL-037 Action/transition | typed partial proposal function `(S,I,C,F_H)→Outcome(Δ,K,O,evidence)` | ALLOW/DENY/ERROR/INVALID_INPUT/INVALID_STATE plus legacy lifecycle results | action/B hash; pre/post/effects retain ordered semantics | `module.rs:366`, `eval.rs:2507,2766`; PRINCIPLES/013 | O-MODEL-005 |
| C-MODEL-038 Validation | conjunction of typing/constraints/entity/global/ref obligations over exact S,M | valid/invalid/evaluation failure | no independent semantic cache authority | `eval.rs:2232`, Store validate_snapshot; 013/014/015 | O-MODEL-005 |
| C-MODEL-039 Pure read | observation function over S,I,C,required facts; no Δ or K | VALUE/EVALUATION_ERROR/INVALID_INPUT/INVALID_BINDING/INVALID_STATE profile-specific | read + record identity; no history mutation | `read.rs:49`, `eval.rs:3687`; 010/current remediation | O-MODEL-011 |
| C-MODEL-040 Projection | named product per query member or bound entity; implicit id | finite sequence in canonical identity order or one product; E | Field/Derived items; no duplicate names | `module.rs:441–508`; 010 data model | O-MODEL-011 |
| C-MODEL-041 Capability | named declared action/read; not arbitrary derived invocation | resolved capability or typed refusal | module name binds itemhash; kind explicit | `invocation.rs:510`; 012 contracts | O-MODEL-012 |
| C-MODEL-042 Requested invocation | caller-supplied typed target identities/input, trusted context separate | shape/intent/binding errors or resolved call | exact snapshot/module/capability evidence | `invocation.rs:41,562`; 012 | O-MODEL-012 |
| C-MODEL-043 Snapshot/resolver | immutable semantic state evidence with history provider and data-version label | bound typed values or transport/refusal error | alias/existence/schema checks required; supplied identity not authority | `invocation.rs:108,462`; 012/013 | O-MODEL-012 |
| C-MODEL-044 Invocation record | immutable sum of refused request or executed capability evidence | record/replay comparison | invocation identity includes contracted semantic request/result; diagnostic limits profile-specific | `invocation.rs:689,1205`; 012 | O-MODEL-013 |
| C-MODEL-045 Command declaration | named typed finite product of supported scalar payload fields | declaration or admission error | declaration hash; fields canonical by UTF-8 name | `commands.rs:26`; 013 semantic-ir | O-MODEL-014 |
| C-MODEL-046 Command emission | guarded request definition evaluated at original S | ∅ or singleton intent, or guard/payload E | definition multiset canonical; false guard does not evaluate payload | `commands.rs:139`, `eval.rs:3130`; 013 | O-MODEL-014 |
| C-MODEL-047 Command intent | immutable typed payload+declaration request; no external execution | constructed intent or value/count error | intent hash; no committed occurrence identity yet | `commands.rs:56`; 013 semantic-ir | O-MODEL-014 |
| C-MODEL-048 Command intent collection | finite multiset, multiplicities preserved | complete K only on ALLOW, empty on denial/error | canonical sort encoding, no semantic emission schedule | `commands.rs:121`; 013 | O-MODEL-014 |
| C-MODEL-049 Committed occurrence | intent multiplicity anchored to committed store/event | opaque dispatchable occurrence or history refusal | store/event/intent/canonical multiplicity index; not fed into eventhash | `behavior-store/commands.rs`; 013 store/replay | O-MODEL-015 |
| C-MODEL-050 Canonical encoding | representation function preserving each domain's equivalence relation | canonical bytes or strict decoder error | order canonical where object unordered; no finite-hash injectivity claim | `canonical.rs`, `admit/hash.rs`; 001/013 | O-MODEL-009 |
| C-MODEL-051 Entity content identity | typed product content including declaration and id/value | entity content hash | excludes revision/history, includes schema declaration | Store documents/MuHash; 005/009 | O-MODEL-009 |
| C-MODEL-052 Commit bundle | candidate/evidence bound to exact store/history/parent/B/schema | refusal/conflict/Applied/recovered commit/backend error | no durable authority before Backend atomicCAS | Store `store.rs:1883`; 005/013 | O-MODEL-016 |
| C-MODEL-053 Migration | explicit total-on-applicable-source representation transform with checked narrowing and retirement | valid target state or typed refusal/E | migrationhash plus exact source/target behavior applicability | `migration/mod.rs:113`, `apply.rs:408`; 009 | O-MODEL-010 |
| C-MODEL-054 Standalone replay | re-evaluation from immutable record evidence and exact applicable M | matches/divergence, not store authenticity | historical record/profile dispatch retained | `record.rs`, `read.rs:140`, `invocation.rs:1205`; 001/010/012/013 | O-MODEL-013 |
| C-MODEL-055 Store replay | historical data/behavior/index agreement checks against canonical storeprefix | first divergence/backend error; never mutation | exact schema/history position and original record meanings | Store `replay.rs`, `store.rs:1437`; persistence contract | O-MODEL-013 |
| C-MODEL-056 Verification | bounded symbolic check returning proof/counterexample/inconclusive for specified proposition | PROVEN/COUNTEREXAMPLE/INCONCLUSIVE or tooling failure | exact checker version/check descriptor/module/profile; not proof by hash alone | Verify checks/encode; 002/013 | O-MODEL-017 |
| C-MODEL-057 Governance evidence | integrity/authenticated attestation/policy authorization as distinct typed claims | validated authorization or rejection | exact issuer/policy/candidate/store/state bindings; legacy structural form scoped | Verify governance, Store commit; 008/013/docs governance | O-MODEL-018 |
| C-MODEL-058 Backend | abstract immutable snapshot/history service plus atomic compare-and-set | results/BackendError; contract obligations external to Core | enumeration nonsemantic; full identity/history required | Store `lib.rs:43`; 005/006/013 | O-MODEL-016 |
| C-MODEL-059 Validation certificate/materialization | reconstructible private evidence keyed to exact committed state/history/schema/semantics | reuse eligible or full evaluation | not state fact; only Applied publishes child evidence | Store `store/incremental/`, snapshot reuse; 014/015 | O-MODEL-019 |
| C-MODEL-060 Internal reference derivative | test/proof function `diff(f(x),f(apply(x,δ)))` over complete result domain | value/error replacement delta | private proof machinery, no Wire/API semantics | `incremental_proof/`; 015 delta contract | O-MODEL-019 |

## Operator semantics, complete subform mapping

For each row, full meaning is independent of reuse. Eval source ranges are
`eval.rs:1220–1528` for ordinary operators, `446–633` for query membership,
`783–918` for folds; admission's `typecheck.rs` supplies typing/scope checks.
Migration-only narrowing is admitted by `migration/admit.rs`. The authoritative
numeric meanings are 003/004 numeric contracts; query meanings are 007 data model;
ordinary typing is 001 data model. Each row is under O-MODEL-001/002/003/007 and
E-MODEL-001; subtype restrictions are obligations rather than unchecked coercions.

| Subform | Full meaning and error/activation contract |
| --- | --- |
| Lit | admitted typed constant; enum/id/nominal interpretation comes from Type |
| Field / Param | lookup in explicit current-phase environment; member lookup records actual fields |
| DerivedRef | evaluate resolved target body under declared argument substitution; phase-sensitive memo, dependency/error propagation |
| Eq / Ne | typed equality / inequality; same-nominal identity required; numeric exact equality where permitted |
| Lt / Le / Gt / Ge | exact typed order, capability-gated for nominals; no host string collation introduced |
| Add / Sub | integer checked arithmetic; decimal/exact closure rational; fixed-scale closed cases checked range |
| Mul | declared nominal scaling / integer checked multiplication / exact rational product |
| Div | exact rational quotient even Int÷Int; zero divisor is reachable evaluation failure; mismatched units rejected |
| And | sequential conjunction with false short-circuit; only reached operands contribute errors/observations |
| Or | sequential disjunction with true short-circuit; only reached operands contribute errors/observations |
| Not | Boolean negation, operand failure propagated |
| In | evaluate typed needle; membership in admitted nonempty constant set, equality contract |
| IsNone / IsSome | option discriminator after operand evaluation |
| ValueOr | evaluate option first; fallback evaluated only for absence |
| Some | embed T into Option<T>; exact narrowing and nested option forbidden where typing requires |
| ToDecimal | exact Int→Decimal embedding; not arbitrary nominal unit erasure |
| Wrap / Unwrap | explicit nominal tagging/untagging where admitted; Exact nominal unwrap is rejected LOSSY_CONVERSION |
| Rescale HalfEven | closest grid point; ties to even coefficient |
| Rescale HalfUp | closest grid point; exact ties away from zero |
| Rescale Down | grid rounding toward zero |
| Rescale Up | grid rounding away from zero |
| Rescale Floor | greatest grid point≤value |
| Rescale Ceiling | least grid point≥value |
| Exists | membership in S or candidate S' by phase; absent Option<Id> gives false; missing required fact error |
| Referenced | incoming surviving Ref edge set nonempty at phase; Id only; never identity-use predicate |
| Count | cardinality of finite query membership, checked representable Int |
| Fold Any | existential Boolean over canonical members; empty false; short-circuit at first true |
| Fold All | universal Boolean; empty true; short-circuit at first false |
| Fold Sum | canonically ordered repeated exact addition, empty exact typed zero; bounded Int/fixed-scale intermediate range checked; F-MODEL-001 is an evidenced non-finding |
| Fold Min / Max | minimum/maximum of admitted numeric ordered body; empty None; full body failures propagate |
| Fold Unique | projection-key map injective on members; duplicate keys false; optional/null key equality applies; skip rule only under established parent invariant |
| StrictUnwrap | migration-only Option elimination; absent is narrowing error |
| EnumMap total | admitted full source→target enum mapping; absent Option remains absent |
| EnumMap strict | partial mapping; missing source alternative is narrowing error; absent Option remains absent |
| Select | set dom(S) restricted to entity type |
| Where | candidate-local predicate selection plus admitted captures; nested query/nonlocal dependencies rejected |
| Union / Intersection / Difference | same-type set union/intersection/relative complement; multiplicity cannot duplicate entity |

No Query<T> value is stored, compared, passed as a general parameter or returned
as a derived scalar. Lambdas use `$c` as an unforgeable internal candidate marker.
Their captured scalar/field reads are explicit; free access to another entity,
queries, existence/references or a derived function over another entity is rejected.
Semantic query membership is unordered. FR-020a of 007 explicitly defines canonical
identity traversal for operations that can stop, including errors; its repeated
bounded addition may fail on an intermediate prefix even when the final mathematical
total is representable. This is a partial canonical fold, distinct from unbounded
integer summation. Backend enumeration permutations preserve it; renaming ids changes
the semantic state and is not an equivalence promised by the contract.

## Full operation meanings and authority-bound signatures

These signatures are refinements of the actual contract; `Result` below means a
sum type, not the illustrative four-parameter generic type used in PRINCIPLES.
They separate proposal from durable commit and semantic from operational failure.

| Operation | Reference meaning | Existing authority / enforcing sites |
| --- | --- | --- |
| Admit | `Document_profile → admitted M + ordered AdmissionProblems`; strict profile decoding precedes typed lowering, dependency cycles and numerical bounds | 001/004/013 contracts; wire decode, admit/typecheck/graph/bounds |
| EvalExpr | `(M,expr,S_phase,I,C,F,bindings) → (Value_T + E,O)`; any caches must reproduce same reachable result/observations | PRINCIPLES/004/007; eval evaluator |
| Evaluate | `(M,action,S,I,C,F_H,data_version) → DecisionRecord`; ALLOW carries Δ and command multiset K, other outcomes discard candidate effects/commands | PRINCIPLES/013; `eval.rs:2507,2766` |
| Apply | `(S,compatible Δ) → S'`; all effect RHSs evaluated at original S, then updates/creates/removals simultaneously determine result; no in-place external execution | PRINCIPLES/006; run_transition/world overlays |
| Validate | `(M,complete S,coherent F_H if needed) → valid + invalid reasons + E`; typed rows, constraints, per-entity invariants, Ref existence, module invariants | 013 snapshot contract; `eval.rs:2232`; Store snapshot validation |
| Read | `(M,declared/ad-hoc read,S,I,C,F,data_version) → ReadExecution(response,record)`; Δ=∅ and K=∅ | 010 + soundness remediation/current v2; `read.rs:49`, eval read |
| Invoke | `(M,capability request,host C,resolver/snapshot) → refusal record + action/read execution`; failed transport may have no requested invocation | 012 contracts; `invocation.rs:562,971,1155` |
| Migrate | `(migration,M_source,M_target,S_source,history facts) → transformed target S + evidence + refusal/E`; source/requirements checked; all target rows/global validity checked | 009; `migration/apply.rs:408` |
| Commit | `(StoreId,exact parent endpoint,M,candidate bundle,policy evidence) → Applied + idempotent recovery + refusal/conflict + BackendError`; successful state/history/commands become authoritative together | 005/013; Store commit + Backend atomicCAS |
| Replay standalone | `(M,immutable record) → matches/divergence`; recompute contracted semantic result from immutable evidence; no store authenticity claimed | 001/010/012/013; record/read/invocation replay |
| Replay store | `(historical store endpoint,module/migration resolver) → equality/first divergence + BackendError`; data replay, behavior replay, reference replay prove different scopes | 005/006/009/013; Store replay |
| Verify | `(M/check/profile,solver configuration) → PROVEN + confirmed COUNTEREXAMPLE + INCONCLUSIVE + operational failure`; each result concerns exact obligations/assumptions | 002/013/docs verification; Verify encoder/checks |

A current store-backed transition may use validation reuse internally, but its
semantic target is the same complete validity proposition. Existing nonlocal
creation behavior is challenged by INCREMENTAL; the model does not weaken G3 to
make that implementation valid. Older plain evaluation's partial-state contract
and current store-wide snapshot validity must not be confused.

## Result and error algebra

| Category | Observable outcome and priority | Applicability / source |
| --- | --- | --- |
| Transport syntax failure | typed TransportError or refused current read record, before binding/evaluation | invocation strict parser; current read decoder |
| Admission failure | structured decode/type/scope/cycle/bound/version problems; no M | wire/admit |
| Input/binding rejection | INVALID_INPUT, INVALID_BINDING or unified IntentError/Refusal before body execution; nominal equality/type/snapshot/target checks | eval request; read; invocation resolve |
| Invalid state | INVALID_STATE/Store refusal when complete required validity fails; does not imply a precondition was false | current profile snapshot; Store validate_snapshot |
| Semantic refusal | DENY plus constraint/invariant/pre/post/dangling reasons; partial Δ/K not exposed as successful | run_transition; commands profile |
| Legacy lifecycle refusal | ENTITY_ID_ALREADY_USED, LIFECYCLE_CONFLICT are explicit historical decision outcomes, not reclassified silently | 006 records, record replay |
| Evaluation error | ERROR for action; EVALUATION_ERROR for read; division/overflow/narrowing/unknown fact/guard or payload errors on reached path | eval.rs:1106,1406,1458,2766; read |
| Verification result | PROVEN/COUNTEREXAMPLE/INCONCLUSIVE; not Boolean valid/invalid and not authorization itself | Verify checks; docs verification |
| Operational error | BackendError, unavailable solver/transport infrastructure failure from actually performed operation | Store Backend, verifier solver; path-specific mapping retained |
| Internal invariant error | exact-bound/not-representable or impossible typed-case failure; unreachable claim conditional on admission/code premises | decimal NumError, eval internal branches |

Within action evaluation, incoming entity constraints precede state invariants,
then preconditions, original-state field/create/remove proposals, canonical command
emissions, postconditions, outgoing entity invariants, outgoing constraints,
affected global invariants, surviving-reference checks for removals, and final
command-bag construction. Failed reached stage stops
later evaluation; inactive/short-circuited stages contribute no hypothetical error.
Ordered source components keep their historical order. Current command definition
bags are evaluated in canonical semantic order and payload fields in canonical name
order. A false guard yields no request and never evaluates its payload.

`Value→Value`, `Value→Error`, `Error→Value`, `Error→Error` are all genuine
changes in `Result(Value,E)`. The private reference derivative compares the full
result domain, not just successful values. Operational failures from correctly
omitted redundant backend reads need not be fabricated; eliminated operations
cannot eliminate their semantic/trust proof obligations.

## Ordering and explicit inputs

| Collection / dependence | Mathematical classification and relevant distinction |
| --- | --- |
| Live entities / query membership | finite mapping / finite set; enumeration never determines membership |
| Module declarations / fields | name mappings; entity/enum declaration order included where contract retains it |
| Preconditions/postconditions/state effect definitions | historical ordered sequences; their error selection/trace order is contractual |
| Command emissions / intents | finite multisets in current profile, multiplicity preserved, canonical serialization/evaluation |
| Observed facts/fields | partial relations/maps; canonical ordering for evidence; complete membership per observed query |
| Projection rows | canonical-identity sequence derived from membership; projection product keys are named fields |
| Error/problem lists | ordered deterministic path/profile outputs; not an arbitrary set silently sorted after failure |
| History/command pages | event sequence plus within-event canonical bag occurrence identity; history order semantic |
| Hash inputs | domain-specific tagged canonical preimages; representation order does not invent meaning |
| Ever-used | monotone historical set; same StateId can coexist with different U_H |
| Clock/random/network/current external systems | absent as implicit evaluation inputs; hosts inject explicit context/facts; commands describe requests, never execute I/O |

F-COORD-006 is reassessed by explicit `F_H` in `PRINCIPLES.md:78` and
`facts.rs:1–15,42`; the old formal signature gap is corrected in the baseline
model. Store history facts remain an independent contract premise, not inferred
from StateId. F-COORD-008 is reassessed by `validate_complete_snapshot`'s typed
normalization and `check_query_snapshot_inner`'s universe agreement; executable
regressions and their limits are in test-coverage. These statements do not certify
arbitrary supplied fact providers or historical record versions.

## Known model/implementation questions

F-MODEL-001 is an evidenced non-finding after reviewing all applicable authorities:
007's data model defines repeated exact addition, FR-020a establishes canonical
identity traversal on error-producing operations, and `docs/verification.md`
explicitly models partial-sum finite-range checks. A representable final total can
still fail at a canonical prefix under this existing partial-fold contract. The
lead is retained with its evidence and review rather than inflated into unsoundness.

Other global obligations, including the independently challenged full child
validity path, remain qualified in global-invariants and specialist reports.
No row in this inventory means a complete theorem for the entire kernel was proved.


## Actual evidence and independent-review qualification

E-COORD-009 required baseline gates pass; actual collection/default execution is
accounted in E012/013/016 and E-MODEL-005, with target counts and comparator limits
in MODEL/test-coverage. R-VERIFY-001 independently accepts the mathematical/source
inventory after the documented bounded-fold and action-order corrections.
F-INCREMENTAL-001 is now confirmed S0/High by direct E-INCREMENTAL-002/R-VERIFY-006;
ordinary full/optimized agreement cannot discharge complete committed-child validity.
Historical Store profile substitution and raw duplicate evidence acceptance remain
separate owning-lane findings; reference meanings are not inferred from those bugs.
No operator semantics, public contract or runtime correction was introduced by
these reports. The final integrated area/verdict matrix remains coordinator-owned.

Fixed-seed E-MODEL-002 actually executes 34 primitive/hash/query/read-replay tests;
E-MODEL-003 executes 4 private reference derivative/result tests with4 other library
tests filtered. E-MODEL-004 explicitly runs the otherwise ignored release order
case over 1000 coded permutations:1 passed, zero ignored/filtered. Source-defined
generators and shared-comparator limits are in MODEL/test-coverage; no universal
operator theorem follows. Ignored 10k history/workload/latency cases remain
explicitly unexecuted. These run counts supplement, rather than rewrite, the
default collection/gate accounting.
