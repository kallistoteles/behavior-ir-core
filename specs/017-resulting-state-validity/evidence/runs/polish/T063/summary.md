# T063 determinism and clean-smoke integration

Fresh action outputs and historical replay are checked separately. Invocation
checks require record 0.8 / `behavior.complete_resulting_state.v1` for fresh
evaluated actions, preserve the unchanged fixture's independent outcome/delta
projection, and replay both original envelopes and current outputs. The new
resulting-state checker compares hand-specified typed/error/command projections,
exact CLI status, nonempty output and byte determinism; it digest-checks and
replays every separately captured archive. Public CLI replay owns codec/hash
validation rather than duplicating it in the gate.

## Observed test-first failures

- [Invocation seed](invocation-seed/run.json): the unchanged old gate accepted
  exact historical profiles as fresh action output. The new assertion failed
  after 52 fresh calls and 26 replay calls; production script digests were stable.
  Later unit branches were not reached and are not claimed RED.
- [Release smoke RED](release-smoke-red/run.json): the real compiled CLI ran the
  exact extracted Step 4 in a disposable clean directory. Its incomplete original
  request produced `INVALID_INPUT / INVALID_STATE_SNAPSHOT`, exit 2, so the smoke
  step failed. This was an executed input-integration defect, not a missing build
  or a mock. Original source/fixture/binary hashes were stable.

The correction supplies only a temporary trusted-host request: the fixture's
actual Invoice#1042 row and explicit empty User universe. Historical request,
module and golden bytes remain unchanged; no publication or tag was performed.

## GREEN evidence

- [Protocol checks](protocol-green/run.json): invocation, resulting-state and
  command unit scripts exited 0. The resulting-state harness checked 23 protocol
  cases, including wrong profile/witness/error/result/command/exit, replay failure,
  nondeterministic or empty output, and digest drift in disposable fixture copies.
- [Corrected CLI and units](corrected-cli-and-units/run.json): all four commands
  exited 0. The corrected 23-case harness passed; the actual full determinism
  script passed five current cases and 106 immutable archives plus its existing
  workloads/examples. Each current case runs twice and replays once; each archive
  replays twice. Admission/tagged-hash/property/vector targets passed **19 tests**,
  and the public surface check passed **138 items**.
- [Release smoke GREEN](release-smoke-green/run.json): the same test now reaches
  every assertion with real record 0.8 `DENY / INVARIANT_VIOLATED`, a typed
  Invoice#1042 witness and strict replay `matches: true` under
  `env -i PATH=/nonexistent`. The original raw-request control still refuses with
  exit 2. Selected script, fixture and binary hashes stayed unchanged during this
  run. This isolates actual Step 4; it does not run, skip, replace or claim the
  earlier release gates/reproducibility builds.

## Corrections and limits

[First actual-CLI attempt](actual-cli/run.json) is retained as failed evidence.
The initial gate/mock expected ERROR exit 2; the established CLI contract uses
exit **3**, while INVALID_INPUT uses **2**. Correcting that seed did not alter the
CLI contract or expected semantic result. Mistyped `hash_props`/`admit` targets
were command-selection failures, replaced by actual supported targets. Neither
failure is counted as semantic RED or passing coverage.

The protocol and combined CLI capture manifests explicitly report
`sources_unchanged_during_run: false` because of concurrent repository work.
Their scoped results must not be presented as an immutable final-revision gate.
The two test-first seeds and focused release-smoke GREEN record their selected
sources as unchanged. T065 remains the complete owning gate on the final revision.
Mocks establish gate protocol behavior; they do not prove Core soundness. This
review was performed by the harness author and complements the root's source and
assertion review rather than claiming independent review ownership.
