# IDENTITY test coverage and run requests

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Owner `/root/audit016_verify`.
E-COORD-009/012–016 now supplies collected case lists and immutable exact-baseline
default execution. No lane compilation/test was launched. The scoped law table
below explains coverage and shared comparators; green gates are not a universal
preimage/replay theorem.

| Domain law / negative case | Existing source and requested target | Comparator, scope and shared assumptions |
| --- | --- | --- |
| Recursive key sort, UTF-8 order, no floats and canonical round trip | core tests/canonical.rs, target canonical | Expected compact byte strings and decode round trip; shared serde serialization. Four fixed cases do not prove all arbitrary documents. |
| Self-hash exclusion, other fields/tag inclusion and frozen legacy decision domains | core tests/canonical_tagged_hash.rs | Separate SHA oracle over expected canonical bytes; fixture vectors; nested hashes remain bound. |
| Frozen semantic binary preimages/domains | core hash_vectors | Published fixture expectations; legacy profiles. Same fixtures can preserve a historically incorrect contract, so this is compatibility evidence. |
| Location independence, declaration permutations, display name versus public lookup, conversions and cyclic dependency refusal | core hash_properties | Proptest location shifts plus fixed declaration/semantic-change cases; uses real admit/hash, not an independently implemented evaluator. Cycles have no admitted hash. |
| Canonical semantic encode/decode and idempotence | core serialize | Every collected wire fixture; admit->serialize->admit keeps identity and repeated serialization bytes. Shared admission/serialization can hide common defects. |
| Schema versus behavior changes | core schema; Store schema_binding, schema_binding_props | Explicit changes to rules/actions versus declarations; property-generated edits and schema mismatch refusal. Declaration/schema helper is shared. |
| Command bag/product permutations, multiplicity, omitted true guard, public name/type/expression distinctions | core command_identity | Independent binary oracle for all new domains and empty product vector; equal one-run result deliberately not sufficient for definition equivalence. Covers current profile, not every legacy encoding. |
| Command descriptor/intents integrity and replay tamper cases | core command_records, command_replay | Structured archives/type/value/order/hash mutation rejection and original behavior replay. Some helpers share production primitives; independent vectors complement them. |
| Current diagnostic sidecar exclusion, historical v1 preservation, read tamper/closed shape | core read_soundness | Equality, round trip and relocated source records; captured failing-query evidence; archived inner-record format regressions. Current/legacy are separate assertions. |
| Invocation identity/contradictory envelope semantic checks | core invocation_replay | Rehashing a tampered envelope does not make it valid; standalone replay without a live snapshot; shared canonical identity is not itself replay proof. |
| Live-state add/remove/rebuild and order independence | Store muhash | Properties permute up to 12 keyed entity contents; same production accumulator on both sides, so group/hash implementation common defects possible. Fixed swap-values negative case checks identity-key binding. |
| Backend order and indexed/unindexed semantic record invariance | Store query_order_props | Wrapper permutes/reverses Backend enumeration and compares actual decisions to reference; shared evaluator; independent ordering layer exercises transport order. |
| Command occurrence multiplicity, copied histories, same-state forks, intentional repeats versus recovery | Store command_occurrences | Explicit tuple formula uses shared hash_of helper, not independent digest implementation; verifies derivation/dependency distinctions. |
| Committed command/history replay and invocation history coordinates | Store command_replay, invocation_history | Exact committed records and historical state/schema, no external command dispatch; PERSIST owns failure/tamper completeness. |
| Finding/check key exact input coverage and canonical document delegation | verify hashing | Changes every input field; frozen tagged-hash vectors; legacy cache integrity is deliberately lower trust. |
| Purpose-separated signatures, manifest/report/content identities, archived proof eligibility and diagnostic exclusion | verify trusted_verification | Independent canonical document/signature golden vectors and canonical manifests; fresh current path requires exact subject/profile/version. Includes existing poisoned-cache boundary case. |
| Candidate/context/policy/issuer/authorization mismatch refusal | verify trusted_governance; Store trusted_governance | Independently expected canonical content and exact binding adversarial tests; signing key custody and solver correctness remain assumptions. TRUST owns full admissibility analysis. |

Requested commands are root-managed under the pinned environment, from the
unchanged baseline. The target lists above must be collected and run without a
name filter silently omitting cases. Ignored/performance tests are separate scope,
not evidence for these laws. Actual per-case/group accounting is E-COORD-016 at
`../../test-collection.json`, derived from immutable E-COORD-009/012–015.
Workspace 793 collected, 24 ignored, 769 default executed; external consumer 33
executed, 0 ignored. All ordinary identity table targets executed successfully,
including canonical 4, canonical_tagged_hash 3, command_identity 9,
hash_properties 10, hash_vectors 1, serialize 3, Core read_soundness 14,
Store muhash 3 and verify trusted_verification 21. No ignored case is counted as
passing; quiet group output is distinguished from named collection.
O-IDENTITY-001/010 remain global open obligations, not universal proofs.

Coverage gaps retained: a complete independent proof of binary preimage
injectivity for all published variants; a practical >u32 historical-input
reproducer; a field-by-field negative tamper matrix across every record profile;
and explicit cache/index rebuilding evidence across every facade path. Existing
tests cover many representative algebraic laws but are not full proofs.

E-IDENTITY-002 at `../../runs/IDENTITY/schema-state-properties/run.json` separately
executes schema_binding_props with PROPTEST_RNG_SEED=20261010: both named tests
pass, 0 ignored/filtered. Source config is 48 generated cases per test, covering
bounded generation 0..2, edit kind 0..3/0..5 and item 0..8 against initial/migrated
schemas. Comparator uses the real shared schema/admission/Store implementations,
not an independent hash evaluator. Stderr warns that SourceParallel failure
persistence could not find lib.rs/main.rs; execution still completes, and exact
seed/stdout/stderr are retained rather than claiming automatic failure persistence.
