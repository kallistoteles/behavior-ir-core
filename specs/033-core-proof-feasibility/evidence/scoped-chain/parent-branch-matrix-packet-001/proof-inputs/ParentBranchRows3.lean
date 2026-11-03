import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData3
import ParentBranchInstructionMatrixData4
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows218 : actualRows218=WordField.canonicalRows actualModulus 218 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats218 : actualRows218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows218=2820 := by core033_kernel_decide
theorem rows219 : actualRows219=WordField.canonicalRows actualModulus 219 (.bnot 218) := by core033_kernel_decide
theorem stats219 : actualRows219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows219=6276 := by core033_kernel_decide
theorem rows220 : actualRows220=WordField.canonicalRows actualModulus 220 (.band 217 219) := by core033_kernel_decide
theorem stats220 : actualRows220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows220=5124 := by core033_kernel_decide
theorem rows221 : actualRows221=WordField.canonicalRows actualModulus 221 (.shr 25 1) := by core033_kernel_decide
theorem stats221 : actualRows221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows221=5052 := by core033_kernel_decide
theorem rows222 : actualRows222=WordField.canonicalRows actualModulus 222 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats222 : actualRows222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows222=2820 := by core033_kernel_decide
theorem rows223 : actualRows223=WordField.canonicalRows actualModulus 223 (.bnot 222) := by core033_kernel_decide
theorem stats223 : actualRows223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows223=6276 := by core033_kernel_decide
theorem rows224 : actualRows224=WordField.canonicalRows actualModulus 224 (.bxor 221 223) := by core033_kernel_decide
theorem stats224 : actualRows224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows224=7428 := by core033_kernel_decide
theorem rows225 : actualRows225=WordField.canonicalRows actualModulus 225 (.shr 25 1) := by core033_kernel_decide
theorem stats225 : actualRows225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows225=5052 := by core033_kernel_decide
theorem rows226 : actualRows226=WordField.canonicalRows actualModulus 226 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats226 : actualRows226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows226=2820 := by core033_kernel_decide
theorem rows227 : actualRows227=WordField.canonicalRows actualModulus 227 (.bnot 226) := by core033_kernel_decide
theorem stats227 : actualRows227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows227=6276 := by core033_kernel_decide
theorem rows228 : actualRows228=WordField.canonicalRows actualModulus 228 (.badd 225 227) := by core033_kernel_decide
theorem stats228 : actualRows228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows228=5388 := by core033_kernel_decide
theorem rows229 : actualRows229=WordField.canonicalRows actualModulus 229 (.bnot 228) := by core033_kernel_decide
theorem stats229 : actualRows229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows229=6276 := by core033_kernel_decide
theorem rows230 : actualRows230=WordField.canonicalRows actualModulus 230 (.band 224 229) := by core033_kernel_decide
theorem stats230 : actualRows230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows230=5124 := by core033_kernel_decide
theorem rows231 : actualRows231=WordField.canonicalRows actualModulus 231 (.bxor 220 230) := by core033_kernel_decide
theorem stats231 : actualRows231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows231=7428 := by core033_kernel_decide
theorem rows232 : actualRows232=WordField.canonicalRows actualModulus 232 (.shr 231 31) := by core033_kernel_decide
theorem stats232 : actualRows232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows232=2892 := by core033_kernel_decide
theorem rows233 : actualRows233=WordField.canonicalRows actualModulus 233 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats233 : actualRows233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows233=2892 := by core033_kernel_decide
theorem rows234 : actualRows234=WordField.canonicalRows actualModulus 234 (.bxor 232 233) := by core033_kernel_decide
theorem stats234 : actualRows234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows234=7428 := by core033_kernel_decide
theorem rows235 : actualRows235=WordField.canonicalRows actualModulus 235 (.literal (BitVec.ofNat 32 99)) := by core033_kernel_decide
theorem stats235 : actualRows235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows235=3108 := by core033_kernel_decide
theorem rows236 : actualRows236=WordField.canonicalRows actualModulus 236 (.literal (BitVec.ofNat 32 111)) := by core033_kernel_decide
theorem stats236 : actualRows236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows236=3252 := by core033_kernel_decide
theorem rows237 : actualRows237=WordField.canonicalRows actualModulus 237 (.literal (BitVec.ofNat 32 114)) := by core033_kernel_decide
theorem stats237 : actualRows237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows237=3108 := by core033_kernel_decide
theorem rows238 : actualRows238=WordField.canonicalRows actualModulus 238 (.literal (BitVec.ofNat 32 101)) := by core033_kernel_decide
theorem stats238 : actualRows238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows238=3108 := by core033_kernel_decide
theorem rows239 : actualRows239=WordField.canonicalRows actualModulus 239 (.literal (BitVec.ofNat 32 48)) := by core033_kernel_decide
theorem stats239 : actualRows239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows239=2964 := by core033_kernel_decide
theorem rows240 : actualRows240=WordField.canonicalRows actualModulus 240 (.literal (BitVec.ofNat 32 51)) := by core033_kernel_decide
theorem stats240 : actualRows240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows240=3108 := by core033_kernel_decide
theorem rows241 : actualRows241=WordField.canonicalRows actualModulus 241 (.literal (BitVec.ofNat 32 51)) := by core033_kernel_decide
theorem stats241 : actualRows241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows241=3108 := by core033_kernel_decide
theorem rows242 : actualRows242=WordField.canonicalRows actualModulus 242 (.literal (BitVec.ofNat 32 46)) := by core033_kernel_decide
theorem stats242 : actualRows242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows242=3108 := by core033_kernel_decide
theorem rows243 : actualRows243=WordField.canonicalRows actualModulus 243 (.literal (BitVec.ofNat 32 115)) := by core033_kernel_decide
theorem stats243 : actualRows243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows243=3180 := by core033_kernel_decide
theorem rows244 : actualRows244=WordField.canonicalRows actualModulus 244 (.literal (BitVec.ofNat 32 101)) := by core033_kernel_decide
theorem stats244 : actualRows244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows244=3108 := by core033_kernel_decide
theorem rows245 : actualRows245=WordField.canonicalRows actualModulus 245 (.literal (BitVec.ofNat 32 109)) := by core033_kernel_decide
theorem stats245 : actualRows245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows245=3180 := by core033_kernel_decide
theorem rows246 : actualRows246=WordField.canonicalRows actualModulus 246 (.literal (BitVec.ofNat 32 97)) := by core033_kernel_decide
theorem stats246 : actualRows246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows246=3036 := by core033_kernel_decide
theorem rows247 : actualRows247=WordField.canonicalRows actualModulus 247 (.literal (BitVec.ofNat 32 110)) := by core033_kernel_decide
theorem stats247 : actualRows247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows247=3180 := by core033_kernel_decide
theorem rows248 : actualRows248=WordField.canonicalRows actualModulus 248 (.literal (BitVec.ofNat 32 116)) := by core033_kernel_decide
theorem stats248 : actualRows248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows248=3108 := by core033_kernel_decide
theorem rows249 : actualRows249=WordField.canonicalRows actualModulus 249 (.literal (BitVec.ofNat 32 105)) := by core033_kernel_decide
theorem stats249 : actualRows249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows249=3108 := by core033_kernel_decide
theorem rows250 : actualRows250=WordField.canonicalRows actualModulus 250 (.literal (BitVec.ofNat 32 99)) := by core033_kernel_decide
theorem stats250 : actualRows250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows250=3108 := by core033_kernel_decide
theorem rows251 : actualRows251=WordField.canonicalRows actualModulus 251 (.literal (BitVec.ofNat 32 46)) := by core033_kernel_decide
theorem stats251 : actualRows251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows251=3108 := by core033_kernel_decide
theorem rows252 : actualRows252=WordField.canonicalRows actualModulus 252 (.literal (BitVec.ofNat 32 118)) := by core033_kernel_decide
theorem stats252 : actualRows252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows252=3180 := by core033_kernel_decide
theorem rows253 : actualRows253=WordField.canonicalRows actualModulus 253 (.literal (BitVec.ofNat 32 49)) := by core033_kernel_decide
theorem stats253 : actualRows253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows253=3036 := by core033_kernel_decide
theorem rows254 : actualRows254=WordField.canonicalRows actualModulus 254 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats254 : actualRows254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows254=2820 := by core033_kernel_decide
theorem rows255 : actualRows255=WordField.canonicalRows actualModulus 255 (.literal (BitVec.ofNat 32 81)) := by core033_kernel_decide
theorem stats255 : actualRows255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows255=3036 := by core033_kernel_decide
theorem rows256 : actualRows256=WordField.canonicalRows actualModulus 256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats256 : actualRows256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows256=2820 := by core033_kernel_decide
theorem rows257 : actualRows257=WordField.canonicalRows actualModulus 257 (.shr 0 0) := by core033_kernel_decide
theorem stats257 : actualRows257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows257=5124 := by core033_kernel_decide
theorem rows258 : actualRows258=WordField.canonicalRows actualModulus 258 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats258 : actualRows258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows258=3396 := by core033_kernel_decide
theorem rows259 : actualRows259=WordField.canonicalRows actualModulus 259 (.band 257 258) := by core033_kernel_decide
theorem stats259 : actualRows259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows259=5124 := by core033_kernel_decide
theorem rows260 : actualRows260=WordField.canonicalRows actualModulus 260 (.shr 1 0) := by core033_kernel_decide
theorem stats260 : actualRows260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows260=5124 := by core033_kernel_decide
theorem rows261 : actualRows261=WordField.canonicalRows actualModulus 261 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats261 : actualRows261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows261=3396 := by core033_kernel_decide
theorem rows262 : actualRows262=WordField.canonicalRows actualModulus 262 (.band 260 261) := by core033_kernel_decide
theorem stats262 : actualRows262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows262=5124 := by core033_kernel_decide
theorem rows263 : actualRows263=WordField.canonicalRows actualModulus 263 (.shr 1 8) := by core033_kernel_decide
theorem stats263 : actualRows263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows263=4548 := by core033_kernel_decide
theorem rows264 : actualRows264=WordField.canonicalRows actualModulus 264 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats264 : actualRows264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows264=3396 := by core033_kernel_decide
theorem rows265 : actualRows265=WordField.canonicalRows actualModulus 265 (.band 263 264) := by core033_kernel_decide
theorem stats265 : actualRows265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows265=5124 := by core033_kernel_decide
theorem rows266 : actualRows266=WordField.canonicalRows actualModulus 266 (.shr 2 0) := by core033_kernel_decide
theorem stats266 : actualRows266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows266=5124 := by core033_kernel_decide
theorem rows267 : actualRows267=WordField.canonicalRows actualModulus 267 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats267 : actualRows267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows267=3396 := by core033_kernel_decide
theorem rows268 : actualRows268=WordField.canonicalRows actualModulus 268 (.band 266 267) := by core033_kernel_decide
theorem stats268 : actualRows268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows268=5124 := by core033_kernel_decide
theorem rows269 : actualRows269=WordField.canonicalRows actualModulus 269 (.shr 2 8) := by core033_kernel_decide
theorem stats269 : actualRows269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows269=4548 := by core033_kernel_decide
theorem rows270 : actualRows270=WordField.canonicalRows actualModulus 270 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats270 : actualRows270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows270=3396 := by core033_kernel_decide
theorem rows271 : actualRows271=WordField.canonicalRows actualModulus 271 (.band 269 270) := by core033_kernel_decide
theorem stats271 : actualRows271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows271=5124 := by core033_kernel_decide
theorem rows272 : actualRows272=WordField.canonicalRows actualModulus 272 (.shr 2 16) := by core033_kernel_decide
theorem stats272 : actualRows272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows272=3972 := by core033_kernel_decide
theorem rows273 : actualRows273=WordField.canonicalRows actualModulus 273 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats273 : actualRows273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows273=3396 := by core033_kernel_decide
theorem rows274 : actualRows274=WordField.canonicalRows actualModulus 274 (.band 272 273) := by core033_kernel_decide
theorem stats274 : actualRows274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows274=5124 := by core033_kernel_decide
theorem rows275 : actualRows275=WordField.canonicalRows actualModulus 275 (.shr 2 24) := by core033_kernel_decide
theorem stats275 : actualRows275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows275=3396 := by core033_kernel_decide
theorem rows276 : actualRows276=WordField.canonicalRows actualModulus 276 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats276 : actualRows276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows276=3396 := by core033_kernel_decide
theorem rows277 : actualRows277=WordField.canonicalRows actualModulus 277 (.band 275 276) := by core033_kernel_decide
theorem stats277 : actualRows277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows277=5124 := by core033_kernel_decide
theorem rows278 : actualRows278=WordField.canonicalRows actualModulus 278 (.shr 3 0) := by core033_kernel_decide
theorem stats278 : actualRows278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows278=5124 := by core033_kernel_decide
theorem rows279 : actualRows279=WordField.canonicalRows actualModulus 279 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats279 : actualRows279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows279=3396 := by core033_kernel_decide
theorem rows280 : actualRows280=WordField.canonicalRows actualModulus 280 (.band 278 279) := by core033_kernel_decide
theorem stats280 : actualRows280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows280=5124 := by core033_kernel_decide
theorem rows281 : actualRows281=WordField.canonicalRows actualModulus 281 (.shr 3 8) := by core033_kernel_decide
theorem stats281 : actualRows281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows281=4548 := by core033_kernel_decide
def partRows3 : List R1CS.Row := actualRows218++actualRows219++actualRows220++actualRows221++actualRows222++actualRows223++actualRows224++actualRows225++actualRows226++actualRows227++actualRows228++actualRows229++actualRows230++actualRows231++actualRows232++actualRows233++actualRows234++actualRows235++actualRows236++actualRows237++actualRows238++actualRows239++actualRows240++actualRows241++actualRows242++actualRows243++actualRows244++actualRows245++actualRows246++actualRows247++actualRows248++actualRows249++actualRows250++actualRows251++actualRows252++actualRows253++actualRows254++actualRows255++actualRows256++actualRows257++actualRows258++actualRows259++actualRows260++actualRows261++actualRows262++actualRows263++actualRows264++actualRows265++actualRows266++actualRows267++actualRows268++actualRows269++actualRows270++actualRows271++actualRows272++actualRows273++actualRows274++actualRows275++actualRows276++actualRows277++actualRows278++actualRows279++actualRows280++actualRows281
def partOps3 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 218,.band 217 219,.shr 25 1,.literal (BitVec.ofNat 32 0),.bnot 222,.bxor 221 223,.shr 25 1,.literal (BitVec.ofNat 32 0),.bnot 226,.badd 225 227,.bnot 228,.band 224 229,.bxor 220 230,.shr 231 31,.literal (BitVec.ofNat 32 1),.bxor 232 233,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 81),.literal (BitVec.ofNat 32 0),.shr 0 0,.literal (BitVec.ofNat 32 255),.band 257 258,.shr 1 0,.literal (BitVec.ofNat 32 255),.band 260 261,.shr 1 8,.literal (BitVec.ofNat 32 255),.band 263 264,.shr 2 0,.literal (BitVec.ofNat 32 255),.band 266 267,.shr 2 8,.literal (BitVec.ofNat 32 255),.band 269 270,.shr 2 16,.literal (BitVec.ofNat 32 255),.band 272 273,.shr 2 24,.literal (BitVec.ofNat 32 255),.band 275 276,.shr 3 0,.literal (BitVec.ofNat 32 255),.band 278 279,.shr 3 8]
theorem partExact3 : partRows3=WordField.rows actualModulus 218 partOps3 := by
  simp only [partRows3,partOps3,WordField.rows,rows218,rows219,rows220,rows221,rows222,rows223,rows224,rows225,rows226,rows227,rows228,rows229,rows230,rows231,rows232,rows233,rows234,rows235,rows236,rows237,rows238,rows239,rows240,rows241,rows242,rows243,rows244,rows245,rows246,rows247,rows248,rows249,rows250,rows251,rows252,rows253,rows254,rows255,rows256,rows257,rows258,rows259,rows260,rows261,rows262,rows263,rows264,rows265,rows266,rows267,rows268,rows269,rows270,rows271,rows272,rows273,rows274,rows275,rows276,rows277,rows278,rows279,rows280,rows281,List.append_assoc,List.append_nil]
theorem partLength3 : partOps3.length=64 := by decide
theorem partStats3 : partRows3.length=2177 ∧ MatrixRowBlocks.rowsWeight partRows3=264912 := by
  simp only [partRows3,List.length_append,MatrixRowBlocks.rows_weight_append,stats218.1,stats218.2,stats219.1,stats219.2,stats220.1,stats220.2,stats221.1,stats221.2,stats222.1,stats222.2,stats223.1,stats223.2,stats224.1,stats224.2,stats225.1,stats225.2,stats226.1,stats226.2,stats227.1,stats227.2,stats228.1,stats228.2,stats229.1,stats229.2,stats230.1,stats230.2,stats231.1,stats231.2,stats232.1,stats232.2,stats233.1,stats233.2,stats234.1,stats234.2,stats235.1,stats235.2,stats236.1,stats236.2,stats237.1,stats237.2,stats238.1,stats238.2,stats239.1,stats239.2,stats240.1,stats240.2,stats241.1,stats241.2,stats242.1,stats242.2,stats243.1,stats243.2,stats244.1,stats244.2,stats245.1,stats245.2,stats246.1,stats246.2,stats247.1,stats247.2,stats248.1,stats248.2,stats249.1,stats249.2,stats250.1,stats250.2,stats251.1,stats251.2,stats252.1,stats252.2,stats253.1,stats253.2,stats254.1,stats254.2,stats255.1,stats255.2,stats256.1,stats256.2,stats257.1,stats257.2,stats258.1,stats258.2,stats259.1,stats259.2,stats260.1,stats260.2,stats261.1,stats261.2,stats262.1,stats262.2,stats263.1,stats263.2,stats264.1,stats264.2,stats265.1,stats265.2,stats266.1,stats266.2,stats267.1,stats267.2,stats268.1,stats268.2,stats269.1,stats269.2,stats270.1,stats270.2,stats271.1,stats271.2,stats272.1,stats272.2,stats273.1,stats273.2,stats274.1,stats274.2,stats275.1,stats275.2,stats276.1,stats276.2,stats277.1,stats277.2,stats278.1,stats278.2,stats279.1,stats279.2,stats280.1,stats280.2,stats281.1,stats281.2]
  decide
end ParentBranchCheckedRows
