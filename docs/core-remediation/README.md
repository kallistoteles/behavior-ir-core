# Remediation discussions after audit 016

This work separates five correction proposals from the completed audit. Each has
its own draft specification, decision record, branch and draft pull request. The
current deliverable is a discussion setup: no correction, implementation plan or
task list has been approved or implemented here.

Start with **017**, then **018**. Investigations of the other proposals may proceed
in parallel; each contract is decided independently before planning its correction.

## Navigation and traceability

| Proposal | Original finding | Classification | Draft specification | Decisions | Pull request |
| --- | --- | --- | --- | --- | --- |
| RC-001 / 017 — Complete resulting-state validity | F-INCREMENTAL-001 | S0 / High | [017 specification](https://github.com/kallistoteles/behavior-ir-core/blob/017-resulting-state-validity/specs/017-resulting-state-validity/spec.md) | [017 decisions](https://github.com/kallistoteles/behavior-ir-core/blob/017-resulting-state-validity/specs/017-resulting-state-validity/decisions.md) | [Draft #16](https://github.com/kallistoteles/behavior-ir-core/pull/16) |
| RC-002 / 018 — Strict, profile-aware replay | F-PERSIST-001 and F-TRUST-001 | S3 / Medium, separately tracked | [018 specification](https://github.com/kallistoteles/behavior-ir-core/blob/018-strict-profile-replay/specs/018-strict-profile-replay/spec.md) | [018 decisions](https://github.com/kallistoteles/behavior-ir-core/blob/018-strict-profile-replay/specs/018-strict-profile-replay/decisions.md) | [Draft #15](https://github.com/kallistoteles/behavior-ir-core/pull/15) |
| RC-003 / 019 — Store creation failure contract | F-PERSIST-002 | S4 / Medium | [019 specification](https://github.com/kallistoteles/behavior-ir-core/blob/019-store-creation-contract/specs/019-store-creation-contract/spec.md) | [019 decisions](https://github.com/kallistoteles/behavior-ir-core/blob/019-store-creation-contract/specs/019-store-creation-contract/decisions.md) | [Draft #18](https://github.com/kallistoteles/behavior-ir-core/pull/18) |
| RC-004 / 020 — Admission version metadata | F-COORD-011 | S5 / Medium | [020 specification](https://github.com/kallistoteles/behavior-ir-core/blob/020-admission-version-metadata/specs/020-admission-version-metadata/spec.md) | [020 decisions](https://github.com/kallistoteles/behavior-ir-core/blob/020-admission-version-metadata/specs/020-admission-version-metadata/decisions.md) | [Draft #14](https://github.com/kallistoteles/behavior-ir-core/pull/14) |
| RC-005 / 021 — Canonicalization error handling | F-QUALITY-001 | S6 / Low | [021 specification](https://github.com/kallistoteles/behavior-ir-core/blob/021-canonicalization-errors/specs/021-canonicalization-errors/spec.md) | [021 decisions](https://github.com/kallistoteles/behavior-ir-core/blob/021-canonicalization-errors/specs/021-canonicalization-errors/decisions.md) | [Draft #17](https://github.com/kallistoteles/behavior-ir-core/pull/17) |

The source of the findings is the immutable
[016 findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md).
The draft proposals do not close those findings. In particular, 019 addresses an
underspecified contract, not a reproduced partial-create implementation defect;
021 addresses a scoped error-handling risk, not a demonstrated authorization forgery.

## Common baseline

All five branches and this coordination branch start independently from
`5949cb111cd6c5af34b0fc9083e78810df450fce`, the fetched `main` revision at setup.
This has the same source tree as the audited release revision
`1e286ebcf1d61117320c57df155fa1ef9397e880`:
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`.
Audit evidence was published separately at
`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9` on `016-core-soundness-audit`.

Audit reports, raw failing runs, manifests, checklists and the original verdict
remain unchanged. The audit records what was established at its revision. It is
evidence, not a correction branch, and must not be presented as fixing Core.
Future implementation and verification must identify their own exact revisions.

## Discuss one contract at a time

For each feature, use this sequence:

1. Read the minimized finding and its normative invariant. Separate demonstrated
   defects, source arguments, documented assumptions and unestablished obligations.
2. Resolve the numbered questions in `decisions.md`, one at a time. Recommendations
   are provisional. Record the selected contract, rejected alternatives, reason and
   compatibility/versioning consequences in the feature; do not infer a selection
   from a draft requirement or from passing tests.
3. Update `spec.md` and its specification-quality checklist. A draft with unresolved
   contract decisions is ready for discussion, not for planning or implementation.
4. Once the contract is agreed, proceed through clarify, plan, tasks and implement
   for that feature. Apply the Core constitution's test-first requirements and
   repository gates; preserve failing evidence before introducing the correction.
5. Review the resulting change against its own requirements and the
   [targeted re-audit protocol](targeted-re-audit.md). Record fresh evidence separately
   from 016 and close only the propositions actually discharged.

Every remediation must retain this explicit chain:

```text
016 finding + exact proof obligation
  -> remediation requirement + agreed contract
  -> failing regression on a named baseline
  -> smallest correction on a named revision
  -> positive and negative controls + required gates
  -> independent review + scoped re-audit conclusion
```

For 019 and source-only parts of 021, a future contract test must not be described
as an existing audit reproducer. New failures establish the newly agreed contract's
implementation gap; they cannot retroactively establish a stronger old contract.

## Parallel work without coupling decisions

One person coordinates decisions and owns the traceability index. A feature author
owns that feature's documents and, later, its isolated implementation branch. A
different reviewer checks the mathematical argument, controls and compatibility.
An evidence runner serializes expensive required checks and records exact revisions.
These roles may be reassigned, but an author does not supply their own independent
review.

017 and 018 receive first attention because they contain all known S0–S3 findings.
019's outcome algebra must be settled before changes to `Backend::create`. 020 and
021 can be investigated independently, subject to their public error/API decisions.
Shared source edits or incompatible API choices are integration dependencies to
record in later plans; the independent draft branches do not preselect their order.

No draft author may silently fix a finding while writing its specification. Changes
to semantics, hashes, records, admission or public APIs require an explicit agreed
correction and compatibility assessment before implementation. A future ecosystem
dependency update is separate work against a published Core Release.

## Current completion boundary

This setup is complete when the five draft specifications and decision records are
published, their unresolved questions are visible, and their links and source
traceability have been checked. It does not establish runtime correctness. The
original [016 assessment](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/audit-summary.md)
remains **NOT YET SOUND** for the audited revision. No global verdict is changed by
creating these proposals.
