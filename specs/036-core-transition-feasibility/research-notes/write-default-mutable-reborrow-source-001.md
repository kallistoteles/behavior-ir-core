# Write default mutable reborrow: source diagnosis 001

Status: NEW, UNSELECTED; source research only. No implementation or pilot authorization.
The session reports actual387 CLOSED: failed1/source-valid/noStop/treeEmpty/groupEmpty.
It reused original313 raw/normalized IR and compiled383 (slice metadata + canonical unit constant).
The closed [actual387 log][log] reports `Can't copy a mutable borrow`, then failed translation of
`core::io::write::Write::write_all`; partial output is not a translated default body.
Compiler main SHA supplied by the session: `ae795600951da4d73bc9da63da4808d4de3b295a193b44a54012c48f541879dc`.

## Exact operand and diagnostic route

The [original313 IR][ir] is one physical JSON line (54,612,113 characters including newline).
Stable selectors: `translated.fun_decls` member `def_id=317`, `body.Structured`, statement `id=457404`.
That function is `core::io::write::Write::write_all`; local1 is `self`, local2 is `buf`.
The exact small operand fragment is:

```json
"args":[{"Read":{"kind":{"Local":1},"ty":{"Deduplicated":1808}}},{"Move":{"kind":{"Local":6},"ty":{"Deduplicated":1247}}}]
```

Its callee is `Regular.kind.Trait`, trait reference clause `Free=0`, trait declaration45, method0;
the call generic regions are `Body23, Body24`, destination local5, and statement span dedup4388.
Span4388 is explicitly defined on local5 as file147 `216:18–216:33`.
The immediately preceding statement457395 copies shared `buf` (local2) into local6.
There is no intervening `Ref(Mut, Deref(self))` in this call sequence.
Pinned Rust says `self.write(buf)` at [write.rs216][writecall], inside the loop [214–225][default].
The receiver type is established by `write_all(&mut self, ...)`; this is the mutable receiver,
not the shared buffer copy and not executable pointer metadata.

The call instantiator takes the *trait method declaration* span at [InterpStatements.ml574–576][callspan].
The symbolic evaluator resets `span = call_info.call_span` at [1364][spanreset] and passes it to
`eval_operands` at [1400][args]. Hence the error points at [write.rs101][declaration], not its call site.
`eval_operands` first prepares all operands, then evaluates them at [Expressions651–658][operands].
Preparation classifies `Read p` together with `Copy` as Read access, greedily expanding nonmetadata
places at [401–408][prepare]. The helper expands borrow-containing symbolics at [25–43][expandprep];
mutable-reference expansion creates one fresh borrow ID at [Expansion504–520][expandmut].
Evaluation then classifies `Read p` together with `Copy` again, reads local1, and calls `copy_value`
at [594–617][readcopy]. Its explicit `VMutBorrow` case rejects at [200][reject].
The log's `Interp.ml686` is the [error-reporting wrapper][wrapper], not the failing operation.
No runtime trace with concrete borrow IDs was retained here; this is the source-forced route,
consistent with the unique concrete-mutable-borrow diagnostic.

## Rust reborrow versus copying, and the existing supported construction

The owning [Charon schema128–133][schema] permits `Read` of non-Copy values when sound;
it mentions CopyForDeref, named constants, and introduced reads. `Copy` separately carries Copy evidence.
Pinned [core marker.rs415–417][copylaw] explains that copying `&mut T` creates a mutable alias;
[486–488][copyimpl] implements Copy for shared references only.
Thus the source method invocation is ordinary temporary exclusive access; interpreting its retained
`Read(self)` as an unrestricted duplicate of the receiver is unsupported.
The available Charon package contains generated OCaml schemas, not the Rust producer implementation.
The schema alone does **not** identify which producer/pass introduced this particular Read or its
precise intended lifetime. That producer contract remains a prerequisite for choosing a correction.

Existing `eval_rvalue_ref` has this exact [signature1248–1250][refsig]:

```ocaml
config -> Meta.span -> place -> borrow_kind -> eval_ctx ->
  tvalue * eval_ctx * (SymbolicAst.expr -> SymbolicAst.expr)
```

It is a later, nonrecursive `let`, after `eval_operand_no_reorganize` (416), so it is not already
lexically available there, and it is not exported by `InterpExpressions.mli`.
Its [BMut branch1309–1327][mutref] already implements `&mut *self`: Write access to the dereferenced
place, fresh child ID, child `VMutBorrow(child,v)`, and `VMutLoan(child)` written at that place.
[Paths227][deref] enters the outer mutable borrow; [Paths124–125][update] reconstructs its wrapper.
The resulting state is `self = mut(parent, loan(child))`, result `mut(child,v)`, not two parent borrows.
[Paths295–299][writeaccess] refuses access through shared borrows/loans; [Borrows871–879][giveback]
restores the child's value to its loan when ending the concrete child borrow.
This is an existing interpreter primitive, not evidence of an existing frontend Read-lowering pass.

A typed dereference can be built as `{ kind = PlaceProjection (p, Deref); ty = referent_ty }`,
with `referent_ty` extracted only from `p.ty = TRef(_, referent_ty, RMut)`;
the owning [place schema150–162][places] requires both the outer pointer type and projected type.
The existing [PrePasses1459–1460][placeexample] illustrates that constructor.
Naming/synthesis provenance uses `SynthesizeSymbolic.mk_mplace span p ctx`; its [18–19][mplace]
drops a Deref for naming, while retaining local/field provenance. It does not perform the reborrow.
The reference primitive returns the same value/context/continuation shape as an operand; it does not
itself emit an opaque target call. Its continuation carries any context reorganization/expansion.

A conditional implementation could factor the existing BMut creation logic into an earlier helper.
It must preserve two phases: prepare `*p` with **Write**, `greedy_expand=false`, for every qualifying
operand before evaluating any operand; then create the child and update the prepared path without
reorganizing again. Current Read preparation of `p` is insufficient as that contract.
[Expressions65–86][access] shows the required path access + loan ending + checked read sequence;
[348–360][twophase] and [the public interface warning40–43][warning] explain why all preparation
must precede operand consumption. Calling the full reorganizing reference evaluator inside
`eval_operand_no_reorganize` would violate that separation unless the caller contract is redesigned.
Qualification must come from a verified Read producer/call-lifetime contract, not `RMut` type alone.

## Small canary and required observations (not executed)

The smallest useful safe-Rust candidate retaining the trait-default route and receiver reuse is:

```rust
pub trait Step {
    fn step(&mut self);
    fn twice(&mut self) { self.step(); self.step(); }
}
pub fn run<T: Step>(x: &mut T) { x.twice(); }
```

This is a candidate, **not a proven reproducer**: no extraction or translation ran for this note.
The acceptance predicate is fresh pinned extraction showing Read(self) at a trait call inside
`Step::twice`, followed by another use of the same receiver; explicit Ref+Move lowering is only a
control and does not reproduce actual387. If this candidate lowers differently, minimize the pinned
Write default while preserving that exact operand predicate, rather than claiming reproduction.
Red must fail at the mutable-copy route with existing compiler; green must translate the same raw IR
with the proposed narrow source change, prove sequential mutations reach the final receiver, and
show fresh child IDs, parent suspension, child ending, and continuation composition.
Negative laws: copying VMutBorrow still rejects; plain Move still consumes its source; shared Read
and the exact metadata/unit regressions retain their behavior; shared-to-mut access is rejected;
parent access cannot silently create a second live child or invalidate a child escaping in a result.
Use a borrow-check-negative `let y = &mut *x; *x = 1; *y = 2;` separately: it must not become an
accepted aliasing canary. Include call-lifetime escape and sibling-operand preparation cases before
broadening any qualification rule. Do not replace Read with Move or authorize mutable metadata.
Source supports a reborrow primitive; it does not yet establish a safe general Read interpretation,
a green canary, kernel/export coverage, full Write support, or any next RawPtr frontier.

[log]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0387/commands/translate/stdout.txt:2
[ir]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0313/worker_entrypoints_names.llbc:1
[callspan]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpStatements.ml:574
[spanreset]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpStatements.ml:1364
[args]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpStatements.ml:1400
[operands]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:651
[prepare]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:401
[expandprep]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:25
[expandmut]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpansion.ml:504
[readcopy]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:594
[reject]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:200
[wrapper]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/Interp.ml:676
[refsig]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:1248
[mutref]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:1309
[deref]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpPaths.ml:227
[update]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpPaths.ml:124
[writeaccess]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpPaths.ml:295
[giveback]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpBorrows.ml:871
[placeexample]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/PrePasses.ml:1459
[mplace]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/symbolic/SynthesizeSymbolic.ml:18
[access]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:65
[twophase]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:348
[warning]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.mli:40
[schema]: /var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/charon/charon-ml/src/generated/Generated_Expressions.ml:124
[places]: /var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/charon/charon-ml/src/generated/Generated_Expressions.ml:150
[writecall]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/write.rs:216
[default]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/write.rs:214
[declaration]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/write.rs:101
[copylaw]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/marker.rs:415
[copyimpl]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/marker.rs:486
