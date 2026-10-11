# Governance/Store schema profile integration

Status: reviewed test-first integration complete; full trusted_governance target
GREEN. This is scoped schema/runtime correspondence evidence, not a final gate.

## Actual defect and RED

The earlier [integrated Store run](../integrated-store/run.stdout.txt) executed
the original trusted_governance target with 16 passing tests and one failing
runtime/schema test. Its [stderr](../integrated-store/run.stderr.txt) identifies
`behavior.governance_candidate.v2` with a fresh nested decision 0.8. Both
governance-v2 and store-v2 had the same decision-record definition, whose version
enum ended at 0.6. Both also omitted verifier 0.9 from their four closed provenance
enums. Production already emitted current 0.8/0.9; the advertised wrapper schemas
did not admit those shapes.

The root reviewed the proposed focused assertions before schema edits. The
[compiled RED](../wrapper-schema-compiled-red/run.json) executed three new tests:
one passing codec/schema closure control and two intended failures, zero ignored,
17 filtered. The candidate test first failed on fresh Legacy 0.8; later
CommandIntents 0.8/archived 0.7 checks were not reached in that loop. The separately
executed proof test first failed on an actual fresh authenticated 0.9 envelope,
after the genuine archived 0.8 control had passed for governance-v2. These are two
Rust test failures, not a claim that every later mutation was independently RED.

The first [compile attempt](../wrapper-schema-red/run.json) lacked a test-only
BTreeMap import and ran no tests; it is excluded from semantic RED.

## Smallest integration and preservation

Only these production files changed:

- [governance-v2.schema.json](../../../../../../schema/governance-v2.schema.json)
- [store-v2.schema.json](../../../../../../schema/store-v2.schema.json)

Each decision-record definition now contains three disjoint alternatives: the
exact original legacy object, and canonical closed decision 0.7/0.8 schemas with
the existing commitment requirement `result=ALLOW` and `action.hash` present.
The 0.7 alternative closes a latent wrapper-schema gap for a genuine pre017
command record; it is not a generic permissive 0.7 shape or live-commit authority.
The original legacy object's version/data permissiveness is preserved; no
historical codec is silently rewritten. The four descriptor/manifest/report/
verification-content enums add only known verifier 0.9.0, retaining 0.7.0/0.8.0.
Unknown versions and current malformed profiles remain refused.

Canonical record definitions are reused by their existing IDs:
`https://behavior-ir.local/schema/decision-record-0.7.schema.json` and
`https://behavior-ir.local/schema/decision-record-0.8.schema.json`.
Offline validators register the corresponding released local schema resources.
The test uses Registry/Resource already provided with jsonschema in the pinned
environment; no dependency or network retrieval is introduced. The record
schemas themselves remain unchanged. JSON Schema checks shape; checked codecs,
semantic rederivation and authentication retain their separate obligations.

Structural comparison against HEAD verifies that the first alternative equals
the original legacy object, all other definitions are unchanged except these
five named definitions, and both root document alternatives remain unchanged.
No fixture, historical hash or record was regenerated. Original replay,
governance authority, admission and hash algorithms were not modified.

## Executed GREEN and controls

The [final actual run](run.json) executed the entire trusted_governance target:
20 passed, zero failed/ignored/filtered. This includes 17 original tests and three
new schema tests, not 20 independent mathematical proofs. It exercises actual
Store-produced Legacy 0.8 transfer and CommandIntents 0.8 receipt candidates,
the genuine captured 0.7 bundle, actual freshly authenticated 0.9 proof and the
authenticated pre017 0.8 archive captured separately in US2. Canonical codecs
decode the controls before their wrapper schema is tested.

Negative checks cover missing/wrong validation profile, unknown record/version/
language, contradictory command/profile products, unknown nested fields and
fake 0.7 current-profile data. Proof checks retain unknown-version/unknown-field
refusal for provenance products. Original legacy schema acceptance and canonical
current-record acceptance are prerequisites, rather than accepting a validator
that rejects all inputs as a successful negative test.

The first [post-integration run](../wrapper-schema-green/run.json) had 18 passing
tests and two failing test expectations: the new tests incorrectly treated
candidate/envelope as root Store documents. Those are intentionally nested
Store definitions. The root was notified; assertions were corrected to the
explicit candidate/envelope definitions, preserving both schemas' root oneOf
and all original root-document refusal checks. This retained log is a seed
expectation correction, not an additional production defect or semantic RED.

All four capture runs report source/test files unchanged during execution. Final
owned/exercised digests still match the final capture. Resource settings were
`CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0`,
`CARGO_PROFILE_TEST_DEBUG=0`, `CARGO_BUILD_JOBS=2`; default debug assertions and
overflow checks remain. The exact Nix command and full stdout/stderr are in
run.json. Scoped rustfmt and diff whitespace checks passed. Final repository
gates and exact-candidate consumer compatibility remain separate root tasks.

| Final file | SHA256 |
| --- | --- |
| schema/governance-v2.schema.json | 1508d88cd98df03f34ee4f5f0b231975b003535c6ecb0f06e0f212d6c45f11d7 |
| schema/store-v2.schema.json | 10d9ce5c9c25076fd9b8bb46a93cdd1a2bf6d1d74fc69efbd32121022a41f7a1 |
| crates/behavior-store/tests/trusted_governance.rs | 3a4bf521bedc4ccbfedd77285c1c7baba82123263a85c9406e41a83c28d0c40d |
