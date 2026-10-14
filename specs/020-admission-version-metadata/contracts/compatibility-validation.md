# Contract: Compatibility and Validation Evidence

This is the acceptance design for [Core020](../spec.md), not a passing implementation receipt. All test/gate execution below belongs to the later implementation phase.

## V020-01 — Complete bounded admission matrix

Use the five existing positive witnesses listed in [research.md](../research.md#r3--test-independent-truth-then-public-agreement). Confirm actual declaration and successful admission through Core, the supported facade and CLI. Independently assert the exact ordered expected set; agreement between two delegates alone is insufficient.

| Case | Required observation |
| --- | --- |
| Valid module witness for each 0.4–0.8 | Admitted, advertised and selected under its existing profile; CLI status 0. |
| Otherwise-valid module declaring 0.1, 0.2 or 0.3 | Refused as UNSUPPORTED_IR_VERSION; absent from advertised set; CLI status 2. |
| Representative unknown/future/noncanonical strings: 0.9, 1.0, 0.4.0, leading-space 0.4, empty string | Same category/status and unchanged supplied spelling; support clause equals advertised set. |
| Missing/null/bool/number/array/object version | Existing structural DECODE_ERROR, status 2; no inferred/default version. |
| Duplicate raw dispatch key, including identical and conflicting values | Existing ambiguity rejection before profile/body interpretation. |
| Supported version with missing/malformed body field | Existing body error rather than unsupported-version refusal. |
| Ad hoc read witness at 0.7 and the same document at 0.4/0.5/0.6/0.8 | Existing read gate: 0.7 succeeds, other versions refuse. |
| Repeated metadata/refusal requests | Same canonical output and status. |

Retain existing minimum-feature gates and Wire 0.8 strict/profile controls. In-memory/temporary document mutations do not rewrite frozen fixtures. Every exercised matrix row must be collected and reported; no skipped or uncollected case is passing evidence.

## V020-02 — Test-first and preservation

Write/review new regression assertions and narrow corrections to the three false-list expectations before production edits. Collect targets and retain actual behavioral failures against the inspected source base. Metadata still advertising 0.1–0.3 and refusal still omitting 0.8 are required RED observations; a build/setup failure is not one. Valid controls must demonstrate that witnesses are usable. Record command, source/overlay identity, status and output; do not repurpose old audit evidence as new RED.

After implementation, preserve all existing schema/fixture bytes, successful admission identities, canonical serialization, unrelated metadata and supported historical replay. Existing hash/serialization/read/command/replay suites are normative controls. Do not regenerate their golden outputs to accommodate this reporting fix.

Compare baseline/candidate outputs with a narrow difference allowance: the `accepted_wire_ir` value and the generic refusal support list. Do not mask arbitrary messages or all admission errors. Whole conformance output digest equality is not required because corrected support text is intentionally different; frozen-file digest equality and unchanged semantic outputs are required.

## V020-03 — Requirement coverage

| Requirement | Planned evidence |
| --- | --- |
| FR-001, FR-011 | Private shared lookup/projection code review; independent version witnesses and support/report agreement; future version additions require the same evidence. |
| FR-002 | Core/facade/CLI exact-array, order, duplicate and delegation assertions. |
| FR-003 | Every covered excluded/unknown string has preserved supplied-version evidence and the complete five-version clause. |
| FR-004 | All three legacy refusals; existing exact-arithmetic migration controls. |
| FR-005 | Frozen historical `wire_ir` and separate read/record/store/verifier inventories; read-document gate control. |
| FR-006 | Metadata shape/unrelated-value comparison; category/status checks; preserved non-support text and feature-minimum diagnostics. |
| FR-007 | Existing identities, schemas/fixtures, serialization, strict profiles and same-profile replay controls. |
| FR-008 | V020-01 across the Core/facade/CLI boundaries, plus existing strict/minimum-feature controls. |
| FR-009, FR-010 | Recorded consumer inventory, migration notes and existing-contract/minor-class assessment; canonical and exact-revision validation. |

SC-001/002 require complete supported-version agreement and complete support clauses. SC-003 requires frozen compatibility controls. SC-004 requires deterministic representation and distinct document-kind domains. SC-005 requires the consumer/release evidence below.

## V020-04 — Consumer and release consequences

Correct only the accepted-list expectations in Core `versions.rs`, CLI `cli_engine_info.rs` and facade `resulting_state_validity.rs`; retain their unrelated assertions. Add facade-only acceptance using `behavior-engine`, never internal crates.

Migration notes must describe corrected fresh-module values, retained historical inventory, preserved fields/categories/statuses and the refusal text's added 0.8. Consumers selecting a fresh module version use `accepted_wire_ir`; historically known versions do not imply admission. Exact old value/text assertions must adapt; no new consumer-contract version preserves the bug.

The read-only ecosystem inventory identifies `python/tests/test_core_alignment.py` and `docs/versioning.md`, currently against published Core 0.12.0. Their eventual update belongs to separately adopting a published corrected release with canonical pin/assets/dependency metadata. Core020 changes no ecosystem pin or tracked override. No inspected test compares the entire stale refusal text; external exact-text dependencies remain a documented compatibility concern, not an assertion of universal compatibility.

Assess this public reporting correction conservatively as minor-class under [Core's 0.x policy](../../../docs/versioning.md#release-version-policy-0x). This neither selects a numeric release nor authorizes publication.

## V020-05 — Final revision and scoped closure

The required gates remain `nix develop -c scripts/gates.sh`. Final facade validation additionally uses `scripts/check-consumer.sh --rev` against the frozen pushed candidate, from its exact clean checkout and CLI. Retain actual Git dependency resolution, repository/SHA, commands/statuses, pinned toolchain/environment and logs in CI or an external immutable receipt.

Finalize tracked reports/tasks before freezing. Do not embed the final containing-commit SHA in those same tracked reports. A changed source/report or later merge/release SHA needs fresh final checks. Successful planning, ancestor gates or a local override do not attest implementation or published-release compatibility.

Targeted re-audit may close F-COORD-011 / RC-004 only when authority, outcomes, preservation and consumer evidence are established. It does not close unrelated Core016 findings or prove whole-kernel soundness.
