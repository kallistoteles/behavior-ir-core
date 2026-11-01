# Core033 planning research

2026-11-01. Decisions for [spec.md](spec.md), after reading the constitution,
Core source, study 032 and three delegated primary-source investigations. No
prototype, dependency installation, proof, parameter generation or benchmark was
run. These decisions resolve planning choices; the experimental obligations
remain capable of failure.

## Decisions and alternatives

| Question | Decision | Rationale and alternatives |
| --- | --- | --- |
| Where to implement? | New isolated `experiments/transition-study033/` Rust crate and proof workspace. | Existing production packages stay authoritative. Adapting 032's full-capture/check/replay design would reproduce the work we intend to remove. |
| Formal/native/constraint correspondence? | Lean-defined typed microstep IR; kernel-checked translation to a restricted Rust source AST and R1CS; validate actual emitted source bytes and matrices. | A shared model alone is insufficient. Aeneas/Charon is an optional diagnostic, not a checked semantic bridge. CakeML is a different formal/language stack. [Detailed decision](research-notes/formal-correspondence.md). |
| Tool versions? | Rust 1.98.1/edition 2024, Lean 4.30.0, Python 3.13; root Nix inputs retained. Build-only mathlib v4.30.0 at `c5ea00351c28e24afc9f0f84379aa41082b1188f`. | Keep repository pins. Mathlib supplies finite-field/bit-vector/algebra lemmas rather than a second homegrown theory. Audit transitive axioms of required targets; library import does not waive proof hygiene. |
| Cryptographic backend? | Nova `01b1e2d662a847ed7029770ecbaf6687398899dd`, Pallas/Vesta, Pedersen/IPA and standard Spartan compression on both curves. | Actual upstream compression APIs exist. MicroSpartan is a separately frozen comparator; HyperKZG/SRS and generic zkVMs add unrelated lifecycle/semantic obligations. [Backend evidence](research-notes/proof-backend.md). |
| Hash/encoding profile? | New typed length-delimited SHA-256 profile; four range-checked u64 limbs per application digest. | This baseline avoids an additional hash-family/security change. SHA constraints may be costly: measure rather than assume. A field-friendly hash is a later explicit profile comparison, not silent truncation/substitution. |
| Authenticated state? | Canonical sparse binary Merkle maps over full SHA-256 typed-key digests, with full keys in leaves and checked subtree counts. | Simpler first proof than variable-shape storage. Canonical roots are strategy-independent. Depth is 256, not an asserted O(log N) path. Empty subtrees share constants; only opened paths are checked. Patricia/radix compression is a separately proved optimization. |
| Native optimizations? | Untrusted full and incremental witness production for the same K; counted-map update and local-rule framing first. | Do not build a general certified compiler before testing the difficult proof chain. Unknown coverage stays affected. Full reference execution is an oracle/comparator, never the independent consumer's bridge. |
| Durable publication? | One SQLite database, rusqlite `=0.41.1`, bundled SQLite 3.54.0, WAL/FULL; all required objects/head/results/outbox/pins in one transaction. | Concrete atomic domain; memory-only cannot establish durable latency. No external-file/root-switch protocol or remote service is needed. [Primary-source/storage decision](research-notes/storage-measurement.md). |
| Randomness/replay? | New 033-only injection overlay for the selected Nova entropy path, deterministic recorded synthetic streams, fresh OS entropy in normal mode. | Upstream hardcodes OsRng, including parallel random-vector sampling. Canonical sampling order and injected APIs are planned; no assumption that upstream already supports this. Do not modify retained 032 vendor bytes. |
| Checkpoints? | First baseline writes a complete recursive checkpoint with every committed receipt; verifies its exact endpoint on restore. | Makes cold continuation concrete and charges the large write. Periodic checkpoints require a separate declared suffix-rebuild policy/campaign. Compressed proof validity does not certify arbitrary serialized prover internals. |
| Campaign? | Frozen 27-point N/H/U matrix, complete cold/lifecycle accounting, 100 observations, explicit ceilings and stop reasons. | Native-only, warm-only and partial-certificate measurements cannot satisfy the synchronous target. [Measurement research](research-notes/storage-measurement.md). |
| What counts as completion? | Separate assessment completeness, mathematical correctness and performance; positive G1 requires both latter axes. | A reproducible limitation is a valid negative assessment, never a passed gate or a universal impossibility proof. |

## Concrete Core subset and semantic authority

The G1 closed template is admitted through real Core, not accepted by comparing
a producer-supplied BehaviorHash. It uses `E.x: Int`, optional inert padding,
the local constraint `x > 0`, a literal module count cap, and create/set/emit
actions. Create/set consume literal Int64 input; no arithmetic expression or
partial query optimization is claimed. A `WorkIntent` with constant scalar
payload provides one or two equal intents, including a command-only action.
Scaling modules have a cap large enough for their declared population; the
cap-1000 boundary is separate.

The generator, complete source/admitted inventory, cap, metadata, observations
and action/request binding all need a checked mapping to independent F/J/K
definitions. Tests against actual Core are necessary evidence, not that theorem.
Failure of this mapping blocks FR-011 just as failure of native/matrix translation
does. The module recognizer rejects out-of-template programs, rather than proving
only the action selected by a favorable benchmark.

Relevant primary code:

- [Semantic AST](../../crates/behavior-core/src/semantic/expr.rs): 24 ExprKind
  constructors, six folds and three query/set forms.
- [Types](../../crates/behavior-core/src/semantic/types.rs),
  [values](../../crates/behavior-core/src/semantic/value.rs) and
  [declarations](../../crates/behavior-core/src/semantic/module.rs).
- [Existing fixture construction](../../experiments/transition-study032/src/fixtures.rs)
  and [actual reference execution](../../experiments/transition-study032/src/reference.rs).
- [Public surface inventory](../../api/engine-surface.txt), actual admission,
  evaluation, reads, invocation, migration, verification and Store modules.

**Command order is a canonical representation of a multiset.** Core's source
emission order is nonsemantic; multiplicity is semantic. Canonical intent order
does not promise physical delivery sequencing. G1 keeps this rule and its two
equal intents, rather than introducing source-emission order as new business
semantics. See [commands](../../docs/commands.md) and
[actual canonicalization](../../crates/behavior-core/src/commands.rs).

G0's implementation must produce a complete constructor/public-operation map,
including nested operator variants, versions, source locations, detached
diagnostics and normative phases. The table above is a planning classification,
not a declaration that G0's theorem/inventory gate has already passed.

## Trust and failure boundary

The checked-source route names ordinary pinned rustc/LLVM, runtime/ISA, Lean
kernel, the crypto implementation/security model and SQLite/VFS/deployment
control as explicit trust boundaries. It does not claim a verified compiler or
power-loss-tested hardware. Core-specific source-to-K, actual-matrix meaning,
full-digest binding and module/observation correspondence cannot be moved into
those assumptions to make G1 pass.

Build the smallest real artifact pair first: one nontrivial native microstep,
its actual matrix, kernel-checked correspondence and mutations of each. Then
extend the machine to initialization, exact counted state, hashes, effects and
Done. The selected circuit has fixed shape independent of N/H; the microstep
count and opened paths may grow. One full SHA compression block per hash
microstep is the first fixed-shape schedule. State/path traversal is explicit
authenticated machine data, not a full population vector in every circuit.

Preserve transitive axiom receipts, actual sources/matrices and fresh kernel
replay. No `sorry`, custom semantic axioms or native-evaluation axioms may close
the critical correspondence targets. If the proposed validators cannot be built,
FR-011 is not established, regardless of successful Nova timing.

## New dependency/version evidence

The [mathlib v4.30.0 toolchain](https://raw.githubusercontent.com/leanprover-community/mathlib4/v4.30.0/lean-toolchain)
matches Lean 4.30.0. Its tag was resolved through the upstream Git repository
to the commit above on 2026-11-01; no source build was performed. The build-only
dependency must be locked and its actual axiom closure checked at implementation.
Rusqlite/SQLite versions and their documented durability assumptions are linked
in the storage note. Nova APIs and entropy sites are inspected in the local
pinned source, with exact primary links in the backend note.

All initial technical unknowns now have a selected mechanism or explicit
experimental stop rule. Feasibility, theorem completion and latency remain
unmeasured outcomes, not unresolved requests for user preferences.
