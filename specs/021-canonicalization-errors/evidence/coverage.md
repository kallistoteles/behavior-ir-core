# Core021 evidence coverage

Baseline: `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`; see environment.json and independent baseline manifests. Focused execution and construction evidence are linked below. Source line numbers in the inventory identify the pinned baseline; current functions retain the same names. Frozen-source acceptance is recorded separately after candidate publication.

## Sites

| ID | Source and domain | Consumer / mutation | Disposition / conformance |
|---|---|---|---|
| I01 | `behavior-verify/src/lib.rs:178–179`, raw attestation JSON | Facade returned artifact; unrestricted later edit | Fallible current-value serializer; C01/C02 |
| I02 | `lib.rs:293`, ordinary assembly including raw cached findings | Facade `verify`, CLI, private fresh verifier | Fallible common assembly and callers; cache negative C03, private bridge C08 |
| I03 | `behavior-verify/src/migration.rs:881`, typed generated report | Facade migration producer; raw result editable later | R3 construction invariant, explicit assertion; valid C04, later mutation C02 |
| I04 | `behavior-verify/src/governance.rs:415–416`, raw authorization JSON | Facade authorize/authorize_migration result; unrestricted edit | Fallible serializer; C01/C02 |
| I05 | `lib.rs:121`, constructed Profile document hash | Facade typed Profile fields, detached JSON | R3 invariant; private document/hash helper; C04 |
| I06 | `lib.rs:129–132`, Profile hash extraction | Same domain; inserted string is known | Eliminate extraction default with same helper; C04 |
| I07 | `behavior-store/src/store.rs:3165–3167`, raw supplied policy/waiver to text | Public legacy Evidence attached to action/migration draft | Fallible helper, full artifact checks, `EvidenceMismatch` cause/path; C07 |
| I08 | `behavior-core/src/canonical.rs:130–140`, raw hash input before projection | Facade `tagged_hash`; arbitrary nested JSON | Full-value check then unchanged identity projection; C01/C05 |
| I09 | `governance.rs:153,293,383–392`, raw legacy inputs before projection | Facade waiver hashing/signing, authorization issuance | Full-value parse check plus typed canonical cause; C05/C06 |
| I10 | `store.rs:3261–3271`, raw evidence before cached-flag stripping | Action and migration evidence acceptance | R4 complete supplied-artifact preflight at existing evidence boundary; C07 |
| I11 | `behavior-cli/src/lib.rs:519`, migration admit/apply JSON output | CLI constructed migration results/diagnostics, including failure reports | Checked output helper; no generated empty success; C09 |
| I12 | `behavior-cli/src/lib.rs:774`, engine-info JSON output | CLI constructed version/capability data | Checked output helper; valid bytes retained; C09 |
| I13 | `behavior-cli/src/lib.rs:790`, signed waiver JSON output | CLI returns a typed-generated signature document | Checked output helper after existing signing checks; C06/C09 |
| I14 | `behavior-cli/src/lib.rs:870–872`, admitted item JSON to output | CLI typed admission-report items | Propagate `serde_json::to_value` error via existing CanonicalError::Serialize, then checked output; C09 |

## Boundaries

| ID | Domain | Enforcement | Independent validation | Conformance |
|---|---|---|---|---|
| B01 | Raw serialization and generic identity; arbitrary current JSON from facade returned artifacts | Checked serializers and full-input `tagged_hash` before removing top-level `hash` | Generic encoding supplies no schema, proof or issuer validation | C01/C02/C05 |
| B02 | Ordinary attestation issuance; typed checks plus optional raw cached findings | Fallible `assemble → verify_impl → verify`; no artifact issued on failure | Existing selected checks, sorting/deduplication, semantic result and cached-flag identity | C01/C03/C04 |
| B03 | Migration attestation issuance / Profile identity; constrained typed generated domains | Proven R3 construction plus documented assertion; no successful fallback | Existing profile normalization, migration checks and counterexample semantics | C04 |
| B04 | Legacy waiver/policy/attestation decoding, waiver hashing/signing | Full parsed object canonicality before self-hash/cached projection; typed governance source; checked existing hashes | Existing closed fields, hash syntax, waiver timestamps, signing keys/signature rules and profile-specific legacy meaning | C05/C06 |
| B05 | Legacy action/migration authorization issuance and later acceptance | B04 inputs, full record/current value checked, existing checked authorization hash; raw returned serialization checked | Existing policy judgment, record replay, subject/state bindings, valid refusal decisions; no promotion to authenticated authority | C01/C02/C06/C07 |
| B06 | Fresh authenticated ordinary/migration proof generation and signing | Existing fresh path, no diagnostic cache; ordinary common-assembly Result mapped to TrustedError; migration R3 construction | Exact admitted subject, complete expected manifest, report structure/identity, purpose-bound signature, verifier/profile binding; infrastructure abort separate | C08 |
| B07 | Current authenticated authorization/signature/evidence decode and use | Existing strict `decode_strict`, closed typed decoding, checked hashes, private checked values; detached JSON must re-enter through decoders | Expected context/issuer/role, signature purpose, independent manifest/subject, unsigned rejection; fresh-vs-archived rules | C05/C08 |
| B08 | Store action/migration authoritative evidence acceptance and persistence | Complete supplied legacy component checks in `evidence::check` / `check_migration`; checked `text`; existing trusted checker for v2; archive hashes before backend commit | Existing transition/migration/store-state bindings, policy/citations, trusted context, concurrency/head validation, early upgrade/history refusals, backend atomicity | C07/C08 |
| B09 | CLI/consumer publication of a canonical artifact | Producer Result then complete canonical text, then existing file write/emit; authenticated envelope and diagnostics both ready before either output | Existing exit/result semantics, newline and successful bytes; OS I/O errors unchanged | C09/C10/C11 |

## Conformance cases

| C01 | I01/I04/I08, B01/B02/B05 | Full valid raw text/hash equivalence; null/empty string/array/object encode correctly; unsupported nested object/array causes `Float(path)`, never empty success | Core `tests/canonical.rs`, verify `tests/hashing.rs` vectors; add missing raw artifact serializer controls |
| C02 | I01/I03/I04, B01/B03/B05 | Generate each ordinary/migration attestation and action/migration authorization via supported paths, then mutate raw nested data; retain generation-time and embedded hash/signature fields; typed refusal without repair | New facade canonicalization target; internal focused serializer cases where helpful; canonicalizable edits serialize but existing validator still refuses invalid meaning |
| C03 | I02 / diagnostic cache, B02 | Directly poison a valid matching cache entry's surviving finding; prove hit reaches ordinary assembly; `verify` returns canonical error, no issued empty identity; cache write skip emits no noncanonical entry | Reuse cache warm/cold/resource tests; add poisoned raw file case. CLI/consumer versions establish public reachability |
| C04 | I03/I05/I06, B03 | Profile no-float construction across enum normalization/u64 boundaries; migration model-derived findings canonical; old/new bytes/hashes and valid semantic results equal; assertions documented locally | Reuse migration content addressing/counterexamples, preservation determinism, Profile tests; independent baseline needed beyond self-equality |
| C05 | I08/I09/I10, B01/B04/B07 | Floats only in excluded top-level `hash` or `checks[].cached` fail before exclusion; canonical excluded values keep prior hash; nested hashes remain content; retained stale identity cannot bypass current check | Core/verify hash vectors, targeted legacy decoder and Store regressions; strict current trusted clone/re-entry controls reused |
| C06 | I04/I09/I13, B04/B05 | Valid waiver hash/signing and both authorization producers preserve bytes/signatures; invalid full inputs produce canonical source; canonicalizable stale hash/result/signature/policy inputs retain existing invalid/refused outcome | Reuse governance deterministic/tamper/waiver cases; add missing typed source and excluded-metadata negatives |
| C07 | I07/I10, B05/B08 | Each supplied legacy Evidence component checked recursively in eligible action and migration paths; unsupported policy/waiver keeps cause/path; stripped attestation metadata cannot bypass migration check; head/records/registry unchanged on failure | Extend existing Store governance/migration fixtures under eligible require:none. Preserve required-legacy upgrade and profile/history refusal phases; valid commit/replay unchanged |
| C08 | B06/B07/B08 | Fresh authenticated cache isolation, complete expected manifest, signatures/context/role/issuer, archived-vs-fresh checks unchanged; private assembly adapter maps canonical failure distinctly; canonicalizable invalid controls still fail | Reuse trusted_verification/trusted_governance and trusted Store/consumer suites; private adapter check is not a demonstrated public fresh-input negative |
| C09 | I11–I14 and CLI artifact callers, B09 | Valid CLI stdout/file bytes/newlines/statuses preserved; poisoned-cache verify exit2, path/cause stderr, zero stdout, pre-existing --out untouched; existing negative1 / infrastructure3 / usage-I/O64 unchanged | Extend cli_verify; retain cli_migration/cli_authorize/cli_engine_info/hash/signature and authenticated no-output controls. No fabricated unreachable float source for generated-only commands |
| C10 | Public Result/export/governance variant, B01/B02/B04/B05/B09 | Compile/run before→after migration examples using only facade + serde_json; successful ordinary/migration/action+ migration authorization, mutable drafts, concrete `CanonicalError`/governance cause handling and poisoned cache failure | New `consumer/tests/canonicalization.rs` target (planned), adapt existing consumers. Solver is required, not silently skipped |
| C11 | Delivery / no suppression left | Reviewed complete inventory and migration/version docs; all gates, deterministic valid baseline comparison, frozen Git consumer provenance; no new unsafe canonical-to-success adapter | Exact `scripts/gates.sh`, `check-consumer.sh --rev SHA`, public surface check; source review distinguishes ordinary defaults/cache misses |

## Retained construction evidence

Profile consists only of normalized enum strings and u64 budgets, returning detached JSON. Migration ignores cache, generates checks privately and encodes model counterexamples through model_value and semantic::value::encode; decimals/exact values become strings. See research R3 for source-chain evidence. These are construction invariants, not fabricated reachable raw producer failures.

## Adjacent classifications

Best-effort Cache::put skips unsupported entries; Cache::get parse/read misses recompute. Structurally usable matching hits with surviving raw findings must fail ordinary assembly. Ordinary Option access/sort defaults and byte-length hashing defaults are not canonical-error suppression. Store idempotent recovery compares the complete incoming/archive bundle and checks its identities; early legacy upgrade/history refusals remain ahead of fresh evidence validation.

## Adjacent typed Core domains reviewed during implementation

The final scoped search also found three neighboring defaults outside I01–I14.
They are not unclassified raw-artifact paths and are unchanged:

- `behavior-core/src/serialize.rs::to_wire_json` consumes an admitted `Module`.
  `to_wire_value` uses the typed semantic representation; its existing local
  no-float invariant is retained. Module constructors/semantic fields are not an
  arbitrary editable attestation value.
- `behavior-core/src/eval.rs::query_s` canonicalizes captures produced immediately
  by `Evaluator::captures`, which evaluates a typed expression and calls
  `semantic::value::encode(&e.ty, &v)`. That encoder emits integer JSON for Int
  and strings for Decimal/Exact, recursively; no raw capture JSON enters this
  generated identity material.
- `behavior-store/src/store.rs::facts_json` hashes query `members`. The producer
  uses `Facts::to_json`; `QueryFact.members` is `Vec<String>`, so the hash input is
  an array of strings (or canonical null at a missing lookup). Arbitrary evidence
  is checked separately; this helper does not consume raw candidate fields.

Existing canonical/query/hash/serialization regression suites and frozen vectors
cover these neighboring typed paths. No new production change is justified by
these reviewed domains. Best-effort cache and Option classifications above remain
in force.

## Implemented enforcement and focused evidence

- B01/I01/I04/I08: raw serializers return `Result`; generic tagged hashing checks
  the full value before self-hash projection. `us1-green.json`, the core canonical
  target, verifier raw canonicalization target and facade `editable_public_artifacts_have_checked_serialization`
  cover C01/C02/C05. Old runtime probes are in `probes/us1-*`; physically isolated
  reruns in `baseline-isolation-workspace.json` / `baseline-isolation-consumer.json`
  supersede shared-target runs.
- B02/I02: `assemble`, `verify_impl`, `verify_complete` and public ordinary `verify`
  propagate `CanonicalError`. `us2-green.json`, `us2-verifier-green.log.txt`,
  `us2-consumer.json` and the shared poisoned-cache fixture cover C03. The tests
  establish a matching warm hit and a surviving finding, and verify no unsupported
  cache materialization. Private fresh verification never uses this cache.
- B03/I03/I05/I06: the adjacent Profile/migration assertions document R3 at the
  call site. `us2-verifier-green.log.txt` covers Profile extrema/normalization and
  generated migration reports. The public producer signatures remain constrained;
  returned JSON drafts are still mutable and their serialization is checked.
- B04/B05/I09: `governance::parse` checks complete parsed objects before field
  deletion. All six legacy hash error adapters preserve the canonical source.
  Syntax/object/schema `Invalid` and existing replay/policy/signature judgments
  remain. `us3-governance-green.json` covers typed policy/attestation/waiver causes,
  stale canonicalizable result/hash refusals and reused valid/tampered signatures.
  The hash delegation/vector target is reused with US1's full-input core test;
  no redundant copy is added to verifier hashing tests.
- B08/I07/I10: `evidence::check_components` checks authorization, execution_policy,
  attestation and every waiver in both action and migration evidence validation,
  before `sealed`/`cited` strip metadata or any backend commit occurs. `text` is
  fallible. The source and isolated runtime RED are in `probes/us3-store`.
  The old migration actually commits the unsupported cached metadata. New tests
  compare full backend Debug snapshots (head, versions, records, indexes and genesis),
  not just a head number. They use eligible `Require::None` fixtures; no required
  legacy upgrade refusal is misreported as canonicality enforcement.
- B06/B07/B08: existing strict current decoders, checked private fields, signatures,
  expected manifests and independent context remain unchanged. Exact reused test
  names are in `us3-trust-controls.md`. The common-assembly error bridge preserves
  category/cause and is a private defensive check, not a claimed public fresh-proof
  float ingress or forgery. Existing recovery compares original evidence/identities;
  archive hash failures remain before backend mutation.
- B09/I11–I14: checked `canonical_text` handles direct output and diagnostics;
  admission item conversion maps `Serialize` rather than substituting null. Both
  authenticated envelope and sidecar text exist before publishing either. The
  original cache process regression covers exit 2, stderr cause/path, no stdout
  and unchanged existing --out. Five direct generated-output cases compare exact
  old stdout bytes including newline; signing with unsupported self-hash metadata
  is also refused. Private formatter tests cover unavailable generated-only
  float ingress without inventing a public injection API.
- C04/C06/C10: `us3-consumer-green.json` and the adapted baseline preservation
  harness compare all 16 primary frozen outputs, including separate cold/warm
  negative and verified reports, Profile extrema, both migration outcomes, both
  authorization producers, policy, waiver/signature, evaluation record and Store
  history/replay identities. New public tests use only the facade and serde_json;
  concrete canonical and governance sources, draft edits, cache and Store refusal
  compile/run there. The original old-API capture harness compiled and ran on the
  independent baseline. Supplemental direct CLI byte provenance is `baseline-cli.json`.

Canonicalizable invalid controls remain necessary: encoder success does not
establish a correct hash, true finding, complete proof or permission. Store's new
full-value check can win before a later hash/citation mismatch for multiply-invalid
input, but stays in the existing commit/migrate evidence phase. Early required
legacy/history refusals and original-event recovery keep their existing order.
No new schemas, identity domains, historical interpretation or public raw-finding
injection mechanism were introduced. No frozen golden bytes were rewritten.

## Completed source audit and requirement mapping

`pre-freeze-clippy.json` is a successful all-target review. Only the two locally
proven Profile/migration `expect` calls need scoped lint allowances; both state the
construction invariant beside the call. `us3-store-green.json`,
`us3-trust-green.json`, `us3-store-trust-green.json`, `us3-private-green.json` and
`us3-bridge-exact-green.json` supply the persistence/current trust/private adapter
results. The zero-match filter attempt is explicitly rejected as evidence in
`us3-bridge-filter-zero-match.json`. `us3-cli-green.json` covers actual CLI
process controls, including existing 0/1/3/64 outcomes; `quickstart.json` confirms
cold/warm stdout=file=independent baseline bytes and equal embedded identity.

| Requirement | Actual enforcement / evidence |
| --- | --- |
| FR-001 | I01/I02/I04 checked Results; us1-green.json, us2-green.json, us3-consumer-green.json |
| FR-002/003 | Reviewed I01–I14, B01–B09 and adjacent domains above; source-audit.json |
| FR-004 | Checked propagation at raw boundaries; R3 local assertions at Profile/migration; us2-verifier-green.log.txt |
| FR-005 | CanonicalError export/source wrapper and Store component cause/path; us3-governance-green.json, us3-store-green.json |
| FR-006 | Editable returned values and retained old metadata; facade canonicalization tests, us3-consumer-green.json |
| FR-007 | All 16 frozen byte comparisons; baseline-isolation-recheck.json, facade preservation harness; existing hash/historical suites |
| FR-008 | Complete text before publication; us3-cli-green.json, quickstart.json |
| FR-009 | Existing strict/authenticated protocols retained; us3-trust-controls.md and trust GREEN records |
| FR-010 | C01–C10 focused proofs/results above; C11 source audit here and final execution externally below |
| FR-011 | Direct signatures and no unsafe parallel path; contracts/public-api.md, docs/versioning.md, facade consumer GREEN |
| FR-012 | Best-effort Cache/Option and typed neighboring domains explicitly classified above; cache no-materialization control |
| FR-013 | B01–B09 complete-value checks or constructor proofs; Store/backend and authority controls in US3 receipts |
| FR-014 | Public API/verification/governance/versioning migration docs; baseline-before and candidate-after facade harnesses |
| SC-001 | All 14 sites and 9 boundaries reviewed with explicit disposition; source-audit.json |
| SC-002 | Reachable raw/cache/excluded metadata negatives and retained draft edits; C01/C02/C03/C05; R3 constructor evidence |
| SC-003 | Independent unchanged primary corpus and valid CLI bytes; C04/C06/C08, preservation harness and quickstart.json |
| SC-004 | Typed producer/governance/Store failures, CLI result distinctions and existing trusted checks; US2/US3 receipts |
| SC-005 | Compiled direct Result signatures and minor-class assessment; contracts/public-api.md, docs/versioning.md |
| SC-006 | Complete B01–B09 enforcement mapping; supplied migration cached-float refusal and unchanged full backend; trusted controls |
| SC-007 | Facade migration success/failure, independent valid bytes and CLI publication contract; C09/C10 and docs |

C11's final execution is intentionally **not asserted by this pre-freeze audit**.
T044–T048 must supply unchanged full gates, a pushed exact-Git consumer with the
actual temporary manifest/lock copied before cleanup, matching CLI provenance,
final conformance review and receipt under
`/home/kalle/validation-receipts/core021/<tested-candidate-sha>/`. That path avoids
self-referential source hashes. Task-completion metadata is separate from tested
source. No release/merge/tag is part of this feature delivery.
