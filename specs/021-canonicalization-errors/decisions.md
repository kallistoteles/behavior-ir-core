# Decisions: Explicit Canonicalization Failure Contracts

**Created**: 2026-10-11

**Status**: Clarified on 2026-10-15. D-021-001 and D-021-002 are resolved as A; ready for planning. Implementation is not asserted complete.

## Established evidence and boundary

Core016 RC-005 / F-QUALITY-001 is **S6 / Low**. Canonical encoding is partial over arbitrary JSON; legacy public artifact values can contain unsupported floats, yet some serialization/hash failures become empty strings. This hides provenance and makes caller invariants difficult to inspect. The audit did not demonstrate a legal runtime invariant violation or forged current authenticated proof.

Two obligations are separate:

1. Raw mutable public artifact content needs an enforced input/error boundary.
2. A typed constructed value may justify a narrower infallible operation, if its actual construction and mutation opportunities exclude every relevant canonical error.

A function returning String is not itself evidence of the second obligation. Canonicalizable bytes are also not proof of semantic report validity, issuer authenticity or authorization. Existing checks remain mandatory.

## D-021-001 — public artifact boundary contract

**Question**: Which public input/result contract should prevent canonical errors from becoming successful empty artifacts?

| Option | Outcome | Implication |
| --- | --- | --- |
| A — Fallible raw artifact boundary | Preserve intended raw-value flexibility but require typed failure for affected public serialization/hash operations. | Callers must handle failure; return signatures and downstream consumer mappings may change. Typed internally constructed Profile paths are assessed separately, not made fallible mechanically. |
| B — Constrained artifact values | Require checked canonicalizable construction and controlled mutation, so an infallible operation is valid only within the enforced domain. | May change public field access, constructors and mutation workflows; validity must remain enforced after generation. Documentation alone is insufficient for unrestricted mutable JSON. |
| Custom | Specify a per-domain combination with explicit input/error guarantees. | Each retained infallible site needs evidence; each raw boundary needs observable rejection. No successful empty fallback is accepted. |

**Decision (2026-10-15)**: A. Preserve existing public construction and editing workflows. Canonicalization over arbitrary artifact JSON is partial, exposed through a total typed-result contract for unsupported inputs. Checked constructors may be optional conveniences; do not require controlled mutation throughout the public object model. The alternatives above record the choices considered; B is not the selected public contract.

**Consequences for planning**: Unsupported drafts may exist, but cannot acquire authoritative identity, be successfully signed/issued as attestations, be accepted as authorization or be successfully persisted where canonical artifacts are required. Map these affected boundaries and their current-value checks; retained hash/signature fields cannot bypass failed canonicalization. Canonicalizability, artifact validity and authenticated authority remain separate. Generic encoding need not implement full artifact validation. Profile's typed check-kind/u64 construction remains a contrast case, not evidence that every assembled finding is canonicalizable. Reuse enforcing boundaries/invariants when demonstrated, without introducing a new trust protocol or business-rule JSON semantics.

**Compatibility**: D-021-002 selects a direct versioned transition for affected public signatures. Concrete error-type names, signature details, CLI error mappings and the exact future minor-release number remain planning details.

## D-021-002 — public error compatibility and consumer delivery

**Question**: How should the selected boundary's observable error/API changes reach supported consumers?

| Option | Outcome | Implication |
| --- | --- | --- |
| A — Explicit versioned contract change | Replace affected serialization/hash signatures with the selected fallible contract in an explicitly versioned transition, preserving construction/editing and demonstrating supported consumer migration. | Clear completion boundary and no claim that changed return signatures are source-compatible. Public breaking changes require the existing 0.x minor-release policy. |
| B — Staged consumer migration | Add checked replacement entry points and specify a finite migration/removal or restriction policy for incompatible legacy entry points. | Broader compatibility work. Adding a safe alternative alone does not complete the feature while a supported reachable canonicalization-to-success fallback remains. |
| Custom | Specify another explicit transition and error classification policy. | Must account for every affected facade/CLI consumer and completion of the no-silent-fallback obligation. |

**Decision (2026-10-15)**: A. Change affected public signatures directly to return typed errors in a versioned release, following the project's existing 0.x minor-version policy. Document breaking changes and provide explicit before/after migration examples for affected supported consumers, covering successful output and typed-error handling. Do not retain an unsafe legacy serialization/hash route, stage a parallel unsafe supported API or allow silent fallback, coercion or partial canonical output. The alternatives above are retained as decision history; B is not selected.

**Preservation and regression obligations**: For every previously supported canonicalizable input under the same profile/baseline semantics, `C_new(x) = C_old(x)` and the checked API returns `Ok(C_old(x))`. Previously valid hash operations retain their bytes, tags, exclusions and hashes. Regression coverage must include valid success and unsupported values, supported consumer migration and refusal before partial canonical artifact emission. Canonicalization failure remains separate from ordinary not_verified/deny evidence and operational errors. Supported historical profiles, independent authentication rules and justified constrained-domain infallibility are preserved.

No exact public error type, CLI exit value or future release number is selected here; these are implementation-planning details. Both public contract decisions are resolved.

## Preliminary site-domain inventory for discussion

This is an evidence starting point for FR-002/003, not the required final closure inventory. Source references use the audited release tree; the draft base has the same source.

| Site | Actual input/observable role | Current handling and unresolved obligation |
| --- | --- | --- |
| verify lib.rs:169–179 | Attestation has public mutable raw `value`; returned consumers can edit it before serialization. | Canonical serializer error currently defaults to empty text. Raw nested float reachability is source-established; D-021-001 selects typed failure while preserving mutation. |
| verify lib.rs:293 | Ordinary attestation assembly combines module/profile/check results/findings into a document; excludes cached flags from identity. | Hash error defaults to empty hash. Trace all findings and diagnostic-cache/input provenance; successful ordinary generation alone does not establish the full input invariant. |
| verify migration.rs:881 | Migration attestation assembly combines typed migration/source/target/profile and generated checks/findings. | Hash error defaults to empty hash. Establish this actual domain and preserve its subject/profile-specific bytes; do not infer arbitrary JSON safety from a typed migration alone. |
| verify governance.rs:408–416 | Legacy Authorization exposes mutable raw value to returned consumers; initial authorization construction already propagates hash errors. | Later canonical serialization still defaults failure to empty text. Preserve explicit construction errors and mutation; expose later encoding failures through typed results. |
| verify lib.rs:114–131 | Profile constructs a document from normalized CheckKind values and u64 budgets, then obtains its computed hash. | Adjacent hash/extraction defaults have a narrower no-float construction premise. Document the actual invariant and full failure domain rather than equating this value with arbitrary mutable JSON. |
| Supported facade returns and CLI artifact emission | Ordinary verification, migration verification and legacy authorization consume these results. | Identify every exposed result/method/field and wrapper error mapping; preserve valid stdout/document/hash bytes. Internal type naming is not a reason to exclude accessible returned fields. |

`verify` means `crates/behavior-verify/src`. The canonical partiality is in `crates/behavior-core/src/canonical.rs:96–125`; source-field line numbers alone do not prove every generated report domain is constrained.

The raw serialization fallback sites were also source-checked at released Core 0.13.0, `15094972191aa0ae79705df0397c551a18745399`. This does not complete the full inventory. Planning must refresh all sites and map affected identity/signing/attestation/trust/persistence boundaries against its pinned implementation, recording both existing enforcement and missing checks. The user's illustrative attestation/authorization JSON examples do not define implementation schemas.

Adjacent contrasts must be recorded, not silently rewritten: existing GovernanceError propagation around waiver/policy/authorization hashing; current trusted typed error handling; best-effort diagnostic cache writes that may skip materialization; and ordinary Option defaults unrelated to partial canonical encoding. The cache remains lower-trust diagnostic state; fresh authenticated proof bypasses it. No promotion/forgery claim is introduced by this remediation.

## Preservation and acceptance boundaries

- Valid canonical bytes, tags, self-hash exclusions, cached-flag identity rules and historical artifacts remain unchanged.
- Public signature changes follow a direct 0.x minor-version transition with explicit supported consumer migration examples and positive/negative regression coverage; unsafe parallel serialization/hash paths are not retained.
- Failure must stay explicit with its cause; no empty success, replacement hash, dropped value or silent numeric conversion is allowed.
- Editable drafts may exist. Failed canonicalization cannot become authoritative identity, signing/attestation success, accepted authorization or successful persistence under a canonical-artifact contract; existing semantic/authentication validation remains independently required.
- Existing cryptographic signature formats/domains, manifest completeness, exact context/issuer checks and fresh proof authority remain separate and unchanged.
- The final inventory must classify every in-scope suppression site and support its disposition with reachable negative evidence or a construction invariant. Unknown premises remain open.
- Tests/gates, implementation and consumer migrations are later authorized work. Authoring these drafts does not establish a runtime test or formal proof.

## Immutable evidence

Audit commit `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`:

- [RC-005 / F-QUALITY-001](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md#f-quality-001--fallible-canonical-errors-silently-become-empty-strings).
- [Full finding and construction-domain contrast](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/fragments/QUALITY/handoff.md).
- [Different-person source and category review](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/reviews/VERIFY/quality-review.md).

Authorized commits/pushes and draft PRs for these discussion documents are tracked separately. No correction code, tests, runtime gates or release work is asserted complete.
