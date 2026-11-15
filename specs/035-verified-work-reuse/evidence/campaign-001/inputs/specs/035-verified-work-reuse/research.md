# Research decisions: verified-work reuse 035

Planning baseline: specification commit `00e901f5a0215c003044785c6368a99ecb852242`; measured 034-002 evidence commit `46a3e029e7087dce841b92c52dd8954865c86496`. These are source reviews and design decisions, not new measurements or proofs. Three read-only research reviews covered native seams, proof scope and campaign design. No build, experiment or old-archive rewrite was performed in this phase.

## R1 — Reference and subject identity

**Decision:** Keep Core `63a8c164523275e06ac1d7dc5330db4a899c9d99` and Safety `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`, the exact pairing of 034-002. Copy the original LD8 fixture construction with its original source-location values; retain its admitted bytes, policies and semantic profile. Preserve ParentPhase Open/Gone/Abandoned, ChildPhase Active/Terminal and all eight actions. Do not rewrite the model to make the optimizer eligible.

**Rationale:** `experiments/assurance-study034/src/fixtures.rs:58–194,228–232` defines the actual admitted module and all three policies (two FieldOwnership plus LifecycleDependency). `growth.rs:58–123` gives the alternating history and final finish request. Changing locations, policies or the module would alter the comparison subject. The current production Store source matches the pinned Git blob `245d47d7e150898250c2d8d5f2ccc4eac6d65f4a`; implementation must independently verify all selected sources, not infer the whole tree from that one match.

**Alternatives considered:** A newer release, simplified module, renamed source locations or certificate from the Python LD8 model. None supplies the same frozen reference subject.

## R2 — Optimize finish first, preserve fallback

**Decision:** The positive optimized fragment is the unchanged LD8 `finish(c)` action on an exact established current state, with unchanged behavior/schema/profile/policies, no uncontrolled writer and no lifecycle create/remove effect. It sets one existing child's phase to Terminal and preserves its owner. The mathematical domain includes arbitrary finite typed populations and every relevant parent/child phase, not only the benchmark sizes or Active children. Unchanged-content finish is included. Missing bindings retain the original resolution/refusal path. All other actions, including activate during history preparation, use the reference evaluator; activate is not a second mandatory fast path.

**Rationale:** `fixtures.rs:132–146` gives a simple point update while the full module and original Safety obligations remain. Supporting only finish bounds the proof/model correspondence without changing language admission. Preparatory activate and post-fallback continuation still test invalidation/re-establishment. Unknown or unsupported constructs never yield a partial success.

**Alternatives considered:** A general relational IVM engine or optimized stop/create/remove/activate suite now. These expand dependency/error/observer obligations before one exact local transition is established. A hardcoded returned JSON result is also excluded: the candidate must use the actual Core envelope/evidence machinery.

## R3 — Existing incremental components do not cover fresh unified invocation

**Decision:** Reuse the 015 and 029 machinery in an isolated research Core export and add a narrowly gated connection to fresh invocation, rather than another interpreter or another accumulator.

**Rationale and exact seams:** At the pinned Core revision:

| Source locator | Existing mechanism or remaining cost |
| --- | --- |
| `crates/behavior-store/src/store.rs:636–690` | Private `SnapshotIdentity` and `ValidatedSnapshot`, bound to exact history, schema, admitted behavior encoding and validation profile; optional prepared snapshot/checked evaluation. |
| `store.rs:1111–1129` | Open begins cold; backend mutation invalidates checked snapshot state. |
| `store.rs:122–193` | `versions_for` still enumerates, decodes and hashes entity versions and reconstructs an accumulator; cached validity does not provide a maintained exact version map. |
| `store.rs:2056–2120` | Fresh unified invocation validates the parent, then calls ordinary `invoke_resolved`; it does not automatically select the existing prepared evaluator. |
| `crates/behavior-core/src/invocation.rs:1087–1140` | One existing envelope builder already accepts an internal reproduced decision; fresh invocation currently passes none. Connect a genuinely checked prepared evaluation to this builder instead of constructing different JSON. |
| `crates/behavior-core/src/eval/prepared.rs:68–93,168–225,264–325` | Checked parent, private epoch, changed-row preparation and conservative eligibility already exist. |
| `crates/behavior-store/src/store/incremental/mod.rs:31–163`; `store.rs:2638–2662,3194–3211` | Candidate carry-forward, actual Applied-only promotion, prepared commit rederivation and checked-result retention. |
| `crates/behavior-core/src/eval.rs:2779,2889,4550–4605` | Ordinary full provider snapshot and full legacy facts/observation materialization remain relevant costs. |
| `crates/behavior-store/src/muhash.rs`; `store.rs:2482–2634` | Incremental accumulator already exists; no new state identity algorithm is needed. |

015 supplies conditional row/frame and positive-reference arguments; 029 adds prepared state, supported global counts and observer obligations. `specs/029-incremental-global-validation/evidence/README.md` explicitly excludes unified invocation from its optimized scope and distinguishes written conditional arguments from native machine-checked proofs.

**Alternatives considered:** Public-only wrapping cannot attach a validated version view or prepared result to the fresh invocation path. Routing through deprecated evaluate and calling it the same endpoint is not a valid comparison. Copying the entire historical repository would waste enormous disk space; exporting only declared required Git trees/manifests is sufficient.

## R4 — Isolated Core seam, unchanged production

**Decision:** Develop under `experiments/reuse-study035/`. Export pinned Core production sources/manifests and required gate inputs from Git objects to its ignored private root. Commit reviewable patches separately. A research-only feature enables typed strategy/diagnostic adapters in that export. Production crates in the checkout, published APIs, Backend contracts and original formats are not edited. Shared native scalar evaluation, invocation envelope, commit derivation and canonical encoding remain authoritative.

The reference strategy calls the unchanged ordinary path. An additional upstream oracle package without candidate patches checks that strategy against exact pinned public Core/Safety. Candidate adapters may expose private facts only inside the research export; there is no imported Boolean/JSON constructor for checked authority. Every exported/adapted source and patch is byte-bound at freeze; Cargo metadata must show one engine/core identity for worker and Safety code. The export must be its own minimal research-owned Git root/index containing the nonempty complete declared source inventory, so canonical scripts using git ls-files cannot silently discover the enclosing repository. Include unchanged scripts and every fixture/workflow/consumer/ARCHITECTURE input they require. Set BEHAVIOR_BIN to the actual candidate CLI in the private target root for determinism checking. Record this local index separately from pinned upstream identity; do not inject its new revision into normative requests or metadata.

**Alternatives considered:** A production patch, unsound access to private authority from a wrapper, or a separately handwritten full evaluator. These either exceed scope or create unnecessary semantic divergence.

## R5 — Make the four treatments operationally distinguishable

**Decision:** All four first acquire the same independently expected prefix and valid parent with the same backend type and subject. G controls authorization to retain already checked semantic grounds across the boundary; V controls derived execution/dependency/property/version structures. A research-only reset separates authorization from retained data. G0 must genuinely re-establish facts needed to authorize any V data and pay that cost. V0 uses reference execution/property/materialization work; V1 applies the declared incremental mechanism where justified.

The matrix is R=G0V0, G=G1V0, V=G0V1, GV=G1V1. Data without authority is not a checked ground. If the implementation cannot separate these factors, report the affected comparison as confounded/unsupported rather than secretly retaining a stronger ground in V.

**Rationale:** 034 `history_check.rs:269–270` extracts the checked Capture backend into memory and reopens it; its earlier cache control did not establish distinct binaries. Merely retaining the actual checked Store is a useful control, but changing Capture to Memory or discarding both factors at once is not a clean causal seam. The common starting prefix is established independently for each sample; none of the treatments gets a trusted producer flag.

**Alternatives considered:** Comparing fresh B with resident B conflates lifecycle operations. Treating V as allowed to retain valid views while denying that it retains checked facts would invalidate the intended comparison.

## R6 — Preserve exact observation and identity work

**Decision:** Separate semantic decision/view work, required canonical observation/identity work, and the complete ordinary operation. Finish any mandatory original record encoding, hashing, bundle construction and publication before calling the operation complete. Reuse unchanged immutable components only under a complete reconstruction/observer argument. Rebind parameterized observer recipes to the current normative context; never copy raw evidence with stale phase/history/subject coordinates. A compact recipe is optional research data, not a replacement format.

**Rationale:** Pinned 029 correctness has a separate observer/frame obligation: values alone do not preserve ordered reads, locations, memo effects, phase coordinates, skipped entries or errors. Existing history/decision identities hash population-shaped canonical records. A local decision does not prove a local complete commit. `current_history` hashes current/previous records, not the full prefix; MemoryBackend clones those records. All such physical work remains counted.

**Alternatives considered:** Moving required hash production into later optional audit, or comparing candidate sparse output with reference full output. Both would weaken the measured contract.

## R7 — Concrete proof scope with explicit native correspondence

**Decision:** Add Lean 4.30.0 finite-map semantics for the exact finish fragment, with independent reference and incremental definitions, ordered observation assembly, dependency/view reconstruction, exact subject/authority lifecycle and a semantic-work model. Prove the [required roots](contracts/correctness.md) over arbitrary finite states. Reuse only the necessary pinned Safety lifecycle closure. Audit frozen exact theorem types, transitive axioms and fresh kernel replay.

**Rationale:** 034 `continuation_equivalent` assumes exact edges; Core032's history result is a separate numeric fragment. Neither proves this native finish optimization. Safety `crates/behavior-models/proofs/safety/LifecycleDependency.lean:23–82` proves concrete operation preservation, including childState terminal=true; projection to that model remains an explicit bridge. The exact-result model must retain Gone versus Abandoned even though the Safety projection may collapse them. Native coordinate/count representability remains an explicit premise, with original overflow/error/fallback behavior. Freeze the complete original observation field inventory and prove context-sensitive recipe assembly; no shared omitted field or hidden O(H) history-list append can satisfy the exactness/work claims.

The proof-to-native register must name every extraction, selector, evaluator/observer, canonicalization, backend and authority premise. A checked mathematical fragment is not a proved entire Rust implementation. Native architectural findings remain conditional wherever that bridge remains unproved.

**Alternatives considered:** Finite differential tests as proof, an exact-edge assumption hiding the desired result, or a full-language native extraction theorem in this first experiment. None meets the bounded question honestly.

## R8 — Build identity and activation controls

**Decision:** Use one uniquely named standalone Cargo package with four explicit bin targets and mechanism-specific entry points, plus one separate unpatched upstream oracle package. One declared private target root can share immutable dependencies; do not build same-name sibling copies. Retain each actual executable, exact build command/metadata, source/patch hashes and embedded treatment identity. Before growth runs, require different bytes across all four treatments and controls that detect wrong mechanism activation.

Counter mode and timing mode use the same retained worker with explicit diagnostic gating. Detailed counters are disabled during timing and enabled in separate work observations. Compare complete semantics across modes and disclose residual inactive-hook overhead; do not subtract an estimated constant. Counter state is diagnostic and never authority.

**Alternatives considered:** Distinct labels only, distinct hashes only, or four duplicate target trees. Labels do not prove treatments, hashes alone do not show the right mechanism ran, and duplicate target trees waste the bounded cache budget.

## R9 — Frozen matrix, lifecycle accounting and feasibility gates

**Decision:** Use five cells (N,H)=(2,8),(64,8),(256,8),(2,32),(2,128), D=1 finish, three timing repetitions per treatment/cell and one separate work observation: 60 timing plus 20 work observations. Each is prepared from the same canonical parent for its cell, with genuine independent acquisition; program checking is reusable only inside a process after actual checking of the exact unchanged subject. A treatment/cell process may group its three timing and one work samples; each sample gets a fresh canonical parent and acquisition. No earlier accepted result is substituted.

Run the unchanged-content follow-up finish and a reference-fallback→re-establishment continuation as separately labelled correctness/drain work. Fixed rotated treatment-group order across cells avoids always putting R first; OS cache remains uncontrolled and disclosed. No full population/history cross product is needed. The costly (256,128) cell is not part of campaign-001.

Freeze the numerical research discriminators in [campaign.md](contracts/campaign.md): locality first, ≤50 ms local semantic median and ≥4× improvement at N=256 for a strong local candidate, and separately evaluate complete-operation benefit/regression. They are proposed research gates, not p95 or production/durability promises.

**Alternatives considered:** Repeating the entire 034 pilot, adding the most expensive cross-cell first, or selecting thresholds after observing results. Each adds cost or risks a biased conclusion without clarifying the two hypotheses.

## R10 — Resource and failure discipline

**Decision:** New 035 has its own one-time frozen 7200-second campaign clock; it does not continue the expired 034 clock. Corrections within 035 inherit its original clock. Keep 1800-second preparation/scenario, 900-second process, one worker/CPU, 8 GiB/process, 2 GiB artifact plus 2 GiB new cache and 4 GiB combined growth, 16 GiB start floor and 2 GiB emergency floor. Reserve 600 seconds for closing and independent assessment. Bootstrap must bind built binaries before any role that would create the prepared manifest. No new proving backend, download, retry, source mutation or raised ceiling.

Reimplement the small ownership/profile wiring under 035, reusing reviewed recorder/proof protocols and tests rather than importing 034 modules with hardcoded output roots. Development red/green receipts are not cold campaign samples. The actual canonical repository gate must also run against the research export under the remaining limits; a scoped pass cannot replace a failed gate or authorize integration.

**Rationale:** 034 demonstrated launcher dispatch, bootstrap ordering and shared-target failures. Its recorder scopes are hardcoded (`recorder.py:38–46`); importing it unchanged would monitor/write the wrong experiment. Five old basis medians sum to roughly 20 seconds; the resulting acquisition sizing suggests this bounded matrix is plausible, not that 035 is known to fit its budget.

**Alternatives considered:** Reusing the old source/output roots, silently resetting freeze after a failure or treating an actual resource stop as proof failure. These destroy provenance or conflate scientific outcomes.

All planning choices are resolved. Mathematical correctness, seam implementation, activation and cost are deliberately unproved experiment hypotheses with explicit gates, not unresolved product requirements.
