#![allow(clippy::unwrap_used, clippy::expect_used)]
use behavior_core::canonical::CanonicalError;
use behavior_verify::{Attestation, governance::Authorization};
use serde_json::{Value, json};
use std::path::Path;

fn fixture(name: &str) -> String {
    std::fs::read_to_string(
        Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../tests/fixtures/canonicalization/baseline")
            .join(name),
    )
    .unwrap()
}

#[test]
fn profile_construction_preserves_normalization_extremes_and_detachment() {
    use behavior_verify::{CheckKind, Profile};
    for (name, p) in [
        (
            "profile.json",
            Profile {
                checks: vec![CheckKind::Preservation],
                ..Profile::default()
            },
        ),
        (
            "profile-empty.json",
            Profile {
                checks: vec![],
                rlimit: 0,
                wall_clock_guard_ms: 0,
            },
        ),
        (
            "profile-extreme.json",
            Profile {
                checks: CheckKind::ALL
                    .into_iter()
                    .rev()
                    .chain(CheckKind::ALL)
                    .collect(),
                rlimit: u64::MAX,
                wall_clock_guard_ms: u64::MAX,
            },
        ),
    ] {
        let expected = fixture(name);
        let doc = p.to_json();
        assert_eq!(
            behavior_core::canonical::to_canonical_string(&doc).unwrap(),
            expected
        );
        assert_eq!(p.hash(), doc["hash"]);
        let mut detached = doc;
        detached["unsupported"] = json!(1.5);
        assert_eq!(
            behavior_core::canonical::to_canonical_string(&p.to_json()).unwrap(),
            expected
        );
    }
}

#[test]
fn raw_serializers_preserve_valid_bytes_and_refuse_mutated_drafts() {
    for name in ["purchase-cold.json", "migration-verified.json"] {
        let text = fixture(name);
        let value: Value = serde_json::from_str(&text).unwrap();
        let mut a = Attestation {
            result: value["result"].as_str().unwrap().into(),
            hash: value["hash"].as_str().unwrap().into(),
            value,
            checks: vec![],
        };
        assert_eq!(a.to_json_string().unwrap(), text);
        let old = a.hash.clone();
        a.value["draft"] = json!({"items":[1.5]});
        assert!(
            matches!(a.to_json_string(),Err(CanonicalError::Float(p)) if p=="$.draft.items[0]")
        );
        assert_eq!(a.hash, old);
        assert_eq!(a.value["hash"], old);
    }
    for name in ["authorization.json", "migration-authorization.json"] {
        let text = fixture(name);
        let value: Value = serde_json::from_str(&text).unwrap();
        let mut a = Authorization {
            decision: value["decision"].as_str().unwrap().into(),
            hash: value["hash"].as_str().unwrap().into(),
            value,
        };
        assert_eq!(a.to_json_string().unwrap(), text);
        let old = a.hash.clone();
        a.value["draft"] = json!({"items":[1.5]});
        a.value["signature"] = json!("retained untrusted signature");
        assert!(
            matches!(a.to_json_string(),Err(CanonicalError::Float(p)) if p=="$.draft.items[0]")
        );
        assert_eq!(a.hash, old);
        assert_eq!(a.value["hash"], old);
    }
}
