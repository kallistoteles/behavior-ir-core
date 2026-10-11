# First-party source and reachability bootstrap

E-QUALITY-001 — Inspection-only inventory, 2026-10-10. Baseline release commit `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree `6a9f9879a9fece5a001ca30ace483a8cde1addd9`; source root `/tmp/behavior-core-016.3fbz3jon/baseline`. No source overlay, no test execution. Scope: all first-party Rust under workspace crate `src/`; external tests, examples, scripts and consumer are listed separately. This bootstrap supplies T008 to B1; it does not assert any invariant or soundness conclusion.

## Denominators

67 workspace `src/**/*.rs` files. Per-package counts are source files / external test Rust files (including support, not runnable-target counts) / example Rust files:

- `behavior-cli`: 2 / 17 / 0.
- `behavior-core`: 35 / 68 / 0.
- `behavior-engine`: 1 / 0 / 0.
- `behavior-store`: 15 / 53 / 4.
- `behavior-verify`: 14 / 24 / 0.
- External consumer: 17 Rust files. Actual Cargo target and test collection remains a COORD-run obligation.

## cfg(test) accounting

- `behavior-core/src/lib.rs:64–65` gates the entire three-file `incremental_proof` module. Its delta/reference contract is test-only machinery, absent from the production evaluator.
- `behavior-core/src/commands.rs:216` gates inline `tests` through its module end; later production code resumes after this block.
- `behavior-store/src/store/local_validation.rs:49` gates inline tests through EOF.
- `behavior-store/src/store/incremental/mod.rs:5` gates `tests.rs`; `:172` gates `workload_tests.rs`; `dependency.rs:67` gates `dependency/tests.rs`. Work counters and forced-reference selection in `mod.rs:124–190` are gated individually. Production `validate_incremental_child` has separate `cfg(test)` and `cfg(not(test))` evaluator branches (`:42–60`). This branch distinction must be reviewed in INCREMENTAL; test assertions alone do not cover production selection.
- `behavior-store/src/store.rs:8`, `:1172`, `:1243` gate imports and full-parent test instrumentation. Source file membership is not enough to classify each expression.
- `behavior-store/src/conformance.rs` and `behavior-core/src/testing.rs` are exported production first-party support APIs, despite their names. They are not removed by `cfg(test)`.
- External `crates/*/tests/` and `consumer/tests/` compile in test targets; examples compile independently. Their panic sites are not production semantic-runtime sites.

## Literal panic/unwrap/expect/unreachable candidates

Commands inspected: `rg -n '(\.unwrap\s*\(|\.expect\s*\(|\bpanic!|\bunreachable!)' crates/*/src`, followed by manual checks of enclosing `cfg(test)` module declarations. These are literal lexical sites, not a parser-based macro-expansion/dependency audit. All 89 matching source lines below are within the enumerated test scopes. No literal production `.unwrap()`, `.expect()`, `panic!` or `unreachable!` site was found. This does not claim absence of allocation failure, stack overflow, indexing panic, arithmetic debug panic or dependency panic.

| Source location | Test-scope expression |
| --- | --- |
| `crates/behavior-core/src/commands.rs:222` | `assert_eq!(checked_count(0).unwrap(), [0, 0, 0, 0]);` |
| `crates/behavior-core/src/commands.rs:224` | `checked_count(u64::from(u32::MAX)).unwrap(),` |
| `crates/behavior-core/src/commands.rs:239` | `canonical_keys(vec![b.clone(), a.clone(), a.clone()]).unwrap(),` |
| `crates/behavior-core/src/incremental_proof/mod.rs:22` | `.unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:24` | `assert_eq!(d.apply(&full(&old)).unwrap(), full(&new));` |
| `crates/behavior-core/src/incremental_proof/mod.rs:37` | `let df = f.reference_delta(&a,&Replacement::between(a,b)).unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:38` | `let dg = g.reference_delta(df.before(),&df).unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:39` | `prop_assert_eq!(dg.apply(&g(&f(&a))).unwrap(), g(&f(&b)));` |
| `crates/behavior-core/src/incremental_proof/mod.rs:40` | `let identity=f.reference_delta(&a,&Replacement::between(a,a)).unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:95` | `target: *m.derived("twice").unwrap().hash(),` |
| `crates/behavior-core/src/incremental_proof/mod.rs:302` | `.unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:305` | `crate::admit(&w.to_string()).unwrap()` |
| `crates/behavior-core/src/incremental_proof/mod.rs:317` | `Value::Exact(crate::exact::Exact::parse(&format!("{x}/3")).unwrap()),` |
| `crates/behavior-core/src/incremental_proof/mod.rs:369` | `let d=full.reference_delta(&before,&Replacement::between(before.clone(),after.clone())).unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:370` | `prop_assert_eq!(d.apply(&full(&before)).unwrap(),full(&after),"{}",operator_name(&e));` |
| `crates/behavior-core/src/incremental_proof/mod.rs:394` | `.unwrap();` |
| `crates/behavior-core/src/incremental_proof/mod.rs:403` | `.unwrap(),` |
| `crates/behavior-store/src/store/incremental/dependency/tests.rs:8` | `behavior_core::admit(&w.to_string()).unwrap()` |
| `crates/behavior-store/src/store/incremental/dependency/tests.rs:15` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/dependency/tests.rs:68` | `let target = *m.derived("leaf").unwrap().hash();` |
| `crates/behavior-store/src/store/incremental/tests.rs:10` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:13` | `behavior_core::admit(&wire().to_string()).unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:28` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:41` | `assert!(facts.exists("E", "new").unwrap());` |
| `crates/behavior-store/src/store/incremental/tests.rs:42` | `assert!(!facts.exists("E", "e1").unwrap());` |
| `crates/behavior-store/src/store/incremental/tests.rs:51` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:54` | `let m = behavior_core::admit(&w.to_string()).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:67` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:92` | `for k in backend.keys_at(entity, position).unwrap() {` |
| `crates/behavior-store/src/store/incremental/tests.rs:93` | `let v = backend.version_at(&k, position).unwrap().unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:112` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:119` | `for (field, target) in module.entity(entity).unwrap().reference_fields() {` |
| `crates/behavior-store/src/store/incremental/tests.rs:147` | `&behavior_core::admit(&w.to_string()).unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:161` | `match kind {0=>v["id"]=json!("wrong"),1=>v["x"]=json!("bad"),2=>{v.as_object_mut().unwrap().remove("y");},_=>{}}` |
| `crates/behavior-store/src/store/incremental/tests.rs:166` | `let parent=s.validate_snapshot_full(&m,0).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:192` | `let at = s.current().unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:193` | `let schema = s.schema_at(&at).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:194` | `s.validate_snapshot(&m, &at, &schema).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:196` | `s.validate_snapshot(&m, &at, &schema).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:206` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:208` | `let m = behavior_core::admit(&w.to_string()).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:221` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:239` | `let parent = s.validate_snapshot_full(&m, 0).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:268` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:269` | `let b = e.bundle.unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:270` | `s.commit(&m, &b.evaluated_state, &b).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:271` | `(m, s.backend.record(1).unwrap().unwrap(), s.head().unwrap())` |
| `crates/behavior-store/src/store/incremental/tests.rs:277` | `let parent = s.current().unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:288` | `let at = s.current().unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:289` | `let old = s.snapshot_identity(&m, &at, &s.genesis_schema).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:292` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:297` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:299` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:307` | `let changed = behavior_core::admit(&w.to_string()).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:319` | `let other = behavior_core::admit(&w.to_string()).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:324` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/tests.rs:333` | `let at = s.current().unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:335` | `Some(s.validate_snapshot(&m, &at, &s.genesis_schema).unwrap())` |
| `crates/behavior-store/src/store/incremental/tests.rs:341` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:346` | `assert!(s.validated.lock().unwrap().is_none());` |
| `crates/behavior-store/src/store/incremental/tests.rs:354` | `assert!(s.validated.lock().unwrap().is_none());` |
| `crates/behavior-store/src/store/incremental/tests.rs:355` | `let s = Store::open(s.into_backend()).unwrap();` |
| `crates/behavior-store/src/store/incremental/tests.rs:356` | `assert!(s.validated.lock().unwrap().is_none());` |
| `crates/behavior-store/src/store/incremental/tests.rs:358` | `let at = s.current().unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:7` | `let at = s.current().unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:20` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:21` | `let b = e.bundle.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:22` | `writer.commit(&m, &b.evaluated_state, &b).unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:23` | `let record = writer.backend.record(1).unwrap().unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:26` | `s.validate_snapshot(&m, &at, &schema).unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:28` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:36` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:124` | `.unwrap()` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:127` | `wire["actions"].as_array_mut().unwrap().push(json!({"name":"create","loc":l,"params":[{"name":"id","role":"input","type":{"t":"id","entity":"E"}}],"effects":[{"create":"E","id":{"op":"param","param":"id","loc":l},"fields":{"x":{"op":"lit","type":{"t":"int"},"value":1,"loc":l},"y":{"op":"lit","type":{"t":"int"},"value":2,"loc":l}},"loc":l}],"preconditions":[],"postconditions":[]}));` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:128` | `let m = behavior_core::admit(&wire.to_string()).unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:145` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:179` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:180` | `let b = e.bundle.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:181` | `let c = s.commit(&m, &b.evaluated_state, &b).unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:195` | `.unwrap();` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs:214` | `assert_eq!(outcomes.get(workload).unwrap(), &results);` |
| `crates/behavior-store/src/store/local_validation.rs:62` | `.unwrap()` |
| `crates/behavior-store/src/store/local_validation.rs:65` | `behavior_core::admit(&w.to_string()).unwrap()` |
| `crates/behavior-store/src/store/local_validation.rs:69` | `local_update(&m, m.action("set").unwrap())` |
| `crates/behavior-store/src/store/local_validation.rs:85` | `.unwrap()` |
| `crates/behavior-store/src/store/local_validation.rs:103` | `w["entities"].as_array_mut().unwrap().push(f);` |
| `crates/behavior-store/src/store/local_validation.rs:105` | `w["constraints"].as_array_mut().unwrap().push(c);` |
| `crates/behavior-store/src/store/local_validation.rs:109` | `prop_assert!(local_update(&m,m.action("set").unwrap()));` |
| `crates/behavior-store/src/store/local_validation.rs:130` | `4 => { v.as_object_mut().unwrap().remove("y"); },` |

## Unsafe and production guard boundaries

`rg -n '\bunsafe\b' crates/*/src` found no unsafe token/block/function. Every crate entrypoint declares `#![forbid(unsafe_code)]`: Core `lib.rs:3`, Verify `lib.rs:3`, Store `lib.rs:7`, Engine `lib.rs:8`, CLI `lib.rs:7` and `main.rs:2`. This is first-party absence only; dependency internals, linked Z3 executable and host Backend implementations are not proven safe by this inventory. Workspace Clippy denies `unwrap_used` and `expect_used` (`Cargo.toml:21–22`), with test-local exemptions. A raw count is neither the compiler gate result nor a reachability proof.

## Mutable lifetime candidates

- `Store<B>` (`store.rs:551–558`) owns the backend and `Mutex<Option<ValidatedSnapshot>>`; cache contents and snapshot identity span operations. `validation_cache` (`:1159`) maps poisoning to typed failure; post-commit carry uses poison recovery (`incremental/mod.rs:78`). Cache identity/alias lifetime belongs to INCREMENTAL/PERSIST.
- `InMemoryBackend` (`memory.rs`) owns genesis/head/version/history/removal/reference/command maps. Its only mutation primitives are `create` and atomic `commit` plus the command occurrence contract. PERSIST must map failure boundaries and pre-state copying.
- `commands.rs` defines immutable committed occurrence/stream values; dispatch/result handling is external host behavior, illustrated by consumer examples. It introduces no authoritative Core command-dispatch backend.
- `conformance::Interleave<B>` (`conformance.rs:147–148`) holds `RefCell<B>` plus one queued landing; this publicly exported fault/interleaving utility has runtime borrow obligations. Conformance source is in first-party scope.
- `OperationalSolver` (`trusted.rs:1977–1979`) holds request-local `Cell<bool>` cancellation; not a semantic cache.
- CLI `atomic_output` (`lib.rs:212–213`) holds process-global `AtomicUsize NEXT` for temporary file names; physical path sequencing is operational, not canonical semantic input.
- Test-only `WORK` and `REFERENCE` thread-local counters (`incremental/mod.rs:134,167`) are excluded from production; forced reference uses a drop guard restoration.
- `Builder`, evaluator frames/query caches, solver encoders and migration accumulators are request/build-local mutable owners; QUALITY will review them against role/version/state boundaries after B1.

## Crate and consumer boundaries

The supported facade is `behavior-engine` (`src/lib.rs:4`); internal crates may expose items to it without becoming supported import paths. Dependency graph: Core has no internal runtime dependency; Verify → Core; Store → Core + Verify; Engine → Core + Store + Verify; CLI runtime → Engine. CLI dev-dependencies and first-party tests can use internal crates; external consumer depends only on Engine (`consumer/Cargo.toml:12`). `api/engine-surface.txt`, actual facade exports and boundary gate are separate COORD inventory/evidence.

No generated audit report is a new semantic API. Script/source inventory also includes shell release/validation gates and two Python helpers; those first-party scripts are delivery tooling and not evaluation-time state semantics. They still receive pinned gate evidence and release-boundary review by COORD.

## Complete workspace source manifest

Line counts and hashes are custody/exclusion evidence; every listed source needs a qualified obligation or explicit helper role. No file is claimed audited solely because it is listed.

| File | Lines | Scope | SHA-256 |
| --- | --- | --- | --- |
| `crates/behavior-cli/src/lib.rs` | 1023 | production | `2b97a923b114c289d3c8c39a81ec77578fb9a38812fd412d1d7d9b6e6261fbb1` |
| `crates/behavior-cli/src/main.rs` | 6 | production | `a1b79ba742da32c22ca2fc3405c2ab31ace5fd1910441b065298d5646648eb45` |
| `crates/behavior-core/src/admit/bounds.rs` | 513 | production | `efb08835921ed257334d4b0caa00f0155de5b036af66614ea7df36ed3cb1641c` |
| `crates/behavior-core/src/admit/graph.rs` | 138 | production | `6fdfbdc2a3a5fa7e9e9a63607d5507dd1de4a0718f3eb6e21a2b2fb011edb1ac` |
| `crates/behavior-core/src/admit/hash.rs` | 707 | production | `d10f43b8f8263890b92bd546ceead336f3e6ed91dda4b752daf7b64fc385cd09` |
| `crates/behavior-core/src/admit/mod.rs` | 205 | production | `dfc37dee2bbd8584ccb125f497da8c6b44f7a12bd69f15760cb25fc1f251b284` |
| `crates/behavior-core/src/admit/resolve.rs` | 684 | production | `a76c6346ab30b9e3a3d3c8fe026525e823e25b79b71f10f321aff91836dbaf08` |
| `crates/behavior-core/src/admit/typecheck.rs` | 2280 | production | `113887b8a7bea9d6f60afca58ce91ddf333996ead1595eea687d4bc73b3c54d8` |
| `crates/behavior-core/src/builder.rs` | 1391 | production | `66924c5693f573a6640b7257a3231274a2a70edeb9253fdfb3cad3ab31b5e182` |
| `crates/behavior-core/src/canonical.rs` | 158 | production | `0ef27b5f57b46e642e392e60af32c37a57ebd60a788dbcbd9e2225fbc277f49d` |
| `crates/behavior-core/src/commands.rs` | 668 | production + inline cfg(test) module | `020496ea5abd6cc86d938998393ea47e5d0c8ce616b14e1970d740a60e36ab61` |
| `crates/behavior-core/src/decimal.rs` | 154 | production | `ad943c341bd1e4661a1ad9fa5b4a602e22c2b56477b8bb7ea03f5c465da8d32f` |
| `crates/behavior-core/src/eval.rs` | 4167 | production | `017dae6dd491c512b1fd0a2aa2eb52c4f7c55f0ebb39fdd9f9f6f58899ab9790` |
| `crates/behavior-core/src/exact.rs` | 290 | production | `881a9aeec5992cac298ec45a58f0a8d080074187f1be3eb40be04e5406e80fdd` |
| `crates/behavior-core/src/facts.rs` | 655 | production | `b4cb3563efa805b36cfc0d6ef7c19aa97c0e778c66176084c480d18d3a5b5ca7` |
| `crates/behavior-core/src/incremental_proof/delta.rs` | 61 | test-only, cfg(test) parent | `314b469a6a754ddf0fe1b9a99ff21ea4679fe134abfcbdb70b4a64fe266b727f` |
| `crates/behavior-core/src/incremental_proof/mod.rs` | 406 | test-only, cfg(test) parent | `c93618fdffeb88bb45c192e31ae2b431986f99d45864177373d2993ccc64a24d` |
| `crates/behavior-core/src/incremental_proof/operator_inventory.rs` | 84 | test-only, cfg(test) parent | `66333958fea6966182d1e1d594a4c9da3c42a28bda3a45fd152e8476d07aa0b3` |
| `crates/behavior-core/src/intent.rs` | 314 | production | `9c9ba31ea4aa2630dab5c22d2619f978dadb89d427d86cda9e8f1958fab72d5b` |
| `crates/behavior-core/src/invocation.rs` | 1398 | production | `c19c54f94e8e35dad3aa4f0839b565dbcc51367aa65ded051fa797199fd747d6` |
| `crates/behavior-core/src/lib.rs` | 65 | production | `08abd6464ef2aa21b5ab02362cbbb380d3cbccbd4e0f736e7d4c9ff6190e49d6` |
| `crates/behavior-core/src/migration/admit.rs` | 620 | production | `a3b422b71e37476f7d6e461e5f8b2c6ae6764afe0a029c2a21542ed8c8703dca` |
| `crates/behavior-core/src/migration/apply.rs` | 574 | production | `aad968ee1074749a94598e43b8cdcd745b3560486a898dc7829454d709b195ea` |
| `crates/behavior-core/src/migration/mod.rs` | 188 | production | `4a864638e4d8e0405f62911d1cfd7f70672bbccb59bb6b89159c412bee1a89ed` |
| `crates/behavior-core/src/migration/wire.rs` | 202 | production | `9ce7242251988c7222ee8d8a948462c311db7094024b2dc711de4ce1f571215e` |
| `crates/behavior-core/src/pretty.rs` | 222 | production | `3df4602f0d571327eebd8fe144cbf23753cb92a0de47f8fbdb01227b6a934aa9` |
| `crates/behavior-core/src/read.rs` | 874 | production | `905baaefafab48f659836f6f5ac6469be57d3ae0d67eb8de14dfe9d3f333916a` |
| `crates/behavior-core/src/record.rs` | 694 | production | `0510a80faeac46555d62ddaff4d70affb0918751f06f2aadb5a55e209846914e` |
| `crates/behavior-core/src/schema.rs` | 65 | production | `393e19206651fc6d34af5968bceab21109eb0cf2df1e1e09114080d7ea2c7918` |
| `crates/behavior-core/src/semantic/expr.rs` | 262 | production | `e84d6b965c20e49330ad6ef719ee86a85143901b338a6079b4387bcce1311da7` |
| `crates/behavior-core/src/semantic/mod.rs` | 17 | production | `20c8154f68fff6f4bedf6ee892714667a7f8f8f64f624fa7fa0d5f943c00e953` |
| `crates/behavior-core/src/semantic/module.rs` | 637 | production | `1676dc56729e062c123f56d43e406fe557ee2b30575d0ff55917464bd74b53e5` |
| `crates/behavior-core/src/semantic/types.rs` | 652 | production | `70158ea665cddff0775201f9a0bebef647f757e83d8cda6ca2080603e3edb0bd` |
| `crates/behavior-core/src/semantic/value.rs` | 126 | production | `0d650ff3a27551e0d4abaa8eb49cef7ef358166e2b0ce0ef8a8a202ead66c282` |
| `crates/behavior-core/src/serialize.rs` | 565 | production | `0b47f2762d0b6df8c8d90dd904b9c13c98fbeb6bc593ea3b4e67331245b1cb78` |
| `crates/behavior-core/src/testing.rs` | 145 | production | `6b1d024a87321c28e9e17cfd12d015a372a567f8eabc52d093b8094f0402b247` |
| `crates/behavior-core/src/wire.rs` | 1527 | production | `466711d6696aeecaddb2f5aed5ab0c0d6156c13d75e612f9adb08871210c849b` |
| `crates/behavior-engine/src/lib.rs` | 214 | production | `fd5011461900b4219d1b06411f0548d2bde6a183be57b457e9d93191349b7a22` |
| `crates/behavior-store/src/commands.rs` | 257 | production | `2cf1a93ea498cbeeb1f283fc6d5fd295fb04d7e39281358ddc2b64e2e14032ea` |
| `crates/behavior-store/src/conformance.rs` | 1992 | production | `549cd1f4dbd1f499a3a32e2cbfc405d35c26166247223c151c813270e391d8b5` |
| `crates/behavior-store/src/documents.rs` | 1022 | production | `87f0fa0a820b5f7fbf7f97f8dabb78f5275255f426525f3bf944662bdc706130` |
| `crates/behavior-store/src/lib.rs` | 108 | production | `7c3b212f72761ea0f8e67667c6609f415c23f971d6540e32a4ab9fccc9f6db78` |
| `crates/behavior-store/src/memory.rs` | 361 | production | `45795594327c3438e617b312f8231a6467072c99029435d97af82eaf437b9eb4` |
| `crates/behavior-store/src/muhash.rs` | 114 | production | `91e9e4716e414001aea08d56cdc64308f4ec6da6d281e9e429ca8f5ab60be344` |
| `crates/behavior-store/src/replay.rs` | 1580 | production | `e0ab34db839408a3bb43ce6ab1d70c4805329f70528e7eb5aec8502578566792` |
| `crates/behavior-store/src/store/incremental/candidate.rs` | 54 | production | `7f4968c06f2f9c7ba52ec9134264fe9238619da3964a9e42123a2452d1d9be3f` |
| `crates/behavior-store/src/store/incremental/dependency/tests.rs` | 114 | test-only, cfg(test) parent | `bf7d2a97b5fb7efce13b4433c289a2e912e4c4d4dc2d20921d33b306fbbbf231` |
| `crates/behavior-store/src/store/incremental/dependency.rs` | 101 | production | `1e8d95bcd4cc64b86a1e41f7fb039fd5ed80cff9007971d248b8e71067505b81` |
| `crates/behavior-store/src/store/incremental/mod.rs` | 193 | production + cfg(test) instrumentation | `9649638d2df521b329799e6490562a2fecf27b9f3e573d3da06ba5c0959d0528` |
| `crates/behavior-store/src/store/incremental/tests.rs` | 360 | test-only, cfg(test) parent | `188ad942f6f5374e9693c4044194c59755608fef857c24a6c4a7ea43c47a3621` |
| `crates/behavior-store/src/store/incremental/workload_tests.rs` | 221 | test-only, cfg(test) parent | `b0b981e3fcd7b09503d02cbb7f55fc10b83ba877be0471e4d0f330c4c1a9665c` |
| `crates/behavior-store/src/store/local_validation.rs` | 144 | production + inline cfg(test) module | `f91505671c224500e4873c0f7874350f89a619c24f2e5cfb723e5a9882268e9f` |
| `crates/behavior-store/src/store.rs` | 3165 | production + cfg(test) instrumentation | `4a6a517b8be331caf7fd5348fca241961145f7adec9c59cb08518334b423dca4` |
| `crates/behavior-verify/src/cache.rs` | 71 | production | `3acb3b217bacab99a110e563cd6e566bc44d49615841712245a8e247f9d5dbb4` |
| `crates/behavior-verify/src/checks.rs` | 1151 | production | `d33dc37390bab734b29d408cb40d94c6a25d200be3d133ce4946e96a681a7dde` |
| `crates/behavior-verify/src/confirm.rs` | 322 | production | `f41e4e845b6646d600f1c9bd39be2eb37633890aeb9f325b312a54f55f4a199e` |
| `crates/behavior-verify/src/encode/relational.rs` | 1062 | production | `76227c8477d40f3df2730bdea6f4aea85bcef5dd51ea2357905d8f43c069b934` |
| `crates/behavior-verify/src/encode.rs` | 1782 | production | `bb619eb62bd6c44c656be57ae4c2f98b3c9a46cb48f4fd5658e37ca56b9a83e4` |
| `crates/behavior-verify/src/governance/semantic_proof.rs` | 280 | production | `389674a1667b7be6c09291c493ae4505560bfaea9a39703900e2a56440386201` |
| `crates/behavior-verify/src/governance/trusted.rs` | 2668 | production | `044df999a6f44e7bf0bba9fac9159533f4806091d7e3accac57e47ee44ca1ace` |
| `crates/behavior-verify/src/governance.rs` | 743 | production | `fd1188e3fd9a63a90c297d41d81c723d2b1ccd47dd4150fa39fc43e792ef27fd` |
| `crates/behavior-verify/src/hashing.rs` | 93 | production | `c50ca273e58d3ae99f38ba3a20a25825e9970930a67f9ef7fab8e314a0f23901` |
| `crates/behavior-verify/src/lib.rs` | 304 | production | `b546da9bd79644d53ca55fa42f4dece477dc6980c64609088c01752f99e94a54` |
| `crates/behavior-verify/src/migration.rs` | 1017 | production | `483e2f049bdeb15c3bf51e8ffc51e07f692a31ee6d02c9f8fd057cf6aa181c35` |
| `crates/behavior-verify/src/reads.rs` | 554 | production | `00103e18e342b324275599bcf97eeba98e37f3aecd1fb72ef4e0df82a0bc9e2f` |
| `crates/behavior-verify/src/smt.rs` | 301 | production | `96e4c4b77e4d275b1c7a165e1ee9b56a79c6e88f9de4aaf5f3e4818d852f0005` |
| `crates/behavior-verify/src/solver.rs` | 351 | production | `8c0a606540bd8f9c220d2178f599f062eb1bd36dc68b12085cd251994ebeff61` |

## External test/example/consumer inventory

- `consumer/examples/command_results.rs`
- `consumer/examples/durable_commands.rs`
- `consumer/src/lib.rs`
- `consumer/tests/capabilities.rs`
- `consumer/tests/command_crash_recovery.rs`
- `consumer/tests/command_demo.rs`
- `consumer/tests/command_only.rs`
- `consumer/tests/command_replay.rs`
- `consumer/tests/command_result_example.rs`
- `consumer/tests/command_results.rs`
- `consumer/tests/command_verification.rs`
- `consumer/tests/durable_commands.rs`
- `consumer/tests/incremental_validation.rs`
- `consumer/tests/snapshot_reuse.rs`
- `consumer/tests/support/commands.rs`
- `consumer/tests/support/durable_backend.rs`
- `consumer/tests/trusted_governance.rs`
- `crates/behavior-cli/tests/cli_admit.rs`
- `crates/behavior-cli/tests/cli_authorize.rs`
- `crates/behavior-cli/tests/cli_command_replay.rs`
- `crates/behavior-cli/tests/cli_command_verification.rs`
- `crates/behavior-cli/tests/cli_commands.rs`
- `crates/behavior-cli/tests/cli_engine_info.rs`
- `crates/behavior-cli/tests/cli_eval.rs`
- `crates/behavior-cli/tests/cli_fixed_scale.rs`
- `crates/behavior-cli/tests/cli_intent.rs`
- `crates/behavior-cli/tests/cli_invoke.rs`
- `crates/behavior-cli/tests/cli_lifecycle.rs`
- `crates/behavior-cli/tests/cli_migration.rs`
- `crates/behavior-cli/tests/cli_queries.rs`
- `crates/behavior-cli/tests/cli_read.rs`
- `crates/behavior-cli/tests/cli_schema.rs`
- `crates/behavior-cli/tests/cli_trusted_governance.rs`
- `crates/behavior-cli/tests/cli_verify.rs`
- `crates/behavior-core/tests/admission.rs`
- `crates/behavior-core/tests/bounds.rs`
- `crates/behavior-core/tests/builder.rs`
- `crates/behavior-core/tests/canonical.rs`
- `crates/behavior-core/tests/canonical_tagged_hash.rs`
- `crates/behavior-core/tests/closure_table.rs`
- `crates/behavior-core/tests/command_admission.rs`
- `crates/behavior-core/tests/command_builder.rs`
- `crates/behavior-core/tests/command_evaluation.rs`
- `crates/behavior-core/tests/command_identity.rs`
- `crates/behavior-core/tests/command_only_admission.rs`
- `crates/behavior-core/tests/command_records.rs`
- `crates/behavior-core/tests/command_replay.rs`
- `crates/behavior-core/tests/common.rs`
- `crates/behavior-core/tests/compat_003.rs`
- `crates/behavior-core/tests/constraints.rs`
- `crates/behavior-core/tests/decimal.rs`
- `crates/behavior-core/tests/decimal_exact.rs`
- `crates/behavior-core/tests/evaluate.rs`
- `crates/behavior-core/tests/evaluate_002.rs`
- `crates/behavior-core/tests/evaluate_003.rs`
- `crates/behavior-core/tests/evaluate_004.rs`
- `crates/behavior-core/tests/exact.rs`
- `crates/behavior-core/tests/exact_bound_fuzz.rs`
- `crates/behavior-core/tests/facts.rs`
- `crates/behavior-core/tests/fixed_scale_admission.rs`
- `crates/behavior-core/tests/hash_properties.rs`
- `crates/behavior-core/tests/hash_vectors.rs`
- `crates/behavior-core/tests/intent.rs`
- `crates/behavior-core/tests/invocation_conformance.rs`
- `crates/behavior-core/tests/invocation_documents.rs`
- `crates/behavior-core/tests/invocation_intents.rs`
- `crates/behavior-core/tests/invocation_plain.rs`
- `crates/behavior-core/tests/invocation_replay.rs`
- `crates/behavior-core/tests/invocation_resolve.rs`
- `crates/behavior-core/tests/invocation_schema.rs`
- `crates/behavior-core/tests/ir_0_4.rs`
- `crates/behavior-core/tests/ir_0_5.rs`
- `crates/behavior-core/tests/ir_0_6.rs`
- `crates/behavior-core/tests/legacy_intents_frozen.rs`
- `crates/behavior-core/tests/lifecycle_create.rs`
- `crates/behavior-core/tests/lifecycle_remove.rs`
- `crates/behavior-core/tests/migration_admission.rs`
- `crates/behavior-core/tests/migration_apply.rs`
- `crates/behavior-core/tests/module_invariants.rs`
- `crates/behavior-core/tests/observed_reads.rs`
- `crates/behavior-core/tests/perf.rs`
- `crates/behavior-core/tests/pretty_roundtrip.rs`
- `crates/behavior-core/tests/queries.rs`
- `crates/behavior-core/tests/read_admission.rs`
- `crates/behavior-core/tests/read_eval.rs`
- `crates/behavior-core/tests/read_goldens.rs`
- `crates/behavior-core/tests/read_intents.rs`
- `crates/behavior-core/tests/read_record.rs`
- `crates/behavior-core/tests/read_replay.rs`
- `crates/behavior-core/tests/read_replay_integrity.rs`
- `crates/behavior-core/tests/read_soundness.rs`
- `crates/behavior-core/tests/read_wire.rs`
- `crates/behavior-core/tests/record_validation.rs`
- `crates/behavior-core/tests/references.rs`
- `crates/behavior-core/tests/replay.rs`
- `crates/behavior-core/tests/result_state_queries.rs`
- `crates/behavior-core/tests/schema.rs`
- `crates/behavior-core/tests/serialize.rs`
- `crates/behavior-core/tests/support/commands.rs`
- `crates/behavior-core/tests/support/read_soundness.rs`
- `crates/behavior-core/tests/typing_cases.rs`
- `crates/behavior-core/tests/versions.rs`
- `crates/behavior-store/examples/history.rs`
- `crates/behavior-store/examples/lifecycle_history.rs`
- `crates/behavior-store/examples/migration_history.rs`
- `crates/behavior-store/examples/query_history.rs`
- `crates/behavior-store/tests/aggregates.rs`
- `crates/behavior-store/tests/behavior_validity.rs`
- `crates/behavior-store/tests/command_governance.rs`
- `crates/behavior-store/tests/command_occurrences.rs`
- `crates/behavior-store/tests/command_only.rs`
- `crates/behavior-store/tests/command_perf.rs`
- `crates/behavior-store/tests/command_replay.rs`
- `crates/behavior-store/tests/command_stream.rs`
- `crates/behavior-store/tests/commit.rs`
- `crates/behavior-store/tests/common.rs`
- `crates/behavior-store/tests/concurrency_props.rs`
- `crates/behavior-store/tests/conformance.rs`
- `crates/behavior-store/tests/documents.rs`
- `crates/behavior-store/tests/durable_commands.rs`
- `crates/behavior-store/tests/evidence.rs`
- `crates/behavior-store/tests/history_integrity.rs`
- `crates/behavior-store/tests/incremental_validation.rs`
- `crates/behavior-store/tests/invocation_history.rs`
- `crates/behavior-store/tests/invocation_perf.rs`
- `crates/behavior-store/tests/invocation_store.rs`
- `crates/behavior-store/tests/lifecycle_create.rs`
- `crates/behavior-store/tests/lifecycle_perf.rs`
- `crates/behavior-store/tests/lifecycle_props.rs`
- `crates/behavior-store/tests/lifecycle_remove.rs`
- `crates/behavior-store/tests/lifecycle_replay.rs`
- `crates/behavior-store/tests/migration_context.rs`
- `crates/behavior-store/tests/migration_evidence.rs`
- `crates/behavior-store/tests/migration_perf.rs`
- `crates/behavior-store/tests/migration_replay.rs`
- `crates/behavior-store/tests/migration_store.rs`
- `crates/behavior-store/tests/muhash.rs`
- `crates/behavior-store/tests/perf.rs`
- `crates/behavior-store/tests/queries.rs`
- `crates/behavior-store/tests/query_order_props.rs`
- `crates/behavior-store/tests/query_perf.rs`
- `crates/behavior-store/tests/query_replay.rs`
- `crates/behavior-store/tests/read_history_prop.rs`
- `crates/behavior-store/tests/read_perf.rs`
- `crates/behavior-store/tests/read_schema.rs`
- `crates/behavior-store/tests/read_soundness.rs`
- `crates/behavior-store/tests/read_store.rs`
- `crates/behavior-store/tests/read_store_intent.rs`
- `crates/behavior-store/tests/read_store_past.rs`
- `crates/behavior-store/tests/read_store_replay.rs`
- `crates/behavior-store/tests/references.rs`
- `crates/behavior-store/tests/replay.rs`
- `crates/behavior-store/tests/result_state_props.rs`
- `crates/behavior-store/tests/schema_binding.rs`
- `crates/behavior-store/tests/schema_binding_props.rs`
- `crates/behavior-store/tests/snapshot_reuse.rs`
- `crates/behavior-store/tests/support/command_history.rs`
- `crates/behavior-store/tests/support/history_backend.rs`
- `crates/behavior-store/tests/trusted_governance.rs`
- `crates/behavior-verify/tests/cache.rs`
- `crates/behavior-verify/tests/closure.rs`
- `crates/behavior-verify/tests/command_safety.rs`
- `crates/behavior-verify/tests/common.rs`
- `crates/behavior-verify/tests/encode.rs`
- `crates/behavior-verify/tests/errors_and_posts.rs`
- `crates/behavior-verify/tests/fixed_scale.rs`
- `crates/behavior-verify/tests/governance.rs`
- `crates/behavior-verify/tests/hashing.rs`
- `crates/behavior-verify/tests/invocation_bindings.rs`
- `crates/behavior-verify/tests/lifecycle.rs`
- `crates/behavior-verify/tests/migration.rs`
- `crates/behavior-verify/tests/perf.rs`
- `crates/behavior-verify/tests/preservation.rs`
- `crates/behavior-verify/tests/queries.rs`
- `crates/behavior-verify/tests/read_soundness.rs`
- `crates/behavior-verify/tests/reads.rs`
- `crates/behavior-verify/tests/smt.rs`
- `crates/behavior-verify/tests/solver.rs`
- `crates/behavior-verify/tests/soundness_regressions.rs`
- `crates/behavior-verify/tests/support/trusted.rs`
- `crates/behavior-verify/tests/trusted_governance.rs`
- `crates/behavior-verify/tests/trusted_verification.rs`
- `crates/behavior-verify/tests/warnings.rs`
