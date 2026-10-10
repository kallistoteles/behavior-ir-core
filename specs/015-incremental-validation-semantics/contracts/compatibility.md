# Compatibility Obligations

015 adds no public interface or document contract. The normative external
interfaces remain:

- [behavior-engine exports](../../../api/engine-surface.txt) and its [explicit facade](../../../crates/behavior-engine/src/lib.rs).
- [Invocation semantics](../../../docs/invocation.md), [persistence](../../../docs/persistence.md), [governance](../../../docs/governance.md) and [commands](../../../docs/commands.md).
- Existing wire admission, schema/hash rules, decision/history formats, conformance fixtures and replay semantics.

Delta/proof models, cache entries, eligibility results and reference strategy
selection remain private. No serialized ValidatedStateCertificate, Backend method,
wire operator, syntax, public flag/error type or binding capability is added.
An engine using ordinary apply/full validation remains conforming.

For equal canonical semantic inputs, preserve the existing semantic outcome and
required evidence/record identities. Mandatory trust, snapshot, history, schema,
identity, reference, consistency, concurrency and atomicity obligations remain
required. Actual backend failures preserve their existing error routes; equal
backend call traces or hypothetical omitted-read errors are not required.

Use existing canonical scripts/gates.sh, conformance and external consumer checks
on the actual revised implementation. An unchanged facade manifest alone does
not prove semantic equivalence. Private TCUP builds/instrumentation are workload
experiments, never published-pin compatibility or official gate substitutes.

## Current implementation evidence

Private runtime code is confined to Store incremental candidate/dependency/lifecycle logic; generic delta and inventory models compile only under Core cfg(test). The ordinary Core evaluator and replay remain the preserved 014 code. Protected source/dependency audits and genuine paired workloads are recorded in verification.json/evidence.md. Actual final scripts/gates.sh results cover the canonical implementation, not either native experiment or historical prototype.
