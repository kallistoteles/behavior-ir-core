# Origin, 019 closeout and remediation priority

## Independent feature boundary

023 remediates **F019-EXTERNAL-QUERY-001**, a pre-existing Core correctness defect
discovered by broader testing during 019. It does not extend Store creation
semantics or amend the historical 016 audit. Its scope is the strict bundle/candidate
observed-evidence boundary described in [the specification](spec.md).

The retained finding is S5 / Medium: valid query-bearing transitions are refused
before commitment. The demonstrated behavior is false rejection, not an observed
unsafe ALLOW or proof that invalid state can commit. Its priority is high because
a supported write path is blocked; this does not relabel it as an S0 finding.

## 019 closeout

The frozen 019 candidate is
`6ad357c7e9960ce6771fd435adcec9f8018fb7d6` on
`019-store-creation-contract`. Its creation contract is implemented and verified
within the documented scope and Backend/durability assumptions. The candidate's
[implementation report](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/specs/019-store-creation-contract/implementation-report.md)
and [targeted re-audit](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/specs/019-store-creation-contract/evidence/targeted-re-audit.md)
define that bounded conclusion.

The external exact-revision receipt is retained at
`/home/kalle/validation-receipts/core019/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/receipt.json`.
It records successful canonical `nix develop -c scripts/gates.sh` and
`scripts/check-consumer.sh --rev 6ad357c7e9960ce6771fd435adcec9f8018fb7d6` runs,
commands, statuses, environment, log locations and matching source identities.
The receipt is external evidence, not a file available from the GitHub source
links. 019's final task closure follows its approved immutable-receipt model.

Broader testing found F019-EXTERNAL-QUERY-001, which remains open.
**Full v2 Store conformance is not established.** Passing 019's creation checks
and the tests collected by the repository gates does not establish correctness
of the blocked ordinary v2 query-transition path. 019 does not repair the query
format, weaken Facts parsing or call that supported path unsupported.

At this closeout, the frozen 019 implementation candidate is pushed and validated,
not merged or released. The original [specification PR #18](https://github.com/kallistoteles/behavior-ir-core/pull/18)
was merged separately; that draft merge does not include the later implementation
candidate. This specification does not merge that candidate, publish it, alter
its frozen source or revise its receipt. Any subsequent delivery revision needs
its own applicable validation.

## Finding and reproduction

The immutable [finding](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/specs/019-store-creation-contract/evidence/follow-up-findings.md)
records these results on the existing `orders_history` workload and a normal
reference host:

| Genesis/evidence profile | Indexed host | Optional index declined |
| --- | --- | --- |
| v1 | Nine evaluation records and eight commits; final head 8 | Same |
| v2 | `BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts`; head remains 0 | Same |

These profile names concern Store genesis/trusted evidence. They do not denote
Wire IR or read-record versions. Supported nonempty query reads passed under both
profiles; this finding concerns ordinary transition candidate consumption.

Discovery source, source digest, log and status remain at
`/home/kalle/validation-receipts/core019-work/us3-conformance/`:
`query-diagnostic-source.rs`, `query-diagnostic-source.sha256`,
`query-profile-diagnostic.log` and `query-profile-diagnostic.status`.
The temporary diagnostic only printed outcomes and was removed. It is not a
passing regression, a failing assertion or evidence that correction was
implemented test-first. 023 implementation must first write and execute a real
asserting regression on its named baseline.

Planning custody review identifies the diagnostic's recorded in-flight HEAD as
`99fec008c9fa2be13d759f9187399215c20cd053` with dirty working source. Its retained
source digest is `2bbd34ccf73f17e024e124517e9be352c8fbe740551695321b3dd289fd06d43b`.
It is not byte-identical to the final 019 private conformance file. Relevant
committed parser/producer/history helpers retain the same defect at the frozen
revision, supporting the source finding without implying an exact frozen runtime
reproduction. The new asserting RED must establish that separately.

Exact baseline source arguments:

- Store [facts_json](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/crates/behavior-store/src/store.rs#L3067)
  adds the existing query-result hash to bundle observations.
- Trusted [candidate consumption](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/crates/behavior-verify/src/governance/trusted.rs#L154)
  passes those observations to the ordinary Facts parser.
- The closed [ordinary query Facts schema](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/crates/behavior-core/src/facts.rs#L372)
  excludes `result_hash`, producing the refusal.
- The independent [historical observation comparison](https://github.com/kallistoteles/behavior-ir-core/blob/6ad357c7e9960ce6771fd435adcec9f8018fb7d6/crates/behavior-store/src/store.rs#L2244)
  must remain mandatory after the document-kind correction.

These references explain the defect; they do not prescribe module layout or a
new public API. Result-hash generation's existing default suppression is a
separate input-domain/error-contract concern and is not asserted to be this
failure's cause.

## Numbering and selected work order

020 (`020-admission-version-metadata`), 021 (`021-canonicalization-errors`) and
022 (`022-replay-evidence-authority`) already have published feature branches.
020 is therefore not available for reassignment. 023 is the next free number;
existing specifications, audit references and proposal numbers remain intact.
Feature numbering does not determine implementation priority.

The selected order is:

1. Close out 019 within its creation scope and preserve the open query finding.
2. Specify, clarify, plan, task, analyze and implement 023 separately.
3. Re-run targeted v2 query/evidence conformance and re-audit the affected
   trust/query/evidence obligations.
4. Resume 020, then 021, under their separately agreed contracts.

Including the earlier dependencies, the work order is
**017 → 018 → 022 → 019 → 023 → targeted re-audit → 020 → 021**.
This extends the [existing coordination index](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md).
The priority change is a work-order decision, not proof that every earlier branch
has merged into main.

023 starts from the frozen 019 candidate, which already integrates the relevant
017/018/022 corrections. Merge order must respect that dependency; later
integration or rebase requires fresh verification. 023 uses its own branch and
worktree and does not change 019's sealed candidate.

## Current completion boundary

The 023 specification, accepted clarification, specification-quality review,
Phase 0/1 [implementation plan](plan.md) and dependency-ordered [tasks](tasks.md)
are established by this setup. The
clarification preserves v1's historical decode-versus-commit boundary and applies
strict integrity validation before Facts projection at the v2 candidate boundary.
The plan defines the supported producer–consumer matrix, scoped current wrapper
schema correction and conservative compatibility assessment. No correction code,
executable regression, conformance closure, global soundness verdict or release is
claimed. The next phase is cross-artifact analysis before implementation.

The future targeted re-audit must examine closed document domains, result-hash
integrity, exact semantic projection, retained historical fact verification,
profile compatibility and the producer–consumer law. It does not rerun or amend
016 from scratch. Unrelated 016 findings remain independently tracked.
