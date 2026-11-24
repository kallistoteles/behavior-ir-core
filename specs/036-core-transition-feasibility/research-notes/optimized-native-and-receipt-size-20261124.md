# Matched optimized native builds and bounded resource receipts

The actual Native581/r9605 run passed all 123 selected native tests and all 12 complete original-byte comparisons. The independent original oracle and R/GV/B were compiled with optimization level 3, no debug information, debug assertions enabled and overflow checks enabled. Their actual Cargo artifacts, compiler invocations and five target dependency profiles were checked. This is finite conformance and build provenance. General native Rust/Lean correspondence remains unestablished.

Native581 cannot supply an accepted resource prerequisite: its complete resource receipt is 34,672,749 bytes, exceeding the existing 33,554,432-byte reader limit. The driver exited 0, source validation succeeded and the closed-artifact seal verifies, but the bounded consumer rejects the receipt. The original sealed attempt and its bytes remain unchanged. No primary timing, diagnostic matrix or reproduction sample has been accepted from it.

## Actual build and conformance evidence

[native_build.py](../../../experiments/transition-study036/native_build.py) now supports one explicitly selected, fixed optimized profile alongside the existing development admission. The optimized checkers in [native_optimized_binding_v2.py](../../../experiments/transition-study036/native_optimized_binding_v2.py) require actual role features, source paths, fresh binary artifacts, exact checked profiles, target CPU and compiler flags. Both the oracle and worker dependency units are checked. Conflicting flag overrides are rejected; repeated identical Cargo/profile flags are allowed.

The genuine missing-worker-feature build exited 101 as expected. The genuine `serde_json/arbitrary_precision` mutant compiled, then was rejected as `NativeCompileJsonRepresentation`. The correctly configured retained binaries then executed both original workloads. R, GV and B each matched all four original observation files, including JSON coding and the final newline.

The initial Native581 helper configuration used a development `.v1` label. Current helper configuration/bindings use `.v2`, and a real red/green control rejects the older label. Native581 retains its original captured labels. Current format validation and the later receipt-writer correction are separate subjects; the historical run is not relabelled as their execution.

Native581 anchors under the registered `future_evidence` root:

| Artifact | Bytes | SHA-256 |
| --- | ---: | --- |
| `attempts/a0581/checkpoint.json` | 1,563 | `9f0d5f38fc2c485e20dafa201b220cd377eb27c9e3f93256cfb2c5b25f95c0e4` |
| `attempts/a0581/child/receipt.json` | 34,672,749 | `9389baf1f234f2ae6743442a216b50077fd850352f2da0defe900a91b540b3be` |

The private native build result is 5,182 bytes, SHA-256 `8db79e0fe78491bd9fcad1e8fee8083674819f1f5dd310cce22b36dce36c4bcf`. The oversized receipt was hashed as bytes and rejected by the bounded reader; it was not parsed with a larger limit.

## Receipt failure and correction

The real `write_once → ArtifactRef → bounded read` seam reproduced the failure. A minimized nine-sample fixture occupied 2,233 bytes with indentation, exceeding its 2,048-byte test limit. The same complete values occupied 1,287 bytes in compact JSON. Removing one sample made the original writer fit. A differential probe showed unchanged original bytes and complete compact-read equality, isolating whitespace expansion rather than concurrent mutation or excessive semantic payload.

[artifact_io.py](../../../experiments/transition-study036/artifact_io.py) now emits compact JSON for new structured `write_once` values, preserving sorted keys, Unicode, nonfinite rejection and the final newline. Already encoded byte artifacts are passed through unchanged. Existing sealed records are not rewritten, moved or rebound. Reader limits are unchanged. `RootRegistry.write` still performs its existing bounded encoding before passing bytes to `write_once`.

[The regression tests](../../../experiments/transition-study036/tests/v2/test_receipt_wire_size.py) passed, together with the existing five artifact-I/O, ten artifact-store, four recorder and three receipt-admission controls. The four optimized-binding controls also pass, including the real format-label rejection. Temporary debug probes were removed from current source; their immutable development captures are retained.

The first full-capacity launch stopped before test execution at `CombinedGrowthLimit` in the narrow unit launcher. Its 4 GiB combined accounting had only about 22.6 MB remaining and also bound a 31.7 MB historical input. That stop is retained. The dedicated successor used the already declared whole-work native profile and a prospectively declared child clock, without changing the stopped attempt or reader limit.

[The full-size replay](../../../experiments/transition-study036/tests/v2/test_receipt_wire_capacity.py) used an admissibly read historical receipt and extended its samples into an explicitly synthetic fixture. It preserves every field and type through an exact re-encoding comparison:

| Quantity | Observed |
| --- | ---: |
| Complete synthetic samples | 21,210 |
| Original indented wire | 34,834,572 bytes |
| Actual corrected wire | 21,316,852 bytes |
| Unchanged bounded-reader limit | 33,554,432 bytes |

The dedicated capacity run closed with actual exit 0, no stop, unchanged sources, empty process tree/group and agreeing final storage accounting. Its new actual resource receipt is 207,937 bytes, SHA-256 `14598ed25ff918e5e750e509d2dd0e496b6138a5cc167e18a7a419d3964823bb`. This capacity fixture is not native or performance evidence and does not repair Native581 retrospectively.

## Remaining work

The current feature remains at 65/153 tasks, with zero accepted matrix samples and zero reproductions. Full B01–B10 native correspondence, complete required endpoints, B/C, lifecycle experiments and independent reproduction remain open. In particular, current hot operation-pair clocks exclude fresh raw acquisition; they must not be presented as the complete required fresh-acquisition endpoint. The source-bound proof and endpoint work continues before accepted measurements or feature completion.
