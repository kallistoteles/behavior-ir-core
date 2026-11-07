# Proof preflight: production SRS and CPU source paths

Date: 2026-11-07 UTC. Primary-source research following [the 2026-11-06 note](../../../specs/033-core-proof-feasibility/research-notes/next-proof-architecture-sources-20261106.md). No build, synthesis, parameter generation, proof run, dependency installation or ptau body download was performed. Only source/API text and HTTP HEAD metadata were read. Existing 033 evidence and source files remain untouched. All execution routes below are **NotRun**, and no final backend is selected.

## Nova production setup: a concrete path, with capacity still unknown

Retain Nova revision `01b1e2d662a847ed7029770ecbaf6687398899dd`. For the HyperKZG comparator, explicitly identify `Bn256EngineKZG` / `GrumpkinEngine`, primary HyperKZG / secondary IPA, and the Spartan variant on each side. Preprocessing primary with standard secondary and preprocessing both sides are different configurations. The pinned [upstream benchmark types](../../../experiments/transition-study033/vendor/nova/benches/compressed-snark.rs#L11-L20) demonstrate the former; [upstream tests](../../../experiments/transition-study033/vendor/nova/src/nova/mod.rs#L1460-L1468) instantiate the latter.

The production entry point is:

```rust
PublicParams::<E1, E2, Identity43>::setup_with_ptau_dir(
    &identity43,
    &*S1::ck_floor(),
    &*S2::ck_floor(),
    std::path::Path::new(verified_ptau_directory),
)?;
// Then the separately charged CompressedSNARK::setup, new/prove_step,
// CompressedSNARK::prove, serialization and independent final verification.
```

This requires Nova's `io` feature, which the frozen 033 dependency's `default-features = false` does not enable. Its primary shape is the synthesized Nova augmented circuit, not just the application `StepCircuit`. The secondary key uses its ordinary generation path. Sources: [setup API and augmented shape](../../../experiments/transition-study033/vendor/nova/src/nova/mod.rs#L187-L248), [features](../../../experiments/transition-study033/vendor/nova/Cargo.toml#L91-L98), [033 dependency](../../../experiments/transition-study033/Cargo.toml#L18). Any future feature change belongs in a new isolated package with its own identity.

The loader computes:

```text
M = max(primary_num_constraints, primary_num_variables, S1::ck_floor(primary_shape))
N = next_power_of_two(M)
k = log2(N)
required points = N G1 points and 2 G2 points
```

For preprocessing Spartan, `ck_floor(shape) = nnz(A) + nnz(B) + nnz(C)`. Thus preprocessing may need more generators than the number of constraints. Sources: [key-size calculation and file selection](../../../experiments/transition-study033/vendor/nova/src/r1cs/mod.rs#L193-L214), [preprocessing floor](../../../experiments/transition-study033/vendor/nova/src/spartan/ppsnark.rs#L1020-L1033), [HyperKZG load](../../../experiments/transition-study033/vendor/nova/src/provider/hyperkzg.rs#L657-L674).

The existing [43-word identity](../../../experiments/transition-study033/cost-probe/identity_cost_export.rs#L25-L31) returns its inputs unchanged. **Its arity does not determine `M`, `N` or `k`. The smallest sufficient original/pruned file remains unknown without synthesizing the exact BN256 relation and chosen preprocessing variant.** No Pasta identity measurements can substitute for that shape. First obtain only the required shape counts/floor in a separately authorized capacity probe; stop before proof work if it exceeds the frozen preparation/resource budget.

The file selector searches from `k` through 28, preferring `ppot_pruned_XX.ptau`, then `ppot_0080_XX.ptau` (or `ppot_0080_final.ptau` for 28). It opens the first existing candidate rather than establishing its origin. Source: [selector](../../../experiments/transition-study033/vendor/nova/src/r1cs/mod.rs#L292-L341). Install only verified files in that directory; a stale same-name pruned file must not silently win selection.

## Which ceremony and which small file?

Use PSE's BN254 Perpetual Powers of Tau branch prepared from Carter Feldman's contribution 0080, converted to snarkjs format, beaconed, and then prepared/truncated. The official repository is pinned here at `b077232729db7c9eb65b63c4aaaa0ac4a1b0bba2`. Its [prepared-file list and beacon description](https://github.com/privacy-ethereum/perpetualpowersoftau/blob/b077232729db7c9eb65b63c4aaaa0ac4a1b0bba2/README.md#prepared-phase-2-files) includes powers **1–28**, although Nova's introductory comments mention only 15–28. Its [index](https://github.com/privacy-ethereum/perpetualpowersoftau/blob/b077232729db7c9eb65b63c4aaaa0ac4a1b0bba2/pot28_0080/index.html) supplies the filenames. The preserved branch goes through 0058 and then 0078–0080; do not equate contribution label 0080 with 80 uninterrupted included participants.

HEAD-only observations on 2026-11-07:

| Official S3 object | Observed Content-Length | Conditional use |
| --- | ---: | --- |
| [ppot_0080_14.ptau](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_14.ptau) | 18,967,698 bytes | Candidate only if the selector's required `k <= 14`. |
| [ppot_0080_15.ptau](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_15.ptau) | 37,842,066 bytes | Candidate only if `k <= 15`; not an established minimum. |
| [ppot_0080_16.ptau](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_16.ptau) | 75,590,802 bytes | Candidate only if `k <= 16`. |

All three returned HTTP 200. These observations establish advertised availability/size, not downloaded-byte integrity or ceremony verification. No published checksum for these exact prepared small objects was found in the inspected official file list/index. A locally calculated SHA-256/BLAKE2b digest would pin retrieved bytes for replay, but would not itself authenticate ceremony provenance. The checksum table in [snarkjs's README](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/README.md#7-prepare-phase-2) concerns `powersOfTau28_hez_final_*`, another named ceremony artifact family; do not apply those hashes to `ppot_0080_*`.

## A verification route that does not download the 288 GB parent

Use the **original small, complete snarkjs-format file**, before Nova pruning, and a separately pinned snarkjs verifier. Inspected snarkjs revision: `22003fbcde78608be902520661832db7933d279e`. Its documented command is:

```sh
snarkjs powersoftau verify /verified-input/ppot_0080_NN.ptau -v
```

Source: [official verifier command](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/README.md#5-verify-the-protocol-so-far). Do not invoke `powersoftau new`, Nova `test-utils`, or `ptau_test_setup`. No known-tau artifact is acceptable.

Source inspection establishes that the verifier reads contributions, verifies their public-key chain and beacon, checks the file's powers, and checks prepared Lagrange sections when present. For a truncated file (`power != ceremonyPower`), it intentionally skips equality between the recomputed truncated next-challenge digest and the full-ceremony digest. It still checks the stored contribution chain. It operates on the supplied small file; no full-parent filename/download is requested. Sources: [verification and truncation branch](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_verify.js#L129-L289), [contribution/beacon checks](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_verify.js#L28-L125). This makes a bounded-download provenance trial possible; it is not a report that any downloaded file passed.

Require all of the following before calling a retained small file ceremony-verified:

1. The pinned verifier completes successfully, including contribution, powers and available phase-2 checks; retain exit status, full log, verifier source/dependency identity and original file digest.
2. Locate the contribution corresponding to Carter 0080 and match its reconstructed response hash and stored next challenge against the official [0080 attestation/log](https://github.com/privacy-ethereum/perpetualpowersoftau/blob/b077232729db7c9eb65b63c4aaaa0ac4a1b0bba2/0080_carter_response/README.md#L1-L39). The published BLAKE2b values below identify contribution artifacts, **not the final small file**.
3. Match the following beacon contribution to the published randao seed from Ethereum slot 7,325,000 and exponent 31, using the PSE beacon description above. The beacon is after contribution 0080, so matching only the last contribution number to 0080 would be incorrect.
4. Retain the resulting trust assumptions: trusted published transcript/attestation identity, correctness of the pinned verification/conversion code and at least one honest retained ceremony contributor. Digest matching alone does not establish secret destruction.

```text
0080 input challenge:
d9ec6fad4a7a7e3358a0c4bed7171622c9c60a91a12a38144af908f42c147aec7b459a95f901a65b00fe485c66d2856407721e796908eb488f1d1dddd0afa2e8

0080 response:
28af03a3e4000bff5f7e6b731b4bf94250421f078da8705689f3807202d06386072793085a2a6d07484c6af5e64c1326681d66ef59fcfef0183cfbd98d04edb1

0080 new challenge (challenge_0081):
4bf672f3ba1de1bb6105e1ab88359612cdf09cb2d154f371937f85ec0cf25e0a10ec88efa3019065850a2e96048bf9ef5f68aa75fcfe26faa120c465d3954174
```

The log parser needs care: in the inspected verifier's per-contribution block, the first `Response Hash` is reconstructed from the contribution; a second identically labelled value is actually the previous contribution's next-challenge hash. Match block structure and field position using [the printing code](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_verify.js#L291-L312), rather than accepting any matching line. If the converted file does not expose the expected 0080/beacon values, stop with a provenance mismatch; do not relabel its HTTPS/file digest as a substitute.

Preparation is not necessarily cheap despite the small download. The verifier reconstructs the initial challenge at `ceremonyPower`; [its helper](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_utils.js#L312-L357) repeatedly hashes generated generator encodings in bounded buffers. For BN254 at ceremony power 28, the source implies approximately **96 GiB of synthetic hash input**, even when the supplied file has a much smaller power. This is a source-derived work estimate, not 96 GiB of required disk/RAM or a measured duration. Allocate a separate wall/CPU preparation budget and retain timeouts; do not charge this as zero or assume millisecond validation.

## Pruning follows verification; loading does not verify the ceremony

After successful original-file verification, a future isolated invocation may use the pinned Nova example:

```sh
# Preconditions: NN and N come from the actual shape; original file exists
# and has passed the checks above. Do not let this example fetch a missing file.
test -f /verified-input/ppot_0080_NN.ptau || exit 1
cargo run --release --example ppot_prune --features io -- \
  --power NN --download /verified-input --output /verified-pruned \
  --num-g1 N --skip-download
```

This is a documented future command, **not executed**. `--skip-download` only skips an existing file; the example downloads a missing input even with that option. It keeps `N` G1 points and two G2 points and emits `ppot_pruned_NN.ptau`. Source: [argument handling and operation](../../../experiments/transition-study033/vendor/nova/examples/ppot_prune.rs#L474-L593).

From its serialization, pruned bytes are `64*N + 344` for two BN254 G2 points: at `N=32768`, 2,097,496 bytes; at `N=65536`, 4,194,648 bytes. These are derived format sizes, not produced files. The header retains the original file's power; the chosen `--num-g1` must still cover the actual load count. Source: [writer and prune flow](../../../experiments/transition-study033/vendor/nova/examples/ppot_prune.rs#L322-L444).

Pin original digest, successful transcript-verification record, pruning source/configuration, kept counts and pruned digest together. Independently compare every retained point to the verified original or replay the pinned pruning operation. The three-section pruned file discards contribution metadata and cannot be substituted for the original in `snarkjs powersoftau verify` ([snarkjs requires section 7](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_utils.js#L226-L239)).

Nova's loader checks format/version/modulus/capacity, loaded points on-curve and G2 subgroup membership. It does **not** verify the contribution transcript, downloaded-file digest or the entire powers-of-tau sequence. Its `check_sanity_of_ptau_file` checks metadata/header only. Source: [pinned ptau reader, lines 271–454](../../../experiments/transition-study033/vendor/nova/src/provider/ptau.rs#L271-L454). These checks remain required after provenance verification, but they are a different boundary.

## RISC Zero: use a stable CPU source pin for the next preflight

The official latest non-prerelease observed on this date is [v3.0.6](https://github.com/risc0/risc0/releases/tag/v3.0.6), published 2026-07-17. Tag resolves to **`1cc70cf05033a79ebc90f07c679cb4bd1cd301b9`** ([commit API](https://api.github.com/repos/risc0/risc0/commits/v3.0.6)). The previously inspected main pin declares 5.0.0 and is not this stable release; do not mix its control roots, guest compiler assumptions or APIs into a 3.0.6 certificate profile.

The stable source has concrete CPU paths: [RV32IM kernels](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/circuit/rv32im-sys/build.rs#L22-L38), [recursion CPU kernels](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/circuit/recursion-sys/build.rs#L22-L38), and [CPU HAL](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkp/src/hal/cpu.rs). Its C++ build helper requests C++17 and does not impose AVX2/ADX/BMI2 flags in the inspected CPU branch; `-arch=native` shown elsewhere is in the CUDA branch. Source: [stable kernel build helper](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/build_kernel/src/lib.rs#L134-L209). **No documented mandatory AVX2/ADX/BMI2 gate was found in these inspected paths. This does not establish Xeon X5670 compatibility for the full dependency graph or distributed binaries.**

Concrete preparation requirements and remaining limits:

- The release repository [host toolchain file](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rust-toolchain.toml) specifies Rust 1.97 with rust-src; guest compilation additionally needs the RISC Zero Rust toolchain. Resolve and pin its exact component version/artifact from official release metadata before installation; ordinary host Rust alone does not establish the guest build recipe.
- Compile the native CPU kernels with a C++17-capable host compiler/linker and an explicitly recorded baseline CPU target. Audit Rust flags, C/C++ flags, dependency feature unification and binary/toolchain ISA independently. A portable Rust target alone does not control native C++ dependencies.
- [Installation docs](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/website/api/zkvm/install.md) identify x86-64 Linux as an installation platform and require rustup, with pinned components recommended for reproducibility. These are architecture-level instructions, not an X5670 support statement. For an external `r0vm`, pin the matching 3.0.6 process; in-process proving uses `prove` instead. No installer/toolchain was downloaded here.
- Select local CPU proving explicitly, `ProverOpts::succinct().with_dev_mode(false)`, trusted verifier context with development mode false, exact trusted guest image ID, and `InnerReceipt::Succinct`. Require exact journal fields and resolved predecessor assumptions. Stable sources: [prover options](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/host/client/prove/opts.rs#L143-L154), [receipt/context API](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/receipt.rs), [feature manifest](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/Cargo.toml). CPU selection and succinct receipt selection are separate choices. Groth16 wrapper code in the dependency graph does not mean the chosen receipt used that wrapper.

A suspicious main-only source detail must not become a false blocker: [main-pin CPU base.h](https://github.com/risc0/risc0/blob/164c64bb3a844d393bb7addc5781c705c647f2d5/risc0/circuit/rv32im-sys/cxx/hal/cpu/base.h#L46) ends in a lone `x`, confirmed through the official contents API as blob `da18cd95d53435ecc11c5a4e584eaaea4489cc64`. Active include reachability was **not** established, so this research does not claim a demonstrated compile failure. The file/path is absent from v3.0.6, which uses the older `kernels/cxx` layout. No patch is proposed or applied. Likewise, main's bindgen/libclang path must not be advertised as a demonstrated hard requirement of the different stable CPU layout.

## What can actually be tried next

| Route | Next discriminator | Exact unresolved prerequisite | Current status |
| --- | --- | --- | --- |
| Nova preprocessing + IPA | Separate 43-word identity variant, with actual compression and fresh independent endpoint verification. | Own source/shape/construction identity and passed resource preflight; no ceremony required. | This note supplies no new execution result; coordinate with its separately owned trial. |
| Nova preprocessing + HyperKZG | Shape-only capacity discovery, then smallest sufficient original ppot0080 file verification, pruning/loading and identity trial. | Exact `N/k`, pinned snarkjs install/dependencies, completed original-file transcript/beacon matches, pinned pruned bytes, production `io` path, CPU compatibility and preparation budget. | **NotRun** here; production provenance remains unverified. |
| RISC Zero v3.0.6 succinct STARK | Resolve pinned guest/host toolchain and CPU dependency recipe; separately build and smoke-test an identity guest on X5670 before any performance claim. | Toolchain artifact/version pin, complete ISA audit, actual local CPU run and resource headroom. | **NotRun**; no proven hard AVX2 gate and no established old-CPU success. |

A successful identity trial only permits the fixed authenticated cap-2 transition and whole-prefix controls. It establishes neither Core correspondence nor full durable acknowledgement latency. Preparation, compression/recursion, fresh verification, serialization and durable exact-parent publication retain their separate measured ownership under the [proposed protocol](protocol.json).
