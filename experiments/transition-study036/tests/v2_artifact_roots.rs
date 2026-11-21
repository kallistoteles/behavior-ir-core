use serde_json::json;
use sha2::{Digest, Sha256};
use std::{collections::BTreeMap, path::PathBuf};
use transition_study036::{error::Result, native_artifacts::InputRoots, protocol::ArtifactRefV2};

fn root() -> Result<PathBuf> {
    let stamp = std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map_err(|e| transition_study036::error::StudyError::Library(e.to_string()))?
        .as_nanos();
    let root = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("private")
        .join(format!("refs-{}-{stamp}", std::process::id()));
    std::fs::create_dir_all(&root)?;
    Ok(root)
}
#[test]
fn controller_roots_preserve_semantic_numbers_and_reject_substitution_and_escape() -> Result<()> {
    let root = root()?;
    let raw = br#"{"value":-0.0,"fraction":1.25}"#;
    std::fs::write(root.join("original.json"), raw)?;
    let roots = InputRoots::new(BTreeMap::from([("input".into(), root.clone())]))?;
    let reference = ArtifactRefV2 {
        root_id: "input".into(),
        path: "original.json".into(),
        bytes: raw.len() as u64,
        sha256: format!("{:x}", Sha256::digest(raw)),
    };
    assert_eq!(roots.read(&reference, 1024)?, raw);
    assert_eq!(
        roots.semantic_json(&reference)?,
        json!({"value":-0.0,"fraction":1.25})
    );
    assert!(roots.control_json(&reference).is_err());
    for (root_id, path, bytes, sha256) in [
        (
            "unregistered",
            "original.json",
            raw.len() as u64,
            reference.sha256.clone(),
        ),
        (
            "input",
            "../original.json",
            raw.len() as u64,
            reference.sha256.clone(),
        ),
        (
            "input",
            "/original.json",
            raw.len() as u64,
            reference.sha256.clone(),
        ),
        ("input", "original.json", 1, reference.sha256.clone()),
        ("input", "original.json", raw.len() as u64, "0".repeat(64)),
    ] {
        let bad = ArtifactRefV2 {
            root_id: root_id.into(),
            path: path.into(),
            bytes,
            sha256,
        };
        assert!(roots.read(&bad, 1024).is_err());
    }
    #[cfg(unix)]
    {
        std::os::unix::fs::symlink(root.join("original.json"), root.join("alias.json"))?;
        let alias = ArtifactRefV2 {
            root_id: "input".into(),
            path: "alias.json".into(),
            bytes: reference.bytes,
            sha256: reference.sha256.clone(),
        };
        assert!(roots.read(&alias, 1024).is_err());
        std::fs::remove_file(root.join("alias.json"))?;
    }
    std::fs::write(root.join("original.json"), br#"{"different":true}"#)?;
    assert!(roots.read(&reference, 1024).is_err());
    Ok(())
}
