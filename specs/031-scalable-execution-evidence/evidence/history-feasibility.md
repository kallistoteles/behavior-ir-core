# Historical reuse feasibility

| Proposal | Exact required premise | Failure/recovery boundary | Disposition |
|---|---|---|---|
| Within-call validated materialization | Same captured exact HistoryRef, complete checked prefix/state/schema/policy and original error-phase semantics | Corruption before the call must be detected; no trust in producer digests or optional indexes; fallback on unknown migration/profile coverage | unresolved: no audited phase correspondence or implementation |
| Store-local prior verification cache | Exact validated anchor plus all semantic/profile/policy/context/version inputs and sound immutability/invalidation contract | Wrong history at equal StateId, corruption without a new head, cache loss, cold rebuild and concurrent append must preserve reference outcomes | unresolved: freshness/corruption correspondence not established |
| Authenticated checkpoint | Independently checked state and history anchor, complete semantic support, authorized boundary and exact continuation | Corrupt/stale/unavailable anchors never become authority; migration/incoming module requires its own validation | unresolved: versioned interpretation and trust/availability protocol missing |
| Page lookup before full interval validation | None sufficient under existing contract | Can hide corrupted earlier records and wrong versions despite a plausible page | rejected |
| Cache keyed by StateId only | State equality | Cannot distinguish command-only events, occurrence identities, position or original authorization context | rejected by current public controls |

No reuse patch or new authoritative persistent index is implemented. The most contained next investigation is within-call reuse of already independently validated immutable materializations; it must preserve selected errors and complete revision/governance checks, not merely return the same commands. Cross-call caches have a different, larger freshness burden. A checkpoint signature/inclusion proof is not semantic validity or commit permission.

Existing migrations and policy changes remain exact history boundaries. A small hot-path response cannot hide reconstruction/rebuild cost: all proposed caches need initialization, invalidation and loss/cold recovery accounting. The baseline reopen loses Store caches while retaining backend indexes; complete production-backend index rebuild performance remains unmeasured. Unavailable historical inputs prevent verification and do not justify an empty successful page.
