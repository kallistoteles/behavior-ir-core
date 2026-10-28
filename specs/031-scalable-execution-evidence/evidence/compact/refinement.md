# Refinement assessment

No compact format is accepted as a replacement for current evidence. The explicit interpretation candidates and every adversarial obligation are in `interpretations.md` and `adversarial-cases.md`.

| Candidate | Preserved meaning if premises hold | Blocking premise / missing verification | Disposition |
|---|---|---|---|
| A: exact reconstruction | Can reproduce the complete old observation, including rejected/error transitions, from authoritative inputs | No specified versioned encoding or end-to-end reconstruction/refinement theorem; availability and consumer cost remain | unresolved |
| B: dictionary/range | Can establish specified typed membership/non-membership under an authenticated root | No current MuHash-to-dictionary relation, complete query/reference proof language or verified simultaneous-update mapping | unresolved |
| C: append-only log/checkpoint | Can authenticate declared event membership/order and append continuity | No complete semantic checkpoint interpretation, independently verified anchor/reuse theorem or availability protocol | unresolved |
| State hash only | State commitment identity under existing assumptions | Does not establish omitted observations, query members, Ref absence or history/authority | rejected |
| Inclusion paths for returned rows only | Returned rows belong to a committed set | Omitted matching rows remain undetected; removal can hide incoming references | rejected |
| Signed checkpoint implies runtime permission | Signature authenticates signer/message | Semantic validity and deployment/governance permission are separate obligations | rejected |

For each candidate, the tampering, wrong-subject and stale-anchor rows require an independently checked binding. Query-member and Ref-omission rows require complete reconstruction (A) or additional proved completeness structures (B/C). The missing-support row blocks successful interpretation for all three; a hash does not restore availability. Equal-state/different-event and lost-ack rows require exact history, command occurrence and original authorization context, not state-only equivalence. Migration and concurrent-boundary rows require their own validated anchors and unchanged authorization contract.

These arguments apply to arbitrary finite states conditionally on the stated completeness, cryptographic and correspondence premises. No implemented new interpreter or proof discharges those premises here. Current records retain byte-for-byte interpretation; a future proposal must version its codec, domains, profiles, exact subject and compatibility rules, retain original artifacts, specify supporting-data retention and prove the mapping before any omission acquires authority.
