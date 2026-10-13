# Exact producer regression RED

Test-only revision: `f4641b9` on the feature branch. Its runtime implementation
and schemas match the frozen entry baseline; the only conformance source change
registers the private test module. The checkout was clean during collection/run.

External custody: `/home/kalle/validation-receipts/core023/first-red/receipt.json`,
with exact full revision, source/test digests, commands, toolchain reference,
collection log and failing execution log/status.

Collection succeeded and lists
`conformance::query_bundle_evidence_tests::orders_history_v2_producer_evidence_completes_eight_commits`.
The exact test compiled, ran and failed with status **101**, at the assertion:

```text
Core must consume its v2 query evidence; head=0,
failure=Some("BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts")
```

This uses the unchanged parent `orders`, `orders_seed`, and `orders_history`
helpers and normal v2 `require:none` host. No commit occurred. The failure is
the intended producer/consumer mismatch, rather than compilation, setup or
authorization failure. Correction has not yet occurred. The four other
collected controls are retained for subsequent positive/checkpoint execution.
