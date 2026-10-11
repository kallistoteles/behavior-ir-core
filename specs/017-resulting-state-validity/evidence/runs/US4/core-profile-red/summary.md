# T047 Core original-profile replay RED

Root reviewed the authored assertions before execution. The pinned test binary collected **21 tests**. The actual compiled run completed with **16 passed, 5 failed, 0 ignored** (exit101). Both commands used `nix develop -c` and resource-only settings `CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0`, `CARGO_PROFILE_TEST_DEBUG=0`; default overflow checks and debug assertions remain enabled. No production file was changed before or during this run.

## Intended failures actually observed

- Frozen nested decision0.4: the recorded Customer.status change is absent from fresh replay output.
- Frozen nested decision0.5 (the genuine audited invalid-child ALLOW): recorded existence/identity facts are absent from fresh replay output.
- Frozen nested decision0.6: recorded query/identity facts are absent from fresh replay output.
- Frozen nested decision0.7: the reproduced record version becomes0.8.
- The archived outer/inner substitution test fails at its original0.4 archive positive prerequisite. Its mutation loop is therefore **not reached in this RED run**; it is not evidence of individually observed substitution failures.

Every original nested control first verifies that its immutable nested decision replays successfully on its own. Thus the first four failures distinguish missing invocation dispatch from unsupported standalone archived computation. The digest/size of each original fixture is checked against the setup archive manifest before use. No supposed old record is constructed by relabelling new evidence.

## Passing controls

The11 existing current codec/input/archive-decoder tests remain GREEN. Five added tests pass: genuine standalone04–07 archives, the fresh complete-parent audit invocation rejecting the invalid child under current08 with typed unchanged-row witness, both current language profiles rejecting rehashed outer/inner input/context/capability/identity/value changes, nested current markers/typed-subject/universe tampering refusal, and frozen read-v1/read-v2 plus pre-evaluation decode/binding refusal controls.

Historical ALLOW is reproduction evidence only. The tests neither authorize a fresh commit nor certify corrected complete resulting-state validity for old history. The read controls preserve existing own-profile behavior and do not claim to close018's independent read replay findings. No migration behavior was modified in this task; existing migration controls remain a separate required integration check.

## Provenance

`run.json` records exact argv, HEAD, source/test SHA256 values, real status, collection, and stdout/stderr hashes. `sources_unchanged_during_run` is true. `00.*` records collection; `01.*` records the compiled run and precise failing assertions. Root received the result for the T050 review barrier; production implementation awaits its explicit go-ahead.

## Additional pre-implementation normalization control

Root approved one further positive test before production changes. `../core-normalization-control/run.json` records an actual compiled **1 passed,21 filtered** execution (exit0): fresh current invocation input Money `"100"` is normalized by the existing evaluator to inner `"100.00"` and replays successfully. A rehashed outer `"101"` fails. The parent includes the actual Customer target and explicitly empty Account/AuditNote types. The test target now contains22 tests; the original21-test RED capture above is immutable and has not been replaced or retroactively claimed to collect this additional control.

The private resolved-request reproduction helper must preserve this typed normalization instead of requiring byte equality of outer raw and inner canonical literals.
