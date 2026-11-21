# Bootstrap frozen-source reference reuse: static review

Status: **new, unselected source review** of `bootstrap-metadata-v14.py` and
`bootstrap-entry-guards-v1.py`, compared with the permitted previous wrappers,
`frozen_source_reuse_v2.py` and `artifact_io.py`. No wrapper, test or build ran;
no previous work/evidence contents, live outputs, binaries or protected artifacts
were read. Only this new note was written.

**Finding:** the proposed storage seam is locally coherent: it references an
existing verified snapshot when bytes match, copies misses, and keeps the prior
baseline/growth rules. Add a final verification of each persisted snapshot ref;
the existing after-run loop checks live source bytes but not their retained
snapshot targets. Downstream readers must also register the work root used by
the new references.

## Reuse, roots and acyclicity

- The metadata wrapper registers `repository=R`, `private=P`, `work=W`
  (`bootstrap-metadata-v14.py:47–51`); the guard does the same
  (`bootstrap-entry-guards-v1.py:36–41`). `RootRegistry` supports explicitly
  registered roots, canonical containment, ancestor-symlink rejection and
  byte/hash reference verification (`experiments/transition-study036/artifact_io.py:101–129,156–185`).
  Hence both repository fallback refs and reused work refs resolve in these
  wrappers. A consumer with only the repository root cannot resolve a
  `root_id=work` ref: replay must register the same W, or deliberately encode an
  equivalent repository-root path when producing the index. Consumer code was
  outside the permitted reads, so end-to-end replay compatibility is unverified.
- `FrozenSourceWriter` considers the latest existing completed work subject,
  validates its work/record identity, bounded files list and exact numeric
  `subjects/<revision>/sources/<number>` ownership, and indexes size/SHA256
  (`frozen_source_reuse_v2.py:16–62`). Merely obtaining `.anchors` does not itself
  read/verify every snapshot's bytes; the wrappers correctly verify the selected
  anchor and then compare its exact bytes with the independently read live source
  (`metadata-v14:53–62`; `entry-guards-v1:43–52`). Identical content from a
  different logical file is safe for this byte-storage purpose because the
  current logical path remains separately recorded.
- Neither wrapper calls `FrozenSourceWriter.write` or `os.link`: it copies the
  verified ref dictionary on a hit and creates a fresh repository copy on a
  miss. Their `put` uses exclusive creation, and existing snapshot paths are never
  opened for writing (`metadata-v14:39–62`; `entry-guards-v1:28–52`). The helper's
  hardlink path exists in its separate write method
  (`frozen_source_reuse_v2.py:64–104`) and is not exercised by these wrappers.
- The new source-index edges point to already existing numeric snapshot leaves;
  new copies/index/declaration/result go under a freshly created bootstrap run
  directory. The writer searches work subjects, not bootstrap run indexes, and
  its anchors cannot name a manifest, index or the new bootstrap directory
  (`frozen_source_reuse_v2.py:16–62`; `metadata-v14:38,61–70`;
  `entry-guards-v1:27,51–60`). Assuming the preexisting retained graph is acyclic,
  this adds backward references without adding an edge from an old snapshot to
  the new run. No new local self-reference cycle was found; existing graph
  contents were deliberately not inspected.

## Concrete final source-binding omission

After execution, both wrappers reread each live `logical_path` and compare its
SHA256 with the snapshot ref (`metadata-v14:77–79`; `entry-guards-v1:66–68`).
This preserves the old live-source guard, but does not verify that the stored
snapshot itself still matches that ref. A persistent change to an old snapshot
with unchanged live source would therefore pass this loop. The same final
snapshot check is absent for fallback copies. This is a definite guard-coverage
omission, not evidence of any mutation; the previous wrappers had the same
live-only final loop (`inputs/v2/bootstrap-metadata-v13.py:64–66`;
`bootstrap-gap-guards-v1.py:52–54`). Shared references make the retained target
particularly important to validate.

**Minimal correction:** inside the final loop call
`snapshot_registry.verify(entry['snapshot'])`, then compare that verified target's
bytes with `actual` if exact byte equality is the intended assertion. The same
registered roots support both reference kinds. Retain the existing live-source
check and do this before publishing `all_source_bytes_equal_after=True`
(`metadata-v14:82`; `entry-guards-v1:71`). No linking, rewriting or deleting old
snapshots is needed.

## Baselines, caps and claim scope

The source diffs preserve baseline checkpoint/receipt paths at a0440, closed-tree
requirements, the temporary-baseline range below 4 GiB, pinned Python validation,
60-second declaration/run wall limit, recorder invocation, growth callbacks and
post-run live-source checks. Compare `metadata-v14:27–37,67–82` with
`inputs/v2/bootstrap-metadata-v13.py:27–37,54–69`; compare
`entry-guards-v1:17–26,57–71` with `bootstrap-gap-guards-v1.py:17–26,43–57`.
The guard's allowed pattern/temp-prefix/scope intentionally change from gap tests
to entry tests (`entry-guards-v1:16,26,60`). No cap increase, old-baseline reset or
historical record rewrite appears in the proposed changes.

Cache accounting still sums the complete live source inventory; it does not
subtract bytes merely because their snapshot is reused (`metadata-v14:75`;
`entry-guards-v1:64`). Thus the proposal reduces new physical copy creation
without claiming a smaller logical source subject or relaxing the existing
accounting formula. The external recorder and actual footprint observations
were not read, so no numeric storage saving or observed cap compliance is
established here. Bootstrap result acceptance remains blocked/product adoption
unactivated (`metadata-v14:64,82`; `entry-guards-v1:54,71`); snapshot reuse creates
no semantic or proof authority.
