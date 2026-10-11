# Joint boundary: schema → history

T076 writer: `/root/audit016_store` (PERSIST). Named contributors:
`/root/audit016_model` (MODEL) and `/root/audit016_verify` (IDENTITY).
Date: 2026-10-10. Exact baseline v0.12.1,
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Reconciliation; named case mapping
and contributor dispositions are recorded at qualified source/empirical scope. No historical IR,
record/hash, admission or public API was changed.

## Distinct semantic coordinates

| Object | Includes | Does not establish | Sources / contributors |
| --- | --- | --- | --- |
| Persisted schema Σ / SchemaHash | Entity-name → exact declaration identity mapping, including field/type/reference distinctions | Behavior rules/actions/commands/profile or exact history position | MODEL C022/C025/C053/O009–010; IDENTITY C003/C010; Core `admit/hash.rs:141–160,655–661`, `schema.rs`. |
| BehaviorHash / module profile | Exact admitted semantic definitions and public name mapping, applicable versioned identity normalization | Occurrence/history or validity of arbitrary external state | IDENTITY C009; Core `admit/hash.rs:581–591,644–650`. Equal output on one invocation is not equivalent definition. |
| EntityContentHash / StateId | Typed keyed live content under exact declaration hashes; order-independent multiset accumulator | Revisions, removals/ever_used, StoreId, history, or empty schema differences | IDENTITY C017–018, Store `documents.rs:250–278`, `muhash.rs:22–88`. Hash security is assumed. |
| EntityVersion / HistoryRef / SchemaRef | Exact lifecycle/revision, store/data identity, position, immutable event and schema-generation coordinates | Complete full-validator correctness or arbitrary Backend honesty | PERSIST immutable record/as-of paths; Store `documents.rs`, `store.rs:1127–1157`. |
| Historical used identities U_H | Existence at any position in that lineage, including removed identities | Current live existence or merely identical live StateId | MODEL O004/C025; Backend historical facts; create freshness remains distinct from resulting references. |

`core` and `store` paths mean `crates/behavior-core/src` and
`crates/behavior-store/src`. MODEL supplied explicit distinction of Σ, Behavior,
profile and U_H; IDENTITY independently agreed on live/history hash coordinates;
PERSIST traced as-of binding and history reconstruction.

Equal SchemaHash cannot authorize interpreting old history under new rules.
Equal StateId cannot establish never_used, exact CAS/history, schema, behavior,
governance or cached validity. Empty live states from different schemas can have
the same StateId without contradiction because schema is separately bound.

## Migration and reconstruction chain

Store creation binds canonical schema/typed seed and full initial validation
before successful genesis product. Every Store action/read binds the supplied
module schema at its exact chosen position. Migration source and target are
admitted modules; full source/target state validation is distinct from content
identity and type declaration identity.

Frozen MigrationHash identifies resolved schema pair/constants/requirements/
transforms/drops, not arbitrary source/target behavior eligibility. The runtime
independently binds exact behavior pair through `Migration::behavior_pair` and
`matches_behaviors` (`core/migration/mod.rs:129–135`) and `apply_migration`
checks. Current prepared migration additionally resolves exact history/schema,
reprepares and compares the candidate before its shared atomic Store commit.

Historical schemas derive from immutable genesis/migration records at the
requested coordinate; data replay reconstructs content/schema/event chain,
whereas behavior replay resolves archived modules and re-evaluates the original
operation. Ref-index replay reconstructs the relevant schema-generation graph
from canonical data. Physical caches/indexes do not select historical meaning.

Store snapshot validation materialization keys exact HistoryRef, SchemaRef and
canonical admitted module text (`store.rs:562–571,1127–1193`). It is reconstructible
private acceleration. Neither digest-only equality nor a candidate result before
CAS becomes semantic authority. Backend immutable/coherent complete reads are
an explicit premise; runtime cannot universally authenticate omitted data.

## Historical/current applicability and open defects

Admitted Wire0.4–0.8 semantic profiles, decision record profiles, read v1/v2,
invocation v1, Store v1/v2 and governance structural/authenticated profiles are
different axes. New diagnostics detachment and stricter current transport codecs
must not retroactively erase fields or change old identities. Archival evidence
decoding is distinct from current proof eligibility.

MODEL O010 and IDENTITY O007 were narrowed through direct review: established
historical-profile source guarantees concern admitted modules, Core standalone
codecs and migration applicability. They expressly exclude unresolved Store
historical read/inner-invocation v1 substitution F-PERSIST-001. Exact schema
binding is insufficient when Store replay chooses current v2 instead of recorded
v1. Root's immutable two-test overlay E-PERSIST-004 established positive legal
historical premises and reached both final Store equivalence assertions: they
failed at `facts`/`outcome.record.facts`. Both standalone historical results
match; Store results mismatch. This confirms F-PERSIST-001. R-VERIFY-005
independently accepts the actual log interpretation and S3/Medium scope.

The ordinary nonlocal invalid-child defect F-INCREMENTAL-001 cannot be excused
by schema/content identity or successful behavior replay: replay can reproduce
the same flawed transition. G3 full resulting-state validity remains an
independent normative obligation. Creation failure/retry law is separately
underspecified F-PERSIST-002; successful schema/genesis initialization is not a
universal failure atomicity theorem.

No new identity cycle is identified in the constructors: declaration identity →
schema/content; migration → schema-generation event; committed history/event →
historical lookup. Entity Ref names target identities rather than recursively
hashing instance contents. This is scoped constructor inspection under admitted
DAG premises, not a formal malformed-document theorem.

## Final evidence and decision

Source conclusions agree across the three named lanes with exact input/profile,
conforming Backend, archive/module resolver and cryptographic assumptions.
E-COORD-009 canonical/default gates and E-COORD-012–016 named collection/default
accounting cover existing schema/migration/history/content/command cases under
their disclosed target domains. E-IDENTITY-002 independently passes both fixed
seed schema-binding property tests; its failure-persistence warning is disclosed
and is not skipped execution. Complete per-profile field tampering and arbitrary-host
fault coverage remain qualified gaps. No soundness verdict follows from equal
hashes or a green shared-reference replay test alone.

E-COORD-009 passed unchanged-baseline canonical gates; E-PERSIST-004 separately
failed the two historical assertions as expected semantic counterexamples, with
immutable source/patch/run/stdout/stderr in `evidence/runs/PERSIST/replay-v1-red/`.
E-TRUST-002 also confirms current duplicate parser refusal divergence, and
E-INCREMENTAL-002 independently confirms the ordinary invalid committed child.
Their positive controls/final assertions distinguish counterexamples from
infrastructure failure. No findings were
silently fixed or historical documents rewritten during the reconciliation.

MODEL independently read both notes and accepts its contributed premises at
source-accounting scope; its C025 historical identity citation is corrected above.
Root execution/log interpretation now confirms the historical profile mismatch.

IDENTITY independently reread the note and accepts its contributed premises at
qualified source-accounting scope, with no source correction. PERSIST agrees;
unresolved F-PERSIST-001/002, F-INCREMENTAL-001 and
current duplicate-parser F-TRUST-001 remain explicit limits, not signed-off
whole-kernel guarantees.

Final boundary disposition: named inputs, actual scoped executions and
different-person contributor reviews are accounted for. Unresolved correctness
and contract findings remain reported; no repair is required to complete the
audit and no repair was applied. Whole-domain proofs and host trust assumptions
retain their explicit limits.
