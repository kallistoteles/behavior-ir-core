# First-party Backend creation assessment

This is a role-based assessment of the actual 019 working source, not a claim
that implementing the Rust trait establishes semantic conformance. The integrated
implementation base is recorded in [implementation-base.md](implementation-base.md).
Final gates and consumer validation against an immutable delivery SHA remain
separate from the working-source evidence below.

## Complete inventory

Searching all Rust files under `crates` and `consumer` for `impl Backend for`
(including generic implementations) identifies **30 implementations**: two
concrete hosts, five internal conformance wrappers, fourteen integration/test
adapters, and nine deliberately read-only adapters. The original 27-implementation
design inventory is extended by the private creation Probe, shared CreationBackend
fixture and public-facade Probe. Exact search output is retained externally in
`/home/kalle/validation-receipts/core019-work/us3-conformance/backend-inventory.txt`.

Locations are relative to Core. Table entries cover every implementation; repeated
type names in separate modules denote separate adapters.

| Implementation and exact location | Role | Applicable creation assessment |
| --- | --- | --- |
| `InMemoryBackend`, `crates/behavior-store/src/memory.rs:168` | Reference host | Private candidate then single logical assignment; exact original-product retry, advanced history and foreign refusal. Deep clones are independent copies, not concurrent handles to one target. |
| `DurableBackend`, `consumer/tests/support/durable_backend.rs:295` | Test-only persistent host | Stable cooperating lock, private staged snapshot, atomic rename, required file/directory barriers, no authoritative snapshot overwrite on recovery. Physical premises are disclosed below. |
| `FaultInjector`, `crates/behavior-store/src/conformance.rs:31` | Internal delegating wrapper | Creation delegates; existing before/after faults are ordinary commit faults. They do not establish creation interruption coverage. |
| `Interleave`, `crates/behavior-store/src/conformance.rs:183` | Internal delegating schedule wrapper | Creation delegates; existing schedules land ordinary commits. New creation schedules are owned by the private creation Probe. |
| `AlterRecord`, `crates/behavior-store/src/conformance.rs:948` | Deliberate history-corruption wrapper | Creation delegates; designated replay corruption is armed after a legal open. Not a general conforming host in its corrupt mode. |
| `ReversedKeys`, `crates/behavior-store/src/conformance.rs:1458` | Positive order wrapper | Creation delegates; type/field enumeration order is reversed. Conformance outcomes remain independent of that representation order. |
| `Probe<B>`, `crates/behavior-store/src/conformance/creation.rs:162` | Private creation conformance instrument | Normal mode delegates on one retained shared target. Before/after/read faults and five bounded schedules have independently observed activation RED/GREEN. Partial-publication modes deliberately violate the contract. |
| `Counting`, `crates/behavior-store/src/store/incremental/workload_tests.rs:55` | Delegating workload counter | Creation inherits the underlying reference-host contract; counters are test observations, not semantic facts. |
| `Counting`, `crates/behavior-store/tests/read_store.rs:256` | Delegating read counter | Same; read-only consumer operations do not constitute new creation coverage. |
| `Counted`, `crates/behavior-store/tests/incremental_validation.rs:32` | Delegating validation counter | Underlying creation; existing cache/reuse checks remain distinct from 019 outcome evidence. |
| `Counted`, `crates/behavior-store/tests/resulting_state_history.rs:52` | Delegating history counter | Underlying creation; preserves history-sensitive validation tests. |
| `Counted`, `crates/behavior-store/tests/resulting_state_reuse.rs:27` | Delegating reuse counter | Underlying creation; does not add independent publication authority. |
| `Counted`, `crates/behavior-store/tests/snapshot_reuse.rs:28` | Delegating snapshot counter | Underlying creation; snapshots/counters cannot redefine validity. |
| `Mutant`, `crates/behavior-store/tests/conformance.rs:80` | Deliberately nonconforming controls plus positive reversed-order mode | Existing designated commit/history controls remain; six activated creation controls reject equivalent retry, reset history, overwrite foreign creation, corrupt seed lifetime, accept equal-StateId foreign identity or expose a mixed product. Their designated new cases must fail. |
| `Reversed`, `crates/behavior-store/tests/queries.rs:91` | Positive delegating query-order adapter | Creation delegates; reversed physical enumeration is permitted. |
| `Unindexed`, `crates/behavior-store/tests/query_perf.rs:72` | Positive delegating optional-index adapter | Creation delegates; `keys_by_field_at = None` is a supported optional-index answer, not absent state. |
| `Faults`, `crates/behavior-store/tests/resulting_state_commit_faults.rs:27` | Delegating commit-fault adapter | Creation delegates. Commit faults do not count as creation faults. |
| `FaultBackend`, `crates/behavior-store/tests/support/history_backend.rs:18` | Delegating history/integrity fixture | Normal creation delegates; activated historical overrides are deliberately outside conforming answers. Later faults are armed after checked opening where required. |
| `CreationBackend<B>`, `crates/behavior-store/tests/support/creation_backend.rs:338` | Shared legal creation fixture and negative masks | Clones retain the same target. Core-derived products, explicit arming/counters and non-reentrant schedules supply reproducible controls, not a second seed validator. Broken masks are not conforming hosts. |
| `Probe`, `consumer/tests/store_creation.rs:95` | Supported-facade delegating fault instrument | Normal creation delegates through `behavior-engine`; explicit acknowledgment and failure controls are test-only. |
| `HeadFaultBackend`, `consumer/tests/strict_profile_replay.rs:504` | Delegating replay/read-fault adapter | Creation delegates; a later head-read fault is armed after a legal open. Its operational-error test is not a creation durability test. |
| `AuthorityProbe`, `crates/behavior-store/src/store/replay_tests.rs:14` | Read-only replay authority guard | Creation/commit attempts are rejected and counted. Not a general creation host; checks that replay does not gain write authority. |
| `Tamper`, `crates/behavior-store/tests/replay.rs:62` | Read-only record-tamper adapter | Writes deliberately rejected; replay/integrity negative role only. |
| `Tamper`, `crates/behavior-store/tests/lifecycle_replay.rs:34` | Read-only lifecycle-tamper adapter | Same; no claimed Backend creation support. |
| `Tamper`, `crates/behavior-store/tests/migration_replay.rs:232` | Read-only migration-tamper adapter | Same. |
| `Tamper`, `crates/behavior-store/tests/query_replay.rs:150` | Read-only query-tamper adapter | Same. |
| `AlteredValue`, `crates/behavior-store/tests/replay.rs:343` | Read-only value-tamper adapter | Deliberately alters replay evidence; rejects writes. |
| `Permuted`, `crates/behavior-store/tests/query_order_props.rs:55` | Read-only order/unindexed positive adapter | Permutes read answers and optionally declines the field index; rejects writes. Query properties apply, generic creation-factory conformance does not. |
| `ReadProbeBackend`, `crates/behavior-store/tests/replay_evidence_authority.rs:128` | Read-only evidence-authority instrument | Rejects canonical mutation while replaying recorded computation. |
| `FaultBackend`, `crates/behavior-store/tests/strict_profile_replay.rs:1620` | Read-only replay operational-fault instrument | Rejects writes; exercises actually performed replay failures. |

Delegating creation is assessed through its exact underlying implementation and
preserved regression behavior. No standalone 45-case run is claimed for every
counter, read-only adapter or deliberately broken mode. The shared suite requires
a fresh-target factory; borrowed read-only adapters intentionally do not satisfy
that role. Compiling them is not a waiver of the corrected contract for a host
that actually implements general Store creation.

## Executed creation evidence

The shared suite preserves its fresh-target factory and all 31 existing named
cases, and now registers all fourteen distinct C019 cases. Core conformance
execution passed 33 integration tests with no ignored tests, including all 45
cases against InMemory, designated old/new mutant rejection and reversed-order
positives. The nineteen private before/after/read/schedule/order instrument tests
also passed. Commands, initial REDs, source snapshots and qualifications are in
`/home/kalle/validation-receipts/core019-work/{foundation,us1-conformance,us2-conformance,us3-conformance}/`.
The full 33-test run precedes three assertion-only explicit C12 nonempty-value
checks; the final C12 target separately passed those checks. Final gates must run
the complete final source.

Raw Backend calls are exercised independently of Store preflight: equivalent
retry at zero and after updates, creation/removal, later equal-StateId and
migration preserves original/current versions, lifetimes, reference relations,
schema, head and events. Foreign raw retry is refused even when its live content
identity matches, and after a real later equal-content commit. InMemory remains
a logical reference host: private candidate construction and cloning/inspection
costs grow with stored versions, references and history. Those costs are
implementation choices, not physical durability evidence.

The supported-facade consumer executed all 45 named cases against the durable
test host and passed fourteen facade tests; eleven process tests also passed.
Actual named host windows, separate-process equivalent/conflicting initializers,
first-commit races, advanced/removal/migration recovery and no-rewrite checks are
recorded in [consumer-creation.md](consumer-creation.md) and
[host-window-coverage.md](host-window-coverage.md). External US3 receipts are
`consumer-us3/{facade-green,process-green}.{json,log}`. These are working-source
receipts, not final Git-revision consumer certification.

Generic around-call probes establish scoped public outcomes and required error
handling. They cannot inspect private physical writes or prove device durability.
The durable host evidence assumes cooperating stable-lock ownership, an already
established/synchronized root, correct Linux/local-filesystem atomic rename and
synchronization, immutable canonical history and honest storage behavior. Process
exits demonstrate process interruption, not machine power loss or arbitrary
external backend conformance.

## Unrelated query-candidate diagnostic retained

An expanded trial C12 ordinary query history exposed an existing trusted-v2
candidate refusal. The neutral diagnostic removes all ordering mutants and uses
the same admitted orders module, seed and reference host:

| Genesis profile | Indexed | Optional index declined |
| --- | --- | --- |
| v1 | Nine evaluation records, eight commits succeed | Same |
| v2 | At position zero: `BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts` | Same |

The diagnostic log and exact temporary diagnostic source are retained in
`us3-conformance/query-profile-diagnostic.log` and `query-diagnostic-source.rs`.
Its print-only diagnostic test was removed after execution; it was neither ignored
nor a normative assertion that the defect must persist. Store's `facts_json`
(`crates/behavior-store/src/store.rs:3067`) adds query `result_hash`, while trusted
candidate decoding (`crates/behavior-verify/src/governance/trusted.rs:154`) passes
those observations to the closed `Facts::parse_queries` domain
(`crates/behavior-core/src/facts.rs:372`), which excludes that field. These functions
were not changed to repair the defect under 019.

C12 therefore checks its intended creation/open/exact-recovery and ordering
obligations, plus nonempty supported declared query **read** records from the
existing Wire 0.7 lab fixture under both genesis profiles. It explicitly verifies
count 1, sum 45 and two projected Order rows, and compares complete semantic read
records with the indexed reference. It claims no closure of the separately
reproduced ordinary trusted-v2 query-candidate defect and no full-Core soundness
verdict.

## External ecosystem migration boundary

Read-only inspection of `../behaviour-ir/core-release.json` identifies published
Core v0.12.0 at `b525da46d4282166418a90141f0c94fd099e9b47`. No ecosystem pin,
binding, build override or release artifact was changed by 019.

`PyBackend` (`../behaviour-ir/crates/behavior-py/src/lib.rs:1702`) delegates creation
to the supplied Python host and propagates performed Python/decoding failures;
that host must supply atomic publication, exact creation-identity retry and
appropriate recovery barriers. `AnyBackend` (same file:1833) delegates to its
selected concrete host and does not negotiate two creation semantics. The
test `DictBackend` (`../behaviour-ir/python/tests/test_store_conformance.py:13,45`)
currently rejects every retry and assigns public genesis/head before filling seed
material. It has not been assessed as conforming to 019 and needs a separately
owned migration when the ecosystem adopts a released corrected Core.

Future ecosystem work must update its declared published Core dependency, fetch
that release's canonical conformance assets, migrate host implementations and run
its official pinned gates. Current pin compilation and the former 31-case suite
do not prove the newly mandatory contract. **Type compatibility is not semantic
conformance.**
