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

This source publication excludes private SDKs, binaries, compiler caches, raw
evidence directories and bootstrap-run snapshots. References to those artifacts
remain provenance references; this checkout alone is not the final independently
reproduced evidence export.
