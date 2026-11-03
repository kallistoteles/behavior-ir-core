import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup110
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7040 : List WordIR.Op := [.band 7062 1452]
def bytes7040 : Bytes := ("    let r00001bab: u32 = r00001b96 & r000005ac;\n" : String).toByteArray.data.toList
theorem checked7040 : bytes7040=statementBytes 7083 (op7040.map lower) ∧ bytes7040.length=48 := by core033_kernel_decide
def op7041 : List WordIR.Op := [.band 7062 1505]
def bytes7041 : Bytes := ("    let r00001bac: u32 = r00001b96 & r000005e1;\n" : String).toByteArray.data.toList
theorem checked7041 : bytes7041=statementBytes 7084 (op7041.map lower) ∧ bytes7041.length=48 := by core033_kernel_decide
def op7042 : List WordIR.Op := [.bxor 7083 7084]
def bytes7042 : Bytes := ("    let r00001bad: u32 = r00001bab ^ r00001bac;\n" : String).toByteArray.data.toList
theorem checked7042 : bytes7042=statementBytes 7085 (op7042.map lower) ∧ bytes7042.length=48 := by core033_kernel_decide
def op7043 : List WordIR.Op := [.band 1452 1505]
def bytes7043 : Bytes := ("    let r00001bae: u32 = r000005ac & r000005e1;\n" : String).toByteArray.data.toList
theorem checked7043 : bytes7043=statementBytes 7086 (op7043.map lower) ∧ bytes7043.length=48 := by core033_kernel_decide
def op7044 : List WordIR.Op := [.bxor 7085 7086]
def bytes7044 : Bytes := ("    let r00001baf: u32 = r00001bad ^ r00001bae;\n" : String).toByteArray.data.toList
theorem checked7044 : bytes7044=statementBytes 7087 (op7044.map lower) ∧ bytes7044.length=48 := by core033_kernel_decide
def op7045 : List WordIR.Op := [.badd 7082 7087]
def bytes7045 : Bytes := ("    let r00001bb0: u32 = r00001baa.wrapping_add(r00001baf);\n" : String).toByteArray.data.toList
theorem checked7045 : bytes7045=statementBytes 7088 (op7045.map lower) ∧ bytes7045.length=60 := by core033_kernel_decide
def op7046 : List WordIR.Op := [.badd 7077 7088]
def bytes7046 : Bytes := ("    let r00001bb1: u32 = r00001ba5.wrapping_add(r00001bb0);\n" : String).toByteArray.data.toList
theorem checked7046 : bytes7046=statementBytes 7089 (op7046.map lower) ∧ bytes7046.length=60 := by core033_kernel_decide
def op7047 : List WordIR.Op := [.badd 1558 7077]
def bytes7047 : Bytes := ("    let r00001bb2: u32 = r00000616.wrapping_add(r00001ba5);\n" : String).toByteArray.data.toList
theorem checked7047 : bytes7047=statementBytes 7090 (op7047.map lower) ∧ bytes7047.length=60 := by core033_kernel_decide
def op7048 : List WordIR.Op := [.rotr 7090 6]
def bytes7048 : Bytes := ("    let r00001bb3: u32 = r00001bb2.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7048 : bytes7048=statementBytes 7091 (op7048.map lower) ∧ bytes7048.length=65 := by core033_kernel_decide
def op7049 : List WordIR.Op := [.rotr 7090 11]
def bytes7049 : Bytes := ("    let r00001bb4: u32 = r00001bb2.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7049 : bytes7049=statementBytes 7092 (op7049.map lower) ∧ bytes7049.length=65 := by core033_kernel_decide
def op7050 : List WordIR.Op := [.bxor 7091 7092]
def bytes7050 : Bytes := ("    let r00001bb5: u32 = r00001bb3 ^ r00001bb4;\n" : String).toByteArray.data.toList
theorem checked7050 : bytes7050=statementBytes 7093 (op7050.map lower) ∧ bytes7050.length=48 := by core033_kernel_decide
def op7051 : List WordIR.Op := [.rotr 7090 25]
def bytes7051 : Bytes := ("    let r00001bb6: u32 = r00001bb2.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7051 : bytes7051=statementBytes 7094 (op7051.map lower) ∧ bytes7051.length=65 := by core033_kernel_decide
def op7052 : List WordIR.Op := [.bxor 7093 7094]
def bytes7052 : Bytes := ("    let r00001bb7: u32 = r00001bb5 ^ r00001bb6;\n" : String).toByteArray.data.toList
theorem checked7052 : bytes7052=statementBytes 7095 (op7052.map lower) ∧ bytes7052.length=48 := by core033_kernel_decide
def op7053 : List WordIR.Op := [.badd 1717 7095]
def bytes7053 : Bytes := ("    let r00001bb8: u32 = r000006b5.wrapping_add(r00001bb7);\n" : String).toByteArray.data.toList
theorem checked7053 : bytes7053=statementBytes 7096 (op7053.map lower) ∧ bytes7053.length=60 := by core033_kernel_decide
def op7054 : List WordIR.Op := [.band 7090 7063]
def bytes7054 : Bytes := ("    let r00001bb9: u32 = r00001bb2 & r00001b97;\n" : String).toByteArray.data.toList
theorem checked7054 : bytes7054=statementBytes 7097 (op7054.map lower) ∧ bytes7054.length=48 := by core033_kernel_decide
def op7055 : List WordIR.Op := [.bnot 7090]
def bytes7055 : Bytes := ("    let r00001bba: u32 = !r00001bb2;\n" : String).toByteArray.data.toList
theorem checked7055 : bytes7055=statementBytes 7098 (op7055.map lower) ∧ bytes7055.length=37 := by core033_kernel_decide
def op7056 : List WordIR.Op := [.band 7098 1664]
def bytes7056 : Bytes := ("    let r00001bbb: u32 = r00001bba & r00000680;\n" : String).toByteArray.data.toList
theorem checked7056 : bytes7056=statementBytes 7099 (op7056.map lower) ∧ bytes7056.length=48 := by core033_kernel_decide
def op7057 : List WordIR.Op := [.bxor 7097 7099]
def bytes7057 : Bytes := ("    let r00001bbc: u32 = r00001bb9 ^ r00001bbb;\n" : String).toByteArray.data.toList
theorem checked7057 : bytes7057=statementBytes 7100 (op7057.map lower) ∧ bytes7057.length=48 := by core033_kernel_decide
def op7058 : List WordIR.Op := [.badd 7096 7100]
def bytes7058 : Bytes := ("    let r00001bbd: u32 = r00001bb8.wrapping_add(r00001bbc);\n" : String).toByteArray.data.toList
theorem checked7058 : bytes7058=statementBytes 7101 (op7058.map lower) ∧ bytes7058.length=60 := by core033_kernel_decide
def op7059 : List WordIR.Op := [.literal (BitVec.ofNat 32 3049323471)]
def bytes7059 : Bytes := ("    let r00001bbe: u32 = 0xb5c0fbcf_u32;\n" : String).toByteArray.data.toList
theorem checked7059 : bytes7059=statementBytes 7102 (op7059.map lower) ∧ bytes7059.length=41 := by core033_kernel_decide
def op7060 : List WordIR.Op := [.badd 7101 7102]
def bytes7060 : Bytes := ("    let r00001bbf: u32 = r00001bbd.wrapping_add(r00001bbe);\n" : String).toByteArray.data.toList
theorem checked7060 : bytes7060=statementBytes 7103 (op7060.map lower) ∧ bytes7060.length=60 := by core033_kernel_decide
def op7061 : List WordIR.Op := [.badd 7103 5182]
def bytes7061 : Bytes := ("    let r00001bc0: u32 = r00001bbf.wrapping_add(r0000143e);\n" : String).toByteArray.data.toList
theorem checked7061 : bytes7061=statementBytes 7104 (op7061.map lower) ∧ bytes7061.length=60 := by core033_kernel_decide
def op7062 : List WordIR.Op := [.rotr 7089 2]
def bytes7062 : Bytes := ("    let r00001bc1: u32 = r00001bb1.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7062 : bytes7062=statementBytes 7105 (op7062.map lower) ∧ bytes7062.length=65 := by core033_kernel_decide
def op7063 : List WordIR.Op := [.rotr 7089 13]
def bytes7063 : Bytes := ("    let r00001bc2: u32 = r00001bb1.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7063 : bytes7063=statementBytes 7106 (op7063.map lower) ∧ bytes7063.length=65 := by core033_kernel_decide
def op7064 : List WordIR.Op := [.bxor 7105 7106]
def bytes7064 : Bytes := ("    let r00001bc3: u32 = r00001bc1 ^ r00001bc2;\n" : String).toByteArray.data.toList
theorem checked7064 : bytes7064=statementBytes 7107 (op7064.map lower) ∧ bytes7064.length=48 := by core033_kernel_decide
def op7065 : List WordIR.Op := [.rotr 7089 22]
def bytes7065 : Bytes := ("    let r00001bc4: u32 = r00001bb1.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7065 : bytes7065=statementBytes 7108 (op7065.map lower) ∧ bytes7065.length=65 := by core033_kernel_decide
def op7066 : List WordIR.Op := [.bxor 7107 7108]
def bytes7066 : Bytes := ("    let r00001bc5: u32 = r00001bc3 ^ r00001bc4;\n" : String).toByteArray.data.toList
theorem checked7066 : bytes7066=statementBytes 7109 (op7066.map lower) ∧ bytes7066.length=48 := by core033_kernel_decide
def op7067 : List WordIR.Op := [.band 7089 7062]
def bytes7067 : Bytes := ("    let r00001bc6: u32 = r00001bb1 & r00001b96;\n" : String).toByteArray.data.toList
theorem checked7067 : bytes7067=statementBytes 7110 (op7067.map lower) ∧ bytes7067.length=48 := by core033_kernel_decide
def op7068 : List WordIR.Op := [.band 7089 1452]
def bytes7068 : Bytes := ("    let r00001bc7: u32 = r00001bb1 & r000005ac;\n" : String).toByteArray.data.toList
theorem checked7068 : bytes7068=statementBytes 7111 (op7068.map lower) ∧ bytes7068.length=48 := by core033_kernel_decide
def op7069 : List WordIR.Op := [.bxor 7110 7111]
def bytes7069 : Bytes := ("    let r00001bc8: u32 = r00001bc6 ^ r00001bc7;\n" : String).toByteArray.data.toList
theorem checked7069 : bytes7069=statementBytes 7112 (op7069.map lower) ∧ bytes7069.length=48 := by core033_kernel_decide
def op7070 : List WordIR.Op := [.band 7062 1452]
def bytes7070 : Bytes := ("    let r00001bc9: u32 = r00001b96 & r000005ac;\n" : String).toByteArray.data.toList
theorem checked7070 : bytes7070=statementBytes 7113 (op7070.map lower) ∧ bytes7070.length=48 := by core033_kernel_decide
def op7071 : List WordIR.Op := [.bxor 7112 7113]
def bytes7071 : Bytes := ("    let r00001bca: u32 = r00001bc8 ^ r00001bc9;\n" : String).toByteArray.data.toList
theorem checked7071 : bytes7071=statementBytes 7114 (op7071.map lower) ∧ bytes7071.length=48 := by core033_kernel_decide
def op7072 : List WordIR.Op := [.badd 7109 7114]
def bytes7072 : Bytes := ("    let r00001bcb: u32 = r00001bc5.wrapping_add(r00001bca);\n" : String).toByteArray.data.toList
theorem checked7072 : bytes7072=statementBytes 7115 (op7072.map lower) ∧ bytes7072.length=60 := by core033_kernel_decide
def op7073 : List WordIR.Op := [.badd 7104 7115]
def bytes7073 : Bytes := ("    let r00001bcc: u32 = r00001bc0.wrapping_add(r00001bcb);\n" : String).toByteArray.data.toList
theorem checked7073 : bytes7073=statementBytes 7116 (op7073.map lower) ∧ bytes7073.length=60 := by core033_kernel_decide
def op7074 : List WordIR.Op := [.badd 1505 7104]
def bytes7074 : Bytes := ("    let r00001bcd: u32 = r000005e1.wrapping_add(r00001bc0);\n" : String).toByteArray.data.toList
theorem checked7074 : bytes7074=statementBytes 7117 (op7074.map lower) ∧ bytes7074.length=60 := by core033_kernel_decide
def op7075 : List WordIR.Op := [.rotr 7117 6]
def bytes7075 : Bytes := ("    let r00001bce: u32 = r00001bcd.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7075 : bytes7075=statementBytes 7118 (op7075.map lower) ∧ bytes7075.length=65 := by core033_kernel_decide
def op7076 : List WordIR.Op := [.rotr 7117 11]
def bytes7076 : Bytes := ("    let r00001bcf: u32 = r00001bcd.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7076 : bytes7076=statementBytes 7119 (op7076.map lower) ∧ bytes7076.length=65 := by core033_kernel_decide
def op7077 : List WordIR.Op := [.bxor 7118 7119]
def bytes7077 : Bytes := ("    let r00001bd0: u32 = r00001bce ^ r00001bcf;\n" : String).toByteArray.data.toList
theorem checked7077 : bytes7077=statementBytes 7120 (op7077.map lower) ∧ bytes7077.length=48 := by core033_kernel_decide
def op7078 : List WordIR.Op := [.rotr 7117 25]
def bytes7078 : Bytes := ("    let r00001bd1: u32 = r00001bcd.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7078 : bytes7078=statementBytes 7121 (op7078.map lower) ∧ bytes7078.length=65 := by core033_kernel_decide
def op7079 : List WordIR.Op := [.bxor 7120 7121]
def bytes7079 : Bytes := ("    let r00001bd2: u32 = r00001bd0 ^ r00001bd1;\n" : String).toByteArray.data.toList
theorem checked7079 : bytes7079=statementBytes 7122 (op7079.map lower) ∧ bytes7079.length=48 := by core033_kernel_decide
def op7080 : List WordIR.Op := [.badd 1664 7122]
def bytes7080 : Bytes := ("    let r00001bd3: u32 = r00000680.wrapping_add(r00001bd2);\n" : String).toByteArray.data.toList
theorem checked7080 : bytes7080=statementBytes 7123 (op7080.map lower) ∧ bytes7080.length=60 := by core033_kernel_decide
def op7081 : List WordIR.Op := [.band 7117 7090]
def bytes7081 : Bytes := ("    let r00001bd4: u32 = r00001bcd & r00001bb2;\n" : String).toByteArray.data.toList
theorem checked7081 : bytes7081=statementBytes 7124 (op7081.map lower) ∧ bytes7081.length=48 := by core033_kernel_decide
def op7082 : List WordIR.Op := [.bnot 7117]
def bytes7082 : Bytes := ("    let r00001bd5: u32 = !r00001bcd;\n" : String).toByteArray.data.toList
theorem checked7082 : bytes7082=statementBytes 7125 (op7082.map lower) ∧ bytes7082.length=37 := by core033_kernel_decide
def op7083 : List WordIR.Op := [.band 7125 7063]
def bytes7083 : Bytes := ("    let r00001bd6: u32 = r00001bd5 & r00001b97;\n" : String).toByteArray.data.toList
theorem checked7083 : bytes7083=statementBytes 7126 (op7083.map lower) ∧ bytes7083.length=48 := by core033_kernel_decide
def op7084 : List WordIR.Op := [.bxor 7124 7126]
def bytes7084 : Bytes := ("    let r00001bd7: u32 = r00001bd4 ^ r00001bd6;\n" : String).toByteArray.data.toList
theorem checked7084 : bytes7084=statementBytes 7127 (op7084.map lower) ∧ bytes7084.length=48 := by core033_kernel_decide
def op7085 : List WordIR.Op := [.badd 7123 7127]
def bytes7085 : Bytes := ("    let r00001bd8: u32 = r00001bd3.wrapping_add(r00001bd7);\n" : String).toByteArray.data.toList
theorem checked7085 : bytes7085=statementBytes 7128 (op7085.map lower) ∧ bytes7085.length=60 := by core033_kernel_decide
def op7086 : List WordIR.Op := [.literal (BitVec.ofNat 32 3921009573)]
def bytes7086 : Bytes := ("    let r00001bd9: u32 = 0xe9b5dba5_u32;\n" : String).toByteArray.data.toList
theorem checked7086 : bytes7086=statementBytes 7129 (op7086.map lower) ∧ bytes7086.length=41 := by core033_kernel_decide
def op7087 : List WordIR.Op := [.badd 7128 7129]
def bytes7087 : Bytes := ("    let r00001bda: u32 = r00001bd8.wrapping_add(r00001bd9);\n" : String).toByteArray.data.toList
theorem checked7087 : bytes7087=statementBytes 7130 (op7087.map lower) ∧ bytes7087.length=60 := by core033_kernel_decide
def op7088 : List WordIR.Op := [.badd 7130 5188]
def bytes7088 : Bytes := ("    let r00001bdb: u32 = r00001bda.wrapping_add(r00001444);\n" : String).toByteArray.data.toList
theorem checked7088 : bytes7088=statementBytes 7131 (op7088.map lower) ∧ bytes7088.length=60 := by core033_kernel_decide
def op7089 : List WordIR.Op := [.rotr 7116 2]
def bytes7089 : Bytes := ("    let r00001bdc: u32 = r00001bcc.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7089 : bytes7089=statementBytes 7132 (op7089.map lower) ∧ bytes7089.length=65 := by core033_kernel_decide
def op7090 : List WordIR.Op := [.rotr 7116 13]
def bytes7090 : Bytes := ("    let r00001bdd: u32 = r00001bcc.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7090 : bytes7090=statementBytes 7133 (op7090.map lower) ∧ bytes7090.length=65 := by core033_kernel_decide
def op7091 : List WordIR.Op := [.bxor 7132 7133]
def bytes7091 : Bytes := ("    let r00001bde: u32 = r00001bdc ^ r00001bdd;\n" : String).toByteArray.data.toList
theorem checked7091 : bytes7091=statementBytes 7134 (op7091.map lower) ∧ bytes7091.length=48 := by core033_kernel_decide
def op7092 : List WordIR.Op := [.rotr 7116 22]
def bytes7092 : Bytes := ("    let r00001bdf: u32 = r00001bcc.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7092 : bytes7092=statementBytes 7135 (op7092.map lower) ∧ bytes7092.length=65 := by core033_kernel_decide
def op7093 : List WordIR.Op := [.bxor 7134 7135]
def bytes7093 : Bytes := ("    let r00001be0: u32 = r00001bde ^ r00001bdf;\n" : String).toByteArray.data.toList
theorem checked7093 : bytes7093=statementBytes 7136 (op7093.map lower) ∧ bytes7093.length=48 := by core033_kernel_decide
def op7094 : List WordIR.Op := [.band 7116 7089]
def bytes7094 : Bytes := ("    let r00001be1: u32 = r00001bcc & r00001bb1;\n" : String).toByteArray.data.toList
theorem checked7094 : bytes7094=statementBytes 7137 (op7094.map lower) ∧ bytes7094.length=48 := by core033_kernel_decide
def op7095 : List WordIR.Op := [.band 7116 7062]
def bytes7095 : Bytes := ("    let r00001be2: u32 = r00001bcc & r00001b96;\n" : String).toByteArray.data.toList
theorem checked7095 : bytes7095=statementBytes 7138 (op7095.map lower) ∧ bytes7095.length=48 := by core033_kernel_decide
def op7096 : List WordIR.Op := [.bxor 7137 7138]
def bytes7096 : Bytes := ("    let r00001be3: u32 = r00001be1 ^ r00001be2;\n" : String).toByteArray.data.toList
theorem checked7096 : bytes7096=statementBytes 7139 (op7096.map lower) ∧ bytes7096.length=48 := by core033_kernel_decide
def op7097 : List WordIR.Op := [.band 7089 7062]
def bytes7097 : Bytes := ("    let r00001be4: u32 = r00001bb1 & r00001b96;\n" : String).toByteArray.data.toList
theorem checked7097 : bytes7097=statementBytes 7140 (op7097.map lower) ∧ bytes7097.length=48 := by core033_kernel_decide
def op7098 : List WordIR.Op := [.bxor 7139 7140]
def bytes7098 : Bytes := ("    let r00001be5: u32 = r00001be3 ^ r00001be4;\n" : String).toByteArray.data.toList
theorem checked7098 : bytes7098=statementBytes 7141 (op7098.map lower) ∧ bytes7098.length=48 := by core033_kernel_decide
def op7099 : List WordIR.Op := [.badd 7136 7141]
def bytes7099 : Bytes := ("    let r00001be6: u32 = r00001be0.wrapping_add(r00001be5);\n" : String).toByteArray.data.toList
theorem checked7099 : bytes7099=statementBytes 7142 (op7099.map lower) ∧ bytes7099.length=60 := by core033_kernel_decide
def op7100 : List WordIR.Op := [.badd 7131 7142]
def bytes7100 : Bytes := ("    let r00001be7: u32 = r00001bdb.wrapping_add(r00001be6);\n" : String).toByteArray.data.toList
theorem checked7100 : bytes7100=statementBytes 7143 (op7100.map lower) ∧ bytes7100.length=60 := by core033_kernel_decide
def op7101 : List WordIR.Op := [.badd 1452 7131]
def bytes7101 : Bytes := ("    let r00001be8: u32 = r000005ac.wrapping_add(r00001bdb);\n" : String).toByteArray.data.toList
theorem checked7101 : bytes7101=statementBytes 7144 (op7101.map lower) ∧ bytes7101.length=60 := by core033_kernel_decide
def op7102 : List WordIR.Op := [.rotr 7144 6]
def bytes7102 : Bytes := ("    let r00001be9: u32 = r00001be8.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7102 : bytes7102=statementBytes 7145 (op7102.map lower) ∧ bytes7102.length=65 := by core033_kernel_decide
def op7103 : List WordIR.Op := [.rotr 7144 11]
def bytes7103 : Bytes := ("    let r00001bea: u32 = r00001be8.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7103 : bytes7103=statementBytes 7146 (op7103.map lower) ∧ bytes7103.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7040,op7041,op7042,op7043,op7044,op7045,op7046,op7047,op7048,op7049,op7050,op7051,op7052,op7053,op7054,op7055,op7056,op7057,op7058,op7059,op7060,op7061,op7062,op7063,op7064,op7065,op7066,op7067,op7068,op7069,op7070,op7071,op7072,op7073,op7074,op7075,op7076,op7077,op7078,op7079,op7080,op7081,op7082,op7083,op7084,op7085,op7086,op7087,op7088,op7089,op7090,op7091,op7092,op7093,op7094,op7095,op7096,op7097,op7098,op7099,op7100,op7101,op7102,op7103]
def chunks : List Bytes := [bytes7040,bytes7041,bytes7042,bytes7043,bytes7044,bytes7045,bytes7046,bytes7047,bytes7048,bytes7049,bytes7050,bytes7051,bytes7052,bytes7053,bytes7054,bytes7055,bytes7056,bytes7057,bytes7058,bytes7059,bytes7060,bytes7061,bytes7062,bytes7063,bytes7064,bytes7065,bytes7066,bytes7067,bytes7068,bytes7069,bytes7070,bytes7071,bytes7072,bytes7073,bytes7074,bytes7075,bytes7076,bytes7077,bytes7078,bytes7079,bytes7080,bytes7081,bytes7082,bytes7083,bytes7084,bytes7085,bytes7086,bytes7087,bytes7088,bytes7089,bytes7090,bytes7091,bytes7092,bytes7093,bytes7094,bytes7095,bytes7096,bytes7097,bytes7098,bytes7099,bytes7100,bytes7101,bytes7102,bytes7103]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7083 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7040.1 (.cons _ _ _ _ _ checked7041.1 (.cons _ _ _ _ _ checked7042.1 (.cons _ _ _ _ _ checked7043.1 (.cons _ _ _ _ _ checked7044.1 (.cons _ _ _ _ _ checked7045.1 (.cons _ _ _ _ _ checked7046.1 (.cons _ _ _ _ _ checked7047.1 (.cons _ _ _ _ _ checked7048.1 (.cons _ _ _ _ _ checked7049.1 (.cons _ _ _ _ _ checked7050.1 (.cons _ _ _ _ _ checked7051.1 (.cons _ _ _ _ _ checked7052.1 (.cons _ _ _ _ _ checked7053.1 (.cons _ _ _ _ _ checked7054.1 (.cons _ _ _ _ _ checked7055.1 (.cons _ _ _ _ _ checked7056.1 (.cons _ _ _ _ _ checked7057.1 (.cons _ _ _ _ _ checked7058.1 (.cons _ _ _ _ _ checked7059.1 (.cons _ _ _ _ _ checked7060.1 (.cons _ _ _ _ _ checked7061.1 (.cons _ _ _ _ _ checked7062.1 (.cons _ _ _ _ _ checked7063.1 (.cons _ _ _ _ _ checked7064.1 (.cons _ _ _ _ _ checked7065.1 (.cons _ _ _ _ _ checked7066.1 (.cons _ _ _ _ _ checked7067.1 (.cons _ _ _ _ _ checked7068.1 (.cons _ _ _ _ _ checked7069.1 (.cons _ _ _ _ _ checked7070.1 (.cons _ _ _ _ _ checked7071.1 (.cons _ _ _ _ _ checked7072.1 (.cons _ _ _ _ _ checked7073.1 (.cons _ _ _ _ _ checked7074.1 (.cons _ _ _ _ _ checked7075.1 (.cons _ _ _ _ _ checked7076.1 (.cons _ _ _ _ _ checked7077.1 (.cons _ _ _ _ _ checked7078.1 (.cons _ _ _ _ _ checked7079.1 (.cons _ _ _ _ _ checked7080.1 (.cons _ _ _ _ _ checked7081.1 (.cons _ _ _ _ _ checked7082.1 (.cons _ _ _ _ _ checked7083.1 (.cons _ _ _ _ _ checked7084.1 (.cons _ _ _ _ _ checked7085.1 (.cons _ _ _ _ _ checked7086.1 (.cons _ _ _ _ _ checked7087.1 (.cons _ _ _ _ _ checked7088.1 (.cons _ _ _ _ _ checked7089.1 (.cons _ _ _ _ _ checked7090.1 (.cons _ _ _ _ _ checked7091.1 (.cons _ _ _ _ _ checked7092.1 (.cons _ _ _ _ _ checked7093.1 (.cons _ _ _ _ _ checked7094.1 (.cons _ _ _ _ _ checked7095.1 (.cons _ _ _ _ _ checked7096.1 (.cons _ _ _ _ _ checked7097.1 (.cons _ _ _ _ _ checked7098.1 (.cons _ _ _ _ _ checked7099.1 (.cons _ _ _ _ _ checked7100.1 (.cons _ _ _ _ _ checked7101.1 (.cons _ _ _ _ _ checked7102.1 (.cons _ _ _ _ _ checked7103.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7083 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3478 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7040.2,checked7041.2,checked7042.2,checked7043.2,checked7044.2,checked7045.2,checked7046.2,checked7047.2,checked7048.2,checked7049.2,checked7050.2,checked7051.2,checked7052.2,checked7053.2,checked7054.2,checked7055.2,checked7056.2,checked7057.2,checked7058.2,checked7059.2,checked7060.2,checked7061.2,checked7062.2,checked7063.2,checked7064.2,checked7065.2,checked7066.2,checked7067.2,checked7068.2,checked7069.2,checked7070.2,checked7071.2,checked7072.2,checked7073.2,checked7074.2,checked7075.2,checked7076.2,checked7077.2,checked7078.2,checked7079.2,checked7080.2,checked7081.2,checked7082.2,checked7083.2,checked7084.2,checked7085.2,checked7086.2,checked7087.2,checked7088.2,checked7089.2,checked7090.2,checked7091.2,checked7092.2,checked7093.2,checked7094.2,checked7095.2,checked7096.2,checked7097.2,checked7098.2,checked7099.2,checked7100.2,checked7101.2,checked7102.2,checked7103.2]
  decide
end ArtifactFrameHashControllerGroup110
