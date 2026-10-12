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

## US2 recovery and captured-history verification

`core-api-us2-baseline/` binds the completed US1 implementation. The 20-case
creation target had 14 passing controls and six failing recovery/protocol cases;
all six collected recovery cases failed; the private target had four passing
controls and a failing original-Module recovery after migration. The property
laws also had retained failing retry assertions before recovery production
changes. These failures preceded the root-owned US2 preflight and recovery code.

`core-api-us2-endpoint-red/` separately records three actual failing assertions
on the bounded captured-endpoint parent obligation: rehashed wrong parent StateId
at positions one and two was accepted by checked opening, and exact recovery
bypassed the same integrity check. A valid current content accumulator and
original creation product do not establish that the captured endpoint has the
canonical parent. The subsequent check compares it with history zero or the
immediately preceding recorded StateRef; it does not replay the whole prefix.

After those root-owned changes, `core-api-us2-green/` records five passing private
tests, nine passing recovery tests, and two passing fixed-seed property laws
(32 generated cases per law). The recovery controls include actual updates and
migration, preservation of original and later material, required read failures,
and original-request recovery under the historical creation schema. These
results precede the additional legacy evaluation-basis test below; they are not
a claim that the later ten-test target was already green.

`core-api-us2-evaluation-basis-red/` records a further actual failure using a legal
legacy v1 endpoint before mutation. Changing only `evaluated_against.state` and
recomputing the endpoint/head hash caused checked opening to accept a history
whose evaluation basis differs from its canonical `committed_on` parent. The
existing v1 history law requires equality. This is a bounded integrity assertion,
not a new record rule or full-prefix replay requirement. The fixture cannot
establish adversarial-host honesty or physical durability.

An attempted follow-up in `core-api-us2-evaluation-basis-green/` is **not** green
evidence: its executed binary contained a source-mutant marker despite unchanged
before/after official-source digests. The root identified a shared Cargo target
collision with the separate mutation checkout. Both failed attempts are retained
and excluded from normal-source verification. Mutation builds must be isolated
and ordinary package artifacts rebuilt before a fresh positive run can count.

## US3 extended controls

After isolated mutation builds and the root's ordinary-source artifact rebuild,
`core-api-us3-baseline/` collected and passed six property laws (32 generated cases
per law, fixed seed 190019) and seven private tests. The first recovery collection
in that folder failed to compile because `RefEdge` has no serialization trait;
that is a test-scaffold error, not semantic RED. The snapshot helper was corrected
to encode each edge's entity, identity and field strings.

`core-api-us3-recovery-confirmed/` then collected and passed all 16 recovery tests.
That marker-free run includes the legacy evaluation-basis regression and the
bounded parent checks. New US3 cases passed without requiring further Core
production changes:

- Both supported genesis profiles preserve real customer/account creation,
  reference retargeting, removal of original and new identities, revisions,
  historical incoming references, permanent identity use, and all later records.
  Repeated original-request recovery cannot permit identity reuse.
- Self-consistent wrong legacy initial values demonstrate the distinction between
  module-free structural opening and exact Module-bearing original-product proof.
  Key, revision, creation-position, accumulator, head, endpoint and migration-schema
  substitutions are refused without calling initialization again.
- A commit immediately after head capture preserves the original evidence and
  the actual later history. A private certificate for captured position zero,
  if retained, cannot certify a later equal-StateId position; required current
  validation reads still propagate operational errors.
- Properties cover legacy seed-sequence identity despite equal StateId, canonical
  object and Backend/reference enumeration order, canonical v2 decimal/seed-order
  normalization, and generated advanced lifecycle histories.

These are controls on the completed US2 implementation. They supply broader
acceptance evidence; they do not establish earlier test-first compliance or
manufacture a new failing requirement. Source digests and command receipts remain
external, and final frozen-revision gates are still pending.
