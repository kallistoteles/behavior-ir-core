# Corrected-release handoff

Status: Core candidate targeted tests pass; exact clean-source gates and review remain required. **Ecosystem C19 / QS-22 stays blocked.**

The frozen [original module](original-approval.json) has BehaviorHash
`sha256:a04ba37ab89e051e448abb760bd754bbb0955125fd22ba8da927b8529a531779`.
Its unchanged full default profile has six check kinds, rlimit20,000,000 and wall guard60,000ms. The source candidate proves both action-qualified uniqueness obligations and the complete report. That is implementation evidence, not published-release adoption.

The adoption owner must publish the separately versioned minor Core release, pin its immutable release/commit in the ecosystem, and rerun the original module through the supported public interface with the full profile. Record binary/solver/source identities, the exact original BehaviorHash, complete report identity and both action-qualified proven checks. Only that result can replace C19's blocker and permit the complete conformance gate to pass. No source-only result, guard rewrite, synthetic SMT lemma or passing integration mode that records a blocker substitutes for this gate.

[Core #35](https://github.com/kallistoteles/behavior-ir-core/issues/35) was checked read-only on2026-10-17; its title/body already correctly describe an inconsistent abstract query-summary assignment with unsuccessful concretization, rather than a concrete duplicate-decision state. See [the source snapshot](issue35-current.json). No issue edit or closure was made.

Global inductive safety remains separate: establish initial-state validity, complete structural ownership/effect coverage, local preservation and framing for other actions. Genesis/import/migration preservation need their own premises. This local proof neither supplies those claims nor certifies all existing verifier abstractions. The broader soundness audit also remains separate work.

Verifier0.10 reports and explicitly selected new policies coexist with immutable0.9 history. Archived interpretation supplies no new commit authority. This implementation does not publish a release, change downstream pins or silently upgrade historical evidence.

The final acceptance record will identify the clean implementation commit and receipt separately from later administrative documentation commits.
