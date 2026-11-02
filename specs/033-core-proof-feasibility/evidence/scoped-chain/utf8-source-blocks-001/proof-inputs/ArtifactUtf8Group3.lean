import ActualUtf8IR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactUtf8Group3
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op192 : List WordIR.Op := [.shr 192 31]
def bytes192 : Bytes := ("    let r000000c1: u32 = r000000c0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked192 : bytes192=statementBytes 193 (op192.map lower) ∧ bytes192.length=54 := by core033_kernel_decide
def op193 : List WordIR.Op := [.bnot 193]
def bytes193 : Bytes := ("    let r000000c2: u32 = !r000000c1;\n" : String).toByteArray.data.toList
theorem checked193 : bytes193=statementBytes 194 (op193.map lower) ∧ bytes193.length=37 := by core033_kernel_decide
def op194 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes194 : Bytes := ("    let r000000c3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked194 : bytes194=statementBytes 195 (op194.map lower) ∧ bytes194.length=41 := by core033_kernel_decide
def op195 : List WordIR.Op := [.badd 194 195]
def bytes195 : Bytes := ("    let r000000c4: u32 = r000000c2.wrapping_add(r000000c3);\n" : String).toByteArray.data.toList
theorem checked195 : bytes195=statementBytes 196 (op195.map lower) ∧ bytes195.length=60 := by core033_kernel_decide
def op196 : List WordIR.Op := [.bnot 196]
def bytes196 : Bytes := ("    let r000000c5: u32 = !r000000c4;\n" : String).toByteArray.data.toList
theorem checked196 : bytes196=statementBytes 197 (op196.map lower) ∧ bytes196.length=37 := by core033_kernel_decide
def op197 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes197 : Bytes := ("    let r000000c6: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked197 : bytes197=statementBytes 198 (op197.map lower) ∧ bytes197.length=41 := by core033_kernel_decide
def op198 : List WordIR.Op := [.bnot 0]
def bytes198 : Bytes := ("    let r000000c7: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked198 : bytes198=statementBytes 199 (op198.map lower) ∧ bytes198.length=37 := by core033_kernel_decide
def op199 : List WordIR.Op := [.band 198 199]
def bytes199 : Bytes := ("    let r000000c8: u32 = r000000c6 & r000000c7;\n" : String).toByteArray.data.toList
theorem checked199 : bytes199=statementBytes 200 (op199.map lower) ∧ bytes199.length=48 := by core033_kernel_decide
def op200 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes200 : Bytes := ("    let r000000c9: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked200 : bytes200=statementBytes 201 (op200.map lower) ∧ bytes200.length=41 := by core033_kernel_decide
def op201 : List WordIR.Op := [.bnot 0]
def bytes201 : Bytes := ("    let r000000ca: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked201 : bytes201=statementBytes 202 (op201.map lower) ∧ bytes201.length=37 := by core033_kernel_decide
def op202 : List WordIR.Op := [.bxor 201 202]
def bytes202 : Bytes := ("    let r000000cb: u32 = r000000c9 ^ r000000ca;\n" : String).toByteArray.data.toList
theorem checked202 : bytes202=statementBytes 203 (op202.map lower) ∧ bytes202.length=48 := by core033_kernel_decide
def op203 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes203 : Bytes := ("    let r000000cc: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked203 : bytes203=statementBytes 204 (op203.map lower) ∧ bytes203.length=41 := by core033_kernel_decide
def op204 : List WordIR.Op := [.bnot 0]
def bytes204 : Bytes := ("    let r000000cd: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked204 : bytes204=statementBytes 205 (op204.map lower) ∧ bytes204.length=37 := by core033_kernel_decide
def op205 : List WordIR.Op := [.badd 204 205]
def bytes205 : Bytes := ("    let r000000ce: u32 = r000000cc.wrapping_add(r000000cd);\n" : String).toByteArray.data.toList
theorem checked205 : bytes205=statementBytes 206 (op205.map lower) ∧ bytes205.length=60 := by core033_kernel_decide
def op206 : List WordIR.Op := [.bnot 206]
def bytes206 : Bytes := ("    let r000000cf: u32 = !r000000ce;\n" : String).toByteArray.data.toList
theorem checked206 : bytes206=statementBytes 207 (op206.map lower) ∧ bytes206.length=37 := by core033_kernel_decide
def op207 : List WordIR.Op := [.band 203 207]
def bytes207 : Bytes := ("    let r000000d0: u32 = r000000cb & r000000cf;\n" : String).toByteArray.data.toList
theorem checked207 : bytes207=statementBytes 208 (op207.map lower) ∧ bytes207.length=48 := by core033_kernel_decide
def op208 : List WordIR.Op := [.bxor 200 208]
def bytes208 : Bytes := ("    let r000000d1: u32 = r000000c8 ^ r000000d0;\n" : String).toByteArray.data.toList
theorem checked208 : bytes208=statementBytes 209 (op208.map lower) ∧ bytes208.length=48 := by core033_kernel_decide
def op209 : List WordIR.Op := [.shr 209 31]
def bytes209 : Bytes := ("    let r000000d2: u32 = r000000d1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked209 : bytes209=statementBytes 210 (op209.map lower) ∧ bytes209.length=54 := by core033_kernel_decide
def op210 : List WordIR.Op := [.bnot 210]
def bytes210 : Bytes := ("    let r000000d3: u32 = !r000000d2;\n" : String).toByteArray.data.toList
theorem checked210 : bytes210=statementBytes 211 (op210.map lower) ∧ bytes210.length=37 := by core033_kernel_decide
def op211 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes211 : Bytes := ("    let r000000d4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked211 : bytes211=statementBytes 212 (op211.map lower) ∧ bytes211.length=41 := by core033_kernel_decide
def op212 : List WordIR.Op := [.badd 211 212]
def bytes212 : Bytes := ("    let r000000d5: u32 = r000000d3.wrapping_add(r000000d4);\n" : String).toByteArray.data.toList
theorem checked212 : bytes212=statementBytes 213 (op212.map lower) ∧ bytes212.length=60 := by core033_kernel_decide
def op213 : List WordIR.Op := [.shr 0 6]
def bytes213 : Bytes := ("    let r000000d6: u32 = r00000000 >> 0x00000006_u32;\n" : String).toByteArray.data.toList
theorem checked213 : bytes213=statementBytes 214 (op213.map lower) ∧ bytes213.length=54 := by core033_kernel_decide
def op214 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes214 : Bytes := ("    let r000000d7: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked214 : bytes214=statementBytes 215 (op214.map lower) ∧ bytes214.length=41 := by core033_kernel_decide
def op215 : List WordIR.Op := [.band 214 215]
def bytes215 : Bytes := ("    let r000000d8: u32 = r000000d6 & r000000d7;\n" : String).toByteArray.data.toList
theorem checked215 : bytes215=statementBytes 216 (op215.map lower) ∧ bytes215.length=48 := by core033_kernel_decide
def op216 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes216 : Bytes := ("    let r000000d9: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked216 : bytes216=statementBytes 217 (op216.map lower) ∧ bytes216.length=41 := by core033_kernel_decide
def op217 : List WordIR.Op := [.badd 216 217]
def bytes217 : Bytes := ("    let r000000da: u32 = r000000d8.wrapping_add(r000000d9);\n" : String).toByteArray.data.toList
theorem checked217 : bytes217=statementBytes 218 (op217.map lower) ∧ bytes217.length=60 := by core033_kernel_decide
def op218 : List WordIR.Op := [.band 213 218]
def bytes218 : Bytes := ("    let r000000db: u32 = r000000d5 & r000000da;\n" : String).toByteArray.data.toList
theorem checked218 : bytes218=statementBytes 219 (op218.map lower) ∧ bytes218.length=48 := by core033_kernel_decide
def op219 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes219 : Bytes := ("    let r000000dc: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked219 : bytes219=statementBytes 220 (op219.map lower) ∧ bytes219.length=41 := by core033_kernel_decide
def op220 : List WordIR.Op := [.bnot 0]
def bytes220 : Bytes := ("    let r000000dd: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked220 : bytes220=statementBytes 221 (op220.map lower) ∧ bytes220.length=37 := by core033_kernel_decide
def op221 : List WordIR.Op := [.band 220 221]
def bytes221 : Bytes := ("    let r000000de: u32 = r000000dc & r000000dd;\n" : String).toByteArray.data.toList
theorem checked221 : bytes221=statementBytes 222 (op221.map lower) ∧ bytes221.length=48 := by core033_kernel_decide
def op222 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes222 : Bytes := ("    let r000000df: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked222 : bytes222=statementBytes 223 (op222.map lower) ∧ bytes222.length=41 := by core033_kernel_decide
def op223 : List WordIR.Op := [.bnot 0]
def bytes223 : Bytes := ("    let r000000e0: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked223 : bytes223=statementBytes 224 (op223.map lower) ∧ bytes223.length=37 := by core033_kernel_decide
def op224 : List WordIR.Op := [.bxor 223 224]
def bytes224 : Bytes := ("    let r000000e1: u32 = r000000df ^ r000000e0;\n" : String).toByteArray.data.toList
theorem checked224 : bytes224=statementBytes 225 (op224.map lower) ∧ bytes224.length=48 := by core033_kernel_decide
def op225 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes225 : Bytes := ("    let r000000e2: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked225 : bytes225=statementBytes 226 (op225.map lower) ∧ bytes225.length=41 := by core033_kernel_decide
def op226 : List WordIR.Op := [.bnot 0]
def bytes226 : Bytes := ("    let r000000e3: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked226 : bytes226=statementBytes 227 (op226.map lower) ∧ bytes226.length=37 := by core033_kernel_decide
def op227 : List WordIR.Op := [.badd 226 227]
def bytes227 : Bytes := ("    let r000000e4: u32 = r000000e2.wrapping_add(r000000e3);\n" : String).toByteArray.data.toList
theorem checked227 : bytes227=statementBytes 228 (op227.map lower) ∧ bytes227.length=60 := by core033_kernel_decide
def op228 : List WordIR.Op := [.bnot 228]
def bytes228 : Bytes := ("    let r000000e5: u32 = !r000000e4;\n" : String).toByteArray.data.toList
theorem checked228 : bytes228=statementBytes 229 (op228.map lower) ∧ bytes228.length=37 := by core033_kernel_decide
def op229 : List WordIR.Op := [.band 225 229]
def bytes229 : Bytes := ("    let r000000e6: u32 = r000000e1 & r000000e5;\n" : String).toByteArray.data.toList
theorem checked229 : bytes229=statementBytes 230 (op229.map lower) ∧ bytes229.length=48 := by core033_kernel_decide
def op230 : List WordIR.Op := [.bxor 222 230]
def bytes230 : Bytes := ("    let r000000e7: u32 = r000000de ^ r000000e6;\n" : String).toByteArray.data.toList
theorem checked230 : bytes230=statementBytes 231 (op230.map lower) ∧ bytes230.length=48 := by core033_kernel_decide
def op231 : List WordIR.Op := [.shr 231 31]
def bytes231 : Bytes := ("    let r000000e8: u32 = r000000e7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked231 : bytes231=statementBytes 232 (op231.map lower) ∧ bytes231.length=54 := by core033_kernel_decide
def op232 : List WordIR.Op := [.bnot 232]
def bytes232 : Bytes := ("    let r000000e9: u32 = !r000000e8;\n" : String).toByteArray.data.toList
theorem checked232 : bytes232=statementBytes 233 (op232.map lower) ∧ bytes232.length=37 := by core033_kernel_decide
def op233 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes233 : Bytes := ("    let r000000ea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked233 : bytes233=statementBytes 234 (op233.map lower) ∧ bytes233.length=41 := by core033_kernel_decide
def op234 : List WordIR.Op := [.badd 233 234]
def bytes234 : Bytes := ("    let r000000eb: u32 = r000000e9.wrapping_add(r000000ea);\n" : String).toByteArray.data.toList
theorem checked234 : bytes234=statementBytes 235 (op234.map lower) ∧ bytes234.length=60 := by core033_kernel_decide
def op235 : List WordIR.Op := [.bnot 235]
def bytes235 : Bytes := ("    let r000000ec: u32 = !r000000eb;\n" : String).toByteArray.data.toList
theorem checked235 : bytes235=statementBytes 236 (op235.map lower) ∧ bytes235.length=37 := by core033_kernel_decide
def op236 : List WordIR.Op := [.shr 0 12]
def bytes236 : Bytes := ("    let r000000ed: u32 = r00000000 >> 0x0000000c_u32;\n" : String).toByteArray.data.toList
theorem checked236 : bytes236=statementBytes 237 (op236.map lower) ∧ bytes236.length=54 := by core033_kernel_decide
def op237 : List WordIR.Op := [.literal (BitVec.ofNat 32 63)]
def bytes237 : Bytes := ("    let r000000ee: u32 = 0x0000003f_u32;\n" : String).toByteArray.data.toList
theorem checked237 : bytes237=statementBytes 238 (op237.map lower) ∧ bytes237.length=41 := by core033_kernel_decide
def op238 : List WordIR.Op := [.band 237 238]
def bytes238 : Bytes := ("    let r000000ef: u32 = r000000ed & r000000ee;\n" : String).toByteArray.data.toList
theorem checked238 : bytes238=statementBytes 239 (op238.map lower) ∧ bytes238.length=48 := by core033_kernel_decide
def op239 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes239 : Bytes := ("    let r000000f0: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked239 : bytes239=statementBytes 240 (op239.map lower) ∧ bytes239.length=41 := by core033_kernel_decide
def op240 : List WordIR.Op := [.badd 239 240]
def bytes240 : Bytes := ("    let r000000f1: u32 = r000000ef.wrapping_add(r000000f0);\n" : String).toByteArray.data.toList
theorem checked240 : bytes240=statementBytes 241 (op240.map lower) ∧ bytes240.length=60 := by core033_kernel_decide
def op241 : List WordIR.Op := [.band 236 241]
def bytes241 : Bytes := ("    let r000000f2: u32 = r000000ec & r000000f1;\n" : String).toByteArray.data.toList
theorem checked241 : bytes241=statementBytes 242 (op241.map lower) ∧ bytes241.length=48 := by core033_kernel_decide
def op242 : List WordIR.Op := [.bxor 219 242]
def bytes242 : Bytes := ("    let r000000f3: u32 = r000000db ^ r000000f2;\n" : String).toByteArray.data.toList
theorem checked242 : bytes242=statementBytes 243 (op242.map lower) ∧ bytes242.length=48 := by core033_kernel_decide
def op243 : List WordIR.Op := [.band 197 243]
def bytes243 : Bytes := ("    let r000000f4: u32 = r000000c5 & r000000f3;\n" : String).toByteArray.data.toList
theorem checked243 : bytes243=statementBytes 244 (op243.map lower) ∧ bytes243.length=48 := by core033_kernel_decide
def op244 : List WordIR.Op := [.bxor 180 244]
def bytes244 : Bytes := ("    let r000000f5: u32 = r000000b4 ^ r000000f4;\n" : String).toByteArray.data.toList
theorem checked244 : bytes244=statementBytes 245 (op244.map lower) ∧ bytes244.length=48 := by core033_kernel_decide
def op245 : List WordIR.Op := [.band 158 245]
def bytes245 : Bytes := ("    let r000000f6: u32 = r0000009e & r000000f5;\n" : String).toByteArray.data.toList
theorem checked245 : bytes245=statementBytes 246 (op245.map lower) ∧ bytes245.length=48 := by core033_kernel_decide
def op246 : List WordIR.Op := [.bxor 141 246]
def bytes246 : Bytes := ("    let r000000f7: u32 = r0000008d ^ r000000f6;\n" : String).toByteArray.data.toList
theorem checked246 : bytes246=statementBytes 247 (op246.map lower) ∧ bytes246.length=48 := by core033_kernel_decide
def op247 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes247 : Bytes := ("    let r000000f8: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked247 : bytes247=statementBytes 248 (op247.map lower) ∧ bytes247.length=41 := by core033_kernel_decide
def op248 : List WordIR.Op := [.bnot 0]
def bytes248 : Bytes := ("    let r000000f9: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked248 : bytes248=statementBytes 249 (op248.map lower) ∧ bytes248.length=37 := by core033_kernel_decide
def op249 : List WordIR.Op := [.band 248 249]
def bytes249 : Bytes := ("    let r000000fa: u32 = r000000f8 & r000000f9;\n" : String).toByteArray.data.toList
theorem checked249 : bytes249=statementBytes 250 (op249.map lower) ∧ bytes249.length=48 := by core033_kernel_decide
def op250 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes250 : Bytes := ("    let r000000fb: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked250 : bytes250=statementBytes 251 (op250.map lower) ∧ bytes250.length=41 := by core033_kernel_decide
def op251 : List WordIR.Op := [.bnot 0]
def bytes251 : Bytes := ("    let r000000fc: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked251 : bytes251=statementBytes 252 (op251.map lower) ∧ bytes251.length=37 := by core033_kernel_decide
def op252 : List WordIR.Op := [.bxor 251 252]
def bytes252 : Bytes := ("    let r000000fd: u32 = r000000fb ^ r000000fc;\n" : String).toByteArray.data.toList
theorem checked252 : bytes252=statementBytes 253 (op252.map lower) ∧ bytes252.length=48 := by core033_kernel_decide
def op253 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes253 : Bytes := ("    let r000000fe: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked253 : bytes253=statementBytes 254 (op253.map lower) ∧ bytes253.length=41 := by core033_kernel_decide
def op254 : List WordIR.Op := [.bnot 0]
def bytes254 : Bytes := ("    let r000000ff: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked254 : bytes254=statementBytes 255 (op254.map lower) ∧ bytes254.length=37 := by core033_kernel_decide
def op255 : List WordIR.Op := [.badd 254 255]
def bytes255 : Bytes := ("    let r00000100: u32 = r000000fe.wrapping_add(r000000ff);\n" : String).toByteArray.data.toList
theorem checked255 : bytes255=statementBytes 256 (op255.map lower) ∧ bytes255.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op192,op193,op194,op195,op196,op197,op198,op199,op200,op201,op202,op203,op204,op205,op206,op207,op208,op209,op210,op211,op212,op213,op214,op215,op216,op217,op218,op219,op220,op221,op222,op223,op224,op225,op226,op227,op228,op229,op230,op231,op232,op233,op234,op235,op236,op237,op238,op239,op240,op241,op242,op243,op244,op245,op246,op247,op248,op249,op250,op251,op252,op253,op254,op255]
def chunks : List Bytes := [bytes192,bytes193,bytes194,bytes195,bytes196,bytes197,bytes198,bytes199,bytes200,bytes201,bytes202,bytes203,bytes204,bytes205,bytes206,bytes207,bytes208,bytes209,bytes210,bytes211,bytes212,bytes213,bytes214,bytes215,bytes216,bytes217,bytes218,bytes219,bytes220,bytes221,bytes222,bytes223,bytes224,bytes225,bytes226,bytes227,bytes228,bytes229,bytes230,bytes231,bytes232,bytes233,bytes234,bytes235,bytes236,bytes237,bytes238,bytes239,bytes240,bytes241,bytes242,bytes243,bytes244,bytes245,bytes246,bytes247,bytes248,bytes249,bytes250,bytes251,bytes252,bytes253,bytes254,bytes255]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 193 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked192.1 (.cons _ _ _ _ _ checked193.1 (.cons _ _ _ _ _ checked194.1 (.cons _ _ _ _ _ checked195.1 (.cons _ _ _ _ _ checked196.1 (.cons _ _ _ _ _ checked197.1 (.cons _ _ _ _ _ checked198.1 (.cons _ _ _ _ _ checked199.1 (.cons _ _ _ _ _ checked200.1 (.cons _ _ _ _ _ checked201.1 (.cons _ _ _ _ _ checked202.1 (.cons _ _ _ _ _ checked203.1 (.cons _ _ _ _ _ checked204.1 (.cons _ _ _ _ _ checked205.1 (.cons _ _ _ _ _ checked206.1 (.cons _ _ _ _ _ checked207.1 (.cons _ _ _ _ _ checked208.1 (.cons _ _ _ _ _ checked209.1 (.cons _ _ _ _ _ checked210.1 (.cons _ _ _ _ _ checked211.1 (.cons _ _ _ _ _ checked212.1 (.cons _ _ _ _ _ checked213.1 (.cons _ _ _ _ _ checked214.1 (.cons _ _ _ _ _ checked215.1 (.cons _ _ _ _ _ checked216.1 (.cons _ _ _ _ _ checked217.1 (.cons _ _ _ _ _ checked218.1 (.cons _ _ _ _ _ checked219.1 (.cons _ _ _ _ _ checked220.1 (.cons _ _ _ _ _ checked221.1 (.cons _ _ _ _ _ checked222.1 (.cons _ _ _ _ _ checked223.1 (.cons _ _ _ _ _ checked224.1 (.cons _ _ _ _ _ checked225.1 (.cons _ _ _ _ _ checked226.1 (.cons _ _ _ _ _ checked227.1 (.cons _ _ _ _ _ checked228.1 (.cons _ _ _ _ _ checked229.1 (.cons _ _ _ _ _ checked230.1 (.cons _ _ _ _ _ checked231.1 (.cons _ _ _ _ _ checked232.1 (.cons _ _ _ _ _ checked233.1 (.cons _ _ _ _ _ checked234.1 (.cons _ _ _ _ _ checked235.1 (.cons _ _ _ _ _ checked236.1 (.cons _ _ _ _ _ checked237.1 (.cons _ _ _ _ _ checked238.1 (.cons _ _ _ _ _ checked239.1 (.cons _ _ _ _ _ checked240.1 (.cons _ _ _ _ _ checked241.1 (.cons _ _ _ _ _ checked242.1 (.cons _ _ _ _ _ checked243.1 (.cons _ _ _ _ _ checked244.1 (.cons _ _ _ _ _ checked245.1 (.cons _ _ _ _ _ checked246.1 (.cons _ _ _ _ _ checked247.1 (.cons _ _ _ _ _ checked248.1 (.cons _ _ _ _ _ checked249.1 (.cons _ _ _ _ _ checked250.1 (.cons _ _ _ _ _ checked251.1 (.cons _ _ _ _ _ checked252.1 (.cons _ _ _ _ _ checked253.1 (.cons _ _ _ _ _ checked254.1 (.cons _ _ _ _ _ checked255.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 193 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2910 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked192.2,checked193.2,checked194.2,checked195.2,checked196.2,checked197.2,checked198.2,checked199.2,checked200.2,checked201.2,checked202.2,checked203.2,checked204.2,checked205.2,checked206.2,checked207.2,checked208.2,checked209.2,checked210.2,checked211.2,checked212.2,checked213.2,checked214.2,checked215.2,checked216.2,checked217.2,checked218.2,checked219.2,checked220.2,checked221.2,checked222.2,checked223.2,checked224.2,checked225.2,checked226.2,checked227.2,checked228.2,checked229.2,checked230.2,checked231.2,checked232.2,checked233.2,checked234.2,checked235.2,checked236.2,checked237.2,checked238.2,checked239.2,checked240.2,checked241.2,checked242.2,checked243.2,checked244.2,checked245.2,checked246.2,checked247.2,checked248.2,checked249.2,checked250.2,checked251.2,checked252.2,checked253.2,checked254.2,checked255.2]
  decide
end ArtifactUtf8Group3
