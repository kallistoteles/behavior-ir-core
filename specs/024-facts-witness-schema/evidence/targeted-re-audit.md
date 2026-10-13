# Independent targeted re-audit — 024

Reviewer: `facts024_protocol_review`. Date: 2026-10-13. This reviewer did not author the production schema correction or implementation tests. Review operations read source, contracts, reports and retained evidence; they verified digests and structural equality without running builds or tests. Only this report was written.

## Assessment

**Scoped implementation accepted; exact-revision delivery pending.** No blocking mathematical, implementation or requirement-coverage defect was found in the reviewed ordinary-Facts/witness correction. The implementation repairs issue21/F023-EXTERNAL-FACTS-SCHEMA-001 without changing the reference computation. This assessment is not full-Core soundness, a new verifier proof, full-v2 Store conformance, issue-publication completion or release assurance.

FR-001–014 and SC-001–005 have working-source implementation, construction arguments and applicable bounded evidence. FR-015/SC-006/P024-12 additionally require the final frozen candidate, mandatory gates and pushed-Git consumer receipt; those requirements remain pending. The present report completes the independent-review part, not the delivery part.

## Reviewed source and evidence binding

Owning checkout: `/home/kalle/repos/behavior-ir-core-024`, branch `024-facts-witness-schema`; base `4f44fb83054d6d100f55e0b1466196b8cc94b151`. This is a working-source review, not an attestation of the future commit containing this report.

| Reviewed input | SHA256 |
|---|---|
| `schema/governance-v2.schema.json` | `b666f3f8ab2fa2f75905f97fa6aa281b2d39ebb52d185c5dde0baabbe6e6ffb4` |
| `schema/store-v2.schema.json` | `f61951d619cbcddcb995cb9a441e43b3d097bf4309de6282004418e5337152e3` |
| Verify `facts_witness_schema.rs` | `90b445d332d352f5eed954a269ef331c6089436b118b0cfe2a552389e9a27d9c` |
| Verify `facts_witness_compatibility.rs` | `4c2f60a0688635e016dbc690078f7f8c223c5e2b79eac64614c9ffcfdfefb7b4` |
| Consumer `facts_witness_schema.rs` | `af3d0bbbafd4af8b6d5c47e9432c9ff6dfc29bef7862ae07fd5653450454d5c7` |
| `ordinary.json` independent products | `a9682614fdb10504e3142eee386934786d8d20bd0fe6e2b794b10e1a60dbb9ca` |
| Marker/Customer issue module | `e149847db175ef099e8b499413bd21d68bb53cf875e7c2460210b815536a06a4` |

File-by-file verification against the retained 4,597-file baseline found exactly four changed existing files: the two allowed schemas and the two explanatory governance/versioning documents. No baseline file is missing. Runtime, codecs, serializers, hashes, facade, dependency metadata, gate scripts, historical artifacts and other schemas match their baseline digests.

Parsing each old/new wrapper establishes that `facts` is its only changed existing definition, precisely ten ordinary definitions are added, and all root properties, old neighboring definitions, witness alternatives and `bundle_*` definitions are equal. All eleven ordinary definitions are equal between the wrappers. Parsed JSON graph equality is a structural comparison, not a new Behavior identity rule.

For reproducible comparison after any optional formatting-only cleanup, SHA256 of UTF-8 `json.dumps(parsed_schema, sort_keys=True, separators=(',', ':'), ensure_ascii=False)` is `6e0ad61d731af1eaf5ae62d0cf97e7da6937d2f270f4b06a6b910d3202653c48` for governance and `157a8ac051795be8a7d68e0a2c2d6ade929ea0e1f9799bb440674f64da2c31e5` for Store. Such cleanup changes raw asset digests and therefore needs fresh input custody/checks. Earlier receipt digests remain evidence of their earlier sources.

## Mathematical and implementation correspondence

The six sections encode existing finite partial observation mappings, not a new semantic relation or validation authority. The corrected closed root dispatches each optional array to the corresponding product: existence/identity Boolean observations; references to closed incoming-edge products; query descriptors to an ordered capture sequence and member set; fields to canonical-valued cells; and supplied complete type universes to open id-bearing entity products.

Inspection of `Facts::from_json`/`to_json` and the independent contract agrees with every required property and basic type. Nine helpers are closed; universe members deliberately remain open over the unchanged `json_data` carrier. Required `value` can be null; absent `value` is malformed. No new nonempty/hash pattern, cardinality, uniqueness or canonical-order condition is introduced. Ordinary query products have no `result_hash`; bundle integrity helpers remain separate.

For normalized products whose payloads belong to the supported canonical carrier, serializer construction and the schema products establish the shape-inclusion argument: the serializer emits exactly the declared properties and carrier values. The unchanged parser/serializer establish the normalization argument. This is an inspected construction argument, not a mechanically formalized universal proof. Raw Facts payload parsing is broader than authenticated canonical transport; a universal equivalence between raw Facts acceptance and wrapper-schema acceptance is neither claimed nor valid.

Omitted and empty family arrays normalize to no observations. Explicit false facts and known-empty reference/query observations remain entries. A universe type with empty members remains a complete empty type observation; an absent type remains unknown. Maps/sets normalize independently of input order; capture sequence remains semantic input. Shape permits duplicate semantic keys, while the checked consumer rejects them. JSON Schema over parsed JSON cannot establish raw-key uniqueness, lexical number canonicality, factual truth, exact subject, historical binding, authentication or authorization.

## Evidence independently corroborated

The retained structural baseline log records five intended assertion failures, and the complete producer baseline log records eight intended assertion failures. The real signed issue test completes exact-subject checking, complete-parent/existence:false checks, ordinary normalization and runtime DENY reproduction before its schema acceptance assertion fails. Wrong-root aliases and malformed recognized generic families give actual negative RED. Canonical-family nested negatives are honestly classified as baseline-preservation controls masked by unknown roots. Compilation, disk, fixture-admission and isolated-run setup failures are retained without being counted as RED.

The original signed issue envelope SHA256 is `bd4670ccf2f0cc9947922674e2035b1aa23dbe2f95851bd2d6ac1c1df45f8f09`; the reproduced record SHA256 is `cbb1f9fe1bad6da3f65f1ab0e19c2834466da7b373fc2372dd3eddf58ab99971`. The GREEN test compares both original byte sequences without rewriting them. Capture and comparison modes cannot run simultaneously. The original source/test/fixture/schema inputs in `producer-red/inputs.json` match the reviewed correction regression and baseline assets.

The corrected working-source logs show all eight shared/schema/producer tests and nine compatibility tests passing, plus focused Clippy status0. Five isolated mutations were killed by the intended assertions and both fresh isolated positive/restored runs pass. These are bounded sensitivity tests, not a proof against every possible schema defect.

The compatibility baseline/corrected receipt log digests were independently verified. Their 30 serialized semantic/control rows are byte-identical; both files have SHA256 `df083f5621a3301f80278a96c2c5223d62603a29c70f051992a67c6445e5e56a`. Fourteen actual current producer cases and 38 enclosing checks cover legal per-version action/query/read/command/migration products. Only the six query-envelope schema checks change from rejection to acceptance. The exact legal Wire0.8 query fixture excludes the older effectless action; its actual module/subject hashes are recorded, and no cross-version equivalence is claimed.

Genuine H01 remains a zero-witness authenticated historical capture with original bytes/provenance. Constructed K01/K02 and empty-Facts controls are explicitly labelled, never historical producer output. All retain their recorded profile; archival authentication does not become current proof eligibility. Existing negative subject, manifest, signature, semantic-key and exact-parent contradiction checks remain intact.

The four existing-target receipts have verified log digests and report 294 passing verification controls. The single ignored function is an explicitly identified fixture-maintenance writer, not a passed or skipped verification control. The working canonical consumer log reports the new public-facade/CLI test passing; its actual CLI/test/fixture/schema custody matches the reviewed source. It imports only `behavior-engine` and reads neither schemas nor specification archives from the temporary consumer directory. Working consumer success is not yet pushed-Git revision assurance.

## Requirement and proof disposition

The detailed FR/SC trace is retained in [coverage](coverage.md); the following independently reviewed chain states how each proof obligation is established and its limits.

| Obligation | Requirements/criteria | Construction, checked invariant and bounded evidence | Disposition |
|---|---|---|---|
| P024-01 | FR-001/013; SC-001/002 | Serializer shape-inclusion argument; real issue RED/GREEN; actual query/current producer matrix | Established within declared domain; no universal solver proof |
| P024-02 | FR-002/003/012; SC-002/003 | Exact six arrays/ten products; independent required/basic-type/closed-property corpus; nested-item negatives and mutations | Established |
| P024-03 | FR-005/012; SC-002/003 | Unchanged recursive canonical carrier, bounded endpoints/nulls and open universe rows | Established for canonical carrier; lexical checks remain codec obligations |
| P024-04 | FR-004; SC-004 | Unchanged partial-map construction; omitted/empty/false/known-empty controls | Established |
| P024-05 | FR-004/008/011; SC-004 | Unchanged map/set and capture-sequence semantics; sizes1–8 permutations, normalization and semantic duplicates | Construction/invariant plus bounded evidence |
| P024-06 | FR-006/012; SC-003/004 | Disjoint closed ordinary/bundle helpers; ordinary result_hash refusal; unchanged023 controls | Established |
| P024-07 | FR-007/009; SC-001/002 | Unchanged witness/enclosing alternatives; authentic not_verified reports; actual read/command/migration witnesses | Established |
| P024-08 | FR-010/011; SC-002/004 | Legal per-version producer inventory; genuine archive custody, labelled codecs and unsupported refusals | Established for inventoried support; no invented historical witness production |
| P024-09 | FR-008/011; SC-003/004 | Unchanged exact-subject/trust/runtime checks; shape-positive semantic duplicates and checked contradiction/signature/manifest refusals | Established preservation; authority remains outside schema |
| P024-10 | FR-006/011; SC-004 | All protected baseline file hashes; neighboring-definition/root equality; original evidence and same-profile rows | Established for reviewed inputs; later changes need new custody/checks |
| P024-11 | FR-014; SC-005 | Public-facade/CLI test; explicit acceptance-domain, asset adoption and conservative minor-class assessment | Working-source evidence established; no release/pin change |
| P024-12 | FR-015; SC-006 | Independent review, honest limits and external frozen-candidate receipt protocol | Review established; exact-revision gates/Git consumer/receipt pending |

No requirement or significant support row lacks either applicable evidence or an explicitly bounded construction/invariant argument. FR-013 is not satisfied by constructed archives alone: current signed producers and original issue production supply actual production evidence. Historical rows satisfy the separately clarified archive/codec requirements.

## Observations and required disposition

| ID | Severity | Observation | Disposition |
|---|---|---|---|
| RA024-001 | Low | Four `verifier_version` enum arrays per wrapper are cosmetically expanded outside facts in the reviewed text diff; their parsed definitions are unchanged. | Optional surgical formatting cleanup improves literal scope. Preserve old receipt sources/digests; assert whole JSON graph equality and recheck the revised assets before freeze. No semantic correction is required. |
| RA024-002 | Observation | There is no dedicated new bounded test for null/scalar/array at the Facts root. | Nonblocking: root `type:object` and closure are unchanged, and the existing parser immediately requires an object. FR-012 specifically requires malformed families/items, which are covered. A future preservation control could add root cases; it must not be called historical RED or evidence of a newly corrected guard. |

No required production/test correction is identified by this review. Final delivery is still required: resolve/report any review changes, finalize tracked reports/task bookkeeping, commit/push/freeze the candidate, run the unmodified canonical gates and exact `--rev` Git consumer validation, capture temporary manifest/lock/current CLI/fixture/schema/toolchain/log evidence, and seal T048–T052 status externally. A changed candidate or later integration/release SHA receives its own applicable validation.

## Assumptions and assessment limits

JSON Schema/Draft202012 implementation and the pinned local-resource registry implement their specified behavior. Z3, canonical/crypto implementations, signature/hash security, authorized key roles and existing conforming backend/history contracts remain their existing assumptions. This review does not re-prove those dependencies. Bounded counterexamples and metamorphic comparisons are empirical support for inspected invariants, not general completeness/soundness proofs. Historical zero-witness archives cannot prove historical all-family production.

The public correction changes schema acceptance and asset digests. The existing runtime meanings, evidence identities and historical profiles are preserved; generated schema consumers may need adaptation through the eventual declared Core Release. Issue21's scoped implementation defect is addressed. Neither the wider016 findings nor full-v2 Store conformance are thereby closed.

## T046 independent cosmetic-scope disposition

RA024-001 is resolved. The coordinator restored all unrelated original formatting through surgical changes from the baseline text. Independent read-only comparison against the retained reviewed corrected source at `/dev/shm/core024-compat-green` establishes equality of the entire parsed JSON graph of each wrapper, including all new ordinary helpers. The parsed graph digests above are unchanged. The current text diff contains only the permitted facts replacement and helper insertion; the unrelated enum-formatting hunks are gone.

| Asset after cosmetic cleanup | Current raw SHA256 |
|---|---|
| `schema/governance-v2.schema.json` | `0d326896c94e72d97040ff76191fcc865fa0260ba28c52fa38249625860ff3c9` |
| `schema/store-v2.schema.json` | `d34606850ab863ba3e4e1c459bff0b81682b4629bd119a2d4cedd4195dc3ee5d` |

These values match the retained `/home/kalle/validation-receipts/core024/cosmetic-disposition.json`. Earlier reviewed/raw receipt digests identify the earlier tested formatting and remain truthful evidence; they are not retroactively replaced. No mathematical or schema-domain change is introduced, and the scoped review verdict is unchanged. Fresh focused checks and final frozen-revision gates/consumer custody must bind these revised asset bytes. This follow-up ran no build/test and adds no claim that those pending checks have passed.
