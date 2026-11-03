import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup117
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7488 : List WordIR.Op := [.bxor 7529 7530]
def bytes7488 : Bytes := ("    let r00001d6b: u32 = r00001d69 ^ r00001d6a;\n" : String).toByteArray.data.toList
theorem checked7488 : bytes7488=statementBytes 7531 (op7488.map lower) ∧ bytes7488.length=48 := by core033_kernel_decide
def op7489 : List WordIR.Op := [.badd 7531 7448]
def bytes7489 : Bytes := ("    let r00001d6c: u32 = r00001d6b.wrapping_add(r00001d18);\n" : String).toByteArray.data.toList
theorem checked7489 : bytes7489=statementBytes 7532 (op7489.map lower) ∧ bytes7489.length=60 := by core033_kernel_decide
def op7490 : List WordIR.Op := [.rotr 7344 7]
def bytes7490 : Bytes := ("    let r00001d6d: u32 = r00001cb0.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7490 : bytes7490=statementBytes 7533 (op7490.map lower) ∧ bytes7490.length=65 := by core033_kernel_decide
def op7491 : List WordIR.Op := [.rotr 7344 18]
def bytes7491 : Bytes := ("    let r00001d6e: u32 = r00001cb0.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7491 : bytes7491=statementBytes 7534 (op7491.map lower) ∧ bytes7491.length=65 := by core033_kernel_decide
def op7492 : List WordIR.Op := [.bxor 7533 7534]
def bytes7492 : Bytes := ("    let r00001d6f: u32 = r00001d6d ^ r00001d6e;\n" : String).toByteArray.data.toList
theorem checked7492 : bytes7492=statementBytes 7535 (op7492.map lower) ∧ bytes7492.length=48 := by core033_kernel_decide
def op7493 : List WordIR.Op := [.shr 7344 3]
def bytes7493 : Bytes := ("    let r00001d70: u32 = r00001cb0 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7493 : bytes7493=statementBytes 7536 (op7493.map lower) ∧ bytes7493.length=54 := by core033_kernel_decide
def op7494 : List WordIR.Op := [.bxor 7535 7536]
def bytes7494 : Bytes := ("    let r00001d71: u32 = r00001d6f ^ r00001d70;\n" : String).toByteArray.data.toList
theorem checked7494 : bytes7494=statementBytes 7537 (op7494.map lower) ∧ bytes7494.length=48 := by core033_kernel_decide
def op7495 : List WordIR.Op := [.badd 7532 7537]
def bytes7495 : Bytes := ("    let r00001d72: u32 = r00001d6c.wrapping_add(r00001d71);\n" : String).toByteArray.data.toList
theorem checked7495 : bytes7495=statementBytes 7538 (op7495.map lower) ∧ bytes7495.length=60 := by core033_kernel_decide
def op7496 : List WordIR.Op := [.badd 7538 7331]
def bytes7496 : Bytes := ("    let r00001d73: u32 = r00001d72.wrapping_add(r00001ca3);\n" : String).toByteArray.data.toList
theorem checked7496 : bytes7496=statementBytes 7539 (op7496.map lower) ∧ bytes7496.length=60 := by core033_kernel_decide
def op7497 : List WordIR.Op := [.rotr 7526 17]
def bytes7497 : Bytes := ("    let r00001d74: u32 = r00001d66.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7497 : bytes7497=statementBytes 7540 (op7497.map lower) ∧ bytes7497.length=65 := by core033_kernel_decide
def op7498 : List WordIR.Op := [.rotr 7526 19]
def bytes7498 : Bytes := ("    let r00001d75: u32 = r00001d66.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7498 : bytes7498=statementBytes 7541 (op7498.map lower) ∧ bytes7498.length=65 := by core033_kernel_decide
def op7499 : List WordIR.Op := [.bxor 7540 7541]
def bytes7499 : Bytes := ("    let r00001d76: u32 = r00001d74 ^ r00001d75;\n" : String).toByteArray.data.toList
theorem checked7499 : bytes7499=statementBytes 7542 (op7499.map lower) ∧ bytes7499.length=48 := by core033_kernel_decide
def op7500 : List WordIR.Op := [.shr 7526 10]
def bytes7500 : Bytes := ("    let r00001d77: u32 = r00001d66 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7500 : bytes7500=statementBytes 7543 (op7500.map lower) ∧ bytes7500.length=54 := by core033_kernel_decide
def op7501 : List WordIR.Op := [.bxor 7542 7543]
def bytes7501 : Bytes := ("    let r00001d78: u32 = r00001d76 ^ r00001d77;\n" : String).toByteArray.data.toList
theorem checked7501 : bytes7501=statementBytes 7544 (op7501.map lower) ∧ bytes7501.length=48 := by core033_kernel_decide
def op7502 : List WordIR.Op := [.badd 7544 7461]
def bytes7502 : Bytes := ("    let r00001d79: u32 = r00001d78.wrapping_add(r00001d25);\n" : String).toByteArray.data.toList
theorem checked7502 : bytes7502=statementBytes 7545 (op7502.map lower) ∧ bytes7502.length=60 := by core033_kernel_decide
def op7503 : List WordIR.Op := [.rotr 7357 7]
def bytes7503 : Bytes := ("    let r00001d7a: u32 = r00001cbd.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7503 : bytes7503=statementBytes 7546 (op7503.map lower) ∧ bytes7503.length=65 := by core033_kernel_decide
def op7504 : List WordIR.Op := [.rotr 7357 18]
def bytes7504 : Bytes := ("    let r00001d7b: u32 = r00001cbd.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7504 : bytes7504=statementBytes 7547 (op7504.map lower) ∧ bytes7504.length=65 := by core033_kernel_decide
def op7505 : List WordIR.Op := [.bxor 7546 7547]
def bytes7505 : Bytes := ("    let r00001d7c: u32 = r00001d7a ^ r00001d7b;\n" : String).toByteArray.data.toList
theorem checked7505 : bytes7505=statementBytes 7548 (op7505.map lower) ∧ bytes7505.length=48 := by core033_kernel_decide
def op7506 : List WordIR.Op := [.shr 7357 3]
def bytes7506 : Bytes := ("    let r00001d7d: u32 = r00001cbd >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7506 : bytes7506=statementBytes 7549 (op7506.map lower) ∧ bytes7506.length=54 := by core033_kernel_decide
def op7507 : List WordIR.Op := [.bxor 7548 7549]
def bytes7507 : Bytes := ("    let r00001d7e: u32 = r00001d7c ^ r00001d7d;\n" : String).toByteArray.data.toList
theorem checked7507 : bytes7507=statementBytes 7550 (op7507.map lower) ∧ bytes7507.length=48 := by core033_kernel_decide
def op7508 : List WordIR.Op := [.badd 7545 7550]
def bytes7508 : Bytes := ("    let r00001d7f: u32 = r00001d79.wrapping_add(r00001d7e);\n" : String).toByteArray.data.toList
theorem checked7508 : bytes7508=statementBytes 7551 (op7508.map lower) ∧ bytes7508.length=60 := by core033_kernel_decide
def op7509 : List WordIR.Op := [.badd 7551 7344]
def bytes7509 : Bytes := ("    let r00001d80: u32 = r00001d7f.wrapping_add(r00001cb0);\n" : String).toByteArray.data.toList
theorem checked7509 : bytes7509=statementBytes 7552 (op7509.map lower) ∧ bytes7509.length=60 := by core033_kernel_decide
def op7510 : List WordIR.Op := [.rotr 2180 6]
def bytes7510 : Bytes := ("    let r00001d81: u32 = r00000884.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7510 : bytes7510=statementBytes 7553 (op7510.map lower) ∧ bytes7510.length=65 := by core033_kernel_decide
def op7511 : List WordIR.Op := [.rotr 2180 11]
def bytes7511 : Bytes := ("    let r00001d82: u32 = r00000884.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7511 : bytes7511=statementBytes 7554 (op7511.map lower) ∧ bytes7511.length=65 := by core033_kernel_decide
def op7512 : List WordIR.Op := [.bxor 7553 7554]
def bytes7512 : Bytes := ("    let r00001d83: u32 = r00001d81 ^ r00001d82;\n" : String).toByteArray.data.toList
theorem checked7512 : bytes7512=statementBytes 7555 (op7512.map lower) ∧ bytes7512.length=48 := by core033_kernel_decide
def op7513 : List WordIR.Op := [.rotr 2180 25]
def bytes7513 : Bytes := ("    let r00001d84: u32 = r00000884.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7513 : bytes7513=statementBytes 7556 (op7513.map lower) ∧ bytes7513.length=65 := by core033_kernel_decide
def op7514 : List WordIR.Op := [.bxor 7555 7556]
def bytes7514 : Bytes := ("    let r00001d85: u32 = r00001d83 ^ r00001d84;\n" : String).toByteArray.data.toList
theorem checked7514 : bytes7514=statementBytes 7557 (op7514.map lower) ∧ bytes7514.length=48 := by core033_kernel_decide
def op7515 : List WordIR.Op := [.badd 2339 7557]
def bytes7515 : Bytes := ("    let r00001d86: u32 = r00000923.wrapping_add(r00001d85);\n" : String).toByteArray.data.toList
theorem checked7515 : bytes7515=statementBytes 7558 (op7515.map lower) ∧ bytes7515.length=60 := by core033_kernel_decide
def op7516 : List WordIR.Op := [.band 2180 2233]
def bytes7516 : Bytes := ("    let r00001d87: u32 = r00000884 & r000008b9;\n" : String).toByteArray.data.toList
theorem checked7516 : bytes7516=statementBytes 7559 (op7516.map lower) ∧ bytes7516.length=48 := by core033_kernel_decide
def op7517 : List WordIR.Op := [.bnot 2180]
def bytes7517 : Bytes := ("    let r00001d88: u32 = !r00000884;\n" : String).toByteArray.data.toList
theorem checked7517 : bytes7517=statementBytes 7560 (op7517.map lower) ∧ bytes7517.length=37 := by core033_kernel_decide
def op7518 : List WordIR.Op := [.band 7560 2286]
def bytes7518 : Bytes := ("    let r00001d89: u32 = r00001d88 & r000008ee;\n" : String).toByteArray.data.toList
theorem checked7518 : bytes7518=statementBytes 7561 (op7518.map lower) ∧ bytes7518.length=48 := by core033_kernel_decide
def op7519 : List WordIR.Op := [.bxor 7559 7561]
def bytes7519 : Bytes := ("    let r00001d8a: u32 = r00001d87 ^ r00001d89;\n" : String).toByteArray.data.toList
theorem checked7519 : bytes7519=statementBytes 7562 (op7519.map lower) ∧ bytes7519.length=48 := by core033_kernel_decide
def op7520 : List WordIR.Op := [.badd 7558 7562]
def bytes7520 : Bytes := ("    let r00001d8b: u32 = r00001d86.wrapping_add(r00001d8a);\n" : String).toByteArray.data.toList
theorem checked7520 : bytes7520=statementBytes 7563 (op7520.map lower) ∧ bytes7520.length=60 := by core033_kernel_decide
def op7521 : List WordIR.Op := [.literal (BitVec.ofNat 32 1116352408)]
def bytes7521 : Bytes := ("    let r00001d8c: u32 = 0x428a2f98_u32;\n" : String).toByteArray.data.toList
theorem checked7521 : bytes7521=statementBytes 7564 (op7521.map lower) ∧ bytes7521.length=41 := by core033_kernel_decide
def op7522 : List WordIR.Op := [.badd 7563 7564]
def bytes7522 : Bytes := ("    let r00001d8d: u32 = r00001d8b.wrapping_add(r00001d8c);\n" : String).toByteArray.data.toList
theorem checked7522 : bytes7522=statementBytes 7565 (op7522.map lower) ∧ bytes7522.length=60 := by core033_kernel_decide
def op7523 : List WordIR.Op := [.badd 7565 5686]
def bytes7523 : Bytes := ("    let r00001d8e: u32 = r00001d8d.wrapping_add(r00001636);\n" : String).toByteArray.data.toList
theorem checked7523 : bytes7523=statementBytes 7566 (op7523.map lower) ∧ bytes7523.length=60 := by core033_kernel_decide
def op7524 : List WordIR.Op := [.rotr 1968 2]
def bytes7524 : Bytes := ("    let r00001d8f: u32 = r000007b0.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7524 : bytes7524=statementBytes 7567 (op7524.map lower) ∧ bytes7524.length=65 := by core033_kernel_decide
def op7525 : List WordIR.Op := [.rotr 1968 13]
def bytes7525 : Bytes := ("    let r00001d90: u32 = r000007b0.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7525 : bytes7525=statementBytes 7568 (op7525.map lower) ∧ bytes7525.length=65 := by core033_kernel_decide
def op7526 : List WordIR.Op := [.bxor 7567 7568]
def bytes7526 : Bytes := ("    let r00001d91: u32 = r00001d8f ^ r00001d90;\n" : String).toByteArray.data.toList
theorem checked7526 : bytes7526=statementBytes 7569 (op7526.map lower) ∧ bytes7526.length=48 := by core033_kernel_decide
def op7527 : List WordIR.Op := [.rotr 1968 22]
def bytes7527 : Bytes := ("    let r00001d92: u32 = r000007b0.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7527 : bytes7527=statementBytes 7570 (op7527.map lower) ∧ bytes7527.length=65 := by core033_kernel_decide
def op7528 : List WordIR.Op := [.bxor 7569 7570]
def bytes7528 : Bytes := ("    let r00001d93: u32 = r00001d91 ^ r00001d92;\n" : String).toByteArray.data.toList
theorem checked7528 : bytes7528=statementBytes 7571 (op7528.map lower) ∧ bytes7528.length=48 := by core033_kernel_decide
def op7529 : List WordIR.Op := [.band 1968 2021]
def bytes7529 : Bytes := ("    let r00001d94: u32 = r000007b0 & r000007e5;\n" : String).toByteArray.data.toList
theorem checked7529 : bytes7529=statementBytes 7572 (op7529.map lower) ∧ bytes7529.length=48 := by core033_kernel_decide
def op7530 : List WordIR.Op := [.band 1968 2074]
def bytes7530 : Bytes := ("    let r00001d95: u32 = r000007b0 & r0000081a;\n" : String).toByteArray.data.toList
theorem checked7530 : bytes7530=statementBytes 7573 (op7530.map lower) ∧ bytes7530.length=48 := by core033_kernel_decide
def op7531 : List WordIR.Op := [.bxor 7572 7573]
def bytes7531 : Bytes := ("    let r00001d96: u32 = r00001d94 ^ r00001d95;\n" : String).toByteArray.data.toList
theorem checked7531 : bytes7531=statementBytes 7574 (op7531.map lower) ∧ bytes7531.length=48 := by core033_kernel_decide
def op7532 : List WordIR.Op := [.band 2021 2074]
def bytes7532 : Bytes := ("    let r00001d97: u32 = r000007e5 & r0000081a;\n" : String).toByteArray.data.toList
theorem checked7532 : bytes7532=statementBytes 7575 (op7532.map lower) ∧ bytes7532.length=48 := by core033_kernel_decide
def op7533 : List WordIR.Op := [.bxor 7574 7575]
def bytes7533 : Bytes := ("    let r00001d98: u32 = r00001d96 ^ r00001d97;\n" : String).toByteArray.data.toList
theorem checked7533 : bytes7533=statementBytes 7576 (op7533.map lower) ∧ bytes7533.length=48 := by core033_kernel_decide
def op7534 : List WordIR.Op := [.badd 7571 7576]
def bytes7534 : Bytes := ("    let r00001d99: u32 = r00001d93.wrapping_add(r00001d98);\n" : String).toByteArray.data.toList
theorem checked7534 : bytes7534=statementBytes 7577 (op7534.map lower) ∧ bytes7534.length=60 := by core033_kernel_decide
def op7535 : List WordIR.Op := [.badd 7566 7577]
def bytes7535 : Bytes := ("    let r00001d9a: u32 = r00001d8e.wrapping_add(r00001d99);\n" : String).toByteArray.data.toList
theorem checked7535 : bytes7535=statementBytes 7578 (op7535.map lower) ∧ bytes7535.length=60 := by core033_kernel_decide
def op7536 : List WordIR.Op := [.badd 2127 7566]
def bytes7536 : Bytes := ("    let r00001d9b: u32 = r0000084f.wrapping_add(r00001d8e);\n" : String).toByteArray.data.toList
theorem checked7536 : bytes7536=statementBytes 7579 (op7536.map lower) ∧ bytes7536.length=60 := by core033_kernel_decide
def op7537 : List WordIR.Op := [.rotr 7579 6]
def bytes7537 : Bytes := ("    let r00001d9c: u32 = r00001d9b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7537 : bytes7537=statementBytes 7580 (op7537.map lower) ∧ bytes7537.length=65 := by core033_kernel_decide
def op7538 : List WordIR.Op := [.rotr 7579 11]
def bytes7538 : Bytes := ("    let r00001d9d: u32 = r00001d9b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7538 : bytes7538=statementBytes 7581 (op7538.map lower) ∧ bytes7538.length=65 := by core033_kernel_decide
def op7539 : List WordIR.Op := [.bxor 7580 7581]
def bytes7539 : Bytes := ("    let r00001d9e: u32 = r00001d9c ^ r00001d9d;\n" : String).toByteArray.data.toList
theorem checked7539 : bytes7539=statementBytes 7582 (op7539.map lower) ∧ bytes7539.length=48 := by core033_kernel_decide
def op7540 : List WordIR.Op := [.rotr 7579 25]
def bytes7540 : Bytes := ("    let r00001d9f: u32 = r00001d9b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7540 : bytes7540=statementBytes 7583 (op7540.map lower) ∧ bytes7540.length=65 := by core033_kernel_decide
def op7541 : List WordIR.Op := [.bxor 7582 7583]
def bytes7541 : Bytes := ("    let r00001da0: u32 = r00001d9e ^ r00001d9f;\n" : String).toByteArray.data.toList
theorem checked7541 : bytes7541=statementBytes 7584 (op7541.map lower) ∧ bytes7541.length=48 := by core033_kernel_decide
def op7542 : List WordIR.Op := [.badd 2286 7584]
def bytes7542 : Bytes := ("    let r00001da1: u32 = r000008ee.wrapping_add(r00001da0);\n" : String).toByteArray.data.toList
theorem checked7542 : bytes7542=statementBytes 7585 (op7542.map lower) ∧ bytes7542.length=60 := by core033_kernel_decide
def op7543 : List WordIR.Op := [.band 7579 2180]
def bytes7543 : Bytes := ("    let r00001da2: u32 = r00001d9b & r00000884;\n" : String).toByteArray.data.toList
theorem checked7543 : bytes7543=statementBytes 7586 (op7543.map lower) ∧ bytes7543.length=48 := by core033_kernel_decide
def op7544 : List WordIR.Op := [.bnot 7579]
def bytes7544 : Bytes := ("    let r00001da3: u32 = !r00001d9b;\n" : String).toByteArray.data.toList
theorem checked7544 : bytes7544=statementBytes 7587 (op7544.map lower) ∧ bytes7544.length=37 := by core033_kernel_decide
def op7545 : List WordIR.Op := [.band 7587 2233]
def bytes7545 : Bytes := ("    let r00001da4: u32 = r00001da3 & r000008b9;\n" : String).toByteArray.data.toList
theorem checked7545 : bytes7545=statementBytes 7588 (op7545.map lower) ∧ bytes7545.length=48 := by core033_kernel_decide
def op7546 : List WordIR.Op := [.bxor 7586 7588]
def bytes7546 : Bytes := ("    let r00001da5: u32 = r00001da2 ^ r00001da4;\n" : String).toByteArray.data.toList
theorem checked7546 : bytes7546=statementBytes 7589 (op7546.map lower) ∧ bytes7546.length=48 := by core033_kernel_decide
def op7547 : List WordIR.Op := [.badd 7585 7589]
def bytes7547 : Bytes := ("    let r00001da6: u32 = r00001da1.wrapping_add(r00001da5);\n" : String).toByteArray.data.toList
theorem checked7547 : bytes7547=statementBytes 7590 (op7547.map lower) ∧ bytes7547.length=60 := by core033_kernel_decide
def op7548 : List WordIR.Op := [.literal (BitVec.ofNat 32 1899447441)]
def bytes7548 : Bytes := ("    let r00001da7: u32 = 0x71374491_u32;\n" : String).toByteArray.data.toList
theorem checked7548 : bytes7548=statementBytes 7591 (op7548.map lower) ∧ bytes7548.length=41 := by core033_kernel_decide
def op7549 : List WordIR.Op := [.badd 7590 7591]
def bytes7549 : Bytes := ("    let r00001da8: u32 = r00001da6.wrapping_add(r00001da7);\n" : String).toByteArray.data.toList
theorem checked7549 : bytes7549=statementBytes 7592 (op7549.map lower) ∧ bytes7549.length=60 := by core033_kernel_decide
def op7550 : List WordIR.Op := [.badd 7592 5692]
def bytes7550 : Bytes := ("    let r00001da9: u32 = r00001da8.wrapping_add(r0000163c);\n" : String).toByteArray.data.toList
theorem checked7550 : bytes7550=statementBytes 7593 (op7550.map lower) ∧ bytes7550.length=60 := by core033_kernel_decide
def op7551 : List WordIR.Op := [.rotr 7578 2]
def bytes7551 : Bytes := ("    let r00001daa: u32 = r00001d9a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7551 : bytes7551=statementBytes 7594 (op7551.map lower) ∧ bytes7551.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7488,op7489,op7490,op7491,op7492,op7493,op7494,op7495,op7496,op7497,op7498,op7499,op7500,op7501,op7502,op7503,op7504,op7505,op7506,op7507,op7508,op7509,op7510,op7511,op7512,op7513,op7514,op7515,op7516,op7517,op7518,op7519,op7520,op7521,op7522,op7523,op7524,op7525,op7526,op7527,op7528,op7529,op7530,op7531,op7532,op7533,op7534,op7535,op7536,op7537,op7538,op7539,op7540,op7541,op7542,op7543,op7544,op7545,op7546,op7547,op7548,op7549,op7550,op7551]
def chunks : List Bytes := [bytes7488,bytes7489,bytes7490,bytes7491,bytes7492,bytes7493,bytes7494,bytes7495,bytes7496,bytes7497,bytes7498,bytes7499,bytes7500,bytes7501,bytes7502,bytes7503,bytes7504,bytes7505,bytes7506,bytes7507,bytes7508,bytes7509,bytes7510,bytes7511,bytes7512,bytes7513,bytes7514,bytes7515,bytes7516,bytes7517,bytes7518,bytes7519,bytes7520,bytes7521,bytes7522,bytes7523,bytes7524,bytes7525,bytes7526,bytes7527,bytes7528,bytes7529,bytes7530,bytes7531,bytes7532,bytes7533,bytes7534,bytes7535,bytes7536,bytes7537,bytes7538,bytes7539,bytes7540,bytes7541,bytes7542,bytes7543,bytes7544,bytes7545,bytes7546,bytes7547,bytes7548,bytes7549,bytes7550,bytes7551]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7531 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7488.1 (.cons _ _ _ _ _ checked7489.1 (.cons _ _ _ _ _ checked7490.1 (.cons _ _ _ _ _ checked7491.1 (.cons _ _ _ _ _ checked7492.1 (.cons _ _ _ _ _ checked7493.1 (.cons _ _ _ _ _ checked7494.1 (.cons _ _ _ _ _ checked7495.1 (.cons _ _ _ _ _ checked7496.1 (.cons _ _ _ _ _ checked7497.1 (.cons _ _ _ _ _ checked7498.1 (.cons _ _ _ _ _ checked7499.1 (.cons _ _ _ _ _ checked7500.1 (.cons _ _ _ _ _ checked7501.1 (.cons _ _ _ _ _ checked7502.1 (.cons _ _ _ _ _ checked7503.1 (.cons _ _ _ _ _ checked7504.1 (.cons _ _ _ _ _ checked7505.1 (.cons _ _ _ _ _ checked7506.1 (.cons _ _ _ _ _ checked7507.1 (.cons _ _ _ _ _ checked7508.1 (.cons _ _ _ _ _ checked7509.1 (.cons _ _ _ _ _ checked7510.1 (.cons _ _ _ _ _ checked7511.1 (.cons _ _ _ _ _ checked7512.1 (.cons _ _ _ _ _ checked7513.1 (.cons _ _ _ _ _ checked7514.1 (.cons _ _ _ _ _ checked7515.1 (.cons _ _ _ _ _ checked7516.1 (.cons _ _ _ _ _ checked7517.1 (.cons _ _ _ _ _ checked7518.1 (.cons _ _ _ _ _ checked7519.1 (.cons _ _ _ _ _ checked7520.1 (.cons _ _ _ _ _ checked7521.1 (.cons _ _ _ _ _ checked7522.1 (.cons _ _ _ _ _ checked7523.1 (.cons _ _ _ _ _ checked7524.1 (.cons _ _ _ _ _ checked7525.1 (.cons _ _ _ _ _ checked7526.1 (.cons _ _ _ _ _ checked7527.1 (.cons _ _ _ _ _ checked7528.1 (.cons _ _ _ _ _ checked7529.1 (.cons _ _ _ _ _ checked7530.1 (.cons _ _ _ _ _ checked7531.1 (.cons _ _ _ _ _ checked7532.1 (.cons _ _ _ _ _ checked7533.1 (.cons _ _ _ _ _ checked7534.1 (.cons _ _ _ _ _ checked7535.1 (.cons _ _ _ _ _ checked7536.1 (.cons _ _ _ _ _ checked7537.1 (.cons _ _ _ _ _ checked7538.1 (.cons _ _ _ _ _ checked7539.1 (.cons _ _ _ _ _ checked7540.1 (.cons _ _ _ _ _ checked7541.1 (.cons _ _ _ _ _ checked7542.1 (.cons _ _ _ _ _ checked7543.1 (.cons _ _ _ _ _ checked7544.1 (.cons _ _ _ _ _ checked7545.1 (.cons _ _ _ _ _ checked7546.1 (.cons _ _ _ _ _ checked7547.1 (.cons _ _ _ _ _ checked7548.1 (.cons _ _ _ _ _ checked7549.1 (.cons _ _ _ _ _ checked7550.1 (.cons _ _ _ _ _ checked7551.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7531 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3530 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7488.2,checked7489.2,checked7490.2,checked7491.2,checked7492.2,checked7493.2,checked7494.2,checked7495.2,checked7496.2,checked7497.2,checked7498.2,checked7499.2,checked7500.2,checked7501.2,checked7502.2,checked7503.2,checked7504.2,checked7505.2,checked7506.2,checked7507.2,checked7508.2,checked7509.2,checked7510.2,checked7511.2,checked7512.2,checked7513.2,checked7514.2,checked7515.2,checked7516.2,checked7517.2,checked7518.2,checked7519.2,checked7520.2,checked7521.2,checked7522.2,checked7523.2,checked7524.2,checked7525.2,checked7526.2,checked7527.2,checked7528.2,checked7529.2,checked7530.2,checked7531.2,checked7532.2,checked7533.2,checked7534.2,checked7535.2,checked7536.2,checked7537.2,checked7538.2,checked7539.2,checked7540.2,checked7541.2,checked7542.2,checked7543.2,checked7544.2,checked7545.2,checked7546.2,checked7547.2,checked7548.2,checked7549.2,checked7550.2,checked7551.2]
  decide
end ArtifactPathRoundDispatchGroup117
