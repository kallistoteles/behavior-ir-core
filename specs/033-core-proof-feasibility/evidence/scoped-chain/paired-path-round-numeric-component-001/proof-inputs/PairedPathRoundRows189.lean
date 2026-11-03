import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData190
import PairedPathRoundInstructionMatrixData191
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12192 : actualRows12192=WordField.canonicalRows actualModulus 12192 (.bxor 12179 12191) := by core033_kernel_decide
theorem stats12192 : actualRows12192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12192=7428 := by core033_kernel_decide
theorem rows12193 : actualRows12193=WordField.canonicalRows actualModulus 12193 (.shr 12192 31) := by core033_kernel_decide
theorem stats12193 : actualRows12193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12193=2892 := by core033_kernel_decide
theorem rows12194 : actualRows12194=WordField.canonicalRows actualModulus 12194 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12194 : actualRows12194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12194=2892 := by core033_kernel_decide
theorem rows12195 : actualRows12195=WordField.canonicalRows actualModulus 12195 (.bxor 12193 12194) := by core033_kernel_decide
theorem stats12195 : actualRows12195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12195=7428 := by core033_kernel_decide
theorem rows12196 : actualRows12196=WordField.canonicalRows actualModulus 12196 (.bnot 12195) := by core033_kernel_decide
theorem stats12196 : actualRows12196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12196=6276 := by core033_kernel_decide
theorem rows12197 : actualRows12197=WordField.canonicalRows actualModulus 12197 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12197 : actualRows12197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12197=2892 := by core033_kernel_decide
theorem rows12198 : actualRows12198=WordField.canonicalRows actualModulus 12198 (.badd 12196 12197) := by core033_kernel_decide
theorem stats12198 : actualRows12198.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12198=5388 := by core033_kernel_decide
theorem rows12199 : actualRows12199=WordField.canonicalRows actualModulus 12199 (.bnot 12198) := by core033_kernel_decide
theorem stats12199 : actualRows12199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12199=6276 := by core033_kernel_decide
theorem rows12200 : actualRows12200=WordField.canonicalRows actualModulus 12200 (.band 12199 913) := by core033_kernel_decide
theorem stats12200 : actualRows12200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12200=5124 := by core033_kernel_decide
theorem rows12201 : actualRows12201=WordField.canonicalRows actualModulus 12201 (.bxor 12174 12200) := by core033_kernel_decide
theorem stats12201 : actualRows12201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12201=7428 := by core033_kernel_decide
theorem rows12202 : actualRows12202=WordField.canonicalRows actualModulus 12202 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12202 : actualRows12202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12202=2964 := by core033_kernel_decide
theorem rows12203 : actualRows12203=WordField.canonicalRows actualModulus 12203 (.bxor 442 12202) := by core033_kernel_decide
theorem stats12203 : actualRows12203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12203=7428 := by core033_kernel_decide
theorem rows12204 : actualRows12204=WordField.canonicalRows actualModulus 12204 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12204 : actualRows12204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12204=2820 := by core033_kernel_decide
theorem rows12205 : actualRows12205=WordField.canonicalRows actualModulus 12205 (.bnot 12204) := by core033_kernel_decide
theorem stats12205 : actualRows12205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12205=6276 := by core033_kernel_decide
theorem rows12206 : actualRows12206=WordField.canonicalRows actualModulus 12206 (.band 12203 12205) := by core033_kernel_decide
theorem stats12206 : actualRows12206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12206=5124 := by core033_kernel_decide
theorem rows12207 : actualRows12207=WordField.canonicalRows actualModulus 12207 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12207 : actualRows12207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12207=2964 := by core033_kernel_decide
theorem rows12208 : actualRows12208=WordField.canonicalRows actualModulus 12208 (.bxor 442 12207) := by core033_kernel_decide
theorem stats12208 : actualRows12208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12208=7428 := by core033_kernel_decide
theorem rows12209 : actualRows12209=WordField.canonicalRows actualModulus 12209 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12209 : actualRows12209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12209=2820 := by core033_kernel_decide
theorem rows12210 : actualRows12210=WordField.canonicalRows actualModulus 12210 (.bnot 12209) := by core033_kernel_decide
theorem stats12210 : actualRows12210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12210=6276 := by core033_kernel_decide
theorem rows12211 : actualRows12211=WordField.canonicalRows actualModulus 12211 (.bxor 12208 12210) := by core033_kernel_decide
theorem stats12211 : actualRows12211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12211=7428 := by core033_kernel_decide
theorem rows12212 : actualRows12212=WordField.canonicalRows actualModulus 12212 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12212 : actualRows12212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12212=2964 := by core033_kernel_decide
theorem rows12213 : actualRows12213=WordField.canonicalRows actualModulus 12213 (.bxor 442 12212) := by core033_kernel_decide
theorem stats12213 : actualRows12213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12213=7428 := by core033_kernel_decide
theorem rows12214 : actualRows12214=WordField.canonicalRows actualModulus 12214 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12214 : actualRows12214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12214=2820 := by core033_kernel_decide
theorem rows12215 : actualRows12215=WordField.canonicalRows actualModulus 12215 (.bnot 12214) := by core033_kernel_decide
theorem stats12215 : actualRows12215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12215=6276 := by core033_kernel_decide
theorem rows12216 : actualRows12216=WordField.canonicalRows actualModulus 12216 (.badd 12213 12215) := by core033_kernel_decide
theorem stats12216 : actualRows12216.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12216=5388 := by core033_kernel_decide
theorem rows12217 : actualRows12217=WordField.canonicalRows actualModulus 12217 (.bnot 12216) := by core033_kernel_decide
theorem stats12217 : actualRows12217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12217=6276 := by core033_kernel_decide
theorem rows12218 : actualRows12218=WordField.canonicalRows actualModulus 12218 (.band 12211 12217) := by core033_kernel_decide
theorem stats12218 : actualRows12218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12218=5124 := by core033_kernel_decide
theorem rows12219 : actualRows12219=WordField.canonicalRows actualModulus 12219 (.bxor 12206 12218) := by core033_kernel_decide
theorem stats12219 : actualRows12219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12219=7428 := by core033_kernel_decide
theorem rows12220 : actualRows12220=WordField.canonicalRows actualModulus 12220 (.shr 12219 31) := by core033_kernel_decide
theorem stats12220 : actualRows12220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12220=2892 := by core033_kernel_decide
theorem rows12221 : actualRows12221=WordField.canonicalRows actualModulus 12221 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12221 : actualRows12221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12221=2892 := by core033_kernel_decide
theorem rows12222 : actualRows12222=WordField.canonicalRows actualModulus 12222 (.bxor 12220 12221) := by core033_kernel_decide
theorem stats12222 : actualRows12222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12222=7428 := by core033_kernel_decide
theorem rows12223 : actualRows12223=WordField.canonicalRows actualModulus 12223 (.bnot 12222) := by core033_kernel_decide
theorem stats12223 : actualRows12223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12223=6276 := by core033_kernel_decide
theorem rows12224 : actualRows12224=WordField.canonicalRows actualModulus 12224 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12224 : actualRows12224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12224=2892 := by core033_kernel_decide
theorem rows12225 : actualRows12225=WordField.canonicalRows actualModulus 12225 (.badd 12223 12224) := by core033_kernel_decide
theorem stats12225 : actualRows12225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12225=5388 := by core033_kernel_decide
theorem rows12226 : actualRows12226=WordField.canonicalRows actualModulus 12226 (.band 12225 10465) := by core033_kernel_decide
theorem stats12226 : actualRows12226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12226=5124 := by core033_kernel_decide
theorem rows12227 : actualRows12227=WordField.canonicalRows actualModulus 12227 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12227 : actualRows12227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12227=2964 := by core033_kernel_decide
theorem rows12228 : actualRows12228=WordField.canonicalRows actualModulus 12228 (.bxor 442 12227) := by core033_kernel_decide
theorem stats12228 : actualRows12228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12228=7428 := by core033_kernel_decide
theorem rows12229 : actualRows12229=WordField.canonicalRows actualModulus 12229 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12229 : actualRows12229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12229=2820 := by core033_kernel_decide
theorem rows12230 : actualRows12230=WordField.canonicalRows actualModulus 12230 (.bnot 12229) := by core033_kernel_decide
theorem stats12230 : actualRows12230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12230=6276 := by core033_kernel_decide
theorem rows12231 : actualRows12231=WordField.canonicalRows actualModulus 12231 (.band 12228 12230) := by core033_kernel_decide
theorem stats12231 : actualRows12231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12231=5124 := by core033_kernel_decide
theorem rows12232 : actualRows12232=WordField.canonicalRows actualModulus 12232 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12232 : actualRows12232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12232=2964 := by core033_kernel_decide
theorem rows12233 : actualRows12233=WordField.canonicalRows actualModulus 12233 (.bxor 442 12232) := by core033_kernel_decide
theorem stats12233 : actualRows12233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12233=7428 := by core033_kernel_decide
theorem rows12234 : actualRows12234=WordField.canonicalRows actualModulus 12234 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12234 : actualRows12234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12234=2820 := by core033_kernel_decide
theorem rows12235 : actualRows12235=WordField.canonicalRows actualModulus 12235 (.bnot 12234) := by core033_kernel_decide
theorem stats12235 : actualRows12235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12235=6276 := by core033_kernel_decide
theorem rows12236 : actualRows12236=WordField.canonicalRows actualModulus 12236 (.bxor 12233 12235) := by core033_kernel_decide
theorem stats12236 : actualRows12236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12236=7428 := by core033_kernel_decide
theorem rows12237 : actualRows12237=WordField.canonicalRows actualModulus 12237 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12237 : actualRows12237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12237=2964 := by core033_kernel_decide
theorem rows12238 : actualRows12238=WordField.canonicalRows actualModulus 12238 (.bxor 442 12237) := by core033_kernel_decide
theorem stats12238 : actualRows12238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12238=7428 := by core033_kernel_decide
theorem rows12239 : actualRows12239=WordField.canonicalRows actualModulus 12239 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12239 : actualRows12239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12239=2820 := by core033_kernel_decide
theorem rows12240 : actualRows12240=WordField.canonicalRows actualModulus 12240 (.bnot 12239) := by core033_kernel_decide
theorem stats12240 : actualRows12240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12240=6276 := by core033_kernel_decide
theorem rows12241 : actualRows12241=WordField.canonicalRows actualModulus 12241 (.badd 12238 12240) := by core033_kernel_decide
theorem stats12241 : actualRows12241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12241=5388 := by core033_kernel_decide
theorem rows12242 : actualRows12242=WordField.canonicalRows actualModulus 12242 (.bnot 12241) := by core033_kernel_decide
theorem stats12242 : actualRows12242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12242=6276 := by core033_kernel_decide
theorem rows12243 : actualRows12243=WordField.canonicalRows actualModulus 12243 (.band 12236 12242) := by core033_kernel_decide
theorem stats12243 : actualRows12243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12243=5124 := by core033_kernel_decide
theorem rows12244 : actualRows12244=WordField.canonicalRows actualModulus 12244 (.bxor 12231 12243) := by core033_kernel_decide
theorem stats12244 : actualRows12244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12244=7428 := by core033_kernel_decide
theorem rows12245 : actualRows12245=WordField.canonicalRows actualModulus 12245 (.shr 12244 31) := by core033_kernel_decide
theorem stats12245 : actualRows12245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12245=2892 := by core033_kernel_decide
theorem rows12246 : actualRows12246=WordField.canonicalRows actualModulus 12246 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12246 : actualRows12246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12246=2892 := by core033_kernel_decide
theorem rows12247 : actualRows12247=WordField.canonicalRows actualModulus 12247 (.bxor 12245 12246) := by core033_kernel_decide
theorem stats12247 : actualRows12247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12247=7428 := by core033_kernel_decide
theorem rows12248 : actualRows12248=WordField.canonicalRows actualModulus 12248 (.bnot 12247) := by core033_kernel_decide
theorem stats12248 : actualRows12248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12248=6276 := by core033_kernel_decide
theorem rows12249 : actualRows12249=WordField.canonicalRows actualModulus 12249 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12249 : actualRows12249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12249=2892 := by core033_kernel_decide
theorem rows12250 : actualRows12250=WordField.canonicalRows actualModulus 12250 (.badd 12248 12249) := by core033_kernel_decide
theorem stats12250 : actualRows12250.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12250=5388 := by core033_kernel_decide
theorem rows12251 : actualRows12251=WordField.canonicalRows actualModulus 12251 (.bnot 12250) := by core033_kernel_decide
theorem stats12251 : actualRows12251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12251=6276 := by core033_kernel_decide
theorem rows12252 : actualRows12252=WordField.canonicalRows actualModulus 12252 (.band 12251 924) := by core033_kernel_decide
theorem stats12252 : actualRows12252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12252=5124 := by core033_kernel_decide
theorem rows12253 : actualRows12253=WordField.canonicalRows actualModulus 12253 (.bxor 12226 12252) := by core033_kernel_decide
theorem stats12253 : actualRows12253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12253=7428 := by core033_kernel_decide
theorem rows12254 : actualRows12254=WordField.canonicalRows actualModulus 12254 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12254 : actualRows12254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12254=2964 := by core033_kernel_decide
theorem rows12255 : actualRows12255=WordField.canonicalRows actualModulus 12255 (.bxor 442 12254) := by core033_kernel_decide
theorem stats12255 : actualRows12255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12255=7428 := by core033_kernel_decide
def partRows189 : List R1CS.Row := actualRows12192++actualRows12193++actualRows12194++actualRows12195++actualRows12196++actualRows12197++actualRows12198++actualRows12199++actualRows12200++actualRows12201++actualRows12202++actualRows12203++actualRows12204++actualRows12205++actualRows12206++actualRows12207++actualRows12208++actualRows12209++actualRows12210++actualRows12211++actualRows12212++actualRows12213++actualRows12214++actualRows12215++actualRows12216++actualRows12217++actualRows12218++actualRows12219++actualRows12220++actualRows12221++actualRows12222++actualRows12223++actualRows12224++actualRows12225++actualRows12226++actualRows12227++actualRows12228++actualRows12229++actualRows12230++actualRows12231++actualRows12232++actualRows12233++actualRows12234++actualRows12235++actualRows12236++actualRows12237++actualRows12238++actualRows12239++actualRows12240++actualRows12241++actualRows12242++actualRows12243++actualRows12244++actualRows12245++actualRows12246++actualRows12247++actualRows12248++actualRows12249++actualRows12250++actualRows12251++actualRows12252++actualRows12253++actualRows12254++actualRows12255
def partOps189 : List WordIR.Op := [.bxor 12179 12191,.shr 12192 31,.literal (BitVec.ofNat 32 1),.bxor 12193 12194,.bnot 12195,.literal (BitVec.ofNat 32 1),.badd 12196 12197,.bnot 12198,.band 12199 913,.bxor 12174 12200,.literal (BitVec.ofNat 32 3),.bxor 442 12202,.literal (BitVec.ofNat 32 0),.bnot 12204,.band 12203 12205,.literal (BitVec.ofNat 32 3),.bxor 442 12207,.literal (BitVec.ofNat 32 0),.bnot 12209,.bxor 12208 12210,.literal (BitVec.ofNat 32 3),.bxor 442 12212,.literal (BitVec.ofNat 32 0),.bnot 12214,.badd 12213 12215,.bnot 12216,.band 12211 12217,.bxor 12206 12218,.shr 12219 31,.literal (BitVec.ofNat 32 1),.bxor 12220 12221,.bnot 12222,.literal (BitVec.ofNat 32 1),.badd 12223 12224,.band 12225 10465,.literal (BitVec.ofNat 32 3),.bxor 442 12227,.literal (BitVec.ofNat 32 0),.bnot 12229,.band 12228 12230,.literal (BitVec.ofNat 32 3),.bxor 442 12232,.literal (BitVec.ofNat 32 0),.bnot 12234,.bxor 12233 12235,.literal (BitVec.ofNat 32 3),.bxor 442 12237,.literal (BitVec.ofNat 32 0),.bnot 12239,.badd 12238 12240,.bnot 12241,.band 12236 12242,.bxor 12231 12243,.shr 12244 31,.literal (BitVec.ofNat 32 1),.bxor 12245 12246,.bnot 12247,.literal (BitVec.ofNat 32 1),.badd 12248 12249,.bnot 12250,.band 12251 924,.bxor 12226 12252,.literal (BitVec.ofNat 32 3),.bxor 442 12254]
theorem partExact189 : partRows189=WordField.rows actualModulus 12192 partOps189 := by
  simp only [partRows189,partOps189,WordField.rows,rows12192,rows12193,rows12194,rows12195,rows12196,rows12197,rows12198,rows12199,rows12200,rows12201,rows12202,rows12203,rows12204,rows12205,rows12206,rows12207,rows12208,rows12209,rows12210,rows12211,rows12212,rows12213,rows12214,rows12215,rows12216,rows12217,rows12218,rows12219,rows12220,rows12221,rows12222,rows12223,rows12224,rows12225,rows12226,rows12227,rows12228,rows12229,rows12230,rows12231,rows12232,rows12233,rows12234,rows12235,rows12236,rows12237,rows12238,rows12239,rows12240,rows12241,rows12242,rows12243,rows12244,rows12245,rows12246,rows12247,rows12248,rows12249,rows12250,rows12251,rows12252,rows12253,rows12254,rows12255,List.append_assoc,List.append_nil]
theorem partLength189 : partOps189.length=64 := by decide
theorem partStats189 : partRows189.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows189=334368 := by
  simp only [partRows189,List.length_append,MatrixRowBlocks.rows_weight_append,stats12192.1,stats12192.2,stats12193.1,stats12193.2,stats12194.1,stats12194.2,stats12195.1,stats12195.2,stats12196.1,stats12196.2,stats12197.1,stats12197.2,stats12198.1,stats12198.2,stats12199.1,stats12199.2,stats12200.1,stats12200.2,stats12201.1,stats12201.2,stats12202.1,stats12202.2,stats12203.1,stats12203.2,stats12204.1,stats12204.2,stats12205.1,stats12205.2,stats12206.1,stats12206.2,stats12207.1,stats12207.2,stats12208.1,stats12208.2,stats12209.1,stats12209.2,stats12210.1,stats12210.2,stats12211.1,stats12211.2,stats12212.1,stats12212.2,stats12213.1,stats12213.2,stats12214.1,stats12214.2,stats12215.1,stats12215.2,stats12216.1,stats12216.2,stats12217.1,stats12217.2,stats12218.1,stats12218.2,stats12219.1,stats12219.2,stats12220.1,stats12220.2,stats12221.1,stats12221.2,stats12222.1,stats12222.2,stats12223.1,stats12223.2,stats12224.1,stats12224.2,stats12225.1,stats12225.2,stats12226.1,stats12226.2,stats12227.1,stats12227.2,stats12228.1,stats12228.2,stats12229.1,stats12229.2,stats12230.1,stats12230.2,stats12231.1,stats12231.2,stats12232.1,stats12232.2,stats12233.1,stats12233.2,stats12234.1,stats12234.2,stats12235.1,stats12235.2,stats12236.1,stats12236.2,stats12237.1,stats12237.2,stats12238.1,stats12238.2,stats12239.1,stats12239.2,stats12240.1,stats12240.2,stats12241.1,stats12241.2,stats12242.1,stats12242.2,stats12243.1,stats12243.2,stats12244.1,stats12244.2,stats12245.1,stats12245.2,stats12246.1,stats12246.2,stats12247.1,stats12247.2,stats12248.1,stats12248.2,stats12249.1,stats12249.2,stats12250.1,stats12250.2,stats12251.1,stats12251.2,stats12252.1,stats12252.2,stats12253.1,stats12253.2,stats12254.1,stats12254.2,stats12255.1,stats12255.2]
  decide
end PairedPathRoundCheckedRows
