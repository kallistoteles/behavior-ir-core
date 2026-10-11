# T055 Group A: archived assertions and current complete-parent tests

The eight owned Core integration targets now separate actual pre-017 records
from fresh evaluation under record 0.8. Every original root/002/003/004/006/007
expectation-table assertion is retained against the immutable producer's
digest-checked records. Public standalone replay covers all 80 captured action
records, including original invalid-parent and missing-fact refusals. The 13
original root golden files are compared byte for byte and were not replaced.

Fresh tests prepare explicit complete parent rows, retain intentionally raw
malformed/inconsistent/missing-world requests, and check the current profile
independently. They cover invoice/project outcomes, aliasing and binding refusal,
canonical child constraint subjects/order, exact decimal and rational arithmetic,
rounding, structured errors, derived semantic identities, history-sensitive
freshness, creation/removal integrity, relational aggregates, contradictory
facts, deterministic records, hash-domain binding and same-profile replay.

| Target | Before adaptation: pass / fail | Final collected | Final pass / fail |
| --- | ---: | ---: | ---: |
| evaluate | 0 / 3 | 3 | 3 / 0 |
| evaluate_002 | 0 / 2 | 3 | 3 / 0 |
| evaluate_003 | 2 / 3 | 5 | 5 / 0 |
| evaluate_004 | 0 / 1 | 2 | 2 / 0 |
| replay | 2 / 1 | 4 | 4 / 0 |
| facts | 3 / 6 | 11 | 11 / 0 |
| queries | 1 / 7 | 9 | 9 / 0 |
| canonical_tagged_hash | 2 / 1 | 4 | 4 / 0 |
| Total | 10 / 24 | 41 | 41 / 0 |

All final cases were actually collected and executed; none were ignored or
filtered. [verification.json](verification.json) records test/Core source hashes
and confirms that both stayed unchanged across all 16 final commands. Commands
ran from the Core017 root in the pinned Nix environment, with
`CARGO_BUILD_JOBS=2`, `CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0` and
`CARGO_PROFILE_TEST_DEBUG=0`:

```bash
nix develop -c cargo test -p behavior-core --test <target> -- --list
nix develop -c cargo test -p behavior-core --test <target> -- --nocapture
```

Earlier attempts are retained. Attempt 1 compiled all 41 tests and returned
33 pass / 8 fail because some new seeds still assumed historical error text,
derived names, lifecycle shape or invalid-parent result categories. Current
complete invalid parents refuse through the existing snapshot/fact input route;
the archived `INVALID_STATE` outcomes remain checked separately. One Core
`intent.rs` change by another agent occurred during that attempt's
`evaluate_003` execution and is recorded explicitly as an unstable source run.
It is not final verification evidence.

Attempt 2 returned 40 pass / 1 fail. Its last seed incorrectly expected an
expression failure node for `ever_used` lookup failure. The established
lifecycle route is `ERROR / UNKNOWN_FACT` without fabricated expression details,
identity evidence, lifecycle output or changes. The seed now checks that exact
route. These seed failures were not claimed as production defects or semantic
test-first evidence; no production changes were made by this worker.

The original 546 fixtures, 42 captured artifacts, initial archive manifest and
106 supplementary compatibility records remain unchanged. No record blessing,
fresh historical-profile selector, staging, task marking or release action was
performed. These scoped results do not substitute for the repository-wide
required gates or claim mathematical proof/finding closure.
