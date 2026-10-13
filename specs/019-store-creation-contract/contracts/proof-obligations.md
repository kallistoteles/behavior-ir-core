# Proof Obligations and Targeted Re-audit

These are specified obligations for future implementation. No row claims executed
019 evidence. The source findings are F-PERSIST-002/RC-003 in immutable 016;
O-PERSIST-012 (missing outcome law) and O-PERSIST-004 (missing fault coverage) are
separate. A clarified law alone does not close physical execution evidence.

| ID | Obligation | Establishment required |
| --- | --- | --- |
| P019-01 | Legal original product before mutation | Existing full seed validator; invalid-input controls prove no Backend create call |
| P019-02 | Atomic Absent/Complete publication | Host invariant plus generic outcomes and named host-specific fault windows |
| P019-03 | No public private staging | Staging-only fresh observer; deliberately exposed-staging mutant |
| P019-04 | Exact original creation identity | Existing canonical G/StoreId plus complete original product; foreign/equal-StateId controls |
| P019-05 | Idempotent equivalent retry | No second semantic initialization; original versions/refs/history preserved |
| P019-06 | Deterministic established conflict | Complete foreign witness; no error-message parsing or unknown-to-conflict conversion |
| P019-07 | Bounded operational failure handling | Original create error retained unless complete foreign conflict proven; secondary read failure controls |
| P019-08 | Coherent captured history under races | Some-genesis witness then one head; legal publication-straddling and later-commit schedules |
| P019-09 | Advanced/migrated history preserved | Original material at zero; actual later schema/head/events retained; no reset |
| P019-10 | Candidate/cache non-authority | Only exact acknowledged/verified position-zero evidence may seed cache; advanced/unresolved paths cold |
| P019-11 | Profile-sensitive normalization | v1 raw/encoded distinctions and seed order; v2 canonical rules; no historical rewrite |
| P019-12 | Generic open authority bounded | Structural completeness without Module; no independent Ref/Behavior proof claim; missing material refused |
| P019-13 | Durable success and recovery barrier | Stable cooperative lock, file/dir sync, correct root premise; post-rename ambiguity covered |
| P019-14 | One current host semantics | Normative docs, complete first-party role inventory, migration note and new shared conformance |
| P019-15 | Historical/semantic neutrality | Protected bytes/hashes/profiles unchanged; no transition insertion, dispatch or verifier change |
| P019-16 | Exact delivered-revision evidence | Frozen source, canonical gates and exact facade consumer; external immutable receipt |

## Mathematical argument under stated premises

For legal C, Core establishes `ValidSeed(C, M)` using the reference validator.
When its serialized creation decision observes an absent target, this attempt
either publishes complete C atomically or makes no publication. An existing
Complete lineage is preserved and yields equivalent recovery or established
conflict. Failure to publish C does not establish global absence: another
initializer may have published. Interruption can leave the caller uncertain.
Complete expected-product evidence establishes the exact original C, not merely
the existence of a file. Equivalent retry adds no initialization and leaves
canonical later history unchanged. Different established C' yields conflict.

An initial certificate additionally requires exact acknowledged/verified position
zero under the same schema/Module/validation profile. Equality of later entity
values or StateId does not prove that condition. Generic opening supplies no such
certificate. This argument does not establish that existing code or arbitrary
physical devices satisfy its premises.

## Trust premises and limits

- Cryptographic identity collision resistance and existing canonical domain rules.
- Immutable complete primary/history answers at fixed positions; no hidden unknown
  entity types outside the schema; required enumeration obeys Backend semantics.
- Host correctly distinguishes authoritative snapshot from private staging and
  serializes same-target creation/commit without replacing its lock identity.
- Disclosed filesystem/device sync and atomic replacement behavior; a durable
  root or explicit parent-directory setup; cooperative exclusive ownership.
- Module-free legacy opening does not independently reconstruct typed seed/Ref
  semantics. Expected create recovery has Module and performs stronger checks.
- Current endpoint/schema verification is not full-prefix Behavior replay. Existing
  history-conformance and replay obligations remain; no new authority shortcut.

Do not turn Backend corruption into absence or promote caches/indexes to semantic
truth. Do not promise arbitrary adversarial-host honesty, power-loss durability
from process exits, or coverage of undisclosed physical windows.

## Required re-audit output

After implementation, produce a targeted creation assessment mapping each P019
obligation to exact source/invariant, named tests and logs, negative controls,
assumptions and remaining gaps. Separate:

1. Specified mathematical law (O-PERSIST-012).
2. Implementation invariant under documented trust premises.
3. Executed generic semantic evidence.
4. Executed host-specific creation interruption evidence (O-PERSIST-004).
5. Physical/device/concurrency premises not established by those tests.

Review G3 seed validity, G8 persistence neutrality, G9 atomicity, G11 obligation
preservation and G12 cache non-authority at this boundary. Preserve 016 evidence
as the audit source; do not rewrite its findings as though fixes were present.
Do not declare unrelated 020/021 obligations closed or label the whole kernel
sound from this bounded re-audit.
