//! Replay must reproduce evidence without constructing fresh commit authority.
#![allow(clippy::unwrap_used, clippy::expect_used)]

use super::*;
use std::cell::Cell;

/// A real reference backend with observable write attempts. Replay can populate
/// a reconstructible parent cache, but it cannot mutate canonical persistence.
struct AuthorityProbe {
    inner: crate::InMemoryBackend,
    writes: Cell<usize>,
}

impl Backend for AuthorityProbe {
    fn genesis(&self) -> Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> Result<Option<Head>, BackendError> {
        self.inner.head()
    }
    fn create(
        &mut self,
        _: &Genesis,
        _: &Head,
        _: &[EntityVersion],
        _: &[RefChange],
    ) -> Result<(), BackendError> {
        self.writes.set(self.writes.get() + 1);
        Err(BackendError("replay attempted canonical creation".into()))
    }
    fn version_at(
        &self,
        key: &EntityKey,
        position: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version_at(key, position)
    }
    fn version(
        &self,
        key: &EntityKey,
        revision: u64,
    ) -> Result<Option<EntityVersion>, BackendError> {
        self.inner.version(key, revision)
    }
    fn record(&self, position: u64) -> Result<Option<TransitionRecord>, BackendError> {
        self.inner.record(position)
    }
    fn removed_at(&self, key: &EntityKey) -> Result<Option<u64>, BackendError> {
        self.inner.removed_at(key)
    }
    fn incoming_at(&self, key: &EntityKey, position: u64) -> Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(key, position)
    }
    fn keys_at(&self, entity: &str, position: u64) -> Result<Vec<EntityKey>, BackendError> {
        self.inner.keys_at(entity, position)
    }
    fn keys_by_field_at(
        &self,
        entity: &str,
        field: &str,
        value: &Json,
        position: u64,
    ) -> Result<Option<Vec<EntityKey>>, BackendError> {
        self.inner.keys_by_field_at(entity, field, value, position)
    }
    fn used_at(&self, key: &EntityKey, position: u64) -> Result<bool, BackendError> {
        self.inner.used_at(key, position)
    }
    fn commit(
        &mut self,
        _: &str,
        _: &[EntityVersion],
        _: &[EntityKey],
        _: &[RefChange],
        _: &TransitionRecord,
        _: &Head,
    ) -> Result<crate::CasOutcome, BackendError> {
        self.writes.set(self.writes.get() + 1);
        Err(BackendError("replay attempted canonical commit".into()))
    }
}

fn authority(store: &Store<AuthorityProbe>, module: &Module) -> Json {
    let at = store.current().unwrap();
    let mut entities = Vec::new();
    for entity in module.entities().values() {
        let mut keys = store.backend().keys_at(entity.name(), at.position).unwrap();
        keys.sort();
        for key in keys {
            entities.push(json!({"key":key,"version":store.backend().version_at(&key,at.position).unwrap(),
                "used":store.backend().used_at(&key,at.position).unwrap(),
                "removed":store.backend().removed_at(&key).unwrap(),
                "incoming":store.backend().incoming_at(&key,at.position).unwrap().iter().map(RefEdge::to_json).collect::<Vec<_>>() }));
        }
    }
    let history: Vec<_> = (1..=at.position + 1)
        .map(|p| store.backend().record(p).unwrap())
        .collect();
    json!({"genesis":store.backend().genesis().unwrap(),"head":store.backend().head().unwrap(),"entities":entities,"history":history})
}

fn assert_no_candidate_authority(store: &Store<AuthorityProbe>) {
    assert_eq!(store.backend().writes.get(), 0);
    assert_eq!(BUNDLES.with(Cell::get), 0);
    if let Some(certificate) = store.validation_cache().unwrap().as_ref() {
        // Parent reconstruction is permitted. An uncommitted next history
        // position can never be a validation certificate produced by replay.
        let history = &certificate.identity.history;
        assert_eq!(store.history_at(history.position).unwrap(), *history);
    }
}

thread_local! {
    static BUNDLES: Cell<usize> = const { Cell::new(0) };
}

pub(super) fn note_bundle() {
    BUNDLES.with(|count| count.set(count.get() + 1));
}

fn action_store() -> (
    Module,
    Store<crate::InMemoryBackend>,
    behavior_core::invocation::RequestedInvocation,
) {
    let mut wire: Json = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/replay/018/rows/M08-C-D/module.json"
    ))
    .unwrap();
    wire["actions"] = json!([{
        "name":"noop", "loc":{"file":"018-unit.beh","line":1},
        "params":[{"name":"c","role":"state","type":{"t":"entity","name":"Culture"}}],
        "preconditions":[], "postconditions":[],
        "effects":[{"target":{"param":"c","field":"measurements"},
            "value":{"op":"field","param":"c","field":"measurements","loc":{"file":"018-unit.beh","line":1}},
            "loc":{"file":"018-unit.beh","line":1}}], "command_effects":[]
    }]);
    let module = behavior_core::admit(&wire.to_string()).unwrap();
    let policy = behavior_verify::governance::trusted::EvidencePolicyV2::from_json(
        r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#
    ).unwrap();
    let genesis = genesis_v2_for(
        &module,
        policy,
        vec![crate::documents::SeedEntity {
            entity: "Culture".into(),
            value: json!({"id":"c1","measurements":7}),
        }],
    )
    .unwrap();
    let store = Store::create(crate::InMemoryBackend::new(), &module, genesis).unwrap();
    let requested = behavior_core::invocation::RequestedInvocation::decode(
        r#"{"format":"behavior.invocation.v1","capability":"noop","bindings":{"c":{"entity":"Culture","id":"c1"}},"input":{},"context":{}}"#
    ).unwrap().0.unwrap();
    (module, store, requested)
}

#[test]
fn current_action_replay_does_not_construct_commit_bundle() {
    let (module, store, requested) = action_store();
    BUNDLES.with(|count| count.set(0));
    let fresh = store
        .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
        .unwrap();
    assert_eq!(fresh.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(
        fresh.bundle.is_some(),
        "fresh invocation must retain commit capability"
    );
    assert_eq!(
        BUNDLES.with(Cell::get),
        1,
        "construction probe must observe actual bundle"
    );
    let before = serde_json::to_value(store.backend().head().unwrap()).unwrap();
    BUNDLES.with(|count| count.set(0));
    let replay = store
        .replay_invocation(&module, &fresh.record.to_json_string())
        .unwrap();
    assert!(replay.matches, "{:?}", replay.diff);
    assert_eq!(
        serde_json::to_value(store.backend().head().unwrap()).unwrap(),
        before
    );
    assert_eq!(
        BUNDLES.with(Cell::get),
        0,
        "replay constructed fresh commit authority"
    );
}

#[test]
fn decoded_document_refusal_replay_does_not_construct_commit_bundle() {
    let (module, store, requested) = action_store();
    let mut intent = requested.as_json();
    intent["format"] = json!("behavior.capability_intent.v1");
    intent.as_object_mut().unwrap().remove("context");
    let context = json!({});

    // This is a genuine action intent which can produce an ALLOW bundle from
    // the actual Store. Its refusal below comes solely from the archived
    // standalone snapshot document, not an invented invalid action or binding.
    BUNDLES.with(|count| count.set(0));
    let fresh = store
        .invoke_intent(
            &module,
            &intent.to_string(),
            &context,
            "1970-01-01T00:00:00Z",
            None,
        )
        .unwrap();
    assert_eq!(fresh.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(fresh.bundle.is_some());
    assert_eq!(
        BUNDLES.with(Cell::get),
        1,
        "positive control must construct a real bundle"
    );

    let malformed_snapshot = json!({
        "format":"behavior.snapshot.v1",
        "data_version":fresh.record.as_json()["data_version"],
        "entities":{}, "facts":{}
    });
    let refused = behavior_core::invocation::invoke_document(
        &module,
        &intent.to_string(),
        &malformed_snapshot.to_string(),
        Some(&context),
    )
    .unwrap();
    assert_eq!(refused.outcome_kind(), "pre_evaluation_refusal");
    assert_eq!(
        refused.as_json()["outcome"]["decode_evidence"]["source_kind"],
        "documents"
    );
    assert_eq!(
        refused.as_json()["data_version"],
        fresh.record.as_json()["data_version"]
    );
    let standalone =
        behavior_core::invocation::replay_invocation(&module, &refused.to_json_string());
    assert!(
        standalone.matches,
        "legitimate decoded refusal must reproduce: {:?}",
        standalone.diff
    );

    let before = serde_json::to_value(store.backend().head().unwrap()).unwrap();
    BUNDLES.with(|count| count.set(0));
    let replay = store
        .replay_invocation(&module, &refused.to_json_string())
        .unwrap();
    assert!(
        replay.matches,
        "022 must reproduce rejected Snapshot evidence under independent history: {:?}",
        replay.diff
    );
    assert_eq!(
        serde_json::to_value(store.backend().head().unwrap()).unwrap(),
        before
    );
    assert_eq!(
        BUNDLES.with(Cell::get),
        0,
        "decode-evidence replay constructed fresh commit authority"
    );
}

#[test]
fn command_allow_and_archived_action_replay_have_no_candidate_authority() {
    let module = behavior_core::admit(include_str!(
        "../../../../tests/fixtures/resulting-state-validity/commands/module.json"
    ))
    .unwrap();
    let genesis: Genesis = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/resulting-state-validity/commands/genesis.json"
    ))
    .unwrap();
    let original = Store::create(crate::InMemoryBackend::new(), &module, genesis).unwrap();
    let store = Store::open(AuthorityProbe {
        inner: original.into_backend(),
        writes: Cell::new(0),
    })
    .unwrap();
    let requested = behavior_core::invocation::RequestedInvocation::decode(
        r#"{"format":"behavior.invocation.v1","capability":"receipt","bindings":{},"input":{"recipient":"customer-1"},"context":{}}"#
    ).unwrap().0.unwrap();
    BUNDLES.with(|count| count.set(0));
    let fresh = store
        .invoke(&module, &requested, "1970-01-01T00:00:00Z", None, None)
        .unwrap();
    assert_eq!(fresh.record.inner_record().unwrap()["result"], "ALLOW");
    assert!(
        !fresh.record.inner_record().unwrap()["commands"]["intents"]
            .as_array()
            .unwrap()
            .is_empty()
    );
    assert!(fresh.bundle.is_some());
    assert_eq!(
        BUNDLES.with(Cell::get),
        1,
        "fresh command control must construct actual authority"
    );
    let before = authority(&store, &module);
    let stream = crate::commands::CommandStreamRequest::from_json(&json!({
        "format":"behavior.command_stream_request.v1", "after":store.history_at(0).unwrap(), "max_records":100
    }).to_string()).unwrap();
    let committed_commands = store.commands_since(&stream).unwrap().as_json().clone();

    BUNDLES.with(|count| count.set(0));
    assert!(
        store
            .replay_invocation(&module, &fresh.record.to_json_string())
            .unwrap()
            .matches
    );
    assert_no_candidate_authority(&store);

    // Reproduce an independently captured old decision at its actual genesis
    // coordinate. No historic candidate is freshly committed or retagged.
    let archived: Json = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/resulting-state-validity/commands/bundle.json"
    ))
    .unwrap();
    let inner = &archived["record"];
    assert_eq!(inner["record_version"], "0.7");
    let mut wrapper = fresh.record.as_json().clone();
    wrapper["outcome"]["record"] = inner.clone();
    wrapper["outcome"]["record_id"] =
        json!(behavior_core::canonical::tagged_hash("behavior.transition.v1", inner).unwrap());
    wrapper.as_object_mut().unwrap().remove("record_id");
    wrapper["record_id"] = json!(format!(
        "invocation:{}",
        behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &wrapper).unwrap()
    ));
    let core = behavior_core::invocation::replay_invocation(&module, &wrapper.to_string());
    assert!(
        core.matches,
        "captured archived decision must reproduce: {:?}",
        core.diff
    );
    let replay = store
        .replay_invocation(&module, &wrapper.to_string())
        .unwrap();
    assert!(replay.matches, "{:?}", replay.diff);
    assert_no_candidate_authority(&store);

    let mut substituted = fresh.record.as_json().clone();
    substituted["outcome"]["record"]["commands"]["intents"][0]["payload"]["recipient"] =
        json!("forged");
    let mismatch = store
        .replay_invocation(&module, &substituted.to_string())
        .unwrap();
    assert!(!mismatch.matches);
    assert_no_candidate_authority(&store);
    let ambiguous = fresh
        .record
        .to_json_string()
        .replacen('{', "{\"format\":\"ambiguous\",", 1);
    assert!(
        !store
            .replay_invocation(&module, &ambiguous)
            .unwrap()
            .matches
    );
    assert_no_candidate_authority(&store);
    assert_eq!(authority(&store, &module), before);
    assert_eq!(
        store.commands_since(&stream).unwrap().as_json(),
        committed_commands
    );
    println!("AUXILIARY022 command-current-archived-no-candidate-authority");
}

#[test]
fn evaluation_error_and_decode_refusal_replay_only_reconstruct_parent_evidence() {
    let (module, original, _) = action_store();
    let store = Store::open(AuthorityProbe {
        inner: original.into_backend(),
        writes: Cell::new(0),
    })
    .unwrap();
    let mut read: Json = serde_json::from_str(include_str!(
        "../../../../tests/fixtures/replay/018/rows/M08-C-D/error/read.json"
    ))
    .unwrap();
    read["read"]["body"]["value"]["args"][1] =
        json!({"op":"lit","type":{"t":"int"},"value":0,"loc":{"file":"022-unit.beh","line":1}});
    let source = ReadSource::AdHoc(Box::new(
        behavior_core::read::admit_read(&module, &read.to_string()).unwrap(),
    ));
    let error = store
        .read(
            &module,
            &source,
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!({}),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(error.record.as_json()["result"], "EVALUATION_ERROR");
    let refused = store
        .read(
            &module,
            &ReadSource::Declared("inspect".into()),
            &BTreeMap::from([("c".into(), "c1".into())]),
            &json!([]),
            &json!({}),
            None,
        )
        .unwrap();
    assert_eq!(refused.record.as_json()["result"], "INVALID_INPUT");
    let before = authority(&store, &module);
    // Force genuine reconstructible parent validation on the next replay;
    // the only certificate admitted afterward must name committed history.
    *store.validation_cache().unwrap() = None;
    BUNDLES.with(|count| count.set(0));
    for record in [&error.record, &refused.record] {
        assert!(
            store
                .replay_read(&module, &record.to_json_string())
                .unwrap()
                .matches
        );
        assert_no_candidate_authority(&store);
        assert_eq!(authority(&store, &module), before);
    }
    println!("AUXILIARY022 semantic-error-refusal-parent-cache-only");
}
