import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup206
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13184 : List WordIR.Op := [.bxor 693 13301]
def bytes13184 : Bytes := ("    let r000033f6: u32 = r000002b5 ^ r000033f5;\n" : String).toByteArray.data.toList
theorem checked13184 : bytes13184=statementBytes 13302 (op13184.map lower) ∧ bytes13184.length=48 := by core033_kernel_decide
def op13185 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13185 : Bytes := ("    let r000033f7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13185 : bytes13185=statementBytes 13303 (op13185.map lower) ∧ bytes13185.length=41 := by core033_kernel_decide
def op13186 : List WordIR.Op := [.bnot 13303]
def bytes13186 : Bytes := ("    let r000033f8: u32 = !r000033f7;\n" : String).toByteArray.data.toList
theorem checked13186 : bytes13186=statementBytes 13304 (op13186.map lower) ∧ bytes13186.length=37 := by core033_kernel_decide
def op13187 : List WordIR.Op := [.band 13302 13304]
def bytes13187 : Bytes := ("    let r000033f9: u32 = r000033f6 & r000033f8;\n" : String).toByteArray.data.toList
theorem checked13187 : bytes13187=statementBytes 13305 (op13187.map lower) ∧ bytes13187.length=48 := by core033_kernel_decide
def op13188 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13188 : Bytes := ("    let r000033fa: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13188 : bytes13188=statementBytes 13306 (op13188.map lower) ∧ bytes13188.length=41 := by core033_kernel_decide
def op13189 : List WordIR.Op := [.bxor 693 13306]
def bytes13189 : Bytes := ("    let r000033fb: u32 = r000002b5 ^ r000033fa;\n" : String).toByteArray.data.toList
theorem checked13189 : bytes13189=statementBytes 13307 (op13189.map lower) ∧ bytes13189.length=48 := by core033_kernel_decide
def op13190 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13190 : Bytes := ("    let r000033fc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13190 : bytes13190=statementBytes 13308 (op13190.map lower) ∧ bytes13190.length=41 := by core033_kernel_decide
def op13191 : List WordIR.Op := [.bnot 13308]
def bytes13191 : Bytes := ("    let r000033fd: u32 = !r000033fc;\n" : String).toByteArray.data.toList
theorem checked13191 : bytes13191=statementBytes 13309 (op13191.map lower) ∧ bytes13191.length=37 := by core033_kernel_decide
def op13192 : List WordIR.Op := [.bxor 13307 13309]
def bytes13192 : Bytes := ("    let r000033fe: u32 = r000033fb ^ r000033fd;\n" : String).toByteArray.data.toList
theorem checked13192 : bytes13192=statementBytes 13310 (op13192.map lower) ∧ bytes13192.length=48 := by core033_kernel_decide
def op13193 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13193 : Bytes := ("    let r000033ff: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13193 : bytes13193=statementBytes 13311 (op13193.map lower) ∧ bytes13193.length=41 := by core033_kernel_decide
def op13194 : List WordIR.Op := [.bxor 693 13311]
def bytes13194 : Bytes := ("    let r00003400: u32 = r000002b5 ^ r000033ff;\n" : String).toByteArray.data.toList
theorem checked13194 : bytes13194=statementBytes 13312 (op13194.map lower) ∧ bytes13194.length=48 := by core033_kernel_decide
def op13195 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13195 : Bytes := ("    let r00003401: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13195 : bytes13195=statementBytes 13313 (op13195.map lower) ∧ bytes13195.length=41 := by core033_kernel_decide
def op13196 : List WordIR.Op := [.bnot 13313]
def bytes13196 : Bytes := ("    let r00003402: u32 = !r00003401;\n" : String).toByteArray.data.toList
theorem checked13196 : bytes13196=statementBytes 13314 (op13196.map lower) ∧ bytes13196.length=37 := by core033_kernel_decide
def op13197 : List WordIR.Op := [.badd 13312 13314]
def bytes13197 : Bytes := ("    let r00003403: u32 = r00003400.wrapping_add(r00003402);\n" : String).toByteArray.data.toList
theorem checked13197 : bytes13197=statementBytes 13315 (op13197.map lower) ∧ bytes13197.length=60 := by core033_kernel_decide
def op13198 : List WordIR.Op := [.bnot 13315]
def bytes13198 : Bytes := ("    let r00003404: u32 = !r00003403;\n" : String).toByteArray.data.toList
theorem checked13198 : bytes13198=statementBytes 13316 (op13198.map lower) ∧ bytes13198.length=37 := by core033_kernel_decide
def op13199 : List WordIR.Op := [.band 13310 13316]
def bytes13199 : Bytes := ("    let r00003405: u32 = r000033fe & r00003404;\n" : String).toByteArray.data.toList
theorem checked13199 : bytes13199=statementBytes 13317 (op13199.map lower) ∧ bytes13199.length=48 := by core033_kernel_decide
def op13200 : List WordIR.Op := [.bxor 13305 13317]
def bytes13200 : Bytes := ("    let r00003406: u32 = r000033f9 ^ r00003405;\n" : String).toByteArray.data.toList
theorem checked13200 : bytes13200=statementBytes 13318 (op13200.map lower) ∧ bytes13200.length=48 := by core033_kernel_decide
def op13201 : List WordIR.Op := [.shr 13318 31]
def bytes13201 : Bytes := ("    let r00003407: u32 = r00003406 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13201 : bytes13201=statementBytes 13319 (op13201.map lower) ∧ bytes13201.length=54 := by core033_kernel_decide
def op13202 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13202 : Bytes := ("    let r00003408: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13202 : bytes13202=statementBytes 13320 (op13202.map lower) ∧ bytes13202.length=41 := by core033_kernel_decide
def op13203 : List WordIR.Op := [.bxor 13319 13320]
def bytes13203 : Bytes := ("    let r00003409: u32 = r00003407 ^ r00003408;\n" : String).toByteArray.data.toList
theorem checked13203 : bytes13203=statementBytes 13321 (op13203.map lower) ∧ bytes13203.length=48 := by core033_kernel_decide
def op13204 : List WordIR.Op := [.bnot 13321]
def bytes13204 : Bytes := ("    let r0000340a: u32 = !r00003409;\n" : String).toByteArray.data.toList
theorem checked13204 : bytes13204=statementBytes 13322 (op13204.map lower) ∧ bytes13204.length=37 := by core033_kernel_decide
def op13205 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13205 : Bytes := ("    let r0000340b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13205 : bytes13205=statementBytes 13323 (op13205.map lower) ∧ bytes13205.length=41 := by core033_kernel_decide
def op13206 : List WordIR.Op := [.badd 13322 13323]
def bytes13206 : Bytes := ("    let r0000340c: u32 = r0000340a.wrapping_add(r0000340b);\n" : String).toByteArray.data.toList
theorem checked13206 : bytes13206=statementBytes 13324 (op13206.map lower) ∧ bytes13206.length=60 := by core033_kernel_decide
def op13207 : List WordIR.Op := [.band 13324 11016]
def bytes13207 : Bytes := ("    let r0000340d: u32 = r0000340c & r00002b08;\n" : String).toByteArray.data.toList
theorem checked13207 : bytes13207=statementBytes 13325 (op13207.map lower) ∧ bytes13207.length=48 := by core033_kernel_decide
def op13208 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13208 : Bytes := ("    let r0000340e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13208 : bytes13208=statementBytes 13326 (op13208.map lower) ∧ bytes13208.length=41 := by core033_kernel_decide
def op13209 : List WordIR.Op := [.bxor 693 13326]
def bytes13209 : Bytes := ("    let r0000340f: u32 = r000002b5 ^ r0000340e;\n" : String).toByteArray.data.toList
theorem checked13209 : bytes13209=statementBytes 13327 (op13209.map lower) ∧ bytes13209.length=48 := by core033_kernel_decide
def op13210 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13210 : Bytes := ("    let r00003410: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13210 : bytes13210=statementBytes 13328 (op13210.map lower) ∧ bytes13210.length=41 := by core033_kernel_decide
def op13211 : List WordIR.Op := [.bnot 13328]
def bytes13211 : Bytes := ("    let r00003411: u32 = !r00003410;\n" : String).toByteArray.data.toList
theorem checked13211 : bytes13211=statementBytes 13329 (op13211.map lower) ∧ bytes13211.length=37 := by core033_kernel_decide
def op13212 : List WordIR.Op := [.band 13327 13329]
def bytes13212 : Bytes := ("    let r00003412: u32 = r0000340f & r00003411;\n" : String).toByteArray.data.toList
theorem checked13212 : bytes13212=statementBytes 13330 (op13212.map lower) ∧ bytes13212.length=48 := by core033_kernel_decide
def op13213 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13213 : Bytes := ("    let r00003413: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13213 : bytes13213=statementBytes 13331 (op13213.map lower) ∧ bytes13213.length=41 := by core033_kernel_decide
def op13214 : List WordIR.Op := [.bxor 693 13331]
def bytes13214 : Bytes := ("    let r00003414: u32 = r000002b5 ^ r00003413;\n" : String).toByteArray.data.toList
theorem checked13214 : bytes13214=statementBytes 13332 (op13214.map lower) ∧ bytes13214.length=48 := by core033_kernel_decide
def op13215 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13215 : Bytes := ("    let r00003415: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13215 : bytes13215=statementBytes 13333 (op13215.map lower) ∧ bytes13215.length=41 := by core033_kernel_decide
def op13216 : List WordIR.Op := [.bnot 13333]
def bytes13216 : Bytes := ("    let r00003416: u32 = !r00003415;\n" : String).toByteArray.data.toList
theorem checked13216 : bytes13216=statementBytes 13334 (op13216.map lower) ∧ bytes13216.length=37 := by core033_kernel_decide
def op13217 : List WordIR.Op := [.bxor 13332 13334]
def bytes13217 : Bytes := ("    let r00003417: u32 = r00003414 ^ r00003416;\n" : String).toByteArray.data.toList
theorem checked13217 : bytes13217=statementBytes 13335 (op13217.map lower) ∧ bytes13217.length=48 := by core033_kernel_decide
def op13218 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13218 : Bytes := ("    let r00003418: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13218 : bytes13218=statementBytes 13336 (op13218.map lower) ∧ bytes13218.length=41 := by core033_kernel_decide
def op13219 : List WordIR.Op := [.bxor 693 13336]
def bytes13219 : Bytes := ("    let r00003419: u32 = r000002b5 ^ r00003418;\n" : String).toByteArray.data.toList
theorem checked13219 : bytes13219=statementBytes 13337 (op13219.map lower) ∧ bytes13219.length=48 := by core033_kernel_decide
def op13220 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13220 : Bytes := ("    let r0000341a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13220 : bytes13220=statementBytes 13338 (op13220.map lower) ∧ bytes13220.length=41 := by core033_kernel_decide
def op13221 : List WordIR.Op := [.bnot 13338]
def bytes13221 : Bytes := ("    let r0000341b: u32 = !r0000341a;\n" : String).toByteArray.data.toList
theorem checked13221 : bytes13221=statementBytes 13339 (op13221.map lower) ∧ bytes13221.length=37 := by core033_kernel_decide
def op13222 : List WordIR.Op := [.badd 13337 13339]
def bytes13222 : Bytes := ("    let r0000341c: u32 = r00003419.wrapping_add(r0000341b);\n" : String).toByteArray.data.toList
theorem checked13222 : bytes13222=statementBytes 13340 (op13222.map lower) ∧ bytes13222.length=60 := by core033_kernel_decide
def op13223 : List WordIR.Op := [.bnot 13340]
def bytes13223 : Bytes := ("    let r0000341d: u32 = !r0000341c;\n" : String).toByteArray.data.toList
theorem checked13223 : bytes13223=statementBytes 13341 (op13223.map lower) ∧ bytes13223.length=37 := by core033_kernel_decide
def op13224 : List WordIR.Op := [.band 13335 13341]
def bytes13224 : Bytes := ("    let r0000341e: u32 = r00003417 & r0000341d;\n" : String).toByteArray.data.toList
theorem checked13224 : bytes13224=statementBytes 13342 (op13224.map lower) ∧ bytes13224.length=48 := by core033_kernel_decide
def op13225 : List WordIR.Op := [.bxor 13330 13342]
def bytes13225 : Bytes := ("    let r0000341f: u32 = r00003412 ^ r0000341e;\n" : String).toByteArray.data.toList
theorem checked13225 : bytes13225=statementBytes 13343 (op13225.map lower) ∧ bytes13225.length=48 := by core033_kernel_decide
def op13226 : List WordIR.Op := [.shr 13343 31]
def bytes13226 : Bytes := ("    let r00003420: u32 = r0000341f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13226 : bytes13226=statementBytes 13344 (op13226.map lower) ∧ bytes13226.length=54 := by core033_kernel_decide
def op13227 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13227 : Bytes := ("    let r00003421: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13227 : bytes13227=statementBytes 13345 (op13227.map lower) ∧ bytes13227.length=41 := by core033_kernel_decide
def op13228 : List WordIR.Op := [.bxor 13344 13345]
def bytes13228 : Bytes := ("    let r00003422: u32 = r00003420 ^ r00003421;\n" : String).toByteArray.data.toList
theorem checked13228 : bytes13228=statementBytes 13346 (op13228.map lower) ∧ bytes13228.length=48 := by core033_kernel_decide
def op13229 : List WordIR.Op := [.bnot 13346]
def bytes13229 : Bytes := ("    let r00003423: u32 = !r00003422;\n" : String).toByteArray.data.toList
theorem checked13229 : bytes13229=statementBytes 13347 (op13229.map lower) ∧ bytes13229.length=37 := by core033_kernel_decide
def op13230 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13230 : Bytes := ("    let r00003424: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13230 : bytes13230=statementBytes 13348 (op13230.map lower) ∧ bytes13230.length=41 := by core033_kernel_decide
def op13231 : List WordIR.Op := [.badd 13347 13348]
def bytes13231 : Bytes := ("    let r00003425: u32 = r00003423.wrapping_add(r00003424);\n" : String).toByteArray.data.toList
theorem checked13231 : bytes13231=statementBytes 13349 (op13231.map lower) ∧ bytes13231.length=60 := by core033_kernel_decide
def op13232 : List WordIR.Op := [.bnot 13349]
def bytes13232 : Bytes := ("    let r00003426: u32 = !r00003425;\n" : String).toByteArray.data.toList
theorem checked13232 : bytes13232=statementBytes 13350 (op13232.map lower) ∧ bytes13232.length=37 := by core033_kernel_decide
def op13233 : List WordIR.Op := [.band 13350 10485]
def bytes13233 : Bytes := ("    let r00003427: u32 = r00003426 & r000028f5;\n" : String).toByteArray.data.toList
theorem checked13233 : bytes13233=statementBytes 13351 (op13233.map lower) ∧ bytes13233.length=48 := by core033_kernel_decide
def op13234 : List WordIR.Op := [.bxor 13325 13351]
def bytes13234 : Bytes := ("    let r00003428: u32 = r0000340d ^ r00003427;\n" : String).toByteArray.data.toList
theorem checked13234 : bytes13234=statementBytes 13352 (op13234.map lower) ∧ bytes13234.length=48 := by core033_kernel_decide
def op13235 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13235 : Bytes := ("    let r00003429: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13235 : bytes13235=statementBytes 13353 (op13235.map lower) ∧ bytes13235.length=41 := by core033_kernel_decide
def op13236 : List WordIR.Op := [.bxor 693 13353]
def bytes13236 : Bytes := ("    let r0000342a: u32 = r000002b5 ^ r00003429;\n" : String).toByteArray.data.toList
theorem checked13236 : bytes13236=statementBytes 13354 (op13236.map lower) ∧ bytes13236.length=48 := by core033_kernel_decide
def op13237 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13237 : Bytes := ("    let r0000342b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13237 : bytes13237=statementBytes 13355 (op13237.map lower) ∧ bytes13237.length=41 := by core033_kernel_decide
def op13238 : List WordIR.Op := [.bnot 13355]
def bytes13238 : Bytes := ("    let r0000342c: u32 = !r0000342b;\n" : String).toByteArray.data.toList
theorem checked13238 : bytes13238=statementBytes 13356 (op13238.map lower) ∧ bytes13238.length=37 := by core033_kernel_decide
def op13239 : List WordIR.Op := [.band 13354 13356]
def bytes13239 : Bytes := ("    let r0000342d: u32 = r0000342a & r0000342c;\n" : String).toByteArray.data.toList
theorem checked13239 : bytes13239=statementBytes 13357 (op13239.map lower) ∧ bytes13239.length=48 := by core033_kernel_decide
def op13240 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13240 : Bytes := ("    let r0000342e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13240 : bytes13240=statementBytes 13358 (op13240.map lower) ∧ bytes13240.length=41 := by core033_kernel_decide
def op13241 : List WordIR.Op := [.bxor 693 13358]
def bytes13241 : Bytes := ("    let r0000342f: u32 = r000002b5 ^ r0000342e;\n" : String).toByteArray.data.toList
theorem checked13241 : bytes13241=statementBytes 13359 (op13241.map lower) ∧ bytes13241.length=48 := by core033_kernel_decide
def op13242 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13242 : Bytes := ("    let r00003430: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13242 : bytes13242=statementBytes 13360 (op13242.map lower) ∧ bytes13242.length=41 := by core033_kernel_decide
def op13243 : List WordIR.Op := [.bnot 13360]
def bytes13243 : Bytes := ("    let r00003431: u32 = !r00003430;\n" : String).toByteArray.data.toList
theorem checked13243 : bytes13243=statementBytes 13361 (op13243.map lower) ∧ bytes13243.length=37 := by core033_kernel_decide
def op13244 : List WordIR.Op := [.bxor 13359 13361]
def bytes13244 : Bytes := ("    let r00003432: u32 = r0000342f ^ r00003431;\n" : String).toByteArray.data.toList
theorem checked13244 : bytes13244=statementBytes 13362 (op13244.map lower) ∧ bytes13244.length=48 := by core033_kernel_decide
def op13245 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13245 : Bytes := ("    let r00003433: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13245 : bytes13245=statementBytes 13363 (op13245.map lower) ∧ bytes13245.length=41 := by core033_kernel_decide
def op13246 : List WordIR.Op := [.bxor 693 13363]
def bytes13246 : Bytes := ("    let r00003434: u32 = r000002b5 ^ r00003433;\n" : String).toByteArray.data.toList
theorem checked13246 : bytes13246=statementBytes 13364 (op13246.map lower) ∧ bytes13246.length=48 := by core033_kernel_decide
def op13247 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13247 : Bytes := ("    let r00003435: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13247 : bytes13247=statementBytes 13365 (op13247.map lower) ∧ bytes13247.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13184,op13185,op13186,op13187,op13188,op13189,op13190,op13191,op13192,op13193,op13194,op13195,op13196,op13197,op13198,op13199,op13200,op13201,op13202,op13203,op13204,op13205,op13206,op13207,op13208,op13209,op13210,op13211,op13212,op13213,op13214,op13215,op13216,op13217,op13218,op13219,op13220,op13221,op13222,op13223,op13224,op13225,op13226,op13227,op13228,op13229,op13230,op13231,op13232,op13233,op13234,op13235,op13236,op13237,op13238,op13239,op13240,op13241,op13242,op13243,op13244,op13245,op13246,op13247]
def chunks : List Bytes := [bytes13184,bytes13185,bytes13186,bytes13187,bytes13188,bytes13189,bytes13190,bytes13191,bytes13192,bytes13193,bytes13194,bytes13195,bytes13196,bytes13197,bytes13198,bytes13199,bytes13200,bytes13201,bytes13202,bytes13203,bytes13204,bytes13205,bytes13206,bytes13207,bytes13208,bytes13209,bytes13210,bytes13211,bytes13212,bytes13213,bytes13214,bytes13215,bytes13216,bytes13217,bytes13218,bytes13219,bytes13220,bytes13221,bytes13222,bytes13223,bytes13224,bytes13225,bytes13226,bytes13227,bytes13228,bytes13229,bytes13230,bytes13231,bytes13232,bytes13233,bytes13234,bytes13235,bytes13236,bytes13237,bytes13238,bytes13239,bytes13240,bytes13241,bytes13242,bytes13243,bytes13244,bytes13245,bytes13246,bytes13247]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13302 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13184.1 (.cons _ _ _ _ _ checked13185.1 (.cons _ _ _ _ _ checked13186.1 (.cons _ _ _ _ _ checked13187.1 (.cons _ _ _ _ _ checked13188.1 (.cons _ _ _ _ _ checked13189.1 (.cons _ _ _ _ _ checked13190.1 (.cons _ _ _ _ _ checked13191.1 (.cons _ _ _ _ _ checked13192.1 (.cons _ _ _ _ _ checked13193.1 (.cons _ _ _ _ _ checked13194.1 (.cons _ _ _ _ _ checked13195.1 (.cons _ _ _ _ _ checked13196.1 (.cons _ _ _ _ _ checked13197.1 (.cons _ _ _ _ _ checked13198.1 (.cons _ _ _ _ _ checked13199.1 (.cons _ _ _ _ _ checked13200.1 (.cons _ _ _ _ _ checked13201.1 (.cons _ _ _ _ _ checked13202.1 (.cons _ _ _ _ _ checked13203.1 (.cons _ _ _ _ _ checked13204.1 (.cons _ _ _ _ _ checked13205.1 (.cons _ _ _ _ _ checked13206.1 (.cons _ _ _ _ _ checked13207.1 (.cons _ _ _ _ _ checked13208.1 (.cons _ _ _ _ _ checked13209.1 (.cons _ _ _ _ _ checked13210.1 (.cons _ _ _ _ _ checked13211.1 (.cons _ _ _ _ _ checked13212.1 (.cons _ _ _ _ _ checked13213.1 (.cons _ _ _ _ _ checked13214.1 (.cons _ _ _ _ _ checked13215.1 (.cons _ _ _ _ _ checked13216.1 (.cons _ _ _ _ _ checked13217.1 (.cons _ _ _ _ _ checked13218.1 (.cons _ _ _ _ _ checked13219.1 (.cons _ _ _ _ _ checked13220.1 (.cons _ _ _ _ _ checked13221.1 (.cons _ _ _ _ _ checked13222.1 (.cons _ _ _ _ _ checked13223.1 (.cons _ _ _ _ _ checked13224.1 (.cons _ _ _ _ _ checked13225.1 (.cons _ _ _ _ _ checked13226.1 (.cons _ _ _ _ _ checked13227.1 (.cons _ _ _ _ _ checked13228.1 (.cons _ _ _ _ _ checked13229.1 (.cons _ _ _ _ _ checked13230.1 (.cons _ _ _ _ _ checked13231.1 (.cons _ _ _ _ _ checked13232.1 (.cons _ _ _ _ _ checked13233.1 (.cons _ _ _ _ _ checked13234.1 (.cons _ _ _ _ _ checked13235.1 (.cons _ _ _ _ _ checked13236.1 (.cons _ _ _ _ _ checked13237.1 (.cons _ _ _ _ _ checked13238.1 (.cons _ _ _ _ _ checked13239.1 (.cons _ _ _ _ _ checked13240.1 (.cons _ _ _ _ _ checked13241.1 (.cons _ _ _ _ _ checked13242.1 (.cons _ _ _ _ _ checked13243.1 (.cons _ _ _ _ _ checked13244.1 (.cons _ _ _ _ _ checked13245.1 (.cons _ _ _ _ _ checked13246.1 (.cons _ _ _ _ _ checked13247.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13302 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13184.2,checked13185.2,checked13186.2,checked13187.2,checked13188.2,checked13189.2,checked13190.2,checked13191.2,checked13192.2,checked13193.2,checked13194.2,checked13195.2,checked13196.2,checked13197.2,checked13198.2,checked13199.2,checked13200.2,checked13201.2,checked13202.2,checked13203.2,checked13204.2,checked13205.2,checked13206.2,checked13207.2,checked13208.2,checked13209.2,checked13210.2,checked13211.2,checked13212.2,checked13213.2,checked13214.2,checked13215.2,checked13216.2,checked13217.2,checked13218.2,checked13219.2,checked13220.2,checked13221.2,checked13222.2,checked13223.2,checked13224.2,checked13225.2,checked13226.2,checked13227.2,checked13228.2,checked13229.2,checked13230.2,checked13231.2,checked13232.2,checked13233.2,checked13234.2,checked13235.2,checked13236.2,checked13237.2,checked13238.2,checked13239.2,checked13240.2,checked13241.2,checked13242.2,checked13243.2,checked13244.2,checked13245.2,checked13246.2,checked13247.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup206
