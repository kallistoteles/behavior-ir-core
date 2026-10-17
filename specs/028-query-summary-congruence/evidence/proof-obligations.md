# Implementation proof ledger

Status: implementation correspondence and targeted acceptance reviewed; exact clean-source full gates and final receipt review remain T058–T059.

The authoritative relation is [the proof contract](../contracts/query-summary-congruence.md). For the supported refinement, let `L` contain only its guarded parent-count equalities and `A_new = A_old ∩ Models(L)`. Conjunction gives `A_new ⊆ A_old`. Typed source substitution and total parent membership show that every covered concrete interpretation satisfies `L`, hence `C ⊆ A_new`, conditional on the pre-existing encoding correspondence. This does not certify the whole verifier.

| Premise | Actual source / enforcement | Status |
|---|---|---|
| Justified Gamma | `encode.rs` action/state/type and path constraints; preserve their source and scope without new desired invariants | Implemented; see correspondence below |
| Membership denotation | `encode/relational.rs` original query/Where/positive Any before `narrow_of`; keep base/set/filter order and full typed identities | Implemented; private helper contracts pass |
| Total parent membership | Structural certificate over primitive typed reads, total comparisons and Boolean combinations; reject partial arithmetic, unwrap, derives and nested folds | Implemented; private helper contracts pass |
| Typed capture equality | Primitive occurrence ports; preserve repeated reads, full Core types and option presence/payload equality | Implemented; private helper contracts pass |
| Same interpretation and S | Single-Encoder immutable action/rule/read opt-in; both migration constructors disabled before source encoding | Implemented; context and migration opt-out tests pass |
| Original computation succeeds | Finalized original `Obligation` values; `NoError = ∧ ¬(guard ∧ cond)` only in the implication antecedent | Implemented; original guards remain antecedents |
| Exact effects and freshness | Existing `s_count` parent application, `count_of` child delta, world identities and lifecycle constraints stay unchanged | Implemented; focused and adjacent regressions pass |

No target Boolean truth, unproved global invariant, arbitrary cardinality bound, finite witness universe or successful later check is a premise. An absent certificate skips the new relation. A missing premise or mandatory proof blocks acceptance.

| Obligation | Required evidence | Status |
|---|---|---|
| PO-001 | Typed source/certificate recognition and positive/negative templates | Discharged: typed Descriptor/certificate and positive/negative helper contracts |
| PO-002 | Capture/frame/type/context/parent separation | Discharged: typed occurrence ports/options, immutable context and parent applications |
| PO-003 | Unchanged exact delta, fresh identity and local zero-plus-one | Discharged: unchanged exact deltas and freshness; original local proof passes |
| PO-004 | Original errors, guards, ranges, refusal order and partial cases | Discharged: original error obligations and phase controls; partial sources skipped |
| PO-005 | Premise-to-code review of the unbounded conservativity argument above | Discharged conditionally on baseline correspondence: unrestricted argument above/below; final source review T059 |
| PO-006 | Pre-correction concrete negative baseline, semantic red and full matrix | Discharged: frozen concrete pre-correction oracle plus actual semantic red and negative controls |
| PO-007 | Frozen artifacts, genuine signed 0.9 history and fresh 0.10 authority separation | Targeted acceptance passes: immutable09 capture, closed archives, fresh10 authority/cache/policy separation; final gates T058 |
| PO-008 | Six-area impact boundaries, migration opt-out and later release handoff | Discharged scope: six-area review, disabled migration relation and historical-only purpose; external adoption explicitly blocked |

The [six-area impact review](../research.md#six-area-impact-review) separates query encoding, assumptions, proof authority, caching, migration contexts and identity/history. Runtime evaluation, semantic identity, migration proof capability, global induction and a whole-Core audit remain outside this correction. Concrete tests support, but cannot replace, the argument.

## Pre-correction concrete observations

T008 captured 18 complete runtime fixtures on unchanged released 0.14.0 / verifier 0.9.0, plus the minimal and both original missing-guard witnesses confirmed as `DENY / POSTCONDITION_FAILED`. See `negative-baseline.json` and `missing-guard-baseline.json`. A removed erroneous parent member still produces a postcondition evaluation error in the current query implementation; the concrete regression preserves that result. The helper certificate must independently reject this partial membership, regardless of any successful-count inference. Verification-context assertions are checked at their owning encoder-session boundary, rather than inferred from runtime outcomes.

## Implemented transformation correspondence (T033)

| Premise | Actual enforcement | Review |
|---|---|---|
| Admitted typed membership | `count_congruence::source`, `Descriptor::query`, `Descriptor::expression` consume checked `QueryNode`/`Expr`; full entity declaration and nominal/enum/ID type identities remain in the descriptor | Sufficient relation only; no suffix hash, binder spelling or source location establishes equality |
| Membership laws | `append_filter` appends ordered Where/positive-Any predicates, omitting only literal `true`; Set operands/operators and all other expression structure remain ordered | No arbitrary logical normalization, projection substitution or runtime rewrite |
| Total parent definedness | Successful structural construction covers total primitive leaves, compatible primitive comparisons, total Boolean/option tests and total set membership; partial arithmetic/derives/unwraps/nested aggregates fail recognition | No runtime success, removed-member inference, named witness or target property can manufacture a certificate |
| Typed capture substitution | Every noncandidate primitive source read gets an occurrence port. `count_source` encodes that original read in its original S/S' environment. `typed_equality` requires exact Core type equality and presence-guarded option payload equality | Repeated reads remain separate even when old `inst_args` has different arity. Equality is conditional; unequal captures are never assumed equal |
| Same interpretation and parent | Per-Encoder `Registry` is disabled by default; action/rule/read builders explicitly enable it. `check_context` checks full Behavior/schema/semantic-profile identity before encoding/memo reuse and registration. Both migration constructors use disabled `new_migration` before source encoding | Registry ownership supplies session isolation. No registry is shared between verifier profiles/check sessions. Migration source→target→source does not enable the relation |
| S application, exact S' effect | `count_with_parent` returns the unchanged `s_count` application separately from the old final delta. Only actual Count and positive Any origins are registered | Legacy Inst/UF arguments, known-member bounds, witness folds, uniqueness links and child effects remain intact; final child totals are never equated |
| Original errors | Registration occurs after `error_flags` and original direct obligations are finalized. `NoError` conjoins `not(guard and cond)` over those exact obligations | Both NoError terms occur only in the lemma antecedent. No error/range/path obligation or target Boolean is removed or asserted successful |
| Deterministic finite emission | Full-template BTreeMap buckets, local insertion order and exact duplicate-occurrence suppression | Ground implications do not bound the concrete universe; no global query Cartesian product or persistent cache is introduced |

For any concrete interpretation satisfying the unchanged justified Gamma and the pre-existing correspondence, equal typed capture frames substitute equal values into the same certified membership template over S. Structural induction over Select/Where/Set and the total predicate fragment gives equal finite membership sets. Equal cardinalities interpret the original parent applications and satisfy every emitted implication whenever its antecedent holds. A false antecedent imposes nothing. Thus all covered concrete interpretations remain represented, while conjunction can only remove symbolic interpretations: `C ⊆ A_new ⊆ A_old`. The argument does not claim the pre-existing verifier as a whole is certified.

The original Create +1, fresh identity and check-order premises are retained. No assumption of global Approval uniqueness, initial validity, structural ownership or migration preservation is added. Uncertified membership emits no relation and may remain inconclusive; failed finite witness searches remain non-proof. Positive tests support precision and genuine negative witnesses support conservativity; neither substitutes for the argument.

## Corrective-code disposition (T034)

No additional production change was required by the new US2 controls. An early test confused an allowed concrete nonmatching/remove-create request with a universal postcondition: other actor values or a different removed member yield real violations. The test now requires their confirmed counterexamples and retains the original allowed concrete records. The fixture, runtime and proof assumptions were not changed to force a proof.

PO-001–PO-006 have implemented correspondence and focused supporting tests; broad required-suite execution is recorded by T035. PO-007's genuine signed-history compatibility and PO-008's release/impact handoff are now recorded below and in handoff.md; final clean-source gates/review remain required. This disposition is not a release or C19 adoption claim.

## Historical cache dependency discovered by T037

The no-current-certificate assertion fails for both genuine 0.9 action and migration recovery on the unchanged pinned baseline (`proof09-certificate-red.log`). Action `rederive_for(Historical)` still uses the current cache for record 0.8, and migration recovery calls current `prepare_migration` before historical lookup. The existing full validation routine must remain authoritative, but historical replay/recovery must use it without attaching current-validation cache state. T043–T044 carried that historical purpose through snapshot materialization and migration preparation as well as authorization. Public fresh preparation, new commits, validation phases and state semantics remain unchanged. This is a demonstrated dependency of the already specified no-authority-promotion contract, not a general cache redesign.

## Implemented historical-purpose correspondence

The cache dependency was confirmed again on an isolated unchanged0.9 build (both no-certificate controls red), and corrected only at the owning historical boundaries. `rederive_for(Historical)` uses uncached complete validation while retaining record0.8 snapshot identity checks. `prepare_migration_archived` and exact committed recovery propagate historical purpose through parent materialization. Fresh public preparation and actual new writes retain current validation.

Only already matched/reproduced supported committed events reach `check_archived_trusted_evidence`. Module and candidate subjects, canonical candidates, original event/context/time/chain/bundle/signatures/authorization remain bound. Archive coverage is attested by the original verifier; the new model does not derive old site completeness. All uncommitted fresh-use and tamper controls refuse. Genuine09 histories preserve data/Behavior replay, exact event identity and backend content; recovery creates no reusable current certificate. See proof09-compatibility.json.

The new current policies and five checked canonical artifacts have separate names. Old policies and golden files retain all frozen SHA256 digests. Current10 manifests/cache keys cannot borrow09 authority; trusted verification remains fresh. Neither this bridge nor the local SMT lemma supplies global induction or changes runtime semantics.
