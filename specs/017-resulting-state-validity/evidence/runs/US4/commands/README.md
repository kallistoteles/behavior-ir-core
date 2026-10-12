# T049 command-reader RED evidence

The reviewed test file uses existing APIs and contains twelve collected tests.
The corrected legal-fixture run executed all twelve: **8 PASS, 4 FAIL**, with no
ignored or filtered tests. Production files remained unchanged during this run;
`corrected-red-source-hashes.json` and `manifest.json` identify their exact bytes.

The four failing cases re-seal a v1 command-free current decision after replacing
its record version, replacing or removing its validation profile, or attaching a
contradictory command profile. The v1 bundle, event and head hashes are recomputed
using existing identity domains. Each test first requires structural data replay
to succeed. The subsequent command-reader assertion fails because the reader
returns an empty successful page instead of `INVALID_COMMAND_STREAM`. These are
actual missing nested-profile checks, not checksum failures.

The eight passing controls cover:

- the actual captured command 0.7 archive's exact page and golden occurrence
  identity, checked with an independent SHA-256 calculation;
- current command 0.8 bag multiplicity, no candidate dispatch and stable
  occurrences during exact retry;
- empty current non-command 0.8 whole-event cursors under v1 and v2 histories;
- v2 candidate refusal of the same malformed markers;
- closed command-profile markers;
- rehashed command-bag substitution without any backend commit;
- signed authorization bound to the exact candidate, with a valid signed commit
  as the positive control.

The original run and collection are retained. Seven original failures were
fixture admission errors: a command-free Legacy07 action with no state parameter
or creation is inadmissible. They are excluded from RED evidence. The fixture was
corrected to the existing seeded `Order.submit` model without command fields;
the production implementation did not change.

Both runs used the pinned Nix environment with `CARGO_INCREMENTAL=0`,
`CARGO_PROFILE_DEV_DEBUG=0` and `CARGO_PROFILE_TEST_DEBUG=0`. These settings remove
regenerable build-cache/debug-symbol overhead and do not change semantic gates.

Commands:

```bash
nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test resulting_state_command_history -- --list
nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test resulting_state_command_history -- --nocapture
```

The log outputs, source and immutable command fixture digests are in the manifest.
Fixture hydration through the test backend installs a previously captured event;
it does not authorize a fresh old-profile candidate.

## T054 GREEN

The accepted twelve tests pass unchanged after the private reader classifier was
implemented. Record versions 0.7 and 0.8 always use closed decision decoding;
0.4–0.6 retain their empty command interpretation when no conflicting command or
profile markers are present. Unknown versions refuse explicitly. Existing bag
multiplicity and occurrence identity code and domains remain unchanged.

The existing `command_occurrences` (4), `command_only` (4), `command_replay` (3)
and `command_stream` (8) suites also pass: **19 PASS, 0 FAIL**, with no ignored or
filtered tests. All six actual frozen command capture files still match the
independently recorded original archive-manifest digests. GREEN output and exact
source hashes are included in `manifest.json`.
