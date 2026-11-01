mod common;
use core_proof_feasibility033::claim::{Phase, bind_endpoint};
type TestResult = Result<(), Box<dyn std::error::Error>>;

#[test]
fn genuine_initialized_committed_and_explicit_attempt_frames_are_distinct() -> TestResult {
    let init = common::claims::init();
    assert_eq!(bind_endpoint(&common::claims::fields(&init), &init)?, init);
    let mut done = init.clone();
    done.phase = Phase::Done;
    done.event_position = 3;
    done.head = Some([12; 32]);
    assert_eq!(bind_endpoint(&common::claims::fields(&done), &done)?, done);
    let mut attempt = done.clone();
    attempt.phase = Phase::AttemptDone;
    attempt.attempt = Some([13; 32]);
    assert_eq!(
        bind_endpoint(&common::claims::fields(&attempt), &attempt)?,
        attempt
    );
    assert!(bind_endpoint(&common::claims::fields(&attempt), &done).is_err());
    Ok(())
}
#[test]
fn every_expected_subject_digest_position_and_microstep_count_is_checked() -> TestResult {
    let genuine = common::claims::init();
    let fields = common::claims::fields(&genuine);
    bind_endpoint(&fields, &genuine)?;
    for i in 0..13 {
        let mut changed = genuine.clone();
        match i {
            0 => changed.origin[0] ^= 1,
            1 => changed.release[0] ^= 1,
            2 => changed.program[0] ^= 1,
            3 => changed.profile[0] ^= 1,
            4 => changed.content_root[0] ^= 1,
            5 => changed.used_root[0] ^= 1,
            6 => changed.request[0] ^= 1,
            7 => changed.context[0] ^= 1,
            8 => changed.output[0] ^= 1,
            9 => changed.frontier[0] ^= 1,
            10 => changed.helper_subject[0] ^= 1,
            11 => changed.event_position += 1,
            _ => changed.microsteps += 1,
        }
        assert!(bind_endpoint(&fields, &changed).is_err());
    }
    Ok(())
}
#[test]
fn limb_overflow_truncation_reordering_and_unfinished_phases_fail() -> TestResult {
    let expected = common::claims::init();
    let fields = common::claims::fields(&expected);
    bind_endpoint(&fields, &expected)?;
    let mut overflow = fields.clone();
    overflow[0][8] = 1;
    assert!(bind_endpoint(&overflow, &expected).is_err());
    let mut changed = fields.clone();
    changed[3][0] ^= 1;
    assert!(bind_endpoint(&changed, &expected).is_err());
    assert!(bind_endpoint(&fields[..fields.len() - 1], &expected).is_err());
    let mut reordered = fields.clone();
    reordered.swap(0, 4);
    assert!(bind_endpoint(&reordered, &expected).is_err());
    for phase in [
        Phase::Boot,
        Phase::Initialize,
        Phase::Evaluate,
        Phase::Maintain,
        Phase::Finalize,
        Phase::FinalizeAttempt,
    ] {
        let mut partial = expected.clone();
        partial.phase = phase;
        assert!(bind_endpoint(&common::claims::fields(&partial), &partial).is_err());
    }
    let mut zero = expected.clone();
    zero.microsteps = 0;
    assert!(bind_endpoint(&common::claims::fields(&zero), &zero).is_err());
    Ok(())
}
