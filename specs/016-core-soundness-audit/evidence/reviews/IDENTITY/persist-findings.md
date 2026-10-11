# Independent significant findings review: PERSIST

Reviewer `/root/audit016_verify`, author `/root/audit016_store`.
R-VERIFY-005; baseline v0.12.1, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This is a different-person
finding review, separate from the qualified T049 inventory review.

## F-PERSIST-001 — accepted as S3 / Medium

Independently inspected E-PERSIST-004 run.json, frozen source, patch, stdout and
stderr in `../../runs/PERSIST/replay-v1-red/`. The disclosed exact-base overlay
changes only one new test file. Both tests compiled, executed and reached only
their final Store equivalence assertions at lines50/86; 0 passed,2 failed,
0 ignored/filtered, exit101. This is runtime evidence, not infrastructure failure.

The legal historical controls are explicit: actual schema/genesis coordinate;
valid current Store read/invocation replay; selected historical v1 codec with
reconstructed diagnostics and applicable recomputed IDs; Core standalone v1
replay matches=true; unchanged Store head. The conversion mirrors an existing
Core historical compatibility regression rather than inventing a new profile.
Actual Store mismatches occur at `facts` / `outcome.record.facts`, adding the
current complete universe absent from the archived v1 record.

Source independently supports the root cause: Store `store.rs:1466–1474` invokes
current `self.read`, and inner invocation at1513–1516 current `self.invoke`;
Core `read.rs:140–177` selects recorded profile. Exact schema/history binding
does not justify substituting a current codec. G4/G7 and documented preserved
historical semantics support the bounded S3 claim. Medium is proportionate:
valid historical evidence is refused, rather than forged proof accepted or state
corrupted. The proposed shared recorded-profile evaluation preserves existing
identities and warrants separate version/refusal review, not an audit fix.

This does not prove every historical/profile combination or authenticate
invented external histories. Current raw Store duplicate acceptance F-TRUST-001
is a distinct S3 issue and Core invocation preflight remains protected for it.

## F-PERSIST-002 — accepted as S4 / Medium

Independently reviewed exact Backend source contract `lib.rs:38–56,99–109`,
005 FR006 commit atomicity, creation success data-model/store-api clauses,
Store creation at895–999 and reference Backend create176–194. Commit expressly
requires atomic/crash-safe all-or-none durable outcome; create specifies the
successful product but no equivalent post-error/lost-ack/retry/reopen relation.

This is an authority gap, not evidence of a partial-create implementation or a
violation of commit atomicity. Absence of create fault injection is separately
O-PERSIST-004. Category S4 and Medium are justified for durable host implementers
and consumers deciding initialization recovery. A spec choice between intended
all-or-none creation and typed recoverable uncertainty requires separately
reviewed contract/API/versioning consequences. No runtime red test is asserted
for this mathematical underspecification finding.

Both findings retain exact originating IDs and full FR037 fields in the author's
handoff/report. Neither is silently repaired. Their source/run scopes are
accepted; whole-kernel soundness and arbitrary Backend durability are not.
