# Identity and canonicalization audit

Owner: `/root/audit016_verify`, acting as the IDENTITY lane. Audit date:
2026-10-10. This report inspects release `v0.12.1`, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, source tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Inspection used the detached,
unchanged baseline identified in [baseline evidence](evidence/baseline.json).
No production, schema, fixture or hash algorithm was changed.

The B1 [coverage inventory](evidence/coverage.json) establishes the scope
denominator. It does not establish hash security, semantic injectivity or replay
soundness. E-COORD-009/012–016 now establishes collected/default-executed cases,
with ignored cases separate. Independent PERSIST review accepts all 31 families
after narrowing the historical guarantee; named joint premises remain qualified.

## Meaning of an identity

A semantic hash identifies the canonical object claimed by its domain. It does
not identify every possible denotationally equivalent program. For Wire 0.8 the
existing contract defines a particular normalized-structure equivalence, including
command-bag/product permutations, omitted true guards, query binder normalization,
equal resolved dependencies and exclusion of diagnostic provenance. Ordered
historical components remain ordered. Equal output for one invocation is weaker
than equal definitions. Public names belong to module lookup and command products
even where an individual item's own display name is excluded.

The relevant authority is [013 identity and records](../013-durable-command-intents/contracts/identity-and-records.md),
the earlier hashing/canonicalization contracts and the published domain versions.
An audit cannot widen this equivalence or retroactively change historical bytes.
Hash equality supports a content claim under cryptographic assumptions; no finite
256-bit digest is injective over the infinite domain of possible programs.

Three separate mechanisms occur in this implementation:

1. Semantic binary hashing: `SHA256(UTF8(tag) || 0x00 || body)`, where `body`
   uses opcode/type tags, u32 big-endian lengths/counts, UTF-8 strings, i64
   big-endian integers and raw 32-byte child hashes. Decimal literals use normalized
   exact text; typed options carry presence. `admit/hash.rs:36` and `:105` enforce
   this encoding. This is not hashing source JSON.
2. Document hashing: the same domain-separated digest over compact canonical
   UTF-8 JSON, with the domain's explicit self-identity field omitted. The shared
   `canonical::tagged_hash` helper omits only a top-level `hash`, never a nested
   hash. Callers additionally remove `record_id` where required. Read record
   hashing is distinct: its canonical JSON text is encoded as a length-prefixed
   string in the semantic binary encoder. Invocation records use the document
   encoding directly. The distinction is frozen and covered by vectors.
3. State hashing: MuHash3072 over live entity-content hashes, followed by
   domain-separated SHA-256 of the normalized 384-byte group element. This is an
   order-independent multiset accumulator, not JSON history hashing.

## Complete identity-domain inventory

The table groups only domains with the same mathematical object and authority.
Every actual tag is written explicitly; transport format tags without their own
semantic identity are listed separately below. `core` means
`crates/behavior-core/src/`, `store` means `crates/behavior-store/src/`, and
`verify` means `crates/behavior-verify/src/` in the exact baseline.

| ID / identity | Mathematical object and included distinctions | Intentional exclusions / canonical form | Domain and exact implementation |
| --- | --- | --- | --- |
| C-IDENTITY-001 Enum declaration | Named finite ordered enumeration; name and ordered variants | Locations, wire formatting; variant order retained | `behavior.enum.v1`; core `admit/hash.rs:117` |
| C-IDENTITY-002 Nominal declarations | Named scalar type, underlying type, allowed operations; fixed-scale version also includes scale | Locations; no mixing scaled/unscaled domains | `behavior.nominal.v1`, `behavior.nominal.fixed.v1`; `admit/hash.rs:121`, `:130` |
| C-IDENTITY-003 Entity declaration | Named ordered product including implicit id, field names/types and Ref/Option<Ref> distinction | Source locations; explicit/implicit admitted conversions normalized | `behavior.entity.v1`; `admit/hash.rs:141`; Ref uses distinct code `0x25` |
| C-IDENTITY-004 Expression | Typed resolved semantic syntax: operator, result type, normalized literals, ordered operands, field/parameter names and dependency hashes | Source locations, human pretty text and normalized candidate binder spelling; no arbitrary algebraic simplification | `behavior.expr.v1`; `admit/hash.rs:200`; all 43 subforms reconciled in MODEL |
| C-IDENTITY-005 Query definition and instance | Typed set expression: all/where/union/intersection/difference and child hashes; instance adds canonical captured semantic values | Query candidate spelling normalized; definition is not its result membership; operand syntax can remain ordered although resulting membership is a set | `behavior.query.v1`, `behavior.query_instance.v1`; `admit/hash.rs:351`, `:379` |
| C-IDENTITY-006 Derived/rule identities | Derived kind, named roles/types and body; invariant/constraint entity and binding parameter/body; global body | Own declaration display name and location excluded; module name table still binds exported name | `behavior.derived.v1`, `behavior.invariant.v1`, `behavior.constraint.v1`, `behavior.invariant.global.v1`; `admit/hash.rs:409`, `:419`, `:428`, `:373` |
| C-IDENTITY-007 Effects/lifecycle | Update parameter+field+value expression; create entity+id expression+declaration-ordered fields; removal parameter | Locations; original-state evaluation remains semantics, not a new hash input | `behavior.effect.v1`, `behavior.effect.create.v1`, `behavior.effect.remove.v1`; `admit/hash.rs:386`, `:395`, `:405` |
| C-IDENTITY-008 Actions | Ordered parameters/preconditions/state effects/postconditions; current profile adds canonical emission multiset and explicit `0.8` marker | Own name/location excluded; multiplicity preserved; current command permutations normalized | `behavior.action.v1`, `behavior.action.v2`; `admit/hash.rs:436`, `:574` |
| C-IDENTITY-009 BehaviorHash | Canonical mapping `(kind, public name) -> resolved item hash`; current profile includes commands and profile marker | Declaration source ordering and locations; public names deliberately retained | `behavior.module.v1`, `behavior.module.v2`; `admit/hash.rs:644`, `:590` |
| C-IDENTITY-010 SchemaHash | Canonical sorted mapping of persisted entity names to declaration-hash display strings | Actions, constraints, invariants, commands, profile-only changes and historical position | `behavior.store_schema.v1`; `admit/hash.rs:655`, core `schema.rs` |
| C-IDENTITY-011 MigrationHash | Resolved source/target schemas, typed constants, named requirement bodies, canonical transforms/copies/computed fields, drops and retired types | Migration display name/locations; exact source/target BehaviorHash eligibility is a separate required runtime/governance check | `behavior.migration.v1`; `admit/hash.rs:676` |
| C-IDENTITY-012 Command declaration/emission/intent | Named product with canonical field names/types; emission declaration+normalized guard+field expressions; intent declaration+typed field values | Product source order/locations; intent excludes own displayed hash; definitions remain distinct when one execution gives equal payloads | `behavior.command_declaration.v1`, `behavior.command_emission.v1`, `behavior.command_intent.v1`; `admit/hash.rs:529`, `:541`, `:559`, core `commands.rs:104` |
| C-IDENTITY-013 Read/projection | Read parameters and tagged value/projection body; projection source, entity type and ordered output field/derived names+hashes | Read own name and candidate binder spelling excluded; projection output keys retained | `behavior.read.v1`, `behavior.projection.v1`; `admit/hash.rs:633`, `:609` |
| C-IDENTITY-014 Read record identity | Canonical record minus `record_id`: read/behavior/data version, parameters, observations, semantic result/errors/evidence | Current v2 detached diagnostics excluded; historical v1 embedded diagnostics retain historical meaning | `behavior.read_record.v1`, `behavior.read_record.v2`, displayed `read:sha256:…`; core `read.rs:523`, `admit/hash.rs:338`, `:342` |
| C-IDENTITY-015 Decision/transition identity | Canonical evaluated decision record binding behavior/action/request/basis, state/input/context, observations, deltas, errors/trace and current commands | Current decision 0.7 detached diagnostic sidecar excluded; earlier record bytes unchanged; not yet a committed event | `behavior.transition.v1`; core `invocation.rs:1078`, verify `hashing.rs:18`, Store bundle preparation |
| C-IDENTITY-016 Invocation record | Canonical request, resolved capability/snapshot/bindings, refusal stage or inner semantic record and outcome, minus record_id | Detached diagnostics excluded; refusal identity does not certify successful evaluation | `behavior.invocation_record.v1`, displayed `invocation:sha256:…`; core `invocation.rs:719`, `:735`, `:1205` |
| C-IDENTITY-017 Entity content/version | Content: entity, exact declaration hash, id, semantic value. Version adds content hash, revision and created_at history coordinate | Content excludes revision/history; version deliberately includes lifecycle coordinates | `behavior.entity_content.v1`, `behavior.entity_version.v1`; store `documents.rs:254`, `:270` |
| C-IDENTITY-018 StateId | Live multiset of entity-content hashes; normalized MuHash3072 group value, big-endian padded to 384 bytes | History position, revisions, ever_used set, prior record and empty schema differences; exact schema/store/history remain separately bound | `behavior.muhash3072.v1` expansion and `behavior.state.v1` final digest; store `muhash.rs:13`, `:22`, `:84` |
| C-IDENTITY-019 StoreId/genesis | Canonical original seeds/schema and immutable evidence policy defining a store lineage | Physical backend/replica/path excluded; changing lineage parameters changes StoreId | `behavior.store_genesis.v1`, `behavior.store_genesis.v2`; store `documents.rs:496`, `:549` |
| C-IDENTITY-020 Commit bundle | Exact canonical evaluated store/state/behavior record, engine-derived dependencies and writes/lifecycle, evidence and commit metadata; v2 exact history/context product | Own commit hash absent; candidate is a distinct identity; v1/v2 products cannot be mixed | `behavior.commit_bundle.v1`, `behavior.commit_bundle.v2`; store `documents.rs:742` |
| C-IDENTITY-021 Migration bundle | Exact source/target behaviors/schemas, transform result and validation evidence, dependencies/lifecycle and governance package under selected historical profile | No action commands; own future event hash absent; versioned migration format selected explicitly | `behavior.migration_bundle.v1`, `behavior.migration_bundle.v2`; store `documents.rs:829` |
| C-IDENTITY-022 Committed event / CommitRecordHash | Canonical event kind, position, previous_record, bundle, evaluated/committed/result state, entity versions/lifecycle and derived reference changes | Physical replica/backend excluded; position/history deliberately semantic; no occurrence ID feeds into record | `behavior.transition_record.v1`, `behavior.transition_record.v2`; store `documents.rs:916`, `:931` |
| C-IDENTITY-023 Command occurrence | Tuple `(StoreId, CommitRecordHash, IntentHash, per-equal-intent multiplicity_index)` | Dispatch attempt, external acknowledgment, backend and replica excluded; repeats in another committed event remain distinct | `behavior.command_occurrence.v1`; store `commands.rs:221` |
| C-IDENTITY-024 Finding and check/cache key | Finding kind+ordered role/hash citations; check kind+subject hashes+profile+verifier+solver versions | Finding messages/counterexample values excluded; cache identity is not proof authentication | `behavior.finding.v1`, `behavior.check.v1`; verify `hashing.rs:57`, `:70`; `cache.rs:39` |
| C-IDENTITY-025 Legacy verification/governance | Canonical report/profile, waiver content/signature wrapper, execution/evidence policy and authorization content | Explicit self-hash omitted; structural identity does not establish trusted issuer; legacy format never promoted automatically | `behavior.verification.v1`, `behavior.profile.v1`, `behavior.waiver.v1`, `behavior.waiver_signature.v1`, `behavior.policy.v1`, `behavior.evidence_policy.v1`, `behavior.authorization.v1`; verify `hashing.rs:11`, store `documents.rs:355` |
| C-IDENTITY-026 Current proof site/manifest/report | Complete canonical proof descriptor incl. canonical site/path; sorted unique sites; report includes outcomes, structured witnesses and finding citations | Source locations, pretty expressions, host paths, cached flags and elapsed diagnostics excluded; distinct equal-property sites not deduplicated | `behavior.verification_obligation.v1`, `behavior.verification_manifest.v1`, `behavior.verification_report.v2`; verify `governance/trusted.rs:552`, `:1878`, `:2012`, `:2287` |
| C-IDENTITY-027 Authenticated verification content/signature | Exact subject, profile, verifier/solver version, manifest/report identities and issuer; signature purpose binds content hash and issuer key | Signature and own hash excluded from signed-content identity; report is checked separately; archival decode does not mean current proof eligibility | `behavior.verification_content.v2`, `behavior.verification_signature.v2`; verify `governance/trusted.rs:588`, `:1500`, `:2454` |
| C-IDENTITY-028 Trusted evidence/policy/context/authorization | Shared key/role/version/profile trust policy; execution policy; explicit context Q; authorization content binding candidate, policies, context, exact proof/waiver set and computed result | Signature excluded from AuthorizationHash; names and content hashes alone are not authority; Q is independently supplied and compared live | `behavior.evidence_policy.v2`, `behavior.policy.v2`, `behavior.authorization_context.v2`, `behavior.authorization.v2`, `behavior.authorization_signature.v2`; verify `hashing.rs:20`, `governance/trusted.rs:799`, `:864`, `:1435` |
| C-IDENTITY-029 Candidate transition | Store-derived action/migration semantic candidate with exact store/history, behavior/schema subject, record, declarations, dependencies and writes/lifecycle | Own transition_hash, evidence/authorization, Q, commit time, future event hash, occurrence IDs and detached diagnostics excluded; Q/time independently bound by authorization/commit checks | `behavior.candidate_transition.v2`; store `documents.rs:697`, `:718`, `store.rs:330`; verify `governance/trusted.rs` candidate validation |
| C-IDENTITY-030 Replay report | Canonical replay assessment document under its declared profile | A report hash does not establish original correctness or authenticated authority | `behavior.replay_report.v1`; store `documents.rs:23`, `replay.rs` |
| C-IDENTITY-031 Validation materialization key | Internal product of exact HistoryRef, SchemaRef and canonical admitted behavior text | No public semantic identity; no cache format in Wire IR, hash rules or history; data-only StateId is insufficient | store `store.rs:562`, `:1148`, `:1167`; shared with INCREMENTAL |

The format tags `behavior.history_ref.v1`, `behavior.governance_candidate.v2`,
`behavior.evidence.v2`, `behavior.verification_envelope.v2`,
`behavior.signed_authorization.v2`, `behavior.command_stream_request.v1` and
`behavior.command_stream_page.v1` identify validated transport products. They do
not create an additional independent hash identity merely because a `format`
string exists. Their contained hashes/checkpoints have the specific meanings
above. Detached signatures are byte values with purpose-separated verification;
the transport envelope is not confused with signed content.

## Canonical serialization and ambiguity checks

`canonical.rs:20` uses a custom strict deserializer rejecting duplicate keys,
floating JSON numbers (including exponents and negative zero forms), and
out-of-range integer representations. `decode_closed<T>` at `:29` adds typed
closed-field rejection where the target uses `deny_unknown_fields`.
`to_canonical_string` at `:105` recursively excludes floats and serializes compact
UTF-8 with key order supplied by serde_json's ordered map representation; the
workspace does not enable its preserve_order feature. Arrays retain order. This
is the repository's specified format, not a claim of RFC8785/JCS conformance.
Whitespace in input is not semantic after decoding.

Wire 0.8 decoding selects strict duplicate checking and recursively checked u32
lengths before admission (`wire.rs:1002`, `:1296`). Earlier admitted 0.4–0.7
profiles preserve their existing decoder behavior. Security-sensitive current
documents use strict/closed decoding and require canonical hash/key/time/type
representations. This audit does not pretend that every historical document used
the stricter current contract. TRUST separately assesses stale and contradictory
documents and profile-specific refusal obligations.

The binary encoding includes explicit node/operator/result-type tags. Strings and
child lists are length-prefixed; child hashes have fixed length. Ref differs from
bare Id in the entity-declaration body. Options distinguish absence from presence.
Nominal and enum literal values are interpreted under the declaration bound in
the encoded type. Command intent values need not repeat the full field type
because their included declaration hash commits to the canonical product's types;
validated descriptor archives permit data replay to reconstruct that product.
This is not an untyped payload hash.

There are two qualified edges rather than an unconditional injectivity theorem:

- Legacy `Enc::u32` (`admit/hash.rs:43`) and verifier `push_str`
  (`hashing.rs:49`) saturate lengths beyond u32. The legacy comment claims these
  inputs cannot be admitted; that premise is directly checked for Wire 0.8 and
  the new command encoder, but not established universally for historical
  programmatic/oversized inputs. No feasible legal collision reproducer was run.
  O-IDENTITY-006 retains the scope limit; changing frozen bytes is not an audit
  cleanup. A digest collision must not be asserted from saturation alone.
- Full pre-hash injectivity for every admitted historical/current syntax is not
  machine-proven. Tagged shape inspection and frozen independent vectors are
  evidence for specified cases, not a universal theorem. O-IDENTITY-001 makes
  that distinction explicit.

The generic document helper intentionally discards a top-level `hash`. It does
not establish that arbitrary JSON documents are admissible semantic objects.
Current closed schemas forbid injecting unknown top-level fields; exact own-hash
comparisons are required by typed decoders. Nested hashes remain bound. A caller
rehashing malformed/contradictory evidence does not make it valid: structure,
subject, replay and signature checks remain independent obligations. Conversely,
detached diagnostics are genuinely excluded only in the new record profiles;
silently excluding a historical semantic field would change the old contract.

## Ordering and multiplicity

| Collection | Mathematical object | Semantic/canonical ordering and enforcing locations |
| --- | --- | --- |
| Named module declarations, maps/product objects | Finite mapping | Canonical `(kind,name)` or UTF-8 field order; source/map insertion order excluded. `admit/hash.rs:644`, `:590`, canonical serializer. Duplicate names/keys are refused under applicable admission/current decode contract. |
| Enum variants and entity fields | Ordered finite declarations | Variant/field position is retained by frozen binary definition; do not sort away a declared distinction. `admit/hash.rs:117`, `:141`. |
| Action parameters, preconditions, state effects, postconditions | Ordered sequences | Identity/evaluation retain existing ordering and error precedence. `admit/hash.rs:436`; core evaluator sequence described by MODEL/VERIFY. |
| Expression arguments and query syntax operands | Ordered typed syntax | Child order retained unless the contract explicitly normalizes a binder/dependency. Extensional membership being a set does not imply arbitrary syntax commutation or identical error evidence. `admit/hash.rs:200`, `:351`. |
| Query memberships/entity universe | Typed sets | Identity-deduplicated and canonically sorted for traversal/evidence; backend enumeration and index order excluded. Query output identity derives from entity IDs/content, never raw backend iterator order. `eval.rs` query traversal, Store query/order property suite. |
| Fold inputs | Set membership with specified canonical traversal | Sum is repeated bounded addition in canonical entity order; prefix error is part of existing partial-fold meaning. Backend permutation is irrelevant; changing semantic entity IDs is a different input. MODEL prefix-fold non-finding and VERIFY partial-sum summary apply. |
| Command emissions and successful intents | Finite multisets | Sort by `(raw hash, canonical semantic bytes)` while retaining duplicates. Equal hashes with different bytes refuse HASH_CONTENT_CONFLICT. `commands.rs:182`, `:204`, `:133`; action.v2 bag component. |
| Command product fields | Finite mapping | UTF-8 name sort, independent of source object/field declaration order, with types/values bound. `admit/hash.rs:529`; command admission/descriptor checks. |
| Command descriptor archives | Unique dependency set | Sorted by declaration/type hash; descriptor equality verified, not arbitrary last-writer map overwrite. `commands.rs:260`, `:304`. |
| Committed command occurrences | Event-indexed multiset | Per-equal-intent consecutive multiplicity indices; page enumeration order/checkpoints serve the stream contract. Duplicate intents do not collapse to one occurrence. Store `commands.rs:206`. |
| Observations/read facts | Canonical evidence maps/sets and ordered trace where specified | Query IDs/captures and typed identities bind values; contradictory inputs rejected rather than inferred from presentation order. Current canonical observations remain in record/candidate identities. MODEL/TRUST verify semantics and consistency. |
| Semantic errors/problem lists | Profile-specific ordered/canonical evidence | Evaluation short-circuit/error order retained; canonical problem ordering where declared. Diagnostic order excluded only in current detached sidecars. No blanket sorting of semantic trace is justified. |
| History | Sequence | Position/previous_record and immutable event order are semantic. Same live state can have a different HistoryRef/record hash. Store `documents.rs:916`. |
| Live-state accumulator | Multiset of keyed entity content | Commutative modular product; entity content includes type/id, so swapping values between IDs changes content. `muhash.rs:61`, `:84`. Store normalizes typed key uniqueness before accumulation. |
| Proof manifests/checks | Canonical set of unique semantic sites | Sort by raw obligation key; preserve sites with different path/multiplicity even if property hashes repeat. `trusted.rs:552`, `:1938`, `:2287`. |
| Governance policy keys/profiles/waivers/evidence citations | Canonical sets or explicitly typed mappings | Strict sorted/unique set validators and exact policy/subject checks; arrays are not silently deduplicated arbitrary caller claims. `trusted.rs:1098`, `:1107`, `:1124`. |

No inspected current hash treats backend enumeration order as an independent
semantic input. This is an inspection conclusion for the enforcing sites and
requested metamorphic tests, not a proof of all public paths. Historical ordered
components and error semantics cannot be relabeled unordered for convenience.

## State, history and cache identity

StateId describes live content only. `EntityContent` includes exact declaration,
entity type/id and value; `EntityVersion` separately binds revision/created_at.
Two histories may rebuild the same live content and have the same StateId while
having different used identities, positions, schemas at history coordinates and
previous records. In particular empty states from distinct schemas can have equal
StateId. This is expected, since schema identity and historical trust are separate
semantic coordinates. It is not valid to use StateId alone for freshness,
governance, CAS or validation reuse.

MuHash's order independence follows from multiplication in the nonzero modular
group. Insert/remove are numerator/denominator operations; normalization uses a
modular inverse. The expansion maps a digest to a nonzero group element (zero is
mapped to one), and `state_id` hashes its fixed-size normalized representation.
SHA-256 and multiset-hash security remain cryptographic assumptions; the group
arithmetic does not prove them. The accumulator does not detect every possible
malicious backend mutation itself. PERSIST/TRUST distinguish backend conformance,
required reconstruction checks and known integrity limitations.

The validation materialization key is unusually strong: `SnapshotIdentity`
contains HistoryRef, SchemaRef and canonical admitted behavior text, not only a
BehaviorHash. It is scoped to one immutable snapshot and owned by the Store
instance. Candidate success is not a public `validated=true` fact. The cache is
reconstructible; INCREMENTAL/PERSIST inspect exactly when commit success permits
publishing its child key. A correct key cannot repair a defective full validator:
G3 and the common-reference cross-entity finding remain independent obligations.

## Hash dependency graph and cycles

Inspection of constructors gives this directed dependency chain:

```text
scalar declarations -> entity declarations -> typed expression/query DAGs
 -> item definitions -> canonical named module -> BehaviorHash
entity declarations -> SchemaHash
entity declaration + typed keyed values -> EntityContentHash -> StateId
SchemaHash pair + resolved transforms -> MigrationHash
semantic definitions + exact state/input/context/facts -> evaluation record
evaluation record + exact store/history + engine-derived dependencies/writes
 -> candidate hash
candidate hash + policies + context + complete proof/waiver identities
 -> authorization content hash -> detached authorization signature
bundle + evidence + history/position + resulting state
 -> CommitRecordHash
StoreId + CommitRecordHash + IntentHash + multiplicity index
 -> CommandOccurrenceId
```

Derived dependencies are admitted acyclically before expression hashes are
constructed. Queries normalize their bound candidate without making it a
self-reference. Entity references name target entity types and are not recursive
content hashes of the referenced instance. Enum/nominal dependencies are resolved
declarations. Candidate excludes authorization, commit metadata/future record and
occurrences; authorization content excludes its signature; committed events
contain intent data but do not contain occurrence IDs. Thus those constructors
have no observed identity cycle. This claim is about dependency direction in the
specified constructors, not a formal graph proof over all malformed inputs.

An event can archive signatures/evidence in its bundle, so changing archived
evidence bytes can change CommitRecordHash while leaving CandidateHash or
AuthorizationHash unchanged. That is consistent with separate semantic objects.
Copying the same immutable event to another backend preserves occurrence IDs;
forks at equal state/position or intentional repeats have different record
hashes/occurrences. Retries that recover the same committed event retain its IDs.

## Qualified obligations and evidence

| Obligation | Proposition, premises and enforcing evidence | Primary status |
| --- | --- | --- |
| O-IDENTITY-001 | Canonical preimages preserve every distinction claimed by each published identity domain, under admitted typed inputs and profile-specific normalization. Domain/opcode/type inspection E-IDENTITY-001; independent vector/property cases are candidate evidence, not universal proof. | not yet established |
| O-IDENTITY-002 | Current command bags retain multiplicity, canonical products and definitions, and refuse equal-hash/different-content conflicts; exact checked lengths. `commands.rs:182`, `:204`, CheckedEnc, command_identity oracle suite. | established by a code invariant |
| O-IDENTITY-003 | Document serializer/strict decoder exclude floats, ambiguous duplicate keys and incidental map order under the current typed closed profile. `canonical.rs:20`, `:29`, `:105`; historical decoder limits stated separately. | established by a code invariant |
| O-IDENTITY-004 | Live StateId excludes history/order while committing to keyed live content, under valid normalized accumulator inputs. MuHash modular arithmetic and entity content constructors; state/order tests execute in E-COORD-009/016. | established by a code invariant |
| O-IDENTITY-005 | Digest/content identity security and authenticated signature unforgeability hold against the assumed adversary. SHA-256, MuHash3072 expansion/group assumptions and Ed25519 libraries; key custody is outside this lane. | assumed but documented |
| O-IDENTITY-006 | Every legacy encoder input obeys its u32 size premise, including oversized programmatic/historical strings/lists. Current 0.8 wire/command checks establish their narrower scope; blanket legacy premise not proven. | not yet established |
| O-IDENTITY-007 | Current detached diagnostic provenance does not affect Core record identity; inspected Core constructors/standalone replay preserve the selected historical record profile and bytes. Core read/invocation constructors and closed validation; prior F4 regressions execute in E-COORD-009/016. This does not establish Store historical replay: E-PERSIST-004 confirms unresolved F-PERSIST-001. | established by a code invariant |
| O-IDENTITY-008 | Candidate/authorization/event/occurrence constructors form an acyclic dependency graph with distinct identities and required independent context binding. Constructor inspection above plus TRUST/PERSIST live binding checks remain separate. | established by a code invariant |
| O-IDENTITY-009 | Validation reuse key binds exact history/schema/canonical behavior rather than data-only StateId. `store.rs:562`, `:1148`, `:1167`; child publication lifecycle assessed by INCREMENTAL. | established by a code invariant |
| O-IDENTITY-010 | Every semantically relevant historical/current record alteration changes its applicable identity or is refused by replay/structural checks; excluded metadata/profile limits are respected. Representative cases execute in E-COORD-009/016, but F-TRUST-001 confirms current raw Store read duplicate acceptance and F-PERSIST-001 historical codec replay refusal; exhaustive per-field/profile coverage is not established. | not yet established |

E-IDENTITY-001 is the exact-baseline inspection described in this report and
[source evidence](evidence/fragments/IDENTITY/source-inventory.md). Execution is
not applicable to that source argument. [Test coverage](evidence/fragments/IDENTITY/test-coverage.md)
records comparators/shared helpers and actual E-COORD-009/012–016 collection/run
accounting. [Prior leads](evidence/fragments/IDENTITY/prior-leads.md)
records archival/current distinctions and unconfirmed scope concerns.

## Findings and quality contributions

No new S3 finding is inferred merely from coherent hash source inspection. Actual
E-PERSIST-004 and E-TRUST-002 confirm F-PERSIST-001 historical codec substitution
and F-TRUST-001 current raw duplicate read replay acceptance; originating owning
IDs remain unchanged. This is not a whole-kernel soundness verdict. Correct
canonical identity machinery does not prove that a permissive entry decoder,
validator, Backend or verifier produces the right semantic object. The ordinary
G3 defect F-INCREMENTAL-001 remains independent of correct hash construction.

Maintenance risks for QUALITY: domain constants are distributed between semantic
hashing, document hashing and transport schemas; same words `transition_hash` and
`record hash` identify different stages; legacy and checked binary encoders have
different limits; current bytes reuse in invocation is private and relies on
matching key ordering and exact inner text. Frozen vectors and profile-specific
tests help but are not reasons to merge algorithms or rewrite legacy bytes. Prefer
documentation of the object/tag at each call site and retaining typed constructors;
any prospective refactor needs exact compatibility evidence before implementation.
