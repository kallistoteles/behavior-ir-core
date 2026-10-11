# Validation Guide: Complete Resulting-State Validity

**Status**: Runnable guide for later implementation. Proposed targets below do
not exist yet. No remediation test or runtime gate was run during planning.

## Prerequisites

Work from the owning Core repository on017. Confirm branch/remote/status and
preserve unrelated changes. Use the pinned Nix shell/toolchain and Z3; no private
Core dependency overrides. Read [decision contract](contracts/decision.md),
[profile matrix](contracts/profiles.md) and [proof obligations](correctness.md).

The original counterexample source/run is pinned by spec.md. Preserve016 as
immutable evidence. A test-first record for 017 must be newly observed; the old
RED cannot be relabeled as new compliance.

## Collect and observe new RED before implementation

After writing the proposed test targets, confirm nonzero collection, then run:

```bash
nix develop -c cargo test -p behavior-core --test resulting_state_validity -- --list
nix develop -c cargo test -p behavior-core --test resulting_state_validity -- --nocapture
nix develop -c cargo test -p behavior-core --test resulting_state_order -- --nocapture
nix develop -c cargo test -p behavior-core --test resulting_state_profiles -- --nocapture
nix develop -c cargo test -p behavior-store --test resulting_state_validity -- --nocapture
```

Collection listings do not execute tests. RED requires the intended semantic
assertion to fail with compiled tests actually executed; compile failure, missing
target or zero selected tests is not that evidence. Capture source revision,
source/test digest, command, collected/executed/ignored counts, actual failure and
exit status. Preserve valid parent/candidate controls alongside each negative.

## Root-cause scenario and independent oracle

Use the audited valid parent `E#e0.target = "new"` with `not exists(target)`.
Propose creation `E#new.target = "absent"` with historical never_used evidence.
The new row is valid; unchanged e0 becomes invalid. Independently reconstruct the
proposed child and test actual target membership, without asking the production
validator or optimizer which rows to inspect.

Expected fresh result with successful postconditions: DENY / CONSTRAINT_VIOLATED,
no commit bundle, no head/history/entity/reference/committed-command changes.
Expected valid control: create a fresh identity absent from all surviving target
fields; full reconstructed child remains valid and can commit. No-op, empty-type
and command-only valid controls also succeed.

Existing `nonlocal_creation_preserves_014_refusal_boundary` in Store's
incremental_validation suite currently asserts the old bad commit/next-read
STATE_INVALID behavior. Replace its fresh expectation explicitly; retain an old
record as historical reproduction evidence, not a current preservation test.

## Coverage and first failure

Test ordinary plain/provider evaluation, invocation, Store evaluation/invocation,
rederivation and forged/stale live commit. Cover create/update/remove/no-op,
unchanged survivors, simultaneous reference retargets/new targets, historical
freshness and nonlocal derived exists/referenced. Queries/aggregates belong in
admitted global/action scope, not prohibited entity-rule fixtures.

Expected ordering controls:

- False postcondition wins over any child failure.
- Same entity: invariant error wins over false constraint.
- Earlier canonical entity false constraint wins over later invariant error.
- Declared/synthesized keys obey the contract; diagnostic text cannot order refs.
- Typed subject/declaration evidence identifies invariant and constraint witnesses
  on multiple unchanged/unbound rows; body hashes alone are not sufficient.
- Unbound field/node/operand observations survive frame and bundle conversion.
- Identities with admitted escapes/control characters sort by decoded UTF-8
  identity, not canonical JSON lexical spelling.
- Multiple rule failures choose semantic declaration identity, independent of
  source/backend insertion and touched/created/unchanged partitions.
- Same-profile full/cache paths choose the same witness and complete required
  evidence. Non-semantic metadata changes preserve it; semantic rule-binding
  renames change BehaviorHash and are not metadata-only controls.

Incomplete universes, omitted empty types, contradictory fields/identities,
unknown profiles and tampered snapshots must explicitly refuse or fail replay.
Required provider failures preserve their actual existing route; optional entity
lookup retains its field fallback. Unreachable errors are not fabricated.

## Current versus historical controls

Frozen old 0.4–0.7 decisions, including the old ALLOW counterexample, replay their
original computation. Equivalent fresh execution uses record 0.8 and rejects the
invalid child. Verify both module language profiles. Nested invocation and
Store-backed replay use the archived decision profile at the historical schema.
Read-v1/read-v2 fixtures retain their own existing interpretation.

An old uncommitted bundle cannot produce a new ordinary commit. Exact recovery of
an already committed event returns the original event without a write or cache
promotion. Existing invalid historical parent refuses fresh ordinary work. Wrong
candidate/verifier/policy bindings cannot acquire authority from an old hash.

## Reuse, fault and property evidence

After new regressions are GREEN, run existing controls as appropriate:

```bash
nix develop -c cargo test -p behavior-store --test incremental_validation
nix develop -c cargo test -p behavior-store --test snapshot_reuse
nix develop -c cargo test -p behavior-store --test behavior_validity
nix develop -c cargo test -p behavior-store --test result_state_props
nix develop -c cargo test -p behavior-store --test concurrency_props
nix develop -c cargo test -p behavior-store --lib store::incremental:: -- --list
nix develop -c cargo test -p behavior-store --lib store::incremental::
nix develop -c cargo test -p behavior-verify --test preservation
nix develop -c cargo test -p behavior-verify --test errors_and_posts
nix develop -c cargo test -p behavior-verify --test queries
nix develop -c cargo test -p behavior-verify --test soundness_regressions
```

Cover cold/warm/reopen/cache loss, equal StateId at another history, schema/behavior/
profile substitution, failed CAS, genuine non-application and lost acknowledgment
after durable commit. No refused candidate publishes validity or commands.

Property tests generate valid finite parents and legal deltas, independently
reconstruct every candidate row and check successful-result validity. Direct
membership/arithmetic model predicates supplement production-validator comparisons.
Disclose that existing full_child uses the production snapshot checker for its
verdict despite independent data reconstruction. Perturb enumeration/index/cache
state without changing semantic inputs. Existing ignored property evidence can be
selected explicitly; it is not automatically included in normal workspace tests.

Verifier controls must compare canonical symbolic prefixes and current witness
confirmation, with versioned evidence and conservative INCONCLUSIVE outside the
supported model. Do not count incompleteness as unsoundness or claim a false PROVEN
case that has not been independently reproduced.

## Required gates and external consumer

On the actual completed implementation revision, run the owning gates:

```bash
nix develop -c scripts/gates.sh
```

They include formatting, strict clippy, workspace tests/build, determinism,
boundary/public surface, external consumer, workflow/terms and script checks.
Keep public behavior-engine signatures unchanged and add a consumer-only regression.
Do not regenerate frozen historical goldens to obtain green gates. New record
schema/fixtures and verifier expectations must be updated deliberately with
independent expected outcomes. Existing golden/conformance runners must use
archived replay checks for old records and separate current0.8 expectations;
archive access remains internal, not a public fresh strategy selector.

After pushing the exact tested candidate, validate its external consumer using
the supported script (`FULL_CANDIDATE_SHA` is a replacement argument):

```bash
nix develop -c scripts/check-consumer.sh --rev FULL_CANDIDATE_SHA
```

Capture actual command outcomes and revision identities. Delivery/release gates
must eventually cover the exact delivered revision; planning is not that evidence.
No tag or release is authorized by this guide.

## Targeted re-audit output

Produce separate017 evidence mapping O-MODEL-005, O-INCREMENTAL-008 and
O-VERIFY-008 to exact propositions, construction/invariants, observed tests and
remaining assumptions. Preserve the016 findings/verdict unchanged and do not
report other remediation clusters closed. See correctness.md for disposition
criteria; tests alone do not prove universal soundness.
