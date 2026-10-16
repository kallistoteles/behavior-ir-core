# Contract: Parent Soundness and Exact Semantic Results

**Authority**: [spec](../spec.md), FR-003/005/006/014/015, PO-001–004/008.

## S1 — Complete, consistent, valid parent before behavioral acceptance

For each W01–W10 in [current corpus](current-corpus.md):

1. Parse fixture data strictly; reject duplicate object keys, floats, duplicate identities, missing/extra type domains or unclassified cases. Check the type domain against admitted module.entities, not merely a handwritten count.
2. Verify the unchanged request's bound state values occur in the explicit parent with matching typed identity/value. Verify original observations against the same authored world. In particular W05/W06 incoming references equal the edges of all authored Account.owner rows.
3. Construct an ephemeral existing `behavior.snapshot.v1` with all world rows in `entities`, request data_version and its complete facts. Use facade Snapshot::decode, requiring Some(snapshot), no errors and the exact typed membership. Every world row participates, so unbound Ref sources are not omitted from consistency validation.
4. Seed a fresh existing legacy Store via genesis_for(module, EvidencePolicy::none(), seeds) and Store::create(InMemoryBackend,...), using exactly the authored rows. Require successful validity and exact typed seed export. Check the explicit empty type domain separately; Store initialization must not stand in for missing authored sections.
5. Only after these checks accept evaluation's ALLOW/DENY as behavioral conformance. This is a fixture proof sequence, not a new production evaluator phase. The actual evaluated request is never rewritten to use these proof views.

An independently authored expected child map is validated the same way for type/state rules. Mechanically apply only the independently expected deltas/lifecycle to the authored parent and require exact child equality, preserving unrelated rows. This mechanical data comparison is not a second business-rule evaluator. No action Store commit or command delivery is performed/claimed by these evaluation checks.

## S2 — N is identity on existing semantic JSON

`N(R) = R.as_json()`. Both Rust and CLI comparison use the entire object with exact recursive JSON equality and canonical serialization equality. No object-key subset, array sorting/deduplication or field removal is allowed. Strict equality also rejects additional fields and meaningful optional-field presence differences.

All five modules remain Legacy: wire 0.4 for invoice/project_margin/ledger, 0.5 accounts, 0.6 orders. Fresh records use `record_version:"0.8"`, `validation_profile:"behavior.complete_resulting_state.v1"`.

| Record component | Exact obligation |
| --- | --- |
| record_version, validation_profile | Exact current contract values |
| behavior_version; action | Full behavior hash and complete {name,hash}; static module item map/schema hash checked separately |
| data_version; optional git_revision | Preserve exact request metadata; neither attests CLI revision |
| state, input, context | Entire canonical typed products, no rounding or omitted fields |
| facts | Complete canonical parent universe and every reached reference/query/field/existence/history observation present in actual record |
| result, reasons | Exact class and complete ordered reason evidence: codes, paths, details, operands and references as applicable |
| trace | Entire ordered array: phase, hash, reads, outcomes/skips, params/roles, rescale evidence, typed child subjects, obligation descriptors and observations |
| derived | Complete semantic array, identities, phase_state and values |
| changes | Entire ordered typed entity/id/param/field/old/new product array |
| lifecycle | Exact presence and complete op/entity/id/last-value entries; successful accounts/orders remove cases only where existing output emits them |
| commands; semantic_profile | Absent for these ten legacy cases; facade command_intents() empty |
| refused_request | Absent for these ten valid-world behavioral cases; not a fixture-specific substitute for ordinary inputs |

The format's future/other optional fields do not authorize permissive comparison. Any unexpected field or profile must fail this fixed current corpus until the contract is deliberately reviewed.

## S3 — Diagnostic exclusions already belong to Core

Compare only `as_json()`, not the separate `diagnostics()` sidecar. Core's existing record construction detaches evidence loc/expr_text/message/textual-rescale/top-level names and retains semantic descriptors. **The checker excludes zero additional fields from as_json.** Domain payload fields called message or loc remain data. Semantic witness names, hashes, required observations and array order remain compared.

Do not change normalize_current_legacy, semantic_evidence, DecisionRecord parsing, replay or canonical hashing. Full-record exact comparison is intentionally stricter than a result-bit comparison.

## S4 — Independent complete expectations

Each expectation file is a full valid current semantic record, directly equal to N(Eval(f)). Author/review it from module rules, explicit parent/child worlds, the existing evaluation schedule and independently calculated expected consequences **before any execution of the corrected request**.

Static behavior/action/item/query/obligation identities may be obtained from admission or existing hash APIs without executing the action. Preserve numerical meanings using existing typed canonical rules; do not invent a separate numeric encoder. A reviewed literal current record is finite fixture data, not an evaluator implementation.

The generator never writes or refreshes expectations. Actual full records may be retained as evidence after comparison, never copied into the oracle to make it pass. Existing historical expectation tables support guard/effect intent but are not templates for record08 trace/layout. A hand-authored subset plus two equal actual results is insufficient for PO-004.

There is no embedded record ID or result_hash in ordinary DecisionRecord08. Check existing module/action/item and semantic witness identities; add no document field or hash domain. If an existing action-result identity is used for a separate comparison, its existing tagged_hash behavior.transition.v1 result is sha256-prefixed and is distinct from a committed Store TransitionRecord hash.

## S5 — Reliable independent invalid-world controls

| ID | Mutation of reviewed current request | Required existing refusal / reached obligation |
| --- | --- | --- |
| N01 | Remove only invoice's User universe, retaining Invoice binding/world | INVALID_INPUT / INVALID_STATE_SNAPSHOT at complete type-domain check |
| N02 | Change bound Invoice amount to another valid nonnegative value, leaving universe unchanged | INVALID_INPUT / INCONSISTENT_FACTS at binding/world consistency check |
| N03 | Set Invoice amount to -1 identically in binding and world, with every universe present | INVALID_INPUT / INVALID_STATE_SNAPSHOT at invalid parent invariant |

Check no body trace/derived/effects and retain actual cause/phase evidence. Do not call a multiply-invalid request a test of a later validator. Negative Account balance can fail earlier as INCONSISTENT_FACTS and is not a substitute for N03. Separate all N cases from the ten ALLOW/DENY entries.

Execute these controls directly through the unchanged plain-request evaluator. Do not let the positive corpus eligibility checker stop the test before Core runs, or report its fixture error/Store GenesisInvalid as the evaluator's refusal. A separately failing parent proof is supporting evidence, not a substitute for the actual reached evaluation phase.

## S6 — Comparison and inventory refusal controls

Keep the result label unchanged while mutating an independently expected/actual semantic product: field delta old/new, lifecycle identity/value, reason code, trace phase/order/outcome/read, child subject/obligation, derived value/hash, parent/query membership, action/behavior/witness hash, data_version or optional-field presence. Exact comparison must fail with case and first differing path. Use structurally valid mutations where claiming semantic comparison; label structural negatives accurately.

Also refuse unknown/missing/duplicate case IDs, missing dependencies, extra request files and changed expected exit statuses. Wrong expected data must fail, not trigger a rewrite.

Command-field absence and empty facade intent bags are the applicable assertions for these unchanged legacy modules. Existing command suites already cover real multiplicity (`command_identity::command_multiplicity_is_semantic_and_never_deduplicated`, `command_records::closed_record_round_trip_preserves_intents_and_duplicate_counts`, `command_evaluation::duplicate_intents_preserve_multiplicity_and_share_content_identity`). Reuse those controls; do not add commands to this corpus or claim a legacy empty bag executed a nonempty command test.

## S7 — Cross-binding meaning

Core publishes one full result oracle and exact comparison, consumed unchanged through facade and CLI paths. Bindings use Core to evaluate; no independent evaluator is defined. Existing downstream language bindings can consume these same requests/oracles after adopting the corrected release. This Core feature does not depend on a new binding implementation, ecosystem patch or hidden completion workaround.
