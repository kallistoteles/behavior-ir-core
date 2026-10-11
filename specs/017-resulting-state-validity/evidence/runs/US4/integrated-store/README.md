# T057 comprehensive Store run and focused harness follow-ups

The initial pinned run executed all behavior-store targets with `--no-fail-fast` and exited 101. It reports 59 target summaries: 297 passed, 10 failed, 19 existing ignored and no filtering. Full stdout/stderr and exact per-target outcomes are retained. This is an initial integrated checkpoint, not a green final-revision gate.

Required long history coverage executed rather than being reduced: lifecycle_replay passed its two required tests in 761.50 seconds (one existing stress variant ignored); migration_replay passed all three required tests in 858.67 seconds (one existing stress variant ignored). The total sum of target execution times was 2042.90 seconds. The diagnostic for the deliberately inaccessible CommittedCommand constructor belongs to a passing compile_fail doctest and is not a separate compiler failure.

Ten initial failures were reported in seven targets:

- command_governance: two fresh proof consumers still used verifier-0.8 policy fixtures. Only these fresh inputs now use the separate matching verifier-0.9 policy/evidence. All seven targeted tests pass; old signed archives are unchanged.
- conformance: the CurrentOnlyIndex mutant no longer exercised its faulty incoming index through a fresh materialized action snapshot. The conformance owner added explicit provider-contract coverage; this directory retains the initial failure.
- evidence: three helpers assumed a whole-ledger proof despite the explicit current verifier limitation for multiple same-type rows with child obligations. The owning agent updated only the exact current proof scope and retained authenticated evidence checks.
- migration_store and references: each had one stale late DANGLING_REFERENCE expectation. Fresh complete child validation instead selects the earlier typed synthesized-reference constraint failure. Their owner retains all independent index/history assertions.
- result_state_props: the finite query model was unchanged, but the trace selector searched human-readable `sum(`/`min(`/`count(` labels which current records replace with semantic `node:<hash>` keys. The focused adaptation selects exactly one admitted postcondition aggregate by semantic operator kind and requires its exact evidence key; mathematical sums, minima, counts, uniqueness, decisions and commits remain independent.
- trusted_governance: a runtime governance_candidate.v2 carrying current decision record0.8 was rejected by the existing closed JSON schema. The schema owner investigates this genuine shape mismatch using the actual failure; it is not reported here as merely a policy fixture update.

Other agents own the conformance, evidence, reference/migration and governance-schema follow-ups. Their targeted evidence is in their own run directories. The raw integrated binaries were compiled before these follow-ups. Source differences are recorded; no claim is made that this initial run covers the final revision.

Command: `nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --jobs 2 --no-fail-fast -- --nocapture`. Focused query-property collection and execution use the same flags, `--test result_state_props`, then `-- --list` / `-- --nocapture`. The existing ignored10k stress variant remains explicit and is never counted as a pass.
