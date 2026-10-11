# Named inputs to T076 joint review

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`; received 2026-10-10.
These are attributed author responses and source-premise dispositions. They are
not executed tests, votes or substitutes for independent evidence.

## PERSIST response to incremental/post-CAS questions

Contributor `/root/audit016_store`, acting as PERSIST, independently supplied:

- Backend `lib.rs:38–56` explicitly specifies atomic/crash-safe commit and
  Applied/HeadMoved exact successor product. Initial create has successful
  genesis/head/seed/ref product but no equivalent failure/lost-ack/retry law.
  F-PERSIST-002 S4/Medium is bounded authority underspecification, independently
  confirmed by MODEL against 005 FR006/data-model/store-api.
- Ordinary Store mutation is `store.rs:2348`, carry is only Applied at :2360;
  error can be lost acknowledgment and cannot publish speculative child evidence.
  Recovery :1948–2040 matches the original exact event/bundle at parent+1.
- snapshot_identity :1127–1157 binds StoreId/StateId/position/event/schema/canonical
  module. Open is cold; backend_mut invalidates. Historical used remains separate
  from live content identity.
- Replay/hash derive from canonical versions/history, not validation cache:
  replay content_at :331–369, snapshot :1532+ and ref_index :1372–1528.
- Complete/coherent immutable reads and atomic durability are explicit Backend
  promises. Arbitrary dishonest index omissions are not all detected by each call.
  Correct cache binding cannot repair the normative unchanged-row child gap.

## VERIFY/TRUST response to admission and omission questions

Contributor `/root/audit016_verify`, acting as VERIFY/TRUST, independently supplied:

- C-VERIFY-001–015 and runtime table enumerate every actual check. Typed scalar
  bounds, Option/role rules and derived acyclicity are admission premises.
  Reads use equal-ID world guards; action write bindings are distinct.
- Current complete incoming validity is O-VERIFY-002 at eval :2575/4043;
  O-VERIFY-003 legacy sparse read domain is intentionally weaker.
- Query summaries overapproximate unknown members/partial sums. Unconfirmed SAT
  and UNKNOWN stay INCONCLUSIVE. O-VERIFY-001/005 universal simulation is not yet
  established; no current reproduced legal false PROVEN is claimed.
- O-VERIFY-007 fresh proof is cache-free with complete current manifest;
  O-VERIFY-009 solver soundness is assumed, not proved by signatures or tests.
- Nonlocal creation is F-INCREMENTAL-001 shared ordinary child checking, not
  demonstrated false child cache or legal false PROVEN.
- O-TRUST-003 binds external immutable complete historical Backend/CAS promises;
  O004 exact live schema/behavior/store/history/read/write/lifecycle rederive;
  O005 immutable policy/issuer and independently supplied Q/time. O008
  across-all-path omitted-operation evidence remains open.
- 015 may omit redundant computation only. Historical freshness, resulting Ref,
  exact snapshot/history/policy, consistency and CAS obligations remain mandatory.

## MODEL challenge responses and current disposition

PERSIST challenged O-MODEL-010's historical profile scope. MODEL narrowed it to
admitted modules/standalone historical codecs and migration applicability;
Store historical read/inner-invocation v1 preservation remains open
F-PERSIST-001/O-MODEL-013. Exact schema cannot cure wrong record-format selection.

MODEL challenged TRUST's O009 profile blanket and B022 failure language. TRUST
narrowed O009 to authority non-elevation/current manifest eligibility and separated
durable lost acknowledgment from genuine non-application/speculative response.
MODEL independently accepted those source qualifications. The raw Store
read replay duplicate-decoding finding F-TRUST-001 is now confirmed by actual
E-TRUST-002/R-MODEL-004; Core strict replay on original text and Store reduced-JSON
replay are distinct.

MODEL read PERSIST's schema-history.md and commands-governance-commit.md, accepted
its contributed source premises and requested only the U_H C025 citation correction.
Contributor source agreement does not erase the two confirmed replay findings,
F-INCREMENTAL-001 or remaining universal proof limits. The owned JOINT files now
include immutable root-run evidence and final independent finding review, and
preserve those unresolved semantic obligations.

## Final named responses and actual evidence

VERIFY/TRUST author independently reread both MODEL-owned JOINT notes and accepted
its supplied actual admitted profiles, typed/bounds/alias/world/error domains,
raw UNSAT versus witness distinction, current complete fresh cache-free manifests,
solver assumption, selected locality/no-removal Ref theorem, exact Pending/Applied/
lost-ack keys and retained mandatory checks. O-TRUST-001 excludes raw Store read
replay; the final split O-TRUST-012 makes that failing boundary explicit. This
scope exception does not weaken the listed Core admission premise.

PERSIST author independently reread both notes and accepted its supplied premises
under a conforming Backend: exact committed parent/store/history/schema/canonical
module, Applied-only carry and lost-ack recovery. Store parent validity is not
arbitrary snapshot authenticity or the outgoing G3 proposition. PERSIST independently
inspected actual E-INCREMENTAL-002 controls/direct line 68 and accepted the bounded
S0/High ordinary unchanged-row omission, without false certificate/S2 inference.

MODEL accepted its contributed source premises in all four other owned JOINT
notes: PERSIST schema-history and commands-governance-commit; VERIFY/TRUST
evaluation-store-verifier and query-read-identity-replay. Historical exact schema
versus profile and live StateId versus U_H distinctions remain explicit; bounded
canonical folds, current complete evidence and weaker historical v1 capture are
retained. Actual unchanged E-COORD-009/012/013/016 gates/collection now support the
named ordinary corpus; supplements E-MODEL-002/003/004 and E-INCREMENTAL-003/004
have actual passing selected outcomes, with unexecuted 10k cases disclosed.

The earlier overlay-pending statements above are historical. E-INCREMENTAL-002
and R-VERIFY-006 confirm G3 failure, E-PERSIST-004/R-VERIFY-005 confirm historical
Store read/inner-invocation v1 divergence, and E-TRUST-002/R-MODEL-004 confirm raw
Store read duplicate acceptance. Those distinct obligations remain unresolved;
green gates, contributor agreement, cache keys or signatures cannot close them.
No joint input is treated as a vote, universal proof or remediation authorization.
