# Independent significant findings acceptance index

Reviewer `/root/audit016_verify`; baseline v0.12.1,
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Authors reviewed are
`/root/audit016_model` (INCREMENTAL) and `/root/audit016_store`
(PERSIST/QUALITY), both different people from this reviewer.

| Finding | Independent disposition | Decisive premises / evidence |
| --- | --- | --- |
| F-INCREMENTAL-001 S0 / High | Accepted, R-VERIFY-006 at [incremental-finding](../MODEL/incremental-finding.md) | Legal plain-Id nonlocal constraint, fully valid parent, successful ordinary commit, unchanged e0 and target new existence. E-INCREMENTAL-002 compiles/runs and fails only direct predicate line68, full-child STATE_INVALID corroboration. Correct locality rejects module; no false cache or legal false PROVEN inferred. |
| F-PERSIST-001 S3 / Medium | Accepted, R-VERIFY-005 at [persist-findings](../IDENTITY/persist-findings.md) | Existing supported historical codec, exact schema/genesis coordinate, current Store and historical standalone positives, unchanged head. E-PERSIST-004 both tests fail only Store final50/86 with current facts added. G4/G7 codec substitution is distinct from historical hash rewrite. |
| F-PERSIST-002 S4 / Medium | Accepted, R-VERIFY-005 at [persist-findings](../IDENTITY/persist-findings.md) | Exact Backend/005 authority gives complete create success and explicit atomic commit law, omits create post-error/lost-ack/retry/reopen law. Underspecification, not claimed partial-create implementation bug; no runtime reproduction fabricated. |
| F-QUALITY-001 S6 / Low | Accepted, R-VERIFY-004 at [quality-review](../VERIFY/quality-review.md) | Partial canonical serializer plus publicly mutable legacy Attestation.value and silent empty default; no current trusted proof forgery or legal runtime invariant violation shown. API/invariant/version assessment precedes proposed cleanup. |

The originating full FR037 findings retain exact source/run hashes, affected
profiles and smallest proposed remedies. Expected red overlays are counterexample
evidence; canonical E-COORD-009 remains independently green. E-COORD-016's exact
group/name reconciliation accounts for actual default execution and excluded
ignored cases; neither green gates nor shared evaluator replay establishes G3.

F-TRUST-001 is this reviewer's authored finding and is **not self-reviewed** here.
MODEL's different-person [trust-finding](trust-finding.md) supplies its independent
disposition. F-COORD-011 admission metadata is separately reviewed by MODEL at
[admission-metadata-review](../MODEL/admission-metadata-review.md); this index
does not claim authorship of that review. No semantic/public API/hash/profile fix
is authorized or applied by this acceptance, and no lane-alone verdict is issued.
