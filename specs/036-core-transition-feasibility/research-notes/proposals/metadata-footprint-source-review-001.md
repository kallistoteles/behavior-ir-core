# Metadata snapshot-alias accounting: static review

Status: **new, unselected research note**. Reviewed only
`metadata_footprint_v2.py`, `frozen_source_reuse_v2.py`,
`tests/v2/test_metadata_footprint.py`, and bootstrap metadata wrappers16/17.
No test, build, private snapshot/evidence read, discovery, retry, freeze or
protected-artifact access was performed. Only this new note was written. The
reported failed freeze and red/green observations are task-provided context,
not independently inspected results.

**Finding:** no definite blocker was found for wrapper17's declared incremental
metadata scope. The counter exempts inode identities verified before launch,
counts every other regular-file inode once across the complete root list, and
revalidates exemptions after execution. This addresses the reported old-snapshot
alias charge without raising a cap, resetting the baseline or removing files.
It does not establish a successful metadata run or global resource acceptance.

## Counter and exemption correctness

- `verified_snapshot_inodes` permits only work-root numeric source-snapshot paths,
  rejects protected names before verification, verifies reference bytes through
  the registry, requires a regular file/expected size, and records device+inode
  with size (`experiments/transition-study036/metadata_footprint_v2.py:14–38`).
  Thus equality of content alone does not exempt a fresh copied inode. The
  exemption is for already existing physical identities, not a hash-based credit
  granted to arbitrary new files.
- `materialized_bytes` validates the exemption dictionary, keeps one `seen` set
  across all roots, and counts nonexempt regular-file sizes once
  (`metadata_footprint_v2.py:41–84`). Repeated/overlapping roots cannot double-charge
  the same file inode. Hardlinks to a verified old inode contribute no new
  apparent file bytes; new manifests, copies and receipts do. Root absence is
  allowed for not-yet-created outputs. Encountered symlinks, special nodes,
  protected names, excessive nodes and changed exempt size refuse instead of
  silently disappearing from the count (`:54–80`). This measures apparent
  regular-file bytes, not allocated blocks, directory/link metadata or I/O.
- The callback does not hash every exempt alias on every sample; it checks size.
  Wrapper17 compensates with full reference/hash verification before and after
  the command, using the same captured `frozen_anchors` mapping
  (`inputs/v2/bootstrap-metadata-v17.py:50–53,75–83`). Same-size old-snapshot
  changes therefore cannot support an accepted unchanged-source result merely
  by retaining the old inode. The live logical sources and retained bootstrap
  snapshots are also compared afterward (`:80–83`). Transient mutate-and-restore
  events are not an atomic snapshot guarantee; the scope depends on the stated
  controlled-writer/immutable-input boundary.

## Scope and refusal limits

`FrozenSourceWriter.anchors` represents one latest completed work subject and
deduplicates refs by size/hash; it is not an inventory of every historical
snapshot (`frozen_source_reuse_v2.py:16–62`). The wrapper verifies **all anchors
it actually receives**. An old inode absent from that set is charged, not silently
exempted, so this limitation is conservative for the counter. Missing/incomplete
subject manifests are skipped by the owner (`:24–28`), while malformed completed
subjects refuse (`:29–58`). Do not describe this as exempting all historical
metadata or references from incomplete freezes.

The counter itself checks supplied root paths only at their final component
and during descendant traversal (`metadata_footprint_v2.py:54–75`); it does not
validate symlink ancestors above a supplied root. Root construction must therefore
remain inside the declared canonical/registered W/P scopes. If the helper is used
with less constrained roots later, validate them through the registry first.
This is a scope precondition, not evidence of an ancestor link in the actual
work directories. The task supplies these fixed P/work roots as existing canonical
registered roots; this review retains that constrained scope and does not inspect
them. Repeated directory traversal also counts toward the 100,000-node
bound even when file inodes are deduplicated, yielding a conservative refusal on
very large overlapping inputs (`:53,65–67`).

Post-run equality currently compares the union of inode identities and sizes
returned by verification (`wrapper17:79`), while verification separately checks
each original ref's bytes. That is the relevant exclusion-set invariant. It
does not record a per-reference path-to-inode mapping; if a stronger literal
per-path inode-identity claim is intended, retain that mapping as well rather
than describe union equality as such a guarantee.

## Wrapper accounting and tests

Wrapper16 adds separate target/bootstrap/journal footprints without an old-source
inode exclusion set (`bootstrap-metadata-v16.py:73–75`). Wrapper17 instead invokes
the new counter once over bootstrap, metadata target, journal-sources and journal
file (`bootstrap-metadata-v17.py:75–77`). It retains baseline a0455, the existing
below-4-GiB baseline validity check, the full logical source cache charge, temporary
baseline plus fresh TMPDIR footprint, and the 60-second run/declaration limit
(`wrapper16:27–36,70–76`; `wrapper17:27–36,72–78`). It records the exact exclusion
scope in its declaration (`wrapper17:72`). No cap increase, deletion or prior
record rewrite appears in these reviewed sources. The separate global NATIVE
controller was not inspected here; the helper/declaration explicitly leave its
full-root accounting unchanged (`metadata_footprint_v2.py:1–6`; `wrapper17:72`).

The three test methods exercise old hardlink exclusion, new metadata charge,
duplicate-root deduplication, changed exempt size, symlink/FIFO refusals, owned
snapshot refs, same-size full-byte revalidation, and protected/wrong-root refusal
before the fake verifier (`tests/v2/test_metadata_footprint.py:9–89`). The
synthetic setups and expected exception strings match the inspected helper;
no definite fixture-level problem was found. They do not execute wrapper17 or
establish resource headroom, successful freeze/declare, a new manifest or an
actual later attempt. Preserve the failed source-equal record and validate a
future declared run independently.
