# Core036 revision 2: implementation status

**Unfinished.** This branch preserves work in progress; it is not a completed
native correspondence proof, a production integration, or a final architecture
verdict. The revision-1 report does not establish revision-2 completion.

The authoritative requirements and remaining work are in [spec.md](spec.md),
[plan.md](plan.md), [tasks.md](tasks.md) and [progress.md](progress.md).
Currently 57 of 153 task markers are complete. There are **zero accepted**
revision-2 timing, diagnostic and reproduction samples out of the required
141, 47 and 26 respectively.

## Latest checked results

- Actual479 completed 149 independently specified candidate-model roots, fresh
  selected-root kernel checking, 256 default controls and 29 genuine rejection
  controls. This does not establish the Rust/library interpretations or B01–B10.
- The prospective native-completion profile raises only the cache allocation
  from 22 to 24 GiB. The 36 GiB combined limit, temporary/evidence limits,
  CPU/memory/time bounds and physical free-space floors remain unchanged.
  Five profile tests pass; historical allocations and failures remain retained.
- Four compile-binding tests check exact worker units, JSON representation
  features, implicit Cargo configuration and actual compiler-invocation matching.
  A fresh native build must still validate these checks against genuine outputs.
- Actual480 stopped with `LiveDirectoryWatchLost` and a final storage-inventory
  disagreement, before substantive native testing. It is retained as a closed,
  source-valid failed attempt, not accepted evidence.
- A real filesystem regression reproduced that failure: a deleted compiler
  scratch directory can be recreated with the same inode before events drain.
  The correction requires the kernel's `DELETE_SELF` event, installs a fresh
  watch and rescans. All 18 storage-observer tests pass, including genuine live
  watch loss, registered-root deletion and queue-overflow rejection controls.
- The corrective native subject r9504 also supplies independently registered
  future-evidence roots to fixtures and executable comparisons, records
  materialized source hashes before/after, and preserves partial build sources
  and logs when reusing a closed disposable compiler cache. Actual481 passed
  **all 77 native tests**, formatting and Clippy with the worker feature enabled.
  Its full/incremental storage inventories agree, sources are unchanged and all
  processes closed. It failed later in a build-control assertion: Cargo emits
  separate host and target serde_json units; the checker wrongly required one
  unit overall. No completed native build or correspondence proof is inferred.
- The corrected selector separates actual host/target artifact paths and keeps
  both units. Seven compile/source-audit guards pass. Actual482 is declared to
  verify the unchanged r9504 compiled Rust subject and all 77 closed test
  receipts, finish the worker build, check real feature mutations and compiler
  invocations, and perform independent original replay/full comparisons.
  **Actual482 succeeded**: all 77 prior test receipts and unchanged compiled
  sources were verified; the three actual target units matched the compiler
  invocations; both independent original replays and **12 full original
  observation comparisons** passed. Source validation, process closure and the
  independent full/incremental storage check passed. The compiler/executable
  binding is strengthened; native semantic correspondence remains unestablished.
- A new source review identifies a first nonallocating library packet and the
  still-open allocation/panic/outcome boundary. It introduces no allocator
  success assumption or new native admission.
- Actual484 successfully extracts and translates the real JSON `Value::as_str`
  body after actual483 exposed an unsupported inherent-method name pattern.
  All six JSON constructors remain. Its call to Rust's String dereference is
  now the next explicit dependency; extraction success does not admit that
  primitive or establish Core correspondence.
- Actual485 exposes that String dereference's inlined pointer operations are
  unsupported by the translator. It fails honestly; the partial generated
  `sorry` body is retained and never accepted. The proposed generic immutable
  byte-view interpretation remains separate from the actual JSON wrapper.
- Actual486 succeeds with the complete Number/N definitions (U64, I64 and F64)
  and byte-identical generated function code to actual484. Thirteen source and
  binding guards pass, including both pinned actual486 multiline String
  declarations and rejection of altered signatures, missing/duplicate bodies
  and substituted block hashes. At that checkpoint the standalone
  borrow/wrapper proofs still awaited checking; no Core proof was promoted.
- Actual490 completes the standalone byte-view and actual generated JSON
  accessor proof: **17 independently specified roots** pass exact type and
  foundation-only dependency checks, followed by fresh selected-root kernel
  replay. Generated486 Types/Funs remain unchanged. Actual487–489 retain
  their diagnosed type/proof failures. This is a checked leaf under its
  declared interpretation; independent byte-carrier anchors, actual rejection
  controls and full native/runtime/Core composition remain open.

- Actual491 adds four independent byte-carrier anchors: **21 roots** pass exact
  type, transitive foundation-only audit and fresh selected-root kernel replay.
- Actual492 creates ordinary isolated copies of the complete serde_json crate
  and worker. Locked/offline Cargo metadata and the exact lock delta establish
  the intended owner substitution without changing versions or JSON features.
- Actual493 stops on a storage-observer race during cold compilation. A genuine
  filesystem regression reproduces it. Early registration of a newly watched
  directory fixes normal deletion during listing; **20 storage tests** pass,
  retaining rejection of real watch loss, root deletion and queue overflow.
- Actual494 completes cold extraction and translation from the isolated owner,
  then checks the unchanged **21 roots** and fresh selected-root kernel. Sources
  are unchanged, all descendants close and independent storage totals agree.
- Actual495–497 retain diagnosed control/schema/diagnostic failures. The owned
  accessor's actual Null branch changes to `Some("")`; cold Rust extraction
  reflects the change. Both wrong-owner and old-output replay controls reject.
  Actual497's independent two-root witness passes fresh kernel, but its outer
  attempt fails because the parser expected a different Lean diagnostic form.
- **Actual498 succeeds completely for this source canary.** It explicitly reuses
  the closed actual497 Rust extraction, performs fresh normalization/translation,
  compiles every witness module and independently checks both root types and
  their transitive foundation-only dependencies in a fresh kernel. The unchanged
  full wrapper and isolated original Null theorem both fail for the actual
  changed semantics. Final source/process/storage checks pass. Old497 stays
  failed; no new Rust execution is attributed to498.
- **38 source/copy/graph/scope/project/provenance/recheck controls and four full
  capacity controls pass.** The actual r9523 metadata evidence-quota stop remains
  retained. Prospective profile003 allocates24GiB cache,4GiB temporary and8GiB
  evidence within the unchanged36GiB combined limit and all unchanged profile
  CPU/memory/wall/floor bounds. The new metadata wrapper explicitly budgets240s
  locally; native attempt limits stay unchanged. No historical record is deleted.
- Work on the actual generated `state_fact_row` now supplies eight reached
  operation bindings and four separate full-dictionary completions. The complete
  types, all providers and unchanged generated caller compile. Actual499–504
  retain their genuine missing-provider, parser, visibility and realization
  failures; no completed row proof or native interpretation is inferred.
- Actual504 also exposed incorrect use of `Expr.abstract` on a closed dictionary
  expression. The prospective repair replaces that expression with a fresh free
  variable before abstraction. The independent auditor instead uses an explicit
  binder-depth traversal and must reject a kernel-registered copy of the actual
  ignored-argument regression. **48 source controls pass** after a retained red;
  actual505 compiles all eight real-abstraction declarations, then stops on an
  auditor identifier. **Actual506 succeeds** after that correction: all eight
  exact root types, transitive foundation checks, independent structural audit,
  actual kernel-registered ignored-argument rejection and fresh selected-root
  kernel replay pass. Source/process/storage closure passes. This is a model
  contextual-irrelevance result; native/runtime admission remains unestablished.
- Full row specification/bridge/proof candidates and a primary-source review
  cover exact results, ID-first errors, complete Parent/Child payloads and
  unrelated-key framing. **51 source controls pass** after recorded missing-API
  reds. The specification body is independently hash-pinned; original generated
  files and the ten-module basis are conserved. **Actual512 succeeds** on
  r9539: all thirteen project modules, eleven independently specified root
  types, transitive foundation-only audit, real abstraction rejection control,
  export and fresh selected-root kernel replay pass. The exact row result,
  ID-first errors and unrelated-key frame are established under the declared
  generic operations. Source validation, process closure and independent
  storage reconciliation pass. Native JSON/map/runtime correspondence and
  B01–B10 remain open; no timing or reproduction slot is promoted.

## Remaining delivery

Native dependency/runtime/source interpretation and B01–B10 composition remain
open. Required current quality checks, instrumentation, B/C implementation and
proofs, lifecycle measurements, all full original comparisons and independent
reproduction must finish before a final result can be reported. Helper proofs,
finite tests and provenance records cannot promote these obligations.

## Storage and publication

User-authorized cleanup preserved closed compilation intermediates in verified
lossless archives before removing only those intermediates. Sources, raw proof
exports, historical failures and unrelated033 payloads remain intact. New large
evidence is written to the separately registered root on the spacious root
filesystem; existing sealed evidence is not relocated.

Actual513/r9540 verifies and archives all 1,800 files/modes in the exact closed
canary targets494/496/497 before owned disposal. It retains 156,302,980B in
archives in place of 622,491,038B of compilation files, freeing 466,188,058B
net. All original phase/source/proof artifacts remain unchanged. Final source,
process and independent full/incremental storage checks pass; cache usage is
25,259,291,307B under the unchanged24GiB cap. The next typed-seed packet has
four extraction guards and52 shared source guards passing; its actual fresh
extraction and dependency refinements are still pending.

Actual514/r9541 subsequently completes that fresh cold extraction/translation:
both selected roots, text and Value.as_str bodies are present; all numeric
variants and versions metadata are conserved. Source/process/storage closure
passes. The next conditional model context conserves both generated modules
and binds all17 external blocks, with eight source/context guards passing.
Four independently specified root candidates await fresh kernel checking;
typed-row exactness, native/library/runtime relations and feature completion
remain open.

Actual515 retains a source-valid, closed duplicate-name failure in the new
model. Actual516/r9543 corrects that cause and succeeds: all ten modules,
four independent root types, transitive foundation-only audit, export and
fresh selected-root kernel replay pass, followed by source/process/storage
closure. These establish conditional text/metadata/public-error results.
The complete typed-row candidate is next; native/runtime and B01–B10 stay open.

Actual517/518 retain diagnosed proof-technique failures. Actual519/r9546
successfully checks the full typed-row candidate: ten modules, five exact
independent root types, transitive foundation-only audit, export and fresh
selected-root kernel, followed by source/process/storage closure. The complete
inner result and all returned maps match the unchanged independent spec under
the declared model/domain. Native libraries/runtime, full seeding/canonical
composition and B01–B10 remain unfinished; accepted sample counts stay zero.

This source publication excludes private SDKs, binaries, compiler caches, raw
evidence directories and bootstrap-run snapshots. References to those artifacts
remain provenance references; this checkout alone is not the final independently
reproduced evidence export.

Actual521 checks the conserved joint20-module/16-root context. Actual525/r9553
then checks22 modules and17 independently specified roots, including exact
commutation of both generated row functions through explicit projections on
successful inputs. Exact-type/foundation/audit/export/fresh-kernel and complete
source/process/storage closure pass. This remains a conditional generated model;
native libraries/runtime, full folds and B01–B10 are not established.

Actual523 preserves601 current compiler-cache files/modes before owned disposal,
freeing155,353,996B net in addition to513's466,188,058B. A checked prospective
128MiB quota transfer reduces cache and increases evidence while preserving the
36GiB total and all execution/floor limits. Actual526 additionally preserves583 partial compiler-cache files, permissions
and directory metadata, reclaiming119,413,551B net; full source/process/storage
closure passes. Whole current Q, all required measurements and independent
reproduction remain unfinished.
