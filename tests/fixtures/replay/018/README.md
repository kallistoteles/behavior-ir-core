# Core018 replay compatibility fixtures

This directory is the fixture inventory for
[the reviewed support contract](../../../../specs/018-strict-profile-replay/contracts/support-matrix.md).
It contains immutable inputs and independently captured reference outputs, not
an execution report for the repaired implementation. The coordinator records
actual RED/GREEN commands and coverage in the feature evidence directory.

## Manifest and loading contract

`matrix.json` enumerates exactly nine supported rows and 24 supported boundary
cells. Each cell is named `<row>:<boundary>`; boundaries are `core_read`,
`store_read`, `core_invocation`, and `store_invocation`. Ad-hoc invocation cells
are explicitly inapplicable because an ad-hoc read is not a declared capability.
They must never be counted as passing tests.

Each row has three independently evaluated variants:

| Variant | Read meaning | Declared invocation meaning |
| --- | --- | --- |
| `canonical_fixture` | Bound `Culture#c1.measurements = 7`; result `VALUE(7)`. | Evaluated read with the same exact inner record. |
| `error_fixture` | `1 / c.measurements` with a valid seeded value of zero; recorded division-by-zero evaluation error. | Evaluated read with the same exact inner record. |
| `binding_fixture` | Request `Culture#missing` against a Store containing `Culture#c1`; recorded invalid binding. | Original typed binding refusal; there is no invented inner read profile. |

Fixture paths are relative to this directory. Every variant names `module`,
`store_setup`, optional `read_definition`, `read_source`, `read_name`, `request`,
`snapshot`, `read_record`, optional `invocation_record`, and `capture_metadata`.
It also pins original read/invocation identities and SHA-256 digests. `rows/`
holds admitted-module inputs, compatible read-document0.7 definitions, captured
requests and snapshots. `stores/` holds the exact seed, typed target identities,
invocation request, input, context and evidence-policy selection needed to
reconstruct its genesis. Store tests must establish the coordinates themselves;
the archive or standalone replay is never replacement Store authority.

`cases[].required_cells` explicitly lists applicable row/boundary/case IDs.
Auxiliary profile limits have their own `applicable_examples` and
`required_auxiliary_cases`, and `unsupported`
expands U01–U10 into concrete version/substitution/failure IDs. This avoids an
invented Cartesian compatibility domain. The inventory does not assert those
cases have run. The independent domain enumeration remains mandatory even when
test helpers derive case variants from a canonical input.

## Independent capture provenance

The new records were captured before production replay corrections, from the
unchanged runtime sources at commit
`6ccd4327c7b1e647bc0a6d1bbc8f2557659af2fb`. Temporary test-only overlays invoked
the existing baseline `read::run_version` and
`invocation::invoke_resolved_version` with the requested profile. Public baseline
`Store::create`, `Store::read`, and `Store::invoke` independently established
genesis, schema, history position and fresh-output controls. No production
interface or runtime evaluator body was changed for capture.

The retained capture sources and command logs are in
[baseline evidence](../../../../specs/018-strict-profile-replay/evidence/runs/baseline/).
Each `capture.json` identifies the known source revision, module BehaviorHash,
schema, StateId, history position, Store data-version, requested and fresh
profiles, original record identities, and exact input/output file digests.
`checksums.json` additionally records SHA-256 over exact retained file bytes.
These are baseline provenance anchors, not a self-referential final candidate
receipt.

Historical Wire0.8 v1 records were produced directly by the original legacy
evaluator. They were never produced by changing a v2 format tag and refreshing
its hash. Every independent read and invocation capture was checked through the
existing corresponding Core reference replay boundary, including documented
non-matching auxiliary limits described below. Where public Store
fresh emission already selected the requested profile, the independently
captured Core output was asserted equal to that Store output. For evaluated
declared invocations, the inner read is byte-for-byte equivalent to the separate
read archive under the same profile and inputs.

Fresh controls are retained beside archives as `*.fresh.read.json` and
`*.fresh.invocation.json`. They preserve Wire0.8 v2 emission even for a row whose
archive selects historical v1. Legacy rows naturally retain fresh v1 emission.

## Audit and earlier golden evidence

`archives/audit016-wire08-v1-read.json` and
`archives/audit016-wire08-v1-invocation.json` preserve the original JSON bytes
printed by immutable audit016's `PERSIST/replay-v1-red` execution. Its source
created synthetic v1 counterexamples from v2 records and independently checked
them through legacy standalone replay. That construction is disclosed rather
than described as an original historical capture.

The new `records/audit016.read.json` and `records/audit016.invocation.json` were
independently produced by the true baseline legacy evaluators from the original
audit module and coherent genesis. Capture tests asserted exact byte equality
against both original audit artifacts. `audit_regression_fixture` pins the
original module, seed, snapshot, coordinates, archive paths and identities for
the named regressions. This provides independent evidence without rewriting the
immutable audit or using synthetic relabeling as the new capture method.

`archives/read010/` preserves existing read010 module, request and read-v1 golden
bytes unchanged. They retain earlier legacy query, derived and error examples;
their `golden:1` data-version is standalone evidence, not a Store coordinate.
They must not be resealed to claim Store provenance.

`auxiliary/` contains four independently captured original-profile controls for
declared queries on Wire0.7 and historical Wire0.8 v1, identified explicitly by
`auxiliary_fixtures` in the manifest. A read-only `count(select(Culture))` query
with a semantically consistent query membership fact overlapping its complete
universe records the original query-registry `INVALID_INPUT` refusal. The query
definition and instance hashes are derived directly from the admitted query;
no v2 output or format substitution constructs this historical evidence. Its
original refusal reproduces under standalone v1 replay.

The other controls evaluate a query whose filter performs division by zero before
its false branch. The actual original v1 evaluator records `EVALUATION_ERROR`
but omits the query capture needed to reproduce it. Its resulting standalone
replay is therefore a documented non-match. No facts were deleted to fabricate
this limitation. Both kinds are standalone historical controls, separate from
the 24 canonical supported cells. They introduce no old-Wire query support and
must never be counted as canonical Store matches.

## Boundary limits and maintenance

Read-v1 and read-v2 are separate historical profiles. Required equivalence is
with the reference evaluator under the same recorded profile/version combination,
not between profiles. Provenance/display behavior, omitted captures and historical
query registry limits remain part of v1 interpretation. Complete snapshots and
detached diagnostics remain part of v2 interpretation.

Raw transport refusals, including a `refused_request` string containing
duplicate-looking JSON, may be standalone replay evidence. Their source strings
are not enclosing object keys. They can also originate in a public Store read:
a malformed typed JSON section can be refused while its recorded echo is `{}`.
Standalone reproduction uses the original raw string, whereas Store reproduction
reconstructs typed sections from the echoes and can therefore remain a non-match.
A genuine Store-origin regression retains this unchanged reconstruction limit.
It is disclosed for follow-up, not used to narrow the existing read contract or
skip a required supported cell. Store origin and a valid exact coordinate alone
do not establish equality of canonical semantic inputs. This directory invents
neither coordinates nor origin for standalone refusal fixtures. Captured binding
refusals are distinct and reproduce under their recorded profiles. Backend
failures from actually required operations remain operational errors. See the
[Store review](../../../../specs/018-strict-profile-replay/evidence/us3-store-review.md).

Do not bless, regenerate or reseal these outputs to accommodate a changed result.
Any discrepancy must be explained against the recorded reference profile and
original identity. A new baseline capture needs its own attributable sources,
commands and review. Final delivery evidence is bound externally to a frozen
candidate according to the feature's validation guide; these baseline metadata
files do not attest a future merge or release SHA.
