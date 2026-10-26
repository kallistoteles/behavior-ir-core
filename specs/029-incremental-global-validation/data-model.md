# Data model: derived validation evidence

These are proposed internal Rust concepts, not wire formats, new domain entities or
mandatory names. All authority remains in admitted Core semantics and existing Store
history. No new persistent state, replay dependency or host-maintained summary is added.

## 1. Validation context

Extends existing `SnapshotIdentity`: exact Store/history reference (including record,
position and state), schema identity, admitted Behavior identity/content, semantic
profile and validation profile. Equal entity counts or StateIds alone are insufficient.
Core owns semantic identity; Store owns exact history continuity.

## 2. Prepared semantic state

Opaque Core-owned value, containing or sharing canonical typed rows, complete membership,
established validity and justified reusable rule/evidence results. Private constructors
perform full validation or derive an eligible child from an already established parent
and the actual checked transition. No unchecked constructor, deserialization authority,
or public consumer Boolean may assert validity.

It must preserve the exact ordinary validation result on failure. A failed preparation
does not become an extra refusal phase. Successful preparation supplies reusable
evidence, while unsupported reuse returns to the existing reference path.

## 3. Obligation/dependency plan

Bound to the exact admitted module/profile and complete action/effect inventory:

- Row rules: complete local dependencies, resolved derived calls, synthesized Ref
  guarantees and supported error behavior.
- Global rules: literal/state-independent or exact unfiltered typed cardinality bound;
  typed query identity, literal bound, complete dependencies and checked count domain.
- Unsupported/unknown obligations: explicit reference requirement, never an empty
  dependency set inferred from failed analysis.

Analyze every applicable rule and actual effect, including generated actions. Keep
distinct per-obligation coverage even when one operation affects multiple obligations.
Eligibility is an execution strategy decision, not a new admission restriction.

## 4. Exact membership summary

For each supported typed entity universe: exact cardinality and its relationship to
the prepared state's complete canonical membership. Initialize during full validation;
advance using fresh distinct creations after complete type/effect checks. Updates do
not change membership. Use checked arithmetic and preserve ordinary Count conversion.
No-removal and no-migration premises apply to the first optimized pattern.

A count cannot establish its own completeness. Stale, incomplete or incompatible
summaries are not reusable. Internal invariant checks and mutation tests must detect
broken maintenance; clients cannot submit summaries for acceptance.

## 5. Candidate and pending child

Overlay changed/created complete rows on a coherent prepared parent. Verify freshness,
references, all applicable row/global obligations and exact resulting-state evidence.
Retain canonical contributions needed for traces, observations and complete records.

Pending evidence records parent context, actual checked changes, prospective child
semantic evidence and expected publication identity. It grants no reusable child authority.

State transitions:

```text
Cold/incompatible -> ordinary full validation -> Established parent
Established parent -> unsupported transition -> ordinary reference behavior
Established parent -> eligible checked transition -> Pending child
Pending child -> exact CAS Applied -> Established exact child
Pending child -> refusal/conflict/uncertainty/context mismatch -> discard pending
Open/backend mutation/migration/incompatible module -> invalidate or re-establish
```

Existing lost-acknowledgement recovery remains authoritative; uncertainty does not
imply rollback. Re-establish the actual head through existing recovery before reuse.
Shared cache ownership must not trigger an O(N) clone merely to retain an optimization;
use a justified sharing design or discard reuse and report the fallback.

## 6. Reference observations

Semantic outputs retain existing formats: decisions, ordered diagnostics, trace and
derived evidence, read/query facts, changes, commands, records, hashes and commit results.
Output-producing traversal is accounted separately from revalidation. Historical
formats and published evidence retain their bytes and interpretation.

## 7. Evaluation profile and measurement records

Nonsemantic test/research artifacts, never included in BehaviorHash, records or cache
authority. A frozen profile contains source/toolchain/harness digests, backend and
hardware/resource identity, fixture dimensions, repeats, expected outcomes, numeric
budgets and growth-benefit criterion. Measurements retain raw phase/work/output/resource
data, failed attempts and baseline/reference/candidate provenance. Identify production-like
timing and instrumented work modes, each mode's build identity, repetition counts,
cross-mode semantic parity and separately measured instrumentation overhead. Numeric
timing criteria apply only to production-like runs. Gate evidence identifies the source
checked before final measurement. See
[the evaluation contract](contracts/evaluation.md).
