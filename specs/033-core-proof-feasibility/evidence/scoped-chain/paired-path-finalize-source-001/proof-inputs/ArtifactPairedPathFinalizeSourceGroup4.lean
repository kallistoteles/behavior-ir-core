import ActualPairedPathFinalizeIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
namespace ArtifactPairedPathFinalizeSourceGroup4
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op256 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes256 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000160: u32 = 0x00000000_u32;\n" : String)
theorem checked256 : bytes256=statementBytes 352 (op256.map lower) ∧ bytes256.length=41 := by core033_kernel_decide
def op257 : List WordIR.Op := [.bnot 352]
def bytes257 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000161: u32 = !r00000160;\n" : String)
theorem checked257 : bytes257=statementBytes 353 (op257.map lower) ∧ bytes257.length=37 := by core033_kernel_decide
def op258 : List WordIR.Op := [.badd 351 353]
def bytes258 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000162: u32 = r0000015f.wrapping_add(r00000161);\n" : String)
theorem checked258 : bytes258=statementBytes 354 (op258.map lower) ∧ bytes258.length=60 := by core033_kernel_decide
def op259 : List WordIR.Op := [.bnot 354]
def bytes259 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000163: u32 = !r00000162;\n" : String)
theorem checked259 : bytes259=statementBytes 355 (op259.map lower) ∧ bytes259.length=37 := by core033_kernel_decide
def op260 : List WordIR.Op := [.band 349 355]
def bytes260 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000164: u32 = r0000015d & r00000163;\n" : String)
theorem checked260 : bytes260=statementBytes 356 (op260.map lower) ∧ bytes260.length=48 := by core033_kernel_decide
def op261 : List WordIR.Op := [.bxor 344 356]
def bytes261 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000165: u32 = r00000158 ^ r00000164;\n" : String)
theorem checked261 : bytes261=statementBytes 357 (op261.map lower) ∧ bytes261.length=48 := by core033_kernel_decide
def op262 : List WordIR.Op := [.shr 357 31]
def bytes262 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000166: u32 = r00000165 >> 0x0000001f_u32;\n" : String)
theorem checked262 : bytes262=statementBytes 358 (op262.map lower) ∧ bytes262.length=54 := by core033_kernel_decide
def op263 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes263 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000167: u32 = 0x00000001_u32;\n" : String)
theorem checked263 : bytes263=statementBytes 359 (op263.map lower) ∧ bytes263.length=41 := by core033_kernel_decide
def op264 : List WordIR.Op := [.bxor 358 359]
def bytes264 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000168: u32 = r00000166 ^ r00000167;\n" : String)
theorem checked264 : bytes264=statementBytes 360 (op264.map lower) ∧ bytes264.length=48 := by core033_kernel_decide
def op265 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes265 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000169: u32 = 0x00000001_u32;\n" : String)
theorem checked265 : bytes265=statementBytes 361 (op265.map lower) ∧ bytes265.length=41 := by core033_kernel_decide
def op266 : List WordIR.Op := [.bxor 77 361]
def bytes266 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016a: u32 = r0000004d ^ r00000169;\n" : String)
theorem checked266 : bytes266=statementBytes 362 (op266.map lower) ∧ bytes266.length=48 := by core033_kernel_decide
def op267 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes267 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016b: u32 = 0x00000000_u32;\n" : String)
theorem checked267 : bytes267=statementBytes 363 (op267.map lower) ∧ bytes267.length=41 := by core033_kernel_decide
def op268 : List WordIR.Op := [.bnot 363]
def bytes268 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016c: u32 = !r0000016b;\n" : String)
theorem checked268 : bytes268=statementBytes 364 (op268.map lower) ∧ bytes268.length=37 := by core033_kernel_decide
def op269 : List WordIR.Op := [.band 362 364]
def bytes269 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016d: u32 = r0000016a & r0000016c;\n" : String)
theorem checked269 : bytes269=statementBytes 365 (op269.map lower) ∧ bytes269.length=48 := by core033_kernel_decide
def op270 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes270 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016e: u32 = 0x00000001_u32;\n" : String)
theorem checked270 : bytes270=statementBytes 366 (op270.map lower) ∧ bytes270.length=41 := by core033_kernel_decide
def op271 : List WordIR.Op := [.bxor 77 366]
def bytes271 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000016f: u32 = r0000004d ^ r0000016e;\n" : String)
theorem checked271 : bytes271=statementBytes 367 (op271.map lower) ∧ bytes271.length=48 := by core033_kernel_decide
def op272 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes272 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000170: u32 = 0x00000000_u32;\n" : String)
theorem checked272 : bytes272=statementBytes 368 (op272.map lower) ∧ bytes272.length=41 := by core033_kernel_decide
def op273 : List WordIR.Op := [.bnot 368]
def bytes273 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000171: u32 = !r00000170;\n" : String)
theorem checked273 : bytes273=statementBytes 369 (op273.map lower) ∧ bytes273.length=37 := by core033_kernel_decide
def op274 : List WordIR.Op := [.bxor 367 369]
def bytes274 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000172: u32 = r0000016f ^ r00000171;\n" : String)
theorem checked274 : bytes274=statementBytes 370 (op274.map lower) ∧ bytes274.length=48 := by core033_kernel_decide
def op275 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes275 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000173: u32 = 0x00000001_u32;\n" : String)
theorem checked275 : bytes275=statementBytes 371 (op275.map lower) ∧ bytes275.length=41 := by core033_kernel_decide
def op276 : List WordIR.Op := [.bxor 77 371]
def bytes276 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000174: u32 = r0000004d ^ r00000173;\n" : String)
theorem checked276 : bytes276=statementBytes 372 (op276.map lower) ∧ bytes276.length=48 := by core033_kernel_decide
def op277 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes277 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000175: u32 = 0x00000000_u32;\n" : String)
theorem checked277 : bytes277=statementBytes 373 (op277.map lower) ∧ bytes277.length=41 := by core033_kernel_decide
def op278 : List WordIR.Op := [.bnot 373]
def bytes278 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000176: u32 = !r00000175;\n" : String)
theorem checked278 : bytes278=statementBytes 374 (op278.map lower) ∧ bytes278.length=37 := by core033_kernel_decide
def op279 : List WordIR.Op := [.badd 372 374]
def bytes279 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000177: u32 = r00000174.wrapping_add(r00000176);\n" : String)
theorem checked279 : bytes279=statementBytes 375 (op279.map lower) ∧ bytes279.length=60 := by core033_kernel_decide
def op280 : List WordIR.Op := [.bnot 375]
def bytes280 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000178: u32 = !r00000177;\n" : String)
theorem checked280 : bytes280=statementBytes 376 (op280.map lower) ∧ bytes280.length=37 := by core033_kernel_decide
def op281 : List WordIR.Op := [.band 370 376]
def bytes281 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000179: u32 = r00000172 & r00000178;\n" : String)
theorem checked281 : bytes281=statementBytes 377 (op281.map lower) ∧ bytes281.length=48 := by core033_kernel_decide
def op282 : List WordIR.Op := [.bxor 365 377]
def bytes282 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017a: u32 = r0000016d ^ r00000179;\n" : String)
theorem checked282 : bytes282=statementBytes 378 (op282.map lower) ∧ bytes282.length=48 := by core033_kernel_decide
def op283 : List WordIR.Op := [.shr 378 31]
def bytes283 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017b: u32 = r0000017a >> 0x0000001f_u32;\n" : String)
theorem checked283 : bytes283=statementBytes 379 (op283.map lower) ∧ bytes283.length=54 := by core033_kernel_decide
def op284 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes284 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017c: u32 = 0x00000001_u32;\n" : String)
theorem checked284 : bytes284=statementBytes 380 (op284.map lower) ∧ bytes284.length=41 := by core033_kernel_decide
def op285 : List WordIR.Op := [.bxor 379 380]
def bytes285 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017d: u32 = r0000017b ^ r0000017c;\n" : String)
theorem checked285 : bytes285=statementBytes 381 (op285.map lower) ∧ bytes285.length=48 := by core033_kernel_decide
def op286 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes286 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017e: u32 = 0x00000001_u32;\n" : String)
theorem checked286 : bytes286=statementBytes 382 (op286.map lower) ∧ bytes286.length=41 := by core033_kernel_decide
def op287 : List WordIR.Op := [.bxor 78 382]
def bytes287 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000017f: u32 = r0000004e ^ r0000017e;\n" : String)
theorem checked287 : bytes287=statementBytes 383 (op287.map lower) ∧ bytes287.length=48 := by core033_kernel_decide
def op288 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes288 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000180: u32 = 0x00000000_u32;\n" : String)
theorem checked288 : bytes288=statementBytes 384 (op288.map lower) ∧ bytes288.length=41 := by core033_kernel_decide
def op289 : List WordIR.Op := [.bnot 384]
def bytes289 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000181: u32 = !r00000180;\n" : String)
theorem checked289 : bytes289=statementBytes 385 (op289.map lower) ∧ bytes289.length=37 := by core033_kernel_decide
def op290 : List WordIR.Op := [.band 383 385]
def bytes290 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000182: u32 = r0000017f & r00000181;\n" : String)
theorem checked290 : bytes290=statementBytes 386 (op290.map lower) ∧ bytes290.length=48 := by core033_kernel_decide
def op291 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes291 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000183: u32 = 0x00000001_u32;\n" : String)
theorem checked291 : bytes291=statementBytes 387 (op291.map lower) ∧ bytes291.length=41 := by core033_kernel_decide
def op292 : List WordIR.Op := [.bxor 78 387]
def bytes292 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000184: u32 = r0000004e ^ r00000183;\n" : String)
theorem checked292 : bytes292=statementBytes 388 (op292.map lower) ∧ bytes292.length=48 := by core033_kernel_decide
def op293 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes293 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000185: u32 = 0x00000000_u32;\n" : String)
theorem checked293 : bytes293=statementBytes 389 (op293.map lower) ∧ bytes293.length=41 := by core033_kernel_decide
def op294 : List WordIR.Op := [.bnot 389]
def bytes294 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000186: u32 = !r00000185;\n" : String)
theorem checked294 : bytes294=statementBytes 390 (op294.map lower) ∧ bytes294.length=37 := by core033_kernel_decide
def op295 : List WordIR.Op := [.bxor 388 390]
def bytes295 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000187: u32 = r00000184 ^ r00000186;\n" : String)
theorem checked295 : bytes295=statementBytes 391 (op295.map lower) ∧ bytes295.length=48 := by core033_kernel_decide
def op296 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes296 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000188: u32 = 0x00000001_u32;\n" : String)
theorem checked296 : bytes296=statementBytes 392 (op296.map lower) ∧ bytes296.length=41 := by core033_kernel_decide
def op297 : List WordIR.Op := [.bxor 78 392]
def bytes297 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000189: u32 = r0000004e ^ r00000188;\n" : String)
theorem checked297 : bytes297=statementBytes 393 (op297.map lower) ∧ bytes297.length=48 := by core033_kernel_decide
def op298 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes298 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018a: u32 = 0x00000000_u32;\n" : String)
theorem checked298 : bytes298=statementBytes 394 (op298.map lower) ∧ bytes298.length=41 := by core033_kernel_decide
def op299 : List WordIR.Op := [.bnot 394]
def bytes299 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018b: u32 = !r0000018a;\n" : String)
theorem checked299 : bytes299=statementBytes 395 (op299.map lower) ∧ bytes299.length=37 := by core033_kernel_decide
def op300 : List WordIR.Op := [.badd 393 395]
def bytes300 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018c: u32 = r00000189.wrapping_add(r0000018b);\n" : String)
theorem checked300 : bytes300=statementBytes 396 (op300.map lower) ∧ bytes300.length=60 := by core033_kernel_decide
def op301 : List WordIR.Op := [.bnot 396]
def bytes301 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018d: u32 = !r0000018c;\n" : String)
theorem checked301 : bytes301=statementBytes 397 (op301.map lower) ∧ bytes301.length=37 := by core033_kernel_decide
def op302 : List WordIR.Op := [.band 391 397]
def bytes302 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018e: u32 = r00000187 & r0000018d;\n" : String)
theorem checked302 : bytes302=statementBytes 398 (op302.map lower) ∧ bytes302.length=48 := by core033_kernel_decide
def op303 : List WordIR.Op := [.bxor 386 398]
def bytes303 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000018f: u32 = r00000182 ^ r0000018e;\n" : String)
theorem checked303 : bytes303=statementBytes 399 (op303.map lower) ∧ bytes303.length=48 := by core033_kernel_decide
def op304 : List WordIR.Op := [.shr 399 31]
def bytes304 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000190: u32 = r0000018f >> 0x0000001f_u32;\n" : String)
theorem checked304 : bytes304=statementBytes 400 (op304.map lower) ∧ bytes304.length=54 := by core033_kernel_decide
def op305 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes305 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000191: u32 = 0x00000001_u32;\n" : String)
theorem checked305 : bytes305=statementBytes 401 (op305.map lower) ∧ bytes305.length=41 := by core033_kernel_decide
def op306 : List WordIR.Op := [.bxor 400 401]
def bytes306 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000192: u32 = r00000190 ^ r00000191;\n" : String)
theorem checked306 : bytes306=statementBytes 402 (op306.map lower) ∧ bytes306.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op256,op257,op258,op259,op260,op261,op262,op263,op264,op265,op266,op267,op268,op269,op270,op271,op272,op273,op274,op275,op276,op277,op278,op279,op280,op281,op282,op283,op284,op285,op286,op287,op288,op289,op290,op291,op292,op293,op294,op295,op296,op297,op298,op299,op300,op301,op302,op303,op304,op305,op306]
def chunks : List Bytes := [bytes256,bytes257,bytes258,bytes259,bytes260,bytes261,bytes262,bytes263,bytes264,bytes265,bytes266,bytes267,bytes268,bytes269,bytes270,bytes271,bytes272,bytes273,bytes274,bytes275,bytes276,bytes277,bytes278,bytes279,bytes280,bytes281,bytes282,bytes283,bytes284,bytes285,bytes286,bytes287,bytes288,bytes289,bytes290,bytes291,bytes292,bytes293,bytes294,bytes295,bytes296,bytes297,bytes298,bytes299,bytes300,bytes301,bytes302,bytes303,bytes304,bytes305,bytes306]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 352 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked256.1 (.cons _ _ _ _ _ checked257.1 (.cons _ _ _ _ _ checked258.1 (.cons _ _ _ _ _ checked259.1 (.cons _ _ _ _ _ checked260.1 (.cons _ _ _ _ _ checked261.1 (.cons _ _ _ _ _ checked262.1 (.cons _ _ _ _ _ checked263.1 (.cons _ _ _ _ _ checked264.1 (.cons _ _ _ _ _ checked265.1 (.cons _ _ _ _ _ checked266.1 (.cons _ _ _ _ _ checked267.1 (.cons _ _ _ _ _ checked268.1 (.cons _ _ _ _ _ checked269.1 (.cons _ _ _ _ _ checked270.1 (.cons _ _ _ _ _ checked271.1 (.cons _ _ _ _ _ checked272.1 (.cons _ _ _ _ _ checked273.1 (.cons _ _ _ _ _ checked274.1 (.cons _ _ _ _ _ checked275.1 (.cons _ _ _ _ _ checked276.1 (.cons _ _ _ _ _ checked277.1 (.cons _ _ _ _ _ checked278.1 (.cons _ _ _ _ _ checked279.1 (.cons _ _ _ _ _ checked280.1 (.cons _ _ _ _ _ checked281.1 (.cons _ _ _ _ _ checked282.1 (.cons _ _ _ _ _ checked283.1 (.cons _ _ _ _ _ checked284.1 (.cons _ _ _ _ _ checked285.1 (.cons _ _ _ _ _ checked286.1 (.cons _ _ _ _ _ checked287.1 (.cons _ _ _ _ _ checked288.1 (.cons _ _ _ _ _ checked289.1 (.cons _ _ _ _ _ checked290.1 (.cons _ _ _ _ _ checked291.1 (.cons _ _ _ _ _ checked292.1 (.cons _ _ _ _ _ checked293.1 (.cons _ _ _ _ _ checked294.1 (.cons _ _ _ _ _ checked295.1 (.cons _ _ _ _ _ checked296.1 (.cons _ _ _ _ _ checked297.1 (.cons _ _ _ _ _ checked298.1 (.cons _ _ _ _ _ checked299.1 (.cons _ _ _ _ _ checked300.1 (.cons _ _ _ _ _ checked301.1 (.cons _ _ _ _ _ checked302.1 (.cons _ _ _ _ _ checked303.1 (.cons _ _ _ _ _ checked304.1 (.cons _ _ _ _ _ checked305.1 (.cons _ _ _ _ _ checked306.1 (.empty _))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 352 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=51 := rfl
theorem partSize : partBytes.length=2280 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked256.2,checked257.2,checked258.2,checked259.2,checked260.2,checked261.2,checked262.2,checked263.2,checked264.2,checked265.2,checked266.2,checked267.2,checked268.2,checked269.2,checked270.2,checked271.2,checked272.2,checked273.2,checked274.2,checked275.2,checked276.2,checked277.2,checked278.2,checked279.2,checked280.2,checked281.2,checked282.2,checked283.2,checked284.2,checked285.2,checked286.2,checked287.2,checked288.2,checked289.2,checked290.2,checked291.2,checked292.2,checked293.2,checked294.2,checked295.2,checked296.2,checked297.2,checked298.2,checked299.2,checked300.2,checked301.2,checked302.2,checked303.2,checked304.2,checked305.2,checked306.2]
  decide
end ArtifactPairedPathFinalizeSourceGroup4
