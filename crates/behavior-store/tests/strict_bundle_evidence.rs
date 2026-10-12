#![allow(clippy::unwrap_used, clippy::expect_used)]
//! A locally sound evidence envelope is not proof that its observations are true.
//! Live commitment independently checks the exact immutable parent, authorization,
//! and publication obligations. Public mutable bundles are checked afresh.

mod common;
#[path = "support/history_backend.rs"]
mod history_backend;

use std::collections::{BTreeMap, BTreeSet};

use behavior_core::semantic::module::Module;
use behavior_store::documents::{CommitBundle, EvidencePolicy, SeedEntity};
use behavior_store::store::{genesis_for, genesis_v2_for};
use behavior_store::{Backend, InMemoryBackend, Store};
use behavior_verify::governance::trusted::{
    AuthorizationContextV2, EvidencePolicyV2, EvidenceV2, ExecutionPolicyV2, GovernanceCandidate,
    GovernanceSubject, authorize_trusted, sign_authorization,
};
use behavior_verify::hashing::{TAG_QUERY_RESULT, document_hash};
use history_backend::FaultBackend;
use serde_json::{Value, json};
use sha2::{Digest, Sha256};

fn policy_document(name: &str) -> Value {
    common::json(&common::fixtures().join("governance-v2").join(name))
}

fn execution_policy() -> ExecutionPolicyV2 {
    ExecutionPolicyV2::from_json(&policy_document("policy-none.json").to_string()).unwrap()
}

fn evidence_policy(required: bool) -> EvidencePolicyV2 {
    let mut raw = policy_document(if required {
        "evidence-policy.json"
    } else {
        "evidence-policy-none.json"
    });
    if required {
        raw["execution_policies"] = json!([execution_policy().hash()]);
    }
    EvidencePolicyV2::from_json(&raw.to_string()).unwrap()
}

fn authorization_context(policy: &ExecutionPolicyV2) -> AuthorizationContextV2 {
    let mut raw = policy_document("context-unbound.json");
    raw["policy_time"] = json!("2026-10-05T12:00:00Z");
    AuthorizationContextV2::from_json(&raw.to_string(), policy).unwrap()
}

/// Sign the exact admitted module and candidate; no fixture-ledger substitution.
fn exact_evidence(
    module: &Module,
    bundle: &CommitBundle,
    policy: &EvidencePolicyV2,
) -> (EvidenceV2, AuthorizationContextV2) {
    let execution = execution_policy();
    let context = authorization_context(&execution);
    let key = policy_document("evidence-policy.json")["trusted_authorities"][0]["key_id"]
        .as_str()
        .unwrap()
        .to_owned();
    let authorization = authorize_trusted(
        &GovernanceSubject::Module(module),
        &bundle.governance_candidate().unwrap(),
        policy,
        &execution,
        &[],
        &key,
        &context,
    )
    .unwrap();
    let seed = common::read(&common::fixtures().join("governance-v2/authorizer.seed"));
    let signed = sign_authorization(&authorization, seed.trim()).unwrap();
    let evidence = EvidenceV2::from_json(
        &json!({"format":"behavior.evidence.v2", "execution_policy":execution.as_json(),
            "authorization":signed.as_json(), "verifications":[], "waivers":[],
            "waiver_signatures":[]})
        .to_string(),
    )
    .unwrap();
    (evidence, context)
}

fn query_setup(required: bool) -> (Module, Store<FaultBackend>, EvidencePolicyV2, CommitBundle) {
    let module = common::orders();
    let policy = evidence_policy(required);
    let store = Store::create(
        FaultBackend::default(),
        &module,
        genesis_v2_for(&module, policy.clone(), common::orders_seed()).unwrap(),
    )
    .unwrap();
    let evaluation = store
        .evaluate(
            &module,
            "place_order",
            &common::bind(&[("customer", "c1")]),
            &json!({"order_id":"new", "amount":"20.00"}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap();
    assert_eq!(evaluation.record["result"], "ALLOW");
    let bundle = evaluation.bundle.unwrap();
    assert_eq!(bundle.format, "behavior.commit_bundle.v2");
    assert!(!bundle.read_facts["queries"].as_array().unwrap().is_empty());
    (module, store, policy, bundle)
}

/// Includes complete in-memory implementation state as well as bounded semantic
/// views of every relevant lifetime, version, reference, event and command.
fn authority(store: &Store<FaultBackend>) -> Value {
    let backend = &store.backend().inner;
    let head = backend.head().unwrap().unwrap();
    let position = head.state_ref.position;
    let mut keys = BTreeSet::from([common::key("Order", "new"), common::key("Order", "forged")]);
    let mut memberships = Vec::new();
    for at in 0..=position {
        for entity in ["Customer", "Employee", "Order"] {
            let members = backend.keys_at(entity, at).unwrap();
            keys.extend(members.iter().cloned());
            memberships.push(json!({"at":at,"entity":entity,"keys":members}));
        }
    }
    let entities = keys.iter().map(|key| {
        let versions = (1..=position + 2).map(|revision| backend.version(key, revision).unwrap()).collect::<Vec<_>>();
        let incoming = (0..=position).map(|at| json!({"at":at,"edges":backend.incoming_at(key, at).unwrap().iter().map(behavior_store::RefEdge::to_json).collect::<Vec<_>>()})).collect::<Vec<_>>();
        json!({"key":key,"versions":versions,"latest":backend.version_at(key,position).unwrap(),"removed":backend.removed_at(key).unwrap(),"used":backend.used_at(key,position).unwrap(),"incoming":incoming})
    }).collect::<Vec<_>>();
    let records = (1..=position + 1)
        .map(|at| backend.record(at).unwrap())
        .collect::<Vec<_>>();
    let commands = records.iter().filter_map(|record| record.as_ref()).map(|record| json!({"position":record.position,"commands":record.bundle.as_ref().map(|bundle|bundle.record["commands"].clone())})).collect::<Vec<_>>();
    json!({"genesis":backend.genesis().unwrap(),"head":head,"memberships":memberships,
        "entities":entities,"records":records,"commands":commands,"complete_backend":format!("{backend:?}")})
}

fn forge_members(bundle: &CommitBundle) -> CommitBundle {
    let mut forged = bundle.clone();
    let query = &mut forged.read_facts["queries"][0];
    query["members"] = json!([{"id":"forged"}]);
    query["result_hash"] = json!(document_hash(TAG_QUERY_RESULT, &query["members"]).unwrap());
    forged.transition_hash = forged.governance_candidate().unwrap().hash().to_owned();
    forged
}

fn locally_accepted(bundle: &CommitBundle) {
    let candidate = bundle.governance_candidate().unwrap();
    assert_eq!(candidate.hash(), bundle.transition_hash);
    assert_eq!(
        candidate.as_json()["content"]["read_facts"],
        bundle.read_facts
    );
    let raw = serde_json::to_string(bundle).unwrap();
    assert_eq!(CommitBundle::from_json(&raw).unwrap(), *bundle);
    assert!(bundle.hash().is_ok());
}

#[test]
fn locally_consistent_forged_members_cannot_publish() {
    let (module, mut store, _, bundle) = query_setup(false);
    locally_accepted(&bundle);
    let forged = forge_members(&bundle);
    locally_accepted(&forged);
    let before = authority(&store);
    let error = store
        .commit(&module, &forged.evaluated_state, &forged)
        .unwrap_err();
    assert_eq!(error.code(), "BUNDLE_INVALID");
    assert_eq!(
        error.to_string(),
        "BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent"
    );
    assert_eq!(store.backend().commit_calls, 0);
    assert_eq!(authority(&store), before);
    // An independently produced valid candidate reaches publication normally.
    store
        .commit(&module, &bundle.evaluated_state, &bundle)
        .unwrap();
    assert_eq!(store.backend().commit_calls, 1);
    assert_eq!(store.current().unwrap().position, 1);
}

#[test]
fn freshly_authorized_forged_members_cannot_publish() {
    let (module, mut store, policy, bundle) = query_setup(true);
    let forged = forge_members(&bundle);
    locally_accepted(&forged);
    let (evidence, context) = exact_evidence(&module, &forged, &policy);
    assert_eq!(
        evidence.as_json()["authorization"]["content"]["candidate_transition_hash"],
        forged.transition_hash
    );
    let forged = forged.with_trusted_evidence(&evidence).unwrap();
    locally_accepted(&forged);
    let before = authority(&store);
    let error = store
        .commit_with_context(&module, &forged.evaluated_state, &forged, &context)
        .unwrap_err();
    assert_eq!(error.code(), "BUNDLE_INVALID");
    assert_eq!(
        error.to_string(),
        "BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent"
    );
    assert_eq!(store.backend().commit_calls, 0);
    assert_eq!(authority(&store), before);
    let (evidence, context) = exact_evidence(&module, &bundle, &policy);
    let allowed = bundle.with_trusted_evidence(&evidence).unwrap();
    let committed = store
        .commit_with_context(&module, &allowed.evaluated_state, &allowed, &context)
        .unwrap();
    assert_eq!(committed.evidence_trust, Some("authenticated"));
    assert_eq!(store.backend().commit_calls, 1);
    assert_eq!(store.current().unwrap().position, 1);
}

#[test]
fn checked_candidate_preserves_original_claim_and_cannot_certify_a_mutation() {
    let (_, store, _, bundle) = query_setup(false);
    let original = bundle.governance_candidate().unwrap();
    let original_json = original.as_json();
    let original_hash = original.hash().to_owned();
    let before = authority(&store);
    let mut changed = bundle.clone();
    changed.read_facts["queries"][0]["members"] = json!([{"id":"forged"}]);
    let error = changed.governance_candidate().unwrap_err();
    assert_eq!(error.code(), "BUNDLE_INVALID");
    assert!(
        error.to_string().contains(
            "read_facts.queries[0].result_hash: result hash differs from canonical members"
        ),
        "{error}"
    );
    assert!(changed.hash().is_err());
    assert_eq!(original.as_json(), original_json);
    assert_eq!(original.hash(), original_hash);
    assert_eq!(authority(&store), before);
    assert_eq!(store.backend().commit_calls, 0);
}

#[test]
fn checked_raw_bundle_hash_rejects_a_stale_candidate_identity() {
    let (_, store, _, bundle) = query_setup(false);
    let mut changed = forge_members(&bundle);
    assert_ne!(changed.transition_hash, bundle.transition_hash);
    changed.transition_hash = bundle.transition_hash.clone();
    // Adapting the changed claim produces its newly checked identity; the public
    // bundle hash then detects that its existing subject is stale.
    assert_ne!(
        changed.governance_candidate().unwrap().hash(),
        changed.transition_hash
    );
    let error = changed.hash().unwrap_err();
    assert_eq!(error.code(), "BUNDLE_INVALID");
    assert_eq!(
        error.to_string(),
        "BUNDLE_INVALID: v2 candidate identity differs"
    );
    assert!(CommitBundle::from_json(&serde_json::to_string(&changed).unwrap()).is_err());
    assert_eq!(store.backend().commit_calls, 0);
}

#[test]
fn trusted_attachment_rechecks_local_integrity_after_public_bundle_mutation() {
    let (module, store, policy, bundle) = query_setup(true);
    let (evidence, _) = exact_evidence(&module, &bundle, &policy);
    let authorized = bundle.with_trusted_evidence(&evidence).unwrap();
    assert_eq!(authorized.read_facts, bundle.read_facts);
    assert_eq!(authorized.transition_hash, bundle.transition_hash);
    let mut changed = authorized;
    changed.read_facts["queries"][0]["result_hash"] = json!(format!("sha256:{}", "0".repeat(64)));
    let error = changed.with_trusted_evidence(&evidence).unwrap_err();
    assert_eq!(error.code(), "BUNDLE_INVALID");
    assert!(
        error.to_string().contains(
            "read_facts.queries[0].result_hash: result hash differs from canonical members"
        ),
        "{error}"
    );
    assert!(changed.hash().is_err());
    assert_eq!(store.backend().commit_calls, 0);
}

#[test]
fn old_authorization_cannot_attach_to_a_new_locally_valid_claim() {
    let (module, store, policy, bundle) = query_setup(true);
    let (old_evidence, _) = exact_evidence(&module, &bundle, &policy);
    let original_signature_subject = old_evidence.as_json();
    let changed = forge_members(&bundle);
    locally_accepted(&changed);
    let error = changed.with_trusted_evidence(&old_evidence).unwrap_err();
    assert_eq!(error.code(), "EVIDENCE_MISMATCH");
    assert_eq!(old_evidence.as_json(), original_signature_subject);
    assert_eq!(
        old_evidence.as_json()["authorization"]["content"]["candidate_transition_hash"],
        bundle.transition_hash
    );
    assert_eq!(store.backend().commit_calls, 0);
}

#[test]
fn raw_candidate_projection_keeps_every_original_integrity_field() {
    let (_, _, _, bundle) = query_setup(false);
    let claim = bundle.governance_candidate().unwrap().as_json();
    let checked = GovernanceCandidate::from_json(&claim.to_string()).unwrap();
    assert_eq!(checked.as_json(), claim);
    assert_eq!(checked.hash(), bundle.transition_hash);
    assert!(
        checked.as_json()["content"]["read_facts"]["queries"]
            .as_array()
            .unwrap()
            .iter()
            .all(|query| query.get("result_hash").is_some())
    );
}

#[derive(Clone, Copy, Debug)]
enum Producer {
    Evaluate,
    Invoke,
    Intent,
}

impl Producer {
    fn name(self) -> &'static str {
        match self {
            Self::Evaluate => "evaluate",
            Self::Invoke => "invoke",
            Self::Intent => "invoke_intent",
        }
    }
}

const PRODUCERS: [Producer; 3] = [Producer::Evaluate, Producer::Invoke, Producer::Intent];

#[derive(Clone, Copy, Debug)]
enum Recipe {
    Empty,
    NoQuery,
    Lifecycle,
    References,
    SingleQuery,
    MultipleQueries,
    Mixed,
    Values,
}

impl Recipe {
    fn name(self) -> &'static str {
        match self {
            Self::Empty => "empty",
            Self::NoQuery => "no-query",
            Self::Lifecycle => "lifecycle",
            Self::References => "incoming-references",
            Self::SingleQuery => "empty-single-query",
            Self::MultipleQueries => "multiple-queries",
            Self::Mixed => "all-five-sections",
            Self::Values => "typed-capture-and-field-values",
        }
    }
    fn has_queries(self) -> bool {
        matches!(
            self,
            Self::SingleQuery | Self::MultipleQueries | Self::Mixed | Self::Values
        )
    }
}

fn expr(op: &str, fields: Value) -> Value {
    let mut object = fields.as_object().unwrap().clone();
    object.insert("op".into(), json!(op));
    object.insert(
        "loc".into(),
        json!({"file":"strict_bundle_evidence.dsl","line":1}),
    );
    Value::Object(object)
}

fn obligation(expression: Value) -> Value {
    json!({"expr":expression,"loc":{"file":"strict_bundle_evidence.dsl","line":1}})
}

/// Test-owned admitted programs use existing language constructs. They never
/// rewrite historical fixture bytes or fabricate already-produced observations.
fn recipe_document(recipe: Recipe, wire: &str) -> Value {
    let fixture = match recipe {
        Recipe::Empty | Recipe::NoQuery => "wire/valid/ledger.json",
        Recipe::Lifecycle | Recipe::References | Recipe::Mixed | Recipe::Values => {
            "wire/valid/accounts.json"
        }
        Recipe::SingleQuery | Recipe::MultipleQueries => "wire/valid/orders.json",
    };
    let mut raw = common::json(&common::fixtures().join(fixture));
    if matches!(recipe, Recipe::Empty) {
        // A fresh test-owned unconstrained touch produces genuinely no observed
        // facts. The original ledger's complete child checks read other balances.
        raw["constraints"] = json!([]);
    }
    raw["ir_version"] = json!(wire);
    if wire >= "0.7" {
        raw["reads"] = json!([]);
    }
    if matches!(recipe, Recipe::Values) {
        // This test-owned module has only the observation probe; unrelated
        // original create actions do not initialize its additional test fields.
        raw["actions"] = json!([]);
        let loc = json!({"file":"strict_bundle_evidence.dsl","line":1});
        let account = raw["entities"]
            .as_array_mut()
            .unwrap()
            .iter_mut()
            .find(|entity| entity["name"] == "Account")
            .unwrap();
        for (name, ty) in [
            ("enabled", json!({"t":"bool"})),
            ("level", json!({"t":"int"})),
            ("tag", json!({"t":"option","of":{"t":"string"}})),
        ] {
            account["fields"]
                .as_array_mut()
                .unwrap()
                .push(json!({"name":name,"type":ty,"loc":loc}));
        }
        let comparisons=[("enabled","flag"),("level","threshold"),("tag","label")].map(|(field,param)|expr("eq",json!({"args":[
            expr("field",json!({"param":"a","field":field})),expr("param",json!({"param":param}))]})));
        let selected = expr(
            "where",
            json!({"args":[expr("select",json!({"entity":"Account"}))],"param":"a",
            "body":expr("and",json!({"args":[comparisons[0].clone(),expr("and",json!({"args":[comparisons[1].clone(),comparisons[2].clone()]}))]}))}),
        );
        raw["actions"].as_array_mut().unwrap().push(json!({"name":"inspect_typed_values","params":[
            {"name":"customer","role":"state","type":{"t":"entity","name":"Customer"}},
            {"name":"flag","role":"input","type":{"t":"bool"}},
            {"name":"threshold","role":"input","type":{"t":"int"}},
            {"name":"label","role":"input","type":{"t":"option","of":{"t":"string"}}}
        ],"preconditions":[obligation(expr("eq",json!({"args":[expr("count",json!({"args":[selected]})),expr("lit",json!({"type":{"t":"int"},"value":1}))]})))],
            "postconditions":[],"effects":[],"loc":loc}));
    }
    if wire == "0.8" {
        raw["commands"] = json!([]);
    }
    if matches!(recipe, Recipe::References) {
        let id = expr("field", json!({"param":"customer","field":"id"}));
        raw["actions"].as_array_mut().unwrap().push(json!({
            "name":"inspect_references", "params":[{"name":"customer","role":"state","type":{"t":"entity","name":"Customer"}}],
            "preconditions":[obligation(expr("referenced",json!({"args":[id]})))],
            "postconditions":[],"effects":[],"loc":{"file":"strict_bundle_evidence.dsl","line":1}
        }));
    }
    if matches!(recipe, Recipe::Mixed) {
        let selected = expr("select", json!({"entity":"Account"}));
        let owned = expr(
            "where",
            json!({"args":[selected.clone()],"param":"a","body":expr("eq",json!({"args":[
                expr("field",json!({"param":"a","field":"owner"})),
                expr("field",json!({"param":"customer","field":"id"}))
            ]}))}),
        );
        let zero = expr("lit", json!({"type":{"t":"int"},"value":0}));
        let money_zero = expr(
            "lit",
            json!({"type":{"t":"nominal","name":"Money"},"value":"0"}),
        );
        let balance = expr(
            "sum",
            json!({"args":[selected],"param":"a","body":expr("field",json!({"param":"a","field":"balance"}))}),
        );
        raw["actions"].as_array_mut().unwrap().push(json!({
            "name":"replace_unreferenced_customer", "params":[
                {"name":"customer","role":"state","type":{"t":"entity","name":"Customer"}},
                {"name":"replacement","role":"input","type":{"t":"id","entity":"Customer"}},
                {"name":"name","role":"input","type":{"t":"string"}}
            ],
            "preconditions":[obligation(expr("eq",json!({"args":[expr("count",json!({"args":[owned]})),zero]}))),
                obligation(expr("ge",json!({"args":[balance,money_zero]})))],
            "postconditions":[],"effects":[
                {"remove":"customer","loc":{"file":"strict_bundle_evidence.dsl","line":1}},
                {"create":"Customer","id":expr("param",json!({"param":"replacement"})),
                    "fields":{"name":expr("param",json!({"param":"name"}))},"loc":{"file":"strict_bundle_evidence.dsl","line":1}}
            ],"loc":{"file":"strict_bundle_evidence.dsl","line":1}
        }));
    }
    if wire == "0.8" {
        // The current profile forbids unrelated effectless legacy actions. This
        // is a fresh test-owned program containing exactly its selected action,
        // not a claim that an old profile is interpreted as the new one.
        let selected = recipe_input(recipe).1;
        raw["actions"]
            .as_array_mut()
            .unwrap()
            .retain(|action| action["name"] == selected);
        for action in raw["actions"].as_array_mut().unwrap() {
            action["command_effects"] = json!([]);
            if action["effects"].as_array().unwrap().is_empty() {
                action["effects"] = json!([{"target":{"param":"customer","field":"name"},
                    "value":expr("field",json!({"param":"customer","field":"name"})),
                    "loc":{"file":"strict_bundle_evidence.dsl","line":1}}]);
            }
        }
    }
    raw
}

type RecipeInput = (
    Vec<SeedEntity>,
    &'static str,
    BTreeMap<String, String>,
    Value,
);

fn recipe_input(recipe: Recipe) -> RecipeInput {
    match recipe {
        Recipe::Empty => (
            common::default_seed(),
            "touch",
            common::bind(&[("account", "a1")]),
            json!({}),
        ),
        Recipe::NoQuery => (
            common::default_seed(),
            "freeze",
            common::bind(&[("account", "a1")]),
            json!({}),
        ),
        Recipe::Lifecycle => (
            common::accounts_seed(),
            "open_account",
            common::bind(&[("owner", "c2")]),
            json!({"account_id":"new-account","initial":"1.00"}),
        ),
        Recipe::References => (
            common::accounts_seed(),
            "inspect_references",
            common::bind(&[("customer", "c1")]),
            json!({}),
        ),
        Recipe::SingleQuery => (
            vec![
                common::customer_seed("c1", "100.00"),
                common::customer_seed("c2", "100.00"),
            ],
            "hire",
            BTreeMap::new(),
            json!({"employee_id":"e-new","number":"N2"}),
        ),
        Recipe::MultipleQueries => (
            common::orders_seed(),
            "place_order",
            common::bind(&[("customer", "c1")]),
            json!({"order_id":"new","amount":"20.00"}),
        ),
        Recipe::Mixed => (
            common::accounts_seed(),
            "replace_unreferenced_customer",
            common::bind(&[("customer", "c3")]),
            json!({"replacement":"c4","name":"Dee"}),
        ),
        Recipe::Values => {
            let mut seed = common::accounts_seed();
            for entity in &mut seed {
                if entity.entity == "Account" {
                    entity.value["enabled"] = json!(true);
                    entity.value["level"] = json!(7);
                    entity.value["tag"] = Value::Null;
                }
            }
            (
                seed,
                "inspect_typed_values",
                common::bind(&[("customer", "c1")]),
                json!({"flag":true,"threshold":7,"label":null}),
            )
        }
    }
}

fn produce_on<B: Backend>(
    store: &Store<B>,
    module: &Module,
    producer: Producer,
    action: &str,
    bindings: &BTreeMap<String, String>,
    input: &Value,
) -> CommitBundle {
    let bundle = match producer {
        Producer::Evaluate => {
            let evaluation = store
                .evaluate(
                    module,
                    action,
                    bindings,
                    input,
                    &json!({}),
                    common::T0,
                    None,
                )
                .unwrap();
            assert_eq!(
                evaluation.record["result"], "ALLOW",
                "{}",
                evaluation.record
            );
            evaluation.bundle
        }
        Producer::Invoke | Producer::Intent => {
            let action_definition = module.action(action).unwrap();
            let typed_bindings = bindings
                .iter()
                .map(|(name, id)| {
                    let parameter = action_definition
                        .params()
                        .iter()
                        .find(|parameter| parameter.name() == name)
                        .unwrap();
                    let behavior_core::semantic::types::Type::Entity(entity) = parameter.ty()
                    else {
                        panic!("nonentity state parameter")
                    };
                    (name.clone(), json!({"entity":entity,"id":id}))
                })
                .collect::<serde_json::Map<_, _>>();
            let invocation = match producer {
                Producer::Invoke => {
                    let request = behavior_core::invocation::RequestedInvocation::decode(
                        &json!({"format":"behavior.invocation.v1","capability":action,
                        "bindings":typed_bindings,"input":input,"context":{}})
                        .to_string(),
                    )
                    .unwrap()
                    .0
                    .unwrap();
                    store
                        .invoke(module, &request, common::T0, None, None)
                        .unwrap()
                }
                Producer::Intent => store
                    .invoke_intent(
                        module,
                        &json!({"format":"behavior.capability_intent.v1","capability":action,
                    "bindings":typed_bindings,"input":input})
                        .to_string(),
                        &json!({}),
                        common::T0,
                        None,
                    )
                    .unwrap(),
                Producer::Evaluate => unreachable!(),
            };
            assert_eq!(invocation.record.inner_record().unwrap()["result"], "ALLOW");
            invocation.bundle
        }
    };
    bundle.unwrap_or_else(|| panic!("{} action {action} produced no bundle", producer.name()))
}

/// Independent oracle: these are the actual observations written by Core
/// before Store adds any bundle-only integrity metadata. Only the separately
/// archived full parent universe is removed. No bundle value is inspected here.
fn original_observations(record: &Value) -> Value {
    assert_eq!(record["result"], "ALLOW");
    let mut facts = record.get("facts").cloned().unwrap_or_else(|| json!({}));
    facts.as_object_mut().unwrap().remove("universe");
    if let Some(queries) = facts.get("queries").and_then(Value::as_array) {
        assert!(
            queries
                .iter()
                .all(|query| query.get("result_hash").is_none())
        );
    }
    behavior_core::facts::Facts::from_json(&facts)
        .unwrap()
        .to_json()
}

fn produced_case(
    recipe: Recipe,
    wire: &str,
    producer: Producer,
    v2: bool,
    required: bool,
) -> Value {
    assert!(!required || v2);
    let module = behavior_core::admit(&recipe_document(recipe, wire).to_string()).unwrap();
    let (seed, action, bindings, input) = recipe_input(recipe);
    let policy = evidence_policy(required);
    let genesis = if v2 {
        genesis_v2_for(&module, policy.clone(), seed).unwrap()
    } else {
        genesis_for(&module, EvidencePolicy::none(), seed)
    };
    let mut store = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
    let original_bundle = produce_on(&store, &module, producer, action, &bindings, &input);
    let expected_facts = original_observations(&original_bundle.record);
    if !v2 {
        // Test-only semantic projection of actual legacy producer output. This
        // does not invoke the new codec or move v1's runtime validation phase.
        // The expected value still comes exclusively from the inner record.
        let mut legacy_view = if original_bundle.read_facts.is_null() {
            json!({})
        } else {
            original_bundle.read_facts.clone()
        };
        if let Some(queries) = legacy_view.get_mut("queries").and_then(Value::as_array_mut) {
            for query in queries {
                assert!(
                    query
                        .as_object_mut()
                        .unwrap()
                        .remove("result_hash")
                        .is_some()
                );
            }
        }
        assert_eq!(
            behavior_core::facts::Facts::from_json(&legacy_view)
                .unwrap()
                .to_json(),
            expected_facts,
            "actual v1 {} {wire} {} semantic projection differs",
            recipe.name(),
            producer.name()
        );
    }
    let original_claim = if v2 {
        original_bundle.governance_candidate().unwrap().as_json()
    } else {
        Value::Null
    };
    let mut bundle = original_bundle.clone();
    let context = if required {
        let (evidence, context) = exact_evidence(&module, &bundle, &policy);
        bundle = bundle.with_trusted_evidence(&evidence).unwrap();
        Some(context)
    } else {
        None
    };
    let raw = serde_json::to_string(&bundle).unwrap();
    assert_eq!(CommitBundle::from_json(&raw).unwrap(), bundle);
    let hash = bundle.hash().unwrap();
    assert_eq!(CommitBundle::from_json(&raw).unwrap().hash().unwrap(), hash);
    if v2 {
        assert_eq!(
            bundle.governance_candidate().unwrap().as_json(),
            original_claim
        );
        assert_eq!(
            bundle.governance_candidate().unwrap().hash(),
            original_bundle.transition_hash
        );
    }
    let committed = match context.as_ref() {
        Some(context) => store
            .commit_with_context(&module, &bundle.evaluated_state, &bundle, context)
            .unwrap(),
        None => store
            .commit(&module, &bundle.evaluated_state, &bundle)
            .unwrap(),
    };
    assert_eq!(store.current().unwrap().position, 1);
    if required {
        assert_eq!(committed.evidence_trust, Some("authenticated"));
    }
    let archived = store.backend().record(1).unwrap().unwrap();
    assert_eq!(
        archived.bundle.as_ref().unwrap().read_facts,
        original_bundle.read_facts
    );
    let mut expected_archive = bundle.clone();
    if let Some(context) = context.as_ref() {
        expected_archive.authorization_context = Some(context.as_json());
    }
    assert_eq!(archived.bundle.as_ref().unwrap(), &expected_archive);
    assert_eq!(
        archived.bundle.as_ref().unwrap().hash().unwrap(),
        expected_archive.hash().unwrap()
    );
    json!({"id":format!("{}/{wire}/{}/{}",recipe.name(),producer.name(),if required{"required"}else{"none"}),
        "producer":format!("Store::{}",producer.name()),"test":"producer_laws_all_supported_versions_and_routes",
        "support_cell":match (v2,recipe.has_queries()){(true,true)=>"S05",(true,false)=>"S04",(false,true)=>"S02",(false,false)=>"S01"},"wire_version":wire,
        "record_version":original_bundle.record["record_version"],"semantic_profile":original_bundle.record.get("semantic_profile").cloned(),
        "recipe":recipe.name(),"original_inner_record":original_bundle.record,"bundle_read_facts":original_bundle.read_facts,
        "candidate":original_claim,"expected_facts":expected_facts,"checked_bundle":serde_json::to_value(bundle).unwrap()})
}

#[test]
fn producer_laws_all_supported_versions_and_routes() {
    let mut actual = 0;
    for wire in ["0.4", "0.5", "0.6", "0.7", "0.8"] {
        let mut recipes = vec![Recipe::Empty, Recipe::NoQuery];
        if wire >= "0.5" {
            recipes.extend([Recipe::Lifecycle, Recipe::References]);
        }
        if wire >= "0.6" {
            recipes.extend([
                Recipe::SingleQuery,
                Recipe::MultipleQueries,
                Recipe::Mixed,
                Recipe::Values,
            ]);
        }
        for recipe in recipes {
            for producer in PRODUCERS {
                if wire != "0.8" {
                    produced_case(recipe, wire, producer, false, false);
                    actual += 1;
                }
                for required in [false, true] {
                    produced_case(recipe, wire, producer, true, required);
                    actual += 1;
                }
            }
        }
    }
    assert_eq!(actual, 246);
}

#[test]
fn actual_mixed_producers_emit_all_five_sections() {
    for producer in PRODUCERS {
        let case = produced_case(Recipe::Mixed, "0.7", producer, true, false);
        let expected = &case["expected_facts"];
        for section in ["existence", "identities", "references", "queries", "fields"] {
            assert!(
                !expected[section].as_array().unwrap().is_empty(),
                "{section}: {case}"
            );
        }
        assert!(
            expected["queries"]
                .as_array()
                .unwrap()
                .iter()
                .any(|query| query["members"] == json!([]))
        );
        assert!(
            expected["queries"]
                .as_array()
                .unwrap()
                .iter()
                .any(|query| !query["members"].as_array().unwrap().is_empty())
        );
    }
}

#[test]
fn actual_typed_capture_and_field_values_include_bool_integer_and_option_null() {
    for producer in PRODUCERS {
        let case = produced_case(Recipe::Values, "0.7", producer, true, false);
        for section in ["captures", "fields"] {
            let values = if section == "captures" {
                case["expected_facts"]["queries"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .flat_map(|query| query["captures"].as_array().unwrap().iter())
                    .map(|capture| capture["value"].clone())
                    .collect::<Vec<_>>()
            } else {
                case["expected_facts"]["fields"]
                    .as_array()
                    .unwrap()
                    .iter()
                    .map(|field| field["value"].clone())
                    .collect::<Vec<_>>()
            };
            assert!(values.contains(&json!(true)), "{section}: {case}");
            assert!(values.contains(&json!(7)), "{section}: {case}");
            assert!(values.contains(&Value::Null), "{section}: {case}");
        }
    }
}

fn projection_cases() -> Value {
    let mut cases = Vec::new();
    for recipe in [
        Recipe::Empty,
        Recipe::NoQuery,
        Recipe::Lifecycle,
        Recipe::References,
        Recipe::SingleQuery,
        Recipe::MultipleQueries,
        Recipe::Mixed,
        Recipe::Values,
    ] {
        for producer in PRODUCERS {
            cases.push(produced_case(recipe, "0.7", producer, true, false));
        }
    }
    for wire in ["0.6", "0.8"] {
        for producer in PRODUCERS {
            cases.push(produced_case(
                Recipe::MultipleQueries,
                wire,
                producer,
                true,
                false,
            ));
        }
    }
    for producer in PRODUCERS {
        cases.push(produced_case(Recipe::Mixed, "0.7", producer, true, true));
    }
    for (recipe, wire) in [(Recipe::Empty, "0.4"), (Recipe::Lifecycle, "0.5")] {
        for producer in PRODUCERS {
            cases.push(produced_case(recipe, wire, producer, true, false));
        }
    }
    json!({"format":"behavior.test.projection_cases.v1","cases":cases})
}

fn sha256_bytes(bytes: &[u8]) -> String {
    format!("sha256:{:x}", Sha256::digest(bytes))
}

fn package_path(name: &str) -> std::path::PathBuf {
    common::fixtures().join("strict-bundle-evidence").join(name)
}

fn package_profile_bindings(cases: &Value) -> Value {
    json!(cases["cases"].as_array().unwrap().iter().map(|case|json!({"id":case["id"],"support_cell":case["support_cell"],
        "wire_version":case["wire_version"],"record_version":case["record_version"],"semantic_profile":case["semantic_profile"],
        "producer":case["producer"]})).collect::<Vec<_>>())
}

#[test]
#[ignore = "explicit maintenance writer; normal tests reproduce and never refresh fixtures"]
fn capture_projection_fixtures() {
    use std::process::Command;
    let cases = projection_cases();
    let bytes = format!("{}\n", serde_json::to_string_pretty(&cases).unwrap());
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../..");
    let output = |program: &str, args: &[&str]| {
        let output = Command::new(program)
            .args(args)
            .current_dir(&root)
            .output()
            .unwrap();
        assert!(output.status.success());
        String::from_utf8(output.stdout).unwrap().trim().to_owned()
    };
    let sources = [
        "crates/behavior-store/src/store.rs",
        "crates/behavior-store/src/documents.rs",
        "crates/behavior-core/src/eval.rs",
        "crates/behavior-verify/src/governance/trusted.rs",
        "crates/behavior-verify/src/governance/trusted/bundle_evidence.rs",
        "crates/behavior-store/tests/strict_bundle_evidence.rs",
    ];
    let digests = sources
        .iter()
        .map(|path| {
            (
                (*path).to_owned(),
                json!(sha256_bytes(&std::fs::read(root.join(path)).unwrap())),
            )
        })
        .collect::<serde_json::Map<_, _>>();
    let manifest = json!({"format":"behavior.test.projection_manifest.v1","case_count":cases["cases"].as_array().unwrap().len(),
        "profiles":package_profile_bindings(&cases),"package_digest":sha256_bytes(bytes.as_bytes()),
        "capture_revision":output("git",&["rev-parse","HEAD"]),"working_source_digests":digests,
        "toolchain":{"rustc":output("rustc",&["--version"]),"cargo":output("cargo",&["--version"])},
        "capture_command":"nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_evidence capture_projection_fixtures -- --ignored --exact --nocapture",
        "external_run":"/home/kalle/validation-receipts/core023/us4-producers/capture-39",
        "oracle":"actual original_inner_record.facts, remove only archived parent universe, unchanged Facts parser/serializer"});
    std::fs::create_dir_all(package_path("projection-cases.json").parent().unwrap()).unwrap();
    std::fs::write(package_path("projection-cases.json"), bytes).unwrap();
    std::fs::write(
        package_path("projection-manifest.json"),
        format!("{}\n", serde_json::to_string_pretty(&manifest).unwrap()),
    )
    .unwrap();
}

#[test]
fn projection_fixtures_match_actual_producers() {
    let bytes = std::fs::read(package_path("projection-cases.json")).unwrap();
    let packaged: Value = serde_json::from_slice(&bytes).unwrap();
    let manifest = common::json(&package_path("projection-manifest.json"));
    assert_eq!(manifest["format"], "behavior.test.projection_manifest.v1");
    assert_eq!(manifest["package_digest"], sha256_bytes(&bytes));
    assert_eq!(manifest["case_count"], 39);
    assert_eq!(manifest["profiles"], package_profile_bindings(&packaged));
    assert_eq!(
        packaged,
        projection_cases(),
        "stale producer recipe/output/profile/oracle package"
    );
    let cases = packaged["cases"].as_array().unwrap();
    assert_eq!(
        cases
            .iter()
            .map(|case| case["id"].as_str().unwrap())
            .collect::<BTreeSet<_>>()
            .len(),
        cases.len()
    );
    let mut sections = BTreeSet::new();
    let mut routes = BTreeSet::new();
    for case in cases {
        routes.insert(case["producer"].as_str().unwrap());
        assert_eq!(
            case["expected_facts"],
            original_observations(&case["original_inner_record"])
        );
        sections.extend(case["expected_facts"].as_object().unwrap().keys().cloned());
        assert_eq!(
            case["candidate"]["content"]["read_facts"],
            if case["bundle_read_facts"].is_null() {
                json!({})
            } else {
                case["bundle_read_facts"].clone()
            }
        );
    }
    assert_eq!(
        sections,
        BTreeSet::from([
            "existence".into(),
            "identities".into(),
            "references".into(),
            "queries".into(),
            "fields".into()
        ])
    );
    assert_eq!(
        routes,
        BTreeSet::from(["Store::evaluate", "Store::invoke", "Store::invoke_intent"])
    );
}

#[test]
fn bounded_generated_producer_round_trips_and_seed_permutations() {
    // Exhaustive finite generator, no random hidden seed: n=0..3 memberships,
    // cents=1,17,100, all three routes and both supported bundle lineages.
    for n in 0..=3 {
        for cents in [1, 17, 100] {
            for producer in PRODUCERS {
                for v2 in [false, true] {
                    let module = common::orders();
                    let mut seed = vec![common::customer_seed("c1", "100.00")];
                    seed.extend(
                        (0..n).map(|i| common::order_seed(&format!("o{i}"), "c1", "1.00", "open")),
                    );
                    let mut output = Vec::new();
                    for reversed in [false, true] {
                        let mut initial = seed.clone();
                        if reversed {
                            initial.reverse();
                        }
                        let genesis = if v2 {
                            genesis_v2_for(&module, evidence_policy(false), initial).unwrap()
                        } else {
                            genesis_for(&module, EvidencePolicy::none(), initial)
                        };
                        let store =
                            Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
                        let bundle = produce_on(
                            &store,
                            &module,
                            producer,
                            "place_order",
                            &common::bind(&[("customer", "c1")]),
                            &json!({"order_id":"new","amount":format!("{}.{:02}",cents/100,cents%100)}),
                        );
                        assert_eq!(
                            CommitBundle::from_json(&serde_json::to_string(&bundle).unwrap())
                                .unwrap(),
                            bundle
                        );
                        assert_eq!(
                            CommitBundle::from_json(&serde_json::to_string(&bundle).unwrap())
                                .unwrap()
                                .hash()
                                .unwrap(),
                            bundle.hash().unwrap()
                        );
                        // Seed sequence is part of genesis/Store lineage identity.
                        // Distinct lineages may share StateId and observations;
                        // compare record content only after explicitly excluding
                        // that different recorded Store/data-version input.
                        let mut semantic_record = bundle.record.clone();
                        assert!(
                            semantic_record
                                .as_object_mut()
                                .unwrap()
                                .remove("data_version")
                                .is_some()
                        );
                        output.push(json!({"state":store.current().unwrap().state,"record":semantic_record,"facts":bundle.read_facts,
                            "original_observations":original_observations(&bundle.record)}));
                    }
                    assert_eq!(
                        output[0], output[1],
                        "n={n}, cents={cents}, {producer:?}, v2={v2}"
                    );
                }
            }
        }
    }
}

#[test]
fn omitted_and_null_empty_bundle_observations_share_the_checked_adapter() {
    let module = behavior_core::admit(&recipe_document(Recipe::Empty, "0.4").to_string()).unwrap();
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, evidence_policy(false), common::default_seed()).unwrap(),
    )
    .unwrap();
    let bundle = produce_on(
        &store,
        &module,
        Producer::Evaluate,
        "touch",
        &common::bind(&[("account", "a1")]),
        &json!({}),
    );
    assert!(bundle.read_facts.is_null());
    assert_eq!(
        bundle.governance_candidate().unwrap().as_json()["content"]["read_facts"],
        json!({})
    );
    let mut raw = serde_json::to_value(&bundle).unwrap();
    assert!(raw.get("read_facts").is_none());
    let omitted = CommitBundle::from_json(&raw.to_string()).unwrap();
    raw["read_facts"] = Value::Null;
    let null = CommitBundle::from_json(&raw.to_string()).unwrap();
    assert_eq!(omitted, null);
    assert_eq!(
        omitted.governance_candidate().unwrap().as_json(),
        null.governance_candidate().unwrap().as_json()
    );
    assert_eq!(original_observations(&bundle.record), json!({}));
}

fn migration_pair() -> (Module, Module, behavior_core::migration::Migration) {
    let source = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/migration-source-a.json"),
    ))
    .unwrap();
    let target = behavior_core::admit(&common::read(
        &common::fixtures().join("soundness/migration-target.json"),
    ))
    .unwrap();
    let loc = json!({"file":"strict_bundle_migration.dsl","line":1});
    let raw = json!({"migration_ir":"0.1","name":"add_z","source":behavior_core::schema(&source).hash,
        "target":behavior_core::schema(&target).hash,"constants":[],"requirements":[],"retire":[],
        "transforms":[{"entity":"E","fields":{"z":{"op":"derived","name":"calc","args":["old"],"loc":loc}},"drops":[]}]});
    let migration =
        behavior_core::migration::admit_migration(&source, &target, &raw.to_string()).unwrap();
    (source, target, migration)
}

fn migration_store(source: &Module, v2: bool) -> Store<InMemoryBackend> {
    let seed = vec![SeedEntity {
        entity: "E".into(),
        value: json!({"id":"only","x":1,"y":2}),
    }];
    let genesis = if v2 {
        genesis_v2_for(source, evidence_policy(false), seed).unwrap()
    } else {
        genesis_for(source, EvidencePolicy::none(), seed)
    };
    Store::create(InMemoryBackend::new(), source, genesis).unwrap()
}

#[test]
fn actual_v2_prepared_migration_has_empty_facts_and_matching_archive() {
    let (source, target, migration) = migration_pair();
    let mut store = migration_store(&source, true);
    let start = store.current().unwrap();
    let before = format!("{:?}", store.backend());
    let prepared = store
        .prepare_migration(&source, &target, &migration, common::T0, None)
        .unwrap();
    let claim = prepared.governance_candidate().unwrap().as_json();
    assert_eq!(claim["content"]["read_facts"], json!({}));
    assert_eq!(claim["content"]["migration_hash"], migration.hash());
    assert_eq!(
        claim["content"]["source_behavior"],
        source.behavior_version()
    );
    assert_eq!(
        claim["content"]["target_behavior"],
        target.behavior_version()
    );
    assert_eq!(
        claim["content"]["transformation"]["entities"][0]["value"]["z"],
        1
    );
    assert_eq!(
        GovernanceCandidate::from_json(&claim.to_string())
            .unwrap()
            .as_json(),
        claim
    );
    assert_eq!(
        format!("{:?}", store.backend()),
        before,
        "preparation is read-only"
    );
    store
        .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
        .unwrap();
    let event = store.backend().record(1).unwrap().unwrap();
    assert_eq!(event.format, "behavior.transition_record.v2");
    event.check_kind().unwrap();
    let archived = event.migration.as_ref().unwrap();
    assert_eq!(
        archived.format.as_deref(),
        Some("behavior.migration_bundle.v2")
    );
    assert_eq!(archived.candidate.as_ref().unwrap(), &claim);
    assert_eq!(archived.source, behavior_core::schema(&source).hash);
    assert_eq!(archived.target, behavior_core::schema(&target).hash);
    assert_eq!(
        archived.report,
        claim["content"]["transformation"]["report"]
    );
    archived.hash().unwrap();
    event.hash().unwrap();
    assert_eq!(
        store.schema_at(&store.current().unwrap()).unwrap().hash,
        behavior_core::schema(&target).hash
    );
    assert_eq!(
        store
            .backend()
            .version_at(&common::key("E", "only"), 1)
            .unwrap()
            .unwrap()
            .value["z"],
        1
    );
    assert!(behavior_store::replay::replay_data(&store, &start, &store.current().unwrap()).ok);
    let migrations = BTreeMap::from([(migration.hash().to_owned(), (migration, source, target))]);
    assert!(
        behavior_store::replay::replay_behavior_with(
            &store,
            &BTreeMap::new(),
            &migrations,
            &start,
            &store.current().unwrap()
        )
        .ok
    );
}

#[test]
fn actual_prepared_migration_refuses_action_bundle_and_semantic_observations() {
    let (source, target, migration) = migration_pair();
    let store = migration_store(&source, true);
    let prepared = store
        .prepare_migration(&source, &target, &migration, common::T0, None)
        .unwrap();
    let (_, _, _, action) = query_setup(false);
    locally_accepted(&action);
    let mut claim = prepared.governance_candidate().unwrap().as_json();
    claim["content"]["read_facts"] = action.read_facts;
    claim["transition_hash"] = json!(
        document_hash(
            behavior_verify::hashing::TAG_CANDIDATE_TRANSITION_V2,
            &claim["content"]
        )
        .unwrap()
    );
    let error = GovernanceCandidate::from_json(&claim.to_string()).unwrap_err();
    assert_eq!(error.code, "INVALID_CANDIDATE");
    assert_eq!(error.message, "invalid observed facts");
    // Migration retains its ordinary-facts phase, then independently requires
    // exact {}. An action result_hash is not tolerated there merely because the
    // action candidate can check that same envelope under its own contract.
    claim["content"]["read_facts"] =
        json!({"fields":[{"entity":"E","id":"only","field":"x","value":1}]});
    claim["transition_hash"] = json!(
        document_hash(
            behavior_verify::hashing::TAG_CANDIDATE_TRANSITION_V2,
            &claim["content"]
        )
        .unwrap()
    );
    let error = GovernanceCandidate::from_json(&claim.to_string()).unwrap_err();
    assert_eq!(error.code, "INVALID_CANDIDATE");
    assert_eq!(
        error.message,
        "migration has no invocation facts or lifecycle effects"
    );
    assert_eq!(store.current().unwrap().position, 0);
    assert!(store.backend().record(1).unwrap().is_none());
}

#[test]
fn actual_legacy_preparation_keeps_legacy_migration_dispatch() {
    let (source, target, migration) = migration_pair();
    let mut store = migration_store(&source, false);
    let start = store.current().unwrap();
    let prepared = store
        .prepare_migration(&source, &target, &migration, common::T0, None)
        .unwrap();
    let claim = prepared.governance_candidate().unwrap().as_json();
    assert_eq!(claim["format"], "behavior.governance_candidate.v2");
    assert_eq!(claim["content"]["read_facts"], json!({}));
    store
        .commit_prepared_migration(&source, &target, &migration, &prepared, None, None)
        .unwrap();
    let event = store.backend().record(1).unwrap().unwrap();
    assert_eq!(event.format, "behavior.transition_record.v1");
    event.check_kind().unwrap();
    let archived = event.migration.as_ref().unwrap();
    assert!(archived.format.is_none());
    assert!(archived.candidate.is_none());
    archived.hash().unwrap();
    assert!(behavior_store::replay::replay_data(&store, &start, &store.current().unwrap()).ok);
    let migrations = BTreeMap::from([(migration.hash().to_owned(), (migration, source, target))]);
    assert!(
        behavior_store::replay::replay_behavior_with(
            &store,
            &BTreeMap::new(),
            &migrations,
            &start,
            &store.current().unwrap()
        )
        .ok
    );
}

fn persisted_history(store: &Store<InMemoryBackend>) -> Value {
    let backend = store.backend();
    let genesis = backend.genesis().unwrap().unwrap();
    let head = backend.head().unwrap().unwrap();
    let mut keys = genesis
        .seed
        .iter()
        .map(|seed| common::key(&seed.entity, seed.value["id"].as_str().unwrap()))
        .collect::<BTreeSet<_>>();
    let records = (1..=head.state_ref.position + 1)
        .map(|at| backend.record(at).unwrap())
        .collect::<Vec<_>>();
    for record in records.iter().flatten() {
        keys.extend(
            record
                .new_versions
                .iter()
                .chain(record.created.iter())
                .map(|version| version.key()),
        );
        keys.extend(
            record
                .removed
                .iter()
                .map(|removed| common::key(&removed.entity, &removed.id)),
        );
    }
    let entities=keys.iter().map(|key|json!({"key":key,
        "versions":(1..=head.state_ref.position+2).map(|revision|backend.version(key,revision).unwrap()).collect::<Vec<_>>(),
        "used":backend.used_at(key,head.state_ref.position).unwrap(),"removed":backend.removed_at(key).unwrap(),
        "incoming":(0..=head.state_ref.position).map(|at|json!({"position":at,"edges":backend.incoming_at(key,at).unwrap().iter().map(behavior_store::RefEdge::to_json).collect::<Vec<_>>()})).collect::<Vec<_>>()
    })).collect::<Vec<_>>();
    json!({"genesis":genesis,"head":head,"records":records,"entities":entities,"complete_backend":format!("{backend:?}")})
}

#[test]
fn actual_query_archives_reopen_recover_after_later_commit_and_replay() {
    for (v2, required) in [(false, false), (true, false), (true, true)] {
        for producer in PRODUCERS {
            let module =
                behavior_core::admit(&recipe_document(Recipe::Mixed, "0.7").to_string()).unwrap();
            let (seed, action, bindings, input) = recipe_input(Recipe::Mixed);
            let policy = evidence_policy(required);
            let genesis = if v2 {
                genesis_v2_for(&module, policy.clone(), seed).unwrap()
            } else {
                genesis_for(&module, EvidencePolicy::none(), seed)
            };
            let mut store = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
            let start = store.current().unwrap();
            let mut first = produce_on(&store, &module, producer, action, &bindings, &input);
            let context = if required {
                let (evidence, context) = exact_evidence(&module, &first, &policy);
                first = first.with_trusted_evidence(&evidence).unwrap();
                Some(context)
            } else {
                None
            };
            let committed = match context.as_ref() {
                Some(context) => store
                    .commit_with_context(&module, &first.evaluated_state, &first, context)
                    .unwrap(),
                None => store
                    .commit(&module, &first.evaluated_state, &first)
                    .unwrap(),
            };
            let mut later = produce_on(
                &store,
                &module,
                Producer::Evaluate,
                "deposit",
                &common::bind(&[("account", "a1")]),
                &json!({"amount":"1.00"}),
            );
            if required {
                let (evidence, context) = exact_evidence(&module, &later, &policy);
                later = later.with_trusted_evidence(&evidence).unwrap();
                store
                    .commit_with_context(&module, &later.evaluated_state, &later, &context)
                    .unwrap();
            } else {
                store
                    .commit(&module, &later.evaluated_state, &later)
                    .unwrap();
            }
            let end = store.current().unwrap();
            assert_eq!(end.position, 2);
            let mut reopened = Store::open(store.backend().clone()).unwrap();
            let before = persisted_history(&reopened);
            for position in 1..=2 {
                let event = reopened.backend().record(position).unwrap().unwrap();
                event.check_kind().unwrap();
                event.hash().unwrap();
                let bundle = event.bundle.as_ref().unwrap();
                assert_eq!(
                    CommitBundle::from_json(&serde_json::to_string(bundle).unwrap()).unwrap(),
                    *bundle
                );
                if required {
                    assert!(bundle.authorization_context.is_some());
                }
            }
            let recovered = match context.as_ref() {
                Some(context) => reopened
                    .commit_with_context(&module, &first.evaluated_state, &first, context)
                    .unwrap(),
                None => reopened
                    .commit(&module, &first.evaluated_state, &first)
                    .unwrap(),
            };
            assert!(recovered.already);
            assert_eq!(recovered.record_id, committed.record_id);
            assert_eq!(
                reopened.current().unwrap(),
                end,
                "recovery preserves later history"
            );
            let data = behavior_store::replay::replay_data(&reopened, &start, &end);
            assert!(data.ok, "{:?}", data.divergence);
            assert_eq!(data.checked, 2);
            let modules = BTreeMap::from([(module.behavior_version(), module)]);
            let behavior =
                behavior_store::replay::replay_behavior(&reopened, &modules, &start, &end);
            assert!(behavior.ok, "{:?}", behavior.divergence);
            assert_eq!(behavior.checked, 2);
            assert_eq!(
                persisted_history(&reopened),
                before,
                "archive checks/recovery/replay are read-only"
            );
        }
    }
}

fn command_query_module() -> Module {
    let mut raw = recipe_document(Recipe::MultipleQueries, "0.8");
    raw["commands"] =
        common::json(&common::fixtures().join("commands/modules/receipt.json"))["commands"].clone();
    raw["actions"][0]["command_effects"] = json!([{"command":"Receipt","payload":{"recipient":expr("lit",json!({"type":{"t":"string"},"value":"c1"}))},
        "loc":{"file":"strict_bundle_evidence.dsl","line":1}}]);
    behavior_core::admit(&raw.to_string()).unwrap()
}

fn command_request(
    after: &behavior_store::documents::HistoryRef,
) -> behavior_store::commands::CommandStreamRequest {
    behavior_store::commands::CommandStreamRequest::from_json(
        &json!({"format":"behavior.command_stream_request.v1","after":after}).to_string(),
    )
    .unwrap()
}

#[test]
fn actual_authenticated_query_commands_exist_only_after_committed_history() {
    let module = command_query_module();
    let policy = evidence_policy(true);
    for producer in PRODUCERS {
        let mut store = Store::create(
            FaultBackend::default(),
            &module,
            genesis_v2_for(&module, policy.clone(), common::orders_seed()).unwrap(),
        )
        .unwrap();
        let start = store.current_history().unwrap();
        let bundle = produce_on(
            &store,
            &module,
            producer,
            "place_order",
            &common::bind(&[("customer", "c1")]),
            &json!({"order_id":"new","amount":"20.00"}),
        );
        assert!(!bundle.read_facts["queries"].as_array().unwrap().is_empty());
        assert_eq!(
            bundle.record["commands"]["intents"]
                .as_array()
                .unwrap()
                .len(),
            1
        );
        assert!(
            store
                .commands_since(&command_request(&start))
                .unwrap()
                .items()
                .is_empty()
        );
        let forged = forge_members(&bundle);
        let (evidence, context) = exact_evidence(&module, &forged, &policy);
        let forged = forged.with_trusted_evidence(&evidence).unwrap();
        let before = authority(&store);
        assert_eq!(
            store
                .commit_with_context(&module, &forged.evaluated_state, &forged, &context)
                .unwrap_err()
                .code(),
            "BUNDLE_INVALID"
        );
        assert_eq!(store.backend().commit_calls, 0);
        assert_eq!(authority(&store), before);
        assert!(
            store
                .commands_since(&command_request(&start))
                .unwrap()
                .items()
                .is_empty()
        );
        let (evidence, context) = exact_evidence(&module, &bundle, &policy);
        let allowed = bundle.with_trusted_evidence(&evidence).unwrap();
        let committed = store
            .commit_with_context(&module, &allowed.evaluated_state, &allowed, &context)
            .unwrap();
        assert_eq!(committed.evidence_trust, Some("authenticated"));
        let reopened = Store::open(store.backend().inner.clone()).unwrap();
        let before = persisted_history(&reopened);
        let page = reopened.commands_since(&command_request(&start)).unwrap();
        assert_eq!(page.items().len(), 1);
        assert_eq!(page.items()[0].history_position(), 1);
        assert_eq!(
            page.items()[0].intent(),
            &bundle.record["commands"]["intents"][0]
        );
        assert_eq!(
            page.items()[0].intent()["payload"],
            json!({"recipient":"c1"})
        );
        assert_eq!(page.items()[0].commit_record_hash(), committed.record_id);
        assert!(page.complete());
        let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);
        assert!(
            behavior_store::replay::replay_data(
                &reopened,
                &start.state_ref(),
                &reopened.current().unwrap()
            )
            .ok
        );
        assert!(
            behavior_store::replay::replay_behavior(
                &reopened,
                &modules,
                &start.state_ref(),
                &reopened.current().unwrap()
            )
            .ok
        );
        assert_eq!(persisted_history(&reopened), before);
        // Corrupting the archived query digest prevents occurrence exposure;
        // a sound local shortcut cannot promote unverified history to commands.
        let mut bad_event = store.backend().inner.record(1).unwrap().unwrap();
        bad_event.bundle.as_mut().unwrap().read_facts["queries"][0]["result_hash"] =
            json!(format!("sha256:{}", "0".repeat(64)));
        store.backend_mut().records.insert(1, bad_event);
        assert!(store.commands_since(&command_request(&start)).is_err());
        assert_eq!(store.backend().commit_calls, 1);
    }
}
