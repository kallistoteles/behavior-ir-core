# Incremental validation audit — 014/015

Baseline `v0.12.1`, commit `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Owner INCREMENTAL. This is a private
optimization audit, not a new delta language, public API or validator implementation.
E-INCREMENTAL-001 is source/authority inspection; actual collection, baseline
execution and test-only counterexample evidence are linked in the lane fragments.

## Normative proposition and actual selected domain

Full validity is `Valid_M(S)`: successful row decoding/key identity matching,
every entity constraint and invariant (including synthesized Ref existence),
every global invariant, with no active evaluation errors. Core's reference function
is `eval.rs:2232 check_behavior_snapshot`; Store cold snapshot validation
`store.rs:1197` also checks listed keys/version/removal consistency while assembling
its complete universe. Normative sources are PRINCIPLES valid-transition formula,
013 snapshot validity, 014 correctness and 015 correctness. A complete child
validation result is an ordered failure list, not merely a Boolean.

For an exact valid committed parent and the selected local updates/creates class:

`IncrementalValidate(S,Δ,M) = FullValidate(apply(S,Δ),M)`.

M comprises exact admitted module/schema/profile and the runtime validation
semantics of this engine process. A cache cannot outlive that process/binary, so
no persisted validator-version fact is introduced. Existing semantics determine
validity; cached evidence does not create a new authority. Parent history/freshness,
requests, governance, consistency, rederivation and Backend atomicCAS remain
independent obligations.

Current production eligibility is 015's `store/incremental/dependency.rs`.
014's earlier `local_validation.rs` is now compiled only under `cfg(test)`
(`store.rs:8–9`) as historical guard/regression machinery; it is not a second
production validation route. Same-snapshot reuse still supplies the 014 operation.

| C-INCREMENTAL construct | Mathematical object / exact source | Domain and evidence qualification |
| --- | --- | --- |
| C-INCREMENTAL-001 SnapshotIdentity | private exact binding of HistoryRef + SchemaRef + admitted canonical wire, `store.rs:562,1127` | StoreId/live StateId/position/event hash/schema/module content; same-state different history distinct; source locations may conservatively cause a cache miss |
| C-INCREMENTAL-002 ValidatedSnapshot | reconstructible fact materialization + binding, `store.rs:569,1165` | one bounded entry per Store instance; established only after successful complete validation/genesis Backend.create |
| C-INCREMENTAL-003 Locality guard | proof of complete transitive row dependency, `incremental/dependency.rs:7,43,71` | no global invariants; ordinary entity rules row-local; only synthesized Ref special exception; unknown/nonlocal not eligible |
| C-INCREMENTAL-004 Candidate | immutable overlay `changed ∪ parent` for updated/created complete rows, `candidate.rs:4,9,28` | resulting-state existence sees every candidate create; no removal/global-query proof |
| C-INCREMENTAL-005 Pending | stack-local parent/child evidence, `incremental/mod.rs:8,13` | exact rederived transition successor; cannot publish before successful atomicCAS |
| C-INCREMENTAL-006 Carry | post-Applied patch of private materialized values/refs and exact child binding, `mod.rs:70` | exclusive Arc ownership or eviction; refusal/error/lostack/HeadMoved never publish candidate |
| C-INCREMENTAL-007 Full-child oracle | complete row reconstruction plus refs from declared fields, `incremental/tests.rs:93` | independent of locality classifier/cache/ref_changes; shares ordinary semantic validator and assumes conforming Backend |
| C-INCREMENTAL-008 Reference derivative | test-only complete-result replacement, `behavior-core/src/incremental_proof/delta.rs:14,41` | Value/Error transitions and exact before-input check; generic correctness by definition, not production operator optimization proof |

## Exact binding and lifecycle

`Store::create` validates complete seed before writing (`store.rs:955–995`), then
initializes a certificate only after Backend.create succeeds. The Backend success
contract is needed; initialization failure/partial-write semantics are a separate
PERSIST underspecification investigation. `Store::open` always starts with no entry.
`backend_mut` clears entry and poison before mutable backend access (`1010–1026`).

A cache hit first computes the exact identity. At nonzero position it reads and
checks that position's record/result_state then hashes it (`1127–1157`). A current
operation still reads head/schema/bindings as required. The identity includes:

- StoreId and state content identity;
- exact position and record hash, retaining equal-live-state/different-history distinction;
- complete effective SchemaRef, not touched declarations only;
- canonical admitted wire including runtime profile; equal digest alone does not substitute for module equality.

Additional source metadata may conservatively invalidate reuse; that is a
performance miss, not semantic divergence. Canonical wire contains the declared
IR profile. Cache memory is process-private; validation code cannot change while
retaining the same entry. No cache key need be serialized or added to BehaviorHash.

During commit, `rederive` at `store.rs:2782` validates the exact parent and reproduces
ordinary decision/facts/write set. Historical `used_at` freshness and integrity
checks remain before candidate creation. The engine constructs the exact prospective
record/new head at `2280–2338`. `validate_incremental_child` first returns None
for removal/migration/nonlocal module, then checks committed/evaluated parent and
successor position (`mod.rs:21–35`), requires matching existing certificate and
validates candidate rows under coherent child facts. Pending retains parent and
child identities only; it does not patch the cache.

`store.rs:2340–2377` calls Backend.commit with that exact record/head/versions/refs.
Only `CasOutcome::Applied` calls carry. Backend error exits, including a lost
acknowledgment after actual persistence; HeadMoved returns conflict. The retained
old entry may remain, but cannot match the actual committed child's history.
On the next operation an actual new head causes a miss and complete reconstruction.
Idempotent recovery of an already committed event is an independently checked
ordinary Store path, not publication of a speculative Pending.

Carry checks exact child state/position/event/effective schema, then exact parent
entry, then unique Arc ownership. Any binding/ownership uncertainty evicts. It
patches supplied persisted versions and canonical reference edges; no O(n) universe
clone is used. A None Pending leaves at most the old entry, whose identity cannot
match a new event. Migration/unsupported child cannot acquire a false certificate
from its parent's equal StateId.

## Complete dependency closure and the local theorem

`row_local` checks actual binding provenance. Lit is local; Param/Field must
resolve within the current row's bindings. DerivedRef recursively resolves the
actual profile-sensitive target, checks argument arity/all actual arguments local,
tracks visiting hashes, substitutes formal binding set and examines the entire
body. All children of arithmetic/comparison/Boolean/Option/conversion/rescale and
migration-only forms are analyzed, including potentially short-circuited branches.
Admitted definitions form a finite acyclic DAG, but the classifier still rejects
recursive/unknown/missing paths conservatively. Current ordinary evaluation also
resolves CommandIntents targets by hash then name; guard matches that existing rule.

Exists/Referenced/Count/Fold are false for ordinary locality. Global invariants
make the whole module ineligible. Unused nonlocal derived definitions are not
obligation roots: they cannot affect skipped validity checks unless transitively
reached from a rule. Query/global/cross-row dependency is not made eligible just
because the outer rule mentions a derived value.

Partition complete validity into changed/created rows T and unchanged rows U.
For U, all ordinary row inputs/semantics stay equal by the transitive locality
argument, so an established successful parent result stays successful, including
active error behavior. For unchanged synthesized Ref, no target removal means
`exists_S(target) ⇒ exists_S'(target)`; optional None remains None. These are the
only allowed nonlocal synthesized obligations, not a general Exists exception.

For T, `check_behavior_snapshot` receives complete exact persisted row values;
Candidate existence sees both changed/create overlay and parent. This reuses the
normal decoder/rule validator and canonical per-row order. New A referencing new B,
B referencing old A and missing target cases therefore share one coherent child.
Candidate used()/incoming() intentionally fail if reached: historical freshness
is not fabricated from live map, and nonlocal incoming work needs another proof.
Freshness and duplicate create/lifecycle conflicts remain ordinary historical
transition/commit checks before candidate validation. Removals never use this theorem.

Since every omitted row's failure list is empty and module invariants are absent,
canonical concatenation of changed failures equals full child failures. This is a
conditional written proof plus test evidence, not a machine-checked implementation
proof for arbitrary future operators or a general IVM engine.

## Actual full/fallback call sites — shared validity gap

| Path | Actual validation performed | Consequence |
| --- | --- | --- |
| Store creation | complete seed validity before Backend.create | valid parent established on success within backend contract |
| evaluate / invoke / read | exact parent/current complete snapshot, or exact matching reuse | incoming validity required; read may separately archive/validate complete current profile |
| commit rederive | exact parent full/reused validity plus ordinary action evaluation/record equality | proves original decision/facts/writes, not automatically all unchanged child rules |
| eligible local child | changed/created rows + monotone unchanged refs/locality | conditional full-child theorem applies |
| global/query/nonlocal ordinary child | Pending=None; ordinary evaluator checks bound/created rows and affected module invariants | does **not** perform a complete child scan before CAS; no child certificate carried |
| removal | no new incremental theorem; ordinary surviving refs/integrity and action checks | next state-validation operation reconstructs fully; existing behavior preserved |
| migration | complete source/transformation/target validation in migration pipeline | independently defined schema transition, no 015 local carry |

This last unsupported ordinary route has a known **shared reference-workflow defect**,
F-INCREMENTAL-001. A valid parent has `E#e0.target="new"` and rule
`not exists(e.target)`; "new" is absent. An action creates `E#new` with target
"absent", itself satisfying the rule. Neither e0 nor any state parameter is
updated/bound. Creation is allowed/committed, but e0's previously true rule is now
false. The complete child validator detects it on the next read. Locality correctly
rejects this module and no false child certificate is published; the omission is
in existing ordinary full/fallback resulting-state checking.

The 015 compatibility requirement to preserve old unsupported refusal boundaries
is not an accepted waiver of PRINCIPLES/013/G3. Fast-vs-old-reference agreement
cannot establish the normative child-validity proposition. This audit records the
defect and proposes correction separately, without silently inserting a new
pre-CAS refusal or changing historical records.

## Internal delta model and operator inventory

`behavior-core/src/lib.rs` includes incremental_proof only under cfg(test).
Replacement stores full before/after result; apply checks exact old value. A
reference derivative invokes ordinary evaluation before and after, so all
Value→Value/Value→Error/Error→Value/Error→Error transitions are represented.
The operator-family test checks 34 private seed families; MODEL expands actual
subforms/types/roles/profiles rather than claiming that one generic tautological
comparison establishes every optimized operator law. The current production
optimization is local validity carry-forward, not per-operator delta runtime.

No Wire shape, semantic hash schema, supported public semantic capability,
backend method, record/replay interpretation, admission/governance obligation or
syntax is added by this machinery. Public boundary/exact-record checks are
supplementary evidence; private carrier correctness alone cannot prove this.

## Obligations and evidence limits

| ID | Qualified proposition / primary status | Evidence and unresolved premises |
| --- | --- | --- |
| O-INCREMENTAL-001 | exact same-snapshot reuse identity/checks: **established by a code invariant** | SnapshotIdentity equality and exact history/schema/source binding; assumes immutable honest canonical Backend snapshot; selected lifecycle/behavior/profile cases supplementary |
| O-INCREMENTAL-002 | transitive ordinary row locality allowlist excludes every varying external input: **established by a code invariant** | exhaustive ExprKind match, actual/formal binding closure, both profile target rules; finite admitted DAG assumed and tested aliases/nonlocal branches |
| O-INCREMENTAL-003 | unchanged synthesized references remain valid without removals: **proven by construction** | set inclusion of live identities; applies only valid parent's synthesized Ref obligations under no-removal guard, not arbitrary Exists/Referenced predicates |
| O-INCREMENTAL-004 | candidate complete changed/create validation matches full child on the sampled selected valid local domain: **covered empirically by tests** | E-COORD-009/012/013/016 and fixed-seed E-INCREMENTAL-003 execute complete-row/ref reconstruction and 128-case property; ordinary validator shared; written locality/monotonicity argument separate, no universal machine proof |
| O-INCREMENTAL-005 | historical freshness/alias/lifecycle/integrity/governance/CAS obligations retained: **established by a code invariant** | unchanged ordinary evaluate/rederive/commit flow, Candidate never answers used; mandatory failure routes inspected; trust/durability external premise scoped |
| O-INCREMENTAL-006 | candidate evidence reusable only after exact Applied and exclusive patch ownership: **established by a code invariant** | Pending stack-local, Applied-only carry, exact child/parent/effective schema, Arc failure eviction; lostack/HeadMoved/genericerror default cases actually executed in E-COORD-009/012/013/016, ownership/exactchild E-INCREMENTAL-003 |
| O-INCREMENTAL-007 | cache loss/reopen/mutable access reconstruction restores canonical full validity: **established by a code invariant** | open None/backend_mut clear/full fallback; private memory corruption cannot be injected through public safe API; arbitrary backend dishonesty outside contract remains assumption |
| O-INCREMENTAL-008 | unsupported ordinary full route preserves complete child validity: **not yet established** | F-INCREMENTAL-001 confirmed E-INCREMENTAL-002 direct RED/R-VERIFY-006; successful ordinary commit concretely violates G3; reference/optimized agreement does not discharge it |
| O-INCREMENTAL-009 | private reference derivative covers complete result replacement and does not become runtime semantics: **established by a code invariant** | cfg(test), exact replacement beforecheck; four private tests actually executed in E-MODEL-003, 96-case operator and separate composition property; same full evaluator shared, no operator support requirement introduced |
| O-INCREMENTAL-010 | compared semantic outcomes/evidence/record/hash/replay results unchanged on sampled guarded workflows: **covered empirically by tests** | E-COORD-009/012/013/016 public lifecycle/cold controls and E-INCREMENTAL-003 explicit full-child control; E-MODEL-004: 1000 index/order variations; helpers shared; not a universal theorem or proof of unsupported ordinary G3 |

Primary empirical statuses above refer to the specified test-supported domain,
not universal proof. E-COORD-009 required gates pass; E012/013/016 account actual
names/default execution/ignored cases. E-INCREMENTAL-002 is one actually failing
independent child-validity assertion, confirmed S0/High by R-VERIFY-006. The
selected conditional optimization is independently source-reviewed in R-VERIFY-002;
it does not repair shared ordinary G3. Fixed-seed E-INCREMENTAL-003 passes 17,
1 workload ignored/2 filtered; E-INCREMENTAL-004 passes 1/9 filtered and confirms
the existing invalid-child characterization. E-MODEL-003 passes the 4 private
reference tests/4 filtered, and E-MODEL-004 explicitly selected 1000 order case
passes 1/zero ignored. All actual supplement logs were inspected independently;
shared-comparator/generator limits remain. 10k stress/latency remains explicitly
unexecuted. Required named joint inputs are retained; COORD owns integration
and the final verdict, which is not issued by this lane.
