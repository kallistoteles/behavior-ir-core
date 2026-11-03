import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup7
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op448 : List WordIR.Op := [.bnot 519]
def bytes448 : Bytes := ("    let r00000208: u32 = !r00000207;\n" : String).toByteArray.data.toList
theorem checked448 : bytes448=statementBytes 520 (op448.map lower) ∧ bytes448.length=37 := by core033_kernel_decide
def op449 : List WordIR.Op := [.badd 518 520]
def bytes449 : Bytes := ("    let r00000209: u32 = r00000206.wrapping_add(r00000208);\n" : String).toByteArray.data.toList
theorem checked449 : bytes449=statementBytes 521 (op449.map lower) ∧ bytes449.length=60 := by core033_kernel_decide
def op450 : List WordIR.Op := [.bnot 521]
def bytes450 : Bytes := ("    let r0000020a: u32 = !r00000209;\n" : String).toByteArray.data.toList
theorem checked450 : bytes450=statementBytes 522 (op450.map lower) ∧ bytes450.length=37 := by core033_kernel_decide
def op451 : List WordIR.Op := [.band 517 522]
def bytes451 : Bytes := ("    let r0000020b: u32 = r00000205 & r0000020a;\n" : String).toByteArray.data.toList
theorem checked451 : bytes451=statementBytes 523 (op451.map lower) ∧ bytes451.length=48 := by core033_kernel_decide
def op452 : List WordIR.Op := [.bxor 513 523]
def bytes452 : Bytes := ("    let r0000020c: u32 = r00000201 ^ r0000020b;\n" : String).toByteArray.data.toList
theorem checked452 : bytes452=statementBytes 524 (op452.map lower) ∧ bytes452.length=48 := by core033_kernel_decide
def op453 : List WordIR.Op := [.shr 524 31]
def bytes453 : Bytes := ("    let r0000020d: u32 = r0000020c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked453 : bytes453=statementBytes 525 (op453.map lower) ∧ bytes453.length=54 := by core033_kernel_decide
def op454 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes454 : Bytes := ("    let r0000020e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked454 : bytes454=statementBytes 526 (op454.map lower) ∧ bytes454.length=41 := by core033_kernel_decide
def op455 : List WordIR.Op := [.bxor 525 526]
def bytes455 : Bytes := ("    let r0000020f: u32 = r0000020d ^ r0000020e;\n" : String).toByteArray.data.toList
theorem checked455 : bytes455=statementBytes 527 (op455.map lower) ∧ bytes455.length=48 := by core033_kernel_decide
def op456 : List WordIR.Op := [.shr 28 8]
def bytes456 : Bytes := ("    let r00000210: u32 = r0000001c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked456 : bytes456=statementBytes 528 (op456.map lower) ∧ bytes456.length=54 := by core033_kernel_decide
def op457 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes457 : Bytes := ("    let r00000211: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked457 : bytes457=statementBytes 529 (op457.map lower) ∧ bytes457.length=41 := by core033_kernel_decide
def op458 : List WordIR.Op := [.bnot 529]
def bytes458 : Bytes := ("    let r00000212: u32 = !r00000211;\n" : String).toByteArray.data.toList
theorem checked458 : bytes458=statementBytes 530 (op458.map lower) ∧ bytes458.length=37 := by core033_kernel_decide
def op459 : List WordIR.Op := [.band 528 530]
def bytes459 : Bytes := ("    let r00000213: u32 = r00000210 & r00000212;\n" : String).toByteArray.data.toList
theorem checked459 : bytes459=statementBytes 531 (op459.map lower) ∧ bytes459.length=48 := by core033_kernel_decide
def op460 : List WordIR.Op := [.shr 28 8]
def bytes460 : Bytes := ("    let r00000214: u32 = r0000001c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked460 : bytes460=statementBytes 532 (op460.map lower) ∧ bytes460.length=54 := by core033_kernel_decide
def op461 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes461 : Bytes := ("    let r00000215: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked461 : bytes461=statementBytes 533 (op461.map lower) ∧ bytes461.length=41 := by core033_kernel_decide
def op462 : List WordIR.Op := [.bnot 533]
def bytes462 : Bytes := ("    let r00000216: u32 = !r00000215;\n" : String).toByteArray.data.toList
theorem checked462 : bytes462=statementBytes 534 (op462.map lower) ∧ bytes462.length=37 := by core033_kernel_decide
def op463 : List WordIR.Op := [.bxor 532 534]
def bytes463 : Bytes := ("    let r00000217: u32 = r00000214 ^ r00000216;\n" : String).toByteArray.data.toList
theorem checked463 : bytes463=statementBytes 535 (op463.map lower) ∧ bytes463.length=48 := by core033_kernel_decide
def op464 : List WordIR.Op := [.shr 28 8]
def bytes464 : Bytes := ("    let r00000218: u32 = r0000001c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked464 : bytes464=statementBytes 536 (op464.map lower) ∧ bytes464.length=54 := by core033_kernel_decide
def op465 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes465 : Bytes := ("    let r00000219: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked465 : bytes465=statementBytes 537 (op465.map lower) ∧ bytes465.length=41 := by core033_kernel_decide
def op466 : List WordIR.Op := [.bnot 537]
def bytes466 : Bytes := ("    let r0000021a: u32 = !r00000219;\n" : String).toByteArray.data.toList
theorem checked466 : bytes466=statementBytes 538 (op466.map lower) ∧ bytes466.length=37 := by core033_kernel_decide
def op467 : List WordIR.Op := [.badd 536 538]
def bytes467 : Bytes := ("    let r0000021b: u32 = r00000218.wrapping_add(r0000021a);\n" : String).toByteArray.data.toList
theorem checked467 : bytes467=statementBytes 539 (op467.map lower) ∧ bytes467.length=60 := by core033_kernel_decide
def op468 : List WordIR.Op := [.bnot 539]
def bytes468 : Bytes := ("    let r0000021c: u32 = !r0000021b;\n" : String).toByteArray.data.toList
theorem checked468 : bytes468=statementBytes 540 (op468.map lower) ∧ bytes468.length=37 := by core033_kernel_decide
def op469 : List WordIR.Op := [.band 535 540]
def bytes469 : Bytes := ("    let r0000021d: u32 = r00000217 & r0000021c;\n" : String).toByteArray.data.toList
theorem checked469 : bytes469=statementBytes 541 (op469.map lower) ∧ bytes469.length=48 := by core033_kernel_decide
def op470 : List WordIR.Op := [.bxor 531 541]
def bytes470 : Bytes := ("    let r0000021e: u32 = r00000213 ^ r0000021d;\n" : String).toByteArray.data.toList
theorem checked470 : bytes470=statementBytes 542 (op470.map lower) ∧ bytes470.length=48 := by core033_kernel_decide
def op471 : List WordIR.Op := [.shr 542 31]
def bytes471 : Bytes := ("    let r0000021f: u32 = r0000021e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked471 : bytes471=statementBytes 543 (op471.map lower) ∧ bytes471.length=54 := by core033_kernel_decide
def op472 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes472 : Bytes := ("    let r00000220: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked472 : bytes472=statementBytes 544 (op472.map lower) ∧ bytes472.length=41 := by core033_kernel_decide
def op473 : List WordIR.Op := [.bxor 543 544]
def bytes473 : Bytes := ("    let r00000221: u32 = r0000021f ^ r00000220;\n" : String).toByteArray.data.toList
theorem checked473 : bytes473=statementBytes 545 (op473.map lower) ∧ bytes473.length=48 := by core033_kernel_decide
def op474 : List WordIR.Op := [.shr 29 8]
def bytes474 : Bytes := ("    let r00000222: u32 = r0000001d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked474 : bytes474=statementBytes 546 (op474.map lower) ∧ bytes474.length=54 := by core033_kernel_decide
def op475 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes475 : Bytes := ("    let r00000223: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked475 : bytes475=statementBytes 547 (op475.map lower) ∧ bytes475.length=41 := by core033_kernel_decide
def op476 : List WordIR.Op := [.bnot 547]
def bytes476 : Bytes := ("    let r00000224: u32 = !r00000223;\n" : String).toByteArray.data.toList
theorem checked476 : bytes476=statementBytes 548 (op476.map lower) ∧ bytes476.length=37 := by core033_kernel_decide
def op477 : List WordIR.Op := [.band 546 548]
def bytes477 : Bytes := ("    let r00000225: u32 = r00000222 & r00000224;\n" : String).toByteArray.data.toList
theorem checked477 : bytes477=statementBytes 549 (op477.map lower) ∧ bytes477.length=48 := by core033_kernel_decide
def op478 : List WordIR.Op := [.shr 29 8]
def bytes478 : Bytes := ("    let r00000226: u32 = r0000001d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked478 : bytes478=statementBytes 550 (op478.map lower) ∧ bytes478.length=54 := by core033_kernel_decide
def op479 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes479 : Bytes := ("    let r00000227: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked479 : bytes479=statementBytes 551 (op479.map lower) ∧ bytes479.length=41 := by core033_kernel_decide
def op480 : List WordIR.Op := [.bnot 551]
def bytes480 : Bytes := ("    let r00000228: u32 = !r00000227;\n" : String).toByteArray.data.toList
theorem checked480 : bytes480=statementBytes 552 (op480.map lower) ∧ bytes480.length=37 := by core033_kernel_decide
def op481 : List WordIR.Op := [.bxor 550 552]
def bytes481 : Bytes := ("    let r00000229: u32 = r00000226 ^ r00000228;\n" : String).toByteArray.data.toList
theorem checked481 : bytes481=statementBytes 553 (op481.map lower) ∧ bytes481.length=48 := by core033_kernel_decide
def op482 : List WordIR.Op := [.shr 29 8]
def bytes482 : Bytes := ("    let r0000022a: u32 = r0000001d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked482 : bytes482=statementBytes 554 (op482.map lower) ∧ bytes482.length=54 := by core033_kernel_decide
def op483 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes483 : Bytes := ("    let r0000022b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked483 : bytes483=statementBytes 555 (op483.map lower) ∧ bytes483.length=41 := by core033_kernel_decide
def op484 : List WordIR.Op := [.bnot 555]
def bytes484 : Bytes := ("    let r0000022c: u32 = !r0000022b;\n" : String).toByteArray.data.toList
theorem checked484 : bytes484=statementBytes 556 (op484.map lower) ∧ bytes484.length=37 := by core033_kernel_decide
def op485 : List WordIR.Op := [.badd 554 556]
def bytes485 : Bytes := ("    let r0000022d: u32 = r0000022a.wrapping_add(r0000022c);\n" : String).toByteArray.data.toList
theorem checked485 : bytes485=statementBytes 557 (op485.map lower) ∧ bytes485.length=60 := by core033_kernel_decide
def op486 : List WordIR.Op := [.bnot 557]
def bytes486 : Bytes := ("    let r0000022e: u32 = !r0000022d;\n" : String).toByteArray.data.toList
theorem checked486 : bytes486=statementBytes 558 (op486.map lower) ∧ bytes486.length=37 := by core033_kernel_decide
def op487 : List WordIR.Op := [.band 553 558]
def bytes487 : Bytes := ("    let r0000022f: u32 = r00000229 & r0000022e;\n" : String).toByteArray.data.toList
theorem checked487 : bytes487=statementBytes 559 (op487.map lower) ∧ bytes487.length=48 := by core033_kernel_decide
def op488 : List WordIR.Op := [.bxor 549 559]
def bytes488 : Bytes := ("    let r00000230: u32 = r00000225 ^ r0000022f;\n" : String).toByteArray.data.toList
theorem checked488 : bytes488=statementBytes 560 (op488.map lower) ∧ bytes488.length=48 := by core033_kernel_decide
def op489 : List WordIR.Op := [.shr 560 31]
def bytes489 : Bytes := ("    let r00000231: u32 = r00000230 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked489 : bytes489=statementBytes 561 (op489.map lower) ∧ bytes489.length=54 := by core033_kernel_decide
def op490 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes490 : Bytes := ("    let r00000232: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked490 : bytes490=statementBytes 562 (op490.map lower) ∧ bytes490.length=41 := by core033_kernel_decide
def op491 : List WordIR.Op := [.bxor 561 562]
def bytes491 : Bytes := ("    let r00000233: u32 = r00000231 ^ r00000232;\n" : String).toByteArray.data.toList
theorem checked491 : bytes491=statementBytes 563 (op491.map lower) ∧ bytes491.length=48 := by core033_kernel_decide
def op492 : List WordIR.Op := [.shr 30 8]
def bytes492 : Bytes := ("    let r00000234: u32 = r0000001e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked492 : bytes492=statementBytes 564 (op492.map lower) ∧ bytes492.length=54 := by core033_kernel_decide
def op493 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes493 : Bytes := ("    let r00000235: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked493 : bytes493=statementBytes 565 (op493.map lower) ∧ bytes493.length=41 := by core033_kernel_decide
def op494 : List WordIR.Op := [.bnot 565]
def bytes494 : Bytes := ("    let r00000236: u32 = !r00000235;\n" : String).toByteArray.data.toList
theorem checked494 : bytes494=statementBytes 566 (op494.map lower) ∧ bytes494.length=37 := by core033_kernel_decide
def op495 : List WordIR.Op := [.band 564 566]
def bytes495 : Bytes := ("    let r00000237: u32 = r00000234 & r00000236;\n" : String).toByteArray.data.toList
theorem checked495 : bytes495=statementBytes 567 (op495.map lower) ∧ bytes495.length=48 := by core033_kernel_decide
def op496 : List WordIR.Op := [.shr 30 8]
def bytes496 : Bytes := ("    let r00000238: u32 = r0000001e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked496 : bytes496=statementBytes 568 (op496.map lower) ∧ bytes496.length=54 := by core033_kernel_decide
def op497 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes497 : Bytes := ("    let r00000239: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked497 : bytes497=statementBytes 569 (op497.map lower) ∧ bytes497.length=41 := by core033_kernel_decide
def op498 : List WordIR.Op := [.bnot 569]
def bytes498 : Bytes := ("    let r0000023a: u32 = !r00000239;\n" : String).toByteArray.data.toList
theorem checked498 : bytes498=statementBytes 570 (op498.map lower) ∧ bytes498.length=37 := by core033_kernel_decide
def op499 : List WordIR.Op := [.bxor 568 570]
def bytes499 : Bytes := ("    let r0000023b: u32 = r00000238 ^ r0000023a;\n" : String).toByteArray.data.toList
theorem checked499 : bytes499=statementBytes 571 (op499.map lower) ∧ bytes499.length=48 := by core033_kernel_decide
def op500 : List WordIR.Op := [.shr 30 8]
def bytes500 : Bytes := ("    let r0000023c: u32 = r0000001e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked500 : bytes500=statementBytes 572 (op500.map lower) ∧ bytes500.length=54 := by core033_kernel_decide
def op501 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes501 : Bytes := ("    let r0000023d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked501 : bytes501=statementBytes 573 (op501.map lower) ∧ bytes501.length=41 := by core033_kernel_decide
def op502 : List WordIR.Op := [.bnot 573]
def bytes502 : Bytes := ("    let r0000023e: u32 = !r0000023d;\n" : String).toByteArray.data.toList
theorem checked502 : bytes502=statementBytes 574 (op502.map lower) ∧ bytes502.length=37 := by core033_kernel_decide
def op503 : List WordIR.Op := [.badd 572 574]
def bytes503 : Bytes := ("    let r0000023f: u32 = r0000023c.wrapping_add(r0000023e);\n" : String).toByteArray.data.toList
theorem checked503 : bytes503=statementBytes 575 (op503.map lower) ∧ bytes503.length=60 := by core033_kernel_decide
def op504 : List WordIR.Op := [.bnot 575]
def bytes504 : Bytes := ("    let r00000240: u32 = !r0000023f;\n" : String).toByteArray.data.toList
theorem checked504 : bytes504=statementBytes 576 (op504.map lower) ∧ bytes504.length=37 := by core033_kernel_decide
def op505 : List WordIR.Op := [.band 571 576]
def bytes505 : Bytes := ("    let r00000241: u32 = r0000023b & r00000240;\n" : String).toByteArray.data.toList
theorem checked505 : bytes505=statementBytes 577 (op505.map lower) ∧ bytes505.length=48 := by core033_kernel_decide
def op506 : List WordIR.Op := [.bxor 567 577]
def bytes506 : Bytes := ("    let r00000242: u32 = r00000237 ^ r00000241;\n" : String).toByteArray.data.toList
theorem checked506 : bytes506=statementBytes 578 (op506.map lower) ∧ bytes506.length=48 := by core033_kernel_decide
def op507 : List WordIR.Op := [.shr 578 31]
def bytes507 : Bytes := ("    let r00000243: u32 = r00000242 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked507 : bytes507=statementBytes 579 (op507.map lower) ∧ bytes507.length=54 := by core033_kernel_decide
def op508 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes508 : Bytes := ("    let r00000244: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked508 : bytes508=statementBytes 580 (op508.map lower) ∧ bytes508.length=41 := by core033_kernel_decide
def op509 : List WordIR.Op := [.bxor 579 580]
def bytes509 : Bytes := ("    let r00000245: u32 = r00000243 ^ r00000244;\n" : String).toByteArray.data.toList
theorem checked509 : bytes509=statementBytes 581 (op509.map lower) ∧ bytes509.length=48 := by core033_kernel_decide
def op510 : List WordIR.Op := [.shr 31 8]
def bytes510 : Bytes := ("    let r00000246: u32 = r0000001f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked510 : bytes510=statementBytes 582 (op510.map lower) ∧ bytes510.length=54 := by core033_kernel_decide
def op511 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes511 : Bytes := ("    let r00000247: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked511 : bytes511=statementBytes 583 (op511.map lower) ∧ bytes511.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op448,op449,op450,op451,op452,op453,op454,op455,op456,op457,op458,op459,op460,op461,op462,op463,op464,op465,op466,op467,op468,op469,op470,op471,op472,op473,op474,op475,op476,op477,op478,op479,op480,op481,op482,op483,op484,op485,op486,op487,op488,op489,op490,op491,op492,op493,op494,op495,op496,op497,op498,op499,op500,op501,op502,op503,op504,op505,op506,op507,op508,op509,op510,op511]
def chunks : List Bytes := [bytes448,bytes449,bytes450,bytes451,bytes452,bytes453,bytes454,bytes455,bytes456,bytes457,bytes458,bytes459,bytes460,bytes461,bytes462,bytes463,bytes464,bytes465,bytes466,bytes467,bytes468,bytes469,bytes470,bytes471,bytes472,bytes473,bytes474,bytes475,bytes476,bytes477,bytes478,bytes479,bytes480,bytes481,bytes482,bytes483,bytes484,bytes485,bytes486,bytes487,bytes488,bytes489,bytes490,bytes491,bytes492,bytes493,bytes494,bytes495,bytes496,bytes497,bytes498,bytes499,bytes500,bytes501,bytes502,bytes503,bytes504,bytes505,bytes506,bytes507,bytes508,bytes509,bytes510,bytes511]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 520 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked448.1 (.cons _ _ _ _ _ checked449.1 (.cons _ _ _ _ _ checked450.1 (.cons _ _ _ _ _ checked451.1 (.cons _ _ _ _ _ checked452.1 (.cons _ _ _ _ _ checked453.1 (.cons _ _ _ _ _ checked454.1 (.cons _ _ _ _ _ checked455.1 (.cons _ _ _ _ _ checked456.1 (.cons _ _ _ _ _ checked457.1 (.cons _ _ _ _ _ checked458.1 (.cons _ _ _ _ _ checked459.1 (.cons _ _ _ _ _ checked460.1 (.cons _ _ _ _ _ checked461.1 (.cons _ _ _ _ _ checked462.1 (.cons _ _ _ _ _ checked463.1 (.cons _ _ _ _ _ checked464.1 (.cons _ _ _ _ _ checked465.1 (.cons _ _ _ _ _ checked466.1 (.cons _ _ _ _ _ checked467.1 (.cons _ _ _ _ _ checked468.1 (.cons _ _ _ _ _ checked469.1 (.cons _ _ _ _ _ checked470.1 (.cons _ _ _ _ _ checked471.1 (.cons _ _ _ _ _ checked472.1 (.cons _ _ _ _ _ checked473.1 (.cons _ _ _ _ _ checked474.1 (.cons _ _ _ _ _ checked475.1 (.cons _ _ _ _ _ checked476.1 (.cons _ _ _ _ _ checked477.1 (.cons _ _ _ _ _ checked478.1 (.cons _ _ _ _ _ checked479.1 (.cons _ _ _ _ _ checked480.1 (.cons _ _ _ _ _ checked481.1 (.cons _ _ _ _ _ checked482.1 (.cons _ _ _ _ _ checked483.1 (.cons _ _ _ _ _ checked484.1 (.cons _ _ _ _ _ checked485.1 (.cons _ _ _ _ _ checked486.1 (.cons _ _ _ _ _ checked487.1 (.cons _ _ _ _ _ checked488.1 (.cons _ _ _ _ _ checked489.1 (.cons _ _ _ _ _ checked490.1 (.cons _ _ _ _ _ checked491.1 (.cons _ _ _ _ _ checked492.1 (.cons _ _ _ _ _ checked493.1 (.cons _ _ _ _ _ checked494.1 (.cons _ _ _ _ _ checked495.1 (.cons _ _ _ _ _ checked496.1 (.cons _ _ _ _ _ checked497.1 (.cons _ _ _ _ _ checked498.1 (.cons _ _ _ _ _ checked499.1 (.cons _ _ _ _ _ checked500.1 (.cons _ _ _ _ _ checked501.1 (.cons _ _ _ _ _ checked502.1 (.cons _ _ _ _ _ checked503.1 (.cons _ _ _ _ _ checked504.1 (.cons _ _ _ _ _ checked505.1 (.cons _ _ _ _ _ checked506.1 (.cons _ _ _ _ _ checked507.1 (.cons _ _ _ _ _ checked508.1 (.cons _ _ _ _ _ checked509.1 (.cons _ _ _ _ _ checked510.1 (.cons _ _ _ _ _ checked511.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 520 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked448.2,checked449.2,checked450.2,checked451.2,checked452.2,checked453.2,checked454.2,checked455.2,checked456.2,checked457.2,checked458.2,checked459.2,checked460.2,checked461.2,checked462.2,checked463.2,checked464.2,checked465.2,checked466.2,checked467.2,checked468.2,checked469.2,checked470.2,checked471.2,checked472.2,checked473.2,checked474.2,checked475.2,checked476.2,checked477.2,checked478.2,checked479.2,checked480.2,checked481.2,checked482.2,checked483.2,checked484.2,checked485.2,checked486.2,checked487.2,checked488.2,checked489.2,checked490.2,checked491.2,checked492.2,checked493.2,checked494.2,checked495.2,checked496.2,checked497.2,checked498.2,checked499.2,checked500.2,checked501.2,checked502.2,checked503.2,checked504.2,checked505.2,checked506.2,checked507.2,checked508.2,checked509.2,checked510.2,checked511.2]
  decide
end ArtifactHashBlockGroup7
