# Proof-cache retention revision 003: static follow-up

Status: **new, unselected review** of `proof_cache_retention_003.py` and
`test_proof_cache_retention_002.py` against the previously permitted source
owners. No tests, builds, archive/replay/cleanup operations, private files,
protected artifacts or live outputs were accessed. Only this new note was
written.

Revision 003 addresses the ancestor-path and special-node defects and materially
strengthens tool/recovery binding. One definite output-provenance bug remains,
and the original-command check rejects the checker's normal default-mode
history. The shown inventory fixtures otherwise look consistent with the new
helper; no actual fixture result is claimed.

## Corrections

1. **`selection_ref` is overwritten by loop variables.** The function argument
   `reference` is reused for parent iteration at `proof_cache_retention_003.py:71`
   and retained-ref iteration at `:207`. Consequently `selection_ref=reference`
   in the result (`:210`) records the final retained checkpoint ref, rather than
   the input selector. This is a definite provenance bug independent of private
   state. Save `selection_reference` at entry and use distinct loop names. The
   small fixtures never reach this result path and would not catch it
   (`test_proof_cache_retention_002.py:7–75`).

2. **Historical command identity permits only the direct command form.** The
   check at `draft:130–133` requires both proofs' original argv to equal
   `[leanchecker, --from-export, export]`. However, ordinary default mode returns
   the `lake --no-build env` prefix
   (`experiments/transition-study036/check_proofs.py:167–179`), which is included
   in its kernel invocation (`:395–398`). Therefore a default-declared proof
   produced by that normal path is rejected despite using the same fixed
   checker/export. This is a definite compatibility difference from the source
   protocol, not an inference about the actual retained command receipt.
   Explicitly accept the independently expected original form for each proof:
   direct for the imported-context proof, pinned Lake-prefix form for the
   default-mode proof. Keep the **new replay** direct with empty `LEAN_PATH`.

3. **The selected-input exclusion remains root-name/lexical only.** Lines 92–95
   still inspect only `logical_ref.root_id == private`. A registered root can
   alias a target subtree; a selected source under that other root would then be
   deleted without this guard noticing. Resolve each selected logical path using
   its own registered root, then compare the canonical path with all targets.
   `artifact_io.py:117–129` already provides the needed path resolution and
   ancestor checks. No actual alias or selected cache input was inspected.

4. **Raw exports are checked globally only after disposal.** The per-command
   export check (`draft:166–170`) cannot catch mutation of the earlier export by
   a later command before cleanup. The added all-export pass is at `:202–204`,
   after deletion, and the cleanup retained refs still omit the raw exports,
   selector, source subject and tool-context refs (`:184`). Put the all-export
   check before registration/disposal as well, and include explicit raw-export
   refs plus the relevant immutable input refs in retained refs. The cleanup
   owner rechecks those refs immediately before reclamation
   (`owned_cleanup.py:140–146`). Post-disposal verification remains useful, but
   should not be the first complete check at the destructive boundary.

## Fixtures and improvements checked statically

- The sixteen synthetic nonempty roots satisfy the target/file bounds; the
  extra `.lean` file triggers `ProofCacheUnexpectedFile`. The descendant symlink
  reaches `strict_inventory` and uses the expected `BackendIrSymlink` string
  (`test:17–36`; `draft:27–52`). The FIFO is rejected by lstat kind checking
  before hashing, and the renamed-owner ancestor symlink is rejected by
  `RootRegistry.path` with the expected `V2ArtifactSymlink`
  (`test:56–75`; `draft:33–38,46`). No definite error-string/setup mismatch was
  found. The two fake-reader fixtures terminate before requiring actual roots
  (`test:38–53`; `draft:59–62`).
- These fixtures import the staged module name `proof_cache_retention_v2`, not
  the unselected filename directly (`test:8,18,39,48,58`); meaningful execution
  requires staging the reviewed revision under that module name. This is the
  stated integration arrangement, not evidence of a current import failure.
  They do not execute archive creation, run_retention success, historical argv
  validation, rollback or cleanup; they cannot establish those paths.
- Canonical path checks now precede cache/project inventories and export/tool/
  output access, and are repeated around moves (`draft:68–69,100,110,124,
  140–160`). Strict inventory rejects special nodes and bounds total nodes
  (`:27–38`). The stated archive scope is regular-file bytes/modes/relative paths,
  explicitly excluding directory metadata (`:153`). Fixed tool selection/analysis
  hashes, SDK path, checker hash and duplicate-row rejection are present
  (`:115–133`). A complete move intent precedes moves, with per-move records and
  an exception recovery record (`:149–164,191–197`). These changes close the
  corresponding earlier source omissions without claiming a real run passed.

The exception recovery record is written only if the rollback loop itself
finishes; an error during path validation/rename at `:193–196` can bypass it.
The durable move intent still provides the complete mapping, so this is an
operational reporting weakness rather than demonstrated loss. Use `finally` or
a separate guarded recovery write to retain the initiating and rollback errors.
A durable pre-disposal phase marker would also distinguish hard interruption
during deletion; recovery must always validate target completeness and otherwise
use the verified archive, never move a partially deleted tree back.

Owner/mode validation is still first performed when `OwnedCleanup` is constructed
at `:185`, after moves; early construction would enforce that existing boundary
before mutation. The function also still relies on its caller to hold the work
lease during archive/move/replay, with disposal acquiring it internally. Caller
integration was outside this review. Missing/empty default directories remain a
fail-closed pre-move compatibility condition. No actual retained state, native
proof, archive success or replay success is established here.
