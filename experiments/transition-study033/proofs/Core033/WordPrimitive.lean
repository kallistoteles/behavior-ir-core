import Core033.WordSource

namespace Core033.WordPrimitive
open WordIR

/-- Transitional all-u32-primitive fixture, not the full K/SHA program. -/
def program : Program := ⟨3,[.literal 0x12345678,.band 0 1,.bxor 4 2,.bnot 5,
  .badd 6 3,.rotr 7 13,.shr 8 7],[4,5,6,7,8,9]⟩

theorem safe : WordSource.checkSafe (WordSource.lowerFunction program) = true := by decide

theorem exact_all_inputs (inputs : Nat → Word) : program.eval inputs =
    let a := inputs 0 &&& inputs 1
    let b := a ^^^ inputs 2
    let c := ~~~b
    let d := c+0x12345678
    let e := d.rotateRight 13
    [a,b,c,d,e,e.ushiftRight 7] := by
  simp [program,Program.eval,WordIR.run,Op.eval,WordIR.write]

end Core033.WordPrimitive
