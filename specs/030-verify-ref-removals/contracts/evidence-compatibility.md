# Contract: proof identity and historical compatibility

## Existing consumer interface

Keep the supported `behavior-engine` verification/Profile/solver and governance surface.
CLI remains `behavior verify MODULE --profile PROFILE --out OUTPUT`. Exit 0 means
verified, 1 not verified, 2 invalid. A report with zero applicable checks is not the
required reference-preservation evidence, even when its exit status is zero.

Use existing preservation check kinds and canonical site mechanisms. Additional
complete-world reference sites need distinct deterministic scope/addresses and a precise
meaning; they must not masquerade as the old final integrity claim or an invented
concrete binding. If an artifact schema extension is necessary, version it explicitly
through existing policy before acceptance; no unrelated transport redesign is authorized.

## Fresh 0.11 verification context

Select `VERIFIER_VERSION = 0.11.0` because proof coverage, dependencies and current site
inventories change. Existing engine versioning requires minor-release delivery. This
feature does not publish a release or change the ecosystem's Core pin.

Bind each result and cache entry to subject/module, schema, semantic profile, verifier,
solver/profile, actual action/effects and complete incoming reference schema. Prefer
conservative exact-module dependency over an incomplete clever dependency reduction.
Adding an otherwise unmentioned incoming type/field while leaving the action unchanged
must invalidate its prior proof key. Capture equality includes typed target identities.

Trusted manifest generation independently enumerates all required reference sites from
the admitted semantics. It must not accept a diagnostic report's declaration that its
own site list is complete. Missing, duplicate, altered, wrong-profile or wrong-subject
sites prevent fresh authority. Diagnostic cache poisoning cannot authorize trusted proof.

## Preserve 0.10 and older historical interpretation

Before changing the current version, capture genuine nonempty signed 0.10 action and
migration histories through the old implementation. Retain the complete policy/context,
manifest, envelopes, backend/history and expected original records. Relabeling a new
artifact as 0.10 is not historical evidence.

Explicitly preserve 0.10 decoding in `VerificationManifest::from_json` and
`VerificationEnvelopeV2::from_json`, where current-version predicates currently provide
its acceptance implicitly. Retain all other already-supported archive versions too.
Original manifests/authentication must preserve their declared semantics and bytes.
Fresh verification eligibility remains exact-current; successful historical replay does
not upgrade trust in an older model or authorize another operation.

Required cases:

- Historical signed action and migration segments retain data/behavior replay outcomes.
- Recovery of the exact original committed event remains read-only and idempotent.
- Historical proof cannot authorize a new action, migration or new history position.
- Mismatched policy, module, schema, profile or manifest remains rejected.
- New current-0.11 canonicalization expectations/policies are separately named; old
  `current-verifier-0.10` and released archives stay byte-for-byte unchanged.
- Existing Store policies are not automatically replaced by new fixtures or defaults.

## Runtime compatibility

BehaviorHash, SchemaHash, admitted execution, Store records, commands, changes, failure
order and replay have no new meaning. New verifier diagnostics/check/site/cache identities
may legitimately differ and must identify 0.11. No Lean, reference summary or verifier
artifact becomes necessary for deterministic runtime replay.

Before readiness, run existing canonicalization, lifecycle, migration, trusted-governance,
proof-version history and public consumer gates. Record exact version-sensitive changes
and their fresh-versus-archive interpretation. A readable old artifact alone is not a
claim that its verifier was sound.
