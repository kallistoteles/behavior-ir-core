# Research: Strict Bundle Evidence Validation

Research examined clarified draft `5cd3dbab61a8354e63c379d784f10d83abce670b`
and executable/schema sources unchanged from frozen 019
`6ad357c7e9960ce6771fd435adcec9f8018fb7d6`. Three read-only research lanes covered
codec/hash domains, complete producer/consumer/profile inventory, and test/evidence
design. They made no source changes and executed no correction tests.

## R1 — Failure mechanism and discovery provenance

**Decision**: Treat the finding as a source-established v2 document-kind mismatch;
the first implementation action is a new asserting RED on the named 023 baseline.

**Rationale**: Store `facts_json` adds `result_hash` to every query, while
`GovernanceCandidate::from_json` calls ordinary `Facts::from_json`, whose closed
query keys forbid it. Relevant sources are
[Store producer](../../crates/behavior-store/src/store.rs),
[candidate consumer](../../crates/behavior-verify/src/governance/trusted.rs) and
[ordinary Facts](../../crates/behavior-core/src/facts.rs).

Discovery ran with in-flight HEAD `99fec008c9fa2be13d759f9187399215c20cd053` on a
dirty 019 checkout, not an unchanged frozen 019 runtime revision. Its exact retained
diagnostic source digest is
`2bbd34ccf73f17e024e124517e9be352c8fbe740551695321b3dd289fd06d43b`.
The command was `nix develop -c cargo test -p behavior-store --lib diagnostic_only -- --nocapture`;
the collected test only printed outcomes and exited zero. It printed v1 head 8
and v2 head 0 with `BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts`
under both indexed and unindexed access. Custody paths are in
[origin-and-priority.md](origin-and-priority.md).

Comparing committed in-flight and frozen source establishes unchanged `facts.rs`,
`trusted.rs`, the relevant producer/commit function bodies and retained orders
helpers/fixture. This supports the frozen source finding, but does not reconstruct
the complete dirty working-source manifest or prove a frozen runtime run.

**Alternatives considered**: Reuse the print-only diagnostic as a passing regression
or as historical test-first compliance — rejected. Add a fake counterexample
expecting the bug to remain — rejected.

## R2 — Private codec placement and authoritative hash reuse

**Decision**: Add a private `governance/trusted/bundle_evidence.rs` module in Verify,
called only from the existing candidate observed-facts check. Use raw decoded and
validated owned evidence domains, with projection available only after validation.
Place the existing `TAG_QUERY_RESULT` value in Verify hashing and preserve Store's
constant as an alias. Both sides use existing `document_hash`, which delegates to
Core's canonical tagged SHA-256.

**Rationale**: Dependencies already flow Store → Verify → Core. The candidate
constructor owns the trust boundary. The ordinary Facts parser remains authoritative
for semantic Facts and unchanged. The original claim JSON remains the identity input.

**Alternatives considered**: A Store-owned codec used by Verify creates a cycle.
A public Core evidence framework or new facade API expands scope. Adding optional
integrity fields to ordinary Facts erases the required domain distinction. A second
hash implementation risks divergent domains/bytes.

## R3 — Existing evidence grammar and canonical collections

**Decision**: Admit only the five observed sections emitted by `Facts::to_json`:
`existence`, `identities`, `references`, `queries`, `fields`. Each present section
is an array of the closed products in [bundle-evidence.md](contracts/bundle-evidence.md).
Require every query's existing result hash, including empty memberships. Reject
unknown fields, duplicate semantic keys, duplicate captures and noncanonical order
before map/set projection. Do not sort or deduplicate supplied evidence as repair.

**Rationale**: Producers sort target/field identities, reference edges, query
instances, capture reads and members. Ordinary Facts normalizes some collections
and preserves capture vectors; it is not a strict canonical envelope parser.
`universe` is supplied Facts or full record snapshot evidence, never an observed
bundle section. See `facts.rs:285–445,470–537`, `eval.rs:360–377,447–449,514–523,2871–2894`.

Empty observed bundles omit/null `read_facts`; the action candidate adapter converts
that to `{}`. Migration candidates require exactly `{}`. Empty present section
arrays remain permitted; do not add a new omission-only restriction. Semantic
string fields retain their existing string domain without new length constraints.

**Alternatives considered**: Treat `universe` as another observed section, reject
all explicit empty arrays, normalize captures before hashing, or import constraints
from an inaccurate wrapper schema — rejected as unsupported restrictions/meanings.

## R4 — Result integrity is not instance identity or authority

**Decision**: Verify exactly
`SHA256(UTF8("behavior.query_result.v1") || 0x00 || UTF8(canonical_json(member_objects)))`,
displayed as lowercase `sha256:` plus 64 hex digits. The member objects are the
existing sorted unique `[{"id":...}, ...]`, not a bare string array.

**Rationale**: This is the existing Store algorithm, delegated through
[Verify hashing](../../crates/behavior-verify/src/hashing.rs) to
[Core canonicalization](../../crates/behavior-core/src/canonical.rs).
Result hashes exclude query definition, captures, fields and history; the enclosing
candidate binds them. Equal memberships may legitimately share a result hash.

Query-instance identity uses a different binary encoding under
`behavior.query_instance.v1` (`eval.rs:475–482`, `admit/hash.rs:377–383`). The
minimal correction preserves instance/definition strings and existing historical
checks rather than adding a second instance encoder.

**Alternatives considered**: Hash all query metadata into the result hash,
ignore mismatches, fabricate missing hashes, or treat a matching hash as historical
truth/authentication — rejected. Preserve the existing producer's string-only hash
domain invariant; new consumer failures must propagate, not default to empty output.

## R5 — Profile-sensitive phases and errors

**Decision**: Preserve v1 decoding/hash/commit/replay functions and their current
schedule. Apply new strict evidence integrity only at the v2 candidate boundary.
Map local closed/order/hash/projection failures to existing `INVALID_CANDIDATE`.
Preserve raw duplicate/noncanonical-number rejection as `INVALID_GOVERNANCE_DOCUMENT`
and enclosing candidate identity mismatch as `HASH_MISMATCH`.

**Rationale**: V1 `CommitBundle::from_json` structurally decodes and hashes without
candidate integrity checks (`documents.rs:691–695,742–756`). Commitment regenerates
observations and rejects different `read_facts` (`store.rs:2242–2247`). Earlier
Store/schema/profile/head/time and actual backend failures can win and must retain
their precedence. Existing malformed v1 hash replay cases rely on this placement.

**Alternatives considered**: Call a shared strict codec from all bundle hash
branches, move v1 hash checks earlier, leak crypto helper error codes, or require
identical backend traces across profiles — rejected. Shared hashing does not imply
a shared validation lifecycle.

## R6 — Supported domain and transitive consumers

**Decision**: Use the actual cells in [support-matrix.md](contracts/support-matrix.md),
including action evaluation, unified action invocation, candidate attachment,
commit/recovery, archives, governance/CLI and supported facade paths. Test migration's
empty evidence and independent read compatibility without inventing query migrations.

**Rationale**: Query-bearing v1 fresh writes are Wire 0.6/0.7 under none policy;
query-bearing v2 writes include Wire 0.6–0.8. Fresh Wire 0.8 commitment to v1 requires
an upgrade even when evaluation can construct a bundle. Fresh required legacy
governance also refuses. Codec acceptance of historical decisions does not establish
every hypothetical module/record/profile combination.

**Alternatives considered**: A blind version Cartesian product, read-record v2 treated
as Store-v2, or preserving only the known two diagnostic rows — rejected.

## R7 — Scoped current schema correction

**Decision**: Add a distinct closed bundle-evidence definition in
`schema/governance-v2.schema.json` and `schema/store-v2.schema.json`. Redirect only
action candidate and non-null action commit-bundle `read_facts` to it. Preserve
migration's empty-object rule, nullable/omitted bundle facts and ordinary/witness
Facts definitions. Record remaining ordinary/witness schema mismatch separately.

**Rationale**: Both wrappers currently reuse `$defs/facts`, whose root aliases
`exists/used/incoming` disagree with emitted `existence/identities/references`.
Query sections are generic JSON, so required integrity shape is also absent.
The candidate/bundle refs are at lines 217–218 and 440–447; migration empty facts
at 279–280 and witness Facts at 2525–2526 remain independent.

Historical current-v2 action wrappers transitively reuse the commit schema, so
genuine valid archive acceptance is mandatory. Schema validation cannot prove
hash equality, canonical sorted keys or raw duplicate detection; runtime checks
remain necessary. This work changes schema artifact bytes and future release
asset digests, not BehaviorHash, semantic SchemaHash or document hash algorithms.

**Alternatives considered**: Keep the known broken bundle schema untouched,
make ordinary Facts permissive, correct every witness/legacy schema in this
feature, or claim JSON Schema performs cryptographic verification — rejected.

## R8 — Real RED, controls and custody

**Decision**: Reuse the exact private conformance `orders`, `orders_seed` and
`orders_history` through a new private test module. Retain all nine evaluation
steps/eight successful commits and the original require:none policy. Add a separate
required-authentication history control rather than changing the reproduction.

**Rationale**: The integration `tests/common.rs` orders seed is different. The
retained seed has `c1` limit 100, `c2` limit 1000, open order `ob` amount 150 on c2,
and employee e1. The current v2 none policy permits no evidence; a required policy
needs fresh exact authorization and `commit_with_context`. Existing signing helpers
hardcode ledger and must be parameterized in test code for the orders module.

Negative tests must reach their intended check, with unrelated outer identities
recomputed where needed and independently collected cases. Raw duplicate tests
use text rather than already-reduced JSON. Fabricated members with a correct new
hash must still fail historical rederivation, including freshly authorized variants.

**Alternatives considered**: Replace the seed, use a stronger policy that fails
for unrelated proof obligations, count compile/setup failure as RED, put all
negative checks behind one failing positive, or rely on producer/consumer agreement
without an independent hash vector — rejected.

## R9 — Delivery classification and exact consumer environment

**Decision**: Use the conservative minor-class assessment in
[compatibility-assessment.md](compatibility-assessment.md), with no numerical version
or release action. Validate the public facade and CLI plus scoped schema archives.
Run final canonical gates and pushed-revision consumer checks from the same clean
frozen delivery checkout, using its own CLI/fixtures/consumer source.

**Rationale**: The current public wrapper schema acceptance changes explicitly;
the 0.x policy treats required consumer adaptation as minor. A narrower runtime-only
correction might be patch-class, but omitting the broken schema boundary would not
fulfil this plan's correspondence requirements. Earlier integrated remediations
already carry independent minor-class changes.

The existing consumer script changes only the facade dependency for `--rev`;
its CLI and fixtures come from the invoking checkout. Its default CLI path is
`$PWD/target/debug/behavior`, even with a redirected Cargo target. Use default
checkout targets with stale `BEHAVIOR_BIN` unset, or record a separately verified
same-revision CLI path/digest. No private ecosystem override is release evidence.

**Alternatives considered**: Assume a green creation suite proves every v2 path,
reuse an older CLI/build artifact or exact-revision receipt after tracked changes,
embed a report's containing final commit SHA into itself, or publish a tag during
planning — rejected.
