# Immutable baseline CLI compatibility capture

The separately captured archive contains 106 actual outputs of the pre-017 CLI
at `932eb8188dc28393213491e27f66e3bc7e273a6b`, using the original requests,
modules, snapshots and context. No current test, helper or gate script changed.

| Original corpus | Captured cases | Comparison |
| --- | ---: | --- |
| Root evaluation requests | 13 | Original golden bytes and trace/result table |
| 002 constraints | 6 | Original result, phases, outcomes, roles and changes table |
| 003 fixed-scale | 30 | Original JSON subset and absence/substring directives |
| 004 exact closure | 5 | Original JSON subset and absence/substring directives |
| 006 lifecycle | 14 | Original JSON subset and absence/substring directives |
| 007 queries | 12 | Original JSON subset and absence/substring directives |
| Invocation | 13 | Original golden bytes |
| Invocation intent | 13 | Original golden bytes |

All 39 existing golden comparisons agree byte for byte. All 80 evaluation
records agree with their original tables, including the 61 subset tables. All
106 actual exit statuses agree with the immutable producer's CLI contract.

The initial capture helper inferred exit 2 for `open_account_used`, because its
mapping omitted lifecycle refusals. The original table specifies
`ENTITY_ID_ALREADY_USED` without an exit-code column; the producer's
`crates/behavior-cli/src/lib.rs:433–439` explicitly specifies exit 1. The actual
record and exit are correct. The original capture metadata and its discrepancy
are retained unchanged. [validation.json](validation.json) documents the
corrected comparison separately; this was a capture-helper error, not a runtime
defect or a semantic RED.

Each record is the exact raw stdout from an actual `nix develop -c` invocation
of the retained baseline CLI. The per-case JSON and stderr files record command,
input digests, status and timing. No new compilation or release override was
used. The CLI binary SHA-256 is
`90705fd41f851309e709fae6c939aba5c2b575fd412a3f4ac20f22d3949a0e11`;
its prior build provenance is `US2/profiles/archive-proof-run.json`.

The archive is `tests/fixtures/resulting-state-validity/compatibility-archive/`.
Its separate manifest SHA-256 is
`92ea0a80e7c88443c51b3e996e964521d5a893118b4341f5baaa7e71b274206e`.
All 315 recorded baseline source digests, 546 original fixture digests, 42
original capture digests and the original archive manifest were checked before
and after capture and remain unchanged. The baseline detached worktree remains
clean.

Validation command, run from the Core017 root:

```bash
python3 specs/017-resulting-state-validity/evidence/runs/US4/compatibility-archive-capture/validate.py
```

This verifies capture provenance and original assertions. It does not execute
the Rust test harness, standalone replay, current evaluation or required gates.
For the 67 evaluation cases without original golden files, these newly captured
records are baseline compatibility evidence; their bytes are not an independent
mathematical oracle. Current complete-parent expectations remain separate work.
