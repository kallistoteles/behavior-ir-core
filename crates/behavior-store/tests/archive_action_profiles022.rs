#![allow(clippy::unwrap_used, clippy::expect_used)]

//! Actual 022 captures from the proven pre-017 CLI and current Core. Profiles
//! arise from the original evaluator's observations/defaults, never retagging.

mod common;

use behavior_core::invocation::{invoke_document, replay_invocation};
use behavior_core::semantic::module::Module;
use behavior_store::documents::{EntityKey, EvidencePolicy, SeedEntity, data_version};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::{Value as Json, json};
use sha2::{Digest, Sha256};
use std::path::{Path, PathBuf};

fn root() -> PathBuf {
    common::fixtures().join("replay/022/archive-actions")
}

fn checked(relative: &str) -> String {
    let text = common::read(&root().join(relative));
    let receipt = common::json(&root().join("receipt.json"));
    assert_eq!(
        receipt["files"][relative],
        json!(format!("sha256:{:x}", Sha256::digest(text.as_bytes()))),
        "original capture changed: {relative}"
    );
    text
}

fn setup(module_text: &str) -> (Module, Store<InMemoryBackend>) {
    let module = behavior_core::admit(module_text).unwrap();
    let genesis = genesis_for(
        &module,
        EvidencePolicy::none(),
        vec![SeedEntity {
            entity: "Counter".into(),
            value: json!({"id":"c1","value":7}),
        }],
    );
    let store = Store::create(InMemoryBackend::new(), &module, genesis).unwrap();
    (module, store)
}

fn authority(store: &Store<InMemoryBackend>) -> Json {
    let at = store.current().unwrap();
    let key = EntityKey {
        entity: "Counter".into(),
        id: "c1".into(),
    };
    json!({"genesis":store.backend().genesis().unwrap(), "head":store.backend().head().unwrap(),
           "keys":store.backend().keys_at("Counter",at.position).unwrap(),
           "version":store.backend().version_at(&key,at.position).unwrap(),
           "next_record":store.backend().record(at.position+1).unwrap(),
           "used":store.backend().used_at(&key,at.position).unwrap()})
}

fn snapshot(store: &Store<InMemoryBackend>) -> Json {
    let at = store.current().unwrap();
    let value = store
        .load(
            &EntityKey {
                entity: "Counter".into(),
                id: "c1".into(),
            },
            &at,
        )
        .unwrap()
        .value;
    json!({"format":"behavior.snapshot.v1", "data_version":data_version(&store.store_id().unwrap(), &at),
           "entities":[{"entity":"Counter","value":value}],
           "facts":{"universe":[{"entity":"Counter","members":[value]}]}})
}

fn immutable_write(path: &Path, bytes: &[u8]) {
    if path.exists() {
        assert_eq!(
            std::fs::read(path).unwrap(),
            bytes,
            "refusing to replace captured bytes: {}",
            path.display()
        );
    } else {
        std::fs::write(path, bytes).unwrap();
    }
}

/// Explicit input capture is the sole write mode; normal collection/gates only
/// verify immutable inputs. This is not a runtime or validation bypass.
#[test]
fn original_capture_inputs_reproduce_canonical_store_coordinates() {
    let capture = std::env::var("CAPTURE_ARCHIVE_ACTION022").as_deref() == Ok("inputs");
    for version in ["0.4", "0.5", "0.6", "0.7", "0.8"] {
        let module_path = format!("{version}/module.json");
        let text = if capture {
            common::read(&root().join(&module_path))
        } else {
            checked(&module_path)
        };
        let (module, store) = setup(&text);
        let before = authority(&store);
        let actual_snapshot = snapshot(&store);
        let setup = json!({"module":module_path, "seed":[{"entity":"Counter","value":{"id":"c1","value":7}}],
                          "data_version":actual_snapshot["data_version"], "authority":before});
        for (name, value) in [
            ("snapshot.json", &actual_snapshot),
            ("store-setup.json", &setup),
        ] {
            let relative = format!("{version}/{name}");
            if capture {
                immutable_write(&root().join(&relative), format!("{}\n", value).as_bytes());
            } else {
                assert_eq!(
                    serde_json::from_str::<Json>(&checked(&relative)).unwrap(),
                    *value
                );
            }
        }
        if capture && version == "0.8" {
            for outcome in ["allow", "refusal", "error"] {
                let request =
                    common::read(&root().join(format!("{version}/{outcome}.request.json")));
                let record =
                    invoke_document(&module, &request, &actual_snapshot.to_string(), None).unwrap();
                immutable_write(
                    &root().join(format!("{version}/{outcome}.record.json")),
                    format!("{}\n", record.to_json_string()).as_bytes(),
                );
            }
        }
        assert_eq!(authority(&store), before);
    }
}

fn require_cell(version: &str, outcome: &str, expected: &str) {
    let (module, store) = setup(&checked(&format!("{version}/module.json")));
    let before = authority(&store);
    let text = checked(&format!("{version}/{outcome}.record.json"));
    let record: Json = serde_json::from_str(&text).unwrap();
    assert_eq!(record["data_version"], snapshot(&store)["data_version"]);
    assert_eq!(record["outcome"]["kind"], "evaluated");
    assert_eq!(record["outcome"]["record_kind"], "decision");
    let inner = &record["outcome"]["record"];
    assert_eq!(
        inner["record_version"], version,
        "actual producer's original profile"
    );
    assert_eq!(inner["result"], expected);
    assert_eq!(inner["state"]["c"], json!({"id":"c1","value":7}));
    if expected == "ALLOW" {
        assert!(!inner["changes"].as_array().unwrap().is_empty());
    } else {
        assert_eq!(inner["changes"], json!([]));
        assert!(!inner["reasons"].as_array().unwrap().is_empty());
    }
    let core = replay_invocation(&module, &text);
    assert!(core.matches, "{version}/{outcome} Core: {:?}", core.diff);
    assert!(core.diff.is_none());
    let historical = store.replay_invocation(&module, &text).unwrap();
    assert!(
        historical.matches,
        "{version}/{outcome} Store: {:?}",
        historical.diff
    );
    assert!(historical.diff.is_none());
    assert_eq!(
        authority(&store),
        before,
        "both boundaries leave canonical authority unchanged"
    );
    let kind = if version == "0.8" {
        "current"
    } else {
        "archived"
    };
    println!(
        "COVERAGE022 C022-ACTION-{kind}-{version}-{outcome} core_invocation original_profile_outcome"
    );
    println!(
        "COVERAGE022 C022-ACTION-{kind}-{version}-{outcome} store_invocation original_profile_outcome"
    );
}

macro_rules! cell {
    ($name:ident, $version:literal, $outcome:literal, $result:literal) => {
        #[test]
        fn $name() {
            require_cell($version, $outcome, $result);
        }
    };
}

cell!(archived_04_allow, "0.4", "allow", "ALLOW");
cell!(archived_04_refusal, "0.4", "refusal", "DENY");
cell!(archived_04_error, "0.4", "error", "ERROR");
cell!(archived_05_allow, "0.5", "allow", "ALLOW");
cell!(archived_05_refusal, "0.5", "refusal", "DENY");
cell!(archived_05_error, "0.5", "error", "ERROR");
cell!(archived_06_allow, "0.6", "allow", "ALLOW");
cell!(archived_06_refusal, "0.6", "refusal", "DENY");
cell!(archived_06_error, "0.6", "error", "ERROR");
cell!(archived_07_allow, "0.7", "allow", "ALLOW");
cell!(archived_07_refusal, "0.7", "refusal", "DENY");
cell!(archived_07_error, "0.7", "error", "ERROR");
cell!(current_08_allow, "0.8", "allow", "ALLOW");
cell!(current_08_refusal, "0.8", "refusal", "DENY");
cell!(current_08_error, "0.8", "error", "ERROR");
