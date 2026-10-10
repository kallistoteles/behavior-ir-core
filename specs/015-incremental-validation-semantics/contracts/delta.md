# Internal Reference-Derivative Correctness Model

**Status**: Phase 1 implementation/proof design under [plan.md](../plan.md).
This directory adds no external contract: supported APIs, schemas and wire formats
remain defined by their existing canonical contracts.

For a deterministic ordinary semantic operator f:X→Y, X contains canonical inputs
and required semantic facts; Y contains the complete semantic outcome, including
evaluation errors. Define an exact replacement pair by:

    apply(x, diff(x, y)) = y
    D_f(x, dx) = diff(f(x), f(apply(x, dx)))

A replacement for another parent must be rejected rather than silently applied.
Value/value, value/error, error/value and error/error transitions are represented
without loss. For h=g∘f, the corresponding replacement model composes over ordinary
semantics, including their defined error/short-circuit behavior.

This is private test/proof machinery. It does not require runtime DeltaOperator
nodes, signed relations, a query engine, a new Backend operation or a derivative
before a future operator may be admitted. The operator inventory records current
ordinary semantics and evidence scope. Scalar operators inside changed rows are
re-evaluated ordinarily; the optimization is omission of proven-unaffected rows.

The production equivalence obligation and no-removal/locality argument are in
[correctness.md](../correctness.md). Full ordinary evaluation is authoritative
for unproven cases. For fixed canonical inputs, required semantic evidence and
record/hash identities must agree. Backend traces and hypothetical errors from
eliminated reads are excluded, but existing mandatory obligations and actual
backend error routes remain unchanged. No public result algebra is introduced.
