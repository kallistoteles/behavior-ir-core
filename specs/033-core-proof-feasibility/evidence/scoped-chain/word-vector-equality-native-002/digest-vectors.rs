fn equal(input: [u32;16])->u32 { digest033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6],input[7],input[8],input[9],input[10],input[11],input[12],input[13],input[14],input[15])[0] }
fn main() {
  let mut seed=0x033faced_u32;
  for _ in 0..32 { let mut values=[0_u32;16];for i in 0..8 { seed=seed.wrapping_mul(1664525).wrapping_add(1013904223);values[i]=seed;values[8+i]=seed; } assert_eq!(equal(values),1); }
  for position in 0..8 { for bit in 0..32_u32 { for side in 0..2_usize { let mut values=[0xfedcba98_u32;16];values[side*8+position]^=1_u32<<bit;assert_eq!(equal(values),0,"full-word position {} bit {} side {}",position,bit,side); } } }
  println!("passed 32 equality vectors and 512 independent full-word bit flips");
}
