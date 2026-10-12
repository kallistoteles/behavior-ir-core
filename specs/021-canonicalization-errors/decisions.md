# Open Decisions: Explicit Canonicalization Failure Contracts

**Created**: 2026-10-11

**Status**: Draft for clarify. Options and recommendations are discussion material, not approved implementation or public API decisions.

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

**Provisional recommendation**: A for publicly mutable raw artifact boundaries, while retaining narrow infallibility only where construction-domain evidence establishes it. This is the smallest conceptual correction to the reported failure-provenance risk; it is not approval of a particular return type, signature migration or release. B remains a legitimate alternative if the intended public value contract is deliberately tightened.

**Needed for clarify**: Which artifact mutation/creation workflows are supported, which public fields/return values consumers use, and whether constraining that domain is an acceptable consumer change. Profile's typed check-kind/u64 construction is a contrast case, not evidence that every assembled finding is canonicalizable.

## D-021-002 — public error compatibility and consumer delivery

**Question**: How should the selected boundary's observable error/API changes reach supported consumers?

| Option | Outcome | Implication |
| --- | --- | --- |
| A — Explicit versioned contract change | Publish the selected fallible or constrained contract with its required source/error compatibility change and consumer migration evidence. | Clear completion boundary and no compatibility claim about changed signatures/field mutability. Exact release classification remains to be established. |
| B — Staged consumer migration | Add checked replacement entry points and specify a finite migration/removal or restriction policy for incompatible legacy entry points. | Broader compatibility work. Adding a safe alternative alone does not complete the feature while a supported reachable canonicalization-to-success fallback remains. |
| Custom | Specify another explicit transition and error classification policy. | Must account for every affected facade/CLI consumer and completion of the no-silent-fallback obligation. |

**Provisional recommendation**: Decide after D-021-001 and the full site-domain inventory. Prefer an explicit, smallest versioned change when the selected correction cannot preserve a current signature/mutation contract; do not claim a patch-compatible cleanup in advance. Library failure representation and CLI category/status/output consequences must be documented without turning artifact failure into ordinary not_verified or deny evidence.

No exact public error type, CLI exit value, release number or implementation plan is selected here.

## Preliminary site-domain inventory for discussion

This is an evidence starting point for FR-002/003, not the required final closure inventory. Source references use the audited release tree; the draft base has the same source.

| Site | Actual input/observable role | Current handling and unresolved obligation |
| --- | --- | --- |
| verify lib.rs:169–179 | Attestation has public mutable raw `value`; returned consumers can edit it before serialization. | Canonical serializer error defaults to empty text. Raw nested float reachability is source-established; boundary choice is D-021-001. |
| verify lib.rs:293 | Ordinary attestation assembly combines module/profile/check results/findings into a document; excludes cached flags from identity. | Hash error defaults to empty hash. Trace all findings and diagnostic-cache/input provenance; successful ordinary generation alone does not establish the full input invariant. |
| verify migration.rs:881 | Migration attestation assembly combines typed migration/source/target/profile and generated checks/findings. | Hash error defaults to empty hash. Establish this actual domain and preserve its subject/profile-specific bytes; do not infer arbitrary JSON safety from a typed migration alone. |
| verify governance.rs:408–416 | Legacy Authorization exposes mutable raw value to returned consumers; initial authorization construction already propagates hash errors. | Later canonical serialization still defaults failure to empty text. Preserve explicit construction errors while choosing the later mutation/encoding boundary. |
| verify lib.rs:114–131 | Profile constructs a document from normalized CheckKind values and u64 budgets, then obtains its computed hash. | Adjacent hash/extraction defaults have a narrower no-float construction premise. Document the actual invariant and full failure domain rather than equating this value with arbitrary mutable JSON. |
| Supported facade returns and CLI artifact emission | Ordinary verification, migration verification and legacy authorization consume these results. | Identify every exposed result/method/field and wrapper error mapping; preserve valid stdout/document/hash bytes. Internal type naming is not a reason to exclude accessible returned fields. |

`verify` means `crates/behavior-verify/src`. The canonical partiality is in `crates/behavior-core/src/canonical.rs:96–125`; source-field line numbers alone do not prove every generated report domain is constrained.

Adjacent contrasts must be recorded, not silently rewritten: existing GovernanceError propagation around waiver/policy/authorization hashing; current trusted typed error handling; best-effort diagnostic cache writes that may skip materialization; and ordinary Option defaults unrelated to partial canonical encoding. The cache remains lower-trust diagnostic state; fresh authenticated proof bypasses it. No promotion/forgery claim is introduced by this remediation.

## Preservation and acceptance boundaries

- Valid canonical bytes, tags, self-hash exclusions, cached-flag identity rules and historical artifacts remain unchanged.
- Failure must stay explicit with its cause; no empty success, replacement hash, dropped value or silent numeric conversion is allowed.
- Current signatures, manifest completeness, exact context/issuer checks and fresh proof authority remain separate and unchanged.
- The final inventory must classify every in-scope suppression site and support its disposition with reachable negative evidence or a construction invariant. Unknown premises remain open.
- Tests/gates, implementation and consumer migrations are later authorized work. Authoring these drafts does not establish a runtime test or formal proof.

## Immutable evidence

Audit commit `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`:

- [RC-005 / F-QUALITY-001](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md#f-quality-001--fallible-canonical-errors-silently-become-empty-strings).
- [Full finding and construction-domain contrast](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/fragments/QUALITY/handoff.md).
- [Different-person source and category review](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/reviews/VERIFY/quality-review.md).

Authorized commits/pushes and draft PRs for these discussion documents are tracked separately. No correction code, tests, runtime gates or release work is asserted complete.
