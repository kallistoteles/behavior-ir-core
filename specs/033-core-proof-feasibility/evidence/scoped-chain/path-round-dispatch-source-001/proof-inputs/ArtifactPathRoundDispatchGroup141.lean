import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup141
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9024 : List WordIR.Op := [.bxor 9065 9066]
def bytes9024 : Bytes := ("    let r0000236b: u32 = r00002369 ^ r0000236a;\n" : String).toByteArray.data.toList
theorem checked9024 : bytes9024=statementBytes 9067 (op9024.map lower) ∧ bytes9024.length=48 := by core033_kernel_decide
def op9025 : List WordIR.Op := [.rotr 9064 25]
def bytes9025 : Bytes := ("    let r0000236c: u32 = r00002368.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9025 : bytes9025=statementBytes 9068 (op9025.map lower) ∧ bytes9025.length=65 := by core033_kernel_decide
def op9026 : List WordIR.Op := [.bxor 9067 9068]
def bytes9026 : Bytes := ("    let r0000236d: u32 = r0000236b ^ r0000236c;\n" : String).toByteArray.data.toList
theorem checked9026 : bytes9026=statementBytes 9069 (op9026.map lower) ∧ bytes9026.length=48 := by core033_kernel_decide
def op9027 : List WordIR.Op := [.badd 8983 9069]
def bytes9027 : Bytes := ("    let r0000236e: u32 = r00002317.wrapping_add(r0000236d);\n" : String).toByteArray.data.toList
theorem checked9027 : bytes9027=statementBytes 9070 (op9027.map lower) ∧ bytes9027.length=60 := by core033_kernel_decide
def op9028 : List WordIR.Op := [.band 9064 9037]
def bytes9028 : Bytes := ("    let r0000236f: u32 = r00002368 & r0000234d;\n" : String).toByteArray.data.toList
theorem checked9028 : bytes9028=statementBytes 9071 (op9028.map lower) ∧ bytes9028.length=48 := by core033_kernel_decide
def op9029 : List WordIR.Op := [.bnot 9064]
def bytes9029 : Bytes := ("    let r00002370: u32 = !r00002368;\n" : String).toByteArray.data.toList
theorem checked9029 : bytes9029=statementBytes 9072 (op9029.map lower) ∧ bytes9029.length=37 := by core033_kernel_decide
def op9030 : List WordIR.Op := [.band 9072 9010]
def bytes9030 : Bytes := ("    let r00002371: u32 = r00002370 & r00002332;\n" : String).toByteArray.data.toList
theorem checked9030 : bytes9030=statementBytes 9073 (op9030.map lower) ∧ bytes9030.length=48 := by core033_kernel_decide
def op9031 : List WordIR.Op := [.bxor 9071 9073]
def bytes9031 : Bytes := ("    let r00002372: u32 = r0000236f ^ r00002371;\n" : String).toByteArray.data.toList
theorem checked9031 : bytes9031=statementBytes 9074 (op9031.map lower) ∧ bytes9031.length=48 := by core033_kernel_decide
def op9032 : List WordIR.Op := [.badd 9070 9074]
def bytes9032 : Bytes := ("    let r00002373: u32 = r0000236e.wrapping_add(r00002372);\n" : String).toByteArray.data.toList
theorem checked9032 : bytes9032=statementBytes 9075 (op9032.map lower) ∧ bytes9032.length=60 := by core033_kernel_decide
def op9033 : List WordIR.Op := [.literal (BitVec.ofNat 32 1955562222)]
def bytes9033 : Bytes := ("    let r00002374: u32 = 0x748f82ee_u32;\n" : String).toByteArray.data.toList
theorem checked9033 : bytes9033=statementBytes 9076 (op9033.map lower) ∧ bytes9033.length=41 := by core033_kernel_decide
def op9034 : List WordIR.Op := [.badd 9075 9076]
def bytes9034 : Bytes := ("    let r00002375: u32 = r00002373.wrapping_add(r00002374);\n" : String).toByteArray.data.toList
theorem checked9034 : bytes9034=statementBytes 9077 (op9034.map lower) ∧ bytes9034.length=60 := by core033_kernel_decide
def op9035 : List WordIR.Op := [.badd 9077 7461]
def bytes9035 : Bytes := ("    let r00002376: u32 = r00002375.wrapping_add(r00001d25);\n" : String).toByteArray.data.toList
theorem checked9035 : bytes9035=statementBytes 9078 (op9035.map lower) ∧ bytes9035.length=60 := by core033_kernel_decide
def op9036 : List WordIR.Op := [.rotr 9063 2]
def bytes9036 : Bytes := ("    let r00002377: u32 = r00002367.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9036 : bytes9036=statementBytes 9079 (op9036.map lower) ∧ bytes9036.length=65 := by core033_kernel_decide
def op9037 : List WordIR.Op := [.rotr 9063 13]
def bytes9037 : Bytes := ("    let r00002378: u32 = r00002367.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9037 : bytes9037=statementBytes 9080 (op9037.map lower) ∧ bytes9037.length=65 := by core033_kernel_decide
def op9038 : List WordIR.Op := [.bxor 9079 9080]
def bytes9038 : Bytes := ("    let r00002379: u32 = r00002377 ^ r00002378;\n" : String).toByteArray.data.toList
theorem checked9038 : bytes9038=statementBytes 9081 (op9038.map lower) ∧ bytes9038.length=48 := by core033_kernel_decide
def op9039 : List WordIR.Op := [.rotr 9063 22]
def bytes9039 : Bytes := ("    let r0000237a: u32 = r00002367.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9039 : bytes9039=statementBytes 9082 (op9039.map lower) ∧ bytes9039.length=65 := by core033_kernel_decide
def op9040 : List WordIR.Op := [.bxor 9081 9082]
def bytes9040 : Bytes := ("    let r0000237b: u32 = r00002379 ^ r0000237a;\n" : String).toByteArray.data.toList
theorem checked9040 : bytes9040=statementBytes 9083 (op9040.map lower) ∧ bytes9040.length=48 := by core033_kernel_decide
def op9041 : List WordIR.Op := [.band 9063 9036]
def bytes9041 : Bytes := ("    let r0000237c: u32 = r00002367 & r0000234c;\n" : String).toByteArray.data.toList
theorem checked9041 : bytes9041=statementBytes 9084 (op9041.map lower) ∧ bytes9041.length=48 := by core033_kernel_decide
def op9042 : List WordIR.Op := [.band 9063 9009]
def bytes9042 : Bytes := ("    let r0000237d: u32 = r00002367 & r00002331;\n" : String).toByteArray.data.toList
theorem checked9042 : bytes9042=statementBytes 9085 (op9042.map lower) ∧ bytes9042.length=48 := by core033_kernel_decide
def op9043 : List WordIR.Op := [.bxor 9084 9085]
def bytes9043 : Bytes := ("    let r0000237e: u32 = r0000237c ^ r0000237d;\n" : String).toByteArray.data.toList
theorem checked9043 : bytes9043=statementBytes 9086 (op9043.map lower) ∧ bytes9043.length=48 := by core033_kernel_decide
def op9044 : List WordIR.Op := [.band 9036 9009]
def bytes9044 : Bytes := ("    let r0000237f: u32 = r0000234c & r00002331;\n" : String).toByteArray.data.toList
theorem checked9044 : bytes9044=statementBytes 9087 (op9044.map lower) ∧ bytes9044.length=48 := by core033_kernel_decide
def op9045 : List WordIR.Op := [.bxor 9086 9087]
def bytes9045 : Bytes := ("    let r00002380: u32 = r0000237e ^ r0000237f;\n" : String).toByteArray.data.toList
theorem checked9045 : bytes9045=statementBytes 9088 (op9045.map lower) ∧ bytes9045.length=48 := by core033_kernel_decide
def op9046 : List WordIR.Op := [.badd 9083 9088]
def bytes9046 : Bytes := ("    let r00002381: u32 = r0000237b.wrapping_add(r00002380);\n" : String).toByteArray.data.toList
theorem checked9046 : bytes9046=statementBytes 9089 (op9046.map lower) ∧ bytes9046.length=60 := by core033_kernel_decide
def op9047 : List WordIR.Op := [.badd 9078 9089]
def bytes9047 : Bytes := ("    let r00002382: u32 = r00002376.wrapping_add(r00002381);\n" : String).toByteArray.data.toList
theorem checked9047 : bytes9047=statementBytes 9090 (op9047.map lower) ∧ bytes9047.length=60 := by core033_kernel_decide
def op9048 : List WordIR.Op := [.badd 8982 9078]
def bytes9048 : Bytes := ("    let r00002383: u32 = r00002316.wrapping_add(r00002376);\n" : String).toByteArray.data.toList
theorem checked9048 : bytes9048=statementBytes 9091 (op9048.map lower) ∧ bytes9048.length=60 := by core033_kernel_decide
def op9049 : List WordIR.Op := [.rotr 9091 6]
def bytes9049 : Bytes := ("    let r00002384: u32 = r00002383.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9049 : bytes9049=statementBytes 9092 (op9049.map lower) ∧ bytes9049.length=65 := by core033_kernel_decide
def op9050 : List WordIR.Op := [.rotr 9091 11]
def bytes9050 : Bytes := ("    let r00002385: u32 = r00002383.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9050 : bytes9050=statementBytes 9093 (op9050.map lower) ∧ bytes9050.length=65 := by core033_kernel_decide
def op9051 : List WordIR.Op := [.bxor 9092 9093]
def bytes9051 : Bytes := ("    let r00002386: u32 = r00002384 ^ r00002385;\n" : String).toByteArray.data.toList
theorem checked9051 : bytes9051=statementBytes 9094 (op9051.map lower) ∧ bytes9051.length=48 := by core033_kernel_decide
def op9052 : List WordIR.Op := [.rotr 9091 25]
def bytes9052 : Bytes := ("    let r00002387: u32 = r00002383.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9052 : bytes9052=statementBytes 9095 (op9052.map lower) ∧ bytes9052.length=65 := by core033_kernel_decide
def op9053 : List WordIR.Op := [.bxor 9094 9095]
def bytes9053 : Bytes := ("    let r00002388: u32 = r00002386 ^ r00002387;\n" : String).toByteArray.data.toList
theorem checked9053 : bytes9053=statementBytes 9096 (op9053.map lower) ∧ bytes9053.length=48 := by core033_kernel_decide
def op9054 : List WordIR.Op := [.badd 9010 9096]
def bytes9054 : Bytes := ("    let r00002389: u32 = r00002332.wrapping_add(r00002388);\n" : String).toByteArray.data.toList
theorem checked9054 : bytes9054=statementBytes 9097 (op9054.map lower) ∧ bytes9054.length=60 := by core033_kernel_decide
def op9055 : List WordIR.Op := [.band 9091 9064]
def bytes9055 : Bytes := ("    let r0000238a: u32 = r00002383 & r00002368;\n" : String).toByteArray.data.toList
theorem checked9055 : bytes9055=statementBytes 9098 (op9055.map lower) ∧ bytes9055.length=48 := by core033_kernel_decide
def op9056 : List WordIR.Op := [.bnot 9091]
def bytes9056 : Bytes := ("    let r0000238b: u32 = !r00002383;\n" : String).toByteArray.data.toList
theorem checked9056 : bytes9056=statementBytes 9099 (op9056.map lower) ∧ bytes9056.length=37 := by core033_kernel_decide
def op9057 : List WordIR.Op := [.band 9099 9037]
def bytes9057 : Bytes := ("    let r0000238c: u32 = r0000238b & r0000234d;\n" : String).toByteArray.data.toList
theorem checked9057 : bytes9057=statementBytes 9100 (op9057.map lower) ∧ bytes9057.length=48 := by core033_kernel_decide
def op9058 : List WordIR.Op := [.bxor 9098 9100]
def bytes9058 : Bytes := ("    let r0000238d: u32 = r0000238a ^ r0000238c;\n" : String).toByteArray.data.toList
theorem checked9058 : bytes9058=statementBytes 9101 (op9058.map lower) ∧ bytes9058.length=48 := by core033_kernel_decide
def op9059 : List WordIR.Op := [.badd 9097 9101]
def bytes9059 : Bytes := ("    let r0000238e: u32 = r00002389.wrapping_add(r0000238d);\n" : String).toByteArray.data.toList
theorem checked9059 : bytes9059=statementBytes 9102 (op9059.map lower) ∧ bytes9059.length=60 := by core033_kernel_decide
def op9060 : List WordIR.Op := [.literal (BitVec.ofNat 32 2024104815)]
def bytes9060 : Bytes := ("    let r0000238f: u32 = 0x78a5636f_u32;\n" : String).toByteArray.data.toList
theorem checked9060 : bytes9060=statementBytes 9103 (op9060.map lower) ∧ bytes9060.length=41 := by core033_kernel_decide
def op9061 : List WordIR.Op := [.badd 9102 9103]
def bytes9061 : Bytes := ("    let r00002390: u32 = r0000238e.wrapping_add(r0000238f);\n" : String).toByteArray.data.toList
theorem checked9061 : bytes9061=statementBytes 9104 (op9061.map lower) ∧ bytes9061.length=60 := by core033_kernel_decide
def op9062 : List WordIR.Op := [.badd 9104 7474]
def bytes9062 : Bytes := ("    let r00002391: u32 = r00002390.wrapping_add(r00001d32);\n" : String).toByteArray.data.toList
theorem checked9062 : bytes9062=statementBytes 9105 (op9062.map lower) ∧ bytes9062.length=60 := by core033_kernel_decide
def op9063 : List WordIR.Op := [.rotr 9090 2]
def bytes9063 : Bytes := ("    let r00002392: u32 = r00002382.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9063 : bytes9063=statementBytes 9106 (op9063.map lower) ∧ bytes9063.length=65 := by core033_kernel_decide
def op9064 : List WordIR.Op := [.rotr 9090 13]
def bytes9064 : Bytes := ("    let r00002393: u32 = r00002382.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9064 : bytes9064=statementBytes 9107 (op9064.map lower) ∧ bytes9064.length=65 := by core033_kernel_decide
def op9065 : List WordIR.Op := [.bxor 9106 9107]
def bytes9065 : Bytes := ("    let r00002394: u32 = r00002392 ^ r00002393;\n" : String).toByteArray.data.toList
theorem checked9065 : bytes9065=statementBytes 9108 (op9065.map lower) ∧ bytes9065.length=48 := by core033_kernel_decide
def op9066 : List WordIR.Op := [.rotr 9090 22]
def bytes9066 : Bytes := ("    let r00002395: u32 = r00002382.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9066 : bytes9066=statementBytes 9109 (op9066.map lower) ∧ bytes9066.length=65 := by core033_kernel_decide
def op9067 : List WordIR.Op := [.bxor 9108 9109]
def bytes9067 : Bytes := ("    let r00002396: u32 = r00002394 ^ r00002395;\n" : String).toByteArray.data.toList
theorem checked9067 : bytes9067=statementBytes 9110 (op9067.map lower) ∧ bytes9067.length=48 := by core033_kernel_decide
def op9068 : List WordIR.Op := [.band 9090 9063]
def bytes9068 : Bytes := ("    let r00002397: u32 = r00002382 & r00002367;\n" : String).toByteArray.data.toList
theorem checked9068 : bytes9068=statementBytes 9111 (op9068.map lower) ∧ bytes9068.length=48 := by core033_kernel_decide
def op9069 : List WordIR.Op := [.band 9090 9036]
def bytes9069 : Bytes := ("    let r00002398: u32 = r00002382 & r0000234c;\n" : String).toByteArray.data.toList
theorem checked9069 : bytes9069=statementBytes 9112 (op9069.map lower) ∧ bytes9069.length=48 := by core033_kernel_decide
def op9070 : List WordIR.Op := [.bxor 9111 9112]
def bytes9070 : Bytes := ("    let r00002399: u32 = r00002397 ^ r00002398;\n" : String).toByteArray.data.toList
theorem checked9070 : bytes9070=statementBytes 9113 (op9070.map lower) ∧ bytes9070.length=48 := by core033_kernel_decide
def op9071 : List WordIR.Op := [.band 9063 9036]
def bytes9071 : Bytes := ("    let r0000239a: u32 = r00002367 & r0000234c;\n" : String).toByteArray.data.toList
theorem checked9071 : bytes9071=statementBytes 9114 (op9071.map lower) ∧ bytes9071.length=48 := by core033_kernel_decide
def op9072 : List WordIR.Op := [.bxor 9113 9114]
def bytes9072 : Bytes := ("    let r0000239b: u32 = r00002399 ^ r0000239a;\n" : String).toByteArray.data.toList
theorem checked9072 : bytes9072=statementBytes 9115 (op9072.map lower) ∧ bytes9072.length=48 := by core033_kernel_decide
def op9073 : List WordIR.Op := [.badd 9110 9115]
def bytes9073 : Bytes := ("    let r0000239c: u32 = r00002396.wrapping_add(r0000239b);\n" : String).toByteArray.data.toList
theorem checked9073 : bytes9073=statementBytes 9116 (op9073.map lower) ∧ bytes9073.length=60 := by core033_kernel_decide
def op9074 : List WordIR.Op := [.badd 9105 9116]
def bytes9074 : Bytes := ("    let r0000239d: u32 = r00002391.wrapping_add(r0000239c);\n" : String).toByteArray.data.toList
theorem checked9074 : bytes9074=statementBytes 9117 (op9074.map lower) ∧ bytes9074.length=60 := by core033_kernel_decide
def op9075 : List WordIR.Op := [.badd 9009 9105]
def bytes9075 : Bytes := ("    let r0000239e: u32 = r00002331.wrapping_add(r00002391);\n" : String).toByteArray.data.toList
theorem checked9075 : bytes9075=statementBytes 9118 (op9075.map lower) ∧ bytes9075.length=60 := by core033_kernel_decide
def op9076 : List WordIR.Op := [.rotr 9118 6]
def bytes9076 : Bytes := ("    let r0000239f: u32 = r0000239e.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9076 : bytes9076=statementBytes 9119 (op9076.map lower) ∧ bytes9076.length=65 := by core033_kernel_decide
def op9077 : List WordIR.Op := [.rotr 9118 11]
def bytes9077 : Bytes := ("    let r000023a0: u32 = r0000239e.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9077 : bytes9077=statementBytes 9120 (op9077.map lower) ∧ bytes9077.length=65 := by core033_kernel_decide
def op9078 : List WordIR.Op := [.bxor 9119 9120]
def bytes9078 : Bytes := ("    let r000023a1: u32 = r0000239f ^ r000023a0;\n" : String).toByteArray.data.toList
theorem checked9078 : bytes9078=statementBytes 9121 (op9078.map lower) ∧ bytes9078.length=48 := by core033_kernel_decide
def op9079 : List WordIR.Op := [.rotr 9118 25]
def bytes9079 : Bytes := ("    let r000023a2: u32 = r0000239e.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9079 : bytes9079=statementBytes 9122 (op9079.map lower) ∧ bytes9079.length=65 := by core033_kernel_decide
def op9080 : List WordIR.Op := [.bxor 9121 9122]
def bytes9080 : Bytes := ("    let r000023a3: u32 = r000023a1 ^ r000023a2;\n" : String).toByteArray.data.toList
theorem checked9080 : bytes9080=statementBytes 9123 (op9080.map lower) ∧ bytes9080.length=48 := by core033_kernel_decide
def op9081 : List WordIR.Op := [.badd 9037 9123]
def bytes9081 : Bytes := ("    let r000023a4: u32 = r0000234d.wrapping_add(r000023a3);\n" : String).toByteArray.data.toList
theorem checked9081 : bytes9081=statementBytes 9124 (op9081.map lower) ∧ bytes9081.length=60 := by core033_kernel_decide
def op9082 : List WordIR.Op := [.band 9118 9091]
def bytes9082 : Bytes := ("    let r000023a5: u32 = r0000239e & r00002383;\n" : String).toByteArray.data.toList
theorem checked9082 : bytes9082=statementBytes 9125 (op9082.map lower) ∧ bytes9082.length=48 := by core033_kernel_decide
def op9083 : List WordIR.Op := [.bnot 9118]
def bytes9083 : Bytes := ("    let r000023a6: u32 = !r0000239e;\n" : String).toByteArray.data.toList
theorem checked9083 : bytes9083=statementBytes 9126 (op9083.map lower) ∧ bytes9083.length=37 := by core033_kernel_decide
def op9084 : List WordIR.Op := [.band 9126 9064]
def bytes9084 : Bytes := ("    let r000023a7: u32 = r000023a6 & r00002368;\n" : String).toByteArray.data.toList
theorem checked9084 : bytes9084=statementBytes 9127 (op9084.map lower) ∧ bytes9084.length=48 := by core033_kernel_decide
def op9085 : List WordIR.Op := [.bxor 9125 9127]
def bytes9085 : Bytes := ("    let r000023a8: u32 = r000023a5 ^ r000023a7;\n" : String).toByteArray.data.toList
theorem checked9085 : bytes9085=statementBytes 9128 (op9085.map lower) ∧ bytes9085.length=48 := by core033_kernel_decide
def op9086 : List WordIR.Op := [.badd 9124 9128]
def bytes9086 : Bytes := ("    let r000023a9: u32 = r000023a4.wrapping_add(r000023a8);\n" : String).toByteArray.data.toList
theorem checked9086 : bytes9086=statementBytes 9129 (op9086.map lower) ∧ bytes9086.length=60 := by core033_kernel_decide
def op9087 : List WordIR.Op := [.literal (BitVec.ofNat 32 2227730452)]
def bytes9087 : Bytes := ("    let r000023aa: u32 = 0x84c87814_u32;\n" : String).toByteArray.data.toList
theorem checked9087 : bytes9087=statementBytes 9130 (op9087.map lower) ∧ bytes9087.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9024,op9025,op9026,op9027,op9028,op9029,op9030,op9031,op9032,op9033,op9034,op9035,op9036,op9037,op9038,op9039,op9040,op9041,op9042,op9043,op9044,op9045,op9046,op9047,op9048,op9049,op9050,op9051,op9052,op9053,op9054,op9055,op9056,op9057,op9058,op9059,op9060,op9061,op9062,op9063,op9064,op9065,op9066,op9067,op9068,op9069,op9070,op9071,op9072,op9073,op9074,op9075,op9076,op9077,op9078,op9079,op9080,op9081,op9082,op9083,op9084,op9085,op9086,op9087]
def chunks : List Bytes := [bytes9024,bytes9025,bytes9026,bytes9027,bytes9028,bytes9029,bytes9030,bytes9031,bytes9032,bytes9033,bytes9034,bytes9035,bytes9036,bytes9037,bytes9038,bytes9039,bytes9040,bytes9041,bytes9042,bytes9043,bytes9044,bytes9045,bytes9046,bytes9047,bytes9048,bytes9049,bytes9050,bytes9051,bytes9052,bytes9053,bytes9054,bytes9055,bytes9056,bytes9057,bytes9058,bytes9059,bytes9060,bytes9061,bytes9062,bytes9063,bytes9064,bytes9065,bytes9066,bytes9067,bytes9068,bytes9069,bytes9070,bytes9071,bytes9072,bytes9073,bytes9074,bytes9075,bytes9076,bytes9077,bytes9078,bytes9079,bytes9080,bytes9081,bytes9082,bytes9083,bytes9084,bytes9085,bytes9086,bytes9087]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9067 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9024.1 (.cons _ _ _ _ _ checked9025.1 (.cons _ _ _ _ _ checked9026.1 (.cons _ _ _ _ _ checked9027.1 (.cons _ _ _ _ _ checked9028.1 (.cons _ _ _ _ _ checked9029.1 (.cons _ _ _ _ _ checked9030.1 (.cons _ _ _ _ _ checked9031.1 (.cons _ _ _ _ _ checked9032.1 (.cons _ _ _ _ _ checked9033.1 (.cons _ _ _ _ _ checked9034.1 (.cons _ _ _ _ _ checked9035.1 (.cons _ _ _ _ _ checked9036.1 (.cons _ _ _ _ _ checked9037.1 (.cons _ _ _ _ _ checked9038.1 (.cons _ _ _ _ _ checked9039.1 (.cons _ _ _ _ _ checked9040.1 (.cons _ _ _ _ _ checked9041.1 (.cons _ _ _ _ _ checked9042.1 (.cons _ _ _ _ _ checked9043.1 (.cons _ _ _ _ _ checked9044.1 (.cons _ _ _ _ _ checked9045.1 (.cons _ _ _ _ _ checked9046.1 (.cons _ _ _ _ _ checked9047.1 (.cons _ _ _ _ _ checked9048.1 (.cons _ _ _ _ _ checked9049.1 (.cons _ _ _ _ _ checked9050.1 (.cons _ _ _ _ _ checked9051.1 (.cons _ _ _ _ _ checked9052.1 (.cons _ _ _ _ _ checked9053.1 (.cons _ _ _ _ _ checked9054.1 (.cons _ _ _ _ _ checked9055.1 (.cons _ _ _ _ _ checked9056.1 (.cons _ _ _ _ _ checked9057.1 (.cons _ _ _ _ _ checked9058.1 (.cons _ _ _ _ _ checked9059.1 (.cons _ _ _ _ _ checked9060.1 (.cons _ _ _ _ _ checked9061.1 (.cons _ _ _ _ _ checked9062.1 (.cons _ _ _ _ _ checked9063.1 (.cons _ _ _ _ _ checked9064.1 (.cons _ _ _ _ _ checked9065.1 (.cons _ _ _ _ _ checked9066.1 (.cons _ _ _ _ _ checked9067.1 (.cons _ _ _ _ _ checked9068.1 (.cons _ _ _ _ _ checked9069.1 (.cons _ _ _ _ _ checked9070.1 (.cons _ _ _ _ _ checked9071.1 (.cons _ _ _ _ _ checked9072.1 (.cons _ _ _ _ _ checked9073.1 (.cons _ _ _ _ _ checked9074.1 (.cons _ _ _ _ _ checked9075.1 (.cons _ _ _ _ _ checked9076.1 (.cons _ _ _ _ _ checked9077.1 (.cons _ _ _ _ _ checked9078.1 (.cons _ _ _ _ _ checked9079.1 (.cons _ _ _ _ _ checked9080.1 (.cons _ _ _ _ _ checked9081.1 (.cons _ _ _ _ _ checked9082.1 (.cons _ _ _ _ _ checked9083.1 (.cons _ _ _ _ _ checked9084.1 (.cons _ _ _ _ _ checked9085.1 (.cons _ _ _ _ _ checked9086.1 (.cons _ _ _ _ _ checked9087.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9067 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3431 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9024.2,checked9025.2,checked9026.2,checked9027.2,checked9028.2,checked9029.2,checked9030.2,checked9031.2,checked9032.2,checked9033.2,checked9034.2,checked9035.2,checked9036.2,checked9037.2,checked9038.2,checked9039.2,checked9040.2,checked9041.2,checked9042.2,checked9043.2,checked9044.2,checked9045.2,checked9046.2,checked9047.2,checked9048.2,checked9049.2,checked9050.2,checked9051.2,checked9052.2,checked9053.2,checked9054.2,checked9055.2,checked9056.2,checked9057.2,checked9058.2,checked9059.2,checked9060.2,checked9061.2,checked9062.2,checked9063.2,checked9064.2,checked9065.2,checked9066.2,checked9067.2,checked9068.2,checked9069.2,checked9070.2,checked9071.2,checked9072.2,checked9073.2,checked9074.2,checked9075.2,checked9076.2,checked9077.2,checked9078.2,checked9079.2,checked9080.2,checked9081.2,checked9082.2,checked9083.2,checked9084.2,checked9085.2,checked9086.2,checked9087.2]
  decide
end ArtifactPathRoundDispatchGroup141
