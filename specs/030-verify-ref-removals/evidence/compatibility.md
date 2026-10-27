# Compatibility audit

Reproducer: `python specs/030-verify-ref-removals/evidence/audit-compatibility.py`.
`compatibility.json` compares 1,150 protected and historical files to starting
commit aff31dd and confirms exact equality. The specification pin 6b93898 and
its published merge aff31dd have identical trees (`git diff --quiet`), so this
comparison also preserves the pinned release content. This includes every previously tracked
fixture, Cargo.lock, the Rust pin, runtime evaluator, public facade and surface
manifest, and Store public authority. No admission/runtime or Store source is modified.

All four baseline runtime requests produce exactly equal canonical record values
using type-preserving canonical JSON comparison (not Python bool/int equality)
and replay successfully with the current CLI. The genuine captured 0.10 action/migration
history bytes and capture harness retain their original recorded SHA-256 values.
The 12 history tests additionally cover signed archival replay/recovery, fresh reuse
refusal and changed position/policy/context/subject. None upgrades existing Store policy.

Intentional current-only changes: verifier 0.11, actual complete-world Ref sites,
conservative full-module cache dependencies, explicit 0.10 archive decoder arms,
and 0.11 schema/fixture/policy additions. Current report/check/cache/authorization
identities may change. New semantic metadata is not renamed old evidence. Existing
BehaviorHash/SchemaHash domains, runtime decisions, records, command intents, persistence,
backend contracts and deterministic replay retain their meanings and bytes.

The evidence confirms compatibility for the declared supported scope, not soundness
of arbitrary old verifier proofs. Existing unsupported same-type/nonlocal scopes and
migration proof boundaries remain documented. Final normal gates are recorded separately
in `gates.txt`; no release or downstream pin change is performed here.
