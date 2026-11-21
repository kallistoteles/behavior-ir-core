use transition_study036::protocol::{Mode, Request};
#[test]
fn rejects_unknown_and_checked_flags() {
    assert!(
        serde_json::from_str::<Request>(
            r#"{"format":"core036.request.v1","mode":"timing","stream":"x","verified":true}"#
        )
        .is_err()
    );
    assert!(
        serde_json::from_str::<Request>(r#"{"format":"bad","mode":"timing","stream":"x"}"#)
            .is_err()
    );
}
#[test]
fn exact_modes() {
    assert!(serde_json::from_str::<Mode>(r#""other""#).is_err());
}

#[test]
fn rejects_oversized_stream() {
    let s = "x".repeat(257);
    let v = serde_json::json!({"format":"core036.request.v1","mode":"timing","stream":s});
    assert!(serde_json::from_value::<Request>(v).is_err());
}
