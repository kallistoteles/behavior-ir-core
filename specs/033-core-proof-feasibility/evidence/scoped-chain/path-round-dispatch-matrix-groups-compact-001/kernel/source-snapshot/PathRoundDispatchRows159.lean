import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData159
import PathRoundDispatchInstructionMatrixData160
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10219 : actualRows10219=WordField.canonicalRows actualModulus 10219 (.badd 10216 10218) := by core033_kernel_decide
theorem stats10219 : actualRows10219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10219=5388 := by core033_kernel_decide
theorem rows10220 : actualRows10220=WordField.canonicalRows actualModulus 10220 (.bnot 10219) := by core033_kernel_decide
theorem stats10220 : actualRows10220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10220=6276 := by core033_kernel_decide
theorem rows10221 : actualRows10221=WordField.canonicalRows actualModulus 10221 (.band 10214 10220) := by core033_kernel_decide
theorem stats10221 : actualRows10221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10221=5124 := by core033_kernel_decide
theorem rows10222 : actualRows10222=WordField.canonicalRows actualModulus 10222 (.bxor 10209 10221) := by core033_kernel_decide
theorem stats10222 : actualRows10222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10222=7428 := by core033_kernel_decide
theorem rows10223 : actualRows10223=WordField.canonicalRows actualModulus 10223 (.shr 10222 31) := by core033_kernel_decide
theorem stats10223 : actualRows10223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10223=2892 := by core033_kernel_decide
theorem rows10224 : actualRows10224=WordField.canonicalRows actualModulus 10224 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10224 : actualRows10224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10224=2892 := by core033_kernel_decide
theorem rows10225 : actualRows10225=WordField.canonicalRows actualModulus 10225 (.bxor 10223 10224) := by core033_kernel_decide
theorem stats10225 : actualRows10225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10225=7428 := by core033_kernel_decide
theorem rows10226 : actualRows10226=WordField.canonicalRows actualModulus 10226 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10226 : actualRows10226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10226=2964 := by core033_kernel_decide
theorem rows10227 : actualRows10227=WordField.canonicalRows actualModulus 10227 (.bxor 0 10226) := by core033_kernel_decide
theorem stats10227 : actualRows10227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10227=7428 := by core033_kernel_decide
theorem rows10228 : actualRows10228=WordField.canonicalRows actualModulus 10228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10228 : actualRows10228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10228=2820 := by core033_kernel_decide
theorem rows10229 : actualRows10229=WordField.canonicalRows actualModulus 10229 (.bnot 10228) := by core033_kernel_decide
theorem stats10229 : actualRows10229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10229=6276 := by core033_kernel_decide
theorem rows10230 : actualRows10230=WordField.canonicalRows actualModulus 10230 (.band 10227 10229) := by core033_kernel_decide
theorem stats10230 : actualRows10230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10230=5124 := by core033_kernel_decide
theorem rows10231 : actualRows10231=WordField.canonicalRows actualModulus 10231 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10231 : actualRows10231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10231=2964 := by core033_kernel_decide
theorem rows10232 : actualRows10232=WordField.canonicalRows actualModulus 10232 (.bxor 0 10231) := by core033_kernel_decide
theorem stats10232 : actualRows10232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10232=7428 := by core033_kernel_decide
theorem rows10233 : actualRows10233=WordField.canonicalRows actualModulus 10233 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10233 : actualRows10233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10233=2820 := by core033_kernel_decide
theorem rows10234 : actualRows10234=WordField.canonicalRows actualModulus 10234 (.bnot 10233) := by core033_kernel_decide
theorem stats10234 : actualRows10234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10234=6276 := by core033_kernel_decide
theorem rows10235 : actualRows10235=WordField.canonicalRows actualModulus 10235 (.bxor 10232 10234) := by core033_kernel_decide
theorem stats10235 : actualRows10235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10235=7428 := by core033_kernel_decide
theorem rows10236 : actualRows10236=WordField.canonicalRows actualModulus 10236 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10236 : actualRows10236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10236=2964 := by core033_kernel_decide
theorem rows10237 : actualRows10237=WordField.canonicalRows actualModulus 10237 (.bxor 0 10236) := by core033_kernel_decide
theorem stats10237 : actualRows10237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10237=7428 := by core033_kernel_decide
theorem rows10238 : actualRows10238=WordField.canonicalRows actualModulus 10238 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10238 : actualRows10238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10238=2820 := by core033_kernel_decide
theorem rows10239 : actualRows10239=WordField.canonicalRows actualModulus 10239 (.bnot 10238) := by core033_kernel_decide
theorem stats10239 : actualRows10239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10239=6276 := by core033_kernel_decide
theorem rows10240 : actualRows10240=WordField.canonicalRows actualModulus 10240 (.badd 10237 10239) := by core033_kernel_decide
theorem stats10240 : actualRows10240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10240=5388 := by core033_kernel_decide
theorem rows10241 : actualRows10241=WordField.canonicalRows actualModulus 10241 (.bnot 10240) := by core033_kernel_decide
theorem stats10241 : actualRows10241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10241=6276 := by core033_kernel_decide
theorem rows10242 : actualRows10242=WordField.canonicalRows actualModulus 10242 (.band 10235 10241) := by core033_kernel_decide
theorem stats10242 : actualRows10242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10242=5124 := by core033_kernel_decide
theorem rows10243 : actualRows10243=WordField.canonicalRows actualModulus 10243 (.bxor 10230 10242) := by core033_kernel_decide
theorem stats10243 : actualRows10243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10243=7428 := by core033_kernel_decide
theorem rows10244 : actualRows10244=WordField.canonicalRows actualModulus 10244 (.shr 10243 31) := by core033_kernel_decide
theorem stats10244 : actualRows10244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10244=2892 := by core033_kernel_decide
theorem rows10245 : actualRows10245=WordField.canonicalRows actualModulus 10245 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10245 : actualRows10245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10245=2892 := by core033_kernel_decide
theorem rows10246 : actualRows10246=WordField.canonicalRows actualModulus 10246 (.bxor 10244 10245) := by core033_kernel_decide
theorem stats10246 : actualRows10246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10246=7428 := by core033_kernel_decide
theorem rows10247 : actualRows10247=WordField.canonicalRows actualModulus 10247 (.bnot 10246) := by core033_kernel_decide
theorem stats10247 : actualRows10247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10247=6276 := by core033_kernel_decide
theorem rows10248 : actualRows10248=WordField.canonicalRows actualModulus 10248 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10248 : actualRows10248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10248=2892 := by core033_kernel_decide
theorem rows10249 : actualRows10249=WordField.canonicalRows actualModulus 10249 (.badd 10247 10248) := by core033_kernel_decide
theorem stats10249 : actualRows10249.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10249=5388 := by core033_kernel_decide
theorem rows10250 : actualRows10250=WordField.canonicalRows actualModulus 10250 (.band 10249 10204) := by core033_kernel_decide
theorem stats10250 : actualRows10250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10250=5124 := by core033_kernel_decide
theorem rows10251 : actualRows10251=WordField.canonicalRows actualModulus 10251 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10251 : actualRows10251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10251=2964 := by core033_kernel_decide
theorem rows10252 : actualRows10252=WordField.canonicalRows actualModulus 10252 (.bxor 0 10251) := by core033_kernel_decide
theorem stats10252 : actualRows10252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10252=7428 := by core033_kernel_decide
theorem rows10253 : actualRows10253=WordField.canonicalRows actualModulus 10253 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10253 : actualRows10253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10253=2820 := by core033_kernel_decide
theorem rows10254 : actualRows10254=WordField.canonicalRows actualModulus 10254 (.bnot 10253) := by core033_kernel_decide
theorem stats10254 : actualRows10254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10254=6276 := by core033_kernel_decide
theorem rows10255 : actualRows10255=WordField.canonicalRows actualModulus 10255 (.band 10252 10254) := by core033_kernel_decide
theorem stats10255 : actualRows10255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10255=5124 := by core033_kernel_decide
theorem rows10256 : actualRows10256=WordField.canonicalRows actualModulus 10256 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10256 : actualRows10256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10256=2964 := by core033_kernel_decide
theorem rows10257 : actualRows10257=WordField.canonicalRows actualModulus 10257 (.bxor 0 10256) := by core033_kernel_decide
theorem stats10257 : actualRows10257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10257=7428 := by core033_kernel_decide
theorem rows10258 : actualRows10258=WordField.canonicalRows actualModulus 10258 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10258 : actualRows10258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10258=2820 := by core033_kernel_decide
theorem rows10259 : actualRows10259=WordField.canonicalRows actualModulus 10259 (.bnot 10258) := by core033_kernel_decide
theorem stats10259 : actualRows10259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10259=6276 := by core033_kernel_decide
theorem rows10260 : actualRows10260=WordField.canonicalRows actualModulus 10260 (.bxor 10257 10259) := by core033_kernel_decide
theorem stats10260 : actualRows10260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10260=7428 := by core033_kernel_decide
theorem rows10261 : actualRows10261=WordField.canonicalRows actualModulus 10261 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10261 : actualRows10261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10261=2964 := by core033_kernel_decide
theorem rows10262 : actualRows10262=WordField.canonicalRows actualModulus 10262 (.bxor 0 10261) := by core033_kernel_decide
theorem stats10262 : actualRows10262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10262=7428 := by core033_kernel_decide
theorem rows10263 : actualRows10263=WordField.canonicalRows actualModulus 10263 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10263 : actualRows10263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10263=2820 := by core033_kernel_decide
theorem rows10264 : actualRows10264=WordField.canonicalRows actualModulus 10264 (.bnot 10263) := by core033_kernel_decide
theorem stats10264 : actualRows10264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10264=6276 := by core033_kernel_decide
theorem rows10265 : actualRows10265=WordField.canonicalRows actualModulus 10265 (.badd 10262 10264) := by core033_kernel_decide
theorem stats10265 : actualRows10265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10265=5388 := by core033_kernel_decide
theorem rows10266 : actualRows10266=WordField.canonicalRows actualModulus 10266 (.bnot 10265) := by core033_kernel_decide
theorem stats10266 : actualRows10266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10266=6276 := by core033_kernel_decide
theorem rows10267 : actualRows10267=WordField.canonicalRows actualModulus 10267 (.band 10260 10266) := by core033_kernel_decide
theorem stats10267 : actualRows10267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10267=5124 := by core033_kernel_decide
theorem rows10268 : actualRows10268=WordField.canonicalRows actualModulus 10268 (.bxor 10255 10267) := by core033_kernel_decide
theorem stats10268 : actualRows10268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10268=7428 := by core033_kernel_decide
theorem rows10269 : actualRows10269=WordField.canonicalRows actualModulus 10269 (.shr 10268 31) := by core033_kernel_decide
theorem stats10269 : actualRows10269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10269=2892 := by core033_kernel_decide
theorem rows10270 : actualRows10270=WordField.canonicalRows actualModulus 10270 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10270 : actualRows10270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10270=2892 := by core033_kernel_decide
theorem rows10271 : actualRows10271=WordField.canonicalRows actualModulus 10271 (.bxor 10269 10270) := by core033_kernel_decide
theorem stats10271 : actualRows10271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10271=7428 := by core033_kernel_decide
theorem rows10272 : actualRows10272=WordField.canonicalRows actualModulus 10272 (.bnot 10271) := by core033_kernel_decide
theorem stats10272 : actualRows10272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10272=6276 := by core033_kernel_decide
theorem rows10273 : actualRows10273=WordField.canonicalRows actualModulus 10273 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10273 : actualRows10273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10273=2892 := by core033_kernel_decide
theorem rows10274 : actualRows10274=WordField.canonicalRows actualModulus 10274 (.badd 10272 10273) := by core033_kernel_decide
theorem stats10274 : actualRows10274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10274=5388 := by core033_kernel_decide
theorem rows10275 : actualRows10275=WordField.canonicalRows actualModulus 10275 (.bnot 10274) := by core033_kernel_decide
theorem stats10275 : actualRows10275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10275=6276 := by core033_kernel_decide
theorem rows10276 : actualRows10276=WordField.canonicalRows actualModulus 10276 (.band 10275 9342) := by core033_kernel_decide
theorem stats10276 : actualRows10276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10276=5124 := by core033_kernel_decide
theorem rows10277 : actualRows10277=WordField.canonicalRows actualModulus 10277 (.bxor 10250 10276) := by core033_kernel_decide
theorem stats10277 : actualRows10277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10277=7428 := by core033_kernel_decide
theorem rows10278 : actualRows10278=WordField.canonicalRows actualModulus 10278 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10278 : actualRows10278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10278=2964 := by core033_kernel_decide
theorem rows10279 : actualRows10279=WordField.canonicalRows actualModulus 10279 (.bxor 0 10278) := by core033_kernel_decide
theorem stats10279 : actualRows10279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10279=7428 := by core033_kernel_decide
theorem rows10280 : actualRows10280=WordField.canonicalRows actualModulus 10280 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10280 : actualRows10280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10280=2820 := by core033_kernel_decide
theorem rows10281 : actualRows10281=WordField.canonicalRows actualModulus 10281 (.bnot 10280) := by core033_kernel_decide
theorem stats10281 : actualRows10281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10281=6276 := by core033_kernel_decide
theorem rows10282 : actualRows10282=WordField.canonicalRows actualModulus 10282 (.band 10279 10281) := by core033_kernel_decide
theorem stats10282 : actualRows10282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10282=5124 := by core033_kernel_decide
def partRows159 : List R1CS.Row := actualRows10219++actualRows10220++actualRows10221++actualRows10222++actualRows10223++actualRows10224++actualRows10225++actualRows10226++actualRows10227++actualRows10228++actualRows10229++actualRows10230++actualRows10231++actualRows10232++actualRows10233++actualRows10234++actualRows10235++actualRows10236++actualRows10237++actualRows10238++actualRows10239++actualRows10240++actualRows10241++actualRows10242++actualRows10243++actualRows10244++actualRows10245++actualRows10246++actualRows10247++actualRows10248++actualRows10249++actualRows10250++actualRows10251++actualRows10252++actualRows10253++actualRows10254++actualRows10255++actualRows10256++actualRows10257++actualRows10258++actualRows10259++actualRows10260++actualRows10261++actualRows10262++actualRows10263++actualRows10264++actualRows10265++actualRows10266++actualRows10267++actualRows10268++actualRows10269++actualRows10270++actualRows10271++actualRows10272++actualRows10273++actualRows10274++actualRows10275++actualRows10276++actualRows10277++actualRows10278++actualRows10279++actualRows10280++actualRows10281++actualRows10282
def partOps159 : List WordIR.Op := [.badd 10216 10218,.bnot 10219,.band 10214 10220,.bxor 10209 10221,.shr 10222 31,.literal (BitVec.ofNat 32 1),.bxor 10223 10224,.literal (BitVec.ofNat 32 3),.bxor 0 10226,.literal (BitVec.ofNat 32 0),.bnot 10228,.band 10227 10229,.literal (BitVec.ofNat 32 3),.bxor 0 10231,.literal (BitVec.ofNat 32 0),.bnot 10233,.bxor 10232 10234,.literal (BitVec.ofNat 32 3),.bxor 0 10236,.literal (BitVec.ofNat 32 0),.bnot 10238,.badd 10237 10239,.bnot 10240,.band 10235 10241,.bxor 10230 10242,.shr 10243 31,.literal (BitVec.ofNat 32 1),.bxor 10244 10245,.bnot 10246,.literal (BitVec.ofNat 32 1),.badd 10247 10248,.band 10249 10204,.literal (BitVec.ofNat 32 3),.bxor 0 10251,.literal (BitVec.ofNat 32 0),.bnot 10253,.band 10252 10254,.literal (BitVec.ofNat 32 3),.bxor 0 10256,.literal (BitVec.ofNat 32 0),.bnot 10258,.bxor 10257 10259,.literal (BitVec.ofNat 32 3),.bxor 0 10261,.literal (BitVec.ofNat 32 0),.bnot 10263,.badd 10262 10264,.bnot 10265,.band 10260 10266,.bxor 10255 10267,.shr 10268 31,.literal (BitVec.ofNat 32 1),.bxor 10269 10270,.bnot 10271,.literal (BitVec.ofNat 32 1),.badd 10272 10273,.bnot 10274,.band 10275 9342,.bxor 10250 10276,.literal (BitVec.ofNat 32 3),.bxor 0 10278,.literal (BitVec.ofNat 32 0),.bnot 10280,.band 10279 10281]
theorem partExact159 : partRows159=WordField.rows actualModulus 10219 partOps159 := by
  simp only [partRows159,partOps159,WordField.rows,rows10219,rows10220,rows10221,rows10222,rows10223,rows10224,rows10225,rows10226,rows10227,rows10228,rows10229,rows10230,rows10231,rows10232,rows10233,rows10234,rows10235,rows10236,rows10237,rows10238,rows10239,rows10240,rows10241,rows10242,rows10243,rows10244,rows10245,rows10246,rows10247,rows10248,rows10249,rows10250,rows10251,rows10252,rows10253,rows10254,rows10255,rows10256,rows10257,rows10258,rows10259,rows10260,rows10261,rows10262,rows10263,rows10264,rows10265,rows10266,rows10267,rows10268,rows10269,rows10270,rows10271,rows10272,rows10273,rows10274,rows10275,rows10276,rows10277,rows10278,rows10279,rows10280,rows10281,rows10282,List.append_assoc,List.append_nil]
theorem partLength159 : partOps159.length=64 := by decide
theorem partStats159 : partRows159.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows159=331992 := by
  simp only [partRows159,List.length_append,MatrixRowBlocks.rows_weight_append,stats10219.1,stats10219.2,stats10220.1,stats10220.2,stats10221.1,stats10221.2,stats10222.1,stats10222.2,stats10223.1,stats10223.2,stats10224.1,stats10224.2,stats10225.1,stats10225.2,stats10226.1,stats10226.2,stats10227.1,stats10227.2,stats10228.1,stats10228.2,stats10229.1,stats10229.2,stats10230.1,stats10230.2,stats10231.1,stats10231.2,stats10232.1,stats10232.2,stats10233.1,stats10233.2,stats10234.1,stats10234.2,stats10235.1,stats10235.2,stats10236.1,stats10236.2,stats10237.1,stats10237.2,stats10238.1,stats10238.2,stats10239.1,stats10239.2,stats10240.1,stats10240.2,stats10241.1,stats10241.2,stats10242.1,stats10242.2,stats10243.1,stats10243.2,stats10244.1,stats10244.2,stats10245.1,stats10245.2,stats10246.1,stats10246.2,stats10247.1,stats10247.2,stats10248.1,stats10248.2,stats10249.1,stats10249.2,stats10250.1,stats10250.2,stats10251.1,stats10251.2,stats10252.1,stats10252.2,stats10253.1,stats10253.2,stats10254.1,stats10254.2,stats10255.1,stats10255.2,stats10256.1,stats10256.2,stats10257.1,stats10257.2,stats10258.1,stats10258.2,stats10259.1,stats10259.2,stats10260.1,stats10260.2,stats10261.1,stats10261.2,stats10262.1,stats10262.2,stats10263.1,stats10263.2,stats10264.1,stats10264.2,stats10265.1,stats10265.2,stats10266.1,stats10266.2,stats10267.1,stats10267.2,stats10268.1,stats10268.2,stats10269.1,stats10269.2,stats10270.1,stats10270.2,stats10271.1,stats10271.2,stats10272.1,stats10272.2,stats10273.1,stats10273.2,stats10274.1,stats10274.2,stats10275.1,stats10275.2,stats10276.1,stats10276.2,stats10277.1,stats10277.2,stats10278.1,stats10278.2,stats10279.1,stats10279.2,stats10280.1,stats10280.2,stats10281.1,stats10281.2,stats10282.1,stats10282.2]
  decide
end PathRoundDispatchCheckedRows
