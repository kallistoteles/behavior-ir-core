# Corrected-release handoff

Status: Core candidate targeted tests, exact clean-source gates and correspondence review pass. **Ecosystem C19 / QS-22 stays blocked.**

The frozen [original module](original-approval.json) has BehaviorHash
`sha256:a04ba37ab89e051e448abb760bd754bbb0955125fd22ba8da927b8529a531779`.
Its unchanged full default profile has six check kinds, rlimit 20,000,000 and wall guard 60,000 ms. The source candidate proves both action-qualified uniqueness obligations and the complete report. That is implementation evidence, not published-release adoption.

The adoption owner must publish the separately versioned minor Core release, pin its immutable release/commit in the ecosystem, and rerun the original module through the supported public interface with the full profile. Record binary/solver/source identities, the exact original BehaviorHash, complete report identity and both action-qualified proven checks. Only that result can replace C19's blocker and permit the complete conformance gate to pass. No source-only result, guard rewrite, synthetic SMT lemma or passing integration mode that records a blocker substitutes for this gate.

[Core #35](https://github.com/kallistoteles/behavior-ir-core/issues/35) was checked read-only on 2026-10-17; its title/body already correctly describe an inconsistent abstract query-summary assignment with unsuccessful concretization, rather than a concrete duplicate-decision state. See [the source snapshot](issue35-current.json). No issue edit or closure was made.

Global inductive safety remains separate: establish initial-state validity, complete structural ownership/effect coverage, local preservation and framing for other actions. Genesis/import/migration preservation need their own premises. This local proof neither supplies those claims nor certifies all existing verifier abstractions. The broader soundness audit also remains separate work.

Verifier 0.10 reports and explicitly selected new policies coexist with immutable 0.9 history. Archived interpretation supplies no new commit authority. This implementation does not publish a release, change downstream pins or silently upgrade historical evidence.

The original validated implementation commit is `faabb08db990f37e77f1a79e272ba0bb09bbf122`; [final-receipt.json](final-receipt.json) has SHA256 `3b2f74dc3c7f9376dbd8a63e7b82f00a24749a7f6278238039b76b3040f753fa`. [acceptance.md](acceptance.md) and task-status updates are a later administrative checkpoint, distinct from the source used to build the validated binary.

The post-review typed replay-error correction was validated on `1a1b168c7e767f92d363083eb7cdcfbf47f45868`; [review-replay-errors.json](review-replay-errors.json) has SHA256 `cf70c0b4c851f22f6c3e88aeb86ec005e20f740a6f17bc54a7100c21c5813211`. All Core gates and the unchanged original public proof pass with the same authoritative identities. Later receipt/task documentation is administrative; release publication and ecosystem adoption remain pending.
