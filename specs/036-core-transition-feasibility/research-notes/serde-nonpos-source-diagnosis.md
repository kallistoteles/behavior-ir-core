# Actual331/332 Serde continuity diagnosis

Research date: 2026-11-18. This is a read-only source investigation, except for creation of this note. No builds, tests, downloads, process inspection, input edits, or private-attempt edits were performed. Actual332 was live when assigned; the observations below concern its retained stdout and copied sources, not a closed attempt result. No new continuity theorem or native proof was checked. B01–B10 remain unestablished.

## Findings and confidence

There are two distinct problems. The generated Vec and BTreeMap bodies exist and fail while proving continuity through a fixed serializer's dictionary arguments. `Value.serialize` is an opaque function axiom whose required continuity is absent. Adding a law for the latter would not diagnose the former. Actual stdout also contains an earlier `Option.serialize.cont_11 (failed)` warning, which is useful for minimizing the first problem ([stdout:618](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt:618), [Vec failure:843](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt:843), [BTreeMap failures:1077](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt:1077), [opaque Value failure:1401](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt:1401)).

The strongest supported localization is `nonpos_proj` / the application-to-a-varying-dictionary path. The exact residual goal of each standalone `failed` is **not retained** in stdout, so a precise claim about a particular implicit binder, failed definitional equality, or exhausted conjunction-search depth would exceed the evidence. The next declared probe should retain that goal and the simplified `Fix.cond` hypothesis before changing semantics or resource limits.

## Actual source path

Actual331 uses the retained tool292 translator; its source-support selection includes `serde_core::ser::impls`, not the `serde_json::value::ser` implementation. Tool292's recorded pinned Aeneas commit is `1dc8ad31b1b062a77c50e29144a6c7bba955fa09`, with the declared recursive-traits map repair ([actual331 selection](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/result.json:3099), [tool292](/var/tmp/behavior-ir-core036-v2/w001/nonpos-translator/a0292/result.json:86)). The extraction frontend explicitly emits `nonpos_continuity` only for functions with bodies and nonpositive dictionary parameters; it deliberately skips opaque functions. The constructor generator nevertheless supplies `(by nonpos_cont 5000)` for every generated nonpositive implementation ([Extract.ml:3138](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-translator/a0292/workspace/aeneas/src/extract/Extract.ml:3138), [Extract.ml:3785](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-translator/a0292/workspace/aeneas/src/extract/Extract.ml:3785)).

| Generated body | Exact dependency on a varying dictionary | Consequence |
| --- | --- | --- |
| `Option.serialize` | `SerializerInst.serialize_some SerializeInst serializer value` | Fails cached continuity in element `SerializeInst` (`cont_11`), without a SharedAT wrapper or an iterator. |
| `SharedAT.serialize` | `SerializeInst.serialize SerializerInst self serializer` | Actual source body; SharedAT implementation packages this method with `Serialize.mk`. |
| `Vec.serialize` | `SerializerInst.collect_seq fixedIntoIterator (SharedAT.Serialize SerializeInst) serializer self` | Needs continuity of the wrapper in `SerializeInst`, and continuity of the fixed serializer's `collect_seq` in its Serialize argument. |
| `BTreeMap.serialize` | `SerializerInst.collect_map (SharedAT.Serialize keySerialize) (SharedAT.Serialize valueSerialize) fixedIntoIterator serializer self` | Same path for two separately varying Serialize dictionaries. |

These are literal generated calls, not proposed replacements ([Option](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:927), [SharedAT](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:957), [Vec](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:1014), [BTreeMap](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:1062)). The IntoIterator values depend on type/allocator parameters, not these Serialize dictionaries. Their opaque `into_iter` methods therefore do not themselves require a continuity theorem for this particular dictionary variation ([Vec dictionary](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:513), [BTreeMap dictionary](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:362)). This does not establish their runtime/collection adequacy.

Counting the actual function binders identifies `cont_11` as element Serialize and `cont_12` as Serializer for Option/Vec; BTreeMap has key Serialize at 12, value Serialize at 13, and Serializer at 14. The one/two standalone failures are consistent with the one/two element dictionaries, but their theorem names and residual goals are not printed; the count alone is not a checked attribution. The `nonpos_continuity` implementation enumerates `Fix`-typed arguments, instantiates universes to zero, and constructs `Cont (f argumentsBeforeDictionary)` with all later binders left pointwise in the codomain ([continuityStatements](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:606)). This is the exact statement-generation seam to instrument.

## What the library already proves

Serialize and Serializer are in the same generated nonpositive mutual group. Serialize's method takes a Serializer; Serializer's `serialize_some`, newtype methods, `collect_seq`, and `collect_map` take Serialize dictionaries. The negative occurrence is intentional and represented using `Shape.arr`, whose condition is continuity plus the pointwise remaining condition ([Types:876](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Types.lean:876), [collect fields:987](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Types.lean:987), [Shape.arr:90](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:90)). `Shape.pi` handles ordinary and implicit type/value binders pointwise. Merely making these negative dictionaries discrete would change the intended model.

`Fix.cond fixedSerializer` is a proved library theorem supplying those method-continuity facts. `Cont.unfold`, `Cont.fold`, constant application, varying application, lambda, and composition are also proved library laws. In particular, `Cont.app₂` needs continuity of the function in the outer dictionary, continuity of its function value in the varying argument, and continuity of the argument ([Fix.cond](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:172), [application laws](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:378), [model composition/application](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Model/Cont.lean:145)). These laws justify trying a direct projection proof and wrapper-continuity proof; they do not constitute an already checked proof for the actual generated functions.

The tactic obtains a fixed dictionary's fact by `have h := Fix.cond _ dictionary; nonpos_cond_simp at h; solve_by_elim [And.left, And.right]`. Its varying-argument case calls this recursively inside an explicit `(by intro _; nonpos_cont)` proof passed to `Cont.app₂`. This nested proof is a source-level explanation for why a failure may be reported as an error instead of the outer cache command's warning; exact attribution still needs a retained trace ([nonpos_proj:501](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:501), [peeling:562](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:562), [warning fallback:623](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/Aeneas/NonPos/Top.lean:623)). Lean tactic recovery is enabled by default; some focused tactics log errors and admit failed goals. A diagnostic command must therefore check actual errors and transitive axioms, not just that its tactic returned no goals ([Lean tactic context](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Tactic/Basic.lean:38), [closeUsingOrAdmit](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Elab/Tactic/Basic.lean:353)). This note does not claim that an actual failed theorem was accepted into usable evidence.

The qualified185 control checks qualified names and constant methods in a tiny mutual group. Its roots never use a fixed dictionary method on a varying dictionary; its axiom audit covers only its three exact roots. Its success does not cover the Serde projection/application path ([control](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/QualifiedNamesControl.lean:17), [audit](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/QualifiedNamesAudit.lean:7), [context binding](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/nonpos-qualified-context-inputs-185.json:1)).

### Depth hypothesis: plausible seam, insufficient diagnosis

The pinned Lean implementation does set `SolveByElimConfig.maxDepth := 6`; the NonPos macro supplies no override ([Lean default](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Tactic/SolveByElim.lean:98)). But the original forty-field Serializer tuple is not the right path length to count. `nonpos_cond_simp` removes trivial fields and distributes universal quantification over conjunctions. From the actual Types and the Shape rules, the expected remaining semantic clauses are:

1. `serialize_some`, continuous in its Serialize argument;
2. `serialize_newtype_struct`, same;
3. `serialize_newtype_variant`, same;
4. `collect_seq`, same, under its type and IntoIterator binders;
5. `collect_map`, continuous in key Serialize;
6. `collect_map`, continuous in value Serialize, for every fixed key Serialize.

This is a source-derived expected normalization, **not a printed actual `h` type**. On this shape, the collect_seq projection needs three `And.right`, one `And.left`, and application of `h`; the Option projection is at the first clause. A bare “more than six original fields” explanation cannot account for those failures. Nested quantified conditions, actual simplification, binder instantiation, and the chosen Dom expressions must be printed before deciding whether a bounded-search change fixes any of them. Raising outer `nonpos_cont` fuel to 5000 does not change this inner depth limit.

## Value.serialize is separately open

The actual external template declares `serde_json.value.Value.Insts.Serde_coreSerSerialize.serialize` as an axiom polymorphic in the Serializer dictionary and all associated types, with no continuity theorem. The later Serialize implementation tries to package that axiom using `Serialize.mk`; its required condition is exactly where the unknown-continuity error arises ([external axiom](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/project/WorkerEntrypointsNames/FunsExternal.lean:2644), [constructor](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:1203)). The function's type alone cannot imply continuity of an arbitrary function on a non-discrete domain.

The pinned Rust source has a concrete match on Null/Bool/Number/String/Array/Object, including recursive Value serialization in arrays and object entries ([serde_json source](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/ser.rs:11)). A source-bound remedy must extract this body and its actual transitive dependencies, or supply a separately declared model/refinement of this exact operation. A fresh axiom asserting its continuity is useful only as an explicitly unproved diagnostic boundary; it cannot become native proof evidence. It also would not repair Vec/BTreeMap's separate fixed-dictionary projection problem. Do not omit Value's implementation node or turn the missing condition into a desired native-equality premise.

## Next minimized declared probe and correction

After actual332 closes, use a fresh declared isolated module importing the **same actual Types and FunsExternal**, without importing the failing full Funs. Retain exact copied SharedAT bodies and the actual fixed IntoIterator dictionary definitions if needed. Keep the imported external axioms visible in the inventory. No original generated byte changes are needed for the first diagnostic probe.

First check three separate statement families with all Serializer associated types explicit and the same Dom instances as the actual group:

```lean
-- Schematic binders: s has the complete actual Serializer S Ok Error ... type.
-- it has the complete actual IntoIterator I T Iter type.
Cont (fun d : serde_core.ser.Serialize T => s.serialize_some d)
Cont (fun d : serde_core.ser.Serialize T => s.collect_seq it d)
Cont (fun d : serde_core.ser.Serialize V => s.collect_map keySerialize d itMap)
```

The first native-derived canary can be made concrete with the following module prefix and **unchanged actual331 Option declaration and cache command**. It imports the actual332 copied modules and qualified185 library through the prospectively declared isolated `LEAN_PATH`; it must not import `WorkerEntrypointsNames.Funs`. This is proposed source for a future attempt, not an executed or green reproduction:

```lean
module
public import Aeneas
public import WorkerEntrypointsNames.Types
public import WorkerEntrypointsNames.FunsExternal
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
set_option maxHeartbeats 1000000
set_option maxRecDepth 8192
set_option synthInstance.maxSize 4096
set_option pp.all true
set_option trace.Meta.Tactic.solveByElim true
noncomputable section
namespace transition_study036

@[rust_fun
  "serde_core::ser::impls::{serde_core::ser::Serialize<core::option::Option<@T>>}::serialize"]
def core.option.Option.Insts.Serde_coreSerSerialize.serialize
  {T : Type _} {S : Type _} {Clause1_Ok : Type _} {Clause1_Error : Type _}
  {Clause1_SerializeSeq : Type _} {Clause1_SerializeTuple : Type _}
  {Clause1_SerializeTupleStruct : Type _} {Clause1_SerializeTupleVariant :
  Type _} {Clause1_SerializeMap : Type _} {Clause1_SerializeStruct : Type _}
  {Clause1_SerializeStructVariant : Type _} (SerializeInst :
  serde_core.ser.Serialize T) (SerializerInst : serde_core.ser.Serializer S
  Clause1_Ok Clause1_Error Clause1_SerializeSeq Clause1_SerializeTuple
  Clause1_SerializeTupleStruct Clause1_SerializeTupleVariant
  Clause1_SerializeMap Clause1_SerializeStruct Clause1_SerializeStructVariant)
  (self : Option T) (serializer : S) :
  Result (core.result.Result Clause1_Ok Clause1_Error)
  := do
  match self with
  | none => SerializerInst.serialize_none serializer
  | some v3 => SerializerInst.serialize_some SerializeInst serializer v3
nonpos_continuity core.option.Option.Insts.Serde_coreSerSerialize.serialize

-- Make the cont_11 cache statement a required theorem: the cache command
-- alone catches failure and emits a warning, so its process exit is no red.
theorem option_element_cont
  {T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant : Type} :
  NonPos.Cont
    (@core.option.Option.Insts.Serde_coreSerSerialize.serialize
      T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant) := by
  nonpos_cont 5000

end transition_study036
```

`trace.Meta.Tactic.solveByElim` is the exact registered trace class in the pinned Lean source, not an invented NonPos trace option ([registration](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Meta/Tactic/SolveByElim.lean:41)). NonPos Top registers no dedicated trace class. The required theorem's full goal varies Serialize while leaving the later Serializer/value arguments pointwise, matching the cache statement generator. For a stricter diagnostic command, run the custom tactic with `Lean.Elab.Tactic.withoutRecover` and retain the goal on exception; do not interpret recovered admitted proof terms as evidence.

For the first projection subgoal, after declaring the same explicit associated-type binders and `s : serde_core.ser.Serializer S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant`, inspect:

```lean
example {T : Type} :
    NonPos.Cont (fun d : serde_core.ser.Serialize T => s.serialize_some d) := by
  have h := NonPos.Fix.cond _ s
  nonpos_cond_simp at h
  trace_state
  solve_by_elim [And.left, And.right]
```

The expected missing **automation fact** is continuity of that fixed serializer method in Serialize, supplied semantically by `Fix.cond`; the expected law is not continuity of an arbitrary opaque function. If the direct projection fact closes but the Option theorem fails, retain the generated lambda/application Dom expressions and match-branch state. If it fails, retain `h` and explicitly specialize its first surviving clause. The canary's actual first failing goal must determine the next correction.

For each, retain `set_option pp.all true`, the exact goal, `have h := NonPos.Fix.cond _ s; nonpos_cond_simp at h`, the full resulting `h` type, and the `trace.Meta.Tactic.solveByElim` trace. Try an explicit conjunction projection and explicit specialization of its type/IntoIterator/key-dictionary binders **before** rerunning the general search. For the wrapper add the separate goal `Cont (fun d : Serialize T => SharedAT.Insts.Serde_coreSerSerialize d)`. Finally copy the actual Vec/BTreeMap bodies and exact `continuityStatements` goals into the isolated module. This separates projection law, wrapper continuity, and command/binder generation; Option is the smallest useful actual-body red control.

If explicit extraction from `Fix.cond` succeeds while the macro fails, the smallest principled correction is a frontend/tactic proof-generation change: emit or register per-projection continuity theorems derived from `Fix.cond`, with explicit binders and Dom expressions, or deterministically split/instantiate the normalized conjunction before lookup. Generate the separate key/value facts for collect_map. This uses existing proved laws and preserves every source method. If direct facts fail to match, retain both Dom expressions and implicit/explicit binder forms and repair that precise elaboration mismatch; do not assert the intended proposition as an axiom. A depth increase is appropriate only if the trace actually identifies depth exhaustion.

Run the original failing actual-body canary before the correction, then the same source-bound canary after it. Include a fixed-method/varying-dictionary positive control with enough surviving conditions and multiple implicit type/ordinary dictionary binders; include key and value collect_map variation separately. Require a wrong-method/result theorem to fail for its intended type/proof reason, and require an opaque function **without** a declared continuity proof to retain the unknown-continuity rejection. A diagnostic continuity axiom may be a separate control and must remain in its transitive axiom inventory. Audit every new continuity/projection root for `sorryAx` and unexpected axioms and fresh-kernel-check the proved roots. Passing these checks establishes the selected library/generated continuity facts only; collection/serializer adequacy, actual compiler/extraction correspondence, and B01–B10 remain separate unestablished obligations.
