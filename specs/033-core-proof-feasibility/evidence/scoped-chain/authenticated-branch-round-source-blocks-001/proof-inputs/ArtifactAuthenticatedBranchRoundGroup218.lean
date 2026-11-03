import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup218
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13952 : List WordIR.Op := [.band 14069 75]
def bytes13952 : Bytes := ("    let r000036f6: u32 = r000036f5 & r0000004b;\n" : String).toByteArray.data.toList
theorem checked13952 : bytes13952=statementBytes 14070 (op13952.map lower) ∧ bytes13952.length=48 := by core033_kernel_decide
def op13953 : List WordIR.Op := [.bxor 14065 14070]
def bytes13953 : Bytes := ("    let r000036f7: u32 = r000036f1 ^ r000036f6;\n" : String).toByteArray.data.toList
theorem checked13953 : bytes13953=statementBytes 14071 (op13953.map lower) ∧ bytes13953.length=48 := by core033_kernel_decide
def op13954 : List WordIR.Op := [.bnot 440]
def bytes13954 : Bytes := ("    let r000036f8: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13954 : bytes13954=statementBytes 14072 (op13954.map lower) ∧ bytes13954.length=37 := by core033_kernel_decide
def op13955 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13955 : Bytes := ("    let r000036f9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13955 : bytes13955=statementBytes 14073 (op13955.map lower) ∧ bytes13955.length=41 := by core033_kernel_decide
def op13956 : List WordIR.Op := [.badd 14072 14073]
def bytes13956 : Bytes := ("    let r000036fa: u32 = r000036f8.wrapping_add(r000036f9);\n" : String).toByteArray.data.toList
theorem checked13956 : bytes13956=statementBytes 14074 (op13956.map lower) ∧ bytes13956.length=60 := by core033_kernel_decide
def op13957 : List WordIR.Op := [.band 14074 12936]
def bytes13957 : Bytes := ("    let r000036fb: u32 = r000036fa & r00003288;\n" : String).toByteArray.data.toList
theorem checked13957 : bytes13957=statementBytes 14075 (op13957.map lower) ∧ bytes13957.length=48 := by core033_kernel_decide
def op13958 : List WordIR.Op := [.bnot 440]
def bytes13958 : Bytes := ("    let r000036fc: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13958 : bytes13958=statementBytes 14076 (op13958.map lower) ∧ bytes13958.length=37 := by core033_kernel_decide
def op13959 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13959 : Bytes := ("    let r000036fd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13959 : bytes13959=statementBytes 14077 (op13959.map lower) ∧ bytes13959.length=41 := by core033_kernel_decide
def op13960 : List WordIR.Op := [.badd 14076 14077]
def bytes13960 : Bytes := ("    let r000036fe: u32 = r000036fc.wrapping_add(r000036fd);\n" : String).toByteArray.data.toList
theorem checked13960 : bytes13960=statementBytes 14078 (op13960.map lower) ∧ bytes13960.length=60 := by core033_kernel_decide
def op13961 : List WordIR.Op := [.bnot 14078]
def bytes13961 : Bytes := ("    let r000036ff: u32 = !r000036fe;\n" : String).toByteArray.data.toList
theorem checked13961 : bytes13961=statementBytes 14079 (op13961.map lower) ∧ bytes13961.length=37 := by core033_kernel_decide
def op13962 : List WordIR.Op := [.band 14079 76]
def bytes13962 : Bytes := ("    let r00003700: u32 = r000036ff & r0000004c;\n" : String).toByteArray.data.toList
theorem checked13962 : bytes13962=statementBytes 14080 (op13962.map lower) ∧ bytes13962.length=48 := by core033_kernel_decide
def op13963 : List WordIR.Op := [.bxor 14075 14080]
def bytes13963 : Bytes := ("    let r00003701: u32 = r000036fb ^ r00003700;\n" : String).toByteArray.data.toList
theorem checked13963 : bytes13963=statementBytes 14081 (op13963.map lower) ∧ bytes13963.length=48 := by core033_kernel_decide
def op13964 : List WordIR.Op := [.bnot 440]
def bytes13964 : Bytes := ("    let r00003702: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13964 : bytes13964=statementBytes 14082 (op13964.map lower) ∧ bytes13964.length=37 := by core033_kernel_decide
def op13965 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13965 : Bytes := ("    let r00003703: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13965 : bytes13965=statementBytes 14083 (op13965.map lower) ∧ bytes13965.length=41 := by core033_kernel_decide
def op13966 : List WordIR.Op := [.badd 14082 14083]
def bytes13966 : Bytes := ("    let r00003704: u32 = r00003702.wrapping_add(r00003703);\n" : String).toByteArray.data.toList
theorem checked13966 : bytes13966=statementBytes 14084 (op13966.map lower) ∧ bytes13966.length=60 := by core033_kernel_decide
def op13967 : List WordIR.Op := [.band 14084 13092]
def bytes13967 : Bytes := ("    let r00003705: u32 = r00003704 & r00003324;\n" : String).toByteArray.data.toList
theorem checked13967 : bytes13967=statementBytes 14085 (op13967.map lower) ∧ bytes13967.length=48 := by core033_kernel_decide
def op13968 : List WordIR.Op := [.bnot 440]
def bytes13968 : Bytes := ("    let r00003706: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13968 : bytes13968=statementBytes 14086 (op13968.map lower) ∧ bytes13968.length=37 := by core033_kernel_decide
def op13969 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13969 : Bytes := ("    let r00003707: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13969 : bytes13969=statementBytes 14087 (op13969.map lower) ∧ bytes13969.length=41 := by core033_kernel_decide
def op13970 : List WordIR.Op := [.badd 14086 14087]
def bytes13970 : Bytes := ("    let r00003708: u32 = r00003706.wrapping_add(r00003707);\n" : String).toByteArray.data.toList
theorem checked13970 : bytes13970=statementBytes 14088 (op13970.map lower) ∧ bytes13970.length=60 := by core033_kernel_decide
def op13971 : List WordIR.Op := [.bnot 14088]
def bytes13971 : Bytes := ("    let r00003709: u32 = !r00003708;\n" : String).toByteArray.data.toList
theorem checked13971 : bytes13971=statementBytes 14089 (op13971.map lower) ∧ bytes13971.length=37 := by core033_kernel_decide
def op13972 : List WordIR.Op := [.band 14089 77]
def bytes13972 : Bytes := ("    let r0000370a: u32 = r00003709 & r0000004d;\n" : String).toByteArray.data.toList
theorem checked13972 : bytes13972=statementBytes 14090 (op13972.map lower) ∧ bytes13972.length=48 := by core033_kernel_decide
def op13973 : List WordIR.Op := [.bxor 14085 14090]
def bytes13973 : Bytes := ("    let r0000370b: u32 = r00003705 ^ r0000370a;\n" : String).toByteArray.data.toList
theorem checked13973 : bytes13973=statementBytes 14091 (op13973.map lower) ∧ bytes13973.length=48 := by core033_kernel_decide
def op13974 : List WordIR.Op := [.bnot 440]
def bytes13974 : Bytes := ("    let r0000370c: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13974 : bytes13974=statementBytes 14092 (op13974.map lower) ∧ bytes13974.length=37 := by core033_kernel_decide
def op13975 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13975 : Bytes := ("    let r0000370d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13975 : bytes13975=statementBytes 14093 (op13975.map lower) ∧ bytes13975.length=41 := by core033_kernel_decide
def op13976 : List WordIR.Op := [.badd 14092 14093]
def bytes13976 : Bytes := ("    let r0000370e: u32 = r0000370c.wrapping_add(r0000370d);\n" : String).toByteArray.data.toList
theorem checked13976 : bytes13976=statementBytes 14094 (op13976.map lower) ∧ bytes13976.length=60 := by core033_kernel_decide
def op13977 : List WordIR.Op := [.band 14094 13196]
def bytes13977 : Bytes := ("    let r0000370f: u32 = r0000370e & r0000338c;\n" : String).toByteArray.data.toList
theorem checked13977 : bytes13977=statementBytes 14095 (op13977.map lower) ∧ bytes13977.length=48 := by core033_kernel_decide
def op13978 : List WordIR.Op := [.bnot 440]
def bytes13978 : Bytes := ("    let r00003710: u32 = !r000001b8;\n" : String).toByteArray.data.toList
theorem checked13978 : bytes13978=statementBytes 14096 (op13978.map lower) ∧ bytes13978.length=37 := by core033_kernel_decide
def op13979 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13979 : Bytes := ("    let r00003711: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13979 : bytes13979=statementBytes 14097 (op13979.map lower) ∧ bytes13979.length=41 := by core033_kernel_decide
def op13980 : List WordIR.Op := [.badd 14096 14097]
def bytes13980 : Bytes := ("    let r00003712: u32 = r00003710.wrapping_add(r00003711);\n" : String).toByteArray.data.toList
theorem checked13980 : bytes13980=statementBytes 14098 (op13980.map lower) ∧ bytes13980.length=60 := by core033_kernel_decide
def op13981 : List WordIR.Op := [.bnot 14098]
def bytes13981 : Bytes := ("    let r00003713: u32 = !r00003712;\n" : String).toByteArray.data.toList
theorem checked13981 : bytes13981=statementBytes 14099 (op13981.map lower) ∧ bytes13981.length=37 := by core033_kernel_decide
def op13982 : List WordIR.Op := [.band 14099 78]
def bytes13982 : Bytes := ("    let r00003714: u32 = r00003713 & r0000004e;\n" : String).toByteArray.data.toList
theorem checked13982 : bytes13982=statementBytes 14100 (op13982.map lower) ∧ bytes13982.length=48 := by core033_kernel_decide
def op13983 : List WordIR.Op := [.bxor 14095 14100]
def bytes13983 : Bytes := ("    let r00003715: u32 = r0000370f ^ r00003714;\n" : String).toByteArray.data.toList
theorem checked13983 : bytes13983=statementBytes 14101 (op13983.map lower) ∧ bytes13983.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13952,op13953,op13954,op13955,op13956,op13957,op13958,op13959,op13960,op13961,op13962,op13963,op13964,op13965,op13966,op13967,op13968,op13969,op13970,op13971,op13972,op13973,op13974,op13975,op13976,op13977,op13978,op13979,op13980,op13981,op13982,op13983]
def chunks : List Bytes := [bytes13952,bytes13953,bytes13954,bytes13955,bytes13956,bytes13957,bytes13958,bytes13959,bytes13960,bytes13961,bytes13962,bytes13963,bytes13964,bytes13965,bytes13966,bytes13967,bytes13968,bytes13969,bytes13970,bytes13971,bytes13972,bytes13973,bytes13974,bytes13975,bytes13976,bytes13977,bytes13978,bytes13979,bytes13980,bytes13981,bytes13982,bytes13983]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 14070 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13952.1 (.cons _ _ _ _ _ checked13953.1 (.cons _ _ _ _ _ checked13954.1 (.cons _ _ _ _ _ checked13955.1 (.cons _ _ _ _ _ checked13956.1 (.cons _ _ _ _ _ checked13957.1 (.cons _ _ _ _ _ checked13958.1 (.cons _ _ _ _ _ checked13959.1 (.cons _ _ _ _ _ checked13960.1 (.cons _ _ _ _ _ checked13961.1 (.cons _ _ _ _ _ checked13962.1 (.cons _ _ _ _ _ checked13963.1 (.cons _ _ _ _ _ checked13964.1 (.cons _ _ _ _ _ checked13965.1 (.cons _ _ _ _ _ checked13966.1 (.cons _ _ _ _ _ checked13967.1 (.cons _ _ _ _ _ checked13968.1 (.cons _ _ _ _ _ checked13969.1 (.cons _ _ _ _ _ checked13970.1 (.cons _ _ _ _ _ checked13971.1 (.cons _ _ _ _ _ checked13972.1 (.cons _ _ _ _ _ checked13973.1 (.cons _ _ _ _ _ checked13974.1 (.cons _ _ _ _ _ checked13975.1 (.cons _ _ _ _ _ checked13976.1 (.cons _ _ _ _ _ checked13977.1 (.cons _ _ _ _ _ checked13978.1 (.cons _ _ _ _ _ checked13979.1 (.cons _ _ _ _ _ checked13980.1 (.cons _ _ _ _ _ checked13981.1 (.cons _ _ _ _ _ checked13982.1 (.cons _ _ _ _ _ checked13983.1 (.empty _)))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 14070 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=32 := rfl
theorem partSize : partBytes.length=1467 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13952.2,checked13953.2,checked13954.2,checked13955.2,checked13956.2,checked13957.2,checked13958.2,checked13959.2,checked13960.2,checked13961.2,checked13962.2,checked13963.2,checked13964.2,checked13965.2,checked13966.2,checked13967.2,checked13968.2,checked13969.2,checked13970.2,checked13971.2,checked13972.2,checked13973.2,checked13974.2,checked13975.2,checked13976.2,checked13977.2,checked13978.2,checked13979.2,checked13980.2,checked13981.2,checked13982.2,checked13983.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup218
