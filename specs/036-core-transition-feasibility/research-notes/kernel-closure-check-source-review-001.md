# Optional named-root export closure: pinned source review 001

Status: **UNSELECTED research note; source-only review, not implemented or validated.**
Scope: pinned Lean 4.36.0-rc2 SDK sources, current `check_proofs.py`, and Core036 correctness/proof contracts. No builds, tests, probes, downloads, private output inspection, or evidence/selection changes were performed for this note. No runtime, cost reduction, native closure, or TCB reduction is established.

## Decision

An executor-owned `leanexport ProofRoot -- <exact named roots>` followed by `leanchecker --from-export exported.ndjson` is a plausible optional way to kernel-check the selected roots' complete dependency closure from an empty environment. It is **not presently a drop-in acceptance replacement**: the current checker hard-codes `--fresh`, and export success alone does not establish root coverage, expected types, allowed axioms, or source correspondence. The route would retain the same Lean kernel/replay implementation and add an export/parser/provenance boundary, not provide an independent verifier. [C:256–260][K:60–90][R:58–62]

The coverage sets differ: current `--fresh` replays the imported module's entire constant map, whereas named export recursively selects roots and dependencies. Thus “same fresh checking” can mean the same empty-kernel authority for **all required root dependencies**, not identical all-imported-declaration coverage. This distinction must be explicit before selection; the contract requires all transitive dependencies, and a helper still establishes only its declared subject. [K:41–43][B:458–472][C:165–170][CC:28–38]

## What the pinned sources establish

- CLI parsing imports the named module(s), then uses the list after literal `--` as constant names. The delimiter is preserved by the option partition because it has length two. An omitted delimiter exports the environment default; an empty named list exports no roots. Exact executor-generated arguments matter. [E:11–19][B:463–472]
- For axioms, definitions, opaque declarations and theorems, export traverses types and applicable values through `getUsedConstants` before serializing the declaration. Theorem records contain a numeric name-table reference, type, value, universe parameters and `all`; a name string occurring elsewhere is no evidence that the theorem was emitted. [B:252–306][B:418–429]
- Constructors route to their parent inductive; recursors route through `all` inductives. Export groups mutual inductives, constructors and recursors, gathers constructor/type and recursor-rule dependencies, and initializes a recursor map from the whole imported environment. Literal export also adds Nat/string support dependencies. This is more than following explicit theorem `.const` nodes. [B:79–92][B:233–244][B:323–365][B:392–426]
- Export replay parses an untrusted constant map, creates `mkEmptyEnvironment`, then calls the same `Kernel.Environment.replay` used by fresh replay. Replay sends declarations through `addDeclCore`; it reconstructs mutual inductive declarations and compares supplied constructors/recursors with kernel-generated ones. [P:20–22][K:41–43][K:60–74][R:58–62][R:102–128][R:144–164]
- Quot is a special case: export emits Eq plus the full Quot package; checker removes the three automatically generated quotient declarations before replay and compares supplied quotient entries against final kernel entries afterward. The initial “accepts” message precedes that postcheck: require terminal exit zero, not a matching stdout line. [B:308–322][K:68–90]

## Gaps the optional wrapper must close

1. **Root presence and kind.** The export checker has no expected-root argument. Its parser discards the first line without validating metadata, and its replay loop can have no declarations. A metadata-only or empty file can therefore return success by source-level inference; no such control was executed here. Validate metadata independently, require every exact contracted root once as `thm`, and reject absent/replaced roots even when the kernel accepts the remaining file. [K:60–90][P:502–525][R:176–190]
2. **Names are structured, not searchable text.** Start with index `0 = anonymous`; resolve each `{"in": i, "str": {"pre": p, "str": s}}` or `num` record into a typed Name component chain. Require existing prefix indices, fresh nonnegative integer indices, and exact structural name equality. Numeric and string components must remain distinct; dotted pretty strings can alias structural names. Resolve each declaration's numeric `name` against this table. Native roots currently permit only ordinary identifier components, but dependency names can be private/numeric. Reject duplicate indices, unresolved references and duplicate structural declarations, including ones nested in an inductive block. Lean's parser already rejects duplicate indices/declarations; the audit scanner must agree with its meaning. [B:53–60][B:101–128][P:37–64][P:99–126][P:304–317][P:458–499][C:46–65]
3. **Unsafe/partial omissions.** Export defaults to skipping unsafe declarations; `--ignore-missing` can silently omit missing names. More critically, replay skips both unsafe and partial constants even if present. Pin exact argv and forbid both omission/unsafe flags and unknown flags. Require explicit `isUnsafe=false` on `axiom`, `opaque`, and every nested inductive `types`/`ctors`/`recs` declaration; require definition `safety="safe"`, rejecting `unsafe` and `partial`. The opaque parser defaults a missing unsafe field to false, so require the field explicitly for this pinned writer. `thm` has no safety field: require its actual theorem kind and completed body checking. [B:79–92][B:252–306][P:261–271][P:294–334][P:355–455][R:176–189]
   Safe opaque/theorem declarations are not trusted leaves here: export traverses both their types and values, and replay submits their bodies to the kernel. A skipped unsafe/partial transitive declaration cannot acquire a checked body merely by being behind a safe wrapper; any surviving reference must pass real kernel checking against the empty replay environment. Missing-dependency rejection is expected, but was not executed here; include direct and safe-wrapper versions as controls rather than assuming that a `safe` label proves closure. [B:283–306][R:74–101][R:176–189]
4. **Axiom identity is not axiom validity.** The kernel admits axiom declarations; it does not enforce the project allowlist. Enumerate actual `axiom` declarations via resolved names and reject everything except `propext`, `Classical.choice`, `Quot.sound` (including `sorryAx` and target-result axioms). Retain the current audit's checks that used foundations have axiom kind and definitionally equal canonical types. Compare exported axiom coverage with the union of the per-root audited inventories; any discrepancy needs rejection/explanation, not silent acceptance. A familiar foundation name with an altered type remains dangerous if export bytes are not bound to the audited environment. [R:98–99][P:261–271][C:85–115][PC:94–98]
5. **Expected-type and source binding.** Preserve executor-frozen expected types, `.thmInfo` checks, `isDefEq` checks and per-root transitive axiom collection; NDJSON name/kind scanning cannot replace these semantic checks. Preserve fresh compilation into an empty compiled directory, exact selected source checks before/after, generated audit digest, and caller-owned extraction/cfg/tool provenance. Bind the export to those exact fresh `.olean` subjects and audited environment, the pinned exporter/checker executables, complete argv/environment, and immutable export bytes actually consumed; supplied exports, cached objects, substituted output or mutable paths cannot gain authority through kernel success. If that provenance bridge cannot be established, retain `--fresh`. [C:68–115][C:162–199][C:230–274][CC:11][CC:28–40]
   Conditional conclusion: with a demonstrated identity bridge and the pinned exporter trusted to faithfully serialize that audited environment, the existing fresh-compilation audit can remain the expected-type/axiom semantic authority; a second `isDefEq`/axiom audit from NDJSON is not inherently required. Without that bridge, audit the replayed declarations against independently frozen expected types and canonical foundations, or retain the default. Exported names and a successful kernel check alone do not bridge the two environments. This is a proposed trust/provenance argument, not an established implementation result. [C:68–115][B:252–306][K:60–90]
6. **Closure bookkeeping is not kernel evidence.** Do not hand-prune an inductive package or treat `all` name arrays as declarations. Retain the pinned writer's full package, validate references/kinds, and require replay and its constructor/recursor/Quot checks to finish. Mutual/ nested induction and recursor-rule dependency completeness still need practical controls: comments that export is closed are not executed evidence. [B:323–426][B:458–472][R:102–164]

## Smallest safe next construction, before adoption

Keep all existing source compilation and theorem/type/axiom audit stages. In a separately declared optional checker mode, generate exact root arguments from the same frozen `roots` contract, export from the fresh final proof module under the same pinned SDK and controlled lookup environment, seal/record the output, validate the structured declaration inventory above, and run the pinned checker on those exact bytes. Record a distinct checker mode and root/axiom inventory in its receipt; do not relabel the existing all-imported `--fresh` receipt. The existing default remains until positive/negative controls demonstrate this branch. No implementation is supplied here. [C:172–199][C:230–274][CC:38][CC:70–77]

Controls below are **proposed, not run**. Run them prospectively in fresh isolated subjects; retain actual rejection exits and source mutation/rebuild evidence as required by C09. A broad `--fresh` comparison on small controls supplies a useful differential check, not a proof of exporter completeness for every future module. [CC:70–77]

| Control | Required distinction |
| --- | --- |
| Positive: ordinary theorem with a nontrivial dependency chain | Exact expected root kind/type and same root axioms pass both modes. |
| Positive: shared/multiple roots; type-only dependency; safe opaque value | Every contracted root and its type/value dependencies are retained; shared nodes do not create false duplicates. |
| Positive: mutual/nested inductives, constructor use and recursor-rule RHS dependency | Full packages replay; kernel-generated constructor/recursor comparisons pass. |
| Positive: Quot plus all used foundations; Nat/string literals | Quot postcheck and implicit literal-support dependencies pass with canonical foundation types. |
| Negative: empty/meta-only export, omitted/renamed root, root replaced by valid axiom/definition | Wrapper rejects even if the standalone export checker accepts the file. |
| Negative: altered expected type; forbidden axiom; allowed foundation name with wrong type | Current semantic audit and bound export inventory reject; allowlisted spelling alone cannot pass. |
| Negative: removed dependency, constructor/recursor/rule mutation, quotient mutation | Coverage validation or actual kernel/postcheck rejects; require full child completion. |
| Negative: unsafe/partial root or dependency; missing unsafe field; missing-name/unsafe/unknown flag | Wrapper rejects omissions and replay-skipped declarations. |
| Negative: duplicate/missing name indices, string/number component confusion, malformed NDJSON/metadata | Strict scanner agrees with pinned parser and rejects ambiguity or incomplete coverage. |
| Negative: changed source/cfg/generated body, stale object, substituted/mutated export after audit | Existing source/rebuild controls and the new artifact binding fail; a valid unrelated proof cannot stand in for the declared subject. |

Even a successful future helper experiment would remain helper-scoped. Native acceptance still requires every B01–B10 expected subject, source/generated/cfg binding, real controls and full correspondence; no root list or proof availability is fabricated by this note. [C:165–170][C:270–273][CC:17–38][PC:2–18]

## Primary sources and exact line links

`E`, `B`, `P`, `K`, `R` below all refer to the pinned SDK source tree `/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/`.

[E:11–19]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport.lean:11
[B:53–60]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:53
[B:79–92]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:79
[B:101–128]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:101
[B:233–244]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:233
[B:252–256]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:252
[B:252–306]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:252
[B:269–294]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:269
[B:283–306]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:283
[B:308–322]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:308
[B:323–365]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:323
[B:323–426]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:323
[B:392–426]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:392
[B:418–429]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:418
[B:458–472]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:458
[B:463–472]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Basic.lean:463
[P:20–22]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:20
[P:37–64]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:37
[P:99–126]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:99
[P:261–271]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:261
[P:294–302]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:294
[P:294–334]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:294
[P:304–317]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:304
[P:319–334]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:319
[P:355–455]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:355
[P:458–499]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:458
[P:502–525]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanExport/Parse.lean:502
[K:41–43]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanChecker.lean:41
[K:60–74]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanChecker.lean:60
[K:60–90]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanChecker.lean:60
[K:68–90]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/LeanChecker.lean:68
[R:58–62]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:58
[R:74–101]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:74
[R:98–99]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:98
[R:102–128]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:102
[R:102–164]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:102
[R:144–164]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:144
[R:176–189]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:176
[R:176–190]: /var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Replay.lean:176
[C:46–65]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:46
[C:68–115]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:68
[C:85–115]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:85
[C:162–199]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:162
[C:165–170]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:165
[C:172–199]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:172
[C:230–274]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:230
[C:256–260]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:256
[C:270–273]: /data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:270
[CC:11]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:11
[CC:17–38]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:17
[CC:28–38]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:28
[CC:28–40]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:28
[CC:38]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:38
[CC:70–77]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:70
[PC:2–18]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract-002.json:2
[PC:94–98]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract-002.json:94
