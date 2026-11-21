# Call receiver reborrow qualification 001

Status: NEW, UNSELECTED; source-only design, no implementation or green claim.
Session evidence: closed391 extraction retains dependency `Step::twice` with `Read(Local1)`
then final `Move(self)`, and old383 rejects mutable copying;
the unsafe alias source rejects E0506. Actual387 has the same diagnostic at Write.
Only this note was written; no builds/tests/probes/downloads/process inspection or
protected-artifact reads. This refines [the diagnosis][previous] and [producer contract][producer].

## Available information and checks

`symbolic_fun_call_inst` retains `call_kind`, `call_generics`, original `call_sig : bound_fun_sig`,
and `call_inst_sig : inst_fun_sig` [Statements459][calls].
`TraitMethod(trait_ref,method_id)` obtains `lookup_flat_method_sig`, whose result
fuses trait/method binders; use this helper rather than comparing raw nested IDs [Substitute675][flat].
`bound_fun_sig` has `item_binder_params : generic_params` and `item_binder_value : fun_sig`
[Charon TypesUtils20][bound]. The latter has `is_unsafe`, `abi`, `is_variadic`, `inputs`, `output` [sig].
There is no receiver-position certificate in these fields: a narrow source/name
allowlist may identify the known self method, but cannot prove its lifetime safety.

The original parameter record exposes `index` and `late_bound : bool`, defined as
unconstrained by the trait system [610–624][late].
Check `call_sig.item_binder_params.regions`, not freshly instantiated parameters:
`instantiate_fun_sig` replaces regions and constructs records with `late_bound=false` [inst].
`region = RVar(Free id) | ...` after item unbinding;
raw method binders instead use `Bound(depth,id)` [Generated_Types53][binders].
In the small [closed391 IR][ir], trait5 Step/method0 step has exactly one method
region, index0, `late_bound=true`; input type43 is `Ref(Bound(0,0),Self,Mut)`
and output type27 is the empty tuple. Its `Lub(Self):receiver` predicate is present.
The actual387 Write flag was not re-read from full Core IR; it remains a required gate.

`ty_has_regions_in_pred` / `ty_has_regions_in_set` inspect regions (including hidden
static ADT fields); `ty_regions` rejects bound/body/erased regions [TypesUtils91][regions].
For the original flat signature use an explicit `RVar(Free receiver_id)` predicate;
for instantiated types use the fresh receiver region, never the original numeric ID.
Reject unsupported binders, unresolved associated/dyn types or unknown substitution relationships;
a visitor's skipped case is not absence of escapes.

## Small conservative call-only rule

Proposed scope: symbolic `TraitMethod` calls to the verified Step::step or Write::write
receiver shapes, with safe Rust ABI, nonvariadic signature and exactly one qualifying
operand `Read(p)`, where `p.kind=Local _` and `p.ty=TRef(_,referent,RMut)`.
Require input0 to be actual `&mut Self`, with exact erased referent agreement against
the trait Self argument, operand and instantiated signature.
Reject arbitrary operand-zero mutable arguments and all projection/metadata receivers.

Require original outer receiver lifetime `'r` to have `late_bound=true`, appear only
at that outer reference, and be absent from receiver referent, output, sibling types,
trait clauses, associated-type constraints and other generic argument captures.
Permit the ordinary `Lub(Self):'r` well-formedness predicate; similarly permit a
sibling referent's own well-formedness predicate. Reject constraints requiring
`'r` to outlive/equal another lifetime, and any unclassified predicate mentioning it.
Check the instantiated region hierarchy too: reject merging the receiver group with
a sibling/output region or a receiver-to-escaping-region outlives requirement.

Allow exactly these two profiles: (A) receiver only, unit result (`ty_is_unit`);
(B) one additional `Move(q)` with `q.kind=Local _`, different binding from p, type exactly
shared `&[u8]`, independent lifetime, and exact owned `Result<usize,io::Error>` result
with no receiver-region occurrence.
Pinned [Write101][write] has that source signature; [Error72–89][error] owns its
Result alias and nongeneric Error type. Hidden static references in Error are not receiver escapes;
do not require globally borrow-free output as a substitute.
Actual instantiated type/region checks must still pass before profile B is selected.

Why this restricts escapes: for a safe method callable at an unconstrained `'r`,
Self is fixed outside that binder; storing the new `'r` child into Self or an older lifetime
requires an excluded relationship. Output absence alone is insufficient:
`save<'a>(x:&'a mut u8,slot:&mut Option<&'a mut u8>) -> ()` stores through a mutable sibling.
A shared `Cell<Option<&'a mut u8>>` sibling also supplies storage via interior mutability.
Profile B's concrete `[u8]` excludes both, raw pointers, arbitrary shared T and callbacks.
This is a conservative Rust typing argument, not a new formal preservation proof.

## Primitive and operand protocol

Factor an earlier `make_mut_borrow_at_path(span,v,path,ctx)` from the existing
`BMut | BUniqueImmutable` branch: fresh bid, result `VMutBorrow(bid,v)` typed
`TRef(RErased,v.ty,RMut)`, replace path with `VMutLoan bid` [Expressions1309][bmut].
Keep the old branch's Write/greedy=false access and continuation, invoking the same helper;
the helper itself neither reorganizes nor ends loans.

A **new** dedicated call-operands API may take a classified receiver slot; existing
public `eval_operands` and every general `Read`/`Copy`/`Move` branch stay unchanged.
For the receiver build `{kind=PlaceProjection(p,Deref);ty=referent}`. First fold
all preparations in argument order: receiver uses `access_rplace_reorganize` with Write/greedy=false;
every other operand uses standard preparation.
Only after the entire fold, re-read receiver with `read_place_check Write`, then
invoke the factored helper; evaluate the sibling with standard no-reorganization
evaluation, preserving the existing composed continuation [operands]. Full `eval_rvalue_ref`
during operand evaluation would reorganize again.

Write preparation recursively ends shared/mutable loans in the receiver contents
and activates reserved borrows [Paths498][loans]. Re-read the receiver and check
the sibling's Move access/bottom conditions after all preparations, before creating
the child. `value_has_loans` expresses the receiver loan-free assertion [hasloans].
Distinct locals alone prove no referent disjointness;
under existing borrow/loan invariants overlapping sibling access must be invalidated
or rejected by preparation/checks. The narrow remaining Move(Local) neither loads
through Deref nor performs reorganization. Broader sibling loads/copies/projections remain unqualified.

## Explicit limits

No existing generic-type safety gate establishes borrow-free Self: `type_param` contains
index/name/variance only [typeparam]; `analyze_ty` initializes `param_infos=None`, and `TVar`
then adds no borrow facts [tvar], [analysis]. `ty_is_supported` is TODO and returns true [supported].
A negative `ty_has_borrows` answer for TVar is not a proof about arbitrary Rust instantiations
or interior mutability. The binder argument above must carry the nonescape reasoning; existing
BMut/call abstraction handling of nested generic contents remains a scope/proof gap.
Keep normal argument projections/call abstractions and backward restoration [abstractions];
never forcibly end the child at return.
Required future evidence: unchanged-IR narrow green, fresh child/parent suspension,
restored sequential mutation, escape/Cell/sibling negatives, and ordinary Copy/Move
laws. Neither success of those checks nor full Write support is asserted here.

[previous]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/write-default-mutable-reborrow-source-001.md
[producer]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/charon-read-producer-contract-001.md
[ir]: /var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0391/mutable_read.llbc:1
[calls]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpStatements.ml:459
[flat]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/charon/charon-ml/src/Substitute.ml:675
[bound]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/charon/charon-ml/src/TypesUtils.ml:20
[sig]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:482
[late]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:610
[inst]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpUtils.ml:1048
[binders]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:53
[regions]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/llbc/TypesUtils.ml:91
[write]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/write.rs:101
[error]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/error.rs:72
[bmut]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:1309
[operands]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:646
[loans]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpPaths.ml:498
[hasloans]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/llbc/ValuesUtils.ml:389
[typeparam]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:875
[tvar]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/llbc/TypesAnalysis.ml:310
[analysis]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/llbc/TypesAnalysis.ml:643
[supported]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/llbc/TypesUtils.ml:282
[abstractions]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpStatements.ml:1409
