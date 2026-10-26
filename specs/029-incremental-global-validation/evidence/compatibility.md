# Compatibility audit: Core 029

Comparison baseline: `6b93898a9375113f7a8946f23ab5535319b6f5d6` (Core 0.15.0). Production source checked:
`919429b3f1bd7185a51c7c5fa9cb24c474229192`. The full required gate for this source ends in `gates: OK`;
see [gates-source.json](gates-source.json) and [gates.txt](gates.txt).

| Public contract / authority | Baseline comparison | Current SHA-256 |
|---|---|---|
| `crates/behavior-engine/src/lib.rs` | unchanged | `fae8e350de07a91b7564426d8897878304b43981e45ff191e08cf1c9ed4a2cc7` |
| `crates/behavior-store/src/lib.rs` | unchanged | `f6f3aac4f7546d49b36f1c3c68f8975b42771b1e71df23b4c52c7bba9e728287` |
| `crates/behavior-core/src/serialize.rs` | unchanged | `0b47f2762d0b6df8c8d90dd904b9c13c98fbeb6bc593ea3b4e67331245b1cb78` |
| `Cargo.lock` | unchanged | `e00df246625b24317e3c3c99f4feed4336db1545d99034575caa37809062653f` |
| `flake.lock` | unchanged | `ed16bd3f98b17e19e07d6ecafecdd20897024a170f7f3727ed6565c582a01bbe` |

The Store's entire `lib.rs`, including `Backend`, is unchanged. No host method,
persistent index, durable validity marker or mandatory acceleration requirement was
added. InMemoryBackend changes are diagnostic feature hooks. Default diagnostic
features remain off; dependency locks and dependency versions did not change.

Core adds a hidden workspace seam for opaque checked state and checked evaluation;
it is not exported through the `behavior-engine` consumer facade. Checked values have
no unchecked/deserializing constructor. This is an additive implementation API, not a
new semantic primitive. Optional `validation-work` measures named execution sites;
counters never authorize execution or become canonical evidence.

No path changed under `tests/fixtures`, `fixtures`, `records`, `attestations`,
`crates/behavior-verify` or Core admission. The required gate validates the current
cases plus 106 immutable archived artifacts, public surface (139 checks), boundary,
external consumer, deterministic replay and release-script controls.

`record.rs` retains strict record parsing, historical profile dispatch and complete
first-difference comparison. Current prepared reproduction obtains its expected record
from actual checked execution at the exact module/request/private parent epoch.
Historical and standalone replay continue through the ordinary evaluator. Promotion
reuses identities already computed by native commit; it does not trust producer-supplied
hashes or make record equality sufficient for CAS authority. See
[promotion-remediation.md](promotion-remediation.md).

No normative record field, hash domain, schema identity, canonical serialization,
BehaviorHash, governance authorization or migration/recovery protocol changed.
Complete differential record/bundle/commit tests, Unicode metamorphic tests and public
recovery/replay controls exercise that assertion. They are implementation evidence,
not a universal compiler proof; the Rust/Backend correspondence assumptions remain in
[correctness.md](../correctness.md) and [us3.md](us3.md).

Prepared state is ephemeral. Reopen, incompatible context, uncertain publication and
unsupported operations use the existing authoritative paths. The external durable
consumer persists a commit, exits before acknowledgement, recovers in another process,
then performs both data and behavior replay without retaining any prepared state.
Published tags/artifacts were not modified. No version or release was published.

The new call-scoped module-match token performs the same exact full-content comparison
once per prepared evaluation and checks its immutable Module borrow. It neither adds
an external producer capability nor changes historical identity. The final required
gate contains1791 passing Rust tests (0failed;30explicitly ignored), including the
single-encoding regression and full-metadata/independent-allocation controls.

The unsupported-promotion guard conservatively withdraws carry authority before record
preparation when neither015 locality nor029 coverage can establish it. It preserves
all original evaluation/reproduction/commit checks and the unchanged Backend contract.
The actual new regression observes zero unnecessary parent reads. See
[fallback-remediation.md](fallback-remediation.md).

The ordinary evaluation path restores its original owned Core-record lifetime through
bundle construction. It introduces no record/observer/state changes or additional
Backend call; all required G3 checks pass for the source above. No inline-row variant
was retained. The paired evidence is in [fallback-lifetime.md](fallback-lifetime.md).
