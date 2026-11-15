# Safety assurance investigation 034

Isolated research implementation of [034](../../specs/034-safety-assurance-investigation/spec.md).
Implementation progress and accepted evidence are tracked in its tasks and receipts.
No initialized workspace, exit status, serialized flag or artifact hash is a safety certificate.

The only semantic interfaces are the public pinned `behavior-engine` and
`behavior-models`. Private cache, build and source preparation stays under `private/`;
retained executed binaries must be copied and byte-verified into declared evidence
before disposable target cleanup. Do not write to previous experiment targets,
source files, tool installations or sealed evidence. Production adoption is unactivated.

Development red/green tests have their own receipts and cannot be counted as cold
campaign samples. The final campaign begins at input freeze and includes its actual
preparation/build/check work. No code, profile or expected-input edits are allowed
after that freeze. Timings/environment data are diagnostic, not semantic identities.

The eight lifecycle situations are normal operation, program certification,
initial deployment, a new recipient, retained-state restart/transfer, lost-state
recovery, audit and a rule/migration boundary. These do not all request the same
assurance claim. Memory acknowledgements provide no durable publication claim.

Tests are written, reviewed and observed failing for the intended missing behavior
before implementation. New work uses one measured CPU/worker, declared inherited
limits and create-once outputs. Missing tools or resource exhaustion remain explicit
operational outcomes. Full commands and contracts are in the feature quickstart.

`study.py freeze`, `run-case` and `collect` implement the fixed CLI contract.
`validate_report.py --manifest … --assessment …` independently verifies exact
closed bytes and source contexts, recompiles/replays the expected abstract roots,
rechecks available complete LD8/LD8C program evidence in new processes, and
rechecks the original complete LD8 history. It uses the pinned controllers matched
to the freeze, never source code selected by an evidence packet.
`final_checks.py --manifest …` records scoped tests, formatting, Clippy, Python
checks, the required repository gate, deterministic LD8 re-execution and selected
historical/source preservation checks under the original campaign ledger.

The profile intentionally kills a post-memory-commit diagnostic process and a
bounded waiting process. Those original signal/timeout receipts remain operational
failures with no positive assurance. A matched fault-injection expectation differs
from an unexpected capacity failure, which blocks further growth cells. Program
certification can be reused only after actual in-process checking; none of these
roles establish a native-to-Lean implementation theorem or physical durability.
