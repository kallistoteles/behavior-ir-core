import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup173
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11072 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11072 : Bytes := ("    let r00002b6b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11072 : bytes11072=statementBytes 11115 (op11072.map lower) ∧ bytes11072.length=41 := by core033_kernel_decide
def op11073 : List WordIR.Op := [.bxor 0 11115]
def bytes11073 : Bytes := ("    let r00002b6c: u32 = r00000000 ^ r00002b6b;\n" : String).toByteArray.data.toList
theorem checked11073 : bytes11073=statementBytes 11116 (op11073.map lower) ∧ bytes11073.length=48 := by core033_kernel_decide
def op11074 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11074 : Bytes := ("    let r00002b6d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11074 : bytes11074=statementBytes 11117 (op11074.map lower) ∧ bytes11074.length=41 := by core033_kernel_decide
def op11075 : List WordIR.Op := [.bnot 11117]
def bytes11075 : Bytes := ("    let r00002b6e: u32 = !r00002b6d;\n" : String).toByteArray.data.toList
theorem checked11075 : bytes11075=statementBytes 11118 (op11075.map lower) ∧ bytes11075.length=37 := by core033_kernel_decide
def op11076 : List WordIR.Op := [.bxor 11116 11118]
def bytes11076 : Bytes := ("    let r00002b6f: u32 = r00002b6c ^ r00002b6e;\n" : String).toByteArray.data.toList
theorem checked11076 : bytes11076=statementBytes 11119 (op11076.map lower) ∧ bytes11076.length=48 := by core033_kernel_decide
def op11077 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11077 : Bytes := ("    let r00002b70: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11077 : bytes11077=statementBytes 11120 (op11077.map lower) ∧ bytes11077.length=41 := by core033_kernel_decide
def op11078 : List WordIR.Op := [.bxor 0 11120]
def bytes11078 : Bytes := ("    let r00002b71: u32 = r00000000 ^ r00002b70;\n" : String).toByteArray.data.toList
theorem checked11078 : bytes11078=statementBytes 11121 (op11078.map lower) ∧ bytes11078.length=48 := by core033_kernel_decide
def op11079 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11079 : Bytes := ("    let r00002b72: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11079 : bytes11079=statementBytes 11122 (op11079.map lower) ∧ bytes11079.length=41 := by core033_kernel_decide
def op11080 : List WordIR.Op := [.bnot 11122]
def bytes11080 : Bytes := ("    let r00002b73: u32 = !r00002b72;\n" : String).toByteArray.data.toList
theorem checked11080 : bytes11080=statementBytes 11123 (op11080.map lower) ∧ bytes11080.length=37 := by core033_kernel_decide
def op11081 : List WordIR.Op := [.badd 11121 11123]
def bytes11081 : Bytes := ("    let r00002b74: u32 = r00002b71.wrapping_add(r00002b73);\n" : String).toByteArray.data.toList
theorem checked11081 : bytes11081=statementBytes 11124 (op11081.map lower) ∧ bytes11081.length=60 := by core033_kernel_decide
def op11082 : List WordIR.Op := [.bnot 11124]
def bytes11082 : Bytes := ("    let r00002b75: u32 = !r00002b74;\n" : String).toByteArray.data.toList
theorem checked11082 : bytes11082=statementBytes 11125 (op11082.map lower) ∧ bytes11082.length=37 := by core033_kernel_decide
def op11083 : List WordIR.Op := [.band 11119 11125]
def bytes11083 : Bytes := ("    let r00002b76: u32 = r00002b6f & r00002b75;\n" : String).toByteArray.data.toList
theorem checked11083 : bytes11083=statementBytes 11126 (op11083.map lower) ∧ bytes11083.length=48 := by core033_kernel_decide
def op11084 : List WordIR.Op := [.bxor 11114 11126]
def bytes11084 : Bytes := ("    let r00002b77: u32 = r00002b6a ^ r00002b76;\n" : String).toByteArray.data.toList
theorem checked11084 : bytes11084=statementBytes 11127 (op11084.map lower) ∧ bytes11084.length=48 := by core033_kernel_decide
def op11085 : List WordIR.Op := [.shr 11127 31]
def bytes11085 : Bytes := ("    let r00002b78: u32 = r00002b77 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11085 : bytes11085=statementBytes 11128 (op11085.map lower) ∧ bytes11085.length=54 := by core033_kernel_decide
def op11086 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11086 : Bytes := ("    let r00002b79: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11086 : bytes11086=statementBytes 11129 (op11086.map lower) ∧ bytes11086.length=41 := by core033_kernel_decide
def op11087 : List WordIR.Op := [.bxor 11128 11129]
def bytes11087 : Bytes := ("    let r00002b7a: u32 = r00002b78 ^ r00002b79;\n" : String).toByteArray.data.toList
theorem checked11087 : bytes11087=statementBytes 11130 (op11087.map lower) ∧ bytes11087.length=48 := by core033_kernel_decide
def op11088 : List WordIR.Op := [.bnot 11130]
def bytes11088 : Bytes := ("    let r00002b7b: u32 = !r00002b7a;\n" : String).toByteArray.data.toList
theorem checked11088 : bytes11088=statementBytes 11131 (op11088.map lower) ∧ bytes11088.length=37 := by core033_kernel_decide
def op11089 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11089 : Bytes := ("    let r00002b7c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11089 : bytes11089=statementBytes 11132 (op11089.map lower) ∧ bytes11089.length=41 := by core033_kernel_decide
def op11090 : List WordIR.Op := [.badd 11131 11132]
def bytes11090 : Bytes := ("    let r00002b7d: u32 = r00002b7b.wrapping_add(r00002b7c);\n" : String).toByteArray.data.toList
theorem checked11090 : bytes11090=statementBytes 11133 (op11090.map lower) ∧ bytes11090.length=60 := by core033_kernel_decide
def op11091 : List WordIR.Op := [.band 11133 9928]
def bytes11091 : Bytes := ("    let r00002b7e: u32 = r00002b7d & r000026c8;\n" : String).toByteArray.data.toList
theorem checked11091 : bytes11091=statementBytes 11134 (op11091.map lower) ∧ bytes11091.length=48 := by core033_kernel_decide
def op11092 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11092 : Bytes := ("    let r00002b7f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11092 : bytes11092=statementBytes 11135 (op11092.map lower) ∧ bytes11092.length=41 := by core033_kernel_decide
def op11093 : List WordIR.Op := [.bxor 0 11135]
def bytes11093 : Bytes := ("    let r00002b80: u32 = r00000000 ^ r00002b7f;\n" : String).toByteArray.data.toList
theorem checked11093 : bytes11093=statementBytes 11136 (op11093.map lower) ∧ bytes11093.length=48 := by core033_kernel_decide
def op11094 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11094 : Bytes := ("    let r00002b81: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11094 : bytes11094=statementBytes 11137 (op11094.map lower) ∧ bytes11094.length=41 := by core033_kernel_decide
def op11095 : List WordIR.Op := [.bnot 11137]
def bytes11095 : Bytes := ("    let r00002b82: u32 = !r00002b81;\n" : String).toByteArray.data.toList
theorem checked11095 : bytes11095=statementBytes 11138 (op11095.map lower) ∧ bytes11095.length=37 := by core033_kernel_decide
def op11096 : List WordIR.Op := [.band 11136 11138]
def bytes11096 : Bytes := ("    let r00002b83: u32 = r00002b80 & r00002b82;\n" : String).toByteArray.data.toList
theorem checked11096 : bytes11096=statementBytes 11139 (op11096.map lower) ∧ bytes11096.length=48 := by core033_kernel_decide
def op11097 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11097 : Bytes := ("    let r00002b84: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11097 : bytes11097=statementBytes 11140 (op11097.map lower) ∧ bytes11097.length=41 := by core033_kernel_decide
def op11098 : List WordIR.Op := [.bxor 0 11140]
def bytes11098 : Bytes := ("    let r00002b85: u32 = r00000000 ^ r00002b84;\n" : String).toByteArray.data.toList
theorem checked11098 : bytes11098=statementBytes 11141 (op11098.map lower) ∧ bytes11098.length=48 := by core033_kernel_decide
def op11099 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11099 : Bytes := ("    let r00002b86: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11099 : bytes11099=statementBytes 11142 (op11099.map lower) ∧ bytes11099.length=41 := by core033_kernel_decide
def op11100 : List WordIR.Op := [.bnot 11142]
def bytes11100 : Bytes := ("    let r00002b87: u32 = !r00002b86;\n" : String).toByteArray.data.toList
theorem checked11100 : bytes11100=statementBytes 11143 (op11100.map lower) ∧ bytes11100.length=37 := by core033_kernel_decide
def op11101 : List WordIR.Op := [.bxor 11141 11143]
def bytes11101 : Bytes := ("    let r00002b88: u32 = r00002b85 ^ r00002b87;\n" : String).toByteArray.data.toList
theorem checked11101 : bytes11101=statementBytes 11144 (op11101.map lower) ∧ bytes11101.length=48 := by core033_kernel_decide
def op11102 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11102 : Bytes := ("    let r00002b89: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11102 : bytes11102=statementBytes 11145 (op11102.map lower) ∧ bytes11102.length=41 := by core033_kernel_decide
def op11103 : List WordIR.Op := [.bxor 0 11145]
def bytes11103 : Bytes := ("    let r00002b8a: u32 = r00000000 ^ r00002b89;\n" : String).toByteArray.data.toList
theorem checked11103 : bytes11103=statementBytes 11146 (op11103.map lower) ∧ bytes11103.length=48 := by core033_kernel_decide
def op11104 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11104 : Bytes := ("    let r00002b8b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11104 : bytes11104=statementBytes 11147 (op11104.map lower) ∧ bytes11104.length=41 := by core033_kernel_decide
def op11105 : List WordIR.Op := [.bnot 11147]
def bytes11105 : Bytes := ("    let r00002b8c: u32 = !r00002b8b;\n" : String).toByteArray.data.toList
theorem checked11105 : bytes11105=statementBytes 11148 (op11105.map lower) ∧ bytes11105.length=37 := by core033_kernel_decide
def op11106 : List WordIR.Op := [.badd 11146 11148]
def bytes11106 : Bytes := ("    let r00002b8d: u32 = r00002b8a.wrapping_add(r00002b8c);\n" : String).toByteArray.data.toList
theorem checked11106 : bytes11106=statementBytes 11149 (op11106.map lower) ∧ bytes11106.length=60 := by core033_kernel_decide
def op11107 : List WordIR.Op := [.bnot 11149]
def bytes11107 : Bytes := ("    let r00002b8e: u32 = !r00002b8d;\n" : String).toByteArray.data.toList
theorem checked11107 : bytes11107=statementBytes 11150 (op11107.map lower) ∧ bytes11107.length=37 := by core033_kernel_decide
def op11108 : List WordIR.Op := [.band 11144 11150]
def bytes11108 : Bytes := ("    let r00002b8f: u32 = r00002b88 & r00002b8e;\n" : String).toByteArray.data.toList
theorem checked11108 : bytes11108=statementBytes 11151 (op11108.map lower) ∧ bytes11108.length=48 := by core033_kernel_decide
def op11109 : List WordIR.Op := [.bxor 11139 11151]
def bytes11109 : Bytes := ("    let r00002b90: u32 = r00002b83 ^ r00002b8f;\n" : String).toByteArray.data.toList
theorem checked11109 : bytes11109=statementBytes 11152 (op11109.map lower) ∧ bytes11109.length=48 := by core033_kernel_decide
def op11110 : List WordIR.Op := [.shr 11152 31]
def bytes11110 : Bytes := ("    let r00002b91: u32 = r00002b90 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11110 : bytes11110=statementBytes 11153 (op11110.map lower) ∧ bytes11110.length=54 := by core033_kernel_decide
def op11111 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11111 : Bytes := ("    let r00002b92: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11111 : bytes11111=statementBytes 11154 (op11111.map lower) ∧ bytes11111.length=41 := by core033_kernel_decide
def op11112 : List WordIR.Op := [.bxor 11153 11154]
def bytes11112 : Bytes := ("    let r00002b93: u32 = r00002b91 ^ r00002b92;\n" : String).toByteArray.data.toList
theorem checked11112 : bytes11112=statementBytes 11155 (op11112.map lower) ∧ bytes11112.length=48 := by core033_kernel_decide
def op11113 : List WordIR.Op := [.bnot 11155]
def bytes11113 : Bytes := ("    let r00002b94: u32 = !r00002b93;\n" : String).toByteArray.data.toList
theorem checked11113 : bytes11113=statementBytes 11156 (op11113.map lower) ∧ bytes11113.length=37 := by core033_kernel_decide
def op11114 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11114 : Bytes := ("    let r00002b95: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11114 : bytes11114=statementBytes 11157 (op11114.map lower) ∧ bytes11114.length=41 := by core033_kernel_decide
def op11115 : List WordIR.Op := [.badd 11156 11157]
def bytes11115 : Bytes := ("    let r00002b96: u32 = r00002b94.wrapping_add(r00002b95);\n" : String).toByteArray.data.toList
theorem checked11115 : bytes11115=statementBytes 11158 (op11115.map lower) ∧ bytes11115.length=60 := by core033_kernel_decide
def op11116 : List WordIR.Op := [.bnot 11158]
def bytes11116 : Bytes := ("    let r00002b97: u32 = !r00002b96;\n" : String).toByteArray.data.toList
theorem checked11116 : bytes11116=statementBytes 11159 (op11116.map lower) ∧ bytes11116.length=37 := by core033_kernel_decide
def op11117 : List WordIR.Op := [.band 11159 283]
def bytes11117 : Bytes := ("    let r00002b98: u32 = r00002b97 & r0000011b;\n" : String).toByteArray.data.toList
theorem checked11117 : bytes11117=statementBytes 11160 (op11117.map lower) ∧ bytes11117.length=48 := by core033_kernel_decide
def op11118 : List WordIR.Op := [.bxor 11134 11160]
def bytes11118 : Bytes := ("    let r00002b99: u32 = r00002b7e ^ r00002b98;\n" : String).toByteArray.data.toList
theorem checked11118 : bytes11118=statementBytes 11161 (op11118.map lower) ∧ bytes11118.length=48 := by core033_kernel_decide
def op11119 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11119 : Bytes := ("    let r00002b9a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11119 : bytes11119=statementBytes 11162 (op11119.map lower) ∧ bytes11119.length=41 := by core033_kernel_decide
def op11120 : List WordIR.Op := [.bxor 0 11162]
def bytes11120 : Bytes := ("    let r00002b9b: u32 = r00000000 ^ r00002b9a;\n" : String).toByteArray.data.toList
theorem checked11120 : bytes11120=statementBytes 11163 (op11120.map lower) ∧ bytes11120.length=48 := by core033_kernel_decide
def op11121 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11121 : Bytes := ("    let r00002b9c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11121 : bytes11121=statementBytes 11164 (op11121.map lower) ∧ bytes11121.length=41 := by core033_kernel_decide
def op11122 : List WordIR.Op := [.bnot 11164]
def bytes11122 : Bytes := ("    let r00002b9d: u32 = !r00002b9c;\n" : String).toByteArray.data.toList
theorem checked11122 : bytes11122=statementBytes 11165 (op11122.map lower) ∧ bytes11122.length=37 := by core033_kernel_decide
def op11123 : List WordIR.Op := [.band 11163 11165]
def bytes11123 : Bytes := ("    let r00002b9e: u32 = r00002b9b & r00002b9d;\n" : String).toByteArray.data.toList
theorem checked11123 : bytes11123=statementBytes 11166 (op11123.map lower) ∧ bytes11123.length=48 := by core033_kernel_decide
def op11124 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11124 : Bytes := ("    let r00002b9f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11124 : bytes11124=statementBytes 11167 (op11124.map lower) ∧ bytes11124.length=41 := by core033_kernel_decide
def op11125 : List WordIR.Op := [.bxor 0 11167]
def bytes11125 : Bytes := ("    let r00002ba0: u32 = r00000000 ^ r00002b9f;\n" : String).toByteArray.data.toList
theorem checked11125 : bytes11125=statementBytes 11168 (op11125.map lower) ∧ bytes11125.length=48 := by core033_kernel_decide
def op11126 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11126 : Bytes := ("    let r00002ba1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11126 : bytes11126=statementBytes 11169 (op11126.map lower) ∧ bytes11126.length=41 := by core033_kernel_decide
def op11127 : List WordIR.Op := [.bnot 11169]
def bytes11127 : Bytes := ("    let r00002ba2: u32 = !r00002ba1;\n" : String).toByteArray.data.toList
theorem checked11127 : bytes11127=statementBytes 11170 (op11127.map lower) ∧ bytes11127.length=37 := by core033_kernel_decide
def op11128 : List WordIR.Op := [.bxor 11168 11170]
def bytes11128 : Bytes := ("    let r00002ba3: u32 = r00002ba0 ^ r00002ba2;\n" : String).toByteArray.data.toList
theorem checked11128 : bytes11128=statementBytes 11171 (op11128.map lower) ∧ bytes11128.length=48 := by core033_kernel_decide
def op11129 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11129 : Bytes := ("    let r00002ba4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11129 : bytes11129=statementBytes 11172 (op11129.map lower) ∧ bytes11129.length=41 := by core033_kernel_decide
def op11130 : List WordIR.Op := [.bxor 0 11172]
def bytes11130 : Bytes := ("    let r00002ba5: u32 = r00000000 ^ r00002ba4;\n" : String).toByteArray.data.toList
theorem checked11130 : bytes11130=statementBytes 11173 (op11130.map lower) ∧ bytes11130.length=48 := by core033_kernel_decide
def op11131 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11131 : Bytes := ("    let r00002ba6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11131 : bytes11131=statementBytes 11174 (op11131.map lower) ∧ bytes11131.length=41 := by core033_kernel_decide
def op11132 : List WordIR.Op := [.bnot 11174]
def bytes11132 : Bytes := ("    let r00002ba7: u32 = !r00002ba6;\n" : String).toByteArray.data.toList
theorem checked11132 : bytes11132=statementBytes 11175 (op11132.map lower) ∧ bytes11132.length=37 := by core033_kernel_decide
def op11133 : List WordIR.Op := [.badd 11173 11175]
def bytes11133 : Bytes := ("    let r00002ba8: u32 = r00002ba5.wrapping_add(r00002ba7);\n" : String).toByteArray.data.toList
theorem checked11133 : bytes11133=statementBytes 11176 (op11133.map lower) ∧ bytes11133.length=60 := by core033_kernel_decide
def op11134 : List WordIR.Op := [.bnot 11176]
def bytes11134 : Bytes := ("    let r00002ba9: u32 = !r00002ba8;\n" : String).toByteArray.data.toList
theorem checked11134 : bytes11134=statementBytes 11177 (op11134.map lower) ∧ bytes11134.length=37 := by core033_kernel_decide
def op11135 : List WordIR.Op := [.band 11171 11177]
def bytes11135 : Bytes := ("    let r00002baa: u32 = r00002ba3 & r00002ba9;\n" : String).toByteArray.data.toList
theorem checked11135 : bytes11135=statementBytes 11178 (op11135.map lower) ∧ bytes11135.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11072,op11073,op11074,op11075,op11076,op11077,op11078,op11079,op11080,op11081,op11082,op11083,op11084,op11085,op11086,op11087,op11088,op11089,op11090,op11091,op11092,op11093,op11094,op11095,op11096,op11097,op11098,op11099,op11100,op11101,op11102,op11103,op11104,op11105,op11106,op11107,op11108,op11109,op11110,op11111,op11112,op11113,op11114,op11115,op11116,op11117,op11118,op11119,op11120,op11121,op11122,op11123,op11124,op11125,op11126,op11127,op11128,op11129,op11130,op11131,op11132,op11133,op11134,op11135]
def chunks : List Bytes := [bytes11072,bytes11073,bytes11074,bytes11075,bytes11076,bytes11077,bytes11078,bytes11079,bytes11080,bytes11081,bytes11082,bytes11083,bytes11084,bytes11085,bytes11086,bytes11087,bytes11088,bytes11089,bytes11090,bytes11091,bytes11092,bytes11093,bytes11094,bytes11095,bytes11096,bytes11097,bytes11098,bytes11099,bytes11100,bytes11101,bytes11102,bytes11103,bytes11104,bytes11105,bytes11106,bytes11107,bytes11108,bytes11109,bytes11110,bytes11111,bytes11112,bytes11113,bytes11114,bytes11115,bytes11116,bytes11117,bytes11118,bytes11119,bytes11120,bytes11121,bytes11122,bytes11123,bytes11124,bytes11125,bytes11126,bytes11127,bytes11128,bytes11129,bytes11130,bytes11131,bytes11132,bytes11133,bytes11134,bytes11135]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11115 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11072.1 (.cons _ _ _ _ _ checked11073.1 (.cons _ _ _ _ _ checked11074.1 (.cons _ _ _ _ _ checked11075.1 (.cons _ _ _ _ _ checked11076.1 (.cons _ _ _ _ _ checked11077.1 (.cons _ _ _ _ _ checked11078.1 (.cons _ _ _ _ _ checked11079.1 (.cons _ _ _ _ _ checked11080.1 (.cons _ _ _ _ _ checked11081.1 (.cons _ _ _ _ _ checked11082.1 (.cons _ _ _ _ _ checked11083.1 (.cons _ _ _ _ _ checked11084.1 (.cons _ _ _ _ _ checked11085.1 (.cons _ _ _ _ _ checked11086.1 (.cons _ _ _ _ _ checked11087.1 (.cons _ _ _ _ _ checked11088.1 (.cons _ _ _ _ _ checked11089.1 (.cons _ _ _ _ _ checked11090.1 (.cons _ _ _ _ _ checked11091.1 (.cons _ _ _ _ _ checked11092.1 (.cons _ _ _ _ _ checked11093.1 (.cons _ _ _ _ _ checked11094.1 (.cons _ _ _ _ _ checked11095.1 (.cons _ _ _ _ _ checked11096.1 (.cons _ _ _ _ _ checked11097.1 (.cons _ _ _ _ _ checked11098.1 (.cons _ _ _ _ _ checked11099.1 (.cons _ _ _ _ _ checked11100.1 (.cons _ _ _ _ _ checked11101.1 (.cons _ _ _ _ _ checked11102.1 (.cons _ _ _ _ _ checked11103.1 (.cons _ _ _ _ _ checked11104.1 (.cons _ _ _ _ _ checked11105.1 (.cons _ _ _ _ _ checked11106.1 (.cons _ _ _ _ _ checked11107.1 (.cons _ _ _ _ _ checked11108.1 (.cons _ _ _ _ _ checked11109.1 (.cons _ _ _ _ _ checked11110.1 (.cons _ _ _ _ _ checked11111.1 (.cons _ _ _ _ _ checked11112.1 (.cons _ _ _ _ _ checked11113.1 (.cons _ _ _ _ _ checked11114.1 (.cons _ _ _ _ _ checked11115.1 (.cons _ _ _ _ _ checked11116.1 (.cons _ _ _ _ _ checked11117.1 (.cons _ _ _ _ _ checked11118.1 (.cons _ _ _ _ _ checked11119.1 (.cons _ _ _ _ _ checked11120.1 (.cons _ _ _ _ _ checked11121.1 (.cons _ _ _ _ _ checked11122.1 (.cons _ _ _ _ _ checked11123.1 (.cons _ _ _ _ _ checked11124.1 (.cons _ _ _ _ _ checked11125.1 (.cons _ _ _ _ _ checked11126.1 (.cons _ _ _ _ _ checked11127.1 (.cons _ _ _ _ _ checked11128.1 (.cons _ _ _ _ _ checked11129.1 (.cons _ _ _ _ _ checked11130.1 (.cons _ _ _ _ _ checked11131.1 (.cons _ _ _ _ _ checked11132.1 (.cons _ _ _ _ _ checked11133.1 (.cons _ _ _ _ _ checked11134.1 (.cons _ _ _ _ _ checked11135.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11115 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11072.2,checked11073.2,checked11074.2,checked11075.2,checked11076.2,checked11077.2,checked11078.2,checked11079.2,checked11080.2,checked11081.2,checked11082.2,checked11083.2,checked11084.2,checked11085.2,checked11086.2,checked11087.2,checked11088.2,checked11089.2,checked11090.2,checked11091.2,checked11092.2,checked11093.2,checked11094.2,checked11095.2,checked11096.2,checked11097.2,checked11098.2,checked11099.2,checked11100.2,checked11101.2,checked11102.2,checked11103.2,checked11104.2,checked11105.2,checked11106.2,checked11107.2,checked11108.2,checked11109.2,checked11110.2,checked11111.2,checked11112.2,checked11113.2,checked11114.2,checked11115.2,checked11116.2,checked11117.2,checked11118.2,checked11119.2,checked11120.2,checked11121.2,checked11122.2,checked11123.2,checked11124.2,checked11125.2,checked11126.2,checked11127.2,checked11128.2,checked11129.2,checked11130.2,checked11131.2,checked11132.2,checked11133.2,checked11134.2,checked11135.2]
  decide
end ArtifactPathRoundDispatchGroup173
