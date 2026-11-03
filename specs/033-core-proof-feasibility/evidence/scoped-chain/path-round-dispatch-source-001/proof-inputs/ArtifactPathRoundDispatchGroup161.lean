import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup161
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10304 : List WordIR.Op := [.bxor 10334 10346]
def bytes10304 : Bytes := ("    let r0000286b: u32 = r0000285e ^ r0000286a;\n" : String).toByteArray.data.toList
theorem checked10304 : bytes10304=statementBytes 10347 (op10304.map lower) ∧ bytes10304.length=48 := by core033_kernel_decide
def op10305 : List WordIR.Op := [.shr 10347 31]
def bytes10305 : Bytes := ("    let r0000286c: u32 = r0000286b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10305 : bytes10305=statementBytes 10348 (op10305.map lower) ∧ bytes10305.length=54 := by core033_kernel_decide
def op10306 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10306 : Bytes := ("    let r0000286d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10306 : bytes10306=statementBytes 10349 (op10306.map lower) ∧ bytes10306.length=41 := by core033_kernel_decide
def op10307 : List WordIR.Op := [.bxor 10348 10349]
def bytes10307 : Bytes := ("    let r0000286e: u32 = r0000286c ^ r0000286d;\n" : String).toByteArray.data.toList
theorem checked10307 : bytes10307=statementBytes 10350 (op10307.map lower) ∧ bytes10307.length=48 := by core033_kernel_decide
def op10308 : List WordIR.Op := [.bnot 10350]
def bytes10308 : Bytes := ("    let r0000286f: u32 = !r0000286e;\n" : String).toByteArray.data.toList
theorem checked10308 : bytes10308=statementBytes 10351 (op10308.map lower) ∧ bytes10308.length=37 := by core033_kernel_decide
def op10309 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10309 : Bytes := ("    let r00002870: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10309 : bytes10309=statementBytes 10352 (op10309.map lower) ∧ bytes10309.length=41 := by core033_kernel_decide
def op10310 : List WordIR.Op := [.badd 10351 10352]
def bytes10310 : Bytes := ("    let r00002871: u32 = r0000286f.wrapping_add(r00002870);\n" : String).toByteArray.data.toList
theorem checked10310 : bytes10310=statementBytes 10353 (op10310.map lower) ∧ bytes10310.length=60 := by core033_kernel_decide
def op10311 : List WordIR.Op := [.band 10353 10146]
def bytes10311 : Bytes := ("    let r00002872: u32 = r00002871 & r000027a2;\n" : String).toByteArray.data.toList
theorem checked10311 : bytes10311=statementBytes 10354 (op10311.map lower) ∧ bytes10311.length=48 := by core033_kernel_decide
def op10312 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10312 : Bytes := ("    let r00002873: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10312 : bytes10312=statementBytes 10355 (op10312.map lower) ∧ bytes10312.length=41 := by core033_kernel_decide
def op10313 : List WordIR.Op := [.bxor 0 10355]
def bytes10313 : Bytes := ("    let r00002874: u32 = r00000000 ^ r00002873;\n" : String).toByteArray.data.toList
theorem checked10313 : bytes10313=statementBytes 10356 (op10313.map lower) ∧ bytes10313.length=48 := by core033_kernel_decide
def op10314 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10314 : Bytes := ("    let r00002875: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10314 : bytes10314=statementBytes 10357 (op10314.map lower) ∧ bytes10314.length=41 := by core033_kernel_decide
def op10315 : List WordIR.Op := [.bnot 10357]
def bytes10315 : Bytes := ("    let r00002876: u32 = !r00002875;\n" : String).toByteArray.data.toList
theorem checked10315 : bytes10315=statementBytes 10358 (op10315.map lower) ∧ bytes10315.length=37 := by core033_kernel_decide
def op10316 : List WordIR.Op := [.band 10356 10358]
def bytes10316 : Bytes := ("    let r00002877: u32 = r00002874 & r00002876;\n" : String).toByteArray.data.toList
theorem checked10316 : bytes10316=statementBytes 10359 (op10316.map lower) ∧ bytes10316.length=48 := by core033_kernel_decide
def op10317 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10317 : Bytes := ("    let r00002878: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10317 : bytes10317=statementBytes 10360 (op10317.map lower) ∧ bytes10317.length=41 := by core033_kernel_decide
def op10318 : List WordIR.Op := [.bxor 0 10360]
def bytes10318 : Bytes := ("    let r00002879: u32 = r00000000 ^ r00002878;\n" : String).toByteArray.data.toList
theorem checked10318 : bytes10318=statementBytes 10361 (op10318.map lower) ∧ bytes10318.length=48 := by core033_kernel_decide
def op10319 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10319 : Bytes := ("    let r0000287a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10319 : bytes10319=statementBytes 10362 (op10319.map lower) ∧ bytes10319.length=41 := by core033_kernel_decide
def op10320 : List WordIR.Op := [.bnot 10362]
def bytes10320 : Bytes := ("    let r0000287b: u32 = !r0000287a;\n" : String).toByteArray.data.toList
theorem checked10320 : bytes10320=statementBytes 10363 (op10320.map lower) ∧ bytes10320.length=37 := by core033_kernel_decide
def op10321 : List WordIR.Op := [.bxor 10361 10363]
def bytes10321 : Bytes := ("    let r0000287c: u32 = r00002879 ^ r0000287b;\n" : String).toByteArray.data.toList
theorem checked10321 : bytes10321=statementBytes 10364 (op10321.map lower) ∧ bytes10321.length=48 := by core033_kernel_decide
def op10322 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10322 : Bytes := ("    let r0000287d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10322 : bytes10322=statementBytes 10365 (op10322.map lower) ∧ bytes10322.length=41 := by core033_kernel_decide
def op10323 : List WordIR.Op := [.bxor 0 10365]
def bytes10323 : Bytes := ("    let r0000287e: u32 = r00000000 ^ r0000287d;\n" : String).toByteArray.data.toList
theorem checked10323 : bytes10323=statementBytes 10366 (op10323.map lower) ∧ bytes10323.length=48 := by core033_kernel_decide
def op10324 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10324 : Bytes := ("    let r0000287f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10324 : bytes10324=statementBytes 10367 (op10324.map lower) ∧ bytes10324.length=41 := by core033_kernel_decide
def op10325 : List WordIR.Op := [.bnot 10367]
def bytes10325 : Bytes := ("    let r00002880: u32 = !r0000287f;\n" : String).toByteArray.data.toList
theorem checked10325 : bytes10325=statementBytes 10368 (op10325.map lower) ∧ bytes10325.length=37 := by core033_kernel_decide
def op10326 : List WordIR.Op := [.badd 10366 10368]
def bytes10326 : Bytes := ("    let r00002881: u32 = r0000287e.wrapping_add(r00002880);\n" : String).toByteArray.data.toList
theorem checked10326 : bytes10326=statementBytes 10369 (op10326.map lower) ∧ bytes10326.length=60 := by core033_kernel_decide
def op10327 : List WordIR.Op := [.bnot 10369]
def bytes10327 : Bytes := ("    let r00002882: u32 = !r00002881;\n" : String).toByteArray.data.toList
theorem checked10327 : bytes10327=statementBytes 10370 (op10327.map lower) ∧ bytes10327.length=37 := by core033_kernel_decide
def op10328 : List WordIR.Op := [.band 10364 10370]
def bytes10328 : Bytes := ("    let r00002883: u32 = r0000287c & r00002882;\n" : String).toByteArray.data.toList
theorem checked10328 : bytes10328=statementBytes 10371 (op10328.map lower) ∧ bytes10328.length=48 := by core033_kernel_decide
def op10329 : List WordIR.Op := [.bxor 10359 10371]
def bytes10329 : Bytes := ("    let r00002884: u32 = r00002877 ^ r00002883;\n" : String).toByteArray.data.toList
theorem checked10329 : bytes10329=statementBytes 10372 (op10329.map lower) ∧ bytes10329.length=48 := by core033_kernel_decide
def op10330 : List WordIR.Op := [.shr 10372 31]
def bytes10330 : Bytes := ("    let r00002885: u32 = r00002884 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10330 : bytes10330=statementBytes 10373 (op10330.map lower) ∧ bytes10330.length=54 := by core033_kernel_decide
def op10331 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10331 : Bytes := ("    let r00002886: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10331 : bytes10331=statementBytes 10374 (op10331.map lower) ∧ bytes10331.length=41 := by core033_kernel_decide
def op10332 : List WordIR.Op := [.bxor 10373 10374]
def bytes10332 : Bytes := ("    let r00002887: u32 = r00002885 ^ r00002886;\n" : String).toByteArray.data.toList
theorem checked10332 : bytes10332=statementBytes 10375 (op10332.map lower) ∧ bytes10332.length=48 := by core033_kernel_decide
def op10333 : List WordIR.Op := [.bnot 10375]
def bytes10333 : Bytes := ("    let r00002888: u32 = !r00002887;\n" : String).toByteArray.data.toList
theorem checked10333 : bytes10333=statementBytes 10376 (op10333.map lower) ∧ bytes10333.length=37 := by core033_kernel_decide
def op10334 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10334 : Bytes := ("    let r00002889: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10334 : bytes10334=statementBytes 10377 (op10334.map lower) ∧ bytes10334.length=41 := by core033_kernel_decide
def op10335 : List WordIR.Op := [.badd 10376 10377]
def bytes10335 : Bytes := ("    let r0000288a: u32 = r00002888.wrapping_add(r00002889);\n" : String).toByteArray.data.toList
theorem checked10335 : bytes10335=statementBytes 10378 (op10335.map lower) ∧ bytes10335.length=60 := by core033_kernel_decide
def op10336 : List WordIR.Op := [.bnot 10378]
def bytes10336 : Bytes := ("    let r0000288b: u32 = !r0000288a;\n" : String).toByteArray.data.toList
theorem checked10336 : bytes10336=statementBytes 10379 (op10336.map lower) ∧ bytes10336.length=37 := by core033_kernel_decide
def op10337 : List WordIR.Op := [.band 10379 118]
def bytes10337 : Bytes := ("    let r0000288c: u32 = r0000288b & r00000076;\n" : String).toByteArray.data.toList
theorem checked10337 : bytes10337=statementBytes 10380 (op10337.map lower) ∧ bytes10337.length=48 := by core033_kernel_decide
def op10338 : List WordIR.Op := [.bxor 10354 10380]
def bytes10338 : Bytes := ("    let r0000288d: u32 = r00002872 ^ r0000288c;\n" : String).toByteArray.data.toList
theorem checked10338 : bytes10338=statementBytes 10381 (op10338.map lower) ∧ bytes10338.length=48 := by core033_kernel_decide
def op10339 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10339 : Bytes := ("    let r0000288e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10339 : bytes10339=statementBytes 10382 (op10339.map lower) ∧ bytes10339.length=41 := by core033_kernel_decide
def op10340 : List WordIR.Op := [.bxor 0 10382]
def bytes10340 : Bytes := ("    let r0000288f: u32 = r00000000 ^ r0000288e;\n" : String).toByteArray.data.toList
theorem checked10340 : bytes10340=statementBytes 10383 (op10340.map lower) ∧ bytes10340.length=48 := by core033_kernel_decide
def op10341 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10341 : Bytes := ("    let r00002890: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10341 : bytes10341=statementBytes 10384 (op10341.map lower) ∧ bytes10341.length=41 := by core033_kernel_decide
def op10342 : List WordIR.Op := [.bnot 10384]
def bytes10342 : Bytes := ("    let r00002891: u32 = !r00002890;\n" : String).toByteArray.data.toList
theorem checked10342 : bytes10342=statementBytes 10385 (op10342.map lower) ∧ bytes10342.length=37 := by core033_kernel_decide
def op10343 : List WordIR.Op := [.band 10383 10385]
def bytes10343 : Bytes := ("    let r00002892: u32 = r0000288f & r00002891;\n" : String).toByteArray.data.toList
theorem checked10343 : bytes10343=statementBytes 10386 (op10343.map lower) ∧ bytes10343.length=48 := by core033_kernel_decide
def op10344 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10344 : Bytes := ("    let r00002893: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10344 : bytes10344=statementBytes 10387 (op10344.map lower) ∧ bytes10344.length=41 := by core033_kernel_decide
def op10345 : List WordIR.Op := [.bxor 0 10387]
def bytes10345 : Bytes := ("    let r00002894: u32 = r00000000 ^ r00002893;\n" : String).toByteArray.data.toList
theorem checked10345 : bytes10345=statementBytes 10388 (op10345.map lower) ∧ bytes10345.length=48 := by core033_kernel_decide
def op10346 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10346 : Bytes := ("    let r00002895: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10346 : bytes10346=statementBytes 10389 (op10346.map lower) ∧ bytes10346.length=41 := by core033_kernel_decide
def op10347 : List WordIR.Op := [.bnot 10389]
def bytes10347 : Bytes := ("    let r00002896: u32 = !r00002895;\n" : String).toByteArray.data.toList
theorem checked10347 : bytes10347=statementBytes 10390 (op10347.map lower) ∧ bytes10347.length=37 := by core033_kernel_decide
def op10348 : List WordIR.Op := [.bxor 10388 10390]
def bytes10348 : Bytes := ("    let r00002897: u32 = r00002894 ^ r00002896;\n" : String).toByteArray.data.toList
theorem checked10348 : bytes10348=statementBytes 10391 (op10348.map lower) ∧ bytes10348.length=48 := by core033_kernel_decide
def op10349 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10349 : Bytes := ("    let r00002898: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10349 : bytes10349=statementBytes 10392 (op10349.map lower) ∧ bytes10349.length=41 := by core033_kernel_decide
def op10350 : List WordIR.Op := [.bxor 0 10392]
def bytes10350 : Bytes := ("    let r00002899: u32 = r00000000 ^ r00002898;\n" : String).toByteArray.data.toList
theorem checked10350 : bytes10350=statementBytes 10393 (op10350.map lower) ∧ bytes10350.length=48 := by core033_kernel_decide
def op10351 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10351 : Bytes := ("    let r0000289a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10351 : bytes10351=statementBytes 10394 (op10351.map lower) ∧ bytes10351.length=41 := by core033_kernel_decide
def op10352 : List WordIR.Op := [.bnot 10394]
def bytes10352 : Bytes := ("    let r0000289b: u32 = !r0000289a;\n" : String).toByteArray.data.toList
theorem checked10352 : bytes10352=statementBytes 10395 (op10352.map lower) ∧ bytes10352.length=37 := by core033_kernel_decide
def op10353 : List WordIR.Op := [.badd 10393 10395]
def bytes10353 : Bytes := ("    let r0000289c: u32 = r00002899.wrapping_add(r0000289b);\n" : String).toByteArray.data.toList
theorem checked10353 : bytes10353=statementBytes 10396 (op10353.map lower) ∧ bytes10353.length=60 := by core033_kernel_decide
def op10354 : List WordIR.Op := [.bnot 10396]
def bytes10354 : Bytes := ("    let r0000289d: u32 = !r0000289c;\n" : String).toByteArray.data.toList
theorem checked10354 : bytes10354=statementBytes 10397 (op10354.map lower) ∧ bytes10354.length=37 := by core033_kernel_decide
def op10355 : List WordIR.Op := [.band 10391 10397]
def bytes10355 : Bytes := ("    let r0000289e: u32 = r00002897 & r0000289d;\n" : String).toByteArray.data.toList
theorem checked10355 : bytes10355=statementBytes 10398 (op10355.map lower) ∧ bytes10355.length=48 := by core033_kernel_decide
def op10356 : List WordIR.Op := [.bxor 10386 10398]
def bytes10356 : Bytes := ("    let r0000289f: u32 = r00002892 ^ r0000289e;\n" : String).toByteArray.data.toList
theorem checked10356 : bytes10356=statementBytes 10399 (op10356.map lower) ∧ bytes10356.length=48 := by core033_kernel_decide
def op10357 : List WordIR.Op := [.shr 10399 31]
def bytes10357 : Bytes := ("    let r000028a0: u32 = r0000289f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10357 : bytes10357=statementBytes 10400 (op10357.map lower) ∧ bytes10357.length=54 := by core033_kernel_decide
def op10358 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10358 : Bytes := ("    let r000028a1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10358 : bytes10358=statementBytes 10401 (op10358.map lower) ∧ bytes10358.length=41 := by core033_kernel_decide
def op10359 : List WordIR.Op := [.bxor 10400 10401]
def bytes10359 : Bytes := ("    let r000028a2: u32 = r000028a0 ^ r000028a1;\n" : String).toByteArray.data.toList
theorem checked10359 : bytes10359=statementBytes 10402 (op10359.map lower) ∧ bytes10359.length=48 := by core033_kernel_decide
def op10360 : List WordIR.Op := [.bnot 10402]
def bytes10360 : Bytes := ("    let r000028a3: u32 = !r000028a2;\n" : String).toByteArray.data.toList
theorem checked10360 : bytes10360=statementBytes 10403 (op10360.map lower) ∧ bytes10360.length=37 := by core033_kernel_decide
def op10361 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10361 : Bytes := ("    let r000028a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10361 : bytes10361=statementBytes 10404 (op10361.map lower) ∧ bytes10361.length=41 := by core033_kernel_decide
def op10362 : List WordIR.Op := [.badd 10403 10404]
def bytes10362 : Bytes := ("    let r000028a5: u32 = r000028a3.wrapping_add(r000028a4);\n" : String).toByteArray.data.toList
theorem checked10362 : bytes10362=statementBytes 10405 (op10362.map lower) ∧ bytes10362.length=60 := by core033_kernel_decide
def op10363 : List WordIR.Op := [.band 10405 9450]
def bytes10363 : Bytes := ("    let r000028a6: u32 = r000028a5 & r000024ea;\n" : String).toByteArray.data.toList
theorem checked10363 : bytes10363=statementBytes 10406 (op10363.map lower) ∧ bytes10363.length=48 := by core033_kernel_decide
def op10364 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10364 : Bytes := ("    let r000028a7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10364 : bytes10364=statementBytes 10407 (op10364.map lower) ∧ bytes10364.length=41 := by core033_kernel_decide
def op10365 : List WordIR.Op := [.bxor 0 10407]
def bytes10365 : Bytes := ("    let r000028a8: u32 = r00000000 ^ r000028a7;\n" : String).toByteArray.data.toList
theorem checked10365 : bytes10365=statementBytes 10408 (op10365.map lower) ∧ bytes10365.length=48 := by core033_kernel_decide
def op10366 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10366 : Bytes := ("    let r000028a9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10366 : bytes10366=statementBytes 10409 (op10366.map lower) ∧ bytes10366.length=41 := by core033_kernel_decide
def op10367 : List WordIR.Op := [.bnot 10409]
def bytes10367 : Bytes := ("    let r000028aa: u32 = !r000028a9;\n" : String).toByteArray.data.toList
theorem checked10367 : bytes10367=statementBytes 10410 (op10367.map lower) ∧ bytes10367.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10304,op10305,op10306,op10307,op10308,op10309,op10310,op10311,op10312,op10313,op10314,op10315,op10316,op10317,op10318,op10319,op10320,op10321,op10322,op10323,op10324,op10325,op10326,op10327,op10328,op10329,op10330,op10331,op10332,op10333,op10334,op10335,op10336,op10337,op10338,op10339,op10340,op10341,op10342,op10343,op10344,op10345,op10346,op10347,op10348,op10349,op10350,op10351,op10352,op10353,op10354,op10355,op10356,op10357,op10358,op10359,op10360,op10361,op10362,op10363,op10364,op10365,op10366,op10367]
def chunks : List Bytes := [bytes10304,bytes10305,bytes10306,bytes10307,bytes10308,bytes10309,bytes10310,bytes10311,bytes10312,bytes10313,bytes10314,bytes10315,bytes10316,bytes10317,bytes10318,bytes10319,bytes10320,bytes10321,bytes10322,bytes10323,bytes10324,bytes10325,bytes10326,bytes10327,bytes10328,bytes10329,bytes10330,bytes10331,bytes10332,bytes10333,bytes10334,bytes10335,bytes10336,bytes10337,bytes10338,bytes10339,bytes10340,bytes10341,bytes10342,bytes10343,bytes10344,bytes10345,bytes10346,bytes10347,bytes10348,bytes10349,bytes10350,bytes10351,bytes10352,bytes10353,bytes10354,bytes10355,bytes10356,bytes10357,bytes10358,bytes10359,bytes10360,bytes10361,bytes10362,bytes10363,bytes10364,bytes10365,bytes10366,bytes10367]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10347 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10304.1 (.cons _ _ _ _ _ checked10305.1 (.cons _ _ _ _ _ checked10306.1 (.cons _ _ _ _ _ checked10307.1 (.cons _ _ _ _ _ checked10308.1 (.cons _ _ _ _ _ checked10309.1 (.cons _ _ _ _ _ checked10310.1 (.cons _ _ _ _ _ checked10311.1 (.cons _ _ _ _ _ checked10312.1 (.cons _ _ _ _ _ checked10313.1 (.cons _ _ _ _ _ checked10314.1 (.cons _ _ _ _ _ checked10315.1 (.cons _ _ _ _ _ checked10316.1 (.cons _ _ _ _ _ checked10317.1 (.cons _ _ _ _ _ checked10318.1 (.cons _ _ _ _ _ checked10319.1 (.cons _ _ _ _ _ checked10320.1 (.cons _ _ _ _ _ checked10321.1 (.cons _ _ _ _ _ checked10322.1 (.cons _ _ _ _ _ checked10323.1 (.cons _ _ _ _ _ checked10324.1 (.cons _ _ _ _ _ checked10325.1 (.cons _ _ _ _ _ checked10326.1 (.cons _ _ _ _ _ checked10327.1 (.cons _ _ _ _ _ checked10328.1 (.cons _ _ _ _ _ checked10329.1 (.cons _ _ _ _ _ checked10330.1 (.cons _ _ _ _ _ checked10331.1 (.cons _ _ _ _ _ checked10332.1 (.cons _ _ _ _ _ checked10333.1 (.cons _ _ _ _ _ checked10334.1 (.cons _ _ _ _ _ checked10335.1 (.cons _ _ _ _ _ checked10336.1 (.cons _ _ _ _ _ checked10337.1 (.cons _ _ _ _ _ checked10338.1 (.cons _ _ _ _ _ checked10339.1 (.cons _ _ _ _ _ checked10340.1 (.cons _ _ _ _ _ checked10341.1 (.cons _ _ _ _ _ checked10342.1 (.cons _ _ _ _ _ checked10343.1 (.cons _ _ _ _ _ checked10344.1 (.cons _ _ _ _ _ checked10345.1 (.cons _ _ _ _ _ checked10346.1 (.cons _ _ _ _ _ checked10347.1 (.cons _ _ _ _ _ checked10348.1 (.cons _ _ _ _ _ checked10349.1 (.cons _ _ _ _ _ checked10350.1 (.cons _ _ _ _ _ checked10351.1 (.cons _ _ _ _ _ checked10352.1 (.cons _ _ _ _ _ checked10353.1 (.cons _ _ _ _ _ checked10354.1 (.cons _ _ _ _ _ checked10355.1 (.cons _ _ _ _ _ checked10356.1 (.cons _ _ _ _ _ checked10357.1 (.cons _ _ _ _ _ checked10358.1 (.cons _ _ _ _ _ checked10359.1 (.cons _ _ _ _ _ checked10360.1 (.cons _ _ _ _ _ checked10361.1 (.cons _ _ _ _ _ checked10362.1 (.cons _ _ _ _ _ checked10363.1 (.cons _ _ _ _ _ checked10364.1 (.cons _ _ _ _ _ checked10365.1 (.cons _ _ _ _ _ checked10366.1 (.cons _ _ _ _ _ checked10367.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10347 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10304.2,checked10305.2,checked10306.2,checked10307.2,checked10308.2,checked10309.2,checked10310.2,checked10311.2,checked10312.2,checked10313.2,checked10314.2,checked10315.2,checked10316.2,checked10317.2,checked10318.2,checked10319.2,checked10320.2,checked10321.2,checked10322.2,checked10323.2,checked10324.2,checked10325.2,checked10326.2,checked10327.2,checked10328.2,checked10329.2,checked10330.2,checked10331.2,checked10332.2,checked10333.2,checked10334.2,checked10335.2,checked10336.2,checked10337.2,checked10338.2,checked10339.2,checked10340.2,checked10341.2,checked10342.2,checked10343.2,checked10344.2,checked10345.2,checked10346.2,checked10347.2,checked10348.2,checked10349.2,checked10350.2,checked10351.2,checked10352.2,checked10353.2,checked10354.2,checked10355.2,checked10356.2,checked10357.2,checked10358.2,checked10359.2,checked10360.2,checked10361.2,checked10362.2,checked10363.2,checked10364.2,checked10365.2,checked10366.2,checked10367.2]
  decide
end ArtifactPathRoundDispatchGroup161
