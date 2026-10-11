# IDENTITY prior leads and conservative dispositions

Baseline commit `1e286ebcf1d61117320c57df155fa1ef9397e880`; owner
`/root/audit016_verify`, 2026-10-10. These source dispositions now have E-COORD-009/012–016 scoped
execution and independent PERSIST review; no finding was silently fixed.

| Lead | Investigation and disposition |
| --- | --- |
| Historical source location/pretty expression changes affect read record identity (prior F4) | Current read v2 and decision 0.7 use detached diagnostics; record equality/identity exclude sidecars and current closed records reject injected fields. Historical v1 keeps its original meaning and bytes. Read_soundness relocation/round-trip/archived regressions execute in E-COORD-009/016. No claim that historical behavior was retroactively repaired. |
| Same StateId could authorize another store/history/schema | StateId intentionally excludes those coordinates. Exact HistoryRef/StoreId/SchemaRef and full candidate/context binding are separate checks; SnapshotIdentity includes exact history/schema/canonical behavior. Mere equal live content is not sufficient evidence. Named TRUST/PERSIST joint source premises accept the distinction under conforming Backend/key/solver assumptions. |
| Command source order or duplicates become unstable identity | Checked canonical product/bag implementation retains multiplicity and refuses same hash with different canonical bytes; independent current-domain oracle present. Source-order-invariant identity is scoped to the new normalized equivalence, not arbitrary commutative expression rewriting. |
| Signature/candidate/occurrence hash cycle | Candidate excludes authorization/signatures/time/future event/occurrence; content excludes its detached signature; event contains intents and archived evidence; occurrences derive after event hash. Constructor graph is acyclic under admitted resolved dependencies. No extra transport-wrapper identity is invented. |
| Generic tagged_hash top-level hash omission allows semantic forgery | Helper explicitly specifies self-hash omission; arbitrary JSON is not an admitted typed semantic document. Closed typed validation, recomputed exact self hashes, signatures and replay reject malformed or contradictory current records. Full per-profile tamper obligations remain open. |
| Legacy length saturation proves a practical hash collision | Enc::u32 and verifier push_str saturate, while Wire 0.8/new command lengths are checked. Blanket historical/programmatic size premise not fully established. Saturation alone does not provide equal preimages or a feasible legal collision. Keep O-IDENTITY-006 open; no unsupported S3 severity claim. |
| Forged development-cache PROVEN may become authoritative evidence | Existing trusted_verification:549 regression intentionally consumes poisoned matching diagnostic cache, then fresh verify_authenticated computes unsafe result as not_verified. docs/verification and 013 governance contract explicitly exclude cache from fresh proof. Inspect promotion separately; a caller-selected diagnostic cache is not a signed authorization. Existing poisoning regression executes in E-COORD-009/016, with supplemental named execution separate. |
| Backend order changes partial-sum error | Query traversal canonicalizes entity identities; partial sum follows specified repeated bounded addition. Changing IDs changes canonical semantic input. MODEL closed prefix-fold lead as evidenced non-finding; ordinary backend permutation assertions execute in E-COORD-009/016; ignored 1,000-case release run is supplemental. |

No newly confirmed IDENTITY finding from these leads. Cross-component common
validator, historical replay and mandatory backend-integrity leads are owned by
their lanes and must remain in COORD's findings ledger; correct identity machinery
alone does not dismiss them.
