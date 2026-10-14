# Quickstart: Query Evidence Domain Consistency

Run repository commands from the feature's owning Core checkout, with the source revision recorded before testing. The permanent regressions and their focused source-bound evidence are now present; final delivery assurance remains in the immutable-candidate receipt.

## Prerequisites and source identity

Use the checkout's `nix develop`, pinned Rust/Cargo 1.98.1 and committed lockfiles. Existing independent schema checks require the shell's Python/jsonschema; full final gates include the existing Z3/CLI checks. No new dependency or production configuration is needed.

```bash
git rev-parse HEAD origin/main
git status --short
```

Planning research used `634023a6d504bac927192c964d945c7025b467c4` for both refs. If source differs, identify the new exact revision and obtain its own applicable evidence. A later source is not attested by the planning receipt.

Read [producer-consumer.md](contracts/producer-consumer.md), [validation-phases.md](contracts/validation-phases.md) and [coverage.md](contracts/coverage.md) for the exact domains, expected outcomes and test reuse. No environment flag may substitute another dependency, CLI or fixture checkout.

## Re-run the retained local planning reproduction

The temporary external probe remains at `/tmp/core025-planning-probe/`; its source/input/manifest/lock and complete artifact digests are bound by that directory's `receipt.json`. [The checked-in summary](evidence/planning-validation.json) records the receipt SHA, command and limitations. Verify the receipt seal before relying on it:

```bash
cd /tmp/core025-planning-probe
sha256sum -c receipt.sha256
```

Return to the owning Core checkout before running the recorded Nix command:

```bash
nix develop -c env CARGO_TARGET_DIR=/tmp/core025-planning-target CARGO_PROFILE_DEV_DEBUG=0 CARGO_INCREMENTAL=0 cargo run --locked --offline --manifest-path /tmp/core025-planning-probe/Cargo.toml -- /tmp/core025-planning-probe
```

Expected: ten successful rows, covering all five R1–R5 cases through `invoke` and `evaluate`/commit. Result documents establish no evaluation publication, checked typed bundle/candidate preservation, empty query/hash evidence where required, Mark identity/values, one history advance and equality of the archived authoritative bundle. Plain IDs do not acquire reverse `Ref` edges.

This local artifact is temporary and tied to its recorded manifest checkout. If it is unavailable or source identity differs, use the permanent regression; do not count missing local logs as newly passing evidence or silently retarget an old receipt. An empty Cargo/Nix cache must first acquire the pinned prerequisites; `--offline` is the recorded research execution mode, not a requirement to manufacture a cache.

## Existing focused controls, unchanged

Collect before execution and verify that the intended tests are present:

```bash
nix develop -c cargo test -p behavior-store --test strict_bundle_evidence -- --list
nix develop -c cargo test -p behavior-verify --test strict_bundle_evidence -- --list
nix develop -c cargo test -p behavior-verify --lib governance::trusted::bundle_evidence -- --list
```

Run the same owning controls used in planning:

```bash
nix develop -c cargo test --locked -p behavior-verify --test strict_bundle_evidence --test strict_bundle_compatibility --test facts_witness_schema
nix develop -c cargo test --locked -p behavior-store --test strict_bundle_evidence --test strict_bundle_compatibility
nix develop -c cargo test --locked -p behavior-verify --lib governance::trusted::bundle_evidence
```

Planning observed 160 Verify integration tests, 48 Store integration tests and 6 private projection tests passing: 214 total. The existing opt-in `capture_projection_fixtures` writer remains ignored; normal validation must not refresh fixtures. Count real collected cases at the revision under test rather than treating these counts as an immutable future total.

Expected distinctions: strict v2 invalid/missing hashes fail before projection; historically decodable v1 bad hashes fail later at commitment; ordinary Facts rejects bundle-only metadata. A locally valid hash over false members still fails live historical comparison, with no publication.

## Permanent public and semantic regressions

`issue24_public_mark_matrix_preserves_state_and_authoritative_evidence` owns the permanent ten-case matrix. Collect the `issue24_` filter and confirm that exact test before running it:

```bash
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test strict_bundle_evidence issue24_ -- --list
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test strict_bundle_evidence issue24_ -- --nocapture
```

Assert five rows × two supported routes, not just ten invocations without result/evidence checks. Use Legacy/Wire 0.7/v1 and CommandIntents/Wire 0.8/v2, typed context/input/state roles and the required Wire 0.8 empty declaration arrays. The query-free cases must not fabricate query evidence. These are initially green preservation regressions unless an actual remaining violation is demonstrated.

The Store target now includes `locally_consistent_false_query_instance_cannot_publish`, `locally_consistent_false_query_definition_or_entity_cannot_publish` and `locally_consistent_false_query_capture_cannot_publish`, with five labeled N05–N07 cases in [validation-phases.md](contracts/validation-phases.md). Keep local acceptance and matching member integrity, then assert exact live refusal, unchanged full authority, zero publication and a passing genuine counterpart. Existing malformed/hash/forged-member suites must be reused, not copied.

The full existing public consumer target also includes CLI cases. Build the CLI from this same source before running it:

```bash
nix develop -c cargo build --locked -p behavior-cli
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test strict_bundle_evidence
```

Do not set `BEHAVIOR_BIN` to an unrelated/stale binary. The complete canonical scripts remain the authority for delivery, rather than this focused guide becoming an alternative gate.

## Final delivery assurance, after all tracked edits

Finalize docs/tests/reports and non-final task bookkeeping before committing/pushing/freezing. Capture the exact pushed candidate SHA and verify a clean tracked checkout. From that unchanged owning checkout:

```bash
nix develop -c scripts/gates.sh
nix develop -c scripts/check-consumer.sh --rev <exact-pushed-delivery-sha>
```

Replace the placeholder with the captured full SHA; do not literally pass angle brackets. Retain full command statuses/logs, environment/toolchain, actual temporary consumer manifest/lock Git resolutions and CLI/fixture/source identities in an external receipt bound to that candidate. Record final post-freeze task completion externally instead of editing the candidate's tracked checkboxes/reports after validation. A later merge/release SHA requires its own applicable checks.

Report implemented/validated/pushed separately from merged/published/adopted. Approval can replace its known-bug characterization only when it adopts an actually delivered compatible corrected Core release; no evidence stripping, legacy forcing or Model-specific bypass is part of this validation.

## Implementation evidence and consumer adoption

[US1](evidence/us1.json) records the permanent public matrix, [US2](evidence/us2.json) the live semantic controls and unchanged producer/historical suites, [US3](evidence/us3.json) the ordinary/strict/projection controls, and [US4](evidence/us4.json) the same-source CLI/full consumer execution and historical evidence reuse. Count a parameterized matrix as one Cargo test with ten labeled internal cases; do not count its repeated focused execution again as a new test.

Approval's temporary known-bug characterization can become a positive integration assertion after adopting an actually delivered compatible Core release that contains the existing 023 correction. Preserve CommandIntents/v2, complete evidence and normal Core validation, then assert the intended state/history outcome. This feature selects no release number or ecosystem pin and performs no publication or adoption.
