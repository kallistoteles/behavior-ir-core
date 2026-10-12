# Replay Boundary Contract: Core 022

This corrects implementation of existing replay contracts. It does not add a
public semantic capability. Authorities are the [022 specification](../spec.md),
[010 read API](../../010-first-class-reads/contracts/read-api.md),
[012 invocation documents](../../012-unified-invocation-model/contracts/invocation-documents.md),
[018 replay boundary](../../018-strict-profile-replay/contracts/replay-boundary.md),
[Store persistence](../../../docs/persistence.md) and
[017 decision contract](../../017-resulting-state-validity/contracts/decision.md).

## Public surface and protected contracts

| Existing boundary | Preserved contract |
| --- | --- |
| `behavior_engine::read::replay_read(&Module, &str)` | Existing replay result with boolean `matches` and optional string `diff`. |
| `Store::replay_read(&Module, &str)` | Same result through existing Store error channel. |
| `behavior_engine::invocation::replay_invocation(&Module, &str)` | Existing complete-envelope comparison result. |
| `Store::replay_invocation(&Module, &str)` | Same result plus independently applicable historical checks. |
| CLI `read-replay` / `invoke-replay` | Existing output and match/non-match exit conventions. |

No signature/export, result variant, structured public diff grammar, Backend
method, schema, Wire form, record byte format, hash domain or verifier version is
added. Internal cross-crate hooks must not enter `behavior-engine`'s supported
surface. A prepared object cannot be freely constructed as a fresh archived-profile
selector. Current fresh evaluation remains current fresh evaluation.

## Definition of a matching Store replay

For record R, exact admitted module M and immutable historical coordinate H:

```text
StoreMatch(R,M,H) requires
  supported checked record/profile interpretation under M
  AND reproduction of the recorded attempt and complete semantic evidence
  AND independent applicable historical anchoring
  AND truth of every historical claim established on that reproduced path.
```

A matching refusal proves that the recorded attempted computation reproduced; it
does not make all content in a rejected document true. Store may add checks of
historical truth beyond standalone replay. Same-profile conditional equivalence
applies once those premises hold; read-v1/read-v2 equality is neither required
nor implied. Execution traces and hypothetical omitted-call failures are excluded.

Operations may be eliminated; their applicable proof obligations may not. Claims
from phases not reached are not retroactively imposed. Claims established before
a later failure are not erased. No untrusted `stage`/`source_kind` label is itself
a certificate that a component was rejected or established.

## Core preparation and actual reproduction

1. Decode enclosing evidence under the existing strict/profile rules before any
   lossy map reduction. Preserve recursive decoded-key ambiguity rejection.
2. Preserve existing header, behavior/schema, fact/resolution and nested-profile
   check ordering. Preparation must not add an eager closed-shape/hash rejection
   that changes unrelated historical first-difference behavior.
3. Select supported record/profile/module pairings and original request evidence.
   Unknown/missing formats do not default to current emission. Historical request
   decoding, provenance and capture limits remain distinct from enclosing strictness.
4. Reproduce the attempt through its actual source boundary. Trace successful
   components privately. Use the same exact admitted Module and checked profile.
5. Construct and compare the entire expected record/envelope using existing Core
   canonical comparison, nested identities, metadata and sealing rules. Matching
   only an error code, stage or document is insufficient.
6. Only a successful complete comparison permits Store to rely on the reproduced
   component classification to omit an otherwise inapplicable later-phase operation.

Candidate helper responsibilities are `prepare_read_replay` / private traced read
reproduction and corresponding invocation preparation/reproduction. Signature
details may be refined; private constructors, exact binding and ownership stay
mandatory. Consumers cannot reuse a prepared profile against another module.

## Read branches and ordering

Preserve Store's existing order: checked preparation → actual coordinate/schema
and existing Store snapshot prevalidation → execution → complete comparison.
Do not insert unconditional standalone execution before coordinate checks.

Within unchanged Store routes, preserve existing prerequisite precedence:
`bind_schema` precedes the snapshot event/content loading it currently guards.
Insert additional canonical history checks after those prerequisites rather than
moving a history backend failure ahead of an existing schema mismatch. On new
decode-only invocation routes, establish the coordinate, schema and required
canonical linkage without adding full parent-state validity. Add co-occurring
schema-mismatch/history-fault controls to verify this ordering.

For a current v2 original-text refusal, execute the exact selected
`refused_request` under its checked profile without replacing failed values from
echoes or injecting Store values into that rejected request. Actual reproduction
must establish the permitted transport-refusal path and empty body evidence;
presence of a string alone does not discharge this requirement.

Existing Store canonical snapshot validation performed before read decoding
remains applicable. It concerns Store's actual state, not rejected request data.
If the stored original text actually decodes successfully or contradicts the
recorded refusal/body evidence, complete comparison produces non-match.

Ordinary reads and semantic input/binding refusals continue to use actual
historical parameter values and Store facts under the checked recorded profile.
Core selects the record arguments/source/profile and builds the semantic request;
Store only loads typed identities/values and facts. Do not remove ordinary snapshot,
binding, query, fact or identity checks by treating every refusal as transport-only.

## Invocation branches and ordering

Preserve the existing Core whole-envelope reproduction before Store anchoring.
After it matches, Store independently resolves the actual data version, history
and schema. Then use the Core-established route:

| Route | Required handling |
| --- | --- |
| `intent` decode archive | Reproduce original intent and context; preserve origin and intent metadata. No newly invented Snapshot. |
| `invocation` decode archive | Reproduce original host invocation; never substitute the intent decoder. No newly invented Snapshot. |
| `documents`, Snapshot rejected | Reproduce original Snapshot-first decoding refusal. Independently anchor history; no semantic equality of rejected Snapshot data. |
| `documents`, Snapshot accepted and later refusal | Preserve original sparse snapshot and performed resolution. Reconcile retained accepted claims with history without completing unavailable values and changing the attempted computation. |
| Ordinary binding refusal | Decode the existing requested invocation and resolve against actual historical evidence. Compare the refusal and binding facts; do not invent body evaluation. |
| Evaluated read | Reproduce with actual historical state/facts using the checked nested read profile; compare complete inner and outer records. |
| Current evaluated action | Keep existing current action reproduction/validation without fresh bundle creation. |
| Archived decision 0.4–0.7 | Preserve Store `rederive_archived` and Core archived requested reproduction; no fresh-action replacement or current-profile reinterpretation. |

`documents` origin must preserve its existing context discriminator: a supplied
context uses the intent route after successful Snapshot decoding; absent/null
context uses the host invocation route. This is checked by actual reproduction.

For ordinary binding refusal, if actual history yields different resolution
claims or would move beyond the recorded refusal, return non-match before
unexpected body execution. This cannot authorize a new inner record or commit.
For accepted archived partial snapshots, instead reproduce the original availability
and compare retained truth claims; do not silently change the original resolver.

Metadata is handled by Core under its existing evidence contract. Store must not
have a second JSON resealing/metadata policy. Nested read profile selection stays
after the existing prerequisite checks; arbitrary parsing does not grant support.

## Historical answers and claim reconciliation

Independent anchors include Store identity, exact history position/StateId,
canonical event/linkage and historical schema plus exact module/profile binding.
Use canonical Store history helpers and existing coherent immutable Backend
premises. Equal state content at another position does not waive coordinate
binding. Do not require a read Behavior to equal the preceding action Behavior
where the existing schema contract allows different behavior on the same schema.

Use the [data model](../data-model.md#retained-claims-from-accepted-components)
for claim scope. Direct historical loading is fallible. Typed values are decoded
and canonically compared under the historical declaration; indexes are accelerators,
not independent truth. Exact equivalent decimal spellings compare as values
without rewriting the original record/archive.

Missing snapshot content is availability unknown. Explicit negative existence,
exhaustive universes (including empty), incoming-reference sets and actual `unknown`
binding statuses make truth claims that must match canonical history. Query claims
use existing Core definitions, typed captures and profile-specific registries;
uncheckable explicit claims non-match deterministically. No Store query evaluator
or expanded historical query registry is allowed.

Recorded-resolver `{"id": ...}` surrogates establish binding existence only. They
are not captured typed entity values; full-value reconciliation cannot be derived
from them. Accepted Snapshot values and evaluated inner-state captures remain
eligible sources of actual value claims.

## Errors, refusal evidence and first differences

Malformed enclosing records, substituted archives, inconsistent claims and complete
record mismatches use the existing deterministic string-diff non-match result.
Malformed attempted data inside a valid refusal archive can reproduce a match.
Duplicate keys inside an archived raw string are distinct from duplicate keys in
the enclosing JSON; interpret the former through recorded request-decoding rules.

Direct required backend loading failures keep `StoreError::Backend`. Existing
evaluator callback `FactError` handling remains as defined on that path. Do not
globally recategorize operational/evaluation failures or fabricate a failure from
a semantically unnecessary operation omitted by this design.

Preserve canonical comparison order and existing semantic difference paths for
unchanged routes. Additional historical claim differences are deterministic and
point to the established claim. No new public exact-path or reason-code grammar
is promised. Priority is determined by the preserved branch/check order, not a
new global ordering of errors versus mismatches.

## Authority and compatibility correction

Every outcome is read-only with respect to canonical state/history, head, entity
versions, committed commands and authorization. Zero fresh bundle construction,
uncommitted validation promotion or dispatch is required, even for archived ALLOW
at current head. Existing safe parent cache reconstruction may remain.

The explicit old malformed-snapshot non-match expectation is corrected: a
reproduced decode refusal can match once independent anchoring succeeds. Its
rejected snapshot is never accepted as historical state. The separate false-history
claims of successfully accepted components still reject. Document this behavior
and its patch-class assessment before implementation. Keep frozen 018 evidence and
016 audit intact; create new 022 execution evidence and a scoped re-audit.
