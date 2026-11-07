# RISC Zero 3.0.6 external local prover route

Date: 2026-11-07 UTC. Source/metadata research only: no asset body download, installation, dependency edits, build or proof run. This is a proposed new C execution profile within the existing four-hour campaign budget, not another C++ compiler profile. The SDK version is **3.0.6**.

**A concrete official route exists:** build the experiment client/verifier without `prove`, and invoke the release's prebuilt local `r0vm` through IPC. Artifact execution and Xeon X5670 compatibility remain untested by this research.

## Official artifact and provenance

The [official v3.0.6 release metadata](https://api.github.com/repos/risc0/risc0/releases/tags/v3.0.6), retrieved 2026-11-07, publishes:

```text
artifact: cargo-risczero-x86_64-unknown-linux-gnu.tgz
URL: https://github.com/risc0/risc0/releases/download/v3.0.6/cargo-risczero-x86_64-unknown-linux-gnu.tgz
size: 72,347,320 bytes
published SHA256:
615d961bfb81d318db5071d7548389c850e324ac7f421c075176daf26082a60a
release source: 1cc70cf05033a79ebc90f07c679cb4bd1cd301b9
```

The [Linux packaging Dockerfile](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/.github/containers/release/Dockerfile) builds `cargo-risczero` and exports **both `cargo-risczero` and `r0vm`**. The [release workflow](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/.github/workflows/release.yml) archives that directory. The metadata exposes no separate Linux r0vm asset. Although [rzup names an R0Vm component](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/components.rs#L52), installation resolves its parent to CargoRiscZero; the archive above is the applicable bundle, not a guessed `r0vm-*.tgz` URL.

Freeze the published digest before retrieval, compare the complete archive, inspect archive paths, extract privately, then fingerprint the extracted `r0vm`. This is **publisher-pinned integrity/provenance**, not a verified detached signature on the asset. The release page's verified commit signature does not by itself attest the archive bytes. No asset signature was found among the published assets. [rzup's GitHub download implementation](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/distribution/github.rs#L139) should not be substituted for an explicit digest check.

## Minimal host feature/API route

The [pinned SDK feature definitions](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/Cargo.toml#L135) separate `client` from `prove`; `client` includes `std`, IPC support and supporting build-discovery APIs, without enabling the circuit proving kernels. Proposed host dependency:

```toml
risc0-zkvm = { version = "=3.0.6", default-features = false, features = ["client", "disable-dev-mode"] }
```

For a separate fresh verifier, `default-features = false` with `std` and `disable-dev-mode` suffices for receipt verification; it need not enable `client`. Check the resolved feature graph for accidental `prove` unification, preserve the new complete Cargo.lock and feature/compiler/environment identities, and use a locked build. This feature change requires a new freeze, not reuse of the old `prove`-enabled host profile. No size or compilation-time promise follows from the smaller feature set.

The following is the source-supported API shape, not a compiled example:

```rust
use risc0_zkvm::{ExternalProver, Prover, ProverOpts, VerifierContext};

let prover = ExternalProver::new("private-release-r0vm", private_r0vm_path);
let opts = ProverOpts::succinct().with_dev_mode(false);
let ctx = VerifierContext::default().with_dev_mode(false);
let info = prover.prove_with_ctx(env, &ctx, &program_binary_bytes, &opts)?;
info.receipt.verify_with_context(&ctx, frozen_image_id)?;
// Also require InnerReceipt::Succinct and independently compare the complete journal.
```

[`ExternalProver`](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/host/client/prove/external.rs) launches the explicit path, transmits the inline binary and options, and checks receipt integrity with the supplied context. Full image-ID verification and journal comparison remain necessary. Alternatively freeze `RISC0_PROVER=ipc` and `RISC0_SERVER_PATH=/absolute/private/r0vm` with `default_prover()`; explicit `ExternalProver` avoids environment-based selection altogether. The [selection code](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/host/client/prove/mod.rs#L169) makes `local` require `prove`; neither `actor` nor `bonsai` is selected in this proposed profile.

The parameter named `elf` in this API carries the **program container bytes**. The server [decodes `ProgramBinary` and checks its V1Compat ABI](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/host/server/exec/executor.rs#L71). If composing from the already built guest, the [binfmt API](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/binfmt/src/elf.rs#L316) is `ProgramBinary::new(user_elf, kernel_elf).encode()`, with the pinned `risc0-zkos-v1compat` kernel. Preserve the existing frozen container and its image ID rather than silently switching representation or kernel.

## IPC, CPU and remaining preflight conditions

The [IPC connector](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/src/host/api/mod.rs#L155) binds `127.0.0.1:0`, checks `r0vm --version` for compatibility, and spawns **`r0vm --port N`**. The [r0vm CLI](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/r0vm/src/lib.rs#L170) connects back on loopback. Allow local TCP and child processes. Do not pass `--num-gpus 0`: this mode rejects values other than 1 when the option is supplied. No manager, worker, RPC cluster or cloud API is required. Explicit path wrappers must forward `--version` and `--port N` unchanged.

The [cargo-risczero default features](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/cargo-risczero/Cargo.toml#L52) include r0vm; CUDA/Metal are opt-in. The inspected Linux release command does not enable them. Thus the source recipe supports a CPU artifact despite using an NVIDIA CUDA build-container base. Recursion programs are [embedded at build time](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/circuit/recursion/src/prove/zkr.rs#L21); this succinct STARK route needs no Groth16 setup download. Unset cloud credentials, `RISC0_DEV_MODE` and selection overrides in the child environment; keep explicit false dev mode in both prover options and verifier context. The untrusted prover may not be relied on for those guarantees: the local verifier must reject fake receipts and bind the frozen image/journal.

No hard AVX/AVX2/BMI2/ADX requirement was found in the inspected release recipe or its [C++ kernel flag builder](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/build_kernel/src/lib.rs#L137). This is **not an authenticated ISA guarantee for the binary**. Before the conditional trial, inspect its ELF interpreter/shared-library and ISA metadata and perform bounded launch checks on the actual Xeon X5670. Nix loader adaptation, if needed, must preserve original ELF bytes and be recorded separately. An ISA/loader failure is a preflight stop, not evidence of proof latency or permission for an unrecorded backend substitution.

Freeze this as a separately identified external-prover profile before execution, keeping the same guest/container, full expected 43-word output and fresh-verifier/negative controls. Count retrieval, preparation, process/IPC overhead, proof, verification and persistence under the remaining four-hour budget. New measurements are **NotRun** here. [Security equivalence remains NotEstablished](security-comparability-20261107.md); this route does not change that assessment or establish Core correspondence/G1 feasibility.
