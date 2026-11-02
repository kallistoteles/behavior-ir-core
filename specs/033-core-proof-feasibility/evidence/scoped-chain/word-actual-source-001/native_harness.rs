fn main() {
    println!("{:?}", core033_word_checked::checker_step(0_u32,0_u32,0_u32));
    println!("{:?}", core033_word_checked::checker_step(4294967295_u32,4294967295_u32,0_u32));
    println!("{:?}", core033_word_checked::checker_step(2147483648_u32,2147483647_u32,4294967295_u32));
    println!("{:?}", core033_word_checked::checker_step(3735928559_u32,2271560481_u32,2882400001_u32));
}
