import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup125
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8000 : List WordIR.Op := [.shr 6883 8]
def bytes8000 : Bytes := ("    let r00001fb6: u32 = r00001ae3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked8000 : bytes8000=statementBytes 8118 (op8000.map lower) ∧ bytes8000.length=54 := by core033_kernel_decide
def op8001 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8001 : Bytes := ("    let r00001fb7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8001 : bytes8001=statementBytes 8119 (op8001.map lower) ∧ bytes8001.length=41 := by core033_kernel_decide
def op8002 : List WordIR.Op := [.bnot 8119]
def bytes8002 : Bytes := ("    let r00001fb8: u32 = !r00001fb7;\n" : String).toByteArray.data.toList
theorem checked8002 : bytes8002=statementBytes 8120 (op8002.map lower) ∧ bytes8002.length=37 := by core033_kernel_decide
def op8003 : List WordIR.Op := [.bxor 8118 8120]
def bytes8003 : Bytes := ("    let r00001fb9: u32 = r00001fb6 ^ r00001fb8;\n" : String).toByteArray.data.toList
theorem checked8003 : bytes8003=statementBytes 8121 (op8003.map lower) ∧ bytes8003.length=48 := by core033_kernel_decide
def op8004 : List WordIR.Op := [.shr 6883 8]
def bytes8004 : Bytes := ("    let r00001fba: u32 = r00001ae3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked8004 : bytes8004=statementBytes 8122 (op8004.map lower) ∧ bytes8004.length=54 := by core033_kernel_decide
def op8005 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8005 : Bytes := ("    let r00001fbb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8005 : bytes8005=statementBytes 8123 (op8005.map lower) ∧ bytes8005.length=41 := by core033_kernel_decide
def op8006 : List WordIR.Op := [.bnot 8123]
def bytes8006 : Bytes := ("    let r00001fbc: u32 = !r00001fbb;\n" : String).toByteArray.data.toList
theorem checked8006 : bytes8006=statementBytes 8124 (op8006.map lower) ∧ bytes8006.length=37 := by core033_kernel_decide
def op8007 : List WordIR.Op := [.badd 8122 8124]
def bytes8007 : Bytes := ("    let r00001fbd: u32 = r00001fba.wrapping_add(r00001fbc);\n" : String).toByteArray.data.toList
theorem checked8007 : bytes8007=statementBytes 8125 (op8007.map lower) ∧ bytes8007.length=60 := by core033_kernel_decide
def op8008 : List WordIR.Op := [.bnot 8125]
def bytes8008 : Bytes := ("    let r00001fbe: u32 = !r00001fbd;\n" : String).toByteArray.data.toList
theorem checked8008 : bytes8008=statementBytes 8126 (op8008.map lower) ∧ bytes8008.length=37 := by core033_kernel_decide
def op8009 : List WordIR.Op := [.band 8121 8126]
def bytes8009 : Bytes := ("    let r00001fbf: u32 = r00001fb9 & r00001fbe;\n" : String).toByteArray.data.toList
theorem checked8009 : bytes8009=statementBytes 8127 (op8009.map lower) ∧ bytes8009.length=48 := by core033_kernel_decide
def op8010 : List WordIR.Op := [.bxor 8117 8127]
def bytes8010 : Bytes := ("    let r00001fc0: u32 = r00001fb5 ^ r00001fbf;\n" : String).toByteArray.data.toList
theorem checked8010 : bytes8010=statementBytes 8128 (op8010.map lower) ∧ bytes8010.length=48 := by core033_kernel_decide
def op8011 : List WordIR.Op := [.shr 8128 31]
def bytes8011 : Bytes := ("    let r00001fc1: u32 = r00001fc0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked8011 : bytes8011=statementBytes 8129 (op8011.map lower) ∧ bytes8011.length=54 := by core033_kernel_decide
def op8012 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8012 : Bytes := ("    let r00001fc2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8012 : bytes8012=statementBytes 8130 (op8012.map lower) ∧ bytes8012.length=41 := by core033_kernel_decide
def op8013 : List WordIR.Op := [.bxor 8129 8130]
def bytes8013 : Bytes := ("    let r00001fc3: u32 = r00001fc1 ^ r00001fc2;\n" : String).toByteArray.data.toList
theorem checked8013 : bytes8013=statementBytes 8131 (op8013.map lower) ∧ bytes8013.length=48 := by core033_kernel_decide
def op8014 : List WordIR.Op := [.rotr 6973 17]
def bytes8014 : Bytes := ("    let r00001fc4: u32 = r00001b3d.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8014 : bytes8014=statementBytes 8132 (op8014.map lower) ∧ bytes8014.length=65 := by core033_kernel_decide
def op8015 : List WordIR.Op := [.rotr 6973 19]
def bytes8015 : Bytes := ("    let r00001fc5: u32 = r00001b3d.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8015 : bytes8015=statementBytes 8133 (op8015.map lower) ∧ bytes8015.length=65 := by core033_kernel_decide
def op8016 : List WordIR.Op := [.bxor 8132 8133]
def bytes8016 : Bytes := ("    let r00001fc6: u32 = r00001fc4 ^ r00001fc5;\n" : String).toByteArray.data.toList
theorem checked8016 : bytes8016=statementBytes 8134 (op8016.map lower) ∧ bytes8016.length=48 := by core033_kernel_decide
def op8017 : List WordIR.Op := [.shr 6973 10]
def bytes8017 : Bytes := ("    let r00001fc7: u32 = r00001b3d >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8017 : bytes8017=statementBytes 8135 (op8017.map lower) ∧ bytes8017.length=54 := by core033_kernel_decide
def op8018 : List WordIR.Op := [.bxor 8134 8135]
def bytes8018 : Bytes := ("    let r00001fc8: u32 = r00001fc6 ^ r00001fc7;\n" : String).toByteArray.data.toList
theorem checked8018 : bytes8018=statementBytes 8136 (op8018.map lower) ∧ bytes8018.length=48 := by core033_kernel_decide
def op8019 : List WordIR.Op := [.badd 8136 6943]
def bytes8019 : Bytes := ("    let r00001fc9: u32 = r00001fc8.wrapping_add(r00001b1f);\n" : String).toByteArray.data.toList
theorem checked8019 : bytes8019=statementBytes 8137 (op8019.map lower) ∧ bytes8019.length=60 := by core033_kernel_decide
def op8020 : List WordIR.Op := [.rotr 6895 7]
def bytes8020 : Bytes := ("    let r00001fca: u32 = r00001aef.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8020 : bytes8020=statementBytes 8138 (op8020.map lower) ∧ bytes8020.length=65 := by core033_kernel_decide
def op8021 : List WordIR.Op := [.rotr 6895 18]
def bytes8021 : Bytes := ("    let r00001fcb: u32 = r00001aef.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8021 : bytes8021=statementBytes 8139 (op8021.map lower) ∧ bytes8021.length=65 := by core033_kernel_decide
def op8022 : List WordIR.Op := [.bxor 8138 8139]
def bytes8022 : Bytes := ("    let r00001fcc: u32 = r00001fca ^ r00001fcb;\n" : String).toByteArray.data.toList
theorem checked8022 : bytes8022=statementBytes 8140 (op8022.map lower) ∧ bytes8022.length=48 := by core033_kernel_decide
def op8023 : List WordIR.Op := [.shr 6895 3]
def bytes8023 : Bytes := ("    let r00001fcd: u32 = r00001aef >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8023 : bytes8023=statementBytes 8141 (op8023.map lower) ∧ bytes8023.length=54 := by core033_kernel_decide
def op8024 : List WordIR.Op := [.bxor 8140 8141]
def bytes8024 : Bytes := ("    let r00001fce: u32 = r00001fcc ^ r00001fcd;\n" : String).toByteArray.data.toList
theorem checked8024 : bytes8024=statementBytes 8142 (op8024.map lower) ∧ bytes8024.length=48 := by core033_kernel_decide
def op8025 : List WordIR.Op := [.badd 8137 8142]
def bytes8025 : Bytes := ("    let r00001fcf: u32 = r00001fc9.wrapping_add(r00001fce);\n" : String).toByteArray.data.toList
theorem checked8025 : bytes8025=statementBytes 8143 (op8025.map lower) ∧ bytes8025.length=60 := by core033_kernel_decide
def op8026 : List WordIR.Op := [.badd 8143 6889]
def bytes8026 : Bytes := ("    let r00001fd0: u32 = r00001fcf.wrapping_add(r00001ae9);\n" : String).toByteArray.data.toList
theorem checked8026 : bytes8026=statementBytes 8144 (op8026.map lower) ∧ bytes8026.length=60 := by core033_kernel_decide
def op8027 : List WordIR.Op := [.rotr 6979 17]
def bytes8027 : Bytes := ("    let r00001fd1: u32 = r00001b43.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8027 : bytes8027=statementBytes 8145 (op8027.map lower) ∧ bytes8027.length=65 := by core033_kernel_decide
def op8028 : List WordIR.Op := [.rotr 6979 19]
def bytes8028 : Bytes := ("    let r00001fd2: u32 = r00001b43.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8028 : bytes8028=statementBytes 8146 (op8028.map lower) ∧ bytes8028.length=65 := by core033_kernel_decide
def op8029 : List WordIR.Op := [.bxor 8145 8146]
def bytes8029 : Bytes := ("    let r00001fd3: u32 = r00001fd1 ^ r00001fd2;\n" : String).toByteArray.data.toList
theorem checked8029 : bytes8029=statementBytes 8147 (op8029.map lower) ∧ bytes8029.length=48 := by core033_kernel_decide
def op8030 : List WordIR.Op := [.shr 6979 10]
def bytes8030 : Bytes := ("    let r00001fd4: u32 = r00001b43 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8030 : bytes8030=statementBytes 8148 (op8030.map lower) ∧ bytes8030.length=54 := by core033_kernel_decide
def op8031 : List WordIR.Op := [.bxor 8147 8148]
def bytes8031 : Bytes := ("    let r00001fd5: u32 = r00001fd3 ^ r00001fd4;\n" : String).toByteArray.data.toList
theorem checked8031 : bytes8031=statementBytes 8149 (op8031.map lower) ∧ bytes8031.length=48 := by core033_kernel_decide
def op8032 : List WordIR.Op := [.badd 8149 6949]
def bytes8032 : Bytes := ("    let r00001fd6: u32 = r00001fd5.wrapping_add(r00001b25);\n" : String).toByteArray.data.toList
theorem checked8032 : bytes8032=statementBytes 8150 (op8032.map lower) ∧ bytes8032.length=60 := by core033_kernel_decide
def op8033 : List WordIR.Op := [.rotr 6901 7]
def bytes8033 : Bytes := ("    let r00001fd7: u32 = r00001af5.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8033 : bytes8033=statementBytes 8151 (op8033.map lower) ∧ bytes8033.length=65 := by core033_kernel_decide
def op8034 : List WordIR.Op := [.rotr 6901 18]
def bytes8034 : Bytes := ("    let r00001fd8: u32 = r00001af5.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8034 : bytes8034=statementBytes 8152 (op8034.map lower) ∧ bytes8034.length=65 := by core033_kernel_decide
def op8035 : List WordIR.Op := [.bxor 8151 8152]
def bytes8035 : Bytes := ("    let r00001fd9: u32 = r00001fd7 ^ r00001fd8;\n" : String).toByteArray.data.toList
theorem checked8035 : bytes8035=statementBytes 8153 (op8035.map lower) ∧ bytes8035.length=48 := by core033_kernel_decide
def op8036 : List WordIR.Op := [.shr 6901 3]
def bytes8036 : Bytes := ("    let r00001fda: u32 = r00001af5 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8036 : bytes8036=statementBytes 8154 (op8036.map lower) ∧ bytes8036.length=54 := by core033_kernel_decide
def op8037 : List WordIR.Op := [.bxor 8153 8154]
def bytes8037 : Bytes := ("    let r00001fdb: u32 = r00001fd9 ^ r00001fda;\n" : String).toByteArray.data.toList
theorem checked8037 : bytes8037=statementBytes 8155 (op8037.map lower) ∧ bytes8037.length=48 := by core033_kernel_decide
def op8038 : List WordIR.Op := [.badd 8150 8155]
def bytes8038 : Bytes := ("    let r00001fdc: u32 = r00001fd6.wrapping_add(r00001fdb);\n" : String).toByteArray.data.toList
theorem checked8038 : bytes8038=statementBytes 8156 (op8038.map lower) ∧ bytes8038.length=60 := by core033_kernel_decide
def op8039 : List WordIR.Op := [.badd 8156 6895]
def bytes8039 : Bytes := ("    let r00001fdd: u32 = r00001fdc.wrapping_add(r00001aef);\n" : String).toByteArray.data.toList
theorem checked8039 : bytes8039=statementBytes 8157 (op8039.map lower) ∧ bytes8039.length=60 := by core033_kernel_decide
def op8040 : List WordIR.Op := [.rotr 8144 17]
def bytes8040 : Bytes := ("    let r00001fde: u32 = r00001fd0.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8040 : bytes8040=statementBytes 8158 (op8040.map lower) ∧ bytes8040.length=65 := by core033_kernel_decide
def op8041 : List WordIR.Op := [.rotr 8144 19]
def bytes8041 : Bytes := ("    let r00001fdf: u32 = r00001fd0.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8041 : bytes8041=statementBytes 8159 (op8041.map lower) ∧ bytes8041.length=65 := by core033_kernel_decide
def op8042 : List WordIR.Op := [.bxor 8158 8159]
def bytes8042 : Bytes := ("    let r00001fe0: u32 = r00001fde ^ r00001fdf;\n" : String).toByteArray.data.toList
theorem checked8042 : bytes8042=statementBytes 8160 (op8042.map lower) ∧ bytes8042.length=48 := by core033_kernel_decide
def op8043 : List WordIR.Op := [.shr 8144 10]
def bytes8043 : Bytes := ("    let r00001fe1: u32 = r00001fd0 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8043 : bytes8043=statementBytes 8161 (op8043.map lower) ∧ bytes8043.length=54 := by core033_kernel_decide
def op8044 : List WordIR.Op := [.bxor 8160 8161]
def bytes8044 : Bytes := ("    let r00001fe2: u32 = r00001fe0 ^ r00001fe1;\n" : String).toByteArray.data.toList
theorem checked8044 : bytes8044=statementBytes 8162 (op8044.map lower) ∧ bytes8044.length=48 := by core033_kernel_decide
def op8045 : List WordIR.Op := [.badd 8162 6955]
def bytes8045 : Bytes := ("    let r00001fe3: u32 = r00001fe2.wrapping_add(r00001b2b);\n" : String).toByteArray.data.toList
theorem checked8045 : bytes8045=statementBytes 8163 (op8045.map lower) ∧ bytes8045.length=60 := by core033_kernel_decide
def op8046 : List WordIR.Op := [.rotr 6907 7]
def bytes8046 : Bytes := ("    let r00001fe4: u32 = r00001afb.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8046 : bytes8046=statementBytes 8164 (op8046.map lower) ∧ bytes8046.length=65 := by core033_kernel_decide
def op8047 : List WordIR.Op := [.rotr 6907 18]
def bytes8047 : Bytes := ("    let r00001fe5: u32 = r00001afb.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8047 : bytes8047=statementBytes 8165 (op8047.map lower) ∧ bytes8047.length=65 := by core033_kernel_decide
def op8048 : List WordIR.Op := [.bxor 8164 8165]
def bytes8048 : Bytes := ("    let r00001fe6: u32 = r00001fe4 ^ r00001fe5;\n" : String).toByteArray.data.toList
theorem checked8048 : bytes8048=statementBytes 8166 (op8048.map lower) ∧ bytes8048.length=48 := by core033_kernel_decide
def op8049 : List WordIR.Op := [.shr 6907 3]
def bytes8049 : Bytes := ("    let r00001fe7: u32 = r00001afb >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8049 : bytes8049=statementBytes 8167 (op8049.map lower) ∧ bytes8049.length=54 := by core033_kernel_decide
def op8050 : List WordIR.Op := [.bxor 8166 8167]
def bytes8050 : Bytes := ("    let r00001fe8: u32 = r00001fe6 ^ r00001fe7;\n" : String).toByteArray.data.toList
theorem checked8050 : bytes8050=statementBytes 8168 (op8050.map lower) ∧ bytes8050.length=48 := by core033_kernel_decide
def op8051 : List WordIR.Op := [.badd 8163 8168]
def bytes8051 : Bytes := ("    let r00001fe9: u32 = r00001fe3.wrapping_add(r00001fe8);\n" : String).toByteArray.data.toList
theorem checked8051 : bytes8051=statementBytes 8169 (op8051.map lower) ∧ bytes8051.length=60 := by core033_kernel_decide
def op8052 : List WordIR.Op := [.badd 8169 6901]
def bytes8052 : Bytes := ("    let r00001fea: u32 = r00001fe9.wrapping_add(r00001af5);\n" : String).toByteArray.data.toList
theorem checked8052 : bytes8052=statementBytes 8170 (op8052.map lower) ∧ bytes8052.length=60 := by core033_kernel_decide
def op8053 : List WordIR.Op := [.rotr 8157 17]
def bytes8053 : Bytes := ("    let r00001feb: u32 = r00001fdd.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8053 : bytes8053=statementBytes 8171 (op8053.map lower) ∧ bytes8053.length=65 := by core033_kernel_decide
def op8054 : List WordIR.Op := [.rotr 8157 19]
def bytes8054 : Bytes := ("    let r00001fec: u32 = r00001fdd.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8054 : bytes8054=statementBytes 8172 (op8054.map lower) ∧ bytes8054.length=65 := by core033_kernel_decide
def op8055 : List WordIR.Op := [.bxor 8171 8172]
def bytes8055 : Bytes := ("    let r00001fed: u32 = r00001feb ^ r00001fec;\n" : String).toByteArray.data.toList
theorem checked8055 : bytes8055=statementBytes 8173 (op8055.map lower) ∧ bytes8055.length=48 := by core033_kernel_decide
def op8056 : List WordIR.Op := [.shr 8157 10]
def bytes8056 : Bytes := ("    let r00001fee: u32 = r00001fdd >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8056 : bytes8056=statementBytes 8174 (op8056.map lower) ∧ bytes8056.length=54 := by core033_kernel_decide
def op8057 : List WordIR.Op := [.bxor 8173 8174]
def bytes8057 : Bytes := ("    let r00001fef: u32 = r00001fed ^ r00001fee;\n" : String).toByteArray.data.toList
theorem checked8057 : bytes8057=statementBytes 8175 (op8057.map lower) ∧ bytes8057.length=48 := by core033_kernel_decide
def op8058 : List WordIR.Op := [.badd 8175 6961]
def bytes8058 : Bytes := ("    let r00001ff0: u32 = r00001fef.wrapping_add(r00001b31);\n" : String).toByteArray.data.toList
theorem checked8058 : bytes8058=statementBytes 8176 (op8058.map lower) ∧ bytes8058.length=60 := by core033_kernel_decide
def op8059 : List WordIR.Op := [.rotr 6913 7]
def bytes8059 : Bytes := ("    let r00001ff1: u32 = r00001b01.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8059 : bytes8059=statementBytes 8177 (op8059.map lower) ∧ bytes8059.length=65 := by core033_kernel_decide
def op8060 : List WordIR.Op := [.rotr 6913 18]
def bytes8060 : Bytes := ("    let r00001ff2: u32 = r00001b01.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8060 : bytes8060=statementBytes 8178 (op8060.map lower) ∧ bytes8060.length=65 := by core033_kernel_decide
def op8061 : List WordIR.Op := [.bxor 8177 8178]
def bytes8061 : Bytes := ("    let r00001ff3: u32 = r00001ff1 ^ r00001ff2;\n" : String).toByteArray.data.toList
theorem checked8061 : bytes8061=statementBytes 8179 (op8061.map lower) ∧ bytes8061.length=48 := by core033_kernel_decide
def op8062 : List WordIR.Op := [.shr 6913 3]
def bytes8062 : Bytes := ("    let r00001ff4: u32 = r00001b01 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8062 : bytes8062=statementBytes 8180 (op8062.map lower) ∧ bytes8062.length=54 := by core033_kernel_decide
def op8063 : List WordIR.Op := [.bxor 8179 8180]
def bytes8063 : Bytes := ("    let r00001ff5: u32 = r00001ff3 ^ r00001ff4;\n" : String).toByteArray.data.toList
theorem checked8063 : bytes8063=statementBytes 8181 (op8063.map lower) ∧ bytes8063.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8000,op8001,op8002,op8003,op8004,op8005,op8006,op8007,op8008,op8009,op8010,op8011,op8012,op8013,op8014,op8015,op8016,op8017,op8018,op8019,op8020,op8021,op8022,op8023,op8024,op8025,op8026,op8027,op8028,op8029,op8030,op8031,op8032,op8033,op8034,op8035,op8036,op8037,op8038,op8039,op8040,op8041,op8042,op8043,op8044,op8045,op8046,op8047,op8048,op8049,op8050,op8051,op8052,op8053,op8054,op8055,op8056,op8057,op8058,op8059,op8060,op8061,op8062,op8063]
def chunks : List Bytes := [bytes8000,bytes8001,bytes8002,bytes8003,bytes8004,bytes8005,bytes8006,bytes8007,bytes8008,bytes8009,bytes8010,bytes8011,bytes8012,bytes8013,bytes8014,bytes8015,bytes8016,bytes8017,bytes8018,bytes8019,bytes8020,bytes8021,bytes8022,bytes8023,bytes8024,bytes8025,bytes8026,bytes8027,bytes8028,bytes8029,bytes8030,bytes8031,bytes8032,bytes8033,bytes8034,bytes8035,bytes8036,bytes8037,bytes8038,bytes8039,bytes8040,bytes8041,bytes8042,bytes8043,bytes8044,bytes8045,bytes8046,bytes8047,bytes8048,bytes8049,bytes8050,bytes8051,bytes8052,bytes8053,bytes8054,bytes8055,bytes8056,bytes8057,bytes8058,bytes8059,bytes8060,bytes8061,bytes8062,bytes8063]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8118 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8000.1 (.cons _ _ _ _ _ checked8001.1 (.cons _ _ _ _ _ checked8002.1 (.cons _ _ _ _ _ checked8003.1 (.cons _ _ _ _ _ checked8004.1 (.cons _ _ _ _ _ checked8005.1 (.cons _ _ _ _ _ checked8006.1 (.cons _ _ _ _ _ checked8007.1 (.cons _ _ _ _ _ checked8008.1 (.cons _ _ _ _ _ checked8009.1 (.cons _ _ _ _ _ checked8010.1 (.cons _ _ _ _ _ checked8011.1 (.cons _ _ _ _ _ checked8012.1 (.cons _ _ _ _ _ checked8013.1 (.cons _ _ _ _ _ checked8014.1 (.cons _ _ _ _ _ checked8015.1 (.cons _ _ _ _ _ checked8016.1 (.cons _ _ _ _ _ checked8017.1 (.cons _ _ _ _ _ checked8018.1 (.cons _ _ _ _ _ checked8019.1 (.cons _ _ _ _ _ checked8020.1 (.cons _ _ _ _ _ checked8021.1 (.cons _ _ _ _ _ checked8022.1 (.cons _ _ _ _ _ checked8023.1 (.cons _ _ _ _ _ checked8024.1 (.cons _ _ _ _ _ checked8025.1 (.cons _ _ _ _ _ checked8026.1 (.cons _ _ _ _ _ checked8027.1 (.cons _ _ _ _ _ checked8028.1 (.cons _ _ _ _ _ checked8029.1 (.cons _ _ _ _ _ checked8030.1 (.cons _ _ _ _ _ checked8031.1 (.cons _ _ _ _ _ checked8032.1 (.cons _ _ _ _ _ checked8033.1 (.cons _ _ _ _ _ checked8034.1 (.cons _ _ _ _ _ checked8035.1 (.cons _ _ _ _ _ checked8036.1 (.cons _ _ _ _ _ checked8037.1 (.cons _ _ _ _ _ checked8038.1 (.cons _ _ _ _ _ checked8039.1 (.cons _ _ _ _ _ checked8040.1 (.cons _ _ _ _ _ checked8041.1 (.cons _ _ _ _ _ checked8042.1 (.cons _ _ _ _ _ checked8043.1 (.cons _ _ _ _ _ checked8044.1 (.cons _ _ _ _ _ checked8045.1 (.cons _ _ _ _ _ checked8046.1 (.cons _ _ _ _ _ checked8047.1 (.cons _ _ _ _ _ checked8048.1 (.cons _ _ _ _ _ checked8049.1 (.cons _ _ _ _ _ checked8050.1 (.cons _ _ _ _ _ checked8051.1 (.cons _ _ _ _ _ checked8052.1 (.cons _ _ _ _ _ checked8053.1 (.cons _ _ _ _ _ checked8054.1 (.cons _ _ _ _ _ checked8055.1 (.cons _ _ _ _ _ checked8056.1 (.cons _ _ _ _ _ checked8057.1 (.cons _ _ _ _ _ checked8058.1 (.cons _ _ _ _ _ checked8059.1 (.cons _ _ _ _ _ checked8060.1 (.cons _ _ _ _ _ checked8061.1 (.cons _ _ _ _ _ checked8062.1 (.cons _ _ _ _ _ checked8063.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8118 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3488 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8000.2,checked8001.2,checked8002.2,checked8003.2,checked8004.2,checked8005.2,checked8006.2,checked8007.2,checked8008.2,checked8009.2,checked8010.2,checked8011.2,checked8012.2,checked8013.2,checked8014.2,checked8015.2,checked8016.2,checked8017.2,checked8018.2,checked8019.2,checked8020.2,checked8021.2,checked8022.2,checked8023.2,checked8024.2,checked8025.2,checked8026.2,checked8027.2,checked8028.2,checked8029.2,checked8030.2,checked8031.2,checked8032.2,checked8033.2,checked8034.2,checked8035.2,checked8036.2,checked8037.2,checked8038.2,checked8039.2,checked8040.2,checked8041.2,checked8042.2,checked8043.2,checked8044.2,checked8045.2,checked8046.2,checked8047.2,checked8048.2,checked8049.2,checked8050.2,checked8051.2,checked8052.2,checked8053.2,checked8054.2,checked8055.2,checked8056.2,checked8057.2,checked8058.2,checked8059.2,checked8060.2,checked8061.2,checked8062.2,checked8063.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup125
