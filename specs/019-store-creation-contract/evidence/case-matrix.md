# Planned and executed case ownership

Requirements coverage is fixed before production changes. FR001–005: candidate
validity/completeness and seed-negative Core/facade controls; FR006–011: identity,
uncertain errors, retries/races and historical preservation; FR012/016:
compatibility/source custody; FR013: separate law and host evidence; FR014/015:
shared cases, actual host windows, inventories and documented premises.
SC001–006 are assessed by complete publication/no-public partial states, refusal
without mutation, exact equivalent/foreign recovery, historical preservation,
error handling and closed evidence matrix in the final report.

Core contract/recovery/property tests cover creation semantics; private tests
cover cache authority. Shared cases cover the current Backend semantics, with
activated mutants. Durable process tests cover host-specific windows. See tasks
for exact test-first dependencies; no case is claimed executed by this table.

| ID | Case | Required observations |
| --- | --- | --- |
| C019-01 creation_complete_product | Empty/nonempty seed, required refs, exact G/H0/versions/universes/lifetimes/views; ordinary reopen coherent |
| C019-02 creation_invalid_seed_no_publish | Type/range/schema/duplicate/reference/Behavior refusals; Backend create invocation count remains zero |
| C019-03 creation_before_publication_failure | Before-inner-call fault on isolated absent target; fresh observer sees absence |
| C019-04 creation_lost_ack_recovery | After-successful-inner-call error retained; explicit retry recovers exact original Store |
| C019-05 creation_equivalent_retry | Position-zero retry adds no initialization and preserves canonical primary material |
| C019-06 creation_conflicting_retry | Policy/schema/seed or legacy sequence mismatch gives established conflict; original history unchanged |
| C019-07 creation_advanced_recovery | Update/create/remove and equal-StateId later position preserved; original incarnations still checked |
| C019-08 creation_migrated_recovery | Original Module/G recover actual migrated head cold; fresh old-schema operation still refuses normally |
| C019-09 creation_competing_equivalent | Deterministic same-target publishers initialize once; equivalent result recovers |
| C019-10 creation_competing_conflicting | One complete winner; positively established foreign identity conflicts; no mixed product |
| C019-11 creation_recovery_read_failure | Genesis/head/version/universe/incoming/history failure is operational; no invented absence/conflict/success |
| C019-12 creation_order_independence | Backend enumeration/edge order and canonical object-member order do not change result; optional unindexed path agrees |
| C019-13 creation_incomplete_product | Successful observations with missing seed/head/hash/anchor are refused as incomplete or delegated typed integrity failure |
| C019-14 creation_publication_read_interleaving | None-genesis then publication is legal; Some-genesis then later commit uses one captured history coherently |

| ID | Obligation | Establishment |
| --- | --- | --- |
| P019-01 | Legal original product before mutation | Existing full seed validator; invalid-input controls prove no Backend create call |
| P019-02 | Atomic Absent/Complete publication | Host invariant plus generic outcomes and named host-specific fault windows |
| P019-03 | No public private staging | Staging-only fresh observer; deliberately exposed-staging mutant |
| P019-04 | Exact original creation identity | Existing canonical G/StoreId plus complete original product; foreign/equal-StateId controls |
| P019-05 | Idempotent equivalent retry | No second semantic initialization; original versions/refs/history preserved |
| P019-06 | Deterministic established conflict | Complete foreign witness; no error-message parsing or unknown-to-conflict conversion |
| P019-07 | Bounded operational failure handling | Original create error retained unless complete foreign conflict proven; secondary read failure controls |
| P019-08 | Coherent captured history under races | Some-genesis witness then one head; legal publication-straddling and later-commit schedules |
| P019-09 | Advanced/migrated history preserved | Original material at zero; actual later schema/head/events retained; no reset |
| P019-10 | Candidate/cache non-authority | Only exact acknowledged/verified position-zero evidence may seed cache; advanced/unresolved paths cold |
| P019-11 | Profile-sensitive normalization | v1 raw/encoded distinctions and seed order; v2 canonical rules; no historical rewrite |
| P019-12 | Generic open authority bounded | Structural completeness without Module; no independent Ref/Behavior proof claim; missing material refused |
| P019-13 | Durable success and recovery barrier | Stable cooperative lock, file/dir sync, correct root premise; post-rename ambiguity covered |
| P019-14 | One current host semantics | Normative docs, complete first-party role inventory, migration note and new shared conformance |
| P019-15 | Historical/semantic neutrality | Protected bytes/hashes/profiles unchanged; no transition insertion, dispatch or verifier change |
| P019-16 | Exact delivered-revision evidence | Frozen source, canonical gates and exact facade consumer; external immutable receipt |

Durable owner covers before staging, partial private write, full temp before
sync, synced temp before rename, rename failure, post-rename/pre-directory-sync,
directory sync failure, post-sync lost reply and recovery read/sync failure.
Separate process races cover equal/foreign initializers, first commit, advanced
removal/migration. Normal readers cooperate with the stable writer lock and
recovery sync barrier. Process exit does not prove device/power-loss behavior.
Final executed closure is recorded in case-closure.md and targeted-re-audit.md.

## Executed closure

T055 is closed by [case-closure.md](case-closure.md), actual45-case reference and
durable runs, all14 creation cases under supported profiles, retained activated
mutants and all55 disclosed host rows. The original planned mappings above remain
requirements, not themselves test logs. All significant limitations and the
outside-019 v2 query-commit finding are explicit. Final exact-source delivery
validation remains in the external frozen-candidate receipt.
