# Core036 revision-2 planning research

Date: 2026-11-16. Three read-only research agents inspected actual native/proof dependencies, campaign/resource failures and cost/compact seams. No installation, build, proof or timing experiment ran. Decisions below resolve the engineering design; their correctness and support remain implementation obligations, not assumed results.

## R1 — Finish through dependency-aware bounded continuation

**Decision:** A persistent v2 work context owns declared successor attempts. Per-attempt limits terminate processes safely and preserve checkpoints; they never complete the feature. Independent development continues while accepted scientific claims wait for current prerequisites. Replace the v1 negative-only collector and hardcoded clock/root with a real positive completion path requiring every deliverable and SC.

**Rationale:** `study.py`/`campaign.py`/`recorder.py` bind `campaign-001` and the old boot/21,600-second origin; `quality_retry.py` shares the old Q deadline; `assessment.py` supports negative closure only; `validate.py` hardcodes no native/full-reproduction result; `check_proofs.py` is a refusal guard. None becomes a full implementation by changing an output flag. The revised specification intentionally changes the feature completion contract while retaining old evidence.

**Alternatives considered:** Reopening sealed campaign-001, resetting its clock, silently enlarging its ceiling or ending again with a complete gap report violates the new requirements. Unlimited blind retry is also rejected. A successor needs an observed cause, corrective change/allocation and prospective declaration.

## R2 — Repair and preserve the exact environment before acceptance

**Decision:** Use the existing pinned native tuple and locked Nix derivations for selected Aeneas/Charon packages, native linker and both Lean contexts. Verify actual closure metadata/content and working compiler/extractor/kernel behavior, then register fixed roots. Do not rely on executable-file existence or another plain launch of the generic Linux ELF.

**Rationale:** v1 plain Charon failed under NixOS, Q failed on an invalid dependency, and the old model checker failed querying the Lean derivation. The original source/fixture inventory was also short by three files; the corrected v1 inventory has 1,637 files. Preserve those exact original additions and independently inventory all later runtime consumers.

The pinned upstream [flake](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/flake.nix) exposes selected packages; a full multi-backend environment is unnecessary. Nix documents [closure/deriver queries](https://nix.dev/manual/nix/2.34/command-ref/nix-store/query), [path-content verification](https://nix.dev/manual/nix/2.34/command-ref/nix-store/verify-path) and [realisation/roots](https://nix.dev/manual/nix/2.34/command-ref/nix-store/realise.html). Its [repair documentation](https://nix.dev/manual/nix/2.34/command-ref/nix-store/repair-path) warns that interrupted replacement can leave a shared path broken. Therefore a short supervisor deadline must not blindly kill a global repair of shared critical runtimes. Prefer supported exact isolated realization or a declared safe repair procedure before scientific execution. The cause of the previous host change remains unknown.

**Alternatives considered:** Floating default tools, editing upstream source silently, downloading all cross targets, narrowing Q or pretending a byte hash proves Nix closure validity are rejected. An isolated revised tool realization is allowed if pinned, accounted, justified and its affected checks rerun.

## R3 — Keep Aeneas, with explicit library/language refinement work

**Decision:** Start with actual Charon/Aeneas extraction of selected native call closures, then complete missing dependency models/refinements, language/tool support or actual extraction-compatible source refactors. A failed helper creates engineering work, not a final architecture rejection. No proof-only alternate computation is accepted.

The initial tuple remains Aeneas `1dc8ad31b1b062a77c50e29144a6c7bba955fa09`, Charon `454586e9b770231e66d2062993e632dfc06463e2`, extraction Rust `nightly-2026-09-17`, analysis Lean `v4.36.0-rc2`. Sources: [Charon pin](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/charon-pin), [compiler tuple](https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/rust-toolchain), [Lean tuple](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/backends/lean/lean-toolchain). Original 035 Lean 4.30.0 replay stays separate from any freshly checked model port.

**Rationale:** Actual source depends on `serde_json::Value`, maps/sets, strings/iterators, `dyn EvaluationFacts`, `Arc::ptr_eq` epochs, I/O and errors. Local retained Aeneas models include strings/vectors, but the read-only inventory found no map/set/serde_json models. This is a concrete support gap, not proof that support is impossible. Pinned [Charon options](https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/options.rs) explicitly do not make `--monomorphize` a solution for dynamic traits. `--start-from` selects a real call closure rather than authorizing omitted dependencies.

Aeneas' [README](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/README.md) and [model workflow](https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/documentation/std-models.md) require external models where support is absent. Writing a model/example suite does not itself prove the native dependency follows it. Register every external declaration as translated, justified generic runtime primitive, same-native-function congruence or unresolved source refinement. Domain-specific projection/evaluation/observation equality may never be introduced as an external axiom.

**Alternatives considered:** A handwritten replacement model, fixture-only proof, model-only side implementation under extraction cfg, or assuming the desired result is rejected. Real shared Rust functions invoked by the measured worker may be refactored and translated, with complete adapter/reference-equivalence obligations; a tool extension or explicitly revised verification method is another accountable route. Neither changes the declared semantic domain without a new specification decision.

## R4 — Extend the model relation to the actual full input domain

**Decision:** Prove B01–B10 including an arbitrary finite-ID/row relation, complete native JSON/context/metadata/history, prepared evaluation, Safety, observation and actual commit/output effects. General theorems are not bounded to N≤256/H≤128 or fixture IDs. Keep full original fallback.

**Rationale:** Existing `ObservationModel.lean` has numbers as Nat and arbitrary encoder parameters. It does not already connect every native field. Identical source hashes or twelve old model roots cannot establish this bridge. Unchanged original serializers/hashes can be treated by congruence only after proving identical actual function identity, equal complete arguments and compatible performed errors/effects. This avoids reproving SHA internals merely for identical applications, without assuming a native projection or encoder relation.

**Alternatives considered:** Proving only a terminal-state helper, trusting supplied validation flags, opaque desired-equivalence stubs or narrowing the selector after failure cannot satisfy the specification.

## R5 — Separate volumes and account all actual resources

**Decision:** Use `/var/tmp/behavior-ir-core036-v2/<work-id>` for owned tools/source/build/tmp and v2 evidence under the feature's /data root. Initial observed free space was approximately 11.73 GiB on /data versus 71.32 GiB on root; observed RAM approximately 23.4 GiB total, 20.3 GiB available, no swap. These are planning observations, rechecked at admission.

Initial caps are 20 GiB cache/source/tools, 4 GiB tmp, 4 GiB new retained evidence and 8 GiB additional registered Nix-store material. Initial root/data free admission is 48/8 GiB; live floors 8/4 GiB. Per-process AS 8 GiB and ordinary Lean 4 GiB, one CPU/tree, sampled conservative aggregate RSS threshold 8 GiB and host available floor 4 GiB. Exact hard aggregate memory enforcement requires a capability-tested cgroup; sampled RSS is labelled as such. Full numerical attempts and extension rules are in [campaign](contracts/campaign.md).

**Rationale:** Repeating the old 16 GiB /data launch admission cannot work on the observed host. Rechecking initial admission before every child also double-charges already admitted cache use. Root/shared-store growth, owned temp and evidence need separate accounting.

**Alternatives considered:** Cleaning old archives/unrelated files, hidden global cache expansion, pretending a path hash is total tool cost, or dropping samples at the evidence ceiling is rejected. Closed owned disposable caches may be cleaned after executable/proof subjects are retained. Larger evidence allocation or a new registered root needs a prospective successor, preserving old objects and hashes.

## R6 — B is a real same-contract output experiment

**Decision:** B is GV with the same serializer wrapped by a fixed 64 KiB buffer, explicit flush/extraction and the same underlying file synchronization. Run it across all five diagnosis cells after its proof, full-Q/scoped and fault/activation controls pass.

**Rationale:** Actual `io::write` uses unbuffered File serialization, newline and sync. Rust documents that [BufWriter](https://doc.rust-lang.org/std/io/struct.BufWriter.html) needs explicit error handling at flush and [File::sync_all](https://doc.rust-lang.org/std/fs/struct.File.html#method.sync_all) is a separate completion operation. Freeze/read exact native 1.98.1 sources during implementation; current documentation does not authorize a tool upgrade. Underlying Write-call counts are not automatically syscall counts. No speedup is assumed.

**Alternatives considered:** More rule optimization alone leaves the other work unexplained. A byte-size observation does not prove a time lower bound; simply disabling output changes the endpoint.

## R7 — Complete operation and session totals, not arithmetic proxies

**Decision:** Fix 45 timing+15 diagnostic R/GV/B operation samples; 72+24 R/GV lifecycle samples; 24+8 C/selected-legacy samples. Total 141 timing+47 diagnostics, before controls, pilots and reproduction. Each operation sample includes primary plus same-process continuation. Sessions cover three families ×1/8/32/128, including distinct real changes, explicit no-ops and mid-session invalidation.

**Rationale:** N=256 has 128 eligible children for changing L128. N=2 changes once then has unchanged-content operations. Each session starts fresh state/history acquisition under a genuinely checked resident program context; directly enclosing cold-worker and first cold-session totals remain separate. Output/audit/reacquisition and retention are charged directly. Full exclusive interval reconciliation prevents the previous remainder from being silently called semantic maintenance.

**Alternatives considered:** Sums of medians, median subtraction, inherited grounds across independent sessions, replacing changes with no-ops, or treating diagnostic instrumentation as timing data are rejected.

## R8 — C branches before eager evidence, then reconstructs by original replay

**Decision:** Use an actual shared/proved restricted semantic transition result before eager original observation construction. C applies typed deltas through an experimental exact-parent memory CAS, retains one verified initial basis plus exact requests/context/metadata and delta chain, and reconstructs with original Core replay at audit. Compact head commits to a versioned state recipe, not a claimed eager legacy state-content/history hash.

**Rationale:** Current `Ground::view_step` reaches `observation::execute_original`, full Store invocation/commit, view materialization and Capture record/history clones. A compressed wrapper after that does not avoid canonical construction. Original replay avoids inventing another observation encoder but may cost O(history); measure and charge it. It returns complete original values/IDs with honest replay provenance, never claims those calls executed during compact completion. Prove actual compact delta/refinement and actual replay/input-binding composition for arbitrary admitted finite states.

**Alternatives considered:** Retaining full legacy snapshots per operation, casting compact head to legacy HistoryRef, dropping required audit data, or building a new hash-tree system is rejected. Basis and retained availability are mandatory and charged.

## R9 — A completed negative decision still needs complete evidence

**Decision:** Freeze median-ratio 1.0 comparison rules and exact guarantees before runs. Overlapping diagnostic ranges support descriptive/inconclusive evidence, not statistical certainty. Compact usefulness requires a lower completion median and no increase in required completion+audit and changing-L32+audit medians. Full proofs/quality/equality/control closure is independent of performance success. Final results may say no demonstrated advantage.

**Rationale:** A smaller record alone is not a completed cost result. Three observations are not production latency quantiles. Correct but slower results must remain visible and can justify not recommending a candidate.

**Alternatives considered:** Post-hoc thresholds, fastest-retry sampling, changing the endpoint after timing, or claiming the historical certified/durable 50/100 ms ambition is met by a memory endpoint are rejected.

## R10 — Independent reproduction is a required execution phase

**Decision:** Freshly rebuild oracle and all roles in verifier-owned targets; check every accepted proof root/type/transitive axiom and all actual control families; execute 26 distinct semantic verification replays; run the entire unchanged gate; derive all tables and 22 FR/eight SC statuses. Select expected source/model/profile outside candidate reports. Seal attempts before separate reproduction and bind both afterward without cycles.

**Rationale:** v1 integrity validation correctly detected negative claims but did not rebuild/replay the missing components. A positive finish requires the actual independent work, with timing variation disclosed. The final all-deliverables predicate remains unmet until it completes.

**Alternatives considered:** Archive integrity alone, instructions without reproduction, candidate-selected verifiers, hidden unrun slots or promoting old test counts to new source coverage are rejected.

## Planning resolution

No design-choice clarification remains. Actual tool support, dependency refinements, native/compact theorems and measured sufficiency remain explicitly unestablished implementation work. This plan neither assumes their success nor converts a difficulty into feature completion. See [plan](plan.md) for packages and [quickstart](quickstart.md) for future validation commands.
