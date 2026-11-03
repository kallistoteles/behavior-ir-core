import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup126
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8064 : List WordIR.Op := [.badd 8176 8181]
def bytes8064 : Bytes := ("    let r00001ff6: u32 = r00001ff0.wrapping_add(r00001ff5);\n" : String).toByteArray.data.toList
theorem checked8064 : bytes8064=statementBytes 8182 (op8064.map lower) ∧ bytes8064.length=60 := by core033_kernel_decide
def op8065 : List WordIR.Op := [.badd 8182 6907]
def bytes8065 : Bytes := ("    let r00001ff7: u32 = r00001ff6.wrapping_add(r00001afb);\n" : String).toByteArray.data.toList
theorem checked8065 : bytes8065=statementBytes 8183 (op8065.map lower) ∧ bytes8065.length=60 := by core033_kernel_decide
def op8066 : List WordIR.Op := [.rotr 8170 17]
def bytes8066 : Bytes := ("    let r00001ff8: u32 = r00001fea.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8066 : bytes8066=statementBytes 8184 (op8066.map lower) ∧ bytes8066.length=65 := by core033_kernel_decide
def op8067 : List WordIR.Op := [.rotr 8170 19]
def bytes8067 : Bytes := ("    let r00001ff9: u32 = r00001fea.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8067 : bytes8067=statementBytes 8185 (op8067.map lower) ∧ bytes8067.length=65 := by core033_kernel_decide
def op8068 : List WordIR.Op := [.bxor 8184 8185]
def bytes8068 : Bytes := ("    let r00001ffa: u32 = r00001ff8 ^ r00001ff9;\n" : String).toByteArray.data.toList
theorem checked8068 : bytes8068=statementBytes 8186 (op8068.map lower) ∧ bytes8068.length=48 := by core033_kernel_decide
def op8069 : List WordIR.Op := [.shr 8170 10]
def bytes8069 : Bytes := ("    let r00001ffb: u32 = r00001fea >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8069 : bytes8069=statementBytes 8187 (op8069.map lower) ∧ bytes8069.length=54 := by core033_kernel_decide
def op8070 : List WordIR.Op := [.bxor 8186 8187]
def bytes8070 : Bytes := ("    let r00001ffc: u32 = r00001ffa ^ r00001ffb;\n" : String).toByteArray.data.toList
theorem checked8070 : bytes8070=statementBytes 8188 (op8070.map lower) ∧ bytes8070.length=48 := by core033_kernel_decide
def op8071 : List WordIR.Op := [.badd 8188 6967]
def bytes8071 : Bytes := ("    let r00001ffd: u32 = r00001ffc.wrapping_add(r00001b37);\n" : String).toByteArray.data.toList
theorem checked8071 : bytes8071=statementBytes 8189 (op8071.map lower) ∧ bytes8071.length=60 := by core033_kernel_decide
def op8072 : List WordIR.Op := [.rotr 6919 7]
def bytes8072 : Bytes := ("    let r00001ffe: u32 = r00001b07.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8072 : bytes8072=statementBytes 8190 (op8072.map lower) ∧ bytes8072.length=65 := by core033_kernel_decide
def op8073 : List WordIR.Op := [.rotr 6919 18]
def bytes8073 : Bytes := ("    let r00001fff: u32 = r00001b07.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8073 : bytes8073=statementBytes 8191 (op8073.map lower) ∧ bytes8073.length=65 := by core033_kernel_decide
def op8074 : List WordIR.Op := [.bxor 8190 8191]
def bytes8074 : Bytes := ("    let r00002000: u32 = r00001ffe ^ r00001fff;\n" : String).toByteArray.data.toList
theorem checked8074 : bytes8074=statementBytes 8192 (op8074.map lower) ∧ bytes8074.length=48 := by core033_kernel_decide
def op8075 : List WordIR.Op := [.shr 6919 3]
def bytes8075 : Bytes := ("    let r00002001: u32 = r00001b07 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8075 : bytes8075=statementBytes 8193 (op8075.map lower) ∧ bytes8075.length=54 := by core033_kernel_decide
def op8076 : List WordIR.Op := [.bxor 8192 8193]
def bytes8076 : Bytes := ("    let r00002002: u32 = r00002000 ^ r00002001;\n" : String).toByteArray.data.toList
theorem checked8076 : bytes8076=statementBytes 8194 (op8076.map lower) ∧ bytes8076.length=48 := by core033_kernel_decide
def op8077 : List WordIR.Op := [.badd 8189 8194]
def bytes8077 : Bytes := ("    let r00002003: u32 = r00001ffd.wrapping_add(r00002002);\n" : String).toByteArray.data.toList
theorem checked8077 : bytes8077=statementBytes 8195 (op8077.map lower) ∧ bytes8077.length=60 := by core033_kernel_decide
def op8078 : List WordIR.Op := [.badd 8195 6913]
def bytes8078 : Bytes := ("    let r00002004: u32 = r00002003.wrapping_add(r00001b01);\n" : String).toByteArray.data.toList
theorem checked8078 : bytes8078=statementBytes 8196 (op8078.map lower) ∧ bytes8078.length=60 := by core033_kernel_decide
def op8079 : List WordIR.Op := [.rotr 8183 17]
def bytes8079 : Bytes := ("    let r00002005: u32 = r00001ff7.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8079 : bytes8079=statementBytes 8197 (op8079.map lower) ∧ bytes8079.length=65 := by core033_kernel_decide
def op8080 : List WordIR.Op := [.rotr 8183 19]
def bytes8080 : Bytes := ("    let r00002006: u32 = r00001ff7.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8080 : bytes8080=statementBytes 8198 (op8080.map lower) ∧ bytes8080.length=65 := by core033_kernel_decide
def op8081 : List WordIR.Op := [.bxor 8197 8198]
def bytes8081 : Bytes := ("    let r00002007: u32 = r00002005 ^ r00002006;\n" : String).toByteArray.data.toList
theorem checked8081 : bytes8081=statementBytes 8199 (op8081.map lower) ∧ bytes8081.length=48 := by core033_kernel_decide
def op8082 : List WordIR.Op := [.shr 8183 10]
def bytes8082 : Bytes := ("    let r00002008: u32 = r00001ff7 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8082 : bytes8082=statementBytes 8200 (op8082.map lower) ∧ bytes8082.length=54 := by core033_kernel_decide
def op8083 : List WordIR.Op := [.bxor 8199 8200]
def bytes8083 : Bytes := ("    let r00002009: u32 = r00002007 ^ r00002008;\n" : String).toByteArray.data.toList
theorem checked8083 : bytes8083=statementBytes 8201 (op8083.map lower) ∧ bytes8083.length=48 := by core033_kernel_decide
def op8084 : List WordIR.Op := [.badd 8201 6973]
def bytes8084 : Bytes := ("    let r0000200a: u32 = r00002009.wrapping_add(r00001b3d);\n" : String).toByteArray.data.toList
theorem checked8084 : bytes8084=statementBytes 8202 (op8084.map lower) ∧ bytes8084.length=60 := by core033_kernel_decide
def op8085 : List WordIR.Op := [.rotr 6925 7]
def bytes8085 : Bytes := ("    let r0000200b: u32 = r00001b0d.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8085 : bytes8085=statementBytes 8203 (op8085.map lower) ∧ bytes8085.length=65 := by core033_kernel_decide
def op8086 : List WordIR.Op := [.rotr 6925 18]
def bytes8086 : Bytes := ("    let r0000200c: u32 = r00001b0d.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8086 : bytes8086=statementBytes 8204 (op8086.map lower) ∧ bytes8086.length=65 := by core033_kernel_decide
def op8087 : List WordIR.Op := [.bxor 8203 8204]
def bytes8087 : Bytes := ("    let r0000200d: u32 = r0000200b ^ r0000200c;\n" : String).toByteArray.data.toList
theorem checked8087 : bytes8087=statementBytes 8205 (op8087.map lower) ∧ bytes8087.length=48 := by core033_kernel_decide
def op8088 : List WordIR.Op := [.shr 6925 3]
def bytes8088 : Bytes := ("    let r0000200e: u32 = r00001b0d >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8088 : bytes8088=statementBytes 8206 (op8088.map lower) ∧ bytes8088.length=54 := by core033_kernel_decide
def op8089 : List WordIR.Op := [.bxor 8205 8206]
def bytes8089 : Bytes := ("    let r0000200f: u32 = r0000200d ^ r0000200e;\n" : String).toByteArray.data.toList
theorem checked8089 : bytes8089=statementBytes 8207 (op8089.map lower) ∧ bytes8089.length=48 := by core033_kernel_decide
def op8090 : List WordIR.Op := [.badd 8202 8207]
def bytes8090 : Bytes := ("    let r00002010: u32 = r0000200a.wrapping_add(r0000200f);\n" : String).toByteArray.data.toList
theorem checked8090 : bytes8090=statementBytes 8208 (op8090.map lower) ∧ bytes8090.length=60 := by core033_kernel_decide
def op8091 : List WordIR.Op := [.badd 8208 6919]
def bytes8091 : Bytes := ("    let r00002011: u32 = r00002010.wrapping_add(r00001b07);\n" : String).toByteArray.data.toList
theorem checked8091 : bytes8091=statementBytes 8209 (op8091.map lower) ∧ bytes8091.length=60 := by core033_kernel_decide
def op8092 : List WordIR.Op := [.rotr 8196 17]
def bytes8092 : Bytes := ("    let r00002012: u32 = r00002004.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8092 : bytes8092=statementBytes 8210 (op8092.map lower) ∧ bytes8092.length=65 := by core033_kernel_decide
def op8093 : List WordIR.Op := [.rotr 8196 19]
def bytes8093 : Bytes := ("    let r00002013: u32 = r00002004.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8093 : bytes8093=statementBytes 8211 (op8093.map lower) ∧ bytes8093.length=65 := by core033_kernel_decide
def op8094 : List WordIR.Op := [.bxor 8210 8211]
def bytes8094 : Bytes := ("    let r00002014: u32 = r00002012 ^ r00002013;\n" : String).toByteArray.data.toList
theorem checked8094 : bytes8094=statementBytes 8212 (op8094.map lower) ∧ bytes8094.length=48 := by core033_kernel_decide
def op8095 : List WordIR.Op := [.shr 8196 10]
def bytes8095 : Bytes := ("    let r00002015: u32 = r00002004 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8095 : bytes8095=statementBytes 8213 (op8095.map lower) ∧ bytes8095.length=54 := by core033_kernel_decide
def op8096 : List WordIR.Op := [.bxor 8212 8213]
def bytes8096 : Bytes := ("    let r00002016: u32 = r00002014 ^ r00002015;\n" : String).toByteArray.data.toList
theorem checked8096 : bytes8096=statementBytes 8214 (op8096.map lower) ∧ bytes8096.length=48 := by core033_kernel_decide
def op8097 : List WordIR.Op := [.badd 8214 6979]
def bytes8097 : Bytes := ("    let r00002017: u32 = r00002016.wrapping_add(r00001b43);\n" : String).toByteArray.data.toList
theorem checked8097 : bytes8097=statementBytes 8215 (op8097.map lower) ∧ bytes8097.length=60 := by core033_kernel_decide
def op8098 : List WordIR.Op := [.rotr 6931 7]
def bytes8098 : Bytes := ("    let r00002018: u32 = r00001b13.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8098 : bytes8098=statementBytes 8216 (op8098.map lower) ∧ bytes8098.length=65 := by core033_kernel_decide
def op8099 : List WordIR.Op := [.rotr 6931 18]
def bytes8099 : Bytes := ("    let r00002019: u32 = r00001b13.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8099 : bytes8099=statementBytes 8217 (op8099.map lower) ∧ bytes8099.length=65 := by core033_kernel_decide
def op8100 : List WordIR.Op := [.bxor 8216 8217]
def bytes8100 : Bytes := ("    let r0000201a: u32 = r00002018 ^ r00002019;\n" : String).toByteArray.data.toList
theorem checked8100 : bytes8100=statementBytes 8218 (op8100.map lower) ∧ bytes8100.length=48 := by core033_kernel_decide
def op8101 : List WordIR.Op := [.shr 6931 3]
def bytes8101 : Bytes := ("    let r0000201b: u32 = r00001b13 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8101 : bytes8101=statementBytes 8219 (op8101.map lower) ∧ bytes8101.length=54 := by core033_kernel_decide
def op8102 : List WordIR.Op := [.bxor 8218 8219]
def bytes8102 : Bytes := ("    let r0000201c: u32 = r0000201a ^ r0000201b;\n" : String).toByteArray.data.toList
theorem checked8102 : bytes8102=statementBytes 8220 (op8102.map lower) ∧ bytes8102.length=48 := by core033_kernel_decide
def op8103 : List WordIR.Op := [.badd 8215 8220]
def bytes8103 : Bytes := ("    let r0000201d: u32 = r00002017.wrapping_add(r0000201c);\n" : String).toByteArray.data.toList
theorem checked8103 : bytes8103=statementBytes 8221 (op8103.map lower) ∧ bytes8103.length=60 := by core033_kernel_decide
def op8104 : List WordIR.Op := [.badd 8221 6925]
def bytes8104 : Bytes := ("    let r0000201e: u32 = r0000201d.wrapping_add(r00001b0d);\n" : String).toByteArray.data.toList
theorem checked8104 : bytes8104=statementBytes 8222 (op8104.map lower) ∧ bytes8104.length=60 := by core033_kernel_decide
def op8105 : List WordIR.Op := [.rotr 8209 17]
def bytes8105 : Bytes := ("    let r0000201f: u32 = r00002011.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8105 : bytes8105=statementBytes 8223 (op8105.map lower) ∧ bytes8105.length=65 := by core033_kernel_decide
def op8106 : List WordIR.Op := [.rotr 8209 19]
def bytes8106 : Bytes := ("    let r00002020: u32 = r00002011.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8106 : bytes8106=statementBytes 8224 (op8106.map lower) ∧ bytes8106.length=65 := by core033_kernel_decide
def op8107 : List WordIR.Op := [.bxor 8223 8224]
def bytes8107 : Bytes := ("    let r00002021: u32 = r0000201f ^ r00002020;\n" : String).toByteArray.data.toList
theorem checked8107 : bytes8107=statementBytes 8225 (op8107.map lower) ∧ bytes8107.length=48 := by core033_kernel_decide
def op8108 : List WordIR.Op := [.shr 8209 10]
def bytes8108 : Bytes := ("    let r00002022: u32 = r00002011 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8108 : bytes8108=statementBytes 8226 (op8108.map lower) ∧ bytes8108.length=54 := by core033_kernel_decide
def op8109 : List WordIR.Op := [.bxor 8225 8226]
def bytes8109 : Bytes := ("    let r00002023: u32 = r00002021 ^ r00002022;\n" : String).toByteArray.data.toList
theorem checked8109 : bytes8109=statementBytes 8227 (op8109.map lower) ∧ bytes8109.length=48 := by core033_kernel_decide
def op8110 : List WordIR.Op := [.badd 8227 8144]
def bytes8110 : Bytes := ("    let r00002024: u32 = r00002023.wrapping_add(r00001fd0);\n" : String).toByteArray.data.toList
theorem checked8110 : bytes8110=statementBytes 8228 (op8110.map lower) ∧ bytes8110.length=60 := by core033_kernel_decide
def op8111 : List WordIR.Op := [.rotr 6937 7]
def bytes8111 : Bytes := ("    let r00002025: u32 = r00001b19.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8111 : bytes8111=statementBytes 8229 (op8111.map lower) ∧ bytes8111.length=65 := by core033_kernel_decide
def op8112 : List WordIR.Op := [.rotr 6937 18]
def bytes8112 : Bytes := ("    let r00002026: u32 = r00001b19.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8112 : bytes8112=statementBytes 8230 (op8112.map lower) ∧ bytes8112.length=65 := by core033_kernel_decide
def op8113 : List WordIR.Op := [.bxor 8229 8230]
def bytes8113 : Bytes := ("    let r00002027: u32 = r00002025 ^ r00002026;\n" : String).toByteArray.data.toList
theorem checked8113 : bytes8113=statementBytes 8231 (op8113.map lower) ∧ bytes8113.length=48 := by core033_kernel_decide
def op8114 : List WordIR.Op := [.shr 6937 3]
def bytes8114 : Bytes := ("    let r00002028: u32 = r00001b19 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8114 : bytes8114=statementBytes 8232 (op8114.map lower) ∧ bytes8114.length=54 := by core033_kernel_decide
def op8115 : List WordIR.Op := [.bxor 8231 8232]
def bytes8115 : Bytes := ("    let r00002029: u32 = r00002027 ^ r00002028;\n" : String).toByteArray.data.toList
theorem checked8115 : bytes8115=statementBytes 8233 (op8115.map lower) ∧ bytes8115.length=48 := by core033_kernel_decide
def op8116 : List WordIR.Op := [.badd 8228 8233]
def bytes8116 : Bytes := ("    let r0000202a: u32 = r00002024.wrapping_add(r00002029);\n" : String).toByteArray.data.toList
theorem checked8116 : bytes8116=statementBytes 8234 (op8116.map lower) ∧ bytes8116.length=60 := by core033_kernel_decide
def op8117 : List WordIR.Op := [.badd 8234 6931]
def bytes8117 : Bytes := ("    let r0000202b: u32 = r0000202a.wrapping_add(r00001b13);\n" : String).toByteArray.data.toList
theorem checked8117 : bytes8117=statementBytes 8235 (op8117.map lower) ∧ bytes8117.length=60 := by core033_kernel_decide
def op8118 : List WordIR.Op := [.rotr 8222 17]
def bytes8118 : Bytes := ("    let r0000202c: u32 = r0000201e.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked8118 : bytes8118=statementBytes 8236 (op8118.map lower) ∧ bytes8118.length=65 := by core033_kernel_decide
def op8119 : List WordIR.Op := [.rotr 8222 19]
def bytes8119 : Bytes := ("    let r0000202d: u32 = r0000201e.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked8119 : bytes8119=statementBytes 8237 (op8119.map lower) ∧ bytes8119.length=65 := by core033_kernel_decide
def op8120 : List WordIR.Op := [.bxor 8236 8237]
def bytes8120 : Bytes := ("    let r0000202e: u32 = r0000202c ^ r0000202d;\n" : String).toByteArray.data.toList
theorem checked8120 : bytes8120=statementBytes 8238 (op8120.map lower) ∧ bytes8120.length=48 := by core033_kernel_decide
def op8121 : List WordIR.Op := [.shr 8222 10]
def bytes8121 : Bytes := ("    let r0000202f: u32 = r0000201e >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked8121 : bytes8121=statementBytes 8239 (op8121.map lower) ∧ bytes8121.length=54 := by core033_kernel_decide
def op8122 : List WordIR.Op := [.bxor 8238 8239]
def bytes8122 : Bytes := ("    let r00002030: u32 = r0000202e ^ r0000202f;\n" : String).toByteArray.data.toList
theorem checked8122 : bytes8122=statementBytes 8240 (op8122.map lower) ∧ bytes8122.length=48 := by core033_kernel_decide
def op8123 : List WordIR.Op := [.badd 8240 8157]
def bytes8123 : Bytes := ("    let r00002031: u32 = r00002030.wrapping_add(r00001fdd);\n" : String).toByteArray.data.toList
theorem checked8123 : bytes8123=statementBytes 8241 (op8123.map lower) ∧ bytes8123.length=60 := by core033_kernel_decide
def op8124 : List WordIR.Op := [.rotr 6943 7]
def bytes8124 : Bytes := ("    let r00002032: u32 = r00001b1f.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked8124 : bytes8124=statementBytes 8242 (op8124.map lower) ∧ bytes8124.length=65 := by core033_kernel_decide
def op8125 : List WordIR.Op := [.rotr 6943 18]
def bytes8125 : Bytes := ("    let r00002033: u32 = r00001b1f.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked8125 : bytes8125=statementBytes 8243 (op8125.map lower) ∧ bytes8125.length=65 := by core033_kernel_decide
def op8126 : List WordIR.Op := [.bxor 8242 8243]
def bytes8126 : Bytes := ("    let r00002034: u32 = r00002032 ^ r00002033;\n" : String).toByteArray.data.toList
theorem checked8126 : bytes8126=statementBytes 8244 (op8126.map lower) ∧ bytes8126.length=48 := by core033_kernel_decide
def op8127 : List WordIR.Op := [.shr 6943 3]
def bytes8127 : Bytes := ("    let r00002035: u32 = r00001b1f >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked8127 : bytes8127=statementBytes 8245 (op8127.map lower) ∧ bytes8127.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8064,op8065,op8066,op8067,op8068,op8069,op8070,op8071,op8072,op8073,op8074,op8075,op8076,op8077,op8078,op8079,op8080,op8081,op8082,op8083,op8084,op8085,op8086,op8087,op8088,op8089,op8090,op8091,op8092,op8093,op8094,op8095,op8096,op8097,op8098,op8099,op8100,op8101,op8102,op8103,op8104,op8105,op8106,op8107,op8108,op8109,op8110,op8111,op8112,op8113,op8114,op8115,op8116,op8117,op8118,op8119,op8120,op8121,op8122,op8123,op8124,op8125,op8126,op8127]
def chunks : List Bytes := [bytes8064,bytes8065,bytes8066,bytes8067,bytes8068,bytes8069,bytes8070,bytes8071,bytes8072,bytes8073,bytes8074,bytes8075,bytes8076,bytes8077,bytes8078,bytes8079,bytes8080,bytes8081,bytes8082,bytes8083,bytes8084,bytes8085,bytes8086,bytes8087,bytes8088,bytes8089,bytes8090,bytes8091,bytes8092,bytes8093,bytes8094,bytes8095,bytes8096,bytes8097,bytes8098,bytes8099,bytes8100,bytes8101,bytes8102,bytes8103,bytes8104,bytes8105,bytes8106,bytes8107,bytes8108,bytes8109,bytes8110,bytes8111,bytes8112,bytes8113,bytes8114,bytes8115,bytes8116,bytes8117,bytes8118,bytes8119,bytes8120,bytes8121,bytes8122,bytes8123,bytes8124,bytes8125,bytes8126,bytes8127]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8182 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8064.1 (.cons _ _ _ _ _ checked8065.1 (.cons _ _ _ _ _ checked8066.1 (.cons _ _ _ _ _ checked8067.1 (.cons _ _ _ _ _ checked8068.1 (.cons _ _ _ _ _ checked8069.1 (.cons _ _ _ _ _ checked8070.1 (.cons _ _ _ _ _ checked8071.1 (.cons _ _ _ _ _ checked8072.1 (.cons _ _ _ _ _ checked8073.1 (.cons _ _ _ _ _ checked8074.1 (.cons _ _ _ _ _ checked8075.1 (.cons _ _ _ _ _ checked8076.1 (.cons _ _ _ _ _ checked8077.1 (.cons _ _ _ _ _ checked8078.1 (.cons _ _ _ _ _ checked8079.1 (.cons _ _ _ _ _ checked8080.1 (.cons _ _ _ _ _ checked8081.1 (.cons _ _ _ _ _ checked8082.1 (.cons _ _ _ _ _ checked8083.1 (.cons _ _ _ _ _ checked8084.1 (.cons _ _ _ _ _ checked8085.1 (.cons _ _ _ _ _ checked8086.1 (.cons _ _ _ _ _ checked8087.1 (.cons _ _ _ _ _ checked8088.1 (.cons _ _ _ _ _ checked8089.1 (.cons _ _ _ _ _ checked8090.1 (.cons _ _ _ _ _ checked8091.1 (.cons _ _ _ _ _ checked8092.1 (.cons _ _ _ _ _ checked8093.1 (.cons _ _ _ _ _ checked8094.1 (.cons _ _ _ _ _ checked8095.1 (.cons _ _ _ _ _ checked8096.1 (.cons _ _ _ _ _ checked8097.1 (.cons _ _ _ _ _ checked8098.1 (.cons _ _ _ _ _ checked8099.1 (.cons _ _ _ _ _ checked8100.1 (.cons _ _ _ _ _ checked8101.1 (.cons _ _ _ _ _ checked8102.1 (.cons _ _ _ _ _ checked8103.1 (.cons _ _ _ _ _ checked8104.1 (.cons _ _ _ _ _ checked8105.1 (.cons _ _ _ _ _ checked8106.1 (.cons _ _ _ _ _ checked8107.1 (.cons _ _ _ _ _ checked8108.1 (.cons _ _ _ _ _ checked8109.1 (.cons _ _ _ _ _ checked8110.1 (.cons _ _ _ _ _ checked8111.1 (.cons _ _ _ _ _ checked8112.1 (.cons _ _ _ _ _ checked8113.1 (.cons _ _ _ _ _ checked8114.1 (.cons _ _ _ _ _ checked8115.1 (.cons _ _ _ _ _ checked8116.1 (.cons _ _ _ _ _ checked8117.1 (.cons _ _ _ _ _ checked8118.1 (.cons _ _ _ _ _ checked8119.1 (.cons _ _ _ _ _ checked8120.1 (.cons _ _ _ _ _ checked8121.1 (.cons _ _ _ _ _ checked8122.1 (.cons _ _ _ _ _ checked8123.1 (.cons _ _ _ _ _ checked8124.1 (.cons _ _ _ _ _ checked8125.1 (.cons _ _ _ _ _ checked8126.1 (.cons _ _ _ _ _ checked8127.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8182 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3652 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8064.2,checked8065.2,checked8066.2,checked8067.2,checked8068.2,checked8069.2,checked8070.2,checked8071.2,checked8072.2,checked8073.2,checked8074.2,checked8075.2,checked8076.2,checked8077.2,checked8078.2,checked8079.2,checked8080.2,checked8081.2,checked8082.2,checked8083.2,checked8084.2,checked8085.2,checked8086.2,checked8087.2,checked8088.2,checked8089.2,checked8090.2,checked8091.2,checked8092.2,checked8093.2,checked8094.2,checked8095.2,checked8096.2,checked8097.2,checked8098.2,checked8099.2,checked8100.2,checked8101.2,checked8102.2,checked8103.2,checked8104.2,checked8105.2,checked8106.2,checked8107.2,checked8108.2,checked8109.2,checked8110.2,checked8111.2,checked8112.2,checked8113.2,checked8114.2,checked8115.2,checked8116.2,checked8117.2,checked8118.2,checked8119.2,checked8120.2,checked8121.2,checked8122.2,checked8123.2,checked8124.2,checked8125.2,checked8126.2,checked8127.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup126
