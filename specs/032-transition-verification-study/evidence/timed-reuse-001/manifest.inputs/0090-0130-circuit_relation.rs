#![allow(clippy::unwrap_used)]
use transition_study032::circuit::{MachineState, Shape, StepWitness, check_step};
#[test]
fn exact_constrained_update_rejects_a_wrong_but_positive_poststate() {
    let shape = Shape::control(1);
    let state = MachineState::empty(&shape);
    let create = StepWitness::new(0, 0, 0, 0, 0);
    let next = state.apply(&shape, &create).unwrap();
    assert!(check_step(&shape, &state, &create, &next).unwrap());
    let set = StepWitness::new(1, 0, 2, 0, 0);
    let next2 = next.apply(&shape, &set).unwrap();
    assert!(check_step(&shape, &next, &set, &next2).unwrap());
    let mut forged = next2;
    forged.values[0] = 3;
    assert!(!check_step(&shape, &next, &set, &forged).unwrap());
}
#[test]
fn lifetime_used_bits_commands_and_counters_are_actual_constraints() {
    let shape = Shape::control(1);
    let state = MachineState::empty(&shape);
    let create = StepWitness::new(0, 0, 0, 0, 0);
    let first = state.apply(&shape, &create).unwrap();
    let remove = StepWitness::new(2, 0, 0, 0, 0);
    let gone = first.apply(&shape, &remove).unwrap();
    let refused = gone.apply(&shape, &create).unwrap();
    assert_eq!(refused.commits, gone.commits);
    assert_eq!(refused.command_occurrences, gone.command_occurrences);
    assert!(check_step(&shape, &gone, &create, &refused).unwrap());
    let mut fake = refused.clone();
    fake.used[0] = false;
    assert!(!check_step(&shape, &gone, &create, &fake).unwrap());
    let emit = StepWitness::new(3, 0, 0, 0, 0);
    let emitted = gone.apply(&shape, &emit).unwrap();
    assert_eq!(emitted.live, gone.live);
    assert_eq!(emitted.command_occurrences, gone.command_occurrences + 2);
    assert!(check_step(&shape, &gone, &emit, &emitted).unwrap());
    let mut fake = emitted;
    fake.command_occurrences -= 1;
    assert!(!check_step(&shape, &gone, &emit, &fake).unwrap());
}
#[test]
fn negative_values_thresholds_and_full_256_bit_hashes_are_preserved() {
    let shape = Shape::control(1);
    let initial = MachineState::empty(&shape);
    let create = StepWitness::new(0, 0, 0, 0, 0);
    let live = initial.apply(&shape, &create).unwrap();
    for step in [
        StepWitness::new(1, 0, -1, 0, 0),
        StepWitness::new(4, 0, 0, -1, 0),
        StepWitness::new(4, 0, 0, 2, 0),
        StepWitness::new(4, 0, 0, 2, -1),
    ] {
        let next = live.apply(&shape, &step).unwrap();
        assert!(check_step(&shape, &live, &step, &next).unwrap());
    }
    let next = live
        .apply(&shape, &StepWitness::new(3, 0, 0, 0, 0))
        .unwrap();
    let mut bad = next;
    bad.attempt_digest[31] ^= 0x80;
    assert!(!check_step(&shape, &live, &StepWitness::new(3, 0, 0, 0, 0), &bad).unwrap());
}
#[test]
fn reducing_a_digest_to_one_scalar_has_an_actual_collision() {
    use ff::{Field, PrimeField};
    use transition_study032::circuit::state::{Fr, bytes_field, digest_fields};
    let modulus = Fr::MODULUS.trim_start_matches("0x");
    let mut p = [0u8; 32];
    for (i, pair) in modulus.as_bytes().rchunks(2).enumerate() {
        p[i] = u8::from_str_radix(std::str::from_utf8(pair).unwrap(), 16).unwrap();
    }
    assert_eq!(bytes_field(&p), Fr::ZERO);
    assert_eq!(bytes_field(&[0; 32]), Fr::ZERO);
    assert_ne!(digest_fields(&p), digest_fields(&[0; 32]));
}
