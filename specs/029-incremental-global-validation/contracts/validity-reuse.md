# Contract: validity reuse and publication

| Boundary | Required condition | Otherwise |
|---|---|---|
| Bootstrap/open | Establish complete validity under exact module/schema/profile and complete snapshot contracts | Preserve ordinary failure; no reuse authority |
| Repeated evaluation | Exact semantic state and full Store history identity match | Re-establish or reference path |
| Candidate derivation | Complete effects, eligible rules, coherent typed child, freshness and Ref premises | Reference path at existing phase |
| Commit reproduction | Independently reconstruct expected request/effects/record against the actual exact parent | Existing refusal/error; no promotion |
| Successful CAS | Applied child has exact expected parent, state, record, position, schema and behavior context | Discard pending evidence |
| Conflict or failed publication | No successful exact child established | Never promote pending child |
| Lost acknowledgement | Existing recovery establishes actual committed head and identity | Treat result as uncertain; no rollback assumption |
| Module/schema/profile change or migration | Compatible evidence independently established for new context | Invalidate and perform ordinary validation |
| Backend mutation or new Store instance | Existing continuity guarantees re-established | Cold validation |

Evidence is an internal derivation, not a serialized capability accepted from clients.
Count-only agreement, equal StateIds at distinct histories, or a producer's claim of
complete coverage cannot authorize reuse. Failed, stale or partial derivations must not
persist authority across requests. No second source of durable application state is added.

Required adversarial controls include stale parents, module/schema/profile mismatches,
changed head, simultaneous creates, alias collisions, duplicate IDs, wrong entity types,
missing Ref targets, hidden derived dependencies, omitted effects, corrupted summary
maintenance, failed/conflicting CAS, reopen and committed-but-lost acknowledgement.
Vary Backend enumeration order and optional index availability; canonical results remain
identical. Test real performed-operation failures separately from omitted-read counters.

Compare fresh full parents and full resulting children reconstructed independently of
optimized affected sets and summaries. Deliberately break each essential reuse premise;
the relevant differential/negative control must fail rather than silently approve it.
