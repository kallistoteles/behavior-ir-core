import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData159
import AuthenticatedBranchRoundInstructionMatrixData160
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10230 : actualRows10230=WordField.canonicalRows actualModulus 10230 (.bxor 10228 10229) := by core033_kernel_decide
theorem stats10230 : actualRows10230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10230=7428 := by core033_kernel_decide
theorem rows10231 : actualRows10231=WordField.canonicalRows actualModulus 10231 (.rotr 10212 22) := by core033_kernel_decide
theorem stats10231 : actualRows10231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10231=5124 := by core033_kernel_decide
theorem rows10232 : actualRows10232=WordField.canonicalRows actualModulus 10232 (.bxor 10230 10231) := by core033_kernel_decide
theorem stats10232 : actualRows10232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10232=7428 := by core033_kernel_decide
theorem rows10233 : actualRows10233=WordField.canonicalRows actualModulus 10233 (.band 10212 10185) := by core033_kernel_decide
theorem stats10233 : actualRows10233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10233=5124 := by core033_kernel_decide
theorem rows10234 : actualRows10234=WordField.canonicalRows actualModulus 10234 (.band 10212 10158) := by core033_kernel_decide
theorem stats10234 : actualRows10234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10234=5124 := by core033_kernel_decide
theorem rows10235 : actualRows10235=WordField.canonicalRows actualModulus 10235 (.bxor 10233 10234) := by core033_kernel_decide
theorem stats10235 : actualRows10235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10235=7428 := by core033_kernel_decide
theorem rows10236 : actualRows10236=WordField.canonicalRows actualModulus 10236 (.band 10185 10158) := by core033_kernel_decide
theorem stats10236 : actualRows10236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10236=5124 := by core033_kernel_decide
theorem rows10237 : actualRows10237=WordField.canonicalRows actualModulus 10237 (.bxor 10235 10236) := by core033_kernel_decide
theorem stats10237 : actualRows10237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10237=7428 := by core033_kernel_decide
theorem rows10238 : actualRows10238=WordField.canonicalRows actualModulus 10238 (.badd 10232 10237) := by core033_kernel_decide
theorem stats10238 : actualRows10238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10238=5388 := by core033_kernel_decide
theorem rows10239 : actualRows10239=WordField.canonicalRows actualModulus 10239 (.badd 10227 10238) := by core033_kernel_decide
theorem stats10239 : actualRows10239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10239=5388 := by core033_kernel_decide
theorem rows10240 : actualRows10240=WordField.canonicalRows actualModulus 10240 (.badd 10131 10227) := by core033_kernel_decide
theorem stats10240 : actualRows10240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10240=5388 := by core033_kernel_decide
theorem rows10241 : actualRows10241=WordField.canonicalRows actualModulus 10241 (.rotr 10240 6) := by core033_kernel_decide
theorem stats10241 : actualRows10241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10241=5124 := by core033_kernel_decide
theorem rows10242 : actualRows10242=WordField.canonicalRows actualModulus 10242 (.rotr 10240 11) := by core033_kernel_decide
theorem stats10242 : actualRows10242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10242=5124 := by core033_kernel_decide
theorem rows10243 : actualRows10243=WordField.canonicalRows actualModulus 10243 (.bxor 10241 10242) := by core033_kernel_decide
theorem stats10243 : actualRows10243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10243=7428 := by core033_kernel_decide
theorem rows10244 : actualRows10244=WordField.canonicalRows actualModulus 10244 (.rotr 10240 25) := by core033_kernel_decide
theorem stats10244 : actualRows10244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10244=5124 := by core033_kernel_decide
theorem rows10245 : actualRows10245=WordField.canonicalRows actualModulus 10245 (.bxor 10243 10244) := by core033_kernel_decide
theorem stats10245 : actualRows10245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10245=7428 := by core033_kernel_decide
theorem rows10246 : actualRows10246=WordField.canonicalRows actualModulus 10246 (.badd 10159 10245) := by core033_kernel_decide
theorem stats10246 : actualRows10246.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10246=5388 := by core033_kernel_decide
theorem rows10247 : actualRows10247=WordField.canonicalRows actualModulus 10247 (.band 10240 10213) := by core033_kernel_decide
theorem stats10247 : actualRows10247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10247=5124 := by core033_kernel_decide
theorem rows10248 : actualRows10248=WordField.canonicalRows actualModulus 10248 (.bnot 10240) := by core033_kernel_decide
theorem stats10248 : actualRows10248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10248=6276 := by core033_kernel_decide
theorem rows10249 : actualRows10249=WordField.canonicalRows actualModulus 10249 (.band 10248 10186) := by core033_kernel_decide
theorem stats10249 : actualRows10249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10249=5124 := by core033_kernel_decide
theorem rows10250 : actualRows10250=WordField.canonicalRows actualModulus 10250 (.bxor 10247 10249) := by core033_kernel_decide
theorem stats10250 : actualRows10250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10250=7428 := by core033_kernel_decide
theorem rows10251 : actualRows10251=WordField.canonicalRows actualModulus 10251 (.badd 10246 10250) := by core033_kernel_decide
theorem stats10251 : actualRows10251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10251=5388 := by core033_kernel_decide
theorem rows10252 : actualRows10252=WordField.canonicalRows actualModulus 10252 (.literal (BitVec.ofNat 32 1747873779)) := by core033_kernel_decide
theorem stats10252 : actualRows10252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10252=4188 := by core033_kernel_decide
theorem rows10253 : actualRows10253=WordField.canonicalRows actualModulus 10253 (.badd 10251 10252) := by core033_kernel_decide
theorem stats10253 : actualRows10253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10253=5388 := by core033_kernel_decide
theorem rows10254 : actualRows10254=WordField.canonicalRows actualModulus 10254 (.badd 10253 8651) := by core033_kernel_decide
theorem stats10254 : actualRows10254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10254=5388 := by core033_kernel_decide
theorem rows10255 : actualRows10255=WordField.canonicalRows actualModulus 10255 (.rotr 10239 2) := by core033_kernel_decide
theorem stats10255 : actualRows10255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10255=5124 := by core033_kernel_decide
theorem rows10256 : actualRows10256=WordField.canonicalRows actualModulus 10256 (.rotr 10239 13) := by core033_kernel_decide
theorem stats10256 : actualRows10256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10256=5124 := by core033_kernel_decide
theorem rows10257 : actualRows10257=WordField.canonicalRows actualModulus 10257 (.bxor 10255 10256) := by core033_kernel_decide
theorem stats10257 : actualRows10257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10257=7428 := by core033_kernel_decide
theorem rows10258 : actualRows10258=WordField.canonicalRows actualModulus 10258 (.rotr 10239 22) := by core033_kernel_decide
theorem stats10258 : actualRows10258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10258=5124 := by core033_kernel_decide
theorem rows10259 : actualRows10259=WordField.canonicalRows actualModulus 10259 (.bxor 10257 10258) := by core033_kernel_decide
theorem stats10259 : actualRows10259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10259=7428 := by core033_kernel_decide
theorem rows10260 : actualRows10260=WordField.canonicalRows actualModulus 10260 (.band 10239 10212) := by core033_kernel_decide
theorem stats10260 : actualRows10260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10260=5124 := by core033_kernel_decide
theorem rows10261 : actualRows10261=WordField.canonicalRows actualModulus 10261 (.band 10239 10185) := by core033_kernel_decide
theorem stats10261 : actualRows10261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10261=5124 := by core033_kernel_decide
theorem rows10262 : actualRows10262=WordField.canonicalRows actualModulus 10262 (.bxor 10260 10261) := by core033_kernel_decide
theorem stats10262 : actualRows10262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10262=7428 := by core033_kernel_decide
theorem rows10263 : actualRows10263=WordField.canonicalRows actualModulus 10263 (.band 10212 10185) := by core033_kernel_decide
theorem stats10263 : actualRows10263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10263=5124 := by core033_kernel_decide
theorem rows10264 : actualRows10264=WordField.canonicalRows actualModulus 10264 (.bxor 10262 10263) := by core033_kernel_decide
theorem stats10264 : actualRows10264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10264=7428 := by core033_kernel_decide
theorem rows10265 : actualRows10265=WordField.canonicalRows actualModulus 10265 (.badd 10259 10264) := by core033_kernel_decide
theorem stats10265 : actualRows10265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10265=5388 := by core033_kernel_decide
theorem rows10266 : actualRows10266=WordField.canonicalRows actualModulus 10266 (.badd 10254 10265) := by core033_kernel_decide
theorem stats10266 : actualRows10266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10266=5388 := by core033_kernel_decide
theorem rows10267 : actualRows10267=WordField.canonicalRows actualModulus 10267 (.badd 10158 10254) := by core033_kernel_decide
theorem stats10267 : actualRows10267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10267=5388 := by core033_kernel_decide
theorem rows10268 : actualRows10268=WordField.canonicalRows actualModulus 10268 (.rotr 10267 6) := by core033_kernel_decide
theorem stats10268 : actualRows10268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10268=5124 := by core033_kernel_decide
theorem rows10269 : actualRows10269=WordField.canonicalRows actualModulus 10269 (.rotr 10267 11) := by core033_kernel_decide
theorem stats10269 : actualRows10269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10269=5124 := by core033_kernel_decide
theorem rows10270 : actualRows10270=WordField.canonicalRows actualModulus 10270 (.bxor 10268 10269) := by core033_kernel_decide
theorem stats10270 : actualRows10270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10270=7428 := by core033_kernel_decide
theorem rows10271 : actualRows10271=WordField.canonicalRows actualModulus 10271 (.rotr 10267 25) := by core033_kernel_decide
theorem stats10271 : actualRows10271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10271=5124 := by core033_kernel_decide
theorem rows10272 : actualRows10272=WordField.canonicalRows actualModulus 10272 (.bxor 10270 10271) := by core033_kernel_decide
theorem stats10272 : actualRows10272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10272=7428 := by core033_kernel_decide
theorem rows10273 : actualRows10273=WordField.canonicalRows actualModulus 10273 (.badd 10186 10272) := by core033_kernel_decide
theorem stats10273 : actualRows10273.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10273=5388 := by core033_kernel_decide
theorem rows10274 : actualRows10274=WordField.canonicalRows actualModulus 10274 (.band 10267 10240) := by core033_kernel_decide
theorem stats10274 : actualRows10274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10274=5124 := by core033_kernel_decide
theorem rows10275 : actualRows10275=WordField.canonicalRows actualModulus 10275 (.bnot 10267) := by core033_kernel_decide
theorem stats10275 : actualRows10275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10275=6276 := by core033_kernel_decide
theorem rows10276 : actualRows10276=WordField.canonicalRows actualModulus 10276 (.band 10275 10213) := by core033_kernel_decide
theorem stats10276 : actualRows10276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10276=5124 := by core033_kernel_decide
theorem rows10277 : actualRows10277=WordField.canonicalRows actualModulus 10277 (.bxor 10274 10276) := by core033_kernel_decide
theorem stats10277 : actualRows10277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10277=7428 := by core033_kernel_decide
theorem rows10278 : actualRows10278=WordField.canonicalRows actualModulus 10278 (.badd 10273 10277) := by core033_kernel_decide
theorem stats10278 : actualRows10278.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10278=5388 := by core033_kernel_decide
theorem rows10279 : actualRows10279=WordField.canonicalRows actualModulus 10279 (.literal (BitVec.ofNat 32 1955562222)) := by core033_kernel_decide
theorem stats10279 : actualRows10279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10279=4044 := by core033_kernel_decide
theorem rows10280 : actualRows10280=WordField.canonicalRows actualModulus 10280 (.badd 10278 10279) := by core033_kernel_decide
theorem stats10280 : actualRows10280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10280=5388 := by core033_kernel_decide
theorem rows10281 : actualRows10281=WordField.canonicalRows actualModulus 10281 (.badd 10280 8664) := by core033_kernel_decide
theorem stats10281 : actualRows10281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10281=5388 := by core033_kernel_decide
theorem rows10282 : actualRows10282=WordField.canonicalRows actualModulus 10282 (.rotr 10266 2) := by core033_kernel_decide
theorem stats10282 : actualRows10282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10282=5124 := by core033_kernel_decide
theorem rows10283 : actualRows10283=WordField.canonicalRows actualModulus 10283 (.rotr 10266 13) := by core033_kernel_decide
theorem stats10283 : actualRows10283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10283=5124 := by core033_kernel_decide
theorem rows10284 : actualRows10284=WordField.canonicalRows actualModulus 10284 (.bxor 10282 10283) := by core033_kernel_decide
theorem stats10284 : actualRows10284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10284=7428 := by core033_kernel_decide
theorem rows10285 : actualRows10285=WordField.canonicalRows actualModulus 10285 (.rotr 10266 22) := by core033_kernel_decide
theorem stats10285 : actualRows10285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10285=5124 := by core033_kernel_decide
theorem rows10286 : actualRows10286=WordField.canonicalRows actualModulus 10286 (.bxor 10284 10285) := by core033_kernel_decide
theorem stats10286 : actualRows10286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10286=7428 := by core033_kernel_decide
theorem rows10287 : actualRows10287=WordField.canonicalRows actualModulus 10287 (.band 10266 10239) := by core033_kernel_decide
theorem stats10287 : actualRows10287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10287=5124 := by core033_kernel_decide
theorem rows10288 : actualRows10288=WordField.canonicalRows actualModulus 10288 (.band 10266 10212) := by core033_kernel_decide
theorem stats10288 : actualRows10288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10288=5124 := by core033_kernel_decide
theorem rows10289 : actualRows10289=WordField.canonicalRows actualModulus 10289 (.bxor 10287 10288) := by core033_kernel_decide
theorem stats10289 : actualRows10289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10289=7428 := by core033_kernel_decide
theorem rows10290 : actualRows10290=WordField.canonicalRows actualModulus 10290 (.band 10239 10212) := by core033_kernel_decide
theorem stats10290 : actualRows10290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10290=5124 := by core033_kernel_decide
theorem rows10291 : actualRows10291=WordField.canonicalRows actualModulus 10291 (.bxor 10289 10290) := by core033_kernel_decide
theorem stats10291 : actualRows10291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10291=7428 := by core033_kernel_decide
theorem rows10292 : actualRows10292=WordField.canonicalRows actualModulus 10292 (.badd 10286 10291) := by core033_kernel_decide
theorem stats10292 : actualRows10292.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10292=5388 := by core033_kernel_decide
theorem rows10293 : actualRows10293=WordField.canonicalRows actualModulus 10293 (.badd 10281 10292) := by core033_kernel_decide
theorem stats10293 : actualRows10293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10293=5388 := by core033_kernel_decide
def partRows158 : List R1CS.Row := actualRows10230++actualRows10231++actualRows10232++actualRows10233++actualRows10234++actualRows10235++actualRows10236++actualRows10237++actualRows10238++actualRows10239++actualRows10240++actualRows10241++actualRows10242++actualRows10243++actualRows10244++actualRows10245++actualRows10246++actualRows10247++actualRows10248++actualRows10249++actualRows10250++actualRows10251++actualRows10252++actualRows10253++actualRows10254++actualRows10255++actualRows10256++actualRows10257++actualRows10258++actualRows10259++actualRows10260++actualRows10261++actualRows10262++actualRows10263++actualRows10264++actualRows10265++actualRows10266++actualRows10267++actualRows10268++actualRows10269++actualRows10270++actualRows10271++actualRows10272++actualRows10273++actualRows10274++actualRows10275++actualRows10276++actualRows10277++actualRows10278++actualRows10279++actualRows10280++actualRows10281++actualRows10282++actualRows10283++actualRows10284++actualRows10285++actualRows10286++actualRows10287++actualRows10288++actualRows10289++actualRows10290++actualRows10291++actualRows10292++actualRows10293
def partOps158 : List WordIR.Op := [.bxor 10228 10229,.rotr 10212 22,.bxor 10230 10231,.band 10212 10185,.band 10212 10158,.bxor 10233 10234,.band 10185 10158,.bxor 10235 10236,.badd 10232 10237,.badd 10227 10238,.badd 10131 10227,.rotr 10240 6,.rotr 10240 11,.bxor 10241 10242,.rotr 10240 25,.bxor 10243 10244,.badd 10159 10245,.band 10240 10213,.bnot 10240,.band 10248 10186,.bxor 10247 10249,.badd 10246 10250,.literal (BitVec.ofNat 32 1747873779),.badd 10251 10252,.badd 10253 8651,.rotr 10239 2,.rotr 10239 13,.bxor 10255 10256,.rotr 10239 22,.bxor 10257 10258,.band 10239 10212,.band 10239 10185,.bxor 10260 10261,.band 10212 10185,.bxor 10262 10263,.badd 10259 10264,.badd 10254 10265,.badd 10158 10254,.rotr 10267 6,.rotr 10267 11,.bxor 10268 10269,.rotr 10267 25,.bxor 10270 10271,.badd 10186 10272,.band 10267 10240,.bnot 10267,.band 10275 10213,.bxor 10274 10276,.badd 10273 10277,.literal (BitVec.ofNat 32 1955562222),.badd 10278 10279,.badd 10280 8664,.rotr 10266 2,.rotr 10266 13,.bxor 10282 10283,.rotr 10266 22,.bxor 10284 10285,.band 10266 10239,.band 10266 10212,.bxor 10287 10288,.band 10239 10212,.bxor 10289 10290,.badd 10286 10291,.badd 10281 10292]
theorem partExact158 : partRows158=WordField.rows actualModulus 10230 partOps158 := by
  simp only [partRows158,partOps158,WordField.rows,rows10230,rows10231,rows10232,rows10233,rows10234,rows10235,rows10236,rows10237,rows10238,rows10239,rows10240,rows10241,rows10242,rows10243,rows10244,rows10245,rows10246,rows10247,rows10248,rows10249,rows10250,rows10251,rows10252,rows10253,rows10254,rows10255,rows10256,rows10257,rows10258,rows10259,rows10260,rows10261,rows10262,rows10263,rows10264,rows10265,rows10266,rows10267,rows10268,rows10269,rows10270,rows10271,rows10272,rows10273,rows10274,rows10275,rows10276,rows10277,rows10278,rows10279,rows10280,rows10281,rows10282,rows10283,rows10284,rows10285,rows10286,rows10287,rows10288,rows10289,rows10290,rows10291,rows10292,rows10293,List.append_assoc,List.append_nil]
theorem partLength158 : partOps158.length=64 := by decide
theorem partStats158 : partRows158.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows158=373920 := by
  simp only [partRows158,List.length_append,MatrixRowBlocks.rows_weight_append,stats10230.1,stats10230.2,stats10231.1,stats10231.2,stats10232.1,stats10232.2,stats10233.1,stats10233.2,stats10234.1,stats10234.2,stats10235.1,stats10235.2,stats10236.1,stats10236.2,stats10237.1,stats10237.2,stats10238.1,stats10238.2,stats10239.1,stats10239.2,stats10240.1,stats10240.2,stats10241.1,stats10241.2,stats10242.1,stats10242.2,stats10243.1,stats10243.2,stats10244.1,stats10244.2,stats10245.1,stats10245.2,stats10246.1,stats10246.2,stats10247.1,stats10247.2,stats10248.1,stats10248.2,stats10249.1,stats10249.2,stats10250.1,stats10250.2,stats10251.1,stats10251.2,stats10252.1,stats10252.2,stats10253.1,stats10253.2,stats10254.1,stats10254.2,stats10255.1,stats10255.2,stats10256.1,stats10256.2,stats10257.1,stats10257.2,stats10258.1,stats10258.2,stats10259.1,stats10259.2,stats10260.1,stats10260.2,stats10261.1,stats10261.2,stats10262.1,stats10262.2,stats10263.1,stats10263.2,stats10264.1,stats10264.2,stats10265.1,stats10265.2,stats10266.1,stats10266.2,stats10267.1,stats10267.2,stats10268.1,stats10268.2,stats10269.1,stats10269.2,stats10270.1,stats10270.2,stats10271.1,stats10271.2,stats10272.1,stats10272.2,stats10273.1,stats10273.2,stats10274.1,stats10274.2,stats10275.1,stats10275.2,stats10276.1,stats10276.2,stats10277.1,stats10277.2,stats10278.1,stats10278.2,stats10279.1,stats10279.2,stats10280.1,stats10280.2,stats10281.1,stats10281.2,stats10282.1,stats10282.2,stats10283.1,stats10283.2,stats10284.1,stats10284.2,stats10285.1,stats10285.2,stats10286.1,stats10286.2,stats10287.1,stats10287.2,stats10288.1,stats10288.2,stats10289.1,stats10289.2,stats10290.1,stats10290.2,stats10291.1,stats10291.2,stats10292.1,stats10292.2,stats10293.1,stats10293.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
