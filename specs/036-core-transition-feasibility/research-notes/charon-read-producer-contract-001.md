# Charon Read producer contract 001

Status: NEW, UNSELECTED; source-only follow-up to [the mutable-reborrow diagnosis][previous].
Owning Charon pin: `454586e9b770231e66d2062993e632dfc06463e2` (verified in retained `charon-pin`).
Only this new note was written. No builds, tests, extraction, package acquisition, source changes,
process inspection, or protected-file reads. Narrow local inventories found the ML package only;
the Rust sources below were read from pinned primary raw GitHub pages, without saving a checkout.
All remote line anchors below use physical source lines, verified by in-memory enumeration;
the browsing renderer collapses blank lines, so its displayed line offsets differ.

## Owning producer facts

1. [translate_bodies.rs1031–1040][producer] maps a MIR Copy operand to Charon Copy when
   `hax::solve_copy` supplies evidence, otherwise to Read. The comment explains that runtime MIR
   replaces CopyForDeref by Copy, including for mutable references. This branch checks neither
   receiver position nor callee signature.
2. [1129–1132][copyforderef] separately translates CopyForDeref as a non-retagging Read.
   [2008 and2181–2193][arguments] translate call arguments through the same operand function in
   vector order. They add no receiver-specific borrow operation or lifetime field to Read.
3. [expressions.rs78–101][schema] documents Read as a sound non-Copy read, distinct from Copy
   evidence and Move; retagging is a separate flag on Rvalue::Use, not part of Read.
   [translate_bodies.rs1499–1504][reborrowtraits] rejects Rust's separate Reborrow-trait rvalue;
   that feature is not the ordinary reference receiver issue here.
4. [get_mir.rs93–107][nonlocal] obtains optimized MIR for available nonlocal ordinary functions.
   The original313 Write default is nonlocal, so requesting elaborated MIR for local items does
   not restore its source-level borrow temporaries. The pin's [toolchain][toolchain] is
   nightly-2026-09-17; no running compiler/version probe was performed.

The original313 primary selector remains `translated.fun_decls[def_id=317]`, statement457404:
first call operand `Read(Local1)` (self), second `Move(Local6)` (shared buffer), trait45/method0.
See the exact retained fragment in [the previous note][previous] and [original313, physical line1][ir].
These facts identify the direct call translation route: a non-Copy MIR Copy becomes Read.
They do **not** identify the particular rustc optimization that removed any earlier borrow.
No pre-optimization MIR or pass trace was inspected; attributing it to a named rustc pass would
exceed the evidence. The Charon Read tag itself is **not an implicit-reborrow instruction**.

## What the owning consumer means by reading

The same pinned project's [MiniRust operand translator681–708][operandload] turns ordinary
Copy/Read/Move operands into a load. Its [call translator523–534][callload] treats Move as an
in-place argument and Read as a by-value argument. Its [function entry341–345][entry]
validates arguments with `fn_entry=true`; [assignment437–441][retag] separately validates
retagging assignments. Thus pointer loading and alias-model validation are distinct stages.
This backend is evidence for the distinction, not a proof that Aeneas can implement it identically:
it requires monomorphized ULLBC and [rejects remaining trait calls516–517][callload].

Inference: at this ordinary `&mut self` call, an exclusive child call view can model the
source-level reborrow after the pointer has been supplied to the callee. Merely loading a pointer
must not create a second independently usable Aeneas parent borrow. Moving the parent loses
receiver reuse; copying VMutBorrow violates its uniqueness invariant.

There is an existing Charon reconstruction pass, but it is **pointer-place reconstruction**:
[reconstruct_copy_for_deref.rs69–76][reconstruct] accepts a once-assigned, non-retagging pointer
read, then [95–130][reconstructlimits] requires uses beneath Deref/PtrMetadata and uninterrupted
same-block ordering. [40–56][siblings] rejects by-move siblings and direct local uses.
It cannot turn this direct Read-self call operand into a Ref reborrow. Its precautions also
show why duplicating/reordering pointer accesses is not justified by the RMut type alone.

## Lifetime and escape facts

[translate_types.rs29–46][regions] creates fresh body regions for erased regions and instantiates
region binders with fresh/erased arguments. [typecheck_and_unify.rs86–99,783–786][unify]
unifies body regions on a best-effort basis and compares types permissively. These facilities do
not give Read an attached NLL interval, a child-parent relation, or a nonescape certificate.
A successful Charon type/generic check must not be presented as such a certificate.

The pinned [Write declaration101][write] returns Result<usize>, with an independently borrowed
shared byte slice argument; its source/default receiver borrow is reused by the loop at216.
The signature has no returned receiver reference. That helps delimit this particular call;
checking the output alone is insufficient for a general rule. A sibling mutable argument can
retain a receiver borrow even when the result is unit, for example this safe signature:
`fn save<'a>(x: &'a mut u8, slot: &mut Option<&'a mut u8>)`.
A method returning `&mut` tied to self likewise keeps a child alive after the call.

## Proposed implementation boundary and required laws

A typed `Read(p)` with `p.ty = TRef(_, _, RMut)` is **not sufficient** to qualify generally.
The owning producer deliberately serves multiple contexts. A first candidate must classify at
the call boundary using the full instantiated signature and borrow graph: exact reference/referent
agreement, receiver origin, region relationships across every argument and result, and supported
place/projection classes. Read outside that validated context should retain rejection.
Do not identify a receiver merely because it is operand zero, nor equate different local roots
with disjoint referents. Do not claim all ordinary function arguments or all method calls qualify.

The [retained Aeneas BMut primitive1309–1327][aeneasref] can create a fresh child borrow and replace
`*p` by its child loan, preserving the outer parent wrapper. Reuse it through a factored helper,
with Write access to the typed dereference and the existing continuation, rather than copying IDs.
[Its operand protocol][prepare] prepares all argument paths before consuming operand values.
A call-boundary correction must additionally respect that argument **loads precede callee entry**:
creating an eager child before a sibling load can change access behavior. Either establish that
siblings are independent in the supported call shape, or model their evaluation/retagging order.
Do not end a child automatically on return when a result or mutable sibling can retain it.
Keep call-region abstractions and backward restoration responsible for the actual lifetime;
[InterpStatements1409–1447][abstractions] projects arguments using instantiated region ownership.

The smallest useful **candidate** should place the tiny Step trait in a dependency crate:

```rust
pub trait Step {
    fn step(&mut self);
    #[inline] fn twice(&mut self) { self.step(); self.step(); }
}
```

The extracting crate calls it through `pub fn run<T: dep::Step>(x: &mut T) { x.twice(); }`.
This retains nonlocal optimized-MIR retrieval; a purely local trait may take a different MIR route.
It is not yet a reproducer: require extracted Read-self inside twice, receiver reuse, the existing
mutable-copy red, then a narrow-source green using the same raw IR. Ref+Move output is a control.
Required laws: fresh child/unique parent, mutation restoration and sequential reuse; escaped result
and stored-through-sibling child survive as required; no two live exclusive siblings; correct
shared/sibling load timing and two-phase cases; Copy(VMutBorrow) still rejects; Move still consumes;
shared reads and exact metadata/unit regressions remain correct. These are future obligations,
not tests run here. Producer evidence narrows the candidate to a validated call context; it does
not authorize a blanket mutable Read evaluator or establish a green translation.

[previous]: /data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/research-notes/write-default-mutable-reborrow-source-001.md
[ir]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0313/worker_entrypoints_names.llbc:1
[producer]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/translate_bodies.rs#L1031-L1040
[copyforderef]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/translate_bodies.rs#L1129-L1132
[arguments]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/translate_bodies.rs#L2181-L2193
[reborrowtraits]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/translate_bodies.rs#L1499-L1504
[schema]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/ast/bodies/expressions.rs#L78-L101
[nonlocal]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/get_mir.rs#L93-L107
[operandload]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/minirust.rs#L681-L708
[callload]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/minirust.rs#L507-L534
[entry]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/minirust.rs#L340-L345
[retag]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/minirust.rs#L431-L441
[reconstruct]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/transform/resugar/reconstruct_copy_for_deref.rs#L69-L76
[reconstructlimits]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/transform/resugar/reconstruct_copy_for_deref.rs#L95-L130
[siblings]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/transform/resugar/reconstruct_copy_for_deref.rs#L40-L56
[regions]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/bin/charon-driver/translate/translate_types.rs#L29-L46
[unify]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/src/transform/typecheck_and_unify.rs#L86-L99
[toolchain]: https://github.com/AeneasVerif/charon/blob/454586e9b770231e66d2062993e632dfc06463e2/charon/rust-toolchain#L1-L3
[write]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/write.rs:101
[aeneasref]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:1309
[prepare]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpExpressions.ml:394
[abstractions]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0383/workspace/aeneas/src/interp/InterpStatements.ml:1409
