# Research: Binding fixture soundness and executable conformance

**Baseline**: `a24b65d26efaf62342daf5ab0f455540dfd61ed1`, tree `ef2f503f4c3abd6d7ab5b913ff3d3bd3fcf6fb35`.

**Method**: Read-only inspection of the spec, constitution, source, archived inventory, tests and release scripts, including three scoped research reviews. Toolchain metadata was inspected separately. No corrected fixture was generated or evaluated, no tests/builds were run, and no production source was edited during this phase. The prior exploratory ten-case failure is context, not implementation's test-first evidence.

## R1 — Add a current corpus; preserve the old generator too

**Decision**: Add `tests/fixtures/bindings/current/` and `tests/fixtures/bindings/generate_current.py`. Keep every existing binding file, source request, expectation table, historical generator and fixture README unchanged. Link current examples from root README.

**Rationale**: The Core017 archive manifest lists all ten old binding files and the source requests/tables. It also lists `tests/fixtures/wire/build_fixtures.py` with SHA256 `22d9d8529cce6ab6907daa5d06d2882d07ca38b0549b2e62ad36645c27eeeacc`. Its `binding_fixtures()` and `main()` currently construct/rewrite the old pairs. The fixture README's sole historical-documentation exception belongs to 017; do not extend it for 026. Root README is packaged and is not a historical inventory entry.

**Alternatives considered**: Rewrite old requests in place; modify the frozen generator; grant another archive exception; keep consumer-side completion. All conflict with the accepted preservation/ownership contract.

## R2 — Author explicit complete worlds

**Decision**: `current/worlds.json` explicitly lists every declared type for each parent and expected child. The generator consumes this data and preserved source requests; it does not infer membership from bindings or default missing types to empty. Exact world/type/case domains are checked.

**Rationale**: Existing `crates/behavior-core/tests/common.rs::complete_request` and CLI `tests/support/current.rs::complete` are other tests' explicit preparations, but infer bound rows and default other types empty. They are unsuitable for 026. The specific ten worlds and empty memberships are defined in the [corpus contract](contracts/current-corpus.md).

**Alternatives considered**: Reuse the existing completion helpers; add `[]` for every missing type; populate every context entity automatically. These can change world meaning or fabricate membership. Context User anna is not asserted to persist; optional plain Id<User> is not Ref<User>.

## R3 — Use separate existing consistency and validity boundaries

**Decision**: First compare complete type/identity membership and unchanged state bindings. Build a proof-only `behavior.snapshot.v1` view listing **all** authored world rows as its entity table and retaining the request facts; call facade `Snapshot::decode`. Separately call facade `Store::create` with a fresh InMemoryBackend and seeds from precisely those rows, then compare its validated seed export. Apply the same validity check to independently authored expected child worlds. The evaluated request remains unchanged.

**Rationale**: `invocation::Snapshot::decode` (invocation.rs:124) creates BoundEntity entries for every supplied row and runs `check_snapshot` plus `check_query_snapshot`; this reconciles incoming-reference assertions even for rows unbound by the action. Exact domain coverage is still a harness obligation. `Store::create` (store.rs:926) validates initialization and every seed before publication; export_seed_at checks the same state. Together these establish consistency and Valid_B(S) without exposing a new validator. The internal `eval::check_behavior_snapshot` already exists but is not part of the facade; no export is necessary.

**Alternatives considered**: Infer parent validity merely from ALLOW/DENY; check only universe-section names; use action-bound rows alone; add a public certificate API. None gives the required separate proof as simply.

**Important limitation**: Plain evaluation's incoming-reference consistency checks focus on its action-bound rows. Do not assume a successful evaluation alone reconciles every explicit incoming edge with every unbound Ref source. The all-row Snapshot proof and bounded explicit edge check close the fixture-authoring obligation without changing production semantics.

## R4 — Compare the complete existing semantic record

**Decision**: Define N(R) = R.as_json() and use exact recursive JSON equality and canonical byte equality. For all five legacy modules, fresh output is record `0.8` with `behavior.complete_resulting_state.v1`. Add no new normalizer.

**Rationale**: `DecisionRecord::with_current_profile` and `normalize_current_legacy` already detach diagnostics and normalize semantic evidence. Existing record comparison preserves all object keys and array order. Required trace/obligation/query identities, facts, derived values, typed observations, effects and reason details remain in semantic JSON. These five modules have no command declarations: commands/semantic_profile fields are absent and command_intents() is empty.

**Alternatives considered**: Check only result labels; reuse the test subset matcher; remove arbitrary loc/message fields; compare effect sets; deduplicate commands. Those can conceal semantic differences. Diagnostic sidecar exclusion is already performed by Core and must not be reapplied to domain values.

## R5 — Require independent full expected records

**Decision**: Hand-author/review ten complete Record08 expectations from module rules, explicit worlds and the defined schedule **before evaluating corrected requests**. Use static admission/hash APIs for behavior/action/item/schema identities. Keep a concise independent effect/guard/child-world table. The current generator never writes expectations.

**Rationale**: If N is identity, a hand-authored subset plus actual-vs-actual equality does not establish N(Eval(f)) = Expected_f. Complete finite declarative records do, while runtime captures cannot serve as independent oracles. Captured actual records are execution evidence only.

**Alternatives considered**: Bless first successful outputs; regenerate expectations along with requests; call a subset comparison full equivalence. Rejected because they weaken PO-004/008. If an exact expectation cannot be justified, implementation must identify the unresolved contract rather than silently capturing it.

## R6 — Preserve identity distinctions and true provenance

**Decision**: Check static module bytes plus admission behavior/item identities and schema hash; preserve every record field, including invoice's caller git_revision. Do not add a record hash field. Bind the actual tested CLI/library to the clean candidate SHA in external receipts and, for a release, the existing release manifest.

**Rationale**: Ordinary DecisionRecord08 has no embedded record/result hash. Existing invocation action-result identity is `canonical::tagged_hash("behavior.transition.v1", full_record)` returning `sha256:...`, distinct from a Store TransitionRecord identity; it is not required to introduce one here. `engine-info` identifies versions, not the source commit. Request git_revision (`7f83ca2` for invoice) is caller input and copied during replay, not executable attestation. Embedding a final candidate's own SHA in checked-in source would be self-referential.

**Alternatives considered**: Trust engine version alone; overwrite request git_revision with a build SHA; invent a fixture result-hash domain. Rejected. Keep a fixed semantic reference commit in corpus metadata and separately record the actual executing candidate, binary digest and dependency lock.

**Resolved capture detail**: A receipt-scoped synchronous Cargo wrapper delegates to the real executable, then copies the actual --manifest-path manifest and resulting lockfile before returning to check-consumer.sh. It records Cargo's true status and preserves it. Final validation independently requires successful capture and exact candidate resolution. This avoids a cleanup race or reconstruction of a hypothetical lockfile; the repository's consumer script is unchanged.

## R7 — One runnable extracted-package entry point

**Decision**: Ship `current/check.py` using Python standard library only. It accepts an explicit package root, absolute CLI and output directory, reads only package conformance data, executes admit/eval/replay, compares exact expected records and checks all ten cases twice. Release-check step 5 invokes the extracted copy after its existing inventory and byte checks. Do not change release-build.

**Rationale**: Existing release-build already includes all tracked `schema/`, `tests/fixtures/`, README. A packaged runner eliminates checkout-data fallbacks. Existing release-check step 5 checks only file equality and needs actual semantic execution.

**Alternatives considered**: Validate only repository copies; add a separate release asset or manifest schema; invoke a downstream binding; run full musl builds in ordinary tests. None is needed for this bounded feature.

## R8 — Test real archive/check blocks without routine release builds

**Decision**: Add `scripts/tests/test_binding_conformance.sh`. Follow existing test_release_check.sh's exact-step extraction precedent: execute the production release-build conformance archive block and release-check step 5 with a previously built candidate debug CLI, in temporary directories. Also test missing/extra/duplicate inventory entries and same-decision oracle mutations. Add current outputs to the existing determinism target/digest flow; leave gates.sh unchanged.

**Rationale**: The exact real archive block selects tracked files with git ls-files and deterministic tar/gzip flags. Reusing the literal block avoids a second archive recipe or production refactor. Existing focused step-4 tests and all release steps remain. New paths must be tracked before a positive real packaging check.

**Alternatives considered**: Mock a differently selected archive and call it production packaging; copy the tar recipe; restructure release-build for this fixture fix. Rejected as unnecessary or weaker evidence. Debug archive tests are explicitly not full static release validation.

## R9 — Share facade tests without a new crate

**Decision**: One helper at `consumer/tests/support/binding_conformance.rs`, accepting an explicit fixture root and using only behavior-engine/serde_json. Workspace wrapper `crates/behavior-engine/tests/binding_conformance.rs` references that helper; consumer wrapper uses it locally. New conformance targets are collected by the existing workspace and external-consumer gates.

**Rationale**: The engine crate already depends on the facade's implementation crates and serde_json. No extra test dependency is necessary. check-consumer.sh --rev copies consumer support plus fixtures, so the helper remains available after copying and resolving an exact Git dependency.

**Alternatives considered**: Copy assertions into every crate; export a production fixture helper; add a shared crate; let an external consumer import core internals. Rejected. Module file digest/custody checks use Python hashlib in generator/package checks, avoiding a new Rust hashing dependency.

## R10 — Keep invalid-world controls separate and phase-specific

**Decision**: Three required controls, derived independently from reviewed current requests: remove invoice User universe; mismatch one nonnegative bound Invoice amount versus world; set Invoice amount to -1 in both binding and world. Expected results respectively are INVALID_INPUT/INVALID_STATE_SNAPSHOT, INVALID_INPUT/INCONSISTENT_FACTS, INVALID_INPUT/INVALID_STATE_SNAPSHOT, with no body effects. These are separate from five ALLOW/five DENY cases.

**Rationale**: Exact-domain validation (eval.rs:4377), binding consistency (2517) and parent invariant validation (2345) are distinct. Negative Account balance may be refused by an earlier constraint-consistency check and is unsuitable for asserting the invalid-parent invariant phase.

**Alternatives considered**: Count any failed request as the denied example; use arbitrary multiply-invalid inputs; assert a later refusal that was never reached. Rejected.

## Bounded source-use inventory

| Source | Current binding role | Other relevant use / preservation |
| --- | --- | --- |
| requests/invoice_allowed.json; invoice_above_limit.json | invoice inputs/context/state metadata | Core evaluate tests prepare separate current inputs; historical records/tables remain frozen |
| requests/margin_flagged.json; margin_guarded_zero_revenue.json | project_margin inputs and guard cases | Same evaluate/replay separation; no changing zero-revenue guard |
| requests/006/remove_customer_free.json; remove_customer_referenced.json | accounts requests with explicit incoming facts | Core facts tests add actual a1 supporting row; retain their historical inputs/negative roles |
| Historical binding_fixtures ledger_transfer | two inline amounts, same two accounts | Preserve old constructor/output; new generator copies literal intent/source data read-only |
| requests/007/close_customer_no_open.json; close_customer_open.json | orders supplied order subsets | Core queries/CLI tests separately author c2; original requests/records/tables stay unchanged |
| common::complete_request; CLI support/current::complete | Not used by current corpus | Existing unrelated tests remain; no broad rewrite |
| close_customer_unknown, universe_bound_mismatch, universe_inconsistent, check_exists_inconsistent and malformed root requests | Intentional raw negatives, excluded from ten-case inventory | Preserve without completion |
| archive-manifest and compatibility archive | Custody and historical replay | No digest refresh or new historical exception |

Paths in this table are relative to `tests/fixtures/` unless qualified. Detailed world contents and expected effects are in the [current corpus contract](contracts/current-corpus.md). All research unknowns are resolved; execution evidence remains implementation work.
