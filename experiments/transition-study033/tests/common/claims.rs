use core_proof_feasibility033::claim::{EndpointClaim, Phase};
pub fn init() -> EndpointClaim {
    EndpointClaim {
        format_version: "core033.endpoint.v1".into(),
        origin: [1; 32],
        release: [2; 32],
        program: [3; 32],
        profile: [4; 32],
        content_root: [5; 32],
        used_root: [6; 32],
        head: None,
        event_position: 0,
        helper_subject: [7; 32],
        output: [8; 32],
        request: [9; 32],
        context: [10; 32],
        frontier: [11; 32],
        phase: Phase::InitDone,
        microsteps: 4,
        attempt: None,
    }
}
fn scalar(value: u64) -> [u8; 32] {
    let mut bytes = [0; 32];
    bytes[..8].copy_from_slice(&value.to_le_bytes());
    bytes
}
fn digest(out: &mut Vec<[u8; 32]>, value: [u8; 32]) {
    for part in value.as_chunks::<8>().0 {
        let mut bytes = [0; 32];
        bytes[..8].copy_from_slice(part);
        out.push(bytes);
    }
}
fn optional(out: &mut Vec<[u8; 32]>, value: Option<[u8; 32]>) {
    out.push(scalar(u64::from(value.is_some())));
    digest(out, value.unwrap_or([0; 32]));
}
/// Independent expected vector, not a production codec round-trip.
pub fn fields(c: &EndpointClaim) -> Vec<[u8; 32]> {
    let mut out = Vec::new();
    for d in [
        c.origin,
        c.release,
        c.program,
        c.profile,
        c.content_root,
        c.used_root,
    ] {
        digest(&mut out, d);
    }
    optional(&mut out, c.head);
    out.push(scalar(c.event_position));
    for d in [c.helper_subject, c.output, c.request, c.context, c.frontier] {
        digest(&mut out, d);
    }
    out.push(scalar(c.phase as u64));
    out.push(scalar(c.microsteps));
    optional(&mut out, c.attempt);
    out
}
