# Phase 0 Research: Faithful Facts and Witness Schemas

Status: complete design research; no implementation or executable correction tests.
Baseline: Core `4f44fb83054d6d100f55e0b1466196b8cc94b151`. Issue: [#21](https://github.com/kallistoteles/behavior-ir-core/issues/21).

Three read-only research agents inspected ordinary shape/value boundaries, supported historical profiles, and validation/release infrastructure. The coordinator consolidated their results and checked the owning constitution. No research lane modified source or ran builds/gates.

## R1 — Correct the schema representation, preserve the evaluator

**Decision:** Change only the ordinary `$defs/facts` and necessary new ordinary helper definitions in the two current V2 wrapper schemas. Existing witness alternatives and their Facts references remain unchanged. Runtime codecs, serializers, semantic identities, bundle definitions and other schemas are protected.

**Rationale:** Ordinary encoding/decoding already agree on `existence`, `identities`, `references`, `queries`, `fields`, `universe`. The public definition uses three erroneous root aliases and arbitrary family shapes. This is representation debt, not a missing semantic operator. Sources: [facts](../../crates/behavior-core/src/facts.rs), [witness consumer](../../crates/behavior-verify/src/governance/trusted.rs), [issue provenance](origin-and-priority.md).

**Alternatives considered:** Rename canonical evidence to match the bad schema; accept aliases; reuse the bundle query definition. All would change or conflate existing contracts unnecessarily.

## R2 — Exact products, generic canonical values

**Decision:** Add ten ordinary helpers: existence, identity, reference edge, reference observation, capture, query member, query observation, field observation, universe member and universe observation. Keep `$defs/facts` as the optional six-array root. Reuse existing `json_data` only at value-bearing payload positions, not whole families. Universe members are open objects requiring string `id`.

**Rationale:** `facts.rs:284–468` requires closed observation products, but field/capture values and extra universe fields are generic JSON until module checks run. Authenticated wrappers first call strict canonical decoding (`trusted.rs:22–27`); their existing `json_data` carrier is bool, i64/u64-bounded integers, strings, null, recursive arrays/objects. A scalar-only or fixed entity helper would reject permitted structural payloads. Non-integral numbers are outside this wrapper carrier; schema validation cannot establish raw number spelling or object-key uniqueness.

**Alternatives considered:** Widen shared `json_data` to floats; use `scalar`/`entity_value`; make universe member objects closed to `id`; introduce hash/nonempty patterns on ordinary strings. None matches this structural boundary. Meaningful typed identities and exact values remain module/profile obligations.

## R3 — Missing, empty and collection semantics

**Decision:** Accept omitted arrays and empty arrays; serializer normalization may equate them as empty partial maps. Preserve explicit empty observations inside reference/query/universe items. Captures are an ordered sequence. Incoming edges and query members denote sets; families and universes denote mappings. Add no new schema canonical-order or semantic-key-uniqueness requirements.

**Rationale:** Decoder/serializer preserve capture order, sort map/set representations and reject repeated semantic keys. Empty `universe:[]` supplies no type universe; a type item with `members:[]` supplies a complete empty universe. Omission is not false. Sources: `facts.rs:126–191,284–539`.

**Alternatives considered:** Require all families, normalize unknown to empty, treat all arrays as sets, compare arbitrary raw input bytewise with normalized serialization. These erase distinctions or invent semantics.

## R4 — Current production and archive preservation are distinct evidence

**Decision:** Inventory fresh verifier0.9, historical verifier0.7/0.8 archive support, applicable module/read/migration constructs and unsupported cases separately. Bind Wire version to the actual external module, never infer it from the envelope subject. Use same-profile comparisons.

**Rationale:** `VerificationEnvelopeV2::from_json` authenticates accepted historical versions, while `validate_for_subject` derives a current manifest. Old envelopes do not become fresh proof. Genuine pre017 verifier0.8 captures exist, but inspected envelopes have no witnesses. Constructed 0.7/0.8 controls test codecs, not historical producer provenance. See [support matrix](contracts/support-matrix.md).

**Alternatives considered:** A verifier×Wire Cartesian test grid; retagging current output as historical production; claiming actual historical all-family witnesses from empty signed archives. All overstate the supported domain/evidence.

## R5 — Actual family coverage without fabricated signed reports

**Decision:** Cover six families through actual ordinary serialization and applicable evaluation/confirmation paths. Keep the issue's genuine signed witness as the primary regression; add actual read/action/migration producers where supported. Record each producer's emitted family subset and refuse missing-family assertions. Supplemental structural controls are labelled separately.

**Rationale:** Confirmation chooses observed record facts only if they reproduce the entire record; otherwise it retains supplied facts/universe (`confirm.rs:284–322`). Current full-parent records can include universes despite the stale supplied-only comment (`behavior-core/tests/facts.rs:244–257`). One signed witness need not contain every family, and a fictional all-family witness proves no producer closure.

**Alternatives considered:** Require every witness/profile to emit all families; silently turn non-reproduced solver models into positives; repair the stale comment during narrow024. These respectively invent support, hide failures or broaden scope.

## R6 — Existing independent validation tools and narrow consumer checks

**Decision:** Reuse pinned Python/jsonschema Draft202012 validation inside workspace tests and the existing facade/CLI for external consumers. Add no dependency, public API, schema-fetch service or gate bypass. Register required local schema resources and validate governance roots versus embedded Store definitions correctly.

**Rationale:** `flake.nix` already supplies all tools. `check-consumer.sh --rev` copies consumer and fixtures, not schema or feature archives. The external consumer will check production, checked subject binding and reproduction; independent schema validation stays in the workspace. See [validation contract](contracts/validation-evidence.md).

**Alternatives considered:** Relative schema reads in the temporary consumer; copying schemas into bindings; changing official scripts merely to make this test work. These create custody/dependency problems and unnecessary scope.

## R7 — Public schema consequences and revision-bound evidence

**Decision:** Conservative minor-class compatibility assessment under the current 0.x policy; no numeric release is selected. Update schema assets in a future release, never overwrite old release artifacts. Freeze tracked implementation/fixtures/reports before final checks; record final completion externally against the exact SHA.

**Rationale:** Canonical evidence becomes schema-accepted, while malformed formerly accepted structures become rejected. Consumers generated from the erroneous schema may need adaptation. Asset digests change independently of semantic SchemaHash and record identity. [023 assessment](../023-strict-bundle-evidence-validation/compatibility-assessment.md) supplies the applicable precedent, and [versioning](../../docs/versioning.md) governs delivery. See [compatibility assessment](compatibility-assessment.md).

**Alternatives considered:** Call the change invisible cleanup; embed a report's containing commit SHA in itself; treat a later squash/rebase as already exactly tested. These misstate observable contract or provenance.

## Resolved technical questions

Shape/payload bounds: R1–R3. Producer/profile domain and archive custody: R4–R5. Existing tools, consumer paths and test ownership: R6. Public compatibility/final custody: R7. No unresolved design clarification or unjustified constitution deviation remains; empirical implementation evidence is still required.
