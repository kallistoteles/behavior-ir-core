import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData128
import AuthenticatedBranchRoundInstructionMatrixData129
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8246 : actualRows8246=WordField.canonicalRows actualModulus 8246 (.bxor 8244 8245) := by core033_kernel_decide
theorem stats8246 : actualRows8246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8246=7428 := by core033_kernel_decide
theorem rows8247 : actualRows8247=WordField.canonicalRows actualModulus 8247 (.badd 8241 8246) := by core033_kernel_decide
theorem stats8247 : actualRows8247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8247=5388 := by core033_kernel_decide
theorem rows8248 : actualRows8248=WordField.canonicalRows actualModulus 8248 (.badd 8247 6937) := by core033_kernel_decide
theorem stats8248 : actualRows8248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8248=5388 := by core033_kernel_decide
theorem rows8249 : actualRows8249=WordField.canonicalRows actualModulus 8249 (.rotr 8235 17) := by core033_kernel_decide
theorem stats8249 : actualRows8249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8249=5124 := by core033_kernel_decide
theorem rows8250 : actualRows8250=WordField.canonicalRows actualModulus 8250 (.rotr 8235 19) := by core033_kernel_decide
theorem stats8250 : actualRows8250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8250=5124 := by core033_kernel_decide
theorem rows8251 : actualRows8251=WordField.canonicalRows actualModulus 8251 (.bxor 8249 8250) := by core033_kernel_decide
theorem stats8251 : actualRows8251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8251=7428 := by core033_kernel_decide
theorem rows8252 : actualRows8252=WordField.canonicalRows actualModulus 8252 (.shr 8235 10) := by core033_kernel_decide
theorem stats8252 : actualRows8252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8252=4404 := by core033_kernel_decide
theorem rows8253 : actualRows8253=WordField.canonicalRows actualModulus 8253 (.bxor 8251 8252) := by core033_kernel_decide
theorem stats8253 : actualRows8253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8253=7428 := by core033_kernel_decide
theorem rows8254 : actualRows8254=WordField.canonicalRows actualModulus 8254 (.badd 8253 8170) := by core033_kernel_decide
theorem stats8254 : actualRows8254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8254=5388 := by core033_kernel_decide
theorem rows8255 : actualRows8255=WordField.canonicalRows actualModulus 8255 (.rotr 6949 7) := by core033_kernel_decide
theorem stats8255 : actualRows8255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8255=5124 := by core033_kernel_decide
theorem rows8256 : actualRows8256=WordField.canonicalRows actualModulus 8256 (.rotr 6949 18) := by core033_kernel_decide
theorem stats8256 : actualRows8256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8256=5124 := by core033_kernel_decide
theorem rows8257 : actualRows8257=WordField.canonicalRows actualModulus 8257 (.bxor 8255 8256) := by core033_kernel_decide
theorem stats8257 : actualRows8257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8257=7428 := by core033_kernel_decide
theorem rows8258 : actualRows8258=WordField.canonicalRows actualModulus 8258 (.shr 6949 3) := by core033_kernel_decide
theorem stats8258 : actualRows8258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8258=4908 := by core033_kernel_decide
theorem rows8259 : actualRows8259=WordField.canonicalRows actualModulus 8259 (.bxor 8257 8258) := by core033_kernel_decide
theorem stats8259 : actualRows8259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8259=7428 := by core033_kernel_decide
theorem rows8260 : actualRows8260=WordField.canonicalRows actualModulus 8260 (.badd 8254 8259) := by core033_kernel_decide
theorem stats8260 : actualRows8260.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8260=5388 := by core033_kernel_decide
theorem rows8261 : actualRows8261=WordField.canonicalRows actualModulus 8261 (.badd 8260 6943) := by core033_kernel_decide
theorem stats8261 : actualRows8261.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8261=5388 := by core033_kernel_decide
theorem rows8262 : actualRows8262=WordField.canonicalRows actualModulus 8262 (.rotr 8248 17) := by core033_kernel_decide
theorem stats8262 : actualRows8262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8262=5124 := by core033_kernel_decide
theorem rows8263 : actualRows8263=WordField.canonicalRows actualModulus 8263 (.rotr 8248 19) := by core033_kernel_decide
theorem stats8263 : actualRows8263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8263=5124 := by core033_kernel_decide
theorem rows8264 : actualRows8264=WordField.canonicalRows actualModulus 8264 (.bxor 8262 8263) := by core033_kernel_decide
theorem stats8264 : actualRows8264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8264=7428 := by core033_kernel_decide
theorem rows8265 : actualRows8265=WordField.canonicalRows actualModulus 8265 (.shr 8248 10) := by core033_kernel_decide
theorem stats8265 : actualRows8265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8265=4404 := by core033_kernel_decide
theorem rows8266 : actualRows8266=WordField.canonicalRows actualModulus 8266 (.bxor 8264 8265) := by core033_kernel_decide
theorem stats8266 : actualRows8266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8266=7428 := by core033_kernel_decide
theorem rows8267 : actualRows8267=WordField.canonicalRows actualModulus 8267 (.badd 8266 8183) := by core033_kernel_decide
theorem stats8267 : actualRows8267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8267=5388 := by core033_kernel_decide
theorem rows8268 : actualRows8268=WordField.canonicalRows actualModulus 8268 (.rotr 6955 7) := by core033_kernel_decide
theorem stats8268 : actualRows8268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8268=5124 := by core033_kernel_decide
theorem rows8269 : actualRows8269=WordField.canonicalRows actualModulus 8269 (.rotr 6955 18) := by core033_kernel_decide
theorem stats8269 : actualRows8269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8269=5124 := by core033_kernel_decide
theorem rows8270 : actualRows8270=WordField.canonicalRows actualModulus 8270 (.bxor 8268 8269) := by core033_kernel_decide
theorem stats8270 : actualRows8270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8270=7428 := by core033_kernel_decide
theorem rows8271 : actualRows8271=WordField.canonicalRows actualModulus 8271 (.shr 6955 3) := by core033_kernel_decide
theorem stats8271 : actualRows8271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8271=4908 := by core033_kernel_decide
theorem rows8272 : actualRows8272=WordField.canonicalRows actualModulus 8272 (.bxor 8270 8271) := by core033_kernel_decide
theorem stats8272 : actualRows8272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8272=7428 := by core033_kernel_decide
theorem rows8273 : actualRows8273=WordField.canonicalRows actualModulus 8273 (.badd 8267 8272) := by core033_kernel_decide
theorem stats8273 : actualRows8273.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8273=5388 := by core033_kernel_decide
theorem rows8274 : actualRows8274=WordField.canonicalRows actualModulus 8274 (.badd 8273 6949) := by core033_kernel_decide
theorem stats8274 : actualRows8274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8274=5388 := by core033_kernel_decide
theorem rows8275 : actualRows8275=WordField.canonicalRows actualModulus 8275 (.rotr 8261 17) := by core033_kernel_decide
theorem stats8275 : actualRows8275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8275=5124 := by core033_kernel_decide
theorem rows8276 : actualRows8276=WordField.canonicalRows actualModulus 8276 (.rotr 8261 19) := by core033_kernel_decide
theorem stats8276 : actualRows8276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8276=5124 := by core033_kernel_decide
theorem rows8277 : actualRows8277=WordField.canonicalRows actualModulus 8277 (.bxor 8275 8276) := by core033_kernel_decide
theorem stats8277 : actualRows8277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8277=7428 := by core033_kernel_decide
theorem rows8278 : actualRows8278=WordField.canonicalRows actualModulus 8278 (.shr 8261 10) := by core033_kernel_decide
theorem stats8278 : actualRows8278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8278=4404 := by core033_kernel_decide
theorem rows8279 : actualRows8279=WordField.canonicalRows actualModulus 8279 (.bxor 8277 8278) := by core033_kernel_decide
theorem stats8279 : actualRows8279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8279=7428 := by core033_kernel_decide
theorem rows8280 : actualRows8280=WordField.canonicalRows actualModulus 8280 (.badd 8279 8196) := by core033_kernel_decide
theorem stats8280 : actualRows8280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8280=5388 := by core033_kernel_decide
theorem rows8281 : actualRows8281=WordField.canonicalRows actualModulus 8281 (.rotr 6961 7) := by core033_kernel_decide
theorem stats8281 : actualRows8281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8281=5124 := by core033_kernel_decide
theorem rows8282 : actualRows8282=WordField.canonicalRows actualModulus 8282 (.rotr 6961 18) := by core033_kernel_decide
theorem stats8282 : actualRows8282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8282=5124 := by core033_kernel_decide
theorem rows8283 : actualRows8283=WordField.canonicalRows actualModulus 8283 (.bxor 8281 8282) := by core033_kernel_decide
theorem stats8283 : actualRows8283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8283=7428 := by core033_kernel_decide
theorem rows8284 : actualRows8284=WordField.canonicalRows actualModulus 8284 (.shr 6961 3) := by core033_kernel_decide
theorem stats8284 : actualRows8284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8284=4908 := by core033_kernel_decide
theorem rows8285 : actualRows8285=WordField.canonicalRows actualModulus 8285 (.bxor 8283 8284) := by core033_kernel_decide
theorem stats8285 : actualRows8285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8285=7428 := by core033_kernel_decide
theorem rows8286 : actualRows8286=WordField.canonicalRows actualModulus 8286 (.badd 8280 8285) := by core033_kernel_decide
theorem stats8286 : actualRows8286.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8286=5388 := by core033_kernel_decide
theorem rows8287 : actualRows8287=WordField.canonicalRows actualModulus 8287 (.badd 8286 6955) := by core033_kernel_decide
theorem stats8287 : actualRows8287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8287=5388 := by core033_kernel_decide
theorem rows8288 : actualRows8288=WordField.canonicalRows actualModulus 8288 (.rotr 8274 17) := by core033_kernel_decide
theorem stats8288 : actualRows8288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8288=5124 := by core033_kernel_decide
theorem rows8289 : actualRows8289=WordField.canonicalRows actualModulus 8289 (.rotr 8274 19) := by core033_kernel_decide
theorem stats8289 : actualRows8289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8289=5124 := by core033_kernel_decide
theorem rows8290 : actualRows8290=WordField.canonicalRows actualModulus 8290 (.bxor 8288 8289) := by core033_kernel_decide
theorem stats8290 : actualRows8290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8290=7428 := by core033_kernel_decide
theorem rows8291 : actualRows8291=WordField.canonicalRows actualModulus 8291 (.shr 8274 10) := by core033_kernel_decide
theorem stats8291 : actualRows8291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8291=4404 := by core033_kernel_decide
theorem rows8292 : actualRows8292=WordField.canonicalRows actualModulus 8292 (.bxor 8290 8291) := by core033_kernel_decide
theorem stats8292 : actualRows8292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8292=7428 := by core033_kernel_decide
theorem rows8293 : actualRows8293=WordField.canonicalRows actualModulus 8293 (.badd 8292 8209) := by core033_kernel_decide
theorem stats8293 : actualRows8293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8293=5388 := by core033_kernel_decide
theorem rows8294 : actualRows8294=WordField.canonicalRows actualModulus 8294 (.rotr 6967 7) := by core033_kernel_decide
theorem stats8294 : actualRows8294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8294=5124 := by core033_kernel_decide
theorem rows8295 : actualRows8295=WordField.canonicalRows actualModulus 8295 (.rotr 6967 18) := by core033_kernel_decide
theorem stats8295 : actualRows8295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8295=5124 := by core033_kernel_decide
theorem rows8296 : actualRows8296=WordField.canonicalRows actualModulus 8296 (.bxor 8294 8295) := by core033_kernel_decide
theorem stats8296 : actualRows8296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8296=7428 := by core033_kernel_decide
theorem rows8297 : actualRows8297=WordField.canonicalRows actualModulus 8297 (.shr 6967 3) := by core033_kernel_decide
theorem stats8297 : actualRows8297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8297=4908 := by core033_kernel_decide
theorem rows8298 : actualRows8298=WordField.canonicalRows actualModulus 8298 (.bxor 8296 8297) := by core033_kernel_decide
theorem stats8298 : actualRows8298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8298=7428 := by core033_kernel_decide
theorem rows8299 : actualRows8299=WordField.canonicalRows actualModulus 8299 (.badd 8293 8298) := by core033_kernel_decide
theorem stats8299 : actualRows8299.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8299=5388 := by core033_kernel_decide
theorem rows8300 : actualRows8300=WordField.canonicalRows actualModulus 8300 (.badd 8299 6961) := by core033_kernel_decide
theorem stats8300 : actualRows8300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8300=5388 := by core033_kernel_decide
theorem rows8301 : actualRows8301=WordField.canonicalRows actualModulus 8301 (.rotr 8287 17) := by core033_kernel_decide
theorem stats8301 : actualRows8301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8301=5124 := by core033_kernel_decide
theorem rows8302 : actualRows8302=WordField.canonicalRows actualModulus 8302 (.rotr 8287 19) := by core033_kernel_decide
theorem stats8302 : actualRows8302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8302=5124 := by core033_kernel_decide
theorem rows8303 : actualRows8303=WordField.canonicalRows actualModulus 8303 (.bxor 8301 8302) := by core033_kernel_decide
theorem stats8303 : actualRows8303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8303=7428 := by core033_kernel_decide
theorem rows8304 : actualRows8304=WordField.canonicalRows actualModulus 8304 (.shr 8287 10) := by core033_kernel_decide
theorem stats8304 : actualRows8304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8304=4404 := by core033_kernel_decide
theorem rows8305 : actualRows8305=WordField.canonicalRows actualModulus 8305 (.bxor 8303 8304) := by core033_kernel_decide
theorem stats8305 : actualRows8305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8305=7428 := by core033_kernel_decide
theorem rows8306 : actualRows8306=WordField.canonicalRows actualModulus 8306 (.badd 8305 8222) := by core033_kernel_decide
theorem stats8306 : actualRows8306.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8306=5388 := by core033_kernel_decide
theorem rows8307 : actualRows8307=WordField.canonicalRows actualModulus 8307 (.rotr 6973 7) := by core033_kernel_decide
theorem stats8307 : actualRows8307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8307=5124 := by core033_kernel_decide
theorem rows8308 : actualRows8308=WordField.canonicalRows actualModulus 8308 (.rotr 6973 18) := by core033_kernel_decide
theorem stats8308 : actualRows8308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8308=5124 := by core033_kernel_decide
theorem rows8309 : actualRows8309=WordField.canonicalRows actualModulus 8309 (.bxor 8307 8308) := by core033_kernel_decide
theorem stats8309 : actualRows8309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8309=7428 := by core033_kernel_decide
def partRows127 : List R1CS.Row := actualRows8246++actualRows8247++actualRows8248++actualRows8249++actualRows8250++actualRows8251++actualRows8252++actualRows8253++actualRows8254++actualRows8255++actualRows8256++actualRows8257++actualRows8258++actualRows8259++actualRows8260++actualRows8261++actualRows8262++actualRows8263++actualRows8264++actualRows8265++actualRows8266++actualRows8267++actualRows8268++actualRows8269++actualRows8270++actualRows8271++actualRows8272++actualRows8273++actualRows8274++actualRows8275++actualRows8276++actualRows8277++actualRows8278++actualRows8279++actualRows8280++actualRows8281++actualRows8282++actualRows8283++actualRows8284++actualRows8285++actualRows8286++actualRows8287++actualRows8288++actualRows8289++actualRows8290++actualRows8291++actualRows8292++actualRows8293++actualRows8294++actualRows8295++actualRows8296++actualRows8297++actualRows8298++actualRows8299++actualRows8300++actualRows8301++actualRows8302++actualRows8303++actualRows8304++actualRows8305++actualRows8306++actualRows8307++actualRows8308++actualRows8309
def partOps127 : List WordIR.Op := [.bxor 8244 8245,.badd 8241 8246,.badd 8247 6937,.rotr 8235 17,.rotr 8235 19,.bxor 8249 8250,.shr 8235 10,.bxor 8251 8252,.badd 8253 8170,.rotr 6949 7,.rotr 6949 18,.bxor 8255 8256,.shr 6949 3,.bxor 8257 8258,.badd 8254 8259,.badd 8260 6943,.rotr 8248 17,.rotr 8248 19,.bxor 8262 8263,.shr 8248 10,.bxor 8264 8265,.badd 8266 8183,.rotr 6955 7,.rotr 6955 18,.bxor 8268 8269,.shr 6955 3,.bxor 8270 8271,.badd 8267 8272,.badd 8273 6949,.rotr 8261 17,.rotr 8261 19,.bxor 8275 8276,.shr 8261 10,.bxor 8277 8278,.badd 8279 8196,.rotr 6961 7,.rotr 6961 18,.bxor 8281 8282,.shr 6961 3,.bxor 8283 8284,.badd 8280 8285,.badd 8286 6955,.rotr 8274 17,.rotr 8274 19,.bxor 8288 8289,.shr 8274 10,.bxor 8290 8291,.badd 8292 8209,.rotr 6967 7,.rotr 6967 18,.bxor 8294 8295,.shr 6967 3,.bxor 8296 8297,.badd 8293 8298,.badd 8299 6961,.rotr 8287 17,.rotr 8287 19,.bxor 8301 8302,.shr 8287 10,.bxor 8303 8304,.badd 8305 8222,.rotr 6973 7,.rotr 6973 18,.bxor 8307 8308]
theorem partExact127 : partRows127=WordField.rows actualModulus 8246 partOps127 := by
  simp only [partRows127,partOps127,WordField.rows,rows8246,rows8247,rows8248,rows8249,rows8250,rows8251,rows8252,rows8253,rows8254,rows8255,rows8256,rows8257,rows8258,rows8259,rows8260,rows8261,rows8262,rows8263,rows8264,rows8265,rows8266,rows8267,rows8268,rows8269,rows8270,rows8271,rows8272,rows8273,rows8274,rows8275,rows8276,rows8277,rows8278,rows8279,rows8280,rows8281,rows8282,rows8283,rows8284,rows8285,rows8286,rows8287,rows8288,rows8289,rows8290,rows8291,rows8292,rows8293,rows8294,rows8295,rows8296,rows8297,rows8298,rows8299,rows8300,rows8301,rows8302,rows8303,rows8304,rows8305,rows8306,rows8307,rows8308,rows8309,List.append_assoc,List.append_nil]
theorem partLength127 : partOps127.length=64 := by decide
theorem partStats127 : partRows127.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows127=373512 := by
  simp only [partRows127,List.length_append,MatrixRowBlocks.rows_weight_append,stats8246.1,stats8246.2,stats8247.1,stats8247.2,stats8248.1,stats8248.2,stats8249.1,stats8249.2,stats8250.1,stats8250.2,stats8251.1,stats8251.2,stats8252.1,stats8252.2,stats8253.1,stats8253.2,stats8254.1,stats8254.2,stats8255.1,stats8255.2,stats8256.1,stats8256.2,stats8257.1,stats8257.2,stats8258.1,stats8258.2,stats8259.1,stats8259.2,stats8260.1,stats8260.2,stats8261.1,stats8261.2,stats8262.1,stats8262.2,stats8263.1,stats8263.2,stats8264.1,stats8264.2,stats8265.1,stats8265.2,stats8266.1,stats8266.2,stats8267.1,stats8267.2,stats8268.1,stats8268.2,stats8269.1,stats8269.2,stats8270.1,stats8270.2,stats8271.1,stats8271.2,stats8272.1,stats8272.2,stats8273.1,stats8273.2,stats8274.1,stats8274.2,stats8275.1,stats8275.2,stats8276.1,stats8276.2,stats8277.1,stats8277.2,stats8278.1,stats8278.2,stats8279.1,stats8279.2,stats8280.1,stats8280.2,stats8281.1,stats8281.2,stats8282.1,stats8282.2,stats8283.1,stats8283.2,stats8284.1,stats8284.2,stats8285.1,stats8285.2,stats8286.1,stats8286.2,stats8287.1,stats8287.2,stats8288.1,stats8288.2,stats8289.1,stats8289.2,stats8290.1,stats8290.2,stats8291.1,stats8291.2,stats8292.1,stats8292.2,stats8293.1,stats8293.2,stats8294.1,stats8294.2,stats8295.1,stats8295.2,stats8296.1,stats8296.2,stats8297.1,stats8297.2,stats8298.1,stats8298.2,stats8299.1,stats8299.2,stats8300.1,stats8300.2,stats8301.1,stats8301.2,stats8302.1,stats8302.2,stats8303.1,stats8303.2,stats8304.1,stats8304.2,stats8305.1,stats8305.2,stats8306.1,stats8306.2,stats8307.1,stats8307.2,stats8308.1,stats8308.2,stats8309.1,stats8309.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
