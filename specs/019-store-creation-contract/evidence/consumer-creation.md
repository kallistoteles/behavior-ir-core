# Public facade and durable-host creation evidence

The consumer uses only the supported `behavior-engine` facade. The initial
baseline is integrated022 at `9d3fcfeb8764773332bbf5a69881ab0b49644fd9`.
Resource settings match the execution ledger. Working receipts are retained
externally in `/home/kalle/validation-receipts/core019-work/`.

## US1 prospective RED and legal controls

`cargo test --manifest-path consumer/Cargo.toml --test store_creation -- --list`
collected seven tests. The baseline run returned101: four legal controls passed,
and three actual assertions failed. Receipts, command/environment, source digest
and original test source are in `consumer-us1/{list.log,red.log,red.json,test-red.rs}`.

The passing controls establish both supported genesis profiles with empty and
referenced seeds, revision-one position-zero material, seed universes/required
incoming references, strict malformed document refusal, legacy raw-to-encoded
decimal normalization, and invalid type/duplicate/reference/constraint/grid/schema
refusal before any Backend create call. They are controls, not newly failed laws.

The actual REDs were successful acknowledgment without publication, opening a
genesis-only publication, and overwriting an existing nullable authoritative
filesystem snapshot as though it were an absent target. No original016 partial
creation reproduction is claimed by these deliberately broken probe cases.

The nullable snapshot requirement in T010 exposed a dependency cycle with the
full host implementation in T030. Following the root's recorded execution
refinement, only the integrity rejection slice of T030 was advanced after its
genuine RED. Existing authoritative `store.json` must have nonnull genesis/head;
only NotFound represents absence. The exact nullable test then passed (one test,
six filtered), with receipt `consumer-us1/nullable-green.json`. Retry, locking,
durability barriers and fault windows remain US2 work, not evidence from this slice.

Scratch roots establish their own directory and parent-entry synchronization
separately. These are process/filesystem host tests, not device power-loss tests.
Their stable-lock/atomic-rename/durability premises remain explicit in the contracts.

After root's checked fresh creation/open implementation, all seven US1 facade
tests passed, with zero ignored (`consumer-us1/green.log` and `green.json`).
Subsequent US2 test preparation expands this target; its separate baseline is
not represented as the earlier seven-test success.
