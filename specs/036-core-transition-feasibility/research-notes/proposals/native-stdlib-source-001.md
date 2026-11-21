# Native Rust 1.98.1 standard-library source discovery

Research only, 2026-11-21. **New, unselected note.** Bounded local metadata, named source-manifest searches, and directory-entry checks only. No builds, tests, downloads, process/environment inspection, raw IR, private/evidence walk, live outcome read, SDK binary/archive-content read, protected-file access, or selected-source mutation. This note does not infer any outcome of the running key-law guard.

**No owning Rust 1.98.1 standard-library source or versioned offline standard-library API documentation was located in the bounded places checked.** Native toolchain declarations and installed compiled standard-library components were located. This is a scoped discovery result, not a claim that no suitable source exists anywhere on disk.

## Declared native subject

The repository and retained Core reuse snapshot both declare `channel = "1.98.1"`, `profile = "minimal"`, components `rustfmt` and `clippy`, and the musl target. Neither declaration requests `rust-src` or `rust-docs`. The flake constructs its Rust package from that file with `rust-bin.fromRustupToolchainFile`. [repository toolchain declaration](/data/repos/behavior-ir-core-033/rust-toolchain.toml:1), [retained source declaration](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/rust-toolchain.toml:1), [flake binding](/data/repos/behavior-ir-core-033/flake.nix:19).

The retained source inventory explicitly lists the snapshot's `rust-toolchain.toml`. A bounded filename/content search of that known inventory found that declaration but no `library/alloc`, `library/core`, `library/std`, `rust-src` or `rust-docs` entry. The inventory is the Core source subject manifest; its inclusion of a toolchain declaration does not make it an inventory of the installed standard library. [toolchain inventory entry](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/subject-inventory-v2.json:2712).

The study's declared installed-tools metadata names the compiler path below and records `rustc 1.98.1 (48a229cea 2026-09-01)`. This investigation read that declared metadata and did not invoke the compiler or independently validate the recorded identity. Native-completion source also explicitly checks `compiler_release == "1.98.1"`; that check is program text, not evidence that any current invocation passed it. [declared rustc identity](/data/repos/behavior-ir-core-033/experiments/transition-study036/toolchain.json:50), [native completion identity requirement](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_completion_v2.py:130).

```text
/nix/store/6w2dzfizkrgkjz3bgb9mm8y0fb4pmizq-rust-minimal-1.98.1
```

`toolchain-v2.json` contains references to native readiness/configuration and analysis binding records. Those referenced evidence records were not followed in this investigation. The declared analysis binding separately identifies `nightly-2026-09-17`; it does not establish equivalence with native 1.98.1. [native binding references](/data/repos/behavior-ir-core-033/experiments/transition-study036/toolchain-v2.json:1), [analysis tuple](/data/repos/behavior-ir-core-033/experiments/transition-study036/analysis-environment-binding-v2.json:4).

## Exact installed locations checked

The following observations come from directory entries/existence checks, not reading binary contents. Directory links below are the exact inspected locations.

| Inspected location | Discovery |
| --- | --- |
| [declared combined toolchain root](/nix/store/6w2dzfizkrgkjz3bgb9mm8y0fb4pmizq-rust-minimal-1.98.1) | Present. `lib/rustlib` has `etc`, GNU-target and musl-target directories. `lib/rustlib/src` is absent. |
| [combined toolchain Rust documentation directory](/nix/store/6w2dzfizkrgkjz3bgb9mm8y0fb4pmizq-rust-minimal-1.98.1/share/doc/rust) | Contains COPYRIGHT-library.html, COPYRIGHT.html, README.md and licenses. `html` is absent; no std API/source HTML tree here. Copyright files were not read. |
| [underlying rustc component](/nix/store/s2rrgyqrhl98qnjxq0jmjakpnpdv3ps9-rustc-1.98.1-x86_64-unknown-linux-gnu) | Located through named symlink targets in the combined root's `nix-support` and `share/doc/rust`. `lib/rustlib/src` and `share/doc/rust/html` are absent. Its Rust doc directory has the same notices/README/licenses shape. |
| [GNU rust-std component](/nix/store/99kcydzqz71z3hb21ciiygfng9zk3nm5-rust-std-1.98.1-x86_64-unknown-linux-gnu) | Root contains `lib`; `lib/rustlib` contains the GNU target directory. `lib/rustlib/src` and `share/doc/rust/html` are absent. |
| [musl rust-std component](/nix/store/d4d24bhnj59y9mp9rk8sdwvlkjpls3p4-rust-std-1.98.1-x86_64-unknown-linux-musl) | Root contains `lib`; `lib/rustlib` contains the musl target directory. `lib/rustlib/src` is absent. Root has no `share` directory. |

The rustc component's small README is a generic Rust repository introduction linking external documentation. It has no owning String/str/Borrow/BTreeMap API or implementation definitions, and its statement that the Rust repository contains the compiler, library and documentation does not establish their presence in this installed package. [installed README](/nix/store/s2rrgyqrhl98qnjxq0jmjakpnpdv3ps9-rustc-1.98.1-x86_64-unknown-linux-gnu/share/doc/rust/README.md:13).

A nonrecursive top-level Nix-store basename probe used exactly `*rust-src*1.98.1*`, `*rust-docs*1.98.1*`, and `*rust-std*1.98.1*`. It found no names matching the first two patterns. It located the two rust-std components above and their named distribution archives/derivations. The archives and derivation contents were not read. A compiled `rust-std` component is not owning source or versioned API documentation.

The conventional `/home/kalle/.rustup` root is absent. `/root/.rustup` was inaccessible to the existence/listing check and was not traversed. No environment variable was consulted to discover alternate Rustup roots. No assertion is made about other users' roots, arbitrarily named Nix source outputs, generic source caches, unregistered retention roots, or other versions. There was no recursive private/evidence/Nix-store source search.

## What remains available and what is still missing

The known owning analysis standard-library sources remain useful for analysis-subject facts, including `str` byte comparison, String's derived comparison, String Borrow<str>, BTreeMap borrowed order, stored-key retention and ordered iteration. They reside under the analysis sysroot, **not** the located native 1.98.1 package. [analysis str traits](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/str/traits.rs:10), [analysis String derive](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/string.rs:350), [analysis String Borrow<str>](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/str.rs:230), [analysis BTreeMap ordered iteration](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map.rs:41), [analysis BTreeMap borrowed-order requirement](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map.rs:703), [analysis stored-key retention](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/collections/btree/map.rs:1020).

No native 1.98.1 owner was found here from which to cite those same facts. Stable annotations in analysis source, the shared Rust API spelling, the compiler's recorded release string, and the existence of native compiled std components do not supply the missing source/library/compiler relation.

The next source-binding step is to locate or deliberately retain a provenance-bound **Rust 1.98.1** owning source distribution/check-out or versioned official offline API/source documentation. Before acquiring anything, declare the exact source/version/commit, archive identity, retention destination and resource budget through the existing workflow; this task authorizes no download or install. Bind it to the actual selected native compiler/standard-library component and target/cfg subject, rather than treating the repository toolchain declaration as proof of the executed library contents. The recorded abbreviated compiler commit is a lead to resolve, not a complete source seal.

For a bounded follow-up, the minimum useful owning files are `library/alloc/src/string.rs`, `library/alloc/src/str.rs`, `library/core/src/str/traits.rs`, `library/core/src/cmp.rs`, `library/core/src/borrow.rs`, `library/alloc/src/vec/{mod.rs,partial_eq.rs}`, `library/core/src/slice/cmp.rs`, and `library/alloc/src/collections/btree/{map.rs,set.rs,search.rs}` plus iterator/entry owners as actually reached. Versioned API docs can support documented contracts, but do not alone prove implementation, intrinsic or compiler adequacy. Record native and analysis differences explicitly before proposing the concrete generic primitive interpretation for admission. No global native-correctness or proof-equivalence premise is supplied by this discovery note.
