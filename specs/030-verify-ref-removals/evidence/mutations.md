# Actual source mutation controls

These controls execute mutated production code, require an actual failing behavioral
test (compilation failure does not count), restore exact original bytes in `finally`,
and retain commands, patches, SHA-256 identities and raw logs. Run only with no
concurrent build or source edits. Reproducer: source the pinned environment and invoke
`python specs/030-verify-ref-removals/evidence/run-mutation.py CASE`.

| Premise | Case | Detecting control |
|---|---|---|
| L1 all incoming classes | inventory | `every_incoming_source_and_field_needs_its_own_total_guard` |
| L5 exact typed capture | capture | `joint_07_has_real_reference_proof` plus normal distinct-capture controls |
| L4 surviving bound delta | bound_delta | `newly_created_and_retargeted_survivors_cannot_reference_removed_targets` |
| L4 created delta | create_delta | same actual per-family control |
| L7 no later premise | prefix | `unguarded_removal_has_a_real_confirmed_early_reference_failure` |
| exact actual witness site | witness | `actual_first_reference_failure_requires_exact_declaration_field_and_hash` |

Each completed run has `mutation-CASE.json` and `.txt`. A green restored-source G2
run is required after the series. This is targeted sensitivity evidence, not a proof
of extractor completeness. The later US4 trusted-inventory and schema-dependency
source mutations are separate mandatory controls against final integrated code;
this series does not substitute for them.


## Late final-integration controls (T047)

`trusted_inventory`: suppress the reference class from the claimed trusted inventory
while the normal diagnostic verifier still produces complete proven Ref checks.
The independent semantic inventory rejects it; the expected-manifest positive test
fails with INCOMPLETE_VERIFICATION. `schema_dependency`: remove the actual full-module
removal dependency, leaving an unchanged action's old keys reusable after a new otherwise
unmentioned Ref declaration. The focused cache test fails on actual stale cache reuse.
Raw commands/patches/restored identities are in their mutation JSON/TXT pairs.

Both controls ran after normal US4 integration and passed their required behavioral
failure checks. `g3-restored.txt` then passed 61 verifier/reference/cache/migration/current
identity tests against restored source. G3's prior CLI/public/history matrices also
passed. No altered artifact alone substitutes for these actual source mutations.
