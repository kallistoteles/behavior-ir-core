#![allow(clippy::unwrap_used, clippy::expect_used)]

//! T048: immutable pre017 computation remains reproducible, without making its
//! incomplete validity proof eligible for a fresh decision or a new commit.
//! Fixtures are real baseline commits, not current records relabeled as old.
mod common;

use std::cell::Cell;
use std::collections::{BTreeMap, BTreeSet};

use behavior_core::invocation::RequestedInvocation;
use behavior_core::migration::{Migration, admit_migration};
use behavior_core::read::ReadSource;
use behavior_core::semantic::module::Module;
use behavior_store::documents::{
    CommitBundle, EntityKey, EntityVersion, Genesis, Head, RefChange, StateRef, TransitionRecord,
};
use behavior_store::muhash::Accumulator;
use behavior_store::replay::{replay_behavior, replay_behavior_with, replay_data};
use behavior_store::{Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store};
use behavior_verify::governance::trusted::{
    AuthorizationContextV2, GovernanceSubject, validate_trusted_authorization,
};
use serde_json::{Value, json};

const NOW: &str = "2026-10-05T12:00:00Z";
const CURRENT_PROFILE: &str = "behavior.complete_resulting_state.v1";
const SIGNED_STORE: &str = include_str!(
    "../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/committed-store.json"
);
const SIGNED_GENESIS_STORE: &str = include_str!(
    "../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/genesis-store.json"
);
const SIGNED_STREAM: &str = include_str!(
    "../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/stream.stdout.txt"
);

#[derive(Default)]
struct Counted {
    inner: InMemoryBackend,
    creates: Cell<usize>,
    commits: Cell<usize>,
    keys: Cell<usize>,
}
impl Counted {
    fn reset(&self) {
        self.creates.set(0);
        self.commits.set(0);
        self.keys.set(0);
    }
}
impl Backend for Counted {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.inner.head()
    }
    fn create(
        &mut self,
        g: &Genesis,
        h: &Head,
        v: &[EntityVersion],
        r: &[RefChange],
    ) -> Result<(), BackendError> {
        self.creates.set(self.creates.get() + 1);
        self.inner.create(g, h, v, r)
    }
    fn version_at(&self, k: &EntityKey, p: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version_at(k, p)
    }
    fn version(&self, k: &EntityKey, r: u64) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.inner.record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(&self, k: &EntityKey, p: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(k, p)
    }
    fn keys_at(&self, t: &str, p: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.keys.set(self.keys.get() + 1);
        self.inner.keys_at(t, p)
    }
    fn used_at(&self, k: &EntityKey, p: u64) -> Result<bool, BackendError> {
        self.inner.used_at(k, p)
    }
    fn commit(
        &mut self,
        expected: &str,
        versions: &[EntityVersion],
        removed: &[EntityKey],
        refs: &[RefChange],
        event: &TransitionRecord,
        head: &Head,
    ) -> Result<CasOutcome, BackendError> {
        self.commits.set(self.commits.get() + 1);
        self.inner
            .commit(expected, versions, removed, refs, event, head)
    }
}

struct Frozen {
    module: Module,
    genesis: Genesis,
    event: TransitionRecord,
    expected_head: Option<Head>,
    stream: Option<Value>,
}
impl Frozen {
    fn bundle(&self) -> &CommitBundle {
        self.event.bundle.as_ref().unwrap()
    }
}
fn archive(name: &str) -> Value {
    common::json(
        &common::fixtures()
            .join("resulting-state-validity")
            .join(name),
    )
}
fn audit(kind: &str) -> Frozen {
    Frozen {
        module: behavior_core::admit(&archive("audit-counterexample/module.json").to_string())
            .unwrap(),
        genesis: serde_json::from_value(archive("audit-counterexample/genesis.json")).unwrap(),
        event: serde_json::from_value(archive(&format!(
            "audit-counterexample/{kind}.transition.json"
        )))
        .unwrap(),
        expected_head: None,
        stream: None,
    }
}
fn commands() -> Frozen {
    Frozen {
        module: behavior_core::admit(&archive("commands/module.json").to_string()).unwrap(),
        genesis: serde_json::from_value(archive("commands/genesis.json")).unwrap(),
        event: serde_json::from_value(archive("commands/transition.json")).unwrap(),
        expected_head: None,
        stream: Some(archive("commands/stream-page.json")),
    }
}
fn signed() -> Frozen {
    let v: Value = serde_json::from_str(SIGNED_STORE).unwrap();
    let initial: Value = serde_json::from_str(SIGNED_GENESIS_STORE).unwrap();
    assert_eq!(v["genesis"], initial["genesis"]);
    assert_eq!(v["records"].as_array().unwrap().len(), 1);
    Frozen {
        module: behavior_core::admit(&common::read(
            &common::fixtures().join("commands/modules/receipt.json"),
        ))
        .unwrap(),
        genesis: serde_json::from_value(v["genesis"].clone()).unwrap(),
        event: serde_json::from_value(v["records"][0].clone()).unwrap(),
        expected_head: Some(serde_json::from_value(v["head"].clone()).unwrap()),
        stream: Some(serde_json::from_str(SIGNED_STREAM).unwrap()),
    }
}

/// Test-host import of an actual already-durable event. This deliberately uses
/// Backend::commit, never the current live Store::commit authorization boundary.
/// The complete original event and content/history identities remain unchanged.
fn import(f: &Frozen) -> Store<Counted> {
    let seeded = Store::create(Counted::default(), &f.module, f.genesis.clone()).unwrap();
    let mut backend = seeded.into_backend();
    let parent = backend.head().unwrap().unwrap();
    assert_eq!(parent.state_ref, f.event.committed_on);
    assert_eq!(parent.last_record, f.event.previous_record);
    assert_eq!(f.bundle().record["result"], "ALLOW");
    assert_eq!(f.bundle().behavior_version, f.module.behavior_version());
    let mut acc = Accumulator::from_hex(&parent.acc_num, &parent.acc_den).unwrap();
    let mut versions = f.event.new_versions.clone();
    versions.extend(f.event.created.clone());
    for v in &versions {
        let declaration = &f.bundle().entity_declarations[&v.entity];
        assert_eq!(v.content(declaration).hash().unwrap(), v.content_hash);
        if let Some(old) = backend
            .version_at(&v.key(), parent.state_ref.position)
            .unwrap()
        {
            acc.remove(&old.content_hash).unwrap();
        }
        acc.insert(&v.content_hash).unwrap();
    }
    let removed: Vec<_> = f
        .event
        .removed
        .iter()
        .map(|r| EntityKey {
            entity: r.entity.clone(),
            id: r.id.clone(),
        })
        .collect();
    for key in &removed {
        acc.remove(
            &backend
                .version_at(key, parent.state_ref.position)
                .unwrap()
                .unwrap()
                .content_hash,
        )
        .unwrap();
    }
    assert_eq!(acc.state_id().unwrap(), f.event.result_state.state);
    let (acc_num, acc_den) = acc.to_hex();
    let next = Head {
        state_ref: f.event.result_state.clone(),
        acc_num,
        acc_den,
        last_record: f.event.hash().unwrap(),
        schema: parent.schema,
    };
    if let Some(expected) = &f.expected_head {
        assert_eq!(&next, expected, "match actual old host head bytes");
    }
    assert_eq!(
        backend
            .commit(
                &parent.last_record,
                &versions,
                &removed,
                &f.event.ref_changes,
                &f.event,
                &next,
            )
            .unwrap(),
        CasOutcome::Applied
    );
    backend.reset();
    let opened = Store::open(backend).unwrap();
    assert_eq!(opened.current().unwrap(), f.event.result_state);
    assert_eq!(opened.backend().record(1).unwrap(), Some(f.event.clone()));
    opened
}

fn authority(s: &Store<Counted>) -> Value {
    let head = s.backend().head().unwrap().unwrap();
    let genesis = s.genesis().unwrap();
    let mut keys = BTreeSet::new();
    for p in 0..=head.state_ref.position {
        for t in genesis.entity_declarations.keys() {
            keys.extend(s.backend().keys_at(t, p).unwrap());
        }
    }
    for id in ["e0", "new", "unrelated", "fresh", "absent"] {
        keys.insert(EntityKey {
            entity: "E".into(),
            id: id.into(),
        });
    }
    let lifetime: Vec<_> = keys.iter().map(|k| {
        let versions: Vec<_> = (0..=head.state_ref.position).map(|p| {
            json!({"position":p,"version":s.backend().version_at(k,p).unwrap(),
                "used":s.backend().used_at(k,p).unwrap(),
                "incoming":s.backend().incoming_at(k,p).unwrap().iter().map(RefEdge::to_json).collect::<Vec<_>>()})
        }).collect();
        json!({"key":k,"removed_at":s.backend().removed_at(k).unwrap(),"versions":versions})
    }).collect();
    let records: Vec<_> = (1..=head.state_ref.position + 1)
        .map(|p| s.backend().record(p).unwrap())
        .collect();
    json!({"genesis":genesis,"head":head,"records":records,"lifetime":lifetime})
}
fn unchanged(s: &Store<Counted>, before: &Value) {
    assert_eq!(authority(s), *before);
    assert_eq!(s.backend().creates.get(), 0);
    assert_eq!(s.backend().commits.get(), 0);
}
fn assert_stream(s: &Store<Counted>, f: &Frozen) {
    if let Some(expected) = &f.stream {
        let request = behavior_store::commands::CommandStreamRequest::from_json(
            &json!({"format":"behavior.command_stream_request.v1","after":s.history_at(0).unwrap()}).to_string(),
        ).unwrap();
        assert_eq!(&s.commands_since(&request).unwrap().as_json(), expected);
    }
}
fn behavior_replay(f: &Frozen) {
    let s = import(f);
    let before = authority(&s);
    let from = s.state_at(0).unwrap();
    let to = s.current().unwrap();
    let data = replay_data(&s, &from, &to);
    assert!(data.ok, "{data:?}");
    assert_eq!(data.checked, 1);
    let modules = BTreeMap::from([(f.module.behavior_version(), f.module.clone())]);
    let behavior = replay_behavior(&s, &modules, &from, &to);
    assert!(behavior.ok, "{behavior:?}");
    assert_eq!(behavior.checked, 1);
    assert_stream(&s, f);
    unchanged(&s, &before);
}
fn recover(f: &Frozen) {
    let mut s = import(f);
    let before = authority(&s);
    let bundle = f.bundle();
    let recovered = if let Some(e) = bundle.evidence.as_ref().and_then(|e| e.as_trusted()) {
        let q = AuthorizationContextV2::from_json(
            &bundle.authorization_context.as_ref().unwrap().to_string(),
            e.execution_policy(),
        )
        .unwrap();
        s.commit_with_context(&f.module, &bundle.evaluated_state, bundle, &q)
            .unwrap()
    } else {
        s.commit(&f.module, &bundle.evaluated_state, bundle)
            .unwrap()
    };
    assert!(recovered.already);
    assert_eq!(recovered.record_id, f.event.hash().unwrap());
    if bundle
        .evidence
        .as_ref()
        .is_some_and(|e| e.as_trusted().is_some())
    {
        assert_eq!(recovered.evidence_trust, Some("authenticated"));
    }
    assert_stream(&s, f);
    unchanged(&s, &before);
    if f.genesis.entity_declarations.contains_key("E") {
        s.backend().keys.set(0);
        let read = s.read(
            &f.module,
            &ReadSource::Declared("ratio".into()),
            &common::bind(&[("e", "e0")]),
            &json!({}),
            &json!({}),
            None,
        );
        assert_eq!(
            s.backend().keys.get(),
            1,
            "recovery never certifies child validity"
        );
        if f.bundle().record["input"]["id"] == "new" {
            assert!(read.unwrap_err().to_string().contains("STATE_INVALID"));
        } else {
            assert_eq!(read.unwrap().record.as_json()["value"], "2");
        }
    }
}

#[test]
fn frozen_valid_05_behavior_history_preserves_original_computation() {
    behavior_replay(&audit("valid-create"));
}
#[test]
fn frozen_invalid_05_allow_remains_reproducible_without_claiming_child_validity() {
    let f = audit("invalid-create");
    // Independent witness: the unchanged seed now points at a created identity.
    assert_eq!(f.genesis.seed[0].value["target"], "new");
    assert_eq!(f.event.created[0].id, "new");
    assert!(!f.event.created.iter().any(|v| v.id == "e0"));
    behavior_replay(&f);
}
#[test]
fn frozen_valid_05_exact_recovery_is_read_only_and_does_not_certify_the_child() {
    recover(&audit("valid-create"));
}
#[test]
fn frozen_invalid_05_exact_recovery_does_not_certify_the_bad_child() {
    recover(&audit("invalid-create"));
}
#[test]
fn frozen_unsigned_command_07_behavior_replay_preserves_occurrence_identity() {
    behavior_replay(&commands());
}
#[test]
fn frozen_unsigned_command_07_exact_recovery_does_not_append_commands() {
    recover(&commands());
}
#[test]
fn genuine_signed_08_history_data_replay_authenticates_original_evidence() {
    let f = signed();
    let s = import(&f);
    let before = authority(&s);
    let result = replay_data(&s, &s.state_at(0).unwrap(), &s.current().unwrap());
    assert!(result.ok, "{result:?}");
    assert_eq!(result.checked, 1);
    assert_stream(&s, &f);
    unchanged(&s, &before);
}
#[test]
fn genuine_signed_08_behavior_replay_uses_the_archived_proof_manifest() {
    // Keep this assertion unchanged across the profile bridge. Once that bridge
    // is fixed, a second RED can expose accidental current-verifier eligibility.
    behavior_replay(&signed());
}
#[test]
fn genuine_signed_08_exact_recovery_uses_original_authenticated_evidence() {
    recover(&signed());
}
#[test]
fn archived_08_proof_remains_ineligible_for_current_subject_authorization() {
    let f = signed();
    let b = f.bundle();
    let e = b.evidence.as_ref().unwrap().as_trusted().unwrap();
    let q = AuthorizationContextV2::from_json(
        &b.authorization_context.as_ref().unwrap().to_string(),
        e.execution_policy(),
    )
    .unwrap();
    let p = f.genesis.evidence_policy.as_trusted().unwrap();
    assert!(
        validate_trusted_authorization(
            &GovernanceSubject::Module(&f.module),
            &b.governance_candidate().unwrap(),
            p,
            e,
            &q
        )
        .is_err()
    );
}
#[test]
fn uncommitted_old_candidates_never_create_new_history() {
    for f in [
        audit("valid-create"),
        audit("invalid-create"),
        commands(),
        signed(),
    ] {
        let mut s = Store::create(Counted::default(), &f.module, f.genesis.clone()).unwrap();
        s.backend().reset();
        let before = authority(&s);
        let b = f.bundle();
        let result = if let Some(e) = b.evidence.as_ref().and_then(|e| e.as_trusted()) {
            let q = AuthorizationContextV2::from_json(
                &b.authorization_context.as_ref().unwrap().to_string(),
                e.execution_policy(),
            )
            .unwrap();
            s.commit_with_context(&f.module, &b.evaluated_state, b, &q)
        } else {
            s.commit(&f.module, &b.evaluated_state, b)
        };
        assert!(
            result.is_err(),
            "obsolete candidate became live history: {}",
            b.record
        );
        assert!(s.backend().record(1).unwrap().is_none());
        unchanged(&s, &before);
    }
}
#[test]
fn historical_signed_recovery_rejects_a_substituted_exact_candidate_context() {
    let f = signed();
    let mut s = import(&f);
    let before = authority(&s);
    let mut b = f.bundle().clone();
    b.authorization_context.as_mut().unwrap()["required_context"]["approved"] = json!(false);
    let e = b.evidence.as_ref().unwrap().as_trusted().unwrap();
    let q = AuthorizationContextV2::from_json(
        &f.bundle()
            .authorization_context
            .as_ref()
            .unwrap()
            .to_string(),
        e.execution_policy(),
    )
    .unwrap();
    assert!(
        s.commit_with_context(&f.module, &b.evaluated_state, &b, &q)
            .is_err()
    );
    unchanged(&s, &before);
}

fn wrapper(kind: &str) -> String {
    common::read(
        &common::fixtures()
            .join("resulting-state-validity/audit-counterexample")
            .join(format!("{kind}.invocation-record.json")),
    )
}
fn request(input: Value) -> RequestedInvocation {
    RequestedInvocation::decode(
        &json!({"format":"behavior.invocation.v1",
        "capability":"create","bindings":{},"context":{},"input":input})
        .to_string(),
    )
    .unwrap()
    .0
    .unwrap()
}
fn invocation_replay(kind: &str) {
    let f = audit(kind);
    let s = import(&f);
    let before = authority(&s);
    let bytes = wrapper(kind);
    let pure = behavior_core::invocation::replay_invocation(&f.module, &bytes);
    assert!(pure.matches, "{:?}", pure.diff);
    let historical = s.replay_invocation(&f.module, &bytes).unwrap();
    assert!(historical.matches, "{:?}", historical.diff);
    unchanged(&s, &before);
}
#[test]
fn frozen_valid_05_invocation_replay_keeps_original_wrapper_identity() {
    invocation_replay("valid-create");
}
#[test]
fn frozen_invalid_05_invocation_replay_keeps_original_allow_and_wrapper_identity() {
    invocation_replay("invalid-create");
}
#[test]
fn rehashed_old_invocation_cannot_substitute_store_or_history_position() {
    let f = audit("valid-create");
    let s = import(&f);
    let before = authority(&s);
    let original: Value = serde_json::from_str(&wrapper("valid-create")).unwrap();
    let foreign = format!(
        "store:sha256:{};state:{};position:0",
        "0".repeat(64),
        f.bundle().evaluated_state.state,
    );
    let wrong_position =
        behavior_store::documents::data_version(&s.store_id().unwrap(), &s.current().unwrap());
    for substituted in [foreign, wrong_position] {
        // This is an explicitly tampered derivative of a frozen record, not a
        // claim that the baseline produced another historical fixture. Rehash
        // both layers so stale transport hashes cannot be the sole defense.
        let mut forged = original.clone();
        forged["data_version"] = json!(substituted);
        forged["outcome"]["record"]["data_version"] = forged["data_version"].clone();
        forged["outcome"]["record_id"] =
            json!(behavior_store::store::transition_hash(&forged["outcome"]["record"],).unwrap());
        forged.as_object_mut().unwrap().remove("record_id");
        let id = behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &forged)
            .unwrap();
        forged["record_id"] = json!(format!("invocation:{id}"));
        let replay = s.replay_invocation(&f.module, &forged.to_string()).unwrap();
        assert!(!replay.matches, "a substituted history basis was accepted");
        unchanged(&s, &before);
    }
}
#[test]
fn fresh_past_invocations_use_current_complete_validation_without_live_candidates() {
    let f = audit("valid-create");
    let s = import(&f);
    let before = authority(&s);
    let parent = s.state_at(0).unwrap();
    for (id, outcome) in [("unrelated", "ALLOW"), ("new", "DENY")] {
        let result = s
            .invoke(
                &f.module,
                &request(json!({"id":id})),
                NOW,
                None,
                Some(&parent),
            )
            .unwrap();
        let inner = result.record.inner_record().unwrap();
        assert_eq!(inner["record_version"], "0.8");
        assert_eq!(inner["validation_profile"], CURRENT_PROFILE);
        assert_eq!(inner["result"], outcome);
        if outcome == "DENY" {
            assert_eq!(inner["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
        }
        assert!(
            result.bundle.is_none(),
            "past invocation has no live authority"
        );
        unchanged(&s, &before);
    }
}
#[test]
fn replay_and_recovery_of_bad_old_child_cannot_enable_any_fresh_head_operation() {
    let f = audit("invalid-create");
    let mut s = import(&f);
    let head = s.current().unwrap();
    let keys = s.backend().keys_at("E", head.position).unwrap();
    let values: BTreeMap<_, _> = keys
        .iter()
        .map(|k| {
            (
                k.id.clone(),
                s.backend()
                    .version_at(k, head.position)
                    .unwrap()
                    .unwrap()
                    .value,
            )
        })
        .collect();
    // Direct finite-set oracle, independent of full/incremental validation.
    assert!(values.contains_key(values["e0"]["target"].as_str().unwrap()));
    let standalone = behavior_core::replay(&f.module, &f.bundle().record.to_string());
    assert!(standalone.matches, "{:?}", standalone.diff);
    let before = authority(&s);
    assert!(
        s.commit(&f.module, &f.bundle().evaluated_state, f.bundle())
            .unwrap()
            .already
    );
    for _ in 0..2 {
        let read = s
            .read(
                &f.module,
                &ReadSource::Declared("ratio".into()),
                &common::bind(&[("e", "e0")]),
                &json!({}),
                &json!({}),
                None,
            )
            .unwrap_err();
        let action = s
            .evaluate(
                &f.module,
                "set",
                &common::bind(&[("e", "e0")]),
                &json!({}),
                &json!({}),
                NOW,
                None,
            )
            .unwrap_err();
        let invocation = s
            .invoke(&f.module, &request(json!({"id":"fresh"})), NOW, None, None)
            .unwrap_err();
        for error in [read, action, invocation] {
            assert!(error.to_string().contains("STATE_INVALID"), "{error}");
        }
        unchanged(&s, &before);
    }
}

fn schema_change(f: &Frozen) -> (Module, Migration) {
    let mut wire = archive("audit-counterexample/module.json");
    let loc = json!({"file":"017-history-migration.beh","line":1});
    wire["entities"][0]["fields"]
        .as_array_mut()
        .unwrap()
        .push(json!({"name":"z","type":{"t":"int"},"loc":loc}));
    let zero = json!({"op":"lit","type":{"t":"int"},"value":0,"loc":loc});
    wire["actions"][1]["effects"][0]["fields"]["z"] = zero.clone();
    let target = behavior_core::admit(&wire.to_string()).unwrap();
    let source_hash = behavior_core::schema(&f.module).hash;
    let target_hash = behavior_core::schema(&target).hash;
    assert_ne!(source_hash, target_hash);
    let migration = admit_migration(
        &f.module,
        &target,
        &json!({"migration_ir":"0.1",
            "name":"add_history_test_field","source":source_hash,"target":target_hash,
            "requirements":[],"constants":[],"retire":[],
            "transforms":[{"entity":"E","fields":{"z":zero},"drops":[],"loc":loc}]
        })
        .to_string(),
    )
    .unwrap();
    (target, migration)
}
fn migrated(f: &Frozen) -> (Store<Counted>, Module, Migration) {
    let mut s = import(f);
    let (target, migration) = schema_change(f);
    s.migrate(&migration, &f.module, &target, NOW, None)
        .unwrap();
    assert_eq!(s.current().unwrap().position, 2);
    s.backend().reset();
    (s, target, migration)
}
fn ratio(
    s: &Store<Counted>,
    m: &Module,
    at: Option<&StateRef>,
) -> behavior_core::read::ReadExecution {
    s.read(
        m,
        &ReadSource::Declared("ratio".into()),
        &common::bind(&[("e", "e0")]),
        &json!({}),
        &json!({}),
        at,
    )
    .unwrap()
}
#[test]
fn current_reads_replay_with_the_exact_historical_schema_after_a_real_migration() {
    let f = audit("valid-create");
    let mut s = import(&f);
    let past = s.current().unwrap();
    let past_read = ratio(&s, &f.module, Some(&past)).record;
    let (target, migration) = schema_change(&f);
    s.migrate(&migration, &f.module, &target, NOW, None)
        .unwrap();
    s.backend().reset();
    let before = authority(&s);
    let current = s.current().unwrap();
    assert_eq!(ratio(&s, &f.module, Some(&past)).record, past_read);
    assert_eq!(ratio(&s, &target, None).record.as_json()["value"], "2");
    assert!(
        s.replay_read(&f.module, &past_read.to_json_string())
            .unwrap()
            .matches
    );
    for (m, at) in [(&f.module, &current), (&target, &past)] {
        let error = s
            .read(
                m,
                &ReadSource::Declared("ratio".into()),
                &common::bind(&[("e", "e0")]),
                &json!({}),
                &json!({}),
                Some(at),
            )
            .unwrap_err();
        assert_eq!(error.code(), "SCHEMA_MISMATCH");
    }
    unchanged(&s, &before);
}
#[test]
fn mixed_old_action_and_current_migration_history_uses_each_recorded_profile() {
    let f = audit("valid-create");
    let (s, target, migration) = migrated(&f);
    let before = authority(&s);
    let from = s.state_at(0).unwrap();
    let to = s.current().unwrap();
    let data = replay_data(&s, &from, &to);
    assert!(data.ok, "{data:?}");
    assert_eq!(data.checked, 2);
    let modules = BTreeMap::from([
        (f.module.behavior_version(), f.module.clone()),
        (target.behavior_version(), target.clone()),
    ]);
    let migrations = BTreeMap::from([(migration.hash(), (migration, f.module.clone(), target))]);
    let replay = replay_behavior_with(&s, &modules, &migrations, &from, &to);
    assert!(replay.ok, "{replay:?}");
    assert_eq!(replay.checked, 2);
    unchanged(&s, &before);
}
#[test]
fn old_action_invocation_replays_at_its_original_position_after_schema_change() {
    let f = audit("valid-create");
    let (s, target, _) = migrated(&f);
    let before = authority(&s);
    let bytes = wrapper("valid-create");
    let replay = s.replay_invocation(&f.module, &bytes).unwrap();
    assert!(replay.matches, "{:?}", replay.diff);
    assert!(!s.replay_invocation(&target, &bytes).unwrap().matches);
    unchanged(&s, &before);
}
