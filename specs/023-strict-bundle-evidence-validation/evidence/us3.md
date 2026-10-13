# US3 — Versioned and document-boundary compatibility

T033–T042 are established for the covered working-source checkpoint. This is
compatibility evidence under each recorded profile, not v1/v2 equivalence,
universal proof, frozen delivery validation or full v2 Store conformance.

External source-bound receipt:
`/home/kalle/validation-receipts/core023/us3-compatibility/mandatory04/receipt.json`.
It binds the known Git revision, copied test sources, source-before/after digests,
collection, complete commands, statuses and logs. The scoped source manifest was
unchanged throughout this run. The final delivery SHA is intentionally not written
here; final gates and exact-Git consumer validation remain separately required.

## Collected and executed controls

All listed commands used the pinned Nix shell with `CARGO_BUILD_JOBS=2`,
`CARGO_PROFILE_DEV_DEBUG=0` and `CARGO_PROFILE_TEST_DEBUG=0`. Each target was
collected with `-- --list` before execution. Resource flags alter build resource
use, not acceptance requirements.

| Run group | Targets/evidence | Passed | Ignored |
| --- | --- | --- | --- |
| New dedicated compatibility | Store `strict_bundle_compatibility` (30); Verify counterpart (7) | 37 | 0 |
| Core quickstart regressions | `queries`, `facts`, `read_replay_integrity`, `read_goldens`, `strict_profile_replay`, `replay_evidence_authority` | 88 | 0 |
| Required Store group | `queries`, `query_replay`, `read_store`, `read_store_past`, `read_store_replay`, `trusted_governance`, `strict_profile_replay`, `replay_evidence_authority` | 125 | 2 |
| Earlier same-source Store group | `conformance`, `history_integrity`, `migration_context`, `archive_action_profiles022` | 67 | 0 |
| Verify quickstart regressions | `trusted_governance`, `trusted_verification`, `queries`, `reads`, `hashing` | 58 | 0 |
| Targeted Core 017 | `resulting_state_validity`, `resulting_state_order`, `resulting_state_profiles` | 43 | 0 |
| Targeted Store 017 | `resulting_state_validity`, `resulting_state_history`, `resulting_state_boundaries`, `resulting_state_commit_faults`, `resulting_state_reuse`, `resulting_state_command_history` | 67 | 0 |

Every required run/collection returned zero. Counts describe tests, not mathematical
proofs; tests asserting an established INCONCLUSIVE verifier outcome do not turn
that outcome into a proof.

The two pre-existing optional query-scale tests are
`a_long_query_history_replays` (10,000 transitions) and
`a_thousand_transition_query_history_replays` (1,000 transitions). They remained
ignored under their existing explicit scale-test instructions. They are excluded
from passing acceptance evidence; no mandatory 023 case is ignored or skipped.

An additional diagnostic runner also completed `migration_replay` with three
passing ordinary tests and the existing ignored
`ten_thousand_transitions_across_three_migrations_replay`, plus `migration_store`
with thirteen passing tests. These are supplemental evidence, not substitutes
for the actual prepared/commit/replay route below. That runner subsequently repeats
other groups already covered by the required checkpoint; its overall status and
duplicate counts are not used to establish this checkpoint.

## T033 — Exact v1 comparison

The original sixteen characterization test names, functions and complete source
prefix are unchanged from the reviewed test-only revision. Their actual sorted
`BASELINE` outcome documents match
`/home/kalle/validation-receipts/core023/baseline-compatibility/outcomes.json`
exactly, including phase, selected category/cause, correct record/bundle identities
and refusing authoritative-snapshot identities. See [v1-baseline.md](v1-baseline.md).

Correct v1 hashes decode and commit. Wrong, wrong-domain, malformed, non-string
and missing hashes still decode structurally and fail the independent historical
comparison at commitment. Store/transition/parent/head/time/schema/declaration
defects retain priority; actually activated `record(1)` and first/second head read
failures remain operational. Refusals neither call Backend publication nor change
head/history/versions/lifetimes/refs/command fields or private backend data.

## T034–T037 — Document domains and history

The new Verify target uses the unchanged ordinary Facts parser. Original ordinary
query observations round-trip; adding `result_hash` causes `DECODE_ERROR`.
No-query observations, explicit null values and permitted supplied universe facts
retain their existing domain. Original query-read-v1 bytes/identity replay; adding
a bundle-only hash fails even after resealing the read-record identity.

| Control | Collected dedicated tests | Qualification |
| --- | --- | --- |
| H01 | `h01_legacy_required_recovery_remains_structural_and_read_only`; `h01_fresh_required_v1_write_keeps_upgrade_refusal` | Original self-hashed legacy decision 0.4 control: structural recovery, never claimed captured authentication |
| H02 | `h02_actual_pre017_command_profile_recovers_and_replays` | Original durable command event, decision 0.7/profile 0.8, no current validation marker |
| H03 | `h03_actual_signed_pre017_profile_recovers_and_replays`; `h03_archived_verifier08_receipt_is_not_current_authorization` | Original signed durable event, original evidence/context, authenticated historical recovery; verifier 0.8 proof remains ineligible for fresh authorization |
| H02/H03 live boundary | `historical_candidates_do_not_gain_fresh_commit_authority` | Archive/local decoding does not enable a new commit |
| K01 | Three `k01_original_decision0{4,5,6}_constructed_wrapper_keeps_legacy_codec` tests | Original inner records in newly constructed wrappers; codec controls, not historical Store publications |
| K02 | `k02_real_archived07_and_actual_current08_keep_separate_codec_profiles` | Actual old 0.7 layout versus actual current producer 0.8; no retagging or cross-profile equality |

H03's standalone captured `host-store/bundle.json` is a pre-attachment bundle,
whereas the immutable event contains committed evidence/context. The tests compare
their exact candidate claims, then separately compare committed evidence and
context with original `evidence.json`/`context.json`. They do not assert that these
different envelope stages have identical full bundles. H02/H03 imports copy
already-durable original events through a test host, never the fresh authorization
path, and preserve exact event/history/command-occurrence identities.

Unsupported Wire 0.1–0.3/unknown and queries under Wire 0.4/0.5 remain unadmitted.
Fresh Wire 0.8/v1 commitment retains `HISTORY_FORMAT_UPGRADE_REQUIRED`; fresh
required-v1 writes retain `TRUSTED_GOVERNANCE_UPGRADE_REQUIRED`. Cross-format live
commitment retains its earliest pairing refusal. Raw cross-format envelopes,
unknown bundle/candidate kinds/history formats, inconsistent recorded profiles,
bundle universe and forbidden migration observations remain refused.

The initial new characterization run retained five assertion failures caused by
two incorrect test-oracle assumptions: conflating H03 pre-attachment/committed
envelopes, and expecting every invalid migration observation to reach the same
late guard. Only those new test expectations changed. Logs `run.log`/`.status` and
subsequent runs remain retained; these failures are not correction RED evidence
or silently fixed production findings.

## T038 — Nine read support rows

All nine original Store matrix tests were collected and passed. Their owning
paired Core/Store paths also exercise supported invocation-contained reads:

| 018 row | Owning Store test |
| --- | --- |
| M04-A | `store_matrix_m04_ad_hoc_v1` |
| M05-A | `store_matrix_m05_ad_hoc_v1` |
| M06-A | `store_matrix_m06_ad_hoc_v1` |
| M07-D | `store_matrix_m07_declared_v1` |
| M07-A | `store_matrix_m07_ad_hoc_v1` |
| M08-H-D | `store_matrix_m08_declared_historical_v1` |
| M08-H-A | `store_matrix_m08_ad_hoc_historical_v1` |
| M08-C-D | `store_matrix_m08_declared_current_v2` |
| M08-C-A | `store_matrix_m08_ad_hoc_current_v2` |

The owning Core matrix and raw/unsupported/refusal controls passed separately.
No ad-hoc invocation capability, cross-profile record equality, new read hash
field or rewritten historical fixture was introduced. Original recorded profile,
snapshot/provenance distinctions and read/invocation identities remain normative.

## T039 — Actual migration compatibility

`actual_legacy_migration_preparation_stays_empty_and_dispatches_legacy_history`
uses admitted Migration IR 0.1 and a real typed source/target transformation. Its
transient prepared v2 candidate has exactly `{}` observations. Commitment still
dispatches to a legacy migration bundle/event, preserving absent legacy format,
raw closed decoding, hash, schema change and both data/behavior replay.

`actual_prepared_migration_does_not_gain_query_observation_support` starts from
that real output. Nonempty ordinary observations reach the original empty-facts
guard; bundle-style query hashes remain rejected earlier by ordinary Facts in the
unchanged migration path. Their existing distinct causes are preserved. No query
migration support or fabricated historical query migration is claimed. Supported
trusted v2 migration routes additionally passed the owning trusted-governance
and migration-context targets; actual v2 producer laws remain US4 work.

## T040–T042 — Source invariants and conclusion

All 1,412 entry-manifest files were compared. Only five permitted existing code/test
paths differ: private conformance registration, Store's unchanged-value query-tag
alias, Verify's private candidate callsite and hash-tag declaration, and independent
hash-vector tests. New codec/test files are explicit additions. Every existing
fixture/schema, ordinary Core Facts/evaluation/read source, v1 document/replay
source, facade surface, dependency metadata and constitution remains unchanged.
Current wrapper asset corrections are still a later scoped US4 exception.

The v1 decoder and commitment/replay implementations retain their source
definitions and sequencing; the sole Store change is an alias to the identical
historical query-result tag, with unchanged hash algorithm and producer body.
Migration keeps its own old empty-observation boundary. These source invariants
support the composition argument for pipeline preservation. The empirical cases
confirm named legal/invalid/error routes and exact outputs, not universal coverage
of every backend or input. Existing canonicalization/cryptographic/Backend
conformance assumptions remain; operational faults are checked only when actually
performed.

C023-08/11/13/14 and the covered P023-06/10 preservation premises have the above
source/run chain. The separate ordinary/witness schema finding remains open.
US4 producer/schema/facade coverage, independent targeted re-audit and frozen
delivery gates/consumer evidence are not implied by this checkpoint.
