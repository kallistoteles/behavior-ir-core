# Planning Research: Scalable Execution and Evidence

**Date**: 2026-10-28. **Status**: Source-based planning findings; no new timing campaign, proof execution or production experiment performed.

## R1 — Begin with the whole workflow and existing seams

**Decision**: Reuse the 029 loop/drain probe and existing full-reference controls, with fresh 031 manifests and coverage.

**Rationale**: `crates/behavior-store/tests/support/global_workload.rs` already clocks eight evaluate/commit operations and a final evaluation. Its digest covers records, commit identities and head, but does not exercise all read, command, replay and recovery observations required by 031. Existing `benchmarks/run.py` retains subprocess provenance and failures; its fixed corpus and evaluator remain historical artifacts. `eval/work.rs` has named counters, not comprehensive allocation/parse/hash instrumentation.

`commands_since` in `crates/behavior-store/src/commands.rs` validates endpoints and replay, reconstructs/verifies state, and scans records before selecting a bounded page. This source structure justifies a separate history axis; it is not a new measurement of its dominant cost.

**Alternatives considered**: Cache-promotion-only work, a new generic benchmark framework, or using old debug command timings as a stable baseline. None supplies complete-path attribution with minimal new machinery.

## R2 — Separate five factors and avoid hidden work

**Decision**: Use one-factor series with independently prepared history and evidence payload, plus a small combined workload; freeze conditions before experiments. Retain three timing repetitions per primary point.

**Rationale**: Existing 029 history cases change measured transition count. For 031, first prepare a declared history and then measure the same eight-transition window. Evidence bytes must vary while live population, history, changed identities and rule shape stay fixed. A neutral unused string payload can vary archived bytes without changing its rule's truth; profile identity and byte observations still differ and must be frozen per case. Rule count and filter-expression complexity are separate descriptors, not conflated with one another.

The 029 HWM includes retained observations and post-clock serialization. Retain process HWM and explicitly label whether phase-local peak memory is available. Counter coverage and overlaps must be stated; 175,992,671 bytes at named hash sites is not unique output or all hash input. Emitting B canonical bytes requires Ω(B) work, but does not justify every existing pass over them.

**Alternatives considered**: A Cartesian matrix, subtracting diagnostic overhead from production times, and comparing only one request. These add cost or conceal where work moved.

## R3 — DBSP is a mathematical reference, not a Core proof

**Decision**: Assess selected typed query fragments against DBSP and simple specialized maintenance; do not import a runtime or proof library.

**Rationale**: The [DBSP paper](https://www.vldb.org/pvldb/vol16/p1601-budiu.pdf) and [formalization at fb6ff4416108710448ccd87473c5513c1a1179ea](https://github.com/tchajed/database-stream-processing-theory/tree/fb6ff4416108710448ccd87473c5513c1a1179ea) provide stream/incrementalization mathematics and relational operators. The artifact's [leanpkg.toml](https://github.com/tchajed/database-stream-processing-theory/blob/fb6ff4416108710448ccd87473c5513c1a1179ea/leanpkg.toml) pins Lean 3.51.1 and mathlib `44b58b42794e5abe2bf86397c38e26b587e07e59`; it is not a Lean 4 package.

Source inspection found two `sorry` terms inside a local abandoned claim in `src/stream_elim.lean` (`example : true`). That prevents a blanket claim that the repository contains no admissions, but does not establish that selected named theorems depend on them. Any adopted theorem needs a per-target transitive axiom audit and pinned proof run before being cited as independently checked. Mathematical integers/rationals, noncomputable constructions and stabilization premises do not automatically model checked Core arithmetic or bounded execution.

For example, regrouping a sum can erase an intermediate overflow even if the final mathematical sum fits. Predicate result equality alone does not preserve partial evaluation, lazy branches, observed reads or error order. Complete identity-bearing before/after deltas and correspondence are separate obligations.

**Alternatives considered**: Treat all paper results as a verified Rust algorithm; port the full formalization; require a new Core-wide formalization before any cost measurement. All exceed or misstate this investigation's current evidence.

## R4 — Check Differential Dataflow and Adapton without assuming their proof scope

**Decision**: Compare their useful ideas with simple summaries and reference execution; record proof claims at exact inspected revisions.

**Rationale**: [Differential Dataflow aa8745f93ea8abe131104fc7885ba4fd47e63902](https://github.com/TimelyDataflow/differential-dataflow/tree/aa8745f93ea8abe131104fc7885ba4fd47e63902) contains a separate [formal development](https://github.com/TimelyDataflow/differential-dataflow/blob/aa8745f93ea8abe131104fc7885ba4fd47e63902/formal/README.md), using Lean 4.31.0 and mathlib `fabf563a7c95a166b8d7b6efca11c8b4dc9d911f`. Its source describes algebraic adequacy, modeled reduce scheduling and compaction. The formal directory is not a verified correspondence to every operation of its Rust engine. The stated work property constrains edit timestamps, not universal CPU time proportional to delta size. No proof build or elaborated-axiom audit was performed for this plan.

[Adapton's PLDI paper](https://www.cs.umd.edu/~mwh/papers/adapton-submit.pdf) and [Nominal Adapton's paper/appendix](https://research.cs.queensu.ca/home/jana/papers/noma/Hammer15_names.pdf) establish from-scratch consistency for their specified calculi under well-formedness/initial-consistency premises. Relevant implementation references are [OCaml a8e642ac1cc113b33e1837da960940c2dfcfa772](https://github.com/plum-umd/adapton.ocaml/tree/a8e642ac1cc113b33e1837da960940c2dfcfa772) and [Rust ea903dd961bee3568c483a18a72983d9f4ef5ed2](https://github.com/Adapton/adapton.rust/tree/ea903dd961bee3568c483a18a72983d9f4ef5ed2). Paper arguments and executable libraries are separate evidence. Dynamic dependency repair is pertinent to captures and lazy branches, but cannot justify skipping normative Core obligations simply because a value was not demanded.

**Alternatives considered**: Assume no established proof artifacts exist; embed either engine; assert that from-scratch value equality proves complete Core observation equality. Each is either factually incomplete or lacks correspondence.

## R5 — Assess compact evidence as a future contract

**Decision**: Compare reconstructible history, authenticated dictionaries/ranges and append-only histories as distinct proposals. No compact persistent format or new authority is implemented.

**Rationale**: The current [persistence contract](../../docs/persistence.md) binds state, exact history and canonical profiles; its MuHash state identity is not a membership or query-completeness proof. [Authenticated dictionary research](https://www.usenix.org/legacy/publications/library/proceedings/sec98/full_papers/full_papers/nissim/nissim_html/node3.html) and [RFC 9162 section 2.1](https://www.rfc-editor.org/rfc/rfc9162.html#section-2.1) are useful references for separate authentication obligations. Inclusion and append-only consistency do not establish complete filtered results, absent references, semantic state validity or availability. No theorem about these sources is claimed independently replayed here.

Every future proposal must define interpretation, exact module/policy/schema/history binding, complete omitted observations, reconstruction, governance and availability. History acceleration cannot turn an unverified index into authority. Retention assessment must distinguish terminality, physical existence, permanent identity and replay data.

**Alternatives considered**: Replace universes with hashes, authorize a checkpoint because it has a digest, or add archival lifecycle semantics now. Each crosses an unestablished contract boundary.

## R6 — Bound experiments and retain an honest completion criterion

**Decision**: Isolate research patches, preserve reference fallback, keep data/collector outcomes separate and require current gate renewal when code changes. Do not copy the 029 mutation runner unchanged: it edits source and writes old evidence paths.

**Rationale**: Each shortcut needs an explicit premise and an observed negative control. Freeze manifests before candidate results; preserve failed attempts and identify source deltas. A sound no-go is useful, while an unresolved empirical question is not a successful optimization. Mandatory baseline coverage still must execute before the investigation is complete.

**Alternatives considered**: Promote a prototype directly to production, relax a criterion after a slow run, or infer a performance theorem from finite agreement. None satisfies the specification.

## Planning resolution and remaining investigation

All planning choices have defined conservative defaults: reuse the workspace, preserve current runtime contracts, collect public independent evidence, and require explicit correspondence. Algorithm selection, dominant-cost attribution, achievable speedups, broader incremental coverage and compact-evidence feasibility remain the work of R1–R5 in [plan.md](plan.md), not unresolved user clarifications and not conclusions of this planning document.
