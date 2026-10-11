# Shared test fixtures

These fixtures support Core's Rust, CLI and conformance tests. Ecosystem bindings
fetch conformance assets from their declared Core Release; they do not maintain
a second evaluator or independently regenerate Core's semantic fixtures.

| Path | Content |
|------|---------|
| `typing_cases.json` | Typing table run against the engine (the only type checker) |
| `hash_vectors.json` | Frozen content-hash vectors; changes require a reviewed regeneration (feature 004 changed `expr_sub`, `expr_mul`, `expr_div`: decimal arithmetic is exact) |
| `versions.json` | Behavior versions and item hashes of the Python example models and variants |
| `wire/valid/` | Hand-written wire IR that must be admitted |
| `wire/invalid/` | Hand-written wire IR with `<case>.expected.json` listing the expected errors |
| `wire/python/` | Golden canonical wire IR of the Python DSL fixtures, serialized by the engine |
| `requests/` | Original evaluation requests against `wire/valid/`, including historical expectation tables |
| `records/` | Frozen historical golden decision records, one per original request |
| `intents/` | Recorded structured intents, with `<name>.expected.json` for rejections |
| `host/` | Host contexts (state, context, data version) supplied by the trusted caller |

Original golden files were generated from the implementation, reviewed, and
frozen. They preserve the producer's historical profile. Current fresh decisions
can have a different outcome or evidence version; tests check historical replay
separately from current evaluation. Independently specified current expectations
are described below and are not regenerated from runtime output.

## Feature 002

| Path | Content |
|------|---------|
| `verify/` | Behavior modules with seeded defects and `<name>.expected.json` listing every expected check outcome |
| `governance/` | Execution policies, fixed test keys (test-only, never trusted by a real policy), and notes on how waivers and signatures are generated in tests |
| `requests/002/` | Requests and expectations for the runtime changes (entity constraints, binding check, state-cell change sets) |

## Feature 003

| Path | Content |
|------|---------|
| `numeric/rounding.json` | The six rounding modes as data (values, scales, expected results); computed with exact fractions and shared by Rust and Python tests |
| `wire/valid/fixed_scale.json` | Wire IR 0.3 module with a two-decimal `Money`, exact quantities, and rescales (invalid 0.3 cases in `wire/invalid/`) |
| `requests/003/` | Requests and expectations for grid/range input checks, exact arithmetic, and rescale trace entries |
| `verify/*money2*`, `verify/discount_rescale*`, `verify/rescale_modes*` | Verification fixtures with fixed-scale Money |

## Feature 004

| Path | Content |
|------|---------|
| `frozen_versions.json` | Behavior versions (semantic hashes) of every fixture module, recorded before feature 004; modules whose meaning does not change must keep them |
| `migration_004.json` | Migration table: fixture modules whose behavior version changed in feature 004, with the reason (all others keep their frozen identity) |
| `requests/004/` | Requests and expectations for exact ratios and exact general-decimal arithmetic (003 subset format) |

## Feature 005

| Path | Content |
|------|---------|
| `wire/valid/ledger.json` | Accounts (`active`, two-decimal `balance`) with `transfer`, the no-op `touch`, and `freeze`: the persistence fixture module |
| `store/hash_vectors.json` | Frozen hashes of the persistence documents (entity content and version, state, evidence policy, genesis, commit bundle, transition record) |

## Feature 006

| Path | Content |
|------|---------|
| `wire/valid/accounts.json` | Wire IR 0.5: customers, accounts with `owner: Ref<Customer>`, audit notes with a plain `Id<Customer>`; creation, removal, `exists`, `referenced` (invalid 0.5 cases in `wire/invalid/`: `create_*`, `remove_*`, `lifecycle_in_0_4`) |
| `requests/006/` | Plain-evaluation requests with `facts` sections (existence, identities, references) and expectations in the 004 subset format |
| `frozen_versions_006.json` | Behavior versions and item hashes of every fixture module before feature 006; modules without 006 forms must keep them (SC-006) |
| `verify/lifecycle.expected.json` | Verification expectations for `wire/valid/accounts.json`: seeded defects (negative initial balance, unguarded removal of a referenced customer), proven guarded actions, and the real `switch_and_remove` counterexample |

## Feature 007

| Path | Content |
|------|---------|
| `wire/valid/orders.json` | Wire IR 0.6: customers, orders and employees queried as sets (`select`, `where`, set algebra, `count`, `any`, `all`, `sum`, `min`, `max`, `unique`), a module invariant, and the verification cases of SC-005 (invalid 0.6 cases in `wire/invalid/`: `query_*`, `nested_query`, `exists_in_filter`, `mixed_set_types`, `sum_of_string`, `min_of_unordered`, `module_invariant_reads_input`) |
| `frozen_versions_007.json` | Behavior versions and item hashes of every fixture module before feature 007, including the 006 lifecycle module (SC-006) |
| `requests/007/` | Plain-evaluation requests whose `facts` give complete `universe` sections per entity type, with expectations in the 004 subset format |

## Complete resulting-state validity (feature 017)

Fresh action evaluation uses decision record 0.8 and
`behavior.complete_resulting_state.v1`, including for older admitted Wire IR.
Archived decisions 0.4–0.7 retain their original bytes and replay rules. An old
ALLOW that missed an unchanged entity's invalid child obligation remains archive
evidence; it is not a current validation certificate or a fresh commit candidate.
See [versioning](../../docs/versioning.md),
[invocation](../../docs/invocation.md) and
[persistence](../../docs/persistence.md).

| Path | Role |
|------|------|
| `resulting-state-validity/archive-manifest.json` | Immutable provenance for the original 546 fixture entries and 42 captured baseline artifacts |
| `resulting-state-validity/audit-counterexample/` | Original audit module, valid parent, invalid child and actual historical ALLOW; preserved as counterexample evidence |
| `resulting-state-validity/compatibility-archive/` | 106 separately captured outputs from the immutable pre-017 CLI: original requests, expectation tables, invocation and legacy intent wrappers |
| `resulting-state-validity/current/` | Five hand-specified current requests and expected semantic projections, with a digest manifest; codec, schema, typed-witness and replay checks |
| `governance-v2/policy-verifier-0.9.json` | Explicit current-verifier execution policy; historical policies remain unchanged |
| `governance-v2/evidence-policy-verifier-0.9.json` | Matching explicit current evidence policy; does not adopt existing stores automatically |

The compatibility archive is a distinct capture, not a re-blessing of original
goldens. Its 39 golden comparisons matched the original bytes; original tables
without goldens have actual baseline outputs with separate command/status/digest
provenance. Historical fixture inputs remain unchanged. Positive current
evaluation tests supply a complete parent from actual state/read rows; they never
invent reference targets, existence, identity freshness or absent entity values.
Incomplete or malformed inputs remain raw negative cases.

The [current fixture inventory](resulting-state-validity/current/README.md)
distinguishes invalid and valid creation, incomplete parent, exact division by
zero, and a command-only receipt. Expected outcomes and semantic witnesses were
written before execution. Generated actual records are retained only as
[execution evidence](../../specs/017-resulting-state-validity/evidence/runs/US4/current-fixtures/summary.md).
Current proof eligibility and historical signed-proof rejection are covered
separately by the [US2 evidence](../../specs/017-resulting-state-validity/evidence/runs/US2/).
The [signed historical capture](../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/manifest.json)
preserves a real old record 0.7 / verifier 0.8 event for read-only replay and exact
recovery; it grants no current proof authority.

The original archive manifest also hashes this README as supporting fixture
documentation. T058 intentionally updates this navigation file while retaining
its original digest in that immutable manifest. This is the sole authorized
documentation exception: the other 545 entries and every historical semantic
fixture/capture keep their original bytes. The separate
[documentation evidence](../../specs/017-resulting-state-validity/evidence/runs/US4/documentation/summary.md)
records the old/new README digests and integrity checks; the original manifest is
never edited to make the documentation change appear historical.
