# Architecture: Behavior Core and its ecosystem

**Core defines meaning. Everything else defines ways to author and use that meaning.**

Behavior is two repositories with one direction of dependency:

```text
HIGHER-LEVEL MODELS      state machine / workflow / …        (behavior-ir)
        ↓ deterministic lowering
BINDINGS                 Python / TypeScript / Java / …     (behavior-ir)
        ↓
BEHAVIOR IR              the semantic assembly language
        ↓ admission
BEHAVIOR CORE            deterministic semantic authority    (behavior-ir-core, this repository)
```

Behavior IR is the interface between innovation above it and stability below it.

## Terms

- **Behavior Core**: defines the fundamental semantics. This repository alone determines the
  meaning of any admitted Behavior IR document.
- **Binding**: gives a programming language access to those semantics. It provides authoring
  syntax and calls the core; it never implements typing, evaluation, hashing or verification.
- **Model**: a higher-level modeling abstraction, such as a state machine, a workflow or an
  approval process.
  - It lowers deterministically and completely to ordinary Behavior IR.
  - It may restrict, compose or generate core semantics. It never introduces runtime semantics
    the core does not know.
  - The core admits the lowered IR without knowing where it came from.
- **Adapter**: connects Behavior to external infrastructure, such as a database backend, a
  message queue or a command executor. It never redefines semantics.

## Dependency direction

```text
models   ──→ behavior-core
bindings ──→ behavior-core
bindings ──→ models
behavior-core ─X→ models, bindings, adapters      (forbidden; scripts/check-boundary.sh)
```

The boundary is the public core contract, not the repository line:
- the `behavior-engine` crate;
- the `behavior` command-line tool;
- the document formats and their schemas;
- the conformance fixtures.

## Where a concept belongs

When a new semantic or modeling construct is proposed, one question decides its layer:

> **Must the evaluator understand this construct for its semantics to be correct?**

- **No:** it is a model, a library or tooling in the ecosystem. It must lower completely to
  existing Behavior IR.
- **Yes:** it is a candidate core primitive. It is decided explicitly as a core feature, never
  hidden in a model.

| Concept | Layer |
|---|---|
| State machine | Model |
| Workflow | Model |
| Approval flow | Model |
| CRUD convenience API | Model / library |
| Entity identity | Core |
| Option semantics | Core |
| Exact arithmetic | Core |
| Queries | Core |
| Schema migrations | Core |
| Persistence and replay | Core |
| Command intents | Core |
| State-machine visualization | Tooling |

**A construct that cannot be lowered faithfully** to Behavior IR is never implemented as
model-specific runtime behavior. Either it is redesigned on existing core semantics, or the
missing concept is proposed as a core primitive in a core feature.

**Each model has one authoritative definition** of its normalization, validation and lowering.
Every binding's syntax for the model uses it; it is never reimplemented per binding.

**A model may have its own canonical form and content identity.** An audit can then keep both
what was authored (the model's identity) and what was executed (the Behavior module hash). The
module hash remains authoritative for runtime semantics.

Models compile downward. They are never named or described as components that change runtime
semantics: Behavior IR is the semantic assembly language, and models are languages above it.

## Semantics and implementation optimizations

**Core specifies semantics, not optimization strategy. An optimization belongs in
Core's implementation only when it is observationally indistinguishable from the
reference semantics.**

Full semantic validation defines the result of checking the canonical state under
the admitted behavior. An implementation may reuse prior work, maintain indexes
or use incremental algorithms only when it establishes the same semantic result,
evaluation failures and semantic evidence covered by existing contracts for the
same canonical state, behavior, invocation inputs, context and required facts.
A conforming implementation may always apply the transition and run full validation;
delta evaluation is optional.

**Observational equivalence concerns semantics, not execution traces.** Backend
call counts/order, cache misses and hypothetical I/O failures of omitted calls
are outside this equivalence. Actually performed backend operations retain their
existing error contract; no public error type or result representation changes.

**Operations may be eliminated; proof obligations may not.** A redundant operation
may be omitted only when equivalent evidence establishes its obligation. Existing
semantic, integrity, trust, snapshot, identity, consistency, concurrency and atomicity
obligations remain mandatory. The valid Backend contract bounds the equivalence
argument; optimization need not detect every arbitrary backend defect by extra reads.

**Unknown dependency means affected.** Reuse requires a proven complete dependency
closure; an unresolved dependency cannot justify skipping an obligation. Validation
reuse starts from a committed parent with exact relevant semantic version bindings.
It preserves governance semantics as well as the existing BehaviorHash/SchemaHash rules.

Delta interfaces, dependency analysis, validation certificates and auxiliary views
are internal implementation/proof machinery. They add no Wire IR, BehaviorHash or
schema identity, admission rule, public semantic capability or Backend requirement.
Canonical state and history remain authoritative. Validation materialization is
reconstructible cache/index state; discarding it permits full validation with the
same semantic answer. Unsupported or unproven optimizations use reference evaluation.

The [015 specification](specs/015-incremental-validation-semantics/spec.md) records
the equivalence and compatibility requirements for a validation optimization.
Its [implementation plan](specs/015-incremental-validation-semantics/plan.md) keeps
algorithms and delta models separate from Behavior's language and semantic contracts.

## Invariants

- Core defines meaning; bindings define syntax.
- Models compile to semantics; they do not add runtime semantics.
- Behavior IR is the common semantic target of every official model and binding.
- There is one semantic truth, whatever the authoring language. Equivalent definitions admit to
  the same IR and the same hashes.
- Core never depends on a model, binding or adapter.
- A higher-level construct that Behavior IR cannot represent faithfully is addressed as an
  explicit core primitive, not hidden in a model.
- The ecosystem may grow quickly; the semantic kernel stays small, explicit and conservative.
- Optimization strategies may change while the reference semantics stay the same.
