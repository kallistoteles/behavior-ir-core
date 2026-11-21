# Source review of the legacy parametric audit import topology

Status: source-only pinned Lean 4.36.0-rc2 import/API research. No Lean execution, builds, tests, diagnostics, compiled-environment/binary/IR/private-output reads, or selected/private-file edits occurred. Only this new unselected note was written. The reported Actual474 rejection of `Nat.instCommMonoid._proof_1` is parent-provided context, not an independently inspected run result. Native proof remains **unestablished** and feature completion remains **false**.

**The legacy audit driver has the proposed full-transitive-import semantics, but every selected downstream consumer that imports it must also be legacy.** A `module` consumer directly importing a legacy audit is explicitly rejected by the pinned importer. The parent-proposed selected chain—legacy Audit, legacy NativeParametricCanonicalLaws, legacy selected ProofRoot—is compatible with this requirement. Upstream checker/model/generated-source modules may remain `module` files.

## Exact header and import behavior

`HeaderSyntax.isModule` tests whether the optional header `module` token is present. `HeaderSyntax.imports` sets each ordinary import's `isExported` flag when that token is absent (`publicTk.isSome || moduleTk.isNone`). The frontend then chooses `.exported` for a command-line module root, `.server` for a server module root, and **`.private` for a non-module root**, passing the chosen level to `importModules`. [Elab.Import:26–45][I26], [Elab.Import:141–160][I141]

Thus the proposed driver:

```lean
import NativeParametricConservation
import NativeParametricCanonicalSource
#core036_parametric_audit
```

with no `module` header is a genuine legacy/non-module root. It is not merely a module with different spelling of public imports. This is a conceptual proposed header; no file was changed or compiled by this research.

`Environment.importModulesCore` documents the consequence directly: when the module system is disabled for the root, it imports all transitively referenced modules and ignores module-system annotations along the way. The implementation sets:

```text
importAll := globalLevel == .private || importAll && i.importAll
```

on every recursive edge. At `.private`, this is always true, and the accompanying data-reachability rule includes each transitive dependency. This is stronger than `import all` on a single edge in an otherwise participating module, which does not automatically rewrite every child's ordinary import annotation. [Environment:2472–2547][E2472]

For a module artifact, `ImportedModule.mainModule?` selects `.private` data when `importAll` is true, otherwise `.exported`; `ImportedModule.getData?` falls back to the sole exported part for an artifact that was itself built as non-module. The `finalizeImport` implementation builds the kernel/private constant map from that selected main-module data, and its comment confirms that `.private` import level loads every module as `importAll`. [Environment:2388–2398][E2388], [Environment:2672–2709][E2672], [Environment:2742–2747][E2742]

`Environment.setExporting` is a no-op when the current environment's `header.isModule` is false. Consequently the checker's explicit nonexporting view and ordinary declaration lookups in a legacy audit see the selected complete kernel/private import data rather than switching back to a restricted public module view. A view switch alone in a module root cannot recover private data that was never selected for import. [Environment:731–739][E731], [Environment:1955–1964][E1955], [Environment:2803–2818][E2803]

## Why this can distinguish a real proof from its exported axiom presentation

The pinned `AddDecl` source explicitly presents a theorem as an axiom in the exported module view when `!forceExpose && env.header.isModule`. The private view retains the theorem value for checking. The export/import source likewise distinguishes full private data from exported data. This explains how a direct dependency walker can encounter a public axiom presentation where a richer artifact contains a theorem body. It does **not** establish the actual private declaration kind or body of the specific parent-reported Nat proof; no artifact was inspected here. [AddDecl:119–137][AD119], [Environment:2211–2218][E2211]

Loading the actual proof-bearing declaration lets the existing direct traversal examine its type/value and recurse to its real dependencies. An actual `.axiomInfo` remains an axiom and remains subject to the unchanged foundation allowance. The proposal does not require axiom-cache summaries, an extra allowed axiom, a name-based exception, or treating a displayed axiom as if it had a proof. The checker must continue rejecting genuine unallowed axioms and missing dependencies.

Persistent extension data follows the same distinction: `exportEntriesFn` documents `.exported` imports under ordinary module-system use, `.private` under full imports, and says non-module files use only the private export field. This also supports loading the original matcher metadata through the richer path rather than weakening the matcher provenance or safety tests. [Environment:1955–1964][E1955]

## Required selected consumer topology

The pinned importer enforces this exact compatibility rule:

```text
if globalLevel < .private then
  for each direct import:
    if !importedModule.isModule then
      throw "cannot import non-`module` ... from `module`"
```

Therefore **changing only Audit to legacy while leaving CanonicalLaws as a `module` file is incompatible**. `public import`, `import all`, or a publicly exposed certificate does not remove that direct-import guard. A module ProofRoot importing the newly legacy Laws would fail by the same rule. [Environment:2480–2484][E2480]

The parent-proposed compatibility chain is:

```text
module checker/model/generated-source inputs
                 ↓ imported by
legacy parametric Audit
                 ↓ imported by
legacy selected NativeParametricCanonicalLaws
                 ↓ imported by
legacy selected ProofRoot
                 ↓ imported by
existing legacy theorem audit/export tooling
```

Legacy roots can import participating module files; the rejection above goes in the opposite direction. No source-level reason requires converting every upstream model, projection-laws or generated-source module merely because the selected consuming audit chain is legacy. Any other selected participating module that directly imports one of the new legacy files would still require its own compatible topology; no complete repository import inventory was inspected for this note.

The new conservation theorem remains a genuine exported theorem in legacy Audit. `addDecl ... (forceExpose := true)` is supported independently of module mode and preserves its full representation; with a legacy header the theorem-as-axiom export branch is also inapplicable. `writeModule` saves a non-module file using `mkModuleData` at its default `.private` level, whose constant collection takes the full kernel stage-two declarations. Keeping the frozen public certificate name, kernel-check option rejection, successful completed checking and transitive root reference remains necessary. [AddDecl:123–127][AD123], [AddDecl:235–243][AD235], [Environment:2201–2226][E2201], [Environment:2243–2259][E2243]

## Negative controls and remaining limits

The proposed copied negative sources should use the same legacy import regime as the positive audit: omit `module` and use ordinary imports of the relevant laws/checker. This avoids a negative test rejecting earlier on public-view proof erasure while the positive runs with complete private proof bodies. It does not establish that any particular mutation rejects for the intended reason; that must be checked by the root's separately authorized execution workflow.

The richer import regime loads more transitive data (and the importer selects IR under `importAll`), so its actual resource use is an execution question. It changes available evidence, not the allowed-axiom set or the actual-source/native contract. The complete root's independently expected type, certificate type/value, raw axiom inventory, fresh kernel acceptance and native refinements still need their unchanged checks. No compilation, proof acceptance, full error transport or native admission is claimed here.

[I26]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Import.lean:26
[I141]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Import.lean:141
[E731]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:731
[E1955]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:1955
[E2201]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2201
[E2211]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2211
[E2243]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2243
[E2388]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2388
[E2472]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2472
[E2480]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2480
[E2672]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2672
[E2742]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2742
[E2803]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Environment.lean:2803
[AD119]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:119
[AD123]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:123
[AD235]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/AddDecl.lean:235
