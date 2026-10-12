# T055 Group B current-profile harness evidence

The eight existing suites collect and execute **36 tests**. Before adaptation,
the current-profile run was **9 PASS / 27 FAIL**. These failures document obsolete
partial-parent requests and historical evidence expectations in fresh computations;
they are not new production test-first evidence. After the first reviewed harness
adaptation, **27 PASS / 9 FAIL** remained. The final run is **36 PASS / 0 FAIL**,
with zero ignored or filtered tests; final collection still contains 36 tests.

| Suite | Final PASS |
|---|---:|
| closure_table | 3 |
| decimal_exact | 5 |
| lifecycle_create | 5 |
| lifecycle_remove | 3 |
| module_invariants | 8 |
| observed_reads | 3 |
| references | 5 |
| result_state_queries | 4 |

Only these eight test files were changed by this task. Positive fixture requests
use the root-owned `common::complete_request` helper, which supplies absent type
universes from actual bound rows or explicit empty worlds and preserves supplied
memberships. References require explicit complete target/source values: removal
fixtures contain `Customer#c1`, incoming-edge fixtures contain actual `Account#a1`
and `Account#a2`, and the existing-target creation case explicitly contains
`Customer#c9`. Boolean existence facts do not create missing rows. The plain-ID
removal control now contains an actual surviving `AuditNote`.

Operator values, action pre/post refusal categories, postcondition priority, query captures and
membership predicates, replay correspondence and short-circuit observed-read
sets remain checked against their independently specified expected outcomes.
Fresh evidence assertions now use record 0.8 and its complete-validation profile:

- fixed-scale overflow retains the outer `EVALUATION_ERROR` category and checks
  `details.code = NUMERIC_OVERFLOW` plus the admitted addition's exact node hash;
- derived margin evidence is selected by its semantic hash;
- created and surviving child failures use typed subjects and obligation
  descriptors, including the first synthesized Ref constraint before the later
  removal guard;
- the full current reference evaluator records successful global checks even for
  unchanged Employee obligations and records each original key for full uniqueness;
- Order query captures and amount reads are distinguished from other global query
  evidence and the candidate fields required to evaluate a membership predicate.
  The nonmatching Order's customer is observed, while its amount remains unread
  when the postcondition fails;
- renumbering checks the unchanged employee key and full global membership;
  removal excludes the removed entity's child obligations and explicitly returns
  ALLOW in that control.

Historical selective/delta expectations remain in immutable archive fixtures;
their replay is owned by the archive suites and these expectations are not
transferred to fresh computations. All **546 historical fixture files** still
match the original archive-manifest digests. Captured Core evaluator/record source
hashes are unchanged between this task's runs. No production code was edited.

The first draft assumed the overflow code/node were top-level reason properties.
The retained intermediate output shows that the existing closed current format
places them in `details`. The final assertion correction did not change production
semantics. The remaining intermediate differences were explicit current
full-validation evidence, reviewed by the parent before correcting expectations.

Runs used the pinned Nix environment with `CARGO_INCREMENTAL=0`,
`CARGO_PROFILE_DEV_DEBUG=0` and `CARGO_PROFILE_TEST_DEBUG=0`. Exact source and
output digests, collection and outcome counts are in `manifest.json`.

```bash
nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-core --no-fail-fast --test closure_table --test decimal_exact --test lifecycle_create --test lifecycle_remove --test references --test module_invariants --test observed_reads --test result_state_queries -- --nocapture
```
