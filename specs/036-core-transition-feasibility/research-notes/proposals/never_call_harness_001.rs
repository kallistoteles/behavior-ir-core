extern crate core036_never_dependency as dependency;

fn main() {
    assert_eq!(dependency::take_stop_count(), 0);
    for (index, length) in [(0, 0), (0, 17), (17, 17), (1, usize::MAX), (usize::MAX, usize::MAX)] {
        assert_eq!(dependency::remaining(index, length), length - index);
        assert_eq!(dependency::take_stop_count(), 0);
    }
    for (index, length) in [(1, 0), (18, 17), (usize::MAX, 0)] {
        let result = std::panic::catch_unwind(|| dependency::remaining(index, length));
        assert!(result.is_err());
        assert_eq!(dependency::take_stop_count(), 1);
    }
    println!("CORE036_NEVER_NATIVE_CONTROLS_OK");
}
