# Core 0.12.1 release scope

This release delivers Core 014 snapshot-validation reuse and Core 015 verified
incremental validation. Both are private Store implementation optimizations.
The original 014 checkout and its user work remain preserved; the release branch
contains the separately committed exact 014 baseline followed by the revised 015
implementation and patch-version metadata.

The full evaluator defines validity. Eligible updates and creations validate
complete changed/new rows against the simultaneous child and carry committed
validity only after successful atomic CAS. The whole-module guard proves the
complete transitive dependency closure of ordinary entity rules local. Freshness
uses historical `used_at`, and required consistency, integrity and concurrency
obligations remain mandatory. Removals, global/query/cross-entity/unknown
dependencies retain existing validation sites and refusal boundaries.

No Wire IR, admission, hash rule, document format, verifier version, supported
semantic API, backend contract, replay or governance change is introduced.

The [implementation evidence](evidence.md) and [verification JSON](verification.json)
are immutable phase records of the tested implementation before release metadata
and commits. Their uncommitted/source identities, historical task records and
benchmark binaries remain scoped to that phase. Release acceptance additionally
requires the unchanged canonical gate on the final release revision, green
required GitHub checks, a public-facade consumer against that exact pushed
revision, reproducible double artifact builds, an empty-environment CLI exercise,
the exact tracked conformance archive and post-publication artifact verification.
The annotated tag must be on main and must never be moved or reused.

The collected version assertion first failed on the previous engine version
([red log](evidence/release/version-red.txt)); updating the single workspace
version makes all four CLI metadata tests pass
([green log](evidence/release/version-green.txt)). Cargo lock changes are limited
to local engine package versions. Official dependency sources and the
external ecosystem pin are preserved.

Private TCUP measurements are workload evidence, not release compatibility.
The ecosystem's published Core pin and TCUP's SC-007 acceptance stay unchanged
until a separate supported dependency update and its canonical consumer gates.
The full-parent/full-child comparator is deliberately stricter than reconstructing
published 0.12.0's execution. The separately documented unsupported nonlocal
creation gap remains outside the optimized domain; this patch does not repair it.

Review evidence distinguishes written conditional equivalence arguments,
differential/property tests and actual red/green logs from machine-checked proofs
and missing historical per-red source digests. Adopted prototype code does not
gain retrospective test-first evidence through this release. The architecture
correction and historical workflow error remain explicit in the plan's Complexity
Tracking, rather than being hidden by delivery.
