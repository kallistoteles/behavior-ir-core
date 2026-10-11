# Targeted re-audit: complete resulting-state validity

Status: scoped T059 and integrated T061–T067 evidence reviewed; canonical local gates, exact-revision consumer and candidate CI GREEN. Final evidence push/head CI remain pending.

Fresh Current ordinary evaluation now covers the complete child, including
unchanged entities whose obligations change. This remediates the concrete
RC-001 / F-INCREMENTAL-001 omission under the documented input and backend
assumptions. It does not establish a universal verifier theorem or a global
SOUND verdict for Core. The original 016 audit remains immutable evidence.

## Scope and original evidence

This report addresses only RC-001 and O-MODEL-005, O-INCREMENTAL-008 and
O-VERIFY-008. The authoritative original
[finding](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md)
and [proof obligations](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/proof-obligations.md)
are pinned to audit revision `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.
Their audited source was `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. No original finding is rewritten.

The original valid parent contains `E#e0.target="new"` and the obligation
`not exists(e.target)`. Creating fresh `E#new` makes the unchanged e0 violate
that obligation. The new entity itself is valid. Original ordinary evaluation
and commit allowed the invalid child; a later read refused it. The original 015
dependency guard correctly excluded this nonlocal case. The defect was the
ordinary fallback's incomplete coverage, not an observed false local
certificate or a demonstrated false verifier PROVEN result.

## Dispositions and strength of evidence

The obligation statements retain their original scope. A corrected runtime
invariant and a universal symbolic preservation theorem are separate claims.

| Finding / obligation | Scoped disposition | Basis and remaining qualification |
| --- | --- | --- |
| RC-001 / F-INCREMENTAL-001, S0/High | Concrete omitted-unchanged-row defect remediated in fresh Current ordinary execution | Reviewed complete-child construction and schedule; independently computed audited membership predicate now refuses before a bundle or write. Canonical candidate gates and exact-revision consumer now pass; final-head CI remains mandatory. |
| O-MODEL-005: every allowed ordinary commit preserves complete child validity | Established by the current code invariant under documented assumptions; supported empirically | Every surviving/created child row and every current global obligation is checked, or a separately justified unchanged obligation remains true. Current Store commit rederives the exact record. This is not a mechanized proof for all Rust executions. |
| O-INCREMENTAL-008: unsupported ordinary full route preserves complete child validity | Original fallback coverage omission remediated by that same Current invariant | Selected local carry-forward has additional exact-parent, dependency and atomic-publication guards. Full/cache agreement alone cannot establish validity; direct finite predicates provide separate evidence. |
| O-VERIFY-008: whole-state preservation of every unchanged cross-entity invariant | Broader universal theorem not yet established | The runtime omission is repaired. Supported symbolic cases have inspected correspondence and tests; unrepresented complete-world obligations are blocking INCONCLUSIVE. No false PROVEN counterexample was established or silently relabeled. |

The detailed conditional argument is [P1–P6 in correctness.md](correctness.md).

## Current runtime invariant

`S` is a complete typed finite mapping and the legal simultaneous delta defines
`S'=apply(S,Δ)`. In [complete_child](../../crates/behavior-core/src/eval.rs#L3556),
every parent key is retained or removed explicitly, updates substitute their
resulting values, and creations are added without replacing a surviving key.
Decoded values must agree with their typed identity keys. Historical freshness
is discharged separately; live absence is never a proof of `never_used`.

The [Current transition schedule](../../crates/behavior-core/src/eval.rs#L3375)
keeps postconditions first, then
[run_complete_child_rules](../../crates/behavior-core/src/eval.rs#L3595)
traverses every child in decoded `(entity type, identity)` order. Each entity
contributes invariants before constraints. Declared semantic name/hash keys
order declared obligations; synthesized Ref obligations follow declared
constraints and use their semantic field/hash keys. These names are semantic
bindings in admitted module identity, not diagnostic display metadata.
The first reached false/error determines the outcome. Current global invariants
all execute in their existing subsequent stage; the archived dependency filter
does not control fresh coverage. Query, reference and derived evaluation use the
same simultaneous child, including same-transition creations and removals.

This is a code invariant: Current ALLOW cannot bypass a failed/reached-error
obligation in that schedule. Under valid coherent parent inputs it implies
`ALLOW ⇒ Valid(S')`. Missing, contradictory or malformed complete parent inputs
refuse; 017 introduces no repair semantics. Typed child witnesses, SPrime
observations and historical parent field facts remain distinct, including
unbound/nested-derived reads; [US2](evidence/US2.md) records those boundaries.

## Local reuse and publication invariant

[SnapshotIdentity](../../crates/behavior-store/src/store.rs#L574) binds exact
store/history record, StateId and position, schema, canonical admitted module
content and `behavior.complete_resulting_state.v1`. A cache miss reconstructs
canonical rows using [validate_snapshot_full](../../crates/behavior-store/src/store.rs#L1212).
`backend_mut` invalidates the cache and reopen starts cold. No persisted
validated bit defines truth.

[validate_incremental_child](../../crates/behavior-store/src/store/incremental/mod.rs#L14)
requires a strictly decoded decision 0.8 with the exact current validation and
module/language profile. It excludes removals, migrations, globals and unknown
or nonlocal transitive [dependency closure](../../crates/behavior-store/src/store/incremental/dependency.rs).
For an established valid parent, unchanged row-local obligations stay true;
no removals preserves unchanged Ref targets; changed/new rows and refs are
checked against the resulting candidate. Creation freshness remains a separate
history-sensitive Store obligation. Current evaluation still emits the complete
schedule and evidence; reuse reduces redundant backend work, not coverage.

Pending evidence is stack-local. Only
[CasOutcome::Applied](../../crates/behavior-store/src/store.rs#L2430) can invoke
[carry_incremental_child](../../crates/behavior-store/src/store/incremental/mod.rs#L89),
which rechecks exact child head/record/position/schema, parent certificate and
exclusive snapshot ownership. Uncertain bindings discard materialization.
Refusal, failed CAS and non-application do not promote a candidate. A durable
write with lost acknowledgment is canonical history, but the uncertain response
does not publish speculative evidence. [US3](evidence/US3.md) records twelve
reuse cases, six fault cases and 27 private passing cases; its ignored workload
is explicitly unexecuted, not performance or correctness evidence.

## Historical evidence cannot authorize fresh invalid commitment

Version-first strict [record reproduction](../../crates/behavior-core/src/record.rs)
and [nested invocation replay](../../crates/behavior-core/src/invocation.rs)
preserve original decisions 0.4–0.7 and outer identities, including the original
invalid ALLOW. New decision 0.8 uses corrected complete validation. There is no
fresh archival strategy selector through behavior-engine.

The [Store live boundary](../../crates/behavior-store/src/store.rs#L2891)
requires the current profile and exact semantic rederivation before commitment.
Archived Store reproduction retains the original mandatory full-parent check
through a local snapshot, without publishing a Current certificate. Replay and
exact already-committed recovery reproduce immutable evidence, perform no new
semantic write or command dispatch, and do not certify an invalid historical
child. Fresh work at an invalid historical parent refuses. Original authenticated
verifier 0.8 evidence remains archival authority for its exact original event;
fresh current-subject proof eligibility is 0.9. See the actual
[US4 profile/identity matrix](evidence/US4.md).

## Verifier correspondence and explicit limits

[row_local_rule and ActionEncoding::build](../../crates/behavior-verify/src/encode.rs#L1218)
follow complete derived dependency closure. Unknown or cross-entity entity
obligations, and removals needing unbound reference witnesses, refuse symbolic
encoding rather than assume their preservation. The
[current prefix](../../crates/behavior-verify/src/encode.rs#L1663)
matches postconditions and the entity-first invariant/constraint schedule for
supported rows. Multiple same-type child rows with obligations remain
INCONCLUSIVE because the encoding does not establish runtime's decoded identity
order. Same-type rows without such obligations are not rejected on this ground.
Query/aggregate verification retains its specific supported fragment; these
guards do not assert universal query soundness or reject all query programs.

[request_parts and confirm](../../crates/behavior-verify/src/confirm.rs#L84)
construct finite complete typed parent evidence, including empty declared
universes, without inventing rows to satisfy summary facts. Confirmation runs
fresh Current evaluation and matches the reached semantic failure, including
code/node and decision phase. Unsupported or nonreproducing models remain
INCONCLUSIVE. Supported positive/negative cases and original ledger transfer's
honest INCONCLUSIVE/authorization-refuse are recorded in US2/US4. The general
read-confirmation gap is not discharged; this report does not close 018 or assert
that every original verifier obligation is now proven.

## Independent evidence and shared machinery

The [finite test model](../../crates/behavior-core/tests/resulting_state_properties.rs#L54)
owns its typed maps, simultaneous Delta::apply and validity predicate: integer
nonnegativity, membership, optional Ref targets, forbidden identity absence and
aggregate budget. Its oracle calls no production validator, affected-set
analysis, cache, candidate or replay. It separately reconstructs successful
record effects and rejects state/command effects on refusal. Four property
families configure 64 generated cases each and evaluate both Legacy and
CommandIntents profiles; this is sampled evidence for that finite fragment,
not exhaustive enumeration or an all-operator theorem. JSON construction and
representation are shared with the public boundary.

[US1 reviewed RED](evidence/runs/US1/tests/summary.md) and
[GREEN](evidence/runs/US1/core-green/run.json) include the direct audited predicate,
nonlocal/lifecycle/global controls and canonical first-failure cases. Private
Store `full_child` reconstructs rows/edges independently but shares the production
snapshot checker. Full/cache and replay comparisons share production expression
evaluation. Their equality can detect divergence, not a shared semantic omission.
The [US4 acceptance run](evidence/runs/US4/acceptance-green/run.json) executed 71
scoped tests with zero failures/ignored plus public-surface PASS; counts are not
independent proofs. All source/test digests and actual commands belong to linked
capture artifacts, not an untested final revision claim.

## Evidence classes, assumptions and remaining work

| Class | What is established here |
| --- | --- |
| Defined/proven by construction in the mathematical model | Finite-map apply, complete obligation enumeration and first-failure selection define the reference meaning; definitions alone do not prove Rust matches it. |
| Established by inspected code invariant | Complete Current child coverage, strict profile selection, exact snapshot binding and post-atomic-success cache publication, conditional on inputs/contracts below. |
| Covered empirically | Direct counterexample refusal, sampled independent finite properties, order/error/provider boundaries, cache/fault cases and immutable replay/identity controls. |
| Shared implementation evidence | Production full checker/evaluator used by differential and replay tests; independently reconstructed input is disclosed separately from independently computed validity. |
| Assumed and documented | Coherent canonical typed inputs; immutable exact history/schema and identity lifetime facts; conforming backend versions/keys/index contracts and atomic durable CAS; solver/result contract within encoded scope; integrity of private engine-owned memory. A hash is identity, not authentication or authority. |
| Not yet established | Universal unchanged-world verifier preservation, mechanized operator/implementation proof, arbitrary faulty-host safety and general read confirmation. Final-head delivery checks remain a separate acceptance obligation. |

The [original archive manifest](../../tests/fixtures/resulting-state-validity/archive-manifest.json)
is immutable. At T059, 545 historical semantic fixtures, 42 original setup captures
and 106 genuine [compatibility captures](../../tests/fixtures/resulting-state-validity/compatibility-archive/manifest.json)
pass integrity checks. The 546th original fixture is the navigation README,
intentionally updated by T058; its original digest remains recorded. This is a
disclosed documentation exception, never regenerated semantic golden evidence.

T061 and T063 are now implemented and verified. The
[metamorphic evidence](evidence/runs/polish/metamorphic/README.md) executes three
Core tests and the required Store property:16 seeds×two real index modes×seven
cold/warm probes. Independent count12 and observed indexSome/None counters prevent
a vacuous index comparison. The [determinism evidence](evidence/runs/polish/T063/summary.md)
includes five independently specified Current cases,106 immutable compatibility
records,23 protocol cases,19 hash/admission tests and138 public-surface items.
The actual clean release-smoke step reaches the corrected typed refusal and strict
replay without publication. Initial harness/setup errors remain disclosed and are
not semantic RED. Concurrent unrelated changes prevent treating those captures
as an immutable final-revision gate.

The final [archive integrity check](evidence/runs/polish/archive-integrity/verification.json)
also verifies63 artifacts of the genuine original signed archive capture.
T065 [canonical local gates](evidence/runs/gates/verification.json) now pass all
11 checks:957 workspace and43 default-path consumer tests,0 failed,24 repository
ignored and0 filtered. T066 [exact-revision consumer](evidence/runs/consumer/verification.json)
passes43 tests with0 failed/ignored/filtered, using the public facade and actual
Git checkout HEAD `1e8dc8194e131ba720640e1e249c9e15842bb5a4`. Both captures establish
source/test bytes unchanged during execution. The initial exhausted-storage
compilation failure and post-run provenance-reader corrections remain disclosed.
[Candidate CI](evidence/runs/candidate/ci-verification.json) passes both required
jobs against an entire PR merge tree identical to that candidate.
T068 final evidence push and actual final-head CI remain pending in
[tasks.md](tasks.md) and [verification.md](verification.md). These execution results
support the conditional code invariant; they do not upgrade it to universal proof. Independent review remains separate from
implementation permission. No other 016 finding, 018 replay boundary, 019 creation
failure algebra or 020/021 metadata/canonicalization remediation is closed here.
This report authorizes no merge, release, tag or ecosystem dependency pin.
