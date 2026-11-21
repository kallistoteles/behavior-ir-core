# Proof-cache retention draft: static source review

Status: **new, unselected review** of `proof_cache_retention_001.py` and the
permitted retention/cleanup/proof/artifact source owners. No private cache,
checkpoint contents, evidence, live output, binary or protected artifact was
inspected. No archive, move, cleanup, replay, build or test ran. Only this new
note was written.

**Finding:** the fixed target list, lossless file-archive checks and export-only
replay are useful boundaries, but source/destination ancestor validation,
nonregular-node rejection and durable recovery intent need correction before
destructive use. The declared tool hash also needs an explicit link to the
approved existing proof-tool subject. No actual cache contents or run outcome is
inferred.

## Definite safety and retention gaps

1. **The source roots are only lexically restricted.** `targets` constructs fixed
   attempt/name paths, but `cache_inventory` tests only the final directory for
   symlink status (`proof_cache_retention_001.py:14–34`). Inventory/archive reads
   and `os.rename` subsequently use those raw paths (`:81,111,120–124`). A symlink
   in `ground-lean-probe/<attempt>` can redirect a permitted `compiled` path into
   another tree while the final compiled directory itself is ordinary. That
   would defeat the intended original292/114/shared353 exclusion. No such link
   was inspected or is alleged. Similarly, the newly created output/saved/
   disposable parents are not validated through the registered-root path helper
   before writes/moves (`:48,105–123`). `OwnedCleanup` checks its disposable path
   later, which cannot retroactively validate the move source.

   **Minimal correction:** resolve every source project/cache and every output,
   archive and disposable destination through `refs.path` before reading or
   mutating it, rejecting ancestor symlinks and unexpected canonical paths.
   `artifact_io.py:117–129` supplies those checks. Construct/check `OwnedCleanup`
   early so its owner/mode0700 boundary is established before moves
   (`owned_cleanup.py:12–27`). Resolve all selected logical input paths before
   the target-intersection check, rather than checking only lexical
   `root_id == private` paths (`draft:71–75`); another registered root can alias
   the same physical target. Use the common work lease for archive/move/replay/
   rollback or require it explicitly from the caller. Only the later disposal
   visibly acquires that lease in the allowed source
   (`owned_cleanup.py:137–149`); `_live_users` intentionally covers controller
   descendants, not all host processes (`:81–124`).

2. **The reused inventory helper silently omits special nodes.**
   `_inventory` rejects symlinks/protected names and hashes regular files, but
   has no rejection branch for a FIFO, socket or other non-file/non-directory
   (`backend_ir_retention_v2.py:46–69`). Such a node is absent from the whitelist
   and archive checks, while paced cleanup can unlink it
   (`owned_cleanup.py:154–173`). Thus the draft does not establish lossless
   retention of everything it may delete. **Minimal correction:** explicitly
   require every encountered node to be a regular file or directory before the
   first move. State whether lossless means regular-file bytes/modes only: empty
   directories and directory metadata are also not archived by the helper.
   Bound directory/node traversal if retaining its existing file/byte bounds.

3. **Recovery intent is not persisted before the multiple moves.** The draft
   records inventories/archive, then keeps its move mapping only in memory
   (`:104–124`). Python exceptions before disposal attempt reverse moves
   (`:151–155`), but a hard interruption can leave a partial sixteen-directory
   move without a durable mapping/state record. After `started_disposal=True`,
   even an early cleanup error leaves the moved directories in disposable
   (`:148–155`); after partial deletion, blindly moving them back would be
   incorrect. The verified archive remains available, but the recovery protocol
   is not recorded.

   **Minimal correction:** write a durable move-intent containing every fixed
   original/destination, archive ref/hash and inventory refs before the first
   rename; record phase/rollback or recovery-needed status on exceptions.
   Recovery must never overwrite a regenerated original and must distinguish an
   intact moved tree from a partially disposed one requiring verified archive
   restoration. The existing owner already records a single-target recovery
   intent before moving (`backend_ir_retention_v2.py:230–240`). Its earlier
   simplistic rollback is not a reason to restore partially deleted trees here.

## Tool, source and export binding

The draft chooses `analysis['sdk']/bin/leanchecker` and hashes it against that
same selected analysis report's `patched_binaries` (`:95–103`), then rechecks the
hash after replay (`:141–142`). This binds bytes to the supplied report; it does
not independently establish that the report/tool is the approved fixed runtime
tool subject or the executable used by the retained proofs. The checker engine
explicitly assigns tool provenance to its caller
(`check_proofs.py:278–283`). Bind the configuration/analysis path, producer/subject
and SDK/tool inventory to the already declared approved tool context, and compare
with the retained original kernel-command identity. Reject duplicate tool paths
instead of silently choosing the last row in the dict comprehension (`draft:99`).
This is a definite missing explicit provenance check, not a claim that the
selected real tool is wrong.

The initial parent checks require the exact eight checkpoint paths and verify
their closed work-attempt directories (`:50–63`). The a0448 result/proof paths,
success context and 98/256 root counts are checked (`:64–94`). Projects are
inventoried before and after the replay; moved caches, export bytes, tool bytes
and archive are checked before disposal (`:77–94,113–143`). Strengthen the final
pass to reverify all retained result/checkpoint/tool input refs and **both** raw
exports after the last replay. Currently an export is checked after its own
command, so a later command's mutation of the earlier export is outside that
particular final check (`:126–130`). Include explicit raw-export refs in the
cleanup retention record alongside the result refs (`:144–146`), and apply the
protected-reference check before indirect reads such as `config['lean_ref']` and
`declaration['source_subject_ref']` (`:71,95–96`). These are small boundary checks,
not a new archive architecture.

The draft checks only selected report fields, not their format tags
(`:61,66,88,95–100`). Validate the expected checkpoint/result/proof/tool record
formats and required field presence before relying on them; notably
`cp.get('source_validation_error')` accepts a missing field as null (`:61`).
The archive itself verifies exact regular-file membership, size, mode and hash
using the owning helper (`backend_ir_retention_v2.py:91–136`), and the cached-file
extension whitelist plus fixed parents exclude other named trees *once the
canonical path issue is closed*. These are sound source-level ingredients.

## Fail-closed compatibility and claim limits

Every listed parent must have both nonempty cache roots and both nonempty
project roots: the draft requires cache directories (`:25–35`) and `_inventory`
rejects an empty/missing inventory (`backend_ir_retention_v2.py:67–68`). A closed
failed parent may legitimately have stopped before creating a default project
or cache. That would abort this draft before moves, not prove unsafe deletion;
the actual parents were not inspected. If optional absences are intended,
predeclare/record them explicitly instead of assuming sixteen nonempty caches.
The helper's 128 MiB compressed cap can also reject a larger valid aggregate
before moves, despite the draft's 512 MiB raw aggregate allowance; no cap change
is implied (`backend_ir_retention_v2.py:91–107`; `draft:35–36,111–114`).

Replay does use direct `--from-export`, empty `LEAN_PATH`, bounded command exit/
timeout checks and the existing export policy (`draft:90–103,126–130`;
`kernel_export_v2.py:51–55,162–173`; `lean_command_v2.py:9–46`). This checks the
two retained selected-root closures after cache moves; it does not recompile the
source projects, reestablish their expected theorem types independently, or
check every imported constant. The original audit/export owner makes that scope
explicit (`check_proofs.py:379–427`). Keeping sources/raw exports/receipts outside
the disposal roots is appropriate; archive/replay success and native admission
remain unestablished until an actual declared run, and native adequacy remains
a separate obligation afterward.
