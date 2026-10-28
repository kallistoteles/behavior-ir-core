# US4 — Compact verifiable evidence

Disposition: **unresolved** for reconstructible-history, authenticated-dictionary/range and authenticated-log/checkpoint proposals. **Rejected** for state-hash-only, returned-member-only and authenticated-means-authorized shortcuts.

[Interpretations](compact/interpretations.md) define the common complete observation and each candidate's required support, identity, migration and reconstruction obligations. [Adversarial cases](compact/adversarial-cases.md) walk through twelve failures, including omitted query members/incoming references, stale roots, equal state at different events, corrupt checkpoints, unavailable support, concurrency and lost acknowledgement. [Refinement](compact/refinement.md) evaluates every obligation and records exact unresolved premises.

Membership and log consistency can establish their specified authenticated claims under a trusted root, while arbitrary-query completeness, reference absence, semantic validity and deployment authorization require additional arguments. Current MuHash StateId provides no public dictionary/range-proof interface. No new interpreter or formal refinement proof is implemented, and written walkthroughs are not reported as executed tests of a future protocol.

A future proposal must select and version the exposed evidence meaning, establish completeness and update/replay correspondence, retain necessary inputs and old codecs, specify trust/availability/governance boundaries and measure producer/consumer/rebuild/storage cost. Logical emission still costs Ω(B) when B old bytes are required. Lossless physical compression of old bytes can preserve the existing contract; this research's compressed artifacts are transport/storage for exact observations only.

No published record, StateId rule, persistent authority, governance mechanism or replay dependency changes here. The absence of those discharges blocks recommending a compact Core contract today; it does not establish that compact evidence is impossible.
