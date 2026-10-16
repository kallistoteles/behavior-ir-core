# Research: Portable Source Locations

Baseline: `a24b65d26efaf62342daf5ab0f455540dfd61ed1`, source version 0.13.0. Read with [spec.md](spec.md). User decision A is authoritative: relative filenames and virtual markers are preserved verbatim, including in all-relative definitions and when an explicit root is supplied. Historical evidence remains unchanged. No unresolved design clarification remains.

## R1 — Observed baseline and identity domains

**Decision:** Correct construction provenance; retain separate legacy/current record contracts.

**Executed evidence:** [baseline-run.json](evidence/baseline-run.json) records an actual facade-only executable against this checkout, with source, command, tool versions, dependency lock and source hashes. [baseline-observations.json](evidence/baseline-observations.json) contains 30 rows: 15 source cases in each of Legacy and CommandIntents. Both module completion and ad hoc-read admission are exercised. There are **26 source-contract failures**, process status **1**. Every evaluation returns VALUE 42 and every facts-only replay matches. Absolute-only and marker-only controls account for the four passing rows. Compilation succeeded; stderr is empty. This is observed missing behavior, not a missing-file or compiler failure.

`pkg/model.py` currently becomes `model.py`. A mixed-source absolute `/tree-a/pkg/model.py` becomes `tree-a/pkg/model.py`, retaining the checkout components. For all four markers, relocating `tree-a` to `tree-b` changes legacy ad hoc canonical content/record identity but leaves v2 content/identity equal. All 30 scalar read-definition semantic hashes agree. The existing v2 identity behavior is a GREEN characterization, not a feature defect. Module semantic identity is not compared across the two semantic profiles.

This probe does not establish nested Rescale correctness, Store replay, error diagnostics, all matrix rows or final acceptance. Those have dedicated planned tests. [The probe source](evidence/probes/baseline.rs) is retained; the original temporary build manifest and resolved lock are retained as execution evidence, not a portable new product package.

**Rationale:** Source-only defects must be distinguished from semantic evaluation defects and from already-correct identity normalization.

**Alternatives:** A source-inspection-only reproduction would miss profile differences; claiming every `record_id` changes would contradict actual v2 output.

## R2 — Shared private normalization, no public API expansion

**Decision:** Keep `Builder::finish(root)` and `Builder::admit_read(read)` signatures and facade exports unchanged. Correct the existing private common-root and filename-rendering helpers in `crates/behavior-core/src/builder.rs`.

Root inference filters for native `Path::is_absolute()` and returns `Option<PathBuf>`: `None` means no absolute root. The common-directory algorithm operates only on absolute filenames' parent directories; a root-only absolute filename uses its absolute self/root when it has no parent, avoiding an accidental relative root. The filename renderer returns the original string immediately for every non-absolute input, before any `Path::components` operation. Absolute filenames retain the existing component-based rendering and explicit-root fallback behavior. A supplied root never transforms a relative filename or marker.

Both workflows already clone and collect their own completed construction syntax: `builder.rs:1084–1089` and `1205–1226`. Keep the collection boundary there; do not collect every Node ever made, or locations from the module against which an ad hoc read is admitted. Reuse two metadata traversals, one for root evidence and one for rewriting. No filesystem queries, working-directory fallback, new dependency or public source-policy type is needed.

**Rationale:** The shared private seam satisfies both producer contracts and the one-trace consumer outcome. Internal optional-root state makes the absent-root requirement directly testable.

**Alternatives:** Adding only a root argument does not repair default inference. Exporting all expression internals moves Core policy to each binding. Generic recursive JSON rewriting can corrupt literals. Keeping old all-relative shortening contradicts the accepted decision.

## R3 — Complete final-IR traversal

**Decision:** Complete the typed `expr_locs` walker and make expression matches exhaustive.

Inspection confirms `builder.rs:1262–1283` omits `WExprKind::Rescale.arg`, although `Builder::rescale` creates it at `878`. Add it to the unary recursion alongside In, Wrap, StrictUnwrap and EnumMap. Replace the catch-all leaf branch with explicit Lit, Field, Param, Derived and Select variants, so future additions require an explicit traversal decision. Derived arguments here are binding-name strings, not nested expressions. Operator arguments and both Lambda children are already recursive. Read projections visit their `over` expression; projection items (`wire.rs:245`) have names and no Loc fields.

Inventory the complete WModule/WRead/WExpr metadata shape: declaration and field locations, nominal/enumeration declarations, derived/invariant/constraint/global bodies, reads, action guards/effects, lifecycle sites, command declarations/guards/payload expressions and nested expressions. Typed Lit values and In membership values remain domain data and are not recursively interpreted as source metadata.

**Rationale:** Filtering roots is insufficient if actual final-IR source locations are omitted.

**Compatibility qualification:** Repairing Rescale traversal may change fresh **absolute-only** provenance when a formerly skipped descendant supplies the only absolute location or broadens the common root. This is an intended correction under FR-001/008, not a reason to preserve an omission. The spec's absolute-only preservation statement is qualified to already correctly traversed definitions. No semantic hash changes. Tests must expose both Rescale cases before implementation.

## R4 — Keep construction separate from wire admission and replay

**Decision:** Do not normalize incoming wire documents, stored definitions or historical modules as part of this feature.

`read::record_source` (`read.rs:115`) reconstructs archived ad hoc definitions through wire `read::admit_read` (`726`), which typechecks while preserving locations. Both Core replay and Store replay use that preparation and compare full evidence. The checked replay selector additionally binds exact module serialization, not just its semantic hash (`read.rs:189`). Keep these boundaries intact.

| Surface | Source-only output expectation |
| --- | --- |
| Builder-produced module/ad hoc ReadItem, both profiles | Corrected provenance; same semantic hashes |
| Wire admission / embedded historical definition | Input provenance preserved under existing decoding rules |
| Fresh legacy ad hoc read | Embedded definition includes provenance; content/ID changes iff authoritative content changes |
| Fresh legacy declared successful scalar read | No embedded definition; an ID change is not inherently required |
| Fresh legacy failure record | Provenance in a reason can change authoritative content/ID |
| Fresh current/v2 record | Existing location-independent canonical content/ID remains invariant |
| Current detached diagnostics | Corrected useful source text may differ without changing canonical record content |
| Frozen records, both profiles and both replay modes | Original bytes, profile, IDs and replay behavior preserved |

v2 already detaches reason `loc`/`message` and canonicalizes embedded-definition locations before sealing (`read.rs:672–719`). Its literal-value guard remains unchanged. The existing read hash and v1/v2 record hash domains (`admit/hash.rs:631`, `335–345`) remain unchanged.

**Alternatives:** Normalizing wire admission would risk legacy archive mismatches; dropping provenance from v1 or changing a hash domain would redefine the record contract rather than fix construction.

## R5 — Diagnostics and mutation controls

**Decision:** Assert correct source filename/line and unchanged refusal class, code set and validation phase. Do not insist on old display text or diagnostic ordering when filenames legitimately change.

Admission errors sort by `(file,line,code)` (`admit/mod.rs:56–64`), so a source-only rewrite can reorder multiple diagnostics. Do not move immediate builder validation into finish/admission, change which semantic errors exist, or relax validation. Use one failure attributed to a real file and one to a marker; assert location observability separately from v2 semantic record equality. Pair location-only identity invariance with a genuine semantic mutation control.

## R6 — Test ownership and historical reuse

**Decision:** Add a focused Core integration target and one focused public consumer target; add private root tests beside the helper. Reuse existing broad identity/replay suites.

New targets: `crates/behavior-core/tests/source_location_portability.rs` for the complete construction/traversal matrix, and `consumer/tests/source_location_portability.rs` for public-only one-pass construction, exact results, relocation equality, useful diagnostics and both replay modes. Private builder unit tests assert an absent root, ordering/duplication laws and degenerate absolute-root input. Do not duplicate the whole Core matrix in the consumer.

Existing `hash_properties`, `read_admission`, `read_soundness`, `read_goldens`, `record_validation`, `read_replay`, `read_replay_integrity`, `strict_profile_replay` and `replay_evidence_authority` cover semantic hashes, frozen records and profile-defined source evidence. Store `strict_profile_replay` covers historical v1 under Wire0.8 and original position/module/snapshot requirements. Preserve and rerun them rather than refreshing archived expectations.

[evidence/protected-baseline.json](evidence/protected-baseline.json) records **1,127** pre-existing tracked fixture/schema/API/lock/toolchain file hashes. No existing fixture-byte exception is permitted. New test data, if needed, is additive and authored independently of corrected execution. The 76 original production source hashes in baseline-run.json establish the reviewed implementation boundary; only builder.rs is expected to change.

## R7 — Release classification and documentation

**Decision:** Conservatively classify as **0.x minor-class** under `docs/versioning.md:152–165`, because newly constructed legacy canonical content/IDs can change and consumers can need adaptation. Public signatures, wire/record/store versions, verifier version and semantic hash rules remain unchanged. No version bump, release number, tag, publication or downstream pin update is part of this feature.

Document mixed-source and all-relative before/after paths and their profile-specific record consequences in a new `docs/source-locations.md`, link it from README, and record the classification in `docs/versioning.md`. Explain that relative source-anchor meaning is outside scope. Preserve all historical artifacts without aliases or archive migrations.

## R8 — Validation and resource strategy

**Decision:** Use pinned Nix tools, bounded serial validation, task-owned RAM build/scratch paths and retained evidence. The planning probe used Rust/Cargo 1.98.1 and an offline manifest resolving the existing dependencies; no production source changed.

Planning observed approximately 747 MB root-disk and 4.7 GB tmpfs free before the probe; measure again before implementation. Reuse `/dev/shm/core027-plan-target` only after confirming source/provenance and available space, or choose another adequate task-owned target. Set two Cargo jobs, disable incremental compilation and debug info, and keep temporary consumer copies in tmpfs. Do not remove unrelated caches or change tests to save space.

After focused RED/GREEN and archive reuse, run the full unchanged `scripts/gates.sh` on a clean frozen candidate. Then run `scripts/check-consumer.sh --rev <full pushed SHA>` with the exact candidate CLI. Capture the actual temporary manifest and resolved lock synchronously before cleanup, with true Cargo status independent of capture success. Verify all Core dependencies resolve to that SHA. Final evidence belongs outside the frozen source, followed by a separate completion-metadata commit. These are implementation acceptance obligations, not claims about the planning run. Full static release validation is a later release operation.

## Proof-obligation disposition

| Obligation | Design resolution | Executable evidence still required during implementation |
| --- | --- | --- |
| PO-001 | R2/R3: final-IR absolute subset, optional root, opaque non-absolute strings | Root absence, discard controls, full typed inventory |
| PO-002 | R2: deterministic common-prefix reduction and verbatim pass-through | Both workflows, full matrix, Rescale and diagnostic controls |
| PO-003 | R3/R4: Loc.file-only rewriting; semantic hashes exclude Loc | Hash invariance, literal and semantic mutation controls |
| PO-004 | R1/R4: actual v1/v2 classification and unchanged hash domains | New-output comparisons and unchanged frozen IDs |
| PO-005 | R4/R6/R7: preserve wire/replay and protected inventory, minor-class delivery | Both archive replay modes and custody checks |
| PO-006 | R1/R2/R6: existing facade suffices; 30 actual baseline evaluations/replays | Corrected one-pass consumer with Store replay and exact-Git validation |

The contract and design choices are resolved. The table distinguishes design arguments and actual baseline observations from the implementation tests still to be executed; it is not a claim that unbuilt behavior already passes.

## Authoring incident and evidence scope

[evidence/authoring-command-failure.json](evidence/authoring-command-failure.json) records a heredoc-delimiter error while writing this guide. The resulting unintended build/test command selected zero tests and is not validation evidence. Its process group was stopped and only the newly created ignored worktree target was removed. The guide was rewritten with a distinct delimiter and its embedded Python was syntax-checked without executing the planned implementation commands. All original production/protected hashes remain equal. The separately captured 30-row baseline probe remains the actual planning runtime evidence.
