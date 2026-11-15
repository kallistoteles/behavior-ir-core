# Validation guide for investigation 035

These are commands and expected outcomes **after task generation and implementation**. The planning phase has not created the Rust workers, source patches, profile, proofs or 035 evidence. This guide is not a passed experiment.

## Prerequisites

Work in the Core checkout containing this feature. `.specify/feature.json` must select `specs/035-verified-work-reuse`; the actual Git branch may still be `research/034-ab-measurement-002`.

```sh
bash .specify/scripts/bash/check-prerequisites.sh --json --paths-only
```

Use the recorded installed Rust 1.98.1/Python 3.13/Safety-compatible Lean 4.30.0 Nix environment and exact Core/Safety revisions in [plan.md](plan.md). The existing `experiments/transition-study033/shell.nix` is a read-only tool-environment source; implementation creates 035's owned environment/tool identities. Never resolve the named Nix launcher to an incompatible multicall invocation. Verify actual derivations and dependency metadata, not only version strings.

At least 16 GiB disk must be available. Preserve all old sources/archives and unrelated files. Use only the new private target/source/cache roots. Finish test-first implementation and review the fixed profile, expected facts, root types and all C01–C20 controls before freeze. All code changes require observed intended red→green receipts, separate from final measurements.

## Development checks before final freeze

First review the exact source inventory and patches, then prepare the private export:

```sh
python3 experiments/reuse-study035/study.py prepare-sources \
  --out experiments/reuse-study035/private/core
```

The export must have its own nonempty Git index and every canonical gate input. Frozen manifests/locks and relative dependency paths are preserved; final bootstrap verifies that immutable export or an unchanged-layout copy.

The implemented wrapper must then run these actual scoped commands under pinned tools and bounded supervision, with `CARGO_HOME`/`CARGO_TARGET_DIR` pointing only to the new private roots:

```sh
cargo test --offline --locked --manifest-path experiments/reuse-study035/Cargo.toml
cargo fmt --manifest-path experiments/reuse-study035/Cargo.toml --all --check
cargo clippy --offline --locked --manifest-path experiments/reuse-study035/Cargo.toml --all-targets -- -D warnings
python3 -m unittest discover -s experiments/reuse-study035/tests -p 'test_*.py'
```

The reference strategy must match an independently built unpatched oracle. Confirm one resolved patched engine identity for worker/Safety and separate unpatched oracle metadata. Original module locations/bytes/policies stay identical to the frozen 034 subject. Test that equal worker bytes, wrong real entry points and stale checked grounds fail for the intended reasons. Keep detailed work mode separate from timing mode.

## Start the one final campaign

```sh
python3 experiments/reuse-study035/study.py freeze \
  --profile experiments/reuse-study035/profiles/diagnostic.json \
  --out specs/035-verified-work-reuse/evidence/campaign-001

python3 experiments/reuse-study035/study.py run-case \
  --manifest specs/035-verified-work-reuse/evidence/campaign-001/input-manifest.json \
  --case bootstrap
```

Expected: one frozen clock, exact snapshots/input manifest, actual bounded source/build/oracle receipts, four retained distinct workers, unpatched oracle comparison and a prepared manifest published only after successful preparation. Bootstrap may use its built-worker receipt before prepared exists. A tool failure, source mismatch or exhausted preparation budget is retained; it does not pass readiness or authorize an alternative subject.

## Prove and test before measurement

Run the following fixed cases with the same manifest, in order: `proofs`, `conformance`, `treatments`, `quality`. For example:

```sh
python3 experiments/reuse-study035/study.py run-case \
  --manifest specs/035-verified-work-reuse/evidence/campaign-001/input-manifest.json \
  --case proofs
```

Expected proof result: all twelve [declared roots](contracts/correctness.md) with correct expected types, allowed transitive axioms and real fresh kernel replay. The register separately names remaining native correspondence premises. A genuine mathematical failure is different from timeout or missing tools; none is a passed proof.

Expected conformance/treatment result: complete original observations/identities and Safety outcomes agree; actual G/V mechanisms are distinguished; stale/malformed/corrupt authority fails; refusals/failed or uncertain commits promote no speculative child. LD8C and overflow/error/global/lifecycle cases remain exact reference fallback. Run unchanged-content drain and a fallback/re-establishment continuation; maintenance cost stays visible.

The quality case must run the actual `scripts/gates.sh` from the exported candidate workspace, with all required source/consumer fixtures present and private outputs. Set `BEHAVIOR_BIN` to its actual private target CLI; the gate must see the export’s own indexed source inventory. It also runs scoped worker tests/format/Clippy and source/semantic determinism checks. A failed or resource-stopped full gate is retained as blocked integration, not replaced by scoped success. Growth after a full-gate resource stop is permitted only under the explicit campaign policy: scoped correctness passed, the stop is established as resource-only, and unchanged remaining limits still permit growth. Every unclassified or semantic failure blocks growth. No production merge/release is part of this guide.

## Compare the five cells

Run `growth-D1`, `growth-D2`, `growth-D3`, `growth-D4`, `growth-D5`, in that order, using the same `run-case` interface and manifest.

Expected: 60 raw timing observations and 20 separate work observations if gates/resources permit. Each sample genuinely acquires the expected parent; the three timing repetitions cannot reuse an earlier accepted result. Initial program/history/view establishment is visible separately from ordinary extension, and the complete ordinary endpoint still includes all mandatory original record/hash/output and view maintenance.

Read [campaign.md](contracts/campaign.md) for exact scopes, thresholds and resource limits. A local semantic result meeting ≤50 ms is not a claim that a full old-format commit meets 50 ms or that Q6 is established. An O(N) required original output can remain after O(affected dependencies) semantic work. If time/space or a gate stops the campaign, preserve the exact partial matrix and blocked slots. Do not retry, replace observations or reset clocks.

## Close and independently assess

```sh
python3 experiments/reuse-study035/study.py collect \
  --manifest specs/035-verified-work-reuse/evidence/campaign-001/input-manifest.json \
  --out specs/035-verified-work-reuse/evidence/campaign-001/assessment

python3 experiments/reuse-study035/validate.py \
  --manifest specs/035-verified-work-reuse/evidence/campaign-001/input-manifest.json \
  --assessment specs/035-verified-work-reuse/evidence/campaign-001/assessment \
  --out specs/035-verified-work-reuse/evidence/validation-001
```

Expected: every owned writer/group closed before hashing; exact immutable archive refs; independent raw-to-summary and subject/source/worker checks; bounded deterministic replay and applicable proof/native rechecks; every FR/SC and control explicitly assessed. The validator cannot rewrite the sealed campaign and cannot accept producer-supplied executable/proof code as its verifier.

The final report must distinguish: retained-ground correctness/benefit; incremental-view correctness/locality/benefit; their interaction/confounding; full observation/identity floor; complete endpoint benefit/regression; proof-to-native gaps; quality/resource stops. A documented negative investigation is valid, while missing positive criteria remain visibly unmet. No production trust/finality/evidence contract is activated.
