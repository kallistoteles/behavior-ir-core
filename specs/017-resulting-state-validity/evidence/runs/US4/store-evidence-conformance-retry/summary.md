# Scoped Store evidence and historical reference-index conformance

The pinned command in `run.json` compiled and executed **six conformance tests
and five evidence tests: 11 passed, none failed or ignored**. The source digest
manifest reports no source/test changes during execution. The reference backend
passes all 31 named cases, each deliberately broken backend fails its designated
case, and reversed index enumeration remains a passing control.

Current action validation derives incoming references from the complete parent
snapshot. That sound omission of redundant backend calls meant the original
`existence_snapshot` case stopped detecting a backend whose `incoming_at` ignores
its historical position. The original integrated run retained four passing
conformance tests and one failing mutant-detection test. A new focused regression
in `../store-conformance-red` first passed the reference case and then failed
because the current-only mutant incorrectly passed. The compiled negative result
was reviewed before changing conformance code.

The correction preserves the existing Current action/racing-commit control and
its exact observed incoming-reference fact at position zero. It additionally
checks the independent `StoreFacts` contract: Customer#c3 has no incoming edges at
position zero and exactly Account#n9.owner at the landed position one. The mutant
now fails with an explicit historical incoming-reference diagnostic. This adds
conformance coverage; ordinary Store evaluation, backend contracts and semantic
reference handling were not changed. Backend fact errors are propagated through
their existing typed string payload. A first intended-green command failed to
compile because `FactError` has no Display implementation; that attempt is retained
in `../store-evidence-conformance-green` and is not a behavioral test result.

The original ledger's transfer preservation claim is **INCONCLUSIVE**, because the
verifier does not yet encode canonical same-type child identity ordering for two
Account bindings. The tests preserve that blocking finding and demonstrate that
`require_verified` refuses its structural authorization and Store commit writes
no record. This is verifier incompleteness, not a verified transfer claim.

Positive optional structural-evidence tests use a separate explicitly admitted
test module containing exactly the unchanged ledger's `freeze` and `touch`
actions. The action set is asserted. All Store creation, evaluation, attestation,
authorization and commit/rederivation paths use that exact module. Wrong candidate,
policy, authorization time and Store bindings remain rejection tests. No report
was rewritten to remove a finding, no signature guarantee was invented, and
original ledger/policy fixtures remain unchanged. The no-evidence Store control
continues to use the original ledger and its transfer workload.

The environment disables incremental build caches and debug symbols and limits
build concurrency to two; overflow checks and debug assertions retain defaults.
Scoped formatting and `git diff --check` passed. These targeted results do not
replace the repository's final gates, canonical complete consumer script or
release validation. The related facade-only persistence conformance control has
its own actual transcript in `../store-conformance-facade`.
