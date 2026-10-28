# Diagnostic counter scope and calibration

These counters compile only under the existing `validation-work` feature. None enters a canonical Core record or establishes semantic authority. Production timings use separately compiled binaries without them.

| Counter | Site / unit | Coverage and overlap |
|---|---|---|
| document_hash_calls | Store documents::hash_of, attempted calls | Not all Core/crypto hashing. |
| hash_document_json_bytes | Same call, UTF-8 JSON representation bytes | Repeated documents are counted repeatedly; excludes domain-tag encoding and other hash sites. |
| document_decode_calls / document_decode_json_bytes | Store documents::decode, attempted calls / serialized JSON bytes | Named typed-document decode/clone site only; not every JSON parse or allocation. Diagnostic serialization is extra work, not production timing. |
| record_parse_calls / record_parse_bytes | Core DecisionRecord::from_json, attempts / input UTF-8 bytes | Includes malformed-input attempts; excludes direct Json validation and other parsers. |
| Existing row/predicate/copy/backend counters | Existing named sites | Named coverage only, not all traversal/copies/allocations. |

The known-work control hashes one 7-byte JSON document, decodes it once, and attempts one 8-byte malformed decision parse. It first failed on the missing new hash-call count, then must pass exact unit/value assertions. An offset sample is rejected.

The research probe reports separate cycle/read/page scopes, each reset before its operation. Process HWM is sampled after retained normative observations and audit serialization: it includes harness data. Runtime-only peak and total allocator/copy/parse/hash traffic are unmeasured and are never fabricated as zero. Extra replay/open phases retain elapsed times and process memory but do not currently have comprehensive per-site counters.

`child_rows` increments while visiting existing parent rows in `eval/prepared.rs`'s canonical merge/template path and `eval.rs::complete_child`; newly created rows use separate branches. It is **not** a count of independently rerun semantic predicates. In the supported warm count case, reused trace/field templates still visit rows and clone observations. Those clones are outside the older `copied_rows` counter, so its zero does not mean allocation/copy-free execution. The ordinary N=8192 diagnostic cycle has 53 predicate evaluations and 139,328 named child-row visits; the forced-full reference has 557,380 predicates with the same child-row count.
