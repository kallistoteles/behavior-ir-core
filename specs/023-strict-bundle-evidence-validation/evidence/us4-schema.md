# US4 — Scoped wrapper correspondence

T047–T050 are complete for the working-source schema checkpoint. Six compiled,
collected tests in `crates/behavior-store/tests/strict_bundle_schema.rs` passed with
zero ignored cases. The test file is byte-identical to the retained pre-edit RED
source; see [schema-red.md](schema-red.md). The actual mixed producer first passed
runtime bundle/candidate validation and commitment, then the unchanged schemas
rejected it. A separate query-only control demonstrated missing-hash acceptance.
Both asserting failures became GREEN after the scoped asset correction.

External receipt:
`/home/kalle/validation-receipts/core023/us4-schema-green/receipt.json`.
It binds repository/known revision, exact test digest, RED custody, collection,
command/status/log, toolchain and old/new asset digests. This is working-source
evidence, not final frozen-revision gates or a published release.

## What changed

Each current wrapper now contains nine closed observed-evidence products:
`bundle_evidence`, `bundle_existence`, `bundle_identity`, `bundle_reference`,
`bundle_edge`, `bundle_query`, `bundle_capture`, `bundle_member` and `bundle_field`.
Root arrays are optional; the only accepted names are existence, identities,
references, queries and fields. Every listed item field is required, including
nullable canonical capture/field values. Unknown fields, missing fields, wrong
types, null sections, universe and absent/malformed query hashes are refused.

The query digest has the existing exact `^sha256:[0-9a-f]{64}$` syntax. Its fixed
71-character bounds additionally reject the trailing-newline behavior of `$` in
some regex engines; they add no restriction beyond that exact digest syntax.
Other strings have no new length restrictions. Semantic ordering/uniqueness,
raw-key ambiguity, lexical-number restrictions and hash equality remain runtime
obligations. A well-shaped wrong digest is schema-valid but the checked candidate
consumer rejects it with `INVALID_CANDIDATE` at its result_hash path.

Only two existing refs changed per wrapper: action candidate observations and
the non-null action commit-bundle observation branch. All other original parsed
values and literal definition bytes are unchanged. Omitted/null action bundles,
empty candidate observations/arrays, original migration `{}`, ordinary/witness
refs and legacy/read/decision definitions remain intact.

## Executed evidence

Both `governance-v2` and `store-v2` candidate/commit-bundle definitions accept:

- Actual Wire 0.7 mixed output, covering all five observed sections, empty and
  nonempty query results and a captured customer identity.
- Original H02 pre017 command bundle, decision 0.7/profile 0.8.
- H03's original pre-attachment bundle and separately its immutable signed event
  bundle with recorded evidence/context. Their envelope stages remain distinct.

Negative checks cover root and each nested product's closed/required/type rules,
query digest syntax/missing hash, allowed null versus missing values, empty/null
placement, universe and fractional field values. The incoming-edge shape test is
an explicitly local structural supplement: this producer's actual removal
observation has no incoming edges. These local controls do not establish historical
truth or live authority. Existing runtime checks remain mandatory.

The pinned Python Draft202012Validator and original decision-record registry are
used through the existing repository pattern. The command was:

```bash
nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_schema -- --nocapture --test-threads=1
```

## Asset identity and assessment

| Asset | Original SHA-256 | Corrected SHA-256 |
| --- | --- | --- |
| governance-v2.schema.json | `1508d88cd98df03f34ee4f5f0b231975b003535c6ecb0f06e0f212d6c45f11d7` | `f10c478a2173801781f45f332b97fbf4283490c4eb89deb8fe3773868cd015fd` |
| store-v2.schema.json | `10d9ce5c9c25076fd9b8bb46a93cdd1a2bf6d1d74fc69efbd32121022a41f7a1` | `3be602ba979577e0ffbf16e892bcdbb9c10ee9c4501492f066556bcd6ea354d1` |

These are release-asset byte identities, not changes to semantic SchemaHash,
BehaviorHash, stored records, hash algorithms or historical profile meanings.
The conservative minor-class assessment remains applicable; no numerical release,
tag or ecosystem pin is selected. F023-EXTERNAL-FACTS-SCHEMA-001 remains open:
the ordinary/witness alias mismatch was deliberately left outside this correction.
Passing this scope does not establish complete v2 Store/schema conformance.
