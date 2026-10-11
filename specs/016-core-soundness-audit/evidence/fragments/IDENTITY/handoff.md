# IDENTITY handoff

Owner `/root/audit016_verify`; baseline v0.12.1, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. No identity algorithm,
canonical bytes, historical records, schema, Wire or public API was changed.

## Inventory and evidence

identity-audit.md accounts for C-IDENTITY-001–031: every semantic domain/tag,
full preimage, intended exclusions, ordering/multiplicity, historical/current
profile, candidate/authorization/committed event/occurrence graph and internal
validation reuse key. Transport tags without their own public hash are explicit.
source-inventory.md E-IDENTITY-001 is inspection-only; test-coverage.md records
independent vectors and shared-helper limits; prior-leads.md retains bounded
legacy-size concerns and evidenced non-findings.

StateId commits to keyed live content and excludes history/ever_used/empty schema
differences. Exact history/schema/Behavior and U_H still establish concurrency,
freshness and validation reuse. Candidate excludes Q/evidence/time/future event/
occurrences; authorization content excludes detached signature; occurrences derive
only after committed event identity. No constructor cycle was found under admitted
dependency-DAG premises. Hash/security assumptions are not proof artifacts.

E-COORD-009/012–016 establishes collected/default-executed vectors/properties,
including canonical 4, canonical_tagged_hash 3, command_identity 9,
hash_properties 10, hash_vectors 1, serialize 3, Core read_soundness 14,
Store muhash 3 and verify trusted_verification 21. Ignored tests are excluded and
quiet results are crossmatched to collected names; no seed is retroactively
attributed to default-random property runs. Supplemental fixed-seed runs remain
separate evidence. The actual test table is not an exhaustive tamper theorem.

E-IDENTITY-002 separately executes both schema_binding_props cases with
PROPTEST_RNG_SEED=20261010, 48 generated bounded cases per test; both pass,
0 ignored/filtered. Stderr's SourceParallel persistence warning is disclosed in
test-coverage.md; seed/log retention supports reproduction despite that warning.

## Obligations

| ID | Primary status | Scope and limit |
| --- | --- | --- |
| O-IDENTITY-001 | not yet established | Universal pre-hash injectivity under all published normalization rules; direct domain inspection and vectors/property evidence remain partial. |
| O-IDENTITY-002 | established by a code invariant | Current canonical command products/bags retain multiplicity and checked lengths; same-hash/different-bytes refused. |
| O-IDENTITY-003 | established by a code invariant | Inspected typed strict canonical decoder/serializer excludes float/duplicate ambiguity and incidental map order; raw Store replay exception is F-TRUST-001. |
| O-IDENTITY-004 | established by a code invariant | Live-state accumulator normalizes keyed content independent of history/backend order, under valid inputs. |
| O-IDENTITY-005 | assumed but documented | SHA/MuHash/Ed25519 security and external key custody; no collision/unforgeability theorem generated. |
| O-IDENTITY-006 | not yet established | Blanket u32 length premise for historical/programmatic encoder inputs; no practical collision reproduced. |
| O-IDENTITY-007 | established by a code invariant | Current diagnostics detachment and inspected Core historical standalone dispatch; expressly excludes Store historical F-PERSIST-001. |
| O-IDENTITY-008 | established by a code invariant | Staged constructor identity graph is acyclic; exact live context/authority checks are separate TRUST obligations. |
| O-IDENTITY-009 | established by a code invariant | Reuse key includes exact history/schema/canonical Behavior, not StateId alone. |
| O-IDENTITY-010 | not yet established | Exhaustive field/profile identity/replay tamper law; F-PERSIST-001 and F-TRUST-001 are confirmed exceptions, despite many passing cases. |

## Findings and independent acceptance

No S3 is inferred just from suspicious hashing source. Actual E-PERSIST-004
confirms valid historical read/inner invocation refused, F-PERSIST-001 S3/Medium.
E-TRUST-002 confirms malformed raw current read duplicates accepted by Store,
F-TRUST-001 S3/Medium. Origins stay with PERSIST/TRUST; do not duplicate them as
new hash findings. Current standalone Core and Store invocation duplicate preflight
remain protected for the tested input. G3 F-INCREMENTAL-001 remains independent
of a well-defined hash domain.

Different-person PERSIST review accepts all 31 families after R-IDENTITY-001's
historical Store guarantee qualification, applied in O007. This agent's R005
independently reviews PERSIST findings; MODEL reviews TRUST finding separately.
Named query-read-identity-replay and schema-history notes retain actual contributor
inputs, immutable Backend limits and historical/profile defects. No lane-only
soundness verdict is issued.

QUALITY contribution: distributed hash tags/legacy-versus-checked encoders and
ambiguous stage names are inspection risks. Document object/tag and compatibility
premises before prospective refactor; do not rewrite frozen bytes or conflate
integrity/authentication/authorization to reduce duplication.
