# Test-only shared governance fixtures

The two seed files are public, nonsecret fixture keys reused from the original
governance fixtures. Never configure a deployment to trust these keys. Public
keys were checked using the repository's existing Ed25519 implementation; key
discovery never uses the environment or a working-directory search.

`policy.json` requires fresh verified evidence under the exact profile, verifier
0.7.0 and Z3 4.16.0. The authorizer and verifier have distinct keys and explicit
October 2026 half-open trust intervals. The closed context product contains Bool,
i64 Int and String fields with typed expected values. `context.json` binds an
explicit commit time; no clock lookup supplies policy time.

The none, deny-all and unbound fixtures exercise the distinct policy cases.
Fixture creation is setup data, not evidence that any v2 implementation exists.
New semantic tests must independently validate each fixture and its hash.
