# Contract: identity, canonicalization and records

Implements FR-002/003/011–018/041–044 and the accepted multiset/fork clarifications.
H(tag,body)=SHA-256(UTF8(tag) || 0x00 || body), displayed as lowercase sha256:64hex.
All new length/count encoding is checked; canonicalization failure is an error, never an
empty fallback. Collision resistance is an explicit cryptographic assumption.

## Semantic binary domains

Use existing [hash.rs](../../../crates/behavior-core/src/admit/hash.rs) conventions:
u32 big-endian counts/lengths, str=length+UTF-8, href=raw32 bytes, and existing supported
type/value encodings. Excessive lengths fail, never saturate. Exact intermediates are
not stored payload values.

| Domain | Body |
|---|---|
| behavior.command_declaration.v1 | str(name), field count, sorted str(field name)+type encoding |
| behavior.command_emission.v1 | href(declaration), href(normalized guard), field count, sorted str(name)+href(payload expression) |
| behavior.command_intent.v1 | href(declaration), field count, sorted str(name)+typed value encoding |
| behavior.action.v2 | str(profile=0.8), existing parameter/precondition/state-effect/postcondition semantic encodings, emission count+sorted repeated href(emission) |
| behavior.module.v2 | str(profile=0.8), existing canonical named items extended with Kind::Command=9 |
| behavior.candidate_transition.v2 | Canonical JSON candidate content below |
| behavior.command_occurrence.v1 | Canonical JSON {store,commit_record_hash,intent_hash,multiplicity_index} |

Action.v2 retains existing state-effect order/meaning. Its separate command component is
a bag. Existing expression identities resolve dependencies and normalize candidate binders.
No arbitrary denotational equivalence analysis. Equality is the admitted semantic syntax
contract, not source spelling. Earlier profiles retain original action/module algorithms.

For Wire0.8, identity equivalence ≡₀.₈ is exactly the normalized-structure relation defined in
the specification: command-bag/product permutation, omitted=true guard, bound-variable
normalization, resolution of equal dependency references and removal of diagnostic provenance.
CanonicalSemanticForm equality iff ≡₀.₈; equivalent forms yield equal hashes. Public names,
types, expressions, multiplicity and existing ordered components are retained. Equal results
for one invocation do not establish equivalence. Hash equality is evidence of content equality
under collision resistance, not a mathematical injectivity theorem over the SHA-256 codomain.

SchemaHash contains exactly the existing entity schema; commands/profile do not enter it.
StateId remains the existing entity-content accumulator identity.

## Canonical bags

Definitions sort by (raw emission hash, semantic encoding bytes); intent values by
(raw intent hash, typed encoding bytes). Repeated values preserve multiplicity. Per-equal
intent indices are consecutive 0..count-1 per committed event. Equal hashes with unequal
validated content yield HASH_CONTENT_CONFLICT, not equivalence.

Omitted when equals literal true. Equal produced K does not imply equal emission definitions;
guards/expressions still enter action identity even when one invocation yields equal values.

## Record 0.7

Every profile 0.8 action evaluation uses record_version 0.7, including refusals/errors and
all-false guards. Semantic content includes profile/request/basis/action/behavior identity,
structured results/errors/trace, observations, delta and:

~~~json
{"commands":{"declarations":[],"types":[],"intents":[]}}
~~~

Successful intents are {declaration,payload,intent_hash}. declarations archive unique used
products sorted by declaration hash; types archive all nonprimitive scalar dependencies
sorted by type hash. Field descriptors use primitive tags, enum/nominal hashes, Id target
names and supported Option descriptors. Enum domains and nominal operations/scale/names
have their normal recomputable semantic hashes. Non-ALLOW has no successful intents.

IntentHash excludes its displayed hash field; descriptor own hashes are assertions outside
their hash bodies. Data replay validates descriptors/values/order/multiplicity/hashes without
current definitions. Behavior replay additionally reproduces exact record semantics with
the recorded module/profile.

Semantic trace uses node/condition/derived hashes, normalized binders, canonical indices,
field names and structured codes/operands. Human expression spelling, aliases, file/line,
host paths and diagnostic order belong to detached diagnostics. New serialized decision/
invocation records exclude the sidecar. Source relocation/binder spelling/equal aliases
cannot change semantic identity/replay. Earlier record JSON comparisons remain unchanged.

## Candidate identity and acyclic derivation

Common literal fields: kind,store,evaluated_history and store-rederived entity_declarations,
read_set,read_facts,write_set,write_lifecycle. Action candidates add behavior_version and
record. Migration candidates add migration_hash,source_behavior,target_behavior,source_schema,
target_schema,requirements,transformation,validations. Irrelevant kind fields are absent.
Migration candidates contain no commands.

Exclude own transition_hash, authorization/evidence, commit_time deployment metadata,
diagnostics, future commit hash and occurrence IDs. Policy-required time is separately
bound in authenticated authorization and compared with actual requested commit context.
Explicit Q has the separate authorization_context.v2 identity defined in governance.md;
authorization archives/binds Q alongside candidate identity. Candidate hashing excludes Q,
which contains no authorization/future commit identity. Live comparison uses independently
supplied Q, while history/replay retain the compared Q in the committed bundle.
Decoding establishes structure/identity, never that a live store evaluated the candidate.

~~~text
semantic definitions + S/I/C/facts
 -> semantic record + store-derived candidate
 -> candidate transition_hash
 -> authorization content hash -> detached signature
 -> committed event -> CommitRecordHash
 -> derived occurrence IDs
~~~

Committed records never contain occurrence IDs. Transition_record.v2 binds position,
previous_record, exact bundle/result states and governance identities. Copying that exact
event preserves commit/occurrence identities independent of backend/replica identity.
Divergent events at equal state/position remain distinct. Changing signature alone does
not change AuthorizationHash; archived signed evidence may change CommitRecordHash.
No signature feeds back into candidate identity.

## New document formats and JSON domains

Validated format selects its domain; never hash a v2 body under hard-coded v1.

| Tag | Purpose |
|---|---|
| behavior.evidence_policy.v2 | Immutable shared authorization trust requirement |
| behavior.store_genesis.v2 | New lineage with v2 evidence policy |
| behavior.policy.v2 | Execution/verification/waiver policy |
| behavior.authorization_context.v2 | Explicit Q and its ContextHash |
| behavior.authorization.v2 | Signed-content identity, signature excluded |
| behavior.authorization_signature.v2 | Detached signature |
| behavior.signed_authorization.v2 | Content/hash/signature transport |
| behavior.verification_content.v2 | Authenticated verifier content identity |
| behavior.verification_report.v2 | Semantic checks/findings/witnesses, excluding diagnostics |
| behavior.verification_obligation.v1 | Complete descriptor including canonical proof site |
| behavior.verification_manifest.v1 | Complete sorted set of unique obligation descriptors |
| behavior.verification_signature.v2 | Detached verifier signature |
| behavior.verification_envelope.v2 | Content/hash/profile/manifest/report/signature transport |
| behavior.evidence.v2 | Complete governance package |
| behavior.governance_candidate.v2 | Reviewable candidate transport; identity has separate candidate tag |
| behavior.history_ref.v1 | Exact store/state/position/record anchor |
| behavior.commit_bundle.v2 | Exact candidate and optional trusted evidence |
| behavior.migration_bundle.v2 | Prepared migration/exact behaviors/history/evidence |
| behavior.transition_record.v2 | Canonical committed event |
| behavior.command_stream_request.v1 | Bounded enumeration request |
| behavior.command_stream_page.v1 | Derived occurrences/observation/checkpoint bounds |

History/stream/signature wrappers have validated format tags but need no invented semantic
identity beyond contained hashes. Not every tag is a public hashed object. Signed content
excludes signatures/own hash. Legacy waiver domains remain unchanged.

Canonical JSON is the repository's compact UTF-8 key-sorted no-float encoding, not RFC8785/JCS.
Strict new decoding rejects duplicate/unknown keys and noncanonical security-sensitive
hash/key/numeric representations. Serialization derives canonical bytes from typed content;
ordinary insignificant JSON whitespace does not create semantic identity.

## Version matrix

| Object/profile | Decode / emit behavior |
|---|---|
| Earlier supported IR | Original hashes/admission/runtime and published valid fixtures |
| Wire 0.8 | Retained profile, action.v2/module.v2, decision 0.7 |
| Legacy records/bundles/genesis | Original bytes/domains and structural trust interpretation |
| V2 governed history | All profile0.8 commits (including empty K), full head, authenticated policy when required |
| Verifier 0.6 reports | Historical/development evidence, not current trusted proof |
| Verifier 0.7.0 | Guard/payload/coverage/provenance contract and distinct cache version |

Reserve against baseline; resolve predecessor version collisions before code. Published
versions/domain meanings and release tags are never moved or reused.
