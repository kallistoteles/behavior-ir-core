# Reuse the closed NonPos context for the collection layout probe

Status: unselected proposal, source research only. This note does not establish a
new compilation, admission, native proof, or feature result. No private artifact
or execution output was read for this research.

## Recommended seam

Extend `check_declared_proof_v2` with one explicit, validated read-only imported
context mode that uses the pinned SDK executables directly. Keep its default
behavior and its requirement that the fresh `compiled` directory starts empty.
Stage the closed353 inventory, excluding the complete
`WorkerEntrypointsNames/` subtree, in a separate fresh `imports` directory.
Recompile all support modules needed by the new `TypesExternal` and the unchanged
closed365 `Types` into the empty fresh output. This avoids having to weaken the
empty-output check or place imported siblings in writable output.

The current checker rejects both nonempty output and any `LEAN_PATH` other than
the output directory, and constructs a `lake --no-build env` prefix for every
compiler, exporter, and kernel invocation. These are the two integration barriers;
the existing audit/export/kernel machinery can stay shared.
Sources: `experiments/transition-study036/check_proofs.py:162–211`,
`experiments/transition-study036/check_proofs.py:242–300`.

The existing collection runner already binds closed365 extraction, checks all four
generated files, preserves full `Types` bytes, freezes ten external binding
replacements, supplies independently written expected theorem types, and requests
`selected-root-export-v1`. Preserve those guards. It currently adds only
`NativeCollectionsData` to the external import header, explaining the missing
runtime/parser support at the source level without claiming a fresh diagnosis.
Sources: `experiments/transition-study036/native_collection_layout_probe_v2.py:46–81`,
`:112–177`, `:190–202`, `:234–278`, `:283–323`.

## Context inventory and command choice

Reuse the inventory verification pattern, not the whole syntax resume runner.
`run_syntax_resume` verifies the closed parent, frozen configuration, generated
source equality, every explicit compiled reference, and exact resolved import
layout. Its parent validator intentionally accepts a closed failed parent only
when all prerequisite modules have their expected successful outcomes and the
syntax control has the expected failure. Overall parent failure therefore cannot
be treated as an unconditional rejection or as success authority.
Sources: `experiments/transition-study036/syntax_resume_v2.py:13–50`, `:69–123`.

The checked-in selection explicitly names the old parent and records NonPos,
patched Aeneas root, runtime support, and old generated `Types` artifacts. This is
an inventory declaration, not independent proof that private bytes currently
match it. The runner must perform its existing source-bound verification when
executed. Sources:
`specs/036-core-transition-feasibility/inputs/v2/native-syntax-resume-001.json:3–8`,
`:5768–5773`, `:30176–30181`, `:32615–32620`, `:32660–32665`.

Retain **all verified non-`WorkerEntrypointsNames/` inventory entries**, including
`AeneasMeta/**`, `AeneasMeta.*`, `aeneas_AeneasMeta*.so`, and recorded companions.
An `Aeneas/` plus `Aeneas.*` filter is too narrow for faithful reuse: the established
overlay copies every library top-level entry, and syntax resume materializes
every verified entry. The inventory explicitly records the meta modules and
shared libraries. This research has not derived the subset of shared libraries
strictly needed at runtime; pruning them introduces a separate dependency
question. Sources: `experiments/transition-study036/nonpos_lean_probe_v2.py:130–150`,
`experiments/transition-study036/syntax_resume_v2.py:144–158`,
`specs/036-core-transition-feasibility/inputs/v2/native-syntax-resume-001.json:32246–32251`,
`:32732–32737`.

Retaining the `QualifiedNames*` helper artifacts is compatible with faithful
context reuse. Their source dependency direction is audit/wrong-control to
`QualifiedNamesControl`, then control to `Aeneas.NonPos.Std`; the Aeneas root does
not import those helpers. They need not become new selected proof roots, and
their presence confers no proof authority on the collection laws. Sources:
`experiments/transition-study036/proofs/Correspondence036/Dependencies/QualifiedNamesAudit.lean:1–9`,
`QualifiedNamesWrong.lean:1–4`, `QualifiedNamesControl.lean:1–7`,
`AeneasRootNonPos.lean:1–10`.

The established source records first-root package/namespace precedence and
explicitly keeps imported siblings next to fresh output when a namespace is
shared. Excluding the entire old generated namespace and freshly compiling its
support avoids that shared-namespace situation. Never substitute the old cached
`Types` for the required fresh closed365 source. Sources:
`experiments/transition-study036/nonpos_lean_probe_v2.py:130–150`,
`experiments/transition-study036/syntax_resume_v2.py:147–158`.

Use exactly `[compiled, imports, *dependency_library_paths(backend)]` as the
ordered explicit `LEAN_PATH` and direct `sdk/bin/lean`, `sdk/bin/leanexport`, and
`sdk/bin/leanchecker` for this opt-in mode. The direct compiler pattern and this
search path already exist in syntax resume; the ground probe switches from Lake
to direct Lean after preparing NonPos context. Package paths are derived from a
validated backend manifest. This supports consistent reuse of the explicit
context; it does **not** independently prove a particular Lake version's path
mutation behavior. Sources:
`experiments/transition-study036/syntax_resume_v2.py:179–194`, `:293–308`,
`experiments/transition-study036/ground_lean_probe_v2.py:562–590`,
`experiments/transition-study036/nonpos_lean_probe_v2.py:153–174`.

## Fresh support and unchanged bodies

Freshly compile `RuntimeNames`, `ArrayLiteralProofs`, `NonPosForwardProjection`,
and `ImplDefInferenceSupport` under the generated namespace before
`TypesExternal`, then full unchanged `Types`, deferred iterator definitions,
`FunsExternal`, and collection laws. Match the established external support header:
public `RuntimeNames` plus public meta imports of the other three. Preserve the
collection probe's exact external replacement contract; do not reintroduce the
generic map model while borrowing the header construction. The existing generic
completion helper both rewrites a map axiom and checks its presence/absence, so
its map behavior is a separate concern from support import insertion. Sources:
`experiments/transition-study036/ground_lean_probe_v2.py:58–84`, `:455–485`,
`:623–631`,
`experiments/transition-study036/native_collection_layout_probe_v2.py:150–177`,
`:283–295`.

`RuntimeNames` supplies `F32`/`F64` bit carriers and the generated U64 constant
name; its comments explicitly limit the float claim to encoding carriers.
`AeneasRootNonPos` reexports `Aeneas.NonPos.Std`; the qualified Top source owns
`nonpos_structure` parsing/elaboration. The projection helper adds conjunction
facts for existing continuity proof search, and the impl helper elaborates the
actual type/body, resolves recursive fields, rejects remaining self-references,
and registers a definition. These are source-level support roles, not additional
admission evidence. Sources:
`experiments/transition-study036/proofs/Correspondence036/Dependencies/RuntimeNames.lean:5–27`,
`AeneasRootNonPos.lean:10`, `NonPosQualifiedTop.lean:214–217`, `:351–357`,
`NonPosForwardProjection.lean:8–31`, `ImplDefInferenceSupport.lean:36–88`.

## Invariants of the proposed mode

- Keep `compiled` initially empty; require explicit mode selection and exactly
  the validated ordered search path. Preserve existing callers' stricter default.
- Validate and bind the closed parent, source subjects, tool inventory, complete
  resolved import layout, and each imported artifact before materialization;
  bound traversal and bytes using `import_layout`. Reject root symlinks, escape,
  cycles, absolute/parent-relative destination paths, duplicate destinations,
  protected artifact names, and collisions with any fresh module or `Audit`.
- Create only regular hardlinks/copies in fresh imports; preserve filenames and
  companion artifacts. Never write through imported links. Recheck imported
  inputs and layout after commands, including both negative controls. Reject a
  late import addition or any mutation of an imported inode.
- Keep imported top-level package roots disjoint from fresh module package roots.
  Freshly compile every `WorkerEntrypointsNames` module needed by this probe; do
  not import the old namespace or its `TypesExternal` models.
- Keep source checksums, exact declared theorem kinds/types, transitive foundation
  checks, single audit output, bounded/policy-validated selected-root export,
  export checksum stability, and actual `leanchecker --from-export` execution.
- Use the same direct tool mode and environment for the negative controls. Keep
  the current semantic diagnostics for missing deferred iterators and erased full
  `Value`; an import/parser failure must not count as either rejection.
- Retain scope fields: only declared collection representation subjects can be
  proved; native primitive admission, whole-feature proof, operation semantics,
  ordering/runtime adequacy, and feature completeness remain unestablished.

Existing owners for those guards:
`experiments/transition-study036/native_option_slice_v2.py:44–88`, `:183–195`;
`experiments/transition-study036/syntax_resume_v2.py:107–123`, `:144–158`,
`:220–223`;
`experiments/transition-study036/check_proofs.py:68–127`, `:131–159`,
`:188–207`, `:260–319`;
`experiments/transition-study036/kernel_export_v2.py:51–104`, `:162–173`;
`experiments/transition-study036/native_collection_layout_probe_v2.py:210–229`,
`:325–413`.

The proposed stricter collision, package-disjointness, imported snapshot, and
command-mode rules are recommendations, not claims that the current checker
already implements them. Reusing `run_controls` or `run_syntax_resume` wholesale
would also inherit unrelated diagnostic result protocols; sharing the existing
declared-proof engine keeps this probe's exact expected subjects and fresh
selected-root kernel checks together. Sources:
`experiments/transition-study036/value_dictionary_probe_v2.py:92–121`,
`:188–259`, `experiments/transition-study036/check_proofs.py:175–180`.
