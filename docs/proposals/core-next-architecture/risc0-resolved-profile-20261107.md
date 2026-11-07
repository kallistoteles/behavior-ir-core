# RISC Zero resolved dependency profile

Date: 2026-11-07 UTC. Read-only comparison of the private C preflight dependencies with stable v3.0.6 source; no dependency edits, builds or proof runs by this research task.

**No internal RISC Zero downgrade is indicated.** Every resolved `risc0-*` package version in the current [guest lock](../../../experiments/stark-preflight-20261107/guest/Cargo.lock) and [host lock](../../../experiments/stark-preflight-20261107/host/Cargo.lock) matches the [upstream v3.0.6 lock at `1cc70cf05033a79ebc90f07c679cb4bd1cd301b9`](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/Cargo.lock). The circuit sys crates' **4.0.3** is part of that release profile; the crates do not all share the SDK version number.

| Internal package family | Resolved version = upstream lock version |
| --- | --- |
| `risc0-zkvm`, `risc0-build` | 3.0.6 |
| `risc0-binfmt`, `risc0-zkp`, `risc0-groth16` | 3.0.5 |
| `risc0-core` | 3.0.2 |
| `risc0-circuit-rv32im`, `risc0-circuit-recursion` | 4.0.5 |
| `risc0-circuit-keccak` | 4.0.6 |
| `risc0-circuit-{rv32im,recursion,keccak}-sys` | 4.0.3 |
| `risc0-zkos-v1compat`, `risc0-zkvm-platform` | 2.2.3 |
| `risc0-build-kernel` | 2.0.1 |
| `risc0-sys` | 1.5.0 |

Host-only packages need not be present in the guest graph. The host manifest selects `risc0-zkvm = "=3.0.6"` with `default-features = false`, `prove` and `disable-dev-mode`; the guest selects the same exact SDK version with default features disabled. Sources: [host manifest](../../../experiments/stark-preflight-20261107/host/Cargo.toml), [guest manifest](../../../experiments/stark-preflight-20261107/guest/Cargo.toml).

## Preserve the full resolved profile

The complete graphs are **not** reproductions of the upstream workspace lock. Comparing registry package name/version pairs gives 73 entries out of 152 guest lock entries and 240 out of 451 host entries whose versions are absent from the upstream lock. These counts include target/optional dependencies recorded in the locks, not only code compiled by a future CPU build. Examples are `rand`, `getrandom`, `keccak`, `crypto-common`, and build/runtime support crates. Some packages also belong to the experiment harness rather than the SDK. No claim is made that these differences change the security parameters, or that they have been audited as equivalent.

Use the description **“RISC Zero SDK 3.0.6, release-matching internal crate versions, experiment-resolved dependency locks”**. Preserve these complete lock identities and use locked builds; do not call it the identical complete upstream dependency bundle:

```text
SHA256 upstream Cargo.lock (retrieved from the pinned source URL):
17e8756b0d0baa36080f2079174311e873ade5ce1d510aae935bbeba5d349037
SHA256 guest/Cargo.lock:
4a0ee41215a878f9d8550a16f269298139743a669e03bd05a3b38793705396d4
SHA256 host/Cargo.lock:
e724d2dafd9ce4a9b4fda933e981cbdcdd67b2235fd76ec3d13fdd2f71aa0d84
```

These are observed file fingerprints, not upstream-published artifact attestations. The registry packages checked carry `.cargo_vcs_info.json` with source revision `8c215e2f4ccdd935f0517bf05d90f1ae032840a9` (including SDK, core, ZKP, recursion and both relevant sys crates); do not replace that package provenance with an assertion that their publication commit was `1cc70cf`. Upstream's workspace packages have no registry checksums in its lock; the local locks retain the registry package checksums.

## Security-parameter correspondence

The following private registry source files were compared byte-for-byte with the corresponding files fetched from the pinned official source. All six matched. Each source link fixes the upstream revision; the local cache root is [the private registry source directory](../../../experiments/stark-preflight-20261107/cargo-cache/registry/src/index.crates.io-1949cf8c6b5b557f).

| Cached source | Official matching source | Observed SHA256 |
| --- | --- | --- |
| `risc0-zkp-3.0.5/src/lib.rs` | [FRI constants](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkp/src/lib.rs) | `107521d2426442fbc9358b7b9ae5650be92d670ea85e9a34aec7b9e9cc27dc6d` |
| `risc0-zkp-3.0.5/src/prove/soundness.rs` | [calculator](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkp/src/prove/soundness.rs) | `6d814ec839d0f4b33f275cdfa2d382f4ce455957b1ec7932d9bc717ccf732921` |
| `risc0-core-3.0.2/src/field/baby_bear.rs` | [field](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/core/src/field/baby_bear.rs) | `df3e77d606dd74d78fb6b6f3dbbe72455c5ed5b091f7a74de8c049e85b857ff3` |
| `risc0-zkvm-3.0.6/src/receipt.rs` | [verifier defaults](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/receipt.rs) | `ec445670befb0fad19bfe46eede73e551de03d9f91fa1fb81c9149dc04912fed` |
| `risc0-zkvm-3.0.6/src/host/client/prove/opts.rs` | [prover defaults](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/host/client/prove/opts.rs) | `3638f721c91a7fd40aff6f6ddd10170070f14523f7bcc0a9db35e560cf9a3f80` |
| `risc0-circuit-recursion-4.0.5/src/control_id.rs` | [control IDs](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/circuit/recursion/src/control_id.rs) | `6fedf46fad3ca0ce3e537139be7873a43dd68fee5fc803d3e58604b4e9ae16cb` |

Consequently the [security note](security-comparability-20261107.md)'s source observations apply to these cached parameter files: 50 FRI queries, inverse rate 4, folding factor 16, degree-4 BabyBear extension, and actual default maximum segment exponent 22. `ProverOpts::succinct()` selects Poseidon2, succinct receipt kind and the pinned allowed control IDs. This is a source correspondence check, not proof that a future run selected those options. A run must record its actual options, feature set, receipt kind and verifier profile.

The conflicting upstream security estimates and conjectural assumptions remain unresolved; **security equivalence: NotEstablished**. No downgrade of the matching internal crates resolves that issue. If exact upstream-wide dependency reproduction is later required, it needs a separately frozen resolution effort for the entire graph, not a speculative internal-crate downgrade list.
