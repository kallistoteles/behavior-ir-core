import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup116
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7424 : List WordIR.Op := [.shr 5206 8]
def bytes7424 : Bytes := ("    let r00001d76: u32 = r00001456 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7424 : bytes7424=statementBytes 7542 (op7424.map lower) ∧ bytes7424.length=54 := by core033_kernel_decide
def op7425 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7425 : Bytes := ("    let r00001d77: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7425 : bytes7425=statementBytes 7543 (op7425.map lower) ∧ bytes7425.length=41 := by core033_kernel_decide
def op7426 : List WordIR.Op := [.bnot 7543]
def bytes7426 : Bytes := ("    let r00001d78: u32 = !r00001d77;\n" : String).toByteArray.data.toList
theorem checked7426 : bytes7426=statementBytes 7544 (op7426.map lower) ∧ bytes7426.length=37 := by core033_kernel_decide
def op7427 : List WordIR.Op := [.bxor 7542 7544]
def bytes7427 : Bytes := ("    let r00001d79: u32 = r00001d76 ^ r00001d78;\n" : String).toByteArray.data.toList
theorem checked7427 : bytes7427=statementBytes 7545 (op7427.map lower) ∧ bytes7427.length=48 := by core033_kernel_decide
def op7428 : List WordIR.Op := [.shr 5206 8]
def bytes7428 : Bytes := ("    let r00001d7a: u32 = r00001456 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7428 : bytes7428=statementBytes 7546 (op7428.map lower) ∧ bytes7428.length=54 := by core033_kernel_decide
def op7429 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7429 : Bytes := ("    let r00001d7b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7429 : bytes7429=statementBytes 7547 (op7429.map lower) ∧ bytes7429.length=41 := by core033_kernel_decide
def op7430 : List WordIR.Op := [.bnot 7547]
def bytes7430 : Bytes := ("    let r00001d7c: u32 = !r00001d7b;\n" : String).toByteArray.data.toList
theorem checked7430 : bytes7430=statementBytes 7548 (op7430.map lower) ∧ bytes7430.length=37 := by core033_kernel_decide
def op7431 : List WordIR.Op := [.badd 7546 7548]
def bytes7431 : Bytes := ("    let r00001d7d: u32 = r00001d7a.wrapping_add(r00001d7c);\n" : String).toByteArray.data.toList
theorem checked7431 : bytes7431=statementBytes 7549 (op7431.map lower) ∧ bytes7431.length=60 := by core033_kernel_decide
def op7432 : List WordIR.Op := [.bnot 7549]
def bytes7432 : Bytes := ("    let r00001d7e: u32 = !r00001d7d;\n" : String).toByteArray.data.toList
theorem checked7432 : bytes7432=statementBytes 7550 (op7432.map lower) ∧ bytes7432.length=37 := by core033_kernel_decide
def op7433 : List WordIR.Op := [.band 7545 7550]
def bytes7433 : Bytes := ("    let r00001d7f: u32 = r00001d79 & r00001d7e;\n" : String).toByteArray.data.toList
theorem checked7433 : bytes7433=statementBytes 7551 (op7433.map lower) ∧ bytes7433.length=48 := by core033_kernel_decide
def op7434 : List WordIR.Op := [.bxor 7541 7551]
def bytes7434 : Bytes := ("    let r00001d80: u32 = r00001d75 ^ r00001d7f;\n" : String).toByteArray.data.toList
theorem checked7434 : bytes7434=statementBytes 7552 (op7434.map lower) ∧ bytes7434.length=48 := by core033_kernel_decide
def op7435 : List WordIR.Op := [.shr 7552 31]
def bytes7435 : Bytes := ("    let r00001d81: u32 = r00001d80 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7435 : bytes7435=statementBytes 7553 (op7435.map lower) ∧ bytes7435.length=54 := by core033_kernel_decide
def op7436 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7436 : Bytes := ("    let r00001d82: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7436 : bytes7436=statementBytes 7554 (op7436.map lower) ∧ bytes7436.length=41 := by core033_kernel_decide
def op7437 : List WordIR.Op := [.bxor 7553 7554]
def bytes7437 : Bytes := ("    let r00001d83: u32 = r00001d81 ^ r00001d82;\n" : String).toByteArray.data.toList
theorem checked7437 : bytes7437=statementBytes 7555 (op7437.map lower) ∧ bytes7437.length=48 := by core033_kernel_decide
def op7438 : List WordIR.Op := [.shr 5258 8]
def bytes7438 : Bytes := ("    let r00001d84: u32 = r0000148a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7438 : bytes7438=statementBytes 7556 (op7438.map lower) ∧ bytes7438.length=54 := by core033_kernel_decide
def op7439 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7439 : Bytes := ("    let r00001d85: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7439 : bytes7439=statementBytes 7557 (op7439.map lower) ∧ bytes7439.length=41 := by core033_kernel_decide
def op7440 : List WordIR.Op := [.bnot 7557]
def bytes7440 : Bytes := ("    let r00001d86: u32 = !r00001d85;\n" : String).toByteArray.data.toList
theorem checked7440 : bytes7440=statementBytes 7558 (op7440.map lower) ∧ bytes7440.length=37 := by core033_kernel_decide
def op7441 : List WordIR.Op := [.band 7556 7558]
def bytes7441 : Bytes := ("    let r00001d87: u32 = r00001d84 & r00001d86;\n" : String).toByteArray.data.toList
theorem checked7441 : bytes7441=statementBytes 7559 (op7441.map lower) ∧ bytes7441.length=48 := by core033_kernel_decide
def op7442 : List WordIR.Op := [.shr 5258 8]
def bytes7442 : Bytes := ("    let r00001d88: u32 = r0000148a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7442 : bytes7442=statementBytes 7560 (op7442.map lower) ∧ bytes7442.length=54 := by core033_kernel_decide
def op7443 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7443 : Bytes := ("    let r00001d89: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7443 : bytes7443=statementBytes 7561 (op7443.map lower) ∧ bytes7443.length=41 := by core033_kernel_decide
def op7444 : List WordIR.Op := [.bnot 7561]
def bytes7444 : Bytes := ("    let r00001d8a: u32 = !r00001d89;\n" : String).toByteArray.data.toList
theorem checked7444 : bytes7444=statementBytes 7562 (op7444.map lower) ∧ bytes7444.length=37 := by core033_kernel_decide
def op7445 : List WordIR.Op := [.bxor 7560 7562]
def bytes7445 : Bytes := ("    let r00001d8b: u32 = r00001d88 ^ r00001d8a;\n" : String).toByteArray.data.toList
theorem checked7445 : bytes7445=statementBytes 7563 (op7445.map lower) ∧ bytes7445.length=48 := by core033_kernel_decide
def op7446 : List WordIR.Op := [.shr 5258 8]
def bytes7446 : Bytes := ("    let r00001d8c: u32 = r0000148a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7446 : bytes7446=statementBytes 7564 (op7446.map lower) ∧ bytes7446.length=54 := by core033_kernel_decide
def op7447 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7447 : Bytes := ("    let r00001d8d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7447 : bytes7447=statementBytes 7565 (op7447.map lower) ∧ bytes7447.length=41 := by core033_kernel_decide
def op7448 : List WordIR.Op := [.bnot 7565]
def bytes7448 : Bytes := ("    let r00001d8e: u32 = !r00001d8d;\n" : String).toByteArray.data.toList
theorem checked7448 : bytes7448=statementBytes 7566 (op7448.map lower) ∧ bytes7448.length=37 := by core033_kernel_decide
def op7449 : List WordIR.Op := [.badd 7564 7566]
def bytes7449 : Bytes := ("    let r00001d8f: u32 = r00001d8c.wrapping_add(r00001d8e);\n" : String).toByteArray.data.toList
theorem checked7449 : bytes7449=statementBytes 7567 (op7449.map lower) ∧ bytes7449.length=60 := by core033_kernel_decide
def op7450 : List WordIR.Op := [.bnot 7567]
def bytes7450 : Bytes := ("    let r00001d90: u32 = !r00001d8f;\n" : String).toByteArray.data.toList
theorem checked7450 : bytes7450=statementBytes 7568 (op7450.map lower) ∧ bytes7450.length=37 := by core033_kernel_decide
def op7451 : List WordIR.Op := [.band 7563 7568]
def bytes7451 : Bytes := ("    let r00001d91: u32 = r00001d8b & r00001d90;\n" : String).toByteArray.data.toList
theorem checked7451 : bytes7451=statementBytes 7569 (op7451.map lower) ∧ bytes7451.length=48 := by core033_kernel_decide
def op7452 : List WordIR.Op := [.bxor 7559 7569]
def bytes7452 : Bytes := ("    let r00001d92: u32 = r00001d87 ^ r00001d91;\n" : String).toByteArray.data.toList
theorem checked7452 : bytes7452=statementBytes 7570 (op7452.map lower) ∧ bytes7452.length=48 := by core033_kernel_decide
def op7453 : List WordIR.Op := [.shr 7570 31]
def bytes7453 : Bytes := ("    let r00001d93: u32 = r00001d92 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7453 : bytes7453=statementBytes 7571 (op7453.map lower) ∧ bytes7453.length=54 := by core033_kernel_decide
def op7454 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7454 : Bytes := ("    let r00001d94: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7454 : bytes7454=statementBytes 7572 (op7454.map lower) ∧ bytes7454.length=41 := by core033_kernel_decide
def op7455 : List WordIR.Op := [.bxor 7571 7572]
def bytes7455 : Bytes := ("    let r00001d95: u32 = r00001d93 ^ r00001d94;\n" : String).toByteArray.data.toList
theorem checked7455 : bytes7455=statementBytes 7573 (op7455.map lower) ∧ bytes7455.length=48 := by core033_kernel_decide
def op7456 : List WordIR.Op := [.shr 5310 8]
def bytes7456 : Bytes := ("    let r00001d96: u32 = r000014be >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7456 : bytes7456=statementBytes 7574 (op7456.map lower) ∧ bytes7456.length=54 := by core033_kernel_decide
def op7457 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7457 : Bytes := ("    let r00001d97: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7457 : bytes7457=statementBytes 7575 (op7457.map lower) ∧ bytes7457.length=41 := by core033_kernel_decide
def op7458 : List WordIR.Op := [.bnot 7575]
def bytes7458 : Bytes := ("    let r00001d98: u32 = !r00001d97;\n" : String).toByteArray.data.toList
theorem checked7458 : bytes7458=statementBytes 7576 (op7458.map lower) ∧ bytes7458.length=37 := by core033_kernel_decide
def op7459 : List WordIR.Op := [.band 7574 7576]
def bytes7459 : Bytes := ("    let r00001d99: u32 = r00001d96 & r00001d98;\n" : String).toByteArray.data.toList
theorem checked7459 : bytes7459=statementBytes 7577 (op7459.map lower) ∧ bytes7459.length=48 := by core033_kernel_decide
def op7460 : List WordIR.Op := [.shr 5310 8]
def bytes7460 : Bytes := ("    let r00001d9a: u32 = r000014be >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7460 : bytes7460=statementBytes 7578 (op7460.map lower) ∧ bytes7460.length=54 := by core033_kernel_decide
def op7461 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7461 : Bytes := ("    let r00001d9b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7461 : bytes7461=statementBytes 7579 (op7461.map lower) ∧ bytes7461.length=41 := by core033_kernel_decide
def op7462 : List WordIR.Op := [.bnot 7579]
def bytes7462 : Bytes := ("    let r00001d9c: u32 = !r00001d9b;\n" : String).toByteArray.data.toList
theorem checked7462 : bytes7462=statementBytes 7580 (op7462.map lower) ∧ bytes7462.length=37 := by core033_kernel_decide
def op7463 : List WordIR.Op := [.bxor 7578 7580]
def bytes7463 : Bytes := ("    let r00001d9d: u32 = r00001d9a ^ r00001d9c;\n" : String).toByteArray.data.toList
theorem checked7463 : bytes7463=statementBytes 7581 (op7463.map lower) ∧ bytes7463.length=48 := by core033_kernel_decide
def op7464 : List WordIR.Op := [.shr 5310 8]
def bytes7464 : Bytes := ("    let r00001d9e: u32 = r000014be >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7464 : bytes7464=statementBytes 7582 (op7464.map lower) ∧ bytes7464.length=54 := by core033_kernel_decide
def op7465 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7465 : Bytes := ("    let r00001d9f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7465 : bytes7465=statementBytes 7583 (op7465.map lower) ∧ bytes7465.length=41 := by core033_kernel_decide
def op7466 : List WordIR.Op := [.bnot 7583]
def bytes7466 : Bytes := ("    let r00001da0: u32 = !r00001d9f;\n" : String).toByteArray.data.toList
theorem checked7466 : bytes7466=statementBytes 7584 (op7466.map lower) ∧ bytes7466.length=37 := by core033_kernel_decide
def op7467 : List WordIR.Op := [.badd 7582 7584]
def bytes7467 : Bytes := ("    let r00001da1: u32 = r00001d9e.wrapping_add(r00001da0);\n" : String).toByteArray.data.toList
theorem checked7467 : bytes7467=statementBytes 7585 (op7467.map lower) ∧ bytes7467.length=60 := by core033_kernel_decide
def op7468 : List WordIR.Op := [.bnot 7585]
def bytes7468 : Bytes := ("    let r00001da2: u32 = !r00001da1;\n" : String).toByteArray.data.toList
theorem checked7468 : bytes7468=statementBytes 7586 (op7468.map lower) ∧ bytes7468.length=37 := by core033_kernel_decide
def op7469 : List WordIR.Op := [.band 7581 7586]
def bytes7469 : Bytes := ("    let r00001da3: u32 = r00001d9d & r00001da2;\n" : String).toByteArray.data.toList
theorem checked7469 : bytes7469=statementBytes 7587 (op7469.map lower) ∧ bytes7469.length=48 := by core033_kernel_decide
def op7470 : List WordIR.Op := [.bxor 7577 7587]
def bytes7470 : Bytes := ("    let r00001da4: u32 = r00001d99 ^ r00001da3;\n" : String).toByteArray.data.toList
theorem checked7470 : bytes7470=statementBytes 7588 (op7470.map lower) ∧ bytes7470.length=48 := by core033_kernel_decide
def op7471 : List WordIR.Op := [.shr 7588 31]
def bytes7471 : Bytes := ("    let r00001da5: u32 = r00001da4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7471 : bytes7471=statementBytes 7589 (op7471.map lower) ∧ bytes7471.length=54 := by core033_kernel_decide
def op7472 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7472 : Bytes := ("    let r00001da6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7472 : bytes7472=statementBytes 7590 (op7472.map lower) ∧ bytes7472.length=41 := by core033_kernel_decide
def op7473 : List WordIR.Op := [.bxor 7589 7590]
def bytes7473 : Bytes := ("    let r00001da7: u32 = r00001da5 ^ r00001da6;\n" : String).toByteArray.data.toList
theorem checked7473 : bytes7473=statementBytes 7591 (op7473.map lower) ∧ bytes7473.length=48 := by core033_kernel_decide
def op7474 : List WordIR.Op := [.shr 5362 8]
def bytes7474 : Bytes := ("    let r00001da8: u32 = r000014f2 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7474 : bytes7474=statementBytes 7592 (op7474.map lower) ∧ bytes7474.length=54 := by core033_kernel_decide
def op7475 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7475 : Bytes := ("    let r00001da9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7475 : bytes7475=statementBytes 7593 (op7475.map lower) ∧ bytes7475.length=41 := by core033_kernel_decide
def op7476 : List WordIR.Op := [.bnot 7593]
def bytes7476 : Bytes := ("    let r00001daa: u32 = !r00001da9;\n" : String).toByteArray.data.toList
theorem checked7476 : bytes7476=statementBytes 7594 (op7476.map lower) ∧ bytes7476.length=37 := by core033_kernel_decide
def op7477 : List WordIR.Op := [.band 7592 7594]
def bytes7477 : Bytes := ("    let r00001dab: u32 = r00001da8 & r00001daa;\n" : String).toByteArray.data.toList
theorem checked7477 : bytes7477=statementBytes 7595 (op7477.map lower) ∧ bytes7477.length=48 := by core033_kernel_decide
def op7478 : List WordIR.Op := [.shr 5362 8]
def bytes7478 : Bytes := ("    let r00001dac: u32 = r000014f2 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7478 : bytes7478=statementBytes 7596 (op7478.map lower) ∧ bytes7478.length=54 := by core033_kernel_decide
def op7479 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7479 : Bytes := ("    let r00001dad: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7479 : bytes7479=statementBytes 7597 (op7479.map lower) ∧ bytes7479.length=41 := by core033_kernel_decide
def op7480 : List WordIR.Op := [.bnot 7597]
def bytes7480 : Bytes := ("    let r00001dae: u32 = !r00001dad;\n" : String).toByteArray.data.toList
theorem checked7480 : bytes7480=statementBytes 7598 (op7480.map lower) ∧ bytes7480.length=37 := by core033_kernel_decide
def op7481 : List WordIR.Op := [.bxor 7596 7598]
def bytes7481 : Bytes := ("    let r00001daf: u32 = r00001dac ^ r00001dae;\n" : String).toByteArray.data.toList
theorem checked7481 : bytes7481=statementBytes 7599 (op7481.map lower) ∧ bytes7481.length=48 := by core033_kernel_decide
def op7482 : List WordIR.Op := [.shr 5362 8]
def bytes7482 : Bytes := ("    let r00001db0: u32 = r000014f2 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7482 : bytes7482=statementBytes 7600 (op7482.map lower) ∧ bytes7482.length=54 := by core033_kernel_decide
def op7483 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7483 : Bytes := ("    let r00001db1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7483 : bytes7483=statementBytes 7601 (op7483.map lower) ∧ bytes7483.length=41 := by core033_kernel_decide
def op7484 : List WordIR.Op := [.bnot 7601]
def bytes7484 : Bytes := ("    let r00001db2: u32 = !r00001db1;\n" : String).toByteArray.data.toList
theorem checked7484 : bytes7484=statementBytes 7602 (op7484.map lower) ∧ bytes7484.length=37 := by core033_kernel_decide
def op7485 : List WordIR.Op := [.badd 7600 7602]
def bytes7485 : Bytes := ("    let r00001db3: u32 = r00001db0.wrapping_add(r00001db2);\n" : String).toByteArray.data.toList
theorem checked7485 : bytes7485=statementBytes 7603 (op7485.map lower) ∧ bytes7485.length=60 := by core033_kernel_decide
def op7486 : List WordIR.Op := [.bnot 7603]
def bytes7486 : Bytes := ("    let r00001db4: u32 = !r00001db3;\n" : String).toByteArray.data.toList
theorem checked7486 : bytes7486=statementBytes 7604 (op7486.map lower) ∧ bytes7486.length=37 := by core033_kernel_decide
def op7487 : List WordIR.Op := [.band 7599 7604]
def bytes7487 : Bytes := ("    let r00001db5: u32 = r00001daf & r00001db4;\n" : String).toByteArray.data.toList
theorem checked7487 : bytes7487=statementBytes 7605 (op7487.map lower) ∧ bytes7487.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7424,op7425,op7426,op7427,op7428,op7429,op7430,op7431,op7432,op7433,op7434,op7435,op7436,op7437,op7438,op7439,op7440,op7441,op7442,op7443,op7444,op7445,op7446,op7447,op7448,op7449,op7450,op7451,op7452,op7453,op7454,op7455,op7456,op7457,op7458,op7459,op7460,op7461,op7462,op7463,op7464,op7465,op7466,op7467,op7468,op7469,op7470,op7471,op7472,op7473,op7474,op7475,op7476,op7477,op7478,op7479,op7480,op7481,op7482,op7483,op7484,op7485,op7486,op7487]
def chunks : List Bytes := [bytes7424,bytes7425,bytes7426,bytes7427,bytes7428,bytes7429,bytes7430,bytes7431,bytes7432,bytes7433,bytes7434,bytes7435,bytes7436,bytes7437,bytes7438,bytes7439,bytes7440,bytes7441,bytes7442,bytes7443,bytes7444,bytes7445,bytes7446,bytes7447,bytes7448,bytes7449,bytes7450,bytes7451,bytes7452,bytes7453,bytes7454,bytes7455,bytes7456,bytes7457,bytes7458,bytes7459,bytes7460,bytes7461,bytes7462,bytes7463,bytes7464,bytes7465,bytes7466,bytes7467,bytes7468,bytes7469,bytes7470,bytes7471,bytes7472,bytes7473,bytes7474,bytes7475,bytes7476,bytes7477,bytes7478,bytes7479,bytes7480,bytes7481,bytes7482,bytes7483,bytes7484,bytes7485,bytes7486,bytes7487]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7542 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7424.1 (.cons _ _ _ _ _ checked7425.1 (.cons _ _ _ _ _ checked7426.1 (.cons _ _ _ _ _ checked7427.1 (.cons _ _ _ _ _ checked7428.1 (.cons _ _ _ _ _ checked7429.1 (.cons _ _ _ _ _ checked7430.1 (.cons _ _ _ _ _ checked7431.1 (.cons _ _ _ _ _ checked7432.1 (.cons _ _ _ _ _ checked7433.1 (.cons _ _ _ _ _ checked7434.1 (.cons _ _ _ _ _ checked7435.1 (.cons _ _ _ _ _ checked7436.1 (.cons _ _ _ _ _ checked7437.1 (.cons _ _ _ _ _ checked7438.1 (.cons _ _ _ _ _ checked7439.1 (.cons _ _ _ _ _ checked7440.1 (.cons _ _ _ _ _ checked7441.1 (.cons _ _ _ _ _ checked7442.1 (.cons _ _ _ _ _ checked7443.1 (.cons _ _ _ _ _ checked7444.1 (.cons _ _ _ _ _ checked7445.1 (.cons _ _ _ _ _ checked7446.1 (.cons _ _ _ _ _ checked7447.1 (.cons _ _ _ _ _ checked7448.1 (.cons _ _ _ _ _ checked7449.1 (.cons _ _ _ _ _ checked7450.1 (.cons _ _ _ _ _ checked7451.1 (.cons _ _ _ _ _ checked7452.1 (.cons _ _ _ _ _ checked7453.1 (.cons _ _ _ _ _ checked7454.1 (.cons _ _ _ _ _ checked7455.1 (.cons _ _ _ _ _ checked7456.1 (.cons _ _ _ _ _ checked7457.1 (.cons _ _ _ _ _ checked7458.1 (.cons _ _ _ _ _ checked7459.1 (.cons _ _ _ _ _ checked7460.1 (.cons _ _ _ _ _ checked7461.1 (.cons _ _ _ _ _ checked7462.1 (.cons _ _ _ _ _ checked7463.1 (.cons _ _ _ _ _ checked7464.1 (.cons _ _ _ _ _ checked7465.1 (.cons _ _ _ _ _ checked7466.1 (.cons _ _ _ _ _ checked7467.1 (.cons _ _ _ _ _ checked7468.1 (.cons _ _ _ _ _ checked7469.1 (.cons _ _ _ _ _ checked7470.1 (.cons _ _ _ _ _ checked7471.1 (.cons _ _ _ _ _ checked7472.1 (.cons _ _ _ _ _ checked7473.1 (.cons _ _ _ _ _ checked7474.1 (.cons _ _ _ _ _ checked7475.1 (.cons _ _ _ _ _ checked7476.1 (.cons _ _ _ _ _ checked7477.1 (.cons _ _ _ _ _ checked7478.1 (.cons _ _ _ _ _ checked7479.1 (.cons _ _ _ _ _ checked7480.1 (.cons _ _ _ _ _ checked7481.1 (.cons _ _ _ _ _ checked7482.1 (.cons _ _ _ _ _ checked7483.1 (.cons _ _ _ _ _ checked7484.1 (.cons _ _ _ _ _ checked7485.1 (.cons _ _ _ _ _ checked7486.1 (.cons _ _ _ _ _ checked7487.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7542 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2941 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7424.2,checked7425.2,checked7426.2,checked7427.2,checked7428.2,checked7429.2,checked7430.2,checked7431.2,checked7432.2,checked7433.2,checked7434.2,checked7435.2,checked7436.2,checked7437.2,checked7438.2,checked7439.2,checked7440.2,checked7441.2,checked7442.2,checked7443.2,checked7444.2,checked7445.2,checked7446.2,checked7447.2,checked7448.2,checked7449.2,checked7450.2,checked7451.2,checked7452.2,checked7453.2,checked7454.2,checked7455.2,checked7456.2,checked7457.2,checked7458.2,checked7459.2,checked7460.2,checked7461.2,checked7462.2,checked7463.2,checked7464.2,checked7465.2,checked7466.2,checked7467.2,checked7468.2,checked7469.2,checked7470.2,checked7471.2,checked7472.2,checked7473.2,checked7474.2,checked7475.2,checked7476.2,checked7477.2,checked7478.2,checked7479.2,checked7480.2,checked7481.2,checked7482.2,checked7483.2,checked7484.2,checked7485.2,checked7486.2,checked7487.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup116
