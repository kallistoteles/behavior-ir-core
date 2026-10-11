# INCREMENTAL finding submission

Baseline v0.12.1, commit `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Discovery is separated from
implementation: no defect is fixed by this submission.

## F-INCREMENTAL-001 — ordinary creation can invalidate an unchanged entity

Lifecycle: **confirmed by E-INCREMENTAL-002 and independently accepted by
R-VERIFY-006**. Category **S0 — semantic unsoundness**, severity **High**.
The unchanged baseline characterization/full-child oracle also collected and
passed in E-COORD-009/012/013/016. Their passing assertions characterize the
defect; the new actually executed direct RED establishes violated G3 independently.

Claim: an ordinary creation can be committed from a valid complete parent while
making an unchanged entity's declared nonlocal constraint false. The unsupported
015 path leaves that child uncached and the next complete read rejects it, but
refusal after commit does not satisfy the committed-child validity guarantee.

Mathematical reason: let `S={e0}` with `e0.target="new"`, and let every E obey
`C(e,S)=not exists_S(e.target)`. Initially `C(e0,S)=true` since "new" is absent.
Create E#new with target="absent", where "absent" remains absent. In
`S'=S∪{new}`, `C(new,S')=true` while `C(e0,S')=false`. Testing changed rows only
does not establish `∀e∈S': C(e,S')`. No removal, identity reuse or missing target
Ref is needed; target is the inert `Id<E>` used by an explicit exists predicate.

Existing violated authority: PRINCIPLES valid-transition formula requires
invariant(S') and says all result checks occur before mutation; 013 complete
snapshot validity establishes the full state; 014/015 correctness defines
Valid_B as every row constraint/invariant/reference/global obligation. 015's
compatibility rule preserving unsupported refusal boundaries does not redefine
Valid_B as the touched-row subset or waive the overarching guarantee.

Exact implementation locations:

- `crates/behavior-core/src/eval.rs:2232` complete snapshot checker; ordinary
  run_transition around :3229–3340 checks bound/created outgoing entities and
  affected global invariants, with no complete unchanged-row child validation.
- `crates/behavior-store/src/store.rs:2782` rederive validates exact parent, then
  :2340–2377 validates guarded candidate/commits/carries only after Applied.
- `store/incremental/dependency.rs:43` correctly rejects this nonlocal rule;
  `incremental/mod.rs:21–27` returns None for it, so no child theorem/certificate
  is applied. The defect is shared existing full/fallback ordinary checking,
  not unsound eligibility or a false reusable child cache.
- `crates/behavior-store/tests/incremental_validation.rs:459`
  nonlocal_creation_preserves_014_refusal_boundary commits and asserts the next
  read is STATE_INVALID. `store/incremental/tests.rs:46`
  oracle_detects_unchanged_nonlocal_violation shows changed-row success versus
  independently reconstructed complete-child failure.

Reproduction/evidence: E-INCREMENTAL-001 source custody and E-INCREMENTAL-002
actually executed immutable test-only overlay at
`evidence/runs/INCREMENTAL/child-validity-red/overlay.json`. The new
audit_016_child_validity test uses real InMemoryBackend, unchanged source value
and independently enumerated child membership to assert the concrete constraint.
It records full-read corroboration but does not use the full validator as its
final oracle. Compilation completed, legal setup/commit controls succeeded and
the final assertion actually fails at line68: position0 valid parent becomes
position1 committed child, e0.target remains new, target_exists=true, full-read
corroboration reports STATE_INVALID E#e0 constraint positive violated. One test
executed, zero passed/one failed, zero ignored/filtered, exit101. All six retained
artifact digests were independently matched. This failing supplemental test is
not relabeled a passing canonical gate. Baseline property agreement cannot prove G3.

Affected versions/paths: demonstrated source is release v0.12.1's ordinary Store
creation/nonlocal rule path. It is characterized as an existing 014 refusal
boundary, but this audit does not claim exact introduction commit or all historic
versions without provenance. Nonlocal updates/removals may have analogous
affected-row questions; they are not included in this minimized creation claim.

Recommended remediation: first define and enforce complete resulting-state
validity at the actual commit boundary. The smallest conservative candidate is
full-child reference validation for obligations not discharged by a verified
affected-row proof; keep the already justified local selected domain fast. Root
cause is omitted unchanged-row semantic obligations, not missing cache eviction.

Specification versus implementation: normative complete validity is clear;
the implementation's partial ordinary child checking is the disputed behavior.
The correction changes externally observed admission/commit/refusal outcomes
for currently accepted invalid transitions. Before any implementation, decide
error phase/category, historical evaluation/replay preservation and semantic
versioning/record consequences. Existing immutable histories/hashes must not be
rewritten, and no new Behavior syntax, general IVM runtime or backend delta API
is necessary merely to discharge this obligation. Explicit later remediation
approval is required under 016 FR044. No correction is implemented here.

Review: different-person R-VERIFY-006 accepted S0/High after actual legal positive
controls and direct assertion inspection; named PERSIST/TRUST inputs retained
in JOINT and MODEL/joint-inputs. COORD integration remains separate. Current
O-MODEL-005/O-INCREMENTAL-008/G3 remain not yet established. This finding alone
does not establish a legal false PROVEN verifier proposition (S2).

## Evidenced exclusions

- Locality's private synthesized-Ref marker is set only by admission for the
  positive exists/optional exists obligation (`typecheck.rs:1396`); user ordinary
  constraints retain reference=None. No arbitrary negated exists rule receives
  the monotonicity exception through a caller-visible setter.
- Correct candidate/ref/full-oracle comparisons do not discharge the unsupported
  ordinary child gap. Generic private reference replacement is a specification
  by before/after evaluation, not independent proof of optimized runtime correctness.
- F-MODEL-001 prefix sum is a documented canonical bounded partial fold, not an
  incremental arithmetic defect. The actually executed E-MODEL-003 prefix regression supports that contract;
  no final-total-only invariant is invented by this audit.
