# Implementation evidence: 012

The unchanged baseline is Core 0.10.2 at
`c62a64c0a23d938a394418b9b78f9e0ddf62b3f2`.
Implementation preserves the existing 012 and 013 design documents.

## T001 — compatibility baseline

PASS: `nix develop --command bash -c 'scripts/conformance-digest.sh > specs/012-unified-invocation-model/digest-before.json'`.
Rust 1.98.1 and Z3 4.16.0 were confirmed in that shell. The digest includes both
fixture/schema bytes and deterministic legacy outputs. It was committed before
implementation changes. Initial attempts outside the development shell failed
because Cargo/Z3 were absent; those attempts are not baseline evidence.

Task completion records below describe actual execution, not retroactive TDD.

## T002 — digest subset checker

Reviewed the negative cases against the frozen-baseline contract. A runnable
nonpassing interface was used to observe a semantic failure:
`scripts/tests/test_digest_subset.sh` exited 1 with `FAIL changed: got 0, expected 1`.
Implemented the checker afterwards. The same command now passes, including
changed/missing hashes, forbidden additions, allowed invocation additions and
malformed input. Diagnostics identify the offending key; ordering is canonical.

## T003 — direct fixture generator

Reviewed arities, typed references and the complete snapshot. The runnable empty
generator made `scripts/tests/test_invocation_fixtures.sh` fail with
`AssertionError: ledger fixture missing`. After implementation the same test
passes, comparing independently generated directories byte for byte.
The legacy CLI admitted `modules/ledger.json` successfully at wire 0.7.

Compatibility adjustment: directory documentation is in the new
`tests/fixtures/invocation/README.md`. Editing the existing fixtures README would
change a frozen digest entry and contradict T001/T016; no old fixture was edited.

## T004–T007 — hashing and typed documents

T004 red: compiled `canonical_tagged_hash` tests failed (2/2) because the
nonpassing interface returned `Serialize("tagged hashing is not implemented")`.
After T005, 3/3 tests pass, including actual decision records 0.4/0.5/0.6 and
all frozen wire vectors. The existing verification hashing tests passed (3/3)
before an additional delegation regression was added.

Layering adjustment: the cross-crate equality assertion lives in
`behavior-verify/tests/hashing.rs`, where Core is already a dependency. Core's
test checks the independent SHA-256/tag/canonical-JSON formula. This avoids
adding a reverse Core→Verifier dependency solely for an integration test.

T006 red: compiled `invocation_documents` failed 5/5 tests against nonpassing
interfaces (missing identity/format/trust-boundary errors and absent valid
values). After T007 the same 5/5 pass. Snapshot decoding takes the admitted
module explicitly: reference and fact consistency cannot be decided from
untyped JSON alone. It reuses the existing snapshot/fact consistency routines.
No legacy evaluator or admission rule changed.

## T009–T010 — shared resolver

The compiled resolver contract failed 4/4 against the nonpassing interface
(successful resolution absent, unknown-capability refusal absent, independent
binding problems absent). Added and observed the negative identity-substitution
case before implementation. Afterwards `invocation_resolve` passes 5/5 and
`invocation_documents` still passes 5/5. Facts retain parameter order; diagnostics
have canonical stage/code/path order. The resolver depends on a Core identity
pair, not the storage crate's EntityKey, to preserve crate layering.

The verification hashing delegation regression passes 4/4; the frozen Core
hash-vector suite also passes 1/1.

## T008 — independent schema validation

The compiled schema test failed with `valid invocation rejected` against
nonpassing schema documents before their semantic schemas were implemented.
The development shell now includes Python's JSON Schema validator. This test-only
tool is needed because the referenced pre-existing `schema.rs` actually tests
StateSchema hashes and supplies no JSON Schema validator; no Rust dependency was
added. Codec checks remain authoritative for cross-document consistency and
lexical numeric restrictions that JSON Schema cannot express.

PASS: `nix develop --command cargo test -q -p behavior-core --test invocation_schema`
(1/1). It validates schema meta-syntax, valid documents and invalid format/key/
identity shapes with an independent Draft 2020-12 validator.

## T011–T013 — plain invocation and independent goldens

Created and reviewed 13 expected envelopes. Eight evaluate to ALLOW/VALUE;
five are unknown/wrong-type/alias refusals. The fixture generator uses only
the legacy CLI `eval`/`read` for inner records and an independent Python
implementation of the documented envelope hash for their expected identity.

T012 red: the compiled plain test failed on the nonpassing interface with
`invocation evaluation is not implemented`. After T013 the same test passes
all 13 cases, recomputes both kinds' envelope identity and compares every
evaluated inner record with its legacy replay request. The schema test remains
green with all new golden records present.

API adjustment: plain invocation returns `Result<InvocationRecord,TransportError>`
instead of hiding a canonicalization/hashing failure. All semantic refusals
still produce records; non-canonicalizable transport values cannot produce
false or empty-hash evidence.

## T014–T015 — Store invocation

The first test build lacked fixture helpers in the store test module; that
compiler failure is not TDD evidence. After adding the test-only helpers,
the compiled test failed with `BundleInvalid("store invocation is not implemented")`.
After implementation the same test passes: all 13 cases match the plain path
at the same data version, every allowed head-action bundle equals legacy
Store::evaluate, ten refusals preserve the head/history, and a past-position
action receives no bundle.

Backend reads are completed fallibly at one immutable as-of position before
entering Core's infallible resolver. No backend error is converted to absence.
Both action paths share the original bundle-construction logic.

## T016 — MVP compatibility checkpoint

PASS: `nix develop --command cargo test -q -p behavior-core -p behavior-store`
(333 passed; 17 ignored, not claimed as passes).
PASS: conformance digest piped through digest-subset against digest-before.json;
all 595 frozen keys unchanged. Logs: `/tmp/012-mvp-test.log` and
`/tmp/012-mvp-digest.log`. The predecessor feature is not complete yet.

## T017–T018 — Core invocation replay

The compiled replay suite failed 3/3 against the nonpassing replay interface.
After reconstruction from recorded identities, values and facts, all 13 goldens
replay; tampering and rehashed envelope/inner contradictions are rejected.
A strengthened result-tampering regression failed because an early hash check
hid the changed semantic field. Comparing reconstructed semantics before their
derived hashes fixes the diagnostic without weakening identity validation.
PASS: invocation_replay (3/3) and invocation_plain (1/1).

## T019–T020 — Store invocation replay

After correcting a scaffold type error (not TDD evidence), the compiled test
failed because Store replay was unimplemented. It now passes all 13 invocation
cases, rejects a rehashed foreign data version and disproves a self-consistent
false absence assertion using the exact historical Store position.
PASS: invocation_store (2/2). Backend failures remain errors rather than absence.

## T021–T025 — unified intents

The direct wire generator now supplies 13 intents and independently computed
expected envelopes; it still uses only legacy evaluators for inner records.
Compiled Core tests failed 3/3 against nonpassing interfaces; after implementation
all three pass. Store's compiled intent test then failed against its nonpassing
interface and now passes (invocation_store 3/3 total). Existing replay and
independent schema validation remain green.

Representation clarification: DECODE refusals caused by forbidden source keys
archive `outcome.decode_evidence = {source_kind:"intent",document:...}`. Without
the original document replay cannot distinguish a genuine decode failure from
an invented one after the invalid key has been removed from the envelope.
This evidence is canonical and hash-bound, contains no inner evaluation record,
and is re-decoded by replay. Semantic-only documents need no such field.
The check/invoke APIs return Result for transport errors, consistently with the
earlier plain invocation API adjustment. Metadata never reaches evaluation.

## T026–T029 — compatibility, conformance, history and verification

PASS: legacy_intents_frozen (9/9, executing the original fixture suites),
invocation_conformance (1/1, 19 applicable outcome/arity combinations for both
kinds), invocation_history (1/1, four commits plus reads/refusals, both Store
replays and every invocation replay), read_store_intent (3/3 unchanged).
Legacy functions received documentation comments only.

PASS: invocation_bindings (1/1), using fresh Z3 4.16.0 without cache. All 22
reviewed obligation outcomes match; counterexamples reproduce through runtime,
including register_customer violating unique customer names. The expected
check table is under invocation/verify rather than the task's verify directory:
the frozen digest contract permits new fixtures only under invocation/.

## T031–T036 — public boundary, scripts and documentation

The external consumer first failed to compile because the facade namespace was
absent. This is interface evidence, not a semantic failing test; the underlying
Core/Store behavior had its compiled failing tests above. After explicit facade
exports, both consumer invocation tests pass. Public surface check passes (93
items after adding the complete document boundary).

Compiled CLI tests failed 2/2 with unrecognized commands (exit 64). Afterwards
both pass for all 26 independent goldens, replay, syntax/usage/mismatch exits,
numeric capability decode refusal and contradictory snapshot refusal. Snapshot
refusals archive the original documents so replay verifies their cause.

The compiled shell-script harness first failed because no invocation fixture
was executed. It now passes and catches changed output, CLI failure, empty
output and replay failure. The helper runs each fixture exactly twice and
replays once; it adds no output digest labels to the frozen subset.

Documentation, principles §16, development guidance and Core 0.11.0 are updated.
The independent schema regression exposed a mismatch with existing request
defaults: missing input/context normalizes to empty objects in the codec but
schemas required them. The schemas now describe those same defaults explicitly.

## T037 — final validation in progress

The first compiled release performance run failed: 1,000 three-binding
evaluations took 319 ms legacy / 626 ms invocation (1.961×). Before rerunning,
removed redundant current-head state reconstruction and avoid needless JSON
clones/diagnostic-path allocations during canonical hashing. Historical position
validation and exact hash bytes remain required. No performance threshold was
weakened. Final gate and release verification remain pending.

Subsequent optimization retained the exact evaluator and hash formulas while
moving owned evidence instead of cloning it, reusing already canonical inner
bytes, memoizing immutable SchemaHash derivation and avoiding a JSON encode/decode
round trip on the internal resolved path. Legacy text parsing still uses the
same section/type/state/fact evaluator. Resolver requests are immutably borrowed;
no host mutation can occur while a resolved invocation uses the request.
The release performance test passed: 266 ms legacy / 291 ms invocation, ratio
1.092 (three alternating 1,000-run trials; median, unchanged limit 1.1).
Temporary profiling measurements have been removed.

Additional evidence: compiled snapshot regression exposed disagreement between
resolution and universe/existence facts. The first prototype incorrectly required
all universe values to be repeated in the explicit table; this was corrected
against FR-004b's rule that facts may add information. Valid universe values now
participate in resolution; known existence with no available value fails before
evaluation. Both the corrected semantic regression and all old goldens pass.
An observed failing metadata replay case for incomplete snapshot evidence was
fixed by archiving the original intent/context rather than its converted request.
Unicode/escaping, DENY and INVALID_INPUT envelope hashes equal independently
computed full canonical hashes and replay successfully.

The first final gate stopped on a full disk during compilation, not a semantic
failure. Cleared only regenerable Rust incremental/build artifacts with Cargo;
14 GB became available. The unchanged gate script must pass on the final tree.

Final compatibility check on the complete implementation passed: all 595 frozen
digest keys retain exactly their original hashes. The full gate is still running;
this digest pass alone does not complete T037. New invocation fixtures are staged
so release construction will include the actual new tracked conformance files.

Final required release-mode performance command passed on the complete source
tree (`cargo test --release -p behavior-store --test invocation_perf -- --ignored`):
1 test passed, 0 ignored. The unmodified full gate completed its workspace tests:
449 passed and 21 deliberately ignored. Remaining gate steps and release
verification are still pending; ignored tests are not counted as passing.

The unchanged `scripts/gates.sh` completed with exit 0 and `gates: OK`: fmt,
clippy, 449 workspace tests (21 ignored), workspace build, determinism, crate
boundary, explicit public surface (93 items), all 10 external-consumer tests,
workflow/terminology checks and script tests passed. The consumer lockfile now
records Core 0.11.0. Release-check remains the final T037 obligation.

## Accepted predecessor for 013

Source revision: `7f06f02875c20442b68f3e0b68c999cd2a54186f` (local only).
All 37 tasks are implemented and their required checks passed.
`nix develop --command scripts/release-check.sh --skip-gates /tmp/012-release-7f06f02`
passed after the documented same-source full gate: two identical reproducible
builds, canonical checksums/manifest, engine 0.11.0, empty-environment CLI
admission/evaluation/replay, and exact tracked conformance archive. Skipping
gates here reused the actual successful full gate; it did not replace one.
The acceptance-record commit changes only tasks/review/evidence, not code,
fixtures, dependencies or release inputs. `.specify/extensions.yml` does not
exist; there are no post-implementation hooks. No tags or assets were published.
013 remains unimplemented and the known Core-wide soundness audit is still open.
