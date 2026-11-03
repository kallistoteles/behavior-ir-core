import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup194
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12416 : List WordIR.Op := [.band 12511 979]
def bytes12416 : Bytes := ("    let r000030e0: u32 = r000030df & r000003d3;\n" : String).toByteArray.data.toList
theorem checked12416 : bytes12416=statementBytes 12512 (op12416.map lower) ∧ bytes12416.length=48 := by core033_kernel_decide
def op12417 : List WordIR.Op := [.bxor 12486 12512]
def bytes12417 : Bytes := ("    let r000030e1: u32 = r000030c6 ^ r000030e0;\n" : String).toByteArray.data.toList
theorem checked12417 : bytes12417=statementBytes 12513 (op12417.map lower) ∧ bytes12417.length=48 := by core033_kernel_decide
def op12418 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12418 : Bytes := ("    let r000030e2: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12418 : bytes12418=statementBytes 12514 (op12418.map lower) ∧ bytes12418.length=41 := by core033_kernel_decide
def op12419 : List WordIR.Op := [.bxor 442 12514]
def bytes12419 : Bytes := ("    let r000030e3: u32 = r000001ba ^ r000030e2;\n" : String).toByteArray.data.toList
theorem checked12419 : bytes12419=statementBytes 12515 (op12419.map lower) ∧ bytes12419.length=48 := by core033_kernel_decide
def op12420 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12420 : Bytes := ("    let r000030e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12420 : bytes12420=statementBytes 12516 (op12420.map lower) ∧ bytes12420.length=41 := by core033_kernel_decide
def op12421 : List WordIR.Op := [.bnot 12516]
def bytes12421 : Bytes := ("    let r000030e5: u32 = !r000030e4;\n" : String).toByteArray.data.toList
theorem checked12421 : bytes12421=statementBytes 12517 (op12421.map lower) ∧ bytes12421.length=37 := by core033_kernel_decide
def op12422 : List WordIR.Op := [.band 12515 12517]
def bytes12422 : Bytes := ("    let r000030e6: u32 = r000030e3 & r000030e5;\n" : String).toByteArray.data.toList
theorem checked12422 : bytes12422=statementBytes 12518 (op12422.map lower) ∧ bytes12422.length=48 := by core033_kernel_decide
def op12423 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12423 : Bytes := ("    let r000030e7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12423 : bytes12423=statementBytes 12519 (op12423.map lower) ∧ bytes12423.length=41 := by core033_kernel_decide
def op12424 : List WordIR.Op := [.bxor 442 12519]
def bytes12424 : Bytes := ("    let r000030e8: u32 = r000001ba ^ r000030e7;\n" : String).toByteArray.data.toList
theorem checked12424 : bytes12424=statementBytes 12520 (op12424.map lower) ∧ bytes12424.length=48 := by core033_kernel_decide
def op12425 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12425 : Bytes := ("    let r000030e9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12425 : bytes12425=statementBytes 12521 (op12425.map lower) ∧ bytes12425.length=41 := by core033_kernel_decide
def op12426 : List WordIR.Op := [.bnot 12521]
def bytes12426 : Bytes := ("    let r000030ea: u32 = !r000030e9;\n" : String).toByteArray.data.toList
theorem checked12426 : bytes12426=statementBytes 12522 (op12426.map lower) ∧ bytes12426.length=37 := by core033_kernel_decide
def op12427 : List WordIR.Op := [.bxor 12520 12522]
def bytes12427 : Bytes := ("    let r000030eb: u32 = r000030e8 ^ r000030ea;\n" : String).toByteArray.data.toList
theorem checked12427 : bytes12427=statementBytes 12523 (op12427.map lower) ∧ bytes12427.length=48 := by core033_kernel_decide
def op12428 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12428 : Bytes := ("    let r000030ec: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12428 : bytes12428=statementBytes 12524 (op12428.map lower) ∧ bytes12428.length=41 := by core033_kernel_decide
def op12429 : List WordIR.Op := [.bxor 442 12524]
def bytes12429 : Bytes := ("    let r000030ed: u32 = r000001ba ^ r000030ec;\n" : String).toByteArray.data.toList
theorem checked12429 : bytes12429=statementBytes 12525 (op12429.map lower) ∧ bytes12429.length=48 := by core033_kernel_decide
def op12430 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12430 : Bytes := ("    let r000030ee: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12430 : bytes12430=statementBytes 12526 (op12430.map lower) ∧ bytes12430.length=41 := by core033_kernel_decide
def op12431 : List WordIR.Op := [.bnot 12526]
def bytes12431 : Bytes := ("    let r000030ef: u32 = !r000030ee;\n" : String).toByteArray.data.toList
theorem checked12431 : bytes12431=statementBytes 12527 (op12431.map lower) ∧ bytes12431.length=37 := by core033_kernel_decide
def op12432 : List WordIR.Op := [.badd 12525 12527]
def bytes12432 : Bytes := ("    let r000030f0: u32 = r000030ed.wrapping_add(r000030ef);\n" : String).toByteArray.data.toList
theorem checked12432 : bytes12432=statementBytes 12528 (op12432.map lower) ∧ bytes12432.length=60 := by core033_kernel_decide
def op12433 : List WordIR.Op := [.bnot 12528]
def bytes12433 : Bytes := ("    let r000030f1: u32 = !r000030f0;\n" : String).toByteArray.data.toList
theorem checked12433 : bytes12433=statementBytes 12529 (op12433.map lower) ∧ bytes12433.length=37 := by core033_kernel_decide
def op12434 : List WordIR.Op := [.band 12523 12529]
def bytes12434 : Bytes := ("    let r000030f2: u32 = r000030eb & r000030f1;\n" : String).toByteArray.data.toList
theorem checked12434 : bytes12434=statementBytes 12530 (op12434.map lower) ∧ bytes12434.length=48 := by core033_kernel_decide
def op12435 : List WordIR.Op := [.bxor 12518 12530]
def bytes12435 : Bytes := ("    let r000030f3: u32 = r000030e6 ^ r000030f2;\n" : String).toByteArray.data.toList
theorem checked12435 : bytes12435=statementBytes 12531 (op12435.map lower) ∧ bytes12435.length=48 := by core033_kernel_decide
def op12436 : List WordIR.Op := [.shr 12531 31]
def bytes12436 : Bytes := ("    let r000030f4: u32 = r000030f3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12436 : bytes12436=statementBytes 12532 (op12436.map lower) ∧ bytes12436.length=54 := by core033_kernel_decide
def op12437 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12437 : Bytes := ("    let r000030f5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12437 : bytes12437=statementBytes 12533 (op12437.map lower) ∧ bytes12437.length=41 := by core033_kernel_decide
def op12438 : List WordIR.Op := [.bxor 12532 12533]
def bytes12438 : Bytes := ("    let r000030f6: u32 = r000030f4 ^ r000030f5;\n" : String).toByteArray.data.toList
theorem checked12438 : bytes12438=statementBytes 12534 (op12438.map lower) ∧ bytes12438.length=48 := by core033_kernel_decide
def op12439 : List WordIR.Op := [.bnot 12534]
def bytes12439 : Bytes := ("    let r000030f7: u32 = !r000030f6;\n" : String).toByteArray.data.toList
theorem checked12439 : bytes12439=statementBytes 12535 (op12439.map lower) ∧ bytes12439.length=37 := by core033_kernel_decide
def op12440 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12440 : Bytes := ("    let r000030f8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12440 : bytes12440=statementBytes 12536 (op12440.map lower) ∧ bytes12440.length=41 := by core033_kernel_decide
def op12441 : List WordIR.Op := [.badd 12535 12536]
def bytes12441 : Bytes := ("    let r000030f9: u32 = r000030f7.wrapping_add(r000030f8);\n" : String).toByteArray.data.toList
theorem checked12441 : bytes12441=statementBytes 12537 (op12441.map lower) ∧ bytes12441.length=60 := by core033_kernel_decide
def op12442 : List WordIR.Op := [.band 12537 10311]
def bytes12442 : Bytes := ("    let r000030fa: u32 = r000030f9 & r00002847;\n" : String).toByteArray.data.toList
theorem checked12442 : bytes12442=statementBytes 12538 (op12442.map lower) ∧ bytes12442.length=48 := by core033_kernel_decide
def op12443 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12443 : Bytes := ("    let r000030fb: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12443 : bytes12443=statementBytes 12539 (op12443.map lower) ∧ bytes12443.length=41 := by core033_kernel_decide
def op12444 : List WordIR.Op := [.bxor 442 12539]
def bytes12444 : Bytes := ("    let r000030fc: u32 = r000001ba ^ r000030fb;\n" : String).toByteArray.data.toList
theorem checked12444 : bytes12444=statementBytes 12540 (op12444.map lower) ∧ bytes12444.length=48 := by core033_kernel_decide
def op12445 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12445 : Bytes := ("    let r000030fd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12445 : bytes12445=statementBytes 12541 (op12445.map lower) ∧ bytes12445.length=41 := by core033_kernel_decide
def op12446 : List WordIR.Op := [.bnot 12541]
def bytes12446 : Bytes := ("    let r000030fe: u32 = !r000030fd;\n" : String).toByteArray.data.toList
theorem checked12446 : bytes12446=statementBytes 12542 (op12446.map lower) ∧ bytes12446.length=37 := by core033_kernel_decide
def op12447 : List WordIR.Op := [.band 12540 12542]
def bytes12447 : Bytes := ("    let r000030ff: u32 = r000030fc & r000030fe;\n" : String).toByteArray.data.toList
theorem checked12447 : bytes12447=statementBytes 12543 (op12447.map lower) ∧ bytes12447.length=48 := by core033_kernel_decide
def op12448 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12448 : Bytes := ("    let r00003100: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12448 : bytes12448=statementBytes 12544 (op12448.map lower) ∧ bytes12448.length=41 := by core033_kernel_decide
def op12449 : List WordIR.Op := [.bxor 442 12544]
def bytes12449 : Bytes := ("    let r00003101: u32 = r000001ba ^ r00003100;\n" : String).toByteArray.data.toList
theorem checked12449 : bytes12449=statementBytes 12545 (op12449.map lower) ∧ bytes12449.length=48 := by core033_kernel_decide
def op12450 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12450 : Bytes := ("    let r00003102: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12450 : bytes12450=statementBytes 12546 (op12450.map lower) ∧ bytes12450.length=41 := by core033_kernel_decide
def op12451 : List WordIR.Op := [.bnot 12546]
def bytes12451 : Bytes := ("    let r00003103: u32 = !r00003102;\n" : String).toByteArray.data.toList
theorem checked12451 : bytes12451=statementBytes 12547 (op12451.map lower) ∧ bytes12451.length=37 := by core033_kernel_decide
def op12452 : List WordIR.Op := [.bxor 12545 12547]
def bytes12452 : Bytes := ("    let r00003104: u32 = r00003101 ^ r00003103;\n" : String).toByteArray.data.toList
theorem checked12452 : bytes12452=statementBytes 12548 (op12452.map lower) ∧ bytes12452.length=48 := by core033_kernel_decide
def op12453 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12453 : Bytes := ("    let r00003105: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12453 : bytes12453=statementBytes 12549 (op12453.map lower) ∧ bytes12453.length=41 := by core033_kernel_decide
def op12454 : List WordIR.Op := [.bxor 442 12549]
def bytes12454 : Bytes := ("    let r00003106: u32 = r000001ba ^ r00003105;\n" : String).toByteArray.data.toList
theorem checked12454 : bytes12454=statementBytes 12550 (op12454.map lower) ∧ bytes12454.length=48 := by core033_kernel_decide
def op12455 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12455 : Bytes := ("    let r00003107: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12455 : bytes12455=statementBytes 12551 (op12455.map lower) ∧ bytes12455.length=41 := by core033_kernel_decide
def op12456 : List WordIR.Op := [.bnot 12551]
def bytes12456 : Bytes := ("    let r00003108: u32 = !r00003107;\n" : String).toByteArray.data.toList
theorem checked12456 : bytes12456=statementBytes 12552 (op12456.map lower) ∧ bytes12456.length=37 := by core033_kernel_decide
def op12457 : List WordIR.Op := [.badd 12550 12552]
def bytes12457 : Bytes := ("    let r00003109: u32 = r00003106.wrapping_add(r00003108);\n" : String).toByteArray.data.toList
theorem checked12457 : bytes12457=statementBytes 12553 (op12457.map lower) ∧ bytes12457.length=60 := by core033_kernel_decide
def op12458 : List WordIR.Op := [.bnot 12553]
def bytes12458 : Bytes := ("    let r0000310a: u32 = !r00003109;\n" : String).toByteArray.data.toList
theorem checked12458 : bytes12458=statementBytes 12554 (op12458.map lower) ∧ bytes12458.length=37 := by core033_kernel_decide
def op12459 : List WordIR.Op := [.band 12548 12554]
def bytes12459 : Bytes := ("    let r0000310b: u32 = r00003104 & r0000310a;\n" : String).toByteArray.data.toList
theorem checked12459 : bytes12459=statementBytes 12555 (op12459.map lower) ∧ bytes12459.length=48 := by core033_kernel_decide
def op12460 : List WordIR.Op := [.bxor 12543 12555]
def bytes12460 : Bytes := ("    let r0000310c: u32 = r000030ff ^ r0000310b;\n" : String).toByteArray.data.toList
theorem checked12460 : bytes12460=statementBytes 12556 (op12460.map lower) ∧ bytes12460.length=48 := by core033_kernel_decide
def op12461 : List WordIR.Op := [.shr 12556 31]
def bytes12461 : Bytes := ("    let r0000310d: u32 = r0000310c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12461 : bytes12461=statementBytes 12557 (op12461.map lower) ∧ bytes12461.length=54 := by core033_kernel_decide
def op12462 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12462 : Bytes := ("    let r0000310e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12462 : bytes12462=statementBytes 12558 (op12462.map lower) ∧ bytes12462.length=41 := by core033_kernel_decide
def op12463 : List WordIR.Op := [.bxor 12557 12558]
def bytes12463 : Bytes := ("    let r0000310f: u32 = r0000310d ^ r0000310e;\n" : String).toByteArray.data.toList
theorem checked12463 : bytes12463=statementBytes 12559 (op12463.map lower) ∧ bytes12463.length=48 := by core033_kernel_decide
def op12464 : List WordIR.Op := [.bnot 12559]
def bytes12464 : Bytes := ("    let r00003110: u32 = !r0000310f;\n" : String).toByteArray.data.toList
theorem checked12464 : bytes12464=statementBytes 12560 (op12464.map lower) ∧ bytes12464.length=37 := by core033_kernel_decide
def op12465 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12465 : Bytes := ("    let r00003111: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12465 : bytes12465=statementBytes 12561 (op12465.map lower) ∧ bytes12465.length=41 := by core033_kernel_decide
def op12466 : List WordIR.Op := [.badd 12560 12561]
def bytes12466 : Bytes := ("    let r00003112: u32 = r00003110.wrapping_add(r00003111);\n" : String).toByteArray.data.toList
theorem checked12466 : bytes12466=statementBytes 12562 (op12466.map lower) ∧ bytes12466.length=60 := by core033_kernel_decide
def op12467 : List WordIR.Op := [.bnot 12562]
def bytes12467 : Bytes := ("    let r00003113: u32 = !r00003112;\n" : String).toByteArray.data.toList
theorem checked12467 : bytes12467=statementBytes 12563 (op12467.map lower) ∧ bytes12467.length=37 := by core033_kernel_decide
def op12468 : List WordIR.Op := [.band 12563 990]
def bytes12468 : Bytes := ("    let r00003114: u32 = r00003113 & r000003de;\n" : String).toByteArray.data.toList
theorem checked12468 : bytes12468=statementBytes 12564 (op12468.map lower) ∧ bytes12468.length=48 := by core033_kernel_decide
def op12469 : List WordIR.Op := [.bxor 12538 12564]
def bytes12469 : Bytes := ("    let r00003115: u32 = r000030fa ^ r00003114;\n" : String).toByteArray.data.toList
theorem checked12469 : bytes12469=statementBytes 12565 (op12469.map lower) ∧ bytes12469.length=48 := by core033_kernel_decide
def op12470 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12470 : Bytes := ("    let r00003116: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12470 : bytes12470=statementBytes 12566 (op12470.map lower) ∧ bytes12470.length=41 := by core033_kernel_decide
def op12471 : List WordIR.Op := [.bxor 442 12566]
def bytes12471 : Bytes := ("    let r00003117: u32 = r000001ba ^ r00003116;\n" : String).toByteArray.data.toList
theorem checked12471 : bytes12471=statementBytes 12567 (op12471.map lower) ∧ bytes12471.length=48 := by core033_kernel_decide
def op12472 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12472 : Bytes := ("    let r00003118: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12472 : bytes12472=statementBytes 12568 (op12472.map lower) ∧ bytes12472.length=41 := by core033_kernel_decide
def op12473 : List WordIR.Op := [.bnot 12568]
def bytes12473 : Bytes := ("    let r00003119: u32 = !r00003118;\n" : String).toByteArray.data.toList
theorem checked12473 : bytes12473=statementBytes 12569 (op12473.map lower) ∧ bytes12473.length=37 := by core033_kernel_decide
def op12474 : List WordIR.Op := [.band 12567 12569]
def bytes12474 : Bytes := ("    let r0000311a: u32 = r00003117 & r00003119;\n" : String).toByteArray.data.toList
theorem checked12474 : bytes12474=statementBytes 12570 (op12474.map lower) ∧ bytes12474.length=48 := by core033_kernel_decide
def op12475 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12475 : Bytes := ("    let r0000311b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12475 : bytes12475=statementBytes 12571 (op12475.map lower) ∧ bytes12475.length=41 := by core033_kernel_decide
def op12476 : List WordIR.Op := [.bxor 442 12571]
def bytes12476 : Bytes := ("    let r0000311c: u32 = r000001ba ^ r0000311b;\n" : String).toByteArray.data.toList
theorem checked12476 : bytes12476=statementBytes 12572 (op12476.map lower) ∧ bytes12476.length=48 := by core033_kernel_decide
def op12477 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12477 : Bytes := ("    let r0000311d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12477 : bytes12477=statementBytes 12573 (op12477.map lower) ∧ bytes12477.length=41 := by core033_kernel_decide
def op12478 : List WordIR.Op := [.bnot 12573]
def bytes12478 : Bytes := ("    let r0000311e: u32 = !r0000311d;\n" : String).toByteArray.data.toList
theorem checked12478 : bytes12478=statementBytes 12574 (op12478.map lower) ∧ bytes12478.length=37 := by core033_kernel_decide
def op12479 : List WordIR.Op := [.bxor 12572 12574]
def bytes12479 : Bytes := ("    let r0000311f: u32 = r0000311c ^ r0000311e;\n" : String).toByteArray.data.toList
theorem checked12479 : bytes12479=statementBytes 12575 (op12479.map lower) ∧ bytes12479.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12416,op12417,op12418,op12419,op12420,op12421,op12422,op12423,op12424,op12425,op12426,op12427,op12428,op12429,op12430,op12431,op12432,op12433,op12434,op12435,op12436,op12437,op12438,op12439,op12440,op12441,op12442,op12443,op12444,op12445,op12446,op12447,op12448,op12449,op12450,op12451,op12452,op12453,op12454,op12455,op12456,op12457,op12458,op12459,op12460,op12461,op12462,op12463,op12464,op12465,op12466,op12467,op12468,op12469,op12470,op12471,op12472,op12473,op12474,op12475,op12476,op12477,op12478,op12479]
def chunks : List Bytes := [bytes12416,bytes12417,bytes12418,bytes12419,bytes12420,bytes12421,bytes12422,bytes12423,bytes12424,bytes12425,bytes12426,bytes12427,bytes12428,bytes12429,bytes12430,bytes12431,bytes12432,bytes12433,bytes12434,bytes12435,bytes12436,bytes12437,bytes12438,bytes12439,bytes12440,bytes12441,bytes12442,bytes12443,bytes12444,bytes12445,bytes12446,bytes12447,bytes12448,bytes12449,bytes12450,bytes12451,bytes12452,bytes12453,bytes12454,bytes12455,bytes12456,bytes12457,bytes12458,bytes12459,bytes12460,bytes12461,bytes12462,bytes12463,bytes12464,bytes12465,bytes12466,bytes12467,bytes12468,bytes12469,bytes12470,bytes12471,bytes12472,bytes12473,bytes12474,bytes12475,bytes12476,bytes12477,bytes12478,bytes12479]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12512 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12416.1 (.cons _ _ _ _ _ checked12417.1 (.cons _ _ _ _ _ checked12418.1 (.cons _ _ _ _ _ checked12419.1 (.cons _ _ _ _ _ checked12420.1 (.cons _ _ _ _ _ checked12421.1 (.cons _ _ _ _ _ checked12422.1 (.cons _ _ _ _ _ checked12423.1 (.cons _ _ _ _ _ checked12424.1 (.cons _ _ _ _ _ checked12425.1 (.cons _ _ _ _ _ checked12426.1 (.cons _ _ _ _ _ checked12427.1 (.cons _ _ _ _ _ checked12428.1 (.cons _ _ _ _ _ checked12429.1 (.cons _ _ _ _ _ checked12430.1 (.cons _ _ _ _ _ checked12431.1 (.cons _ _ _ _ _ checked12432.1 (.cons _ _ _ _ _ checked12433.1 (.cons _ _ _ _ _ checked12434.1 (.cons _ _ _ _ _ checked12435.1 (.cons _ _ _ _ _ checked12436.1 (.cons _ _ _ _ _ checked12437.1 (.cons _ _ _ _ _ checked12438.1 (.cons _ _ _ _ _ checked12439.1 (.cons _ _ _ _ _ checked12440.1 (.cons _ _ _ _ _ checked12441.1 (.cons _ _ _ _ _ checked12442.1 (.cons _ _ _ _ _ checked12443.1 (.cons _ _ _ _ _ checked12444.1 (.cons _ _ _ _ _ checked12445.1 (.cons _ _ _ _ _ checked12446.1 (.cons _ _ _ _ _ checked12447.1 (.cons _ _ _ _ _ checked12448.1 (.cons _ _ _ _ _ checked12449.1 (.cons _ _ _ _ _ checked12450.1 (.cons _ _ _ _ _ checked12451.1 (.cons _ _ _ _ _ checked12452.1 (.cons _ _ _ _ _ checked12453.1 (.cons _ _ _ _ _ checked12454.1 (.cons _ _ _ _ _ checked12455.1 (.cons _ _ _ _ _ checked12456.1 (.cons _ _ _ _ _ checked12457.1 (.cons _ _ _ _ _ checked12458.1 (.cons _ _ _ _ _ checked12459.1 (.cons _ _ _ _ _ checked12460.1 (.cons _ _ _ _ _ checked12461.1 (.cons _ _ _ _ _ checked12462.1 (.cons _ _ _ _ _ checked12463.1 (.cons _ _ _ _ _ checked12464.1 (.cons _ _ _ _ _ checked12465.1 (.cons _ _ _ _ _ checked12466.1 (.cons _ _ _ _ _ checked12467.1 (.cons _ _ _ _ _ checked12468.1 (.cons _ _ _ _ _ checked12469.1 (.cons _ _ _ _ _ checked12470.1 (.cons _ _ _ _ _ checked12471.1 (.cons _ _ _ _ _ checked12472.1 (.cons _ _ _ _ _ checked12473.1 (.cons _ _ _ _ _ checked12474.1 (.cons _ _ _ _ _ checked12475.1 (.cons _ _ _ _ _ checked12476.1 (.cons _ _ _ _ _ checked12477.1 (.cons _ _ _ _ _ checked12478.1 (.cons _ _ _ _ _ checked12479.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12512 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2849 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12416.2,checked12417.2,checked12418.2,checked12419.2,checked12420.2,checked12421.2,checked12422.2,checked12423.2,checked12424.2,checked12425.2,checked12426.2,checked12427.2,checked12428.2,checked12429.2,checked12430.2,checked12431.2,checked12432.2,checked12433.2,checked12434.2,checked12435.2,checked12436.2,checked12437.2,checked12438.2,checked12439.2,checked12440.2,checked12441.2,checked12442.2,checked12443.2,checked12444.2,checked12445.2,checked12446.2,checked12447.2,checked12448.2,checked12449.2,checked12450.2,checked12451.2,checked12452.2,checked12453.2,checked12454.2,checked12455.2,checked12456.2,checked12457.2,checked12458.2,checked12459.2,checked12460.2,checked12461.2,checked12462.2,checked12463.2,checked12464.2,checked12465.2,checked12466.2,checked12467.2,checked12468.2,checked12469.2,checked12470.2,checked12471.2,checked12472.2,checked12473.2,checked12474.2,checked12475.2,checked12476.2,checked12477.2,checked12478.2,checked12479.2]
  decide
end ArtifactPairedPathRoundGroup194
