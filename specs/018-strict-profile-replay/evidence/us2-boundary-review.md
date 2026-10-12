# US2 — strict evidence boundary and result algebra

The US1 shared preparation also closes the duplicate-key defect. No further
production strictness correction is indicated by the reviewed US2 cases. The
genuine pre-correction duplicate RED remains the foundation exact-name receipt;
passing additional cases are preservation evidence, not fabricated new failures.

## Boundaries and diagnostic contract

Core `read::prepare_read_replay` calls existing `canonical::decode_strict` before
any evidence becomes a JSON map. Core invocation replay uses strict decoding
directly for CommandIntents and through its existing `parse` for Legacy; both
reject duplicate decoded keys recursively. Store read consumes checked preparation.
Store invocation's existing whole-envelope Core preflight precedes its ordinary
JSON parse. That second parse operates only on already strictly decoded evidence.
No in-scope lossy raw preflight remains.

The decoder rejects contradictory and equal duplicates, including escaped names
that decode to the same key, before retaining either value. It rejects fractional,
exponent and out-of-domain numeric forms. Source whitespace and object
representation order remain nonsemantic. Unknown extra record fields are handled
by existing full reproduction/comparison; no new eager closed-document rule has
been introduced. Frozen legacy request decoding is unchanged.

A current `refused_request` is raw string evidence. Preparation passes it to the
unchanged reference evaluator rather than decoding its content as an enclosing
object. V1 still refuses the unsupported field. A legitimately reproduced
transport refusal can match in standalone replay; it does not acquire fictitious
Store coordinates or Store-origin authority.

`record::ReplayResult` is unchanged: Boolean `matches` and optional string `diff`,
omitted on match. Malformed/ambiguous/mismatching evidence yields false with a
nonempty deterministic reason. The decoder provides key and line/column details;
018 promises no new public reason grammar or exact nested JSON path. Existing
semantic comparison paths and reference first-difference precedence remain intact.
Store operational failures remain on the existing error channel. Faithfully
reproduced semantic errors/refusals may match; they are not operational failures.

## Evidence

US2-before and US2-green receipts in the execution ledger identify collected
tests and the exact working source/test digests. Core and Store suites cover all
applicable cells for root/nested/equal/escaped duplicates, original-last-value/hash
attacks, malformed syntax, unknown fields and numeric representations, whitespace
and reversed object order. Independently rehashed false output remains nonmatching.
Property cases vary fixture row, supported boundary and formatting.

Store cases pair Core results only after coherent Store setup and assert unchanged
canonical genesis/head/history/versions/schema/reference contents. Consumer tests
import only `behavior_engine`: field access and serialization preserve bool,
`Option<String>`, omission on match and exactly the existing two mismatch fields.

| Requirements / obligations | Evidence |
| --- | --- |
| FR-004/005, P018-01/10 | Shared strict preparation before reduction; recursive ambiguity/numeric cases; frozen request/refused-string controls. |
| FR-011, SC-001/002 | Foundation duplicate semantic RED, named GREEN regression and all supported strictness cells. |
| FR-014, P018-08 | Repeated nonempty string diffs, unchanged serialization/API, facade result-shape tests. |
| SC-006, P018-10 | Independent required-case guard and executed coverage reconciliation; no silent unsupported defaults. |

Full US3 fault/authority coverage and exact frozen-candidate gates remain pending
at this checkpoint. Decoder behavior is established by source invariants and
empirical tests, not by a new language or record format.
