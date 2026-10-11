# TRUST boundary and negative evidence inventory

E-TRUST-001, owner `/root/audit016_verify`, date 2026-10-10. Baseline
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`; unchanged detached checkout in
COORD manifest. Scope B-TRUST-001–024/O-TRUST-001–011 and all FR027 cases in
trust-boundary-audit.md. Method is direct source/contract/negative-test inspection;
execution fields are not applicable to this inspection evidence.

Read source: supported engine facade; CLI command/typed decode/atomic output;
Core canonical/wire/admission/builder/facts/input/intent/invocation/read/record;
Store backend contract, snapshots/mutations, commit/rederive/trusted evidence,
migration preparation and committed command stream; verify fresh/manifest/report/
cache/solver/signature/policy/context/waiver paths. Existing 013 governance and
identity/replay contracts are authority. Current/historical profiles are explicitly
separate. No production/helper source was changed. This lane wrote one explicitly
authorized new test-only duplicate replay overlay; root captured and executed it
as E-TRUST-002, separately from unchanged-baseline gates.

| Requested target/cases | Boundary/attack coverage | Comparator and remaining limits |
| --- | --- | --- |
| core invocation_documents, invocation_resolve, invocation_replay | Typed identity/type/role/alias failures; agent context/state injection; duplicate/contradictory snapshots; contradictory rehashed replay envelopes | Real resolver/evaluator plus expected typed errors; shared identity/replay helpers; does not authenticate external state. |
| core facts, queries | Duplicate facts/edges, existence-used/ref contradictions, query/universe membership overlap, inconsistent members/fields; property arbitrary open-status sets | Expected refusal and reference universe agreement; current complete snapshot and historical sparse facts differ. |
| core read_soundness | Prior F3 strict duplicate documents; constraints and complete state; current closed/tampered records; historical read-v1 compatibility | Scoped current/archived source regressions; legacy replay completeness owned PERSIST. |
| core command_admission, command_evaluation, command_records, command_replay | Wrong payload type/product/guard, unsupported command contexts, duplicate current wire keys, false guard evaluation, payload failure atomic proposal, forged descriptor/intents | Production admission/evaluator against expected typed outcomes; independent identity/schema cases complement shared helpers. |
| verify trusted_governance | Strict/closed policies/context, sorted unique key sets/half-open intervals, exact candidate/policy/context, malformed self-hash/wrong role/signature/purpose, missing proof, signed-only context, empty signed allow, typed scalar cells | Explicit independently calculated content/signature vectors and real judgment; trusted signer/crypto assumptions remain. |
| verify trusted_verification | Exact derived manifest completeness, omitted/duplicate/extra/resigned sites, false aggregate/warnings, malformed witnesses, archived0.7 rejection as current, all operational abort paths, poisoned cache consumed diagnostically but excluded from fresh proof | Independent canonical envelope vectors; actual solver plus fake process failures; solver semantics not proven by signing or tests. |
| verify command_safety, soundness_regressions, read_soundness, migration | Command guard/payload activation, runtime proof premises, aliases/exact bounds, legal counterexample confirmation and migration source/target/requirements | VERIFY owns full correspondence and every-check domain; inconclusive is not unsoundness. |
| Store trusted_governance | Old required-store refusal, structural recovery, independent Q, wrong store/time/policy/behavior/delta/evidence, none policy invalid supplied package, migration same trusted relation/exact behavior, closed schema/seed representation | Inspect final state/record outcome/no-write assertions; reference rederive shared; atomic crash assumptions owned PERSIST. |
| Store command_governance | Signature wrong role, command declaration/payload/count reuse, wrong profile/missing proofs, exact store/head/context, none-policy rederive | Candidate and K exact binding; changed signature preserves AuthorizationHash but fails auth. |
| Store command_stream, command_replay, durable_commands | Wrong endpoints/forged committed history, occurrence reconstruction, no uncommitted occurrence, durable acknowledgment recovery | Core performs no external dispatch; consumer command crash evidence owned PERSIST. |
| Store conformance/history fault targets | Backend read error/CAS/reconstruction/atomic failures, wrong/corrupt indexes | PERSIST owns full selection/run provenance and mandatory-versus-contract limitation. No arbitrary dishonest backend detection theorem inferred. |
| CLI cli_trusted_governance, cli_command_verification, cli_invoke, cli_commands | Explicit subject/profile/key/context, no fresh --cache promotion, secrets not printed, no artifact on operational abort, typed errors and exact facade bytes | CLI behavior is executable evidence, not independent SMT semantics; OS/key file trust remains external. |

E-COORD-009/012–016 records actual unchanged-baseline execution, collection and
ignored-case reconciliation. All ordinary table targets execute in the canonical
full workspace gate: 793 collected, 24 ignored, 769 executed; external consumer
33 executed, 0 ignored. No solver skips are recorded. In particular
`poisoned_development_cache_cannot_be_promoted_to_trusted_evidence` is among the
21 executed trusted_verification cases. A supplemental named confirmation is
separate evidence. Quiet group logs plus named collection are explicitly
distinguished; no ignored case is passing or execution inferred solely from source.
Full per-field/profile negative completeness remains O-TRUST-011 open.

E-TRUST-002 runs the disclosed exact-base one-case duplicate overlay, with valid
current-v2 Core/Store controls, unchanged hash/head and final assertion at line73.
It confirms F-TRUST-001: Core strict duplicate refusal versus Store matches=true.
One executed, zero ignored/filtered, zero passed/one failed, exit101. This is
supplemental failing counterexample evidence, never a green canonical gate.

Prior leads: F3 current invocation duplicate-key path uses strict parse before map
reduction; F9 refusal decode_evidence retains request/snapshot/context and current
replay re-decodes it. F4 identity/diagnostics and F5 historical failed-filter replay
are owned IDENTITY/PERSIST. Forged local cache source is deliberately lower trust;
fresh proof producer uses cache=None, with existing explicit poisoning regression.
Do not create a duplicate S1 from the lower-trust path or discard another lane's
replayed legal defect merely because current document signatures are correct.

E-TRUST-003 at `../../runs/TRUST/poisoned-cache/run.json` provides named actual
confirmation: `poisoned_development_cache_cannot_be_promoted_to_trusted_evidence`
passes, 1 executed, 0 ignored, 20 filtered, exit0. The filtered cases already
execute in E-COORD-009/016 and are not passes of this focused run. The test first
asserts matching forged PROVEN entries are actually consumed by diagnostic verify,
then fresh verify_authenticated produces not_verified for the same unsafe module.
It uses actual Z3 and public fresh producer; solver/operator correctness remains
external/VERIFY qualified, not established by authentication.
