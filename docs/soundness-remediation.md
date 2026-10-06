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
`refused_request`. Replay repeats that decoding refusal instead of inventing an empty request.
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
