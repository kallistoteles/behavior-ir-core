# Read receiver plus byte buffer: pinned construction 001

Status: NEW, UNSELECTED; source-only implementation advice. Only this note was
written. No builds, tests, probes, downloads, private/evidence/config changes,
process inspection, or protected-artifact reads were performed. This follows the
three existing call/reborrow notes; it does not claim a general interpreter proof
or a successful profile-B extraction/translation.

## Exact types and declaration identity

In compiler395, `ty` is declared as `ty_kind hash_consed`, but OCaml defines
`'a hash_consed = 'a`. Direct constructor matching is correct; there is no
`.node`, `.value`, or uninterning operation to introduce [types548][types].
The exact primitive patterns are:

```ocaml
let usize_ty = TScalar (TInteger (Unsigned Usize))
let u8_ty = TScalar (TInteger (Unsigned U8))
(* A slice is TSlice (element_type, optional_Sized_proof). *)
```

`TInteger`, `Unsigned`, `Usize`, and `U8` come from Values [scalars]; Statements
already opens Values [opens]. `TAdt` takes a record `{id; generics; builtin}`,
and `generic_args` has exactly `regions`, `types`, `const_generics`, `trait_refs`
[args], [tyconstructors]. The corresponding `generic_params` uses
`trait_clauses` instead of `trait_refs`; these are different records [args].

Use a fail-closed metadata lookup, adding `ctx : eval_ctx` to the B classifier:

```ocaml
let named_decl (ctx : eval_ctx) (tref : type_decl_ref)
    (path : string list) : bool =
  tref.builtin = None &&
  match TypeDeclId.Map.find_opt tref.id ctx.crate.type_decls with
  | Some (decl : type_decl) ->
      not decl.item_meta.has_errors &&
      decl.item_meta.name = to_name path
  | None -> false

let args_except_types_empty (g : generic_args) =
  g.regions = [] && g.const_generics = [] && g.trait_refs = []

let owned_io_result (ctx : eval_ctx) (ty : ty) : bool =
  match ty with
  | TAdt result ->
      named_decl ctx result ["core"; "result"; "Result"] &&
      args_except_types_empty result.generics &&
      begin match result.generics.types with
      | [TScalar (TInteger (Unsigned Usize)); TAdt error] ->
          named_decl ctx error ["core"; "io"; "error"; "Error"] &&
          args_except_types_empty error.generics &&
          error.generics.types = []
      | _ -> false
      end
  | _ -> false
```

`to_name` constructs only `PeIdent (name, Disambiguator.zero)` components [names].
Equality therefore rejects suffix/prefix lookalikes, nonzero disambiguators,
`PeImpl`, `PeInstantiated`, `PeTarget`, and builtin path elements. Do not match
only final `Error`, its public reexport spelling, or a rendered suffix. The crate
map lookup and `item_meta.name` fields are the owning APIs [lookup], [metadata].
Optionally require `decl.src = NormalType` and the declaration's expected
region/type/const arity too [decl]; missing/excluded declarations must return
false rather than be assumed to match. The code above checks use-site arity;
valid pinned IR supplies declaration consistency. Do not require Error to have
no static borrows: `ErrorData::SimpleMessage` contains a static reference [error].

Apply `owned_io_result` to both original `sg.output` and instantiated output.
The named, nongeneric Error is necessary: `Result<usize,()>`, an associated Error,
an arbitrary `TVar`, or a locally named Error is a different profile. Result is
an ordinary two-type-argument enum [result]; the IO alias is already expanded
by MIR [error], [decl].

For the smallest marker-hidden implementation, recognize the buffer referent as
`TSlice (TScalar (TInteger (Unsigned U8)), None)`. A `Some proof` slice is valid
schema too; rejecting it is a conservative applicability limit. If supporting it,
traverse the proof's trait declaration generics and all nested binders with the
same capture/unsupported-type guards below; do not silently ignore that field.

## Original binder and instantiated checks

Match original `sg.inputs` exactly as:

```ocaml
[TRef (RVar (Free receiver_id), (TVar (Free self_id) as self_ty), RMut);
 TRef (RVar (Free buffer_id), (TSlice (_, _) as bytes_ty), RShared)]
```

Require distinct IDs; exactly two original `params.regions` with precisely those
IDs (either list order), both `late_bound=true`; exactly one `params.types` with
index `self_id`; no const parameters or associated-type constraints; safe,
`AbiRust`, nonvariadic; and a `TraitMethod` call. Use the already flattened
`call_sig`, not raw method nested binder indices [flatcall]. Instantiation
replaces region records and sets `late_bound=false`; checking that flag on the
fresh signature would reject the intended calls [instantiate].

Actual operands must be exactly
`[Read ({kind=PlaceLocal receiver_local; ty=TRef(_,_,RMut)} as p);
Move ({kind=PlaceLocal buffer_local; ty=TRef(_,_,RShared)} as q)]`, with
`receiver_local <> buffer_local`. Do not extend to projected receivers, sibling
Read/Copy, arbitrary shared types, callbacks, or additional operands.

For parameter captures, retain the existing visitor pattern, but visit
`{params with regions=[]; outlives=[]}` only after separately validating those
two removed fields. In this particular signature, **any** nonstatic region in
the remaining parameter structure is unexpected: reject `RVar (Free _)`, bound,
body, erased, or Lub regions. Override `visit_region_param` to reject any nested
region binder; clearing only top-level `regions` makes nested binders visible.
Override `visit_ty` (inheriting `iter_ty as super`) to reject bound/other TVars,
`TTraitType`, `TDynTrait`, `TFnPtr`, `TFnDef`, `TPtrMetadata`, `TPattern`, and
`TError`; then call `super#visit_ty` in accepted cases. A strict first version
may also reject explicit `TRawPtr` captures. This traverses trait clauses and
generic arguments; `visit_region` alone does not reject associated/dyn/callback
types which happen to carry no visible region. Names are visitor-opaque, but
the declaration identity check above handles them [names], [tyconstructors].

Validate each outer outlives predicate separately:

```ocaml
let outlives_ok (predicate : outlives_pred region_binder) =
  predicate.binder_regions = [] && predicate.outlives = [] &&
  match predicate.binder_value with
  | RLub ty, RVar (Free id) ->
      (ty = self_ty && id = receiver_id) ||
      (ty = bytes_ty && id = buffer_id)
  | _ -> false
```

These are just each input referent's own well-formedness bounds. Reject
cross-region/equality bounds, `'receiver: 'static`, arbitrary type bounds, and
all nested predicates. An empty outlives list is allowed; this is an allowlist,
not a requirement that both redundant predicates exist. A bound on `u8` rather
than exact `[u8]` is rejected by this smallest rule; broaden only against an
observed producer need. `RLub` is the schema's representation of type-outlives
and the right side cannot be Lub [outlives]. RegionsHierarchy deliberately skips
outer type-outlives clauses when adding direct region edges, so this original
predicate check cannot be replaced by inspecting the final graph [edges].

Match instantiated inputs as two references with fresh, distinct
`RVar (Free _)` regions `r` and `b`. Check exact byte-slice structure again;
compare each complete input with its operand type after `ty_erase_regions`.
Check the erased instantiated receiver referent against the trait reference's
Self type, obtained from `trait_ref.trait_decl_ref.generics.types` (sole type
argument in this narrow trait profile). Those trait generics are concatenated
with method generics when instantiating the flattened signature [flatcall].
Reject any occurrence of fresh `r` or `b` inside receiver referent, result, or
instantiated associated constraints; require the latter list empty here.
Explicitly reject unresolved associated/dyn/callback forms inside the instantiated
referent too; a generic `TVar (Free _)` standing for Self remains intentional.
Do not call `ty_regions` on erased/body/bound types: it raises rather than
returning an absence result [regionvisitor].

The abstraction groups contain `region list`, not `RegionId` lists. Require a
unique receiver group with `regions=[r]` and a unique buffer group with
`regions=[b]`, distinct abstraction IDs, **both** with `parents=[]`. Admit only
these two groups plus at most one group with `regions=[RStatic]`. All IDs must
be distinct; the static group's parent IDs may be a subset of the two input
group IDs. Reject extra regions/groups, duplicated groups/parents, merged
receiver/buffer/static groups, and every receiver/buffer parent edge [groups].

Direction matters: an edge/group parent dependency is from a longer lifetime
to a shorter lifetime. Hierarchy construction initially adds Static-to-every-
signature-region edges [edges]. Its optional static group may retain those
dependencies when static interacts with other regions, or omit them otherwise
[static]. Allowing that group's outgoing edges is compatible with Static
outliving both call borrows. An input outliving Static would merge it with the
static SCC and fails the singleton checks. Do not reject real owned Error just
because a third static group exists. More instantiated Self lifetime groups
are conservatively out of scope; applicability to original313 is still untested.

For cumulative A strengthening, its precise existing instance match can become:

```ocaml
| [TRef ((RVar (Free _) as r), _, RMut) as input], [group] ->
    group.regions = [r] && group.parents = [] &&
    ty_erase_regions input = ty_erase_regions place.ty
```

This strengthens only the singleton certificate. Leave the historically bound
source-A artifact unchanged; use a separately bound cumulative source version.

## Two phases on the existing APIs

Add a separate B evaluator; keep the public general operand functions intact.
With a classifier-established `p`, `q`, and receiver referent, the complete
operational core is:

```ocaml
let deref : place = {kind=PlaceProjection (p, Deref); ty=referent} in
let ctx, cc_receiver =
  access_rplace_reorganize config span false Write deref ctx in
let ctx, cc_buffer =
  prepare_eval_operand_reorganize config span (Move q) ctx in
(* Both reads happen AFTER ALL preparation, BEFORE creating any child. *)
let _, value, path = read_place_check span Write deref ctx in
let _, _, _ = read_place_check span Move q ctx in
[%cassert] span (not (value_has_loans value.value))
  "Read receiver preparation left a loan";
let receiver, ctx = make_mut_borrow_at_path span value path ctx in
let buffer, ctx, cc_eval_buffer =
  eval_operand_no_reorganize config span (Move q) ctx in
([receiver; buffer], ctx,
 cc_comp cc_receiver (cc_comp cc_buffer cc_eval_buffer))
```

`read_place_check` itself rejects bottom and reserved borrows recursively, so
the sibling check cannot be reduced to a type/local-ID comparison [readcheck].
Keep explicit receiver bottom assertions if desired for diagnostics. Do not
cache its path/value before preparing the sibling. Preparation can end loans,
restore values, or invalidate a sibling borrow; rechecking both catches that
in the final prepared context. `value_has_loans` checks the receiver contents,
not a semantic disjointness claim about two local IDs [loans].

Use the factored existing BMut constructor, which writes a fresh child loan
through the prepared path. No extra reorganization happens between these reads,
child creation, and the ordinary sibling Move. Ordinary Move reads the local,
checks it, replaces its value by bottom, and has the identity continuation
[operands]. It never dereferences this shared-slice operand. Compose preparation
continuations in their original argument order; `cc_comp f g e = f (g e)` [cps].
Calling full `eval_rvalue_ref` here would reorganize a second time. Retain the
SymbolicMode guard, ordinary call abstraction projections, and backward
restoration; do not forcibly end the child at return. Existing generic/nested
Self representation remains an interpreter-support boundary, not something
the visitor proves borrow-free.

## Genuine dependency canary and negatives

Use stable `std::io::Result<usize>` in a tiny dependency crate; no unstable
`core_io` feature is needed. On this pinned source, std reexports alloc IO,
alloc reexports core IO, and core reexports `error::{Error,Result}` [stdreexport],
[allocreexport], [corereexport]. Thus the underlying output is the exact named
owned Error above, not a stand-in. A minimal candidate avoids Try helpers:

```rust
pub trait WriteStep {
    fn write(&mut self, bytes: &[u8]) -> std::io::Result<usize>;
    #[inline]
    fn twice(&mut self, bytes: &[u8]) -> std::io::Result<usize> {
        match self.write(bytes) {
            Ok(_) => self.write(bytes),
            Err(e) => Err(e),
        }
    }
}
```

The extracting crate should call `twice` through `T: dependency::WriteStep`.
For concrete safe behavior without arithmetic or overflow paths:

```rust
pub struct State(pub bool);
impl dependency::WriteStep for State {
    fn write(&mut self, bytes: &[u8]) -> std::io::Result<usize> {
        let previously_seen = self.0;
        self.0 = true;
        Ok(if previously_seen { bytes.len() } else { 0 })
    }
}
```

Run with initial `State(false)` and nonempty bytes of length one. Expected
`Ok(1)` plus final `State(true)` observes the restored first mutation before
the second call. A bool toggle twice with initial false has final false, which
cannot distinguish zero mutations; setting true and returning a constant alone
does not observe both calls. A helper should match on the genuine Result and
check both final state and byte count.

Before calling it a reproducer, require actual nonlocal optimized extraction of
first `Read(Local self)` plus distinct `Move(Local shared bytes)`, followed by
receiver reuse/final Move. Explicit Ref+Move output is a control. Inspect that
the original method has the two independent late-bound regions and exact named
Error output. The source pattern alone does not prove the optimizer retained
Read or that all proposed guards admit it. Result has a Lean builtin mapping
[resultmodel]; the direct Lean builtin table has no matching IO Error mapping
in the inspected source. An extracted opaque Error declaration or generated
module may require additional artifacts/imports. Source typing, native behavior,
Lean elaboration/kernel result, and proof assumptions are distinct observations;
do not replace Error with unit to evade that frontier.

Required source negatives are (i) `fn escape<'a>(&'a mut self)->&'a mut Self`;
(ii) `save<'a>(x:&'a mut u8, slot:&mut Option<&'a mut u8>)`;
(iii) shared `&Cell<Option<&'a mut u8>>` storage (use `slot.set(Some(x))`);
(iv) same-region receiver/buffer signature, added outlives constraints, or an
extra callback; (v) `Copy`/Read buffer, projected buffer/receiver, same local,
wrong result/element type, or unsafe/foreign/variadic signatures. These are
shape rejection cases even when some signatures are safe Rust. Safe sibling
timing source such as calling a mutable method with `&self.bytes` should retain
ordinary two-phase semantics and stay outside B if its operand/lifetime shape
does not qualify; distinct local temporaries alone do not authorize it. A
borrow-check-negative live shared slice into an exclusively borrowed field
must remain rejected by Rust, not become a green canary. Synthetic merged-group,
cross-edge, nested-binder, and sibling-invalidated-by-preparation cases are
interpreter/classifier obligations, not evidence supplied by this source note.

[types]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:548
[scalars]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Values.ml:49
[opens]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:1
[args]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:490
[tyconstructors]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:796
[names]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/TypesUtils.ml:30
[lookup]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/Contexts.ml:219
[metadata]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:1057
[decl]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:1599
[error]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/error.rs:72
[result]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/result.rs:558
[flatcall]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpStatements.ml:607
[instantiate]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpUtils.ml:1054
[outlives]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/charon/charon-ml/src/generated/Generated_Types.ml:559
[edges]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/RegionsHierarchy.ml:165
[groups]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/LlbcAst.ml:35
[static]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/RegionsHierarchy.ml:432
[regionvisitor]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/TypesUtils.ml:91
[readcheck]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpExpressions.ml:51
[loans]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/llbc/ValuesUtils.ml:393
[operands]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/InterpExpressions.ml:628
[cps]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/interp/Cps.ml:38
[stdreexport]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/std/src/io/mod.rs:312
[allocreexport]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/io/mod.rs:198
[corereexport]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/mod.rs:24
[resultmodel]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0395/workspace/aeneas/src/extract/ExtractBuiltinLean.ml:178
