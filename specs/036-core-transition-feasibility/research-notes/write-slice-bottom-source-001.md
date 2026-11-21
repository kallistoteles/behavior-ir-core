# Write slice bottom: source-only ownership and remedy boundary

Status: **unselected research**. The reported Aeneas406/actual412 diagnostic is supplied context, not independently observed here. Only bounded source reads were performed; no live IR, outputs, logs, processes, build, or tests were inspected. No translator or model-equivalence result follows from this note.

## Owning check and concrete conditions

The exact message is emitted by [`read_place_check`, InterpExpressions.ml:51–57][check], after `eval_place` returns a typed value and path. Its assertion requires `not (bottom_in_value ctx.ended_regions v)`. [`Errors.ml:154–160`][assert] routes a failed assertion through `craise`; normally that records an error and raises `CFailure` ([119–127][raise]). [`Interp.ml:676–692`][handler] catches that failure and reports “Could not translate … because of previous error”; line 686 is the warning handler, not the owning semantic check.

There are **two** concrete ways to satisfy the failure predicate: a visited `VBottom`, or a visited symbolic value whose type's region IDs intersect `ctx.ended_regions` ([`InterpUtils.ml:487–529`][predicate]). Thus the message alone cannot distinguish an uninitialized/moved value from invalidation through an ended region. Source examples of literal-bottom production include moving an operand ([`InterpExpressions.ml:627–638`][move]) and ending a matching shared/reserved/mutable borrow ([`InterpBorrows.ml:108–128`][end-borrow]); these are possible mechanisms, not evidence that either caused this run.

The check runs during operand preparation as well as final evaluation: access reorganization updates the context, ends loans, optionally expands borrows, then calls `read_place_check` ([65–86][prepare]); `Copy`/`Read` and `Move` also call it in final operand evaluation ([602–638][move]). Therefore a source span does not identify which preparation/final read failed, which local was read, or which earlier operation invalidated it.

## What the Rust span establishes

Unmodified [`Write::write_all`, write.rs:214–227][write-all] advances its buffer on `Ok(n)` using `buf = &buf[n..]`. This corresponds to `RangeFrom<usize>` indexing; the retained [`slice/index.rs:516–550`][range-from] implementation checks `self.start > slice.len()`, then line 549 computes `unchecked_sub(slice.len(), self.start)`, and line 550 constructs the suffix through `get_offset_len_noubcheck`. The generic `Index` wrapper at [18–20][index-wrapper] delegates `index.index(self)`.

**Inference only:** the reported span places the obstruction around suffix indexing/length/subtraction preparation, beyond the earlier mutable receiver plus moved-buffer call. It does not establish a Rust bounds error, the failing operand, a raw-pointer failure, or a specific interpreter lifetime bug. If the failing value were known to be a plain `usize`, its own region-free symbolic type would exclude the ended-region branch; the span alone does not provide that fact.

## Actionable remedy boundary

1. Preserve the bottom assertion. A bounded diagnostic at its owner could report access kind, place/path, direct/nested bottom versus ended-symbolic-region IDs, and the function/span, without dumping the full context. That distinguishes the two predicates before choosing a semantic change. No such diagnostic was added here.
2. If retained statement evidence later shows an ordering/invalidation fault, repair that specific preparation, metadata read, or region-end transition. The current B patch deliberately changes only a qualified trait-call profile with a mutable receiver, moved shared byte slice, and owned IO result ([`mutable_buffer_source_v2.py:17`][b-evaluator], [48][b-qualifier]; installed dispatch [1565–1571][dispatch]). `SliceIndex::index` returns a borrowed slice; broadening B into this path would cross its existing qualification boundary.
3. A library-model boundary is an alternative investigation, not a demonstrated fix: the Lean table **already contains** the exact `RangeFrom<usize>` `index` mapping ([`ExtractBuiltinLean.ml:1196–1200`][lean-fun]) and trait implementation ([1827–1831][lean-impl]). The shared table's nearby range entries are `Range<usize>` ([`ExtractBuiltin.ml:679–711`][shared-range]). Check the intended backend and exact name matching before proposing missing-model work. Merely adding a builtin entry is insufficient evidence: [`Translate.ml:28–35`][translate] interprets a retained `StructuredBody`; builtin export filtering happens later ([949–965][export]). Avoiding unsafe library-body interpretation requires an intentional upstream body/model boundary, plus appropriate backend semantics and validation. Raw-pointer dereference is separately unsupported ([`InterpPaths.ml:191–197`][raw-pointer]), so traversing the remainder of this Rust body may expose another independent limit.

No source modification, candidate selection, new tool/model equivalence, or native closure claim is made.

[check]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpExpressions.ml:51
[assert]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/Errors.ml:154
[raise]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/Errors.ml:119
[handler]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/Interp.ml:676
[predicate]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpUtils.ml:487
[move]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpExpressions.ml:602
[end-borrow]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpBorrows.ml:108
[prepare]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpExpressions.ml:65
[write-all]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/io/write.rs:214
[range-from]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/slice/index.rs:516
[index-wrapper]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/core/src/slice/index.rs:18
[b-evaluator]: /data/repos/behavior-ir-core-033/experiments/transition-study036/mutable_buffer_source_v2.py:17
[b-qualifier]: /data/repos/behavior-ir-core-033/experiments/transition-study036/mutable_buffer_source_v2.py:48
[dispatch]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpStatements.ml:1565
[lean-fun]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/extract/ExtractBuiltinLean.ml:1196
[lean-impl]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/extract/ExtractBuiltinLean.ml:1827
[shared-range]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/extract/ExtractBuiltin.ml:679
[translate]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/Translate.ml:28
[export]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/Translate.ml:949
[raw-pointer]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0406/workspace/aeneas/src/interp/InterpPaths.ml:191
