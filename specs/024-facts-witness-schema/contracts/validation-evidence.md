# Contract: Validation Evidence and Test-First Delivery

All new test paths/cases below are prospective implementation work. Planning creates no test and establishes no RED/GREEN result.

## Case inventory

| ID | Required evidence | Main obligations |
|----|-------------------|------------------|
| C01 | Actual authenticated Marker/Customer issue production; exact subject validation and runtime DENY; unchanged envelope accepted by both schema boundaries | FR-001/007/009/013; SC-001 |
| C02 | All six well-formed normalized ordinary products through existing serializer and decoder; explicit independent expected products | FR-002–005/012; SC-002 |
| C03 | Actual applicable action/query/read producers; assert emitted family subset and canonical observations | FR-001/010/013; SC-002 |
| C04 | Wrong root aliases; non-array/null families/items; missing/wrong/additional closed-product properties; ordinary result_hash | FR-003/006/012; SC-003 |
| C05 | Payload bool/int boundaries/string/null/recursive arrays/objects; open universe fields; no accidental scalar/entity-only restriction | FR-005/012; SC-002–003 |
| C06 | Omitted arrays versus empty arrays; false observations; known empty reference/query sets and complete empty type universes; captures retain sequence | FR-004; SC-004 |
| C07 | Structurally valid duplicate semantic keys/contradictions; exact subject/signature/manifest refusals | FR-008/011; SC-003–004 |
| C08 | Current compatible module-version rows; actual read/migration witness alternatives; unsupported-version controls | FR-007/010–011; SC-002/004 |
| C09 | Original genuine0.8 archive byte/hash/authentication preservation and constructed0.7/0.8 codec controls; no promotion to current proof | FR-010–011; SC-004 |
| C10 | Facade/CLI-only consumer original issue production, decode, exact subject and reproduction; correct asset custody | FR-013–014; SC-005–006 |
| C11 | Protected-source/schema comparison; shared ordinary definitions agree; original bundle/other schema controls unchanged | FR-006/009/011; SC-004 |
| C12 | Targeted review, compatibility/migration assessment and exact-revision gates/consumer/receipt | FR-014–015; SC-005–006 |

## Genuine RED before schema edits

Create a correction-oriented test using real admitted module, supported Z3 and public test signing fixture. Assert the real signed producer completed with not_verified, the witness contains existence:false and a complete parent, exact-subject validation succeeds and runtime returns identical DENY. Assert both applicable schemas **accept** the original envelope. Observe that acceptance assertion fail on the named baseline before editing either schema.

Compile failure, unavailable solver, malformed test module, unexpected family omission and a successful discovery script are not RED. Keep collection, command/status, source/test/schema/CLI digests, toolchain and actual assertion output. Baseline producer/canonical evidence must remain available for after-correction comparison. Require an intended failing rejection assertion for malformed structures that the baseline actually accepts (including wrong aliases and malformed queries/fields/universe). Malformed canonical existence/identities/references products may already be rejected because their root names are unknown: retain those as passing baseline-preservation controls and record this masking. A positive canonical producer acceptance regression still fails on the real baseline. Do not edit diagnostic schema copies to manufacture RED, or claim every negative failed before correction; isolated post-correction constraint mutations can additionally demonstrate nested negative-test sensitivity.

## Independent oracle

Use existing pinned Python Draft202012Validator with explicit local resource registry. Expected shape and semantic products come from this contract and existing admitted runtime inputs/records, not a transformation of the schema under test. Validate governance envelope root, Store embedded envelope, witness and Facts separately as applicable. Never call a witness a standalone Store root document.

Do not infer actual producer coverage from hand-built signed JSON, a renamed profile or a retagged current archive. Bounded generation/metamorphic controls supplement actual producers: reorder map/set inputs, retain capture sequence, compare normalized products, and preserve original signed bytes. Schema validation of parsed JSON does not establish raw key uniqueness or lexical numeric canonicality.

Adversarial shape controls isolate one structural defect at a time. Semantic/trust controls must reach their actual checked boundary; re-signing test evidence, where necessary, uses the public fixture and existing independent helpers, never production keys. Retain positive controls and do not weaken unknown/INCONCLUSIVE to passed proof.

## Prospective test locations

- `crates/behavior-verify/tests/facts_witness_schema.rs`: C01–C06/C11; actual producers, existing ordinary serializer and independent schema checker.
- `crates/behavior-verify/tests/facts_witness_compatibility.rs`: C07–C09; current/historical, migration and trusted-subject boundaries.
- `consumer/tests/facts_witness_schema.rs`: C10, using behavior-engine only and the source-bound CLI.
- `tests/fixtures/facts-witness-schema/`: only needed admitted modules/independent controls and capture custody, created by the fixture owner; never copied Core schemas or forged historical captures.

The consumer temporary checkout contains consumer/ and tests/fixtures, not schema/ or specs/. Independent schema validation stays in workspace tests. Consumer code must not read relative ../../schema or spec archives. Genuine historical archives may be read by workspace tests at their retained original paths; if a new conformance copy is necessary, preserve exact bytes and provenance under explicit ownership.

## Source protection and review

Only the two current wrappers' facts/new ordinary definitions are implementation schema changes. Record baseline digests for every runtime/parser/serializer/hash/facade/dependency file and other schema. Recheck existing definition equality outside the allowed set, bundle controls, original archive bytes and canonical evidence. No stale comment cleanup or unrelated schema refactor is included.

Review obligations are mapped explicitly rather than presumed one-to-one with cases:

| Obligation | Claim | Evidence cases |
|------------|-------|----------------|
| P024-01 | Actual applicable producer/schema closure | C01, C03 |
| P024-02 | Six-family structural products and required keys | C02, C04 |
| P024-03 | Existing canonical payload carrier, open entity fields | C05 |
| P024-04 | Unknown/empty observation distinctions | C06 |
| P024-05 | Mapping/set normalization and capture sequence preserved | C02, C06, C07 |
| P024-06 | Ordinary/bundle domains stay separate | C04, C11 |
| P024-07 | Correct existing witness/enclosing alternatives | C01, C08 |
| P024-08 | Explicit version/profile and archive support | C08, C09 |
| P024-09 | Structural acceptance cannot replace semantic/trust checks | C07 |
| P024-10 | Existing source, evidence bytes and neighbor schemas protected | C09, C11 |
| P024-11 | Consumer compatibility and adoption correctly disclosed | C10, C12 |
| P024-12 | Targeted closure and exact-revision delivery custody | C12 |

Each needs code/structural reasoning plus applicable bounded evidence, or an explicit assumption. Finite examples are not a universal proof.

## Frozen revision receipt

Finalize tracked source, fixtures, reports and task bookkeeping, commit/push the candidate, then keep the checkout unchanged while running canonical gates and --rev consumer validation. Record final task completion externally, not by altering the frozen tracked task file. Receipt fields: repository, exact SHA/tree, commands/statuses, environment/toolchain, source/test/schema/fixture/CLI digests, actual resolved Git packages/manifest/lock, log locations, scope/assumptions and completion status.

Capture temporary consumer Cargo.lock before cleanup, including Nix nested TMPDIR. All Core packages must resolve to the exact candidate SHA; CLI and fixtures still come from the invoking frozen checkout. Preserve failed attempts and any resource adjustments. A changed source/report or later integration revision requires a new candidate and checks. Publication/merge/release/pin changes are separate scope.
