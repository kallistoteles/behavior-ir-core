# US3 — Same-profile current and historical preservation

T027–T034 are executed and verified. T035's row reconciliation is supplied below for the coordinator-owned inventory. This is working-source evidence, not final candidate/merge/release assurance.

## Source isolation and review

The compatibility target is [facts_witness_compatibility.rs](../../../crates/behavior-verify/tests/facts_witness_compatibility.rs), reviewed read-only by `facts024_protocol_review` before execution. Its final tested SHA256 is `4c2f60a0688635e016dbc690078f7f8c223c5e2b79eac64614c9ffcfdfefb7b4`. No runtime, public API, dependency, existing fixture or historical artifact was edited by this lane.

T028 ran in `/dev/shm/core024-compat-baseline-attempt2`, a separate checkout of baseline `4f44fb83054d6d100f55e0b1466196b8cc94b151`. Only the reviewed compatibility test and the required Marker/Customer fixture were overlaid. The fixture digest is `e149847db175ef099e8b499413bd21d68bb53cf875e7c2460210b815536a06a4`. The frozen023 checkout was never modified.

The separate corrected validation source `/dev/shm/core024-compat-green` has the same base and test/fixture overlay, plus exactly the two corrected wrapper files. It is explicitly labelled a corrected working-source overlay, not a pristine baseline or final delivery commit. File-by-file comparison establishes that these two schemas are the only differences from the reviewed baseline source.

| Wrapper | Baseline SHA256 | Corrected SHA256 |
|---------|-----------------|------------------|
| `governance-v2.schema.json` | `f10c478a2173801781f45f332b97fbf4283490c4eb89deb8fe3773868cd015fd` | `b666f3f8ab2fa2f75905f97fa6aa281b2d39ebb52d185c5dde0baabbe6e6ffb4` |
| `store-v2.schema.json` | `3be602ba979577e0ffbf16e892bcdbb9c10ee9c4501492f066556bcd6ea354d1` | `f61951d619cbcddcb995cb9a441e43b3d097bf4309de6282004418e5337152e3` |

Each isolated source used a fresh source-specific build target. Runs explicitly set `PWD`, change to the source inside the pinned Nix environment, print physical `pwd` and `cargo locate-project`, and retain actual compiler/package paths. Source/test/fixture/schema digests were captured before execution and verified unchanged afterward. Commands use the existing pinned toolchain with `CARGO_PROFILE_DEV_DEBUG=0`, `CARGO_PROFILE_TEST_DEBUG=0`, and `CARGO_INCREMENTAL=0`; these reduce generated build storage without changing source or dependency metadata.

## Baseline classification and corrected result

All nine tests were collected. The reviewed baseline execution returned 101: eight tests passed and the query producer test failed only at the final schema-acceptance assertion. All three legal query versions had already completed authenticated production, exact-subject validation, canonical ordinary serialization and runtime reproduction. All six corresponding envelope boundaries rejected the genuine witnesses because of the erroneous ordinary domain.

The corrected run returned 0: nine passed, zero failed/ignored/filtered. It exercised fourteen actual fresh signed current producer cases and 38 enclosing schema checks. The current producer inventory is bounded; it is not a universal solver or language proof.

The 30 retained semantic/control rows compare exactly between baseline and corrected runs, including full envelopes, canonical envelope hashes, reproduced records/hashes, migration refusals and checked error phases/categories. Both serialized row files have SHA256 `df083f5621a3301f80278a96c2c5223d62603a29c70f051992a67c6445e5e56a`. Shape acceptance changed from 32/38 to 38/38; the six changes are precisely S04's three query versions at governance-root and embedded Store-envelope boundaries.

Already accepted action/read/command/migration/archive controls are preservation evidence, not manufactured RED. The original issue's separate signed production RED is recorded in [US1](us1.md).

## Executed support rows

| Row | Actual fixture/profile/version | Emitted families or witness product | Checked evidence |
|-----|--------------------------------|-------------------------------------|------------------|
| S02 | `verify/postcondition.json`, Postcondition profile, Wire0.4/0.5/0.6/0.7/0.8 | `universe`; one actual DENY witness per version | Fresh authenticated producer, exact current subject/manifest, independent runtime reproduction, both enclosing schemas |
| S04 | `wire/valid/orders.json`, Preservation profile, Wire0.6/0.7/0.8 | `fields`, `identities`, `queries`, `universe`; seven reproduced witnesses per version | Each required family actually emitted; same-profile DENY records/hashes retained; both schemas reject on baseline and accept corrected evidence |
| S05 | `verify/reads.json`, EvaluationError profile, Wire0.7/0.8 | `universe`; four actual declared-read error witnesses per version | All reached sites are `read_body`; exact-subject validation, actual EVALUATION_ERROR reproduction and Core read replay match |
| S05/K03 | Independent state-free `zero_division` read, EvaluationError profile, Wire0.7/0.8 | Original actual witness omits Facts; separate labelled codec variant has `facts: {}` | Actual omitted-Facts producer and runtime/replay succeed; public-fixture re-signed empty-Facts control also decodes/validates; no deletion of reached producer evidence |
| S06 | Existing shared command `ratio_module(true)`, EvaluationError profile, Wire0.8 | `universe`; command-payload ERROR witness | Actual command-related manifest site, reproduced ERROR and empty intents, exact current subject and both schemas |
| S07 | Existing cultures_v2→cultures_v3 / region_required migration, requirements omitted deliberately, Migration IR0.1/current0.9 | Three-field `entity`/`value`/`refusal_code` witness; no Facts | Actual authenticated migration producer; exact admitted source/target; `transform_one` reproduces the original refusal; both migration witness/enclosing products accepted |
| H01 | Genuine immutable pre017 verifier0.8 signed receipt archive | Zero witnesses, unchanged original signed document | Original bytes/digest/custody/signature decode preserved; current-subject promotion still returns INCOMPLETE_VERIFICATION |
| K01/K02 | Independently signed constructed verifier0.7/0.8 empty-manifest codec controls | Zero witnesses; constructed transport, not historical production | Original canonical document/hash decode preserved; current-subject promotion returns INCOMPLETE_VERIFICATION; both schema boundaries accept |
| N01 | Re-signed unsupported verifier or solver identity | No supported producer claim | UNSUPPORTED_VERIFIER at envelope decode |
| N02 | Wire0.1/0.2/0.3; relational orders module assigned Wire0.5 | No invented producer pairing | Existing UNSUPPORTED_IR_VERSION admission refusal preserved |
| N03 | Original023 strict-bundle compatibility/schema/evidence targets | Existing bundle products and ordinary result_hash rejection | All verification controls pass; ordinary Facts is not made permissive and bundle integrity remains independent |

For legal Wire0.8 query production the test removes only the older fixture's effectless `check_orders` action; Wire0.8 deliberately rejects such actions. Wire0.6/0.7 use the unchanged older module. Each row records its actual module bytes/subject identity, so this is compatible per-version fixture selection rather than cross-version equivalence or a reinterpretation of the old module.

H01 uses the [original capture](../../017-resulting-state-validity/evidence/runs/US2/profiles/archived-receipt-verifier-0.8.json) and [original provenance](../../017-resulting-state-validity/evidence/runs/US2/profiles/archive-proof-run.json), source `932eb8188dc28393213491e27f66e3bc7e273a6b`. The original capture SHA256 is `e9f2ad97c9b52dd18da9e9871242571de9fb78e8c0a34563bcff15044eb73806`, and its verification identity is `sha256:2f8aa220f441243d712bf6b8fae1c1ed4726c53e451105e5d7dc2a95881c67ee`. A zero-witness authenticated archive establishes archive preservation, never historical all-family witness production or fresh proof eligibility.

## Independent semantic and trust refusals

Both baseline and corrected runs preserve these checked results:

| Attempt | Boundary | Result |
|---------|----------|--------|
| Contradictory repeated ordinary semantic key | `Facts::from_json` | INCONSISTENT_FACTS |
| Existence:false contradicts the actual bound parent universe | Evaluation input | INVALID_INPUT / INCONSISTENT_FACTS |
| Authenticated envelope supplied for another subject | Exact subject validation | INCOMPLETE_VERIFICATION |
| Public-fixture re-signed incomplete manifest | Envelope/report completeness | INCOMPLETE_VERIFICATION |
| Corrupted detached signature | Envelope authentication | INVALID_SIGNATURE |

The shared structure target independently accepts a shape-valid duplicate semantic key while the ordinary checked consumer rejects it; see [US2](us2.md). Public schema acceptance does not replace these checks or establish authentication, authorization, verification completeness or historical truth.

## Existing target execution

The four exact quickstart groups ran in the same frozen corrected source with explicit physical source binding and retained per-target results:

| Group | Executed targets | Result |
|-------|------------------|--------|
| Core | facts, queries, read_goldens, read_replay_integrity | 31 passed |
| Verify | trusted_verification, read_soundness, lifecycle, queries, migration | 37 passed |
| Verify023 | strict_bundle_evidence, strict_bundle_compatibility | 152 passed |
| Store023 | strict_bundle_schema, strict_bundle_evidence, strict_bundle_compatibility, trusted_governance | 74 passed; one intentional maintenance writer ignored |

The ignored `capture_projection_fixtures` function is explicitly marked a maintenance fixture writer in existing source. It is not a verification control, was not counted as passing, and was not run because doing so would refresh protected original fixtures. No required verification test was ignored or filtered. These 294 existing passing controls are evidence for the named domain, not full-Core or full-v2 Store conformance.

## Custody and failed-attempt disposition

Retained external evidence under `/home/kalle/validation-receipts/core024/`:

- `compatibility-baseline/`: original attempt1 logs/source/artifact custody. Its invalid Wire0.8 effectless-action fixture failed admission; it is setup/coverage evidence, not intended RED. The first custody preparation also stopped at a tracked directory symlink; the corrected manifest hashes symlink target text explicitly.
- `compatibility-baseline/attempt2/`: reviewed source manifest, collection/execution receipts/logs, original 30 semantic rows and 38 shape rows. Source manifest SHA256 `a8043654f2a4da5cb1a6b2e57814eeb8028c591d2881cfe153efee8e0f609071`.
- `compatibility-green/`: separately corrected source manifest, collection/execution receipts/logs, exact semantic-row comparison, shape rows and `differential-summary.json`. Source manifest SHA256 `9728c25c6fe183b4d3bfc85ffeca07a7e03c032cbdbceaedcdd2be3164041e81`.
- `compatibility-green/existing-targets/`: all four canonical targeted command arrays, per-target statuses/counts, physical source stamps, immutable source/schema digests and log digests.

Inactive baseline and corrected build directories generated by this lane were removed only after recording executable-artifact digests to reclaim tmpfs; their frozen source checkouts/manifests/logs remain intact and separate from the root delivery checkout. A focused isolated `cargo clippy --locked -p behavior-verify --test facts_witness_compatibility -- -D warnings` also passed; its evidence is the agent execution transcript and `compatibility-green/build-artifact-custody.json`, not the mandatory final gate. No receipt calls an old-source failure current GREEN, and no shared-target artifact is used to claim an isolated-source result.

## T034/T035 disposition and proof limits

The initially illegal Wire0.8 test module was corrected at the fixture-builder boundary and independently re-reviewed before a fresh isolated baseline attempt. No runtime or historical-profile correction was needed. No new scoped semantic discrepancy was found after the reviewed baseline and corrected comparison.

P024-07/08/09/10 are supported by the explicit witness products, existing profile/subject/authentication code invariants, protected-source equality, and the bounded results above. C07–C09 are covered; S02/S04–S07/H01/K01–K03/N01–N03 have their producer labels and current/historical outcomes reconciled here for the common inventory owner. Solver/cryptographic correctness and universal producer closure remain assumptions/invariant arguments beyond finite examples. Final mandatory gates, exact pushed-revision consumer validation and the external frozen-candidate receipt remain coordinator-owned delivery work.
