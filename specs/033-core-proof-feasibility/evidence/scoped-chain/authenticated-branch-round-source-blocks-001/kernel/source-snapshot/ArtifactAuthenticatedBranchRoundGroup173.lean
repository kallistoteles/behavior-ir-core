import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup173
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11072 : List WordIR.Op := [.band 11185 11189]
def bytes11072 : Bytes := ("    let r00002bb6: u32 = r00002bb1 & r00002bb5;\n" : String).toByteArray.data.toList
theorem checked11072 : bytes11072=statementBytes 11190 (op11072.map lower) ∧ bytes11072.length=48 := by core033_kernel_decide
def op11073 : List WordIR.Op := [.bxor 11182 11190]
def bytes11073 : Bytes := ("    let r00002bb7: u32 = r00002bae ^ r00002bb6;\n" : String).toByteArray.data.toList
theorem checked11073 : bytes11073=statementBytes 11191 (op11073.map lower) ∧ bytes11073.length=48 := by core033_kernel_decide
def op11074 : List WordIR.Op := [.shr 11191 31]
def bytes11074 : Bytes := ("    let r00002bb8: u32 = r00002bb7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11074 : bytes11074=statementBytes 11192 (op11074.map lower) ∧ bytes11074.length=54 := by core033_kernel_decide
def op11075 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11075 : Bytes := ("    let r00002bb9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11075 : bytes11075=statementBytes 11193 (op11075.map lower) ∧ bytes11075.length=41 := by core033_kernel_decide
def op11076 : List WordIR.Op := [.bxor 11192 11193]
def bytes11076 : Bytes := ("    let r00002bba: u32 = r00002bb8 ^ r00002bb9;\n" : String).toByteArray.data.toList
theorem checked11076 : bytes11076=statementBytes 11194 (op11076.map lower) ∧ bytes11076.length=48 := by core033_kernel_decide
def op11077 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes11077 : Bytes := ("    let r00002bbb: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked11077 : bytes11077=statementBytes 11195 (op11077.map lower) ∧ bytes11077.length=41 := by core033_kernel_decide
def op11078 : List WordIR.Op := [.bnot 11195]
def bytes11078 : Bytes := ("    let r00002bbc: u32 = !r00002bbb;\n" : String).toByteArray.data.toList
theorem checked11078 : bytes11078=statementBytes 11196 (op11078.map lower) ∧ bytes11078.length=37 := by core033_kernel_decide
def op11079 : List WordIR.Op := [.band 10939 11196]
def bytes11079 : Bytes := ("    let r00002bbd: u32 = r00002abb & r00002bbc;\n" : String).toByteArray.data.toList
theorem checked11079 : bytes11079=statementBytes 11197 (op11079.map lower) ∧ bytes11079.length=48 := by core033_kernel_decide
def op11080 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes11080 : Bytes := ("    let r00002bbe: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked11080 : bytes11080=statementBytes 11198 (op11080.map lower) ∧ bytes11080.length=41 := by core033_kernel_decide
def op11081 : List WordIR.Op := [.bnot 11198]
def bytes11081 : Bytes := ("    let r00002bbf: u32 = !r00002bbe;\n" : String).toByteArray.data.toList
theorem checked11081 : bytes11081=statementBytes 11199 (op11081.map lower) ∧ bytes11081.length=37 := by core033_kernel_decide
def op11082 : List WordIR.Op := [.bxor 10939 11199]
def bytes11082 : Bytes := ("    let r00002bc0: u32 = r00002abb ^ r00002bbf;\n" : String).toByteArray.data.toList
theorem checked11082 : bytes11082=statementBytes 11200 (op11082.map lower) ∧ bytes11082.length=48 := by core033_kernel_decide
def op11083 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes11083 : Bytes := ("    let r00002bc1: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked11083 : bytes11083=statementBytes 11201 (op11083.map lower) ∧ bytes11083.length=41 := by core033_kernel_decide
def op11084 : List WordIR.Op := [.bnot 11201]
def bytes11084 : Bytes := ("    let r00002bc2: u32 = !r00002bc1;\n" : String).toByteArray.data.toList
theorem checked11084 : bytes11084=statementBytes 11202 (op11084.map lower) ∧ bytes11084.length=37 := by core033_kernel_decide
def op11085 : List WordIR.Op := [.badd 10939 11202]
def bytes11085 : Bytes := ("    let r00002bc3: u32 = r00002abb.wrapping_add(r00002bc2);\n" : String).toByteArray.data.toList
theorem checked11085 : bytes11085=statementBytes 11203 (op11085.map lower) ∧ bytes11085.length=60 := by core033_kernel_decide
def op11086 : List WordIR.Op := [.bnot 11203]
def bytes11086 : Bytes := ("    let r00002bc4: u32 = !r00002bc3;\n" : String).toByteArray.data.toList
theorem checked11086 : bytes11086=statementBytes 11204 (op11086.map lower) ∧ bytes11086.length=37 := by core033_kernel_decide
def op11087 : List WordIR.Op := [.band 11200 11204]
def bytes11087 : Bytes := ("    let r00002bc5: u32 = r00002bc0 & r00002bc4;\n" : String).toByteArray.data.toList
theorem checked11087 : bytes11087=statementBytes 11205 (op11087.map lower) ∧ bytes11087.length=48 := by core033_kernel_decide
def op11088 : List WordIR.Op := [.bxor 11197 11205]
def bytes11088 : Bytes := ("    let r00002bc6: u32 = r00002bbd ^ r00002bc5;\n" : String).toByteArray.data.toList
theorem checked11088 : bytes11088=statementBytes 11206 (op11088.map lower) ∧ bytes11088.length=48 := by core033_kernel_decide
def op11089 : List WordIR.Op := [.shr 11206 31]
def bytes11089 : Bytes := ("    let r00002bc7: u32 = r00002bc6 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11089 : bytes11089=statementBytes 11207 (op11089.map lower) ∧ bytes11089.length=54 := by core033_kernel_decide
def op11090 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11090 : Bytes := ("    let r00002bc8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11090 : bytes11090=statementBytes 11208 (op11090.map lower) ∧ bytes11090.length=41 := by core033_kernel_decide
def op11091 : List WordIR.Op := [.bxor 11207 11208]
def bytes11091 : Bytes := ("    let r00002bc9: u32 = r00002bc7 ^ r00002bc8;\n" : String).toByteArray.data.toList
theorem checked11091 : bytes11091=statementBytes 11209 (op11091.map lower) ∧ bytes11091.length=48 := by core033_kernel_decide
def op11092 : List WordIR.Op := [.band 11194 11209]
def bytes11092 : Bytes := ("    let r00002bca: u32 = r00002bba & r00002bc9;\n" : String).toByteArray.data.toList
theorem checked11092 : bytes11092=statementBytes 11210 (op11092.map lower) ∧ bytes11092.length=48 := by core033_kernel_decide
def op11093 : List WordIR.Op := [.band 11179 11210]
def bytes11093 : Bytes := ("    let r00002bcb: u32 = r00002bab & r00002bca;\n" : String).toByteArray.data.toList
theorem checked11093 : bytes11093=statementBytes 11211 (op11093.map lower) ∧ bytes11093.length=48 := by core033_kernel_decide
def op11094 : List WordIR.Op := [.badd 10928 10950]
def bytes11094 : Bytes := ("    let r00002bcc: u32 = r00002ab0.wrapping_add(r00002ac6);\n" : String).toByteArray.data.toList
theorem checked11094 : bytes11094=statementBytes 11212 (op11094.map lower) ∧ bytes11094.length=60 := by core033_kernel_decide
def op11095 : List WordIR.Op := [.band 10917 10939]
def bytes11095 : Bytes := ("    let r00002bcd: u32 = r00002aa5 & r00002abb;\n" : String).toByteArray.data.toList
theorem checked11095 : bytes11095=statementBytes 11213 (op11095.map lower) ∧ bytes11095.length=48 := by core033_kernel_decide
def op11096 : List WordIR.Op := [.bxor 10917 10939]
def bytes11096 : Bytes := ("    let r00002bce: u32 = r00002aa5 ^ r00002abb;\n" : String).toByteArray.data.toList
theorem checked11096 : bytes11096=statementBytes 11214 (op11096.map lower) ∧ bytes11096.length=48 := by core033_kernel_decide
def op11097 : List WordIR.Op := [.badd 10917 10939]
def bytes11097 : Bytes := ("    let r00002bcf: u32 = r00002aa5.wrapping_add(r00002abb);\n" : String).toByteArray.data.toList
theorem checked11097 : bytes11097=statementBytes 11215 (op11097.map lower) ∧ bytes11097.length=60 := by core033_kernel_decide
def op11098 : List WordIR.Op := [.bnot 11215]
def bytes11098 : Bytes := ("    let r00002bd0: u32 = !r00002bcf;\n" : String).toByteArray.data.toList
theorem checked11098 : bytes11098=statementBytes 11216 (op11098.map lower) ∧ bytes11098.length=37 := by core033_kernel_decide
def op11099 : List WordIR.Op := [.band 11214 11216]
def bytes11099 : Bytes := ("    let r00002bd1: u32 = r00002bce & r00002bd0;\n" : String).toByteArray.data.toList
theorem checked11099 : bytes11099=statementBytes 11217 (op11099.map lower) ∧ bytes11099.length=48 := by core033_kernel_decide
def op11100 : List WordIR.Op := [.bxor 11213 11217]
def bytes11100 : Bytes := ("    let r00002bd2: u32 = r00002bcd ^ r00002bd1;\n" : String).toByteArray.data.toList
theorem checked11100 : bytes11100=statementBytes 11218 (op11100.map lower) ∧ bytes11100.length=48 := by core033_kernel_decide
def op11101 : List WordIR.Op := [.shr 11218 31]
def bytes11101 : Bytes := ("    let r00002bd3: u32 = r00002bd2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11101 : bytes11101=statementBytes 11219 (op11101.map lower) ∧ bytes11101.length=54 := by core033_kernel_decide
def op11102 : List WordIR.Op := [.badd 11212 11219]
def bytes11102 : Bytes := ("    let r00002bd4: u32 = r00002bcc.wrapping_add(r00002bd3);\n" : String).toByteArray.data.toList
theorem checked11102 : bytes11102=statementBytes 11220 (op11102.map lower) ∧ bytes11102.length=60 := by core033_kernel_decide
def op11103 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11103 : Bytes := ("    let r00002bd5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11103 : bytes11103=statementBytes 11221 (op11103.map lower) ∧ bytes11103.length=41 := by core033_kernel_decide
def op11104 : List WordIR.Op := [.bnot 11221]
def bytes11104 : Bytes := ("    let r00002bd6: u32 = !r00002bd5;\n" : String).toByteArray.data.toList
theorem checked11104 : bytes11104=statementBytes 11222 (op11104.map lower) ∧ bytes11104.length=37 := by core033_kernel_decide
def op11105 : List WordIR.Op := [.band 11220 11222]
def bytes11105 : Bytes := ("    let r00002bd7: u32 = r00002bd4 & r00002bd6;\n" : String).toByteArray.data.toList
theorem checked11105 : bytes11105=statementBytes 11223 (op11105.map lower) ∧ bytes11105.length=48 := by core033_kernel_decide
def op11106 : List WordIR.Op := [.badd 10928 10950]
def bytes11106 : Bytes := ("    let r00002bd8: u32 = r00002ab0.wrapping_add(r00002ac6);\n" : String).toByteArray.data.toList
theorem checked11106 : bytes11106=statementBytes 11224 (op11106.map lower) ∧ bytes11106.length=60 := by core033_kernel_decide
def op11107 : List WordIR.Op := [.band 10917 10939]
def bytes11107 : Bytes := ("    let r00002bd9: u32 = r00002aa5 & r00002abb;\n" : String).toByteArray.data.toList
theorem checked11107 : bytes11107=statementBytes 11225 (op11107.map lower) ∧ bytes11107.length=48 := by core033_kernel_decide
def op11108 : List WordIR.Op := [.bxor 10917 10939]
def bytes11108 : Bytes := ("    let r00002bda: u32 = r00002aa5 ^ r00002abb;\n" : String).toByteArray.data.toList
theorem checked11108 : bytes11108=statementBytes 11226 (op11108.map lower) ∧ bytes11108.length=48 := by core033_kernel_decide
def op11109 : List WordIR.Op := [.badd 10917 10939]
def bytes11109 : Bytes := ("    let r00002bdb: u32 = r00002aa5.wrapping_add(r00002abb);\n" : String).toByteArray.data.toList
theorem checked11109 : bytes11109=statementBytes 11227 (op11109.map lower) ∧ bytes11109.length=60 := by core033_kernel_decide
def op11110 : List WordIR.Op := [.bnot 11227]
def bytes11110 : Bytes := ("    let r00002bdc: u32 = !r00002bdb;\n" : String).toByteArray.data.toList
theorem checked11110 : bytes11110=statementBytes 11228 (op11110.map lower) ∧ bytes11110.length=37 := by core033_kernel_decide
def op11111 : List WordIR.Op := [.band 11226 11228]
def bytes11111 : Bytes := ("    let r00002bdd: u32 = r00002bda & r00002bdc;\n" : String).toByteArray.data.toList
theorem checked11111 : bytes11111=statementBytes 11229 (op11111.map lower) ∧ bytes11111.length=48 := by core033_kernel_decide
def op11112 : List WordIR.Op := [.bxor 11225 11229]
def bytes11112 : Bytes := ("    let r00002bde: u32 = r00002bd9 ^ r00002bdd;\n" : String).toByteArray.data.toList
theorem checked11112 : bytes11112=statementBytes 11230 (op11112.map lower) ∧ bytes11112.length=48 := by core033_kernel_decide
def op11113 : List WordIR.Op := [.shr 11230 31]
def bytes11113 : Bytes := ("    let r00002bdf: u32 = r00002bde >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11113 : bytes11113=statementBytes 11231 (op11113.map lower) ∧ bytes11113.length=54 := by core033_kernel_decide
def op11114 : List WordIR.Op := [.badd 11224 11231]
def bytes11114 : Bytes := ("    let r00002be0: u32 = r00002bd8.wrapping_add(r00002bdf);\n" : String).toByteArray.data.toList
theorem checked11114 : bytes11114=statementBytes 11232 (op11114.map lower) ∧ bytes11114.length=60 := by core033_kernel_decide
def op11115 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11115 : Bytes := ("    let r00002be1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11115 : bytes11115=statementBytes 11233 (op11115.map lower) ∧ bytes11115.length=41 := by core033_kernel_decide
def op11116 : List WordIR.Op := [.bnot 11233]
def bytes11116 : Bytes := ("    let r00002be2: u32 = !r00002be1;\n" : String).toByteArray.data.toList
theorem checked11116 : bytes11116=statementBytes 11234 (op11116.map lower) ∧ bytes11116.length=37 := by core033_kernel_decide
def op11117 : List WordIR.Op := [.bxor 11232 11234]
def bytes11117 : Bytes := ("    let r00002be3: u32 = r00002be0 ^ r00002be2;\n" : String).toByteArray.data.toList
theorem checked11117 : bytes11117=statementBytes 11235 (op11117.map lower) ∧ bytes11117.length=48 := by core033_kernel_decide
def op11118 : List WordIR.Op := [.badd 10928 10950]
def bytes11118 : Bytes := ("    let r00002be4: u32 = r00002ab0.wrapping_add(r00002ac6);\n" : String).toByteArray.data.toList
theorem checked11118 : bytes11118=statementBytes 11236 (op11118.map lower) ∧ bytes11118.length=60 := by core033_kernel_decide
def op11119 : List WordIR.Op := [.band 10917 10939]
def bytes11119 : Bytes := ("    let r00002be5: u32 = r00002aa5 & r00002abb;\n" : String).toByteArray.data.toList
theorem checked11119 : bytes11119=statementBytes 11237 (op11119.map lower) ∧ bytes11119.length=48 := by core033_kernel_decide
def op11120 : List WordIR.Op := [.bxor 10917 10939]
def bytes11120 : Bytes := ("    let r00002be6: u32 = r00002aa5 ^ r00002abb;\n" : String).toByteArray.data.toList
theorem checked11120 : bytes11120=statementBytes 11238 (op11120.map lower) ∧ bytes11120.length=48 := by core033_kernel_decide
def op11121 : List WordIR.Op := [.badd 10917 10939]
def bytes11121 : Bytes := ("    let r00002be7: u32 = r00002aa5.wrapping_add(r00002abb);\n" : String).toByteArray.data.toList
theorem checked11121 : bytes11121=statementBytes 11239 (op11121.map lower) ∧ bytes11121.length=60 := by core033_kernel_decide
def op11122 : List WordIR.Op := [.bnot 11239]
def bytes11122 : Bytes := ("    let r00002be8: u32 = !r00002be7;\n" : String).toByteArray.data.toList
theorem checked11122 : bytes11122=statementBytes 11240 (op11122.map lower) ∧ bytes11122.length=37 := by core033_kernel_decide
def op11123 : List WordIR.Op := [.band 11238 11240]
def bytes11123 : Bytes := ("    let r00002be9: u32 = r00002be6 & r00002be8;\n" : String).toByteArray.data.toList
theorem checked11123 : bytes11123=statementBytes 11241 (op11123.map lower) ∧ bytes11123.length=48 := by core033_kernel_decide
def op11124 : List WordIR.Op := [.bxor 11237 11241]
def bytes11124 : Bytes := ("    let r00002bea: u32 = r00002be5 ^ r00002be9;\n" : String).toByteArray.data.toList
theorem checked11124 : bytes11124=statementBytes 11242 (op11124.map lower) ∧ bytes11124.length=48 := by core033_kernel_decide
def op11125 : List WordIR.Op := [.shr 11242 31]
def bytes11125 : Bytes := ("    let r00002beb: u32 = r00002bea >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11125 : bytes11125=statementBytes 11243 (op11125.map lower) ∧ bytes11125.length=54 := by core033_kernel_decide
def op11126 : List WordIR.Op := [.badd 11236 11243]
def bytes11126 : Bytes := ("    let r00002bec: u32 = r00002be4.wrapping_add(r00002beb);\n" : String).toByteArray.data.toList
theorem checked11126 : bytes11126=statementBytes 11244 (op11126.map lower) ∧ bytes11126.length=60 := by core033_kernel_decide
def op11127 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11127 : Bytes := ("    let r00002bed: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11127 : bytes11127=statementBytes 11245 (op11127.map lower) ∧ bytes11127.length=41 := by core033_kernel_decide
def op11128 : List WordIR.Op := [.bnot 11245]
def bytes11128 : Bytes := ("    let r00002bee: u32 = !r00002bed;\n" : String).toByteArray.data.toList
theorem checked11128 : bytes11128=statementBytes 11246 (op11128.map lower) ∧ bytes11128.length=37 := by core033_kernel_decide
def op11129 : List WordIR.Op := [.badd 11244 11246]
def bytes11129 : Bytes := ("    let r00002bef: u32 = r00002bec.wrapping_add(r00002bee);\n" : String).toByteArray.data.toList
theorem checked11129 : bytes11129=statementBytes 11247 (op11129.map lower) ∧ bytes11129.length=60 := by core033_kernel_decide
def op11130 : List WordIR.Op := [.bnot 11247]
def bytes11130 : Bytes := ("    let r00002bf0: u32 = !r00002bef;\n" : String).toByteArray.data.toList
theorem checked11130 : bytes11130=statementBytes 11248 (op11130.map lower) ∧ bytes11130.length=37 := by core033_kernel_decide
def op11131 : List WordIR.Op := [.band 11235 11248]
def bytes11131 : Bytes := ("    let r00002bf1: u32 = r00002be3 & r00002bf0;\n" : String).toByteArray.data.toList
theorem checked11131 : bytes11131=statementBytes 11249 (op11131.map lower) ∧ bytes11131.length=48 := by core033_kernel_decide
def op11132 : List WordIR.Op := [.bxor 11223 11249]
def bytes11132 : Bytes := ("    let r00002bf2: u32 = r00002bd7 ^ r00002bf1;\n" : String).toByteArray.data.toList
theorem checked11132 : bytes11132=statementBytes 11250 (op11132.map lower) ∧ bytes11132.length=48 := by core033_kernel_decide
def op11133 : List WordIR.Op := [.shr 11250 31]
def bytes11133 : Bytes := ("    let r00002bf3: u32 = r00002bf2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11133 : bytes11133=statementBytes 11251 (op11133.map lower) ∧ bytes11133.length=54 := by core033_kernel_decide
def op11134 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11134 : Bytes := ("    let r00002bf4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11134 : bytes11134=statementBytes 11252 (op11134.map lower) ∧ bytes11134.length=41 := by core033_kernel_decide
def op11135 : List WordIR.Op := [.bxor 11251 11252]
def bytes11135 : Bytes := ("    let r00002bf5: u32 = r00002bf3 ^ r00002bf4;\n" : String).toByteArray.data.toList
theorem checked11135 : bytes11135=statementBytes 11253 (op11135.map lower) ∧ bytes11135.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11072,op11073,op11074,op11075,op11076,op11077,op11078,op11079,op11080,op11081,op11082,op11083,op11084,op11085,op11086,op11087,op11088,op11089,op11090,op11091,op11092,op11093,op11094,op11095,op11096,op11097,op11098,op11099,op11100,op11101,op11102,op11103,op11104,op11105,op11106,op11107,op11108,op11109,op11110,op11111,op11112,op11113,op11114,op11115,op11116,op11117,op11118,op11119,op11120,op11121,op11122,op11123,op11124,op11125,op11126,op11127,op11128,op11129,op11130,op11131,op11132,op11133,op11134,op11135]
def chunks : List Bytes := [bytes11072,bytes11073,bytes11074,bytes11075,bytes11076,bytes11077,bytes11078,bytes11079,bytes11080,bytes11081,bytes11082,bytes11083,bytes11084,bytes11085,bytes11086,bytes11087,bytes11088,bytes11089,bytes11090,bytes11091,bytes11092,bytes11093,bytes11094,bytes11095,bytes11096,bytes11097,bytes11098,bytes11099,bytes11100,bytes11101,bytes11102,bytes11103,bytes11104,bytes11105,bytes11106,bytes11107,bytes11108,bytes11109,bytes11110,bytes11111,bytes11112,bytes11113,bytes11114,bytes11115,bytes11116,bytes11117,bytes11118,bytes11119,bytes11120,bytes11121,bytes11122,bytes11123,bytes11124,bytes11125,bytes11126,bytes11127,bytes11128,bytes11129,bytes11130,bytes11131,bytes11132,bytes11133,bytes11134,bytes11135]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11190 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11072.1 (.cons _ _ _ _ _ checked11073.1 (.cons _ _ _ _ _ checked11074.1 (.cons _ _ _ _ _ checked11075.1 (.cons _ _ _ _ _ checked11076.1 (.cons _ _ _ _ _ checked11077.1 (.cons _ _ _ _ _ checked11078.1 (.cons _ _ _ _ _ checked11079.1 (.cons _ _ _ _ _ checked11080.1 (.cons _ _ _ _ _ checked11081.1 (.cons _ _ _ _ _ checked11082.1 (.cons _ _ _ _ _ checked11083.1 (.cons _ _ _ _ _ checked11084.1 (.cons _ _ _ _ _ checked11085.1 (.cons _ _ _ _ _ checked11086.1 (.cons _ _ _ _ _ checked11087.1 (.cons _ _ _ _ _ checked11088.1 (.cons _ _ _ _ _ checked11089.1 (.cons _ _ _ _ _ checked11090.1 (.cons _ _ _ _ _ checked11091.1 (.cons _ _ _ _ _ checked11092.1 (.cons _ _ _ _ _ checked11093.1 (.cons _ _ _ _ _ checked11094.1 (.cons _ _ _ _ _ checked11095.1 (.cons _ _ _ _ _ checked11096.1 (.cons _ _ _ _ _ checked11097.1 (.cons _ _ _ _ _ checked11098.1 (.cons _ _ _ _ _ checked11099.1 (.cons _ _ _ _ _ checked11100.1 (.cons _ _ _ _ _ checked11101.1 (.cons _ _ _ _ _ checked11102.1 (.cons _ _ _ _ _ checked11103.1 (.cons _ _ _ _ _ checked11104.1 (.cons _ _ _ _ _ checked11105.1 (.cons _ _ _ _ _ checked11106.1 (.cons _ _ _ _ _ checked11107.1 (.cons _ _ _ _ _ checked11108.1 (.cons _ _ _ _ _ checked11109.1 (.cons _ _ _ _ _ checked11110.1 (.cons _ _ _ _ _ checked11111.1 (.cons _ _ _ _ _ checked11112.1 (.cons _ _ _ _ _ checked11113.1 (.cons _ _ _ _ _ checked11114.1 (.cons _ _ _ _ _ checked11115.1 (.cons _ _ _ _ _ checked11116.1 (.cons _ _ _ _ _ checked11117.1 (.cons _ _ _ _ _ checked11118.1 (.cons _ _ _ _ _ checked11119.1 (.cons _ _ _ _ _ checked11120.1 (.cons _ _ _ _ _ checked11121.1 (.cons _ _ _ _ _ checked11122.1 (.cons _ _ _ _ _ checked11123.1 (.cons _ _ _ _ _ checked11124.1 (.cons _ _ _ _ _ checked11125.1 (.cons _ _ _ _ _ checked11126.1 (.cons _ _ _ _ _ checked11127.1 (.cons _ _ _ _ _ checked11128.1 (.cons _ _ _ _ _ checked11129.1 (.cons _ _ _ _ _ checked11130.1 (.cons _ _ _ _ _ checked11131.1 (.cons _ _ _ _ _ checked11132.1 (.cons _ _ _ _ _ checked11133.1 (.cons _ _ _ _ _ checked11134.1 (.cons _ _ _ _ _ checked11135.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11190 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3056 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11072.2,checked11073.2,checked11074.2,checked11075.2,checked11076.2,checked11077.2,checked11078.2,checked11079.2,checked11080.2,checked11081.2,checked11082.2,checked11083.2,checked11084.2,checked11085.2,checked11086.2,checked11087.2,checked11088.2,checked11089.2,checked11090.2,checked11091.2,checked11092.2,checked11093.2,checked11094.2,checked11095.2,checked11096.2,checked11097.2,checked11098.2,checked11099.2,checked11100.2,checked11101.2,checked11102.2,checked11103.2,checked11104.2,checked11105.2,checked11106.2,checked11107.2,checked11108.2,checked11109.2,checked11110.2,checked11111.2,checked11112.2,checked11113.2,checked11114.2,checked11115.2,checked11116.2,checked11117.2,checked11118.2,checked11119.2,checked11120.2,checked11121.2,checked11122.2,checked11123.2,checked11124.2,checked11125.2,checked11126.2,checked11127.2,checked11128.2,checked11129.2,checked11130.2,checked11131.2,checked11132.2,checked11133.2,checked11134.2,checked11135.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup173
