# RISC Zero 3.0.6: isolated guest build route

Date: 2026-11-07 UTC. Primary-source inspection only; no archive/body download, extraction, installation, build or proof execution. The commands/API sketches below are **NotRun**, not a claim of successful X5670 compilation. Backend source pin: `v3.0.6`, `1cc70cf05033a79ebc90f07c679cb4bd1cd301b9`.

**Result:** a private Rust guest build does not require the 72 MB `cargo-risczero` archive, a standalone `rzup` executable, or global rustup registration. Use the verified guest compiler archive plus an existing, pinned real host Cargo executable. Retain all sysroot/linker files from the archive. The complete proof input additionally requires the release's user-program/kernel container; compiling a bare user ELF is only the first stage.

## Exact compiler artifact

- Component version: `rust 1.97.0`; rzup tag mapping: `r0.1.97.0`.
- [Official Linux archive](https://github.com/risc0/rust/releases/download/r0.1.97.0/rust-toolchain-x86_64-unknown-linux-gnu.tar.gz).
- Published size: **528,796,425 bytes**.
- Published SHA-256: `100b597d605b706bec94e1d32bfaaf5851df8d75173f986d4b56a3e90916be53`.
- Source: [official release metadata](https://api.github.com/repos/risc0/rust/releases/tags/r0.1.97.0), [release](https://github.com/risc0/rust/releases/tag/r0.1.97.0), [rzup component/tag mapping](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/components.rs#L118-L123).

These are publisher metadata, not a locally completed archive verification. Future extraction must first match the frozen digest and inspect archive members. Locate the actual compiler root rather than assuming an unverified `--strip-components` count. Keep `bin/rustc`, target libraries and bundled linker relative to that root; do not copy out only rustc.

## Private discovery layout

For the `risc0-build` helper, arrange an actual directory containing the verified toolchain root at:

```text
<trial>/risc0/toolchains/v1.97.0-rust-x86_64-unknown-linux-gnu/bin/rustc
<trial>/risc0/settings.toml
<trial>/cargo-cache/
<trial>/rustup-private/
<trial>/guest-target/
```

Private `settings.toml`:

```toml
[default_versions]
rust = "1.97.0"
```

Set `RISC0_HOME=<trial>/risc0`, `RUSTUP_HOME=<trial>/rustup-private` and `CARGO_HOME=<trial>/cargo-cache` in the trial's subprocess environment. Leave the user's `HOME` and global configuration alone. Sources: [environment paths](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/env.rs#L203-L243), [settings schema](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/settings.rs#L25-L30).

Discovery reads the configured version and scans real component directories; no installation receipt is required by this path. Directory symlinks are excluded by the scanner, so use the actual extracted directory, not a symlink standing in for it. A global or private `rustup toolchain link risc0` is unnecessary when invoking the real host Cargo and supplying the compiler explicitly. Sources: [directory parser/selection](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/paths.rs#L25-L69), [registry default selection](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/rzup/src/registry.rs#L112-L128).

## Minimal source/profile freeze

Example guest manifest choices for this new probe, separate from its host crate:

```toml
[package]
name = "identity43"
version = "0.1.0"
edition = "2021"

[workspace]

[dependencies]
risc0-zkvm = { version = "=3.0.6", default-features = false }

[profile.release]
opt-level = 3
lto = false
codegen-units = 1
debug = 0
panic = "abort"
```

The standalone guest workspace and disabled default features follow the [official guest template](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/cargo-risczero/templates/rust-starter/methods/guest/Cargo-toml). The explicit profile above is a proposed probe freeze, not a mandatory universal RISC Zero profile. Commit/pin the full resolved lockfile before measurement; prevent inherited Cargo config or feature unification from changing it. The package's own workspace controls its profile, so do not assume the surrounding host workspace's profile applies.

```rust
#![no_main]
#![no_std]
extern crate alloc;
use risc0_zkvm::guest::env;
risc0_zkvm::guest::entry!(main);
fn main() {
    let words: alloc::vec::Vec<u64> = env::read();
    assert_eq!(words.len(), 43);
    env::commit(&words);
}
```

This is an identity guest sketch, not an authenticated Core transition. Do not enable `package.metadata.risc0.kernel = true` to bypass normal packaging.

## Build command and environment

Two source-supported options exist. The recommended helper variant uses pinned `risc0-build = 3.0.6` with its **`unstable` feature** for the public `cargo_command` API:

```rust
let mut cmd = risc0_build::cargo_command("build", &[]);
cmd.env("CARGO_HOME", private_cache)
    .env("RUSTUP_HOME", private_rustup)
    .args(["--release", "--locked", "--manifest-path", guest_manifest,
           "--target-dir", guest_target]);
// Spawn only after the separate build/resource gate has passed.
```

Put a pinned real host Cargo on this subprocess's PATH; avoid a rustup proxy depending on private empty toolchain registration. The helper chooses `<private RISC0_HOME>/toolchains/.../bin/rustc`, target `riscv32im-risc0-zkvm-elf`, and its guest flags. It sanitizes **all `CARGO*` variables**, so the explicit restoration of `CARGO_HOME` and `--target-dir` above are necessary for wholly private writes. Incoming `RUSTC` alone is not an override for helper compiler discovery. `RISC0_BUILD_LOCKED` also enables locked mode. Source: [command construction](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/build/src/lib.rs#L353-L440).

Alternatively, directly invoke that real host Cargo with private `CARGO_HOME`, explicit `RUSTC=<verified-toolchain>/bin/rustc`, `--target riscv32im-risc0-zkvm-elf`, `--release`, `--locked`, `--manifest-path` and `--target-dir`. Reproduce these guest arguments as an ASCII-unit-separator-joined `CARGO_ENCODED_RUSTFLAGS` list:

```text
-C
passes=lower-atomic
-C
link-arg=-Ttext=0x00200800
-C
link-arg=--fatal-warnings
-C
panic=abort
--cfg
getrandom_backend="custom"
```

Source: [exact flag encoder](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/build/src/lib.rs#L454-L503).

For the pure-Rust guest, no RISC-V C++ cross-toolchain is required. The helper's default no-C++ configuration sets `CC` to a deliberately nonexistent path, `CFLAGS_riscv32im_risc0_zkvm_elf=-march=rv32im -nostdlib` and `RISC0_FEATURE_bigint2` to an empty value. Freeze those if reproducing its environment directly. Keep `RISC0_RUST_SRC` **unset**: setting it activates separate `-Z build-std` operations and changes the build recipe. Clear inherited guest `RUSTFLAGS`, compiler wrappers and Cargo target/linker overrides. These are proposed reproduction controls, not performed edits.

The compiler's [target specification](https://github.com/risc0/rust/blob/r0.1.97.0/compiler/rustc_target/src/spec/targets/riscv32im_risc0_zkvm_elf.rs) selects `rust-lld`, RV32IM/ILP32, static relocation and abort panic. There is no separate linker installation required by that target recipe if the verified archive contains the expected bundled files. Before building, inspect the extracted `rustc --print sysroot`, target library directory and bundled `rust-lld`; missing files are a preflight failure, not a reason to substitute arbitrary host lld or rebuild std silently. The text address is from [stable guest memory layout](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkvm/platform/src/memory.rs#L18-L23).

## Complete program and image ID without r0vm

The normal 3.0.6 methods artifact is not just the emitted user ELF. Reproduce the library's container step and compute its ID in Rust:

```rust
let program = risc0_binfmt::ProgramBinary::new(
    &user_elf, risc0_zkos_v1compat::V1COMPAT_ELF,
).encode();
let image_id = risc0_binfmt::compute_image_id(&program)?;
```

Freeze **`risc0-binfmt = 3.0.5`** and **`risc0-zkos-v1compat = 2.2.3`**, the exact corresponding versions in the 3.0.6 source bundle, rather than assigning every crate version 3.0.6. Pin the embedded kernel bytes as well as the user ELF, combined program and returned ID. Sources: [workspace dependency mapping](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/Cargo.toml#L50-L68), [embedded compatibility kernel](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/zkos/v1compat/src/lib.rs), [packaging/image-ID implementation](https://github.com/risc0/risc0/blob/1cc70cf05033a79ebc90f07c679cb4bd1cd301b9/risc0/build/src/lib.rs#L157-L188).

The higher-level `get_package` + `build_package(..., GuestOptions::default())` route performs normal compilation/packaging and can fall back to Rust image-ID computation when `r0vm` is absent. It provides less direct control over the sanitized child environment; for entirely private cache writes it additionally needs a pinned private Cargo wrapper that restores the cache location. The mutable `cargo_command` route above avoids that wrapper and avoids opportunistic use of any ambient `r0vm` binary for ID computation.

Required practical check remains: verify/extract the compiler archive, freeze the real host Cargo/compiler and guest lock/config, check private paths and resources, compile, calculate the combined image ID, and run the separate local CPU identity proof with development mode disabled and full expected-journal comparison. No source inspection here establishes binary compatibility, successful compilation, proof soundness for Core, or measured latency.
