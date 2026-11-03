import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup97
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6208 : List WordIR.Op := [.band 6324 6325]
def bytes6208 : Bytes := ("    let r000018b6: u32 = r000018b4 & r000018b5;\n" : String).toByteArray.data.toList
theorem checked6208 : bytes6208=statementBytes 6326 (op6208.map lower) ∧ bytes6208.length=48 := by core033_kernel_decide
def op6209 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6209 : Bytes := ("    let r000018b7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6209 : bytes6209=statementBytes 6327 (op6209.map lower) ∧ bytes6209.length=41 := by core033_kernel_decide
def op6210 : List WordIR.Op := [.bxor 1299 6327]
def bytes6210 : Bytes := ("    let r000018b8: u32 = r00000513 ^ r000018b7;\n" : String).toByteArray.data.toList
theorem checked6210 : bytes6210=statementBytes 6328 (op6210.map lower) ∧ bytes6210.length=48 := by core033_kernel_decide
def op6211 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6211 : Bytes := ("    let r000018b9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6211 : bytes6211=statementBytes 6329 (op6211.map lower) ∧ bytes6211.length=41 := by core033_kernel_decide
def op6212 : List WordIR.Op := [.bnot 6329]
def bytes6212 : Bytes := ("    let r000018ba: u32 = !r000018b9;\n" : String).toByteArray.data.toList
theorem checked6212 : bytes6212=statementBytes 6330 (op6212.map lower) ∧ bytes6212.length=37 := by core033_kernel_decide
def op6213 : List WordIR.Op := [.band 6328 6330]
def bytes6213 : Bytes := ("    let r000018bb: u32 = r000018b8 & r000018ba;\n" : String).toByteArray.data.toList
theorem checked6213 : bytes6213=statementBytes 6331 (op6213.map lower) ∧ bytes6213.length=48 := by core033_kernel_decide
def op6214 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6214 : Bytes := ("    let r000018bc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6214 : bytes6214=statementBytes 6332 (op6214.map lower) ∧ bytes6214.length=41 := by core033_kernel_decide
def op6215 : List WordIR.Op := [.bxor 1299 6332]
def bytes6215 : Bytes := ("    let r000018bd: u32 = r00000513 ^ r000018bc;\n" : String).toByteArray.data.toList
theorem checked6215 : bytes6215=statementBytes 6333 (op6215.map lower) ∧ bytes6215.length=48 := by core033_kernel_decide
def op6216 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6216 : Bytes := ("    let r000018be: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6216 : bytes6216=statementBytes 6334 (op6216.map lower) ∧ bytes6216.length=41 := by core033_kernel_decide
def op6217 : List WordIR.Op := [.bnot 6334]
def bytes6217 : Bytes := ("    let r000018bf: u32 = !r000018be;\n" : String).toByteArray.data.toList
theorem checked6217 : bytes6217=statementBytes 6335 (op6217.map lower) ∧ bytes6217.length=37 := by core033_kernel_decide
def op6218 : List WordIR.Op := [.bxor 6333 6335]
def bytes6218 : Bytes := ("    let r000018c0: u32 = r000018bd ^ r000018bf;\n" : String).toByteArray.data.toList
theorem checked6218 : bytes6218=statementBytes 6336 (op6218.map lower) ∧ bytes6218.length=48 := by core033_kernel_decide
def op6219 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6219 : Bytes := ("    let r000018c1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6219 : bytes6219=statementBytes 6337 (op6219.map lower) ∧ bytes6219.length=41 := by core033_kernel_decide
def op6220 : List WordIR.Op := [.bxor 1299 6337]
def bytes6220 : Bytes := ("    let r000018c2: u32 = r00000513 ^ r000018c1;\n" : String).toByteArray.data.toList
theorem checked6220 : bytes6220=statementBytes 6338 (op6220.map lower) ∧ bytes6220.length=48 := by core033_kernel_decide
def op6221 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6221 : Bytes := ("    let r000018c3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6221 : bytes6221=statementBytes 6339 (op6221.map lower) ∧ bytes6221.length=41 := by core033_kernel_decide
def op6222 : List WordIR.Op := [.bnot 6339]
def bytes6222 : Bytes := ("    let r000018c4: u32 = !r000018c3;\n" : String).toByteArray.data.toList
theorem checked6222 : bytes6222=statementBytes 6340 (op6222.map lower) ∧ bytes6222.length=37 := by core033_kernel_decide
def op6223 : List WordIR.Op := [.badd 6338 6340]
def bytes6223 : Bytes := ("    let r000018c5: u32 = r000018c2.wrapping_add(r000018c4);\n" : String).toByteArray.data.toList
theorem checked6223 : bytes6223=statementBytes 6341 (op6223.map lower) ∧ bytes6223.length=60 := by core033_kernel_decide
def op6224 : List WordIR.Op := [.bnot 6341]
def bytes6224 : Bytes := ("    let r000018c6: u32 = !r000018c5;\n" : String).toByteArray.data.toList
theorem checked6224 : bytes6224=statementBytes 6342 (op6224.map lower) ∧ bytes6224.length=37 := by core033_kernel_decide
def op6225 : List WordIR.Op := [.band 6336 6342]
def bytes6225 : Bytes := ("    let r000018c7: u32 = r000018c0 & r000018c6;\n" : String).toByteArray.data.toList
theorem checked6225 : bytes6225=statementBytes 6343 (op6225.map lower) ∧ bytes6225.length=48 := by core033_kernel_decide
def op6226 : List WordIR.Op := [.bxor 6331 6343]
def bytes6226 : Bytes := ("    let r000018c8: u32 = r000018bb ^ r000018c7;\n" : String).toByteArray.data.toList
theorem checked6226 : bytes6226=statementBytes 6344 (op6226.map lower) ∧ bytes6226.length=48 := by core033_kernel_decide
def op6227 : List WordIR.Op := [.shr 6344 31]
def bytes6227 : Bytes := ("    let r000018c9: u32 = r000018c8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6227 : bytes6227=statementBytes 6345 (op6227.map lower) ∧ bytes6227.length=54 := by core033_kernel_decide
def op6228 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6228 : Bytes := ("    let r000018ca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6228 : bytes6228=statementBytes 6346 (op6228.map lower) ∧ bytes6228.length=41 := by core033_kernel_decide
def op6229 : List WordIR.Op := [.bxor 6345 6346]
def bytes6229 : Bytes := ("    let r000018cb: u32 = r000018c9 ^ r000018ca;\n" : String).toByteArray.data.toList
theorem checked6229 : bytes6229=statementBytes 6347 (op6229.map lower) ∧ bytes6229.length=48 := by core033_kernel_decide
def op6230 : List WordIR.Op := [.bnot 6347]
def bytes6230 : Bytes := ("    let r000018cc: u32 = !r000018cb;\n" : String).toByteArray.data.toList
theorem checked6230 : bytes6230=statementBytes 6348 (op6230.map lower) ∧ bytes6230.length=37 := by core033_kernel_decide
def op6231 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6231 : Bytes := ("    let r000018cd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6231 : bytes6231=statementBytes 6349 (op6231.map lower) ∧ bytes6231.length=41 := by core033_kernel_decide
def op6232 : List WordIR.Op := [.badd 6348 6349]
def bytes6232 : Bytes := ("    let r000018ce: u32 = r000018cc.wrapping_add(r000018cd);\n" : String).toByteArray.data.toList
theorem checked6232 : bytes6232=statementBytes 6350 (op6232.map lower) ∧ bytes6232.length=60 := by core033_kernel_decide
def op6233 : List WordIR.Op := [.bnot 6350]
def bytes6233 : Bytes := ("    let r000018cf: u32 = !r000018ce;\n" : String).toByteArray.data.toList
theorem checked6233 : bytes6233=statementBytes 6351 (op6233.map lower) ∧ bytes6233.length=37 := by core033_kernel_decide
def op6234 : List WordIR.Op := [.band 6351 2663]
def bytes6234 : Bytes := ("    let r000018d0: u32 = r000018cf & r00000a67;\n" : String).toByteArray.data.toList
theorem checked6234 : bytes6234=statementBytes 6352 (op6234.map lower) ∧ bytes6234.length=48 := by core033_kernel_decide
def op6235 : List WordIR.Op := [.bxor 6326 6352]
def bytes6235 : Bytes := ("    let r000018d1: u32 = r000018b6 ^ r000018d0;\n" : String).toByteArray.data.toList
theorem checked6235 : bytes6235=statementBytes 6353 (op6235.map lower) ∧ bytes6235.length=48 := by core033_kernel_decide
def op6236 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6236 : Bytes := ("    let r000018d2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6236 : bytes6236=statementBytes 6354 (op6236.map lower) ∧ bytes6236.length=41 := by core033_kernel_decide
def op6237 : List WordIR.Op := [.bxor 1299 6354]
def bytes6237 : Bytes := ("    let r000018d3: u32 = r00000513 ^ r000018d2;\n" : String).toByteArray.data.toList
theorem checked6237 : bytes6237=statementBytes 6355 (op6237.map lower) ∧ bytes6237.length=48 := by core033_kernel_decide
def op6238 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6238 : Bytes := ("    let r000018d4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6238 : bytes6238=statementBytes 6356 (op6238.map lower) ∧ bytes6238.length=41 := by core033_kernel_decide
def op6239 : List WordIR.Op := [.bnot 6356]
def bytes6239 : Bytes := ("    let r000018d5: u32 = !r000018d4;\n" : String).toByteArray.data.toList
theorem checked6239 : bytes6239=statementBytes 6357 (op6239.map lower) ∧ bytes6239.length=37 := by core033_kernel_decide
def op6240 : List WordIR.Op := [.band 6355 6357]
def bytes6240 : Bytes := ("    let r000018d6: u32 = r000018d3 & r000018d5;\n" : String).toByteArray.data.toList
theorem checked6240 : bytes6240=statementBytes 6358 (op6240.map lower) ∧ bytes6240.length=48 := by core033_kernel_decide
def op6241 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6241 : Bytes := ("    let r000018d7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6241 : bytes6241=statementBytes 6359 (op6241.map lower) ∧ bytes6241.length=41 := by core033_kernel_decide
def op6242 : List WordIR.Op := [.bxor 1299 6359]
def bytes6242 : Bytes := ("    let r000018d8: u32 = r00000513 ^ r000018d7;\n" : String).toByteArray.data.toList
theorem checked6242 : bytes6242=statementBytes 6360 (op6242.map lower) ∧ bytes6242.length=48 := by core033_kernel_decide
def op6243 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6243 : Bytes := ("    let r000018d9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6243 : bytes6243=statementBytes 6361 (op6243.map lower) ∧ bytes6243.length=41 := by core033_kernel_decide
def op6244 : List WordIR.Op := [.bnot 6361]
def bytes6244 : Bytes := ("    let r000018da: u32 = !r000018d9;\n" : String).toByteArray.data.toList
theorem checked6244 : bytes6244=statementBytes 6362 (op6244.map lower) ∧ bytes6244.length=37 := by core033_kernel_decide
def op6245 : List WordIR.Op := [.bxor 6360 6362]
def bytes6245 : Bytes := ("    let r000018db: u32 = r000018d8 ^ r000018da;\n" : String).toByteArray.data.toList
theorem checked6245 : bytes6245=statementBytes 6363 (op6245.map lower) ∧ bytes6245.length=48 := by core033_kernel_decide
def op6246 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6246 : Bytes := ("    let r000018dc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6246 : bytes6246=statementBytes 6364 (op6246.map lower) ∧ bytes6246.length=41 := by core033_kernel_decide
def op6247 : List WordIR.Op := [.bxor 1299 6364]
def bytes6247 : Bytes := ("    let r000018dd: u32 = r00000513 ^ r000018dc;\n" : String).toByteArray.data.toList
theorem checked6247 : bytes6247=statementBytes 6365 (op6247.map lower) ∧ bytes6247.length=48 := by core033_kernel_decide
def op6248 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6248 : Bytes := ("    let r000018de: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6248 : bytes6248=statementBytes 6366 (op6248.map lower) ∧ bytes6248.length=41 := by core033_kernel_decide
def op6249 : List WordIR.Op := [.bnot 6366]
def bytes6249 : Bytes := ("    let r000018df: u32 = !r000018de;\n" : String).toByteArray.data.toList
theorem checked6249 : bytes6249=statementBytes 6367 (op6249.map lower) ∧ bytes6249.length=37 := by core033_kernel_decide
def op6250 : List WordIR.Op := [.badd 6365 6367]
def bytes6250 : Bytes := ("    let r000018e0: u32 = r000018dd.wrapping_add(r000018df);\n" : String).toByteArray.data.toList
theorem checked6250 : bytes6250=statementBytes 6368 (op6250.map lower) ∧ bytes6250.length=60 := by core033_kernel_decide
def op6251 : List WordIR.Op := [.bnot 6368]
def bytes6251 : Bytes := ("    let r000018e1: u32 = !r000018e0;\n" : String).toByteArray.data.toList
theorem checked6251 : bytes6251=statementBytes 6369 (op6251.map lower) ∧ bytes6251.length=37 := by core033_kernel_decide
def op6252 : List WordIR.Op := [.band 6363 6369]
def bytes6252 : Bytes := ("    let r000018e2: u32 = r000018db & r000018e1;\n" : String).toByteArray.data.toList
theorem checked6252 : bytes6252=statementBytes 6370 (op6252.map lower) ∧ bytes6252.length=48 := by core033_kernel_decide
def op6253 : List WordIR.Op := [.bxor 6358 6370]
def bytes6253 : Bytes := ("    let r000018e3: u32 = r000018d6 ^ r000018e2;\n" : String).toByteArray.data.toList
theorem checked6253 : bytes6253=statementBytes 6371 (op6253.map lower) ∧ bytes6253.length=48 := by core033_kernel_decide
def op6254 : List WordIR.Op := [.shr 6371 31]
def bytes6254 : Bytes := ("    let r000018e4: u32 = r000018e3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6254 : bytes6254=statementBytes 6372 (op6254.map lower) ∧ bytes6254.length=54 := by core033_kernel_decide
def op6255 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6255 : Bytes := ("    let r000018e5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6255 : bytes6255=statementBytes 6373 (op6255.map lower) ∧ bytes6255.length=41 := by core033_kernel_decide
def op6256 : List WordIR.Op := [.bxor 6372 6373]
def bytes6256 : Bytes := ("    let r000018e6: u32 = r000018e4 ^ r000018e5;\n" : String).toByteArray.data.toList
theorem checked6256 : bytes6256=statementBytes 6374 (op6256.map lower) ∧ bytes6256.length=48 := by core033_kernel_decide
def op6257 : List WordIR.Op := [.bnot 6374]
def bytes6257 : Bytes := ("    let r000018e7: u32 = !r000018e6;\n" : String).toByteArray.data.toList
theorem checked6257 : bytes6257=statementBytes 6375 (op6257.map lower) ∧ bytes6257.length=37 := by core033_kernel_decide
def op6258 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6258 : Bytes := ("    let r000018e8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6258 : bytes6258=statementBytes 6376 (op6258.map lower) ∧ bytes6258.length=41 := by core033_kernel_decide
def op6259 : List WordIR.Op := [.badd 6375 6376]
def bytes6259 : Bytes := ("    let r000018e9: u32 = r000018e7.wrapping_add(r000018e8);\n" : String).toByteArray.data.toList
theorem checked6259 : bytes6259=statementBytes 6377 (op6259.map lower) ∧ bytes6259.length=60 := by core033_kernel_decide
def op6260 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6260 : Bytes := ("    let r000018ea: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6260 : bytes6260=statementBytes 6378 (op6260.map lower) ∧ bytes6260.length=41 := by core033_kernel_decide
def op6261 : List WordIR.Op := [.band 6377 6378]
def bytes6261 : Bytes := ("    let r000018eb: u32 = r000018e9 & r000018ea;\n" : String).toByteArray.data.toList
theorem checked6261 : bytes6261=statementBytes 6379 (op6261.map lower) ∧ bytes6261.length=48 := by core033_kernel_decide
def op6262 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6262 : Bytes := ("    let r000018ec: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6262 : bytes6262=statementBytes 6380 (op6262.map lower) ∧ bytes6262.length=41 := by core033_kernel_decide
def op6263 : List WordIR.Op := [.bxor 1299 6380]
def bytes6263 : Bytes := ("    let r000018ed: u32 = r00000513 ^ r000018ec;\n" : String).toByteArray.data.toList
theorem checked6263 : bytes6263=statementBytes 6381 (op6263.map lower) ∧ bytes6263.length=48 := by core033_kernel_decide
def op6264 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6264 : Bytes := ("    let r000018ee: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6264 : bytes6264=statementBytes 6382 (op6264.map lower) ∧ bytes6264.length=41 := by core033_kernel_decide
def op6265 : List WordIR.Op := [.bnot 6382]
def bytes6265 : Bytes := ("    let r000018ef: u32 = !r000018ee;\n" : String).toByteArray.data.toList
theorem checked6265 : bytes6265=statementBytes 6383 (op6265.map lower) ∧ bytes6265.length=37 := by core033_kernel_decide
def op6266 : List WordIR.Op := [.band 6381 6383]
def bytes6266 : Bytes := ("    let r000018f0: u32 = r000018ed & r000018ef;\n" : String).toByteArray.data.toList
theorem checked6266 : bytes6266=statementBytes 6384 (op6266.map lower) ∧ bytes6266.length=48 := by core033_kernel_decide
def op6267 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6267 : Bytes := ("    let r000018f1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6267 : bytes6267=statementBytes 6385 (op6267.map lower) ∧ bytes6267.length=41 := by core033_kernel_decide
def op6268 : List WordIR.Op := [.bxor 1299 6385]
def bytes6268 : Bytes := ("    let r000018f2: u32 = r00000513 ^ r000018f1;\n" : String).toByteArray.data.toList
theorem checked6268 : bytes6268=statementBytes 6386 (op6268.map lower) ∧ bytes6268.length=48 := by core033_kernel_decide
def op6269 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6269 : Bytes := ("    let r000018f3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6269 : bytes6269=statementBytes 6387 (op6269.map lower) ∧ bytes6269.length=41 := by core033_kernel_decide
def op6270 : List WordIR.Op := [.bnot 6387]
def bytes6270 : Bytes := ("    let r000018f4: u32 = !r000018f3;\n" : String).toByteArray.data.toList
theorem checked6270 : bytes6270=statementBytes 6388 (op6270.map lower) ∧ bytes6270.length=37 := by core033_kernel_decide
def op6271 : List WordIR.Op := [.bxor 6386 6388]
def bytes6271 : Bytes := ("    let r000018f5: u32 = r000018f2 ^ r000018f4;\n" : String).toByteArray.data.toList
theorem checked6271 : bytes6271=statementBytes 6389 (op6271.map lower) ∧ bytes6271.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6208,op6209,op6210,op6211,op6212,op6213,op6214,op6215,op6216,op6217,op6218,op6219,op6220,op6221,op6222,op6223,op6224,op6225,op6226,op6227,op6228,op6229,op6230,op6231,op6232,op6233,op6234,op6235,op6236,op6237,op6238,op6239,op6240,op6241,op6242,op6243,op6244,op6245,op6246,op6247,op6248,op6249,op6250,op6251,op6252,op6253,op6254,op6255,op6256,op6257,op6258,op6259,op6260,op6261,op6262,op6263,op6264,op6265,op6266,op6267,op6268,op6269,op6270,op6271]
def chunks : List Bytes := [bytes6208,bytes6209,bytes6210,bytes6211,bytes6212,bytes6213,bytes6214,bytes6215,bytes6216,bytes6217,bytes6218,bytes6219,bytes6220,bytes6221,bytes6222,bytes6223,bytes6224,bytes6225,bytes6226,bytes6227,bytes6228,bytes6229,bytes6230,bytes6231,bytes6232,bytes6233,bytes6234,bytes6235,bytes6236,bytes6237,bytes6238,bytes6239,bytes6240,bytes6241,bytes6242,bytes6243,bytes6244,bytes6245,bytes6246,bytes6247,bytes6248,bytes6249,bytes6250,bytes6251,bytes6252,bytes6253,bytes6254,bytes6255,bytes6256,bytes6257,bytes6258,bytes6259,bytes6260,bytes6261,bytes6262,bytes6263,bytes6264,bytes6265,bytes6266,bytes6267,bytes6268,bytes6269,bytes6270,bytes6271]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6326 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6208.1 (.cons _ _ _ _ _ checked6209.1 (.cons _ _ _ _ _ checked6210.1 (.cons _ _ _ _ _ checked6211.1 (.cons _ _ _ _ _ checked6212.1 (.cons _ _ _ _ _ checked6213.1 (.cons _ _ _ _ _ checked6214.1 (.cons _ _ _ _ _ checked6215.1 (.cons _ _ _ _ _ checked6216.1 (.cons _ _ _ _ _ checked6217.1 (.cons _ _ _ _ _ checked6218.1 (.cons _ _ _ _ _ checked6219.1 (.cons _ _ _ _ _ checked6220.1 (.cons _ _ _ _ _ checked6221.1 (.cons _ _ _ _ _ checked6222.1 (.cons _ _ _ _ _ checked6223.1 (.cons _ _ _ _ _ checked6224.1 (.cons _ _ _ _ _ checked6225.1 (.cons _ _ _ _ _ checked6226.1 (.cons _ _ _ _ _ checked6227.1 (.cons _ _ _ _ _ checked6228.1 (.cons _ _ _ _ _ checked6229.1 (.cons _ _ _ _ _ checked6230.1 (.cons _ _ _ _ _ checked6231.1 (.cons _ _ _ _ _ checked6232.1 (.cons _ _ _ _ _ checked6233.1 (.cons _ _ _ _ _ checked6234.1 (.cons _ _ _ _ _ checked6235.1 (.cons _ _ _ _ _ checked6236.1 (.cons _ _ _ _ _ checked6237.1 (.cons _ _ _ _ _ checked6238.1 (.cons _ _ _ _ _ checked6239.1 (.cons _ _ _ _ _ checked6240.1 (.cons _ _ _ _ _ checked6241.1 (.cons _ _ _ _ _ checked6242.1 (.cons _ _ _ _ _ checked6243.1 (.cons _ _ _ _ _ checked6244.1 (.cons _ _ _ _ _ checked6245.1 (.cons _ _ _ _ _ checked6246.1 (.cons _ _ _ _ _ checked6247.1 (.cons _ _ _ _ _ checked6248.1 (.cons _ _ _ _ _ checked6249.1 (.cons _ _ _ _ _ checked6250.1 (.cons _ _ _ _ _ checked6251.1 (.cons _ _ _ _ _ checked6252.1 (.cons _ _ _ _ _ checked6253.1 (.cons _ _ _ _ _ checked6254.1 (.cons _ _ _ _ _ checked6255.1 (.cons _ _ _ _ _ checked6256.1 (.cons _ _ _ _ _ checked6257.1 (.cons _ _ _ _ _ checked6258.1 (.cons _ _ _ _ _ checked6259.1 (.cons _ _ _ _ _ checked6260.1 (.cons _ _ _ _ _ checked6261.1 (.cons _ _ _ _ _ checked6262.1 (.cons _ _ _ _ _ checked6263.1 (.cons _ _ _ _ _ checked6264.1 (.cons _ _ _ _ _ checked6265.1 (.cons _ _ _ _ _ checked6266.1 (.cons _ _ _ _ _ checked6267.1 (.cons _ _ _ _ _ checked6268.1 (.cons _ _ _ _ _ checked6269.1 (.cons _ _ _ _ _ checked6270.1 (.cons _ _ _ _ _ checked6271.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6326 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6208.2,checked6209.2,checked6210.2,checked6211.2,checked6212.2,checked6213.2,checked6214.2,checked6215.2,checked6216.2,checked6217.2,checked6218.2,checked6219.2,checked6220.2,checked6221.2,checked6222.2,checked6223.2,checked6224.2,checked6225.2,checked6226.2,checked6227.2,checked6228.2,checked6229.2,checked6230.2,checked6231.2,checked6232.2,checked6233.2,checked6234.2,checked6235.2,checked6236.2,checked6237.2,checked6238.2,checked6239.2,checked6240.2,checked6241.2,checked6242.2,checked6243.2,checked6244.2,checked6245.2,checked6246.2,checked6247.2,checked6248.2,checked6249.2,checked6250.2,checked6251.2,checked6252.2,checked6253.2,checked6254.2,checked6255.2,checked6256.2,checked6257.2,checked6258.2,checked6259.2,checked6260.2,checked6261.2,checked6262.2,checked6263.2,checked6264.2,checked6265.2,checked6266.2,checked6267.2,checked6268.2,checked6269.2,checked6270.2,checked6271.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup97
