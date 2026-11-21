# Extraction against the pinned native Rust 1.98.1

Research only, 2026-11-19. This is a new, unselected research note. Work was limited to bounded existing text reads and individual first-party upstream web reads. No compiler/tool/version/help probes, builds, tests, package downloads, retained source acquisitions, binary scans/hashes, process inspection, evidence/input/spec/plan edits, or protected-artifact access occurred. The root's live proof run was not inspected or duplicated. The three prior notes [source binding](native-std-source-binding.md), [stable I/O comparison](stable-io-source-comparison.md), and [model boundary](io-default-model-boundary.md) supply the existing native/analysis std gap; their generic conclusions are not re-derived here.

## Finding and status

**Using the unchanged native compiler for extraction is a technically plausible frontend-port experiment, not a demonstrated capability of the retained Charon.** Rust 1.98.1's own documentation describes `RUSTC_BOOTSTRAP=1` as allowing unstable feature attributes and `-Z` flags on stable. Its `rustc_private` documentation requires compiler libraries from `rustc-dev` and LLVM linking support. Neither statement establishes that the exact components are available here, that they match the installed Nix compiler, or that Charon's newer compiler APIs compile against them. [Pinned bootstrap documentation][bootstrap], [pinned rustc-private documentation][private].

The native pin remains Rust/Cargo 1.98.1, compiler `48a229ceaefd4985c50990b14116b6d856af0985`. Extraction344 currently uses the distinct nightly compiler `923c95cdf5ba65cea505aa2ea829f578e1506ed8`. No native execution tuple was changed. Those are existing local identity facts, not fresh probes: [native binding](native-std-source-binding.md), [344 result][actual344], [retained driver version][driver-version]. This note establishes no source-to-Lean bridge or completed T052/T059/B01–B10 obligation.

## Which Charon is being considered

Do not identify the executing frontend solely from Aeneas's `charon-ml` dependency. [273's preparation result][source273] binds sparse source roots, and the inspected 363 disposable Charon directory contains `charon-ml` but no Rust frontend directory. That source tree is useful for serializer/backend adaptation; it does not itself supply a rebuildable extractor.

The actual frontend has separate retained provenance. Both [extraction114][actual114] and [extraction344][actual344] invoke `analysis-toolchain/a0039/bin/charon`. [35's package source][package35] records Charon `454586e9b770231e66d2062993e632dfc06463e2`; [39's install result][install39] records original and patched wrapper/driver hashes. The successful [40 wrapper-version receipt][charon-version] says `0.1.315 (454586e9b770231e66d2062993e632dfc06463e2)`, its [toolchain receipt][charon-toolchain] says `nightly-2026-09-17`, and its [driver receipt][driver-version] says Rust 1.100.0-nightly `923c95cdf`. These bind recorded package/version identities and binary paths, without a new reproducible-build claim.

Accordingly, individual upstream files below are read at **that actual frontend's recorded revision**, rather than taking the sparse ML pin as sufficient evidence. Its [toolchain file][charon-pin] selects nightly-2026-09-17. Its [Cargo manifest][charon-cargo] makes the driver require `rustc`; the documented stable `--no-default-features` mode excludes that extractor dependency set. A stable build of the LLBC library alone does not demonstrate stable extraction.

## What bootstrap does and does not establish

At the exact stable Rust commit, bootstrap permits unstable gates and can be limited by crate name. It is an unstable facility without stable compatibility guarantees. It does not install `rustc_driver` or substitute Rust 1.100 API implementations into Rust 1.98.1. This last distinction is an inference from the documented gate behavior, not an executed compatibility test. [Pinned documentation][bootstrap].

The exact stable private-crate documentation identifies `rustc-dev` as the compiler-library component, requires `llvm-tools` for official-toolchain linking, and describes special dylib linkage. The installed native compiler being runnable is therefore insufficient evidence that the development libraries needed by an extractor are present. This investigation did not inventory native compiler-library payloads or obtain a stable component. Attempts to read the two dated official component checksum URLs through the web service were inaccessible; that service failure establishes neither component absence nor availability. [Pinned documentation][private].

Mixing the already built nightly driver or nightly `rmeta` with stable std is not a supported shortcut. Rust's [E0514 documentation][metadata] describes rejection of dependencies built with incompatible compiler versions and the unstable Rust ABI. A prospective native-version driver and its Rust dependencies must be compiled against the matching compiler libraries, and subject/dependency metadata must come from the pinned stable compiler. Matching a human-readable version label alone does not prove matching build metadata or runtime linkage.

Bootstrap scoped to a separate extractor process does not rewrite previously retained native executables. Conversely, `RUSTC_BOOTSTRAP=1` inherited by a **new** extraction build is an actual environment difference: dependencies/build scripts can observe the environment, and the driver changes MIR settings. Therefore neither native byte equality nor equal source/cfg follows just from retaining the compiler executable. Keep the existing native controls and bind the new extraction invocation separately. The environment visibility conclusion follows from Cargo's [build-script environment contract][build-env]; the driver changes are explicit in [its setup source][charon-driver].

## Concrete adaptation points already visible

This is a bounded source review, not an exhaustive port or a compiler-error inventory.

| Surface | Primary-source finding | Prospective adaptation/check |
| --- | --- | --- |
| Compiler crate set | Charon's [driver root][charon-main-driver] declares `extern crate rustc_structures`. The corresponding [nightly crate manifest][structures-new] exists; the same exact stable path returned 404 in this review. Nightly [exports][structures-lib] include CrateType, Limit, NativeLibKind and SanitizerSet; stable has older locations, including [CrateType through rustc_hir::attrs][stable-config]. | Remove an unused declaration or map actual uses to the stable locations after a complete source read. A failed raw URL alone is not a full installed-component inventory; do not assert the whole port consists of this import. |
| Frontend thread options | [Charon driver][charon-driver] writes `config.opts.jobs.frontend`. The complete stable [options source][stable-options] has no `jobs` member and declares `unstable_opts.threads: Option<usize>` instead. | Adapt the optional parallelism setup to the stable API, or retain its sequential default in the experiment. A source edit is needed; bootstrap cannot add this field. Preserve and record all other MIR controls. |
| Compiler API consumers | The [driver root][charon-main-driver] imports compiler-private crates and several unstable language features. The manifest includes local `rustc_const_uneval` and `rustc_trait_elaboration` helpers. | Compile/check the complete extractor and helper set against 1.98.1, then repair the actual errors. This review establishes no complete list of HIR/type/MIR/query/trait-solver changes, feature availability, or port size. |
| Tool routing | The wrapper [embeds the toolchain file and normally runs rustup with its pinned channel][charon-toolchain-src]. Its PATH mode uses `CHARON_TOOLCHAIN_IS_IN_PATH`; that is routing, not a compatibility check. | Bind explicit stable Cargo/compiler/driver/sysroot paths in a separate prospective tool tuple. An outer `RUSTC` variable or `--sysroot` alone does not retarget the compiler linked into the current driver. |
| Cargo wrapper | [Wrapper main][charon-wrapper] uses `cargo build --unit-graph -Z unstable-options` to find selected targets, then installs the driver as `RUSTC_WRAPPER`. | Either verify those flags under the pinned stable Cargo/bootstrap environment or initially use the wrapper's direct `rustc` mode with a dependency-free canary. Do not infer Cargo flag acceptance only from rustc documentation. |
| Std names and output | The existing [stable I/O comparison](stable-io-source-comparison.md) locates Read/Write/BufWriter in stable `std`, where the current extraction names use refactored `core`/`alloc` paths. | Rebind include/opaque rules, expected names, primitive mappings and complete dependency inventory to stable output. Preserve the LLBC serialization contract consumed by the current Charon-ML/Aeneas pair, or verify an explicit schema adapter. Older Charon cannot simply be substituted without this check. |

There is a useful additional Cargo source indication, with a binding limit: [Cargo commit `797e8a9bc`][cargo-gate] makes `channel()` return `dev` for `RUSTC_BOOTSTRAP=1`, so that revision implements a Cargo-side gate bypass. This note has **not** independently bound that Cargo commit to the installed native Cargo executable; the inspected readiness record supplies a 1.98.1 version prefix. This is a candidate source fact for a future exact Cargo binding, not a successful local unit-graph run.

## Std MIR is a separate gate

Charon's pinned [MIR loader][get-mir] explicitly checks `tcx.is_mir_available`. For nonlocal functions it reads optimized MIR; its comment explains that setting always-encode-MIR for dependencies compiled now does not retroactively provide all std bodies. Distributed std supplies MIR for const/generic/inlineable items; other bodies can remain unavailable. Thus access to native std metadata is not equivalent to complete source/MIR extraction of native std. No required I/O body was tested against native metadata here.

The wrapper can ask Miri for a sysroot built with always-encode-MIR, and its default sysroot option bypasses that path. These are [explicit upstream mechanisms][charon-toolchain-src], not evidence that stable Miri/full-MIR std exists. A rebuilt stable-source std would be a distinct analysis artifact even with the same compiler commit; it would need exact source/configuration/MIR-pass correspondence to the retained distributed native std. It would not justify changing native329 or claiming automatic native correspondence. The [compiler build guide][compiler-build] likewise describes freshly built stage compiler/library sysroots as new build products.

## Existing upstream/fork support

The inspected actual revision and current upstream `main` both [pin nightly-2026-09-17][current-pin]. One earlier first-party revision, [`b104e24...`][older-pin], pins nightly-2026-08-18, not stable 1.98.1. These are positive source observations; an older date does not identify Rust `48a229cea`, including its stable backports.

Bounded searches for Charon plus stable/bootstrap/1.98.1 and the exact native commit did not identify a first-party supported fork or release for this stable tuple. GitHub history/query pages and the API history URL were unavailable through this web service. **No existing compatible version was found; absence was not proved.** There is no basis here to select an unexamined fork, claim that no such fork exists, or promise that an older upstream driver is cheaper to port.

## Smallest discriminating successor experiment (not run)

1. Retain official 1.98.1 host component metadata and establish availability/identity of matching `rustc-dev`, LLVM linking inputs and source. In an isolated analysis assembly preserve the unchanged native compiler/Cargo/std inputs and distinguish newly added development libraries. First resolve any Nix/official-component loader or crate-metadata mismatch; compiling rustc itself would create a different compiler artifact and is not the first experiment.
2. Compile a tiny callback driver using only `rustc_private`, `rustc_driver` and `rustc_interface` under exact native rustc plus bootstrap. Have it inspect one local function and serialize a bounded identifier/body observation. This isolates feature gating, component metadata, linker/runtime closure and callback capability from Charon. Passing it proves only that narrow capability.
3. Compile the actual pinned Charon frontend with the smallest necessary stable-API patch, without MiniRust if unused, preserving its LLBC schema and compiler checks. Start with direct `charon rustc` over a dependency-free source to avoid Cargo's unit-graph question, then separately check the stable Cargo wrapper path. Capture errors before choosing further adaptations; do not silently omit unsupported constructs.
4. Extract one real stable `Write::write_all` instantiation and one stable `Take<File>::read_to_end` instantiation against the **identified distributed native std**. Inspect actual method identities, body presence/opacity, helper/override dependencies and source spans. A declaration without its body is a failed body-availability objective. If std lacks required MIR, state that exact limitation before considering a separately bound full-MIR std build or source-directed model.
5. Only after these narrow checks, move the unchanged real worker source through this frontend in a fresh subject and re-establish the full dependency/source/cfg/runtime and Lean theorem closure. Matching the native compiler removes one version distinction; it does not solve slice/raw-pointer support, recursive dictionaries, I/O runtime models, or any unsupported native operation by itself. Those remaining obligations are the existing [model boundary](io-default-model-boundary.md) and [344's unestablished closure][actual344].

The first useful result is therefore a small stable-driver capability receipt, followed by a real stable-std body-availability receipt. Neither receipt nor the Charon port exists from this research. The native pin and existing acceptance status remain unchanged.

[bootstrap]: https://raw.githubusercontent.com/rust-lang/rust/48a229ceaefd4985c50990b14116b6d856af0985/src/doc/unstable-book/src/compiler-environment-variables/RUSTC_BOOTSTRAP.md
[private]: https://raw.githubusercontent.com/rust-lang/rust/48a229ceaefd4985c50990b14116b6d856af0985/src/doc/unstable-book/src/language-features/rustc-private.md
[metadata]: https://doc.rust-lang.org/error_codes/E0514.html
[build-env]: https://doc.rust-lang.org/cargo/reference/build-scripts.html#inputs-to-the-build-script
[charon-pin]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/rust-toolchain
[charon-cargo]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/Cargo.toml
[charon-main-driver]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/main.rs
[charon-driver]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/driver.rs
[charon-toolchain-src]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon/toolchain.rs
[charon-wrapper]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon/main.rs
[structures-new]: https://raw.githubusercontent.com/rust-lang/rust/923c95cdf5ba65cea505aa2ea829f578e1506ed8/compiler/rustc_structures/Cargo.toml
[structures-lib]: https://raw.githubusercontent.com/rust-lang/rust/923c95cdf5ba65cea505aa2ea829f578e1506ed8/compiler/rustc_structures/src/lib.rs
[stable-config]: https://raw.githubusercontent.com/rust-lang/rust/48a229ceaefd4985c50990b14116b6d856af0985/compiler/rustc_session/src/config.rs
[stable-options]: https://raw.githubusercontent.com/rust-lang/rust/48a229ceaefd4985c50990b14116b6d856af0985/compiler/rustc_session/src/options.rs
[cargo-gate]: https://raw.githubusercontent.com/rust-lang/cargo/797e8a9bc/src/cargo/core/features.rs
[get-mir]: https://raw.githubusercontent.com/AeneasVerif/charon/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/get_mir.rs
[compiler-build]: https://raw.githubusercontent.com/rust-lang/rust/48a229ceaefd4985c50990b14116b6d856af0985/src/doc/rustc-dev-guide/src/building/how-to-build-and-run.md
[current-pin]: https://raw.githubusercontent.com/AeneasVerif/charon/main/charon/rust-toolchain
[older-pin]: https://raw.githubusercontent.com/AeneasVerif/charon/b104e24fea7d721b71e6c39fd70f26ff20bc0980/charon/rust-toolchain
[source273]: /var/tmp/behavior-ir-core036-v2/w001/nonpos-source/a0273/result.json
[actual114]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0114/result.json
[actual344]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0344/result.json
[package35]: /var/tmp/behavior-ir-core036-v2/w001/analysis-runtime/a0035/result.json
[install39]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/result.json
[charon-version]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0040/charon-version/stdout.txt
[charon-toolchain]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0040/charon-toolchain/stdout.txt
[driver-version]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0040/driver-version/stdout.txt
