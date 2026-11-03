import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup194
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12416 : List WordIR.Op := [.bnot 12458]
def bytes12416 : Bytes := ("    let r000030ab: u32 = !r000030aa;\n" : String).toByteArray.data.toList
theorem checked12416 : bytes12416=statementBytes 12459 (op12416.map lower) ∧ bytes12416.length=37 := by core033_kernel_decide
def op12417 : List WordIR.Op := [.band 12459 9288]
def bytes12417 : Bytes := ("    let r000030ac: u32 = r000030ab & r00002448;\n" : String).toByteArray.data.toList
theorem checked12417 : bytes12417=statementBytes 12460 (op12417.map lower) ∧ bytes12417.length=48 := by core033_kernel_decide
def op12418 : List WordIR.Op := [.bxor 12434 12460]
def bytes12418 : Bytes := ("    let r000030ad: u32 = r00003092 ^ r000030ac;\n" : String).toByteArray.data.toList
theorem checked12418 : bytes12418=statementBytes 12461 (op12418.map lower) ∧ bytes12418.length=48 := by core033_kernel_decide
def op12419 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12419 : Bytes := ("    let r000030ae: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12419 : bytes12419=statementBytes 12462 (op12419.map lower) ∧ bytes12419.length=41 := by core033_kernel_decide
def op12420 : List WordIR.Op := [.bxor 0 12462]
def bytes12420 : Bytes := ("    let r000030af: u32 = r00000000 ^ r000030ae;\n" : String).toByteArray.data.toList
theorem checked12420 : bytes12420=statementBytes 12463 (op12420.map lower) ∧ bytes12420.length=48 := by core033_kernel_decide
def op12421 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12421 : Bytes := ("    let r000030b0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12421 : bytes12421=statementBytes 12464 (op12421.map lower) ∧ bytes12421.length=41 := by core033_kernel_decide
def op12422 : List WordIR.Op := [.bnot 12464]
def bytes12422 : Bytes := ("    let r000030b1: u32 = !r000030b0;\n" : String).toByteArray.data.toList
theorem checked12422 : bytes12422=statementBytes 12465 (op12422.map lower) ∧ bytes12422.length=37 := by core033_kernel_decide
def op12423 : List WordIR.Op := [.band 12463 12465]
def bytes12423 : Bytes := ("    let r000030b2: u32 = r000030af & r000030b1;\n" : String).toByteArray.data.toList
theorem checked12423 : bytes12423=statementBytes 12466 (op12423.map lower) ∧ bytes12423.length=48 := by core033_kernel_decide
def op12424 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12424 : Bytes := ("    let r000030b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12424 : bytes12424=statementBytes 12467 (op12424.map lower) ∧ bytes12424.length=41 := by core033_kernel_decide
def op12425 : List WordIR.Op := [.bxor 0 12467]
def bytes12425 : Bytes := ("    let r000030b4: u32 = r00000000 ^ r000030b3;\n" : String).toByteArray.data.toList
theorem checked12425 : bytes12425=statementBytes 12468 (op12425.map lower) ∧ bytes12425.length=48 := by core033_kernel_decide
def op12426 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12426 : Bytes := ("    let r000030b5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12426 : bytes12426=statementBytes 12469 (op12426.map lower) ∧ bytes12426.length=41 := by core033_kernel_decide
def op12427 : List WordIR.Op := [.bnot 12469]
def bytes12427 : Bytes := ("    let r000030b6: u32 = !r000030b5;\n" : String).toByteArray.data.toList
theorem checked12427 : bytes12427=statementBytes 12470 (op12427.map lower) ∧ bytes12427.length=37 := by core033_kernel_decide
def op12428 : List WordIR.Op := [.bxor 12468 12470]
def bytes12428 : Bytes := ("    let r000030b7: u32 = r000030b4 ^ r000030b6;\n" : String).toByteArray.data.toList
theorem checked12428 : bytes12428=statementBytes 12471 (op12428.map lower) ∧ bytes12428.length=48 := by core033_kernel_decide
def op12429 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12429 : Bytes := ("    let r000030b8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12429 : bytes12429=statementBytes 12472 (op12429.map lower) ∧ bytes12429.length=41 := by core033_kernel_decide
def op12430 : List WordIR.Op := [.bxor 0 12472]
def bytes12430 : Bytes := ("    let r000030b9: u32 = r00000000 ^ r000030b8;\n" : String).toByteArray.data.toList
theorem checked12430 : bytes12430=statementBytes 12473 (op12430.map lower) ∧ bytes12430.length=48 := by core033_kernel_decide
def op12431 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12431 : Bytes := ("    let r000030ba: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12431 : bytes12431=statementBytes 12474 (op12431.map lower) ∧ bytes12431.length=41 := by core033_kernel_decide
def op12432 : List WordIR.Op := [.bnot 12474]
def bytes12432 : Bytes := ("    let r000030bb: u32 = !r000030ba;\n" : String).toByteArray.data.toList
theorem checked12432 : bytes12432=statementBytes 12475 (op12432.map lower) ∧ bytes12432.length=37 := by core033_kernel_decide
def op12433 : List WordIR.Op := [.badd 12473 12475]
def bytes12433 : Bytes := ("    let r000030bc: u32 = r000030b9.wrapping_add(r000030bb);\n" : String).toByteArray.data.toList
theorem checked12433 : bytes12433=statementBytes 12476 (op12433.map lower) ∧ bytes12433.length=60 := by core033_kernel_decide
def op12434 : List WordIR.Op := [.bnot 12476]
def bytes12434 : Bytes := ("    let r000030bd: u32 = !r000030bc;\n" : String).toByteArray.data.toList
theorem checked12434 : bytes12434=statementBytes 12477 (op12434.map lower) ∧ bytes12434.length=37 := by core033_kernel_decide
def op12435 : List WordIR.Op := [.band 12471 12477]
def bytes12435 : Bytes := ("    let r000030be: u32 = r000030b7 & r000030bd;\n" : String).toByteArray.data.toList
theorem checked12435 : bytes12435=statementBytes 12478 (op12435.map lower) ∧ bytes12435.length=48 := by core033_kernel_decide
def op12436 : List WordIR.Op := [.bxor 12466 12478]
def bytes12436 : Bytes := ("    let r000030bf: u32 = r000030b2 ^ r000030be;\n" : String).toByteArray.data.toList
theorem checked12436 : bytes12436=statementBytes 12479 (op12436.map lower) ∧ bytes12436.length=48 := by core033_kernel_decide
def op12437 : List WordIR.Op := [.shr 12479 31]
def bytes12437 : Bytes := ("    let r000030c0: u32 = r000030bf >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12437 : bytes12437=statementBytes 12480 (op12437.map lower) ∧ bytes12437.length=54 := by core033_kernel_decide
def op12438 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12438 : Bytes := ("    let r000030c1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12438 : bytes12438=statementBytes 12481 (op12438.map lower) ∧ bytes12438.length=41 := by core033_kernel_decide
def op12439 : List WordIR.Op := [.bxor 12480 12481]
def bytes12439 : Bytes := ("    let r000030c2: u32 = r000030c0 ^ r000030c1;\n" : String).toByteArray.data.toList
theorem checked12439 : bytes12439=statementBytes 12482 (op12439.map lower) ∧ bytes12439.length=48 := by core033_kernel_decide
def op12440 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes12440 : Bytes := ("    let r000030c3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked12440 : bytes12440=statementBytes 12483 (op12440.map lower) ∧ bytes12440.length=41 := by core033_kernel_decide
def op12441 : List WordIR.Op := [.bxor 0 12483]
def bytes12441 : Bytes := ("    let r000030c4: u32 = r00000000 ^ r000030c3;\n" : String).toByteArray.data.toList
theorem checked12441 : bytes12441=statementBytes 12484 (op12441.map lower) ∧ bytes12441.length=48 := by core033_kernel_decide
def op12442 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12442 : Bytes := ("    let r000030c5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12442 : bytes12442=statementBytes 12485 (op12442.map lower) ∧ bytes12442.length=41 := by core033_kernel_decide
def op12443 : List WordIR.Op := [.bnot 12485]
def bytes12443 : Bytes := ("    let r000030c6: u32 = !r000030c5;\n" : String).toByteArray.data.toList
theorem checked12443 : bytes12443=statementBytes 12486 (op12443.map lower) ∧ bytes12443.length=37 := by core033_kernel_decide
def op12444 : List WordIR.Op := [.band 12484 12486]
def bytes12444 : Bytes := ("    let r000030c7: u32 = r000030c4 & r000030c6;\n" : String).toByteArray.data.toList
theorem checked12444 : bytes12444=statementBytes 12487 (op12444.map lower) ∧ bytes12444.length=48 := by core033_kernel_decide
def op12445 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes12445 : Bytes := ("    let r000030c8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked12445 : bytes12445=statementBytes 12488 (op12445.map lower) ∧ bytes12445.length=41 := by core033_kernel_decide
def op12446 : List WordIR.Op := [.bxor 0 12488]
def bytes12446 : Bytes := ("    let r000030c9: u32 = r00000000 ^ r000030c8;\n" : String).toByteArray.data.toList
theorem checked12446 : bytes12446=statementBytes 12489 (op12446.map lower) ∧ bytes12446.length=48 := by core033_kernel_decide
def op12447 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12447 : Bytes := ("    let r000030ca: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12447 : bytes12447=statementBytes 12490 (op12447.map lower) ∧ bytes12447.length=41 := by core033_kernel_decide
def op12448 : List WordIR.Op := [.bnot 12490]
def bytes12448 : Bytes := ("    let r000030cb: u32 = !r000030ca;\n" : String).toByteArray.data.toList
theorem checked12448 : bytes12448=statementBytes 12491 (op12448.map lower) ∧ bytes12448.length=37 := by core033_kernel_decide
def op12449 : List WordIR.Op := [.bxor 12489 12491]
def bytes12449 : Bytes := ("    let r000030cc: u32 = r000030c9 ^ r000030cb;\n" : String).toByteArray.data.toList
theorem checked12449 : bytes12449=statementBytes 12492 (op12449.map lower) ∧ bytes12449.length=48 := by core033_kernel_decide
def op12450 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes12450 : Bytes := ("    let r000030cd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked12450 : bytes12450=statementBytes 12493 (op12450.map lower) ∧ bytes12450.length=41 := by core033_kernel_decide
def op12451 : List WordIR.Op := [.bxor 0 12493]
def bytes12451 : Bytes := ("    let r000030ce: u32 = r00000000 ^ r000030cd;\n" : String).toByteArray.data.toList
theorem checked12451 : bytes12451=statementBytes 12494 (op12451.map lower) ∧ bytes12451.length=48 := by core033_kernel_decide
def op12452 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12452 : Bytes := ("    let r000030cf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12452 : bytes12452=statementBytes 12495 (op12452.map lower) ∧ bytes12452.length=41 := by core033_kernel_decide
def op12453 : List WordIR.Op := [.bnot 12495]
def bytes12453 : Bytes := ("    let r000030d0: u32 = !r000030cf;\n" : String).toByteArray.data.toList
theorem checked12453 : bytes12453=statementBytes 12496 (op12453.map lower) ∧ bytes12453.length=37 := by core033_kernel_decide
def op12454 : List WordIR.Op := [.badd 12494 12496]
def bytes12454 : Bytes := ("    let r000030d1: u32 = r000030ce.wrapping_add(r000030d0);\n" : String).toByteArray.data.toList
theorem checked12454 : bytes12454=statementBytes 12497 (op12454.map lower) ∧ bytes12454.length=60 := by core033_kernel_decide
def op12455 : List WordIR.Op := [.bnot 12497]
def bytes12455 : Bytes := ("    let r000030d2: u32 = !r000030d1;\n" : String).toByteArray.data.toList
theorem checked12455 : bytes12455=statementBytes 12498 (op12455.map lower) ∧ bytes12455.length=37 := by core033_kernel_decide
def op12456 : List WordIR.Op := [.band 12492 12498]
def bytes12456 : Bytes := ("    let r000030d3: u32 = r000030cc & r000030d2;\n" : String).toByteArray.data.toList
theorem checked12456 : bytes12456=statementBytes 12499 (op12456.map lower) ∧ bytes12456.length=48 := by core033_kernel_decide
def op12457 : List WordIR.Op := [.bxor 12487 12499]
def bytes12457 : Bytes := ("    let r000030d4: u32 = r000030c7 ^ r000030d3;\n" : String).toByteArray.data.toList
theorem checked12457 : bytes12457=statementBytes 12500 (op12457.map lower) ∧ bytes12457.length=48 := by core033_kernel_decide
def op12458 : List WordIR.Op := [.shr 12500 31]
def bytes12458 : Bytes := ("    let r000030d5: u32 = r000030d4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12458 : bytes12458=statementBytes 12501 (op12458.map lower) ∧ bytes12458.length=54 := by core033_kernel_decide
def op12459 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12459 : Bytes := ("    let r000030d6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12459 : bytes12459=statementBytes 12502 (op12459.map lower) ∧ bytes12459.length=41 := by core033_kernel_decide
def op12460 : List WordIR.Op := [.bxor 12501 12502]
def bytes12460 : Bytes := ("    let r000030d7: u32 = r000030d5 ^ r000030d6;\n" : String).toByteArray.data.toList
theorem checked12460 : bytes12460=statementBytes 12503 (op12460.map lower) ∧ bytes12460.length=48 := by core033_kernel_decide
def op12461 : List WordIR.Op := [.bxor 12482 12503]
def bytes12461 : Bytes := ("    let r000030d8: u32 = r000030c2 ^ r000030d7;\n" : String).toByteArray.data.toList
theorem checked12461 : bytes12461=statementBytes 12504 (op12461.map lower) ∧ bytes12461.length=48 := by core033_kernel_decide
def op12462 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12462 : Bytes := ("    let r000030d9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12462 : bytes12462=statementBytes 12505 (op12462.map lower) ∧ bytes12462.length=41 := by core033_kernel_decide
def op12463 : List WordIR.Op := [.bxor 0 12505]
def bytes12463 : Bytes := ("    let r000030da: u32 = r00000000 ^ r000030d9;\n" : String).toByteArray.data.toList
theorem checked12463 : bytes12463=statementBytes 12506 (op12463.map lower) ∧ bytes12463.length=48 := by core033_kernel_decide
def op12464 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12464 : Bytes := ("    let r000030db: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12464 : bytes12464=statementBytes 12507 (op12464.map lower) ∧ bytes12464.length=41 := by core033_kernel_decide
def op12465 : List WordIR.Op := [.bnot 12507]
def bytes12465 : Bytes := ("    let r000030dc: u32 = !r000030db;\n" : String).toByteArray.data.toList
theorem checked12465 : bytes12465=statementBytes 12508 (op12465.map lower) ∧ bytes12465.length=37 := by core033_kernel_decide
def op12466 : List WordIR.Op := [.band 12506 12508]
def bytes12466 : Bytes := ("    let r000030dd: u32 = r000030da & r000030dc;\n" : String).toByteArray.data.toList
theorem checked12466 : bytes12466=statementBytes 12509 (op12466.map lower) ∧ bytes12466.length=48 := by core033_kernel_decide
def op12467 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12467 : Bytes := ("    let r000030de: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12467 : bytes12467=statementBytes 12510 (op12467.map lower) ∧ bytes12467.length=41 := by core033_kernel_decide
def op12468 : List WordIR.Op := [.bxor 0 12510]
def bytes12468 : Bytes := ("    let r000030df: u32 = r00000000 ^ r000030de;\n" : String).toByteArray.data.toList
theorem checked12468 : bytes12468=statementBytes 12511 (op12468.map lower) ∧ bytes12468.length=48 := by core033_kernel_decide
def op12469 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12469 : Bytes := ("    let r000030e0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12469 : bytes12469=statementBytes 12512 (op12469.map lower) ∧ bytes12469.length=41 := by core033_kernel_decide
def op12470 : List WordIR.Op := [.bnot 12512]
def bytes12470 : Bytes := ("    let r000030e1: u32 = !r000030e0;\n" : String).toByteArray.data.toList
theorem checked12470 : bytes12470=statementBytes 12513 (op12470.map lower) ∧ bytes12470.length=37 := by core033_kernel_decide
def op12471 : List WordIR.Op := [.bxor 12511 12513]
def bytes12471 : Bytes := ("    let r000030e2: u32 = r000030df ^ r000030e1;\n" : String).toByteArray.data.toList
theorem checked12471 : bytes12471=statementBytes 12514 (op12471.map lower) ∧ bytes12471.length=48 := by core033_kernel_decide
def op12472 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12472 : Bytes := ("    let r000030e3: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12472 : bytes12472=statementBytes 12515 (op12472.map lower) ∧ bytes12472.length=41 := by core033_kernel_decide
def op12473 : List WordIR.Op := [.bxor 0 12515]
def bytes12473 : Bytes := ("    let r000030e4: u32 = r00000000 ^ r000030e3;\n" : String).toByteArray.data.toList
theorem checked12473 : bytes12473=statementBytes 12516 (op12473.map lower) ∧ bytes12473.length=48 := by core033_kernel_decide
def op12474 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12474 : Bytes := ("    let r000030e5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12474 : bytes12474=statementBytes 12517 (op12474.map lower) ∧ bytes12474.length=41 := by core033_kernel_decide
def op12475 : List WordIR.Op := [.bnot 12517]
def bytes12475 : Bytes := ("    let r000030e6: u32 = !r000030e5;\n" : String).toByteArray.data.toList
theorem checked12475 : bytes12475=statementBytes 12518 (op12475.map lower) ∧ bytes12475.length=37 := by core033_kernel_decide
def op12476 : List WordIR.Op := [.badd 12516 12518]
def bytes12476 : Bytes := ("    let r000030e7: u32 = r000030e4.wrapping_add(r000030e6);\n" : String).toByteArray.data.toList
theorem checked12476 : bytes12476=statementBytes 12519 (op12476.map lower) ∧ bytes12476.length=60 := by core033_kernel_decide
def op12477 : List WordIR.Op := [.bnot 12519]
def bytes12477 : Bytes := ("    let r000030e8: u32 = !r000030e7;\n" : String).toByteArray.data.toList
theorem checked12477 : bytes12477=statementBytes 12520 (op12477.map lower) ∧ bytes12477.length=37 := by core033_kernel_decide
def op12478 : List WordIR.Op := [.band 12514 12520]
def bytes12478 : Bytes := ("    let r000030e9: u32 = r000030e2 & r000030e8;\n" : String).toByteArray.data.toList
theorem checked12478 : bytes12478=statementBytes 12521 (op12478.map lower) ∧ bytes12478.length=48 := by core033_kernel_decide
def op12479 : List WordIR.Op := [.bxor 12509 12521]
def bytes12479 : Bytes := ("    let r000030ea: u32 = r000030dd ^ r000030e9;\n" : String).toByteArray.data.toList
theorem checked12479 : bytes12479=statementBytes 12522 (op12479.map lower) ∧ bytes12479.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12416,op12417,op12418,op12419,op12420,op12421,op12422,op12423,op12424,op12425,op12426,op12427,op12428,op12429,op12430,op12431,op12432,op12433,op12434,op12435,op12436,op12437,op12438,op12439,op12440,op12441,op12442,op12443,op12444,op12445,op12446,op12447,op12448,op12449,op12450,op12451,op12452,op12453,op12454,op12455,op12456,op12457,op12458,op12459,op12460,op12461,op12462,op12463,op12464,op12465,op12466,op12467,op12468,op12469,op12470,op12471,op12472,op12473,op12474,op12475,op12476,op12477,op12478,op12479]
def chunks : List Bytes := [bytes12416,bytes12417,bytes12418,bytes12419,bytes12420,bytes12421,bytes12422,bytes12423,bytes12424,bytes12425,bytes12426,bytes12427,bytes12428,bytes12429,bytes12430,bytes12431,bytes12432,bytes12433,bytes12434,bytes12435,bytes12436,bytes12437,bytes12438,bytes12439,bytes12440,bytes12441,bytes12442,bytes12443,bytes12444,bytes12445,bytes12446,bytes12447,bytes12448,bytes12449,bytes12450,bytes12451,bytes12452,bytes12453,bytes12454,bytes12455,bytes12456,bytes12457,bytes12458,bytes12459,bytes12460,bytes12461,bytes12462,bytes12463,bytes12464,bytes12465,bytes12466,bytes12467,bytes12468,bytes12469,bytes12470,bytes12471,bytes12472,bytes12473,bytes12474,bytes12475,bytes12476,bytes12477,bytes12478,bytes12479]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12459 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12416.1 (.cons _ _ _ _ _ checked12417.1 (.cons _ _ _ _ _ checked12418.1 (.cons _ _ _ _ _ checked12419.1 (.cons _ _ _ _ _ checked12420.1 (.cons _ _ _ _ _ checked12421.1 (.cons _ _ _ _ _ checked12422.1 (.cons _ _ _ _ _ checked12423.1 (.cons _ _ _ _ _ checked12424.1 (.cons _ _ _ _ _ checked12425.1 (.cons _ _ _ _ _ checked12426.1 (.cons _ _ _ _ _ checked12427.1 (.cons _ _ _ _ _ checked12428.1 (.cons _ _ _ _ _ checked12429.1 (.cons _ _ _ _ _ checked12430.1 (.cons _ _ _ _ _ checked12431.1 (.cons _ _ _ _ _ checked12432.1 (.cons _ _ _ _ _ checked12433.1 (.cons _ _ _ _ _ checked12434.1 (.cons _ _ _ _ _ checked12435.1 (.cons _ _ _ _ _ checked12436.1 (.cons _ _ _ _ _ checked12437.1 (.cons _ _ _ _ _ checked12438.1 (.cons _ _ _ _ _ checked12439.1 (.cons _ _ _ _ _ checked12440.1 (.cons _ _ _ _ _ checked12441.1 (.cons _ _ _ _ _ checked12442.1 (.cons _ _ _ _ _ checked12443.1 (.cons _ _ _ _ _ checked12444.1 (.cons _ _ _ _ _ checked12445.1 (.cons _ _ _ _ _ checked12446.1 (.cons _ _ _ _ _ checked12447.1 (.cons _ _ _ _ _ checked12448.1 (.cons _ _ _ _ _ checked12449.1 (.cons _ _ _ _ _ checked12450.1 (.cons _ _ _ _ _ checked12451.1 (.cons _ _ _ _ _ checked12452.1 (.cons _ _ _ _ _ checked12453.1 (.cons _ _ _ _ _ checked12454.1 (.cons _ _ _ _ _ checked12455.1 (.cons _ _ _ _ _ checked12456.1 (.cons _ _ _ _ _ checked12457.1 (.cons _ _ _ _ _ checked12458.1 (.cons _ _ _ _ _ checked12459.1 (.cons _ _ _ _ _ checked12460.1 (.cons _ _ _ _ _ checked12461.1 (.cons _ _ _ _ _ checked12462.1 (.cons _ _ _ _ _ checked12463.1 (.cons _ _ _ _ _ checked12464.1 (.cons _ _ _ _ _ checked12465.1 (.cons _ _ _ _ _ checked12466.1 (.cons _ _ _ _ _ checked12467.1 (.cons _ _ _ _ _ checked12468.1 (.cons _ _ _ _ _ checked12469.1 (.cons _ _ _ _ _ checked12470.1 (.cons _ _ _ _ _ checked12471.1 (.cons _ _ _ _ _ checked12472.1 (.cons _ _ _ _ _ checked12473.1 (.cons _ _ _ _ _ checked12474.1 (.cons _ _ _ _ _ checked12475.1 (.cons _ _ _ _ _ checked12476.1 (.cons _ _ _ _ _ checked12477.1 (.cons _ _ _ _ _ checked12478.1 (.cons _ _ _ _ _ checked12479.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12459 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2837 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12416.2,checked12417.2,checked12418.2,checked12419.2,checked12420.2,checked12421.2,checked12422.2,checked12423.2,checked12424.2,checked12425.2,checked12426.2,checked12427.2,checked12428.2,checked12429.2,checked12430.2,checked12431.2,checked12432.2,checked12433.2,checked12434.2,checked12435.2,checked12436.2,checked12437.2,checked12438.2,checked12439.2,checked12440.2,checked12441.2,checked12442.2,checked12443.2,checked12444.2,checked12445.2,checked12446.2,checked12447.2,checked12448.2,checked12449.2,checked12450.2,checked12451.2,checked12452.2,checked12453.2,checked12454.2,checked12455.2,checked12456.2,checked12457.2,checked12458.2,checked12459.2,checked12460.2,checked12461.2,checked12462.2,checked12463.2,checked12464.2,checked12465.2,checked12466.2,checked12467.2,checked12468.2,checked12469.2,checked12470.2,checked12471.2,checked12472.2,checked12473.2,checked12474.2,checked12475.2,checked12476.2,checked12477.2,checked12478.2,checked12479.2]
  decide
end ArtifactPathRoundDispatchGroup194
