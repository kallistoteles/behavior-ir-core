# Implementation review — Unified Invocation Model

Status: implementation and required acceptance complete (37/37 tasks).
Validated source revision: 7f06f02875c20442b68f3e0b68c999cd2a54186f.
The subsequent acceptance commit changes only this review, tasks and the evidence log.
This review does not claim Core-wide mathematical soundness or feature 013 completion.

## Functional requirements

| Requirement | Implementation / evidence | Result |
|---|---|---|
| FR-001 | RequestedInvocation; shared 0–3 binding conformance | Pass |
| FR-002 | resolve; private resolved state; canonical binding facts | Pass |
| FR-003 | invoke_resolved dispatches only after shared resolution | Pass |
| FR-004 | identity-only documents; Store loads immutable entity versions | Pass |
| FR-004a | unchanged resolved evaluation/read entry points and legacy fixtures | Pass |
| FR-004b | Snapshot validation; universe values extend resolution; contradictions and incomplete evidence fail before evaluation | Pass |
| FR-005 | identity/type/existence tests, read/action comparison | Pass |
| FR-006 | missing, extra and non-state binding resolver tests | Pass |
| FR-007 | unified alias refusals; original legacy behavior preserved | Pass |
| FR-008 | shared canonical invocation envelope and hash | Pass |
| FR-008a | refusal/evaluation separation; no inner record before evaluation | Pass |
| FR-008b | rehashed contradictory envelope/inner tests | Pass |
| FR-008c | independent errors, no cascading, archived decode evidence | Pass |
| FR-009 | Core and historical Store replay, all goldens and mixed history | Pass |
| FR-010 | refusals/reads unchanged head/history; only explicit commits append | Pass |
| FR-011 | common capability intent, metadata stays outside evaluation | Pass |
| FR-012 | Store::invoke_intent for both kinds and all arities | Pass |
| FR-013 | state/context/targets and malformed identity refusals | Pass |
| FR-013a | original fixture suites and superseded doc comments | Pass |
| FR-013b | new invocation documentation and development guidance | Pass |
| FR-013c | frozen legacy suites plus new semantic conformance | Pass |
| FR-014 | no admission rule/domain changes; all 595 frozen keys unchanged | Pass |
| FR-015 | declared-read guidance in docs/invocation.md | Pass |
| FR-016 | MVP 595-key subset unchanged; all 595 frozen keys unchanged | Pass |
| FR-017 | same tagged hash formula; independent full-hash equality including Unicode and non-ALLOW | Pass |
| FR-018 | explicit facade, consumer tests and three CLI commands | Pass |
| FR-019 | PRINCIPLES.md §16 and documented examples | Pass |
| FR-020 | no binding implementation changed; ecosystem adoption remains separate | Pass within Core scope |

## Success criteria

| Criterion | Evidence | Result |
|---|---|---|
| SC-001 | 19 applicable outcome/arity combinations, both capability kinds | Pass |
| SC-002 | all 26 golden envelopes replay; semantic/transport distinction and additional negative cases | Pass |
| SC-003 | zero/one/multiple bindings via one intent shape and host context | Pass |
| SC-004 | admission tests unchanged; final subset digest passed | Pass |
| SC-005 | 595 frozen keys preserved in the final digest | Pass |
| SC-006 | 22 fresh verifier checks match reviewed expectations; runtime confirms findings | Pass |
| SC-007 | repeated refusals and mixed history leave only four explicit commits | Pass |

## Validation

See [implementation-log.md](../implementation-log.md) for genuine compiled red
observations and subsequent pass results. Compiler failures and already satisfied
regressions are explicitly distinguished from semantic test-first evidence.

- MVP: 333 Core/Store tests passed, 17 ignored; 595 frozen keys unchanged.
- Targeted replay/intents/store/CLI/consumer/verification tests passed.
- Release performance: three alternating 1,000-run trials, unchanged limit 1.1;
  observed pass at 1.092× and after removing temporary profiling at 1.096×.
- First final gate: infrastructure failure, full disk while compiling; no pass
  claimed. Regenerable Cargo artifacts cleared; full rerun passed.
- Final full gate: passed, 449 workspace tests (21 ignored), 10 consumer tests.
- Final digest: all 595 frozen keys unchanged. Final required release-mode performance test: passed.
- Release check: passed on the validated source revision; two byte-identical
  builds, version 0.11.0, empty-environment admit/evaluate/replay and exact
  tracked schema/fixture archive. Artifacts: /tmp/012-release-7f06f02.
- Post-implementation extensions: .specify/extensions.yml absent; no hooks.

## Deviations and rationale

1. Core-to-Verifier hash equality lives in the Verifier tests to retain layering;
   Core tests independently derive the hash from SHA-256 and canonical bytes.
2. Fixture directory documentation and verifier expectations live under the new
   invocation directory so existing frozen fixture bytes remain untouched.
3. Python jsonschema is a development/test-only dependency for independent
   Draft 2020-12 validation; the referenced original schema test was not a JSON
   Schema validator. No Rust crate was added.
4. Document APIs return Result for transport/canonicalization failures rather
   than constructing false or empty-hash evidence.
5. Decode refusals archive original documents/snapshot/context when needed to
   reconstruct the refusal. Incomplete snapshot evidence is distinguished from
   contradictory facts; consistent facts may add values to resolution.
6. The determinism gate invokes a separately tested helper, runs every new case
   twice and replays it, and preserves the frozen output digest key set.
7. Immutable SchemaHash memoization and internal ownership/serialization reuse
   meet the wrapper budget without changing semantic validation or hashes.

## Follow-ups

- The effect/admission rule belongs to a later Wire IR version, not 012.
- Optional bindings require a separate semantic design.
- Python and other bindings adopt a published Core Release in an ecosystem
  feature numbered 500 or above; this implementation publishes nothing.
- Known Core-wide verifier/trust/history defects belong to 013's mandatory
  G1/G2/G3 foundation. No command story is accepted before those checks pass.
- Artifact construction and release verification do not authorize publication
  or product tag creation.
