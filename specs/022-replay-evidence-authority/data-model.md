# Internal Data Model: Replay Evidence Authority

This design adds ephemeral implementation objects, not Behavior semantic entities,
Wire forms, record fields or Backend state. Existing canonical records remain the
claims being replayed. A prepared record is not a certificate of historical truth.

## Checked objects and relationships

Names below describe responsibilities; final Rust signatures may remain small
helpers rather than a new trait hierarchy.

| Object | Contents / relationships | Construction and validity |
| --- | --- | --- |
| `PreparedReadReplay` | Existing stored JSON, admitted source, checked read profile and selected original request text; exact module binding. | Strict/profile-aware Core preparation with private fields. Existing preparation alone does not prove a transport refusal or Store truth. |
| `PreparedInvocationReplay` | Checked envelope header and original origin/archive; exact module binding; deferred inner-profile selection where existing ordering requires it. | Private Core construction preserving existing replay check order. No freely constructible profile selector. |
| `ReproducedReadReplay` | Expected record, private actual decode/body progress and complete comparison result. | Actual recorded-profile execution from prepared evidence. Progress used to omit obligations is usable only after complete comparison matches. |
| `ReproducedInvocationReplay` | Expected complete envelope, actual established components and bounded claim demands; comparison result. | Actual source-specific reproduction, including historical nested profile. Does not construct a fresh commit bundle. |
| `ClaimDemand` | Typed identity/value or fact/membership/resolution claim, originating component and deterministic comparison location. | Core derives from accepted components and actual execution. A recorded stage cannot manufacture or erase it. |
| `HistoricalAnswer` | Independently anchored actual values/existence/used/membership needed for a demand. | Store loads from immutable canonical history; direct load errors remain fallible. Core performs semantic comparison. |

These objects live for one replay operation. They are never serialized, put in a
validation cache or reused across snapshots. Private constructors and exact module
binding prevent substitution. Prefer borrowing/capturing the same admitted Module
for the operation; otherwise recheck all relevant semantics and historical
representation, not BehaviorHash alone. In particular, a historical v1 provenance
claim cannot be replayed against a different module representation merely because
its semantic hash agrees. Existing archive provenance checks remain mandatory.

Own the decoded `RequestedInvocation` when needed; borrow a `ResolvedInvocation`
only while executing. Do not create self-referential owned prepared objects.
Private traced helpers may return an existing execution plus internal progress;
public `ReadExecution`/`InvocationRecord` gain no required field.

## Attempted-request origin

The Core selection is an internal sum with these existing branches:

| Branch | Authoritative attempted computation | Limit |
| --- | --- | --- |
| Current read original-text refusal | Exact `refused_request` string, including failed input/context shape. | v2 only under its existing restrictions; echo `{}` is not replacement input. |
| Ordinary read | Existing recorded arguments with checked source/profile; historical facts route standalone, actual values/facts route Store. | Do not reclassify a later semantic refusal as transport failure. |
| Invocation archive — `intent` | Archived intent document through the intent decoder with its recorded context. | No invented invocation format or missing snapshot. |
| Invocation archive — `invocation` | Archived host invocation through the invocation decoder. | No intent conversion. |
| Invocation archive — `documents` | Archived document, supplied snapshot and context discriminator through `invoke_document`. | Preserve Snapshot-first ordering and original sparse availability. |
| Ordinary invocation envelope | Existing decoded requested invocation, recorded binding/evaluation evidence and nested profile. | Echo fields are valid reconstruction only where the existing profile establishes them as such. |

Malformed enclosing evidence cannot create an origin. A valid original-text/archive
may itself contain malformed attempted data, which is replayed through its
historical decoder. Accepted archive selection is still subject to full comparison.

## Components actually established

Components are a bounded progress record, not a single monotone enum inferred from
`stage`. Their order follows the existing branch-specific reference computation.

| Component | Possible established status | Store consequences |
| --- | --- | --- |
| Supplied Snapshot | Not archived; rejected atomically; accepted typed Snapshot. | Rejected means no semantic Snapshot equality. Accepted means retain explicit typed claims. Not archived means no fabricated Snapshot claim. |
| Requested invocation/read | Not reached; rejected by its decoder; successfully decoded. | Decoding refusal cannot establish a missing decoded value. Accepted components remain applicable after a later failure. |
| Resolution | Not reached; performed with recorded statuses and available values; fully resolved. | Reconcile claims actually made about bindings; no requirement to invent a resolved invocation. |
| Body | Not reached; evaluated read under checked profile; current/archived action under existing profile. | Not reached grants no body evidence or fresh authority. Reached retains existing complete state/fact/body evidence checks. |

`Snapshot::decode` returns no semantic Snapshot if any problem occurs. Rows or facts
parsed locally before rejection are not individually promoted into established
state. Conversely, `INCOMPLETE_SNAPSHOT` during resolution can have a `DECODE`
problem stage after an accepted Snapshot and requested invocation. Its previously
established claims still apply.

Some intent/invocation decode archives contain only the request document. Core can
reproduce the archive without recovering an earlier, unrecorded caller Snapshot;
022 neither fabricates it nor rewrites the record to capture it retrospectively.

## Retained claims from accepted components

Core produces typed demands; Store answers from the anchored historical position.

| Retained claim | Mathematical interpretation / check |
| --- | --- |
| Typed entity value, including values obtained from accepted universes | Historical surviving entity exists with the exact declaration and canonical typed content/hash. Equivalent exact decimal encodings compare as the same value. |
| Explicit `existence(T,id)` | Asserted truth value equals historical existence; explicit false is a negative claim. |
| Explicit `used(T,id)` | Asserted truth value equals historical identity-use semantics via `used_at`; existence alone is insufficient. |
| Explicit universe for type T | Exhaustive finite mapping of identities to typed values; exact membership/content equality. An explicit empty universe asserts emptiness. |
| Explicit fields | Typed field/value claims equal canonical historical values under the exact schema. |
| Explicit incoming references | Complete canonical incoming-reference set equals that rederived from surviving canonical entities. Index order/materialization is not authority. |
| Explicit query membership | Core checks exact query definition, typed captures and existing profile-specific query registry against the historical canonical source universe. |
| Performed `unknown` binding resolution | Negative existence claim for the correctly typed identity; reject if it exists in actual history. |
| Performed `bound` resolution | Positive existence and any retained value evidence; retain existing full body evidence if evaluation occurred. |
| `wrong_type` resolution | Declared identity type mismatch, not an assertion about whether the wrong-typed identity exists. |

Core's recorded resolver can synthesize an `{"id": ...}` object solely to reproduce
positive binding existence on an ordinary refusal. That surrogate is not captured
typed entity content and must never create a full-value demand. Full-value claims
come from accepted Snapshot contents or captured evaluated inner-state evidence.
Ordinary binding refusals do not gain values their record never retained.

Missing values/universes/facts mean unavailable evidence, not false facts. For
example, an accepted Snapshot with no entity value and `existence(Culture,c1)=true`
may reproduce `INCOMPLETE_SNAPSHOT` while historical Culture#c1 exists. Store checks
that positive existence claim and does not fill the missing value before replay.
An actual `unknown` resolution or explicit empty universe instead claims absence
and must agree with history.

An explicit query claim lacking a checkable definition/capture within the existing
profile contract produces deterministic non-match. Do not silently accept it,
expand a historical query registry or invent a new query language. Ordinary body
fact acquisition retains the existing evaluator error contract.

## Historical anchor

The anchor includes actual Store identity, exact position/StateId, canonical
history coordinate/record linkage, historical schema and the supplied exact
admitted behavior/profile binding. State content identity is distinct from history
position; equal StateId alone does not establish the recorded coordinate.

Resolve the record's data version through canonical Store helpers. Verify historical
head/header/parent relationships and schema according to their existing contract.
Do not equate a read Behavior with the last committed action Behavior when schema
agreement is sufficient. Immutable Backend coherence remains an explicit premise.
An anchor does not assert that rejected payload content is valid historical state.

## Lifecycle and authority

```text
Store read:
  Core preparation
    → Store coordinate/schema + existing canonical snapshot prevalidation
    → Store values/facts for an ordinary semantic request
      OR unchanged original text for verified transport refusal
    → Core checked execution + full record comparison

Store invocation:
  Core preparation + original-evidence reproduction + full comparison
    → Independent Store coordinate/schema/history anchoring
    → Rejected archive: no rejected-state equality
      OR accepted sparse archive: historical answers to retained claims
      OR ordinary route: actual historical resolution/body evidence
    → Core reconciliation/reproduction + required complete comparison

Both return existing match | non-match | performed operational failure.
```

Detailed branch ordering is in the [boundary contract](contracts/replay-boundary.md).
There is no transition to commit
authority, candidate validity, command publication or dispatch. Existing safe
reconstructible parent cache population may remain; it never supplies authority
for a rejected Snapshot or an uncommitted candidate.
