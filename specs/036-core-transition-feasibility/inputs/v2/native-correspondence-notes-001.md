# Native correspondence: current verified boundaries and remaining obligations

The actual compiled Views source was extracted and translated successfully in a0096 and a0100. This is a source probe, not a proof of Core correspondence. The original twelve035 law roots were freshly audited and kernel checked under Lean4.30 (a0085) and separately ported/audited/kernel checked under analysis Lean4.36 (a0098). One proof tactic explicitly unfolds the same existing `apply` definition; all twelve expected theorem types remain unchanged.

The monolithic generated Lean failed elaboration at a0099. The first error was strict positivity of recursive JSON `Value.Object` through an opaque `serde_json::Map`. Subsequent errors included a shadowed `error.library` reference and a recursive trait-instance elaboration diagnostic. Those downstream errors must be checked again after fixing the first error; they must not be treated as independent semantic counterexamples.

The pinned backend explicitly recommends split external definition templates. a0100 uses `-split-files -impl-namespace`, yielding unchanged generated `Types.lean` and `Funs.lean` plus explicit external type/function templates. A list-backed finite generic JSON-map type is an authored model candidate for positivity. No native map operation/refinement law is inferred from that representation, and no target projection/observation equality may be introduced as an axiom.

## Exact source roots to inventory

| Bridge | Real callable boundary | Relation still to establish |
| --- | --- | --- |
| B01 | `eligibility::{module,finish}`, `ground::{view_step,ordinary_step}` | Actual selector admits the declared fragment; every outside-selector execution uses equal complete original arguments. |
| B02 | `Views::{seed,text,seed_row,seed_relation}`, actual Store version loading | Full native JSON/ID/version/absence/owner projection corresponds to arbitrary finite model states. |
| B03 | `Ground::{check,invoke_expected_with_metadata,quarantine}`, `acquire::verify` | Exact history/subject/writer/epoch authorization; no unchecked/pending/lost-ack ground promotion. |
| B04 | `Views::{stage,apply,materialize,active_children}` | Exact maintained view and canonical state/versions before and after matching acknowledgement. |
| B05 | `fixtures::invoke_request_with_metadata`, `observation::execute_original_with_metadata`, patched prepared evaluator | Equal complete actual invocation/result/effects/definedness/first error/order, including original fallback. |
| B06 | actual `behavior_models::safety::snapshot::validate_store_snapshot`, checked model preservation | Native Safety projection and inherited validity without assuming a safe child. |
| B07 | `observation::complete_original`, original envelope/identity/serialization calls | Full eight-field observation including JSON numeric distinctions, native metadata/context and exact identities. Shared-call congruence requires equal complete arguments. |
| B08 | `io::{write,read_bytes}` and eventual actual output wrappers | Successful original byte/newline/flush/sync completion and performed error effects. |
| B09 | `Capture::commit`, expected-parent Store commit/confirmation, Ground promotion | Conflict, precommit refusal, accepted commit, applied-lost-ack and subsequent reconciliation. Memory acknowledgement is separate from durability. |
| B10 | real CLI entrypoints/protocol/roots/build identities/runner/source extraction | Compose all required bridges and actual performed error/output effects over the real selected source/cfg/compiler/runtime subject. |

A full callable/cfg/monomorphization/dependency closure is not yet available for all these roots. The actual Views LLBC declaration inventory retains opaque/external nodes as unestablished. JSON, finite ordered collections, strings and numeric values, dynamic EvaluationFacts, Arc epochs, error/panic/arithmetic and I/O require declared source-bound treatment. This document is an inventory aid; it closes no bridge.

## Documented kernel restriction behind the alias failure

The official Lean reference, nested inductive types, requires recursive occurrences to appear directly beneath an inductive type constructor; a term that merely reduces to such a constructor is not accepted. This explains why an abbreviation of a list-backed map still fails even after the opaque map was replaced. The next authored external type candidate uses an explicit finite-map inductive constructor. Its Rust type annotation remains opaque, because logical map constructors do not assert the physical Rust BTreeMap layout. Native operation/refinement laws remain unresolved.

Primary source: https://lean-lang.org/doc/reference/latest/The-Type-System/Inductive-Types/ (section4.4.5.4). An independently reported matching case appears at https://github.com/leanprover/lean4/issues/13465 . These explain a frontend/kernel restriction; they are not native semantic proofs.
