# Data Model: Strict and Profile-Preserving Store Replay

These are proposed internal representations and existing public values. They
add no Wire construct, stored state fact or public semantic capability. Exact
Rust names may follow local conventions while preserving these invariants.

## Decoded read replay evidence

**Mathematical object**: An immutable unambiguous JSON value plus a checked
interpretation of its record/module pairing. It is still a claim to reproduce,
not proof of matching Store contents or a validated canonical record.

Logical members:

- Strict-decoded record, retaining all identity-bearing evidence.
- Checked recorded read profile.
- Exact expected module BehaviorHash.
- Declared source or re-admitted ad-hoc definition.
- Recorded request selection, including raw `refused_request` where applicable.
- Recorded data-version and argument echoes needed for Store reconstruction.

Construct it from raw text before any lossy reduction. Preserve existing Core
format → behavior → source → request checks and applicable mismatch reporting.
Do not replace full reproduction/comparison with the claim's declared hash.
Do not silently repair fields or apply today's closed codec to all legacy records.

## Checked read replay profile

**Mathematical object**: A finite sum, historical-v1 or current-v2, constrained by
the admitted module profile and existing support matrix.

The internal profile kind has no unsupported/default variant. v1 can apply to
Legacy or CommandIntents modules; v2 requires CommandIntents. A checked wrapper
with private fields binds that kind to the exact module identity, rather than
exposing freely constructible enum variants across the crate boundary. Construction
checks the record format/module combination; execution retains or rechecks the
binding. A selector prepared for another module cannot authorize evaluation.

Each supported profile/version combination is compared with the reference
evaluator under that same recorded profile. No equality between read-v1 and
read-v2 results or evidence contracts is implied.

Fresh evaluation does not take this selector from a consumer. Fresh versus
archived execution is an internal sum type, not several independent booleans.
Invocation may use an archived read selector only for a resolved read outcome.

## Exact historical Store input

**Mathematical object**: A product of Store lineage, state identity, history
position, historical schema, exact behavior, resolved typed bindings and facts.

All coordinates and values must be established through the existing Store
contract at the recorded position. State identity alone is insufficient to
select a history position. Equal schemas do not imply equal behavior. Archived
snapshots are claims checked against these inputs, not replacement authority.

Missing typed identities preserve existing bound-ID/refusal behavior. Current
complete snapshots and v1 capture limits retain their profile-specific meaning.
Reconstructible validation caches may be reused only under existing exact bindings;
they introduce no semantic state or candidate validity promotion.

## Invocation replay envelope

**Mathematical object**: Existing immutable evidence product binding capability,
kind, behavior/schema/data-version, requested bindings, input/context, binding
facts and either refusal evidence or an evaluated inner record.

The outer format remains `behavior.invocation_record.v1`. Reads retain their
own v1/v2 profile. Envelope/inner capability, behavior and data-version must agree;
both identities and any identity-bearing transport metadata are compared.
Refusal/decode-evidence branches have no invented inner read profile.

017 archived and current decision profiles remain separate collateral paths.
Read-only replay returns no action candidate and dispatches nothing.

## Public replay result

**Mathematical object**: Match/non-match, with a deterministic explanation for a
non-match, returned inside the existing operational Store result where relevant.

| Existing field | Contract |
| --- | --- |
| `matches` | Boolean; true only when required reproduction and comparison succeed. |
| `diff` | Optional string; nonempty reason for malformed, ambiguous or mismatching evidence; existing omission-on-match behavior remains. |

Backend failures preserve the existing Store error channel. The reason is not a
third semantic outcome. Internal structured reasons may feed the string; a public
object or new reason field is not introduced.

## Support-matrix entry

**Mathematical object**: A documentation/test mapping from a supported or refused
combination to its historical contract and required evidence cases.

Members: stable row ID, module Wire version, source kind/read-document version,
read-record and applicable invocation profile, disposition at each replay
boundary, expected interpretation/refusal, source contract and limits. Tests
record executed row/boundary/case IDs and compare them to the required set.
An inapplicable cell is explained rather than counted as a passing test.

## Lifecycle

```text
raw evidence
  → strict decode / non-match
  → checked recorded profile and module binding / non-match
  → exact historical Store reconstruction / non-match or operational error
  → existing profile evaluation and full evidence comparison
  → match or non-match
```

Standalone replay omits Store reconstruction and uses its recorded semantic
inputs. Every Store path retains additional binding obligations. No step commits
a state/history record, executes a command or creates reusable uncommitted validity.
