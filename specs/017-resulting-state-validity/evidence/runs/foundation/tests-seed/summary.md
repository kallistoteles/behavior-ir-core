# T006 foundation test-first evidence

These black-box tests were written and reviewed before production implementation.
The final baseline run uses the unchanged setup revision
`932eb8188dc28393213491e27f66e3bc7e273a6b` and the pinned Nix environment.
Every production `src` digest recorded by setup was checked before this run and
matched. Each run JSON records the exact command, timestamps, test-file digests,
source digest, exit status and harness counts. No finding is closed by this RED
evidence, and no GREEN result is claimed here.

| Target | Collected | Passed | Failed | Ignored / filtered | Final execution |
| --- | ---: | ---: | ---: | --- | --- |
| `behavior-core / resulting_state_validity` | 4 | 2 | 2 | 0 / 0 | [run](final-baseline/core-validity-execution.json) |
| `behavior-store / resulting_state_validity` | 3 | 1 | 2 | 0 / 0 | [run](final-baseline/store-validity-execution.json) |
| `behavior-core / resulting_state_order` | 6 | 1 | 5 | 0 / 0 | [run](final-baseline/core-order-execution.json) |

All three collections completed successfully with exit status 0. Each execution
completed through the Rust test harness with exit status 101 and the expected
semantic assertion failures; none failed to compile or admit its model.

## Independent root-cause oracle

The audit counterexample is loaded from the immutable baseline fixture: the
unchanged `E#e0` row has `target = "new"` and the constraint
`not exists(e.target)`. The test independently constructs the resulting finite
mapping and checks that every target is absent from its live keys. The parent is
valid, the newly created row itself is valid, and creation of `E#new` invalidates
only the unchanged survivor. This expected verdict does not call a production
validator or derive itself from production trace, affected-set or cache data.

Both Core profile tests fail because baseline evaluation returns `ALLOW` instead
of `DENY / CONSTRAINT_VIOLATED`. Both Store profile tests go further: an ordinary
commit succeeds, the unchanged row is still present with its original target,
and the directly reconstructed authoritative child violates the independent
predicate. The command-profile test uses the supported v2 genesis and a none
evidence policy; its failure is not a history-format refusal.

Positive controls pass for both Wire 0.7 and 0.8: an unrelated creation preserves
the whole child, and a state-bound identity assignment preserves the valid
parent. The latter asserts semantic no change (`old == new` for each reported
assignment), rather than demanding a new empty-delta representation. The Store
positive control commits unrelated creations through the supported history
format for each profile and directly checks the complete committed child.

## Canonical witness and failure-order seeds

The postcondition-before-child-failure control passes. The five RED seeds
establish the following baseline differences:

- An earlier entity's false constraint is displaced by a later entity's
  division-by-zero invariant (`ERROR` instead of canonical `DENY`).
- A same-entity invariant correctly produces `ERROR` before its constraint,
  but lacks the required typed subject and declaration descriptor.
- A synthesized outgoing-reference constraint is selected before the declared
  constraint. The model assigns the reference to its existing value and removes
  the target, ensuring both obligations genuinely participate in baseline
  evaluation; the asserted declaration hash differs from the observed hash.
- Two legal decoded identities, newline and space, distinguish decoded UTF-8
  order from serialized JSON order. Baseline selects the space-bound row and
  lacks the canonical newline subject.
- The audit creation fails to emit the canonical unbound-survivor witness
  because it incorrectly allows the operation.

The witness assertions use admitted semantic obligation hashes and the approved
descriptor keys. They do not assume that formatted labels, locations, synthetic
parameter names or touched/created partitions determine semantic order.

## Retained excluded attempts

Initial attempt logs in this directory and `admitted-run/` are preserved as
provenance. They include a zero-state legacy no-op arity error, a Wire 0.8
effectless-action rejection, an initial `RefEdge` serialization compilation
error and use of v1 genesis with the Wire 0.8 Store commit path. These are test
fixture or compilation errors and are expressly excluded from semantic RED.
The corrected final-baseline run supersedes their control and collection claims.

## Commands and next evidence

Each target was collected with:

```sh
nix develop -c cargo test -p PACKAGE --test TARGET -- --list
```

Each target was run with:

```sh
nix develop -c cargo test -p PACKAGE --test TARGET -- --nocapture
```

The recorded environment includes `CARGO_BUILD_JOBS=2`. Subsequent production
implementation must run these same assertions again and record GREEN separately,
including actual source/test digests. Historical-profile fixtures and the broader
requirement matrix remain separate acceptance obligations.
