# Assurance contract

Version `core034.assurance.v1`. This is a comparative research contract. It adopts no new production authority or finality mode.

## Claim meanings

| ID | Class | Required meaning and boundary |
| --- | --- | --- |
| Q1 | Program preservation | Every covered permitted operation preserves a named property under checked guards, complete action/operation inventory and explicit Core/projection correspondence. No actual execution is inferred from certification alone. |
| Q2 | State validity | The original property holds at one complete, provenance-bound state and full history coordinate. No preceding/following interval follows automatically. |
| Q3 | Exact transition | Full result, first applicable error/refusal, effects, observations and ordered duplicate commands match the applicable Core semantics for the exact request/context/parent. Preservation alone is insufficient. |
| Q4 | Segment safety | Valid start plus checked preservation and actual coverage/enforcement establish the property throughout that exact segment, under the named authority/correspondence premises. |
| Q5 | Exact prefix | Every claimed committed transition and boundary is covered from the accepted origin/basis to the complete expected endpoint, with no omitted/duplicated/unchecked suffix. This does not prove latest-head authority or physical effects. |
| Q6 | Authoritative publication | Exact-parent publication, result identity/idempotency, state/history/support and ordered outbox meet their declared atomic/durability/authority contract. Neither a mathematical execution proof nor memory commit establishes disk durability. |

Claims carry the exact subject and premises in the [data model](../data-model.md). Report the property and complete semantics separately. Historical safety across different segment policies requires an explicit implication into the global property; keep per-segment claims otherwise.

## Arrangements

**A — checked program, valid boundary, enforced segment.** Fresh public Safety checking establishes Q1. Public full-history snapshot validation establishes Q2 under export/completeness/correspondence premises. All controlled writes and migration/activation pass through one coordinator, supporting Q4 under that execution authority. Core evaluates actual operations, supporting Q3 under its named implementation/backend premises. The sidecar activation history is evidence whose completeness/enforcement is trusted; it does not establish Q5 against a dishonest host. Q6 is unestablished for the memory pilot.

**B — independently checked actual history and continuation.** Expected origin/end/module/policy subjects are supplied independently of the producer packet. A new worker reconstructs typed public backend data in its own Store, verifies data and behavior replay, checks the complete expected endpoint and required certificate/boundary coverage. This establishes the declared Q3/Q5 under the trusted Core verifier/implementation and anchor premises. To claim Q4 it also establishes Q1/Q2 and segment coverage, or separately checks every claimed state property; its precise method must be recorded. Actual control of an external deployment and current-head authority do not follow from a supplied log.

A resident B worker owns an established Store/basis and checks candidate observations against its own evaluation before accepting exact-parent extension. Charge all internal prefix work. A process boundary requires independently justified retained storage or full re-establishment; a JSON basis flag is never enough. B is independent of producer acceptance, not an independent implementation of Core semantics.

**C — strong 033 comparator.** The exact original subject requires replay-free independent prefix verification, finished actual compressed proof and independent final check before certified success, and durable publication before committed success. Reuse existing records as scoped positive/negative/unrun evidence. Identity proofs, closed local-K execution and smaller-source policy theorems cannot establish the full Safety subject. No new C proving run is part of this plan.

## Eight situations and all 24 cells

Each A/B/C cell must first name the same requested claim and then its available evidence, premises, gaps and costs. Allowed cell dispositions include unestablished or not comparable; no empty cell counts as passed.

| Situation | Required comparison question |
| --- | --- |
| S1 Normal operation | What complete local result is final, and under which authority, before the answer? |
| S2 Program certification | What does certification/checking establish for the exact complete module/policies, and at what cost? |
| S3 Initial deployment | Who establishes the valid start and exact activated segment without an intervening writer? |
| S4 New independent recipient | How is the requested actual prefix established without prior verifier state, and what authority/material is required? |
| S5 Retained-state restart/transfer | What makes retained state trustworthy, how is the exact parent checked and what reload/recheck work occurs? |
| S6 Lost-state recovery | What can be reconstructed/reverified and which claims become unavailable? |
| S7 Historical audit | What establishes original execution and historical safety separately from state reconstruction and support availability? |
| S8 Rule/migration boundary | Which incoming validity, policy compatibility and activation-continuity obligations must be renewed? |

## Planned formal target inventory

Use a small new `Assurance034` model with explicit abstract semantic/identity inputs. This deliberately does not implement another Core interpreter, SHA or proof backend. Import/adapt pinned reachable Safety and Core 032 proofs with statement/axiom/source identities checked. Actual Rust/extractor/encoding/Core/host correspondence is separately declared.

| Target | Required statement |
| --- | --- |
| `segment_safe` | Valid start and actual covered transitions, guards, correspondence and imported preservation imply the same named property throughout the segment. No hypothesis assumes the target post-state property. |
| `segments_compose` | Exactly adjacent, individually established segments yield their explicitly qualified combined guarantee. |
| `policy_change_global_claim` | Each segment property must imply the named global property before global safety is concluded across policy changes. |
| `checked_history_exact` | Independently checked exact step observations compose from accepted origin to expected endpoint. |
| `history_length_position` | Positions, parent links, module/policy interval and checked entries cover the whole claimed committed prefix. |
| `continuation_equivalent` | Established prefix plus checked suffix gives the same declared prefix claim as complete checking. This is not an implementation-complexity theorem. |
| `refusal_history_unchanged` | A semantic refusal can be a correct result while leaving committed history/state/outbox unchanged. |
| `duplicate_commands_preserved` | Equal payloads remain distinct ordered occurrences. |
| `publication_conditional` | A declared exact-parent atomic-publication relation preserves its logical state/history/result/outbox invariant. Actual fsync/durability is an external implementation premise. |

Use explicit small countermodels for invalid implications: current validity ⇒ prior safety; preservation ⇒ exact requested output; certificate ⇒ actual enforcement; serialized flag ⇒ established basis; arbitrary valid branch ⇒ expected/latest branch; unsafe migration or uncontrolled writer preserving the induction premise. Include a policy-weakening countermodel. A failed compilation is not a countermodel.

For all accepted new proof roots, compare intended types, audit complete transitive axioms (only `propext`, `Classical.choice`, `Quot.sound`) and run `leanchecker --fresh` on the actual compiled closure. Reject holes, custom/native-computation axioms, wrong types or missing roots. Infrastructure failure is operational, not a semantic disproof. Conditional imported proofs cannot fill 033's absent source/codec/backend correspondence.

## Required boundary controls

Each group has a valid control for the same subject and a named expected failure. A/B are assessed under their actual premises. For C, evidence can be scoped/unrun because no matching completed certificate exists.

| ID | Spec edge case | Required disposition/control |
| --- | --- | --- |
| E01 | Invalid/unestablished start | Actual valid/invalid snapshot pair; invalid or detached/unavailable provenance cannot activate a segment. |
| E02 | Snapshot claims earlier history | New lineage/anchor may establish Q2; original Q5 stays unestablished without independent prefix evidence. |
| E03 | Omitted writer/action/policy | Fresh full-inventory/policy checking rejects the omission; bypassing actual coordinator violates A's premise rather than proving enforcement. |
| E04 | Certificate for other subject | Changed module or complete policy set, including policies with unchanged Core IR, cannot reuse certificate authority. |
| E05 | Same-state different history | Command-only step changes full HistoryRef; old state-equal activation anchor fails. |
| E06 | Activation gap/uncontrolled writer | Competing actual writer/control under enforced coordination; direct-handle bypass demonstrates the trusted-boundary limitation. |
| E07 | Unsafe migration | A Core-valid target violating the original relation deactivates the segment; incoming safety must be re-established. |
| E08 | Safe but incorrect result | Different safe output or incorrect first error fails exact result checking. |
| E09 | Forged/stale checkpoint or flag | Fresh process does not mint a checked basis from serialized assertions; corrupted or wrong-parent evidence rejects/re-establishes. |
| E10 | Lost basis | Continuation refuses before checking; fresh onboarding/rechecking cost is charged. |
| E11 | Missing safety evidence | State replay may still succeed; historical safety claim is explicitly unavailable/unestablished. |
| E12 | Different valid branch/endpoint | Exact expected subject mismatch rejects even if supplied branch is internally valid. |
| E13 | Refusal/duplicates/race/lost acknowledgement | Verify no refused commit, preserve both equal command occurrences, reject stale parent and duplicate captured-event application. Memory-only interruption/lost-ack tests cannot establish durable request idempotency. Retain Q6 gap and prior SQLite evidence only for its old subject. |
| E14 | Exhaustion/unsupported | Bounded tool/worker failure cannot become proof, a business denial or a universal safety counterexample; retain unrun cases. |
| E15 | Reproducible unsound old checker | Old bytes/meaning remain unchanged; refuse unsupported or known-untrusted evidence rather than automatically grant current authority. |

Every group is mapped to an observation, checked argument or explicit gap in the final report. A primitive's countermodel or a control rejection is not a universal claim about all implementations.
