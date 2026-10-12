# US4 — Supported producer and consumer consistency

T043–T055 are complete for the working-source checkpoint. The
[coverage inventory](coverage.md) binds every FR/SC, C023/P023, S01–S09 and
PC01–PC20 to actual source, collected tests and retained logs. The conclusion is
within the documented compatibility domain, not an artificial Cartesian product.

| Boundary | Actual evidence |
| --- | --- |
| Fresh actions | [Producer laws](us4-producers.md): 246 actual cases across admitted Wire versions, three routes and applicable policies; 66 v1 cases explicitly compare original-record observations with their semantic bundle view. |
| Independent v2 projection | [Projection checks](us4-projection.md): all39 reviewed producer captures compare exactly with the independent inner-record oracle; six private tests cover ownership/custody as well. |
| Generated laws | [Producer laws](us4-producers.md): 144 bounded productions compare same-profile observations/state across seed permutations without conflating distinct Store lineages. |
| Historical domains | [Compatibility](us3.md): original v1 decoder/commit phase/category/cause, H01 structural versus genuine H02/H03 archives, K codec controls, all9 supported read rows and original migration dispatch. |
| Migration | [Actual migration checks](us4-producers.md): S07/S08/S09 prepare/commit/hash/archive/data and behavior replay with exactly empty observations, action facts refused. |
| Public wrappers | [Schema correspondence](us4-schema.md): six tests, genuine asserting RED before two scoped wrapper corrections; other definitions/refs protected. |
| Public facade and CLI | [Consumer evidence](us4-consumer.md):14 collected tests pass using fresh source-bound CLI, all39 packaged claims, exact signing, negative output/publication controls and unchanged read/migration routes. |
| Transitive history/commands | Store9 route/lineage archive/reopen/recovery cases and3 current query+command routes; consumer signed recovery/replay/idempotent stream checks. Exact history survives recovery after later commits. |

## T054 integration checkpoint

The coordinator independently collected and executed the complete private Store
query conformance target and current Store evidence target. External receipt:
`/home/kalle/validation-receipts/core023/t054/receipt.json`.

All four commands exited 0. Private conformance has11 tests, all passed. Store
has18 mandatory tests, all passed, and the explicit maintenance fixture writer
ignored by its normal runner. That writer was deliberately executed previously;
no required acceptance test is skipped. Full implementation/test/schema/fixture
digests, commands, logs and source-before/after agreement are retained. Markdown
report authoring is explicitly excluded from this working-code stability check.
Final candidate attestation will bind the entire committed tree.

The two collected same-profile tests are
`same_profile_v1_index_scan_and_reversed_enumeration_are_equivalent` and
`same_profile_v2_index_scan_and_reversed_enumeration_are_equivalent`.
They compare complete records, observations, candidate/bundle identities,
history, content and reference relations, and assert index/scan/reversed adapter
activation. Supplied-order rejection is independently tested at the strict raw
boundary. V1/v2 identities are never incorrectly required to coincide.

## Evidence chain and limits

Producer observations come from actual inner ALLOW records. Current v2 consumers
reuse the same validated owned candidate/package where applicable; their distinct
raw decoding, signing, archive, recovery, replay, schema and facade routes are
also executed. V1 retains its original historical comparison; its added projection
comparison is test-only and imposes no new decoding phase. PC07 remains structural.

Bounded tests support the source invariants; they do not prove all possible
programs/backends. Local digest acceptance establishes neither historical truth
nor authority. Physical crash/durability and cryptographic assumptions remain.
Independent targeted review, canonical gates and exact pushed Git consumer
validation still precede final scoped delivery closure. The separate ordinary/
witness schema finding and unrelated016 findings remain open.
