# Core 030 construct correspondence map

Status: implemented minimal correspondence (T020). G1/G2 evidence adds mixed-runtime
and adversarial closure; this map is a reviewed argument, not a machine-checked Rust theorem.

| Obligation | Implemented authority / seam |
|---|---|
| L1 complete Ref classes | `semantic/module.rs::EntityItem::reference_fields`, `Module::references_to`; synthesized constraints in `admit/typecheck.rs`; `encode/ref_world.rs::inventory` |
| L2 N=K+R | Actual `World.bound` / `env_s`, typed identity/freshness premises; `encode/relational.rs` known candidates and unrestricted parent counts |
| L3 unchanged frame | Core ordinary effects only modify actual State bindings / creations / removals; `complete_child` retains all other rows |
| L4 exact child edges | Core `Evaluator::incoming_prime`; verifier `World.env_post`, `creates`, `removes`; each present field separately |
| L5 total query bridge | Admitted `QueryKind::Select` / `Where`, typed required-Ref field equality and captured target; `count_congruence::source`, relational parent summary and original errors |
| L6 existence | Core `exists_s` / child World and `incoming_prime`; encoder `exists_term`, actual fresh creates/removes |
| L7 prefix | Core `run_transition`, `run_complete_child_rules`; encoder `ActionEncoding::path/noerr` plus guarded auxiliary proof at child entry |
| L8 identity | `checks.rs` actual reference sites/full-module dependencies; independent `governance/semantic_proof.rs` inventory; versioned cache/evidence context |
| Actual counterexample | `confirm.rs` complete finite snapshot and exact expected actual reference failure, including early `constraint_post` |
| Archive/current split | `trusted.rs` manifest/envelope decoding and exact-current eligibility; authentic 0.10 signed history fixtures |

The old final `Integrity` step does not represent every earlier synthesized Ref failure.
Its proof alone cannot satisfy the new obligations. Unknown unbound rows cannot vanish
through a binding list or witness-slot bound. Optional None contributes no reference;
Read-role values are not State replacements. New summary interpretation cannot silently
change complete observed incoming facts. Runtime implementation, historical bytes and
the supported public facade remain unchanged.

The actual unrestricted integer is `Encoder::reference_residual`; witness-only equations
are added to `Encoder.witness`, never `axioms`. `reference_count_link` links only an
actual admitted total required-Ref equality filter over Select, including its typed
capture and actual State contributions. `reference_checks` computes the exact child
conditions. `ActionEncoding.reference_prefix` is captured immediately after postconditions;
`checks::with_action` independently discharges their conjunction with `Nice::Raw`.
No result is globally asserted: `references_proven` gates later ordinary authority;
undischarged later obligations report `unproved_reference_prefix`. Actual
`reference_world` preservation sites use that prefix directly and retain canonical
class paths and no invented parameter. `governance::semantic_proof::validate_reference_inventory`
separately enumerates declarations/effects. `checks::action_dependencies` binds removal
checks to exact serialized module content from their first use.

`confirm::request_parts` reconstructs all source rows, computes incoming facts from
the complete finite universe, and uses that universe as existence authority (including
unused absent-slot values). `Expect::ReferenceFails` requires Core's actual first
synthesized reference failure with matching source declaration, field and constraint
hash. A failed candidate is inconclusive; a bounded UNSAT witness search never proves
an unrestricted claim.


ActionHash identifies a body, not necessarily a unique public capability name.
Concrete reference inventory selection therefore matches both name and hash and
accounts for every reference-world result, including rejecting foreign scopes.
Removal diagnostic cache dependencies bind the public action name in addition
to exact module content; equal bodies cannot transfer one action's report/site
metadata to another action. No BehaviorHash or ActionHash algorithm is changed.
