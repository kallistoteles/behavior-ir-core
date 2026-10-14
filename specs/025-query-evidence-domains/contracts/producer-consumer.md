# Contract: Ordinary Facts and Bundle Evidence producers/consumers

## Public surface and source of truth

Keep the current supported `behavior-engine` facade. Use its existing `admit`, invocation documents, Store, versioned Store documents, checked governance candidate and canonical hash interfaces. No new exported projection/type, metadata field, consumer-contract version or engine dependency is required. Ordinary `Facts::from_json` is the existing internal/domain boundary, not a request to add a facade export.

The [data model](../data-model.md) defines admissible values/equality; [validation phases](validation-phases.md) defines when checks occur. Existing [023 bundle grammar](../../023-strict-bundle-evidence-validation/contracts/bundle-evidence.md), [023 supported pairings](../../023-strict-bundle-evidence-validation/contracts/support-matrix.md) and [024 ordinary grammar](../../024-facts-witness-schema/contracts/ordinary-facts.md) remain authoritative concrete contracts. This document consolidates them and does not replace their versioned meaning.

## Producer–consumer laws

For canonical admissible ordinary observations `f`, the checked ordinary codec satisfies `DecodeF(EncodeF(f)) = f` under typed observation equality. Cover existence, identities, references, queries, fields and universe, each separately and in supported mixtures. Omitted family/empty-array normalization is intentional. Unknown observation versus a supplied empty query/universe remains meaningful.

For supported admissible evidence `e` under its recorded domain `p`, its own producer/checked consumer satisfies `DecodeE,p(EncodeE,p(e)) = e`. Recover all authoritative typed evidence, including required integrity metadata; compare the original enclosing candidate claim independently. Applicable projection then satisfies `Observations(πF(e)) = Observations(e)`.

Never feed serialized bundle evidence directly to Ordinary Facts as though it belonged to F. Never count successful structural deserialization or projection as proof of historical truth, authenticity, authorization or a committable transition. For the selected v2 action boundary, validate local integrity before projection. V1 retains its own deferred schedule.

## Exact public reproduction contract

Use a test-owned admitted module with `User {name: string}`, `Doc {title: string}` and `Mark {doc: Id<Doc>, by: Id<User>}`. Action `probe` takes input `mid: Id<Mark>`, state `subject: Doc`, context `actor: Id<User>` and creates the given Mark. Seed exactly User `u1` and Doc `d1`; no Mark exists initially.

| Row | Wire / semantic and Store profile | Precondition |
| --- | --- | --- |
| R1 | Wire 0.7 / Legacy / v1, none policy | `true` |
| R2 | Wire 0.7 / Legacy / v1, none policy | `not any(select(Mark), true)` |
| R3 | Wire 0.8 / CommandIntents / v2, none policy | `true` |
| R4 | Wire 0.8 / CommandIntents / v2, none policy | `not any(select(Mark), true)` |
| R5 | Wire 0.8 / CommandIntents / v2, none policy | `count(select(Mark)) == 0` |

The Wire 0.8 test module retains required `reads`, `commands` and action `command_effects` fields, even when their arrays are empty. Wire 0.8 selects CommandIntents without requiring a fabricated command emission. State/context/input roles and typed identity fields match the reported public reproduction; do not strengthen plain IDs to `Ref<T>`.

Run each row against a fresh Store through both existing routes:

1. Direct: checked `RequestedInvocation` → `Store::invoke` → commit the produced ALLOW bundle.
2. Frozen: `Store::evaluate` → serialize → checked `CommitBundle::from_json` → commit the same candidate.

For v2, round-trip the checked `GovernanceCandidate` and preserve its entire original claim. For both profiles preserve the checked typed bundle and archived evidence. Query rows must record a present empty Mark membership and its required existing hash; constant-true rows must not fabricate a query observation. Assert the invocation/evaluation does not publish, the resulting Mark has `id:m1`, `doc:d1`, `by:u1`, history advances exactly once and the committed archive retains the authoritative bundle. Verify existing plain-ID reference semantics, not invented reverse `Ref` edges. Compare identities/evidence within each profile; cross-profile byte equality is not required.

The permanent `issue24_public_mark_matrix_preserves_state_and_authoritative_evidence` consumer regression uses one test-owned module/helper and labels all ten row/route cases. It passed all ten labeled cases, as recorded in [US1 evidence](../evidence/us1.json). Temporary planning evidence remains separately source-bound. Presence of a query with empty members still requires `hQ`; absence of all queries does not require a fabricated query/hash.

## Supported pairing inventory and reuse

| Scope | Reused contract / path IDs | Coverage responsibility |
| --- | --- | --- |
| Ordinary observations and containing witnesses | 024 ordinary/witness contracts | All six maps, checked shape, witness authenticity/subject/runtime obligations remain distinct |
| Fresh legacy ordinary/query actions | 023 S01/S02, PC01–PC04/PC06/PC09 | Existing v1 producer/checked codec and later Store comparison |
| Trusted ordinary/query actions | 023 S04/S05, PC01–PC09/PC17 | Existing strict v2 candidate plus independent history/governance |
| Supported historical controls | 023 S03/S06, H01–H03, K01/K02 | Preserve actual custody/profile, never retag a current document as historical production |
| Migration preparation/commit | 023 S07–S09, PC10–PC12 | Exactly empty observed facts and existing versioned migration dispatch |
| Archives, data/Behavior replay and command exposure | 023 PC13–PC16 | Transitive checked claims, recorded semantics and independently owned truth checks |
| Facade, CLI and structural schemas | 023 PC18–PC20 | Same checked formats; source-bound CLI and independently limited schema acceptance |
| Ordinary read records | 018 independent read matrix | Recorded read profile; no bundle hash leakage or new ad hoc invocation support |

This is the complete reused scope, not a new set of support cells. `invoke_intent` remains covered through existing PC03 producer laws; another full Mark matrix is unnecessary absent a specific uncovered issue route. Unknown formats, bundle universe, query migrations and previously unsupported version combinations remain unsupported.

## Closure argument and limits

Existing producers use canonical maps/vectors and append the same domain-separated member hash that the private consumer recomputes. Strict construction rejects ambiguity/order/duplicates before ordinary map/set normalization. Consuming projection removes only validated bundle-specific query hashes from an owned temporary representation, preserving the original candidate. Existing independent-inner-record and actual-output tests support that construction across the documented routes.

This is a construction argument over the stated admissible domain plus bounded executed evidence. Arbitrary mutation of public data structures outside their invariants is not an admissible counterexample to the law. A matching result hash still does not validate false definitions/captures/members/history. Crypto assumptions, the admitted evaluator and conforming backend semantics remain explicitly inherited assumptions, not outcomes proved by round-trip tests.

## Strict bundle restrictions retained

At the strict v2 action boundary, all five family arrays are optional; `universe` is forbidden here. Explicit null family arrays are invalid at this strict boundary. Each present query requires its existing `result_hash`, including empty membership. Bundle capture reads and members retain their sorted/unique rules; ordinary capture sequences retain their distinct existing rules. Migration `read_facts == {}` remains exact. The private consuming projection removes only validated query hashes and preserves every ordinary observation while the original claim/hash/signature subject stays unchanged. No public projection abstraction was added.
