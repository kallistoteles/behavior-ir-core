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
their conformance assets. No new facade export or signature is planned.

## Explicit current wrapper schema correction

Two current v2 schema assets currently conflate ordinary Facts with observed bundle
evidence and use incorrect aliases for ordinary emitted fact sections. Introduce
a separate observed-evidence definition and redirect only action candidate and
action bundle references. Protect migration {}, ordinary/witness refs, legacy
schemas, decision/read schemas and existing valid historical document bytes.

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

Under the current [0.x policy](../../docs/versioning.md), this plan uses a
**conservative minor-class delivery assessment** because it includes correction
of a public wrapper schema's accepted domain and required consumer validation.
The runtime-only query parser repair could be patch-class if considered alone,
but this plan includes the scoped schema correspondence and records its impact.

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

This is a planning assessment from existing contracts/source, not final runtime
or release evidence. The implementation must demonstrate the required valid/invalid
schema cases, actual producer closure, v1 phase/error preservation and historical
archive/read/governance controls before claiming scoped completion. Frozen gates
and exact-revision evidence precede any separate release action.
