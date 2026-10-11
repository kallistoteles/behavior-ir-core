# Code quality and complexity audit

## Scope and evidence

Release baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9` (Core `v0.12.1`). This is an
inspection of existing code, not a cleanup or an implementation proposal accepted
for execution. E-QUALITY-001 is the complete
[source inventory](evidence/fragments/QUALITY/source-inventory.md). E-QUALITY-002
is the qualified source argument in this report; inspection only, exact baseline,
no overlay/test execution fields applicable. Lane reports and canonical execution
provide separate evidence and cross-component limits.

E-COORD-009 subsequently passed every canonical required gate on the unchanged
baseline (`evidence/runs/COORD/baseline-gates/run.json`); source status remained
clean. Named case collection supplements the quiet gate run, which includes
ignored cases and is not universal semantic or panic evidence.

The inventory accounts for 67 workspace source Rust files: 61 production-bearing
files and six files gated wholly by cfg(test). Production-bearing files also
contain explicitly delimited inline tests/instrumentation. External tests/examples,
consumer and delivery scripts are separate inventories; filesystem names such as
`testing.rs` or `conformance.rs` do not themselves make code test-only.

## Type-driven invariants and mode products

| Construct / baseline location | Invariant encoded by type/construction | Remaining inspection risk / premise |
| --- | --- | --- |
| `semantic/expr.rs` Expr private fields, typed children and resolved hashes; `semantic/module.rs` admitted Module | Runtime expressions and module tables enter through admission, not arbitrary wire nodes; resolved identities/types available together. | Internal constructors must maintain typed node/child and hash consistency. Module cloning preserves it. Public wire/Builder values remain untrusted until admit. |
| `semantic/types.rs` Type/Prim/ParamRole and numeric profiles | Domains, role separation and exact profile are explicit enums. | Type aliases `Hash=[u8;32]` and displayed digest strings do not encode each hash domain separately; tagged hashing/code role checks supply distinctions. No demonstrated digest substitution is inferred merely from aliases. |
| `documents.rs:126,239,305,330` HistoryRef/EntityKey/StateRef/SchemaRef | History, typed entity key, live-state position and schema are distinct product types. HistoryRef checked constructor validates format/digests/genesis relation. | Public fields let Rust hosts construct unvalidated products; public Store/history APIs must check them before authority. This is why a struct value alone is not a certificate. |
| `commands.rs` and Core command bag/declaration types | Command intent ≠ committed occurrence; opaque occurrence accessors; canonical multiset keeps multiplicity. | Host delivery state/results are not Core entity state; consuming an uncommitted candidate as a business command would violate host boundary, not create a hidden engine dispatch rule. |
| `StoreError`, numeric/admission/transport/governance errors | Named typed sum domains rather than panic-based untrusted refusal. | Json `result` strings and legacy records still need profile-sensitive checks; false/empty defaults are not automatic evidence of a typed error. MODEL defines precedence separately. |
| `Store<B>` validated Mutex/Arc entry and private Pending/PreparedMigration | Candidate proof/materialization remains private, bound to exact parent/module/schema/history; only post-CAS child carry. | Cache keys include canonical module content, not merely digest equality. Shared aliases drop optimization; caches do not replace committed canonical state. Selected-domain proof is INCREMENTAL's separate audit. |
| Migration strictness/rescale mode and read current-format flags (`eval.rs`, `read.rs`, migration code) | Values are small explicit domains, rounding is an enum, strictness is an admitted operator mode. | Several helpers pass booleans/optional format or tuple components. Current callers establish valid combinations; the mode product is not fully captured by the function's Rust type. Historical profile drift has a concrete PERSIST lead. |
| `store.rs:2469` migration trusted tuple option | Private caller establishes candidate/evidence/context/authorization coherence before commit. | `Option<(Json, Option<CommitEvidence>, Option<Json>, Option<String>)>` admits meaningless combinations at type level. Future changes require following all caller invariants; an internal named checked product would ease reasoning but is not a required semantic redesign. |
| Verify Profile integer/string constructed output versus public Attestation `value:Json` (`verify/src/lib.rs:169–179`) | Internally assembled fields have expected domains. | Publicly mutable raw evidence can violate those assumptions; `to_json_string` defaults canonical failure to empty string. Any authority/equivalence consequence belongs to VERIFY/TRUST, not a style-only conclusion. |

Names mostly preserve key distinctions: content StateId versus exact HistoryRef,
Ref existence versus ever-used lifetime, intent versus occurrence, Pending versus
committed ValidatedSnapshot. `validated` is engine-owned evidence, not persisted
truth. Private `assume_valid` sets (`eval.rs:305–333`) expose the stronger incoming
validity premise; callers must establish it. The nonlocal invalid-child finding
shows why naming/comment discipline alone cannot establish that premise.

O-QUALITY-001 (admitted runtime construction invariants) is **established by a code
invariant**, limited to admitted opaque expressions/modules and checked callers;
public raw wire/documents/evidence are excluded. O-QUALITY-002 (all mode/primitive
products statically encode their semantic distinctions) is **not yet established**:
checks still discharge some obligations dynamically. This is not a claim that
making every identifier a newtype is required for soundness.

## Modules, semantic responsibility and duplication

The runtime dependency graph is acyclic: Core; Verify→Core; Store→Core+Verify;
Engine→Core+Store+Verify; CLI→Engine. Internal dev-tests can import internals; the
external consumer sees only Engine. First-party scripts enforce this supported
consumer boundary. They cannot prove absence of conceptual cycles merely by
checking Cargo dependencies.

| Concern | Shared authoritative mechanism / deliberate split | Audit conclusion and limits |
| --- | --- | --- |
| Type/operator reference meaning | `semantic/types.rs`, admission/typecheck, evaluator exact/decimal operators | Admission and evaluator implement different responsibilities. Solver uses an independent encoding, so full shared code would not substitute for correspondence proof. VERIFY inspects each premise/error path. |
| Plain versus Store evaluation | Store loads/binds facts then calls ordinary Core evaluation; commit rederives using same evaluator (`store.rs:2737–2857`). | Semantic meaning is shared rather than copied into Backend. A common runtime omission can remain invisible to replay/full-vs-optimized comparisons; G3 requires an independent child-validity oracle. |
| Reads versus actions | Evaluator primitive expressions/facts/memo are shared; request/validity/result protocols are distinct. | Current read snapshot/role validity was previously strengthened to match verifier assumptions; distinct admission/role/result categories must remain explicit. No code unification is proposed during audit. |
| Runtime versus replay | Core replay reconstructs request and evaluates, compares complete semantic record. Store data replay reconstructs content/history independently of Behavior; Behavior replay rederives semantics. | Deliberate data/Behavior/reference replay proof scopes are distinct, not redundant engines. Wrong profile selection in Store read/inner invocation replay is F-PERSIST-001. |
| Frozen legacy versus unified invocation | Legacy intent/read/evaluate convenience paths retained, unified resolution shares typed capability/binding machinery. | Historical contractual behavior is not removed just because newer paths are cleaner. Profile selection must survive replay; consolidation cannot rewrite old record meaning. |
| Full versus incremental validation | Changed entities use `check_behavior_snapshot`; dependency classification only proves which omitted rows are unaffected. Private Core delta tests are cfg(test). | No second normative validator. Guard conservatism handles unknown constructs; selected-domain proof cannot discharge nonlocal fallback child validity. |
| Governance and verifier evidence | Legacy structural versus authenticated v2, exact subject/context/history checks | Their different authorities are intentional historical strata. A common JSON representation does not make hash integrity an issuer authorization. |
| Query/index reconstruction | Runtime predicate rechecks candidates; replay derives content/ref index from canonical history | Multiple algorithms check independent obligations. Index completeness remains explicit host promise; shared predicate helpers limit differential independence. |

`eval.rs` (large combined expression/action/read/validity implementation),
`store.rs` (history/schema/governance/migrations/commit), and
`governance/trusted.rs` (policy/signature/manifest/proof/candidate families) require
cross-function review. Their size alone is not a finding. A concrete maintenance
risk is repeated profile/validity selection across entry points: preservation
arguments must inspect each call boundary, and existing positive tests can share
the same omission. Internal extraction may be proposed only with profile-preserving
negative/differential evidence and no public semantic change.

O-QUALITY-003 (one normative meaning, transparent duplicated execution) is
**not yet established** for whole-Core: runtime/Store/replay findings and VERIFY
cache/assumption assessment qualify any global claim. Deliberate version splits
are documented; no generic cleanup is approved.

## Panic, unwrap, expect, unreachable and unsafe

The complete literal candidate list, with exact enclosing cfg boundaries, is in
[E-QUALITY-001](evidence/fragments/QUALITY/source-inventory.md). All 89 matching
workspace source lines are in test-only/inline test scopes: Core commands 3,
Core incremental proof mod 14, Store dependency tests 3, Store incremental tests
44, Store workload tests 17, Store local-validation inline tests 8. These are
matching lines, not a count of macro-expanded calls. No literal production
`.unwrap()`, `.expect()`, `panic!()` or `unreachable!()` was found. Every requested
literal production site is therefore accounted as absent at this baseline.

Six crate entrypoints declare `#![forbid(unsafe_code)]`; lexical unsafe token search
finds no first-party unsafe block/function. There is no first-party safety argument
or caller obligation for a nonexistent unsafe block. This does not audit unsafe
inside dependencies, OS interfaces or the external solver. The constitution's
workspace deny lint exists; actual fmt/Clippy execution is a separate gate result.

Ordinary `unwrap_or`, `unwrap_or_default` and `unwrap_or_else` do not panic merely
because the option/result is absent/error. They still need semantic review:

- Typed constructed Profile hash fallback has a narrower no-float output invariant
  (`verify/src/lib.rs:121`); no generic empty-string authority theorem follows.
- Public mutable Attestation JSON serialization (`:179`) can default an error to
  empty text. Legacy Governance and migration assembly also use fallible hash
  defaults. VERIFY/IDENTITY/TRUST distinguish valid internally constructed values
  from arbitrary caller-edited data; this is F-QUALITY-001's bounded risk below.
- Store validation Mutex lock maps poisoning to typed failure (`store.rs:1159`);
  backend_mut and post-commit carry use exclusive poison recovery/discard. They
  do not turn unknown validity into true (`:1021`, `incremental/mod.rs:78`).
- Evaluator frames default absent pop to empty reads (`eval.rs:1059`); push/pop
  construction and deterministic scope attribution are the enforcing premise.
  The default is not proof of every future caller's balanced frame discipline.
- Public conformance Interleave uses RefCell borrow operations (`conformance.rs:
  167–264`). Wrapper methods land before acquiring read borrow; normal internal
  calls do not overlap borrows. An external Rust host holding the public inner
  RefCell borrow can trigger its runtime borrow panic. That support API's misuse
  is not an untrusted wire-document runtime path or hidden Behavior semantic error.
- Array/BTreeMap indexing can panic even without the banned macros. Checked
  typecheck arity and nonempty parameter tests precede `convs[0]`/`di.params[0]`
  (`typecheck.rs:581,1109`); Store parent maps inserted/checks precede keyed access
  (`store.rs:2185`). This is source-level invariant evidence, not an exhaustive
  proof of all allocation, stack-depth, debug arithmetic or dependency failures.

O-QUALITY-004 (literal production panic/unwrap/expect/unreachable absence) is
**established by a code invariant**, scoped to exhaustive first-party lexical
inventory plus cfg tracing. O-QUALITY-005 (first-party unsafe absence) is
**established by a code invariant** through crate forbid directives and inspected
source. O-QUALITY-006 (all conceivable runtime panic/resource/dependency failure
unreachable from any finite legal input) is **not yet established** and is not
inferred from those lexical absences. No heavy tooling is added to pretend otherwise.

## Mutable state owners and lifetimes

| Owner / lifetime | Mutated knowledge | Binding and leak protection | Remaining premise |
| --- | --- | --- | --- |
| Admitted Module and Expr | None after admission; immutable clones | Opaque resolved semantic fields; version/profile fixed | Correct admission/hash construction. |
| Builder (`builder.rs:123`) | Declaration/name/slot tables and accumulated wire document | Per-builder authoring object; output must be admitted before runtime | Builder output alone is not authoritative valid IR. |
| Evaluator (`eval.rs:305`) | World, observations, scoped read frames, derived memo, query candidates/fetched values, rescale trace, assume_valid | New per request; memo key includes derived arguments/phase; actual reads attributed on memo hit; S and S′ world separated | Incoming validity and exact supplied/provider facts; independent semantic oracle still required. |
| Exact/decimal operators | Local intermediate BigInt/coefficient values | Explicit exact/rounding/domain types; no global numeric context | Resource cost and bounds separate from arithmetic meaning. |
| Admission/typecheck/hash/graph | Per-admission maps/work lists/canonical bytes | No committed Store/cache ownership; deterministic BTree traversal | Finite-count/admission constraints and independent identity arguments. |
| Solver encoders/check contexts | Per-check declarations/terms/fresh names/steps; cancellation Cell | Exact admitted module/profile/version; solver injected; random seeds fixed | Solver/proof assumptions and operational guard outcomes explicit. |
| Verify filesystem Cache (`cache.rs:20–69`) | Files keyed by subject/profile/verifier/solver check identity | Invalid keys/malformed entries/mismatched keys ignored; wall-clock outcomes not stored | Legacy diagnostic memo trusts local producer integrity; matching keys do not authenticate results. Current authenticated generation bypasses the cache (`governance/semantic_proof.rs:215–265`, `lib.rs:214–219`), as documented in `docs/verification.md:188–189`; global G12 is not inferred for arbitrary local cache corruption. |
| Store validation cache (`store.rs:551–572`) | At most one full snapshot/candidate materialization | Exact history+schema+canonical module key, open cold, backend_mut invalidation, post-CAS carry, Arc alias uncertainty discards | Conforming immutable Backend and sound selected dependency proof. No private host mutation through shared Backend is allowed by that contract. |
| InMemoryBackend (`memory.rs:20`) | Canonical history/version/removal maps and derived field/reference indexes | Single accepted atomic argument product, immutable as-of events | In-process reference implementation; arbitrary host durability separate. |
| Replay (`replay.rs`) | Local content/used/ref/schema/accumulator reconstruction | Exact recorded positions and historical schema; shared Store borrow | No canonical mutation, no external dispatch; immutable host reads assumed. |
| Committed command stream | Local authenticated event page and derived occurrences | Exact captured history endpoints, whole events and multiplicity | Delivery/side effects remain host responsibility. |
| CLI atomic output (`cli/src/lib.rs:209–237`) | Process-global AtomicUsize and temporary physical path | Counter/PID only choose temporary filename; output content computed first; rename accepted artifact | Operational filesystem errors/durability do not become Behavior context/state. |
| Conformance wrappers | RefCell complete interleaving event, one next fault/landing | Explicit test-support state; controlled landing boundary | External borrow misuse/backend reentrancy not interpreted as semantic data. |
| Test-only WORK/REFERENCE | Thread-local workload counters/forced reference mode | cfg(test); reference scope restored by Drop guard | Test-only instrumentation may differ from production branch; INCREMENTAL checks both selection implementations. |

O-QUALITY-007 (no incompatible snapshot/version mutable leakage) is
**established by a code invariant** for request-local evaluator/encoder data and
exact engine-owned Store validation-key checks, under declared host contract.
The persistent Verify cache has a separate documented producer-integrity premise:
legacy diagnostic verification may consume a forged matching PROVEN cache entry,
while fresh authenticated verification computes with cache=None. VERIFY/TRUST
confirmed those source paths; the existing poisoned-cache regression
(`tests/trusted_verification.rs:549–570`) explicitly verifies consumption and
fresh refusal. E-TRUST-003 executed that exact case successfully (1 passed,
20 filtered); E-COORD-009/012–016 supplies canonical/default case accounting.
This scoped boundary is not a
newly demonstrated S1/S2 authority promotion and is not merged into the private
Store cache status or a universal cache-corruption theorem.

## Algorithmic complexity

Use `n` live entities, `r` reference edges, `q` query result/membership size,
`d` affected dependency/row closure, `c` realized commands, `h` history events,
`m` module nodes/declarations and `b` serialized value/evidence bytes. Map/set
operations introduce logarithmic factors; exact numeric costs also depend on
coefficient bit lengths. Bounds below describe semantic work, not a machine latency
promise. A source-level big-O model is not a measured benchmark.

| Operation | Current work / source | Inherent versus avoidable work |
| --- | --- | --- |
| Cold snapshot validation / Store open-first operation | O(n+r+b) row/reference/fact construction plus all rule/query costs (`store.rs:1197–1246`). Query/global rule bodies may add multiple universe passes. | Complete validity obligations can require n rows. Duplicate materialization is a possible implementation cost, not a defect without quantified repeated obligation. |
| Warm validation-key hit | Exact module/schema/history identity comparison and Arc reuse; costs include canonical module identity comparison plus bounded history reads (`:1127–1195`). | Removes redundant full row validation in selected unchanged snapshot, not all downstream query/record work. |
| Local child incremental validation/carry | Changed/created complete rows and their dependencies/refs, O(d) semantic work plus map/edge maintenance (`store/incremental/`). | Small delta benefits only proven local domain. Global/unknown dependencies can affect n; arbitrary constant time is unsound. |
| Current Wire0.8 read/decision with complete facts snapshot | At least O(n+b) captured snapshot materialization/normalization/serialization (`eval.rs:2718–2723,3990–3998`). | Inherent lower bound of the current record output; cache reuse cannot avoid bytes the contract requires. No “all reads O(1)” claim. |
| Runtime query / folds/projections | Unindexed candidate scan O(n), predicate cost per row; indexed scan proportional to candidate closure; result/observations O(q+b). Folds may evaluate all members for defined errors/evidence. | Index transport constants differ from semantic affected work; predicate/global change can affect all rows. |
| Ordinary entity writes / state identity | O(d+b) changed version/content/ref computation; reference check may scan affected incoming edges; fixed-parameter MuHash accumulator updates (`store.rs:2165–2341`). | Must materialize changed canonical versions/history evidence; binding/backend call constants not semantic work. |
| Migration | Full source/target validation and transformed entity universe O(n+r+b) plus rule/query/transform costs (`store.rs:256–484,2384–2655`). | Changed schema can require all entities; eager full candidate/evidence has output lower bound. |
| Data replay / content_at / Behavior replay | `content_at` reconstructs h lifetime events and reads n versions; data replay processes range/history/output; repeated calls/rederivation may repeat prefixes (`replay.rs:331–1000,1018–1327`). | Replay inherently visits claimed canonical events. Repeating full prefixes for each step/page is separate algorithmic debt, not new semantics. |
| Committed command page | Full authenticated interval/history+content check and latest-version comparison before enumerating bounded event page (`commands.rs:127–253`). | Occurrence output has Ω(c_page) cost. Current repeated whole-prefix authentication can dominate small pages; trusted reconstructible materialization may later optimize it with same proof obligations. |
| Admission derived graph | Edges/declarations traversed; Kahn loop scans every edges map for each ready item (`admit/graph.rs:70–89`); cycle search repeats from each start, copying paths. | No adjacency reverse index; graph work can exceed O(m+edges). This is S7 algorithmic debt only, no cycle-correctness defect established. |
| Hash/canonical serialization | At least Ω(b); deterministic sorting/count encodings where unordered domains require representation | Canonical bytes/ordering costs are representation, not semantic sequence; saturation/limits are identity audit obligations. |
| Solver checks | Depends on theory/query/rlimit, not only n or m; operational wall-clock guard makes INCONCLUSIVE explicit | Solver completeness/runtime guard gaps are not false proofs by themselves. |

O-QUALITY-008 (cost described without conflating lower bound/constant factor/defect)
is **established by a code invariant** only as this scoped source accounting; no
profiling measurement or asymptotic global theorem is claimed. There is no
performance remediation mandate or new engine abstraction.

## Findings and recommendations

### F-QUALITY-001 — fallible canonical errors silently defaulted

Category S6; severity Low; inspection-based maintainability/error-contract risk.
`verify/src/lib.rs:169–179` exposes mutable Json evidence yet serializes canonical
failure as empty string. Other legacy output/hash assemblers use empty defaults
(`:293`, migration `:881`, governance `:416`), while constructed Profile output
has a narrower no-float invariant. The risk is that future caller/counterexample
changes convert a real error into an apparently successful empty artifact and hide
which semantic precondition failed. No legal-runtime forgery, false authenticated
proof or digest substitution is established by this quality finding.

Recommended proposal: identify each internally guaranteed canonical result and
document the invariant adjacent to the call; distinguish public/raw Json paths
that need typed propagation. Any API/hash/error contract change needs FR-044
versioning review and explicit later approval. Do not mechanically replace all
fallbacks or alter historic records. Source evidence is E-QUALITY-002; independent
review and related VERIFY/TRUST/IDENTITY findings may strengthen/narrow the claim.

The duplicated historical Store replay selection in F-PERSIST-001 is confirmed
S3 by E-PERSIST-004; retain that originating ID rather than recategorizing
its symptom as an additional style finding. The invalid-child/reference comparator
defect likewise retains INCREMENTAL/MODEL ownership. Large modules, primitive aliases,
optional products and graph/page costs are qualified observations with exact
premises, not inflated security/architecture defects.

## Cross-lane handoff and limits

This report supplies O-QUALITY-001–008, E-QUALITY-001–002 and F-QUALITY-001.
PERSIST gives history/profile/durability boundaries; MODEL supplies exact domains;
VERIFY/IDENTITY/TRUST provide cache/error/hash authority and solver correspondence;
INCREMENTAL supplies dependency/commit materialization proof. Their independently
reviewed reports and executions remain necessary. No cleanup was applied, no
historical test-first compliance was invented, and no independent final verdict is
issued by QUALITY.

Different-person T070 reviewer `/root/audit016_verify` accepted the qualified
inventory and S6 Low finding at
`evidence/reviews/VERIFY/quality-review.md`. Author accepts the requests and has
updated diagnostic cache authority/bypass scope with the received VERIFY/TRUST
source disposition. Canonical E-COORD-009 gates and E-TRUST-003 poisoned-cache
regression passed; this review neither authorizes cleanup nor establishes universal panic
freedom or G12 under arbitrary cache corruption.

Baseline canonical gates executed and passed as E-COORD-009, with collected/
default-execution/ignored scope in E-COORD-012–016. Supplemental schema/state,
primitive/derivative, incremental and order cases passed in their bounded domains;
three disclosed contract counterexample overlays failed only their final
assertions. Those failures confirm existing findings rather than blocking audit
completion. No finding is removed merely because existing gates are green.
