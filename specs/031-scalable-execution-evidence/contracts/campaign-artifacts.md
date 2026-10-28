# Contract: Research Campaign and Artifacts

This is a reviewer/collector interface, not a new public Core API or release format. Reuse 029 mechanisms, with fresh 031 data and strict input/coverage checks.

## Frozen factor design

Use a small one-factor matrix. Hold unspecified factors constant and record both requested controls and actual resulting quantities.

| Series | Levels | Fixed conditions / purpose |
|---|---|---|
| Live population N | 128, 512, 2,048, 8,192 | Eight real creations, one affected unfiltered-count rule, D=1 per event; final drain included |
| Prepared history H | 8, 32, 128 | Fixed N=128 and same final state content where feasible; prepare history before the same eight-transition measured window |
| Changed identities D | 1, 2, 8 | Fixed N=512/H=8; simultaneous creations and separately relevant updates; report actual distinct identities |
| Rule/query complexity Q | Rule counts 1, 4, 16 | Fixed N=128/H=8/D=1; separately describe predicate lengths 1, 2, 4 for filtered-query analysis; do not conflate repeated rules and expression shape |
| Evidence payload control | 16, 256, 4,096 bytes per unused string | Fixed N=128/H=8/D=1/Q=1; no query reads the payload; measure actual emitted B, never assume requested padding equals B |

Use no-global, constant-true, supported-count and unsupported/mixed-root controls. Prepare a separate max-cardinality boundary permitting entity 1,000 and refusing 1,001. Include empty/zero-match and error outcomes in the semantic corpus, not necessarily the large timing matrix.

For history retrieval, fix N=128 and H=8/32/128; return one whole-event page. Exercise 1/8/32 command occurrences separately, preserving duplicates and their identities. Retain an inherently output-sized control. Measure small reads and data/behavior/reference replay separately from the ordinary transition cycle.

One neutral combined workload uses existing typed parent/work-item entities, authored lifecycle actions, references, a meaningful global bound and durable command intents. State its predicates and independent oracle; do not import private application code, new Models or unsupported query semantics. Include completed-but-still-referenced items, changing filter membership and a persisted-but-unacknowledged commit. Its purpose is integration diagnosis, not a production application evaluation.

## Freeze and collection

1. Freeze exact current reference source and harness differences, tools/locks/binaries, all cases, semantic expectations and full-reference artifacts.
2. Declare measurements, order, counter sites/units, cache/load conditions, resource limits, primary points and three timing repetitions. Only then evaluate candidates.
3. Build production-like and diagnostic binaries separately; require complete normative parity. Collect a diagnostic observation per primary point, with more only when needed. Diagnostic times never substantiate speedup.
4. Use fresh processes and Stores for declared cold cases. An installed pinned toolchain and OS file cache are permitted and recorded. No prior accepted validation/certification result may substitute for a required correctness check.
5. Time eight transitions plus final evaluation contiguously; separately retain setup, prepared history, cold reopen/first evaluation, recovery, replay/page and process wall. Report per-run totals, not summed phase medians. Memory retained by the harness is disclosed.
6. Preserve each attempt and failure. A protocol amendment creates a new immutable profile with reason and renewed affected reference comparisons. No replacing a slow repetition, dropping a failed point or silently weakening a criterion.

Initial operational limits: 120 seconds per case subprocess, 8 GiB memory, one declared measurement CPU where available, and 2 GiB free on build/evidence filesystems before starting. Record the actual enforcement mechanism and effective OS limits; missing enforcement cannot be claimed enforced. Builds and auxiliary work must not share the measurement CPU. Unexpected contention or differing environments remain retained as validity findings. Whole-series repetition after correction is explicit. Resource limits are not semantic or product performance requirements.

## Required outputs and validation

Retain immutable `manifest.json`, separately append-only manifest-bound `status.jsonl`, per-attempt `rows.jsonl`, reference canonical artifacts, stdout/stderr, source/patch identities and `assessment.json`; summarize in the final investigation. Compression/deduplication may reduce storage without changing recovered canonical bytes.

The collector/validator must reject missing/duplicate repetitions, wrong identities/modes/profiles, malformed or nonfinite metrics, missing drain, missing/unreadable/corrupt reference artifacts, unacknowledged subprocess failures and incomplete required coverage. Detect JSON scalar type changes before value equality. A previous passing assessment must not survive a failed rerun as the current result.

Separate campaign completion, collection status, Core execution outcome, equivalence and candidate disposition as in [data-model.md](../data-model.md). A semantic refusal with the expected unchanged head is a successful correctness observation. A timeout is an incomplete measurement, never a semantic violation or an accepted match.

Historical 029 evidence remains read-only. Its collector/evaluator can inform the implementation but does not certify 031 coverage. Store artifacts under unique ignored run directories; publish only neutral, reproducible selected evidence with an explicit file inventory. No new runtime dependency is permitted.

Research protocol amendment (2026-10-28): the initial 120-second full-reference preparation at N=8192 timed out before returning a complete multi-phase result. Preserve campaign-001 as incomplete and repeat the complete reference group with a 300-second per-process limit before any candidate. The 8-GiB address-space cap and semantic/coverage requirements remain; no product latency SLA exists or is relaxed. Final timings must disclose the changed operational limit.
