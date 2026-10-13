# 023 isolated mutation evidence

**Status: all eight isolated mutants compiled and were killed by their designated
assertions after the coordinator's T029 checkpoint.** This task changed no official
implementation, test or task marker.

## Source isolation and acceptance rule

The disposable snapshot was sealed under
`/home/kalle/validation-receipts/core023/mutations/source/`, containing tracked
source and relevant new files while excluding Git metadata, targets, virtual
environments and private dependency overrides. Record base revision/tree, complete
working-source digests and test/fixture digests. Verify copied file digests, retain
the official working-tree status, and use only the copied source for mutations.
Use a separate external Cargo target and the pinned Nix shell with
`CARGO_BUILD_JOBS=2`, `CARGO_PROFILE_DEV_DEBUG=0` and
`CARGO_PROFILE_TEST_DEBUG=0`. Restore baseline copied files before every mutant;
run mutants sequentially to conserve disk.

The selected actual-name positive and negative controls must first collect and
pass in the unchanged disposable snapshot. Each mutant records its exact diff,
digest, command, status and output. A killed mutant must compile, run the intended
collected case and fail its designated assertion. Compilation errors, unavailable
Nix/Python/Cargo resources, timeout or unrelated setup refusal do not kill a mutant.
Compare the intended diagnostic path, acceptance/rejection or phase assertion;
an incidental outer identity mismatch is insufficient evidence.

## Prepared controls

Names below were collected from the sealed snapshot. All expected failures are
actual runtime assertions, with zero compiler/setup failures counted as kills.
Per-command receipts and full output are retained externally.

| Mutant | Isolated correction removed | Designated actual-name controls | Required activation | Status |
| --- | --- | --- | --- | --- |
| M023-01 | Disable query result-hash equality in private codec | Verify `wrong_digest_with_correct_members_is_refused` | Wrong digest locally accepted; expected-refusal assertion fails | Killed; `M023-01-summary.json` |
| M023-02 | Hash bare IDs rather than member objects | Verify `single_nonempty_query_evidence_is_accepted` | Independent correct producer-style member-object digest rejected | Killed; `M023-02-summary.json` |
| M023-03 | Change shared existing result-hash domain | Verify `single_empty_query_has_required_empty_membership_hash` | Independent literal historical-domain digest rejected | Killed; `M023-03-summary.json` |
| M023-04 | Bypass checked constructor: strip hash and project directly through ordinary Facts, retaining raw candidate claim unchanged | Verify `wrong_query_result_hash_has_local_diagnostic` | Unguarded projection accepts incorrect integrity claim | Killed; `M023-04-summary.json` |
| M023-05 | Skip unknown-field presence check and codec serde closed-field rejection | Verify `unknown_observed_root_field_has_local_diagnostic` | Unknown root field silently dropped/accepted | Killed; `M023-05-summary.json` |
| M023-06 | Sort and deduplicate existence observations before canonical checks | Verify `unsorted_existence_evidence_is_not_repaired`, `different_existence_values_with_same_key_are_not_merged` | Supplied bad order or conflicting duplicate key repaired and accepted | Killed; `M023-06-summary.json` |
| M023-07 | Disable exact historical `derived_facts != bundle.read_facts` comparison | Store `locally_consistent_forged_members_cannot_publish`, `freshly_authorized_forged_members_cannot_publish` | Locally consistent, independently authorized forgery reaches publication/violates refusal | Killed; `M023-07-summary.json` |
| M023-08 | Move exact query-result integrity comparison into v1 raw bundle decoding | Store `v1_correct_hash_decodes_and_commits`, `v1_wrong_hash_decodes_then_commit_refuses` | Correct v1 stays accepted; wrong hash refused during decode, before historical commit gate | Killed; `M023-08-summary.json` |

M023-08 deliberately compares each supplied v1 query hash with the existing
tagged hash of its member objects immediately after strict raw decode. This exact
integrity algorithm is placed in the wrong phase; the correct-digest control must
still pass while the historically decodable wrong-digest control fails during
decode. M023-06 is a representative normalization
mutation of the existence-key domain, with both ordering and duplicate controls.

## Actual source and baseline custody

The immutable working-source copy contains **4,583** files, from base commit
`f4641b933a3f5bd65a308623a99895d7ee1a75fb` plus the recorded
working tree. Each original/copied digest matched and HEAD/status stayed unchanged
while copying. Source snapshot custody is
`/home/kalle/validation-receipts/core023/mutations/snapshot.json`, SHA-256
`cac12da12a1f5a6987ac081ee2f6622c7825de4af2f38e97a7ea108be1ead246`.
This is a sealed working-source run, not a final delivery-SHA attestation.

Baseline collection and full runs passed Verify boundary **145**, Store evidence
**7**, and Store compatibility **28** cases (including the original 16 v1 controls),
with zero ignored or filtered cases. Receipts/logs are `baseline-*-list.*` and
`baseline-*-run.*` in the external mutation directory. The independent shell
reported rustc/Cargo 1.98.1, Python 3.13.15 and Z3 4.16.0, matching pinned baseline.
No dependency override, production-source mutation or gate weakening was applied.

## Observed activation and restoration

- M023-01/04 accepted incorrect digests, failing the expected-refusal assertion;
  their independently valid nonempty-query controls still passed.
- M023-02/03 rejected independently correct member-object/historical-domain
  digests with the intended local hash diagnostic, failing acceptance assertions.
- M023-05 silently accepted an unknown root field while its independent valid
  query positive still passed; the unknown-field refusal assertion failed.
- M023-06 repaired both noncanonical existence order and conflicting duplicate
  existence keys; both malformed inputs were accepted and caught by refusal checks.
- M023-07 returned actual `Committed` for the locally consistent unsigned forgery
  and the freshly authorized forgery. Both designated `unwrap_err` assertions
  failed, demonstrating that exact historical comparison remains independent of
  local integrity and signed authority.
- M023-08 rejected the wrong v1 digest during raw decoding, failing the historical
  decode-success assertion. The correct-digest decode/commit positive still passed.

Across eight mutants there are **10** intended runtime assertion failures and
**4** independent passing controls. Every intended failing control exited 101,
compiled and ran its exact collected name; passing controls exited 0. Full patch,
patch digest, source/test binding, command/environment, status and output are in
`M023-01` through `M023-08` receipts and summary JSON files.

After the last mutant all five touched snapshot source files were restored.
Full digest comparison checked all **4,583** copied files with zero mismatches.
Three exact restored-source controls passed: valid nonempty query acceptance,
forged-history refusal and the original v1 wrong-hash decode/commit schedule.
Their receipts are `restored-1.json` through `restored-3.json`; the complete restore
check is `restored-source.json`.

The combined receipt is
`/home/kalle/validation-receipts/core023/mutations/receipt.json`. The reproducible
external runner is `run-controls.py`, SHA-256
`a3733906986c4a1417ea6aaa26c397f4a7dd993085d96e3106677b679eade2ad`.
The official checkout and its build target were not mutated by this runner.

These are bounded representative mutation controls, not universal proof of the
codec or backend durability. They apply to the sealed source before later tests
and final delivery; canonical final gates remain separate. M023-06 covers the
representative existence ordering/duplicate domain, while the normal boundary
suite exercises every collection. The coordinator reconciles C023/P023 coverage
and T030 state.
