# Core Mathematical Soundness and Code Quality Audit — final assessment

The completed audit records unresolved defects and explicit evidence limits. The audited Core cannot currently
be considered semantically sound. A legal ordinary creation commits an invalid
complete child, and two Store replay boundaries violate existing compatibility
and canonical evidence requirements. Green repository gates do not discharge
these counterexamples. No production correction was applied.

## Baseline, scope and evidence

Audited published release **v0.12.1**, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. The audit-start checkout commit
`5949cb111cd6c5af34b0fc9083e78810df450fce` has the same source tree. Conclusions
concern that exact release, not every historical or future version.
[Baseline custody](evidence/baseline.json), [source manifest](evidence/source-manifest.json)
and [pinned environment](evidence/environment.json) distinguish the source,
local audit artifacts and isolated test-only overlays. No Wire IR, syntax, hashes,
records, API, dependency, release or ecosystem Core pin was changed.

Seven specialist lanes were assigned to three workers plus a coordinator, with
exclusive report writers, different-person reviewers and one queued build/gate
runner. [Assignments](evidence/assignments.json) and the six
[JOINT reviews](evidence/reviews/JOINT/) retain both sides' premises rather than
settling claims by agreement. [Coverage](evidence/coverage.json) accounts for all
45 requirements and nine acceptance criteria, 20 major concept groups, 60
mathematical construct families, all67 first-party source files, 138 facade
entries, 31 detailed identity families, 19 persistence/replay path families and
all three canonical Backend mutation call sites. Classified inventory is not
proof that every invariant holds.

## What the evidence establishes

The existing model is largely explicit and coherent: typed finite values/state,
exact bounded partial arithmetic, set-valued queries with specified canonical
fold traversal, simultaneous effects, historical identity freshness, immutable
record profiles, command intent multisets and separate committed occurrences.
The implementation must follow these definitions. Rust containers, incidental
backend order and cache behavior do not establish alternative semantics.
Initial creation's error/recovery outcome relation is a concrete remaining
mathematical underspecification. Legacy length premises and general composed
runtime/verifier simulation remain qualified open obligations.

[E-COORD-009](evidence/runs/COORD/baseline-gates/run.json) executes the unchanged
`nix develop -c scripts/gates.sh` on the pristine release in its pinned environment.
All11 stages pass. [Actual collection reconciliation](evidence/test-collection.json)
accounts for793 workspace cases:769 default tests pass and24 are ignored;
33 external-consumer cases pass with none ignored. No solver skip was observed.
Seven selected unchanged-baseline supplemental runs pass, including an explicitly
selected default-ignored query-order test with1000 backend permutations/index
variants. The other23 ignored workloads remain unexecuted, never counted as passes.
Resource environment overrides reduce build artifact size/concurrency without
changing assertions, metadata or gates. Default random entropy seeds were not
emitted; fixed seed20261010 is recorded only for the supplemental property reruns.

Three new test-only overlays compile and reach failing final contract assertions
after their legal positive controls. Their four failures are retained as **fail**
run outcomes, independently reviewed, and never folded into green gate totals.
The direct child predicate is independent of the full validator. Replay controls
compare strict/profile-aware Core against Store wrappers, while their evaluator
remains shared. Property/differential tests are evidence, not universal proofs or
retroactive test-first provenance.

## Unresolved findings and blocking evidence

| Finding | Classification | Established effect | Consequence |
| --- | --- | --- | --- |
| F-INCREMENTAL-001 | S0 / High | Valid parent → successful create/commit → unchanged row constraint false; next complete read STATE_INVALID | G3 fails. The nonlocal rule correctly selects fallback; full/optimized agreement cannot prove complete child validity. |
| F-PERSIST-001 | S3 / Medium | Supported historical read-v1 and inner invocation replay pass standalone/current controls but fail Store replay | G4/G7 historical-profile preservation fails at the Store boundary. |
| F-TRUST-001 | S3 / Medium | Core refuses contradictory duplicate keys in current read-v2; raw Store replay accepts them | G5/G7 strict canonical replay-evidence obligation is omitted. No authenticated forgery is claimed. |
| F-PERSIST-002 | S4 / Medium | Initial creation has success semantics but no precise failure/lost-ack/retry/reopen law | Required creation outcome/recovery domain remains ambiguous. No partial-write implementation defect is fabricated. |
| F-COORD-011 | S5 / Medium | Fresh accepted-version metadata advertises versions the decoder refuses | Public version negotiation/diagnostic contract disagrees with implementation. |
| F-QUALITY-001 | S6 / Low | Public raw legacy JSON can enter fallible canonicalization silently defaulted to empty text | Scoped maintainability/error-contract risk; no proven signed-proof forgery or legal runtime soundness failure. |

[Findings](findings.md) provides every required field, source location, actual
reproducer, independent review, root-cause group and smallest proposed correction.
The [81-row proof-obligation ledger](proof-obligations.md) records one construction argument,46 code-invariant rows,3 scoped empirical rows,
8 documented assumptions and23 unestablished propositions; no obligation
is promoted because another report or test agrees. Complete preservation,
replay equivalence, all-field tamper coverage, legacy length premises and universal
operator/query verifier simulation remain unestablished where stated. No newly
confirmed legal false PROVEN/S2 execution was demonstrated. Incompleteness is
not silently reclassified as unsoundness, nor asserted soundness.

Documented external assumptions remain explicit: coherent complete immutable
Backend snapshots/history/indexes and atomic durable commit; solver correctness;
cryptographic digest/signature assumptions and key custody. First-party code
checks binding and recovery but cannot prove arbitrary host physical durability.
Absence of first-party unsafe or literal production panic calls does not prove
all resource, macro or dependency failure unreachable. Historical v1 evidence
limits are preserved, not upgraded by this audit.

## Area matrix

“Yes” is scoped to the stated inspected reference meaning and premises. “No”
means a contradiction, ambiguity or unestablished assessment in the area's full
scope; it does not assert a defect where only evidence is incomplete. Test
sufficiency includes negative/profile/fault coverage for the assessed scope,
not mere successful collection. A source argument can establish a scoped
implementation invariant without being a universal machine-checked theorem.

| Area | Mathematical model clear | Implementation matches | Tests sufficient | Open soundness issue / evidence |
| --- | --- | --- | --- | --- |
| Types | Yes | No | No | Typed domains/scalar admission are explicit and inspected, but blanket all legal composed outputs/aggregate bounds are not established: O-MODEL-002/003, O-VERIFY-001; primitive34-case supplement is bounded. |
| State/identity | Yes | No | No | Live StateId/history/freshness distinctions clear; complete committed child invalid in F-INCREMENTAL-001. Legacy identity length/all-field premises O-IDENTITY-006/010 remain open. |
| Evaluation | Yes | No | No | Ordinary effects/errors defined; unchanged-row resulting validity fails. Shared runtime/reference tests cannot discharge G3. O-MODEL-005/017. |
| Queries | Yes | Yes | No | Inspected set membership and canonical bounded-prefix folds match specified meaning;1000 order/index variants pass. Universal query/aggregate verifier embedding O-VERIFY-005 remains open; the separate20,000-entity indexed/unindexed record-equivalence test is unexecuted. This Yes excludes verifier proof correspondence. |
| Persistence | No | No | No | Commit law clear under conforming Backend; initial create error/recovery law F-PERSIST-002 absent. Complete child commit defect and create fault gaps remain. |
| Replay | Yes | No | No | Exact version/profile replay contract clear; F-PERSIST-001 and F-TRUST-001 violate it. Exhaustive record-field/profile tampering not established. |
| Verification | Yes | No | No | PROVEN/COUNTEREXAMPLE/INCONCLUSIVE and proof domains explicit; all-operator activation/simulation/query overapproximation not established O-VERIFY-001/004/005. No newly confirmed false PROVEN. |
| Governance | Yes | Yes | No | Inspected current signature/role/policy/context/fresh complete-manifest checks match defined authority distinctions, under crypto/solver premises; historical structural evidence separate. Exhaustive substitution coverage O-TRUST-011 remains open. This Yes does not establish solver/encoding truth. |
| Invocation | Yes | No | No | Typed binding/refusal/current snapshot model clear; historical inner read Store replay F-PERSIST-001 fails. Current binding negatives pass, full profile evidence incomplete. |
| Commands | Yes | Yes | No | Inspected canonical typed intent multiset/guard/payload and committed-only occurrence derivation match; no Core external dispatch. Global evaluation/verifier composition and all tamper coverage remain open; this Yes is not complete ordinary transition validity or delivery proof. |
| Incremental validation | Yes | No | No | Private exact-state-bound, no-removal local proof domain and post-Applied publication inspected/guarded samples pass. Unsupported full-route child preservation refuted; global all-path equivalence O-MODEL-019/O-TRUST-008 unestablished. No new delta language semantics. |

## Review, proposals and delivery

Every specialist report, significant finding and producer/consumer handoff has
independent review and author responses. The different-person
[final integration/verdict review](evidence/reviews/FINAL/verdict-review.md)
checks all11 reports, qualified status counts, gaps, matrix and verdict premises;
R-FINAL-001 accepts the qualified assessment. The coordinator accepted and applied
C-FINAL-001/AMEND-COORD-003, correcting the skipped20k index-equivalence test
description without changing its skipped status, findings or verdict; the
[review response](evidence/fragments/COORD/review-response.md) retains this disposition.
None of the blocking or broad unestablished obligations is called resolved.

Latency-only skipped workloads, absence of Miri/sanitizer runs for the identified
semantic risks, and scoped S5/S6 maintenance concerns alone are not grounds for
claiming S0–S3. They are documented limits, not passing evidence or assurances.
The audit does not offer a positive verdict with supposedly nonblocking gaps;
the known S0/S3 and required creation ambiguity already decide the assessment.

Proposed work is grouped around complete child obligations, strict/versioned
Store replay entrypoints, initialization failure semantics, public admission
metadata and fallible raw serialization. It is not implemented or released.
016 FR044/045 requires a separately approved correction with exact authority,
minimal change, historical preservation and version/public-contract consequences.
No language redesign, general IVM runtime or performance feature follows from
this audit. [Delivery custody](evidence/fragments/COORD/delivery.md) distinguishes
local uncommitted reports from commits, merges and releases.

**Final qualified verdict: NOT YET SOUND.**
