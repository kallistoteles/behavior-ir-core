# Versioning

A Behavior release has one version number, but it carries several independent versions. They
change for different reasons, and every one of them is reported, never implied
(`behavior.versions()`, `behavior engine-info`, `release-manifest.json`).

| Kind | Example | What it identifies | Where it lives |
|---|---|---|---|
| **Release / engine** | `0.13.0` | the implementation release: the engine crates and the command-line tool | `[workspace.package] version` in `Cargo.toml`, the single source |
| **Public Rust surface** | `behavior-engine` | the only supported programmatic API (feature 011) | `api/engine-surface.txt`, checked against `crates/behavior-engine/src/lib.rs` |
| **Wire IR** | `0.4` … `0.8` | the currently admitted module document formats (and, from 0.7, the read document); a new semantic form needs a new IR version | `crates/behavior-core/src/wire.rs` |
| **Records** | `0.4` … `0.8` | the decision record format; fresh actions use 0.8 | `crates/behavior-core/src/record.rs` |
| **Read records** | `behavior.read_record.v1`, `behavior.read_record.v2` | read evidence; v2 is used for newly evaluated Wire 0.8 reads and archives the validated snapshot | `crates/behavior-core/src/read.rs` |
| **Store documents** | `behavior.commit_bundle.v1`, … | persistence documents (genesis, versions, records, bundles, reports) | `crates/behavior-store/src/documents.rs` |
| **Migration IR** | `0.1` | the migration document format (feature 009); `schema/migration-ir-0.1.schema.json` | `crates/behavior-core/src/migration/wire.rs` |
| **Verifier** | `0.9.0` | the verification encoding; part of every attestation and cache key | `VERIFIER_VERSION` in `crates/behavior-verify/src/lib.rs` |

A module document, a record or a store document says which format version it is written in.
That is what a reader checks, not the release number.

## Fresh module admission reporting (feature 020)

Current source after [020](../specs/020-admission-version-metadata/spec.md) reports
`accepted_wire_ir` exactly as `0.4`, `0.5`, `0.6`, `0.7`, `0.8`. The module decoder,
public reporting and generic unsupported-version support clause share one private
ordered definition. A version's acceptance still requires a valid document body;
rounded versions0.1–0.3 remain refused. Unknown or noncanonical spellings are not
normalized into supported versions.

The historical `wire_ir` array remains0.1–0.7 with its existing meaning. Use
`accepted_wire_ir` to choose a fresh module version; historical knowledge does not
establish fresh admission or unrestricted replay support. Ad hoc read documents
retain their separate0.7 gate; record, read-record, migration and verifier versions
remain independent. Public fields, error categories and CLI statuses are unchanged.

Consumers asserting the incorrect accepted list or complete old refusal text must
adapt. This corrects the existing reporting contract and is assessed conservatively
as minor-class under the0.x policy below; no new consumer-contract version is added.
This statement selects no release number or publication. Existing published releases
and the ecosystem's declared Core pin retain their actual outputs until a separately
published corrected release is adopted. See the [compatibility assessment](../specs/020-admission-version-metadata/compatibility-assessment.md).

The 0.12 line includes the earlier [soundness remediation](soundness-remediation.md).
Verifier 0.8.0 corrects read-filter path assumptions and entity-role validity. Historical 0.7.0
envelopes and their signatures remain decodable as archives; they never satisfy fresh
current-subject manifest validation. Existing policies were not upgraded implicitly;
the remediation examples explicitly selected `policy-verifier-0.8.json` and matching
evidence policy.
Feature 017 advances fresh verification to 0.9.0 as described below.

New Wire 0.8 reads emit `behavior.read_record.v2`: snapshot validity is established before
evaluation, entity constraints apply to every argument role, and state invariants apply only
to state. Semantic reasons retain node/operand evidence; locations and display messages are
available through `ReadRecord::diagnostics()` outside identity and typed record equality.
Internal failure operands remain in the record and are omitted from capability responses.
The complete snapshot is
recorded separately from actual path observations so failures are replayable. Historical v1
records, including those produced with Wire 0.8 before this correction, replay through the
original read rules and retain their exact bytes and domain. This preserves interpretation;
it cannot repair evidence omitted by an old record. Legacy read interpretation is unchanged;
fresh verification of its reads no longer assumes validity that its runtime does not enforce.

Current snapshots use canonical typed entity/field encodings before read observations are
recorded. Read-only query definitions are available during replay, including resolved ad-hoc
reads. For requests refused by transport decoding, v2 additionally retains `refused_request`
as the exact original text. Standalone replay repeats that refusal; the codec requires
`INVALID_INPUT` and empty body evidence, and capability responses omit the text.

Feature [018](../specs/018-strict-profile-replay/spec.md) corrects Store replay selection
of these existing read-v1/read-v2 profiles, including reads inside invocation records,
and rejects ambiguous raw replay evidence before map reduction. Supported historical
records retain their own profile, bytes and identity; fresh Wire 0.8 reads still emit v2.
The correction introduces no Wire version, record/hash domain, verifier version, Backend
requirement or supported facade API. Shared checked preparation is internal Core/Store
integration. See the [support matrix](../specs/018-strict-profile-replay/contracts/support-matrix.md)
for the existing compatibility domain and request-reconstruction limitations.

## Complete resulting-state validity (feature 017)

[017](../specs/017-resulting-state-validity/spec.md) corrects the coverage of an
existing obligation: every allowed ordinary transition must produce a completely
valid child state, including unchanged entities affected by the transition.
Fresh action computation emits decision record **0.8**, with
`validation_profile: "behavior.complete_resulting_state.v1"`, for every admitted
Wire IR version. Resolved evaluation, legacy action intents, unified invocation
and Store evaluation/rederivation share that boundary. There is no public option
to select an older validation strategy for a fresh computation.

The admitted Wire IR range remains 0.4–0.8. Versions 0.1–0.3 remain
explicitly unsupported; their historical rounded-arithmetic semantics are not
reinterpreted as exact arithmetic. Its admission, exact arithmetic and
BehaviorHash/SchemaHash rules are unchanged. Wire 0.8's command
`semantic_profile: "0.8"` and the decision record's validation profile identify
different contracts. New evidence, transition and occurrence identities can
differ because they bind the corrected record; historical bytes are not rewritten.

Record 0.8 archives the complete canonical parent and typed child-obligation
witnesses. Postconditions retain priority. Entity validity uses canonical semantic
entity order, invariants before constraints, and semantic declaration order.
The first false or erroring obligation determines the outcome. See the
[decision contract](../specs/017-resulting-state-validity/contracts/decision.md)
for the closed evidence shape and exact precedence.

Immutable decision records 0.4–0.7, including nested invocation records, replay
under their original validation rules. This preserves an old recorded outcome
even when its child would be invalid under the corrected checks. It does not
permit a new commit from an old uncommitted candidate or certify an old invalid
child for a fresh operation. Exact original-event recovery remains read-only;
see [persistence](persistence.md).

Fresh verification uses **0.9.0**, including the corrected complete-child
validity assumptions and failure schedule. Historical 0.7.0/0.8.0 authenticated
envelopes retain archive decoding and original-manifest authentication. They do
not establish fresh current-subject proof eligibility. Current examples explicitly
use `policy-verifier-0.9.json` and its matching evidence policy. Existing stores,
policies and historical authorizations are never adopted or upgraded implicitly.

## Release version policy (0.x)

Release 0.13.0 collects the completed Core remediations since 0.12.1. It is a
minor release because complete resulting-state validity introduces fresh decision
record 0.8 and verifier 0.9.0, including corrected outcomes for previously
uncovered invalid child states. Existing historical records retain their recorded
profiles, bytes and interpretation; decoding or replaying an archive grants no
fresh commitment or proof authority.

The release also includes strict profile-preserving Store replay and original
request evidence, the initial Store creation contract, accurate fresh-admission
metadata, strict query-bearing Bundle Evidence validation, faithful ordinary
Facts/witness schemas, and the consolidated query evidence domain contracts and
public regressions. Ordinary Facts remains distinct from Bundle Evidence;
required query hashes are validated before v2 semantic projection, and live
commitment independently checks observations against the exact parent.

Consumers performing fresh authenticated verification must deliberately select
policies compatible with verifier 0.9.0. Existing Store policies and historical
authorizations are not upgraded implicitly. Ecosystem dependency pins are updated
separately after publication. The public query reproduction and signed command
intent controls pass without evidence stripping or legacy-profile workarounds.

Release 0.12.1 is a patch release of the Store implementation. Feature 014 reuses
full validation of an exact committed snapshot, and feature 015 carries that
evidence across eligible local updates and creations after successful atomic
commit. Global, cross-entity, query-dependent, unknown and removal cases keep
the existing full-validation workflow. Wire IR, admitted program semantics,
BehaviorHash/SchemaHash rules, document formats, verifier version, public API
and replay interpretation are unchanged. The optimization is private and
reconstructible; it adds no backend requirement. See
[the 0.12.1 release scope](../specs/015-incremental-validation-semantics/release.md)
for validation and consumer boundaries.

While the release is below 1.0, the **minor** number marks anything a consumer must adapt to:

- **Minor bump** (`0.8.x` → `0.9.0`):
  - any change to behavior identities (item hashes, behavior versions);
  - a new wire IR, record or store document version, or a change to an existing one;
  - removing or changing a public API element: an item of `behavior-engine`
    (`api/engine-surface.txt`), a command or output of the CLI, or a document format;
  - a verifier change that can alter outcomes, together with a `VERIFIER_VERSION` bump.
- **Patch bump** (`0.8.0` → `0.8.1`):
  - additive public API;
  - fixes that change no identity, format or verification outcome;
  - documentation and skills.

After 1.0, the same rules apply with **major** in place of minor.

Under this policy, 017 requires a **minor** release: it adds decision record 0.8,
changes fresh outcomes for previously uncovered child failures, and advances the
verifier to 0.9.0. This classification does not select a Cargo release number,
create a tag or publish an artifact. Release preparation remains a separate step. The governance-v2 and store-v2
wrapper schemas recognize current decision08 and verifier09 provenance and reuse
the authoritative closed decision schemas; their legacy alternatives remain intact.

018 considered alone is **patch-class**: it restores recorded-profile replay and existing
ambiguity rejection without changing identity rules, document formats or verifier outcomes.
A delivery that also includes 017 retains 017's **minor** classification. This distinction
does not choose a Cargo version, create or publish a tag, or update an ecosystem Core pin.
Required gates and exact-revision consumer evidence precede any separate release action.

Release 0.10.2 is the first published release of Behavior Core as its own repository (feature
011). The tag `v0.10.1` exists but was never released: the release workflow fetched it without
its annotation and refused it, so under the tag rule (a tag is never moved) the fixed workflow
releases 0.10.2, with the same engine and no other change.

Release 0.10.1 is a patch release: the first release of Behavior Core as its own repository
(feature 011). It adds the public Rust surface `behavior-engine` (additive) and publishes the
command-line tool and the conformance fixtures as release assets. No identity, document format or
verification outcome changes: every conformance fixture, golden record, hash vector and engine
output is byte-identical to 0.10.0.

Release 0.10.0 was a minor bump for three reasons:

- **Wire IR 0.7:** a module's `reads` section (declared reads, a new behavior item kind) and the
  read document (an ad-hoc read). A module with declared reads has a new behavior version, never a
  new schema; a module without them keeps its bytes and identity.
- **A new document kind:** the read record `behavior.read_record.v1`, with its identity
  `read:sha256:…`.
- **`VERIFIER_VERSION` 0.6.0**, for the `evaluation_error` checks of declared reads.

Every existing module, decision record, store document, hash vector and attestation format keeps
its bytes.

Release 0.9.0 was a minor bump for three reasons:

- **Exact store-schema binding** replaces the touched-types comparison. A module that differs from
  the store only in an entity type its action does not touch used to evaluate and now gets
  `SCHEMA_MISMATCH`, and the old code `ENTITY_DECLARATION_MISMATCH` is no longer reported for it.
- **A new document kind:** the migration IR 0.1, plus optional fields that existing documents
  never carry: `Head.schema`, the record `kind` and `migration` fields, and
  `EvidencePolicy.migration`.
- **`VERIFIER_VERSION` 0.5.0**, for migration verification and the narrowing obligation.

Every existing module, record, genesis, store head (of a store that never migrated), evidence
policy and attestation format keeps its bytes.

## Compatibility promise

Release 0.11.0 is a minor bump: it introduces the versioned capability-boundary
formats `behavior.invocation.v1`, `behavior.capability_intent.v1`,
`behavior.snapshot.v1` and `behavior.invocation_record.v1`, along with the unified
invocation API and CLI. Wire IR, admission, verifier version and existing formats
were unchanged in that release. The current entry points compute fresh actions
under the 017 profile; original evaluation rules are retained for immutable
historical replay, rather than as selectable fresh compatibility paths.

| Superseded capability format/path | Current form |
|---|---|
| Resolved action request (`eval`) | `behavior.invocation.v1` (`invoke`) |
| Legacy action intent (`targets`, `intent`) | `behavior.capability_intent.v1` (`invoke-intent`) |
| Legacy read intent (`read-intent`) | `behavior.capability_intent.v1` (`invoke-intent`) |
| Resolved read request (`read`) | `behavior.invocation.v1` (`invoke`) |

See [invocation](invocation.md) for the complete evidence and replay contract.

- Documents written by any release of a minor line (modules, records, stores, attestations) are
  read and replayed by every later release of the same line with identical results.
- A release that cannot read a document refuses it explicitly: the wire, record and store
  version gates report the unsupported version. It never produces different results
  silently.
- An existing document format never changes its bytes. New forms get a new version; documents
  without them keep their old version and bytes.

## Releases

A release is the annotated tag `v<version>` on a commit that passed `scripts/release-check.sh`,
together with the artifacts `scripts/release.sh` built into `dist/v<version>/`. Tags are never
moved; a fix is a new patch release.

## Bindings

Bindings and their packages are versioned by the ecosystem repository (behavior-ir). Each of its
releases names the exact Core Release it bundles, by version and commit, and a binding refuses
to run on any other core. The core never refers to a binding.

## Durable command release 0.12.0

Wire IR0.8 retains an explicit command semantic profile, including empty declaration/emission arrays. It adds typed command declarations and guarded unordered emission multisets. Its decision record0.7 archives canonical intents and semantic evidence, with source diagnostics detached. New hashes are domain separated; earlier wire/record identities and replay rules are unchanged. Command declarations affect BehaviorHash, never persisted SchemaHash.

The verifier0.7.0 and trusted governance/store-v2 formats were completed as prerequisites, with fresh authenticated proof, closed manifests and independent authorization context. Old structurally trusted history remains structurally trusted. Adoption exports validated state into a new genesis rather than rewriting old policy or records.

That release's engine-info kept the historical `wire_ir` array 0.1–0.7 and added
`accepted_wire_ir` 0.1–0.8 from decoder constants. It added record 0.7;
`command_stream` and `command_occurrence_domain` report the implemented checked
request and identity domains. The current `records` capability additionally
includes 0.8, and current fresh verification uses 0.9.0. These format versions do
not imply a product tag or publication. The historical `accepted_wire_ir`
metadata array includes 0.1–0.3 even though `decode_module` rejects those versions.
017 does not widen admission or fix that separate version-metadata finding;
020 owns its remediation.

## Corrective original-attempt replay

Feature [022](../specs/022-replay-evidence-authority/spec.md) is assessed as a
patch-class correction when delivered alone: original malformed read sections,
invocation origin and phase-sensitive refusal evidence regain their reference
replay interpretation. Two erroneous Store non-match outcomes intentionally
become matches under independently valid historical anchors. This is disclosed
as a correctness correction rather than described as unchanged observed behavior.
The same-minor-line promise preserves reference semantics; it does not require
retaining an implementation defect that contradicts that contract.

No existing Wire, record bytes, canonical hash/schema rules, supported public
facade, Backend contract or verifier result changes under 022. Existing historical
profiles retain their own meaning and capture limits. A delivery also containing
017 keeps its separate minor classification. This assessment selects no release
version or publication; see the [compatibility assessment](../specs/022-replay-evidence-authority/compatibility-assessment.md).

## Initial Store creation contract correction

Feature [019](../specs/019-store-creation-contract/spec.md) is a minor-class public
Backend-contract change under the current 0.x policy. Atomic absent-to-complete
publication, private staging isolation, exact original-identity-bound retry and
preservation of advanced history become mandatory for every conforming backend.
Equivalent retry now recovers instead of returning an already-created refusal;
generic opening adds structural integrity checks. Existing Rust signatures remain
compatible, but compiling is not evidence of semantic conformance.

Existing Genesis/StoreId/StateId/hash/schema rules, Wire admission, record bytes,
historical replay profiles and verifier versions retain their meaning. The
stable existing Contract-error channel carries `STORE_CREATION_CONFLICT` and
`STORE_INCOMPLETE`; actually performed backend failures remain operational and
do not assert rollback. This assessment selects no numerical release, tag, merge
or ecosystem dependency update. External implementers must follow the
[migration guide](backend-creation-migration.md), provide host-specific publication
and durability evidence and run the current shared conformance suite. See the
[019 compatibility assessment](../specs/019-store-creation-contract/evidence/compatibility-assessment.md)
for exact contract and validation boundaries.

## Ordinary Facts and witness schema correction

Feature [024](../specs/024-facts-witness-schema/spec.md) corrects the accepted
structural domain in governance-v2/store-v2 schemas: canonical ordinary fact
families become representable, and malformed observation products are rejected.
This is conservatively minor-class under the current 0.x policy because consumers
generated from the erroneous schema may need adaptation. Wire/record formats,
semantic hashes, verifier/runtime meaning, historical profiles and the public
facade remain unchanged. Existing release assets and ecosystem pins retain their
exact versions; corrected assets are adopted through a future Core Release. No
numerical release or publication is selected. See the
[compatibility assessment](../specs/024-facts-witness-schema/compatibility-assessment.md).

## Checked canonical artifact API (feature 021)

[021](../specs/021-canonicalization-errors/spec.md) is **0.x minor-class**.
From its pinned 0.13.0 baseline the next eligible version is 0.14.0, subject to
intervening releases. Implementation does not bump Cargo versions, tag or publish.

Supported breaking changes are ordinary `verify(...) -> Result<Attestation,
CanonicalError>`, returned ordinary/migration `Attestation::to_json_string()` and
legacy action/migration `Authorization::to_json_string()` returning
`Result<String, CanonicalError>`, and the additional
`GovernanceError::Canonicalization { artifact, source }` variant. Consumers must
propagate/match Results and update exhaustive error matches; explicit before/after
examples and executable facade cases are linked from
[the public API contract](../specs/021-canonicalization-errors/contracts/public-api.md).
`CanonicalError` is explicitly available from `behavior_engine::canonical`.

Generic tagged hashing retains its signature but now checks the full current
input before excluding self-hash metadata. Legacy decoding/signing and Store
evidence acceptance likewise refuse noncanonical excluded metadata. This narrows
acceptance of unsupported drafts; it changes no valid canonical bytes, hash or
signature material, historical profile, Wire/record/store format or
`VERIFIER_VERSION`. Profile and migration producers retain their constrained
infallible APIs with documented construction invariants. Editable raw fields
remain supported; copied metadata is not authority for an edited draft.

CLI canonical failures return 2 with an explicit diagnostic and no partial
artifact; ordinary proof refusal/inconclusiveness remains 1 and infrastructure
failure remains 3. No unsafe parallel legacy serialization/hash API is retained.
The independent frozen baseline and old/new controls cover valid identities and
unsupported-value refusals; final gates and exact-Git receipts are required
before acceptance, separately from any later release decision.

## Portable Builder source provenance (027)

Feature [027](../specs/027-source-location-portability/spec.md) is conservatively
**0.x minor-class**: corrected fresh provenance can change legacy canonical
content and record IDs, requiring consumer adaptation. For example, mixed
`/repo/pkg/model.py` and `<string>` now produce `model.py` and `<string>`;
all-relative `pkg/model.py` stays `pkg/model.py` rather than becoming `model.py`.
Previously skipped Rescale children now contribute to root selection as well.

Existing public signatures, semantic behavior/item/read/expression hashes, wire
IR/record/Store formats and verifier versions are unchanged. Current/v2 canonical
read identity keeps its existing provenance invariance. Historical records,
signatures, archived bytes, identities and recorded-profile replay remain exact.

Consumers should remove read-retracing workarounds and accept whole relative
filenames in new output; do not rewrite old evidence to match new construction.
See [source locations](source-locations.md) for explicit-root behavior, one-pass
examples, profile distinctions and the relative-anchor boundary. This assessment
does not bump Cargo versions, choose a numerical release, create a tag, publish
artifacts or update downstream dependency pins.
