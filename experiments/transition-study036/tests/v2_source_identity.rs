//! The metadata must come from the actual compiler/build, not a supplied flag.
use transition_study036::source_identity::compiled_dependency_identity;

#[test]
fn compiled_core_is_unique_and_configuration_is_present() {
    let identity = compiled_dependency_identity().unwrap_or_else(|error| panic!("{error}"));
    assert_eq!(identity.core_packages.len(), 4);
    assert!(
        identity
            .core_packages
            .iter()
            .all(|p| p.source_revision == "63a8c164523275e06ac1d7dc5330db4a899c9d99")
    );
    assert_eq!(identity.compiler_release, "1.98.1");
    assert!(!identity.target.is_empty());
    assert!(!identity.features.is_empty());
    let mut names: Vec<_> = identity
        .core_packages
        .iter()
        .map(|p| p.name.as_str())
        .collect();
    names.sort_unstable();
    assert_eq!(
        names,
        [
            "behavior-core",
            "behavior-engine",
            "behavior-store",
            "behavior-verify"
        ]
    );
    for package in &identity.core_packages {
        assert!(package.manifest_path.contains("/core-reuse/crates/"));
        assert_eq!(package.source_export_sha256.len(), 64);
        assert!(
            package
                .source_export_sha256
                .bytes()
                .all(|b| b.is_ascii_hexdigit())
        );
    }
    assert!(
        identity
            .features
            .iter()
            .any(|f| f == "behavior-engine/research035")
    );
    assert_eq!(identity.source_subject_sha256.len(), 64);
    assert_eq!(identity.native_proof_status, "unestablished");
}
