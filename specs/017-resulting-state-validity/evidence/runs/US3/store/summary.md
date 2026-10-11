# T037/T039 reviewed baseline: reuse RED and publication controls

The US2 implementation is the baseline. The root reviewer inspected the new
assertions before execution; no Store production correction preceded this
checkpoint. Exact commands, UTC times, HEAD, test/source digests, collection
names and exit statuses are in the retained JSON files under `red/`.

| Target | Collection | Reviewed execution | Exit |
|---|---:|---|---:|
| `resulting_state_reuse` | 12, exit 0 | 6 passed, 6 intended failures, 0 ignored/filtered | 101 |
| `resulting_state_commit_faults` | 6, exit 0 | 6 passed, 0 failed/ignored/filtered | 0 |

The authoritative runs are [reuse collection](red/reuse-collection-reviewed.json),
[reuse execution](red/reuse-execution-reviewed.json),
[fault collection](red/faults-collection-reviewed.json) and
[fault execution](red/faults-execution-reviewed.json). Each records unchanged
production source against the [frozen manifest](red/production-source-manifest.json).
Its SHA-256 is `8c4e745aa5a04310259818b19742929e0719bbbd74fddbc7251369bcb998bb48`.

## Six observed reuse regressions

The current action path validates/caches the parent and then captures the same
universe again through live backend facts. The first failing assertions expose
this redundant transport work, rather than an unsound child decision.

| Observed case | Canonical child rows | `keys_at` | `version_at` | Required capture behavior |
|---|---:|---:|---:|---|
| Warm evaluate and invoke, Wire 0.7 | 10 | 2 | 44 | 0 enumerations, fewer than 10 version loads |
| Warm commit rederivation, Wire 0.7 | 10 | 1 | 22 | 0 enumerations, fewer than 10 version loads |
| Warm create, Wire 0.7 | 101 | 1 | 200 | 0 enumerations, fewer than 10 version loads |
| Same-schema Wire 0.7 → 0.8 switch | 10 | 2 | 32 | One new canonical parent capture |
| Historical invocation at equal StateId but different lifetime position | 11 | 2 | Not asserted | One exact historical capture |

Warm creation also performed one actual `used_at` call. That history-sensitive
obligation remains mandatory even when current rows come from a captured
snapshot. The historical invocation's parent has 10 rows and its proposed child
has 11; its current counterpart correctly refuses reuse of the removed identity.

The sixth regression injects failure into a redundant `keys_at` read after the
exact parent was captured. The new invocation produces
`INVALID_INPUT / INVALID_STATE_SNAPSHOT` instead of the identical reference
`ALLOW` record and candidate. The failure is observed at complete-record
equality, after the API returns successfully; it is not a compilation failure.

The warm evaluate/commit loops declare Wire 0.7 and 0.8 and sizes 10 and 100,
but baseline assertions stop at the first Wire 0.7/10 case. Warm-create and
historical loops also stop at their first Wire 0.7 failures. The redundant-read
loop stops at its `keys` case before the `unrelated` case. The remaining cases
are acceptance obligations for GREEN, not claimed executed baseline coverage.
The separate profile-switch regression actually executes Wire 0.8.

## Passing controls

Six reuse tests passed, including both language profiles where their loops
specify them:

- Cold, warm, cache-loss and reopened instances produce identical complete
  current decisions and bundles; same-profile standalone replay agrees.
- Repeated update → read and create → read preserve committed child validation
  without new backend enumeration/version loads on the reads.
- An actual injected `used_at` failure retains the existing fact-provider route:
  `ERROR`, reason `UNKNOWN_FACT`, no bundle and unchanged head. An actual call
  is counted; removing the fault restores `ALLOW`.
- A stronger behavior with the same schema/profile cannot reuse old validity.
- Wrong schema substitution is refused without publishing history.
- `backend_mut` invalidation and reopen reconstruct the parent from canonical
  state; actual required enumeration failures still propagate.

All six fault/publication tests passed:

- Valid creation candidates refused by CAS or a prewrite backend failure leave
  canonical state/history, identity lifetime and committed commands unchanged.
  Interior `Cell` controls preserve the live cache so explicit `backend_mut`
  invalidation cannot mask premature publication. A retry applies once.
- Lost acknowledgment returns an error after one durable command-producing
  event. Two equal intents have two distinct occurrence identities. Recovery is
  `already:true`, adds no backend commit and preserves those exact identities.
  Recovery does not publish the uncertain candidate's child certificate: its
  first child read reconstructs 11 rows; the next read is warm.
- A separate lost-ack test without recovery reconstructs the actual committed
  child before reuse.
- The independently false `x > 0` child is `DENY`, reason
  `CONSTRAINT_VIOLATED`, without candidate, commands or mutation.
- A stale disjoint whole-state candidate cannot overwrite the actual child's
  validation. Existing exact-parent CAS semantics remain unchanged.
- Removal rebuilds validity, can restore the original StateId at a later
  position, and never forgets historical identity use; a fresh identity remains
  creatable.

## Oracle limits and excluded seed mistakes

Expected child subjects/order and invalid `x=0` are defined directly from the
finite test rows and the arithmetic predicate. Neither a production affected
set nor the incremental snapshot checker selects them. Cold/warm record and
bundle comparisons share the production evaluator and are equivalence tests,
not an independent implementation or a formal proof. History, command and
backend counters are separate observations; backend call traces are not part
of semantic record equivalence.

The initial collection's extra `unwrap` on `ReplayResult` is retained as a
compiler failure and excluded from RED. Initial execution assertions used a
nonexistent `decision` field and confused result with reason codes. They were
corrected to the existing record algebra without production changes. Raw
injected diagnostic text is not required in canonical semantic records.
Those seed mistakes and their runs remain under `red/*-attempt1.*`; the final
reviewed runs supersede them.

These counts establish the T040 test-first barrier only. O(n) canonical child
computation, typed evidence and snapshot output remain allowed. No latency,
constant-time semantic work, formal proof, private-profile result or finding
closure is claimed here. GREEN and the private locality/cache tests are
recorded separately by the implementation coordinator.
