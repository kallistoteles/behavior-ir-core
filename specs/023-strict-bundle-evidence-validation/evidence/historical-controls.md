# 023 historical-control custody

T006 is a read-only custody/profile inspection of existing artifacts. It executes no current runtime replay, candidate, schema, signature or Store compatibility test. The original bytes and historical capture reports are preserved. Current acceptance remains pending T035/T036/T050/T053.

Entry source: `72d4093322aabaedf86c3b322ca3394724b0f6df`; frozen 019 ancestor: `6ad357c7e9960ce6771fd435adcec9f8018fb7d6`. Baseline source digests are retained in `/home/kalle/validation-receipts/core023/baseline/source-manifest.json`. [Support matrix](../contracts/support-matrix.md) and [coverage](coverage.md) define the supported domain without a fabricated Cartesian product.

## Actual observed profiles

| Control | Original path | Bundle format | Decision version | Semantic profile | Validation profile |
| --- | --- | --- | --- | --- | --- |
| H01 | [tests/fixtures/governance-v2/legacy-required-history.json](../../../tests/fixtures/governance-v2/legacy-required-history.json) | `behavior.commit_bundle.v1` | `0.4` | `absent` | `absent` |
| H02 | [tests/fixtures/resulting-state-validity/commands/bundle.json](../../../tests/fixtures/resulting-state-validity/commands/bundle.json) | `behavior.commit_bundle.v2` | `0.7` | `0.8` | `absent` |
| H03 | [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json) | `behavior.commit_bundle.v2` | `0.7` | `0.8` | `absent` |

## H01 — Structurally self-hashed legacy control

The fixture contains `behavior.store_genesis.v1`, `behavior.commit_bundle.v1` and `behavior.transition_record.v1`, with decision record 0.4. Its capture qualification explicitly says: “accepted v1 engine semantics; structurally valid self-hashed historical ALLOW is not current authority”. Its bytes are bound to the 023 baseline manifest. This supplies existing legacy recovery/upgrade/refusal characterization; it is not independently authenticated original runtime publication or current required-governance authority. No fresh historical query bundle is fabricated.

## H02 — Actual pre017 unsigned command capture

The [017 archive manifest](../../../tests/fixtures/resulting-state-validity/archive-manifest.json) records baseline `932eb8188dc28393213491e27f66e3bc7e273a6b`, unchanged source, capture-generation provenance and a `2397`-byte bundle with digest matching this checkout. Its record is **0.7** under semantic profile **0.8**, with commands but no current `validation_profile`. The `archive08` naming does not make it decision 0.8. H02 is an actual original output/control, with the archive manifest's custody level; no authentication absent from that capture is inferred. Runtime/schema/archive acceptance under the current implementation remains pending.

## H03 — Genuine signed durable pre017 capture

The [capture summary](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/summary.md), [manifest](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/manifest.json) and retained host-store bytes bind original source `932eb8188dc28393213491e27f66e3bc7e273a6b` in a detached baseline checkout. The original manifest records 315 source digests and unchanged tracked source, verifier 0.8.0, actual decision 0.7/profile 0.8, exact policy/context inputs and signed evidence.

Setup recomputed all **63** retained artifact digests against that manifest with zero mismatches. It also checked the original archive-manifest digest and all 42 original-capture digests against the before/after custody maps; all match. Original prepare, verify, authorize, commit, stream, recovery and stream-after-recovery command receipts each record status 0. Those are retained historical results, not new 023 execution or current eligibility.

The capture used only documented non-secret conformance seeds. The original semantic receipt records a first commit `already:false`, recovery `already:true`, identical record/history identity and unchanged durable Store/stream bytes. Local digest matching is custody, not independent cryptographic authorization verification. Current T035/T053 must exercise original signed archive/context/recovery semantics; T050 must test supported wrapper acceptance. An old proof does not become fresh verifier eligibility.

The preserved failed metadata-wrapper attempt was corrected without changing signed event bytes and is explicitly excluded from semantic RED. The command-only model has an empty entity-obligation inventory; it does not establish query-history support or close a validity finding.

## K01/K02 — Codec recognition controls

K01 binds existing original standalone decision records 0.4, 0.5 and 0.6 below. `GovernanceCandidate::from_json` at baseline `trusted.rs:160–181` recognizes those layouts only without semantic_profile, commands or validation_profile markers. Constructing a current envelope around an old inner record is a **codec control**, not genuine archived v2 publication.

K02 uses the checked DecisionRecord codec for 0.7/0.8 in the same baseline candidate boundary and `crates/behavior-core/src/record.rs`. H02/H03 supply genuine old 0.7 observations; fresh producer cells supply current 0.8. No new historical 0.8 capture is invented, and recognized layout alone does not establish arbitrary Wire/history support. T036 must preserve both recognition and refusal constraints.

## Fixture and source digests

These SHA-256 file digests identify exact existing bytes. They are neither semantic hash domains nor authority certificates.

| File | SHA-256 |
| --- | --- |
| [tests/fixtures/governance-v2/legacy-required-history.json](../../../tests/fixtures/governance-v2/legacy-required-history.json) | `604b6742422d97928c6f860c21a709d8088ee685f14c11bb47f266b41fe84df5` |
| [tests/fixtures/resulting-state-validity/commands/bundle.json](../../../tests/fixtures/resulting-state-validity/commands/bundle.json) | `fac6228ecb57abe834a51a7c722cc7491e9a88bce1dd8b9516b2c5c50c54b4d0` |
| [tests/fixtures/resulting-state-validity/archive-manifest.json](../../../tests/fixtures/resulting-state-validity/archive-manifest.json) | `22ac55b27f02f03d99e09a8f28609600f643f34b85681297bb7375383725e771` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json) | `6c44acde6181b39c70a5b295d7929c04a9b5495b86873654c9e84ae898714b8f` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/manifest.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/manifest.json) | `ded9caf8bf170af37079cd223bceb8683a5a5c8a6b7f1d7bf83805dad933d67c` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/summary.md](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/summary.md) | `42db2a238534ba7733052d6a97647db1d362121e28508b083e389422b7617bc1` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/store.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/store.json) | `f9a9fb891bf164a421ba14c7318fac3532028543b15701e9761b68033baaf961` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/evidence.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/evidence.json) | `b9ac56011a4b41e51d792e7958a891116f8dd131c24e8220733ce77c297fd4ef` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/verification.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/verification.json) | `e9f2ad97c9b52dd18da9e9871242571de9fb78e8c0a34563bcff15044eb73806` |
| [specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/context.json](../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/context.json) | `87651a5b8b9d467de5a251a51a7e03cfa3871229b2e3e6efd5605afaa4ecccf5` |
| [tests/fixtures/resulting-state-validity/decisions/decision-0.4/record.json](../../../tests/fixtures/resulting-state-validity/decisions/decision-0.4/record.json) | `41c571936cf0129dd80a4e901dd83f26c7b975fb53e21d8b7539fd143d52a81c` |
| [tests/fixtures/resulting-state-validity/decisions/decision-0.5/record.json](../../../tests/fixtures/resulting-state-validity/decisions/decision-0.5/record.json) | `1bf541ea15591beb7d04cb0de41abb0f88c2dbfa42711469b44858f58b886b9b` |
| [tests/fixtures/resulting-state-validity/decisions/decision-0.6/record.json](../../../tests/fixtures/resulting-state-validity/decisions/decision-0.6/record.json) | `0efd548b882937a2ec034946b0efd5a2a03e878b2fc6949e2c94b74da2332688` |
| [crates/behavior-verify/src/governance/trusted.rs](../../../crates/behavior-verify/src/governance/trusted.rs) (entry source) | `5608b1275004b6e4323f448d99a57c5beca6e458796c7ce89a033c47c3e38f2f` |
| [crates/behavior-core/src/record.rs](../../../crates/behavior-core/src/record.rs) (entry source) | `185e69d4f3a6055ecc18ee42ad81cae33ba214c2f1962d60405eec333dbcc088` |
| [crates/behavior-store/src/documents.rs](../../../crates/behavior-store/src/documents.rs) (entry source) | `87f0fa0a820b5f7fbf7f97f8dabb78f5275255f426525f3bf944662bdc706130` |
| [crates/behavior-store/src/replay.rs](../../../crates/behavior-store/src/replay.rs) (entry source) | `1b5bf7fd7d9080f0fdc42042e7a12e5996940152de144d0665d5b13458118a87` |

## Limits and next evidence

No historical fixture, source, schema, signature or manifest was rewritten. Hashes and recorded metadata establish exact custody and the distinction between H and K; they do not prove current runtime acceptance, full historical support or current authenticated authority. Preserve unsupported/version-upgrade controls. The next execution must bind actual collected test names, source, commands/statuses and original policies/context without retroactively moving v1 validation or relabeling historical profiles.
