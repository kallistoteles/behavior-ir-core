import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup192
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12288 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12288 : Bytes := ("    let r0000302b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12288 : bytes12288=statementBytes 12331 (op12288.map lower) ∧ bytes12288.length=41 := by core033_kernel_decide
def op12289 : List WordIR.Op := [.bxor 0 12331]
def bytes12289 : Bytes := ("    let r0000302c: u32 = r00000000 ^ r0000302b;\n" : String).toByteArray.data.toList
theorem checked12289 : bytes12289=statementBytes 12332 (op12289.map lower) ∧ bytes12289.length=48 := by core033_kernel_decide
def op12290 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12290 : Bytes := ("    let r0000302d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12290 : bytes12290=statementBytes 12333 (op12290.map lower) ∧ bytes12290.length=41 := by core033_kernel_decide
def op12291 : List WordIR.Op := [.bnot 12333]
def bytes12291 : Bytes := ("    let r0000302e: u32 = !r0000302d;\n" : String).toByteArray.data.toList
theorem checked12291 : bytes12291=statementBytes 12334 (op12291.map lower) ∧ bytes12291.length=37 := by core033_kernel_decide
def op12292 : List WordIR.Op := [.band 12332 12334]
def bytes12292 : Bytes := ("    let r0000302f: u32 = r0000302c & r0000302e;\n" : String).toByteArray.data.toList
theorem checked12292 : bytes12292=statementBytes 12335 (op12292.map lower) ∧ bytes12292.length=48 := by core033_kernel_decide
def op12293 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12293 : Bytes := ("    let r00003030: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12293 : bytes12293=statementBytes 12336 (op12293.map lower) ∧ bytes12293.length=41 := by core033_kernel_decide
def op12294 : List WordIR.Op := [.bxor 0 12336]
def bytes12294 : Bytes := ("    let r00003031: u32 = r00000000 ^ r00003030;\n" : String).toByteArray.data.toList
theorem checked12294 : bytes12294=statementBytes 12337 (op12294.map lower) ∧ bytes12294.length=48 := by core033_kernel_decide
def op12295 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12295 : Bytes := ("    let r00003032: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12295 : bytes12295=statementBytes 12338 (op12295.map lower) ∧ bytes12295.length=41 := by core033_kernel_decide
def op12296 : List WordIR.Op := [.bnot 12338]
def bytes12296 : Bytes := ("    let r00003033: u32 = !r00003032;\n" : String).toByteArray.data.toList
theorem checked12296 : bytes12296=statementBytes 12339 (op12296.map lower) ∧ bytes12296.length=37 := by core033_kernel_decide
def op12297 : List WordIR.Op := [.bxor 12337 12339]
def bytes12297 : Bytes := ("    let r00003034: u32 = r00003031 ^ r00003033;\n" : String).toByteArray.data.toList
theorem checked12297 : bytes12297=statementBytes 12340 (op12297.map lower) ∧ bytes12297.length=48 := by core033_kernel_decide
def op12298 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12298 : Bytes := ("    let r00003035: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12298 : bytes12298=statementBytes 12341 (op12298.map lower) ∧ bytes12298.length=41 := by core033_kernel_decide
def op12299 : List WordIR.Op := [.bxor 0 12341]
def bytes12299 : Bytes := ("    let r00003036: u32 = r00000000 ^ r00003035;\n" : String).toByteArray.data.toList
theorem checked12299 : bytes12299=statementBytes 12342 (op12299.map lower) ∧ bytes12299.length=48 := by core033_kernel_decide
def op12300 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12300 : Bytes := ("    let r00003037: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12300 : bytes12300=statementBytes 12343 (op12300.map lower) ∧ bytes12300.length=41 := by core033_kernel_decide
def op12301 : List WordIR.Op := [.bnot 12343]
def bytes12301 : Bytes := ("    let r00003038: u32 = !r00003037;\n" : String).toByteArray.data.toList
theorem checked12301 : bytes12301=statementBytes 12344 (op12301.map lower) ∧ bytes12301.length=37 := by core033_kernel_decide
def op12302 : List WordIR.Op := [.badd 12342 12344]
def bytes12302 : Bytes := ("    let r00003039: u32 = r00003036.wrapping_add(r00003038);\n" : String).toByteArray.data.toList
theorem checked12302 : bytes12302=statementBytes 12345 (op12302.map lower) ∧ bytes12302.length=60 := by core033_kernel_decide
def op12303 : List WordIR.Op := [.bnot 12345]
def bytes12303 : Bytes := ("    let r0000303a: u32 = !r00003039;\n" : String).toByteArray.data.toList
theorem checked12303 : bytes12303=statementBytes 12346 (op12303.map lower) ∧ bytes12303.length=37 := by core033_kernel_decide
def op12304 : List WordIR.Op := [.band 12340 12346]
def bytes12304 : Bytes := ("    let r0000303b: u32 = r00003034 & r0000303a;\n" : String).toByteArray.data.toList
theorem checked12304 : bytes12304=statementBytes 12347 (op12304.map lower) ∧ bytes12304.length=48 := by core033_kernel_decide
def op12305 : List WordIR.Op := [.bxor 12335 12347]
def bytes12305 : Bytes := ("    let r0000303c: u32 = r0000302f ^ r0000303b;\n" : String).toByteArray.data.toList
theorem checked12305 : bytes12305=statementBytes 12348 (op12305.map lower) ∧ bytes12305.length=48 := by core033_kernel_decide
def op12306 : List WordIR.Op := [.shr 12348 31]
def bytes12306 : Bytes := ("    let r0000303d: u32 = r0000303c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12306 : bytes12306=statementBytes 12349 (op12306.map lower) ∧ bytes12306.length=54 := by core033_kernel_decide
def op12307 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12307 : Bytes := ("    let r0000303e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12307 : bytes12307=statementBytes 12350 (op12307.map lower) ∧ bytes12307.length=41 := by core033_kernel_decide
def op12308 : List WordIR.Op := [.bxor 12349 12350]
def bytes12308 : Bytes := ("    let r0000303f: u32 = r0000303d ^ r0000303e;\n" : String).toByteArray.data.toList
theorem checked12308 : bytes12308=statementBytes 12351 (op12308.map lower) ∧ bytes12308.length=48 := by core033_kernel_decide
def op12309 : List WordIR.Op := [.bnot 12351]
def bytes12309 : Bytes := ("    let r00003040: u32 = !r0000303f;\n" : String).toByteArray.data.toList
theorem checked12309 : bytes12309=statementBytes 12352 (op12309.map lower) ∧ bytes12309.length=37 := by core033_kernel_decide
def op12310 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12310 : Bytes := ("    let r00003041: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12310 : bytes12310=statementBytes 12353 (op12310.map lower) ∧ bytes12310.length=41 := by core033_kernel_decide
def op12311 : List WordIR.Op := [.badd 12352 12353]
def bytes12311 : Bytes := ("    let r00003042: u32 = r00003040.wrapping_add(r00003041);\n" : String).toByteArray.data.toList
theorem checked12311 : bytes12311=statementBytes 12354 (op12311.map lower) ∧ bytes12311.length=60 := by core033_kernel_decide
def op12312 : List WordIR.Op := [.bnot 12354]
def bytes12312 : Bytes := ("    let r00003043: u32 = !r00003042;\n" : String).toByteArray.data.toList
theorem checked12312 : bytes12312=statementBytes 12355 (op12312.map lower) ∧ bytes12312.length=37 := by core033_kernel_decide
def op12313 : List WordIR.Op := [.band 12355 9286]
def bytes12313 : Bytes := ("    let r00003044: u32 = r00003043 & r00002446;\n" : String).toByteArray.data.toList
theorem checked12313 : bytes12313=statementBytes 12356 (op12313.map lower) ∧ bytes12313.length=48 := by core033_kernel_decide
def op12314 : List WordIR.Op := [.bxor 12330 12356]
def bytes12314 : Bytes := ("    let r00003045: u32 = r0000302a ^ r00003044;\n" : String).toByteArray.data.toList
theorem checked12314 : bytes12314=statementBytes 12357 (op12314.map lower) ∧ bytes12314.length=48 := by core033_kernel_decide
def op12315 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12315 : Bytes := ("    let r00003046: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12315 : bytes12315=statementBytes 12358 (op12315.map lower) ∧ bytes12315.length=41 := by core033_kernel_decide
def op12316 : List WordIR.Op := [.bxor 0 12358]
def bytes12316 : Bytes := ("    let r00003047: u32 = r00000000 ^ r00003046;\n" : String).toByteArray.data.toList
theorem checked12316 : bytes12316=statementBytes 12359 (op12316.map lower) ∧ bytes12316.length=48 := by core033_kernel_decide
def op12317 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12317 : Bytes := ("    let r00003048: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12317 : bytes12317=statementBytes 12360 (op12317.map lower) ∧ bytes12317.length=41 := by core033_kernel_decide
def op12318 : List WordIR.Op := [.bnot 12360]
def bytes12318 : Bytes := ("    let r00003049: u32 = !r00003048;\n" : String).toByteArray.data.toList
theorem checked12318 : bytes12318=statementBytes 12361 (op12318.map lower) ∧ bytes12318.length=37 := by core033_kernel_decide
def op12319 : List WordIR.Op := [.band 12359 12361]
def bytes12319 : Bytes := ("    let r0000304a: u32 = r00003047 & r00003049;\n" : String).toByteArray.data.toList
theorem checked12319 : bytes12319=statementBytes 12362 (op12319.map lower) ∧ bytes12319.length=48 := by core033_kernel_decide
def op12320 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12320 : Bytes := ("    let r0000304b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12320 : bytes12320=statementBytes 12363 (op12320.map lower) ∧ bytes12320.length=41 := by core033_kernel_decide
def op12321 : List WordIR.Op := [.bxor 0 12363]
def bytes12321 : Bytes := ("    let r0000304c: u32 = r00000000 ^ r0000304b;\n" : String).toByteArray.data.toList
theorem checked12321 : bytes12321=statementBytes 12364 (op12321.map lower) ∧ bytes12321.length=48 := by core033_kernel_decide
def op12322 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12322 : Bytes := ("    let r0000304d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12322 : bytes12322=statementBytes 12365 (op12322.map lower) ∧ bytes12322.length=41 := by core033_kernel_decide
def op12323 : List WordIR.Op := [.bnot 12365]
def bytes12323 : Bytes := ("    let r0000304e: u32 = !r0000304d;\n" : String).toByteArray.data.toList
theorem checked12323 : bytes12323=statementBytes 12366 (op12323.map lower) ∧ bytes12323.length=37 := by core033_kernel_decide
def op12324 : List WordIR.Op := [.bxor 12364 12366]
def bytes12324 : Bytes := ("    let r0000304f: u32 = r0000304c ^ r0000304e;\n" : String).toByteArray.data.toList
theorem checked12324 : bytes12324=statementBytes 12367 (op12324.map lower) ∧ bytes12324.length=48 := by core033_kernel_decide
def op12325 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12325 : Bytes := ("    let r00003050: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12325 : bytes12325=statementBytes 12368 (op12325.map lower) ∧ bytes12325.length=41 := by core033_kernel_decide
def op12326 : List WordIR.Op := [.bxor 0 12368]
def bytes12326 : Bytes := ("    let r00003051: u32 = r00000000 ^ r00003050;\n" : String).toByteArray.data.toList
theorem checked12326 : bytes12326=statementBytes 12369 (op12326.map lower) ∧ bytes12326.length=48 := by core033_kernel_decide
def op12327 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12327 : Bytes := ("    let r00003052: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12327 : bytes12327=statementBytes 12370 (op12327.map lower) ∧ bytes12327.length=41 := by core033_kernel_decide
def op12328 : List WordIR.Op := [.bnot 12370]
def bytes12328 : Bytes := ("    let r00003053: u32 = !r00003052;\n" : String).toByteArray.data.toList
theorem checked12328 : bytes12328=statementBytes 12371 (op12328.map lower) ∧ bytes12328.length=37 := by core033_kernel_decide
def op12329 : List WordIR.Op := [.badd 12369 12371]
def bytes12329 : Bytes := ("    let r00003054: u32 = r00003051.wrapping_add(r00003053);\n" : String).toByteArray.data.toList
theorem checked12329 : bytes12329=statementBytes 12372 (op12329.map lower) ∧ bytes12329.length=60 := by core033_kernel_decide
def op12330 : List WordIR.Op := [.bnot 12372]
def bytes12330 : Bytes := ("    let r00003055: u32 = !r00003054;\n" : String).toByteArray.data.toList
theorem checked12330 : bytes12330=statementBytes 12373 (op12330.map lower) ∧ bytes12330.length=37 := by core033_kernel_decide
def op12331 : List WordIR.Op := [.band 12367 12373]
def bytes12331 : Bytes := ("    let r00003056: u32 = r0000304f & r00003055;\n" : String).toByteArray.data.toList
theorem checked12331 : bytes12331=statementBytes 12374 (op12331.map lower) ∧ bytes12331.length=48 := by core033_kernel_decide
def op12332 : List WordIR.Op := [.bxor 12362 12374]
def bytes12332 : Bytes := ("    let r00003057: u32 = r0000304a ^ r00003056;\n" : String).toByteArray.data.toList
theorem checked12332 : bytes12332=statementBytes 12375 (op12332.map lower) ∧ bytes12332.length=48 := by core033_kernel_decide
def op12333 : List WordIR.Op := [.shr 12375 31]
def bytes12333 : Bytes := ("    let r00003058: u32 = r00003057 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12333 : bytes12333=statementBytes 12376 (op12333.map lower) ∧ bytes12333.length=54 := by core033_kernel_decide
def op12334 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12334 : Bytes := ("    let r00003059: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12334 : bytes12334=statementBytes 12377 (op12334.map lower) ∧ bytes12334.length=41 := by core033_kernel_decide
def op12335 : List WordIR.Op := [.bxor 12376 12377]
def bytes12335 : Bytes := ("    let r0000305a: u32 = r00003058 ^ r00003059;\n" : String).toByteArray.data.toList
theorem checked12335 : bytes12335=statementBytes 12378 (op12335.map lower) ∧ bytes12335.length=48 := by core033_kernel_decide
def op12336 : List WordIR.Op := [.bnot 12378]
def bytes12336 : Bytes := ("    let r0000305b: u32 = !r0000305a;\n" : String).toByteArray.data.toList
theorem checked12336 : bytes12336=statementBytes 12379 (op12336.map lower) ∧ bytes12336.length=37 := by core033_kernel_decide
def op12337 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12337 : Bytes := ("    let r0000305c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12337 : bytes12337=statementBytes 12380 (op12337.map lower) ∧ bytes12337.length=41 := by core033_kernel_decide
def op12338 : List WordIR.Op := [.badd 12379 12380]
def bytes12338 : Bytes := ("    let r0000305d: u32 = r0000305b.wrapping_add(r0000305c);\n" : String).toByteArray.data.toList
theorem checked12338 : bytes12338=statementBytes 12381 (op12338.map lower) ∧ bytes12338.length=60 := by core033_kernel_decide
def op12339 : List WordIR.Op := [.band 12381 9868]
def bytes12339 : Bytes := ("    let r0000305e: u32 = r0000305d & r0000268c;\n" : String).toByteArray.data.toList
theorem checked12339 : bytes12339=statementBytes 12382 (op12339.map lower) ∧ bytes12339.length=48 := by core033_kernel_decide
def op12340 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12340 : Bytes := ("    let r0000305f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12340 : bytes12340=statementBytes 12383 (op12340.map lower) ∧ bytes12340.length=41 := by core033_kernel_decide
def op12341 : List WordIR.Op := [.bxor 0 12383]
def bytes12341 : Bytes := ("    let r00003060: u32 = r00000000 ^ r0000305f;\n" : String).toByteArray.data.toList
theorem checked12341 : bytes12341=statementBytes 12384 (op12341.map lower) ∧ bytes12341.length=48 := by core033_kernel_decide
def op12342 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12342 : Bytes := ("    let r00003061: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12342 : bytes12342=statementBytes 12385 (op12342.map lower) ∧ bytes12342.length=41 := by core033_kernel_decide
def op12343 : List WordIR.Op := [.bnot 12385]
def bytes12343 : Bytes := ("    let r00003062: u32 = !r00003061;\n" : String).toByteArray.data.toList
theorem checked12343 : bytes12343=statementBytes 12386 (op12343.map lower) ∧ bytes12343.length=37 := by core033_kernel_decide
def op12344 : List WordIR.Op := [.band 12384 12386]
def bytes12344 : Bytes := ("    let r00003063: u32 = r00003060 & r00003062;\n" : String).toByteArray.data.toList
theorem checked12344 : bytes12344=statementBytes 12387 (op12344.map lower) ∧ bytes12344.length=48 := by core033_kernel_decide
def op12345 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12345 : Bytes := ("    let r00003064: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12345 : bytes12345=statementBytes 12388 (op12345.map lower) ∧ bytes12345.length=41 := by core033_kernel_decide
def op12346 : List WordIR.Op := [.bxor 0 12388]
def bytes12346 : Bytes := ("    let r00003065: u32 = r00000000 ^ r00003064;\n" : String).toByteArray.data.toList
theorem checked12346 : bytes12346=statementBytes 12389 (op12346.map lower) ∧ bytes12346.length=48 := by core033_kernel_decide
def op12347 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12347 : Bytes := ("    let r00003066: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12347 : bytes12347=statementBytes 12390 (op12347.map lower) ∧ bytes12347.length=41 := by core033_kernel_decide
def op12348 : List WordIR.Op := [.bnot 12390]
def bytes12348 : Bytes := ("    let r00003067: u32 = !r00003066;\n" : String).toByteArray.data.toList
theorem checked12348 : bytes12348=statementBytes 12391 (op12348.map lower) ∧ bytes12348.length=37 := by core033_kernel_decide
def op12349 : List WordIR.Op := [.bxor 12389 12391]
def bytes12349 : Bytes := ("    let r00003068: u32 = r00003065 ^ r00003067;\n" : String).toByteArray.data.toList
theorem checked12349 : bytes12349=statementBytes 12392 (op12349.map lower) ∧ bytes12349.length=48 := by core033_kernel_decide
def op12350 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12350 : Bytes := ("    let r00003069: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12350 : bytes12350=statementBytes 12393 (op12350.map lower) ∧ bytes12350.length=41 := by core033_kernel_decide
def op12351 : List WordIR.Op := [.bxor 0 12393]
def bytes12351 : Bytes := ("    let r0000306a: u32 = r00000000 ^ r00003069;\n" : String).toByteArray.data.toList
theorem checked12351 : bytes12351=statementBytes 12394 (op12351.map lower) ∧ bytes12351.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12288,op12289,op12290,op12291,op12292,op12293,op12294,op12295,op12296,op12297,op12298,op12299,op12300,op12301,op12302,op12303,op12304,op12305,op12306,op12307,op12308,op12309,op12310,op12311,op12312,op12313,op12314,op12315,op12316,op12317,op12318,op12319,op12320,op12321,op12322,op12323,op12324,op12325,op12326,op12327,op12328,op12329,op12330,op12331,op12332,op12333,op12334,op12335,op12336,op12337,op12338,op12339,op12340,op12341,op12342,op12343,op12344,op12345,op12346,op12347,op12348,op12349,op12350,op12351]
def chunks : List Bytes := [bytes12288,bytes12289,bytes12290,bytes12291,bytes12292,bytes12293,bytes12294,bytes12295,bytes12296,bytes12297,bytes12298,bytes12299,bytes12300,bytes12301,bytes12302,bytes12303,bytes12304,bytes12305,bytes12306,bytes12307,bytes12308,bytes12309,bytes12310,bytes12311,bytes12312,bytes12313,bytes12314,bytes12315,bytes12316,bytes12317,bytes12318,bytes12319,bytes12320,bytes12321,bytes12322,bytes12323,bytes12324,bytes12325,bytes12326,bytes12327,bytes12328,bytes12329,bytes12330,bytes12331,bytes12332,bytes12333,bytes12334,bytes12335,bytes12336,bytes12337,bytes12338,bytes12339,bytes12340,bytes12341,bytes12342,bytes12343,bytes12344,bytes12345,bytes12346,bytes12347,bytes12348,bytes12349,bytes12350,bytes12351]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12331 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12288.1 (.cons _ _ _ _ _ checked12289.1 (.cons _ _ _ _ _ checked12290.1 (.cons _ _ _ _ _ checked12291.1 (.cons _ _ _ _ _ checked12292.1 (.cons _ _ _ _ _ checked12293.1 (.cons _ _ _ _ _ checked12294.1 (.cons _ _ _ _ _ checked12295.1 (.cons _ _ _ _ _ checked12296.1 (.cons _ _ _ _ _ checked12297.1 (.cons _ _ _ _ _ checked12298.1 (.cons _ _ _ _ _ checked12299.1 (.cons _ _ _ _ _ checked12300.1 (.cons _ _ _ _ _ checked12301.1 (.cons _ _ _ _ _ checked12302.1 (.cons _ _ _ _ _ checked12303.1 (.cons _ _ _ _ _ checked12304.1 (.cons _ _ _ _ _ checked12305.1 (.cons _ _ _ _ _ checked12306.1 (.cons _ _ _ _ _ checked12307.1 (.cons _ _ _ _ _ checked12308.1 (.cons _ _ _ _ _ checked12309.1 (.cons _ _ _ _ _ checked12310.1 (.cons _ _ _ _ _ checked12311.1 (.cons _ _ _ _ _ checked12312.1 (.cons _ _ _ _ _ checked12313.1 (.cons _ _ _ _ _ checked12314.1 (.cons _ _ _ _ _ checked12315.1 (.cons _ _ _ _ _ checked12316.1 (.cons _ _ _ _ _ checked12317.1 (.cons _ _ _ _ _ checked12318.1 (.cons _ _ _ _ _ checked12319.1 (.cons _ _ _ _ _ checked12320.1 (.cons _ _ _ _ _ checked12321.1 (.cons _ _ _ _ _ checked12322.1 (.cons _ _ _ _ _ checked12323.1 (.cons _ _ _ _ _ checked12324.1 (.cons _ _ _ _ _ checked12325.1 (.cons _ _ _ _ _ checked12326.1 (.cons _ _ _ _ _ checked12327.1 (.cons _ _ _ _ _ checked12328.1 (.cons _ _ _ _ _ checked12329.1 (.cons _ _ _ _ _ checked12330.1 (.cons _ _ _ _ _ checked12331.1 (.cons _ _ _ _ _ checked12332.1 (.cons _ _ _ _ _ checked12333.1 (.cons _ _ _ _ _ checked12334.1 (.cons _ _ _ _ _ checked12335.1 (.cons _ _ _ _ _ checked12336.1 (.cons _ _ _ _ _ checked12337.1 (.cons _ _ _ _ _ checked12338.1 (.cons _ _ _ _ _ checked12339.1 (.cons _ _ _ _ _ checked12340.1 (.cons _ _ _ _ _ checked12341.1 (.cons _ _ _ _ _ checked12342.1 (.cons _ _ _ _ _ checked12343.1 (.cons _ _ _ _ _ checked12344.1 (.cons _ _ _ _ _ checked12345.1 (.cons _ _ _ _ _ checked12346.1 (.cons _ _ _ _ _ checked12347.1 (.cons _ _ _ _ _ checked12348.1 (.cons _ _ _ _ _ checked12349.1 (.cons _ _ _ _ _ checked12350.1 (.cons _ _ _ _ _ checked12351.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12331 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12288.2,checked12289.2,checked12290.2,checked12291.2,checked12292.2,checked12293.2,checked12294.2,checked12295.2,checked12296.2,checked12297.2,checked12298.2,checked12299.2,checked12300.2,checked12301.2,checked12302.2,checked12303.2,checked12304.2,checked12305.2,checked12306.2,checked12307.2,checked12308.2,checked12309.2,checked12310.2,checked12311.2,checked12312.2,checked12313.2,checked12314.2,checked12315.2,checked12316.2,checked12317.2,checked12318.2,checked12319.2,checked12320.2,checked12321.2,checked12322.2,checked12323.2,checked12324.2,checked12325.2,checked12326.2,checked12327.2,checked12328.2,checked12329.2,checked12330.2,checked12331.2,checked12332.2,checked12333.2,checked12334.2,checked12335.2,checked12336.2,checked12337.2,checked12338.2,checked12339.2,checked12340.2,checked12341.2,checked12342.2,checked12343.2,checked12344.2,checked12345.2,checked12346.2,checked12347.2,checked12348.2,checked12349.2,checked12350.2,checked12351.2]
  decide
end ArtifactPathRoundDispatchGroup192
