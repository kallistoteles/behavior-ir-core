# Core Creation Boundary Test Evidence

This records source-bound implementation evidence, not a release receipt or a
claim of physical Backend durability. The integration base is
`9d3fcfeb8764773332bbf5a69881ab0b49644fd9`, including completed 022. External run
folders preserve commands, exit statuses, stdout/stderr and source-file digests.
The root execution ledger provides the combined story accounting.

## Baseline and controls

Before production initialization changes, the activated foundation fixture passed
its separately owned controls. New Core targets were collected and run:

| Target / receipt folder | Collection and observed outcome | Classification |
| --- | --- | --- |
| `core-api-red-us1/contract-*` | 17 collected; 7 passed, 10 failed | Initial run contained two incorrect fixture expectations; not all failures are semantic RED |
| `core-api-red-us1/private-*` | 4 collected; 2 passed, 2 failed | Publication/cache policy assertions reached the old Core boundary |
| `core-api-red-confirmed/contract.*` | 17 collected; 8 passed, 9 failed | Corrected legal controls; semantic and bounded-protocol assertions separated below |
| `core-api-red-confirmed/recovery-*` | 6 collected; all 6 failed assertions | Equivalent, advanced, migrated and original-material recovery absent; no compilation/setup failure |

All folders above are under
`/home/kalle/validation-receipts/core019-work/`. No required scenario was ignored.
The tests contain later-story assertions, so a whole-target RED is not a failed
US1 checkpoint when specifically scoped US1 cases have become green.

Two initial expectations were corrected before accepting controls. The accounts
fixture has one `Ref<Customer>` edge from `Account.owner`; `AuditNote.about` is a
plain identity field and creates no reference obligation. Also, `GenesisOnly`
requires the fixture creation hook to supply its private genesis; applying that
mask to an existing wrapper does not construct the intended positive incomplete
publication. The ordinary-open test now uses activated missing-head/seed/hash
views, while acknowledged fresh creation separately covers GenesisOnly.

The initial primary-error counter assertion used map indexing and encountered a
missing entry because the old Core performed no preflight/classification reads.
The corrected test uses an explicit missing-read assertion; the index panic is
not independent semantic evidence.

## Assertions and limits

- Fresh success without published material, ordinary opening with missing original
  data, v2 raw-versus-canonical seed mismatch, and omitted required fallible opening
  checks have retained failing assertions before production changes.
- Equivalent, foreign and lost-ack retries retain actual failing outcomes before
  the recovery implementation. Representative advanced and migrated requests use
  the original Module/Genesis; current history is checked independently.
- Publication-straddling activation and bounded error-classification read counts
  are protocol controls for the selected algorithm. They are not a theorem that
  backend call traces are semantic or a previously reproduced atomicity defect.
- The private advanced equal-StateId case reaches the old cache-attachment path
  using a no-write acknowledgment on an already complete equivalent target. It
  rejects retention of the initial entry under the newly selected cold-recovery
  policy. It does **not** show that an old position-zero cache key was used as an
  advanced-state key or establish an original S0 cache defect.
- Deliberately missing-publication views are negative instruments, not conforming
  hosts or evidence that a first-party durable backend exposed partial writes.
- These tests exercise newly clarified obligations. They do not retroactively
  prove test-first compliance, an old partial-creation bug, or physical durability.

## US1 verification

After reviewed REDs and the root-owned US1 source changes,
`core-api-us1-green/` records 11 individually selected US1 integration cases with
`--exact`, all passing, and four private publication/cache tests, all passing.
Legal v1/v2 empty/nonempty seeds, references, invalid-candidate no-publication,
legacy normalization, canonical v2 refusal, incomplete products and performed
operational reads are covered. Generic opening stays cold and has no independent
typed Ref/Behavior proof authority.

The two property laws remained RED at this stable US1 checkpoint. Their failures
concern equivalent retry, including lost acknowledgment, and therefore remain
future US2 work. `core-api-property-baseline/` is an earlier preparatory run;
`core-api-us1-green/properties-post-us1.*` binds the confirmed US1 source. Later
green runs and broader US3 acceptance must be linked after actual execution.
