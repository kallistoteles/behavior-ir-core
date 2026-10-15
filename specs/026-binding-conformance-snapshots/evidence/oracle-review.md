# Independent semantic oracle review

All ten complete expectation JSON documents were authored before any corrected-request execution. The original-request defect probe is the only action evaluation performed at this point. Static admission/expression identities are in module-identities.json and expression-identities.json; static-admission.rs invokes admission and walks admitted expressions, never evaluation.

| Cases | Independent consequences and full-record schedule |
| --- | --- |
| invoice allowed/refused | Parent nonnegative-amount invariant, pending status, manager role, approval-limit comparison. Allowed: status/approved_by effects, identity postcondition, typed complete-child invariant and parent amount observation. Refused: stop at approval limit. Context anna is not persisted membership. |
| project_margin allowed/refused | Revenue guard precedes high_risk. Allowed margin=(100-98)/100=0.02, high_risk=true, flagged=true. Zero revenue short-circuits before division/derived evaluation. |
| accounts allowed/refused | Incoming(c2)=[] permits removal with full last value. Incoming(c1)=[Account#a1.owner] denies before lifecycle. Supporting source row exists in the explicit parent. |
| ledger allowed/refused | Both incoming balance constraints precede amount/active/available guards. Allowed simultaneous 100-10=90 and 5+10=15; both child constraints observe immutable parent balances. Amount 500 denies after available=100. |
| orders allowed/refused | Explicit c1 capture of admitted open-order query gives 0/1. Allowed removal retains both Order rows and unrelated c2; both Order child constraints precede the empty-Employee uniqueness invariant. Refused stops before removal and global child validation. |

Record construction reviewed against eval.rs::run_transition, run_rules, run_complete_child_rules, query_s, observe_parent_fields and record.rs::normalize_current_legacy/semantic_evidence. The declarative records contain explicit ordered trace entries, reasons, deltas/lifecycle, derived values, observed fields/queries/references and complete parent universes. They are full current Record08 objects, not subsets or historical-record conversions.

Typed decimal literals follow the existing field codec: fixed Money fields have two fractional digits, while the project module's unscaled Money remains normalized. Query instances are static identity calculations from admitted query definitions and the explicit captures using hash.rs::query_instance's existing length-prefixed domain construction. No action-result values were obtained from evaluator output.

No command declarations, command fields, semantic_profile, refused_request, new record/result hash, array normalization or diagnostic stripping is introduced. Required exclusions are solely the existing Core as_json/diagnostics separation.

Before-execution byte hashes are in oracle-input-hashes.json. Any later correction must be justified by module/rule/codec source and recorded separately; actual output may not be copied into expectations.
