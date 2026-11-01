fn main() {
    for x in [i64::MIN, -1_i64, 0_i64, 1_i64, i64::MAX] {
        println!("{} {}", x, core033_checked::checker_step(x));
    }
}
