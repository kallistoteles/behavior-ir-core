# Research: Query Summary Congruence

**Date:** 2026-10-16
**Baseline:** Core `c8c79b48c11403c5e0a6fd5ab81145e0aca06183`; released 0.14.0 source tree.
**Status:** Planning decisions resolved; implementation and acceptance remain pending.

Research started with the clarified specification's mathematical obligations. Three read-only research streams examined the proof encoding, versioned authority, and existing acceptance coverage. No production code, tests, frozen evidence or external issues were changed during planning.

## R1 — Restore a semantic law with additive count lemmas

**Decision:** Retain existing summary applications and add guarded equalities between recognized equivalent parent-count occurrences. Use a private source-membership descriptor, not public query normalization.

**Rationale:** The source evidence shows an independent guard count and post-parent count where membership must agree. Both membership evaluation and the exact Create contribution already exist. Adding only justified implications makes the refinement relationship explicit: `A_new = A_old ∧ Lemmas`. Preserving occurrence implementations avoids changing equality-narrowing arguments, uniqueness links, witness folds, sums or error paths merely to make count identities match.

**Alternatives considered:** A shared normalized UF is viable but requires proving replacement preserves all existing capture conventions and consumers. Rewriting Approval changes the subject and fails acceptance. Global uniqueness assumptions, bounded witness UNSAT, and Approval-specific lemmas are invalid repairs. General equivalence solving is unnecessary.

**Evidence:** `crates/behavior-verify/src/encode/relational.rs`, `Inst::key`, `inst_args`, `s_count`, `count_of`, `narrow_of`, `encode_relational`, `unique_links`; [frozen baseline](evidence/baseline.md). The original applications differ at `Select + Pred` versus `Where + None`; their existing +1 delta is already exact.

Uninterpreted functions alone do not connect differently named summaries; the relation must be encoded. Z3's own [guide to uninterpreted functions](https://microsoft.github.io/z3guide/docs/logic/Uninterpreted-functions-and-constants/) explains their freedom absent constraints and congruence reasoning. The membership-to-count lemma and its safety conditions below are this plan's semantic argument, not a theorem supplied by that guide.

## R2 — Preserve source provenance before narrowing

**Decision:** Capture the original query and positive fold predicate before `narrow_of` optimizes an equality into `Narrow::Eq`. Describe membership by a typed base query plus its ordered outer filters and the original positive predicate. Remove literal-true restrictions only. Preserve set operator/order, candidate type/field, operators, literals and all types.

**Rationale:** A bridge for `Narrow::Pred` alone would miss simple equalities already optimized into `Eq`. Retaining source provenance connects those occurrences without reconstructing a lost expression or changing their existing UF arity. `count(where(q,p))` and `any(q,p)` obtain the same source membership shape. `any(q,true)` and `count(q)` obtain the same shape.

**Alternatives considered:** Hashing only the final `Inst` repeats the bug. Reordering or simplifying arbitrary predicates introduces additional proof obligations. Rebuilding admitted QueryNodes risks public identity changes. Reworking `Eq` to use another capture convention would disturb `unique_links` without necessity.

## R3 — Compare captures by typed value, not spelling

**Decision:** Alpha-abstract primitive non-candidate `Field`/`Param` reads into deterministic typed ports per source occurrence. Keep original encoded Terms as the port values. Use pointwise semantic equality as an implication antecedent. Preserve repeated reads as ports rather than collapsing them by parameter name. Keep full structural identities; never infer equality from the existing 16-hex display suffixes.

**Rationale:** Different names can carry equal values, and identical names can carry different parent/child values. Ports preserve the meaning of positions in the predicate. Options compare equal presence and payload only when present. Full Core types matter even where SMT sorts coincide. Existing `capture_exprs` documents the primitive-read boundary; the new provenance traversal must preserve occurrence positions rather than reuse its name-deduplicated output unchanged.

**Alternatives considered:** Names or SMT sorts are too weak. Unconditional equality for different capture vectors is unsound. A general solver for expression equivalence is outside scope. Existing shortened UF names are an inherited assumption/risk, not a new semantic key or a risk this feature certifies as fixed.

## R4 — Require parent membership definedness separately

**Decision:** Initial recognition requires a structural certificate for total typed parent membership: supported Select/Where/Set structure; primitive typed candidate/capture reads and literals; total primitive comparisons and Boolean combinations. Admit a comparison only when its admitted operand types make that operation total. Keep every original obligation. Checked arithmetic, partial derived operations, unwraps, nested aggregates and any uncertified form receive no new lemma unless a separate parent-definedness argument is established.

For eligible occurrences A and B, registration occurs after original error wrapping. The lemma is:

`same context/parent/template ∧ TypedCaptureEq(A,B) ∧ NoError(A) ∧ NoError(B) ⇒ ParentCount(A) = ParentCount(B)`.

`NoError` retains the original obligation guards and conditions. It is never asserted as an extra assumption. The initial pair family is Count/Any and Count/Count; All/NotPred and unique-generated synthetic equality instances retain their existing rules.

**Rationale:** C19's typed subject/actor equality conjunction and the simple equality/true controls belong to this generic fragment. Successful Any can short-circuit before a partial predicate failure. Even successful child Count does not, by itself, establish that a removed parent member's predicate was defined. Therefore original occurrence no-error guards alone are not a general parent-definedness certificate. Total membership also does not prove count-range safety: preserve all existing operator/range/error obligations and impose no cardinality bound.

**Alternatives considered:** Assuming every predicate succeeds loses concrete errors. A new general totality prover expands scope. Using only Count success as definedness was considered and rejected for the parent/child case. Testing known candidates cannot establish totality over the unrestricted universe.

The recognized relation is sufficient, not complete. Unrecognized cases keep their prior conservative behavior; no current unsupported form becomes silently supported. If a mandatory case cannot satisfy these premises, implementation stops at the unresolved contract rather than weakening them.

## R5 — Scope sharing to an immutable single-context world

**Decision:** The facility starts disabled. Action, rule and read construction explicitly opt into a single admitted interpretation/session before encoding. Records refer to the underlying parent S application, independent of `self.post`; child captures can supply that application's arguments. Only parent applications are related. The final child count and exact delta remain untouched.

Both migration constructors remain disabled before any source encoding. Do not merely clear the registry at a module switch.

**Rationale:** Ordinary action/rule/read constructors establish one module/world. In contrast, `migration.rs::setup` creates an Encoder from the source, then `local_checks` assigns `local.enc.module = ctx.target` while retained maps remain. The second migration constructor is in `requirement_checks`. Existing UFs/memo can otherwise connect contexts indirectly. Opt-in avoids introducing this new relation there, without claiming a new migration defect or redesigning migrations.

**Evidence:** `encode.rs` action/rule constructors and memo key; `reads.rs::ReadEncoding::build`; `migration.rs::setup`, `local_checks`, `requirement_checks`. All five current `Encoder::new` sites were reviewed.

**Alternatives considered:** Keying records by `self.post` misses C19's shared S baseline. Equating child totals loses the delta. Assuming one Encoder means one immutable schema is false. Clearing one new map is weaker than leaving the feature disabled for the entire migration encoding. General source/target cache repair requires an independently demonstrated violation.

## R6 — Version new proofs and preserve archive decoding

**Decision:** Advance `VERIFIER_VERSION` from 0.9.0 to 0.10.0 during implementation. Classify the eventual engine release as 0.x minor; exact Cargo version selection/publication remains the release workflow. From this baseline the next eligible number is 0.15.0, subject to intervening releases.

Retain explicit historical 0.9.0 acceptance in both closed trusted archive decoder allowlists. Append 0.10.0 to the provenance enums in governance-v2 and store-v2 schemas while retaining existing alternatives. Do not change wire, record, Store, manifest or envelope format versions.

**Rationale:** `docs/versioning.md` requires a verifier bump and minor release for outcome changes. `trusted.rs` currently accepts `0.7.0 | 0.8.0 | VERIFIER_VERSION`; changing only the constant accidentally removes 0.9.0 archive support. Schema enums also currently stop at 0.9.0. These are demonstrated compatibility dependencies.

**Alternatives considered:** Keeping 0.9.0 misidentifies the new encoding. Permissive arbitrary-version decoding weakens a closed contract. Rewriting old envelopes or upgrading old policies destroys the historical/authority boundary. No new attestation format is needed merely to report a new implementation version.

Fresh eligibility still recomputes the current exact manifest and applies explicitly selected policy. Preserve `policy-verifier-0.9.json`; introduce a deliberate current-version fixture or test-local policy. Historical decoding/signature authentication does not grant current proof authority, and fresh authorization retains expiry/revocation requirements.

## R7 — Separate diagnostic cache compatibility from trusted proof authority

**Decision:** Reuse existing version-keyed diagnostic caches and fresh authenticated verification. Test an old-version key miss and cold/warm current identity equality; do not delete old caches or redesign storage.

**Evidence:** `hashing.rs::check_key` includes dependency/subject, profile, verifier and solver identities. `checks.rs::action_dependencies` supplies semantic dependencies. `verify_complete` and `semantic_proof` bypass the development cache; migration verification also ignores it.

**Rationale:** A version bump separates old diagnostic entries. It must not be interpreted as promotion of historical claims. Existing poisoned-cache, unknown-result and signed-negative controls cover adjacent boundaries; add only the missing 0.9→0.10 compatibility control.

**Alternatives considered:** Reusing old keys silently confuses models. Treating an unsigned diagnostic baseline report as a signed governance envelope confuses separate evidence domains. Adding a new cache format is unnecessary.

## R8 — Preserve frozen expectations while updating fresh-version assertions

**Decision:** Freeze the supplied original module, prior attestation and all historical canonical fixtures. Reuse nearby regression suites and add one focused congruence suite plus public CLI/engine coverage. Version-aware current tests must compare newly generated proofs with current expectations, separately from historical-byte tests.

**Evidence:** `tests/migration.rs::generated_migration_reports_preserve_frozen_bytes` currently compares freshly produced reports directly against frozen 0.9 reports. A required version bump changes new proof bytes even if migration outcomes do not change. `consumer/tests/canonicalization.rs` compares four newly generated artifacts with historical goldens: ordinary/migration reports and the two dependent authorizations. Hardcoded current expectations also exist in CLI, governance and Store tests. They must distinguish fresh from archived context rather than regenerate history. Both original C19 uniqueness checks share one expression hash, so acceptance identifies each obligation by kind, action hash and subject hash.

**Rationale:** The full original report must become verified, with both uniqueness checks proven, while missing-guard cases still produce runtime-confirmed violations. Informative dead-action/redundancy checks do not all use outcome `proven`. Existing query, read-soundness, lifecycle, order, cache and trusted-proof tests should be reused rather than duplicated.

**Alternatives considered:** Only checking C19 success misses false proofs. Replacing the full profile by post-only weakens acceptance. Changing old fixture bytes or Approval's guard changes the subject.

## R9 — Preserve committed proof history by purpose, not current verifier identity

**Decision:** Reuse the existing archived-purpose validator only after exact canonical committed-event/candidate validation and applicable recorded-profile reproduction. Apply that purpose to reproduced committed record 0.8 and to committed v2 migration replay/exact recovery. Actual live commits and new authorization retain current-model validation. This is a demonstrated, bounded Store compatibility dependency of the verifier bump.

**Evidence:** `store.rs::check_reproduced_decision_evidence` currently sends 0.8 to the current checker, while only 0.4–0.7 use archived purpose. `replay.rs` committed migration reproduction and `store.rs` migration recovery also call the current checker. They would reject genuine committed 0.9 evidence against a recomputed 0.10 manifest. The existing data-replay archival judgment already authenticates historical signed coverage without re-proving it under the current model.

**Rationale:** Replay and exact recovery authenticate and reproduce an immutable historical event; they are not a request for new proof authority. The archive validator still checks exact candidate subject, signed manifest/report consistency, recorded policy/profile/verifier/solver, roles, original context/time, waivers and authorization. Its coverage is **attested historical coverage**, not freshly independently site-derived completeness. Behavior replay separately reproduces semantics; data replay retains its existing trust limits. Read-only exact recovery may not append history or create reusable current-validation certificates.

**Alternatives considered:** Decoder-only support fails actual history. Allowing old versions in live current-subject validation would promote old authority. Generic version ranges do not establish compatibility. Independently deriving every historical verifier's site planner would be a larger new verification contract and is unnecessary for the existing archived-purpose trust contract. Public callers must not be allowed to select archived purpose for uncommitted evidence.

**Required pre-bump evidence:** Capture actual signed 0.9 nonempty full-proof action record-0.8 history and proof-required v2 migration history under pinned unchanged 0.14.0 public Rust Store code. Freeze complete backend/event/evidence/policy/context and baseline replay/recovery results with source/binary digests. These fixtures are an implementation prerequisite to the bump, not existing acceptance evidence. The CLI has no Store commit command. Do not relabel newly generated 0.10 evidence. Add immutable replay/recovery and fresh-reuse/tamper controls.

## Six-area impact review

| Area | Classification | Required action / preserved boundary |
|------|----------------|--------------------------------------|
| Query semantics/identity | Verifier representation affected; runtime unaffected | Add only proven count relations; keep source IR/query/item hashes unchanged. |
| Proof assumptions | Directly affected | Record type/definedness/capture/context premises and conservativity proof; no global desired invariants. |
| Governance/attestations | Compatibility affected | New verifier identity, closed archive support/schema enums and committed-history purpose bridge; explicit current policies; immutable old evidence. |
| Incremental validation/caches | Proof cache version affected; runtime incremental validation unaffected | Reuse versioned cache isolation; preserve unknown-dependency/reference-fallback rules. |
| Schema evolution/migrations | Encoding context and historical evidence dispatch affected | New congruence stays disabled; preserve migration semantics, update fresh-version expectations and exact committed migration replay/recovery purpose only. |
| Determinism/identity/history | Fresh proof identity affected; history compatibility requires dispatch correction | Repeat current claims and semantic identities; preserve frozen artifacts and genuine signed 0.9 history through replay/read-only recovery. |

## Research closure and remaining implementation evidence

All design choices needed for planning are resolved. The [proof contract](contracts/query-summary-congruence.md) discharges the transformation's mathematical obligations under the stated domain; it does not certify the pre-existing verifier. Implementation must still demonstrate that its descriptor, guards and opt-in boundary realize that contract and pass the [acceptance matrix](contracts/acceptance-matrix.md). An unestablished premise blocks the affected relation or mandatory acceptance; it is not hidden behind a convenient encoding.

The broad audit of all derived representations, global induction and migration generalization remain separate follow-up work. No release, ecosystem pin or C19 readiness claim follows from this research.
