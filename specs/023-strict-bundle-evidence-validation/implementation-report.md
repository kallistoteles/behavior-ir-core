# 023 implementation report

Supported query-bearing v2 transitions now consume the bundle evidence that Core
itself emits. The exact `orders_history` workload progressed from the original
`BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts` refusal at head0 to
nine evaluation records, eight commits and head8. The independently authenticated
version also commits all eight transitions. This remediates
F019-EXTERNAL-QUERY-001 on working source; final delivery closure depends on the
external immutable-revision receipt.

## Implementation and preserved obligations

The private Verify codec separates closed bundle evidence from ordinary Facts.
It checks required fields/types, canonical nullable values, strictly increasing
semantic keys and the existing query-result digest before constructing owned
validated evidence. Projection removes only recognized query integrity metadata
from a temporary view and delegates to the unchanged ordinary Facts parser.
The original candidate JSON, hash and signature subject remain intact.

The only Store production change is an alias to the same existing query-result
domain constant. Its producer encoding and historical observation comparison
are unchanged. Integrity never substitutes for exact parent/history/schema,
identity freshness, signatures/context, full resulting-state validity, CAS or
atomic publication. Rehashed and freshly authorized fabricated memberships still
fail historical commitment without publication.

V1 retains structural decode followed by historical commit validation. All16
baseline phase/category/cause/outcome documents remain identical, including
decodable-but-uncommittable bad hashes and activated operational failures.
Migration retains its original exactly-empty observations and versioned dispatch.
No Wire syntax, record/profile tag, hash rule, verifier meaning, facade export,
Backend contract or dependency metadata changes.

Each of the two current public wrapper schemas gains nine closed bundle products
and redirects only action-candidate and non-null action-bundle observation refs.
All other original definitions/values are preserved. These schema asset byte
identities change; semantic SchemaHash/BehaviorHash and existing record bytes do
not. See [compatibility-assessment.md](compatibility-assessment.md) for the
conservative minor-class assessment and consumer migration note. No numeric
version, tag, release or ecosystem adoption is selected.

## Test-first and verification evidence

The exact workload regression was compiled, collected and observed to fail at
clean test-only revision `f4641b933a3f5bd65a308623a99895d7ee1a75fb` before
production edits. Further candidate-boundary assertions and genuine schema
failures preceded their corrections. Compile/setup errors and later test-oracle
mistakes are separately retained, never counted as behavior REDs.

[Coverage](evidence/coverage.md) maps all requirements and support paths to actual
collected tests and source-bound receipts. The principal checkpoints are:

- [US1](evidence/us1.md): faithful RED→GREEN, unchanged v1, fixed independent hash vectors and complete same-profile index/scan/reversed outputs.
- [US2](evidence/us2.md):145 local boundary controls, required authentication, original-claim ownership, complete no-publication checks and eight killed isolated mutants.
- [US3](evidence/us3.md):37 new compatibility controls, original archives/profiles, all9 owning read-support rows and surrounding017/018/022 regressions.
- [US4](evidence/us4.md):246 actual producer cases,144 bounded generated productions, all39 independent v2 projections,66 explicit v1 projection comparisons, six scoped schema tests,14 facade/CLI consumer tests, actual migration/recovery/replay/command routes and coordinator integration rerun.
- [Targeted review](evidence/targeted-re-audit.md): independent production/projection/schema review with explicit construction/code/test/assumption classifications; reviewer independence is qualified for its own mutation machinery.

Only explicit maintenance capture and pre-existing optional scale tests are
ignored by ordinary runs; no mandatory023 acceptance case is skipped. Bounds and
passing tests are empirical evidence, not universal proofs. Cryptographic and
Backend-conformance/durability assumptions are documented rather than tested away.

## Scope and final delivery

019's frozen creation implementation and evidence remain intact. 023 repairs the
separate query evidence boundary discovered during that work. The immutable016
audit is not rewritten. [F023-EXTERNAL-FACTS-SCHEMA-001](follow-up-findings.md)
remains open for ordinary/witness schema aliases; complete v2 Store conformance
and global Core soundness are not inferred from this remediation.

Finalize reports/bookkeeping before committing and freezing the delivery
candidate. T060–T064 complete externally against that exact pushed SHA, using
canonical `nix develop -c scripts/gates.sh` and
`nix develop -c scripts/check-consumer.sh --rev <candidate-sha>` with fresh
same-revision CLI/fixtures. The receipt binds repository/SHA/tree, commands,
statuses, toolchain and logs without editing the frozen checkout or embedding its
containing commit SHA here. A later merge/rebase/release SHA requires applicable
validation of its own. This implementation does not merge or publish a release.
