import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup160
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10240 : List WordIR.Op := [.bxor 10355 10357]
def bytes10240 : Bytes := ("    let r00002876: u32 = r00002873 ^ r00002875;\n" : String).toByteArray.data.toList
theorem checked10240 : bytes10240=statementBytes 10358 (op10240.map lower) ∧ bytes10240.length=48 := by core033_kernel_decide
def op10241 : List WordIR.Op := [.badd 10354 10358]
def bytes10241 : Bytes := ("    let r00002877: u32 = r00002872.wrapping_add(r00002876);\n" : String).toByteArray.data.toList
theorem checked10241 : bytes10241=statementBytes 10359 (op10241.map lower) ∧ bytes10241.length=60 := by core033_kernel_decide
def op10242 : List WordIR.Op := [.literal (BitVec.ofNat 32 2361852424)]
def bytes10242 : Bytes := ("    let r00002878: u32 = 0x8cc70208_u32;\n" : String).toByteArray.data.toList
theorem checked10242 : bytes10242=statementBytes 10360 (op10242.map lower) ∧ bytes10242.length=41 := by core033_kernel_decide
def op10243 : List WordIR.Op := [.badd 10359 10360]
def bytes10243 : Bytes := ("    let r00002879: u32 = r00002877.wrapping_add(r00002878);\n" : String).toByteArray.data.toList
theorem checked10243 : bytes10243=statementBytes 10361 (op10243.map lower) ∧ bytes10243.length=60 := by core033_kernel_decide
def op10244 : List WordIR.Op := [.badd 10361 8703]
def bytes10244 : Bytes := ("    let r0000287a: u32 = r00002879.wrapping_add(r000021ff);\n" : String).toByteArray.data.toList
theorem checked10244 : bytes10244=statementBytes 10362 (op10244.map lower) ∧ bytes10244.length=60 := by core033_kernel_decide
def op10245 : List WordIR.Op := [.rotr 10347 2]
def bytes10245 : Bytes := ("    let r0000287b: u32 = r0000286b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked10245 : bytes10245=statementBytes 10363 (op10245.map lower) ∧ bytes10245.length=65 := by core033_kernel_decide
def op10246 : List WordIR.Op := [.rotr 10347 13]
def bytes10246 : Bytes := ("    let r0000287c: u32 = r0000286b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked10246 : bytes10246=statementBytes 10364 (op10246.map lower) ∧ bytes10246.length=65 := by core033_kernel_decide
def op10247 : List WordIR.Op := [.bxor 10363 10364]
def bytes10247 : Bytes := ("    let r0000287d: u32 = r0000287b ^ r0000287c;\n" : String).toByteArray.data.toList
theorem checked10247 : bytes10247=statementBytes 10365 (op10247.map lower) ∧ bytes10247.length=48 := by core033_kernel_decide
def op10248 : List WordIR.Op := [.rotr 10347 22]
def bytes10248 : Bytes := ("    let r0000287e: u32 = r0000286b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked10248 : bytes10248=statementBytes 10366 (op10248.map lower) ∧ bytes10248.length=65 := by core033_kernel_decide
def op10249 : List WordIR.Op := [.bxor 10365 10366]
def bytes10249 : Bytes := ("    let r0000287f: u32 = r0000287d ^ r0000287e;\n" : String).toByteArray.data.toList
theorem checked10249 : bytes10249=statementBytes 10367 (op10249.map lower) ∧ bytes10249.length=48 := by core033_kernel_decide
def op10250 : List WordIR.Op := [.band 10347 10320]
def bytes10250 : Bytes := ("    let r00002880: u32 = r0000286b & r00002850;\n" : String).toByteArray.data.toList
theorem checked10250 : bytes10250=statementBytes 10368 (op10250.map lower) ∧ bytes10250.length=48 := by core033_kernel_decide
def op10251 : List WordIR.Op := [.band 10347 10293]
def bytes10251 : Bytes := ("    let r00002881: u32 = r0000286b & r00002835;\n" : String).toByteArray.data.toList
theorem checked10251 : bytes10251=statementBytes 10369 (op10251.map lower) ∧ bytes10251.length=48 := by core033_kernel_decide
def op10252 : List WordIR.Op := [.bxor 10368 10369]
def bytes10252 : Bytes := ("    let r00002882: u32 = r00002880 ^ r00002881;\n" : String).toByteArray.data.toList
theorem checked10252 : bytes10252=statementBytes 10370 (op10252.map lower) ∧ bytes10252.length=48 := by core033_kernel_decide
def op10253 : List WordIR.Op := [.band 10320 10293]
def bytes10253 : Bytes := ("    let r00002883: u32 = r00002850 & r00002835;\n" : String).toByteArray.data.toList
theorem checked10253 : bytes10253=statementBytes 10371 (op10253.map lower) ∧ bytes10253.length=48 := by core033_kernel_decide
def op10254 : List WordIR.Op := [.bxor 10370 10371]
def bytes10254 : Bytes := ("    let r00002884: u32 = r00002882 ^ r00002883;\n" : String).toByteArray.data.toList
theorem checked10254 : bytes10254=statementBytes 10372 (op10254.map lower) ∧ bytes10254.length=48 := by core033_kernel_decide
def op10255 : List WordIR.Op := [.badd 10367 10372]
def bytes10255 : Bytes := ("    let r00002885: u32 = r0000287f.wrapping_add(r00002884);\n" : String).toByteArray.data.toList
theorem checked10255 : bytes10255=statementBytes 10373 (op10255.map lower) ∧ bytes10255.length=60 := by core033_kernel_decide
def op10256 : List WordIR.Op := [.badd 10362 10373]
def bytes10256 : Bytes := ("    let r00002886: u32 = r0000287a.wrapping_add(r00002885);\n" : String).toByteArray.data.toList
theorem checked10256 : bytes10256=statementBytes 10374 (op10256.map lower) ∧ bytes10256.length=60 := by core033_kernel_decide
def op10257 : List WordIR.Op := [.badd 10266 10362]
def bytes10257 : Bytes := ("    let r00002887: u32 = r0000281a.wrapping_add(r0000287a);\n" : String).toByteArray.data.toList
theorem checked10257 : bytes10257=statementBytes 10375 (op10257.map lower) ∧ bytes10257.length=60 := by core033_kernel_decide
def op10258 : List WordIR.Op := [.rotr 10375 6]
def bytes10258 : Bytes := ("    let r00002888: u32 = r00002887.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked10258 : bytes10258=statementBytes 10376 (op10258.map lower) ∧ bytes10258.length=65 := by core033_kernel_decide
def op10259 : List WordIR.Op := [.rotr 10375 11]
def bytes10259 : Bytes := ("    let r00002889: u32 = r00002887.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked10259 : bytes10259=statementBytes 10377 (op10259.map lower) ∧ bytes10259.length=65 := by core033_kernel_decide
def op10260 : List WordIR.Op := [.bxor 10376 10377]
def bytes10260 : Bytes := ("    let r0000288a: u32 = r00002888 ^ r00002889;\n" : String).toByteArray.data.toList
theorem checked10260 : bytes10260=statementBytes 10378 (op10260.map lower) ∧ bytes10260.length=48 := by core033_kernel_decide
def op10261 : List WordIR.Op := [.rotr 10375 25]
def bytes10261 : Bytes := ("    let r0000288b: u32 = r00002887.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked10261 : bytes10261=statementBytes 10379 (op10261.map lower) ∧ bytes10261.length=65 := by core033_kernel_decide
def op10262 : List WordIR.Op := [.bxor 10378 10379]
def bytes10262 : Bytes := ("    let r0000288c: u32 = r0000288a ^ r0000288b;\n" : String).toByteArray.data.toList
theorem checked10262 : bytes10262=statementBytes 10380 (op10262.map lower) ∧ bytes10262.length=48 := by core033_kernel_decide
def op10263 : List WordIR.Op := [.badd 10294 10380]
def bytes10263 : Bytes := ("    let r0000288d: u32 = r00002836.wrapping_add(r0000288c);\n" : String).toByteArray.data.toList
theorem checked10263 : bytes10263=statementBytes 10381 (op10263.map lower) ∧ bytes10263.length=60 := by core033_kernel_decide
def op10264 : List WordIR.Op := [.band 10375 10348]
def bytes10264 : Bytes := ("    let r0000288e: u32 = r00002887 & r0000286c;\n" : String).toByteArray.data.toList
theorem checked10264 : bytes10264=statementBytes 10382 (op10264.map lower) ∧ bytes10264.length=48 := by core033_kernel_decide
def op10265 : List WordIR.Op := [.bnot 10375]
def bytes10265 : Bytes := ("    let r0000288f: u32 = !r00002887;\n" : String).toByteArray.data.toList
theorem checked10265 : bytes10265=statementBytes 10383 (op10265.map lower) ∧ bytes10265.length=37 := by core033_kernel_decide
def op10266 : List WordIR.Op := [.band 10383 10321]
def bytes10266 : Bytes := ("    let r00002890: u32 = r0000288f & r00002851;\n" : String).toByteArray.data.toList
theorem checked10266 : bytes10266=statementBytes 10384 (op10266.map lower) ∧ bytes10266.length=48 := by core033_kernel_decide
def op10267 : List WordIR.Op := [.bxor 10382 10384]
def bytes10267 : Bytes := ("    let r00002891: u32 = r0000288e ^ r00002890;\n" : String).toByteArray.data.toList
theorem checked10267 : bytes10267=statementBytes 10385 (op10267.map lower) ∧ bytes10267.length=48 := by core033_kernel_decide
def op10268 : List WordIR.Op := [.badd 10381 10385]
def bytes10268 : Bytes := ("    let r00002892: u32 = r0000288d.wrapping_add(r00002891);\n" : String).toByteArray.data.toList
theorem checked10268 : bytes10268=statementBytes 10386 (op10268.map lower) ∧ bytes10268.length=60 := by core033_kernel_decide
def op10269 : List WordIR.Op := [.literal (BitVec.ofNat 32 2428436474)]
def bytes10269 : Bytes := ("    let r00002893: u32 = 0x90befffa_u32;\n" : String).toByteArray.data.toList
theorem checked10269 : bytes10269=statementBytes 10387 (op10269.map lower) ∧ bytes10269.length=41 := by core033_kernel_decide
def op10270 : List WordIR.Op := [.badd 10386 10387]
def bytes10270 : Bytes := ("    let r00002894: u32 = r00002892.wrapping_add(r00002893);\n" : String).toByteArray.data.toList
theorem checked10270 : bytes10270=statementBytes 10388 (op10270.map lower) ∧ bytes10270.length=60 := by core033_kernel_decide
def op10271 : List WordIR.Op := [.badd 10388 8716]
def bytes10271 : Bytes := ("    let r00002895: u32 = r00002894.wrapping_add(r0000220c);\n" : String).toByteArray.data.toList
theorem checked10271 : bytes10271=statementBytes 10389 (op10271.map lower) ∧ bytes10271.length=60 := by core033_kernel_decide
def op10272 : List WordIR.Op := [.rotr 10374 2]
def bytes10272 : Bytes := ("    let r00002896: u32 = r00002886.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked10272 : bytes10272=statementBytes 10390 (op10272.map lower) ∧ bytes10272.length=65 := by core033_kernel_decide
def op10273 : List WordIR.Op := [.rotr 10374 13]
def bytes10273 : Bytes := ("    let r00002897: u32 = r00002886.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked10273 : bytes10273=statementBytes 10391 (op10273.map lower) ∧ bytes10273.length=65 := by core033_kernel_decide
def op10274 : List WordIR.Op := [.bxor 10390 10391]
def bytes10274 : Bytes := ("    let r00002898: u32 = r00002896 ^ r00002897;\n" : String).toByteArray.data.toList
theorem checked10274 : bytes10274=statementBytes 10392 (op10274.map lower) ∧ bytes10274.length=48 := by core033_kernel_decide
def op10275 : List WordIR.Op := [.rotr 10374 22]
def bytes10275 : Bytes := ("    let r00002899: u32 = r00002886.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked10275 : bytes10275=statementBytes 10393 (op10275.map lower) ∧ bytes10275.length=65 := by core033_kernel_decide
def op10276 : List WordIR.Op := [.bxor 10392 10393]
def bytes10276 : Bytes := ("    let r0000289a: u32 = r00002898 ^ r00002899;\n" : String).toByteArray.data.toList
theorem checked10276 : bytes10276=statementBytes 10394 (op10276.map lower) ∧ bytes10276.length=48 := by core033_kernel_decide
def op10277 : List WordIR.Op := [.band 10374 10347]
def bytes10277 : Bytes := ("    let r0000289b: u32 = r00002886 & r0000286b;\n" : String).toByteArray.data.toList
theorem checked10277 : bytes10277=statementBytes 10395 (op10277.map lower) ∧ bytes10277.length=48 := by core033_kernel_decide
def op10278 : List WordIR.Op := [.band 10374 10320]
def bytes10278 : Bytes := ("    let r0000289c: u32 = r00002886 & r00002850;\n" : String).toByteArray.data.toList
theorem checked10278 : bytes10278=statementBytes 10396 (op10278.map lower) ∧ bytes10278.length=48 := by core033_kernel_decide
def op10279 : List WordIR.Op := [.bxor 10395 10396]
def bytes10279 : Bytes := ("    let r0000289d: u32 = r0000289b ^ r0000289c;\n" : String).toByteArray.data.toList
theorem checked10279 : bytes10279=statementBytes 10397 (op10279.map lower) ∧ bytes10279.length=48 := by core033_kernel_decide
def op10280 : List WordIR.Op := [.band 10347 10320]
def bytes10280 : Bytes := ("    let r0000289e: u32 = r0000286b & r00002850;\n" : String).toByteArray.data.toList
theorem checked10280 : bytes10280=statementBytes 10398 (op10280.map lower) ∧ bytes10280.length=48 := by core033_kernel_decide
def op10281 : List WordIR.Op := [.bxor 10397 10398]
def bytes10281 : Bytes := ("    let r0000289f: u32 = r0000289d ^ r0000289e;\n" : String).toByteArray.data.toList
theorem checked10281 : bytes10281=statementBytes 10399 (op10281.map lower) ∧ bytes10281.length=48 := by core033_kernel_decide
def op10282 : List WordIR.Op := [.badd 10394 10399]
def bytes10282 : Bytes := ("    let r000028a0: u32 = r0000289a.wrapping_add(r0000289f);\n" : String).toByteArray.data.toList
theorem checked10282 : bytes10282=statementBytes 10400 (op10282.map lower) ∧ bytes10282.length=60 := by core033_kernel_decide
def op10283 : List WordIR.Op := [.badd 10389 10400]
def bytes10283 : Bytes := ("    let r000028a1: u32 = r00002895.wrapping_add(r000028a0);\n" : String).toByteArray.data.toList
theorem checked10283 : bytes10283=statementBytes 10401 (op10283.map lower) ∧ bytes10283.length=60 := by core033_kernel_decide
def op10284 : List WordIR.Op := [.badd 10293 10389]
def bytes10284 : Bytes := ("    let r000028a2: u32 = r00002835.wrapping_add(r00002895);\n" : String).toByteArray.data.toList
theorem checked10284 : bytes10284=statementBytes 10402 (op10284.map lower) ∧ bytes10284.length=60 := by core033_kernel_decide
def op10285 : List WordIR.Op := [.rotr 10402 6]
def bytes10285 : Bytes := ("    let r000028a3: u32 = r000028a2.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked10285 : bytes10285=statementBytes 10403 (op10285.map lower) ∧ bytes10285.length=65 := by core033_kernel_decide
def op10286 : List WordIR.Op := [.rotr 10402 11]
def bytes10286 : Bytes := ("    let r000028a4: u32 = r000028a2.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked10286 : bytes10286=statementBytes 10404 (op10286.map lower) ∧ bytes10286.length=65 := by core033_kernel_decide
def op10287 : List WordIR.Op := [.bxor 10403 10404]
def bytes10287 : Bytes := ("    let r000028a5: u32 = r000028a3 ^ r000028a4;\n" : String).toByteArray.data.toList
theorem checked10287 : bytes10287=statementBytes 10405 (op10287.map lower) ∧ bytes10287.length=48 := by core033_kernel_decide
def op10288 : List WordIR.Op := [.rotr 10402 25]
def bytes10288 : Bytes := ("    let r000028a6: u32 = r000028a2.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked10288 : bytes10288=statementBytes 10406 (op10288.map lower) ∧ bytes10288.length=65 := by core033_kernel_decide
def op10289 : List WordIR.Op := [.bxor 10405 10406]
def bytes10289 : Bytes := ("    let r000028a7: u32 = r000028a5 ^ r000028a6;\n" : String).toByteArray.data.toList
theorem checked10289 : bytes10289=statementBytes 10407 (op10289.map lower) ∧ bytes10289.length=48 := by core033_kernel_decide
def op10290 : List WordIR.Op := [.badd 10321 10407]
def bytes10290 : Bytes := ("    let r000028a8: u32 = r00002851.wrapping_add(r000028a7);\n" : String).toByteArray.data.toList
theorem checked10290 : bytes10290=statementBytes 10408 (op10290.map lower) ∧ bytes10290.length=60 := by core033_kernel_decide
def op10291 : List WordIR.Op := [.band 10402 10375]
def bytes10291 : Bytes := ("    let r000028a9: u32 = r000028a2 & r00002887;\n" : String).toByteArray.data.toList
theorem checked10291 : bytes10291=statementBytes 10409 (op10291.map lower) ∧ bytes10291.length=48 := by core033_kernel_decide
def op10292 : List WordIR.Op := [.bnot 10402]
def bytes10292 : Bytes := ("    let r000028aa: u32 = !r000028a2;\n" : String).toByteArray.data.toList
theorem checked10292 : bytes10292=statementBytes 10410 (op10292.map lower) ∧ bytes10292.length=37 := by core033_kernel_decide
def op10293 : List WordIR.Op := [.band 10410 10348]
def bytes10293 : Bytes := ("    let r000028ab: u32 = r000028aa & r0000286c;\n" : String).toByteArray.data.toList
theorem checked10293 : bytes10293=statementBytes 10411 (op10293.map lower) ∧ bytes10293.length=48 := by core033_kernel_decide
def op10294 : List WordIR.Op := [.bxor 10409 10411]
def bytes10294 : Bytes := ("    let r000028ac: u32 = r000028a9 ^ r000028ab;\n" : String).toByteArray.data.toList
theorem checked10294 : bytes10294=statementBytes 10412 (op10294.map lower) ∧ bytes10294.length=48 := by core033_kernel_decide
def op10295 : List WordIR.Op := [.badd 10408 10412]
def bytes10295 : Bytes := ("    let r000028ad: u32 = r000028a8.wrapping_add(r000028ac);\n" : String).toByteArray.data.toList
theorem checked10295 : bytes10295=statementBytes 10413 (op10295.map lower) ∧ bytes10295.length=60 := by core033_kernel_decide
def op10296 : List WordIR.Op := [.literal (BitVec.ofNat 32 2756734187)]
def bytes10296 : Bytes := ("    let r000028ae: u32 = 0xa4506ceb_u32;\n" : String).toByteArray.data.toList
theorem checked10296 : bytes10296=statementBytes 10414 (op10296.map lower) ∧ bytes10296.length=41 := by core033_kernel_decide
def op10297 : List WordIR.Op := [.badd 10413 10414]
def bytes10297 : Bytes := ("    let r000028af: u32 = r000028ad.wrapping_add(r000028ae);\n" : String).toByteArray.data.toList
theorem checked10297 : bytes10297=statementBytes 10415 (op10297.map lower) ∧ bytes10297.length=60 := by core033_kernel_decide
def op10298 : List WordIR.Op := [.badd 10415 8729]
def bytes10298 : Bytes := ("    let r000028b0: u32 = r000028af.wrapping_add(r00002219);\n" : String).toByteArray.data.toList
theorem checked10298 : bytes10298=statementBytes 10416 (op10298.map lower) ∧ bytes10298.length=60 := by core033_kernel_decide
def op10299 : List WordIR.Op := [.rotr 10401 2]
def bytes10299 : Bytes := ("    let r000028b1: u32 = r000028a1.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked10299 : bytes10299=statementBytes 10417 (op10299.map lower) ∧ bytes10299.length=65 := by core033_kernel_decide
def op10300 : List WordIR.Op := [.rotr 10401 13]
def bytes10300 : Bytes := ("    let r000028b2: u32 = r000028a1.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked10300 : bytes10300=statementBytes 10418 (op10300.map lower) ∧ bytes10300.length=65 := by core033_kernel_decide
def op10301 : List WordIR.Op := [.bxor 10417 10418]
def bytes10301 : Bytes := ("    let r000028b3: u32 = r000028b1 ^ r000028b2;\n" : String).toByteArray.data.toList
theorem checked10301 : bytes10301=statementBytes 10419 (op10301.map lower) ∧ bytes10301.length=48 := by core033_kernel_decide
def op10302 : List WordIR.Op := [.rotr 10401 22]
def bytes10302 : Bytes := ("    let r000028b4: u32 = r000028a1.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked10302 : bytes10302=statementBytes 10420 (op10302.map lower) ∧ bytes10302.length=65 := by core033_kernel_decide
def op10303 : List WordIR.Op := [.bxor 10419 10420]
def bytes10303 : Bytes := ("    let r000028b5: u32 = r000028b3 ^ r000028b4;\n" : String).toByteArray.data.toList
theorem checked10303 : bytes10303=statementBytes 10421 (op10303.map lower) ∧ bytes10303.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10240,op10241,op10242,op10243,op10244,op10245,op10246,op10247,op10248,op10249,op10250,op10251,op10252,op10253,op10254,op10255,op10256,op10257,op10258,op10259,op10260,op10261,op10262,op10263,op10264,op10265,op10266,op10267,op10268,op10269,op10270,op10271,op10272,op10273,op10274,op10275,op10276,op10277,op10278,op10279,op10280,op10281,op10282,op10283,op10284,op10285,op10286,op10287,op10288,op10289,op10290,op10291,op10292,op10293,op10294,op10295,op10296,op10297,op10298,op10299,op10300,op10301,op10302,op10303]
def chunks : List Bytes := [bytes10240,bytes10241,bytes10242,bytes10243,bytes10244,bytes10245,bytes10246,bytes10247,bytes10248,bytes10249,bytes10250,bytes10251,bytes10252,bytes10253,bytes10254,bytes10255,bytes10256,bytes10257,bytes10258,bytes10259,bytes10260,bytes10261,bytes10262,bytes10263,bytes10264,bytes10265,bytes10266,bytes10267,bytes10268,bytes10269,bytes10270,bytes10271,bytes10272,bytes10273,bytes10274,bytes10275,bytes10276,bytes10277,bytes10278,bytes10279,bytes10280,bytes10281,bytes10282,bytes10283,bytes10284,bytes10285,bytes10286,bytes10287,bytes10288,bytes10289,bytes10290,bytes10291,bytes10292,bytes10293,bytes10294,bytes10295,bytes10296,bytes10297,bytes10298,bytes10299,bytes10300,bytes10301,bytes10302,bytes10303]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10358 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10240.1 (.cons _ _ _ _ _ checked10241.1 (.cons _ _ _ _ _ checked10242.1 (.cons _ _ _ _ _ checked10243.1 (.cons _ _ _ _ _ checked10244.1 (.cons _ _ _ _ _ checked10245.1 (.cons _ _ _ _ _ checked10246.1 (.cons _ _ _ _ _ checked10247.1 (.cons _ _ _ _ _ checked10248.1 (.cons _ _ _ _ _ checked10249.1 (.cons _ _ _ _ _ checked10250.1 (.cons _ _ _ _ _ checked10251.1 (.cons _ _ _ _ _ checked10252.1 (.cons _ _ _ _ _ checked10253.1 (.cons _ _ _ _ _ checked10254.1 (.cons _ _ _ _ _ checked10255.1 (.cons _ _ _ _ _ checked10256.1 (.cons _ _ _ _ _ checked10257.1 (.cons _ _ _ _ _ checked10258.1 (.cons _ _ _ _ _ checked10259.1 (.cons _ _ _ _ _ checked10260.1 (.cons _ _ _ _ _ checked10261.1 (.cons _ _ _ _ _ checked10262.1 (.cons _ _ _ _ _ checked10263.1 (.cons _ _ _ _ _ checked10264.1 (.cons _ _ _ _ _ checked10265.1 (.cons _ _ _ _ _ checked10266.1 (.cons _ _ _ _ _ checked10267.1 (.cons _ _ _ _ _ checked10268.1 (.cons _ _ _ _ _ checked10269.1 (.cons _ _ _ _ _ checked10270.1 (.cons _ _ _ _ _ checked10271.1 (.cons _ _ _ _ _ checked10272.1 (.cons _ _ _ _ _ checked10273.1 (.cons _ _ _ _ _ checked10274.1 (.cons _ _ _ _ _ checked10275.1 (.cons _ _ _ _ _ checked10276.1 (.cons _ _ _ _ _ checked10277.1 (.cons _ _ _ _ _ checked10278.1 (.cons _ _ _ _ _ checked10279.1 (.cons _ _ _ _ _ checked10280.1 (.cons _ _ _ _ _ checked10281.1 (.cons _ _ _ _ _ checked10282.1 (.cons _ _ _ _ _ checked10283.1 (.cons _ _ _ _ _ checked10284.1 (.cons _ _ _ _ _ checked10285.1 (.cons _ _ _ _ _ checked10286.1 (.cons _ _ _ _ _ checked10287.1 (.cons _ _ _ _ _ checked10288.1 (.cons _ _ _ _ _ checked10289.1 (.cons _ _ _ _ _ checked10290.1 (.cons _ _ _ _ _ checked10291.1 (.cons _ _ _ _ _ checked10292.1 (.cons _ _ _ _ _ checked10293.1 (.cons _ _ _ _ _ checked10294.1 (.cons _ _ _ _ _ checked10295.1 (.cons _ _ _ _ _ checked10296.1 (.cons _ _ _ _ _ checked10297.1 (.cons _ _ _ _ _ checked10298.1 (.cons _ _ _ _ _ checked10299.1 (.cons _ _ _ _ _ checked10300.1 (.cons _ _ _ _ _ checked10301.1 (.cons _ _ _ _ _ checked10302.1 (.cons _ _ _ _ _ checked10303.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10358 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3488 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10240.2,checked10241.2,checked10242.2,checked10243.2,checked10244.2,checked10245.2,checked10246.2,checked10247.2,checked10248.2,checked10249.2,checked10250.2,checked10251.2,checked10252.2,checked10253.2,checked10254.2,checked10255.2,checked10256.2,checked10257.2,checked10258.2,checked10259.2,checked10260.2,checked10261.2,checked10262.2,checked10263.2,checked10264.2,checked10265.2,checked10266.2,checked10267.2,checked10268.2,checked10269.2,checked10270.2,checked10271.2,checked10272.2,checked10273.2,checked10274.2,checked10275.2,checked10276.2,checked10277.2,checked10278.2,checked10279.2,checked10280.2,checked10281.2,checked10282.2,checked10283.2,checked10284.2,checked10285.2,checked10286.2,checked10287.2,checked10288.2,checked10289.2,checked10290.2,checked10291.2,checked10292.2,checked10293.2,checked10294.2,checked10295.2,checked10296.2,checked10297.2,checked10298.2,checked10299.2,checked10300.2,checked10301.2,checked10302.2,checked10303.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup160
