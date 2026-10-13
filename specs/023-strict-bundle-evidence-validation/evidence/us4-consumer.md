# US4: Supported facade and same-source CLI consumption

T051–T052 use `consumer/tests/strict_bundle_evidence.rs`, importing Core only
through **behavior-engine**. The consumer's tracked Cargo metadata/lock are
unchanged; no new facade export or dependency is needed.

## Working-source receipt

- Repository: `/home/kalle/repos/behavior-ir-core-023`.
- Known base revision: `f4641b933a3f5bd65a308623a99895d7ee1a75fb` plus retained working-source digests.
- Test source SHA-256:
  `aedff82f04d031e78d4b0baf68818a9243b2c06e09691927fc9555d34218c818`.
- Fresh CLI: `/home/kalle/repos/behavior-ir-core-023/target/debug/behavior`.
- CLI SHA-256: `4c2b19cfae67eefa37c01dcc29bc215c1fadbfb8ef5e252a6901f64aec1761bf`.
- Consumer target directory: `/home/kalle/repos/behavior-ir-core-023/target/consumer`.
- Source/fixture/test digests, exact command arrays, output/statuses, 11 unique
  collected test names, rustc/Cargo/Python/Z3 identities and resolved dependency:
  `/home/kalle/validation-receipts/core023/us4-consumer/`.

The CLI was built from the current checkout before test collection. Both stale
`BEHAVIOR_BIN` and `CARGO_TARGET_DIR` were unset for the build, then the verified
CLI and separate consumer target paths were explicitly bound for testing. All
runs used pinned Nix with jobs 2 and development/test debug info disabled.

CLI build exited **0**; consumer collection exited **0**; consumer suite exited
**0**, with **11 passed, 0 failed, 0 ignored**. Recorded source, CLI digest and
canonical consumer metadata remained unchanged at custody checking.

The resolved behavior-engine dependency is the existing local path for this
working-source check; its internal Core dependency graph is recorded by Cargo
metadata. This success is **not** final published-Git/exact-SHA assurance.
T062 separately validates the pushed frozen delivery candidate.

## Executed contracts

| Route | Actual evidence |
| --- | --- |
| Actual query producer to facade strict consumer | Core-produced Orders query bundle passes CommitBundle raw decode, exact GovernanceCandidate JSON/hash preservation, signed required authorization and authenticated publication |
| Authorization remains mandatory | Valid local query integrity without evidence returns `EVIDENCE_REQUIRED`; authorization for another candidate or prior committed candidate returns `EVIDENCE_MISMATCH` |
| Mutable observations rechecked | Resealed malformed result hash selects `INVALID_CANDIDATE` at the candidate path and `BUNDLE_INVALID` at Store commit |
| Refusal publishes no authoritative change | Complete InMemoryBackend debug state plus bounded genesis/head/history/immutable versions/lifetimes/references/commands snapshots compare exactly before/after refusals |
| Existing CLI authorization | `governance authorize` consumes an actual generated query candidate, produces exact signed evidence and that evidence commits through the facade |
| Strict CLI refusal/output | Bad local hash returns exit 2 with existing category/path and preserves a prior output file; raw duplicate candidate key returns exit 2/`INVALID_GOVERNANCE_DOCUMENT` without creating output |
| Ordinary transition | Nonquery Ledger bundle remains consumable and transfers the exact balance |
| Read/profile boundary | Actual declared query read and same-profile Core/Store replay return VALUE/match without mutating the store |
| Migration boundary | Actual prepared Migration IR output retains candidate facts exactly `{}`, passes strict candidate consumption and commits under the target schema |

In-memory publication checks establish semantic nonmutation, not physical crash
or storage durability. CLI output refusal does not add new replay or Store CLI
semantics. All authorized records remain exact candidate/module/context claims.

T053 transitive controls are recorded below; the preceding 11-case source binding
retains its original custody and is not relabeled as the later expanded suite.


## T053: Checked transitive consumers

After T044's reviewed 39-case actual producer package, T045's private projection
checks and T046's actual migration controls completed, the consumer added three
independently collected transitive tests. The final working-source target has
**14 tests, all passed, 0 failed, 0 ignored**; CLI build, collection, suite and
consumer-target Clippy (`-D warnings`) each exited **0**.

- Current test SHA-256:
  `22e6d64ca9ad887aeb1e9bcc9944e58ee9398b27feee105cd889e3c89c8a3525`.
- Fresh selected CLI SHA-256: `4c2b19cfae67eefa37c01dcc29bc215c1fadbfb8ef5e252a6901f64aec1761bf`.
- Package SHA-256:
  `320dc0ae56b187d552700f2f8ead2b4269bd76de9e7117941c397a66c9af8bc3`.
- Exact source/schema/package digests, commands, statuses, full logs, 14 unique
  collected names and post-run custody checks:
  `/home/kalle/validation-receipts/core023/us4-consumer/transitive/`.

The original consumer dependency/toolchain receipt above remains applicable:
canonical consumer metadata is unchanged. Current schemas, producer package,
recorded source and selected binary stayed unchanged through the expanded run.
This is working-source evidence; final frozen-Git validation remains T062.

| Consumer | Executed contract |
| --- | --- |
| Reviewed actual package through facade | All 39 evaluate/invoke/intent cases across Wire 0.4–0.8 and S04/S05 pass checked bundle/candidate consumption, exact claim/hash preservation and original-record ordinary observation comparison |
| Signed query archive | Structural transport decoding is followed by checked event kind/hash, strict archived bundle/candidate consumption, exact original signed evidence and archived Q checks |
| Recovery after later history | Reusing the decoded first signed bundle after a second authenticated commit recovers the original event identity/result and leaves complete authority and current head at position 2 |
| Reopen and replay | Reopened Store preserves the original event/complete authority; `replay_data` and `replay_behavior_with` both succeed without changing it |
| Committed command evidence | A proposed Receipt intent and missing-authorization refusal expose no command occurrence; authenticated publication creates one occurrence with its exact event identity |
| Idempotent command consumers | Recovery, reopen and both replays preserve that exact one-item command stream and complete backend authority, without creating another history event or occurrence |

The first expanded attempt is retained under `representation-expectation-trial/`
(12 passed, 2 failed). Its failures were test-only representation mistakes:
package producer labels are qualified `Store::...` names, and recorded commands
are the existing `commands.intents` bag rather than a root array. Only those test
expectations changed; they are not production defects or new correction REDs.
No implementation change or package refresh was needed.

These tests establish checked canonical history/recovery and read-only committed
command evidence for the covered inputs. They neither dispatch external commands
nor establish physical durability. Generic `documents::decode` is kept distinct
from semantic archive validation; integrity, historical reproduction and
live publication are exercised at their respective existing boundaries.
