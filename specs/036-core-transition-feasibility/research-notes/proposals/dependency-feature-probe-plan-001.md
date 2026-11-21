# Dependency-feature probe tuples for the projection component

New unselected plan, source research only. No Cargo command, build or test was
run. This note changes no admission, proof, feature or acceptance state.

Abbreviations: `E = experiments/transition-study036`,
`F = specs/036-core-transition-feasibility`, and
`P = /var/tmp/behavior-ir-core036-v2/w001`.

## Observed facts and their limits

The retained native metadata command is exactly the pinned Nix Cargo 1.98.1
`metadata --locked --offline --format-version 1 --manifest-path
P/native-builds/a0329/worker/Cargo.toml`. It contains neither `--features worker`
nor a platform filter. Its stdout digest is
`13f2e833db6510ac2fbfbd638b920021605c2c0022a2b251e0d6f566d991f86c`.
Sources: `P/native-builds/a0329/metadata/result.json:2–14`;
`E/native_build.py:506–519`.

Bounded reads of that old graph found these resolved feature lists:

| Package | Version | Old native metadata resolve-node features |
| --- | --- | --- |
| transition-study036 | 0.1.0 | none |
| serde_json | 1.0.151 | default, std, unbounded_depth |
| serde | 1.0.229 | alloc, default, derive, serde_derive, std |
| serde_core | 1.0.229 | alloc, result, std |

The three serde package IDs are
`registry+https://github.com/rust-lang/crates.io-index#NAME@VERSION`.
The graph's workspace is `P/native-builds/a0329/worker`; its root manifest declares
serde with derive, serde_json with unbounded_depth, and `worker = []`. This is
the graph already summarized by the unselected feature-facts note, independently
confirmed by this bounded source read. It establishes no fresh same-tuple graph.
Sources: `P/native-builds/a0329/metadata/stdout.txt`, JSON pointers
`/packages` (filtered by the four names), `/resolve/nodes` (joined on full IDs),
`/workspace_root`, `/workspace_members`;
`P/native-builds/a0329/worker/Cargo.toml:11–20`, `:30–41`;
`F/research-notes/proposals/native-serde-feature-facts-001.json:23–68`.

In that observed graph serde_json lacks preserve_order and arbitrary_precision;
its *available* feature definitions include them. Available features and resolved
features are different fields. The empty worker feature requests no dependency
feature directly, but enables worker Rust cfg and required binary targets. Do not
replace an actual worker graph confirmation with the inference that this empty
feature cannot matter. The native worker command explicitly uses `--features
worker --bins`, whereas its earlier metadata command does not.
Sources: same metadata JSON package `features` versus resolve-node `features`;
`P/native-builds/a0329/worker/Cargo.toml:30–41`, `:55–58`;
`E/native_build.py:825–838`.

The retained projection's a0365 result is a retranslation receipt: it records
`reused_closed_compiler_ir = true` and an exact `original_extraction_ref` to
`P/native-extraction/a0344/result.json` (100508 bytes,
SHA256 `d4a10b7a4dd633d0b0ad49b333cad0334c7636846dca74c8448580a6beebf4a1`).
It does not record a fresh Cargo metadata/extraction command for a0365. The a0344
command fields record analysis Cargo metadata with worker enabled and no platform
filter, plus Charon's Cargo tail selecting the actual a0344 manifest, `--lib`,
and `--features worker`. Its metadata stdout digest is
`296666e160bf2cb38aa892ee58cc0a737d72b81b25b3dd78b4c42d3492dbc614`.
Sources: `P/native-extraction/a0365/result.json`, fields
`original_extraction_ref`, `reused_closed_compiler_ir`, `commands`;
`P/native-extraction/a0344/result.json`, `commands` rows labelled metadata,
compiler, extract. Only bounded command/source-binding fields were inspected;
no runtime environment or IR was dumped or read. The a0344 metadata stdout itself
was not inspected, so this note does not assert its serde resolve-node features.

## Concrete capture tuples

| Tuple | Cargo / manifest / cwd | Feature and target subject |
| --- | --- | --- |
| N-old | Recorded native Cargo below; `P/native-builds/a0329/worker/Cargo.toml`; cwd that worker | Existing unfiltered metadata, default root features; evidence baseline only. |
| N-worker | Same native Cargo, manifest and cwd | Explicit root feature worker; actual build unit is `--bins`; native executor passes no `--target` and records compiler host. |
| A-worker-lib | `P/analysis-toolchain/a0039/sysroot/bin/cargo`; `P/native-extraction/a0344/worker/Cargo.toml`; cwd that worker | Explicit root feature worker; actual extraction unit is `--lib`; source says Charon supplies a host-triple `--target`. |

The recorded native Cargo path is:

```text
/nix/store/g3b44129gm5z6wglnia7dzhmnrzlba77-cargo-1.98.1-x86_64-unknown-linux-gnu/bin/cargo
```

The recorded analysis Rustc path is
`P/analysis-toolchain/a0039/sysroot/bin/rustc`. The native Rustc path must be the
prepared native binding's `tools.rustc.path`; it must not be guessed from Cargo's
store path. Native executor checks Rustc release 1.98.1 and records its host;
analysis explicitly configures x86_64-unknown-linux-gnu host/target linking.
The source's no-native-`--target` comment does not independently exclude an
inherited Cargo target override. Bind the effective target environment/config
before equating the target triples. Sources:
`P/native-builds/a0329/metadata/result.json:3`;
`P/native-extraction/a0344/result.json`, compiler command;
`E/native_build.py:302–304`, `:469–477`, `:551–568`;
`E/extract.py:375–404`.

## Offline metadata-only commands

Run the following **later**, with each tuple's validated effective environment,
from its exact cwd, logging only the declared command and bounded JSON results.
`P` in these examples must be expanded to the absolute root above; the analysis
command uses the a0344 compiler-source manifest, not an invented a0365 worker.

```text
<recorded-native-cargo> metadata --locked --offline --format-version 1 \
  --manifest-path P/native-builds/a0329/worker/Cargo.toml --features worker

P/analysis-toolchain/a0039/sysroot/bin/cargo metadata \
  --locked --offline --format-version 1 \
  --manifest-path P/native-extraction/a0344/worker/Cargo.toml --features worker
```

These combine arguments already used by the fixed executors; no Cargo build,
test, check, Charon or translation invocation belongs to this probe. Do not add
the build-unit selectors `--bins`/`--lib` to metadata: record those separately as
the source invocation being described. Preserve default features; neither actual
command requests all features or no-default-features. Source command owners:
`E/native_build.py:507–518`, `:825–838`;
`E/extract.py:460–473`, `:524–533`.

Both observed metadata commands are platform-unfiltered. The permitted local
sources do not establish a metadata target-filter option or how this pinned
Cargo's filtered resolver node features correspond to individual compile units.
Before adding such an option, validate it against the pinned Cargo's primary
interface and record it as a separate capture rather than rewriting the original
tuple. A metadata resolve graph is evidence about its resolution query; claiming
the exact serde cfg of native bins versus analysis lib also requires binding the
resolver policy, target and any host/target/dev-dependency feature distinctions.
This research does not silently promote a workspace graph into per-unit compiler
cfg evidence.

## Tool and effective-environment bindings

The native chain is `E/toolchain-v2.json` → exact repository readiness/config/
receipt references, validated by `check_prepared_native_v2`, then the executor's
prepared tools and source roots. The analysis chain is the exact analysis binding
reference in that same toolchain file, the executor's
`P/analysis-toolchain/a0040/result.json` patched tool paths/environment source,
and its worker Cargo config. Those references identify required future validation
inputs; their contents were not broadened into this source-only read.
Sources: `E/toolchain-v2.json:3–25`, `E/native_build.py:302–304`,
`E/extract.py:169`, `:375–404`.

Reconstruct the tuple's environment from bound inputs without displaying it.
The native executor explicitly sets private Cargo home, offline mode, Rustc/CC,
prepared-tool PATH, target directory, one job, no incremental compilation,
debug-profile settings, and x86-64/linker RUSTFLAGS. It also inherits ambient
variables. Analysis inherits its patched toolchain environment, sets target
linker and disposable/cache target paths, removes both Rustc wrapper variables,
appends linker-features=-lld, and writes host linker/rustflags config. Its cache
continuation checks exact lock and Cargo-config equality. Do not substitute the
native environment for analysis or assume the a0365 translator runtime binding
describes Cargo's compiler environment.
Sources: `E/native_build.py:455–478`; `E/extract.py:375–429`;
`P/native-extraction/a0365/result.json`, `runtime_binding_ref`, `commands`.

Bind a narrowly allowed effective configuration record/digest covering tool paths
and hashes, Cargo home/config source, Rustc/wrapper selection, relevant Cargo
target/feature/resolver/Rustflags overrides, cwd, manifest and target identity.
Do not dump `os.environ`, runtime_environment, process arguments or unrelated
secrets. If an inherited effective override cannot be reconstructed from the
bound receipts, report that provenance gap rather than inventing the old value.

## Before/after guards and output contract

1. Validate exact source subjects and receipts first. The a0365 and a0344
   `native_source_subject_ref` values both identify `subjects/r9273/manifest.json`
   with digest `038b77526b6e863eeae83572a807bf8355f43155394d1c19123129dc65804165`;
   a0344's own extraction subject is `subjects/r9289/manifest.json`. Recheck
   prospective tuple manifests against the actual native/extraction binding,
   rather than using current repository config as a historical snapshot.
2. Before and after metadata, bind exact worker Cargo.toml/Cargo.lock and
   effective `.cargo/config.toml`/ancestor config sources, declared source
   inventory, path-patch manifests, tool identities and environment-binding
   inputs. Native source copies and exact manifest/lock guards are implemented
   at `E/native_build.py:328–342`, `:412–414`, `:973–975`; analysis copies the
   native manifest/lock and compares their digests at `E/extract.py:347–372`,
   then checks cache lock/config equality at `:422–424`. Do not normalize a lock,
   fetch, update dependencies or rewrite a retained worker to make the query pass.
3. Use a declared fresh receipt/output directory and offline local caches only.
   Retained source/lock/config/tool roots stay unchanged. No broad cache walk,
   binary/IR read, build/test, or protected-artifact access is needed. The
   source-only research did not perform these prospective guards or commands.
4. Retain command/cwd/tuple identity, exit and stdout/stderr digests. Parse only
   the root package and full serde_json/serde/serde_core package IDs with versions,
   registry sources, manifest/source bindings, resolve-node feature arrays and
   dependency kind/target edges. Bind registry checksums from the exact lock/source
   receipt; metadata's package source/version alone does not supply that missing
   checksum evidence. Reject missing/ambiguous nodes or unexpected feature/backend
   variants prospectively; never rewrite their features to expected values.
5. Compare fresh N-worker and A-worker-lib captures against each other and the old
   graph by package identity, normalized source/checksum and features, retaining
   tuple differences. Only after those bindings are justified may the projection
   primitive plan specialize serde_json's cfg-dependent backend/Number behavior.
   Metadata does not prove JSON/map/clone/iterator semantics or B02/B04/native
   correspondence. Owners for the unresolved semantic boundary:
   `F/research-notes/proposals/native-json-projection-primitives-001.md:9–24`,
   `:113–122`.
