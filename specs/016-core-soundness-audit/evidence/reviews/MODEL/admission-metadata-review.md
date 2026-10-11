# R-MODEL-002 — independent review of advertised admission metadata

Reviewer: MODEL, different person from COORD finding author. Finding:
F-COORD-011. Exact baseline: `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Disposition: **accepted**,
with the precise diagnostic location below supplied to the author.

## Independently checked proposition and evidence

`format_versions().accepted_wire_ir` is expressly a current acceptance list,
distinct from the intentionally historical `wire_ir` compatibility list. Source
`crates/behavior-core/src/lib.rs:58` includes constants 0.1–0.8. The decoder's
closed selection at `wire.rs:1016–1022` admits 0.4–0.8 and rejects any other string.
The old rounded versions are deliberately refused to avoid reinterpretation;
changing the metadata must not silently re-admit them.

The error text is independently stale: its exact formatting location is
`crates/behavior-core/src/admit/mod.rs:105–118`, which enumerates only 0.4–0.7.
`wire.rs` generates UnsupportedVersion but does not format that diagnostic.
`docs/versioning.md:152` repeats the false current acceptance list. Core
`tests/versions.rs:59` and CLI `tests/cli_engine_info.rs:85` test the advertised
array, without checking that each advertisement negotiates successfully.

I inspected the actual retained E-COORD-011 run metadata, all four stdout/error
records and the three input documents. A read-only independent digest check
matched every retained artifact to its recorded SHA256, matched the unchanged
invoice fixture digest, and confirmed that each input differs from the fixture
only by `ir_version`. The version refusal happens before module-body admission,
so these inputs suffice to falsify the advertised acceptance proposition without
assuming that modern fixture bodies belong to historical rounded profiles.

The retained run has actual engine-info exit 0 with 0.1–0.8, and actual admit
exit 2 / UNSUPPORTED_IR_VERSION for each of 0.1, 0.2 and 0.3. This reviewer did
not rerun the binary or compile another checkout; the independently verified
immutable parent-run evidence, rather than an imagined execution, supports this
assessment. Canonical workspace gates are separately pending and cannot turn
these two contradictory observable facts into equivalence.

## Classification and limits

**S5 / Medium** is justified: false capability metadata can cause consumer
negotiation to select an unsupported document version. No legal false PROVEN
result, historical arithmetic reinterpretation, hash ambiguity or replay defect
has been demonstrated by this reproduction. Such implications are not promoted
from the misleading public metadata alone.

The smallest proposed correction is a shared current decoder-acceptance source
for metadata and diagnostics, with negotiation/refusal coverage, preserving the
separate historical list. It changes public metadata/diagnostics, so consumer and
release consequences require assessment before any implementation. No source,
test, hash, document or dependency correction was made by this review.

Evidence: [E-COORD-011 run](../../runs/COORD/admission-metadata/run.json) and
[finding fragment](../../fragments/COORD/admission-metadata-finding.md).
