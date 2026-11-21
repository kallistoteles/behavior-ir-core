# 036 specification amendment — revision 2

Date: 2026-11-16.

The project owner requested that the scoped system be built completely and then produce a clear result. The active [specification](spec.md) now defines that completion contract. Its quality checklist assesses the requirements only; it does not claim implementation readiness.

## Changed requirements

- A stopped attempt or Rework report no longer completes the feature. Missing implementation, tools, proofs, gate passes, measurements or reproduction leave it unfinished.
- Operational failures require diagnosis, correction or a justified engineering alternative and tracked continuation. A verification tool's inability to start or handle the actual source is not a mathematical refutation of the architecture.
- Per-attempt resource caps still stop processes safely. Further bounded attempts must be prospectively declared, linked to earlier failures and fully accounted for. No old clock, limit, sample or outcome is rewritten; no unlimited blind retries are authorized.
- Gates continue to block accepted dependent claims. They no longer terminate independent development or provide an automatic path to final feature closure.
- The minimal same-contract improvement, full lifecycle work, restricted compact implementation/reconstruction and actual independent reproduction are required deliverables. They cannot be replaced by declared-only cases or missing-work notes.
- A completed experiment may show insufficient speed, no lifecycle payback or poor compact economics. These measured negative conclusions are valid results once all mandatory implementation, correctness, quality, experiment and reproduction requirements are met.
- FR-001–FR-021 and SC-001–SC-007 are retained with strengthened wording; FR-022 and SC-008 make the working deliverables and final completion rule explicit. There are eight required deliverables, 22 functional requirements and eight success criteria.

## Scope retained

The admitted `finish` research fragment, original semantics/observations, existing memory-backed execution scope and production-adoption boundary remain. This amendment does not request a production Core rewrite, full-language GV, new cryptographic backend, changed trust/finality, replay-free new receivers or Q6 durable publication. It does not promise a positive speedup or achievement of the historical 50/100 ms ambition.

## Evidence preservation

The [previous specification and checklist](specification-revisions/001/manifest.json) and [previous planning/result context](specification-revisions/001/context-manifest.json) were copied byte-for-byte before rewriting. Their manifests record original paths, lengths and hashes. Relative links in those exact archived copies retain their original document context.

The current `spec.md` intentionally has different bytes from the revision-1 baseline. The old `inputs/baseline.json`, frozen source snapshots, sealed evidence, clocks, profiles, reports and assessments are unchanged. The old baseline's specification hash matches the archived revision-1 copy. A historical validator that expects revision 1 at the current specification path must be evaluated using an explicitly selected original/archived context; silently rewriting its expected hash would invalidate preservation. A new continuation baseline must bind revision 2 and this mapping.

The existing root report/assessment/reproduction still describe the unfinished revision-1 attempt. They do not assess these new requirements or gain new authority from the amendment. All sealed indexes remain unchanged and can still have their byte integrity checked.

## Required replanning

The existing `plan.md`, `tasks.md`, `research.md`, `data-model.md`, `contracts/` and `quickstart.md` describe the old execution contract. Preserve their archived context and revise them against specification revision 2 before further implementation. Their old stop-to-final-report route is superseded. Their completed task markers and old run outcomes remain historical, rather than satisfying newly strengthened requirements automatically.

The next planning pass must provide: a supported prepared environment and actual proof route; complete workers/oracle and experiment harnesses; realistic bounded attempts and repair/resume rules; complete resource accounting; successful source-bound correctness/quality gates; completed cost/lifecycle/compact comparisons; independent reproduction; and a final evidence-backed decision. It must not retain the hardcoded negative-only collector/refusal scaffold as the final implementation.

This amendment changes requirements and their specification-quality checklist. It executes no new builds, proofs, benchmarks or production integration.

## Planning update — 2026-11-16

The active `plan.md`, `research.md`, `data-model.md`, five interface contracts and `quickstart.md` have now been rewritten for specification revision 2. Their revision-1 bytes remain in the archived context above. This is design completion only; no environment repair, proof, build, quality pass or measurement is claimed. The existing `tasks.md` is still revision-1 history and must be regenerated by `speckit-tasks` against this plan before implementation.

The new design uses persistent work with bounded successor attempts, actual-source dependency refinement, required R/GV/B and compact experiments, full independent reproduction and an all-deliverables completion predicate. Neither an exhausted allocation nor successful negative-only collection closes the feature.

## Task generation update — 2026-11-16

The active `tasks.md` is now revision 2: 153 unchecked, dependency-ordered tasks, with 31 independent authoring markers. It replaces the active old list while the exact revision-1 task bytes remain archived. [Generation validation](task-revisions/002/generation.json) records the story/phase counts, quoted data constraints, valid task syntax and preservation checks. No runtime implementation, proof, quality pass or experiment is claimed. The next workflow phase is `speckit-implement` over this revised list.
