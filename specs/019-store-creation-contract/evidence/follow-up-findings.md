# Follow-up finding outside initial Store creation

## F019-EXTERNAL-QUERY-001 — Trusted query-candidate facts reject result_hash

Classification: S5 implementation correctness defect. Severity: Medium.
This blocks legal v2 query-producing ordinary commits; the observed result is a
refusal, not unsafe ALLOW or proof of a newly introduced creation defect.

`crates/behavior-store/src/store.rs::facts_json` adds the existing required
`result_hash` to bundle query facts. `crates/behavior-verify/src/governance/trusted.rs`
(CandidateBody validation) parses those facts via `Facts::from_json`, whose closed
query item keys in `crates/behavior-core/src/facts.rs::parse_queries` exclude
`result_hash`. The candidate is therefore refused as INVALID_CANDIDATE before
publication. These two parser/governance source files are byte-for-byte unchanged
from the integrated022 base9d3fcfeb;019 does not alter this rule.

Neutral reproduction uses the existing orders_history on a normal reference host:
v1 indexed/unindexed succeeds with9evaluation records and head8; v2 indexed/
unindexed both refuse at head0 with BUNDLE_INVALID: INVALID_CANDIDATE: invalid
observed facts. No order/index mutant is needed. Exact diagnostic source, digest,
command/status/log are retained at
`/home/kalle/validation-receipts/core019-work/us3-conformance/` in
`query-diagnostic-source.rs`, `query-diagnostic-source.sha256`,
`query-profile-diagnostic.log` and its status file. The temporary print-only test
is not shipped as a fake passing regression.

Recommend a separate remediation with a failing legal v2 query-bundle test and
typed profile-aware candidate-facts validation that preserves/checks the required
result hash. Do not broadly relax Facts input keys, discard semantic evidence or
rewrite historical hashes/records. Determine compatibility implications before
changing the shared trust boundary. This finding remains open;020/021 and the
whole016 audit are not implicitly closed.

C12 retains full creation/open/recovery ordering checks and compares supported
nonempty declared query reads under both profiles. It neither excludes a supported
creation profile nor claims that the ordinary query-commit defect is corrected.
