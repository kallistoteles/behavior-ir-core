# Canonical Child law draft: source review

New unselected review of an unselected, untested draft. Only the named draft and
previously authorized exact model/component/SDK source interfaces were consulted.
No build, test, Lean process, discovery, private output/state inspection or
selected write was performed. No outcome or native admission is inferred for the
still-active attempt.

Owners:

- `L`: proposal `native-canonical-child-law-draft-001.lean`.
- `D`: `experiments/transition-study036/proofs/Correspondence036/Dependencies`.
- `C`: `/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0460/project/NativeProjectionComponents.lean`.
- `B`: `/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core`.

## Assessment

No definite name, binder/type or proof-interface blocker was identified manually.
The statement matches plan001's canonical success equation and retains arbitrary
full raw JSON, arbitrary parent/child accumulators, arbitrary id/owner/phase
Strings, three primitive field-read premises and the ID representability bound.
It assumes no canonical/view output equality. This is a static source assessment,
not an accepted Lean proof.

## Literal, borrowing and control flow

The draft supplies its own private phase/owner decode facts rather than trying to
import the existing module's private declarations. Its local Child bound,
borrow-to-literal equality and Child≠Parent lemma match the needed entity-tag
branch. `as_str_child` rewrites through the public String.as_str theorem with the
same bound before using the local borrow equality. The closed `decide +kernel`
steps remain unexecuted. Sources: `L:14–25`;
`D/NativeProjectionLaws.lean:25–30`;
`D/NativeStringOperations.lean:116–119`.

The ID bound is used at the actual Value.String→Str step. The later ownership
rewrite uses decode_borrow at that same ID/bound, giving precisely the original
owned ID. Owner/phase are Value clones on this source path, so the statement does
not needlessly add their borrow bounds. Sources: `L:45`, `:55`, `:58–63`;
`D/NativeJsonScalarOperations.lean:24–35`, `:53–55`;
`D/NativeStringCodec.lean:47–50`, `:115–118`;
`C:69–92`.

`core.option.Option.ok_or` and `core.result.Result.Insts.CoreOpsTry.branch` resolve
under the opened Aeneas.Std namespace. Once the ID read/as_str results are known,
their success reductions reach Continue and remove the residual branch; omitting
FromSame/from_residual from the final simp list is therefore not itself a missing
dependency on this success path. The outer successful Result and inner Rust
Result.Ok are kept distinct in the conclusion. Sources: `L:4`, `:48`, `:54–57`;
`B/CoreOption.lean:24–37`; `B/Convert.lean:95–117`; `C:68–97`.

## Primitive reads and map result

`actual_index_read` states the exact ordinary-index call with the actual generated
transition_study036 shared/Str dictionary constructors. Its simplification unfolds
those constructors and the root shared read delegation, exposing exactly the root
primitive Str read premise. It does not substitute another dictionary or erase
the full generated interface. Sources: `L:27–35`; `C:34–64`;
`D/NativeJsonIndexOperations.lean:73–74`, `:94–97`, `:148–168`.

The three local indexing facts are instantiated with the correct field/key
arguments and actual contextual Value.String constructors. The canonical body
then receives the raw input unchanged. Arbitrary unrelated recursive fields are
not constrained by the theorem's premises; this still describes a projection that
emits the specified phase/owner fields, not preservation of every raw field in
that projected object. Sources: `L:37–53`; `C:69–94`.

The final map calculation writes phase then owner into a fresh empty map, then
inserts the resulting actual Value.Object under ID in children. Parents remain
unchanged. The expected result uses the independent put/projectedFields formulas,
not the desired canonical result as an assumption. It correctly uses the actual
fully qualified Value.Object constructor rather than a constructor qualification
through the NativeValue abbrev. Sources: `L:46–64`;
`D/NativeProjectionLaws.lean:16–23`; `C:84–94`.

The rewrite list contains the necessary literal ownership results, complete Value
clone definition, empty_new and insert_spec. No additional candidate primitive
implementation gap was apparent in this permitted interface check. Whether Lean
accepts this combined simp script and exact namespace resolution remains a fresh
checking question; this review did not run it.

## Scope and next composition

The draft proves a canonical-row equation to the shared independent child-map
formula. It does not yet declare an explicit combined canonical/view-step
agreement corollary. Existing materialize_step instantiated with empty basis,
the same children/ID, actual ChildRow owner/phase and arbitrary tail supplies the
matching view equation, so that comparison can be derived without an output-equality
premise. Sources: `L:37–64`; `D/NativeProjectionLaws.lean:54–66`.

The scope comment correctly leaves source/native Store, complete finite folds,
runtime/compiler and broader correspondence obligations separate. Primitive field
facts have not here been shown to arise from Store exports/version relations, and
candidate JSON/String/iterator/allocator/effect adequacy is not admitted. No such
closure or actual success is established by this source review. Source: `L:7–9`.
