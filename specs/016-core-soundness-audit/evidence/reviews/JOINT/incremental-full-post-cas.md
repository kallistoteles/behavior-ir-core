# Joint boundary: incremental → full validation → post-CAS

Boundary B-MODEL-004. Named participants INCREMENTAL, MODEL, PERSIST and TRUST;
baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. MODEL/INCREMENTAL share one worker;
PERSIST and TRUST supply different-person independent inputs. Agreement does
not replace the reference validity predicate, a legal counterexample, or the
Backend's documented premises. Current disposition: **selected optimization and
post-CAS premises accepted with scoped executable evidence; complete ordinary
fallback-child validity is refuted by a confirmed S0/High counterexample**.

## Exact proposition and named independent inputs

MODEL defines Valid_M(S) as complete typing/key agreement, every entity
constraint/invariant, every synthesized Ref obligation, every global invariant,
and no active validity-evaluation error. PRINCIPLES valid-transition formula,
013 snapshot validity and 014/015 correctness are existing authority.
O-MODEL-005 asks full ordinary committed-child validity; it is not touched-row
validity and is not satisfied merely by reproducing an ordinary evaluator result.

INCREMENTAL C-INCREMENTAL-001–008/O-INCREMENTAL-001–010 identifies the current
015 guard, exact materialized binding, immutable candidate and stack-local Pending.
014 local_validation is cfg(test), not an alternative production route. Its
selected-domain theorem is `IncrementalValidate(S,Δ,M)=FullValidate(apply(S,Δ),M)`.
Unsupported ordinary fallback and the generic test-only reference derivative
are explicitly separate from that theorem.

PERSIST independently supplies: Backend lib.rs:38–56 requires atomic/crash-safe
commit; Store ordinary mutation is store.rs:2348; carry occurs only after Applied
at :2360; recovery at :1948–2040 binds original exact event/bundle at p+1. Cold
open and mutable backend access discard evidence. Replay content_at :331–369,
snapshot :1532+ and reference reconstruction :1372–1528 derive from canonical
history/versions, never from a validated cache bit. Initial create failure-domain
law is separately underspecified (F-PERSIST-002), not inferred from commit law.

TRUST independently supplies O-TRUST-003 truthful immutable complete as-of reads
and atomicCAS, O-TRUST-004 exact live rederive/schema/behavior/store/history/write
binding, O-TRUST-005 immutable policy/signature/independent Q/time, and open
O-TRUST-008 across-all-path omission equivalence. Operations may be eliminated;
freshness, references, consistency, authority and concurrency obligations may not.

## Producers, consumers and exact lifecycle

| Stage / producer | Consumer obligation and enforcing location | Authority and limits |
| --- | --- | --- |
| Complete committed parent validation | Store validation cache binds HistoryRef, effective SchemaRef and canonical admitted module at store.rs:562,1127–1195 | StoreId/StateId/position/event/schema/Behavior/profile exact; same StateId at different history cannot substitute. Process-private validation semantics cannot change while retaining entry. |
| Current immutable snapshot/backend | All operations retain mandatory head/schema/historical facts/rederive/record checks | Complete/coherent enumeration and immutable as-of reads are Backend promises. Core checks supplied bindings; it cannot detect every unobserved arbitrary backend lie with finitely many reads. |
| Local dependency proof | dependency.rs rejects global/nonlocal/query/unknown closure, inspects complete derived transitively and all branches | Allowlisted local rules hold for unchanged canonical rows; synthesized Ref existence alone is monotone without removals. Unknown means affected, never safe. |
| Exact candidate updates/creates | Candidate validates all changed complete rows under simultaneous resulting-state existence | New refs can target another create. Historical never_used is ordinary used_at evidence, not inferred from absence or fabricated by Candidate. Removals never use this theorem. |
| Stack-local Pending before mutation | Exact constructed record/child endpoint; mod.rs:21–35 stores evidence without publishing cache | Parent must already be established valid under same M/Σ. A prospective result cannot become an authoritative validity fact. |
| Backend atomic compare-and-set | Whole versions/removals/refs/event/head durable, or genuine non-application; store.rs:2348 | Backend supplies atomic/crash-safe physical guarantee. HeadMoved/actual refusal cannot carry child. Store cannot manufacture physical durability from a trait return alone. |
| Applied branch | Exact child/parent/schema recheck and unique Arc patching at mod.rs:70 / store.rs:2360 | Only successful exact committed child may be reusable. Sharing, mismatch or uncertainty evicts rather than assumes. |
| Error/lost acknowledgment | No candidate cache publication from error response; next actual-head miss/full rebuild or exact event recovery | Durable commit with lost ack is not an uncommitted state: canonical history remains authoritative and can legitimately yield committed commands after checked recovery. Old parent evidence cannot match changed history. |
| Replay/hash/index reconstruction | Canonical history, exact schema/declarations and stored entity content produce records/hashes/references | Materialization is reconstructible acceleration; no new Wire/public capability/backend API/BehaviorHash/record fact is introduced. Exact historical replay-format selection is separately open F-PERSIST-001. |

## Reference versus ineligible ordinary child gap

Cold parent validation calls the complete reference checker. Eligible local
candidate checks plus unchanged-row locality/reference monotonicity establish the
conditional child argument. **Ineligible ordinary commit does not call a complete
child scan before CAS.** It reuses the old ordinary path, validating bound/new
rows and affected global invariants, then leaves the child uncached. A later
full state-validation operation can reject that already committed child.

F-INCREMENTAL-001 is the concrete challenge: valid old e0 has target="new" and
constraint not exists(target); create new with target="absent" satisfies the new
row's own constraint but invalidates unchanged e0. Locality correctly rejects the
module and no false child cache is published. The shared full/fallback ordinary
workflow omits the unchanged child obligation. 015's refusal-boundary compatibility
is not a waiver of complete committed-state validity.

Existing characterization and independent full-child reconstruction actually pass
in unchanged baseline gates and selected follow-ups. The new exact-base test-only
[E-INCREMENTAL-002 overlay](../../runs/INCREMENTAL/child-validity-red/run.json)
compiles and executes one test, which fails the direct child predicate at line 68
(exit 101, zero ignored/filtered). Positive Store creation/evaluation/commit controls
reach child position 1 with unchanged e0.target="new" and target_exists=true.
Full read independently corroborates STATE_INVALID. The concrete predicate is
false without relying on the full validator's verdict. Different-person
[R-VERIFY-006](../MODEL/incremental-finding.md) and PERSIST's independent run/source
inspection accept the bounded S0/High classification. No false carried certificate
or legal false PROVEN follows from this result. No corrective code or new refusal
was added.

## Acceptance, evidence and unresolved obligations

Source E-INCREMENTAL-001 and the complete comparator table disclose shared full
validator/evaluator helpers. The full-child oracle reconstructs all rows/refs
independently of optimized scope/cache, but still shares ordinary validity code;
the direct e0 membership assertion supplies a separate semantic predicate.
Record/hash/admission/governance/replay equality must additionally use their owning
IDENTITY/PERSIST/TRUST evidence. Backend call traces and hypothetical omitted-call
errors are excluded; actual performed errors keep their existing contracts.

O-INCREMENTAL-001/002/005/006/007/009 have scoped code-invariant support;
O-INCREMENTAL-003 is no-removal set inclusion by construction. O004/O010 are
empirically covered only for sampled selected local/public workflows; O008/G3
unsupported ordinary child preservation is not yet established and concretely
refuted by F-INCREMENTAL-001. F-PERSIST-002 creation-error underspecification and
confirmed F-PERSIST-001 historical Store replay must not be erased by cache-key
correctness. Likewise F-TRUST-001's malformed raw Store read acceptance is separate
from cache binding, retained as O-TRUST-012 rather than a strict replay guarantee.

PERSIST independently accepted the exact parent/store/history/schema/module,
Applied-only and lost-ack premises under conforming Backend; it additionally
inspected the actual direct G3 counterexample. VERIFY/TRUST independently reread
this note and accepted its selected locality/no-removal Ref theorem, exact
Pending/Applied/error lifecycle and retained mandatory trust obligations. Inputs
and acceptance responses are retained in MODEL/joint-inputs.md. C's independent
[R-VERIFY-002 source review](../MODEL/incremental-review.md) and R-VERIFY-006 actual
finding review establish different-person challenge, rather than agent voting.

Actual [E-COORD-009 gates](../../runs/COORD/baseline-gates/run.json) and
[E-COORD-016 collection](../../test-collection.json) establish named default
lost-ack/CAS/mutation/reset/history/ref/evidence cases. Fixed-seed
[E-INCREMENTAL-003](../../runs/INCREMENTAL/baseline-oracles/run.json) executes 17
oracle/dependency/candidate/ownership/full-child-control passes, 1 explicit 10k
workload ignored/2 unrelated library tests filtered. The 128-case property shares
the ordinary validator after independent row/ref reconstruction; equality is
sampled empirical support, not universal semantic proof.
[E-INCREMENTAL-004](../../runs/INCREMENTAL/nonlocal-characterization/run.json)
executes 1 passing invalid-child characterization/9 other cases filtered, which
supports the finding rather than proving validity. [E-MODEL-003 private derivative
run](../../runs/MODEL/reference-derivatives/run.json) passes 4/4 filtered;
[E-MODEL-004 order run](../../runs/MODEL/query-order-1000/run.json) explicitly
passes the selected release 1000 permutations case, zero ignored. Proptest seed
20261010 and finite source domains/shared helpers are disclosed in both lane
coverage reports. Ignored 10k stress/latency remains explicitly unexecuted.

Root owns final B3/B4 integration and the verdict. This note completes its named
premise/evidence accountability and keeps the ordinary full-child blocker open;
it does not pronounce the kernel sound.
