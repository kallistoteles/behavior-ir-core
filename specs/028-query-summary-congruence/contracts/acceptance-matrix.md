# Acceptance Matrix and Proof Obligations

`New` means missing coverage to add during implementation. `Extend` means modify an existing suite at the relevant boundary. `Reuse` means run existing coverage without duplicating it. Each new behavioral fixture must first establish its concrete expected outcome and relevant refusal phase against authoritative Core evaluation. Test failures caused only by an unbumped version are not the semantic regression's red evidence.

## Required focused cases

| ID | Case and required assertion | Coverage owner |
|----|-----------------------------|----------------|
| QS-01 | Frozen original C19, unchanged bytes/full default profile: both uniqueness subjects proven and aggregate verified; preserve complete check descriptors and meanings. | New verifier integration; extend CLI public/engine test. |
| QS-02 | Frozen minimal Core-only zero-plus-one: proven with original Any guard. Count-guard diagnostic also remains proven. | New focused suite using existing frozen inputs. |
| QS-03 | Same typed definition/captures and positive Any/Where forms, including literal true and ordered nested filters: counts coherent. | New focused suite/helper tests. |
| QS-04 | Simple equality entering Narrow::Eq matches its original Where predicate; compound C19 conjunction matches too; existing unique links preserved. | New focused cases; reuse queries unique controls. |
| QS-05 | Different capture names/binders with established equal values and repeated-read aliases: positive proof through typed ports. | New focused suite. |
| QS-06 | Same names/sorts with different values: no unconditional relation; a concretely false property retains a confirmed counterexample. | New focused suite. |
| QS-07 | Different filters, literals or entity domains: no false sharing even with equal capture SMT sorts. | New focused suite. |
| QS-08 | Parent baseline at child captures may relate to an equal-capture guard; final child total must retain +1 rather than inherit zero. | New focused suite; reuse matching Create cases. |
| QS-09 | Changed child capture, nonmatching Create, updates/removals and aliasing preserve exact relevant contribution and freshness refusals. | New cases only where relation interacts; reuse queries/lifecycle/order/bindings. |
| QS-10 | Minimal missing guard remains confirmed DENY/POSTCONDITION_FAILED. Original approve/reject variants each retain confirmed uniqueness violations. | New focused suite; derive external variants without changing original. |
| QS-11 | Partial arithmetic/derived/unwrap/nested-membership forms get no new lemma absent a parent-definedness certificate; real errors/short-circuit cases retain original classification. | New relation-specific controls; reuse read_soundness/soundness_regressions. |
| QS-12 | Successful child membership does not certify an erroneous removed parent member; certificate rejects this relation. No target truth or successful later check is assumed. | New helper/provenance negative; concrete error fixture where existing model supports it. |
| QS-13 | Solver unknown/exhaustion, unsupported forms and finite witness UNSAT remain non-proof. | Reuse cache/solver plus focused unsupported recognition control. |
| QS-14 | Distinct Behavior/schema/profile sessions cannot share a registry; both migration constructors remain disabled before source encoding and across source→target→source. | New context-boundary tests; reuse migration outcome cases. |
| QS-15 | Original module wire digest, BehaviorHash, SchemaHash, item/query identities unchanged; frozen old report and all frozen artifact digests preserved. | New focused identity checks using semantic-identities.json; existing canonicalization/replay suites. |
| QS-16 | Repeated cold current proofs and cold/warm cache runs have the same authoritative identity; old-version key cannot serve a new-model hit. | Reuse cache/hashing; extend old-version boundary case. |
| QS-17 | Authentic archived 0.7/0.8/0.9 evidence decodes unchanged but lacks fresh current eligibility; newly generated 0.10 evidence follows explicitly selected policy. Unsupported versions rejected. | Extend resulting_state_governance/trusted_verification/Store trusted_governance. |
| QS-18 | Every current wrapper schema enum admits fresh 0.10 and preserved old provenance; unsigned C19 report is not treated as a signed envelope. | Extend existing Store schema and signed archive tests. |
| QS-19 | Fresh ordinary/migration reports and dependent authorization expectations are distinct from preserved frozen 0.9 bytes; no new migration semantic proof is claimed. | Extend migration/current-version tests and all four facade canonicalization comparisons. |
| QS-20 | Trusted proof generation bypasses poisoned diagnostic caches; signed negative/unknown evidence is not promoted; actual policy expiry/revocation behavior unchanged. | Reuse trusted_verification and governance controls. |
| QS-21 | Full required Core gates pass with all existing query/fold/read/evidence/replay behavior preserved. | Existing scripts/gates.sh; required focused suites first. |
| QS-22 | Separate release handoff records the pinned published release and unchanged original full proof before C19 is unblocked. | Handoff documentation; later release/adoption workflow. |
| QS-23 | Genuine pre-bump signed 0.9 nonempty full-proof record-0.8 action history retains data/Behavior replay and exact recovery under 0.10, with identical events/evidence and no new commit/certificate. | New focused Store proof_version_history suite; reuse resulting_state_history/command_governance helpers. |
| QS-24 | Genuine pre-bump v2 migration history requires signed 0.9 proof; data/Behavior replay and exact recovery retain original context/identity under 0.10. | Same focused suite; existing migration replay/recovery helpers. |
| QS-25 | Historical-purpose path is unavailable to an uncommitted live candidate; altered event/candidate/signature/subject/policy/context remains rejected. Archive coverage is attested, not a new-model independent proof. | Focused historical/live boundary controls; reuse trusted_governance/replay_evidence_authority. |

For original missing-guard variants, locate approve/reject and assert the exact freshness predicate structure before removing it from an in-memory/external copy. Baseline index 3 is diagnostic information, not a mutation rule. Re-evaluate every reported witness with its complete supplied parent facts/universe and compare the complete recorded result. A false property must not pass merely because an abstract candidate fails confirmation.

## Existing suites to reuse

- `behavior-verify/tests/queries.rs`: matching/nonmatching creates, sums, changed captures, extrema, unique-under-disjunction and complete query witness confirmation.
- `read_soundness.rs`, `soundness_regressions.rs`, `closure.rs`: partial filters, nested filter errors, exact arithmetic and query-fold false-proof controls.
- `lifecycle.rs`, `invocation_bindings.rs`, `resulting_state_order.rs`: freshness/aliasing, transition effects and refusal schedule.
- `cache.rs`, `hashing.rs`, `solver.rs`: deterministic authoritative identity, exact key separation and uncertainty.
- `trusted_verification.rs`, `resulting_state_governance.rs`, Store `trusted_governance.rs`: fresh authority, archive decoding and schema provenance.
- `migration.rs`: source/target validity boundaries and versioned fresh/historical report distinction.
- CLI `cli_verify.rs`, `cli_engine_info.rs`, `cli_lifecycle.rs`: public verification and actual version metadata.
- Store `resulting_state_history.rs`, `command_governance.rs`, migration replay/recovery and `replay_evidence_authority.rs`: immutable-history purpose, original context and no new authority. New `proof_version_history.rs` exercises actual signed 0.9 histories captured before the bump.
- `consumer/tests/canonicalization.rs`: current checked facade artifacts; preserve all historical golden files while adapting four fresh report/authorization comparisons.

## Requirement and proof mapping

| Obligations / requirements | Design evidence | Acceptance evidence |
|----------------------------|-----------------|---------------------|
| PO-001; FR-001–002,010 | Typed source template and parent-definedness in proof contract §§1–3 | QS-01–QS-05,QS-07,QS-11 |
| PO-002; FR-003–004,017 | Typed capture ports, parent baseline and context lifecycle §§2,4,6 | QS-05–QS-09,QS-14 |
| PO-003; FR-005 | Existing s_count/count_of/deltas retained; local zero-plus-one proof §5 | QS-01–QS-02,QS-08–QS-10 |
| PO-004; FR-007,018 | Separate parent-definedness and untouched original obligations §§3–4 | QS-09,QS-11–QS-12,QS-21 |
| PO-005; FR-006,008 | Additive-implication conservativity §5; justified Gamma | QS-06–QS-07,QS-10–QS-14 plus proof review |
| PO-006; FR-009,011,017,021 | This matrix distinguishes new/extend/reuse and requires semantic red evidence | QS-01–QS-14,QS-21 |
| PO-007; FR-012–015 | Proof compatibility contract and released identity baseline | QS-15–QS-20,QS-23–QS-25 |
| PO-008; FR-016,019–020,022 | Six-area research review, migration encoding opt-out, bounded historical-purpose bridge and separate adoption | QS-14,QS-19,QS-22–QS-25; no global theorem claim |

A successful test suite is supporting evidence, not the unrestricted soundness argument. Implementation review must check that the code realizes every premise of the proof contract. Mandatory acceptance failures or unestablished premises block completion even if a diagnostic variant proves.
