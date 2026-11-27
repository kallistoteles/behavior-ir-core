# Whole-view extraction: frozen-source packaging defect

The new `views-canonical` scope selects the entire real `crate::views` module
and `crate::reference::state_facts` in one generated source/type context.
Its two selection controls and the 90 existing extraction controls passed.
No native correspondence or new timing sample is established by that result.

## Actual attempt 582

Source r9606 contains 8,117 references. Both source freeze and declaration
closed with exit 0, unchanged source bytes, empty process trees and matching
storage inventories. The extraction used actual Native581 worker files,
codec source contract006 and a fresh analysis target.

The real compiler reached the worker and failed with E0583 for `session` and
`session_resources`. Extraction exit was 101, translation did not start,
and the outer child exited 1. The attempt closed without a resource stop or
source validation error; its process tree/group were empty and storage
inventories agreed. Checkpoint SHA-256: d14eb48c27e16ee6a5a7412b1dfc24e05a6c20f4812ab8ecadd179a202d4e86b.

The problem was an incomplete predeclared file list. Native581's worker has
35 source files, but its frozen source subject lists only 33 of them. It also
omits eight native Rust test modules and two Python test files. The builder
copied the real source directories; the extractor copied only frozen entries.
Thus it could not reproduce the actual worker module tree. The production
Views and reference source bytes themselves match Native581.

Native581 still provides its actual finite test/output observations. Its old
source declaration cannot establish complete compiled-source provenance.
Its previously documented oversized resource receipt also remains inadmissible
to the bounded control reader. Neither limitation is waived.

## Reduced reproducer and correction

A three-file fixture (`lib.rs`, `views.rs`, `session.rs`) with a two-file frozen
subject reproduces the omission through the actual extraction selection seam.
The original selection omitted `session.rs`; the first complete-freeze
rejection regression failed with `ValueError not raised` in 9 ms.

`require_frozen_worker_sources` now inventories actual Rust files and embedded
expected fixtures and requires each one's exact identity and frozen bytes.
Native building applies it before materialization, including original-oracle
Rust sources. Extraction applies it before creating the analysis source tree.
An incomplete source subject is rejected rather than filled from live files.

Four controls now pass, including the real retained Native581 rejection,
a complete positive source subject, changed source/snapshot rejection and
an omitted original-oracle module. Three existing build-input controls and
all 90 extraction controls also pass under closed source captures.

An initial candidate used retained materialization tables to supply omitted
files. It was not integrated into extraction or accepted as native evidence:
those tables were not individually bound in Native581's sealed inputs.
The final correction requires a fresh complete predeclared source subject.
A bootstrap import-order failure before test execution is retained separately;
the corrected bootstrap's actual tests pass. No historical file or receipt
was rewritten.

## Remaining work

Build the fully frozen native source, then repeat the actual whole-view
extraction and complete its source-to-model bridges. B01–B10, complete B/C
composition, lifecycle measurements and independent reproduction remain open.
There are still 65/153 checked tasks and no accepted timing, diagnostic or
reproduction observations. The feature is unfinished.

## Closed storage maintenance

The remaining closed Q576 compiler payloads have been reclaimed losslessly.
Maintenance004 closed with actual exit0, no stop, unchanged captured sources,
empty process tree/group and matching final storage inventories. It removed
5,242 files / 732,629,901 unique bytes, using the previously verified archive
and closed003 delta; no new archive was needed. The old parent registration
and the 1,270-byte root metadata file remain unchanged. New registrations were
made only for the remaining child directories after complete archive coverage
and direct-source-use checks.

Maintenance002 failed before disposal because its requested512MiB exceeded
the eligible large single-link files. Maintenance003 also failed before disposal
because the parent registration already described another retained-reference
subject. Both failures, their receipts and verified deltas are preserved.
No shared SDK, native581 cache or historical033 artifact was cleaned.
The post-maintenance cache total is37,300,281,194B under the unchanged
38,654,705,664B cap, leaving room for the fully frozen native rebuild.
