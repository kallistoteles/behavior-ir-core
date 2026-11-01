mod common;

use common::{Fixture, read_json};
use std::fs;

type TestResult = Result<(), Box<dyn std::error::Error>>;

#[test]
fn genuine_available_inputs_freeze_before_future_keys_exist() -> TestResult {
    let fixture = Fixture::new()?;
    let result = fixture.freeze()?;
    assert_eq!(result.status.code(), Some(0), "{:?}", result);
    let manifest = read_json(&fixture.0.join("frozen/manifest.json"))?;
    assert_eq!(manifest["format_version"], "core033.input.v1");
    assert_eq!(manifest["inputs"]["module"]["bytes"], 3);
    assert_eq!(
        manifest["inputs"]["module"]["sha256"],
        "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
    );
    assert!(!fixture.0.join("frozen/parameters/vk.bin").exists());
    assert!(fixture.0.join("frozen/completion.json").is_file());
    Ok(())
}

#[test]
fn exact_repeat_is_immutable_but_changed_inputs_cannot_overwrite() -> TestResult {
    let fixture = Fixture::new()?;
    assert!(fixture.freeze()?.status.success());
    let original = fs::read(fixture.0.join("frozen/manifest.json"))?;
    assert!(fixture.freeze()?.status.success());
    assert_eq!(original, fs::read(fixture.0.join("frozen/manifest.json"))?);
    fs::write(fixture.0.join("module.ir"), b"changed")?;
    assert_eq!(fixture.freeze()?.status.code(), Some(3));
    assert_eq!(original, fs::read(fixture.0.join("frozen/manifest.json"))?);
    Ok(())
}

#[test]
fn future_output_cannot_be_a_required_input() -> TestResult {
    let fixture = Fixture::new()?;
    let mut profile = fixture.profile()?;
    profile["inputs"]["verification_key"] = "frozen/parameters/vk.bin".into();
    fixture.set_profile(&profile)?;
    let result = fixture.freeze()?;
    assert_eq!(result.status.code(), Some(2));
    assert!(String::from_utf8(result.stderr)?.contains("future"));
    assert!(!fixture.0.join("frozen").exists());
    Ok(())
}

#[test]
fn unknown_version_and_escaping_output_slots_are_rejected() -> TestResult {
    let fixture = Fixture::new()?;
    let mut profile = fixture.profile()?;
    profile["format_version"] = "core033.profile.future".into();
    fixture.set_profile(&profile)?;
    assert_eq!(fixture.freeze()?.status.code(), Some(2));
    profile["format_version"] = "core033.profile.v1".into();
    profile["output_slots"]["verification_key"] = "../escape.bin".into();
    fixture.set_profile(&profile)?;
    assert_eq!(fixture.freeze()?.status.code(), Some(2));
    Ok(())
}

#[test]
fn incomplete_output_directory_is_never_a_completed_manifest() -> TestResult {
    let fixture = Fixture::new()?;
    fs::create_dir(fixture.0.join("frozen"))?;
    fs::write(fixture.0.join("frozen/manifest.json"), b"partial")?;
    assert_eq!(fixture.freeze()?.status.code(), Some(3));
    assert_eq!(
        fs::read(fixture.0.join("frozen/manifest.json"))?,
        b"partial"
    );
    Ok(())
}

#[test]
fn duplicate_artifact_names_cannot_be_silently_reduced() -> TestResult {
    let fixture = Fixture::new()?;
    fs::write(
        fixture.0.join("profile.json"),
        br#"{
        "format_version":"core033.profile.v1","name":"duplicate-control",
        "inputs":{"module":"module.ir","module":"module.ir"},"output_slots":{}
    }"#,
    )?;
    assert_eq!(fixture.freeze()?.status.code(), Some(2));
    assert!(!fixture.0.join("frozen").exists());
    Ok(())
}
