extern crate utf8033;
fn check(value: u32) {
    let actual = utf8033::checker_step(value);
    match char::from_u32(value) {
        Some(character) => {
            let mut buffer = [0_u8;4];
            let expected = character.encode_utf8(&mut buffer).as_bytes();
            assert_eq!(actual[5],1,"scalar admission {}",value);
            assert_eq!(actual[4] as usize,expected.len(),"width {}",value);
            for index in 0..4 {
                let wanted = expected.get(index).copied().unwrap_or(0);
                assert_eq!(actual[index],u32::from(wanted),"byte {} at {}",value,index);
            }
        }
        None => assert_eq!(actual[5],0,"invalid scalar admitted {}",value),
    }
}
fn main() {
    for value in 0..=0x110000 { check(value); }
    for value in [0x110001,0x1fffff,0x200000,0x7fffffff,0x80000000,u32::MAX] {
        check(value);
    }
    let mut value = 0x033a4d19_u32;
    for _ in 0..4096 {
        value ^= value << 13;
        value ^= value >> 17;
        value ^= value << 5;
        check(value);
    }
    println!("passed 1118215 native UTF8 vectors, all Unicode scalars and all surrogates");
}
