# R-MODEL-004 — independent significant TRUST finding review

Reviewer `/root/audit016_model`, different from TRUST author
`/root/audit016_verify`. F-TRUST-001; baseline v0.12.1, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Disposition: **accepted**,
**S3 / Medium**. This review confirms one malformed replay-evidence acceptance
case, with no claim of authenticated forgery, mutation or legal false PROVEN.

## Independently checked legal controls and actual counterexample

I read the complete E-TRUST-002 run metadata, retained test/patch/stdout/stderr
and independently matched all six artifact SHA256 values to run.json. The exact
overlay changes only a new test, using unchanged baseline current-read model
support. Pinned root-run environment and clean-production provenance are retained.
No separate compilation/run was performed by this reviewer; the coordinator is
sole runner and the immutable actual execution is independently inspected here.

The test builds a legal admitted Wire0.8 module and valid seeded InMemoryBackend,
then captures actual current read_record.v2, result VALUE, scalar count1. Typed
ReadRecord decoding, Core standalone replay and Store replay all accept the
original current record. Those positive controls execute before the challenged
input. The raw text inserts `"result":"EVALUATION_ERROR"` before the original
`"result":"VALUE"`, retains the original record identity, and independently
checks that permissive last-key JSON reduction equals the original valid object.

Core typed decode refuses the contradictory original raw text, and Core replay
reports matches=false with duplicate object key result. Store replay on exactly
that raw text reports matches=true. The unchanged-head assertion passes before
the final required Store rejection assertion fails at line73. Compilation
completed; one test executed, 0 passed/1 failed, 0 ignored/filtered, exit101.
This is a final contract assertion failure, not setup/compilation failure.

## Source, authority and classification

Store store.rs:1438–1440 parses the raw evidence with serde_json::from_str,
discarding duplicates before historical lookup/evaluation and reduced-map
comparison. Core read.rs:140–143 and typed ReadRecord decode instead start with
canonical::decode_strict; canonical.rs:20/85 rejects duplicate keys before map
reduction. The same Store invocation API first calls strict Core replay on the
original text, so this particular defect is not generalized to all replay APIs.

013 identity-and-records strict new decoding, 010 tampered result replay and
current strict-read remediation authority support the declared rejection
obligation. No current Store exception allowing contradictory duplicate archive
keys was found. A raw document with two contradictory result claims is not the
one unambiguous canonical semantic object whose hash/result is being verified.
Comparing a reduced map's identity cannot establish validity of the lost raw
claim. This supports G5/G7 and S3, independently of a green shared replay suite.

Medium is proportionate: malformed current evidence is accepted at one public
Store replay entry point, while the canonical original remains valid and the
strict reference rejects the altered text. No canonical record hash collision,
authority forgery, changed durable state or soundness-check bypass is shown.
The finding is distinct from historical v1 format substitution F-PERSIST-001 and
ordinary invalid committed child F-INCREMENTAL-001.

The proposed minimal correction reuses existing strict raw decoding before lossy
reduction, retaining Store/history/schema checks and legitimate insignificant
whitespace. Actual refusal compatibility, operational errors and historical
codec/version consequences must be assessed before separately approved repair.
No source fix, negative gate insertion, codec change or new API was made here.

Evidence: [E-TRUST-002](../../runs/TRUST/read-duplicate-red/run.json) and
[FR037 finding](../../fragments/TRUST/findings.md). The expected RED is failing
supplemental audit evidence; it does not change E-COORD-009 canonical gate pass.
