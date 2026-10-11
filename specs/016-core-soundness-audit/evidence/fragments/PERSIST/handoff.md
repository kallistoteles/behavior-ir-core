# PERSIST handoff

Owner `/root/audit016_store`; date 2026-10-10. Baseline v0.12.1, revision
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Reports:
`persistence-replay-audit.md` and `path-test-inventory.md`. This handoff is a
source-complete handoff; T049 source review accepted and author answered.
Canonical E-COORD-009 gates passed; E-PERSIST-004 confirms historical replay.
Independent actual-log R-VERIFY-005 disposition accepts the findings;
E-COORD-012–016 named/default accounting and T076 source/evidence reconciliation
are complete at the declared scope. No production or canonical
contract was changed.

## Coverage and evidence

B-PERSIST-001–006 group the complete create/action/migration/recovery/read/replay
mutation boundaries in the report. The detailed inventory separates public API
paths and legacy/current record/trust profiles, including ordinary no-op and
command-only events, historical schema resolution, ref-index replay and command
streams. `Backend::create` and `Backend::commit` are the two canonical mutation
methods. Cache/index mutation is explicitly distinguished from canonical history.

- E-PERSIST-001: exact-baseline source/path/record-field/fault-injector inspection,
  with source-present test cases mapped by comparator and limits. Execution is
  not applicable to this source argument; actual gate/test evidence is COORD-owned.
- E-PERSIST-002: the report's qualified exact-baseline source argument for
  commit/replay/cache/record-profile reasoning. Execution is not applicable to
  that inspection evidence. The separately executed test-only historical v1
  read/inner-invocation overlay is E-PERSIST-004. Root captured source, patch and provenance in
  `evidence/runs/PERSIST/replay-v1-red/`. Patch SHA-256
  `5edb3bfcc0458c586e0a83f898398a97e3be37ee19679cd70bef7dcd54b52d15`;
  test source SHA-256
  `c92d5cbe37eec4c9ff348e624c851823e44c7d335c097f43d30f458a56486688`.
  No modifications after capture. Requested exact command:
  `nix develop -c cargo test -p behavior-store --test audit_016_read_v1_replay -- --nocapture`.
  E-PERSIST-004 is the separately identified executed evidence below.
- E-PERSIST-003: creation-failure authority inspection, independently confirmed
  by MODEL; execution fields are not applicable to the contract-gap claim.
- E-PERSIST-004: executed disclosed test-only overlay at the exact baseline; `run.json`
  and immutable stdout/stderr in that directory. Two tests reached only their
  final required Store historical equivalence assertions after legal/positive
  controls and unchanged-head checks. `matches:false` at `facts` and
  `outcome.record.facts`; exit101/0passed2failed is expected semantic RED, not
  a gate pass or infrastructure failure. F-PERSIST-001 is reproduced.
- E-COORD-009: canonical `nix develop -c scripts/gates.sh` passed all existing
  repository gates on unchanged baseline; source status clean. Additional
  counterexamples independently show green gates are not whole soundness proof.

## Findings for COORD integration

| Required field | F-PERSIST-001 |
| --- | --- |
| Lifecycle | Confirmed by executed E-PERSIST-004; T049 source review accepted; independent significant-finding R-VERIFY-005 accepts actual counterexample logs. |
| Category / severity | S3 / Medium: legal historical evidence is refused; no accepted false proof or corrupt committed state was shown. |
| Claim | Store-backed historical Wire0.8 v1 read replay, including an invocation's v1 inner read, evaluates current v2 format rather than the recorded historical profile. |
| Mathematical/semantic reason | Replay comparison must compare the original semantic record under its exact supported profile. Substituting current v2 changes record format/identity and diagnostic placement while state/schema/input are identical. |
| Violated invariant / authority | G4 historical meaning and G7 replay equivalence; preserved v1 codec policy at `docs/soundness-remediation.md:21–31`, Core `read.rs:140–177`, compatibility regressions `tests/read_soundness.rs:142–191`. |
| Exact revision / code | Baseline above; `crates/behavior-store/src/store.rs:1437–1477` (current `self.read` at1466–1474), `:1480–1536` (current `self.invoke` at1513–1516); recorded-profile reference `crates/behavior-core/src/read.rs:140–177`, `invocation.rs:1205+`. |
| Concrete evidence / reproduction | E-PERSIST-001/002 path/profile inspection; executed E-PERSIST-004 immutable source/patch/logs show valid bounds/seed, exact schema/genesis position, positive current replay and positive standalone historical replay, unchanged head, then both final Store historical assertions fail. Actual differences are facts and outcome.record.facts. Exact command/provenance/source hashes above; two final assertion failures, no compile/control failure. |
| Affected versions / paths | Inspected v0.12.1 Store-backed read and read-invocation replay of supported historical v1 records from Wire0.8. Current v2 and standalone historical compatibility are separate paths; no claim about uninspected releases. |
| Recommended remediation | Share the existing recorded-profile evaluation selection internally with Store-backed replay, preserving historical bytes and all exact Store/schema/history checks. First confirm legal reproducer and review smallest correction. |
| Version/history/public consequences | No fix applied. Requires FR044 approval and compatibility/version assessment before implementation; no new syntax/Wire/backend semantics or record rewrite is proposed. |
| Shared cause / scope | Historical/current profile duplication, also tracked by QUALITY as maintainability context. Keep originating S3 ID. Core historical constructor guarantee does not establish Store replay guarantee. |

| Required field | F-PERSIST-002 |
| --- | --- |
| Lifecycle | Source-confirmed bounded underspecification; MODEL independently confirms exact authority; T049 and significant-finding R-VERIFY-005 independently accept category/severity/scope. |
| Category / severity | S4 / Medium: initial creation failure gives host implementers/consumers ambiguous durable outcome and retry/reopen obligations. No backend implementation corruption or failed commit atomicity is claimed. |
| Claim | `Backend::create` success initializes the genesis/seed/head/reference product, but its failure, lost acknowledgment and retry/reopen semantics are not specified with the explicit all-or-none/recovery law supplied for commit. |
| Mathematical/semantic reason | A partial operation boundary needs a relation of permitted post-error states and acknowledgment/recovery outcomes. Without that relation, contract conformance and safe initialization retry cannot be decided from the existing success law alone. |
| Invariant / authority | G9's existing commit theorem remains explicit and separate from creation. Successful genesis completeness is O-PERSIST-011; the absent creation failure/recovery law is O-PERSIST-012. Do not infer a universal atomic-create requirement from the commit wording. |
| Exact revision / authority | Baseline above; `crates/behavior-store/src/lib.rs:38–56,99–109`; `specs/005-persistence-contract/spec.md:322–325` FR006 commit atomicity; its `data-model.md:182` creation success; `contracts/store-api.md:99–103` create success and commit fault cases. Runtime creation call `crates/behavior-store/src/store.rs:895–999,973–975`; reference backend `memory.rs:176–194`. |
| Concrete evidence / reproduction | E-PERSIST-003 source-authority review and independent MODEL confirmation. No stronger creation failure law found in canonical artifacts. This is a specification omission; no runtime reproduction is asserted or required to establish the bounded claim. Missing create fault injection is O-PERSIST-004, a separate empirical gap. |
| Affected versions / paths | Current inspected persistence contract and Store v1/v2 initial creation, especially arbitrary durable host Backend implementations. The exact unchanged baseline is the audit scope. |
| Recommended remediation | Propose the smallest explicit creation failure/uncertain-success and retry/reopen contract, choosing intended all-or-none durability or a typed recoverable uncertain outcome, then assess conformance/fault evidence. |
| Version/history/public consequences | No clarification or implementation applied. Contract/error/API changes require FR044 approval and host/versioning assessment; existing immutable genesis/history must be preserved. |
| Shared cause / scope | Contract failure-domain gap, distinct from mutation-boundary test coverage and from commit's documented atomic durability host premise. No fabricated atomic-create source defect. |

## Obligations

| ID | Primary status | Proposition and exact limit |
| --- | --- | --- |
| O-PERSIST-001 | assumed but documented | Arbitrary Backend commit is atomic/crashsafe and immutable as-of reads are coherent, per `lib.rs:38–47,99–109`. This is not proof of every host or create failure outcome. |
| O-PERSIST-002 | established by a code invariant | InMemory checks all canonical commit arguments before its typed-infallible mutation suffix `memory.rs:284–371`; normal process execution, not allocation/process crash durability. |
| O-PERSIST-003 | established by a code invariant | Original exact committed event recovery and commit-only occurrence authority, `store.rs:1948–2040,2344–2377`, `commands.rs:127–253`, under conforming Backend. |
| O-PERSIST-004 | not yet established | Every physical create/crash mutation window is fault-tested. Existing BeforeWrite/AfterWrite wrappers cover commit only; disclosed durable consumer covers particular windows. |
| O-PERSIST-005 | established by a code invariant | Ref/index reconstruction derives from canonical schema/history in the inspected replay algorithms, not arbitrary index truth. |
| O-PERSIST-006 | assumed but documented | Backend enumeration, field-index and incoming-ref completeness/coherence. Runtime rechecks positives but does not universally authenticate all omissions. |
| O-PERSIST-007 | established by a code invariant | Data replay links history/schema/versions/live content with exact event chain under conforming immutable Backend and digest assumptions. This is not every original behavior property. |
| O-PERSIST-008 | not yet established | All supported standalone and Store replay profiles preserve original computation; E-PERSIST-004 and E-TRUST-002 are known historical Store v1 and current malformed-evidence counterexamples, F-PERSIST-001 and F-TRUST-001. |
| O-PERSIST-009 | established by a code invariant | First-party replay performs no canonical mutation or external command dispatch; external Backend method side effects remain host conformance. |
| O-PERSIST-010 | established by a code invariant | Report accounts for record fields, serialized identity inclusion and profile-specific comparisons. Exhaustive per-field/per-profile negative execution is not claimed. |
| O-PERSIST-011 | assumed but documented | Successful Backend creation supplies complete genesis/seed/head/reference product; exact host initial durability cannot be inferred from source alone. |
| O-PERSIST-012 | not yet established | Exact permitted post-error creation outcomes and lost-ack/retry/reopen law, F-PERSIST-002. |

## Reviews and joint limits

Independent IDENTITY review of PERSIST (T049) accepted qualified source evidence;
the author's disposition and new parser lead are recorded below.
PERSIST reviewed IDENTITY at T035 with R-IDENTITY-001 historical-profile scope
precision request, accepted by author. T076 command/governance/commit and
schema/history notes are assigned to PERSIST; named MODEL/IDENTITY/TRUST inputs
are obtained and source-scope accepted; all three counterexample overlays are
interpreted with legal positive controls and independent final predicates.
Named/default/ignored execution scope is preserved in E-COORD-012–016.

The ordinary invalid-child nonlocal rule defect belongs to INCREMENTAL/MODEL.
PERSIST confirms that successful replay of the original computation can reproduce
that defect and therefore is not an independent G3 proof. No lane-alone final
soundness verdict or universal backend safety conclusion is issued.

T049 source review was subsequently completed by `/root/audit016_verify` in
`evidence/reviews/IDENTITY/persistence-review.md`: qualified inventory accepted,
with no premature historical/create/execution closure. PERSIST author accepts
the requests. New reviewer lead F-TRUST-001 is cross-linked in the report:
permissive Store read replay reduction may accept conflicting duplicate current
record keys while Core refuses. Exact new decoding authority is 013
`contracts/identity-and-records.md:143–146`. TRUST owns classification/reproduction;
root-run immutable E-TRUST-002 confirms the lead. This is distinct from F-PERSIST-001
historical format substitution and not an authenticated forgery claim.

E-TRUST-002 subsequently reproduced the separate duplicate-key case, and
PERSIST inspected its raw source/logs: current v2 controls and unchanged head
pass, Core refuses duplicates, Store accepts the reduced record, final line73
assertion fails. R-VERIFY-005 independently accepts both PERSIST findings after
actual historical execution and exact creation authority review. No fix applied.
