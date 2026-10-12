# Compatibility and delivery assessment

## Preserved semantic contracts

The correction restores already-defined v2 bundle observation consumption. It
does not introduce a query operator, evaluator, language capability, Backend
requirement, format tag, behavior identity, semantic schema identity or verifier
encoding. It preserves ordinary Facts parsing and valid emitted candidate/record
bytes. ResultHash and candidate transition hash algorithms remain unchanged.

V1 preserves structural decoding, hashing and historical commit/replay checks,
including rejection phase, category and precedence. A structurally decodable bad
v1 result hash remains decodable, and remains uncommittable. The strict v2 codec
is not inserted there. Same-profile historical evaluation/reference interpretation
remains normative; no v1/v2 output equality is required.

The relevant public consumers are CommitBundle/GovernanceCandidate via the supported
behavior-engine facade, CLI governance authorization, current wrapper schemas and
their conformance assets. No facade export or signature changed.

## Explicit current wrapper schema correction

The two current v2 schema assets previously conflated ordinary Facts with observed
bundle evidence. Each now contains nine separate closed bundle products and
redirects only action-candidate and non-null action-bundle observation references.
Migration {}, ordinary/witness refs, legacy schemas, decision/read schemas and
existing valid historical document bytes are protected and unchanged. The ordinary
Facts alias discrepancy remains outside this correction.

Schema text and release-asset digests necessarily change. This is different from
changing BehaviorHash, semantic SchemaHash or any stored document identity.
Preserving all old schema bytes while fixing this consumer mismatch is not a
compatible implementation requirement. Valid existing/current producer documents
and genuine valid historical v2 archives must remain schema-valid after correction.

Schema-only consumers may now accept correctly named bundle observations and
reject malformed/incomplete integrity items that the coarse schema previously
accepted. Schema acceptance remains weaker than cryptographic/order/raw-text
validation; corresponding runtime checks are mandatory. This observable validation
surface change must be documented, not called invisible cleanup.

The remaining ordinary/witness schema mismatch is separately recorded in
[follow-up-findings.md](follow-up-findings.md). Do not widen 023 into repairing
every ordinary/read/legacy schema or claim all public evidence schemas are conformant.

## Release classification

Under the current [0.x policy](../../docs/versioning.md), this implementation retains a
**conservative minor-class delivery assessment** because it includes correction
of a public wrapper schema's accepted domain and required consumer validation.
The runtime-only query parser repair could be patch-class if considered alone,
but this implementation includes the scoped schema correspondence and records its impact.

No numerical Cargo version, tag, release, asset publication or ecosystem pin is
selected here. Other integrated remediations retain their independent versioning
consequences. A later implementation finding that requires changed valid document
representations, hash rules or historical semantics is outside this design and
must receive an explicit versioned assessment rather than silently altering them.

## Consumer validation and migration note

Consumers keep using the existing facade/CLI and document tags. Schema consumers
must fetch the corrected schema assets from the release they actually adopt;
release assets are version-bound even when their document format tags are unchanged.
Do not copy current schemas into a binding pinned to a different Core Release.

Test existing consumer source through behavior-engine against the final pushed
Git revision. CLI, fixtures and wrapper schemas must come from that same frozen
checkout. Typed internal codec names are not consumer API. Required authorization,
context/history binding, replay limitations and existing backend obligations remain.

The ecosystem's official pin changes only after a separate published Core Release
and separately owned adoption work. No private override can prove compatibility.

## Assessment boundary

The versioning assessment above is combined with scoped working-source runtime
evidence in [US3 compatibility](evidence/us3.md). The thirty Store and seven Verify
dedicated controls passed; all original sixteen v1 phase/code/cause/publication
outcome documents exactly match the retained baseline. All nine owning 018 read
support rows, genuine H02/H03 historical recovery/replay and H01's explicitly
structural legacy control passed under their own recorded profiles. Original
Facts/read, legacy document/replay, fixtures, facade and dependencies remain
unchanged; the only Store source change is the identical-value query-tag alias.

These source invariants and bounded tests establish the covered preservation
premises; they do not prove every possible backend/input behavior. The v2 private
codec is not inserted into v1 decode/commit/replay or the existing migration
boundary. No cross-profile equivalence or fresh authority from historical proof
is claimed. Pre-existing optional query/migration scale tests remain separately
identified as ignored, never passing acceptance evidence.

[US4](evidence/us4.md) now supplies actual producer closure, exact independent
projection, scoped wrapper correspondence and supported facade/CLI/transitive
consumer evidence. All39 package cases retain their original claims; all66 actual
v1 law cases explicitly compare bundle observations with independent record Facts.
The14-case consumer suite passes with a fresh source-bound CLI and canonical
dependency metadata. The [targeted re-audit](evidence/targeted-re-audit.md) is
reviewed independently of production/projection/schema authorship.

These are working-source checkpoints. Final clean frozen canonical gates and
exact pushed Git consumer evidence remain externally required before scoped
delivery closure. No final containing-commit SHA is embedded here, no numeric
version/tag is selected and no merge/release/pin update is performed.
