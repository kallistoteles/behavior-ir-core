# Contract: Public Proof Identity and Compatibility

The supported public boundary remains `behavior_engine` and the existing Core CLI. Crate-internal tests may call `behavior_verify` directly. No new endpoint, CLI flag, public signature or runtime semantic format is required.

## Fresh proof output

- Verification identifies implementation 0.10.0 after the planned bump. The existing subject/profile/solver/manifest context continues to bind the actual obligations and assumptions.
- The original full C19 verification must return aggregate `verified`, with both unchanged uniqueness obligations `proven`. Other check kinds retain their established semantics; informative counterexamples are not all safety failures.
- Unknown, unsupported, resource exhaustion and failed concretization remain non-proof. Signed inconclusive evidence does not satisfy a requirement for proof.
- Fresh attestations/check keys/hashes may differ from 0.9.0; fresh authorizations that reference those proofs may consequently have new identities too. Historical authorizations remain immutable. Repeated current-context runs retain deterministic authoritative identity; existing diagnostic `cached` metadata remains non-authoritative.

## Archive decoding and fresh eligibility

The two closed verifier-version checks in `VerificationManifest::from_json` and `VerificationEnvelopeV2::from_json` currently accept historical 0.7.0/0.8.0 and the current constant. Preserve explicit 0.9.0 support when current becomes 0.10.0. Continue rejecting unsupported versions rather than accepting arbitrary provenance.

The current subject-validation path recomputes an exact current manifest. Preserve that requirement. An archived 0.7/0.8/0.9 envelope can retain transport authentication and original bytes while failing fresh current-subject eligibility with `INCOMPLETE_VERIFICATION`. Use genuinely signed transport fixtures for this test; the frozen C19 diagnostic report is unsigned.

Keep previously selected Store/governance policies unchanged. Add a deliberately selected 0.10 policy fixture for new-current tests or construct an explicit test-local policy. Do not rewrite `policy-verifier-0.9.json` or silently change accepted verifier versions in existing stores. Fresh authorization continues to apply issuer, role, profile, verifier, solver, expiry and revocation rules.

## Committed-history replay and exact recovery

Archive decoding alone is insufficient. At the baseline, `store.rs::check_reproduced_decision_evidence` routes record 0.8 to current-model validation; v2 migration replay and exact recovery also call the fresh checker. After a bump these paths would demand a 0.10 manifest from already-committed signed 0.9 evidence.

Use the existing archived-purpose validator at those historical-only sites, after establishing the exact canonical committed event/candidate and applicable recorded-profile reproduction. This is a demonstrated compatibility change to Store evidence-purpose dispatch; live commit, evaluation and new authorization stay current.

The historical judgment must retain the original signed manifest/report consistency, exact candidate subject, original profile/verifier/solver, recorded policy/roles, context/time, waivers, signatures and authorization identity. Coverage is the historical trusted verifier's **attested coverage**; this path does not freshly derive the old site set or prove the old theorem with the new model. Behavior replay independently reproduces the transition. Data replay retains its existing documented trust limits.

`AuthenticatedArchive(exact committed event)` does not imply `FreshEligible(new candidate)`. Callers cannot select historical purpose for an uncommitted bundle. Recovery must return the original event read-only, without appending history, granting new authority or creating reusable current-validation certificates. Preserve current checker calls for actual fresh action and migration commits.

Before changing the verifier, capture genuine signed 0.9 action record-0.8 and v2 migration histories using pinned unchanged 0.14.0 code through the public Rust Store API. Require nonempty full proof coverage and policy-required authenticated migration evidence. Freeze complete histories/evidence/policy/context and baseline data/Behavior replay and exact-recovery results, with source/binary hashes. The CLI can issue proof/authorization artifacts but has no Store commit command. Relabeling a new 0.10 proof or merely re-signing changed provenance is not historical evidence.

Tests must preserve both captured histories under 0.10 replay/recovery, reject changed candidate/event/signature/subject/policy/context, and reject use of archived evidence for a new live transition. These are prerequisites to accepting the bump, not claims that the fixtures have already been captured during planning.

## Published wrapper schemas

Append 0.10.0 to every applicable closed verifier provenance enum in `schema/governance-v2.schema.json` and `schema/store-v2.schema.json` (four locations in each at the baseline). Retain 0.7.0/0.8.0/0.9.0 alternatives and rejection of unsupported values.

This extends the advertised provenance values for the existing wrapper format; it does not change query evidence, Ordinary Facts, Bundle Evidence, decision/Store records or envelope/manifest versions. Validate both newly generated current provenance and authentic archived provenance against the published schemas.

## Diagnostic caches and authenticated verification

Existing check keys bind subject/dependency hashes, profile, verifier and solver versions. Preserve this shape: an old-version entry misses under 0.10.0 without deleting history. Add a focused wrong-version reuse control and reuse warm/cold identity and resource-exhaustion tests.

Authenticated verification remains fresh and bypasses the development cache through `verify_complete`/`semantic_proof`. Do not use a warm diagnostic hit as proof authority or promote historical results.

## Semantic and historical identities

The source module is immutable. The [released identity baseline](../evidence/semantic-identities.json) records:

- BehaviorHash `sha256:a04ba37ab89e051e448abb760bd754bbb0955125fd22ba8da927b8529a531779`.
- SchemaHash `sha256:0cb324ecc5a731650f3bfeb9567bbbd6da227a0ad68c97cd6315e55c186487e6`.
- Complete CLI item-hash output, exact input digest, release source and binary digest.

Candidate identity commands must reproduce these values. Preserve Approval lowering, runtime/query evidence, decision effects/refusal phases, historical records and replay. New verification claims are separate artifacts.

Frozen canonicalization baseline reports remain historical 0.9.0 reports. Tests that compare fresh reports with these exact bytes must split historical preservation from current-version generation. This includes verifier migration tests and all four fresh facade comparisons in `consumer/tests/canonicalization.rs`: ordinary/migration reports and their dependent ordinary/migration authorizations. Add version-aware current expectations or newly named current fixtures; never replace the historical baseline files or weaken raw historical serialization checks.

## Release and adoption handoff

This is outcome-changing verification work, so `docs/versioning.md` requires a 0.x minor engine release and a verifier bump. Actual Cargo numbering, packaging, publication and ecosystem pin adoption remain separate workflows. From 0.14.0, 0.15.0 is the next eligible minor absent intervening releases.

A source candidate passing the tests is Core implementation evidence. C19 remains blocked until the unchanged original module passes the full check under the adopted pinned published corrected release. Local success, diagnostic guard rewrites and integration modes that record a blocker do not satisfy that gate.
