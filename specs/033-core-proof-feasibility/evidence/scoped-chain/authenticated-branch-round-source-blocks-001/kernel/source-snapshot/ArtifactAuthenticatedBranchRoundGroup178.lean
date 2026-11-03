import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup178
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11392 : List WordIR.Op := [.band 11507 11509]
def bytes11392 : Bytes := ("    let r00002cf6: u32 = r00002cf3 & r00002cf5;\n" : String).toByteArray.data.toList
theorem checked11392 : bytes11392=statementBytes 11510 (op11392.map lower) ∧ bytes11392.length=48 := by core033_kernel_decide
def op11393 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11393 : Bytes := ("    let r00002cf7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11393 : bytes11393=statementBytes 11511 (op11393.map lower) ∧ bytes11393.length=41 := by core033_kernel_decide
def op11394 : List WordIR.Op := [.bxor 693 11511]
def bytes11394 : Bytes := ("    let r00002cf8: u32 = r000002b5 ^ r00002cf7;\n" : String).toByteArray.data.toList
theorem checked11394 : bytes11394=statementBytes 11512 (op11394.map lower) ∧ bytes11394.length=48 := by core033_kernel_decide
def op11395 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11395 : Bytes := ("    let r00002cf9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11395 : bytes11395=statementBytes 11513 (op11395.map lower) ∧ bytes11395.length=41 := by core033_kernel_decide
def op11396 : List WordIR.Op := [.bnot 11513]
def bytes11396 : Bytes := ("    let r00002cfa: u32 = !r00002cf9;\n" : String).toByteArray.data.toList
theorem checked11396 : bytes11396=statementBytes 11514 (op11396.map lower) ∧ bytes11396.length=37 := by core033_kernel_decide
def op11397 : List WordIR.Op := [.bxor 11512 11514]
def bytes11397 : Bytes := ("    let r00002cfb: u32 = r00002cf8 ^ r00002cfa;\n" : String).toByteArray.data.toList
theorem checked11397 : bytes11397=statementBytes 11515 (op11397.map lower) ∧ bytes11397.length=48 := by core033_kernel_decide
def op11398 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11398 : Bytes := ("    let r00002cfc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11398 : bytes11398=statementBytes 11516 (op11398.map lower) ∧ bytes11398.length=41 := by core033_kernel_decide
def op11399 : List WordIR.Op := [.bxor 693 11516]
def bytes11399 : Bytes := ("    let r00002cfd: u32 = r000002b5 ^ r00002cfc;\n" : String).toByteArray.data.toList
theorem checked11399 : bytes11399=statementBytes 11517 (op11399.map lower) ∧ bytes11399.length=48 := by core033_kernel_decide
def op11400 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11400 : Bytes := ("    let r00002cfe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11400 : bytes11400=statementBytes 11518 (op11400.map lower) ∧ bytes11400.length=41 := by core033_kernel_decide
def op11401 : List WordIR.Op := [.bnot 11518]
def bytes11401 : Bytes := ("    let r00002cff: u32 = !r00002cfe;\n" : String).toByteArray.data.toList
theorem checked11401 : bytes11401=statementBytes 11519 (op11401.map lower) ∧ bytes11401.length=37 := by core033_kernel_decide
def op11402 : List WordIR.Op := [.badd 11517 11519]
def bytes11402 : Bytes := ("    let r00002d00: u32 = r00002cfd.wrapping_add(r00002cff);\n" : String).toByteArray.data.toList
theorem checked11402 : bytes11402=statementBytes 11520 (op11402.map lower) ∧ bytes11402.length=60 := by core033_kernel_decide
def op11403 : List WordIR.Op := [.bnot 11520]
def bytes11403 : Bytes := ("    let r00002d01: u32 = !r00002d00;\n" : String).toByteArray.data.toList
theorem checked11403 : bytes11403=statementBytes 11521 (op11403.map lower) ∧ bytes11403.length=37 := by core033_kernel_decide
def op11404 : List WordIR.Op := [.band 11515 11521]
def bytes11404 : Bytes := ("    let r00002d02: u32 = r00002cfb & r00002d01;\n" : String).toByteArray.data.toList
theorem checked11404 : bytes11404=statementBytes 11522 (op11404.map lower) ∧ bytes11404.length=48 := by core033_kernel_decide
def op11405 : List WordIR.Op := [.bxor 11510 11522]
def bytes11405 : Bytes := ("    let r00002d03: u32 = r00002cf6 ^ r00002d02;\n" : String).toByteArray.data.toList
theorem checked11405 : bytes11405=statementBytes 11523 (op11405.map lower) ∧ bytes11405.length=48 := by core033_kernel_decide
def op11406 : List WordIR.Op := [.shr 11523 31]
def bytes11406 : Bytes := ("    let r00002d04: u32 = r00002d03 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11406 : bytes11406=statementBytes 11524 (op11406.map lower) ∧ bytes11406.length=54 := by core033_kernel_decide
def op11407 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11407 : Bytes := ("    let r00002d05: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11407 : bytes11407=statementBytes 11525 (op11407.map lower) ∧ bytes11407.length=41 := by core033_kernel_decide
def op11408 : List WordIR.Op := [.bxor 11524 11525]
def bytes11408 : Bytes := ("    let r00002d06: u32 = r00002d04 ^ r00002d05;\n" : String).toByteArray.data.toList
theorem checked11408 : bytes11408=statementBytes 11526 (op11408.map lower) ∧ bytes11408.length=48 := by core033_kernel_decide
def op11409 : List WordIR.Op := [.bnot 11526]
def bytes11409 : Bytes := ("    let r00002d07: u32 = !r00002d06;\n" : String).toByteArray.data.toList
theorem checked11409 : bytes11409=statementBytes 11527 (op11409.map lower) ∧ bytes11409.length=37 := by core033_kernel_decide
def op11410 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11410 : Bytes := ("    let r00002d08: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11410 : bytes11410=statementBytes 11528 (op11410.map lower) ∧ bytes11410.length=41 := by core033_kernel_decide
def op11411 : List WordIR.Op := [.badd 11527 11528]
def bytes11411 : Bytes := ("    let r00002d09: u32 = r00002d07.wrapping_add(r00002d08);\n" : String).toByteArray.data.toList
theorem checked11411 : bytes11411=statementBytes 11529 (op11411.map lower) ∧ bytes11411.length=60 := by core033_kernel_decide
def op11412 : List WordIR.Op := [.bnot 11529]
def bytes11412 : Bytes := ("    let r00002d0a: u32 = !r00002d09;\n" : String).toByteArray.data.toList
theorem checked11412 : bytes11412=statementBytes 11530 (op11412.map lower) ∧ bytes11412.length=37 := by core033_kernel_decide
def op11413 : List WordIR.Op := [.band 11530 1310]
def bytes11413 : Bytes := ("    let r00002d0b: u32 = r00002d0a & r0000051e;\n" : String).toByteArray.data.toList
theorem checked11413 : bytes11413=statementBytes 11531 (op11413.map lower) ∧ bytes11413.length=48 := by core033_kernel_decide
def op11414 : List WordIR.Op := [.bxor 11505 11531]
def bytes11414 : Bytes := ("    let r00002d0c: u32 = r00002cf1 ^ r00002d0b;\n" : String).toByteArray.data.toList
theorem checked11414 : bytes11414=statementBytes 11532 (op11414.map lower) ∧ bytes11414.length=48 := by core033_kernel_decide
def op11415 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11415 : Bytes := ("    let r00002d0d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11415 : bytes11415=statementBytes 11533 (op11415.map lower) ∧ bytes11415.length=41 := by core033_kernel_decide
def op11416 : List WordIR.Op := [.bxor 693 11533]
def bytes11416 : Bytes := ("    let r00002d0e: u32 = r000002b5 ^ r00002d0d;\n" : String).toByteArray.data.toList
theorem checked11416 : bytes11416=statementBytes 11534 (op11416.map lower) ∧ bytes11416.length=48 := by core033_kernel_decide
def op11417 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11417 : Bytes := ("    let r00002d0f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11417 : bytes11417=statementBytes 11535 (op11417.map lower) ∧ bytes11417.length=41 := by core033_kernel_decide
def op11418 : List WordIR.Op := [.bnot 11535]
def bytes11418 : Bytes := ("    let r00002d10: u32 = !r00002d0f;\n" : String).toByteArray.data.toList
theorem checked11418 : bytes11418=statementBytes 11536 (op11418.map lower) ∧ bytes11418.length=37 := by core033_kernel_decide
def op11419 : List WordIR.Op := [.band 11534 11536]
def bytes11419 : Bytes := ("    let r00002d11: u32 = r00002d0e & r00002d10;\n" : String).toByteArray.data.toList
theorem checked11419 : bytes11419=statementBytes 11537 (op11419.map lower) ∧ bytes11419.length=48 := by core033_kernel_decide
def op11420 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11420 : Bytes := ("    let r00002d12: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11420 : bytes11420=statementBytes 11538 (op11420.map lower) ∧ bytes11420.length=41 := by core033_kernel_decide
def op11421 : List WordIR.Op := [.bxor 693 11538]
def bytes11421 : Bytes := ("    let r00002d13: u32 = r000002b5 ^ r00002d12;\n" : String).toByteArray.data.toList
theorem checked11421 : bytes11421=statementBytes 11539 (op11421.map lower) ∧ bytes11421.length=48 := by core033_kernel_decide
def op11422 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11422 : Bytes := ("    let r00002d14: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11422 : bytes11422=statementBytes 11540 (op11422.map lower) ∧ bytes11422.length=41 := by core033_kernel_decide
def op11423 : List WordIR.Op := [.bnot 11540]
def bytes11423 : Bytes := ("    let r00002d15: u32 = !r00002d14;\n" : String).toByteArray.data.toList
theorem checked11423 : bytes11423=statementBytes 11541 (op11423.map lower) ∧ bytes11423.length=37 := by core033_kernel_decide
def op11424 : List WordIR.Op := [.bxor 11539 11541]
def bytes11424 : Bytes := ("    let r00002d16: u32 = r00002d13 ^ r00002d15;\n" : String).toByteArray.data.toList
theorem checked11424 : bytes11424=statementBytes 11542 (op11424.map lower) ∧ bytes11424.length=48 := by core033_kernel_decide
def op11425 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11425 : Bytes := ("    let r00002d17: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11425 : bytes11425=statementBytes 11543 (op11425.map lower) ∧ bytes11425.length=41 := by core033_kernel_decide
def op11426 : List WordIR.Op := [.bxor 693 11543]
def bytes11426 : Bytes := ("    let r00002d18: u32 = r000002b5 ^ r00002d17;\n" : String).toByteArray.data.toList
theorem checked11426 : bytes11426=statementBytes 11544 (op11426.map lower) ∧ bytes11426.length=48 := by core033_kernel_decide
def op11427 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11427 : Bytes := ("    let r00002d19: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11427 : bytes11427=statementBytes 11545 (op11427.map lower) ∧ bytes11427.length=41 := by core033_kernel_decide
def op11428 : List WordIR.Op := [.bnot 11545]
def bytes11428 : Bytes := ("    let r00002d1a: u32 = !r00002d19;\n" : String).toByteArray.data.toList
theorem checked11428 : bytes11428=statementBytes 11546 (op11428.map lower) ∧ bytes11428.length=37 := by core033_kernel_decide
def op11429 : List WordIR.Op := [.badd 11544 11546]
def bytes11429 : Bytes := ("    let r00002d1b: u32 = r00002d18.wrapping_add(r00002d1a);\n" : String).toByteArray.data.toList
theorem checked11429 : bytes11429=statementBytes 11547 (op11429.map lower) ∧ bytes11429.length=60 := by core033_kernel_decide
def op11430 : List WordIR.Op := [.bnot 11547]
def bytes11430 : Bytes := ("    let r00002d1c: u32 = !r00002d1b;\n" : String).toByteArray.data.toList
theorem checked11430 : bytes11430=statementBytes 11548 (op11430.map lower) ∧ bytes11430.length=37 := by core033_kernel_decide
def op11431 : List WordIR.Op := [.band 11542 11548]
def bytes11431 : Bytes := ("    let r00002d1d: u32 = r00002d16 & r00002d1c;\n" : String).toByteArray.data.toList
theorem checked11431 : bytes11431=statementBytes 11549 (op11431.map lower) ∧ bytes11431.length=48 := by core033_kernel_decide
def op11432 : List WordIR.Op := [.bxor 11537 11549]
def bytes11432 : Bytes := ("    let r00002d1e: u32 = r00002d11 ^ r00002d1d;\n" : String).toByteArray.data.toList
theorem checked11432 : bytes11432=statementBytes 11550 (op11432.map lower) ∧ bytes11432.length=48 := by core033_kernel_decide
def op11433 : List WordIR.Op := [.shr 11550 31]
def bytes11433 : Bytes := ("    let r00002d1f: u32 = r00002d1e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11433 : bytes11433=statementBytes 11551 (op11433.map lower) ∧ bytes11433.length=54 := by core033_kernel_decide
def op11434 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11434 : Bytes := ("    let r00002d20: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11434 : bytes11434=statementBytes 11552 (op11434.map lower) ∧ bytes11434.length=41 := by core033_kernel_decide
def op11435 : List WordIR.Op := [.bxor 11551 11552]
def bytes11435 : Bytes := ("    let r00002d21: u32 = r00002d1f ^ r00002d20;\n" : String).toByteArray.data.toList
theorem checked11435 : bytes11435=statementBytes 11553 (op11435.map lower) ∧ bytes11435.length=48 := by core033_kernel_decide
def op11436 : List WordIR.Op := [.bnot 11553]
def bytes11436 : Bytes := ("    let r00002d22: u32 = !r00002d21;\n" : String).toByteArray.data.toList
theorem checked11436 : bytes11436=statementBytes 11554 (op11436.map lower) ∧ bytes11436.length=37 := by core033_kernel_decide
def op11437 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11437 : Bytes := ("    let r00002d23: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11437 : bytes11437=statementBytes 11555 (op11437.map lower) ∧ bytes11437.length=41 := by core033_kernel_decide
def op11438 : List WordIR.Op := [.badd 11554 11555]
def bytes11438 : Bytes := ("    let r00002d24: u32 = r00002d22.wrapping_add(r00002d23);\n" : String).toByteArray.data.toList
theorem checked11438 : bytes11438=statementBytes 11556 (op11438.map lower) ∧ bytes11438.length=60 := by core033_kernel_decide
def op11439 : List WordIR.Op := [.band 11556 11349]
def bytes11439 : Bytes := ("    let r00002d25: u32 = r00002d24 & r00002c55;\n" : String).toByteArray.data.toList
theorem checked11439 : bytes11439=statementBytes 11557 (op11439.map lower) ∧ bytes11439.length=48 := by core033_kernel_decide
def op11440 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11440 : Bytes := ("    let r00002d26: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11440 : bytes11440=statementBytes 11558 (op11440.map lower) ∧ bytes11440.length=41 := by core033_kernel_decide
def op11441 : List WordIR.Op := [.bxor 693 11558]
def bytes11441 : Bytes := ("    let r00002d27: u32 = r000002b5 ^ r00002d26;\n" : String).toByteArray.data.toList
theorem checked11441 : bytes11441=statementBytes 11559 (op11441.map lower) ∧ bytes11441.length=48 := by core033_kernel_decide
def op11442 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11442 : Bytes := ("    let r00002d28: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11442 : bytes11442=statementBytes 11560 (op11442.map lower) ∧ bytes11442.length=41 := by core033_kernel_decide
def op11443 : List WordIR.Op := [.bnot 11560]
def bytes11443 : Bytes := ("    let r00002d29: u32 = !r00002d28;\n" : String).toByteArray.data.toList
theorem checked11443 : bytes11443=statementBytes 11561 (op11443.map lower) ∧ bytes11443.length=37 := by core033_kernel_decide
def op11444 : List WordIR.Op := [.band 11559 11561]
def bytes11444 : Bytes := ("    let r00002d2a: u32 = r00002d27 & r00002d29;\n" : String).toByteArray.data.toList
theorem checked11444 : bytes11444=statementBytes 11562 (op11444.map lower) ∧ bytes11444.length=48 := by core033_kernel_decide
def op11445 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11445 : Bytes := ("    let r00002d2b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11445 : bytes11445=statementBytes 11563 (op11445.map lower) ∧ bytes11445.length=41 := by core033_kernel_decide
def op11446 : List WordIR.Op := [.bxor 693 11563]
def bytes11446 : Bytes := ("    let r00002d2c: u32 = r000002b5 ^ r00002d2b;\n" : String).toByteArray.data.toList
theorem checked11446 : bytes11446=statementBytes 11564 (op11446.map lower) ∧ bytes11446.length=48 := by core033_kernel_decide
def op11447 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11447 : Bytes := ("    let r00002d2d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11447 : bytes11447=statementBytes 11565 (op11447.map lower) ∧ bytes11447.length=41 := by core033_kernel_decide
def op11448 : List WordIR.Op := [.bnot 11565]
def bytes11448 : Bytes := ("    let r00002d2e: u32 = !r00002d2d;\n" : String).toByteArray.data.toList
theorem checked11448 : bytes11448=statementBytes 11566 (op11448.map lower) ∧ bytes11448.length=37 := by core033_kernel_decide
def op11449 : List WordIR.Op := [.bxor 11564 11566]
def bytes11449 : Bytes := ("    let r00002d2f: u32 = r00002d2c ^ r00002d2e;\n" : String).toByteArray.data.toList
theorem checked11449 : bytes11449=statementBytes 11567 (op11449.map lower) ∧ bytes11449.length=48 := by core033_kernel_decide
def op11450 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11450 : Bytes := ("    let r00002d30: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11450 : bytes11450=statementBytes 11568 (op11450.map lower) ∧ bytes11450.length=41 := by core033_kernel_decide
def op11451 : List WordIR.Op := [.bxor 693 11568]
def bytes11451 : Bytes := ("    let r00002d31: u32 = r000002b5 ^ r00002d30;\n" : String).toByteArray.data.toList
theorem checked11451 : bytes11451=statementBytes 11569 (op11451.map lower) ∧ bytes11451.length=48 := by core033_kernel_decide
def op11452 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11452 : Bytes := ("    let r00002d32: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11452 : bytes11452=statementBytes 11570 (op11452.map lower) ∧ bytes11452.length=41 := by core033_kernel_decide
def op11453 : List WordIR.Op := [.bnot 11570]
def bytes11453 : Bytes := ("    let r00002d33: u32 = !r00002d32;\n" : String).toByteArray.data.toList
theorem checked11453 : bytes11453=statementBytes 11571 (op11453.map lower) ∧ bytes11453.length=37 := by core033_kernel_decide
def op11454 : List WordIR.Op := [.badd 11569 11571]
def bytes11454 : Bytes := ("    let r00002d34: u32 = r00002d31.wrapping_add(r00002d33);\n" : String).toByteArray.data.toList
theorem checked11454 : bytes11454=statementBytes 11572 (op11454.map lower) ∧ bytes11454.length=60 := by core033_kernel_decide
def op11455 : List WordIR.Op := [.bnot 11572]
def bytes11455 : Bytes := ("    let r00002d35: u32 = !r00002d34;\n" : String).toByteArray.data.toList
theorem checked11455 : bytes11455=statementBytes 11573 (op11455.map lower) ∧ bytes11455.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11392,op11393,op11394,op11395,op11396,op11397,op11398,op11399,op11400,op11401,op11402,op11403,op11404,op11405,op11406,op11407,op11408,op11409,op11410,op11411,op11412,op11413,op11414,op11415,op11416,op11417,op11418,op11419,op11420,op11421,op11422,op11423,op11424,op11425,op11426,op11427,op11428,op11429,op11430,op11431,op11432,op11433,op11434,op11435,op11436,op11437,op11438,op11439,op11440,op11441,op11442,op11443,op11444,op11445,op11446,op11447,op11448,op11449,op11450,op11451,op11452,op11453,op11454,op11455]
def chunks : List Bytes := [bytes11392,bytes11393,bytes11394,bytes11395,bytes11396,bytes11397,bytes11398,bytes11399,bytes11400,bytes11401,bytes11402,bytes11403,bytes11404,bytes11405,bytes11406,bytes11407,bytes11408,bytes11409,bytes11410,bytes11411,bytes11412,bytes11413,bytes11414,bytes11415,bytes11416,bytes11417,bytes11418,bytes11419,bytes11420,bytes11421,bytes11422,bytes11423,bytes11424,bytes11425,bytes11426,bytes11427,bytes11428,bytes11429,bytes11430,bytes11431,bytes11432,bytes11433,bytes11434,bytes11435,bytes11436,bytes11437,bytes11438,bytes11439,bytes11440,bytes11441,bytes11442,bytes11443,bytes11444,bytes11445,bytes11446,bytes11447,bytes11448,bytes11449,bytes11450,bytes11451,bytes11452,bytes11453,bytes11454,bytes11455]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11510 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11392.1 (.cons _ _ _ _ _ checked11393.1 (.cons _ _ _ _ _ checked11394.1 (.cons _ _ _ _ _ checked11395.1 (.cons _ _ _ _ _ checked11396.1 (.cons _ _ _ _ _ checked11397.1 (.cons _ _ _ _ _ checked11398.1 (.cons _ _ _ _ _ checked11399.1 (.cons _ _ _ _ _ checked11400.1 (.cons _ _ _ _ _ checked11401.1 (.cons _ _ _ _ _ checked11402.1 (.cons _ _ _ _ _ checked11403.1 (.cons _ _ _ _ _ checked11404.1 (.cons _ _ _ _ _ checked11405.1 (.cons _ _ _ _ _ checked11406.1 (.cons _ _ _ _ _ checked11407.1 (.cons _ _ _ _ _ checked11408.1 (.cons _ _ _ _ _ checked11409.1 (.cons _ _ _ _ _ checked11410.1 (.cons _ _ _ _ _ checked11411.1 (.cons _ _ _ _ _ checked11412.1 (.cons _ _ _ _ _ checked11413.1 (.cons _ _ _ _ _ checked11414.1 (.cons _ _ _ _ _ checked11415.1 (.cons _ _ _ _ _ checked11416.1 (.cons _ _ _ _ _ checked11417.1 (.cons _ _ _ _ _ checked11418.1 (.cons _ _ _ _ _ checked11419.1 (.cons _ _ _ _ _ checked11420.1 (.cons _ _ _ _ _ checked11421.1 (.cons _ _ _ _ _ checked11422.1 (.cons _ _ _ _ _ checked11423.1 (.cons _ _ _ _ _ checked11424.1 (.cons _ _ _ _ _ checked11425.1 (.cons _ _ _ _ _ checked11426.1 (.cons _ _ _ _ _ checked11427.1 (.cons _ _ _ _ _ checked11428.1 (.cons _ _ _ _ _ checked11429.1 (.cons _ _ _ _ _ checked11430.1 (.cons _ _ _ _ _ checked11431.1 (.cons _ _ _ _ _ checked11432.1 (.cons _ _ _ _ _ checked11433.1 (.cons _ _ _ _ _ checked11434.1 (.cons _ _ _ _ _ checked11435.1 (.cons _ _ _ _ _ checked11436.1 (.cons _ _ _ _ _ checked11437.1 (.cons _ _ _ _ _ checked11438.1 (.cons _ _ _ _ _ checked11439.1 (.cons _ _ _ _ _ checked11440.1 (.cons _ _ _ _ _ checked11441.1 (.cons _ _ _ _ _ checked11442.1 (.cons _ _ _ _ _ checked11443.1 (.cons _ _ _ _ _ checked11444.1 (.cons _ _ _ _ _ checked11445.1 (.cons _ _ _ _ _ checked11446.1 (.cons _ _ _ _ _ checked11447.1 (.cons _ _ _ _ _ checked11448.1 (.cons _ _ _ _ _ checked11449.1 (.cons _ _ _ _ _ checked11450.1 (.cons _ _ _ _ _ checked11451.1 (.cons _ _ _ _ _ checked11452.1 (.cons _ _ _ _ _ checked11453.1 (.cons _ _ _ _ _ checked11454.1 (.cons _ _ _ _ _ checked11455.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11510 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11392.2,checked11393.2,checked11394.2,checked11395.2,checked11396.2,checked11397.2,checked11398.2,checked11399.2,checked11400.2,checked11401.2,checked11402.2,checked11403.2,checked11404.2,checked11405.2,checked11406.2,checked11407.2,checked11408.2,checked11409.2,checked11410.2,checked11411.2,checked11412.2,checked11413.2,checked11414.2,checked11415.2,checked11416.2,checked11417.2,checked11418.2,checked11419.2,checked11420.2,checked11421.2,checked11422.2,checked11423.2,checked11424.2,checked11425.2,checked11426.2,checked11427.2,checked11428.2,checked11429.2,checked11430.2,checked11431.2,checked11432.2,checked11433.2,checked11434.2,checked11435.2,checked11436.2,checked11437.2,checked11438.2,checked11439.2,checked11440.2,checked11441.2,checked11442.2,checked11443.2,checked11444.2,checked11445.2,checked11446.2,checked11447.2,checked11448.2,checked11449.2,checked11450.2,checked11451.2,checked11452.2,checked11453.2,checked11454.2,checked11455.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup178
