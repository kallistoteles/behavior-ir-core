# Query Evidence Domain Consistency — implementation report

Feature 025 consolidates the existing evidence contract and closes only missing regression coverage. The exact baseline `634023a6d504bac927192c964d945c7025b467c4` already passed issue #24's public reproduction. The 023 private strict Bundle Evidence decoder/projection is reused; no production code, schema, fixture, dependency, public API, canonical identity, historical profile or validation phase changes.

## Delivered behavior and contracts

- US1: `issue24_public_mark_matrix_preserves_state_and_authoritative_evidence` permanently covers R1–R5 through invoke and frozen evaluate/commit. All ten cases assert ALLOW, no evaluation publication, checked bundle/candidate preservation, query/empty-membership hash where required, exact Mark values, one history advance, exact archived bundle and plain-ID semantics.
- US2: three `locally_consistent_false_query_*_cannot_publish` tests cover five isolated false instance/definition/entity/capture-read/value claims. Correct member hashes and local acceptance do not bypass live truth: exact existing commit refusal, unchanged full authority, zero commit calls, then genuine successful counterpart.
- US3: six ordinary families and five strict bundle families remain separate. Both authoritative typed closure laws and complete ordinary projection are explicit. Ordinary capture order, optional/unknown/empty/null distinctions, strict unsupported-field/hash refusal and exactly-empty migrations remain unchanged. Existing closure/projection/conformance suites are reused.
- US4: historical custody/profiles, v1 deferred integrity, v2 integrity-before-projection, canonical/signature subjects, governance, archive/recovery, data/Behavior replay and command exposure retain their existing contracts. Approval can replace its characterization after adopting an actually delivered compatible release containing 023; this feature performs no adoption or publication.

## Performed validation

[Baseline reproduction](evidence/baseline-reproduction.json) verifies the sealed planning harness, all 4,635 regular source files and all artifact identities before reuse. [US1](evidence/us1.json), [US2](evidence/us2.json), [US3](evidence/us3.json) and [US4](evidence/us4.json) bind actual collection, commands, statuses, source/manifest/lock/CLI/fixture and log identities. The formatted Mark regression was rerun within the full consumer target.

| Owning target | Passed | Ignored |
| --- | ---: | ---: |
| Store strict evidence | 21 | 1 maintenance fixture writer |
| Store strict compatibility | 30 | 0 |
| Verify strict evidence | 145 | 0 |
| Verify strict compatibility | 7 | 0 |
| Verify ordinary facts/witness schema | 8 | 0 |
| Verify private bundle projection | 6 | 0 |
| Public consumer strict evidence | 15 | 0 |

These are 232 distinct Cargo tests, including one ten-case Mark matrix and three semantic tests with five total cases; repeated focused executions and internal producer/permutation cases are not double-counted. Every executed case passed. The pre-existing ignored fixture writer was never executed. Source stayed stable during each execution.

[Coverage](contracts/coverage.md), [inventory](evidence/coverage-inventory.json), [scope decision](evidence/scope-decision.md) and [review](evidence/review.md) map every FR/SC/AC/PO/N and supported pairing. All 4,637 protected tracked identities and the reviewer-owned checklist match baseline. Existing fixtures/reports from 023/024 are unchanged. Tests are initially green preservation controls; no new production bug fix or behavioral RED is claimed.

## Immutable candidate completion

T001–T025 are completed before the candidate commit. [Pre-freeze evidence](evidence/pre-freeze.json) records formatting, diff/link/bookkeeping and protected-source verification. T026–T029 remain pending in tracked text deliberately: commit/push, full unchanged `nix develop -c scripts/gates.sh`, exact `nix develop -c scripts/check-consumer.sh --rev <captured-sha>` and receipt sealing complete externally at `/home/kalle/validation-receipts/core-025/<captured-sha>/receipt.json`. The external receipt, not this pre-freeze report, attests those later outcomes and captures actual temporary Git dependency resolution before cleanup. No self-containing commit SHA is embedded here. Any later tracked/merge/release revision requires its own applicable checks.

This is bounded contract/regression assurance, not a whole-Core soundness proof. Merge, release, publication, issue closure and ecosystem adoption are separate actions.
