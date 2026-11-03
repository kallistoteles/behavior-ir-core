import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup126
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8064 : List WordIR.Op := [.band 8153 8126]
def bytes8064 : Bytes := ("    let r00001fe0: u32 = r00001fd9 & r00001fbe;\n" : String).toByteArray.data.toList
theorem checked8064 : bytes8064=statementBytes 8160 (op8064.map lower) ∧ bytes8064.length=48 := by core033_kernel_decide
def op8065 : List WordIR.Op := [.bnot 8153]
def bytes8065 : Bytes := ("    let r00001fe1: u32 = !r00001fd9;\n" : String).toByteArray.data.toList
theorem checked8065 : bytes8065=statementBytes 8161 (op8065.map lower) ∧ bytes8065.length=37 := by core033_kernel_decide
def op8066 : List WordIR.Op := [.band 8161 8099]
def bytes8066 : Bytes := ("    let r00001fe2: u32 = r00001fe1 & r00001fa3;\n" : String).toByteArray.data.toList
theorem checked8066 : bytes8066=statementBytes 8162 (op8066.map lower) ∧ bytes8066.length=48 := by core033_kernel_decide
def op8067 : List WordIR.Op := [.bxor 8160 8162]
def bytes8067 : Bytes := ("    let r00001fe3: u32 = r00001fe0 ^ r00001fe2;\n" : String).toByteArray.data.toList
theorem checked8067 : bytes8067=statementBytes 8163 (op8067.map lower) ∧ bytes8067.length=48 := by core033_kernel_decide
def op8068 : List WordIR.Op := [.badd 8159 8163]
def bytes8068 : Bytes := ("    let r00001fe4: u32 = r00001fdf.wrapping_add(r00001fe3);\n" : String).toByteArray.data.toList
theorem checked8068 : bytes8068=statementBytes 8164 (op8068.map lower) ∧ bytes8068.length=60 := by core033_kernel_decide
def op8069 : List WordIR.Op := [.literal (BitVec.ofNat 32 3921009573)]
def bytes8069 : Bytes := ("    let r00001fe5: u32 = 0xe9b5dba5_u32;\n" : String).toByteArray.data.toList
theorem checked8069 : bytes8069=statementBytes 8165 (op8069.map lower) ∧ bytes8069.length=41 := by core033_kernel_decide
def op8070 : List WordIR.Op := [.badd 8164 8165]
def bytes8070 : Bytes := ("    let r00001fe6: u32 = r00001fe4.wrapping_add(r00001fe5);\n" : String).toByteArray.data.toList
theorem checked8070 : bytes8070=statementBytes 8166 (op8070.map lower) ∧ bytes8070.length=60 := by core033_kernel_decide
def op8071 : List WordIR.Op := [.badd 8166 6224]
def bytes8071 : Bytes := ("    let r00001fe7: u32 = r00001fe6.wrapping_add(r00001850);\n" : String).toByteArray.data.toList
theorem checked8071 : bytes8071=statementBytes 8167 (op8071.map lower) ∧ bytes8071.length=60 := by core033_kernel_decide
def op8072 : List WordIR.Op := [.rotr 8152 2]
def bytes8072 : Bytes := ("    let r00001fe8: u32 = r00001fd8.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8072 : bytes8072=statementBytes 8168 (op8072.map lower) ∧ bytes8072.length=65 := by core033_kernel_decide
def op8073 : List WordIR.Op := [.rotr 8152 13]
def bytes8073 : Bytes := ("    let r00001fe9: u32 = r00001fd8.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8073 : bytes8073=statementBytes 8169 (op8073.map lower) ∧ bytes8073.length=65 := by core033_kernel_decide
def op8074 : List WordIR.Op := [.bxor 8168 8169]
def bytes8074 : Bytes := ("    let r00001fea: u32 = r00001fe8 ^ r00001fe9;\n" : String).toByteArray.data.toList
theorem checked8074 : bytes8074=statementBytes 8170 (op8074.map lower) ∧ bytes8074.length=48 := by core033_kernel_decide
def op8075 : List WordIR.Op := [.rotr 8152 22]
def bytes8075 : Bytes := ("    let r00001feb: u32 = r00001fd8.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8075 : bytes8075=statementBytes 8171 (op8075.map lower) ∧ bytes8075.length=65 := by core033_kernel_decide
def op8076 : List WordIR.Op := [.bxor 8170 8171]
def bytes8076 : Bytes := ("    let r00001fec: u32 = r00001fea ^ r00001feb;\n" : String).toByteArray.data.toList
theorem checked8076 : bytes8076=statementBytes 8172 (op8076.map lower) ∧ bytes8076.length=48 := by core033_kernel_decide
def op8077 : List WordIR.Op := [.band 8152 8125]
def bytes8077 : Bytes := ("    let r00001fed: u32 = r00001fd8 & r00001fbd;\n" : String).toByteArray.data.toList
theorem checked8077 : bytes8077=statementBytes 8173 (op8077.map lower) ∧ bytes8077.length=48 := by core033_kernel_decide
def op8078 : List WordIR.Op := [.band 8152 8098]
def bytes8078 : Bytes := ("    let r00001fee: u32 = r00001fd8 & r00001fa2;\n" : String).toByteArray.data.toList
theorem checked8078 : bytes8078=statementBytes 8174 (op8078.map lower) ∧ bytes8078.length=48 := by core033_kernel_decide
def op8079 : List WordIR.Op := [.bxor 8173 8174]
def bytes8079 : Bytes := ("    let r00001fef: u32 = r00001fed ^ r00001fee;\n" : String).toByteArray.data.toList
theorem checked8079 : bytes8079=statementBytes 8175 (op8079.map lower) ∧ bytes8079.length=48 := by core033_kernel_decide
def op8080 : List WordIR.Op := [.band 8125 8098]
def bytes8080 : Bytes := ("    let r00001ff0: u32 = r00001fbd & r00001fa2;\n" : String).toByteArray.data.toList
theorem checked8080 : bytes8080=statementBytes 8176 (op8080.map lower) ∧ bytes8080.length=48 := by core033_kernel_decide
def op8081 : List WordIR.Op := [.bxor 8175 8176]
def bytes8081 : Bytes := ("    let r00001ff1: u32 = r00001fef ^ r00001ff0;\n" : String).toByteArray.data.toList
theorem checked8081 : bytes8081=statementBytes 8177 (op8081.map lower) ∧ bytes8081.length=48 := by core033_kernel_decide
def op8082 : List WordIR.Op := [.badd 8172 8177]
def bytes8082 : Bytes := ("    let r00001ff2: u32 = r00001fec.wrapping_add(r00001ff1);\n" : String).toByteArray.data.toList
theorem checked8082 : bytes8082=statementBytes 8178 (op8082.map lower) ∧ bytes8082.length=60 := by core033_kernel_decide
def op8083 : List WordIR.Op := [.badd 8167 8178]
def bytes8083 : Bytes := ("    let r00001ff3: u32 = r00001fe7.wrapping_add(r00001ff2);\n" : String).toByteArray.data.toList
theorem checked8083 : bytes8083=statementBytes 8179 (op8083.map lower) ∧ bytes8083.length=60 := by core033_kernel_decide
def op8084 : List WordIR.Op := [.badd 2488 8167]
def bytes8084 : Bytes := ("    let r00001ff4: u32 = r000009b8.wrapping_add(r00001fe7);\n" : String).toByteArray.data.toList
theorem checked8084 : bytes8084=statementBytes 8180 (op8084.map lower) ∧ bytes8084.length=60 := by core033_kernel_decide
def op8085 : List WordIR.Op := [.rotr 8180 6]
def bytes8085 : Bytes := ("    let r00001ff5: u32 = r00001ff4.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8085 : bytes8085=statementBytes 8181 (op8085.map lower) ∧ bytes8085.length=65 := by core033_kernel_decide
def op8086 : List WordIR.Op := [.rotr 8180 11]
def bytes8086 : Bytes := ("    let r00001ff6: u32 = r00001ff4.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8086 : bytes8086=statementBytes 8182 (op8086.map lower) ∧ bytes8086.length=65 := by core033_kernel_decide
def op8087 : List WordIR.Op := [.bxor 8181 8182]
def bytes8087 : Bytes := ("    let r00001ff7: u32 = r00001ff5 ^ r00001ff6;\n" : String).toByteArray.data.toList
theorem checked8087 : bytes8087=statementBytes 8183 (op8087.map lower) ∧ bytes8087.length=48 := by core033_kernel_decide
def op8088 : List WordIR.Op := [.rotr 8180 25]
def bytes8088 : Bytes := ("    let r00001ff8: u32 = r00001ff4.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8088 : bytes8088=statementBytes 8184 (op8088.map lower) ∧ bytes8088.length=65 := by core033_kernel_decide
def op8089 : List WordIR.Op := [.bxor 8183 8184]
def bytes8089 : Bytes := ("    let r00001ff9: u32 = r00001ff7 ^ r00001ff8;\n" : String).toByteArray.data.toList
theorem checked8089 : bytes8089=statementBytes 8185 (op8089.map lower) ∧ bytes8089.length=48 := by core033_kernel_decide
def op8090 : List WordIR.Op := [.badd 8099 8185]
def bytes8090 : Bytes := ("    let r00001ffa: u32 = r00001fa3.wrapping_add(r00001ff9);\n" : String).toByteArray.data.toList
theorem checked8090 : bytes8090=statementBytes 8186 (op8090.map lower) ∧ bytes8090.length=60 := by core033_kernel_decide
def op8091 : List WordIR.Op := [.band 8180 8153]
def bytes8091 : Bytes := ("    let r00001ffb: u32 = r00001ff4 & r00001fd9;\n" : String).toByteArray.data.toList
theorem checked8091 : bytes8091=statementBytes 8187 (op8091.map lower) ∧ bytes8091.length=48 := by core033_kernel_decide
def op8092 : List WordIR.Op := [.bnot 8180]
def bytes8092 : Bytes := ("    let r00001ffc: u32 = !r00001ff4;\n" : String).toByteArray.data.toList
theorem checked8092 : bytes8092=statementBytes 8188 (op8092.map lower) ∧ bytes8092.length=37 := by core033_kernel_decide
def op8093 : List WordIR.Op := [.band 8188 8126]
def bytes8093 : Bytes := ("    let r00001ffd: u32 = r00001ffc & r00001fbe;\n" : String).toByteArray.data.toList
theorem checked8093 : bytes8093=statementBytes 8189 (op8093.map lower) ∧ bytes8093.length=48 := by core033_kernel_decide
def op8094 : List WordIR.Op := [.bxor 8187 8189]
def bytes8094 : Bytes := ("    let r00001ffe: u32 = r00001ffb ^ r00001ffd;\n" : String).toByteArray.data.toList
theorem checked8094 : bytes8094=statementBytes 8190 (op8094.map lower) ∧ bytes8094.length=48 := by core033_kernel_decide
def op8095 : List WordIR.Op := [.badd 8186 8190]
def bytes8095 : Bytes := ("    let r00001fff: u32 = r00001ffa.wrapping_add(r00001ffe);\n" : String).toByteArray.data.toList
theorem checked8095 : bytes8095=statementBytes 8191 (op8095.map lower) ∧ bytes8095.length=60 := by core033_kernel_decide
def op8096 : List WordIR.Op := [.literal (BitVec.ofNat 32 961987163)]
def bytes8096 : Bytes := ("    let r00002000: u32 = 0x3956c25b_u32;\n" : String).toByteArray.data.toList
theorem checked8096 : bytes8096=statementBytes 8192 (op8096.map lower) ∧ bytes8096.length=41 := by core033_kernel_decide
def op8097 : List WordIR.Op := [.badd 8191 8192]
def bytes8097 : Bytes := ("    let r00002001: u32 = r00001fff.wrapping_add(r00002000);\n" : String).toByteArray.data.toList
theorem checked8097 : bytes8097=statementBytes 8193 (op8097.map lower) ∧ bytes8097.length=60 := by core033_kernel_decide
def op8098 : List WordIR.Op := [.badd 8193 6230]
def bytes8098 : Bytes := ("    let r00002002: u32 = r00002001.wrapping_add(r00001856);\n" : String).toByteArray.data.toList
theorem checked8098 : bytes8098=statementBytes 8194 (op8098.map lower) ∧ bytes8098.length=60 := by core033_kernel_decide
def op8099 : List WordIR.Op := [.rotr 8179 2]
def bytes8099 : Bytes := ("    let r00002003: u32 = r00001ff3.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8099 : bytes8099=statementBytes 8195 (op8099.map lower) ∧ bytes8099.length=65 := by core033_kernel_decide
def op8100 : List WordIR.Op := [.rotr 8179 13]
def bytes8100 : Bytes := ("    let r00002004: u32 = r00001ff3.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8100 : bytes8100=statementBytes 8196 (op8100.map lower) ∧ bytes8100.length=65 := by core033_kernel_decide
def op8101 : List WordIR.Op := [.bxor 8195 8196]
def bytes8101 : Bytes := ("    let r00002005: u32 = r00002003 ^ r00002004;\n" : String).toByteArray.data.toList
theorem checked8101 : bytes8101=statementBytes 8197 (op8101.map lower) ∧ bytes8101.length=48 := by core033_kernel_decide
def op8102 : List WordIR.Op := [.rotr 8179 22]
def bytes8102 : Bytes := ("    let r00002006: u32 = r00001ff3.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8102 : bytes8102=statementBytes 8198 (op8102.map lower) ∧ bytes8102.length=65 := by core033_kernel_decide
def op8103 : List WordIR.Op := [.bxor 8197 8198]
def bytes8103 : Bytes := ("    let r00002007: u32 = r00002005 ^ r00002006;\n" : String).toByteArray.data.toList
theorem checked8103 : bytes8103=statementBytes 8199 (op8103.map lower) ∧ bytes8103.length=48 := by core033_kernel_decide
def op8104 : List WordIR.Op := [.band 8179 8152]
def bytes8104 : Bytes := ("    let r00002008: u32 = r00001ff3 & r00001fd8;\n" : String).toByteArray.data.toList
theorem checked8104 : bytes8104=statementBytes 8200 (op8104.map lower) ∧ bytes8104.length=48 := by core033_kernel_decide
def op8105 : List WordIR.Op := [.band 8179 8125]
def bytes8105 : Bytes := ("    let r00002009: u32 = r00001ff3 & r00001fbd;\n" : String).toByteArray.data.toList
theorem checked8105 : bytes8105=statementBytes 8201 (op8105.map lower) ∧ bytes8105.length=48 := by core033_kernel_decide
def op8106 : List WordIR.Op := [.bxor 8200 8201]
def bytes8106 : Bytes := ("    let r0000200a: u32 = r00002008 ^ r00002009;\n" : String).toByteArray.data.toList
theorem checked8106 : bytes8106=statementBytes 8202 (op8106.map lower) ∧ bytes8106.length=48 := by core033_kernel_decide
def op8107 : List WordIR.Op := [.band 8152 8125]
def bytes8107 : Bytes := ("    let r0000200b: u32 = r00001fd8 & r00001fbd;\n" : String).toByteArray.data.toList
theorem checked8107 : bytes8107=statementBytes 8203 (op8107.map lower) ∧ bytes8107.length=48 := by core033_kernel_decide
def op8108 : List WordIR.Op := [.bxor 8202 8203]
def bytes8108 : Bytes := ("    let r0000200c: u32 = r0000200a ^ r0000200b;\n" : String).toByteArray.data.toList
theorem checked8108 : bytes8108=statementBytes 8204 (op8108.map lower) ∧ bytes8108.length=48 := by core033_kernel_decide
def op8109 : List WordIR.Op := [.badd 8199 8204]
def bytes8109 : Bytes := ("    let r0000200d: u32 = r00002007.wrapping_add(r0000200c);\n" : String).toByteArray.data.toList
theorem checked8109 : bytes8109=statementBytes 8205 (op8109.map lower) ∧ bytes8109.length=60 := by core033_kernel_decide
def op8110 : List WordIR.Op := [.badd 8194 8205]
def bytes8110 : Bytes := ("    let r0000200e: u32 = r00002002.wrapping_add(r0000200d);\n" : String).toByteArray.data.toList
theorem checked8110 : bytes8110=statementBytes 8206 (op8110.map lower) ∧ bytes8110.length=60 := by core033_kernel_decide
def op8111 : List WordIR.Op := [.badd 8098 8194]
def bytes8111 : Bytes := ("    let r0000200f: u32 = r00001fa2.wrapping_add(r00002002);\n" : String).toByteArray.data.toList
theorem checked8111 : bytes8111=statementBytes 8207 (op8111.map lower) ∧ bytes8111.length=60 := by core033_kernel_decide
def op8112 : List WordIR.Op := [.rotr 8207 6]
def bytes8112 : Bytes := ("    let r00002010: u32 = r0000200f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8112 : bytes8112=statementBytes 8208 (op8112.map lower) ∧ bytes8112.length=65 := by core033_kernel_decide
def op8113 : List WordIR.Op := [.rotr 8207 11]
def bytes8113 : Bytes := ("    let r00002011: u32 = r0000200f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8113 : bytes8113=statementBytes 8209 (op8113.map lower) ∧ bytes8113.length=65 := by core033_kernel_decide
def op8114 : List WordIR.Op := [.bxor 8208 8209]
def bytes8114 : Bytes := ("    let r00002012: u32 = r00002010 ^ r00002011;\n" : String).toByteArray.data.toList
theorem checked8114 : bytes8114=statementBytes 8210 (op8114.map lower) ∧ bytes8114.length=48 := by core033_kernel_decide
def op8115 : List WordIR.Op := [.rotr 8207 25]
def bytes8115 : Bytes := ("    let r00002013: u32 = r0000200f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8115 : bytes8115=statementBytes 8211 (op8115.map lower) ∧ bytes8115.length=65 := by core033_kernel_decide
def op8116 : List WordIR.Op := [.bxor 8210 8211]
def bytes8116 : Bytes := ("    let r00002014: u32 = r00002012 ^ r00002013;\n" : String).toByteArray.data.toList
theorem checked8116 : bytes8116=statementBytes 8212 (op8116.map lower) ∧ bytes8116.length=48 := by core033_kernel_decide
def op8117 : List WordIR.Op := [.badd 8126 8212]
def bytes8117 : Bytes := ("    let r00002015: u32 = r00001fbe.wrapping_add(r00002014);\n" : String).toByteArray.data.toList
theorem checked8117 : bytes8117=statementBytes 8213 (op8117.map lower) ∧ bytes8117.length=60 := by core033_kernel_decide
def op8118 : List WordIR.Op := [.band 8207 8180]
def bytes8118 : Bytes := ("    let r00002016: u32 = r0000200f & r00001ff4;\n" : String).toByteArray.data.toList
theorem checked8118 : bytes8118=statementBytes 8214 (op8118.map lower) ∧ bytes8118.length=48 := by core033_kernel_decide
def op8119 : List WordIR.Op := [.bnot 8207]
def bytes8119 : Bytes := ("    let r00002017: u32 = !r0000200f;\n" : String).toByteArray.data.toList
theorem checked8119 : bytes8119=statementBytes 8215 (op8119.map lower) ∧ bytes8119.length=37 := by core033_kernel_decide
def op8120 : List WordIR.Op := [.band 8215 8153]
def bytes8120 : Bytes := ("    let r00002018: u32 = r00002017 & r00001fd9;\n" : String).toByteArray.data.toList
theorem checked8120 : bytes8120=statementBytes 8216 (op8120.map lower) ∧ bytes8120.length=48 := by core033_kernel_decide
def op8121 : List WordIR.Op := [.bxor 8214 8216]
def bytes8121 : Bytes := ("    let r00002019: u32 = r00002016 ^ r00002018;\n" : String).toByteArray.data.toList
theorem checked8121 : bytes8121=statementBytes 8217 (op8121.map lower) ∧ bytes8121.length=48 := by core033_kernel_decide
def op8122 : List WordIR.Op := [.badd 8213 8217]
def bytes8122 : Bytes := ("    let r0000201a: u32 = r00002015.wrapping_add(r00002019);\n" : String).toByteArray.data.toList
theorem checked8122 : bytes8122=statementBytes 8218 (op8122.map lower) ∧ bytes8122.length=60 := by core033_kernel_decide
def op8123 : List WordIR.Op := [.literal (BitVec.ofNat 32 1508970993)]
def bytes8123 : Bytes := ("    let r0000201b: u32 = 0x59f111f1_u32;\n" : String).toByteArray.data.toList
theorem checked8123 : bytes8123=statementBytes 8219 (op8123.map lower) ∧ bytes8123.length=41 := by core033_kernel_decide
def op8124 : List WordIR.Op := [.badd 8218 8219]
def bytes8124 : Bytes := ("    let r0000201c: u32 = r0000201a.wrapping_add(r0000201b);\n" : String).toByteArray.data.toList
theorem checked8124 : bytes8124=statementBytes 8220 (op8124.map lower) ∧ bytes8124.length=60 := by core033_kernel_decide
def op8125 : List WordIR.Op := [.badd 8220 6236]
def bytes8125 : Bytes := ("    let r0000201d: u32 = r0000201c.wrapping_add(r0000185c);\n" : String).toByteArray.data.toList
theorem checked8125 : bytes8125=statementBytes 8221 (op8125.map lower) ∧ bytes8125.length=60 := by core033_kernel_decide
def op8126 : List WordIR.Op := [.rotr 8206 2]
def bytes8126 : Bytes := ("    let r0000201e: u32 = r0000200e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8126 : bytes8126=statementBytes 8222 (op8126.map lower) ∧ bytes8126.length=65 := by core033_kernel_decide
def op8127 : List WordIR.Op := [.rotr 8206 13]
def bytes8127 : Bytes := ("    let r0000201f: u32 = r0000200e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8127 : bytes8127=statementBytes 8223 (op8127.map lower) ∧ bytes8127.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8064,op8065,op8066,op8067,op8068,op8069,op8070,op8071,op8072,op8073,op8074,op8075,op8076,op8077,op8078,op8079,op8080,op8081,op8082,op8083,op8084,op8085,op8086,op8087,op8088,op8089,op8090,op8091,op8092,op8093,op8094,op8095,op8096,op8097,op8098,op8099,op8100,op8101,op8102,op8103,op8104,op8105,op8106,op8107,op8108,op8109,op8110,op8111,op8112,op8113,op8114,op8115,op8116,op8117,op8118,op8119,op8120,op8121,op8122,op8123,op8124,op8125,op8126,op8127]
def chunks : List Bytes := [bytes8064,bytes8065,bytes8066,bytes8067,bytes8068,bytes8069,bytes8070,bytes8071,bytes8072,bytes8073,bytes8074,bytes8075,bytes8076,bytes8077,bytes8078,bytes8079,bytes8080,bytes8081,bytes8082,bytes8083,bytes8084,bytes8085,bytes8086,bytes8087,bytes8088,bytes8089,bytes8090,bytes8091,bytes8092,bytes8093,bytes8094,bytes8095,bytes8096,bytes8097,bytes8098,bytes8099,bytes8100,bytes8101,bytes8102,bytes8103,bytes8104,bytes8105,bytes8106,bytes8107,bytes8108,bytes8109,bytes8110,bytes8111,bytes8112,bytes8113,bytes8114,bytes8115,bytes8116,bytes8117,bytes8118,bytes8119,bytes8120,bytes8121,bytes8122,bytes8123,bytes8124,bytes8125,bytes8126,bytes8127]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8160 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8064.1 (.cons _ _ _ _ _ checked8065.1 (.cons _ _ _ _ _ checked8066.1 (.cons _ _ _ _ _ checked8067.1 (.cons _ _ _ _ _ checked8068.1 (.cons _ _ _ _ _ checked8069.1 (.cons _ _ _ _ _ checked8070.1 (.cons _ _ _ _ _ checked8071.1 (.cons _ _ _ _ _ checked8072.1 (.cons _ _ _ _ _ checked8073.1 (.cons _ _ _ _ _ checked8074.1 (.cons _ _ _ _ _ checked8075.1 (.cons _ _ _ _ _ checked8076.1 (.cons _ _ _ _ _ checked8077.1 (.cons _ _ _ _ _ checked8078.1 (.cons _ _ _ _ _ checked8079.1 (.cons _ _ _ _ _ checked8080.1 (.cons _ _ _ _ _ checked8081.1 (.cons _ _ _ _ _ checked8082.1 (.cons _ _ _ _ _ checked8083.1 (.cons _ _ _ _ _ checked8084.1 (.cons _ _ _ _ _ checked8085.1 (.cons _ _ _ _ _ checked8086.1 (.cons _ _ _ _ _ checked8087.1 (.cons _ _ _ _ _ checked8088.1 (.cons _ _ _ _ _ checked8089.1 (.cons _ _ _ _ _ checked8090.1 (.cons _ _ _ _ _ checked8091.1 (.cons _ _ _ _ _ checked8092.1 (.cons _ _ _ _ _ checked8093.1 (.cons _ _ _ _ _ checked8094.1 (.cons _ _ _ _ _ checked8095.1 (.cons _ _ _ _ _ checked8096.1 (.cons _ _ _ _ _ checked8097.1 (.cons _ _ _ _ _ checked8098.1 (.cons _ _ _ _ _ checked8099.1 (.cons _ _ _ _ _ checked8100.1 (.cons _ _ _ _ _ checked8101.1 (.cons _ _ _ _ _ checked8102.1 (.cons _ _ _ _ _ checked8103.1 (.cons _ _ _ _ _ checked8104.1 (.cons _ _ _ _ _ checked8105.1 (.cons _ _ _ _ _ checked8106.1 (.cons _ _ _ _ _ checked8107.1 (.cons _ _ _ _ _ checked8108.1 (.cons _ _ _ _ _ checked8109.1 (.cons _ _ _ _ _ checked8110.1 (.cons _ _ _ _ _ checked8111.1 (.cons _ _ _ _ _ checked8112.1 (.cons _ _ _ _ _ checked8113.1 (.cons _ _ _ _ _ checked8114.1 (.cons _ _ _ _ _ checked8115.1 (.cons _ _ _ _ _ checked8116.1 (.cons _ _ _ _ _ checked8117.1 (.cons _ _ _ _ _ checked8118.1 (.cons _ _ _ _ _ checked8119.1 (.cons _ _ _ _ _ checked8120.1 (.cons _ _ _ _ _ checked8121.1 (.cons _ _ _ _ _ checked8122.1 (.cons _ _ _ _ _ checked8123.1 (.cons _ _ _ _ _ checked8124.1 (.cons _ _ _ _ _ checked8125.1 (.cons _ _ _ _ _ checked8126.1 (.cons _ _ _ _ _ checked8127.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8160 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3460 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8064.2,checked8065.2,checked8066.2,checked8067.2,checked8068.2,checked8069.2,checked8070.2,checked8071.2,checked8072.2,checked8073.2,checked8074.2,checked8075.2,checked8076.2,checked8077.2,checked8078.2,checked8079.2,checked8080.2,checked8081.2,checked8082.2,checked8083.2,checked8084.2,checked8085.2,checked8086.2,checked8087.2,checked8088.2,checked8089.2,checked8090.2,checked8091.2,checked8092.2,checked8093.2,checked8094.2,checked8095.2,checked8096.2,checked8097.2,checked8098.2,checked8099.2,checked8100.2,checked8101.2,checked8102.2,checked8103.2,checked8104.2,checked8105.2,checked8106.2,checked8107.2,checked8108.2,checked8109.2,checked8110.2,checked8111.2,checked8112.2,checked8113.2,checked8114.2,checked8115.2,checked8116.2,checked8117.2,checked8118.2,checked8119.2,checked8120.2,checked8121.2,checked8122.2,checked8123.2,checked8124.2,checked8125.2,checked8126.2,checked8127.2]
  decide
end ArtifactPairedPathRoundGroup126
