import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup100
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6400 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6400 : Bytes := ("    let r00001960: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6400 : bytes6400=statementBytes 6496 (op6400.map lower) ∧ bytes6400.length=41 := by core033_kernel_decide
def op6401 : List WordIR.Op := [.bnot 6496]
def bytes6401 : Bytes := ("    let r00001961: u32 = !r00001960;\n" : String).toByteArray.data.toList
theorem checked6401 : bytes6401=statementBytes 6497 (op6401.map lower) ∧ bytes6401.length=37 := by core033_kernel_decide
def op6402 : List WordIR.Op := [.band 6495 6497]
def bytes6402 : Bytes := ("    let r00001962: u32 = r0000195f & r00001961;\n" : String).toByteArray.data.toList
theorem checked6402 : bytes6402=statementBytes 6498 (op6402.map lower) ∧ bytes6402.length=48 := by core033_kernel_decide
def op6403 : List WordIR.Op := [.shr 3483 8]
def bytes6403 : Bytes := ("    let r00001963: u32 = r00000d9b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6403 : bytes6403=statementBytes 6499 (op6403.map lower) ∧ bytes6403.length=54 := by core033_kernel_decide
def op6404 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6404 : Bytes := ("    let r00001964: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6404 : bytes6404=statementBytes 6500 (op6404.map lower) ∧ bytes6404.length=41 := by core033_kernel_decide
def op6405 : List WordIR.Op := [.bnot 6500]
def bytes6405 : Bytes := ("    let r00001965: u32 = !r00001964;\n" : String).toByteArray.data.toList
theorem checked6405 : bytes6405=statementBytes 6501 (op6405.map lower) ∧ bytes6405.length=37 := by core033_kernel_decide
def op6406 : List WordIR.Op := [.bxor 6499 6501]
def bytes6406 : Bytes := ("    let r00001966: u32 = r00001963 ^ r00001965;\n" : String).toByteArray.data.toList
theorem checked6406 : bytes6406=statementBytes 6502 (op6406.map lower) ∧ bytes6406.length=48 := by core033_kernel_decide
def op6407 : List WordIR.Op := [.shr 3483 8]
def bytes6407 : Bytes := ("    let r00001967: u32 = r00000d9b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6407 : bytes6407=statementBytes 6503 (op6407.map lower) ∧ bytes6407.length=54 := by core033_kernel_decide
def op6408 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6408 : Bytes := ("    let r00001968: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6408 : bytes6408=statementBytes 6504 (op6408.map lower) ∧ bytes6408.length=41 := by core033_kernel_decide
def op6409 : List WordIR.Op := [.bnot 6504]
def bytes6409 : Bytes := ("    let r00001969: u32 = !r00001968;\n" : String).toByteArray.data.toList
theorem checked6409 : bytes6409=statementBytes 6505 (op6409.map lower) ∧ bytes6409.length=37 := by core033_kernel_decide
def op6410 : List WordIR.Op := [.badd 6503 6505]
def bytes6410 : Bytes := ("    let r0000196a: u32 = r00001967.wrapping_add(r00001969);\n" : String).toByteArray.data.toList
theorem checked6410 : bytes6410=statementBytes 6506 (op6410.map lower) ∧ bytes6410.length=60 := by core033_kernel_decide
def op6411 : List WordIR.Op := [.bnot 6506]
def bytes6411 : Bytes := ("    let r0000196b: u32 = !r0000196a;\n" : String).toByteArray.data.toList
theorem checked6411 : bytes6411=statementBytes 6507 (op6411.map lower) ∧ bytes6411.length=37 := by core033_kernel_decide
def op6412 : List WordIR.Op := [.band 6502 6507]
def bytes6412 : Bytes := ("    let r0000196c: u32 = r00001966 & r0000196b;\n" : String).toByteArray.data.toList
theorem checked6412 : bytes6412=statementBytes 6508 (op6412.map lower) ∧ bytes6412.length=48 := by core033_kernel_decide
def op6413 : List WordIR.Op := [.bxor 6498 6508]
def bytes6413 : Bytes := ("    let r0000196d: u32 = r00001962 ^ r0000196c;\n" : String).toByteArray.data.toList
theorem checked6413 : bytes6413=statementBytes 6509 (op6413.map lower) ∧ bytes6413.length=48 := by core033_kernel_decide
def op6414 : List WordIR.Op := [.shr 6509 31]
def bytes6414 : Bytes := ("    let r0000196e: u32 = r0000196d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6414 : bytes6414=statementBytes 6510 (op6414.map lower) ∧ bytes6414.length=54 := by core033_kernel_decide
def op6415 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6415 : Bytes := ("    let r0000196f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6415 : bytes6415=statementBytes 6511 (op6415.map lower) ∧ bytes6415.length=41 := by core033_kernel_decide
def op6416 : List WordIR.Op := [.bxor 6510 6511]
def bytes6416 : Bytes := ("    let r00001970: u32 = r0000196e ^ r0000196f;\n" : String).toByteArray.data.toList
theorem checked6416 : bytes6416=statementBytes 6512 (op6416.map lower) ∧ bytes6416.length=48 := by core033_kernel_decide
def op6417 : List WordIR.Op := [.shr 3535 8]
def bytes6417 : Bytes := ("    let r00001971: u32 = r00000dcf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6417 : bytes6417=statementBytes 6513 (op6417.map lower) ∧ bytes6417.length=54 := by core033_kernel_decide
def op6418 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6418 : Bytes := ("    let r00001972: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6418 : bytes6418=statementBytes 6514 (op6418.map lower) ∧ bytes6418.length=41 := by core033_kernel_decide
def op6419 : List WordIR.Op := [.bnot 6514]
def bytes6419 : Bytes := ("    let r00001973: u32 = !r00001972;\n" : String).toByteArray.data.toList
theorem checked6419 : bytes6419=statementBytes 6515 (op6419.map lower) ∧ bytes6419.length=37 := by core033_kernel_decide
def op6420 : List WordIR.Op := [.band 6513 6515]
def bytes6420 : Bytes := ("    let r00001974: u32 = r00001971 & r00001973;\n" : String).toByteArray.data.toList
theorem checked6420 : bytes6420=statementBytes 6516 (op6420.map lower) ∧ bytes6420.length=48 := by core033_kernel_decide
def op6421 : List WordIR.Op := [.shr 3535 8]
def bytes6421 : Bytes := ("    let r00001975: u32 = r00000dcf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6421 : bytes6421=statementBytes 6517 (op6421.map lower) ∧ bytes6421.length=54 := by core033_kernel_decide
def op6422 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6422 : Bytes := ("    let r00001976: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6422 : bytes6422=statementBytes 6518 (op6422.map lower) ∧ bytes6422.length=41 := by core033_kernel_decide
def op6423 : List WordIR.Op := [.bnot 6518]
def bytes6423 : Bytes := ("    let r00001977: u32 = !r00001976;\n" : String).toByteArray.data.toList
theorem checked6423 : bytes6423=statementBytes 6519 (op6423.map lower) ∧ bytes6423.length=37 := by core033_kernel_decide
def op6424 : List WordIR.Op := [.bxor 6517 6519]
def bytes6424 : Bytes := ("    let r00001978: u32 = r00001975 ^ r00001977;\n" : String).toByteArray.data.toList
theorem checked6424 : bytes6424=statementBytes 6520 (op6424.map lower) ∧ bytes6424.length=48 := by core033_kernel_decide
def op6425 : List WordIR.Op := [.shr 3535 8]
def bytes6425 : Bytes := ("    let r00001979: u32 = r00000dcf >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6425 : bytes6425=statementBytes 6521 (op6425.map lower) ∧ bytes6425.length=54 := by core033_kernel_decide
def op6426 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6426 : Bytes := ("    let r0000197a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6426 : bytes6426=statementBytes 6522 (op6426.map lower) ∧ bytes6426.length=41 := by core033_kernel_decide
def op6427 : List WordIR.Op := [.bnot 6522]
def bytes6427 : Bytes := ("    let r0000197b: u32 = !r0000197a;\n" : String).toByteArray.data.toList
theorem checked6427 : bytes6427=statementBytes 6523 (op6427.map lower) ∧ bytes6427.length=37 := by core033_kernel_decide
def op6428 : List WordIR.Op := [.badd 6521 6523]
def bytes6428 : Bytes := ("    let r0000197c: u32 = r00001979.wrapping_add(r0000197b);\n" : String).toByteArray.data.toList
theorem checked6428 : bytes6428=statementBytes 6524 (op6428.map lower) ∧ bytes6428.length=60 := by core033_kernel_decide
def op6429 : List WordIR.Op := [.bnot 6524]
def bytes6429 : Bytes := ("    let r0000197d: u32 = !r0000197c;\n" : String).toByteArray.data.toList
theorem checked6429 : bytes6429=statementBytes 6525 (op6429.map lower) ∧ bytes6429.length=37 := by core033_kernel_decide
def op6430 : List WordIR.Op := [.band 6520 6525]
def bytes6430 : Bytes := ("    let r0000197e: u32 = r00001978 & r0000197d;\n" : String).toByteArray.data.toList
theorem checked6430 : bytes6430=statementBytes 6526 (op6430.map lower) ∧ bytes6430.length=48 := by core033_kernel_decide
def op6431 : List WordIR.Op := [.bxor 6516 6526]
def bytes6431 : Bytes := ("    let r0000197f: u32 = r00001974 ^ r0000197e;\n" : String).toByteArray.data.toList
theorem checked6431 : bytes6431=statementBytes 6527 (op6431.map lower) ∧ bytes6431.length=48 := by core033_kernel_decide
def op6432 : List WordIR.Op := [.shr 6527 31]
def bytes6432 : Bytes := ("    let r00001980: u32 = r0000197f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6432 : bytes6432=statementBytes 6528 (op6432.map lower) ∧ bytes6432.length=54 := by core033_kernel_decide
def op6433 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6433 : Bytes := ("    let r00001981: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6433 : bytes6433=statementBytes 6529 (op6433.map lower) ∧ bytes6433.length=41 := by core033_kernel_decide
def op6434 : List WordIR.Op := [.bxor 6528 6529]
def bytes6434 : Bytes := ("    let r00001982: u32 = r00001980 ^ r00001981;\n" : String).toByteArray.data.toList
theorem checked6434 : bytes6434=statementBytes 6530 (op6434.map lower) ∧ bytes6434.length=48 := by core033_kernel_decide
def op6435 : List WordIR.Op := [.shr 3587 8]
def bytes6435 : Bytes := ("    let r00001983: u32 = r00000e03 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6435 : bytes6435=statementBytes 6531 (op6435.map lower) ∧ bytes6435.length=54 := by core033_kernel_decide
def op6436 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6436 : Bytes := ("    let r00001984: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6436 : bytes6436=statementBytes 6532 (op6436.map lower) ∧ bytes6436.length=41 := by core033_kernel_decide
def op6437 : List WordIR.Op := [.bnot 6532]
def bytes6437 : Bytes := ("    let r00001985: u32 = !r00001984;\n" : String).toByteArray.data.toList
theorem checked6437 : bytes6437=statementBytes 6533 (op6437.map lower) ∧ bytes6437.length=37 := by core033_kernel_decide
def op6438 : List WordIR.Op := [.band 6531 6533]
def bytes6438 : Bytes := ("    let r00001986: u32 = r00001983 & r00001985;\n" : String).toByteArray.data.toList
theorem checked6438 : bytes6438=statementBytes 6534 (op6438.map lower) ∧ bytes6438.length=48 := by core033_kernel_decide
def op6439 : List WordIR.Op := [.shr 3587 8]
def bytes6439 : Bytes := ("    let r00001987: u32 = r00000e03 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6439 : bytes6439=statementBytes 6535 (op6439.map lower) ∧ bytes6439.length=54 := by core033_kernel_decide
def op6440 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6440 : Bytes := ("    let r00001988: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6440 : bytes6440=statementBytes 6536 (op6440.map lower) ∧ bytes6440.length=41 := by core033_kernel_decide
def op6441 : List WordIR.Op := [.bnot 6536]
def bytes6441 : Bytes := ("    let r00001989: u32 = !r00001988;\n" : String).toByteArray.data.toList
theorem checked6441 : bytes6441=statementBytes 6537 (op6441.map lower) ∧ bytes6441.length=37 := by core033_kernel_decide
def op6442 : List WordIR.Op := [.bxor 6535 6537]
def bytes6442 : Bytes := ("    let r0000198a: u32 = r00001987 ^ r00001989;\n" : String).toByteArray.data.toList
theorem checked6442 : bytes6442=statementBytes 6538 (op6442.map lower) ∧ bytes6442.length=48 := by core033_kernel_decide
def op6443 : List WordIR.Op := [.shr 3587 8]
def bytes6443 : Bytes := ("    let r0000198b: u32 = r00000e03 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6443 : bytes6443=statementBytes 6539 (op6443.map lower) ∧ bytes6443.length=54 := by core033_kernel_decide
def op6444 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6444 : Bytes := ("    let r0000198c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6444 : bytes6444=statementBytes 6540 (op6444.map lower) ∧ bytes6444.length=41 := by core033_kernel_decide
def op6445 : List WordIR.Op := [.bnot 6540]
def bytes6445 : Bytes := ("    let r0000198d: u32 = !r0000198c;\n" : String).toByteArray.data.toList
theorem checked6445 : bytes6445=statementBytes 6541 (op6445.map lower) ∧ bytes6445.length=37 := by core033_kernel_decide
def op6446 : List WordIR.Op := [.badd 6539 6541]
def bytes6446 : Bytes := ("    let r0000198e: u32 = r0000198b.wrapping_add(r0000198d);\n" : String).toByteArray.data.toList
theorem checked6446 : bytes6446=statementBytes 6542 (op6446.map lower) ∧ bytes6446.length=60 := by core033_kernel_decide
def op6447 : List WordIR.Op := [.bnot 6542]
def bytes6447 : Bytes := ("    let r0000198f: u32 = !r0000198e;\n" : String).toByteArray.data.toList
theorem checked6447 : bytes6447=statementBytes 6543 (op6447.map lower) ∧ bytes6447.length=37 := by core033_kernel_decide
def op6448 : List WordIR.Op := [.band 6538 6543]
def bytes6448 : Bytes := ("    let r00001990: u32 = r0000198a & r0000198f;\n" : String).toByteArray.data.toList
theorem checked6448 : bytes6448=statementBytes 6544 (op6448.map lower) ∧ bytes6448.length=48 := by core033_kernel_decide
def op6449 : List WordIR.Op := [.bxor 6534 6544]
def bytes6449 : Bytes := ("    let r00001991: u32 = r00001986 ^ r00001990;\n" : String).toByteArray.data.toList
theorem checked6449 : bytes6449=statementBytes 6545 (op6449.map lower) ∧ bytes6449.length=48 := by core033_kernel_decide
def op6450 : List WordIR.Op := [.shr 6545 31]
def bytes6450 : Bytes := ("    let r00001992: u32 = r00001991 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6450 : bytes6450=statementBytes 6546 (op6450.map lower) ∧ bytes6450.length=54 := by core033_kernel_decide
def op6451 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6451 : Bytes := ("    let r00001993: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6451 : bytes6451=statementBytes 6547 (op6451.map lower) ∧ bytes6451.length=41 := by core033_kernel_decide
def op6452 : List WordIR.Op := [.bxor 6546 6547]
def bytes6452 : Bytes := ("    let r00001994: u32 = r00001992 ^ r00001993;\n" : String).toByteArray.data.toList
theorem checked6452 : bytes6452=statementBytes 6548 (op6452.map lower) ∧ bytes6452.length=48 := by core033_kernel_decide
def op6453 : List WordIR.Op := [.shr 3639 8]
def bytes6453 : Bytes := ("    let r00001995: u32 = r00000e37 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6453 : bytes6453=statementBytes 6549 (op6453.map lower) ∧ bytes6453.length=54 := by core033_kernel_decide
def op6454 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6454 : Bytes := ("    let r00001996: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6454 : bytes6454=statementBytes 6550 (op6454.map lower) ∧ bytes6454.length=41 := by core033_kernel_decide
def op6455 : List WordIR.Op := [.bnot 6550]
def bytes6455 : Bytes := ("    let r00001997: u32 = !r00001996;\n" : String).toByteArray.data.toList
theorem checked6455 : bytes6455=statementBytes 6551 (op6455.map lower) ∧ bytes6455.length=37 := by core033_kernel_decide
def op6456 : List WordIR.Op := [.band 6549 6551]
def bytes6456 : Bytes := ("    let r00001998: u32 = r00001995 & r00001997;\n" : String).toByteArray.data.toList
theorem checked6456 : bytes6456=statementBytes 6552 (op6456.map lower) ∧ bytes6456.length=48 := by core033_kernel_decide
def op6457 : List WordIR.Op := [.shr 3639 8]
def bytes6457 : Bytes := ("    let r00001999: u32 = r00000e37 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6457 : bytes6457=statementBytes 6553 (op6457.map lower) ∧ bytes6457.length=54 := by core033_kernel_decide
def op6458 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6458 : Bytes := ("    let r0000199a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6458 : bytes6458=statementBytes 6554 (op6458.map lower) ∧ bytes6458.length=41 := by core033_kernel_decide
def op6459 : List WordIR.Op := [.bnot 6554]
def bytes6459 : Bytes := ("    let r0000199b: u32 = !r0000199a;\n" : String).toByteArray.data.toList
theorem checked6459 : bytes6459=statementBytes 6555 (op6459.map lower) ∧ bytes6459.length=37 := by core033_kernel_decide
def op6460 : List WordIR.Op := [.bxor 6553 6555]
def bytes6460 : Bytes := ("    let r0000199c: u32 = r00001999 ^ r0000199b;\n" : String).toByteArray.data.toList
theorem checked6460 : bytes6460=statementBytes 6556 (op6460.map lower) ∧ bytes6460.length=48 := by core033_kernel_decide
def op6461 : List WordIR.Op := [.shr 3639 8]
def bytes6461 : Bytes := ("    let r0000199d: u32 = r00000e37 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6461 : bytes6461=statementBytes 6557 (op6461.map lower) ∧ bytes6461.length=54 := by core033_kernel_decide
def op6462 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6462 : Bytes := ("    let r0000199e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6462 : bytes6462=statementBytes 6558 (op6462.map lower) ∧ bytes6462.length=41 := by core033_kernel_decide
def op6463 : List WordIR.Op := [.bnot 6558]
def bytes6463 : Bytes := ("    let r0000199f: u32 = !r0000199e;\n" : String).toByteArray.data.toList
theorem checked6463 : bytes6463=statementBytes 6559 (op6463.map lower) ∧ bytes6463.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6400,op6401,op6402,op6403,op6404,op6405,op6406,op6407,op6408,op6409,op6410,op6411,op6412,op6413,op6414,op6415,op6416,op6417,op6418,op6419,op6420,op6421,op6422,op6423,op6424,op6425,op6426,op6427,op6428,op6429,op6430,op6431,op6432,op6433,op6434,op6435,op6436,op6437,op6438,op6439,op6440,op6441,op6442,op6443,op6444,op6445,op6446,op6447,op6448,op6449,op6450,op6451,op6452,op6453,op6454,op6455,op6456,op6457,op6458,op6459,op6460,op6461,op6462,op6463]
def chunks : List Bytes := [bytes6400,bytes6401,bytes6402,bytes6403,bytes6404,bytes6405,bytes6406,bytes6407,bytes6408,bytes6409,bytes6410,bytes6411,bytes6412,bytes6413,bytes6414,bytes6415,bytes6416,bytes6417,bytes6418,bytes6419,bytes6420,bytes6421,bytes6422,bytes6423,bytes6424,bytes6425,bytes6426,bytes6427,bytes6428,bytes6429,bytes6430,bytes6431,bytes6432,bytes6433,bytes6434,bytes6435,bytes6436,bytes6437,bytes6438,bytes6439,bytes6440,bytes6441,bytes6442,bytes6443,bytes6444,bytes6445,bytes6446,bytes6447,bytes6448,bytes6449,bytes6450,bytes6451,bytes6452,bytes6453,bytes6454,bytes6455,bytes6456,bytes6457,bytes6458,bytes6459,bytes6460,bytes6461,bytes6462,bytes6463]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6496 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6400.1 (.cons _ _ _ _ _ checked6401.1 (.cons _ _ _ _ _ checked6402.1 (.cons _ _ _ _ _ checked6403.1 (.cons _ _ _ _ _ checked6404.1 (.cons _ _ _ _ _ checked6405.1 (.cons _ _ _ _ _ checked6406.1 (.cons _ _ _ _ _ checked6407.1 (.cons _ _ _ _ _ checked6408.1 (.cons _ _ _ _ _ checked6409.1 (.cons _ _ _ _ _ checked6410.1 (.cons _ _ _ _ _ checked6411.1 (.cons _ _ _ _ _ checked6412.1 (.cons _ _ _ _ _ checked6413.1 (.cons _ _ _ _ _ checked6414.1 (.cons _ _ _ _ _ checked6415.1 (.cons _ _ _ _ _ checked6416.1 (.cons _ _ _ _ _ checked6417.1 (.cons _ _ _ _ _ checked6418.1 (.cons _ _ _ _ _ checked6419.1 (.cons _ _ _ _ _ checked6420.1 (.cons _ _ _ _ _ checked6421.1 (.cons _ _ _ _ _ checked6422.1 (.cons _ _ _ _ _ checked6423.1 (.cons _ _ _ _ _ checked6424.1 (.cons _ _ _ _ _ checked6425.1 (.cons _ _ _ _ _ checked6426.1 (.cons _ _ _ _ _ checked6427.1 (.cons _ _ _ _ _ checked6428.1 (.cons _ _ _ _ _ checked6429.1 (.cons _ _ _ _ _ checked6430.1 (.cons _ _ _ _ _ checked6431.1 (.cons _ _ _ _ _ checked6432.1 (.cons _ _ _ _ _ checked6433.1 (.cons _ _ _ _ _ checked6434.1 (.cons _ _ _ _ _ checked6435.1 (.cons _ _ _ _ _ checked6436.1 (.cons _ _ _ _ _ checked6437.1 (.cons _ _ _ _ _ checked6438.1 (.cons _ _ _ _ _ checked6439.1 (.cons _ _ _ _ _ checked6440.1 (.cons _ _ _ _ _ checked6441.1 (.cons _ _ _ _ _ checked6442.1 (.cons _ _ _ _ _ checked6443.1 (.cons _ _ _ _ _ checked6444.1 (.cons _ _ _ _ _ checked6445.1 (.cons _ _ _ _ _ checked6446.1 (.cons _ _ _ _ _ checked6447.1 (.cons _ _ _ _ _ checked6448.1 (.cons _ _ _ _ _ checked6449.1 (.cons _ _ _ _ _ checked6450.1 (.cons _ _ _ _ _ checked6451.1 (.cons _ _ _ _ _ checked6452.1 (.cons _ _ _ _ _ checked6453.1 (.cons _ _ _ _ _ checked6454.1 (.cons _ _ _ _ _ checked6455.1 (.cons _ _ _ _ _ checked6456.1 (.cons _ _ _ _ _ checked6457.1 (.cons _ _ _ _ _ checked6458.1 (.cons _ _ _ _ _ checked6459.1 (.cons _ _ _ _ _ checked6460.1 (.cons _ _ _ _ _ checked6461.1 (.cons _ _ _ _ _ checked6462.1 (.cons _ _ _ _ _ checked6463.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6496 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2922 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6400.2,checked6401.2,checked6402.2,checked6403.2,checked6404.2,checked6405.2,checked6406.2,checked6407.2,checked6408.2,checked6409.2,checked6410.2,checked6411.2,checked6412.2,checked6413.2,checked6414.2,checked6415.2,checked6416.2,checked6417.2,checked6418.2,checked6419.2,checked6420.2,checked6421.2,checked6422.2,checked6423.2,checked6424.2,checked6425.2,checked6426.2,checked6427.2,checked6428.2,checked6429.2,checked6430.2,checked6431.2,checked6432.2,checked6433.2,checked6434.2,checked6435.2,checked6436.2,checked6437.2,checked6438.2,checked6439.2,checked6440.2,checked6441.2,checked6442.2,checked6443.2,checked6444.2,checked6445.2,checked6446.2,checked6447.2,checked6448.2,checked6449.2,checked6450.2,checked6451.2,checked6452.2,checked6453.2,checked6454.2,checked6455.2,checked6456.2,checked6457.2,checked6458.2,checked6459.2,checked6460.2,checked6461.2,checked6462.2,checked6463.2]
  decide
end ArtifactPairedPathRoundGroup100
