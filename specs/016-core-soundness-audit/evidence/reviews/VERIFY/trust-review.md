# R-MODEL-003 — different-person TRUST review (T050)

Assigned reviewer path is VERIFY; actual reviewer is `/root/audit016_model`,
different person from TRUST author `/root/audit016_verify`. Baseline
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`, 2026-10-10. Disposition:
**accepted** for the revised qualified source-accounting report and actual scoped
evidence. Final executed-evidence disposition below confirms the duplicate-replay
finding and records completed named joint inputs; universal all-path claims remain open.

## Initial source-capture challenges and corrections (see final evidence addendum)

I initially inspected the complete 24-boundary/all-FR027 report and its then-11 obligations against
the current source and existing authority, rather than treating agreement with
MODEL or VERIFY as evidence. Directly checked signature-purpose/issuer/subject
binding in trusted.rs:1506, independent full Q and recomputed judgment at
:799–844, immutable role policy at :864+, strict Q type/time :1435, fresh cache-free
producer :588/semantic_proof, complete expected manifest :2536, and required
independent context/commit time in Store store.rs:3102–3145. I also checked current
canonical decode, snapshot/Backend/cache/reset, raw Store read/invocation replay,
and committed occurrence constructors. Existing unit/property/fault names remain
source-present until root-managed actual collection/run evidence arrives.

Two original source-scope claims required narrowing and were corrected by author:

- O-TRUST-009 now establishes structural-history non-elevation and current
  manifest eligibility, without claiming unresolved Store historical v1 profile
  preservation F-PERSIST-001. Correct historical schema binding does not establish
  correct recorded read-format selection.
- B-TRUST-022 distinguishes genuine non-application from lost acknowledgment
  after a durable commit. Candidate/error responses do not expose speculative
  committed occurrences; canonical applied history after lost acknowledgment can
  legitimately produce them through checked recovery/stream enumeration.

The author then identified raw Store read replay's permissive parse lead.
I independently confirmed Store store.rs:1438–1440 reduces raw JSON through
serde_json::from_str before comparing, whereas Core read.rs:140 starts with
canonical::decode_strict. Store invocation first calls Core replay on original
text and cannot be generalized to the same duplicate lead. B-TRUST-003/B021,
the duplicate-case row and O-TRUST-001 now explicitly exclude this open raw Store
read path. F-TRUST-001 S3/Medium is pending the exact-base overlay's positive legal
controls and actual final rejection assertion; compilation failure would not
confirm it. No authentication forgery is inferred from duplicate acceptance alone.

## Accepted trust distinctions and limits

Integrity, authentication and authorization are separate. Hash equality cannot
establish signer authority; strict signature validation cannot establish theorem
truth or exact Store occurrence. Live authorization independently rederives the
candidate and full Q under immutable policy; archived data replay authenticates
a narrower claim without deriving every Behavior obligation. A required old store
does not silently become authenticated, and an old signed envelope is not current
proof merely because it decodes.

Fresh authenticated computation excludes writable diagnostic cache and incomplete
non-reproducible solver prefixes. It still assumes solver soundness and requires
runtime/encoder correspondence. Explicit policy_time is semantic input, not an
unmentioned wall clock. Unsupported/inconclusive verification remains a limitation,
not a reproduced soundness defect.

Backend/provider completeness, immutable as-of answers and physical atomicCAS
durability are explicitly producer promises. The report neither guarantees that
finite reads detect every adversarial backend omission nor uses that limitation
to waive mandatory exact snapshot/history/freshness/reference/governance checks.
All-path omitted-obligation equivalence remains O-TRUST-008 open. Correct signing,
cache binding or replay agreement cannot close F-INCREMENTAL-001/G3.

Core exposes candidate intents as proposed data and never executes host business
I/O. Checked occurrence construction authenticates committed history; external
adapter scheduling/idempotency/acknowledgment remains a separate responsibility.
O-TRUST-011 does not claim complete negative/tamper/fault execution from test names.

No new confirmed S1 is supplied by this review, and no universal security/soundness
verdict is issued. Required later review: immutable actual baseline run/collection,
the duplicate-read red overlay and named joint-boundary evidence/dispositions.
No production source, dependency, codec, signature or public API was fixed.

## Final executed-evidence disposition

The pending statements above are historical source-time qualifications. The final
TRUST report has 12 obligations: O-TRUST-012 separately identifies mandatory duplicate
rejection at raw Store read replay, without broadening O-TRUST-001's current strict
Core/governance guarantee. I independently inspected the actual E-TRUST-002 retained
controls, source, stdout/stderr and all artifact hashes; R-MODEL-004 at
`../FINAL/trust-finding.md` accepts F-TRUST-001 S3/Medium. Legal current read-v2
Core/Store controls pass; malformed duplicate result keeps head unchanged and
Core reports matches=false while Store reports matches=true. Final rejection
assertion line 73 executes and fails, exit 101. This is concrete malformed replay
evidence acceptance, not an authorization forgery or mutation claim.

E-COORD-009/012/013/016 establish actual unchanged default gates and named
collection/execution. E-TRUST-003 separately executes the exact cache-poisoning
refusal (1 pass/20 filtered, exit 0); its primitive fresh-cache separation does
not establish every trust boundary, encoder theorem or solver correctness.
The scoped E-PERSIST-004 historical v1 replay controls and final failures independently
confirm the O009 exclusion: exact schema does not preserve a substituted read
profile. E-INCREMENTAL-002/R-VERIFY-006 independently confirm the ordinary G3
gap and do not imply a false carried certificate or false PROVEN.

Named JOINT source-premise responses and actual evidence are retained in the
updated admission-verifier/incremental-full-post-cas notes. Accepted trust distinctions
remain scoped to stated Core paths and documented external premises; O-TRUST-008
all-path omitted-obligation equivalence and O012 duplicate rejection remain open.
No new S1 or universal soundness/security verdict is supplied. No audit correction
was implemented.
