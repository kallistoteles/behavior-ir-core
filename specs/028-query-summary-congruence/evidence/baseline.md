# Frozen pre-change evidence: Core #35

These are investigation observations captured before feature 028 implementation.
They establish a reproduction and diagnostic hypotheses, not acceptance of a fix.
Do not regenerate these historical observations with a corrected verifier.

## Pinned inputs

| Input | Identity |
| --- | --- |
| Core 0.13.0 released source | `15094972191aa0ae79705df0397c551a18745399` |
| Core 0.14.0 released source | `855f4db4d6da3327c80117191d5719e6bc6b6397` |
| Specification main baseline | `c8c79b48c11403c5e0a6fd5ab81145e0aca06183` (same tree as 0.14.0) |
| Ecosystem source | `44d6e5d4382e30504dd391ad6d53b1d68618d649` |
| Original module BehaviorHash | `sha256:a04ba37ab89e051e448abb760bd754bbb0955125fd22ba8da927b8529a531779` |
| Original module file SHA-256 | `d0d8416e491d1c6036e8717e47a2c69eb5572c2e6cae70e78e3c05d75d0fa0f1` |
| Full baseline attestation identity | `sha256:69e085f39a9dd942d2f4dc00312e10b43fd1adb3565db2c3c7b64d36f2553b8d` |
| Verification context | verifier 0.9.0; Z3 4.16.0; default six-kind profile; resource limit 20,000,000; operational guard 60,000 ms |

The public release binaries matched their release manifests. Their digests and
case outcomes are preserved in [baseline.json](baseline.json). Both releases
produced the same original report identity and two blocking inconclusive findings.

## Included portable artifacts

- [original-approval.json](original-approval.json): exact unmodified exported C19 IR.
- [original-verification.json](original-verification.json): frozen full 0.13.0 report,
  also reproduced identically in identity on 0.14.0; it remains `not_verified`.
- [minimal.json](minimal.json): independent two-entity Core example, without Models.
- [minimal-count-guard-control.json](minimal-count-guard-control.json): diagnostic
  minimal copy with an explicit filtered-count guard; postcondition proven.
- [minimal-missing-guard-control.json](minimal-missing-guard-control.json): negative
  minimal copy; the postcondition violation is confirmed as a runtime denial.
- [postcondition-profile.json](postcondition-profile.json): focused profile; the
  original C19 acceptance also requires the full profile, not only this selection.

The minimal cases use strings for the two grouping values and do not depend on
Approval metadata. The original C19 uses subject/actor typed identities. Both
exhibit the same missing correlation between existing query forms.

## What the captured solver trace shows

For identical captures `s = subject.id`, `a = actor`, the original unrestricted
query admits these independent count applications:

```text
A(s,a) = count!ce171795a4eaefd1!pfe0810cc70c1f792(s,a) = 0
B(s,a) = count!253132b8484ebc37(s,a) = 1
```

A is used by `not any(select(D),p)` and B by
`count(where(select(D),p))`. The existing created-member contribution is exactly
one, so this abstract assignment contradicts the local postcondition while
satisfying the abstract guard.

The three concretizing witness queries for each affected obligation are UNSAT.
No concrete duplicate-decision parent snapshot is produced in this trace. Their
finite search bound must not be treated as an unrestricted proof.

## Diagnostic controls, not repairs

An external copy expressing freshness as `count(where(...)) == 0` makes both
original uniqueness checks proven and the full report verified on Core 0.14.0.
That copy has a different BehaviorHash; it is not an acceptable Approval repair.
Removing freshness instead retains two confirmed postcondition violations, which
runtime rejects as `DENY / POSTCONDITION_FAILED`.

Adding only `A(s,a) = B(s,a)` to the captured unrestricted SMT obligation changes
SAT to UNSAT, without a global uniqueness assumption or finite-universe proof
bound. This hand-added lemma is diagnostic evidence, not an implemented verifier
capability. The original C19 remains blocked.

The full local investigation, raw solver traces, binary-manifest checks and eight
proof obligations were preserved in
`/home/kalle/validation-receipts/core035-local-query-proof/INVESTIGATION.md` and
`receipt.json` on the investigation machine. That local path is provenance, not a
portable dependency: the frozen inputs needed to reproduce this issue are included
here, and the feature's normative obligations are in [spec.md](../spec.md).

## Reproduction using supported released tooling

With an explicit pinned Core CLI and the supported solver selected by its normal
configuration, run:

```text
behavior engine-info
behavior verify original-approval.json
behavior verify minimal.json --profile postcondition-profile.json
behavior verify minimal-count-guard-control.json --profile postcondition-profile.json
behavior verify minimal-missing-guard-control.json --profile postcondition-profile.json
```

Run from this evidence directory, use no cache for the baseline comparison, and
record the binary digest, module identity, actual versions, profile and report.
The original/minimal baselines exit 1 with inconclusive uniqueness; the count-guard
control exits 0; the missing-guard control exits 1 with a confirmed postcondition
failure. An exit code alone does not establish the expected result: inspect the
obligation classifications and original module/attestation identities.
