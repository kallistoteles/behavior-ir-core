# Supported producer–consumer domain

This matrix records existing contracts at the researched baseline, not a new
compatibility capability. Store genesis/evidence policy, Wire, decision profile,
bundle format and read profile are independent axes. Compare semantics and bytes
within each supported profile, not between historical v1 and v2.

## Supported cells

| Cell | Existing domain | Producer document | Required consumer/phase |
| --- | --- | --- | --- |
| S01 | Fresh legacy state-only action, none policy, Wire 0.4–0.7 | commit_bundle.v1; fresh decision 0.8/current child validation | Historical structural decode/hash then Store commit schedule |
| S02 | Query-bearing subset of S01, Wire 0.6/0.7 | v1 bundle with query result hashes | Same decoding; regenerated exact facts/hash comparison at commitment |
| S03 | Existing legacy required-history control, decision 0.4; other original legacy layouts only under their established codec | v1 bundle/transition; H01 below | Original archive/replay/recovery interpretation; no new candidate codec |
| S04 | Fresh trusted action, Wire 0.4–0.8, none or required policy | commit_bundle.v2 → governance_candidate.v2 action | Strict candidate evidence; independent exact history and policy checks |
| S05 | Query-bearing subset of S04, Wire 0.6–0.8 | v2 query bundle/action candidate | Closed evidence, correct result hash, semantic projection, then historical/governance checks |
| S06 | Concrete pre017 v2 command/history controls H02/H03, decision 0.7 with semantic profile 0.8 | Original v2 bundles, signed history where recorded | Versioned envelope codec, original decision interpretation and exact historical replay |
| S07 | Supported Migration IR 0.1 and source/target behaviors in v2 lineage | Migration candidate with read_facts:{}; migration_bundle.v2 | Empty-observation rule; full existing source/target/transformation checks |
| S08 | Original legacy migration contract | Legacy MigrationBundle with absent format | Legacy decode/hash/commit/replay; no query/candidate phase added |
| S09 | Existing prepare_migration on a legacy Store | Transient v2 migration candidate with {} facts | Checked preparation; legacy Store commit dispatch remains legacy migration |

Fresh decisions use current decision 0.8 irrespective of the admitted module's
Wire version. A codec that recognizes an archived decision version does not prove
an arbitrary Wire/record/bundle combination was historically supported. S03/S06
must use existing archive/control fixtures with their actual custody level and
documented profile constraints, not fabricated historical query-bearing v2 commits
that Core never produced. Codec recognition is separately recorded below; it is
not an additional historical producer cell.

## Concrete historical controls and codec recognition

| Control | Exact source | Recorded profile/custody | Required interpretation |
| --- | --- | --- | --- |
| H01 | [legacy-required-history.json](../../../tests/fixtures/governance-v2/legacy-required-history.json) | store_genesis.v1, commit_bundle.v1, decision 0.4; existing structurally self-hashed legacy history control | Existing required-legacy recovery/upgrade/refusal rules; no current authenticated authority inferred |
| H02 | [commands/bundle.json](../../../tests/fixtures/resulting-state-validity/commands/bundle.json) with [017 archive manifest](../../../tests/fixtures/resulting-state-validity/archive-manifest.json) | Pre017 commit_bundle.v2, decision 0.7, semantic profile 0.8, no current validation_profile | Existing candidate/schema/archive record-profile acceptance; do not relabel it decision 0.8 |
| H03 | [signed capture bundle](../../017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json) with [capture summary](../../017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/summary.md) and [manifest](../../017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/manifest.json) | Actual pre017 signed durable history at source 932eb8188dc28393213491e27f66e3bc7e273a6b; decision 0.7, semantic profile 0.8, verifier 0.8.0 | Original authenticated archive/context/recovery/stream interpretation; archived proof is not fresh verifier eligibility |
| K01 | Candidate codec trusted.rs:160–181; original decision [0.4](../../../tests/fixtures/resulting-state-validity/decisions/decision-0.4/record.json), [0.5](../../../tests/fixtures/resulting-state-validity/decisions/decision-0.5/record.json), [0.6](../../../tests/fixtures/resulting-state-validity/decisions/decision-0.6/record.json) controls | Recognized legacy decision layouts without semantic_profile/commands/validation_profile markers | Preserve codec rules with labeled construction controls; wrapping an original inner record is not a genuine historical v2 Store event |
| K02 | Candidate checked DecisionRecord codec for versions 0.7/0.8 | Recognized record/profile contract; actual old 0.7 controls H02/H03, fresh 0.8 producer rows S01/S04 | Preserve each profile independently; no Wire/record Cartesian product or invented old 0.8 capture |

Original standalone decision controls K01 cover record layout interpretation,
not historical bundle publication. If additional genuine archived bundles are
claimed during implementation, bind their original source/profile/capture manifest
and classify them explicitly. Missing historical capture provenance cannot be
filled by retagging a fresh document. This leaves no invented support cell and
does not waive the recognized codec's existing acceptance/refusal tests.

## Complete scoped path inventory

Paths/line ranges below name the researched source; later implementation line
numbers can move. Structural conveniences are distinguished from checked consumers.

| ID | Path and source | Producer/consumer role | Cell/evidence coverage |
| --- | --- | --- | --- |
| PC01 | Store::evaluate; store.rs:1664–1757 | Actual ordinary action producer | S01/S02/S04/S05, ALLOW only |
| PC02 | Store::invoke/invoke_mode; store.rs:1874–2018 | Unified fresh action producer | Same cells at captured head; refusals/reads/historical invocations produce no fresh bundle |
| PC03 | Store::invoke_intent; store.rs:1823–1867 | Capability-intent wrapper | Same action producer; inner decision is bundle subject |
| PC04 | bundle_from_evaluation/facts_json; store.rs:1761–1820,3067–3086 | Single observed-evidence serializer | Five sections; hashes every query; empty observation null |
| PC05 | CommitBundle::governance_candidate; documents.rs:697–724 | v2 action candidate adapter | S04/S05; null/omitted → candidate {} |
| PC06 | CommitBundle::from_json/hash; documents.rs:691–695,742–778 | Versioned checked raw document consumer | v1 structural path; v2 candidate validation |
| PC07 | documents::decode<T>; documents.rs:232–233 | Already-reduced structural JSON convenience | Not strict raw/integrity evidence; later v2 checked use still validates |
| PC08 | with_evidence/with_trusted_evidence; documents.rs:725–740,782–785 | Attachment/rebinding consumers | Original observations unchanged; exact candidate/evidence binding |
| PC09 | commit/commit_with_context/commit_impl; store.rs:82–89,2024–2280+ | Live commitment/recovery | Exact Store/schema/parent/history/observations/authorization/CAS |
| PC10 | prepare_migration/commit_prepared_migration; store.rs:270–397 | Actual migration producer/consumer | S07/S09; exactly empty observed facts |
| PC11 | migrate/commit_migration_outcome; store.rs:2534–2555,2619+ | Versioned migration dispatch | S07/S08; no invented query migration |
| PC12 | MigrationBundle::hash; documents.rs:829–875 | Archived migration consumer | Legacy path or v2 checked candidate/report agreement |
| PC13 | TransitionRecord::check_kind/hash; documents.rs:916–972 | Action/migration archive wrapper | Version/kind/history/contained-bundle checks |
| PC14 | validate_archived_event/replay_data; replay.rs:146–254,403+ | Data/history consumer | v2 candidate/hash checking; not independent module-derived truth |
| PC15 | replay_behavior_with/rederive_archived; replay.rs:1018+,1114–1122,1243–1273 | Historical semantic consumer | Exact facts/query-hash comparison and migration re-preparation |
| PC16 | commands_since; commands.rs:127–164 | Transitive checked history consumer | replay_data before committed occurrence exposure; no dispatch |
| PC17 | authorize_trusted*/validate_trusted_authorization/archive validation; trusted.rs:728–810 | Opaque candidate consumers | Local integrity distinct from signatures, policy and live commitment |
| PC18 | behavior-engine public facade; lib.rs:120–153,172–196 | Supported external consumer surface | No new export; facade source stays fixed |
| PC19 | CLI governance authorize; behavior-cli/lib.rs:335–413 | Direct raw candidate consumer | Same v2 candidate boundary; no direct Store commit CLI here |
| PC20 | governance-v2/store-v2 wrapper schemas | Public structural consumers | Separate action/bundle observed-evidence refs; genuine archive acceptance |

The complete observed domain is existence, identity use, incoming references,
queries and fields; universe belongs to ordinary supplied facts/current record
snapshot contracts. Migration candidates require {}. The actual grammar is in
[bundle-evidence.md](bundle-evidence.md).

## Unsupported and historical-refusal controls

- Fresh Wire 0.1–0.3, unknown Wire and queries in Wire 0.4/0.5 remain refused.
- Fresh Wire 0.8 commitment to v1 retains HISTORY_FORMAT_UPGRADE_REQUIRED, even
  when evaluation can construct a v1-shaped bundle.
- Fresh required-governance v1 writes retain TRUSTED_GOVERNANCE_UPGRADE_REQUIRED.
- V1 bundle containing v2 history/context/trusted evidence remains invalid; v2
  carrying structural legacy evidence remains invalid.
- Unknown/mismatched candidate, bundle, Store/genesis/history/record products remain invalid.
- Migration query evidence, observed bundle universe and integrity metadata in
  ordinary Facts/read records are not newly supported.
- Replay success grants no new live commit authority or authorization.

## Independent read compatibility controls

Retain the existing [018 support matrix](../../018-strict-profile-replay/contracts/support-matrix.md).
It has nine explicit rows; the first three are abbreviated below without changing
their distinct module versions. Read-record v2 is not Store-v2.

| Module Wire | Read source | Recorded read profile | Existing routes |
| --- | --- | --- | --- |
| 0.4, 0.5, 0.6 separately | Compatible ad-hoc read document 0.7 | v1 | Core/Store read; no ad-hoc invocation |
| 0.7 | Declared read | v1 | Core/Store read and invocation |
| 0.7 | Ad-hoc document 0.7 | v1 | Core/Store read only |
| 0.8 | Declared read | Historical v1 | Core/Store read and invocation |
| 0.8 | Ad-hoc document 0.7 | Historical v1 | Core/Store read only |
| 0.8 | Declared read | Current v2 | Core/Store read and invocation |
| 0.8 | Ad-hoc document 0.7 | Current v2 | Core/Store read only |

Run the owning historical/current replay controls rather than regenerate old
fixtures under a current evaluator. Read facts do not acquire bundle result_hash.
No cross-profile byte equality or new ad-hoc invocation capability is implied.
