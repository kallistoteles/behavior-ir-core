import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData128
import PairedPathRoundInstructionMatrixData129
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8224 : actualRows8224=WordField.canonicalRows actualModulus 8224 (.bxor 8222 8223) := by core033_kernel_decide
theorem stats8224 : actualRows8224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8224=7428 := by core033_kernel_decide
theorem rows8225 : actualRows8225=WordField.canonicalRows actualModulus 8225 (.rotr 8206 22) := by core033_kernel_decide
theorem stats8225 : actualRows8225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8225=5124 := by core033_kernel_decide
theorem rows8226 : actualRows8226=WordField.canonicalRows actualModulus 8226 (.bxor 8224 8225) := by core033_kernel_decide
theorem stats8226 : actualRows8226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8226=7428 := by core033_kernel_decide
theorem rows8227 : actualRows8227=WordField.canonicalRows actualModulus 8227 (.band 8206 8179) := by core033_kernel_decide
theorem stats8227 : actualRows8227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8227=5124 := by core033_kernel_decide
theorem rows8228 : actualRows8228=WordField.canonicalRows actualModulus 8228 (.band 8206 8152) := by core033_kernel_decide
theorem stats8228 : actualRows8228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8228=5124 := by core033_kernel_decide
theorem rows8229 : actualRows8229=WordField.canonicalRows actualModulus 8229 (.bxor 8227 8228) := by core033_kernel_decide
theorem stats8229 : actualRows8229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8229=7428 := by core033_kernel_decide
theorem rows8230 : actualRows8230=WordField.canonicalRows actualModulus 8230 (.band 8179 8152) := by core033_kernel_decide
theorem stats8230 : actualRows8230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8230=5124 := by core033_kernel_decide
theorem rows8231 : actualRows8231=WordField.canonicalRows actualModulus 8231 (.bxor 8229 8230) := by core033_kernel_decide
theorem stats8231 : actualRows8231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8231=7428 := by core033_kernel_decide
theorem rows8232 : actualRows8232=WordField.canonicalRows actualModulus 8232 (.badd 8226 8231) := by core033_kernel_decide
theorem stats8232 : actualRows8232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8232=5388 := by core033_kernel_decide
theorem rows8233 : actualRows8233=WordField.canonicalRows actualModulus 8233 (.badd 8221 8232) := by core033_kernel_decide
theorem stats8233 : actualRows8233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8233=5388 := by core033_kernel_decide
theorem rows8234 : actualRows8234=WordField.canonicalRows actualModulus 8234 (.badd 8125 8221) := by core033_kernel_decide
theorem stats8234 : actualRows8234.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8234=5388 := by core033_kernel_decide
theorem rows8235 : actualRows8235=WordField.canonicalRows actualModulus 8235 (.rotr 8234 6) := by core033_kernel_decide
theorem stats8235 : actualRows8235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8235=5124 := by core033_kernel_decide
theorem rows8236 : actualRows8236=WordField.canonicalRows actualModulus 8236 (.rotr 8234 11) := by core033_kernel_decide
theorem stats8236 : actualRows8236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8236=5124 := by core033_kernel_decide
theorem rows8237 : actualRows8237=WordField.canonicalRows actualModulus 8237 (.bxor 8235 8236) := by core033_kernel_decide
theorem stats8237 : actualRows8237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8237=7428 := by core033_kernel_decide
theorem rows8238 : actualRows8238=WordField.canonicalRows actualModulus 8238 (.rotr 8234 25) := by core033_kernel_decide
theorem stats8238 : actualRows8238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8238=5124 := by core033_kernel_decide
theorem rows8239 : actualRows8239=WordField.canonicalRows actualModulus 8239 (.bxor 8237 8238) := by core033_kernel_decide
theorem stats8239 : actualRows8239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8239=7428 := by core033_kernel_decide
theorem rows8240 : actualRows8240=WordField.canonicalRows actualModulus 8240 (.badd 8153 8239) := by core033_kernel_decide
theorem stats8240 : actualRows8240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8240=5388 := by core033_kernel_decide
theorem rows8241 : actualRows8241=WordField.canonicalRows actualModulus 8241 (.band 8234 8207) := by core033_kernel_decide
theorem stats8241 : actualRows8241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8241=5124 := by core033_kernel_decide
theorem rows8242 : actualRows8242=WordField.canonicalRows actualModulus 8242 (.bnot 8234) := by core033_kernel_decide
theorem stats8242 : actualRows8242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8242=6276 := by core033_kernel_decide
theorem rows8243 : actualRows8243=WordField.canonicalRows actualModulus 8243 (.band 8242 8180) := by core033_kernel_decide
theorem stats8243 : actualRows8243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8243=5124 := by core033_kernel_decide
theorem rows8244 : actualRows8244=WordField.canonicalRows actualModulus 8244 (.bxor 8241 8243) := by core033_kernel_decide
theorem stats8244 : actualRows8244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8244=7428 := by core033_kernel_decide
theorem rows8245 : actualRows8245=WordField.canonicalRows actualModulus 8245 (.badd 8240 8244) := by core033_kernel_decide
theorem stats8245 : actualRows8245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8245=5388 := by core033_kernel_decide
theorem rows8246 : actualRows8246=WordField.canonicalRows actualModulus 8246 (.literal (BitVec.ofNat 32 2453635748)) := by core033_kernel_decide
theorem stats8246 : actualRows8246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8246=3828 := by core033_kernel_decide
theorem rows8247 : actualRows8247=WordField.canonicalRows actualModulus 8247 (.badd 8245 8246) := by core033_kernel_decide
theorem stats8247 : actualRows8247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8247=5388 := by core033_kernel_decide
theorem rows8248 : actualRows8248=WordField.canonicalRows actualModulus 8248 (.badd 8247 6242) := by core033_kernel_decide
theorem stats8248 : actualRows8248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8248=5388 := by core033_kernel_decide
theorem rows8249 : actualRows8249=WordField.canonicalRows actualModulus 8249 (.rotr 8233 2) := by core033_kernel_decide
theorem stats8249 : actualRows8249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8249=5124 := by core033_kernel_decide
theorem rows8250 : actualRows8250=WordField.canonicalRows actualModulus 8250 (.rotr 8233 13) := by core033_kernel_decide
theorem stats8250 : actualRows8250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8250=5124 := by core033_kernel_decide
theorem rows8251 : actualRows8251=WordField.canonicalRows actualModulus 8251 (.bxor 8249 8250) := by core033_kernel_decide
theorem stats8251 : actualRows8251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8251=7428 := by core033_kernel_decide
theorem rows8252 : actualRows8252=WordField.canonicalRows actualModulus 8252 (.rotr 8233 22) := by core033_kernel_decide
theorem stats8252 : actualRows8252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8252=5124 := by core033_kernel_decide
theorem rows8253 : actualRows8253=WordField.canonicalRows actualModulus 8253 (.bxor 8251 8252) := by core033_kernel_decide
theorem stats8253 : actualRows8253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8253=7428 := by core033_kernel_decide
theorem rows8254 : actualRows8254=WordField.canonicalRows actualModulus 8254 (.band 8233 8206) := by core033_kernel_decide
theorem stats8254 : actualRows8254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8254=5124 := by core033_kernel_decide
theorem rows8255 : actualRows8255=WordField.canonicalRows actualModulus 8255 (.band 8233 8179) := by core033_kernel_decide
theorem stats8255 : actualRows8255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8255=5124 := by core033_kernel_decide
theorem rows8256 : actualRows8256=WordField.canonicalRows actualModulus 8256 (.bxor 8254 8255) := by core033_kernel_decide
theorem stats8256 : actualRows8256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8256=7428 := by core033_kernel_decide
theorem rows8257 : actualRows8257=WordField.canonicalRows actualModulus 8257 (.band 8206 8179) := by core033_kernel_decide
theorem stats8257 : actualRows8257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8257=5124 := by core033_kernel_decide
theorem rows8258 : actualRows8258=WordField.canonicalRows actualModulus 8258 (.bxor 8256 8257) := by core033_kernel_decide
theorem stats8258 : actualRows8258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8258=7428 := by core033_kernel_decide
theorem rows8259 : actualRows8259=WordField.canonicalRows actualModulus 8259 (.badd 8253 8258) := by core033_kernel_decide
theorem stats8259 : actualRows8259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8259=5388 := by core033_kernel_decide
theorem rows8260 : actualRows8260=WordField.canonicalRows actualModulus 8260 (.badd 8248 8259) := by core033_kernel_decide
theorem stats8260 : actualRows8260.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8260=5388 := by core033_kernel_decide
theorem rows8261 : actualRows8261=WordField.canonicalRows actualModulus 8261 (.badd 8152 8248) := by core033_kernel_decide
theorem stats8261 : actualRows8261.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8261=5388 := by core033_kernel_decide
theorem rows8262 : actualRows8262=WordField.canonicalRows actualModulus 8262 (.rotr 8261 6) := by core033_kernel_decide
theorem stats8262 : actualRows8262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8262=5124 := by core033_kernel_decide
theorem rows8263 : actualRows8263=WordField.canonicalRows actualModulus 8263 (.rotr 8261 11) := by core033_kernel_decide
theorem stats8263 : actualRows8263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8263=5124 := by core033_kernel_decide
theorem rows8264 : actualRows8264=WordField.canonicalRows actualModulus 8264 (.bxor 8262 8263) := by core033_kernel_decide
theorem stats8264 : actualRows8264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8264=7428 := by core033_kernel_decide
theorem rows8265 : actualRows8265=WordField.canonicalRows actualModulus 8265 (.rotr 8261 25) := by core033_kernel_decide
theorem stats8265 : actualRows8265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8265=5124 := by core033_kernel_decide
theorem rows8266 : actualRows8266=WordField.canonicalRows actualModulus 8266 (.bxor 8264 8265) := by core033_kernel_decide
theorem stats8266 : actualRows8266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8266=7428 := by core033_kernel_decide
theorem rows8267 : actualRows8267=WordField.canonicalRows actualModulus 8267 (.badd 8180 8266) := by core033_kernel_decide
theorem stats8267 : actualRows8267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8267=5388 := by core033_kernel_decide
theorem rows8268 : actualRows8268=WordField.canonicalRows actualModulus 8268 (.band 8261 8234) := by core033_kernel_decide
theorem stats8268 : actualRows8268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8268=5124 := by core033_kernel_decide
theorem rows8269 : actualRows8269=WordField.canonicalRows actualModulus 8269 (.bnot 8261) := by core033_kernel_decide
theorem stats8269 : actualRows8269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8269=6276 := by core033_kernel_decide
theorem rows8270 : actualRows8270=WordField.canonicalRows actualModulus 8270 (.band 8269 8207) := by core033_kernel_decide
theorem stats8270 : actualRows8270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8270=5124 := by core033_kernel_decide
theorem rows8271 : actualRows8271=WordField.canonicalRows actualModulus 8271 (.bxor 8268 8270) := by core033_kernel_decide
theorem stats8271 : actualRows8271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8271=7428 := by core033_kernel_decide
theorem rows8272 : actualRows8272=WordField.canonicalRows actualModulus 8272 (.badd 8267 8271) := by core033_kernel_decide
theorem stats8272 : actualRows8272.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8272=5388 := by core033_kernel_decide
theorem rows8273 : actualRows8273=WordField.canonicalRows actualModulus 8273 (.literal (BitVec.ofNat 32 2870763221)) := by core033_kernel_decide
theorem stats8273 : actualRows8273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8273=4116 := by core033_kernel_decide
theorem rows8274 : actualRows8274=WordField.canonicalRows actualModulus 8274 (.badd 8272 8273) := by core033_kernel_decide
theorem stats8274 : actualRows8274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8274=5388 := by core033_kernel_decide
theorem rows8275 : actualRows8275=WordField.canonicalRows actualModulus 8275 (.badd 8274 6248) := by core033_kernel_decide
theorem stats8275 : actualRows8275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8275=5388 := by core033_kernel_decide
theorem rows8276 : actualRows8276=WordField.canonicalRows actualModulus 8276 (.rotr 8260 2) := by core033_kernel_decide
theorem stats8276 : actualRows8276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8276=5124 := by core033_kernel_decide
theorem rows8277 : actualRows8277=WordField.canonicalRows actualModulus 8277 (.rotr 8260 13) := by core033_kernel_decide
theorem stats8277 : actualRows8277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8277=5124 := by core033_kernel_decide
theorem rows8278 : actualRows8278=WordField.canonicalRows actualModulus 8278 (.bxor 8276 8277) := by core033_kernel_decide
theorem stats8278 : actualRows8278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8278=7428 := by core033_kernel_decide
theorem rows8279 : actualRows8279=WordField.canonicalRows actualModulus 8279 (.rotr 8260 22) := by core033_kernel_decide
theorem stats8279 : actualRows8279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8279=5124 := by core033_kernel_decide
theorem rows8280 : actualRows8280=WordField.canonicalRows actualModulus 8280 (.bxor 8278 8279) := by core033_kernel_decide
theorem stats8280 : actualRows8280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8280=7428 := by core033_kernel_decide
theorem rows8281 : actualRows8281=WordField.canonicalRows actualModulus 8281 (.band 8260 8233) := by core033_kernel_decide
theorem stats8281 : actualRows8281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8281=5124 := by core033_kernel_decide
theorem rows8282 : actualRows8282=WordField.canonicalRows actualModulus 8282 (.band 8260 8206) := by core033_kernel_decide
theorem stats8282 : actualRows8282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8282=5124 := by core033_kernel_decide
theorem rows8283 : actualRows8283=WordField.canonicalRows actualModulus 8283 (.bxor 8281 8282) := by core033_kernel_decide
theorem stats8283 : actualRows8283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8283=7428 := by core033_kernel_decide
theorem rows8284 : actualRows8284=WordField.canonicalRows actualModulus 8284 (.band 8233 8206) := by core033_kernel_decide
theorem stats8284 : actualRows8284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8284=5124 := by core033_kernel_decide
theorem rows8285 : actualRows8285=WordField.canonicalRows actualModulus 8285 (.bxor 8283 8284) := by core033_kernel_decide
theorem stats8285 : actualRows8285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8285=7428 := by core033_kernel_decide
theorem rows8286 : actualRows8286=WordField.canonicalRows actualModulus 8286 (.badd 8280 8285) := by core033_kernel_decide
theorem stats8286 : actualRows8286.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8286=5388 := by core033_kernel_decide
theorem rows8287 : actualRows8287=WordField.canonicalRows actualModulus 8287 (.badd 8275 8286) := by core033_kernel_decide
theorem stats8287 : actualRows8287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8287=5388 := by core033_kernel_decide
def partRows127 : List R1CS.Row := actualRows8224++actualRows8225++actualRows8226++actualRows8227++actualRows8228++actualRows8229++actualRows8230++actualRows8231++actualRows8232++actualRows8233++actualRows8234++actualRows8235++actualRows8236++actualRows8237++actualRows8238++actualRows8239++actualRows8240++actualRows8241++actualRows8242++actualRows8243++actualRows8244++actualRows8245++actualRows8246++actualRows8247++actualRows8248++actualRows8249++actualRows8250++actualRows8251++actualRows8252++actualRows8253++actualRows8254++actualRows8255++actualRows8256++actualRows8257++actualRows8258++actualRows8259++actualRows8260++actualRows8261++actualRows8262++actualRows8263++actualRows8264++actualRows8265++actualRows8266++actualRows8267++actualRows8268++actualRows8269++actualRows8270++actualRows8271++actualRows8272++actualRows8273++actualRows8274++actualRows8275++actualRows8276++actualRows8277++actualRows8278++actualRows8279++actualRows8280++actualRows8281++actualRows8282++actualRows8283++actualRows8284++actualRows8285++actualRows8286++actualRows8287
def partOps127 : List WordIR.Op := [.bxor 8222 8223,.rotr 8206 22,.bxor 8224 8225,.band 8206 8179,.band 8206 8152,.bxor 8227 8228,.band 8179 8152,.bxor 8229 8230,.badd 8226 8231,.badd 8221 8232,.badd 8125 8221,.rotr 8234 6,.rotr 8234 11,.bxor 8235 8236,.rotr 8234 25,.bxor 8237 8238,.badd 8153 8239,.band 8234 8207,.bnot 8234,.band 8242 8180,.bxor 8241 8243,.badd 8240 8244,.literal (BitVec.ofNat 32 2453635748),.badd 8245 8246,.badd 8247 6242,.rotr 8233 2,.rotr 8233 13,.bxor 8249 8250,.rotr 8233 22,.bxor 8251 8252,.band 8233 8206,.band 8233 8179,.bxor 8254 8255,.band 8206 8179,.bxor 8256 8257,.badd 8253 8258,.badd 8248 8259,.badd 8152 8248,.rotr 8261 6,.rotr 8261 11,.bxor 8262 8263,.rotr 8261 25,.bxor 8264 8265,.badd 8180 8266,.band 8261 8234,.bnot 8261,.band 8269 8207,.bxor 8268 8270,.badd 8267 8271,.literal (BitVec.ofNat 32 2870763221),.badd 8272 8273,.badd 8274 6248,.rotr 8260 2,.rotr 8260 13,.bxor 8276 8277,.rotr 8260 22,.bxor 8278 8279,.band 8260 8233,.band 8260 8206,.bxor 8281 8282,.band 8233 8206,.bxor 8283 8284,.badd 8280 8285,.badd 8275 8286]
theorem partExact127 : partRows127=WordField.rows actualModulus 8224 partOps127 := by
  simp only [partRows127,partOps127,WordField.rows,rows8224,rows8225,rows8226,rows8227,rows8228,rows8229,rows8230,rows8231,rows8232,rows8233,rows8234,rows8235,rows8236,rows8237,rows8238,rows8239,rows8240,rows8241,rows8242,rows8243,rows8244,rows8245,rows8246,rows8247,rows8248,rows8249,rows8250,rows8251,rows8252,rows8253,rows8254,rows8255,rows8256,rows8257,rows8258,rows8259,rows8260,rows8261,rows8262,rows8263,rows8264,rows8265,rows8266,rows8267,rows8268,rows8269,rows8270,rows8271,rows8272,rows8273,rows8274,rows8275,rows8276,rows8277,rows8278,rows8279,rows8280,rows8281,rows8282,rows8283,rows8284,rows8285,rows8286,rows8287,List.append_assoc,List.append_nil]
theorem partLength127 : partOps127.length=64 := by decide
theorem partStats127 : partRows127.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows127=373632 := by
  simp only [partRows127,List.length_append,MatrixRowBlocks.rows_weight_append,stats8224.1,stats8224.2,stats8225.1,stats8225.2,stats8226.1,stats8226.2,stats8227.1,stats8227.2,stats8228.1,stats8228.2,stats8229.1,stats8229.2,stats8230.1,stats8230.2,stats8231.1,stats8231.2,stats8232.1,stats8232.2,stats8233.1,stats8233.2,stats8234.1,stats8234.2,stats8235.1,stats8235.2,stats8236.1,stats8236.2,stats8237.1,stats8237.2,stats8238.1,stats8238.2,stats8239.1,stats8239.2,stats8240.1,stats8240.2,stats8241.1,stats8241.2,stats8242.1,stats8242.2,stats8243.1,stats8243.2,stats8244.1,stats8244.2,stats8245.1,stats8245.2,stats8246.1,stats8246.2,stats8247.1,stats8247.2,stats8248.1,stats8248.2,stats8249.1,stats8249.2,stats8250.1,stats8250.2,stats8251.1,stats8251.2,stats8252.1,stats8252.2,stats8253.1,stats8253.2,stats8254.1,stats8254.2,stats8255.1,stats8255.2,stats8256.1,stats8256.2,stats8257.1,stats8257.2,stats8258.1,stats8258.2,stats8259.1,stats8259.2,stats8260.1,stats8260.2,stats8261.1,stats8261.2,stats8262.1,stats8262.2,stats8263.1,stats8263.2,stats8264.1,stats8264.2,stats8265.1,stats8265.2,stats8266.1,stats8266.2,stats8267.1,stats8267.2,stats8268.1,stats8268.2,stats8269.1,stats8269.2,stats8270.1,stats8270.2,stats8271.1,stats8271.2,stats8272.1,stats8272.2,stats8273.1,stats8273.2,stats8274.1,stats8274.2,stats8275.1,stats8275.2,stats8276.1,stats8276.2,stats8277.1,stats8277.2,stats8278.1,stats8278.2,stats8279.1,stats8279.2,stats8280.1,stats8280.2,stats8281.1,stats8281.2,stats8282.1,stats8282.2,stats8283.1,stats8283.2,stats8284.1,stats8284.2,stats8285.1,stats8285.2,stats8286.1,stats8286.2,stats8287.1,stats8287.2]
  decide
end PairedPathRoundCheckedRows
