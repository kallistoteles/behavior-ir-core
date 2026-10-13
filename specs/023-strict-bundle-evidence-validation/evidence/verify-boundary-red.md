# Verify candidate boundary: compiled pre-correction RED

T011 used only the existing public `GovernanceCandidate::from_json` boundary.
The new integration target is a crafted local document suite, not an archive or
claim that a historical producer emitted these observations. Existing independent
`support/trusted.rs` helpers make the ALLOW record and reseal the outer candidate
identity after each local observation change; the enclosing hash is therefore not
the failure under test.

## Source and custody

- Owning repository: `/home/kalle/repos/behavior-ir-core-023`.
- Test-only reviewed base revision: `f4641b933a3f5bd65a308623a99895d7ee1a75fb`.
- Test source SHA-256: `5681a32dbeb56c3aa014850906fbee1a0b1c66a9b5ef4224cf545e309a14cffb`.
- Full command arrays, source/helper digests, collection, logs and exit statuses:
  `/home/kalle/validation-receipts/core023/verify-boundary-red/`.
- The shared oracle helper has exact HEAD bytes; no production correction was
  authored before the authoritative collection and asserting run completed.
- A preceding formatter-only attempt is retained under `formatter-only-trial/`.
  It changed one helper import order and was restored before the authoritative
  rerun. This is not hidden as the authoritative source binding.

Both commands used the pinned Nix development environment with
`CARGO_BUILD_JOBS=2`, `CARGO_PROFILE_DEV_DEBUG=0`, and
`CARGO_PROFILE_TEST_DEBUG=0`.

```text
cargo test -p behavior-verify --test strict_bundle_evidence -- --list
cargo test -p behavior-verify --test strict_bundle_evidence -- --nocapture
```

## Actual result

Collection exited 0 and collected all **16 individually named tests**. The
asserting run exited **101**, with **2 passed, 14 failed, 0 ignored**. All failures
were compiled assertions; no missing target, build failure or timeout substituted
for RED evidence.

| Domain | Observed pre-correction outcome |
| --- | --- |
| Empty root and explicit empty sections | Existing characterization controls passed |
| Correct single empty/nonempty query, multiple instances, all five sections, null values and original claim identity | Six acceptance tests failed with `INVALID_CANDIDATE: invalid observed facts` |
| Missing required query result hash | Unexpectedly accepted; refusal assertion failed |
| Unsorted existence observations | Unexpectedly accepted; refusal assertion failed |
| Unknown root/query fields, wrong result hash, wrong boolean, missing capture value, unsorted query members | Six diagnostic assertions failed because the old generic message omitted the deterministic local path |

The codec implementation may begin only after this retained RED. Future GREEN
and expanded negative runs belong to later evidence; this report does not claim
that the correction or historical/authorization obligations have passed.
