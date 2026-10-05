# Contract: validation and proof obligations

This is planned future evidence, not executed tests. Every semantic implementation/repair
starts with a reviewed meaningful failing test observed before code. Public cases run through
behavior-engine; existing valid legacy vectors are frozen first.

## Runtime/verifier correspondence

| Runtime guarantee required | Verifier assumption/use | Current evidence / planned change | Design status |
|---|---|---|---|
| Typed scalar/exact arithmetic domains | Type/grid/range axioms | core semantic/value.rs and admit/typecheck.rs; checked payload codec | Existing base; C1 extends |
| Each intermediate represented or explicit failure | No hidden ExactBound | admit/bounds.rs omits nested Wrap/Rescale/int children and caps folds | G2 blocker |
| Snapshot valid under exact behavior | Incoming constraints/global invariants | Store bind_schema establishes schema only; full new-profile validation | G2 blocker |
| Aliases denote one entity identity | Query known-member cardinality | verify/reads.rs and encode/relational.rs count parameter occurrences | G2 blocker |
| Guard first; false payload unobserved | Safety only on true path | Canonical command step, guard not Step.cond/precondition | C2/C3 |
| Canonical fail-fast definitions/fields | Later obligations require prior success | commands/eval and verifier path encoding | C2/C3 |
| Original S; commands leave S' unchanged | No env_post modification | Existing pre-state model plus emission step | C2/C3 |
| Lossless payload conversion | Grid/narrowing/overflow/error obligations | stored_value helpers plus complete bounds justification | G2/C3 |
| Exact history parent/facts | Candidate/proof context cannot be substituted | Full HistoryRef, store rederivation and CAS | G3/C3 |
| Exact migration source/target behavior | No schema-only proof/cache equivalence | Migration prepare/admit/apply/verify and v2 subject | G1/G2 blocker |
| Trusted report covers exact obligations | Complete claim/truthful aggregate | Signed fresh profile/manifest, closed coverage, cache bypass | G1 blocker |
| Independent explicit Q matches signed Q | Exact policy context and time eligibility | Context-bearing live commit, archived Q at replay; all roles at policy_time | G1 blocker |
| Canonical proof-site identity includes repeated sites | Each expected obligation exactly once | Versioned descriptor/manifest keys; no site deduplication/shared-finding loss | G1/C3 |
| Diagnostic provenance is outside report identity | Equal admitted semantics yield equal signed content | V2 semantic report/witness projection and canonical SMT/site order | G1/C3 |
| Operational abort is not semantic INCONCLUSIVE | Only reproducible results may be authenticated | No timeout/non-reproducible prefix signing; deterministic resource budget separate | G1 blocker |
| Replay chain/endpoints/evidence valid | Reproducible command/history identity | replay_behavior_with endpoint omissions; shared checks | G3 blocker |
| No dispatch during eval/verify/replay | No external-success theorem | No executor API; consumer-only mock adapter | C2–C5 |

References are relative to crates/behavior-core, behavior-verify and behavior-store from repo
root. Signing cannot replace any runtime guarantee. Conservative INCONCLUSIVE is not unsound.

## General prerequisite regression suites

| Proposed suite | Required cases |
|---|---|
| behavior-verify/tests/trusted_governance.rs | Self-hashed ALLOW, wrong/untrusted role, invalid/weak/cross-purpose signature, changed content/key, full Q/type/hash/authorized_at mismatch, all role/expiry interval boundaries, bound/null time, missing evidence, allow/refuse/none. |
| behavior-verify/tests/trusted_verification.rs | Unsigned/forged/partial/empty/duplicate/extra report, wrong subject/profile/version/solver, poisoned cache, semantic source/binder/alias invariance, golden domains, repeated legacy expression-site keys, shared findings, valid empty manifest, fresh computation; operational prefix abort has no envelope vs reproducible resource-limit INCONCLUSIVE. |
| behavior-verify/tests/soundness_regressions.rs | Nested exact/rescale/fold bounds and read aliases cannot yield trusted false PROVEN. |
| behavior-store/tests/trusted_governance.rs | Cross-store/state/head/policy/context/behavior reuse; state/migration trust; legacy write refusal/recovery; all refusal components unchanged. |
| behavior-store/tests/history_integrity.rs | Wrong genesis/end StateId/hash, broken/missing parent, equal-state fork candidate, position exhaustion. |
| behavior-store/tests/behavior_validity.rs | Invalid seed/entity/global invariants, same schema/new rules, evaluation errors, zero bindings. |
| behavior-store/tests/migration_context.rs | Same schema/different derived source/target cannot reuse prepared/authorized identity. |
| behavior-core/tests/record_validation.rs | Float/type/hash fallback, ambiguous new document keys, false evaluation-stage evidence. |
| behavior-cli/tests/cli_trusted_governance.rs | --context/--now equality, detached diagnostics, timeout/cancellation exit3 with unchanged --out/no signed prefix, deterministic resource exhaustion exit1/INCONCLUSIVE. |

Unjustified legacy proofs are repaired or conservatively uncertifiable under the new verifier;
prior IR runtime/admission semantics are not silently rewritten.

## Command and metamorphic acceptance

| Obligation | Expected result | Requirements/success |
|---|---|---|
| Permute emission definitions/product keys | Equal action/BehaviorHash/K/record/error/observations/replay | FR-002/015/016/041; SC-004 |
| Add/remove repeated definitions/intents | Multiplicity changes identity; duplicates preserved | FR-011–015; SC-007 |
| Repeated emission/field-expression/child proof sites | Distinct canonical obligation keys, no lost checks; shared finding retains all associated keys | FR-037–040; SC-010 |
| Omitted guard vs literal true | Equal definition/evaluation | FR-009/015 |
| False guard with division by zero payload | No payload error/read/intent; other effects allowed | FR-007/009/037; SC-010 |
| True guard with reachable failure | Whole action fails, no successful K/commit; verifier finding | FR-009/018/037; SC-005/010 |
| Permute two failing emissions/fields | Equal canonical first error/evidence | FR-015/037; SC-004 |
| Relocate source/rename binder/switch equal alias | Equal new semantic record/identity/replay; diagnostics may differ | FR-002/015/041 |
| Same provenance changes under authenticated verification | Equal ReportHash/ManifestHash/VerificationHash at exact subject/profile/versions; legacy raw reports preserved | FR-038/039; SC-004 |
| Every explicit ≡₀.₈ law and its negative | CanonicalSemanticForm equality iff declared equivalence; changed public names/types/guard/payload/count distinct, even if one invocation output agrees | FR-002/015; SC-004 |
| Round-trip empty commands | Profile0.8/new domains/admission retained | FR-010/017; SC-008 |
| Change declaration/type/guard/payload | Appropriate identity changes; command-only edit leaves SchemaHash | FR-001–004/011/012 |
| Payload domain/grid/representation bounds | Invalid keys/types/ranges/lengths fail; lossless values preserved | FR-004/036/037; SC-010 |
| Command-only zero bindings | Same StateId/revisions/universe, position+1 | FR-010/025–027; SC-002 |
| Structurally empty0.8 vs old decision-only | EFFECTLESS_ACTION on new profile, original legacy result preserved | FR-010/017; SC-008 |
| Mixed state+commands, precommit/abort/conflict/refusal | Neither visible prematurely; no partial components | FR-019–021/027; SC-001/005/009 |
| Lost response/reopen/resubmit/intentional repeat | One event/same IDs/already=true; later fresh commit differs | FR-013/020/027; SC-006/007 |
| Equal genesis/position/state divergent commits | Different commit/occurrence IDs; cross-parent candidate rejected | FR-013/027; SC-007 |
| Copy canonical history across backends | Equal commit/occurrence IDs; no replica identity | FR-013/021; SC-006/007 |
| Exclusive pinned paging, empty/migration events/appends | Stable checkpoint/order/progress/all multiplicity, no future event | FR-022/023 |
| Bad cursor/limit/missing/broken/uncommitted event | Explicit failure/exclusion, not successful empty page | FR-021/022; SC-009 |
| Alter declaration/payload/count/hash/occurrence assertion | Data/Behavior replay fails without current external state | FR-041–044; SC-004 |
| Alter/omit archived profile/manifest | Data replay detects signature/hash/coverage; Behavior replay rederives | FR-039/041–044 |
| Reorder/remove optional command index | Same history-derived results | FR-021 |
| Instrument eval/verify/replay/counterfactual | Zero business-effect calls; host adapter after commit only | FR-008/028–031/042; SC-003 |
| External result later invocation | Original event immutable, no automatic callback | FR-032–035 |
| Forge/rebind required authorization or change K/count | Refuse all writes; exact canonical K is authorized | FR-039/040; SC-001 |
| None authorization policy | Normal v2 checks without signature for state/commands | FR-039/040; SC-001 |
| Missing independent Q, changed typed context/bound commit time | CONTEXT_REQUIRED/MISMATCH before fresh governed writes; signed Q is not its own independent evidence | FR-039/040; SC-001 |
| Key/waiver time boundaries and replay after wall clock changes | All trust roles/expiry use archived policy_time; [start,end) and null unbound-time rules exact | FR-039/041–044; SC-001 |
| Wall-clock/cancellation/process/non-reproducible prefix abort | No signed semantic artifact or partial envelope; CLI exit3 preserves existing output; no waiver promotion | FR-038–040; SC-010 |
| Deterministic resource-limit exhaustion | Reproducible authenticated INCONCLUSIVE/exit1, never PROVEN | FR-037–040; SC-010 |
| V1 new-profile write, including empty K | HISTORY_FORMAT_UPGRADE_REQUIRED before mutation; legacy none-profile behavior unchanged | FR-017/039/040; SC-008 |

Property tests vary semantic objects instead of duplicating implementation loops. Golden
fixtures prove bytes separately. Corrupt only relevant fields so negatives reach their boundary.

## Durable consumer and gate obligations

consumer/tests/command_crash_recovery.rs runs a test-only durable host backend in two processes.
Terminate after fsync/atomic commit before response; second process opens/enumerates/recovers
one event. Pre-write failure exposes neither result. In-memory reopen cannot replace this.
consumer/tests/durable_commands.rs imports only behavior-engine and covers invoke/governance/
commit/stream/replay/host mock adapter. No Core executor trait is added just for testing.

Custom backend conformance detects injected violations, not arbitrary backend honesty.
Use unchanged scripts/gates.sh: fmt, clippy, workspace tests/build, determinism, boundary,
public surface, external consumer, workflows, terms and script tests. New suites enter those
gates. Release-check and exact pushed-revision consumer precede artifacts/publication.
Release-tag rejection tests use disposable repos, never move/delete/reuse product tags.
