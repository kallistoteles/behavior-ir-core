# Data Model: Durable Command Intents

This is the semantic model for [spec.md](spec.md) and [plan.md](plan.md).
Wire/Rust layout implements these objects rather than defining their meaning.

## Semantic inventory

| Object | Mathematical object | Identity / invariant |
|---|---|---|
| CommandDeclaration | Named finite typed product | Field order is nonsemantic; names/types define the product. |
| CommandEmission | (declaration, guard, named payload expressions) | Definition identity excludes provenance; omitted guard = true. |
| Action command effects E | Finite multiset of CommandEmission | Multiplicity matters; input order does not. |
| CommandIntent | Immutable typed value anchored to declaration | Same declaration/value gives the same IntentHash. |
| Produced K | Finite multiset of CommandIntent | Multiset union adds counts; no deduplication or sequencing. |
| Delta ΔS | Existing finite state-transformation description | Commands do not change apply(S,ΔS). |
| CandidateTransition | (profile, exact evaluation basis, ΔS, K, evidence) | Exists before authorization/commit; no occurrence IDs. |
| StateId | Existing entity-content identity | Excludes commands, governance and history position. |
| HistoryRef | (StoreId, StateId, position, committed-head hash) | Identifies exact state/history, including forks. |
| CommitRecord | Ordered-history event containing validated candidate/evidence | Binds parent/position/state; no occurrence IDs. |
| CommandOccurrence | Intent at one commit with per-equal-intent index | Derived from store/commit/intent/index. |
| TrustedAuthorization | Policy-indexed authenticated relation with explicit Q | Signature, issuer role at policy_time, exact binding and compliant evidence. |
| CommandStreamPage | Derived bounded observation over ordered history | Exclusive after, pinned head, no delivery-order promise. |

Semantic profile 0.8 uses new identity/record domains even when E/K are empty.
Earlier profiles retain their existing meanings and representations.

## Declaration and payload product

Fields: name, canonical named fields, resolved scalar types, declaration_hash.
Field names are unique and nonempty under ordinary name rules. Declaration names share
the module name table (Kind::Command=9); collisions fail admission. Product fields sort
by UTF-8 name for hashing, payload evaluation and serialization.

A declaration creates no entity, state schema or reference edge. An explicitly declared
payload field named id is ordinary data. Allowed scalar types: Bool, i64 Int, existing
28-digit Decimal, String, Enum, primitive/fixed-scale Nominal, Id<T>, and one-level Option
of a supported non-Option scalar. Empty product is valid. No Entity, Query, stored Exact,
Ref<T>, nested Option, blob, array or arbitrary object. Id<T> is inert identity data.
Exact expressions require lossless conversion or explicit rescale.

New-profile names, scalar String/Id byte lengths and encoded collection counts fit checked
u32 encoding; over-limit input is invalid before evaluation. This is a representation-domain
bound, not a transport-size SLA. Normal admitted dependencies are required.

Canonical payload JSON uses booleans, i64 numbers, normalized decimal strings, strings,
enum variants, typed identity strings and null for None. Fixed-scale decimal text has its
declared scale; Some serializes as its supported underlying value. Hashing uses typed encoding.

## Emission definitions and guarded evaluation

Fields: declaration_hash, guard Expr, named payload Exprs, emission_hash. Normalize an
omitted guard to literal true. Payload keys exactly match fields and values convert losslessly.
Canonical definition key is (raw emission hash, semantic encoding bytes). Equal definitions
remain repeated; evidence indices are canonical multiplicity indices, never source positions.

~~~text
T_B : (S,I,C,F) -> Result(ΔS,K,Trace)
emit(false,k) = ∅                      # k is not evaluated
emit(true,k)  = {k}                    # construction must succeed
K = K1 ⊎ ... ⊎ Kn
S' = apply(S,ΔS)
~~~

Incoming validity/preconditions/state effects follow normal profile rules; then evaluate
canonical command definitions against original S; finally check invariants/postconditions
on S'. Guards precede payloads; fields use canonical name order. Guard/construction error
aborts the action; later definitions are unobserved after a canonical fail-fast error.
Only ALLOW exposes complete K. Non-ALLOW has no committable partial collection.
A false guard leaves other action effects allowed. Allowed ΔS=∅/K=∅ invocations retain the
existing no-op commit treatment. Reads, derived values, invariants and migrations cannot emit.

## Record, candidate and historical descriptors

Record 0.7 includes semantic_profile 0.8, request/results/observations/delta/trace and
commands:{declarations,types,intents}. Tables archive used declarations and all nonprimitive
scalar dependencies: enum domains/hashes, nominal operations/scale/hashes, primitive tags,
Id target names and supported Option descriptors. They are canonical and deduplicated by
identity. Data replay checks historical descriptors/values/hashes without current definitions.
Non-ALLOW has no successful intents. Empty command/type tables are valid.

Semantic evidence uses hashes/normalized binders/canonical indices/structured errors.
Display file/line/text/alias spelling belongs to a detached diagnostic sidecar, outside
record/candidate/commit identity and semantic replay. Failure records retain the genuine
stage; malformed input cannot claim an action was evaluated.

Store candidates add full HistoryRef and rederived read/write/fact/lifecycle evidence.
CandidateHash excludes authorization, own future commit hash, occurrence IDs, diagnostics
and commit-time deployment metadata. Policy time is separately authenticated and checked.
Self-hash integrity alone cannot establish that the store evaluated a candidate.

## Commit and occurrence identity

HistoryRef fields: format behavior.history_ref.v1, store,state,position:u64,record.
At position0 record=genesis StoreId; later it is the canonical commit hash.
StateRef remains the legacy state/position projection.

A v2 bundle binds full evaluated_history and exact record/read/write/fact/lifecycle data.
After rederivation/trust checks, CAS uses evaluated_history.record. Checked position/revision
arithmetic precedes atomic versions/removals/reference indexes/record/head/idempotency write.
Command-only commits keep StateId/revisions/universe unchanged and advance history.

~~~text
intent -> candidate -> authorization -> signature -> commit -> CommitRecordHash
OccurrenceId = H("behavior.command_occurrence.v1",
                 canonical_json({store,commit_record_hash,intent_hash,multiplicity_index}))
~~~

Index ranges 0..count-1 within equal intent hashes per commit. Position is evidence, not
another hash input. Occurrence IDs never feed back into candidate/intent/commit hashes.
Copied canonical history agrees; divergent events differ despite equal state/position.
Collision resistance is an explicit assumption; unequal content under equal hashes is refused.

## Shared governance model

| Object | Required data |
|---|---|
| EvidencePolicyV2 | Immutable require rule, trusted authorizers/key intervals, execution-policy hashes, optional migration rule. |
| ExecutionPolicyV2 | Check requirements, verifier/waiver roles, accepted profiles/versions, time/context conditions. |
| AuthorizationContextV2 (Q) | policy_time, requested_commit_time or null, exact policy-declared typed context product; canonical ContextHash. |
| Verification content | Issuer, subject/profile/versions, complete manifest identity, report hash. |
| Obligation descriptor / manifest | Versioned finite set of unique canonical proof sites; repeated emissions keep distinct multiplicity-indexed sites. |
| Semantic verification report | V2 sorted per-obligation results and semantic findings/witnesses; no source/display/cache metadata. |
| Verification envelope | Content/hash plus complete profile/manifest/semantic report and detached signature; diagnostics excluded. |
| Authorization content | Issuer, allow/refuse, exact candidate/store/history/policy/subject, full Q/ContextHash, evidence and authorized_at=Q.policy_time. |
| Signed authorization | Content/hash and detached signature; signature excluded from AuthorizationHash. |
| EvidenceV2 | Complete policy/authorization/envelopes/waivers/signatures. |
| GovernanceCandidate | Prepared action/migration identity and exact HistoryRef. |

TrustedAuthorization(P,A,T,Q) requires authenticated issuer authority under exact P at
Q.policy_time, exact T/store/head/ContextHash(Q) and independently compliant evidence.
Live commit compares independently supplied Q with signed Q; the bundle archives the compared
context. Authorization and verifier roles
are distinct. require=false needs no authorization; invalid supplied evidence still fails.
Require=true with no eligible authority is valid deny-all.

Migrations bind exact source/target BehaviorHash and SchemaHash, transform/requirements/delta.
Same-schema derived-definition changes cannot reuse prepared proof/authorization. Time uses
explicit real-calendar UTC seconds and [start,end) key intervals; no current-clock lookup.
All trust roles/waiver expiry use Q.policy_time; bound commit time equals bundle commit_time,
otherwise Q.requested_commit_time=null. Required context is a closed Bool/i64/String product
declared by execution policy. No real-world freshness is implied.

ReportHash/ManifestHash/ObligationKey use the exact domains/bodies in governance.md. Canonical
proof paths distinguish occurrences/fields/child sites without source locations. Sharing a
finding never removes a check. Infrastructure/non-reproducible abort yields no signed semantic
artifact; deterministic resource exhaustion may yield authenticated INCONCLUSIVE. V2 witness
projection preserves typed meaning, while all legacy raw formats/identities remain unchanged.

## Legacy adoption and observation lifecycle

Choose an exact valid old head/module, validate/export its complete live state, create a
new v2 genesis/policy and assert equal StateId/schema/values but new StoreId. Keep old history
and an external adoption reference. New lineage starts at0; revisions and removed-ID lifetime
are lineage-local. No in-place policy mutation or historical rewrite.
Legacy required-authorization stores refuse new governed writes, but remain readable and
structurally replayable; historical idempotent recovery is read-only. All profile0.8 commits
require v2 genesis, including none policies and empty K. This is a format boundary, not an
authorization requirement; legacy none-policy paths retain their old formats.

Stream request: exclusive after HistoryRef, optional through HistoryRef, max_records default256
(range1–1024). Page: after,observed_head,items,next_after,complete. Scan whole events, including
empty/migration records. Empty items may advance checkpoint. Continue with the same observed
head. Endpoint/chain errors fail explicitly; observation mutates no state/history/checkpoint.
