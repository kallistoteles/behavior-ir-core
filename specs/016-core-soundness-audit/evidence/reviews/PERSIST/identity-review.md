# Independent PERSIST review of IDENTITY

Reviewer: `/root/audit016_store`, distinct from IDENTITY author
`/root/audit016_verify`. Date: 2026-10-10. Task: T035. Baseline:
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9` (v0.12.1).

Reviewed `identity-audit.md` and the IDENTITY source-inventory, test-coverage and
prior-leads fragments. Independent evidence is inspection of the unchanged
baseline constructors, serializers, Store/replay paths and published contracts.
The reviewer did not compile or execute tests. COORD's baseline gates and
supplemental historical-read overlay were pending at this review. Source-present
tests are not executed evidence.

## Domain and ordering challenge

All C-IDENTITY-001–031 families are accounted for against FR-011. Families can
contain several explicit tags; 31 is not a count of individual hash tags.

| Families | Independent challenge and disposition |
| --- | --- |
| 001–003 declarations | Baseline `core/admit/hash.rs:117–160` binds names, enum order, nominal domain/scale and entity ordered fields. Ref and Option<Ref> use distinct encoding. Accepted under admission's typed reference premise; display formatting is not the declaration object. |
| 004–008 expressions/queries/rules/effects/actions | Typed operator/body/dependency identities differ from results on one invocation. Query set membership does not justify sorting operands of syntax or erasing error precedence. Ordered state effects remain ordered; current command emissions alone use their specified bag normalization. Accepted with MODEL's operator/closure inventory, without a universal preimage proof. |
| 009–011 behavior/schema/migration | `core/admit/hash.rs:581–591,644–661,676+` distinguishes lookup names and behavior profiles from persisted declarations. MigrationHash is resolved transform identity; exact source/target BehaviorHash eligibility is a separate `Migration::matches_behaviors` obligation (`core/migration/mod.rs:129–135`). Accepted; equal SchemaHash cannot establish historical behavior applicability. |
| 012–013 command/read definitions | `core/commands.rs:91–115,122–135,182–214` and `core/admit/hash.rs:529–640` confirm typed payload, exact field names, canonical command products/bags and multiplicity. Projection outputs retain their frozen item order and key names. Accepted; a successful intent remains an uncommitted candidate request. |
| 014–016 evaluated/read/invocation records | Read IDs use length-prefixed canonical JSON (`core/read.rs:523–535`), whereas invocation uses the document algorithm (`core/invocation.rs:719–742`). Historical/current codec distinctions are material. Accepted for identity constructors; blanket historical Store replay equivalence is withheld because F-PERSIST-001 investigates v1-to-v2 substitution. |
| 017–019 content/version/state/genesis | `store/documents.rs:250–278,492–560` separates keyed live content from revision/lifecycle. `store/muhash.rs:22–88` is commutative over valid nonzero group elements; StateId intentionally excludes ever_used, history and empty-schema differences. Genesis binds lineage schema/seed/policy, not a physical backend path. Accepted with cryptographic and conforming-input premises; identity does not establish backend durability. |
| 020–023 bundles/events/occurrences | `store/documents.rs:697–722,742+,829+,916–957` and `store/commands.rs:127–249` separate candidate, submitted bundle, committed event and post-commit occurrence. Current event kind/profile/history checks precede identity use. Commands enumeration authenticates pinned history and reconstructed content before returning occurrences. Accepted; retries of the same committed event retain identities and no external dispatch is performed. |
| 024–028 verification/governance | Finding/check keys have explicitly narrower identity claims than proof authentication (`verify/hashing.rs:49–85`). Content identity does not authenticate issuer or authorize a candidate. Current closed/signature/profile checks require TRUST's independent review; historical structural evidence is not silently promoted to current proof. Accepted as identity inventory, with live trust and legacy oversized encoding premises retained open. |
| 029–030 candidate/replay report | `store/documents.rs:697–722` candidate binds exact evaluated history and engine-derived data, while excluding evidence/Q/commit time/future event. Their obligations must be satisfied independently at authorization/commit. Replay-report hashing identifies an assessment; it cannot prove the assessed event was originally valid. Accepted subject to T076 live-boundary reconciliation. |
| 031 materialization key | `store/store.rs:562–571,1127–1193` binds exact StoreId/StateId/position/event, SchemaRef and canonical admitted module text. It is private reconstruction acceleration. Accepted for key construction; correct key strength alone cannot establish G3 or safe child publication. |

`core`/`store`/`verify` paths above are respectively beneath
`crates/behavior-core/src`, `crates/behavior-store/src`, and
`crates/behavior-verify/src` in the exact baseline.

FR-012 ordering classifications correctly distinguish mappings, sets, multisets
and sequences. In particular command duplicates are retained; occurrence stream
representation does not promise external delivery order. Historical parameter,
effect, trace and record arrays cannot be freely sorted. Backend enumeration is
representation rather than semantic authority; runtime still assumes complete,
coherent Backend enumeration. Rechecking a returned candidate's actual value
does not prove that an index returned every candidate.

## Canonicalization, cycles and premises

Direct inspection of `core/canonical.rs:17–85,103–145` confirms strict duplicate
key/no-float decoding, optional closed typed decoding, compact sorted-key
serialization and top-level-only self-hash omission. Decoder strictness is
profile-specific. `deny_unknown_fields` plus semantic construction is distinct
from the generic hash helper's behavior on arbitrary JSON.

The reported graph is consistent with PERSIST constructors: candidate excludes
authorization/context/time/future event/occurrences; authorization content
excludes its detached signature; committed events include evidence but no
occurrence IDs; occurrences depend on the final event hash. Entity references
name target identities rather than recursively hashing target content. No cycle
was identified under admitted dependency DAG premises. This is source reasoning,
not a mechanically proved graph theorem for malformed documents.

O-IDENTITY-001/006/010 appropriately remain not yet established. Saturating a
legacy u32 length establishes a bound concern, not a practical collision by
itself. Cryptographic collision resistance is an explicit assumption. Full
record-field identity inclusion and recomputation comparisons must be reconciled
with PERSIST's field matrix; the existence of a tamper test target does not prove
exhaustive tamper coverage across every profile.

## Author request and decision

R-IDENTITY-001: explicitly scope O-IDENTITY-007's statement that historical
profiles preserve their bytes to the inspected Core constructors/standalone
replay. It must not be read as closing Store-backed historical replay, whose
current-versus-recorded profile selection is F-PERSIST-001. The report already
mentions shared replay leads; this is a precision request for the obligation row.

The inspection report is accepted with that qualification and the already-open
execution/whole-domain obligations. No additional confirmed S3 finding follows
from this review. T076 schema/history and commands/governance/commit review, root
execution evidence, and author disposition of R-IDENTITY-001 remain required for
downstream closure. This review is not a whole-kernel soundness verdict.

## Final execution and author disposition

Subsequent author response narrowed O-IDENTITY-007 exactly as requested by
R-IDENTITY-001: Core constructors/standalone historical dispatch, excluding
Store-backed profile selection. The IDENTITY final report/handoff now retain
confirmed F-PERSIST-001 and F-TRUST-001 in their boundary limits. Request resolved.

Reviewer inspected actual E-COORD-009 baseline gate metadata and
E-COORD-012–016 collected/default-execution/ignored accounting, plus
E-IDENTITY-002 raw source-target command/run/stdout/stderr. Both named
schema_binding_props tests executed successfully with fixed proptest seed
20261010 (2 passed,0 ignored/filtered). The disclosed FileFailurePersistence
warning concerns the source-relative regression persistence path; it is not a
skipped property or assertion success replacing execution. This is bounded
empirical schema-edit/behavior-edit evidence, not hash collision freedom.

Reviewer separately inspected E-PERSIST-004 and E-TRUST-002 exact-base disclosed
test-only overlays: positive legal controls and final assertion locations
establish historical v1 Store refusal and current conflicting duplicate-key
Store acceptance. Those are expected semantic RED evidence, not passing tests or
infrastructure failures. O-IDENTITY-010 and whole replay equivalence remain
not yet established with known counterexamples; signature/hash constructor
coherence cannot erase those defects.

Final disposition: accepted qualified IDENTITY report, resolved R-IDENTITY-001,
and recorded actual bounded empirical evidence. O-IDENTITY-001 universal
preimage distinction, O006 historical oversized encodings, O010 exhaustive
tamper/profile behavior and cryptographic/Backend/solver trust premises remain
qualified. The named lanes' T076 source boundaries are reconciled; this
review makes no SOUND verdict and applies no semantic correction.
