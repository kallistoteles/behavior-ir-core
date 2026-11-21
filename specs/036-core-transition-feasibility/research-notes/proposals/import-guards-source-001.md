# Declared import guards: static source audit

Status: **new, unselected research note**. This is a source audit, not compilation,
proof, admission, or an observation about a0435. No build, test, download, process
inspection, private artifact, raw IR, or execution output was used. The two
protected binary artifacts were not read, hashed, or changed. Reported unit-test
passes are outside this audit's evidence.

The proposed seam is substantially present, but the collection runner does not
keep its before/after import and producer checks around its complete command
sequence. Correct those small guard gaps before treating a future run as evidence
for its declared representation subjects. Native/API/model admission remains
unestablished: the correctness contract explicitly distinguishes source hashes and
separate model laws from actual correspondence, and requires exact subjects,
fresh kernel closure and actual controls ([correctness.md:11](../../contracts/correctness.md#L11),
[correctness.md:28–40](../../contracts/correctness.md#L28)).

## Definite missing guards

1. **The negative controls run outside the import recheck interval.**
   `declared_environment_v2` freezes the import metadata and checks actual
   inventory, symlinks, sizes and hashes; `check_declared_proof_v2` invokes that
   closure initially and at its final source verification
   (`experiments/transition-study036/check_proofs.py:228–257,296–312,404–406`).
   The collection runner then executes the default smoke and both direct-Lean
   negative controls, but its final check covers only support source paths and
   `Types`; no imported-context or parent-layout recheck follows those commands
   (`experiments/transition-study036/native_collection_layout_probe_v2.py:437–529`).
   It nevertheless writes `readonly_import_files_rechecked=True` at line 541.
   A persistent import mutation/addition occurring during a negative control is
   therefore outside the implemented final guard. This is a definite coverage
   omission, not evidence that a mutation happened. The proposal explicitly
   requires the recheck after commands including both controls
   (`nonpos-import-reuse-001.md:131–143`).

   **Minimal correction:** obtain/retain the existing imported-context recheck
   closure in the runner and invoke it immediately before and after each negative
   control, then once before final result creation. At finalization also reverify
   each original shared `artifact_ref` and repeat the existing parent
   `import_layout(...) == expected` comparison. The corresponding established
   after-use source pattern is `syntax_resume_v2.py:220–223`. No new runner or
   proof architecture is needed.

2. **The final full365 check is against a live producer file, rather than its
   frozen generated-entry hash.** All four generated originals are size/hash
   checked at collection-runner lines 83–102. `Types` is later read byte-for-byte
   at line 211, copied unchanged at lines 315–316, and the proof checker binds the
   copied sources using hashes computed at lines 430–432. The final test compares
   that copy with the then-current original at lines 527–529. There is no final
   recheck of the four original paths against their recorded `generated` rows.
   Thus a producer change between the initial verification and the read/copy can
   become the checker-bound source; equality of the two later copies does not
   recover the original closed365 binding. This is a definite missing frozen-hash
   guard; an actual concurrent producer change is hypothetical.

   **Minimal correction:** retain each generated row alongside its path and check
   its recorded size/hash again before source materialization and after all
   commands. Preserve the existing byte-for-byte `Types` copy and final copy
   equality. `syntax_resume_v2.py:224–229` already shows the final original-file
   hash check. This directly supports the unchanged-full365 invariant in
   `nonpos-import-reuse-001.md:25–28,74–80,138–140`.

3. **Parent identity validation is weaker than the source-owned reuse contract.**
   The new runner checks a0353's ID, failed stage, null source error, fixed result
   location and matching result/checkpoint subject, then validates a hash-bound
   context result and exact resolved compiled layout
   (`native_collection_layout_probe_v2.py:344–383`). Those are useful checks.
   It does not require the checkpoint itself to occupy the expected attempt
   location, inspect `outcome.operational`, compare the source-subject frozen
   configuration, or validate the complete prerequisite command inventory as
   `syntax_resume_v2.py:26–50,69–106` does. In particular, testing each context row
   against its own `expected_exit_code` at collection-runner lines 366–369 does
   not independently require the expected modules/control coverage; an empty
   command list vacuously satisfies this expression. The owning producer actually
   emits an independently determined module/control sequence and checks it
   (`nonpos_context_v2.py:76,92–110,149–170,171–200`).

   **Minimal correction:** check the exact parent checkpoint location and closed
   operational state; bind its frozen selected configuration and require the
   expected NonPos/root/control command coverage and independently fixed expected
   outcomes. Reuse the existing narrow validation logic where applicable. Do not
   require the overall failed a0353 to become a successful attempt, and do not
   require old353 `Types` to equal new365 `Types`: the old generated namespace is
   intentionally excluded. This is a definite validation difference from the
   proposal's producer-binding requirement (`nonpos-import-reuse-001.md:36–48,
   124–130`), not proof that the selected parent has incorrect provenance.

## Guards that are present at source level

- **Inventory/hash/symlink/collision:** the checker bounds declared entry count,
  per-file and total bytes, freezes tuples rather than retaining mutable caller
  metadata, rejects absolute/parent-relative paths, protected filenames and fresh
  top-level module/Audit collisions, bounds actual traversal, rejects encountered
  symlinks/nonregular nodes, checks exact file coverage, and checks containment,
  size and digest (`check_proofs.py:197–256`). Existing fixture tests cover changed
  hashes, extra files, path order, namespace/Audit collisions, escape, a file
  symlink, unknown fields, boolean counts and metadata mutation
  (`tests/v2/test_declared_imports.py:67–133`).
- **Fresh output/exact path/fixed command construction:** empty compiled output is
  still required (`check_proofs.py:287–303`). Opt-in mode requires exactly
  `[compiled, imports, *dependency_library_paths(backend)]` and returns an empty
  Lake prefix (`check_proofs.py:182–196,256–257`); compilation, export and kernel
  commands name `sdk/bin/lean`, `sdk/bin/leanexport`, `sdk/bin/leanchecker`
  (`check_proofs.py:348–364,378–403`). The caller creates fresh directories, links
  all verified non-old-generated entries, and constructs that exact path
  (`native_collection_layout_probe_v2.py:304–307,375–420`). This verifies source
  command selection, not that a particular SDK binary was executed in a run.
- **Macro/support order and full Types:** `RuntimeNames`, `ArrayLiteralProofs`,
  projection support and impl support precede `TypesExternal`, which precedes
  unchanged `Types`, deferred iterators, `FunsExternal` and laws
  (`native_collection_layout_probe_v2.py:308–324`). The external header publicly
  imports runtime names and publicly meta-imports the three syntax helpers
  (lines 218–227). Their source owners supply the float/name carriers,
  `Array.make` macro, projection tactic, and checked impl elaboration respectively
  (`proofs/Correspondence036/Dependencies/RuntimeNames.lean:5–27`,
  `ArrayLiteralProofs.lean:4–16`, `NonPosForwardProjection.lean:8–31`,
  `ImplDefInferenceSupport.lean:36–88`). No definite ordering defect was found.
- **Default isolation and proof scope:** absent context still requires exactly
  the compiled-only path and retains the Lake prefix
  (`check_proofs.py:171–175`; fixture test at
  `tests/v2/test_declared_imports.py:53–65`). A separate real default smoke is
  programmed at collection-runner lines 437–462; this audit does not claim it ran.
  Expected theorem kind/type, foundation checks, single audit report,
  policy-validated selected-root export and fresh kernel invocation remain in
  `check_proofs.py:85–126,366–406`. Result scope remains explicit and native
  admission/feature completion remain false/unestablished
  (`native_collection_layout_probe_v2.py:549–552`).

## Hypotheses and limits

The import snapshot compares regular-file inventories, not directory inventories:
extra empty directories survive `check_proofs.py:235–246`. Their possible effect
on first-package-root resolution is a hypothesis needing an exact Lean resolver
source check; this audit does not call it an established collision bypass. The
existing owner comments identify package-root precedence
(`nonpos_lean_probe_v2.py:130–150`; `syntax_resume_v2.py:147–158`).

The new fixture tests call `declared_environment_v2`, not the whole runner or a
real compiler/exporter/kernel (`tests/v2/test_declared_imports.py:25,48–51`).
They do not establish complete command-interval coverage, actual macro behavior,
full365 elaboration, negative-control diagnostics, or executed default isolation.
Focused guard tests for the three omissions above are warranted; no result of
the running attempt is inferred here.
