# Source-context construction for unchanged pure calls

Research only, 2026-11-19. One new **unselected** note, using bounded local primary-source reads. No builds, tests, probes, downloads, large IR reads, live-run output inspection, private/evidence/configuration edits or protected artifact access. The source paths below identify the retained a0372 frontend workspace; no success of a0372 or the coordinator's ongoing run is inferred. This supports continued implementation of the existing full specification, with no acceptance change. Read [native-congruence-boundary-audit](native-congruence-boundary-audit.md) for the already-recorded general congruence result and excluded receiver/writer shortcuts.

## Finding

There is a concrete, implementable **source-directed abstraction construction**, but no completed native instantiation was established by these reads. The missing work is narrower and more precise than “prove congruence”: generate and check an actual source-context factorization, thread bound call parameters through the real context/helper graph, and link that context to the native source semantics. A Pure-only pass can avoid unfolding unchanged codec/hash bodies **in proofs**. Avoiding translation/analysis of their internals requires an earlier boundary-aware closure change as well. Merely emitting a theorem universally quantified over fresh callbacks supplies neither change.

The contract expressly permits same-function congruence after actual identity, complete arguments and performed-call conditions agree; it forbids unsupported opaque result stubs and desired-equivalence axioms. The current proof contract has no checked native roots and explicitly leaves native types/refinements pending. These constraints permit the construction below as prospective engineering; they do not make its native link automatic. [Correctness contract](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:30), [proof contract](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract.json:9).

## Owning structures and insertion points

The retained Aeneas implementation already preserves the information needed to identify an exact cut:

| Owner | Actual structure/behavior | Consequence for a new construction |
| --- | --- | --- |
| [SymbolicAst.ml:37](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/symbolic/SymbolicAst.ml:37) | `call_id = Fun of fn_ptr_kind * FunCallId.id`; `call` retains span, pre-call context, original and instantiated signatures, region abstractions, `generic_args`, arguments, destination and places. | Select by resolved function instance and signature, retaining a site/argument ledger. Do not select by printed name alone. The per-occurrence call ID is provenance, not semantic function identity. |
| [InterpStatements.ml:1356](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/interp/InterpStatements.ml:1356) | Symbolic function calls use signatures, generate symbolic results, and check supported borrow shapes. | Caller translation need not execute a callee body. A checked cut can preserve the actual call node while separately suppressing body translation. Unsupported **signature/borrow** shapes remain a blocker. |
| [SymbolicToPureExpressions.ml:419](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/symbolic/SymbolicToPureExpressions.ml:419) and [705](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/symbolic/SymbolicToPureExpressions.ml:705) | A regular call becomes `Fun (FromLlbc (fid_t,None))`, then a `Qualif` with translated generics and a typed `App` spine. Failure information controls the result type and the continuation's checked monadic let. Backward functions may accompany results. | Replace the **typed qualifier**, preserving its entire application/continuation, rather than replace the call's result. First version should reject cuts with backward functions or mutable/reference-bearing outputs. |
| [Pure.ml:1271](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/Pure.ml:1271) and [1352](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/Pure.ml:1352) | Qualifiers are fully instantiated; expressions contain `FVar`, `BVar`, `App`, `Lambda`, `Qualif`, and monadic/nonmonadic `Let`. | A monomorphic cut can be represented by an ordinary typed function-valued input. No new global function axiom is necessary. |
| [Pure.ml:1735](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/Pure.ml:1735) and [1787](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/Pure.ml:1787) | `fun_sig.inputs/output` include translated effects; `fun_body.inputs/body` contain binders and expression; `fun_decl` retains source and metadata. | Add the function-valued input to both signature and body. Update callers and helper signatures consistently, including generated loops. Preserve the existing effect wrapper exactly. |
| [PureUtils.ml:2020](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/PureUtils.ml:2020), [2209](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/PureUtils.ml:2209), [2310](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/PureUtils.ml:2310) | Existing open/close helpers manage the locally nameless binders and closed function bodies. | Open with a fresh generator, replace selected qualifiers with fresh `FVar`s, prepend input patterns, then close using existing machinery. Do not splice names into printed Lean. |

The clean Pure insertion is a **whole-context graph** transformation after [`Translate.ml:594`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/Translate.ml:594), where `Micro.apply_passes_to_pure_fun_translations` has returned functions, loop functions and loop bodies. Work on the final graph, propagate each boundary parameter to callers, then recompute declaration ordering. This avoids having subsequent loop extraction forget the extra inputs. An earlier insertion must instead teach loop extraction and fuel introduction to carry them; fuel is introduced near the end of [`PureMicroPasses.ml:494`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/PureMicroPasses.ml:494). A finite acyclic helper graph is the sensible first domain; recursion requires a separate simultaneous/fixed-point preservation theorem, not an acyclic proof reused by assertion.

There is already a **different**, narrow printer-side dictionary lifting feature in this workspace. It identifies one monomorphic NonPos dictionary with acyclic transparent helpers, emits helper copies with a dictionary binder and retains original methods. Its owners are [`Translate.ml:1138`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/Translate.ml:1138), [`ExtractBase.ml:826`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/extract/ExtractBase.ml:826), and [`Extract.ml:2163`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/extract/Extract.ml:2163). It is useful precedent for graph/name handling, **not an existing pure-call factorization or preservation certificate**. A new Pure transformation plus reconstruction checker has a clearer proof boundary than another printer-only semantic rewrite.

The existing Pure checker checks `FVar`, `App`, `Lambda` and let types, but its `Qualif (FunOrOp _)` branch is explicitly `TODO`. Therefore passing that checker is insufficient evidence of exact source function identity or instantiation. A new boundary checker must independently compare the qualifier key, complete generic arguments/trait dictionaries and arrow type against the retained signature. [`PureTypeCheck.ml:165`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/PureTypeCheck.ml:165).

## Exact reconstruction and preservation interface

The following are **proposed interfaces**, not declarations found in the workspace. The first deliverable should be syntactic reconstruction, before any relational theorem about the two workers.

Use an indexed boundary key containing resolved `fn_ptr_kind`, full concrete type/const/trait arguments, the resulting translated arrow type, and forward/backward selection. Include any fuel/state arguments in the exact arrow type. The source ledger separately binds crate/version/cfg/compiler, call span, original signature and actual native monomorphization. Equal keys must never be inferred just from equal Lean types or equal names. The source structures above carry these discriminators.

For selected keys `K`, create `C_K`: the original typed body with only the corresponding global qualifier occurrences replaced by bound parameter references. **No argument, let, branch, error conversion or result expression is replaced.** Thread the same parameter through every source helper on the path to the entrypoint. Preserve a literal map from each replaced occurrence to its original typed qualifier. A first checker should reject partial applications, unresolved trait methods, escaping mutable borrows, mutable receivers and unknown effects; those can be added under separate preservation rules later.

The syntactic certificate should have this shape:

```text
checkFactor(originalGraph, liftedGraph, exactKeys, occurrenceMap) = true
  -> plugExactQualifiers(liftedGraph, exactKeys) = originalGraph
```

Here `plugExactQualifiers` performs capture-avoiding substitution and removes only the newly added parameter binders/arguments, with normalization limited to the administrative beta/eta steps recorded by the pass. For acyclic helper graphs, either inline the helper references for this comparison or prove a finite graph substitution theorem. The equality must compare constructors, arguments, monadic flags, patterns and original global qualifiers, not comments or digests alone. The certificate checks an **actual source-derived graph**, unlike a proof of a hand-authored fresh callback function. A source manifest/digest binds which graph is being checked but does not prove its semantic translation.

Two useful semantic theorems then have different jobs:

```text
-- Pure reconstruction; D is the original global environment.
factor_preserves :
  checkFactor g c K sites = true ->
  evalPure D g args = evalPure (bindCuts D K) c args

-- If extraction is represented as a checked source-to-Pure relation:
source_context_preserves :
  SourceFactorCert sourceBody sourceContext K ->
  ContextTranslationCert sourceContext pureContext ->
  SourceCallBinding nativeSubject analysisSubject K ->
  RelOutcome
    (evalSource nativeSubject sourceBody nativeArgs)
    (evalPureWithSourceCalls nativeSubject K pureContext translatedArgs)
```

`bindCuts D K k` is **defined** as lookup of the original exact global denotation; it is not an axiom that a model callback equals the native codec. `RelOutcome` must retain source success/error/panic/divergence distinctions allowed by the declared runtime boundary. A pure-result Lean function is adequate only under the corresponding termination/failure model; a total `A -> B` callback silently omits divergence if the source can diverge. Aeneas tracks `can_fail`, `can_diverge` and recursion, but these are not a certification of native absence of I/O, allocator effects or global observation. [`Pure.ml:1596`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/pure/Pure.ml:1596), [`FunsAnalysis.ml:21`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/llbc/FunsAnalysis.ml:21).

After factorization, a relational context theorem can quantify over **one shared environment**, independently prove equality of all corresponding cut arguments, and show equality of context outcomes. This can discharge the differing wrappers without codec implementation lemmas. The final source theorem must compose that theorem with both actual source-context certificates and the exact common source-call binding. It may not assume equality of the two context results or of prepared/original evaluator outputs. This is substantially more than `∀f a b, a=b -> f a=f b`: its subject includes the checked original program graph, the actual plugged calls and a source semantics relation.

There are two honest ways to obtain native instantiation:

1. **Retain actual translated function definitions but do not unfold them in proofs.** Instantiate context parameters at those definitions; prove reconstruction by definitional/structural equality. This avoids proving SHA/serializer algorithms but still requires their bodies to translate and type-check and avoids forbidden externals only if the resulting closure has no unsupported axioms.
2. **Interpret exact calls through a source operational semantics**, defining `bindCuts` from that semantics and proving the context translation theorem once for a restricted language. This can avoid extracting codec bodies. It needs an actual accepted source-semantics implementation or a justified translator extension with explicit source semantics and compiler boundary. Universally quantifying an unspecified `evalSource`, or adding `nativeCodec : A -> B` as an opaque global, does not supply that implementation/link.

No available source read established the second route as already implemented. The retained concrete interpreter is OCaml; it explicitly rejects function pointers, trait methods, opaque callees and trait-bearing concrete calls. Its symbolic interpreter is a translation mechanism, not a Lean native-semantics instantiation theorem. [`InterpStatements.ml:1226`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/interp/InterpStatements.ml:1226), [1265](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/interp/InterpStatements.ml:1265). The README's formalization references establish neither a verified interpreter for this full pinned tool nor the requested Core036 native compiler relation. [README:204](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/README.md:204).

## Minimal real source canary

Use the existing **`serialization::value_bytes`**, without a proof-only replacement Rust implementation:

```rust
pub fn value_bytes(value: &Value) -> Result<Vec<u8>> {
    Ok(serde_json::to_vec(value)?)
}
```

This is an actual nontrivial wrapper: it retains the success constructor, `?` early return and actual `From<serde_json::Error> for StudyError`. It is used by the actual observation comparison and output accounting, and has no different writer dictionary to identify. Cut exactly `serde_json::to_vec::<serde_json::Value>` at this call site; preserve the concrete wrapper error conversion as context source. Do not cut the entire wrapper and then call its identity context a wrapper proof. [`serialization.rs:15`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/serialization.rs:15), [`error.rs:10`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/error.rs:10), [`observation.rs:5`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/observation.rs:5), [`ground.rs:199`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:199).

Its context, suppressing only spelling of generated native types, is exactly:

```text
C_value_bytes enc v :=
  match enc v with
  | Ok bytes => Ok bytes
  | Err jsonError => Err (actualJsonToStudyError jsonError)
```

The extraction's **outer** panic/error/partiality layer must remain around this **inner Rust Result** if the generated signature has one. Freeze the actual generated expected type after inspecting this small extraction; do not guess that these two layers collapse. A schematic type-directed interface is:

```text
enc : NativeValue -> SourceComputation (RustResult NativeBytes NativeJsonError)
value_bytes_context enc :
  NativeValue -> SourceComputation (RustResult NativeBytes NativeStudyError)

value_bytes_factor :
  SourceFactorCert actualValueBytesBody actualValueBytesContext
    [exactToVecValueInstance]

value_bytes_context_equal :
  ∀ enc v₁ v₂, v₁ = v₂ ->
    value_bytes_context enc v₁ = value_bytes_context enc v₂

value_bytes_source_instantiation :
  SourceCallBinding exactToVecValueInstance ->
  semantics actualValueBytesBody =
    semantics actualValueBytesContext (sourceCall exactToVecValueInstance)
```

`SourceCallBinding` here must be discharged by the chosen native/source semantics route, not left as an accepted root hypothesis. If the actual `From` implementation cannot be translated, keep it as a separately exact cut with its own binding **and report that extra cut**; do not fabricate a constructor equation for an opaque error type. The initial factor proof can abstract the JSON/error *types* as bound type parameters, but native root closure must bind those types to actual native representations. Type quantification avoids global type axioms; it does not prove their native relation.

The next useful canary is `observation::complete_original`, abstracting the exact same `serialization::original_observation` and proving the real field-selection/argument vector. Its seven arguments include invocation record JSON, optional full bundle, full commit arguments, both histories, reconstructed full state and property status. This checks preservation of an actual observation constructor's context, although equality of those arguments remains B05–B07 work. In particular the selected ground branch supplies literal `"Valid"`; it must independently establish that status, and prepared/original Stores remain different receivers. [`observation.rs:107`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/observation.rs:107), [`serialization.rs:41`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/serialization.rs:41), [`ground.rs:347`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:347), [`ground.rs:380`](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/ground.rs:380).

## Earlier closure repair required for extraction relief

Current ownership is precise:

- [`Interp.compute_contexts`:52](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/interp/Interp.ml:52) computes dependency information; declaration groups determine extraction IDs at 109–142; `fun_ctx.to_extract` is filtered at 160–164. Full `fun_decls` are retained for lookup, and `FunsAnalysis.analyze_module crate fun_decls` still receives the full map at 166. Merely deleting a callee's export group does not make its body disappear from analysis.
- [`Translate.ml:369`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/Translate.ml:369) translates every selected function signature, then selected opaque/transparent bodies at 432–507, before Pure micro-passes at 594. A Pure-only abstraction pass is too late to avoid those failures/costs.
- [`PrePasses.ml:1897`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/PrePasses.ml:1897) recomputes used functions/impls after call simplification and filters declaration groups. Its own comment calls the exploration approximate; it traverses all function bodies and keeps local definitions. It is not an exact entrypoint closure with call-boundary stops.

A new **boundary-aware reachability pass before context construction/analysis** should start at frozen real entrypoints; traverse bodies, types, globals and trait dependencies normally; stop **body traversal only** at exact admitted cut instances; retain signatures, source identities, type dependencies and the unmodified original body/source binding separately. It must also ensure later pre-passes/analyses use that pruned body graph rather than silently re-expanding the original full map. Altering a declaration to opaque and letting the ordinary Lean exporter create an external declaration is not the construction: the Pure contexts must instead receive bound parameters, and root instantiation must use one of the two honest routes above. Existing exporter opacity paths distinguish absent bodies; they provide no native semantics proof. [`Extract.ml:2144`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/extract/Extract.ml:2144).

Purity admission also needs an explicit owner. `FunsAnalysis` has `stateful`, failure and divergence flags, but registers trait methods with `stateful=false` and treats non-builtin opaque functions conservatively for failure; these flags are not an adequate source-native effect checker for arbitrary cuts. Start with a prospective frozen list of known concrete pure serializer/hash wrappers, prove or justify their purity at the declared Rust/runtime boundary, and reject unknown/mutable/effectful instances. A wrapper taking `&Value` alone is not a proof that its transitive implementation has no observable effects. [`FunsAnalysis.ml:69`](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/llbc/FunsAnalysis.ml:69), [211](/var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0372/workspace/aeneas/src/llbc/FunsAnalysis.ml:211).

## Concrete next experiment and trust boundary

Prospectively implement the bounded `value_bytes` factorization first, then run it as a **new corrective subject** through the coordinator's normal controls. Required artifacts are the source-bound small original AST, cut key and exact instantiated signature, generated context, occurrence/argument map, kernel-checked reconstruction, context success/error theorem and the explicit native-instantiation status. Keep the codec body opaque **only as a bound context input**, never as a new global axiom. Negative controls should alter the source wrapper's error conversion/early-return branch, substitute another concrete to_vec instantiation or drop the argument, and require reconstruction or source binding to reject. Mutating the actual source and re-extracting must invalidate the certificate; a digest mismatch alone is a provenance control, not the semantic mutation result.

Success of the first experiment means a checked source/Pure context factorization for one actual wrapper. It does not mean B07 or native equivalence. Before claiming that the construction avoids unsupported codec extraction, demonstrate the earlier boundary-aware closure and close the actual source semantics/compiler binding; these are the concrete blockers presently left open. The allowed kernel axioms remain only `propext`, `Classical.choice`, and `Quot.sound`. A source-context preservation rule can be added to an explicitly justified verification-method revision; it cannot be silently installed as an unchecked global axiom. [Allowlist and root acceptance](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract.json:1), [contract compiler/boundary requirements](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:11).

This construction can remove unnecessary serializer/hash implementation proof work, while leaving the actual selected/prepared evaluator relation, full native data relations, B writer refinement and B01–B10/session composition intact. No distinct writer instances or prepared/original receivers are assumed equal, no target equality is assumed, and no native proof is claimed by this note.
