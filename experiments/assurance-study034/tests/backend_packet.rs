#![allow(clippy::unwrap_used)]
use assurance_study034::{
    capture::{Capture, reconstruct},
    fixtures,
};
use behavior_engine::store::{Backend, Store};
use serde_json::json;
fn captured() -> (behavior_engine::semantic::Module, Store<Capture>) {
    let m = fixtures::module(false, false).unwrap();
    let original = fixtures::store(
        &m,
        vec![
            fixtures::parent("p", "Open"),
            fixtures::child("c", "p", "Active"),
        ],
    )
    .unwrap();
    let genesis = original.genesis().unwrap().clone();
    let store = Store::create(Capture::default(), &m, genesis).unwrap();
    (m, store)
}
#[test]
fn transports_original_create_and_every_applied_commit_argument() {
    let (m, mut s) = captured();
    let initial = s.current_history().unwrap();
    let original_genesis = s.genesis().unwrap().clone();
    let inv = fixtures::invoke(
        &s,
        &m,
        "finish",
        json!({"c":{"entity":"Child","id":"c"}}),
        json!({}),
    )
    .unwrap();
    s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    let inv = fixtures::invoke(
        &s,
        &m,
        "remove_child",
        json!({"c":{"entity":"Child","id":"c"}}),
        json!({}),
    )
    .unwrap();
    s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    let packet = s.backend().packet().unwrap();
    assert_eq!(packet.creation.genesis, original_genesis);
    assert_eq!(packet.creation.seed.len(), 2);
    assert_eq!(packet.creation.seed_refs.len(), 1);
    assert_eq!(packet.commits.len(), 2);
    assert_eq!(packet.commits[1].removals.len(), 1);
    let rebuilt = reconstruct(&packet).unwrap();
    assert_eq!(
        rebuilt.current_history().unwrap(),
        s.current_history().unwrap()
    );
    assert_eq!(rebuilt.history_at(0).unwrap(), initial);
    assert_eq!(
        rebuilt.backend().record(1).unwrap(),
        s.backend().record(1).unwrap()
    );
    assert_eq!(
        rebuilt
            .backend()
            .removed_at(&behavior_engine::store::documents::EntityKey {
                entity: "Child".into(),
                id: "c".into()
            })
            .unwrap(),
        Some(2)
    );
}
#[test]
fn duplicate_and_out_of_order_steps_reject() {
    let (m, mut s) = captured();
    for a in ["finish", "activate"] {
        let b = if a == "finish" {
            json!({"c":{"entity":"Child","id":"c"}})
        } else {
            json!({"c":{"entity":"Child","id":"c"},"p":{"entity":"Parent","id":"p"}})
        };
        let inv = fixtures::invoke(&s, &m, a, b, json!({})).unwrap();
        s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
            .unwrap();
    }
    let p = s.backend().packet().unwrap();
    let mut duplicate = p.clone();
    duplicate.commits.push(p.commits[0].clone());
    assert!(reconstruct(&duplicate).is_err());
    let mut omitted = p.clone();
    omitted.commits.remove(0);
    assert!(reconstruct(&omitted).is_err());
    let mut reversed = p;
    reversed.commits.reverse();
    assert!(reconstruct(&reversed).is_err());
}
#[test]
fn command_only_event_preserves_state_and_advances_full_history() {
    let m = fixtures::module(true, false).unwrap();
    let original = fixtures::store(&m, vec![]).unwrap();
    let mut s = Store::create(Capture::default(), &m, original.genesis().unwrap().clone()).unwrap();
    let before = s.current_history().unwrap();
    let inv = fixtures::invoke(&s, &m, "tick", json!({}), json!({})).unwrap();
    s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    let after = s.current_history().unwrap();
    assert_eq!(before.state, after.state);
    assert_ne!(before, after);
    assert_eq!(after.position, 1);
    assert_eq!(
        reconstruct(&s.backend().packet().unwrap())
            .unwrap()
            .current_history()
            .unwrap(),
        after
    );
}
#[test]
fn packet_wire_bounds_and_wrong_heads_fail() {
    assert!(assurance_study034::capture::decode_packet(br#"{"format":"x","format":"y"}"#).is_err());
    assert!(assurance_study034::capture::decode_packet(&vec![b' '; 64 * 1024 * 1024 + 1]).is_err());
    let (m, mut s) = captured();
    let inv = fixtures::invoke(
        &s,
        &m,
        "finish",
        json!({"c":{"entity":"Child","id":"c"}}),
        json!({}),
    )
    .unwrap();
    s.commit(&m, &s.current().unwrap(), &inv.bundle.unwrap())
        .unwrap();
    let mut packet = s.backend().packet().unwrap();
    packet.commits[0].new_head.last_record = format!("sha256:{}", "0".repeat(64));
    assert!(reconstruct(&packet).is_err());
}
