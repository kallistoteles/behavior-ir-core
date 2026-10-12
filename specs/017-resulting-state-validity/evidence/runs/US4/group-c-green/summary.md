# T055 Group C: command and invocation compatibility

The pinned command in `run.json` compiled and executed all eleven assigned test
targets: **79 passed, zero failed, zero ignored**. Target counts are command
admission 17, command evaluation 11, command-only admission 6, command records 7,
command replay 8, legacy action intent 7, invocation conformance 1, unified
invocation intents 4, plain invocation 2, invocation replay 3 and the legacy
entry-point compatibility target 13. The latter deliberately includes the same
seven action-intent tests plus five read-intent tests and its wrapper test;
these collected results are not 79 independent mathematical obligations.

Every immutable invocation and unified-intent capture is digest checked against
the pre-017 producer manifest, compared byte for byte with its original golden,
and replayed using its recorded profile. Fresh action records have independent
expected state changes/lifecycle results and the current 0.8 validation profile.
Fresh reads and pre-evaluation refusals retain exact original golden comparison.
Plain/unified action evaluation must agree on the entire inner record, and the
invocation identity is independently recomputed. Original decision-record 0.7
schema validation remains alongside current 0.8 validation. The duplicate-version
test verifies that its textual mutation actually applied.

One additional production boundary defect was reproduced before correction:
the legacy `evaluate_intent` host decoder had no way to convey the complete
snapshot required by current evaluation. The unchanged original intent targets
first produced 10 passing controls and two failing accepted-action tests in
`../group-c-intent-baseline`. Four reviewed focused regressions then produced
two passing closure/omission controls and two failures at `host.facts` rejection
in `../group-c-intent-facts-red`. After the root-reviewed contract amendment and
implementation approval, the smallest correction admitted optional trusted-host
`facts` and forwarded it unchanged to the shared evaluator. Intent-supplied facts
remain forbidden; no snapshot rows or historical facts are inferred. The same
four tests passed in `../group-c-intent-facts-green`, including malformed-facts
error propagation, current refusal without complete facts, exact direct/intent
record equivalence and canonical typed snapshot preservation.

Positive legacy intent fixtures now explicitly supply the closed parent state
through test input preparation. Negative intent and host fixtures remain raw.
The legacy compatibility test continues to exercise direct records without
invocation wrappers and frozen read behavior; it does not claim that fresh action
computation uses the old decision profile.

The resource environment disables incremental build caching and debug symbols
only; debug assertions and overflow checks remain enabled. `run.json` reports
source files unchanged during the command. The independent digest report
`archive-digests.json` checks all 546 original fixture files, all 42 setup capture
files and all 106 compatibility captures with zero mismatches at this checkpoint.
Scoped `git diff --check` passed. These results do not replace the final repository
gates, consumer gate or release validation, and no fixtures were regenerated or
production replay formats changed by this harness adaptation.
