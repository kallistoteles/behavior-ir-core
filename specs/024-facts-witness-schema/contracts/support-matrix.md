# Contract: Supported Producer, Schema and Checked-Consumer Domain

This is a domain inventory, not execution evidence. FR-010/013 and SC-002 distinguish actual production, structural validation, archival authentication and fresh proof eligibility. No blind verifier×Wire Cartesian product is claimed.

| ID | Existing pairing | Actual producer/control | Required schema boundary | Checked expectation |
|----|------------------|-------------------------|--------------------------|--------------------|
| S01 | Normalized ordinary Facts, six families | Existing Facts serializer; applicable runtime observations | Both facts definitions | Ordinary decoder round trip; semantic obligations separately |
| S02 | Current verifier0.9 module actions; admitted Wire0.4–0.8 | Fresh authenticated producer with actual compatible module per version | Governance envelope root; embedded Store envelope/witness | Exact subject/current manifest and runtime reproduction |
| S03 | Issue Marker/Customer existence counterexample; Wire0.5/current0.9 | Actual signed issue producer | Same enclosing boundaries plus facts subdocument | not_verified, existence:false, complete parent universe, identical DENY |
| S04 | Query-bearing action witness; applicable Wire0.6–0.8/current0.9 | Actual query counterexample producer and emitted facts subset | Same | Runtime-confirmed result; emitted queries/fields/universe asserted as actually present |
| S05 | Declared-read witnesses; Wire0.7–0.8/current0.9 | Authenticated module producer at read_body | Same | Actual declared-read reproduction under same subject |
| S06 | Command-related action evidence; Wire0.8/current0.9 | Existing command-compatible producer/control | Same, unchanged enclosing command products | Current command/record semantics unchanged |
| S07 | Migration refusal; Migration IR0.1/current0.9 and admitted exact source/target | Actual verify_migration_authenticated producer | Same embedded migration witness alternative | transform_one reproduces exact migration refusal; no invocation Facts |
| H01 | Genuine verifier0.8 signed pre017 archive | Retained original capture and custody | Governance root; embedded Store envelope | Archive decode/signature/recorded-manifest preservation; not fresh current proof |
| K01 | Verifier0.7 archival transport | Independently signed existing codec control | Same | Archive decoding preserved; current-subject validation refuses |
| K02 | Verifier0.8 archival transport | Independently signed existing codec control | Same | Same; not substitute for genuine historical production |
| K03 | Omitted/empty Facts and existing witness alternatives | Explicit structural/checked controls | Witness/facts definitions as applicable | Existing absence/empty/type distinction and refusal behavior |
| N01 | Unsupported verifier/solver identity | Negative transport/control | Schema alone need not establish version trust | Existing UNSUPPORTED_VERIFIER refusal |
| N02 | Module Wire0.1–0.3 or illegal feature/version pairing | Existing negative admission controls | No invented producer pairing | Existing explicit admission refusal |
| N03 | Bundle observations at ordinary Facts boundary | Actual023 bundle plus separated ordinary negative control | Ordinary facts definition | Ordinary bundle-field refusal; original bundle contract stays valid |

S02 requires baseline-version coverage with legal constructs, not exists/queries/commands in versions that never supported those operators. Bind each row to its actual fixture/module hash/profile; envelope subjects do not carry a Wire-version selector. Resource-limited/inconclusive reports remain their original aggregate, never passing proof results.

## Historical evidence custody and limits

Genuine H01 capture: [archived-receipt-verifier-0.8](../../017-resulting-state-validity/evidence/runs/US2/profiles/archived-receipt-verifier-0.8.json), provenance [archive-proof-run](../../017-resulting-state-validity/evidence/runs/US2/profiles/archive-proof-run.json). Source `932eb8188dc28393213491e27f66e3bc7e273a6b`, original CLI/signing fixture/output digests and exit status are recorded. Other retained signed Store archives remain immutable.

Inspected genuine0.8 envelopes have no witnesses. They establish authenticated archive preservation, not actual historical Facts-witness production. K01/K02 are constructed codec controls and must be labelled as such. Same-profile source/shape reasoning plus structural family controls cover their ordinary contract; they are not historical counterexample capture claims. Any required additional actual historical witness run must use immutable historical source/pinned tools and retain provenance; retagging fresh output is insufficient.

Historical0.7/0.8 envelopes are not selectable fresh current producers. `validate_for_subject` derives the current manifest and rejects their promotion (covered code INCOMPLETE_VERIFICATION). Decoder support and fresh proof eligibility are distinct assertions.

## Family inventory rule

Record each case's producer class (fresh signed, ordinary serializer/runtime, genuine archive, constructed codec, or structural negative), actual emitted families, enclosing boundary and checked result. Cover six families collectively; do not fabricate one all-family signed witness. Ordinary serializer controls are actual serialization but not solver/recording evidence. If a chosen runtime/signed fixture does not emit its required family, it fails that coverage assertion; select a valid existing path rather than inventing support.

Current complete-parent action records/witnesses can contain universes; the older supplied-only comment is not the authority for current behavior. Inputs and archives are never silently normalized or upgraded for this correction.
