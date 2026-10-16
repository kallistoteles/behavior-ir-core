# Current binding conformance

Start with `cases.json`: it inventories five unchanged modules and exactly ten runnable
requests, one allowed and one refused case per module. Paths are relative to the extracted
conformance archive root. Files named `../<domain>.request.json` are immutable historical
examples; use `requests/<domain>.<allowed|refused>.json` for fresh evaluation.

| Module | Allowed | Refused |
| --- | --- | --- |
| invoice | Approve within the context actor's limit | Above approval limit |
| project_margin | Flag positive-revenue high-risk project | Zero-revenue guard, without division |
| accounts | Remove unreferenced customer | Actual incoming Account.owner Ref |
| ledger | Transfer 10.00, yielding 90.00 and 15.00 | Unaffordable transfer of 500.00 |
| orders | Close c1 with no open orders for c1 | Open order for c1 |

Every allowed result is ALLOW with its exact expected effects. Every refused result is DENY
with PRECONDITION_FAILED, without applied changes. Invalid input, invalid snapshot, integrity
refusal and ERROR are separate classes. Evaluation describes a candidate transition, not a
Store commit or command delivery. These legacy modules have no commands: command fields are
absent and the facade intent bag is empty.

## Run the published files unchanged

Use the matching Core CLI. For an extracted archive at PACKAGE_ROOT:

```sh
python3 PACKAGE_ROOT/tests/fixtures/bindings/current/check.py \
  --root PACKAGE_ROOT --cli /absolute/path/to/behavior --output /tmp/binding-results
```

The runner admits the packaged modules, verifies their byte/behavior/item/schema identities,
evaluates every unchanged request twice, compares complete independent expected records, and
replays the actual records with the same CLI. Exits are exactly 0 for ALLOW, 1 for DENY.
Runner failure identifies the case and stage; captures are written only to the output directory.
A binding may directly evaluate these same request documents without a world builder or repair.

## Explicit worlds and independent expectations

`worlds.json` declares the full parent and independently expected child for every case.
Every declared type appears, including deliberate empty memberships. Missing means unknown;
neither generator nor consumer may turn a missing type into an empty one or infer a world from
bound entities. Completeness, consistency and state validity are separate obligations.

Invoice's User membership is deliberately empty: anna is context, and approved_by is a plain
optional Id rather than a Ref. Accounts' refused world contains the actual Account#a1.owner
edge to Customer#c1. Orders' allowed world contains c2 and its open order; both Order rows
survive removal of c1 because Order.customer is a plain Id. Employee is deliberately empty.
The zero-revenue project is a valid parent whose existing action guard prevents division.

Core's facade conformance tests check all authored rows through the existing Snapshot decoder,
check parent and expected child validity through validated Store initialization/export, and
mechanically compare the independent deltas/lifecycle with the independent child. These proof
views never amend the evaluated requests.

Each file in `expectations/` is an independently authored **complete** DecisionRecord08 semantic
object. Compare `DecisionRecord::as_json()` with exact recursive JSON equality and canonical
bytes: all fields, optional presence, ordered arrays, reasons/evidence, effects/lifecycle,
derived values, facts/universes and existing identities matter. No subset comparison, rounding,
field stripping, sorting or deduplication is permitted. Core already separates diagnostics;
exclude zero additional fields from as_json. Domain payload fields named message or loc remain
data. No new embedded record hash is defined by this corpus.

Separate invalid-world controls preserve the current validation boundaries: omitting only
invoice's User universe gives INVALID_INPUT/INVALID_STATE_SNAPSHOT at completeness; a valid
bound amount contradicting the world gives INVALID_INPUT/INCONSISTENT_FACTS; amount -1 in both
binding and complete world gives INVALID_INPUT/INVALID_STATE_SNAPSHOT at parent invariant
validity. Each reaches Core directly and has no action-body trace, derived values or effects.
These controls are outside the ten behavioral cases and cannot substitute for business DENY.

Regression controls also retain the decision while changing effects, reasons, lifecycle,
ordered trace/read evidence, child subjects/obligations, derived values/hashes, query membership,
module/action identities or metadata. Such changes fail exact comparison. Missing, extra,
duplicate, unknown or escaping corpus entries fail discovery. Existing real command tests cover
nonempty multiplicity separately; this legacy corpus checks applicable command absence.

## Generation and provenance

The adjacent `../generate_current.py` owns only the ten requests. It reads explicit worlds and
the frozen original intent, rejects contradictions, and never writes worlds or expectations.
From the Core checkout:

```sh
python3 tests/fixtures/bindings/generate_current.py --check
python3 tests/fixtures/bindings/generate_current.py --output-dir /tmp/current-requests
```

Two independent generations must match the delivered bytes. Historical modules, requests,
records, generator and archive manifests remain unchanged.

`semantic_reference` pins reviewed Core a24b65d26efaf62342daf5ab0f455540dfd61ed1 (source
version 0.13.0), record 0.8 and behavior.complete_resulting_state.v1. It is distinct from the
executing candidate revision and the published 0.13.0 release commit. Caller git_revision and
engine-info version are not binary provenance. Candidate acceptance binds actual source,
CLI and resolved consumer-lock hashes; a future release additionally uses the existing release
manifest. Focused archive checks with a debug CLI do not establish static release reproducibility.
