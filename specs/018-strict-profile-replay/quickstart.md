# Quickstart: Validation of the 018 Replay Correction

This guide covers the implemented replay correction and its validation workflow.
The Core/Store integration tests, independent fixtures and public consumer target
exist. Actual commands, revisions and outcomes are recorded in the
[execution ledger](evidence/execution-ledger.md); commands in this guide are not
execution receipts. Final frozen-candidate gates and consumer validation remain
pending until the revision-bound external/CI receipt establishes their outcomes.

Run commands from the owning Core repository root in its pinned Nix environment.
Use the selected 018 implementation/integration base, not a private ecosystem
override. Keep [support-matrix.md](contracts/support-matrix.md) and
[proof-obligations.md](contracts/proof-obligations.md) beside the execution logs.

## 1. Establish revision and controls

Record branch, full SHA, status, toolchain and base. Preserve the 017 archive/action
fixes in the selected integration. The actual base and 017 dependency are recorded
in [implementation-base.md](evidence/implementation-base.md): local integration
of a draft PR is not human approval or a merge into main. Refresh affected
evidence if the integration base changes.
Required Nix tools, including Z3 for the existing canonical gates, must be present.
Missing resources/tooling are unavailable evidence, not passing checks.

Run the existing preservation controls:

```bash
git status --short --branch
git rev-parse HEAD
nix develop -c cargo test -p behavior-core --test read_replay --test read_replay_integrity --test read_record --test read_goldens --test read_soundness --test invocation_replay
nix develop -c cargo test -p behavior-store --test read_store_replay --test read_soundness --test read_schema --test read_history_prop --test invocation_store --test invocation_history --test conformance
nix develop -c cargo test -p behavior-core --test resulting_state_profiles --test command_replay --test invocation_plain --test invocation_intents
nix develop -c cargo test -p behavior-store --test resulting_state_history --test resulting_state_command_history --test command_replay
```

These are preservation controls, not reproductions of all 018 defects.

## 2. Collect regressions and preserve test-first evidence

The Core/Store `strict_profile_replay` targets use independent captured fixtures.
Record collection before execution:

```bash
nix develop -c cargo test -p behavior-core --test strict_profile_replay -- --list
nix develop -c cargo test -p behavior-store --test strict_profile_replay -- --list
```

Execute each named Store regression on the current candidate:

```bash
nix develop -c cargo test -p behavior-store --test strict_profile_replay historical_wire08_v1_read_must_replay_against_its_exact_store_position -- --exact --nocapture
nix develop -c cargo test -p behavior-store --test strict_profile_replay historical_wire08_v1_inner_read_must_replay_as_store_invocation -- --exact --nocapture
nix develop -c cargo test -p behavior-store --test strict_profile_replay store_replay_rejects_contradictory_duplicate_current_read_result -- --exact --nocapture
```

Each command must collect exactly its intended test and pass after the correction.
The retained pre-correction receipts in [baseline evidence](evidence/runs/baseline/)
establish genuine semantic RED on the unchanged implementation base: historical
Store read and inner invocation mismatched, while the ambiguous current read
matched. Legal controls passed first. Reproducing RED requires the documented
baseline source; do not reset or modify the delivery candidate to obtain it.
Compile errors, missing fixtures and zero tests are not semantic RED. Preserve
logs, test/source digests and full base SHA; immutable 016 audit logs are
supplementary provenance, not evidence of a test-first run on this base.

## 3. Run corrected matrix and public-boundary evidence

Run both complete matrix suites and the public facade consumer:

```bash
nix develop -c cargo test -p behavior-core --test strict_profile_replay -- --nocapture
nix develop -c cargo test -p behavior-store --test strict_profile_replay -- --nocapture
nix develop -c cargo test -p behavior-store --lib store::replay_tests -- --nocapture
nix develop -c scripts/check-consumer.sh
```

The suites must account for every required row/boundary/case ID, unsupported
refusal family and documented limitation. The external consumer's 018 target
uses only `behavior_engine` and checks existing Rust/JSON result handling; it
does not import the doc-hidden Core/Store preparation and profile hooks.
Check unchanged authoritative genesis/head/history/versions/references/command
streams after matched and refused replay. Required performed backend failures
retain existing operational behavior; invalid evidence is a non-match.

Replay read/inner evidence under its recorded profile after later writes and
migrations. Preserve archived bytes/identities, legacy errors/capture limitations,
current snapshot/diagnostic rules and 017 action controls. Test formatting/key-order
metamorphisms without blessing changed goldens or silently skipping cases.

The private `current_action_replay_does_not_construct_commit_bundle` and
`decoded_document_refusal_replay_does_not_construct_commit_bundle` probes both
retain fresh positive controls that construct a real bundle. Replay must construct
zero bundles, including when actual Store inputs make a matched standalone
decode refusal nonmatching. Their separate RED/GREEN receipts are linked in the
[Store review](evidence/us3-store-review.md).

The matrix also discloses the unchanged Store-origin transport-refusal limit:
an originally malformed request section can be echoed as `{}` and then
reconstructed differently by Store replay. Standalone matching and a valid Store
coordinate alone do not prove equal semantic inputs. Preserve the named genuine
Store-origin control and captured binding-refusal cases; this additional
follow-up must not become a new support restriction or a skipped required cell.

## 4. Run canonical gates and exact-revision consumer validation

T036–T039's fixture runner, checker and canonical determinism hook are implemented.
The default all-tests script, actual checker and workspace clippy executed
successfully in the retained [determinism receipt](evidence/runs/determinism-green/protocol-and-runner/run.json),
which identifies the known base and source/test digests. This pre-freeze result
does not establish final gates or exact-candidate consumer validation. The
individual paths can be run with:

```bash
nix develop -c bash scripts/tests/test_replay_determinism.sh
nix develop -c cargo run -p behavior-store --example strict_profile_replay
nix develop -c scripts/check-replay-determinism.sh
```

The runner replays actual retained historical and ambiguous/current controls,
asserts expected outcomes and immutability, and emits canonical case IDs and
original identities. The checker compares two executions, their exit statuses and
bytes, rejects missing or unexpected cases, and adds unique `core` / `018:` digest
labels without changing historical entries. The default test script exercises
protocol negatives, actual fixture execution and failure propagation through the
existing canonical determinism gate. Final frozen-candidate gates run these paths
again against the delivery revision.

After completing the integrated checks,
finalize tracked implementation, fixtures, reports and task bookkeeping, then
commit and freeze the delivery candidate. Tracked reports identify tested source
revisions known during their production and supporting evidence locations; they
MUST NOT attempt to embed the final SHA of the commit containing them.

Preserve truthful pre-freeze task status: final validation is still pending in
the committed snapshot. Record T043–T046 completion after freeze in revision-bound
CI or an external immutable receipt, without rewriting the frozen `tasks.md`,
reports or ledger. This prevents task completion itself from creating another
candidate that needs another completion commit.

Choose a retained external receipt/log location before running final validation;
the `receipt-root/<candidate-sha>/` paths in tasks are outside the frozen checkout,
not a new repository directory. Use a clean checkout of the committed candidate,
confirm its full SHA and unchanged tracked contents, and run:

```bash
git rev-parse HEAD
git diff --quiet
git diff --cached --quiet
nix develop -c scripts/gates.sh
git diff --check
git diff --quiet
git diff --cached --quiet
```

Capture commands, exit statuses and logs externally. A tracked change or failure
is visible evidence, not permission to update the frozen candidate silently.
The determinism gate must actually exercise 018 output twice with identical
exit codes/canonical bytes; existing historical digest entries remain unchanged.
Any new/changed script must have its own recorded test-first evidence.

After the candidate is committed and pushed, use its full SHA with the existing
consumer revision mode, substituting the actual SHA:

```bash
nix develop -c scripts/check-consumer.sh --rev FULL_CANDIDATE_SHA
```

The fixture/demo code and CLI must be from that same frozen candidate checkout;
assert its tracked contents remain unchanged after consumer execution as well.
Do not weaken gates or use an unpublished ecosystem dependency override as
release compatibility evidence.

Seal the validation receipt only from actual execution results. It binds:

- Repository identity and exact frozen commit SHA.
- Commands and exit statuses, including failed/skipped/unavailable outcomes.
- Environment/toolchain identity, including the pinned Nix inputs and Rust tools.
- Log/evidence locations for gates, consumer checks and supporting matrix/proof
  evidence; use retained locations rather than transient paths alone.
- Post-freeze task completion and any remaining conditional premises.

Revision-bound CI or an external immutable receipt is delivery evidence; it adds
no Behavior document format or semantic authority. Retain the finalized receipt
and its evidence without amending the frozen checkout. Any subsequent tracked
source, report or bookkeeping change creates a new candidate and requires fresh
final validation with a separate receipt.

Validation of a delivery-candidate SHA does not automatically attest a later
merge, squash, rebase or release commit with a different SHA. A SHA-preserving
fast-forward retains that identity; a different published revision must receive
its own final validation where exact-revision assurance is required, even if its
source tree is identical. This guide authorizes no merge or release publication.

## 5. Report targeted closure

Retain RED/GREEN logs, executed matrix IDs, hashes, immutability/error assertions,
determinism outputs, exact-revision gate/consumer evidence and conditional proof
arguments. Close only the two RC-002 findings and their relevant obligations.
Unexecuted or inconclusive evidence remains visible. No whole-engine SOUND claim,
historical evidence repair, release tagging/publication or pin update is implied.

Report final frozen-candidate results and closure through the external/CI receipt
and delivery summary. Tracked pre-freeze reports remain valid descriptions of the
evidence available when written; their pending final-validation status is resolved
by the receipt bound to that exact candidate rather than by another report commit.
