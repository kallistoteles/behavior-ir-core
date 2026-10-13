# Data model: Bundle observations and integrity

This design describes private implementation domains and existing wire products.
It adds no Behavior primitive, public API or stored format/version.

## Domains and relationships

| Domain | Role | Construction and ownership |
| --- | --- | --- |
| Raw candidate text | Untrusted attempted document | Existing strict lexical JSON decoding rejects duplicate keys/numbers before reduction |
| Candidate claim | Existing closed action/migration envelope | Original JSON retained unchanged for hashing and archival |
| Decoded BundleEvidence | Closed v2 observed product with integrity fields | Private nested structs, vector collections, no public unchecked constructor |
| ValidatedBundleEvidence | Locally checked evidence | Owns immutable decoded data; produced only after shape/order/uniqueness/hash checks |
| Semantic Facts | Ordinary evaluation observations | Extracted only from validated v2 evidence and checked with unchanged Facts parser |
| Decoded v1 CommitBundle | Existing historical structural product | Decode success is not integrity, history truth or authority; legacy commit validates later |
| Governed/committable candidate | Existing larger Store/governance judgment | Requires independent history/schema/semantic/authorization/CAS obligations |

The private validated value is neither a state certificate nor a cache. A public
mutable CommitBundle is rechecked by reconstructing its candidate whenever its
existing checked APIs are used; validation of an earlier value does not authorize
a later mutation. GovernanceCandidate retains its opaque original claim and identity.

## Closed observed products

All listed item fields are required, even when their values are null or empty
where the existing domain permits that. No additional fields are allowed.

| Product | Exact fields | Canonical unique key |
| --- | --- | --- |
| Evidence root | Optional arrays: existence, identities, references, queries, fields | Each section at most once in raw text |
| Existence | entity:string, id:string, exists:boolean | (entity,id) |
| Identity history | entity:string, id:string, used:boolean | (entity,id) |
| Reference target | entity:string, id:string, incoming:edge array | (entity,id) |
| Incoming edge | entity:string, id:string, field:string | (entity,id,field) |
| Query bundle evidence | instance:string, definition:string, entity:string, captures:array, members:array, result_hash:string | instance |
| Capture | read:string, value:canonical JSON | read |
| Query member | id:string | id |
| Field observation | entity:string, id:string, field:string, value:canonical JSON | (entity,id,field) |

Collections use the producer's strictly increasing semantic string/tuple keys.
Validate them before any set/map construction. Duplicate keys/entries and unsorted
supplied evidence are refused rather than repaired. This does not change ordinary
Facts' existing normalization behavior. Do not introduce new string-length constraints.

Canonical values retain the existing no-float JSON domain and exact representations;
null capture/field values are allowed where their semantic type permits them.
Core's existing raw decoder enforces lexical/value restrictions before the codec.

## Empty evidence and version placement

| Location | Existing representation | Integrity placement |
| --- | --- | --- |
| Empty action bundle observations | read_facts omitted or null | Bundle adapter maps to empty candidate object |
| Empty v2 action candidate | read_facts:{} | Valid empty observed product; no query hash obligation |
| Present empty section | Empty array | Allowed; producer normally omits it |
| Empty query result | members:[] plus result_hash | Required hash of canonical empty member list |
| V2 migration candidate | read_facts exactly {} | No query-bearing migration domain |
| V1 action bundle | Historical structural decode | Historical commit/replay comparison checks observed integrity |

`universe` is permitted only where ordinary supplied facts/full record snapshot
contracts define it. It is not an observed bundle section and must not leak into
the v2 candidate evidence domain. Current decision records can archive a complete
parent universe independently of the bundle observations.

## Hashes and identities

Result integrity uses the unchanged tag `behavior.query_result.v1` and canonical
sorted member-object array. Query definition/captures/instance/history are excluded
from this local hash and remain bound by the existing enclosing identities.
See the exact algorithm and vectors in [bundle-evidence.md](contracts/bundle-evidence.md).

Instance identity retains its existing definition/capture binary encoding. The
codec does not introduce a new instance encoder. The candidate hash continues to
cover the original closed claim content, including result_hash; semantic projection
does not remove fields from the identity input or mutate recorded JSON.

## Failure and lifecycle model

V2 local decoding/order/hash/projection failure → existing INVALID_CANDIDATE.
Raw lexical ambiguity/noncanonical value → existing INVALID_GOVERNANCE_DOCUMENT.
Enclosing candidate hash mismatch → existing HASH_MISMATCH at its existing phase.

V1 retains its baseline structural decoding and downstream Store outcomes,
including earlier competing defects/performed backend failures. No new v1 validated
evidence type is retroactively assumed to exist at decode success.

Private lifecycle: raw claim → decoded evidence → validated evidence → semantic
projection → existing candidate judgment. Historical truth and eventual atomic
publication remain later, independent judgments. Failure grants no state, history
or command occurrence authority.
