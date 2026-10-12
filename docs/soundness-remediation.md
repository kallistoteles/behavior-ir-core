# Core soundness remediation

The read-only audit of revision `2c176a0ea98e3168186fd0e9ff0af9468173513b` identified five
reproduced implementation defects and one formal-model gap. This remediation changes no
command primitive or external dispatch boundary.

| Finding | Correction | Regression evidence |
|---|---|---|
| F1: filter success assumed while checking filter failure | Filter obligations use base membership and short-circuit paths. Only projection items assume successful final membership. | Verifier read soundness tests, including false final predicate, false nested base, difference and authenticated proof |
| F2: read validity weaker than verifier assumptions | Wire 0.8 reads capture and validate complete S, validate entity-valued input/context constraints, and never impose state invariants on those arguments. Legacy read proofs assume only runtime-guaranteed domains. | Core, Store and Verifier read soundness tests |
| F3: duplicate JSON keys disappear during invocation decoding | Strict decoding precedes map reduction at the unified transport boundary and current read entry points. | Duplicate/nested-duplicate transport regressions |
| F4: diagnostic provenance changes read identity | New domain-separated read record v2 excludes provenance/display text and retains structured semantic failures. Diagnostics remain a separate host-side value. | Relocation, parser and replay regressions |
| F5: failed filters lack replay evidence | v2 archives the complete captured snapshot and evaluates filters in the same evaluator that records semantic failures and observations. | Plain and Store failed-query replay regressions |
| F6: transition signature omits used-identity history | `T_B(S,I,C,F_H)` makes historical facts explicit; StateId still identifies only live state content. | Updated PRINCIPLES model; existing lifecycle/history conformance tests |

Verifier semantics are versioned as 0.8.0. Cache identities, obligation descriptors and
authenticated manifests all use that version. A historical 0.7.0 proof can be decoded and
audited without becoming a current proof. Existing policy and golden-vector fixture bytes
remain unchanged; current examples opt into a new explicit policy pair.

Read record v1 remains supported with its original replay semantics, including historical
Wire 0.8 records. v2 is emitted for new Wire 0.8 reads. It binds behavior/read identity,
normalized arguments, data version, captured snapshot, actual observations and semantic
result. Validation snapshot reads are not fabricated as body observations. Detached
diagnostics do not participate in typed record equality or canonical round trips. Capability
responses omit the internal failure operands retained in the record. No adapter is invoked
by read evaluation, verification or replay.

The v1 compatibility path preserves historical interpretation; it cannot recover facts that
an old failing record never captured, or remove provenance from an already-hashed record.
New v2 records close those gaps without rewriting existing evidence.

The subsequent review reproduced three additional replay defects in the candidate. Query
validation now includes the resolved current read, whether declared or ad-hoc, including
projection and fold queries. The historical registry remains unchanged for v1 replay, including
its original query-agreement refusals. Current snapshots normalize typed entity/field values
before observations are merged, so equivalent exact decimal encodings have identical evidence
and contradictory values still refuse. Query facts continue to be checked against the complete
universe.

If transport decoding cannot establish a request, v2 retains its original text in
`refused_request`. Standalone replay repeats that decoding refusal instead of inventing
an empty request.
This field is permitted only on unevaluated `INVALID_INPUT` records with empty derived and
observed evidence; the codec independently checks that the text is actually refused. Capability
responses omit it. The standalone read-document format remains 0.7; an admitted read against a
Wire 0.8 module uses current evaluation/evidence. Legacy v1 evaluation and bytes remain frozen.

Regression evidence includes successful and empty query results, projections, ad-hoc captures,
fold field observations, decimal representation equivalence, contradictory facts, strict
decoding refusals, historical v1 refusals and store reads replayed after the source store is
dropped.

Tests are correctness evidence, not a formal proof for the entire kernel. These corrections
address the audit's concrete defects; backend durability, solver correctness and trusted-key
custody remain explicit contract assumptions. No global completeness theorem is claimed.

## Store replay boundary correction (feature 018)

The [immutable 016 audit findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md)
identify RC-002's two replay defects: F-PERSIST-001, historical Wire 0.8 read-v1
reinterpreted through fresh Store evaluation, and F-TRUST-001, duplicate current read-record
keys lost before validation. [018](../specs/018-strict-profile-replay/spec.md) corrects
Store read and nested invocation replay using shared strict preparation and a checked
recorded-profile selector. These internal Core/Store hooks do not extend the supported
`behavior-engine` facade or the Backend contract.

The reference remains the evaluator under the same recorded profile, separately for each
supported profile/version combination. Equivalence between v1 and v2 is not required.
Historical v1 bytes, provenance, query-registry refusals and omitted-capture limits remain
unchanged; v2 retains complete snapshots, actual observations, semantic failures and
detached diagnostics. Fresh Wire 0.8 emission remains v2. Store replay additionally checks
actual historical coordinates, schema, behavior, typed bindings and facts. A standalone
match does not establish those Store obligations.

Replay keeps its existing Boolean match result and optional string difference. Ambiguity
is a deterministic non-match, and actually performed backend failures retain their existing
operational channel. Two independent construction probes cover ordinary current action
replay and a genuine decoded-document refusal whose valid action intent could otherwise
produce a bundle from the Store. Both replay routes now suppress fresh bundle construction
while preserving public fresh invocation. Historical/current action semantics from 017 are
preserved. The [Store review](../specs/018-strict-profile-replay/evidence/us3-store-review.md)
and [execution ledger](../specs/018-strict-profile-replay/evidence/execution-ledger.md)
separate genuine RED/GREEN results from conditional arguments and pending final validation.

A separate pre-existing reconstruction limitation remains disclosed: Store-origin raw
transport refusals can match standalone while mismatching Store replay if malformed
request sections were echoed as `{}`. This is follow-up evidence, not a retroactive
restriction of the read contract. The
[matrix and boundary limits](../specs/018-strict-profile-replay/contracts/support-matrix.md)
retain every required supported cell and distinguish this case from captured binding refusals.

This correction changes no Wire IR, BehaviorHash/SchemaHash rule, record format, verifier
version or public result algebra. It supplies targeted replay evidence, not a whole-kernel
soundness verdict. Final gates and consumer validation must bind the frozen candidate SHA
through the external/CI receipt described in the
[validation guide](../specs/018-strict-profile-replay/quickstart.md).
