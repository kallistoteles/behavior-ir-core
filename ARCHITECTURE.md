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

When a new concept is proposed, one question decides its layer:

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
