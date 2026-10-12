# Source Custody: Core019

Initial integrated source revision: `9d3fcfeb8764773332bbf5a69881ab0b49644fd9`. The completed 022 ancestor is
`3179b13163cd2bc9134176b78029dd39a5a90c8f`; its017/018/022 records, fixtures and
reports retain their original evidence identity. This is a source baseline, not
a final019 validation receipt.

[Protected source checksums](protected-source-sha256.json) contains SHA-256 and
byte length for all 3828 tracked paths in `schema/`, `tests/fixtures/`,
`api/engine-surface.txt`, `Cargo.lock` and the complete 017/018/022 feature artifacts.
Symbolic links are recorded by exact target bytes, without dereferencing archived
protocol links. The snapshot covers existing genesis/read/action/invocation/
governance profiles, canonical hash vectors and their historical provenance. It
was produced before 019 production changes; no recorded bytes were normalized or
rewritten. An initial checksum collection encountered a directory-target symlink;
no snapshot had been written. The successful collection uses the explicit rule above.

Future checks compare actual candidate bytes to this baseline. New 019 fixtures may
be additive. Any justified test-source setup adjustment around checked cold opening
must be recorded separately and preserve archived record/genesis/fixture bytes.
Existing receipts attest their own revisions, not 019.

The supported facade export baseline remains `api/engine-surface.txt`. Existing
Backend/Store signatures, Wire schemas, canonical domains and verifier identities
are protected; intentional behavioral Backend-contract changes are documented in
[compatibility assessment](compatibility-assessment.md). Final gates and consumer
validation bind a frozen candidate in an external immutable receipt.

## US1 fixture timing review

Inspected history_backend.rs and both strict_profile_replay.rs adapters. Existing
faults are armed after legal opening, so no setup adjustment was necessary for the
US1 checked-open change. Explicit 017/018/022 regression run passed57 replay-
evidence,10 resulting-state-boundary and31 strict-profile tests. Protected record/
fixture bytes are unchanged. Later expanded gates may identify additional setup
changes; any such change must be listed here rather than editing historical data.

Four conformance setup exceptions were subsequently observed by the entire target:
snapshot_consistency, existence_snapshot and query_snapshot consumed FirstRead
interleavings during newly checked open; replay_detects_tamper corrupted an endpoint
before opening. Open legally first, then arm the same race/tamper via backend_mut.
The intended later assertions are retained. All10 conformance target tests pass
following retiming, including31 older cases and old mutants/order controls. The
initial failing log is retained; no archived data was modified.
