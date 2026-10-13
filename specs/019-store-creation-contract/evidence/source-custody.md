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

## Later ordinary snapshot-race setup

The full Store run observed commit::evaluation_reads_one_consistent_snapshot
consuming its FirstRead schedule during checked open. It now opens with LandOn::Commit
then arms FirstRead through backend_mut before the evaluation being tested.
The full commit target passes13 tests. This retimes an existing fault instrument;
its original assertion and all archived canonical bytes remain unchanged.

## Historical replay fault activation

`old-stored-value-arming-red.log` shows replay::stored_values_are_checked_against_
their_content_hashes failing during checked open because its original seed value
was already corrupted. The existing adapter now has a local active flag; open
legally, arm it, then retain the exact original replay divergence assertion.
`old-migration-arming-red.log` shows migration replay tamper failing during checked
schema opening. Open with identity record/version closures, then install the exact
existing alterations through backend_mut. Original replay assertions and archived
bytes remain intact. These are fixture retimings, not relaxed integrity checks.
Final canonical tests must confirm their corrected execution.

The same boundary review found replay, lifecycle_replay and query_replay property
adapters installing alterations before open; generated positions can include the
captured endpoint, immediate parent or a schema introduction. They now open with
an empty alteration and install the existing closure afterward. The manual replay
benchmark uses the same setup. This wider fixture-only consistency change follows
source inspection and the two observed sibling failures, not a claim of a new
behavioral RED for every random property. Their original replay-window/witness
assertions and generated tampering domains remain unchanged.

## Final source custody before freeze

All3828 protected paths match the captured SHA-256/byte-length baseline, including
exact symlink target bytes. No schema, hash vector, historical017/018/022 artifact,
Cargo.lock or facade export entry changed. The new replay.proptest-regressions
seed preserves the observed Drop-at-one fixture counterexample as additive
regression evidence; existing migration regression seeds remain untouched.
Final gates must execute the retimed entire source at the frozen revision.
