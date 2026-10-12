# Additional authenticated historical event capture

This is a new, separately identified pre017 capture. It does not replace or modify
any of the original 42 frozen artifacts or their archive manifest. It supplies a
real signed v2 history event for the historical-proof eligibility boundary.

The fresh detached source worktree is `/tmp/behavior017-signed-archive08-baseline`
at `932eb8188dc28393213491e27f66e3bc7e273a6b`. Its 315 baseline source digests,
locked dependency manifests, Nix inputs, example source, host backend and fixture
inputs are recorded in [manifest.json](manifest.json). Tracked metadata remained
unchanged before and after execution.

The immutable baseline's existing `consumer/examples/durable_commands.rs` was
built with `nix develop -c env CARGO_BUILD_JOBS=1 CARGO_INCREMENTAL=0
CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0
CARGO_TARGET_DIR=/tmp/behavior017-signed-archive08-target cargo build --locked
--manifest-path consumer/Cargo.toml --example durable_commands`. The retained
example binary has SHA256
`3e7bbb916339c2e6464670f5ca735471b3829027b0369259c4ee7a77cbf8d4d2`.
The retained baseline CLI's SHA256 is
`90705fd41f851309e709fae6c939aba5c2b575fd412a3f4ac20f22d3949a0e11`;
its original provenance is the separate US2 `archive-proof-run.json`.

All seven actual workflow commands completed with exit 0: prepare, verify,
authorize, commit, stream, recovery and stream after recovery. Each exact command,
UTC interval, environment, stdout/stderr digest and status has a separate JSON
log. Only the repository's documented public conformance seed fixtures were used.
The policy/context time was explicitly `2026-10-05T12:00:00Z`.

The event has a genuine decision record0.7, Wire semantic profile0.8, verifier0.8.0
signed envelope and authorizer-signed evidence. It was committed by the original
Store implementation, rather than assembled by rewriting an unsigned fixture.
`committed-store.json` and `host-store/store.json` preserve the exact durable
host bytes. The event record ID is
`sha256:2525d1cfa808d158b75ce666a605e9b8ddaabb1e4d16d91ec49bc50bbbec3d76`.
The command occurrence ID is
`sha256:8c89d535649504a6c4e20944875abfc80ca42ef676541e4c4e84280317f9bb36`.

The first commit returned `already:false`; retry returned `already:true` with
identical history and record ID. Canonical store bytes remained identical, with
SHA256 `f9a9fb891bf164a421ba14c7318fac3532028543b15701e9761b68033baaf961`.
Command-stream bytes were also identical before and after recovery. Independent
finalization checked the signed proof present in the durable event, the actual
formats, source digests, all command statuses and immutable original artifacts.

An initial metadata helper used incorrect field/format spellings after the
actual commands had all succeeded. Its preserved `capture-wrapper-attempt1.py`
is excluded from semantic RED. The corrected finalization did not alter or
recompute any signed event bytes. This capture establishes an authentic old
history control; it is not an execution of current T048 tests, a current validity
certificate or closure of any audit finding. The command-only model has no entity
obligations, so the proof's obligation inventory is empty.
