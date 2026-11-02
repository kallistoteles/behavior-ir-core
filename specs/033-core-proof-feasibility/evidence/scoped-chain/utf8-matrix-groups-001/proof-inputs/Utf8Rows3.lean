import ActualUtf8IR
import ArtifactUtf8Blocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import Utf8InstructionMatrixData3
import Utf8InstructionMatrixData4
namespace Utf8CheckedRows
open Core033 Utf8InstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows193 : actualRows193=WordField.canonicalRows actualModulus 193 (.shr 192 31) := by core033_kernel_decide
theorem stats193 : actualRows193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows193=2892 := by core033_kernel_decide
theorem rows194 : actualRows194=WordField.canonicalRows actualModulus 194 (.bnot 193) := by core033_kernel_decide
theorem stats194 : actualRows194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows194=6276 := by core033_kernel_decide
theorem rows195 : actualRows195=WordField.canonicalRows actualModulus 195 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats195 : actualRows195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows195=2892 := by core033_kernel_decide
theorem rows196 : actualRows196=WordField.canonicalRows actualModulus 196 (.badd 194 195) := by core033_kernel_decide
theorem stats196 : actualRows196.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows196=5388 := by core033_kernel_decide
theorem rows197 : actualRows197=WordField.canonicalRows actualModulus 197 (.bnot 196) := by core033_kernel_decide
theorem stats197 : actualRows197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows197=6276 := by core033_kernel_decide
theorem rows198 : actualRows198=WordField.canonicalRows actualModulus 198 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats198 : actualRows198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows198=2892 := by core033_kernel_decide
theorem rows199 : actualRows199=WordField.canonicalRows actualModulus 199 (.bnot 0) := by core033_kernel_decide
theorem stats199 : actualRows199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows199=6276 := by core033_kernel_decide
theorem rows200 : actualRows200=WordField.canonicalRows actualModulus 200 (.band 198 199) := by core033_kernel_decide
theorem stats200 : actualRows200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows200=5124 := by core033_kernel_decide
theorem rows201 : actualRows201=WordField.canonicalRows actualModulus 201 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats201 : actualRows201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows201=2892 := by core033_kernel_decide
theorem rows202 : actualRows202=WordField.canonicalRows actualModulus 202 (.bnot 0) := by core033_kernel_decide
theorem stats202 : actualRows202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows202=6276 := by core033_kernel_decide
theorem rows203 : actualRows203=WordField.canonicalRows actualModulus 203 (.bxor 201 202) := by core033_kernel_decide
theorem stats203 : actualRows203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows203=7428 := by core033_kernel_decide
theorem rows204 : actualRows204=WordField.canonicalRows actualModulus 204 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats204 : actualRows204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows204=2892 := by core033_kernel_decide
theorem rows205 : actualRows205=WordField.canonicalRows actualModulus 205 (.bnot 0) := by core033_kernel_decide
theorem stats205 : actualRows205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows205=6276 := by core033_kernel_decide
theorem rows206 : actualRows206=WordField.canonicalRows actualModulus 206 (.badd 204 205) := by core033_kernel_decide
theorem stats206 : actualRows206.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows206=5388 := by core033_kernel_decide
theorem rows207 : actualRows207=WordField.canonicalRows actualModulus 207 (.bnot 206) := by core033_kernel_decide
theorem stats207 : actualRows207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows207=6276 := by core033_kernel_decide
theorem rows208 : actualRows208=WordField.canonicalRows actualModulus 208 (.band 203 207) := by core033_kernel_decide
theorem stats208 : actualRows208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows208=5124 := by core033_kernel_decide
theorem rows209 : actualRows209=WordField.canonicalRows actualModulus 209 (.bxor 200 208) := by core033_kernel_decide
theorem stats209 : actualRows209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows209=7428 := by core033_kernel_decide
theorem rows210 : actualRows210=WordField.canonicalRows actualModulus 210 (.shr 209 31) := by core033_kernel_decide
theorem stats210 : actualRows210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows210=2892 := by core033_kernel_decide
theorem rows211 : actualRows211=WordField.canonicalRows actualModulus 211 (.bnot 210) := by core033_kernel_decide
theorem stats211 : actualRows211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows211=6276 := by core033_kernel_decide
theorem rows212 : actualRows212=WordField.canonicalRows actualModulus 212 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats212 : actualRows212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows212=2892 := by core033_kernel_decide
theorem rows213 : actualRows213=WordField.canonicalRows actualModulus 213 (.badd 211 212) := by core033_kernel_decide
theorem stats213 : actualRows213.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows213=5388 := by core033_kernel_decide
theorem rows214 : actualRows214=WordField.canonicalRows actualModulus 214 (.shr 0 6) := by core033_kernel_decide
theorem stats214 : actualRows214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows214=4692 := by core033_kernel_decide
theorem rows215 : actualRows215=WordField.canonicalRows actualModulus 215 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats215 : actualRows215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows215=3252 := by core033_kernel_decide
theorem rows216 : actualRows216=WordField.canonicalRows actualModulus 216 (.band 214 215) := by core033_kernel_decide
theorem stats216 : actualRows216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows216=5124 := by core033_kernel_decide
theorem rows217 : actualRows217=WordField.canonicalRows actualModulus 217 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats217 : actualRows217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows217=2892 := by core033_kernel_decide
theorem rows218 : actualRows218=WordField.canonicalRows actualModulus 218 (.badd 216 217) := by core033_kernel_decide
theorem stats218 : actualRows218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows218=5388 := by core033_kernel_decide
theorem rows219 : actualRows219=WordField.canonicalRows actualModulus 219 (.band 213 218) := by core033_kernel_decide
theorem stats219 : actualRows219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows219=5124 := by core033_kernel_decide
theorem rows220 : actualRows220=WordField.canonicalRows actualModulus 220 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats220 : actualRows220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows220=2892 := by core033_kernel_decide
theorem rows221 : actualRows221=WordField.canonicalRows actualModulus 221 (.bnot 0) := by core033_kernel_decide
theorem stats221 : actualRows221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows221=6276 := by core033_kernel_decide
theorem rows222 : actualRows222=WordField.canonicalRows actualModulus 222 (.band 220 221) := by core033_kernel_decide
theorem stats222 : actualRows222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows222=5124 := by core033_kernel_decide
theorem rows223 : actualRows223=WordField.canonicalRows actualModulus 223 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats223 : actualRows223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows223=2892 := by core033_kernel_decide
theorem rows224 : actualRows224=WordField.canonicalRows actualModulus 224 (.bnot 0) := by core033_kernel_decide
theorem stats224 : actualRows224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows224=6276 := by core033_kernel_decide
theorem rows225 : actualRows225=WordField.canonicalRows actualModulus 225 (.bxor 223 224) := by core033_kernel_decide
theorem stats225 : actualRows225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows225=7428 := by core033_kernel_decide
theorem rows226 : actualRows226=WordField.canonicalRows actualModulus 226 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats226 : actualRows226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows226=2892 := by core033_kernel_decide
theorem rows227 : actualRows227=WordField.canonicalRows actualModulus 227 (.bnot 0) := by core033_kernel_decide
theorem stats227 : actualRows227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows227=6276 := by core033_kernel_decide
theorem rows228 : actualRows228=WordField.canonicalRows actualModulus 228 (.badd 226 227) := by core033_kernel_decide
theorem stats228 : actualRows228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows228=5388 := by core033_kernel_decide
theorem rows229 : actualRows229=WordField.canonicalRows actualModulus 229 (.bnot 228) := by core033_kernel_decide
theorem stats229 : actualRows229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows229=6276 := by core033_kernel_decide
theorem rows230 : actualRows230=WordField.canonicalRows actualModulus 230 (.band 225 229) := by core033_kernel_decide
theorem stats230 : actualRows230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows230=5124 := by core033_kernel_decide
theorem rows231 : actualRows231=WordField.canonicalRows actualModulus 231 (.bxor 222 230) := by core033_kernel_decide
theorem stats231 : actualRows231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows231=7428 := by core033_kernel_decide
theorem rows232 : actualRows232=WordField.canonicalRows actualModulus 232 (.shr 231 31) := by core033_kernel_decide
theorem stats232 : actualRows232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows232=2892 := by core033_kernel_decide
theorem rows233 : actualRows233=WordField.canonicalRows actualModulus 233 (.bnot 232) := by core033_kernel_decide
theorem stats233 : actualRows233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows233=6276 := by core033_kernel_decide
theorem rows234 : actualRows234=WordField.canonicalRows actualModulus 234 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats234 : actualRows234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows234=2892 := by core033_kernel_decide
theorem rows235 : actualRows235=WordField.canonicalRows actualModulus 235 (.badd 233 234) := by core033_kernel_decide
theorem stats235 : actualRows235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows235=5388 := by core033_kernel_decide
theorem rows236 : actualRows236=WordField.canonicalRows actualModulus 236 (.bnot 235) := by core033_kernel_decide
theorem stats236 : actualRows236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows236=6276 := by core033_kernel_decide
theorem rows237 : actualRows237=WordField.canonicalRows actualModulus 237 (.shr 0 12) := by core033_kernel_decide
theorem stats237 : actualRows237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows237=4260 := by core033_kernel_decide
theorem rows238 : actualRows238=WordField.canonicalRows actualModulus 238 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats238 : actualRows238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows238=3252 := by core033_kernel_decide
theorem rows239 : actualRows239=WordField.canonicalRows actualModulus 239 (.band 237 238) := by core033_kernel_decide
theorem stats239 : actualRows239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows239=5124 := by core033_kernel_decide
theorem rows240 : actualRows240=WordField.canonicalRows actualModulus 240 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats240 : actualRows240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows240=2892 := by core033_kernel_decide
theorem rows241 : actualRows241=WordField.canonicalRows actualModulus 241 (.badd 239 240) := by core033_kernel_decide
theorem stats241 : actualRows241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows241=5388 := by core033_kernel_decide
theorem rows242 : actualRows242=WordField.canonicalRows actualModulus 242 (.band 236 241) := by core033_kernel_decide
theorem stats242 : actualRows242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows242=5124 := by core033_kernel_decide
theorem rows243 : actualRows243=WordField.canonicalRows actualModulus 243 (.bxor 219 242) := by core033_kernel_decide
theorem stats243 : actualRows243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows243=7428 := by core033_kernel_decide
theorem rows244 : actualRows244=WordField.canonicalRows actualModulus 244 (.band 197 243) := by core033_kernel_decide
theorem stats244 : actualRows244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows244=5124 := by core033_kernel_decide
theorem rows245 : actualRows245=WordField.canonicalRows actualModulus 245 (.bxor 180 244) := by core033_kernel_decide
theorem stats245 : actualRows245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows245=7428 := by core033_kernel_decide
theorem rows246 : actualRows246=WordField.canonicalRows actualModulus 246 (.band 158 245) := by core033_kernel_decide
theorem stats246 : actualRows246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows246=5124 := by core033_kernel_decide
theorem rows247 : actualRows247=WordField.canonicalRows actualModulus 247 (.bxor 141 246) := by core033_kernel_decide
theorem stats247 : actualRows247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows247=7428 := by core033_kernel_decide
theorem rows248 : actualRows248=WordField.canonicalRows actualModulus 248 (.literal (BitVec.ofNat 32 2048)) := by core033_kernel_decide
theorem stats248 : actualRows248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows248=2892 := by core033_kernel_decide
theorem rows249 : actualRows249=WordField.canonicalRows actualModulus 249 (.bnot 0) := by core033_kernel_decide
theorem stats249 : actualRows249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows249=6276 := by core033_kernel_decide
theorem rows250 : actualRows250=WordField.canonicalRows actualModulus 250 (.band 248 249) := by core033_kernel_decide
theorem stats250 : actualRows250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows250=5124 := by core033_kernel_decide
theorem rows251 : actualRows251=WordField.canonicalRows actualModulus 251 (.literal (BitVec.ofNat 32 2048)) := by core033_kernel_decide
theorem stats251 : actualRows251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows251=2892 := by core033_kernel_decide
theorem rows252 : actualRows252=WordField.canonicalRows actualModulus 252 (.bnot 0) := by core033_kernel_decide
theorem stats252 : actualRows252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows252=6276 := by core033_kernel_decide
theorem rows253 : actualRows253=WordField.canonicalRows actualModulus 253 (.bxor 251 252) := by core033_kernel_decide
theorem stats253 : actualRows253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows253=7428 := by core033_kernel_decide
theorem rows254 : actualRows254=WordField.canonicalRows actualModulus 254 (.literal (BitVec.ofNat 32 2048)) := by core033_kernel_decide
theorem stats254 : actualRows254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows254=2892 := by core033_kernel_decide
theorem rows255 : actualRows255=WordField.canonicalRows actualModulus 255 (.bnot 0) := by core033_kernel_decide
theorem stats255 : actualRows255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows255=6276 := by core033_kernel_decide
theorem rows256 : actualRows256=WordField.canonicalRows actualModulus 256 (.badd 254 255) := by core033_kernel_decide
theorem stats256 : actualRows256.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows256=5388 := by core033_kernel_decide
def partRows3 : List R1CS.Row := actualRows193++actualRows194++actualRows195++actualRows196++actualRows197++actualRows198++actualRows199++actualRows200++actualRows201++actualRows202++actualRows203++actualRows204++actualRows205++actualRows206++actualRows207++actualRows208++actualRows209++actualRows210++actualRows211++actualRows212++actualRows213++actualRows214++actualRows215++actualRows216++actualRows217++actualRows218++actualRows219++actualRows220++actualRows221++actualRows222++actualRows223++actualRows224++actualRows225++actualRows226++actualRows227++actualRows228++actualRows229++actualRows230++actualRows231++actualRows232++actualRows233++actualRows234++actualRows235++actualRows236++actualRows237++actualRows238++actualRows239++actualRows240++actualRows241++actualRows242++actualRows243++actualRows244++actualRows245++actualRows246++actualRows247++actualRows248++actualRows249++actualRows250++actualRows251++actualRows252++actualRows253++actualRows254++actualRows255++actualRows256
def partOps3 : List WordIR.Op := [.shr 192 31,.bnot 193,.literal (BitVec.ofNat 32 1),.badd 194 195,.bnot 196,.literal (BitVec.ofNat 32 65536),.bnot 0,.band 198 199,.literal (BitVec.ofNat 32 65536),.bnot 0,.bxor 201 202,.literal (BitVec.ofNat 32 65536),.bnot 0,.badd 204 205,.bnot 206,.band 203 207,.bxor 200 208,.shr 209 31,.bnot 210,.literal (BitVec.ofNat 32 1),.badd 211 212,.shr 0 6,.literal (BitVec.ofNat 32 63),.band 214 215,.literal (BitVec.ofNat 32 128),.badd 216 217,.band 213 218,.literal (BitVec.ofNat 32 65536),.bnot 0,.band 220 221,.literal (BitVec.ofNat 32 65536),.bnot 0,.bxor 223 224,.literal (BitVec.ofNat 32 65536),.bnot 0,.badd 226 227,.bnot 228,.band 225 229,.bxor 222 230,.shr 231 31,.bnot 232,.literal (BitVec.ofNat 32 1),.badd 233 234,.bnot 235,.shr 0 12,.literal (BitVec.ofNat 32 63),.band 237 238,.literal (BitVec.ofNat 32 128),.badd 239 240,.band 236 241,.bxor 219 242,.band 197 243,.bxor 180 244,.band 158 245,.bxor 141 246,.literal (BitVec.ofNat 32 2048),.bnot 0,.band 248 249,.literal (BitVec.ofNat 32 2048),.bnot 0,.bxor 251 252,.literal (BitVec.ofNat 32 2048),.bnot 0,.badd 254 255]
theorem partExact3 : partRows3=WordField.rows actualModulus 193 partOps3 := by
  simp only [partRows3,partOps3,WordField.rows,rows193,rows194,rows195,rows196,rows197,rows198,rows199,rows200,rows201,rows202,rows203,rows204,rows205,rows206,rows207,rows208,rows209,rows210,rows211,rows212,rows213,rows214,rows215,rows216,rows217,rows218,rows219,rows220,rows221,rows222,rows223,rows224,rows225,rows226,rows227,rows228,rows229,rows230,rows231,rows232,rows233,rows234,rows235,rows236,rows237,rows238,rows239,rows240,rows241,rows242,rows243,rows244,rows245,rows246,rows247,rows248,rows249,rows250,rows251,rows252,rows253,rows254,rows255,rows256,List.append_assoc,List.append_nil]
theorem partLength3 : partOps3.length=64 := by decide
theorem partStats3 : partRows3.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows3=323928 := by
  simp only [partRows3,List.length_append,MatrixRowBlocks.rows_weight_append,stats193.1,stats193.2,stats194.1,stats194.2,stats195.1,stats195.2,stats196.1,stats196.2,stats197.1,stats197.2,stats198.1,stats198.2,stats199.1,stats199.2,stats200.1,stats200.2,stats201.1,stats201.2,stats202.1,stats202.2,stats203.1,stats203.2,stats204.1,stats204.2,stats205.1,stats205.2,stats206.1,stats206.2,stats207.1,stats207.2,stats208.1,stats208.2,stats209.1,stats209.2,stats210.1,stats210.2,stats211.1,stats211.2,stats212.1,stats212.2,stats213.1,stats213.2,stats214.1,stats214.2,stats215.1,stats215.2,stats216.1,stats216.2,stats217.1,stats217.2,stats218.1,stats218.2,stats219.1,stats219.2,stats220.1,stats220.2,stats221.1,stats221.2,stats222.1,stats222.2,stats223.1,stats223.2,stats224.1,stats224.2,stats225.1,stats225.2,stats226.1,stats226.2,stats227.1,stats227.2,stats228.1,stats228.2,stats229.1,stats229.2,stats230.1,stats230.2,stats231.1,stats231.2,stats232.1,stats232.2,stats233.1,stats233.2,stats234.1,stats234.2,stats235.1,stats235.2,stats236.1,stats236.2,stats237.1,stats237.2,stats238.1,stats238.2,stats239.1,stats239.2,stats240.1,stats240.2,stats241.1,stats241.2,stats242.1,stats242.2,stats243.1,stats243.2,stats244.1,stats244.2,stats245.1,stats245.2,stats246.1,stats246.2,stats247.1,stats247.2,stats248.1,stats248.2,stats249.1,stats249.2,stats250.1,stats250.2,stats251.1,stats251.2,stats252.1,stats252.2,stats253.1,stats253.2,stats254.1,stats254.2,stats255.1,stats255.2,stats256.1,stats256.2]
  decide
end Utf8CheckedRows
