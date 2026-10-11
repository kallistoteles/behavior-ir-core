#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017: finite, test-owned validity and simultaneous-apply models.
//!
//! The oracle uses ordinary membership and bounded integer arithmetic. It does
//! not call the production validator, dependency classifier, candidate builder,
//! replay implementation or certificate cache. Wire construction and record
//! JSON decoding are shared representation interfaces, not validity oracles.

use behavior_core::{admit, evaluate};
use proptest::prelude::*;
use serde_json::{Value, json};
use std::collections::{BTreeMap, BTreeSet};

type Key = (String, String);
type Rows = BTreeMap<Key, Value>;

#[derive(Clone, Debug)]
struct Node {
    amount: i64,
    required: String,
    owner: Option<String>,
    forbidden: String,
}

impl Node {
    fn value(&self, id: &str) -> Value {
        json!({"id":id,"amount":self.amount,"required":self.required,
            "owner":self.owner,"forbidden":self.forbidden})
    }
}

#[derive(Clone, Debug, Default)]
struct State {
    targets: BTreeMap<String, i64>,
    nodes: BTreeMap<String, Node>,
}

impl State {
    fn rows(&self) -> Rows {
        self.targets
            .iter()
            .map(|(id, x)| (("Target".into(), id.clone()), json!({"id":id,"x":x})))
            .chain(
                self.nodes
                    .iter()
                    .map(|(id, node)| (("Node".into(), id.clone()), node.value(id))),
            )
            .collect()
    }

    /// This is the complete mathematical predicate for this finite language
    /// fragment. A plain identity's existence and a Ref's integrity are
    /// separate obligations; neither is inferred from the other.
    fn valid(&self, budget: i64) -> bool {
        self.targets.values().all(|x| *x >= 0)
            && self.nodes.values().all(|node| {
                node.amount >= 0
                    && self.targets.contains_key(&node.required)
                    && node
                        .owner
                        .as_ref()
                        .is_none_or(|target| self.targets.contains_key(target))
                    && !self.targets.contains_key(&node.forbidden)
            })
            && self.nodes.values().map(|node| node.amount).sum::<i64>() <= budget
    }

    fn budget(&self, slack: i64) -> i64 {
        self.nodes.values().map(|node| node.amount).sum::<i64>() + slack
    }
}

/// Full replacements of existing rows, disjoint creates and removals. The
/// implementation deliberately does not consume production effects or records.
#[derive(Clone, Debug, Default)]
struct Delta {
    target_updates: BTreeMap<String, i64>,
    node_updates: BTreeMap<String, Node>,
    target_creates: BTreeMap<String, i64>,
    node_creates: BTreeMap<String, Node>,
    target_removes: BTreeSet<String>,
}

impl Delta {
    fn apply(&self, parent: &State) -> State {
        let mut child = parent.clone();
        for id in &self.target_removes {
            assert!(!self.target_updates.contains_key(id));
            assert!(!self.target_creates.contains_key(id));
            assert!(child.targets.remove(id).is_some());
        }
        for (id, x) in &self.target_updates {
            assert!(child.targets.insert(id.clone(), *x).is_some());
        }
        for (id, node) in &self.node_updates {
            assert!(child.nodes.insert(id.clone(), node.clone()).is_some());
        }
        for (id, x) in &self.target_creates {
            assert!(child.targets.insert(id.clone(), *x).is_none());
        }
        for (id, node) in &self.node_creates {
            assert!(child.nodes.insert(id.clone(), node.clone()).is_none());
        }
        child
    }
}

fn loc() -> Value {
    json!({"file":"017-finite-model.beh","line":1})
}

fn lit(ty: Value, value: Value) -> Value {
    json!({"op":"lit","type":ty,"value":value,"loc":loc()})
}

fn integer(x: i64) -> Value {
    lit(json!({"t":"int"}), json!(x))
}

fn field(param: &str, name: &str) -> Value {
    json!({"op":"field","param":param,"field":name,"loc":loc()})
}

fn op(name: &str, args: Vec<Value>) -> Value {
    json!({"op":name,"args":args,"loc":loc()})
}

fn id_type() -> Value {
    json!({"t":"id","entity":"Target"})
}

fn node_field_expressions(node: &Node) -> BTreeMap<String, Value> {
    BTreeMap::from([
        ("amount".into(), integer(node.amount)),
        ("required".into(), lit(id_type(), json!(node.required))),
        (
            "owner".into(),
            lit(json!({"t":"option","of":id_type()}), json!(node.owner)),
        ),
        ("forbidden".into(), lit(id_type(), json!(node.forbidden))),
    ])
}

/// Compile the independently specified delta into one admitted action. Literal
/// assignments avoid unrelated input/binding failures in this property scope.
fn wire_request(parent: &State, delta: &Delta, budget: i64, command: bool) -> (Value, Value) {
    let mut params = Vec::new();
    let mut effects = Vec::new();
    let mut bindings = serde_json::Map::new();
    let mut identities = Vec::new();
    let rows = parent.rows();
    for (entity, id) in delta
        .target_updates
        .keys()
        .map(|id| ("Target", id))
        .chain(delta.node_updates.keys().map(|id| ("Node", id)))
        .chain(delta.target_removes.iter().map(|id| ("Target", id)))
    {
        let param = format!("bound_{}", params.len());
        params.push(json!({"name":param,"role":"state","type":{"t":"entity","name":entity}}));
        bindings.insert(param.clone(), rows[&(entity.into(), id.clone())].clone());
        if delta.target_removes.contains(id) && entity == "Target" {
            effects.push(json!({"remove":param,"loc":loc()}));
            continue;
        }
        let fields = if entity == "Target" {
            BTreeMap::from([("x".into(), integer(delta.target_updates[id]))])
        } else {
            node_field_expressions(&delta.node_updates[id])
        };
        for (name, value) in fields {
            effects.push(json!({"target":{"param":param,"field":name},"value":value,"loc":loc()}));
        }
    }
    for (id, x) in &delta.target_creates {
        effects.push(json!({"create":"Target","id":lit(id_type(),json!(id)),
            "fields":{"x":integer(*x)},"loc":loc()}));
        identities.push(json!({"entity":"Target","id":id,"used":false}));
    }
    for (id, node) in &delta.node_creates {
        effects.push(
            json!({"create":"Node","id":lit(json!({"t":"id","entity":"Node"}),json!(id)),
            "fields":node_field_expressions(node),"loc":loc()}),
        );
        identities.push(json!({"entity":"Node","id":id,"used":false}));
    }
    let mut action = json!({"name":"apply","params":params,"preconditions":[],
        "postconditions":[],"effects":effects,"loc":loc()});
    if command {
        action["command_effects"] = json!([]);
    }
    let node_rule = |name: &str, body: Value| json!({"name":name,"entity":"Node","param":"n","body":body,"loc":loc()});
    let sum = json!({"op":"sum","param":"n","args":[{"op":"select","entity":"Node","loc":loc()}],
        "body":field("n","amount"),"loc":loc()});
    let mut wire = json!({"ir_version":if command {"0.8"} else {"0.7"},
        "enums":[],"nominals":[],"derived":[],"reads":[],
        "entities":[
            {"name":"Target","fields":[{"name":"x","type":{"t":"int"},"loc":loc()}],"loc":loc()},
            {"name":"Node","fields":[
                {"name":"amount","type":{"t":"int"},"loc":loc()},
                {"name":"required","type":id_type(),"loc":loc()},
                {"name":"owner","type":{"t":"option","of":{"t":"ref","entity":"Target"}},"loc":loc()},
                {"name":"forbidden","type":id_type(),"loc":loc()}],"loc":loc()},
            {"name":"Empty","fields":[],"loc":loc()}],
        "invariants":[
            {"name":"nonnegative_x","entity":"Target","param":"t","body":op("ge",vec![field("t","x"),integer(0)]),"loc":loc()},
            {"name":"total_budget","body":op("le",vec![sum,integer(budget)]),"loc":loc()}],
        "constraints":[
            node_rule("nonnegative_amount",op("ge",vec![field("n","amount"),integer(0)])),
            node_rule("required_exists",op("exists",vec![field("n","required")])),
            node_rule("forbidden_absent",op("not",vec![op("exists",vec![field("n","forbidden")])]))],
        "actions":[action]});
    if command {
        wire["commands"] = json!([]);
    }
    let target_members: Vec<_> = parent
        .targets
        .iter()
        .map(|(id, x)| json!({"id":id,"x":x}))
        .collect();
    let node_members: Vec<_> = parent.nodes.iter().map(|(id, n)| n.value(id)).collect();
    let request = json!({"action":"apply","data_version":"017-independent-finite-parent",
        "state":bindings,"input":{},"context":{},"facts":{
            "universe":[{"entity":"Target","members":target_members},
                {"entity":"Node","members":node_members},{"entity":"Empty","members":[]}],
            "identities":identities}});
    (wire, request)
}

/// Interpret the public record's explicit changes and lifecycle into a separate
/// row mapping. Every old value and every identity is checked before mutation.
fn apply_record(parent: &State, record: &Value) -> Rows {
    let mut rows = parent.rows();
    for change in record["changes"].as_array().unwrap() {
        let key = (
            change["entity"].as_str().unwrap().to_string(),
            change["id"].as_str().unwrap().to_string(),
        );
        let name = change["field"].as_str().unwrap();
        let row = rows.get_mut(&key).unwrap();
        assert_eq!(row[name], change["old"]);
        row[name] = change["new"].clone();
    }
    if let Some(lifecycle) = record.get("lifecycle") {
        for effect in lifecycle.as_array().unwrap() {
            let key = (
                effect["entity"].as_str().unwrap().to_string(),
                effect["id"].as_str().unwrap().to_string(),
            );
            match effect["op"].as_str().unwrap() {
                "create" => assert!(rows.insert(key, effect["value"].clone()).is_none()),
                "remove" => assert_eq!(rows.remove(&key).unwrap(), effect["value"]),
                other => panic!("unexpected lifecycle operation: {other}"),
            }
        }
    }
    rows
}

fn check(parent: &State, delta: &Delta, budget: i64) -> Result<(), TestCaseError> {
    prop_assert!(
        parent.valid(budget),
        "test must start from independently valid parent"
    );
    let child = delta.apply(parent);
    let expected_valid = child.valid(budget);
    let mut mismatches = Vec::new();
    for command in [false, true] {
        let (wire, request) = wire_request(parent, delta, budget, command);
        let module = admit(&wire.to_string()).unwrap_or_else(|errors| {
            panic!("test fixture did not admit; this is not validity RED: {errors:?}\n{wire}")
        });
        let record = evaluate(&module, &request.to_string());
        let result = record.as_json();
        let expected = if expected_valid { "ALLOW" } else { "DENY" };
        if result["result"].as_str() != Some(expected) {
            mismatches.push(format!(
                "command={command}, expected={expected}, parent={parent:?}, delta={delta:?}, child={child:?}, record={result}"
            ));
            continue;
        }
        if expected_valid {
            prop_assert_eq!(
                apply_record(parent, result),
                child.rows(),
                "every simultaneous child key/value must agree"
            );
        } else {
            prop_assert_eq!(&result["changes"], &json!([]));
            prop_assert!(result.get("lifecycle").is_none());
            prop_assert!(
                result
                    .get("commands")
                    .is_none_or(|c| c["intents"] == json!([]))
            );
        }
    }
    prop_assert!(mismatches.is_empty(), "{}", mismatches.join("\n"));
    Ok(())
}

fn parent(targets: &[i64], nodes: &[(i64, bool, bool)]) -> State {
    let targets: BTreeMap<_, _> = targets
        .iter()
        .enumerate()
        .map(|(i, x)| (format!("t{i}"), *x))
        .collect();
    let nodes = if targets.is_empty() {
        BTreeMap::new()
    } else {
        nodes
            .iter()
            .enumerate()
            .map(|(i, (amount, has_ref, forbids_new))| {
                let target = format!("t{}", i % targets.len());
                (
                    format!("n{i}"),
                    Node {
                        amount: *amount,
                        required: target.clone(),
                        owner: has_ref.then_some(target),
                        forbidden: if *forbids_new { "new" } else { "absent" }.into(),
                    },
                )
            })
            .collect()
    };
    State { targets, nodes }
}

fn creation(x: i64) -> Delta {
    Delta {
        target_creates: BTreeMap::from([("new".into(), x)]),
        ..Delta::default()
    }
}

fn remove_and_retarget(parent: &State) -> Delta {
    let mut updated = parent.nodes["n0"].clone();
    updated.required = "t1".into();
    updated.owner = Some("t1".into());
    Delta {
        node_updates: BTreeMap::from([("n0".into(), updated)]),
        target_removes: BTreeSet::from(["t0".into()]),
        ..Delta::default()
    }
}

fn mixed(parent: &State, x: i64, amount: i64) -> Delta {
    let mut updated = parent.nodes["n0"].clone();
    updated.required = "new".into();
    updated.owner = Some("new".into());
    updated.forbidden = "absent".into();
    Delta {
        node_updates: BTreeMap::from([("n0".into(), updated)]),
        target_creates: BTreeMap::from([("new".into(), x)]),
        node_creates: BTreeMap::from([(
            "new-node".into(),
            Node {
                amount,
                required: "new".into(),
                owner: Some("new".into()),
                forbidden: "absent".into(),
            },
        )]),
        target_removes: BTreeSet::from(["t0".into()]),
        ..Delta::default()
    }
}

#[test]
fn every_finite_model_action_admits_before_validity_assertions() {
    let p = parent(&[1, 2], &[(1, true, false), (2, false, false)]);
    let ds = [
        creation(1),
        Delta {
            target_updates: BTreeMap::from([("t1".into(), -1)]),
            ..Delta::default()
        },
        remove_and_retarget(&p),
        mixed(&p, 1, 1),
    ];
    for delta in ds {
        for command in [false, true] {
            let (wire, _) = wire_request(&p, &delta, 8, command);
            assert!(admit(&wire.to_string()).is_ok(), "{wire}");
        }
    }
}

#[test]
fn independently_valid_creation_empty_and_local_global_failure_controls() {
    let empty = State::default();
    check(&empty, &creation(1), 0).unwrap();
    check(&empty, &creation(-1), 0).unwrap();
    let p = parent(&[1, 2], &[(1, false, false), (2, true, false)]);
    check(&p, &creation(1), 3).unwrap();
    let mut n = p.nodes["n0"].clone();
    n.amount = 3;
    let d = Delta {
        node_updates: BTreeMap::from([("n0".into(), n)]),
        ..Delta::default()
    };
    check(&p, &d, 3).unwrap();
    check(&p, &d, 5).unwrap();
}

#[test]
fn creation_rechecks_the_unchanged_forbidden_identity_obligation() {
    let p = parent(&[1], &[(1, false, true)]);
    let d = creation(1);
    assert!(!d.apply(&p).valid(1));
    assert_eq!(
        d.apply(&p).nodes["n0"].value("n0"),
        p.nodes["n0"].value("n0")
    );
    check(&p, &d, 1).unwrap();
}

#[test]
fn removal_rechecks_unchanged_plain_identity_without_an_incoming_ref() {
    let valid = parent(&[1, 2], &[(1, true, false), (1, false, false)]);
    check(&valid, &remove_and_retarget(&valid), 2).unwrap();
    let p = parent(
        &[1, 2],
        &[(1, true, false), (1, false, false), (1, false, false)],
    );
    let d = remove_and_retarget(&p);
    let child = d.apply(&p);
    assert_eq!(child.nodes["n2"].required, "t0");
    assert!(child.nodes["n2"].owner.is_none());
    assert!(!child.valid(3));
    check(&p, &d, 3).unwrap();
}

#[test]
fn mixed_simultaneous_child_has_new_refs_and_preserves_unchanged_obligations() {
    let valid = parent(&[1, 2], &[(1, true, false), (1, false, false)]);
    let d = mixed(&valid, 1, 1);
    assert!(d.apply(&valid).valid(3));
    check(&valid, &d, 3).unwrap();
    let invalid = parent(&[1, 2], &[(1, true, false), (1, false, true)]);
    let d = mixed(&invalid, 1, 1);
    assert!(!d.apply(&invalid).valid(3));
    check(&invalid, &d, 3).unwrap();
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(64))]

    #[test]
    fn finite_creation_matches_complete_membership(
        targets in prop::collection::vec(0i64..6, 0..5),
        nodes in prop::collection::vec((0i64..6, any::<bool>(), any::<bool>()), 0..6),
        x in -2i64..6,
        slack in 0i64..4,
    ) {
        let p = parent(&targets, &nodes);
        check(&p, &creation(x), p.budget(slack))?;
    }

    #[test]
    fn finite_updates_match_direct_arithmetic_and_global_aggregate(
        targets in prop::collection::vec(0i64..6, 1..5),
        nodes in prop::collection::vec((0i64..6, any::<bool>(), any::<bool>()), 1..6),
        x in -2i64..6,
        amount in -2i64..8,
        slack in 0i64..4,
    ) {
        let p = parent(&targets, &nodes);
        let mut node = p.nodes["n0"].clone();
        node.amount = amount;
        let delta = Delta {
            target_updates:BTreeMap::from([("t0".into(),x)]),
            node_updates:BTreeMap::from([("n0".into(),node)]),
            ..Delta::default()
        };
        check(&p,&delta,p.budget(slack))?;
    }

    #[test]
    fn finite_removal_and_retarget_match_all_surviving_membership(
        targets in prop::collection::vec(0i64..6, 2..5),
        nodes in prop::collection::vec((0i64..6, any::<bool>(), any::<bool>()), 1..7),
        slack in 0i64..4,
    ) {
        let p = parent(&targets,&nodes);
        check(&p,&remove_and_retarget(&p),p.budget(slack))?;
    }

    #[test]
    fn finite_mixed_delta_matches_complete_simultaneous_child(
        targets in prop::collection::vec(0i64..6, 2..5),
        nodes in prop::collection::vec((0i64..6, any::<bool>(), any::<bool>()), 1..7),
        x in -2i64..6,
        amount in -2i64..6,
        slack in 0i64..7,
    ) {
        let p = parent(&targets,&nodes);
        check(&p,&mixed(&p,x,amount),p.budget(slack))?;
    }
}
