# Research: Explicit Canonicalization Failure Contracts

**Date:** 2026-10-15

**Feature:** [021 specification](spec.md)

**Implementation baseline:** `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`

**Baseline tree:** `6c26917635f142cf219de8e4672ae894078d0026`

Source references below are repository-relative and refer to this baseline. It is the freshly fetched `origin/main` and has the same tree as released v0.13.0 (`15094972191aa0ae79705df0397c551a18745399`). The old feature branch was fast-forwarded to this baseline while preserving the clarified specification, decisions and checklist. Prior audit/release receipts are provenance, not execution evidence for 021. This research used source inspection by two independent research agents and consolidation; no runtime tests or builds were run.

## R1 — Reuse the existing typed canonical error

**Decision:** Reuse `behavior_core::canonical::CanonicalError`, explicitly export it as `behavior_engine::canonical::CanonicalError`, and return it from raw artifact serialization and ordinary verification. Add `Clone`, `PartialEq` and `Eq` derives so existing comparable library wrappers can retain the typed source. Preserve its `Float(String)` and `Serialize(String)` variants and their diagnostics.

Legacy governance will add `GovernanceError::Canonicalization { artifact: &'static str, source: CanonicalError }`, with the source marked as an error source. Existing schema/input failures retain `Invalid`. Replace canonical-error-to-`Invalid` flattening at the affected document-hash sites as well as adding full-value checks. Store retains `StoreError::EvidenceMismatch` and includes artifact context and the canonical cause/path in its message; no new Store error variant is required. The private fresh-verification bridge maps its new fallibility to existing `TrustedError { code: "CANONICALIZATION_FAILED", message: cause.to_string() }`.

**Rationale:** The current error already identifies nested floats (`canonical.rs:9–15,89–110`). A second equivalent error adds no useful domain distinction. A canonicalization failure must remain distinguishable from an `Ok(not_verified)` or `Ok(refuse)` result. Existing Store and trusted wrappers already provide typed categories; preserve their public shapes while retaining the cause in their messages. Primary raw APIs and legacy governance additionally expose the concrete canonical error for pattern matching.

**Alternatives considered:** A new artifact-error hierarchy; replacing every wrapper with `CanonicalError`; string-only governance errors; mandatory checked artifact classes. These either duplicate an existing type, discard established error categories, or contradict the selected editable-draft contract.

## R2 — Raw artifacts and ordinary assembly are genuinely fallible

**Decision:** Change both raw `to_json_string` methods and public `verify` directly to `Result<_, CanonicalError>`. Propagate the same result through private `assemble`, `verify_impl` and `verify_complete`. Preserve artifact fields and editing workflows. Successful serialization encodes the current value; it neither repairs stale metadata nor certifies semantic validity.

**Rationale:** `Attestation.value` and `Authorization.value` are public JSON, so post-generation mutation reaches any representable JSON value. Ordinary assembly also has a concrete raw input: `Cache::get` parses arbitrary JSON and forwards `finding` (`cache.rs:39–49`); `CheckResult::from_json` retains that finding (`checks.rs:129–160`); cached checks are consumed by safety, warning and read paths (`checks.rs:436–437,913–914`; `reads.rs:394–396`). Assembly copies surviving findings into its document (`lib.rs:275–293`). A float inside a surviving cached finding can reach the empty-hash fallback.

An effective negative writes/edits the cache file directly using a valid check key and surviving finding identity. `Cache::put` itself does not write noncanonical entries. Do not claim a negative reached assembly if the entry was missed, the finding was discarded, or another error occurred first. Diagnostic-cache poisoning is not authenticated proof forgery: fresh trusted verification bypasses this cache.

**Alternatives considered:** Ignore invalid cached findings, recompute silently, return a fabricated `not_verified`, or constrain every mutation. All hide the selected failure boundary or change the chosen public model. A private `expect` in `verify_complete` would require a broader proof over all generated engine records; propagating the common assembly result is simpler and defensive. No present fresh-proof float input was demonstrated.

## R3 — Retain only supported construction invariants

**Decision:** Keep `Profile::to_json() -> Json`, `Profile::hash() -> String` and `verify_migration(...) -> Attestation`. Remove successful empty fallbacks, documenting the invariant at each infallible canonical operation. Profile should compute document and hash together through a private helper rather than retrieve a string with a default. No generic public infallible raw serializer remains.

**Profile construction evidence:** `Profile` contains `Vec<CheckKind>` and two `u64` budgets (`lib.rs:82–87`). Its document contains normalized enum strings and these integers (`106–125`); the computed hash is inserted as a string. `to_json` returns a detached value. Editing that returned value does not mutate the typed Profile. Supported enum values, normalized duplicates/order, zero and maximum budgets all remain canonicalizable; trusted policy may still reject a semantically inadequate profile.

**Migration construction evidence:** Its cache argument is explicitly ignored (`migration.rs:769`). Private `Decided` values contain generated checks and string requirements (`45–49`). Findings contain strings, hashes, integer locations and generated counterexamples (`264–275,324–336,364–391`). Counterexamples pass through `old_value → confirm::request_sections` (`220–223`), then typed `model_value` and `semantic::value::encode` (`confirm.rs:215–254`). Model values are bool, bounded integers, representable decimal and string (`encode.rs:1870–1887`); semantic encoding renders decimals/exact quantities as strings, and recursively encodes typed values (`behavior-core/src/semantic/value.rs:83–116`). Check metadata is typed (`checks.rs:95–124`). Module/Migration construction is private to Core. There is no raw cache-finding ingress to this assembly.

These premises exclude canonical value errors at construction, within the specification's exclusion of allocation/process/resource failure. A local invariant assertion is allowed by the constitution only with this explanation at the call site. Tests must check these constructors and their output equivalence; they must not add an artificial raw injection path to manufacture a public negative. A returned migration attestation remains editable and its later serialization is fallible.

**Alternatives considered:** Make all typed producers fallible for uniformity; infer all producers are safe from typed Module inputs; retain `unwrap_or_default`. The first adds unnecessary public breakage, the second misses cache provenance, and the third loses the error contract.

## R4 — Validate the complete current value before identity projection

**Decision:** Public `canonical::tagged_hash` checks the complete supplied value for canonicalizability before excluding top-level `hash`. Share the existing recursive no-float validation internally rather than adding a public checked-value abstraction. Then hash exactly the existing material: `UTF8(tag) || 0 || canonical_JSON_without_top_level_hash`. Nested hash fields remain content. No hash tag, digest, separator or canonical byte rule changes.

Legacy governance `parse` will check the complete parsed object before `decode_waiver`/`decode_policy` remove `hash` or `decode_attestation` removes `checks[].cached`. Keep its existing JSON syntax/object failures as `Invalid`; canonical failures use R1's typed wrapper. This is a canonicality check, not a rewrite of legacy schemas into current trusted schemas.

Store legacy evidence checks will preflight every supplied artifact before those projections: `authorization`, optional `execution_policy`, optional `attestation`, and each `waivers` entry (`documents.rs:623–633`). Both action and migration checks must cover the same components. Make `evidence::text` checked and propagate its cause, even when the earlier full-value check makes that second failure defensive. No separate top-level signature list exists in Store's legacy Evidence; signatures inside an artifact are covered recursively.

**Rationale:** Existing exclusions happen before encoding (`canonical.rs:130–140`; `governance.rs:153,293,383–392`; `store.rs:3261–3271`). Unsupported values in excluded metadata can otherwise escape. Store ordinary commits eventually hash the full archived bundle before backend mutation (`2472–2498`), but migration archives only selected authorization verification content, not the whole supplied legacy Evidence (`2642–2646,2713–2777`). Final record hashing therefore does not establish full canonicality of every consumed migration artifact. This is a source-established enforcement gap; it has not been runtime-reproduced here and is not a demonstrated current authenticated forgery.

**Compatibility consequence:** Fully canonicalizable valid inputs retain identical hash bytes and exclusions. A noncanonical value located only in an excluded field can currently receive a hash; it intentionally becomes an error. Such input is outside the full artifact's canonical domain and cannot be counted as valid-byte compatibility evidence. Document this acceptance restriction explicitly, including the public generic hash API. Valid string/bool metadata in excluded fields retains its existing identity treatment. Current-value preflight does not validate a supplied hash or signature by itself.

**Alternatives considered:** Preflight only `document_hash`; check only final archive bytes; remove unsupported metadata before checking; change identity material. These leave the facade's public raw hash boundary unchecked, miss migration inputs, silently drop invalid data, or change valid historical identities, respectively.

## R5 — Preserve error phases, proof authority and output sequencing

**Decision:** Canonical artifact failures in CLI are exit **2**, stderr `behavior: canonicalization failed: {cause}`, and no stdout artifact. Complete all relevant canonicalization before writing an artifact output file. A canonicalization error must leave a pre-existing `--out` file unchanged. Preserve verified/allow **0**, valid negative/inconclusive/refuse **1**, solver/unavailable trusted infrastructure **3**, and existing usage/profile-file/I/O handling **64**.

Use a small checked CLI canonical-output helper for direct JSON output and a shared canonical diagnostic formatter; adapt ordinary verification's producer and both artifact methods before existing `emit`/file writes. Route `TrustedError.code == "CANONICALIZATION_FAILED"` through that formatter (exit 2), and adapt existing authenticated output canonical-error adapters to the same diagnostic. Legacy governance's selected Display already supplies the canonicalization prefix through existing `invalid`. Already checked authenticated `proof_output` and trusted authorization sequencing are reusable evidence (`behavior-cli/src/lib.rs:246–272,418–424`). This does not promise rollback after an unrelated later OS write failure.

Store full-value checks run at existing evidence validation during commit/migration, before backend mutation, never during evaluation/admission merely to move the refusal earlier. Preserve earlier `TRUSTED_GOVERNANCE_UPGRADE_REQUIRED` and legacy-history refusals (`store.rs:2182–2193,2552–2556`). Test evidence canonicality using an eligible legacy `require:none` fixture with supplied evidence; required legacy policy is intentionally refused before that boundary. Invalid supplied artifacts yield `EvidenceMismatch` with the cause. This explicitly replaces a late archive error or lost parser cause where applicable; it does not claim identical sub-error precedence for a document with multiple defects. Successful historical replay and canonical archived identities remain unchanged.

**Rationale:** Semantic results, structural errors, artifact errors, infrastructure failures and backend errors are different outcomes. Current strict trusted decoders, manifests, independent context/issuer/role binding and fresh proofs already enforce stronger authority requirements. Keep those protocols unchanged; copied mutable JSON and diagnostic caches remain outside that authority.

**Alternatives considered:** Reclassify as proof refusal; output a partial report before final encoding; atomic-output redesign for every CLI command; change trusted schemas. These either violate the chosen contract or exceed this bounded remediation.

## R6 — Inventory closure at the pinned baseline

All line references in this table are within `crates/` at the baseline. The action/migration identity rules and historical verifier profiles remain applicable as before; ordinary development cache data is not an additional proof profile. Boundary IDs are expanded in [the boundary contract](contracts/boundaries.md).

| ID | Site and actual domain | Consumer / mutation | Selected disposition; validation |
| --- | --- | --- | --- |
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

Every listed default or pre-projection bypass has a concrete disposition. The wider boundary coverage is deliberate: deleting only the four original empty-string sites would not establish FR-013.

Adjacent operations are classified separately:

| Operation | Classification / handling |
| --- | --- |
| `governance.rs:181,372,391,604,658,733` document hashes | Already propagate; preserve existing schema/semantic checks, retain typed canonical source using R1. Cover action and migration issuance. |
| Trusted decoding, hashing, signing and authorization | Already checked, closed typed domains; reuse B06–B08 enforcement and existing negative controls. Private fresh report bridge adapts R2 only. |
| Store idempotent recovery (`store.rs:2098–2170`) | Requires complete incoming/original bundle equality (or reuses archived evidence when omitted), checked original bundle/record hashes and canonical committed history. Preserve this earlier recovery branch; it does not accept different unsupported evidence as a new artifact. Reuse recovery controls in C07/C08. |
| `cache.rs:52–69` skipped write on encoding/I/O failure | Best-effort diagnostic persistence; no successful canonical artifact is published. Keep recomputation contract; C03 includes no materialization. |
| `cache.rs:39–49` read/parse miss | Best-effort lookup, not canonical output; retain miss behavior. A structurally usable hit with a surviving noncanonical finding is R2's error case. |
| `lib.rs:186,195,198` findings access/sort defaults | Ordinary missing-array/optional sort-key behavior, not canonical-error suppression; unchanged. |
| `governance.rs:486,489–490`, Store citation/claim string defaults | Existing extraction/semantic judgment; unchanged, independent of canonical preflight. |
| `hashing.rs` bounded-length `unwrap_or(u32::MAX)` | Byte-length hashing contract, not canonicalization suppression; outside this change. |
| CLI path option defaults / dispatch error extraction | Path resolution and existing exit propagation, not artifact encoders; unchanged. |

Implementation must refresh this inventory after edits; new adapters cannot introduce an unclassified success fallback. No global rewrite of `unwrap_or_default` is planned.

## R7 — Versioning and migration

**Decision:** Deliver the breaking signatures, added governance error variant and CLI failure behavior in a **0.x minor release** under [versioning policy](../../docs/versioning.md). From the pinned 0.13.0 baseline the next eligible target is **0.14.0**; use a later minor if release sequencing advances first. Release preparation/publication is separate from planning. Update `api/engine-surface.txt` for the sole required new facade export; accessible methods on returned objects are part of the supported contract even without separately re-exported type names.

Keep Wire, decision/store formats, verifier profiles, `VERIFIER_VERSION`, hash domains, signature material and historical interpretation unchanged. This feature changes error contracts, not valid verification outcomes. Add before/after and typed-error migration examples to existing verification/governance documentation, with a versioning entry and corresponding external consumer coverage.

**Alternatives considered:** Patch-class delivery; stage a second safe API beside existing unsafe serialization; rename hash domains or advance verifier versions automatically. These contradict the user's direct transition or alter identities without need.

## R8 — Regression and evidence strategy

**Decision:** Capture independent baseline outputs before production edits, then follow RED → GREEN → refactor. [Conformance](contracts/conformance.md) defines C01–C11. Existing tests are reused/adapted rather than duplicated. New failures target actual gaps: nested raw mutation, poisoned ordinary cache, excluded metadata, lost Store causes and CLI output behavior. Typed Profile/migration construction claims receive positive boundary checks and source proof, not invented raw producer inputs.

Baseline capture must pin this SHA/tree, Rust, dependency locks, solver version and inputs. Preserve ordinary cold/warm artifacts separately (their `cached` bytes legitimately differ but identities agree), migration reports, typed Profile documents and legacy action/migration authorizations. Compare each to its corresponding corrected output under the same profile. Independent existing hash vectors are additional controls, not substitutes for full output equivalence. Solver guard/resource-limit outcomes are not mislabelled reproducible valid-baseline samples.

For reachable bugs, record runtime RED evidence under the old API before edits. Where a new Result assertion would not compile against baseline, use a baseline-compatible probe for the same unsupported input and capture the undesired empty success/hash, accepted excluded metadata or evidence acceptance. Then add the typed-result regression and record GREEN. A compile failure alone is not a runtime reproduction. No RED failure is required for an unreachable constructor error; its proof obligation is R3.

Run exactly `scripts/gates.sh` after implementation, with a present pinned solver and no skipped required acceptance cases, plus the supported facade consumer against the frozen pushed candidate SHA. Retain actual resolved consumer manifest/lock before temporary cleanup, every resolved Core library package's Git SHA, harness/fixture hashes, separate CLI provenance, commands/environment, exit codes and logs. Local path-consumer success does not establish exact-Git delivery. These are future checks; none are claimed executed by planning.

**Alternatives considered:** Regenerate goldens with the new code; treat all compile errors as bug reproductions; rely only on in-workspace tests or a consumer importing internal crates. They fail independent preservation, test-first, or public-reachability obligations.

## Research conclusion

The input domains, exact typed-error/API changes, full-value enforcement, CLI mapping, version class and validation strategy are resolved. There is no remaining product clarification or unjustified constitution exception. Implementation evidence remains to be produced in the tasks/implementation phases; source-established reachability and construction proofs are not runtime acceptance claims.
