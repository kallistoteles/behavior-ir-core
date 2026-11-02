//! New tree controls: old roots, canonical content, full keys and real byte tampering.
use core_proof_feasibility033::{
    codec::{EntityKey, EntityValue},
    tree::{LeafValue, MemoryNodes, Node, Root, TreeKind},
};

type TestResult = Result<(), Box<dyn std::error::Error>>;

#[test]
fn changed_paths_match_independent_rebuild_and_keep_old_roots() -> TestResult {
    let mut nodes = MemoryNodes::default();
    let empty = Root::empty(TreeKind::Live, &mut nodes)?;
    let a = EntityKey::new("E", "");
    let b = EntityKey::new("E", "å");
    let first = empty
        .put(&mut nodes, &a, Some(EntityValue::new(1, "p")))?
        .after;
    let second = first
        .put(&mut nodes, &b, Some(EntityValue::new(7, "")))?
        .after;
    let updated = second
        .put(&mut nodes, &a, Some(EntityValue::new(9, "p")))?
        .after;
    let old = first.open(&nodes, &a)?.verify(&first, &a)?;
    assert_eq!(old, LeafValue::Live(EntityValue::new(1, "p")));
    assert_eq!(updated.summary.count, 2);
    let rebuilt = empty
        .put(&mut nodes, &a, Some(EntityValue::new(9, "p")))?
        .after
        .put(&mut nodes, &b, Some(EntityValue::new(7, "")))?
        .after;
    assert_eq!(updated, rebuilt);
    assert_eq!(
        empty.open(&nodes, &a)?.verify(&empty, &a)?,
        LeafValue::Absent
    );
    Ok(())
}

#[test]
fn authenticated_reader_and_opening_reject_actual_corrupted_bytes() -> TestResult {
    let mut nodes = MemoryNodes::default();
    let key = EntityKey::new("E", "one");
    let root = Root::empty(TreeKind::Live, &mut nodes)?
        .put(&mut nodes, &key, Some(EntityValue::new(1, "")))?
        .after;
    let opening = root.open(&nodes, &key)?;
    assert!(
        opening
            .verify(&root, &EntityKey::new("E", "other"))
            .is_err()
    );
    let mut changed = opening.clone();
    changed.siblings[0] = Node::empty_leaf(TreeKind::Live);
    assert!(changed.verify(&root, &key).is_err());
    let raw = nodes
        .nodes
        .get_mut(&root.summary.digest)
        .ok_or("missing root node")?;
    raw[0] ^= 1;
    assert!(root.open(&nodes, &key).is_err());
    Ok(())
}

#[test]
fn used_tree_retains_exact_keys_and_negative_live_summary_is_not_approval() -> TestResult {
    let mut nodes = MemoryNodes::default();
    let key = EntityKey::new("E", "used");
    let used = Root::empty(TreeKind::Used, &mut nodes)?
        .put(&mut nodes, &key, None)?
        .after;
    assert_eq!(
        used.open(&nodes, &key)?.verify(&used, &key)?,
        LeafValue::Used
    );
    assert_eq!(used.put(&mut nodes, &key, None)?.after, used);
    let bad = Root::empty(TreeKind::Live, &mut nodes)?
        .put(&mut nodes, &key, Some(EntityValue::new(-1, "")))?
        .after;
    assert!(!bad.summary.positive);
    assert_eq!(bad.summary.count, 1);
    assert!(bad.summary.complete_coverage);
    Ok(())
}

#[test]
fn empty_roots_match_independent_profile_byte_vectors() -> TestResult {
    let mut nodes = MemoryNodes::default();
    let hex = |bytes: &[u8]| bytes.iter().map(|b| format!("{b:02x}")).collect::<String>();
    let live = Node::empty_leaf(TreeKind::Live);
    assert_eq!(
        hex(&live.encode()?),
        "636f72653033332e73656d616e7469632e763100500001636f72653033332e73656d616e7469632e7631000100010000004500000000636f72653033332e73656d616e7469632e7631000200000000000000000000000000000000000000000001"
    );
    assert_eq!(
        hex(&Root::empty(TreeKind::Live, &mut nodes)?.summary.digest),
        "a8c89d8001b44047393c76a979deb711e9dd180bf504c7b7ae003179f988e068"
    );
    assert_eq!(
        hex(&Root::empty(TreeKind::Used, &mut nodes)?.summary.digest),
        "4431d20c2e9009b708b62bc061cefe8543e465ef597ca07c99154584fcf50667"
    );
    let mut wrong = live.encode()?;
    let n = wrong.len();
    wrong[n - 1] = 0;
    assert!(Node::decode(&wrong).is_err());
    wrong[n - 1] = 1;
    wrong[n - 9] = 2;
    assert!(Node::decode(&wrong).is_err());
    Ok(())
}

#[test]
fn full_key_at_a_wrong_address_is_collision_not_absence() -> TestResult {
    use core_proof_feasibility033::codec::encode_key;
    use core_proof_feasibility033::tree::{Opening, TreeError};
    use sha2::{Digest, Sha256};
    let mut nodes = MemoryNodes::default();
    let expected = EntityKey::new("E", "requested");
    let empty = Root::empty(TreeKind::Live, &mut nodes)?;
    let mut opening: Opening = empty.open(&nodes, &expected)?;
    opening.leaf = Node::Leaf {
        kind: TreeKind::Live,
        key: EntityKey::new("E", "different"),
        value: Some(EntityValue::new(1, "")),
        occupied: true,
    };
    let path: [u8; 32] = Sha256::digest(encode_key(&expected)?).into();
    let mut summary = opening.leaf.summary()?;
    for depth in (0..256).rev() {
        let sibling = opening.siblings[depth].summary()?;
        let (left, right) = if path[depth / 8] & (1 << (7 - depth % 8)) == 0 {
            (summary, sibling)
        } else {
            (sibling, summary)
        };
        summary = Node::branch(TreeKind::Live, depth as u16, left, right)?.summary()?;
    }
    let malformed = Root {
        kind: TreeKind::Live,
        summary,
    };
    assert!(matches!(
        opening.verify(&malformed, &expected),
        Err(TreeError::AddressCollision)
    ));
    Ok(())
}
