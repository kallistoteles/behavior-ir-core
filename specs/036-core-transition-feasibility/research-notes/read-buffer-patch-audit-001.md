# Read buffer patch: source audit 001

Status: NEW, UNSELECTED. This is a source audit of the cumulative B patch,
not compiler, execution, extraction, or proof evidence. The assigned baseline
is actual395; the parent reported that actual402 parsed the proposed sources
without typechecking them. Only this new note was written. No build, test,
translator probe, download, process inspection, protected-artifact read, or
existing source/evidence edit was performed. Bounded reads of the small
actual401 LLBC supplied declaration metadata only; no resolved-type claims
below depend on decoding its hash-consed references.

## Concrete correction before claiming source typing

The unannotated lambda in `region_params_ok` is a record-label disambiguation
hazard, at [patch-source:86–88][patch-source]. It first evaluates
`region.index = id`, while the argument types of the enclosing `List.filter`
and `List.for_all` occur later. There are several distinct `index` labels.
In particular, Statements opens `Values` after `Types` [statement-opens], and
Values exports `real_var_binder.index : local_id` [local-index], while the
required `region_param.index : region_id` and `late_bound` belong to another
record [region-param]. Do not treat a successful parse as resolving this.

The concrete, local correction is:

```ocaml
List.filter (fun (region : region_param) ->
  region.index = id && region.late_bound) params.regions
```

`region_param` is already in scope: Aeneas Types includes `Charon.Types`,
which includes `Generated_Types` [aeneas-types], [charon-types]. The existing
region substitution helper uses the same explicit `(r : region_param)`
annotation [region-subst]. This audit has not run a compiler and therefore
records the issue as a source-typing hazard with an exact repair, not an
observed actual403 failure or a semantic unsoundness result. The source and
patch must be regenerated and rebound together after a closed failed attempt
if that attempt confirms the issue; changing a source under an open frozen
build would invalidate its subject.

No corresponding annotation problem was found for `self_param.index`: the
outer pattern already binds it through `params.types : type_param list`.
The abstraction-group lambdas already annotate `abs_region_group`.

## API and type shapes agree with the owning source

The qualifier uses the correct `symbolic_fun_call_inst` fields. `call_sig` is
a `bound_fun_sig`, and `call_inst_sig` is an `inst_fun_sig` [call-info].
`TraitMethod` contains a `trait_ref * trait_method_id`; its Self argument is
read from `trait_ref.trait_decl_ref.generics.types` [trait-ref]. The call
constructor looks up the flattened method signature and concatenates trait
generic arguments before method arguments [trait-call], [flat-method],
[concat-generics]. Thus comparing the erased instantiated receiver referent
with the sole trait Self argument is appropriate for this deliberately narrow
profile. Adding a wrapper `.node` or substituting method-only generics would
be wrong: hash-consing is an identity alias on the OCaml side [type-alias].

The region erasure comparison is intentional. Instantiation refreshes free,
body, and erased argument regions before substitution, while preserving type
variable identity [instantiate-regions]. Comparing unrefreshed trait Self
regions directly against fresh instantiated regions would produce spurious
rejection. `ty_erase_regions` handles static/free/body regions [erase]. The
capture visitor still examines the unerased instantiated referent, and the
hierarchy checks subsequently reject extra nonstatic region groups. Erasure
is therefore not being used as the sole independence certificate.

Both generic visitors use real methods of the derived visitor. The pinned
source derives `iter_ty` over the mutually recursive schema, including
`generic_params`, region binders, and `region_param` [visitor-schema]. An
existing helper overrides `visit_ty` and invokes `super#visit_ty` using the
same pattern [visitor-example]. Another existing visitor overrides
`visit_region_param` [instantiate-regions]. Clearing top-level `regions` and
`outlives` before traversing the remaining original params is accompanied by
separate checks of those two fields. A nested binder is still rejected.
Accepted `TVar (Free _)` nodes have no region subtree to skip. Rejected type
nodes set a persistent rejection flag, so declining to traverse their
children cannot turn the overall predicate true.

The constructors, scalar names, `TSlice (ty, trait_ref option)`, and
`type_decl_ref` fields used by the patch match the owning schema [ty-schema].
`generic_args.trait_refs` and `generic_params.trait_clauses` are distinct and
are used correctly [generic-schema]. `outlives_pred` is a `region * region`;
the `RLub ty` left side denotes type-outlives [outlives-schema]. The exact
outer predicate allowlist is necessary: hierarchy construction intentionally
skips those `RLub` predicates when adding direct region edges [hierarchy-edges].

## Exact owned Result and Error

The patch compares complete declaration names using `to_name`, which constructs
zero-disambiguator identifier path elements [names]. It checks the declaration
map, `has_errors`, absence of builtin identity, both type arguments of Result,
and the absence of extra region/const/trait arguments. Those fields exist in
the owning schema [ty-schema], [generic-schema], [metadata]. It applies the
same output check before and after instantiation. It does not accept a unit
error, arbitrary type parameter, associated error, suffix-only name, or alias
spelling as a substitute.

A bounded metadata read of [actual401][actual401] confirms type declaration 7
is exactly `core::result::Result` with two type parameters and no other
generic params/predicates, and declaration 8 is exactly
`core::io::error::Error` with no generic params/predicates. Both names use
zero-disambiguator identifier components. The dependency source explicitly
returns `std::io::Result<usize>` [dependency-source]. These observations
support the selected names; they do not establish that the new interpreter
branch qualifies or successfully translates that IR. In particular, the
generated Error axiom remains an unresolved proof dependency. Accepting or
silently replacing that axiom is not a source-audit correction.

## Region hierarchy and escape boundaries

The abstraction groups contain `region list` and abstraction IDs, not bare
region-ID lists [inst-schema]. Instantiation creates the fresh abstraction
IDs and maps the original group parents [instantiate-groups]. Requiring exact
singleton groups `[r]`, `[b]`, distinct group IDs, and empty input-group
parents rejects merged groups, either input outliving the other, and merged
input/static regions. Uniqueness of every group ID plus the total count and
remaining-group predicate also excludes duplicate singleton/static groups.

Allowing the optional exact `[RStatic]` group to have a subset of the two
input-group IDs as parents agrees with the owning graph direction. An edge
is longer-to-shorter, and graph initialization inserts Static-to-each-region
edges [hierarchy-edges]. The static-group construction explicitly says its
parents are the groups it outlives and can omit those edges when static does
not interact with the other regions [hierarchy-static]. Requiring empty
parents for this optional static group would conservatively reject additional
safe signatures. It would not repair an escape hole found here.

The narrow original receiver `&'r mut Self`, independent shared byte slice,
late-bound region checks, owned named output, allowed well-formedness
predicates, and original generic visitor jointly rule out a returned child
borrow or an explicit sibling/callback slot carrying it. The instantiated
visitor additionally rejects occurrence of either fresh call region inside
the receiver referent/output and rejects unresolved associated/dyn/callback
forms. The original associated-constraint list is required empty;
instantiation carries that list forward, so an additional check of
`inst.trait_type_constraints = []` would document an invariant rather than
fix an observed acceptance hole [instantiate-constraints].

This remains a syntactic applicability certificate, not a general proof that
every nested/generic Self representation is interpretable. Declaration-hidden
static borrows are handled by existing type analysis/hierarchy mechanisms;
an ordinary type visitor does not inspect ADT fields [hidden-static]. The
ordinary call path still checks type support before operand evaluation
[call-support]. No concrete receiver-borrow escape was identified by this
source audit; no soundness theorem is claimed.

## Operand preparation, alias checks, and continuations

The B evaluator has the required temporal order: prepare the receiver's
dereferenced Write place; prepare the sibling `Move q`; re-read both places
in that final context; assert the receiver contains no loans; create the
fresh child; perform the ordinary sibling Move without reorganization
[patch-source]. In particular, it does not cache the receiver path before
preparing q, and it does not use distinct local IDs as its only alias check.

`read_place_check` calls `eval_place` and rejects recursively contained bottom
and reserved borrows [read-check]. The explicit q reread therefore has a real
failure path if receiver preparation ended a borrow on which q depended.
The final ordinary Move rereads q again, checks bottom, writes bottom to its
path, and has the identity continuation [operand-move]. The fresh child
constructor writes a mutable loan through the already prepared receiver
path [child-borrow]. Creating it does not reorganize the context. Since the
receiver is a direct distinct local with a mutable dereference, this write
does not directly replace the sibling local. Existing Write-access
reorganization and the receiver loan assertion are still responsible for
rejecting receiver-content alias conflicts; no exception handler swallows a
failure from them or from the sibling checks.

The continuation composition `cc_receiver (cc_buffer (cc_eval_buffer e))`
matches `cc_comp f g e = f (g e)` [continuations]. General `eval_operands`
already prepares all operands before consuming any [operand-phases]. The new
branch preserves that discipline while replacing only the certified receiver
operation. Ordinary call projection, abstraction creation, argument-type
checks, and backward continuation construction still execute afterward
[call-projection]. It does not forcibly end the child at return.

The patch changes the historical A classifier only in its cumulative copy,
by strengthening its existing singleton group check to `group.regions=[r]`.
It adds a separate B classifier/evaluator and a dispatch branch; it does not
change the general Read/Copy/Move cases [patch-artifact]. Historical A's
bound source must remain immutable.

## Conservative limits and remaining evidence

Rejected marker-proof slices (`Some proof`), additional Self lifetime groups,
raw pointers, projected operands, Copy/Read siblings, coupled regions, extra
generic params, callbacks, foreign/unsafe calls, and other results are
applicability limits. Their rejection is not itself evidence of unsoundness.
Do not broaden them merely to obtain a successful canary.

The actionable source change identified here is the explicit `region_param`
annotation. Source typing, actual classifier applicability, sibling-invalidation
negatives, native behavior, and Lean elaboration/kernel/proof-assumption
results remain separate validation obligations for the parent's declared
attempts. Neither a source parse nor this audit establishes them.

[patch-source]: /data/repos/behavior-ir-core-033/experiments/transition-study036/mutable_buffer_source_v2.py:15
[patch-artifact]: /data/repos/behavior-ir-core-033/experiments/transition-study036/patches/v2/aeneas-nonescaping-read-buffer-001.patch:1
[dependency-source]: /data/repos/behavior-ir-core-033/experiments/transition-study036/probes/v2/mutable_buffer_dependency_002.rs:5
[actual401]: /var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0401/mutable_buffer.llbc
[statement-opens]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:1
[local-index]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/Values.ml:1551
[region-param]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:610
[aeneas-types]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/Types.ml:1
[charon-types]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/Types.ml:4
[region-subst]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/Substitute.ml:66
[call-info]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:459
[trait-ref]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:667
[trait-call]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:595
[flat-method]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/Substitute.ml:674
[concat-generics]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/TypesUtils.ml:29
[type-alias]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:548
[instantiate-regions]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpUtils.ml:970
[erase]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/TypesUtils.ml:536
[visitor-schema]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:916
[visitor-example]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/TypesUtils.ml:243
[ty-schema]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:801
[generic-schema]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:492
[outlives-schema]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:559
[names]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/TypesUtils.ml:30
[metadata]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:1057
[inst-schema]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/LlbcAst.ml:35
[instantiate-groups]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpUtils.ml:1144
[hierarchy-edges]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/RegionsHierarchy.ml:165
[hierarchy-static]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/RegionsHierarchy.ml:432
[instantiate-constraints]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpUtils.ml:1040
[hidden-static]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/TypesUtils.ml:136
[call-support]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:1414
[read-check]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpExpressions.ml:48
[operand-move]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpExpressions.ml:627
[child-borrow]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpExpressions.ml:367
[continuations]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/Cps.ml:38
[operand-phases]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpExpressions.ml:658
[call-projection]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:1458
