# Contract: supported behavior-engine surface

Only behavior-engine is a supported programmatic dependency. Export each new item explicitly
and update api/engine-surface.txt. Internal crates remain unsupported. Existing public paths
remain available; new minor-version document construction adaptations are documented and
checked by the external consumer. These are target APIs, not existing implementations.

## Admitted semantics and candidate values

| Facade item/method | Contract |
|---|---|
| commands::CommandDeclaration | Opaque admitted product; name/fields/declaration_hash/canonical_descriptor accessors. |
| commands::CommandField | Read-only named type descriptor. |
| commands::CommandEmission | Opaque canonical declaration/guard/payload definition with identity accessors. |
| commands::CommandIntent | Opaque immutable validated value; declaration_hash/payload/intent_hash; no unchecked constructor. |
| semantic::Module::commands() | Canonical declared-command map view. |
| ActionItem::command_emissions() | Read-only canonical bag representation, duplicates retained. |
| DecisionRecord::command_intents() | Complete K on ALLOW, [] for older/unsuccessful records. |
| DecisionRecord::diagnostics() | Detached display/provenance, outside record 0.7. |
| builder::SemanticProfile | Explicit legacy/current0.8 selection, retained on serialization. |
| builder::CommandEmissionSpec | Named command, optional guard Node, named payload Nodes; normal ownership/scope validation. |
| Builder::with_semantic_profile(profile) | Explicit new-profile construction. |
| Builder::add_command(name,fields,loc) | Product declaration through normal admission. |
| Builder::add_action_with_commands(...) | Existing components plus command specs; existing add_action remains. |

No execute/send/retry/delivery-state API. Candidate inspection asserts no commitment.

## Store and versioned documents

Ordinary Result uses existing typed store/build/governance errors. Explicitly export shared
paths in the facade; signatures must not mention internal crate paths.

| API | Target signature/behavior |
|---|---|
| documents::HistoryRef | Checked format/store/state/position/record, state_ref() projection. |
| Store::current_history | (&self)->Result<HistoryRef>; exact committed head. |
| Store::history_at | (&self,position:u64)->Result<HistoryRef>; validated anchor. |
| commands::CommandStreamRequest | Checked after/through/max_records; strict from_json/as_json. |
| commands::CommandStreamPage | Read-only observed_head/items/next_after/complete and canonical JSON. |
| commands::CommittedCommand | Validated occurrence, no unchecked/from-candidate constructor. |
| Store::commands_since | (&self,&CommandStreamRequest)->Result<CommandStreamPage>; read-only. |
| Store::invoke / invoke_intent | 012 entry points; ALLOW action returns version-appropriate candidate, never commits. |
| Store::commit | Existing entry point; independently checks v2 full evaluated_history even with expected_parent StateRef. |
| Store::commit_with_context | (&mut self,module,&expected_parent,&bundle,&AuthorizationContextV2)->Result<Committed>; independent Q compared with signed Q before a fresh governed write. |
| store::PreparedMigration | Opaque prepared transform/candidate, no command effects. |
| Store::prepare_migration | (&self,source,target,migration,commit_time,at_history?)->Result<PreparedMigration>; read-only. |
| Store::commit_prepared_migration | (&mut self,source,target,migration,&PreparedMigration,evidence?,context?)->Result<Committed>; independent Q required for governed writes; rederive/trust/CAS. |
| Store::migrate | Existing entry point dispatches by policy/format, never bypasses v2 trust. |
| Store::export_seed_at | (&self,module,&HistoryRef)->Result<SnapshotExport>; complete validated live state. |
| documents::SnapshotExport | Source head/schema/state and canonical live seed, no old-history claim in new lineage. |
| store::genesis_v2_for | (module,typed_v2_policy,seed)->Result<Genesis>; explicit new trust root. |
| CommitBundle::governance_candidate | Reviewable candidate content/identity fixed before authorization. |
| CommitBundle::with_trusted_evidence | Attach checked evidence without changing candidate identity. |

Genesis/CommitBundle/TransitionRecord/Evidence gain checked version dispatch. Unknown formats
and v1 shapes carrying v2-only fields fail. Private tagged variants/fields may evolve, but
valid v1 bytes/hashes stay exact. Backend::commit is still one primitive; backends dispatch
validated versions rather than hard-code v1. Prefer checked document constructors.

Context-less entry points cannot obtain independent Q by copying signed authorization.
Fresh governed v2 writes (including supplied evidence under a none policy) require an explicit
context-bearing path or fail CONTEXT_REQUIRED before mutation. None-policy writes with no
evidence retain normal commit behavior. Exact already-committed recovery is read-only and uses
original archived Q; it never changes the event or upgrades historical trust.

## Shared governance

Items below live under the explicit verify::governance facade:

| Item | Contract |
|---|---|
| EvidencePolicyV2 / ExecutionPolicyV2 | Typed immutable decoders, as_json/hash/role/profile requirements. |
| AuthorizationContextV2 | Checked full Q/as_json/ContextHash; explicit policy_time, bound time or null, policy-declared Bool/i64/String context product. |
| GovernanceSubject | Exact admitted module or migration/source/target modules and semantic profile. |
| GovernanceCandidate | Exact parsed subject/history/content; decoding proves structure, not live-store truth. |
| VerificationEnvelopeV2 | Complete profile/manifest/semantic v2 report/content/hash/detached signature; detached diagnostics excluded. |
| AuthorizationContentV2 | Canonical issuer/bindings/decision/evidence/time, constructed by policy judgment. |
| AuthorizationSignatureV2 / SignedAuthorizationV2 | Detached signature transport with checked subject/key/content relation. |
| EvidenceV2 | Complete policy/authorization/envelopes/waivers/signatures package. |
| AuthenticatedVerification | Checked envelope plus separate diagnostics; no display metadata enters evidence. |
| verify_authenticated | (&GovernanceSubject,&Profile,seed_hex,&dyn Solver)->Result<AuthenticatedVerification>; fresh/cache-free. |
| verify_migration_authenticated | (migration,source,target,&Profile,seed_hex,&dyn Solver)->Result<AuthenticatedVerification>. |
| authorize_trusted | (subject,candidate,evidence_policy,execution_policy,proofs,issuer_key_id,&AuthorizationContextV2)->Result<AuthorizationContentV2>; exact candidate/Q/policy judgment. |
| sign_authorization | (content,signing_key)->Result<SignedAuthorizationV2>; key matches issuer. |
| validate_trusted_authorization | (exact_subject/candidate,policy,complete_evidence,&AuthorizationContextV2)->Result<validated judgment>; independent Q at live commit, archived Q at replay. |

The data-replay checker uses archived attested manifest/policy/subject identities without
claiming semantic re-evaluation. Live commit/authorization cannot select that weaker mode.
Verifier signing does not accept arbitrary report JSON. Explicit typed key input only;
filesystem key reading is CLI/host work. Existing authorize/sign_waiver APIs remain available
for historical/development use; structural results cannot satisfy v2 required commits.
Authenticated verification returns a typed infrastructure error and no envelope on wall-clock
abort/non-reproducible results. Deterministic resource exhaustion may return an authenticated
inconclusive report. Semantic report/manifest accessors expose no diagnostic/cache metadata.

Offline authorization approves exact claimed semantics but cannot prove live evaluation/
commitment. Store rederives against immutable real parent. Signer/solver correctness and key
custody are explicit trust assumptions, not protection against already compromised trusted keys.

## Version information and consumer

engine_info advertises Wire0.8/decision0.7/new document formats/new verifier. Preserve its
historical wire_ir enumeration and add accepted_wire_ir from decoder constants.
Exports/manifest/schema/version docs change together at the minor release.

Consumer imports only behavior_engine. Exercise both invocation kinds, trusted state/migration
commits, mixed/command-only history, stream/replay and process recovery. No internal dependency,
supported path override or Core-to-ecosystem dependency. Exact pushed-revision consumer
verification precedes artifact construction/publication.
