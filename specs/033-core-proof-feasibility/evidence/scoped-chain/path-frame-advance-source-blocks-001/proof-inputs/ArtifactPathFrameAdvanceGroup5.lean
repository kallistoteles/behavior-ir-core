import ActualPathFrameAdvanceIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathFrameAdvanceGroup5
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op320 : List WordIR.Op := [.bxor 354 362]
def bytes320 : Bytes := ("    let r0000016b: u32 = r00000162 ^ r0000016a;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 363 (op320.map lower) ∧ bytes320.length=48 := by core033_kernel_decide
def op321 : List WordIR.Op := [.shr 363 31]
def bytes321 : Bytes := ("    let r0000016c: u32 = r0000016b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 364 (op321.map lower) ∧ bytes321.length=54 := by core033_kernel_decide
def op322 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes322 : Bytes := ("    let r0000016d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 365 (op322.map lower) ∧ bytes322.length=41 := by core033_kernel_decide
def op323 : List WordIR.Op := [.bxor 364 365]
def bytes323 : Bytes := ("    let r0000016e: u32 = r0000016c ^ r0000016d;\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 366 (op323.map lower) ∧ bytes323.length=48 := by core033_kernel_decide
def op324 : List WordIR.Op := [.literal (BitVec.ofNat 32 4)]
def bytes324 : Bytes := ("    let r0000016f: u32 = 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 367 (op324.map lower) ∧ bytes324.length=41 := by core033_kernel_decide
def op325 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes325 : Bytes := ("    let r00000170: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 368 (op325.map lower) ∧ bytes325.length=41 := by core033_kernel_decide
def op326 : List WordIR.Op := [.bxor 0 368]
def bytes326 : Bytes := ("    let r00000171: u32 = r00000000 ^ r00000170;\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 369 (op326.map lower) ∧ bytes326.length=48 := by core033_kernel_decide
def op327 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes327 : Bytes := ("    let r00000172: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 370 (op327.map lower) ∧ bytes327.length=41 := by core033_kernel_decide
def op328 : List WordIR.Op := [.bnot 370]
def bytes328 : Bytes := ("    let r00000173: u32 = !r00000172;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 371 (op328.map lower) ∧ bytes328.length=37 := by core033_kernel_decide
def op329 : List WordIR.Op := [.band 369 371]
def bytes329 : Bytes := ("    let r00000174: u32 = r00000171 & r00000173;\n" : String).toByteArray.data.toList
theorem checked329 : bytes329=statementBytes 372 (op329.map lower) ∧ bytes329.length=48 := by core033_kernel_decide
def op330 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes330 : Bytes := ("    let r00000175: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked330 : bytes330=statementBytes 373 (op330.map lower) ∧ bytes330.length=41 := by core033_kernel_decide
def op331 : List WordIR.Op := [.bxor 0 373]
def bytes331 : Bytes := ("    let r00000176: u32 = r00000000 ^ r00000175;\n" : String).toByteArray.data.toList
theorem checked331 : bytes331=statementBytes 374 (op331.map lower) ∧ bytes331.length=48 := by core033_kernel_decide
def op332 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes332 : Bytes := ("    let r00000177: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked332 : bytes332=statementBytes 375 (op332.map lower) ∧ bytes332.length=41 := by core033_kernel_decide
def op333 : List WordIR.Op := [.bnot 375]
def bytes333 : Bytes := ("    let r00000178: u32 = !r00000177;\n" : String).toByteArray.data.toList
theorem checked333 : bytes333=statementBytes 376 (op333.map lower) ∧ bytes333.length=37 := by core033_kernel_decide
def op334 : List WordIR.Op := [.bxor 374 376]
def bytes334 : Bytes := ("    let r00000179: u32 = r00000176 ^ r00000178;\n" : String).toByteArray.data.toList
theorem checked334 : bytes334=statementBytes 377 (op334.map lower) ∧ bytes334.length=48 := by core033_kernel_decide
def op335 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes335 : Bytes := ("    let r0000017a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked335 : bytes335=statementBytes 378 (op335.map lower) ∧ bytes335.length=41 := by core033_kernel_decide
def op336 : List WordIR.Op := [.bxor 0 378]
def bytes336 : Bytes := ("    let r0000017b: u32 = r00000000 ^ r0000017a;\n" : String).toByteArray.data.toList
theorem checked336 : bytes336=statementBytes 379 (op336.map lower) ∧ bytes336.length=48 := by core033_kernel_decide
def op337 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes337 : Bytes := ("    let r0000017c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked337 : bytes337=statementBytes 380 (op337.map lower) ∧ bytes337.length=41 := by core033_kernel_decide
def op338 : List WordIR.Op := [.bnot 380]
def bytes338 : Bytes := ("    let r0000017d: u32 = !r0000017c;\n" : String).toByteArray.data.toList
theorem checked338 : bytes338=statementBytes 381 (op338.map lower) ∧ bytes338.length=37 := by core033_kernel_decide
def op339 : List WordIR.Op := [.badd 379 381]
def bytes339 : Bytes := ("    let r0000017e: u32 = r0000017b.wrapping_add(r0000017d);\n" : String).toByteArray.data.toList
theorem checked339 : bytes339=statementBytes 382 (op339.map lower) ∧ bytes339.length=60 := by core033_kernel_decide
def op340 : List WordIR.Op := [.bnot 382]
def bytes340 : Bytes := ("    let r0000017f: u32 = !r0000017e;\n" : String).toByteArray.data.toList
theorem checked340 : bytes340=statementBytes 383 (op340.map lower) ∧ bytes340.length=37 := by core033_kernel_decide
def op341 : List WordIR.Op := [.band 377 383]
def bytes341 : Bytes := ("    let r00000180: u32 = r00000179 & r0000017f;\n" : String).toByteArray.data.toList
theorem checked341 : bytes341=statementBytes 384 (op341.map lower) ∧ bytes341.length=48 := by core033_kernel_decide
def op342 : List WordIR.Op := [.bxor 372 384]
def bytes342 : Bytes := ("    let r00000181: u32 = r00000174 ^ r00000180;\n" : String).toByteArray.data.toList
theorem checked342 : bytes342=statementBytes 385 (op342.map lower) ∧ bytes342.length=48 := by core033_kernel_decide
def op343 : List WordIR.Op := [.shr 385 31]
def bytes343 : Bytes := ("    let r00000182: u32 = r00000181 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked343 : bytes343=statementBytes 386 (op343.map lower) ∧ bytes343.length=54 := by core033_kernel_decide
def op344 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes344 : Bytes := ("    let r00000183: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked344 : bytes344=statementBytes 387 (op344.map lower) ∧ bytes344.length=41 := by core033_kernel_decide
def op345 : List WordIR.Op := [.bxor 386 387]
def bytes345 : Bytes := ("    let r00000184: u32 = r00000182 ^ r00000183;\n" : String).toByteArray.data.toList
theorem checked345 : bytes345=statementBytes 388 (op345.map lower) ∧ bytes345.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op320,op321,op322,op323,op324,op325,op326,op327,op328,op329,op330,op331,op332,op333,op334,op335,op336,op337,op338,op339,op340,op341,op342,op343,op344,op345]
def chunks : List Bytes := [bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328,bytes329,bytes330,bytes331,bytes332,bytes333,bytes334,bytes335,bytes336,bytes337,bytes338,bytes339,bytes340,bytes341,bytes342,bytes343,bytes344,bytes345]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 363 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.cons _ _ _ _ _ checked329.1 (.cons _ _ _ _ _ checked330.1 (.cons _ _ _ _ _ checked331.1 (.cons _ _ _ _ _ checked332.1 (.cons _ _ _ _ _ checked333.1 (.cons _ _ _ _ _ checked334.1 (.cons _ _ _ _ _ checked335.1 (.cons _ _ _ _ _ checked336.1 (.cons _ _ _ _ _ checked337.1 (.cons _ _ _ _ _ checked338.1 (.cons _ _ _ _ _ checked339.1 (.cons _ _ _ _ _ checked340.1 (.cons _ _ _ _ _ checked341.1 (.cons _ _ _ _ _ checked342.1 (.cons _ _ _ _ _ checked343.1 (.cons _ _ _ _ _ checked344.1 (.cons _ _ _ _ _ checked345.1 (.empty _)))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 363 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=26 := rfl
theorem partSize : partBytes.length=1165 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2,checked329.2,checked330.2,checked331.2,checked332.2,checked333.2,checked334.2,checked335.2,checked336.2,checked337.2,checked338.2,checked339.2,checked340.2,checked341.2,checked342.2,checked343.2,checked344.2,checked345.2]
  decide
end ArtifactPathFrameAdvanceGroup5
