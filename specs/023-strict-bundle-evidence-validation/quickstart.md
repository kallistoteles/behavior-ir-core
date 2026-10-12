# Validation guide: Strict Bundle Evidence Validation

This is a prospective guide for the implementation phase. New modules/targets
named below are planned and do not exist at planning completion. Do not call a
missing, uncollected, skipped or print-only test passing evidence. Run commands
from the owning Core feature checkout root, in its pinned environment.

## Prerequisites and custody

Read [spec.md](spec.md), [bundle-evidence.md](contracts/bundle-evidence.md),
[support-matrix.md](contracts/support-matrix.md) and
[validation-evidence.md](contracts/validation-evidence.md) and [tasks.md](tasks.md).
Complete cross-artifact analysis before implementation, then author tests/code in
the agreed dependency and test-first sequence.

Confirm branch, remote and unrelated work before edits. Record source revision,
test-file digests, collection, full commands/statuses and environment externally.
The retained 019 diagnostic is dirty working-source discovery evidence, not an
exact frozen asserting RED. The executable baseline derives from frozen 019
`6ad357c7e9960ce6771fd435adcec9f8018fb7d6`, plus reviewed test-only source.

Use private conformance parent helpers for the exact seed/history. Do not replace
them with the different integration-common orders seed. First use v2 require:none;
required signed authorization is a distinct control. Keep source mutants and
their Cargo targets separate from official validation outputs.

## 1. Collect and observe the first real RED

After authoring/registering the proposed private conformance test module, freeze
its reviewed test-only revision before any production edit. Collect and run:

```bash
nix develop -c cargo test -p behavior-store --lib conformance::query_bundle_evidence_tests -- --list
nix develop -c cargo test -p behavior-store --lib conformance::query_bundle_evidence_tests::orders_history_v2_producer_evidence_completes_eight_commits -- --exact --nocapture
```

Expected baseline: the named test is actually collected and its assertion fails
with the existing `BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts`
during v2 candidate construction, before the first commit. Expected success
after correction: nine evaluation records, eight commits, head position 8.
Compilation/setup/signature failure and zero collected tests do not establish RED.

Before production changes, separately collect/run v1 characterization cases in
the proposed Store integration target:

```bash
nix develop -c cargo test -p behavior-store --test strict_bundle_compatibility -- --list
nix develop -c cargo test -p behavior-store --test strict_bundle_compatibility v1 -- --nocapture
```

These characterize baseline decode → historical commit refusal and competing
error/operational precedence; passing characterization cases are not correction REDs.

## 2. Validate the private codec and actual producer closure

Write local codec tests and observe compiled asserting failures before implementing
their behavior; missing modules/compiler errors are setup failures. Collect private
projection cases and public existing-candidate boundary tests, then run:

```bash
nix develop -c cargo test -p behavior-verify --lib governance::trusted::bundle_evidence -- --list
nix develop -c cargo test -p behavior-verify --test strict_bundle_evidence -- --list
nix develop -c cargo test -p behavior-verify --test strict_bundle_compatibility -- --list
nix develop -c cargo test -p behavior-verify --lib governance::trusted::bundle_evidence -- --nocapture
nix develop -c cargo test -p behavior-verify --test strict_bundle_evidence -- --nocapture
nix develop -c cargo test -p behavior-verify --test strict_bundle_compatibility -- --nocapture
nix develop -c cargo test -p behavior-store --lib conformance::query_bundle_evidence_tests -- --nocapture
nix develop -c cargo test -p behavior-store --test strict_bundle_evidence -- --nocapture
nix develop -c cargo test -p behavior-store --test strict_bundle_compatibility -- --nocapture
```

Require correct empty/nonempty hashes, independent vectors, exact projected Facts,
all five ordinary observation sections and unchanged original candidate identity.
Wrong/malformed/missing hashes, unknown fields, raw duplicates, duplicate semantic
keys/captures and noncanonical input order must reject independently. Recompute
unrelated outer identities to reach the intended check. Ordinary Facts still
rejects bundle-only result_hash.

Actual Store evaluate/invoke/invoke_intent outputs must round-trip under their
matching cells. Crafted Purchase candidate helpers are local codec controls, not
substitutes for real producer evidence. Migration coverage uses actual {} facts.

For T044/T045, follow
[producer-projection-evidence.md](contracts/producer-projection-evidence.md):
the Store owner captures and reviews the prospective projection cases/manifest,
normal Store tests reproduce them, then private Verify tests consume the static
package. Expected Facts come from the inner ALLOW record, with only the separate
parent universe removed. Neither bundle hash stripping nor codec output is an
independent oracle. Fixture maintenance is explicit; normal gates never refresh
expected files. Every supported pairing binds actual acceptance/projection
evidence even when common construction invariants justify reuse.

## 3. Test the scoped schema correction and trust distinction

Once real v2 producer output is available, write/observe schema REDs against the
unchanged wrappers before changing their definitions/refs. Use the existing
pinned Python Draft202012Validator/registry pattern from Store trusted governance
tests. Validate both current wrappers with actual mixed observations, candidates,
bundles and genuine supported archives. Collect schema cases in the new target
so they run in the normal repository gates; no optional private validator bypass.
The dedicated target separates schema ownership from Store law/compatibility work:

```bash
nix develop -c cargo test -p behavior-store --test strict_bundle_schema -- --list
nix develop -c cargo test -p behavior-store --test strict_bundle_schema -- --nocapture
```

Expected post-correction: correctly named observed products and required hash shape
are accepted; unknown/missing/wrong-typed content rejects. A well-shaped wrong
digest can satisfy JSON Schema but must fail runtime equality. Raw duplicate keys
are tested at the raw runtime boundary, not an already-reduced schema value.

Preserve all legacy/ordinary/witness/read/decision schemas and document identities.
Current wrapper schema bytes/digests are explicitly changed assets, according to
[compatibility-assessment.md](compatibility-assessment.md).

Generate a valid candidate, fabricate membership, recompute its correct result
hash and candidate identity, and obtain fresh exact authorization for the governed
variant. Local integrity can succeed; historical commit must still refuse with
no Backend publication or changed head/history/entities/refs/commands.

Required governance control: use the existing required evidence policy, policy-none
execution policy, context-unbound fixture and authorizer seed. Sign the actual orders
candidate and call commit_with_context; assert authenticated trust. Do not confuse
policy-none with absence of required authorization.
Use a test-owned authorized runner over the same steps; the faithful parent
orders_history runner supplies no evidence/context and remains unchanged.

## 4. Preserve the surrounding supported domain

Run owning existing regression targets alongside the new ones:

```bash
nix develop -c cargo test -p behavior-core --test queries --test facts --test read_replay_integrity --test read_goldens --test strict_profile_replay --test replay_evidence_authority
nix develop -c cargo test -p behavior-store --test queries --test query_replay --test read_store --test read_store_past --test read_store_replay --test history_integrity --test trusted_governance --test migration_context --test conformance --test strict_profile_replay --test replay_evidence_authority
nix develop -c cargo test -p behavior-verify --test trusted_governance --test trusted_verification --test queries --test reads --test hashing
```

Compare complete records/evidence/identities/resulting history and content within
each supported profile under indexed/unindexed/reversed enumeration. Observe
adapter activation. All nine 018 read support rows retain their historical profile;
read observations do not gain bundle hashes. Unsupported upgrade and migration
query cases remain refused. Existing idempotent recovery, replay_data/behavior
replay and committed command streaming retain their independent checks.

## 5. Validate the supported facade and CLI

Collect the proposed external consumer target and run it using the same checkout's
fresh CLI, rather than a stale BEHAVIOR_BIN or redirected artifact from another
revision:

```bash
unset CARGO_TARGET_DIR BEHAVIOR_BIN
nix develop -c cargo build -p behavior-cli
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test strict_bundle_evidence -- --list
nix develop -c cargo test --manifest-path consumer/Cargo.toml --test strict_bundle_evidence -- --nocapture
```

Consumer tests import only behavior-engine. They cover generated query candidates,
required authorization, refusal without publication and raw CLI governance
authorization using its existing commands. No new facade export or Store CLI is
needed. Ordinary/read/migration controls remain version-specific.

## 6. Re-audit, freeze and run required gates

Complete the targeted P023 review and source/consumer compatibility assessment.
Keep the ordinary/witness schema follow-up open. Finalize and commit/push source,
fixtures, reports and task bookkeeping, then freeze the delivery revision.
After confirming a clean frozen checkout:

```bash
unset CARGO_TARGET_DIR BEHAVIOR_BIN
bundle_delivery_sha=$(git rev-parse HEAD)
nix develop -c scripts/gates.sh
nix develop -c scripts/check-consumer.sh --rev "$bundle_delivery_sha"
```

Record repository/exact SHA/tree, commands/statuses, toolchain/environment, consumer
resolved Git dependency, CLI digest, fixtures and logs in an external/CI receipt.
The consumer script uses current checkout CLI/fixtures/consumer source even with
--rev, so invocation must be from that same unchanged frozen checkout. If resource
constraints require another target, bind the independently built same-revision CLI
path/digest explicitly and document resource flags; do not weaken official scripts.

Any later tracked change or different merge/release SHA creates a new candidate
requiring applicable revalidation. Planning performs no release or ecosystem pin
update. Passing these scoped checks establishes this remediation's covered boundary,
not all Core soundness or full v2 Store conformance.
