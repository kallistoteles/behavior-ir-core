import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData159
import PairedPathRoundInstructionMatrixData160
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10208 : actualRows10208=WordField.canonicalRows actualModulus 10208 (.badd 10206 10207) := by core033_kernel_decide
theorem stats10208 : actualRows10208.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10208=5388 := by core033_kernel_decide
theorem rows10209 : actualRows10209=WordField.canonicalRows actualModulus 10209 (.bnot 10208) := by core033_kernel_decide
theorem stats10209 : actualRows10209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10209=6276 := by core033_kernel_decide
theorem rows10210 : actualRows10210=WordField.canonicalRows actualModulus 10210 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10210 : actualRows10210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10210=2820 := by core033_kernel_decide
theorem rows10211 : actualRows10211=WordField.canonicalRows actualModulus 10211 (.band 10209 10210) := by core033_kernel_decide
theorem stats10211 : actualRows10211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10211=5124 := by core033_kernel_decide
theorem rows10212 : actualRows10212=WordField.canonicalRows actualModulus 10212 (.bxor 10205 10211) := by core033_kernel_decide
theorem stats10212 : actualRows10212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10212=7428 := by core033_kernel_decide
theorem rows10213 : actualRows10213=WordField.canonicalRows actualModulus 10213 (.bnot 9926) := by core033_kernel_decide
theorem stats10213 : actualRows10213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10213=6276 := by core033_kernel_decide
theorem rows10214 : actualRows10214=WordField.canonicalRows actualModulus 10214 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10214 : actualRows10214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10214=2892 := by core033_kernel_decide
theorem rows10215 : actualRows10215=WordField.canonicalRows actualModulus 10215 (.badd 10213 10214) := by core033_kernel_decide
theorem stats10215 : actualRows10215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10215=5388 := by core033_kernel_decide
theorem rows10216 : actualRows10216=WordField.canonicalRows actualModulus 10216 (.band 10215 42) := by core033_kernel_decide
theorem stats10216 : actualRows10216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10216=5124 := by core033_kernel_decide
theorem rows10217 : actualRows10217=WordField.canonicalRows actualModulus 10217 (.bnot 9926) := by core033_kernel_decide
theorem stats10217 : actualRows10217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10217=6276 := by core033_kernel_decide
theorem rows10218 : actualRows10218=WordField.canonicalRows actualModulus 10218 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10218 : actualRows10218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10218=2892 := by core033_kernel_decide
theorem rows10219 : actualRows10219=WordField.canonicalRows actualModulus 10219 (.badd 10217 10218) := by core033_kernel_decide
theorem stats10219 : actualRows10219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10219=5388 := by core033_kernel_decide
theorem rows10220 : actualRows10220=WordField.canonicalRows actualModulus 10220 (.bnot 10219) := by core033_kernel_decide
theorem stats10220 : actualRows10220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10220=6276 := by core033_kernel_decide
theorem rows10221 : actualRows10221=WordField.canonicalRows actualModulus 10221 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10221 : actualRows10221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10221=2820 := by core033_kernel_decide
theorem rows10222 : actualRows10222=WordField.canonicalRows actualModulus 10222 (.band 10220 10221) := by core033_kernel_decide
theorem stats10222 : actualRows10222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10222=5124 := by core033_kernel_decide
theorem rows10223 : actualRows10223=WordField.canonicalRows actualModulus 10223 (.bxor 10216 10222) := by core033_kernel_decide
theorem stats10223 : actualRows10223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10223=7428 := by core033_kernel_decide
theorem rows10224 : actualRows10224=WordField.canonicalRows actualModulus 10224 (.bnot 9926) := by core033_kernel_decide
theorem stats10224 : actualRows10224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10224=6276 := by core033_kernel_decide
theorem rows10225 : actualRows10225=WordField.canonicalRows actualModulus 10225 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10225 : actualRows10225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10225=2892 := by core033_kernel_decide
theorem rows10226 : actualRows10226=WordField.canonicalRows actualModulus 10226 (.badd 10224 10225) := by core033_kernel_decide
theorem stats10226 : actualRows10226.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10226=5388 := by core033_kernel_decide
theorem rows10227 : actualRows10227=WordField.canonicalRows actualModulus 10227 (.band 10226 532) := by core033_kernel_decide
theorem stats10227 : actualRows10227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10227=5124 := by core033_kernel_decide
theorem rows10228 : actualRows10228=WordField.canonicalRows actualModulus 10228 (.bnot 9926) := by core033_kernel_decide
theorem stats10228 : actualRows10228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10228=6276 := by core033_kernel_decide
theorem rows10229 : actualRows10229=WordField.canonicalRows actualModulus 10229 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10229 : actualRows10229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10229=2892 := by core033_kernel_decide
theorem rows10230 : actualRows10230=WordField.canonicalRows actualModulus 10230 (.badd 10228 10229) := by core033_kernel_decide
theorem stats10230 : actualRows10230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10230=5388 := by core033_kernel_decide
theorem rows10231 : actualRows10231=WordField.canonicalRows actualModulus 10231 (.bnot 10230) := by core033_kernel_decide
theorem stats10231 : actualRows10231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10231=6276 := by core033_kernel_decide
theorem rows10232 : actualRows10232=WordField.canonicalRows actualModulus 10232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10232 : actualRows10232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10232=2820 := by core033_kernel_decide
theorem rows10233 : actualRows10233=WordField.canonicalRows actualModulus 10233 (.band 10231 10232) := by core033_kernel_decide
theorem stats10233 : actualRows10233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10233=5124 := by core033_kernel_decide
theorem rows10234 : actualRows10234=WordField.canonicalRows actualModulus 10234 (.bxor 10227 10233) := by core033_kernel_decide
theorem stats10234 : actualRows10234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10234=7428 := by core033_kernel_decide
theorem rows10235 : actualRows10235=WordField.canonicalRows actualModulus 10235 (.bnot 9926) := by core033_kernel_decide
theorem stats10235 : actualRows10235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10235=6276 := by core033_kernel_decide
theorem rows10236 : actualRows10236=WordField.canonicalRows actualModulus 10236 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10236 : actualRows10236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10236=2892 := by core033_kernel_decide
theorem rows10237 : actualRows10237=WordField.canonicalRows actualModulus 10237 (.badd 10235 10236) := by core033_kernel_decide
theorem stats10237 : actualRows10237.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10237=5388 := by core033_kernel_decide
theorem rows10238 : actualRows10238=WordField.canonicalRows actualModulus 10238 (.band 10237 542) := by core033_kernel_decide
theorem stats10238 : actualRows10238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10238=5124 := by core033_kernel_decide
theorem rows10239 : actualRows10239=WordField.canonicalRows actualModulus 10239 (.bnot 9926) := by core033_kernel_decide
theorem stats10239 : actualRows10239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10239=6276 := by core033_kernel_decide
theorem rows10240 : actualRows10240=WordField.canonicalRows actualModulus 10240 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10240 : actualRows10240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10240=2892 := by core033_kernel_decide
theorem rows10241 : actualRows10241=WordField.canonicalRows actualModulus 10241 (.badd 10239 10240) := by core033_kernel_decide
theorem stats10241 : actualRows10241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10241=5388 := by core033_kernel_decide
theorem rows10242 : actualRows10242=WordField.canonicalRows actualModulus 10242 (.bnot 10241) := by core033_kernel_decide
theorem stats10242 : actualRows10242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10242=6276 := by core033_kernel_decide
theorem rows10243 : actualRows10243=WordField.canonicalRows actualModulus 10243 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10243 : actualRows10243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10243=2820 := by core033_kernel_decide
theorem rows10244 : actualRows10244=WordField.canonicalRows actualModulus 10244 (.band 10242 10243) := by core033_kernel_decide
theorem stats10244 : actualRows10244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10244=5124 := by core033_kernel_decide
theorem rows10245 : actualRows10245=WordField.canonicalRows actualModulus 10245 (.bxor 10238 10244) := by core033_kernel_decide
theorem stats10245 : actualRows10245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10245=7428 := by core033_kernel_decide
theorem rows10246 : actualRows10246=WordField.canonicalRows actualModulus 10246 (.bnot 9926) := by core033_kernel_decide
theorem stats10246 : actualRows10246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10246=6276 := by core033_kernel_decide
theorem rows10247 : actualRows10247=WordField.canonicalRows actualModulus 10247 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10247 : actualRows10247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10247=2892 := by core033_kernel_decide
theorem rows10248 : actualRows10248=WordField.canonicalRows actualModulus 10248 (.badd 10246 10247) := by core033_kernel_decide
theorem stats10248 : actualRows10248.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10248=5388 := by core033_kernel_decide
theorem rows10249 : actualRows10249=WordField.canonicalRows actualModulus 10249 (.band 10248 43) := by core033_kernel_decide
theorem stats10249 : actualRows10249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10249=5124 := by core033_kernel_decide
theorem rows10250 : actualRows10250=WordField.canonicalRows actualModulus 10250 (.bnot 9926) := by core033_kernel_decide
theorem stats10250 : actualRows10250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10250=6276 := by core033_kernel_decide
theorem rows10251 : actualRows10251=WordField.canonicalRows actualModulus 10251 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10251 : actualRows10251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10251=2892 := by core033_kernel_decide
theorem rows10252 : actualRows10252=WordField.canonicalRows actualModulus 10252 (.badd 10250 10251) := by core033_kernel_decide
theorem stats10252 : actualRows10252.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10252=5388 := by core033_kernel_decide
theorem rows10253 : actualRows10253=WordField.canonicalRows actualModulus 10253 (.bnot 10252) := by core033_kernel_decide
theorem stats10253 : actualRows10253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10253=6276 := by core033_kernel_decide
theorem rows10254 : actualRows10254=WordField.canonicalRows actualModulus 10254 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10254 : actualRows10254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10254=2820 := by core033_kernel_decide
theorem rows10255 : actualRows10255=WordField.canonicalRows actualModulus 10255 (.band 10253 10254) := by core033_kernel_decide
theorem stats10255 : actualRows10255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10255=5124 := by core033_kernel_decide
theorem rows10256 : actualRows10256=WordField.canonicalRows actualModulus 10256 (.bxor 10249 10255) := by core033_kernel_decide
theorem stats10256 : actualRows10256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10256=7428 := by core033_kernel_decide
theorem rows10257 : actualRows10257=WordField.canonicalRows actualModulus 10257 (.bnot 9926) := by core033_kernel_decide
theorem stats10257 : actualRows10257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10257=6276 := by core033_kernel_decide
theorem rows10258 : actualRows10258=WordField.canonicalRows actualModulus 10258 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10258 : actualRows10258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10258=2892 := by core033_kernel_decide
theorem rows10259 : actualRows10259=WordField.canonicalRows actualModulus 10259 (.badd 10257 10258) := by core033_kernel_decide
theorem stats10259 : actualRows10259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10259=5388 := by core033_kernel_decide
theorem rows10260 : actualRows10260=WordField.canonicalRows actualModulus 10260 (.band 10259 44) := by core033_kernel_decide
theorem stats10260 : actualRows10260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10260=5124 := by core033_kernel_decide
theorem rows10261 : actualRows10261=WordField.canonicalRows actualModulus 10261 (.bnot 9926) := by core033_kernel_decide
theorem stats10261 : actualRows10261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10261=6276 := by core033_kernel_decide
theorem rows10262 : actualRows10262=WordField.canonicalRows actualModulus 10262 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10262 : actualRows10262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10262=2892 := by core033_kernel_decide
theorem rows10263 : actualRows10263=WordField.canonicalRows actualModulus 10263 (.badd 10261 10262) := by core033_kernel_decide
theorem stats10263 : actualRows10263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10263=5388 := by core033_kernel_decide
theorem rows10264 : actualRows10264=WordField.canonicalRows actualModulus 10264 (.bnot 10263) := by core033_kernel_decide
theorem stats10264 : actualRows10264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10264=6276 := by core033_kernel_decide
theorem rows10265 : actualRows10265=WordField.canonicalRows actualModulus 10265 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10265 : actualRows10265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10265=2820 := by core033_kernel_decide
theorem rows10266 : actualRows10266=WordField.canonicalRows actualModulus 10266 (.band 10264 10265) := by core033_kernel_decide
theorem stats10266 : actualRows10266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10266=5124 := by core033_kernel_decide
theorem rows10267 : actualRows10267=WordField.canonicalRows actualModulus 10267 (.bxor 10260 10266) := by core033_kernel_decide
theorem stats10267 : actualRows10267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10267=7428 := by core033_kernel_decide
theorem rows10268 : actualRows10268=WordField.canonicalRows actualModulus 10268 (.bnot 9926) := by core033_kernel_decide
theorem stats10268 : actualRows10268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10268=6276 := by core033_kernel_decide
theorem rows10269 : actualRows10269=WordField.canonicalRows actualModulus 10269 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10269 : actualRows10269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10269=2892 := by core033_kernel_decide
theorem rows10270 : actualRows10270=WordField.canonicalRows actualModulus 10270 (.badd 10268 10269) := by core033_kernel_decide
theorem stats10270 : actualRows10270.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10270=5388 := by core033_kernel_decide
theorem rows10271 : actualRows10271=WordField.canonicalRows actualModulus 10271 (.band 10270 552) := by core033_kernel_decide
theorem stats10271 : actualRows10271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10271=5124 := by core033_kernel_decide
def partRows158 : List R1CS.Row := actualRows10208++actualRows10209++actualRows10210++actualRows10211++actualRows10212++actualRows10213++actualRows10214++actualRows10215++actualRows10216++actualRows10217++actualRows10218++actualRows10219++actualRows10220++actualRows10221++actualRows10222++actualRows10223++actualRows10224++actualRows10225++actualRows10226++actualRows10227++actualRows10228++actualRows10229++actualRows10230++actualRows10231++actualRows10232++actualRows10233++actualRows10234++actualRows10235++actualRows10236++actualRows10237++actualRows10238++actualRows10239++actualRows10240++actualRows10241++actualRows10242++actualRows10243++actualRows10244++actualRows10245++actualRows10246++actualRows10247++actualRows10248++actualRows10249++actualRows10250++actualRows10251++actualRows10252++actualRows10253++actualRows10254++actualRows10255++actualRows10256++actualRows10257++actualRows10258++actualRows10259++actualRows10260++actualRows10261++actualRows10262++actualRows10263++actualRows10264++actualRows10265++actualRows10266++actualRows10267++actualRows10268++actualRows10269++actualRows10270++actualRows10271
def partOps158 : List WordIR.Op := [.badd 10206 10207,.bnot 10208,.literal (BitVec.ofNat 32 0),.band 10209 10210,.bxor 10205 10211,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10213 10214,.band 10215 42,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10217 10218,.bnot 10219,.literal (BitVec.ofNat 32 0),.band 10220 10221,.bxor 10216 10222,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10224 10225,.band 10226 532,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10228 10229,.bnot 10230,.literal (BitVec.ofNat 32 0),.band 10231 10232,.bxor 10227 10233,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10235 10236,.band 10237 542,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10239 10240,.bnot 10241,.literal (BitVec.ofNat 32 0),.band 10242 10243,.bxor 10238 10244,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10246 10247,.band 10248 43,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10250 10251,.bnot 10252,.literal (BitVec.ofNat 32 0),.band 10253 10254,.bxor 10249 10255,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10257 10258,.band 10259 44,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10261 10262,.bnot 10263,.literal (BitVec.ofNat 32 0),.band 10264 10265,.bxor 10260 10266,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10268 10269,.band 10270 552]
theorem partExact158 : partRows158=WordField.rows actualModulus 10208 partOps158 := by
  simp only [partRows158,partOps158,WordField.rows,rows10208,rows10209,rows10210,rows10211,rows10212,rows10213,rows10214,rows10215,rows10216,rows10217,rows10218,rows10219,rows10220,rows10221,rows10222,rows10223,rows10224,rows10225,rows10226,rows10227,rows10228,rows10229,rows10230,rows10231,rows10232,rows10233,rows10234,rows10235,rows10236,rows10237,rows10238,rows10239,rows10240,rows10241,rows10242,rows10243,rows10244,rows10245,rows10246,rows10247,rows10248,rows10249,rows10250,rows10251,rows10252,rows10253,rows10254,rows10255,rows10256,rows10257,rows10258,rows10259,rows10260,rows10261,rows10262,rows10263,rows10264,rows10265,rows10266,rows10267,rows10268,rows10269,rows10270,rows10271,List.append_assoc,List.append_nil]
theorem partLength158 : partOps158.length=64 := by decide
theorem partStats158 : partRows158.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows158=326136 := by
  simp only [partRows158,List.length_append,MatrixRowBlocks.rows_weight_append,stats10208.1,stats10208.2,stats10209.1,stats10209.2,stats10210.1,stats10210.2,stats10211.1,stats10211.2,stats10212.1,stats10212.2,stats10213.1,stats10213.2,stats10214.1,stats10214.2,stats10215.1,stats10215.2,stats10216.1,stats10216.2,stats10217.1,stats10217.2,stats10218.1,stats10218.2,stats10219.1,stats10219.2,stats10220.1,stats10220.2,stats10221.1,stats10221.2,stats10222.1,stats10222.2,stats10223.1,stats10223.2,stats10224.1,stats10224.2,stats10225.1,stats10225.2,stats10226.1,stats10226.2,stats10227.1,stats10227.2,stats10228.1,stats10228.2,stats10229.1,stats10229.2,stats10230.1,stats10230.2,stats10231.1,stats10231.2,stats10232.1,stats10232.2,stats10233.1,stats10233.2,stats10234.1,stats10234.2,stats10235.1,stats10235.2,stats10236.1,stats10236.2,stats10237.1,stats10237.2,stats10238.1,stats10238.2,stats10239.1,stats10239.2,stats10240.1,stats10240.2,stats10241.1,stats10241.2,stats10242.1,stats10242.2,stats10243.1,stats10243.2,stats10244.1,stats10244.2,stats10245.1,stats10245.2,stats10246.1,stats10246.2,stats10247.1,stats10247.2,stats10248.1,stats10248.2,stats10249.1,stats10249.2,stats10250.1,stats10250.2,stats10251.1,stats10251.2,stats10252.1,stats10252.2,stats10253.1,stats10253.2,stats10254.1,stats10254.2,stats10255.1,stats10255.2,stats10256.1,stats10256.2,stats10257.1,stats10257.2,stats10258.1,stats10258.2,stats10259.1,stats10259.2,stats10260.1,stats10260.2,stats10261.1,stats10261.2,stats10262.1,stats10262.2,stats10263.1,stats10263.2,stats10264.1,stats10264.2,stats10265.1,stats10265.2,stats10266.1,stats10266.2,stats10267.1,stats10267.2,stats10268.1,stats10268.2,stats10269.1,stats10269.2,stats10270.1,stats10270.2,stats10271.1,stats10271.2]
  decide
end PairedPathRoundCheckedRows
