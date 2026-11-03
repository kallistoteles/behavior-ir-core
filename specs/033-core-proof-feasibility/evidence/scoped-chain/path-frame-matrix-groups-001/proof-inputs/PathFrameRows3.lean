import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData3
import PathFrameInstructionMatrixData4
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows226 : actualRows226=WordField.canonicalRows actualModulus 226 (.bxor 169 225) := by core033_kernel_decide
theorem stats226 : actualRows226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows226=7428 := by core033_kernel_decide
theorem rows227 : actualRows227=WordField.canonicalRows actualModulus 227 (.shr 93 3) := by core033_kernel_decide
theorem stats227 : actualRows227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows227=4908 := by core033_kernel_decide
theorem rows228 : actualRows228=WordField.canonicalRows actualModulus 228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats228 : actualRows228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows228=2820 := by core033_kernel_decide
theorem rows229 : actualRows229=WordField.canonicalRows actualModulus 229 (.bnot 228) := by core033_kernel_decide
theorem stats229 : actualRows229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows229=6276 := by core033_kernel_decide
theorem rows230 : actualRows230=WordField.canonicalRows actualModulus 230 (.band 227 229) := by core033_kernel_decide
theorem stats230 : actualRows230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows230=5124 := by core033_kernel_decide
theorem rows231 : actualRows231=WordField.canonicalRows actualModulus 231 (.shr 93 3) := by core033_kernel_decide
theorem stats231 : actualRows231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows231=4908 := by core033_kernel_decide
theorem rows232 : actualRows232=WordField.canonicalRows actualModulus 232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats232 : actualRows232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows232=2820 := by core033_kernel_decide
theorem rows233 : actualRows233=WordField.canonicalRows actualModulus 233 (.bnot 232) := by core033_kernel_decide
theorem stats233 : actualRows233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows233=6276 := by core033_kernel_decide
theorem rows234 : actualRows234=WordField.canonicalRows actualModulus 234 (.bxor 231 233) := by core033_kernel_decide
theorem stats234 : actualRows234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows234=7428 := by core033_kernel_decide
theorem rows235 : actualRows235=WordField.canonicalRows actualModulus 235 (.shr 93 3) := by core033_kernel_decide
theorem stats235 : actualRows235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows235=4908 := by core033_kernel_decide
theorem rows236 : actualRows236=WordField.canonicalRows actualModulus 236 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats236 : actualRows236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows236=2820 := by core033_kernel_decide
theorem rows237 : actualRows237=WordField.canonicalRows actualModulus 237 (.bnot 236) := by core033_kernel_decide
theorem stats237 : actualRows237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows237=6276 := by core033_kernel_decide
theorem rows238 : actualRows238=WordField.canonicalRows actualModulus 238 (.badd 235 237) := by core033_kernel_decide
theorem stats238 : actualRows238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows238=5388 := by core033_kernel_decide
theorem rows239 : actualRows239=WordField.canonicalRows actualModulus 239 (.bnot 238) := by core033_kernel_decide
theorem stats239 : actualRows239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows239=6276 := by core033_kernel_decide
theorem rows240 : actualRows240=WordField.canonicalRows actualModulus 240 (.band 234 239) := by core033_kernel_decide
theorem stats240 : actualRows240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows240=5124 := by core033_kernel_decide
theorem rows241 : actualRows241=WordField.canonicalRows actualModulus 241 (.bxor 230 240) := by core033_kernel_decide
theorem stats241 : actualRows241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows241=7428 := by core033_kernel_decide
theorem rows242 : actualRows242=WordField.canonicalRows actualModulus 242 (.shr 241 31) := by core033_kernel_decide
theorem stats242 : actualRows242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows242=2892 := by core033_kernel_decide
theorem rows243 : actualRows243=WordField.canonicalRows actualModulus 243 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats243 : actualRows243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows243=2892 := by core033_kernel_decide
theorem rows244 : actualRows244=WordField.canonicalRows actualModulus 244 (.bxor 242 243) := by core033_kernel_decide
theorem stats244 : actualRows244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows244=7428 := by core033_kernel_decide
theorem rows245 : actualRows245=WordField.canonicalRows actualModulus 245 (.shr 96 0) := by core033_kernel_decide
theorem stats245 : actualRows245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows245=5124 := by core033_kernel_decide
theorem rows246 : actualRows246=WordField.canonicalRows actualModulus 246 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats246 : actualRows246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows246=2892 := by core033_kernel_decide
theorem rows247 : actualRows247=WordField.canonicalRows actualModulus 247 (.band 245 246) := by core033_kernel_decide
theorem stats247 : actualRows247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows247=5124 := by core033_kernel_decide
theorem rows248 : actualRows248=WordField.canonicalRows actualModulus 248 (.bnot 247) := by core033_kernel_decide
theorem stats248 : actualRows248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows248=6276 := by core033_kernel_decide
theorem rows249 : actualRows249=WordField.canonicalRows actualModulus 249 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats249 : actualRows249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows249=2892 := by core033_kernel_decide
theorem rows250 : actualRows250=WordField.canonicalRows actualModulus 250 (.badd 248 249) := by core033_kernel_decide
theorem stats250 : actualRows250.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows250=5388 := by core033_kernel_decide
theorem rows251 : actualRows251=WordField.canonicalRows actualModulus 251 (.shr 226 1) := by core033_kernel_decide
theorem stats251 : actualRows251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows251=5052 := by core033_kernel_decide
theorem rows252 : actualRows252=WordField.canonicalRows actualModulus 252 (.band 250 251) := by core033_kernel_decide
theorem stats252 : actualRows252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows252=5124 := by core033_kernel_decide
theorem rows253 : actualRows253=WordField.canonicalRows actualModulus 253 (.shr 96 0) := by core033_kernel_decide
theorem stats253 : actualRows253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows253=5124 := by core033_kernel_decide
theorem rows254 : actualRows254=WordField.canonicalRows actualModulus 254 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats254 : actualRows254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows254=2892 := by core033_kernel_decide
theorem rows255 : actualRows255=WordField.canonicalRows actualModulus 255 (.band 253 254) := by core033_kernel_decide
theorem stats255 : actualRows255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows255=5124 := by core033_kernel_decide
theorem rows256 : actualRows256=WordField.canonicalRows actualModulus 256 (.bnot 255) := by core033_kernel_decide
theorem stats256 : actualRows256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows256=6276 := by core033_kernel_decide
theorem rows257 : actualRows257=WordField.canonicalRows actualModulus 257 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats257 : actualRows257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows257=2892 := by core033_kernel_decide
theorem rows258 : actualRows258=WordField.canonicalRows actualModulus 258 (.badd 256 257) := by core033_kernel_decide
theorem stats258 : actualRows258.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows258=5388 := by core033_kernel_decide
theorem rows259 : actualRows259=WordField.canonicalRows actualModulus 259 (.bnot 258) := by core033_kernel_decide
theorem stats259 : actualRows259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows259=6276 := by core033_kernel_decide
theorem rows260 : actualRows260=WordField.canonicalRows actualModulus 260 (.band 259 226) := by core033_kernel_decide
theorem stats260 : actualRows260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows260=5124 := by core033_kernel_decide
theorem rows261 : actualRows261=WordField.canonicalRows actualModulus 261 (.bxor 252 260) := by core033_kernel_decide
theorem stats261 : actualRows261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows261=7428 := by core033_kernel_decide
theorem rows262 : actualRows262=WordField.canonicalRows actualModulus 262 (.shr 96 1) := by core033_kernel_decide
theorem stats262 : actualRows262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows262=5052 := by core033_kernel_decide
theorem rows263 : actualRows263=WordField.canonicalRows actualModulus 263 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats263 : actualRows263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows263=2892 := by core033_kernel_decide
theorem rows264 : actualRows264=WordField.canonicalRows actualModulus 264 (.band 262 263) := by core033_kernel_decide
theorem stats264 : actualRows264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows264=5124 := by core033_kernel_decide
theorem rows265 : actualRows265=WordField.canonicalRows actualModulus 265 (.bnot 264) := by core033_kernel_decide
theorem stats265 : actualRows265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows265=6276 := by core033_kernel_decide
theorem rows266 : actualRows266=WordField.canonicalRows actualModulus 266 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats266 : actualRows266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows266=2892 := by core033_kernel_decide
theorem rows267 : actualRows267=WordField.canonicalRows actualModulus 267 (.badd 265 266) := by core033_kernel_decide
theorem stats267 : actualRows267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows267=5388 := by core033_kernel_decide
theorem rows268 : actualRows268=WordField.canonicalRows actualModulus 268 (.shr 261 2) := by core033_kernel_decide
theorem stats268 : actualRows268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows268=4980 := by core033_kernel_decide
theorem rows269 : actualRows269=WordField.canonicalRows actualModulus 269 (.band 267 268) := by core033_kernel_decide
theorem stats269 : actualRows269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows269=5124 := by core033_kernel_decide
theorem rows270 : actualRows270=WordField.canonicalRows actualModulus 270 (.shr 96 1) := by core033_kernel_decide
theorem stats270 : actualRows270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows270=5052 := by core033_kernel_decide
theorem rows271 : actualRows271=WordField.canonicalRows actualModulus 271 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats271 : actualRows271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows271=2892 := by core033_kernel_decide
theorem rows272 : actualRows272=WordField.canonicalRows actualModulus 272 (.band 270 271) := by core033_kernel_decide
theorem stats272 : actualRows272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows272=5124 := by core033_kernel_decide
theorem rows273 : actualRows273=WordField.canonicalRows actualModulus 273 (.bnot 272) := by core033_kernel_decide
theorem stats273 : actualRows273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows273=6276 := by core033_kernel_decide
theorem rows274 : actualRows274=WordField.canonicalRows actualModulus 274 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats274 : actualRows274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows274=2892 := by core033_kernel_decide
theorem rows275 : actualRows275=WordField.canonicalRows actualModulus 275 (.badd 273 274) := by core033_kernel_decide
theorem stats275 : actualRows275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows275=5388 := by core033_kernel_decide
theorem rows276 : actualRows276=WordField.canonicalRows actualModulus 276 (.bnot 275) := by core033_kernel_decide
theorem stats276 : actualRows276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows276=6276 := by core033_kernel_decide
theorem rows277 : actualRows277=WordField.canonicalRows actualModulus 277 (.band 276 261) := by core033_kernel_decide
theorem stats277 : actualRows277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows277=5124 := by core033_kernel_decide
theorem rows278 : actualRows278=WordField.canonicalRows actualModulus 278 (.bxor 269 277) := by core033_kernel_decide
theorem stats278 : actualRows278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows278=7428 := by core033_kernel_decide
theorem rows279 : actualRows279=WordField.canonicalRows actualModulus 279 (.shr 96 2) := by core033_kernel_decide
theorem stats279 : actualRows279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows279=4980 := by core033_kernel_decide
theorem rows280 : actualRows280=WordField.canonicalRows actualModulus 280 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats280 : actualRows280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows280=2892 := by core033_kernel_decide
theorem rows281 : actualRows281=WordField.canonicalRows actualModulus 281 (.band 279 280) := by core033_kernel_decide
theorem stats281 : actualRows281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows281=5124 := by core033_kernel_decide
theorem rows282 : actualRows282=WordField.canonicalRows actualModulus 282 (.bnot 281) := by core033_kernel_decide
theorem stats282 : actualRows282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows282=6276 := by core033_kernel_decide
theorem rows283 : actualRows283=WordField.canonicalRows actualModulus 283 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats283 : actualRows283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows283=2892 := by core033_kernel_decide
theorem rows284 : actualRows284=WordField.canonicalRows actualModulus 284 (.badd 282 283) := by core033_kernel_decide
theorem stats284 : actualRows284.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows284=5388 := by core033_kernel_decide
theorem rows285 : actualRows285=WordField.canonicalRows actualModulus 285 (.shr 278 4) := by core033_kernel_decide
theorem stats285 : actualRows285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows285=4836 := by core033_kernel_decide
theorem rows286 : actualRows286=WordField.canonicalRows actualModulus 286 (.band 284 285) := by core033_kernel_decide
theorem stats286 : actualRows286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows286=5124 := by core033_kernel_decide
theorem rows287 : actualRows287=WordField.canonicalRows actualModulus 287 (.shr 96 2) := by core033_kernel_decide
theorem stats287 : actualRows287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows287=4980 := by core033_kernel_decide
theorem rows288 : actualRows288=WordField.canonicalRows actualModulus 288 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats288 : actualRows288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows288=2892 := by core033_kernel_decide
theorem rows289 : actualRows289=WordField.canonicalRows actualModulus 289 (.band 287 288) := by core033_kernel_decide
theorem stats289 : actualRows289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows289=5124 := by core033_kernel_decide
def partRows3 : List R1CS.Row := actualRows226++actualRows227++actualRows228++actualRows229++actualRows230++actualRows231++actualRows232++actualRows233++actualRows234++actualRows235++actualRows236++actualRows237++actualRows238++actualRows239++actualRows240++actualRows241++actualRows242++actualRows243++actualRows244++actualRows245++actualRows246++actualRows247++actualRows248++actualRows249++actualRows250++actualRows251++actualRows252++actualRows253++actualRows254++actualRows255++actualRows256++actualRows257++actualRows258++actualRows259++actualRows260++actualRows261++actualRows262++actualRows263++actualRows264++actualRows265++actualRows266++actualRows267++actualRows268++actualRows269++actualRows270++actualRows271++actualRows272++actualRows273++actualRows274++actualRows275++actualRows276++actualRows277++actualRows278++actualRows279++actualRows280++actualRows281++actualRows282++actualRows283++actualRows284++actualRows285++actualRows286++actualRows287++actualRows288++actualRows289
def partOps3 : List WordIR.Op := [.bxor 169 225,.shr 93 3,.literal (BitVec.ofNat 32 0),.bnot 228,.band 227 229,.shr 93 3,.literal (BitVec.ofNat 32 0),.bnot 232,.bxor 231 233,.shr 93 3,.literal (BitVec.ofNat 32 0),.bnot 236,.badd 235 237,.bnot 238,.band 234 239,.bxor 230 240,.shr 241 31,.literal (BitVec.ofNat 32 1),.bxor 242 243,.shr 96 0,.literal (BitVec.ofNat 32 1),.band 245 246,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 248 249,.shr 226 1,.band 250 251,.shr 96 0,.literal (BitVec.ofNat 32 1),.band 253 254,.bnot 255,.literal (BitVec.ofNat 32 1),.badd 256 257,.bnot 258,.band 259 226,.bxor 252 260,.shr 96 1,.literal (BitVec.ofNat 32 1),.band 262 263,.bnot 264,.literal (BitVec.ofNat 32 1),.badd 265 266,.shr 261 2,.band 267 268,.shr 96 1,.literal (BitVec.ofNat 32 1),.band 270 271,.bnot 272,.literal (BitVec.ofNat 32 1),.badd 273 274,.bnot 275,.band 276 261,.bxor 269 277,.shr 96 2,.literal (BitVec.ofNat 32 1),.band 279 280,.bnot 281,.literal (BitVec.ofNat 32 1),.badd 282 283,.shr 278 4,.band 284 285,.shr 96 2,.literal (BitVec.ofNat 32 1),.band 287 288]
theorem partExact3 : partRows3=WordField.rows actualModulus 226 partOps3 := by
  simp only [partRows3,partOps3,WordField.rows,rows226,rows227,rows228,rows229,rows230,rows231,rows232,rows233,rows234,rows235,rows236,rows237,rows238,rows239,rows240,rows241,rows242,rows243,rows244,rows245,rows246,rows247,rows248,rows249,rows250,rows251,rows252,rows253,rows254,rows255,rows256,rows257,rows258,rows259,rows260,rows261,rows262,rows263,rows264,rows265,rows266,rows267,rows268,rows269,rows270,rows271,rows272,rows273,rows274,rows275,rows276,rows277,rows278,rows279,rows280,rows281,rows282,rows283,rows284,rows285,rows286,rows287,rows288,rows289,List.append_assoc,List.append_nil]
theorem partLength3 : partOps3.length=64 := by decide
theorem partStats3 : partRows3.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows3=318504 := by
  simp only [partRows3,List.length_append,MatrixRowBlocks.rows_weight_append,stats226.1,stats226.2,stats227.1,stats227.2,stats228.1,stats228.2,stats229.1,stats229.2,stats230.1,stats230.2,stats231.1,stats231.2,stats232.1,stats232.2,stats233.1,stats233.2,stats234.1,stats234.2,stats235.1,stats235.2,stats236.1,stats236.2,stats237.1,stats237.2,stats238.1,stats238.2,stats239.1,stats239.2,stats240.1,stats240.2,stats241.1,stats241.2,stats242.1,stats242.2,stats243.1,stats243.2,stats244.1,stats244.2,stats245.1,stats245.2,stats246.1,stats246.2,stats247.1,stats247.2,stats248.1,stats248.2,stats249.1,stats249.2,stats250.1,stats250.2,stats251.1,stats251.2,stats252.1,stats252.2,stats253.1,stats253.2,stats254.1,stats254.2,stats255.1,stats255.2,stats256.1,stats256.2,stats257.1,stats257.2,stats258.1,stats258.2,stats259.1,stats259.2,stats260.1,stats260.2,stats261.1,stats261.2,stats262.1,stats262.2,stats263.1,stats263.2,stats264.1,stats264.2,stats265.1,stats265.2,stats266.1,stats266.2,stats267.1,stats267.2,stats268.1,stats268.2,stats269.1,stats269.2,stats270.1,stats270.2,stats271.1,stats271.2,stats272.1,stats272.2,stats273.1,stats273.2,stats274.1,stats274.2,stats275.1,stats275.2,stats276.1,stats276.2,stats277.1,stats277.2,stats278.1,stats278.2,stats279.1,stats279.2,stats280.1,stats280.2,stats281.1,stats281.2,stats282.1,stats282.2,stats283.1,stats283.2,stats284.1,stats284.2,stats285.1,stats285.2,stats286.1,stats286.2,stats287.1,stats287.2,stats288.1,stats288.2,stats289.1,stats289.2]
  decide
end PathFrameCheckedRows
