import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup164
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10496 : List WordIR.Op := [.bxor 0 10538]
def bytes10496 : Bytes := ("    let r0000292b: u32 = r00000000 ^ r0000292a;\n" : String).toByteArray.data.toList
theorem checked10496 : bytes10496=statementBytes 10539 (op10496.map lower) ∧ bytes10496.length=48 := by core033_kernel_decide
def op10497 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10497 : Bytes := ("    let r0000292c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10497 : bytes10497=statementBytes 10540 (op10497.map lower) ∧ bytes10497.length=41 := by core033_kernel_decide
def op10498 : List WordIR.Op := [.bnot 10540]
def bytes10498 : Bytes := ("    let r0000292d: u32 = !r0000292c;\n" : String).toByteArray.data.toList
theorem checked10498 : bytes10498=statementBytes 10541 (op10498.map lower) ∧ bytes10498.length=37 := by core033_kernel_decide
def op10499 : List WordIR.Op := [.band 10539 10541]
def bytes10499 : Bytes := ("    let r0000292e: u32 = r0000292b & r0000292d;\n" : String).toByteArray.data.toList
theorem checked10499 : bytes10499=statementBytes 10542 (op10499.map lower) ∧ bytes10499.length=48 := by core033_kernel_decide
def op10500 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10500 : Bytes := ("    let r0000292f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10500 : bytes10500=statementBytes 10543 (op10500.map lower) ∧ bytes10500.length=41 := by core033_kernel_decide
def op10501 : List WordIR.Op := [.bxor 0 10543]
def bytes10501 : Bytes := ("    let r00002930: u32 = r00000000 ^ r0000292f;\n" : String).toByteArray.data.toList
theorem checked10501 : bytes10501=statementBytes 10544 (op10501.map lower) ∧ bytes10501.length=48 := by core033_kernel_decide
def op10502 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10502 : Bytes := ("    let r00002931: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10502 : bytes10502=statementBytes 10545 (op10502.map lower) ∧ bytes10502.length=41 := by core033_kernel_decide
def op10503 : List WordIR.Op := [.bnot 10545]
def bytes10503 : Bytes := ("    let r00002932: u32 = !r00002931;\n" : String).toByteArray.data.toList
theorem checked10503 : bytes10503=statementBytes 10546 (op10503.map lower) ∧ bytes10503.length=37 := by core033_kernel_decide
def op10504 : List WordIR.Op := [.bxor 10544 10546]
def bytes10504 : Bytes := ("    let r00002933: u32 = r00002930 ^ r00002932;\n" : String).toByteArray.data.toList
theorem checked10504 : bytes10504=statementBytes 10547 (op10504.map lower) ∧ bytes10504.length=48 := by core033_kernel_decide
def op10505 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10505 : Bytes := ("    let r00002934: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10505 : bytes10505=statementBytes 10548 (op10505.map lower) ∧ bytes10505.length=41 := by core033_kernel_decide
def op10506 : List WordIR.Op := [.bxor 0 10548]
def bytes10506 : Bytes := ("    let r00002935: u32 = r00000000 ^ r00002934;\n" : String).toByteArray.data.toList
theorem checked10506 : bytes10506=statementBytes 10549 (op10506.map lower) ∧ bytes10506.length=48 := by core033_kernel_decide
def op10507 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10507 : Bytes := ("    let r00002936: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10507 : bytes10507=statementBytes 10550 (op10507.map lower) ∧ bytes10507.length=41 := by core033_kernel_decide
def op10508 : List WordIR.Op := [.bnot 10550]
def bytes10508 : Bytes := ("    let r00002937: u32 = !r00002936;\n" : String).toByteArray.data.toList
theorem checked10508 : bytes10508=statementBytes 10551 (op10508.map lower) ∧ bytes10508.length=37 := by core033_kernel_decide
def op10509 : List WordIR.Op := [.badd 10549 10551]
def bytes10509 : Bytes := ("    let r00002938: u32 = r00002935.wrapping_add(r00002937);\n" : String).toByteArray.data.toList
theorem checked10509 : bytes10509=statementBytes 10552 (op10509.map lower) ∧ bytes10509.length=60 := by core033_kernel_decide
def op10510 : List WordIR.Op := [.bnot 10552]
def bytes10510 : Bytes := ("    let r00002939: u32 = !r00002938;\n" : String).toByteArray.data.toList
theorem checked10510 : bytes10510=statementBytes 10553 (op10510.map lower) ∧ bytes10510.length=37 := by core033_kernel_decide
def op10511 : List WordIR.Op := [.band 10547 10553]
def bytes10511 : Bytes := ("    let r0000293a: u32 = r00002933 & r00002939;\n" : String).toByteArray.data.toList
theorem checked10511 : bytes10511=statementBytes 10554 (op10511.map lower) ∧ bytes10511.length=48 := by core033_kernel_decide
def op10512 : List WordIR.Op := [.bxor 10542 10554]
def bytes10512 : Bytes := ("    let r0000293b: u32 = r0000292e ^ r0000293a;\n" : String).toByteArray.data.toList
theorem checked10512 : bytes10512=statementBytes 10555 (op10512.map lower) ∧ bytes10512.length=48 := by core033_kernel_decide
def op10513 : List WordIR.Op := [.shr 10555 31]
def bytes10513 : Bytes := ("    let r0000293c: u32 = r0000293b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10513 : bytes10513=statementBytes 10556 (op10513.map lower) ∧ bytes10513.length=54 := by core033_kernel_decide
def op10514 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10514 : Bytes := ("    let r0000293d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10514 : bytes10514=statementBytes 10557 (op10514.map lower) ∧ bytes10514.length=41 := by core033_kernel_decide
def op10515 : List WordIR.Op := [.bxor 10556 10557]
def bytes10515 : Bytes := ("    let r0000293e: u32 = r0000293c ^ r0000293d;\n" : String).toByteArray.data.toList
theorem checked10515 : bytes10515=statementBytes 10558 (op10515.map lower) ∧ bytes10515.length=48 := by core033_kernel_decide
def op10516 : List WordIR.Op := [.bnot 10558]
def bytes10516 : Bytes := ("    let r0000293f: u32 = !r0000293e;\n" : String).toByteArray.data.toList
theorem checked10516 : bytes10516=statementBytes 10559 (op10516.map lower) ∧ bytes10516.length=37 := by core033_kernel_decide
def op10517 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10517 : Bytes := ("    let r00002940: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10517 : bytes10517=statementBytes 10560 (op10517.map lower) ∧ bytes10517.length=41 := by core033_kernel_decide
def op10518 : List WordIR.Op := [.badd 10559 10560]
def bytes10518 : Bytes := ("    let r00002941: u32 = r0000293f.wrapping_add(r00002940);\n" : String).toByteArray.data.toList
theorem checked10518 : bytes10518=statementBytes 10561 (op10518.map lower) ∧ bytes10518.length=60 := by core033_kernel_decide
def op10519 : List WordIR.Op := [.band 10561 9483]
def bytes10519 : Bytes := ("    let r00002942: u32 = r00002941 & r0000250b;\n" : String).toByteArray.data.toList
theorem checked10519 : bytes10519=statementBytes 10562 (op10519.map lower) ∧ bytes10519.length=48 := by core033_kernel_decide
def op10520 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10520 : Bytes := ("    let r00002943: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10520 : bytes10520=statementBytes 10563 (op10520.map lower) ∧ bytes10520.length=41 := by core033_kernel_decide
def op10521 : List WordIR.Op := [.bxor 0 10563]
def bytes10521 : Bytes := ("    let r00002944: u32 = r00000000 ^ r00002943;\n" : String).toByteArray.data.toList
theorem checked10521 : bytes10521=statementBytes 10564 (op10521.map lower) ∧ bytes10521.length=48 := by core033_kernel_decide
def op10522 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10522 : Bytes := ("    let r00002945: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10522 : bytes10522=statementBytes 10565 (op10522.map lower) ∧ bytes10522.length=41 := by core033_kernel_decide
def op10523 : List WordIR.Op := [.bnot 10565]
def bytes10523 : Bytes := ("    let r00002946: u32 = !r00002945;\n" : String).toByteArray.data.toList
theorem checked10523 : bytes10523=statementBytes 10566 (op10523.map lower) ∧ bytes10523.length=37 := by core033_kernel_decide
def op10524 : List WordIR.Op := [.band 10564 10566]
def bytes10524 : Bytes := ("    let r00002947: u32 = r00002944 & r00002946;\n" : String).toByteArray.data.toList
theorem checked10524 : bytes10524=statementBytes 10567 (op10524.map lower) ∧ bytes10524.length=48 := by core033_kernel_decide
def op10525 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10525 : Bytes := ("    let r00002948: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10525 : bytes10525=statementBytes 10568 (op10525.map lower) ∧ bytes10525.length=41 := by core033_kernel_decide
def op10526 : List WordIR.Op := [.bxor 0 10568]
def bytes10526 : Bytes := ("    let r00002949: u32 = r00000000 ^ r00002948;\n" : String).toByteArray.data.toList
theorem checked10526 : bytes10526=statementBytes 10569 (op10526.map lower) ∧ bytes10526.length=48 := by core033_kernel_decide
def op10527 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10527 : Bytes := ("    let r0000294a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10527 : bytes10527=statementBytes 10570 (op10527.map lower) ∧ bytes10527.length=41 := by core033_kernel_decide
def op10528 : List WordIR.Op := [.bnot 10570]
def bytes10528 : Bytes := ("    let r0000294b: u32 = !r0000294a;\n" : String).toByteArray.data.toList
theorem checked10528 : bytes10528=statementBytes 10571 (op10528.map lower) ∧ bytes10528.length=37 := by core033_kernel_decide
def op10529 : List WordIR.Op := [.bxor 10569 10571]
def bytes10529 : Bytes := ("    let r0000294c: u32 = r00002949 ^ r0000294b;\n" : String).toByteArray.data.toList
theorem checked10529 : bytes10529=statementBytes 10572 (op10529.map lower) ∧ bytes10529.length=48 := by core033_kernel_decide
def op10530 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10530 : Bytes := ("    let r0000294d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10530 : bytes10530=statementBytes 10573 (op10530.map lower) ∧ bytes10530.length=41 := by core033_kernel_decide
def op10531 : List WordIR.Op := [.bxor 0 10573]
def bytes10531 : Bytes := ("    let r0000294e: u32 = r00000000 ^ r0000294d;\n" : String).toByteArray.data.toList
theorem checked10531 : bytes10531=statementBytes 10574 (op10531.map lower) ∧ bytes10531.length=48 := by core033_kernel_decide
def op10532 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10532 : Bytes := ("    let r0000294f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10532 : bytes10532=statementBytes 10575 (op10532.map lower) ∧ bytes10532.length=41 := by core033_kernel_decide
def op10533 : List WordIR.Op := [.bnot 10575]
def bytes10533 : Bytes := ("    let r00002950: u32 = !r0000294f;\n" : String).toByteArray.data.toList
theorem checked10533 : bytes10533=statementBytes 10576 (op10533.map lower) ∧ bytes10533.length=37 := by core033_kernel_decide
def op10534 : List WordIR.Op := [.badd 10574 10576]
def bytes10534 : Bytes := ("    let r00002951: u32 = r0000294e.wrapping_add(r00002950);\n" : String).toByteArray.data.toList
theorem checked10534 : bytes10534=statementBytes 10577 (op10534.map lower) ∧ bytes10534.length=60 := by core033_kernel_decide
def op10535 : List WordIR.Op := [.bnot 10577]
def bytes10535 : Bytes := ("    let r00002952: u32 = !r00002951;\n" : String).toByteArray.data.toList
theorem checked10535 : bytes10535=statementBytes 10578 (op10535.map lower) ∧ bytes10535.length=37 := by core033_kernel_decide
def op10536 : List WordIR.Op := [.band 10572 10578]
def bytes10536 : Bytes := ("    let r00002953: u32 = r0000294c & r00002952;\n" : String).toByteArray.data.toList
theorem checked10536 : bytes10536=statementBytes 10579 (op10536.map lower) ∧ bytes10536.length=48 := by core033_kernel_decide
def op10537 : List WordIR.Op := [.bxor 10567 10579]
def bytes10537 : Bytes := ("    let r00002954: u32 = r00002947 ^ r00002953;\n" : String).toByteArray.data.toList
theorem checked10537 : bytes10537=statementBytes 10580 (op10537.map lower) ∧ bytes10537.length=48 := by core033_kernel_decide
def op10538 : List WordIR.Op := [.shr 10580 31]
def bytes10538 : Bytes := ("    let r00002955: u32 = r00002954 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10538 : bytes10538=statementBytes 10581 (op10538.map lower) ∧ bytes10538.length=54 := by core033_kernel_decide
def op10539 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10539 : Bytes := ("    let r00002956: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10539 : bytes10539=statementBytes 10582 (op10539.map lower) ∧ bytes10539.length=41 := by core033_kernel_decide
def op10540 : List WordIR.Op := [.bxor 10581 10582]
def bytes10540 : Bytes := ("    let r00002957: u32 = r00002955 ^ r00002956;\n" : String).toByteArray.data.toList
theorem checked10540 : bytes10540=statementBytes 10583 (op10540.map lower) ∧ bytes10540.length=48 := by core033_kernel_decide
def op10541 : List WordIR.Op := [.bnot 10583]
def bytes10541 : Bytes := ("    let r00002958: u32 = !r00002957;\n" : String).toByteArray.data.toList
theorem checked10541 : bytes10541=statementBytes 10584 (op10541.map lower) ∧ bytes10541.length=37 := by core033_kernel_decide
def op10542 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10542 : Bytes := ("    let r00002959: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10542 : bytes10542=statementBytes 10585 (op10542.map lower) ∧ bytes10542.length=41 := by core033_kernel_decide
def op10543 : List WordIR.Op := [.badd 10584 10585]
def bytes10543 : Bytes := ("    let r0000295a: u32 = r00002958.wrapping_add(r00002959);\n" : String).toByteArray.data.toList
theorem checked10543 : bytes10543=statementBytes 10586 (op10543.map lower) ∧ bytes10543.length=60 := by core033_kernel_decide
def op10544 : List WordIR.Op := [.bnot 10586]
def bytes10544 : Bytes := ("    let r0000295b: u32 = !r0000295a;\n" : String).toByteArray.data.toList
theorem checked10544 : bytes10544=statementBytes 10587 (op10544.map lower) ∧ bytes10544.length=37 := by core033_kernel_decide
def op10545 : List WordIR.Op := [.band 10587 162]
def bytes10545 : Bytes := ("    let r0000295c: u32 = r0000295b & r000000a2;\n" : String).toByteArray.data.toList
theorem checked10545 : bytes10545=statementBytes 10588 (op10545.map lower) ∧ bytes10545.length=48 := by core033_kernel_decide
def op10546 : List WordIR.Op := [.bxor 10562 10588]
def bytes10546 : Bytes := ("    let r0000295d: u32 = r00002942 ^ r0000295c;\n" : String).toByteArray.data.toList
theorem checked10546 : bytes10546=statementBytes 10589 (op10546.map lower) ∧ bytes10546.length=48 := by core033_kernel_decide
def op10547 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10547 : Bytes := ("    let r0000295e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10547 : bytes10547=statementBytes 10590 (op10547.map lower) ∧ bytes10547.length=41 := by core033_kernel_decide
def op10548 : List WordIR.Op := [.bxor 0 10590]
def bytes10548 : Bytes := ("    let r0000295f: u32 = r00000000 ^ r0000295e;\n" : String).toByteArray.data.toList
theorem checked10548 : bytes10548=statementBytes 10591 (op10548.map lower) ∧ bytes10548.length=48 := by core033_kernel_decide
def op10549 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10549 : Bytes := ("    let r00002960: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10549 : bytes10549=statementBytes 10592 (op10549.map lower) ∧ bytes10549.length=41 := by core033_kernel_decide
def op10550 : List WordIR.Op := [.bnot 10592]
def bytes10550 : Bytes := ("    let r00002961: u32 = !r00002960;\n" : String).toByteArray.data.toList
theorem checked10550 : bytes10550=statementBytes 10593 (op10550.map lower) ∧ bytes10550.length=37 := by core033_kernel_decide
def op10551 : List WordIR.Op := [.band 10591 10593]
def bytes10551 : Bytes := ("    let r00002962: u32 = r0000295f & r00002961;\n" : String).toByteArray.data.toList
theorem checked10551 : bytes10551=statementBytes 10594 (op10551.map lower) ∧ bytes10551.length=48 := by core033_kernel_decide
def op10552 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10552 : Bytes := ("    let r00002963: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10552 : bytes10552=statementBytes 10595 (op10552.map lower) ∧ bytes10552.length=41 := by core033_kernel_decide
def op10553 : List WordIR.Op := [.bxor 0 10595]
def bytes10553 : Bytes := ("    let r00002964: u32 = r00000000 ^ r00002963;\n" : String).toByteArray.data.toList
theorem checked10553 : bytes10553=statementBytes 10596 (op10553.map lower) ∧ bytes10553.length=48 := by core033_kernel_decide
def op10554 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10554 : Bytes := ("    let r00002965: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10554 : bytes10554=statementBytes 10597 (op10554.map lower) ∧ bytes10554.length=41 := by core033_kernel_decide
def op10555 : List WordIR.Op := [.bnot 10597]
def bytes10555 : Bytes := ("    let r00002966: u32 = !r00002965;\n" : String).toByteArray.data.toList
theorem checked10555 : bytes10555=statementBytes 10598 (op10555.map lower) ∧ bytes10555.length=37 := by core033_kernel_decide
def op10556 : List WordIR.Op := [.bxor 10596 10598]
def bytes10556 : Bytes := ("    let r00002967: u32 = r00002964 ^ r00002966;\n" : String).toByteArray.data.toList
theorem checked10556 : bytes10556=statementBytes 10599 (op10556.map lower) ∧ bytes10556.length=48 := by core033_kernel_decide
def op10557 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10557 : Bytes := ("    let r00002968: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10557 : bytes10557=statementBytes 10600 (op10557.map lower) ∧ bytes10557.length=41 := by core033_kernel_decide
def op10558 : List WordIR.Op := [.bxor 0 10600]
def bytes10558 : Bytes := ("    let r00002969: u32 = r00000000 ^ r00002968;\n" : String).toByteArray.data.toList
theorem checked10558 : bytes10558=statementBytes 10601 (op10558.map lower) ∧ bytes10558.length=48 := by core033_kernel_decide
def op10559 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10559 : Bytes := ("    let r0000296a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10559 : bytes10559=statementBytes 10602 (op10559.map lower) ∧ bytes10559.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10496,op10497,op10498,op10499,op10500,op10501,op10502,op10503,op10504,op10505,op10506,op10507,op10508,op10509,op10510,op10511,op10512,op10513,op10514,op10515,op10516,op10517,op10518,op10519,op10520,op10521,op10522,op10523,op10524,op10525,op10526,op10527,op10528,op10529,op10530,op10531,op10532,op10533,op10534,op10535,op10536,op10537,op10538,op10539,op10540,op10541,op10542,op10543,op10544,op10545,op10546,op10547,op10548,op10549,op10550,op10551,op10552,op10553,op10554,op10555,op10556,op10557,op10558,op10559]
def chunks : List Bytes := [bytes10496,bytes10497,bytes10498,bytes10499,bytes10500,bytes10501,bytes10502,bytes10503,bytes10504,bytes10505,bytes10506,bytes10507,bytes10508,bytes10509,bytes10510,bytes10511,bytes10512,bytes10513,bytes10514,bytes10515,bytes10516,bytes10517,bytes10518,bytes10519,bytes10520,bytes10521,bytes10522,bytes10523,bytes10524,bytes10525,bytes10526,bytes10527,bytes10528,bytes10529,bytes10530,bytes10531,bytes10532,bytes10533,bytes10534,bytes10535,bytes10536,bytes10537,bytes10538,bytes10539,bytes10540,bytes10541,bytes10542,bytes10543,bytes10544,bytes10545,bytes10546,bytes10547,bytes10548,bytes10549,bytes10550,bytes10551,bytes10552,bytes10553,bytes10554,bytes10555,bytes10556,bytes10557,bytes10558,bytes10559]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10539 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10496.1 (.cons _ _ _ _ _ checked10497.1 (.cons _ _ _ _ _ checked10498.1 (.cons _ _ _ _ _ checked10499.1 (.cons _ _ _ _ _ checked10500.1 (.cons _ _ _ _ _ checked10501.1 (.cons _ _ _ _ _ checked10502.1 (.cons _ _ _ _ _ checked10503.1 (.cons _ _ _ _ _ checked10504.1 (.cons _ _ _ _ _ checked10505.1 (.cons _ _ _ _ _ checked10506.1 (.cons _ _ _ _ _ checked10507.1 (.cons _ _ _ _ _ checked10508.1 (.cons _ _ _ _ _ checked10509.1 (.cons _ _ _ _ _ checked10510.1 (.cons _ _ _ _ _ checked10511.1 (.cons _ _ _ _ _ checked10512.1 (.cons _ _ _ _ _ checked10513.1 (.cons _ _ _ _ _ checked10514.1 (.cons _ _ _ _ _ checked10515.1 (.cons _ _ _ _ _ checked10516.1 (.cons _ _ _ _ _ checked10517.1 (.cons _ _ _ _ _ checked10518.1 (.cons _ _ _ _ _ checked10519.1 (.cons _ _ _ _ _ checked10520.1 (.cons _ _ _ _ _ checked10521.1 (.cons _ _ _ _ _ checked10522.1 (.cons _ _ _ _ _ checked10523.1 (.cons _ _ _ _ _ checked10524.1 (.cons _ _ _ _ _ checked10525.1 (.cons _ _ _ _ _ checked10526.1 (.cons _ _ _ _ _ checked10527.1 (.cons _ _ _ _ _ checked10528.1 (.cons _ _ _ _ _ checked10529.1 (.cons _ _ _ _ _ checked10530.1 (.cons _ _ _ _ _ checked10531.1 (.cons _ _ _ _ _ checked10532.1 (.cons _ _ _ _ _ checked10533.1 (.cons _ _ _ _ _ checked10534.1 (.cons _ _ _ _ _ checked10535.1 (.cons _ _ _ _ _ checked10536.1 (.cons _ _ _ _ _ checked10537.1 (.cons _ _ _ _ _ checked10538.1 (.cons _ _ _ _ _ checked10539.1 (.cons _ _ _ _ _ checked10540.1 (.cons _ _ _ _ _ checked10541.1 (.cons _ _ _ _ _ checked10542.1 (.cons _ _ _ _ _ checked10543.1 (.cons _ _ _ _ _ checked10544.1 (.cons _ _ _ _ _ checked10545.1 (.cons _ _ _ _ _ checked10546.1 (.cons _ _ _ _ _ checked10547.1 (.cons _ _ _ _ _ checked10548.1 (.cons _ _ _ _ _ checked10549.1 (.cons _ _ _ _ _ checked10550.1 (.cons _ _ _ _ _ checked10551.1 (.cons _ _ _ _ _ checked10552.1 (.cons _ _ _ _ _ checked10553.1 (.cons _ _ _ _ _ checked10554.1 (.cons _ _ _ _ _ checked10555.1 (.cons _ _ _ _ _ checked10556.1 (.cons _ _ _ _ _ checked10557.1 (.cons _ _ _ _ _ checked10558.1 (.cons _ _ _ _ _ checked10559.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10539 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10496.2,checked10497.2,checked10498.2,checked10499.2,checked10500.2,checked10501.2,checked10502.2,checked10503.2,checked10504.2,checked10505.2,checked10506.2,checked10507.2,checked10508.2,checked10509.2,checked10510.2,checked10511.2,checked10512.2,checked10513.2,checked10514.2,checked10515.2,checked10516.2,checked10517.2,checked10518.2,checked10519.2,checked10520.2,checked10521.2,checked10522.2,checked10523.2,checked10524.2,checked10525.2,checked10526.2,checked10527.2,checked10528.2,checked10529.2,checked10530.2,checked10531.2,checked10532.2,checked10533.2,checked10534.2,checked10535.2,checked10536.2,checked10537.2,checked10538.2,checked10539.2,checked10540.2,checked10541.2,checked10542.2,checked10543.2,checked10544.2,checked10545.2,checked10546.2,checked10547.2,checked10548.2,checked10549.2,checked10550.2,checked10551.2,checked10552.2,checked10553.2,checked10554.2,checked10555.2,checked10556.2,checked10557.2,checked10558.2,checked10559.2]
  decide
end ArtifactPathRoundDispatchGroup164
