# Trust boundary and security audit

Owner: `/root/audit016_verify`, acting as TRUST. Date 2026-10-10. Baseline release
`v0.12.1`, commit `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`, inspected in COORD's unchanged
detached checkout. No semantic/runtime/schema/fixture or security repair was made.
Scope follows [B1](evidence/coverage.json), the existing Core contracts and the
[013 governance contract](../013-durable-command-intents/contracts/governance.md).
This report does not define a new backend or language contract.

The source evidence and negative-test inventory are in
[TRUST fragments](evidence/fragments/TRUST/boundary-test-inventory.md).
E-COORD-009 records successful unchanged-baseline canonical gates; named
collection/focused results qualify individual regression execution separately.
Different-person MODEL review R-MODEL-003 accepts the scoped source conclusions.
E-TRUST-002 confirms the current Store read replay decoding defect below. Shared
G3, historical replay and backend-integrity obligations remain in their owning
lanes; correct signature handling does not discharge them.

## Three claims that must stay separate

Integrity says that bytes/content match their canonical identity. Authentication
says an eligible cryptographic key signed an exact purpose-separated claim.
Authorization says the immutable store policy and explicit context permit this
exact rederived semantic candidate. A content hash alone establishes neither
authentication nor authorization; a valid signature alone establishes neither
policy compliance nor the truth of the signed theorem.

For plain evaluation, caller-supplied state/input/context/facts define explicit
semantic inputs. A complete supplied universe is an assertion of the state being
evaluated, not Core authentication of an external business database. Core checks
typing and internal consistency required by the profile. Store-backed evaluation
derives inputs from one exact historical snapshot and rederives observations at
commit; backend completeness, immutable versions and atomic durability remain
host obligations. The engine cannot discover every arbitrary backend lie from a
finite subset of reads, but it must perform all checks the existing contract
assigns to it. Optimizations may omit operations only with equivalent evidence
for those obligations.

## Boundary inventory: trust, checks and limits

Locations are relative to crates: `core`=`behavior-core/src`,
`store`=`behavior-store/src`, `verify`=`behavior-verify/src`,
`CLI`=`behavior-cli/src`, `engine`=`behavior-engine/src`.

| Boundary ID / producer -> consumer | Untrusted or asserted input | Core obligation and exact enforcing locations | Remaining assumption / scoped status |
| --- | --- | --- | --- |
| B-TRUST-001 Serialized IR -> admission | Types, names, expressions, effects, command products, versions | Wire shape/version checks, typed resolution, declaration uniqueness, acyclic dependencies, exact bounds, forbidden constructs and role legality. `core/wire.rs:1002`, `:1016`; `admit/mod.rs`, `typecheck.rs`, `bounds.rs`, `graph.rs`. Current0.8 strict duplicate/length checks; historical profiles preserve prior rules. | Correctness of every admission theorem is covered by MODEL/VERIFY; no arbitrary host AST can bypass admitted private semantic objects through the supported facade. |
| B-TRUST-002 Builder/wire structures -> semantic Module | Programmatic declarations can be malformed, including new commands hidden in old profile | Builder returns typed BuildError; admit_wire validates profile/command shape, resolver/typecheck and graph. Public engine facade reexports explicit constructors; Module is admitted data, not a public mutable bag of semantics. `core/builder.rs`, `admit/mod.rs`; command_admission direct-wire regression. | Public facade surface is checked by repository script; Rust memory safety/toolchain are assumptions, not a semantic proof. |
| B-TRUST-003 JSON document -> canonical/typed decoder | Duplicate keys, floats, unknown extensions, malformed hashes/types | `core/canonical.rs:20` strict recursive parser; `:29` typed closed decode; inspected current Core wire/invocation/read and governance call sites select it before map reduction. Canonical encodings/domain meaning audited by IDENTITY. | Historical decoder contracts differ. Raw Store::replay_read at store.rs:1438 instead uses permissive serde map decoding; F-TRUST-001 is an open current-evidence rejection lead. Strict decoding is not claimed for every facade/old raw report/request entry point. |
| B-TRUST-004 Caller invocation -> capability binding | Capability names, typed identities, raw state/context injection, wrong binding roles | `core/invocation.rs:368` closed invocation/intent shapes, TypedIdentity, `:562` resolve same-schema/current identity, role/binding/type/alias checks. Agent intent cannot supply host state/context; host context is explicit separate input. | The host remains responsible for selecting business context; Core checks declared semantic types, not external truth. |
| B-TRUST-005 Snapshot producer -> plain invocation/evaluator | Wrong entity key/value, duplicates, partial universe, inconsistent facts | Snapshot decode validates keyed entity values and fact consistency; current evaluation `eval.rs:2575`, `:4043` normalizes complete universe of every declared type, runs full snapshot validation and matches bindings at `:4082`. | Completeness relative to an external system is a producer claim; a supplied finite state is itself semantic input. Common full-validator G3 issue remains separate. |
| B-TRUST-006 Facts producer -> evaluator | Exists/used/incoming/query/field/universe claims, contradictory duplicates | `facts.rs:286` rejects repeated facts; `:563` check_snapshot ensures existing implies used, valid Ref edges, bound target/source consistency. `eval.rs:1936`, `:2348` check typed normalization/query-universe/field/binding overlap. Missing necessary facts produce explicit UNKNOWN_FACT. | Historical sparse snapshots are not full external-history proofs. Only supplied/observed claims and stated snapshot completeness are checked. |
| B-TRUST-007 EvaluationFacts provider -> current state evaluation | Arbitrary query all/member values, changing snapshot answers | `eval.rs:4112` materializes declared type universes, sorts/rejects duplicate IDs, checks entity ID/type/value, then full validates. Current facts derive from validated S; `ValidatedProvider` delegates only history-used to host. | Provider must answer one immutable snapshot completely and truthfully. Unobserved external state is not independently discoverable; verifier assumes coherent provider domain. |
| B-TRUST-008 Host Backend -> Store reads | Head/genesis/as-of values/history/index candidates | `store/lib.rs:40` requires immutable versions/history, complete indexes, consistent as-of reads; Store binds SchemaRef/history/data_version and reconstructs/validates relevant facts. Optional field indexes return candidates that are rechecked against canonical values. Successful create supplies complete genesis/seed/head/index product. | Completeness and commit crash-safe atomicity are explicit backend promises, not a theorem from Rust trait signatures or one green conformance run. Creation-error atomicity/recovery is separately underspecified in F-PERSIST-002; commit's failure law cannot silently cover it. PERSIST maps mandatory corruption checks/known limits. |
| B-TRUST-009 Caller Backend mutation -> cached validation | Host mutates storage after validation | `store/store.rs:1021` clears engine-owned validated snapshot before returning mutable backend access. Key at `:562` includes exact history/schema/canonical Behavior; reconstructed on miss. | Backend interior/external mutation violating immutability is outside valid contract domain. Cache lifecycle/internal invariant errors remain INCREMENTAL/PERSIST audit scope. |
| B-TRUST-010 Caller bundle -> live commit | Forged ALLOW record, wrong read/write facts, arbitrary deltas | `store/store.rs:1875` compares format/store/schema/exact Behavior and record identities, expected parent/head/history, rederive at `:2097`, exact dependencies/write/lifecycle/declaration sets, revision/data_version. Trust is established by re-evaluation and exact snapshot checks, not caller self-hash. | Full evaluator correctness and backend snapshot coherence remain premises. Existing common-reference G3 finding cannot be waived by valid authorization. |
| B-TRUST-011 History/lifecycle facts -> creation/removal | Reused removed identity, false never_used, omitted incoming refs | Required used_at/exists/incoming snapshot checks plus candidate resulting-state integrity and lifecycle rederivation before commit. `store/lib.rs:95`, `core/eval.rs:2967`; INCREMENTAL freshness/resulting Ref checks. | Identity freshness is historical, not absence in current live state; host immutable used-history completeness required. |
| B-TRUST-012 Concurrent writer -> commit CAS | Stale parent or same StateId at another history head | Exact current HistoryRef compares store/state/position/record; single Backend::commit expected_last_record CAS. `store/store.rs:2047`, backend commit sites; command-only same-state commits still advance history. | Atomicity/durability implemented by backend; root fault runs/PERSIST establish scoped outcomes, never by read check alone. |
| B-TRUST-013 Governance candidate -> offline/live judgment | Self-hashed arbitrary candidate or substituted semantic fields | Candidate typed closed content identity checked; subject mismatch and record replay checked by `verify/governance/trusted.rs:864`; live commit independently derives actual store/module candidate before trusted checker. Migration preparation/commit binds exact behavior pair. | Offline authorization does not establish that a live store produced/committed the candidate. Replayed record correctness is reference-evaluator dependent. |
| B-TRUST-014 Signed authorization -> trusted commit | Attacker signs with own/wrong-role key; reuses another store/behavior/state/policy | SignedAuthorization decoder recomputes content hash and verifies exact issuer/subject/purpose via strict Ed25519 at `trusted.rs:1506`. Immutable EvidencePolicy eligibility and exact execution policy at `:864`; full recomputed judgment at `:799`; Store checker `store.rs:3102`. | Trusted key custody and crypto library security are explicit external assumptions; names and hashes are never key authority. |
| B-TRUST-015 Explicit context Q -> policy/commit | Wrong/missing/extra typed fields, signed-only context, stale time claims | `trusted.rs:1435` validates complete scalar product and policy-specific expectations/time; `:799` compares independently supplied full Q/hash with signed Q; Store compares bound requested_commit_time to actual commit time and archives compared Q. | Canonical explicit policy_time is judgment input, not authenticated real-world freshness/current clock. Key intervals are [start,end). |
| B-TRUST-016 Signed proof envelope -> live authorization | Omitted/duplicate/extra sites, false aggregate, wrong profile/subject/version, valid signature on malformed report | Typed closed envelope validates hashes/signature/report/manifest; `trusted.rs:2536` derives exact current manifest from admitted subject/profile, checks equality and replays structured witnesses. Policy checks verifier role/profile/version/solver and blocking findings/eligible waivers. | Solver UNSAT soundness and runtime/encoding simulation are VERIFY obligations. Trusted signer may attest a false theorem; authentication does not fix S2. |
| B-TRUST-017 Caller report/cache -> fresh proof producer | Raw unsigned PROVEN or poisoned matching diagnostic cache | `verify_authenticated` at `trusted.rs:588` computes semantic_proof::checks fresh; that path supplies cache=None, derives manifest, checks complete reproducible output, then signs typed envelope. Existing poisoned-cache test: trusted_verification.rs:549. | Legacy diagnostic verify can use a caller-selected trusted-local cache; it deliberately provides no current authenticated authority. No arbitrary cached report is promoted. |
| B-TRUST-018 Solver process -> verification | Protocol error, failed process with UNSAT prefix, time cancellation, malformed model | `verify/solver.rs` checked protocol, deterministic configured solver inputs and complete process/transport guard; OperationalSolver marks non-reproducible abort at trusted.rs:588. No envelope on any aborted obligation/prefix. SAT safety witness must confirm legal runtime failure. | Exact Z3 identity/behavior is assumed beyond executable process checks; deterministic resource-limit may be signed INCONCLUSIVE, never fabricated PROVEN. |
| B-TRUST-019 Waiver producer -> policy | Wrong role/signature/finding/behavior/profile/version/expiry | Checked waiver and signature content, exact cited finding/subject/profile/verifier, eligible waiver key and half-open time checks at `trusted.rs:497`, `:523`, `:864`. Only policy-allowed kinds may waive blocking finding. | A waiver is policy-approved acceptance of an exact limitation, not a repair/proof of correctness. No infrastructure abort can become proof via waiver. |
| B-TRUST-020 Archived evidence -> replay/recovery | Old unsigned authorization or older authenticated envelope claims | v1 structural trust remains structural; required v1 new writes refuse upgrade before mutation. v2 data replay authenticates archived claim/coverage/signature/policy but cannot derive exact expected sites without Behavior. Behavior replay/live derives current subject obligations. `store/store.rs:1940`, `:2031`; `trusted.rs:791`. | Historical byte/profile interpretation is preserved; decoding older verifier0.7 envelope does not make it eligible as current verifier0.8 proof. |
| B-TRUST-021 Read/invocation record -> standalone/store replay | Rehashed semantic tampering, forged observations/aliases/schema | Core current strict closed decode, recorded immutable facts/bindings/errors, exact Behavior and record comparison. Store-backed replay checks exact historical store/schema/position and derived facts; its raw read-record parsing is the explicit F-TRUST-001 exception under investigation. `core/record.rs:251`, `read.rs:140`, `invocation.rs:1205`, Store read replay sites. | Standalone replay proves reproducibility from evidence, not historical occurrence/external truth. Historical v1 limits, F-PERSIST-001 profile selection and F-TRUST-001 duplicate rejection remain open. Store invocation's Core preflight protects this particular duplicate path. |
| B-TRUST-022 Candidate commands -> adapters | Consumer dispatches intents before commit, fake occurrence stream | Evaluation K is proposed data only; committed command stream validates exact endpoint/history, replay and materialized snapshot before constructing occurrence IDs. `store/commands.rs:126`–`:245`. No speculative occurrence is promoted from a candidate or error response. A lost acknowledgment after durable commit may later expose that original committed event through checked history/recovery. | Core never dispatches or performs external I/O. Adapter owns scheduling, idempotent external effects/acknowledgments and any external authorization; candidate intents remain publicly readable data. |
| B-TRUST-023 CLI inputs/seed files -> engine | Alternate parse path, cache option promotion, malformed keys, failed output | CLI depends only on behavior-engine; strict governance/intent transport calls at `CLI/lib.rs:201`, `:292`, `:680`; trusted keys/profile/subject/context explicit, no --cache in fresh command. Typed errors redact key bytes; proof output only after completed producer, same-directory atomic rename. | Filesystem/OS credentials and signer secrecy remain host responsibilities. Atomic artifact replacement is not semantic store commit. |
| B-TRUST-024 Internal crates -> supported engine facade | Accidental exposing a second evaluator/proof authority | Explicit reexports under supported namespaces, public-surface checked against api/engine-surface.txt; private incremental machinery cfg(test)/Store internal. `engine/lib.rs:1` and scripts/check-public-surface.sh. | Facade includes legacy diagnostic APIs as explicitly lower-trust capabilities; public API existence is not current governance eligibility. |

## FR027 adversarial-case accounting

Every required case is mapped to a checked boundary, explicit assumption or open
joint obligation; no row means all attacks are universally proven impossible.

| Case | Enforcement / concrete source-present negative evidence | Scope and disposition |
| --- | --- | --- |
| Type confusion | B001–006, scalar/entity decode and role-specific rules; command_admission forbidden Exact/Entity/Ref payload and exact product type; invocation_documents malformed typed IDs | Current stored payloads are typed scalars; command Id is inert data and has no Ref existence obligation. Direct wire structures still undergo admission. |
| Entity identity confusion | Snapshot duplicate/type/id agreement; `eval.rs:4157`; typed binding/alias resolution; invocation_resolve and current validity tests | Same textual id under different entity type is a different typed identity. Complete snapshot and binding values must agree. |
| Malformed canonical documents | B003, current canonical float/key/hash/time checks; canonical, trusted_governance, trusted_verification | Strict current profile; old permissive parse retained where contract permits. |
| Duplicate keys | Strict parser before map reduction in invocation, current Core Wire/read/action/governance; read_soundness:91, command_admission:193 | Prior F3 scoped Core regressions execute in E-COORD-009/016. Raw Store read replay is confirmed F-TRUST-001 by E-TRUST-002. Facts duplicate array entries independently rejected as INCONSISTENT_FACTS. |
| Ambiguous encodings | IDENTITY tags, typed/length encoding, canonical closed current documents; independent vectors | Legacy >u32 premise remains O-IDENTITY-006, no practical collision asserted. |
| Unknown fields | Closed current transport/security structs and wire shape; invocation_documents:44, trusted_governance:64 | Extensions do not silently enter current trust. Archive profile limits documented. |
| Stale facts | Immutable as-of provider/store/history and commit exact rederive/CAS; command_governance:228 and Store trusted binding tests | Plain facts' external currency is producer data; Store snapshot coordinate mandatory. |
| Contradictory facts | Facts check_snapshot and query/universe overlap after normalization; facts:118, queries:204/property, invocation_documents:75 | Reject overlap contradictions; cannot prove omitted external data beyond completeness contract. |
| Forged observations | Recomputed store observation/read/write/lifecycle sets and standalone replay; Store trusted_governance:387, command_governance payload substitutions | Self-hash alone insufficient. Current exact store history bound separately from data-only StateId. |
| Aliasing | Action state binding inequality, read alias world agreement; invocation_resolve; VERIFY alias regression | Distinct write-target constraints differ from legal read aliases; don't assume all parameters distinct. |
| Wrong schema | Schema binding at actual historical position before module use; Store schema_binding/property | Same empty StateId cannot replace schema/history identity. |
| Stale behavior version | Exact BehaviorHash in record/bundle and exact migration source/target behavior pairing; trusted proof manifest | Same schema with changed derived semantics cannot substitute proof/candidate. |
| Replay substitution | Strict current record claims and behavior re-evaluation; invocation_replay contradictory rehash; Store trusted replay tests | Replay does not authenticate external occurrence; PERSIST historical false-filter defect remains separate. |
| Hash-domain confusion | Purpose-separated tags and signature purpose/content/issuer equality; trusted_governance:230/687; independent identity vectors | Hash equality is crypto assumption, not authority. No signature cross-purpose reuse. |
| Authorization reuse | Exact candidate/store/history/policy/context binding and live rederive/CAS; Store command_governance:134/228 | Same payload/count/state at another event is insufficient; idempotent recovery validates original archived complete event and context. |
| Evidence bound to wrong state/store/behavior | B010/013–016, trusted_governance:340, Store command_governance:228 and Store trusted_governance:161 | Offline candidate decoder verifies shape/identity only; live Store establishes candidate truth. |
| Candidate-state reuse before commit | Store private validated snapshot key and commit-only publication; INCREMENTAL fault/negative evidence | No candidate certificate is canonical semantic authority; common validator defects and lifecycle proof must be separately reviewed. |
| Dispatch of uncommitted commands | Core computes candidate data, Store stream constructs only verified committed occurrences; command_stream and command_crash_recovery consumer | External adapter may misuse candidate data; Core contract forbids treating it as committed, but performs no host dispatch policing. |

## Fresh verification/cache investigation

`cache.rs:39` parses a matching-key CheckResult from caller-selected local files.
It does not authenticate that result. A forged matching PROVEN can therefore be
displayed by legacy/development `verify`. This is intentionally lower-trust,
documented behavior: docs/verification.md distinguishes historical unsigned cache
from cache-free authenticated computation; the 013 governance contract explicitly
calls documents/cache untrusted and prohibits promotion.

The decisive existing regression
`poisoned_development_cache_cannot_be_promoted_to_trusted_evidence`
(`verify/tests/trusted_verification.rs:549`) first writes forged PROVEN entries,
then asserts diagnostic verification actually consumes them, and finally verifies
that fresh authentication returns not_verified for the unsafe exact module. Its
source assertion is stronger than merely finding `cache=None` in a comment.
Execution must still be logged before claiming it ran. No newly confirmed S1/S2
finding is made solely because lower-trust output can be poisoned. If any path
promotes that output to current governed authority, it would be a separate
trust-boundary defect requiring a legal reproduction and invariant classification.

Fresh signing never accepts arbitrary caller report JSON. It derives the expected
manifest by the exact admitted encoder and profile, invokes full fresh checks and
validates semantic report/aggregate before signing. Complete descriptor coverage
includes distinct repeated sites. An empty manifest is legitimate only for an
exact subject/profile with no obligations. Archived verifier0.7 documents may
decode for history but fail current expected-manifest equality. A deterministic
resource limit can yield signed inconclusive; non-reproducible wall-clock/process/
transport/model-protocol failure aborts the entire operation and produces no
envelope. A valid signature authenticates a computation claim under the trusted
producer/solver contract; runtime-verifier correspondence remains an independent
soundness obligation.

## Live governance binding and no-authority caches

`SignedAuthorizationV2::from_json` verifies canonical content identity and strict
Ed25519 purpose/issuer binding. `compute_authorization` then checks the issuer
under immutable EvidencePolicy at Q.policy_time, exact allowed ExecutionPolicy,
exact subject/proof profiles/versions/roles, complete proof sites and eligible
waivers. `validate_authorization_for` recomputes that judgment and compares the
entire expected content, refusing even a valid signed allow whose content or
conditions differ. Store rederives the canonical candidate from actual historical
state before calling it, then compares independent full Q and any bound commit
time, then executes one exact-history CAS.

The authorizer cannot bypass business validation by signing false caller data;
none-policy commits still rederive state/read/write semantics. Invalid supplied
evidence is rejected even if evidence is optional. Missing eligible authorities
is deny-all where authorization is required, never a wildcard. Key rotation and
explicit time are governed by predeclared half-open intervals; no mutable key
directory, wall clock, network or implicit revocation enters deterministic replay.
Current time does not become a hidden semantic dependency.

Validation caches, reverse-reference/query indexes and stream reconstruction are
derived accelerators. Their corruption does not redefine what validity or history
means. This principle alone is not an implementation proof: PERSIST/INCREMENTAL
must identify which checks reconstruct/compare them, which external completeness
promises remain, and whether every required omission has equivalent evidence.
The existing common full-validator post-state defect cannot be dismissed by
incremental/full agreement or by a well-bound cache key.

## Qualified obligations

| ID | Proposition and enforcing sites/evidence | Primary status |
| --- | --- | --- |
| O-TRUST-001 | Inspected current Core/security/capability document constructors use duplicate-safe, float-free closed decoding and typed bindings. B001–006/023; source inspection E-TRUST-001. This excludes raw Store read replay decoding at store.rs:1438; E-TRUST-002 confirms its duplicate rejection fails, F-TRUST-001/O012. | established by a code invariant |
| O-TRUST-002 | Complete current state is typed/normalized and overlap facts/bindings internally coherent before evaluation. B005–007, facts/eval sites; full mathematical G3 correctness remains separate. | established by a code invariant |
| O-TRUST-003 | External provider/backend snapshot completeness, immutable history and durable atomic CAS are truthful host promises. B007–008/012; Backend contract and relevant producer responsibilities. | assumed but documented |
| O-TRUST-004 | Live Store does not trust caller bundles/observations: exact schema/behavior/store/history/dependencies/write result rederived before commit. B010/013; canonical source flow; full-evaluator correctness is a premise. | established by a code invariant |
| O-TRUST-005 | Current required authorization verifies purpose/issuer, immutable policy role, exact candidate/proof/context and independently recomputed allow. B014–016; strict signature and checker sites. | established by a code invariant |
| O-TRUST-006 | Fresh authenticated computation cannot promote diagnostic cache/raw caller report or incomplete/non-reproducible prefix into proof. B016–018; cache=None path and exact complete manifest; poisoned-cache/process regressions execute in E-COORD-009/016. | established by a code invariant |
| O-TRUST-007 | Cryptographic key/signature/digest security, signer custody and solver UNSAT trust assumptions hold. These are separate external producers; solver/encoding simulation not reduced to a signature theorem. | assumed but documented |
| O-TRUST-008 | Every allowed skipped read/check has equivalent mandatory semantic/integrity evidence, including cache/index reconstruction and commit-only candidate publication across all paths. Joint PERSIST/INCREMENTAL review and exact fault evidence required. | not yet established |
| O-TRUST-009 | Historical structural evidence is not silently elevated to current authenticated authority; required old-store new writes refuse, and archived envelopes do not automatically satisfy the current expected proof manifest. B020 and versioned policy/format source. This does not establish all historical Store replay profile behavior: F-PERSIST-001/O-PERSIST-008 remain separate and open. | established by a code invariant |
| O-TRUST-010 | Core never dispatches external commands; Store occurrence enumeration derives only committed verified history. B022/023 source; external adapter scheduling/idempotency is independently responsible. | established by a code invariant |
| O-TRUST-011 | Complete FR027 negative/replay/tamper/fault coverage suffices for every public path. E-COORD-009/012–016 executes the representative ordinary corpus; it does not prove exhaustive field/profile/fault coverage. F-TRUST-001 demonstrates one missed path. | not yet established |
| O-TRUST-012 | Current raw Store read-record replay rejects contradictory duplicate keys before map reduction, as required for unambiguous current canonical evidence. `store.rs:1438`; E-TRUST-002 directly disproves this obligation on the inspected baseline, F-TRUST-001. | not yet established |

## Findings, prior leads and quality notes

No new confirmed TRUST S1 is asserted without a legal counterexample and exact
authority. This report retains open completeness/cross-component obligations and
does not declare the kernel secure or sound. Prior F3 duplicate invocation keys
is addressed in inspected current source; prior refusal-request retention is
handled by decode_evidence and explicit replay re-decoding. Execution and
historical applicability remain in the negative inventory. Report cache poisoning
is an evidenced current trust distinction rather than a waiver for promotion.

**F-TRUST-001, S3 / Medium, confirmed**: current Store read-record replay accepts
contradictory duplicate result keys after last-key map reduction, although Core
strict record decode/replay refuses them. E-TRUST-002 is the authorized exact-base
test-only overlay, with valid current-v2 Core/Store replay controls, unchanged
original record identity and head. It compiles and runs one case, failing only
the final required Store rejection at line73. Actual output reports Core
matches=false with `duplicate object key result`, versus Store matches=true.
The [full finding](evidence/fragments/TRUST/findings.md) records contract, exact
sources, reproduction and proposed correction. This is malformed canonical
replay-evidence acceptance; no authenticated forgery, state mutation or legal
business evaluation defect is inferred. Store invocation's strict Core preflight
protects that particular analogous path. No production fix was made.

QUALITY contributions: the function name `legacy_reduction` inside current
trusted code actually performs strict decoding; `transition_hash` has different
object meanings under v1/v2; a boolean `bind_commit_time` is confined to a typed
policy but its copied internal flag must retain exact-policy linkage. Legacy
authorize/verify and current trusted APIs share a facade while having substantially
different authority. Precise API documentation and existing negative tests are
necessary to prevent misuse; do not unify these paths merely to reduce duplication.
No semantic cleanup, signing change or API remedy is implemented by this audit.
