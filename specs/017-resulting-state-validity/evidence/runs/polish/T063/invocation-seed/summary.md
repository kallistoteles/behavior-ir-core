# T063 invocation determinism test-first seed

The first new assertion rejects archived decision profiles when emitted by a
fresh evaluated action. The unchanged existing production gate accepted all 26
old-golden mock outputs: 52 fresh calls and 26 replay calls. The new unit harness
therefore exited 1 with `accepted a legacy profile for a fresh action`.
`run.json` records the pinned Nix command, exact source digests before/after,
status and log hashes; `unit-artifacts/` retains the actual mock and call log.
Production script digests remained unchanged during this run.

This is an actual semantic gate regression: archived output remains legitimate
historical replay evidence, but cannot be passed off as a current fresh action.
Later positive/current-profile and other refusal modes were not reached and are
not claimed RED. The separately authored resulting-state checker harness has not
yet run against production; a missing checker is not semantic RED.

The mocks test gate protocol behavior, not Core codec or mathematical soundness.
Real record/profile/replay semantics are independently covered by the Core and
Store tests. No production file was changed by this worker.
