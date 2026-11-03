import ActualPathFrameIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathFrameGroup4
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op256 : List WordIR.Op := [.bnot 289]
def bytes256 : Bytes := ("    let r00000122: u32 = !r00000121;\n" : String).toByteArray.data.toList
theorem checked256 : bytes256=statementBytes 290 (op256.map lower) ∧ bytes256.length=37 := by core033_kernel_decide
def op257 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes257 : Bytes := ("    let r00000123: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked257 : bytes257=statementBytes 291 (op257.map lower) ∧ bytes257.length=41 := by core033_kernel_decide
def op258 : List WordIR.Op := [.badd 290 291]
def bytes258 : Bytes := ("    let r00000124: u32 = r00000122.wrapping_add(r00000123);\n" : String).toByteArray.data.toList
theorem checked258 : bytes258=statementBytes 292 (op258.map lower) ∧ bytes258.length=60 := by core033_kernel_decide
def op259 : List WordIR.Op := [.bnot 292]
def bytes259 : Bytes := ("    let r00000125: u32 = !r00000124;\n" : String).toByteArray.data.toList
theorem checked259 : bytes259=statementBytes 293 (op259.map lower) ∧ bytes259.length=37 := by core033_kernel_decide
def op260 : List WordIR.Op := [.band 293 278]
def bytes260 : Bytes := ("    let r00000126: u32 = r00000125 & r00000116;\n" : String).toByteArray.data.toList
theorem checked260 : bytes260=statementBytes 294 (op260.map lower) ∧ bytes260.length=48 := by core033_kernel_decide
def op261 : List WordIR.Op := [.bxor 286 294]
def bytes261 : Bytes := ("    let r00000127: u32 = r0000011e ^ r00000126;\n" : String).toByteArray.data.toList
theorem checked261 : bytes261=statementBytes 295 (op261.map lower) ∧ bytes261.length=48 := by core033_kernel_decide
def op262 : List WordIR.Op := [.shr 96 3]
def bytes262 : Bytes := ("    let r00000128: u32 = r00000060 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked262 : bytes262=statementBytes 296 (op262.map lower) ∧ bytes262.length=54 := by core033_kernel_decide
def op263 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes263 : Bytes := ("    let r00000129: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked263 : bytes263=statementBytes 297 (op263.map lower) ∧ bytes263.length=41 := by core033_kernel_decide
def op264 : List WordIR.Op := [.band 296 297]
def bytes264 : Bytes := ("    let r0000012a: u32 = r00000128 & r00000129;\n" : String).toByteArray.data.toList
theorem checked264 : bytes264=statementBytes 298 (op264.map lower) ∧ bytes264.length=48 := by core033_kernel_decide
def op265 : List WordIR.Op := [.bnot 298]
def bytes265 : Bytes := ("    let r0000012b: u32 = !r0000012a;\n" : String).toByteArray.data.toList
theorem checked265 : bytes265=statementBytes 299 (op265.map lower) ∧ bytes265.length=37 := by core033_kernel_decide
def op266 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes266 : Bytes := ("    let r0000012c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked266 : bytes266=statementBytes 300 (op266.map lower) ∧ bytes266.length=41 := by core033_kernel_decide
def op267 : List WordIR.Op := [.badd 299 300]
def bytes267 : Bytes := ("    let r0000012d: u32 = r0000012b.wrapping_add(r0000012c);\n" : String).toByteArray.data.toList
theorem checked267 : bytes267=statementBytes 301 (op267.map lower) ∧ bytes267.length=60 := by core033_kernel_decide
def op268 : List WordIR.Op := [.shr 295 8]
def bytes268 : Bytes := ("    let r0000012e: u32 = r00000127 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked268 : bytes268=statementBytes 302 (op268.map lower) ∧ bytes268.length=54 := by core033_kernel_decide
def op269 : List WordIR.Op := [.band 301 302]
def bytes269 : Bytes := ("    let r0000012f: u32 = r0000012d & r0000012e;\n" : String).toByteArray.data.toList
theorem checked269 : bytes269=statementBytes 303 (op269.map lower) ∧ bytes269.length=48 := by core033_kernel_decide
def op270 : List WordIR.Op := [.shr 96 3]
def bytes270 : Bytes := ("    let r00000130: u32 = r00000060 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked270 : bytes270=statementBytes 304 (op270.map lower) ∧ bytes270.length=54 := by core033_kernel_decide
def op271 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes271 : Bytes := ("    let r00000131: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked271 : bytes271=statementBytes 305 (op271.map lower) ∧ bytes271.length=41 := by core033_kernel_decide
def op272 : List WordIR.Op := [.band 304 305]
def bytes272 : Bytes := ("    let r00000132: u32 = r00000130 & r00000131;\n" : String).toByteArray.data.toList
theorem checked272 : bytes272=statementBytes 306 (op272.map lower) ∧ bytes272.length=48 := by core033_kernel_decide
def op273 : List WordIR.Op := [.bnot 306]
def bytes273 : Bytes := ("    let r00000133: u32 = !r00000132;\n" : String).toByteArray.data.toList
theorem checked273 : bytes273=statementBytes 307 (op273.map lower) ∧ bytes273.length=37 := by core033_kernel_decide
def op274 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes274 : Bytes := ("    let r00000134: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked274 : bytes274=statementBytes 308 (op274.map lower) ∧ bytes274.length=41 := by core033_kernel_decide
def op275 : List WordIR.Op := [.badd 307 308]
def bytes275 : Bytes := ("    let r00000135: u32 = r00000133.wrapping_add(r00000134);\n" : String).toByteArray.data.toList
theorem checked275 : bytes275=statementBytes 309 (op275.map lower) ∧ bytes275.length=60 := by core033_kernel_decide
def op276 : List WordIR.Op := [.bnot 309]
def bytes276 : Bytes := ("    let r00000136: u32 = !r00000135;\n" : String).toByteArray.data.toList
theorem checked276 : bytes276=statementBytes 310 (op276.map lower) ∧ bytes276.length=37 := by core033_kernel_decide
def op277 : List WordIR.Op := [.band 310 295]
def bytes277 : Bytes := ("    let r00000137: u32 = r00000136 & r00000127;\n" : String).toByteArray.data.toList
theorem checked277 : bytes277=statementBytes 311 (op277.map lower) ∧ bytes277.length=48 := by core033_kernel_decide
def op278 : List WordIR.Op := [.bxor 303 311]
def bytes278 : Bytes := ("    let r00000138: u32 = r0000012f ^ r00000137;\n" : String).toByteArray.data.toList
theorem checked278 : bytes278=statementBytes 312 (op278.map lower) ∧ bytes278.length=48 := by core033_kernel_decide
def op279 : List WordIR.Op := [.shr 96 4]
def bytes279 : Bytes := ("    let r00000139: u32 = r00000060 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked279 : bytes279=statementBytes 313 (op279.map lower) ∧ bytes279.length=54 := by core033_kernel_decide
def op280 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes280 : Bytes := ("    let r0000013a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked280 : bytes280=statementBytes 314 (op280.map lower) ∧ bytes280.length=41 := by core033_kernel_decide
def op281 : List WordIR.Op := [.band 313 314]
def bytes281 : Bytes := ("    let r0000013b: u32 = r00000139 & r0000013a;\n" : String).toByteArray.data.toList
theorem checked281 : bytes281=statementBytes 315 (op281.map lower) ∧ bytes281.length=48 := by core033_kernel_decide
def op282 : List WordIR.Op := [.bnot 315]
def bytes282 : Bytes := ("    let r0000013c: u32 = !r0000013b;\n" : String).toByteArray.data.toList
theorem checked282 : bytes282=statementBytes 316 (op282.map lower) ∧ bytes282.length=37 := by core033_kernel_decide
def op283 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes283 : Bytes := ("    let r0000013d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked283 : bytes283=statementBytes 317 (op283.map lower) ∧ bytes283.length=41 := by core033_kernel_decide
def op284 : List WordIR.Op := [.badd 316 317]
def bytes284 : Bytes := ("    let r0000013e: u32 = r0000013c.wrapping_add(r0000013d);\n" : String).toByteArray.data.toList
theorem checked284 : bytes284=statementBytes 318 (op284.map lower) ∧ bytes284.length=60 := by core033_kernel_decide
def op285 : List WordIR.Op := [.shr 312 16]
def bytes285 : Bytes := ("    let r0000013f: u32 = r00000138 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked285 : bytes285=statementBytes 319 (op285.map lower) ∧ bytes285.length=54 := by core033_kernel_decide
def op286 : List WordIR.Op := [.band 318 319]
def bytes286 : Bytes := ("    let r00000140: u32 = r0000013e & r0000013f;\n" : String).toByteArray.data.toList
theorem checked286 : bytes286=statementBytes 320 (op286.map lower) ∧ bytes286.length=48 := by core033_kernel_decide
def op287 : List WordIR.Op := [.shr 96 4]
def bytes287 : Bytes := ("    let r00000141: u32 = r00000060 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked287 : bytes287=statementBytes 321 (op287.map lower) ∧ bytes287.length=54 := by core033_kernel_decide
def op288 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes288 : Bytes := ("    let r00000142: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked288 : bytes288=statementBytes 322 (op288.map lower) ∧ bytes288.length=41 := by core033_kernel_decide
def op289 : List WordIR.Op := [.band 321 322]
def bytes289 : Bytes := ("    let r00000143: u32 = r00000141 & r00000142;\n" : String).toByteArray.data.toList
theorem checked289 : bytes289=statementBytes 323 (op289.map lower) ∧ bytes289.length=48 := by core033_kernel_decide
def op290 : List WordIR.Op := [.bnot 323]
def bytes290 : Bytes := ("    let r00000144: u32 = !r00000143;\n" : String).toByteArray.data.toList
theorem checked290 : bytes290=statementBytes 324 (op290.map lower) ∧ bytes290.length=37 := by core033_kernel_decide
def op291 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes291 : Bytes := ("    let r00000145: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked291 : bytes291=statementBytes 325 (op291.map lower) ∧ bytes291.length=41 := by core033_kernel_decide
def op292 : List WordIR.Op := [.badd 324 325]
def bytes292 : Bytes := ("    let r00000146: u32 = r00000144.wrapping_add(r00000145);\n" : String).toByteArray.data.toList
theorem checked292 : bytes292=statementBytes 326 (op292.map lower) ∧ bytes292.length=60 := by core033_kernel_decide
def op293 : List WordIR.Op := [.bnot 326]
def bytes293 : Bytes := ("    let r00000147: u32 = !r00000146;\n" : String).toByteArray.data.toList
theorem checked293 : bytes293=statementBytes 327 (op293.map lower) ∧ bytes293.length=37 := by core033_kernel_decide
def op294 : List WordIR.Op := [.band 327 312]
def bytes294 : Bytes := ("    let r00000148: u32 = r00000147 & r00000138;\n" : String).toByteArray.data.toList
theorem checked294 : bytes294=statementBytes 328 (op294.map lower) ∧ bytes294.length=48 := by core033_kernel_decide
def op295 : List WordIR.Op := [.bxor 320 328]
def bytes295 : Bytes := ("    let r00000149: u32 = r00000140 ^ r00000148;\n" : String).toByteArray.data.toList
theorem checked295 : bytes295=statementBytes 329 (op295.map lower) ∧ bytes295.length=48 := by core033_kernel_decide
def op296 : List WordIR.Op := [.shr 96 5]
def bytes296 : Bytes := ("    let r0000014a: u32 = r00000060 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked296 : bytes296=statementBytes 330 (op296.map lower) ∧ bytes296.length=54 := by core033_kernel_decide
def op297 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes297 : Bytes := ("    let r0000014b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked297 : bytes297=statementBytes 331 (op297.map lower) ∧ bytes297.length=41 := by core033_kernel_decide
def op298 : List WordIR.Op := [.bnot 331]
def bytes298 : Bytes := ("    let r0000014c: u32 = !r0000014b;\n" : String).toByteArray.data.toList
theorem checked298 : bytes298=statementBytes 332 (op298.map lower) ∧ bytes298.length=37 := by core033_kernel_decide
def op299 : List WordIR.Op := [.band 330 332]
def bytes299 : Bytes := ("    let r0000014d: u32 = r0000014a & r0000014c;\n" : String).toByteArray.data.toList
theorem checked299 : bytes299=statementBytes 333 (op299.map lower) ∧ bytes299.length=48 := by core033_kernel_decide
def op300 : List WordIR.Op := [.shr 96 5]
def bytes300 : Bytes := ("    let r0000014e: u32 = r00000060 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked300 : bytes300=statementBytes 334 (op300.map lower) ∧ bytes300.length=54 := by core033_kernel_decide
def op301 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes301 : Bytes := ("    let r0000014f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked301 : bytes301=statementBytes 335 (op301.map lower) ∧ bytes301.length=41 := by core033_kernel_decide
def op302 : List WordIR.Op := [.bnot 335]
def bytes302 : Bytes := ("    let r00000150: u32 = !r0000014f;\n" : String).toByteArray.data.toList
theorem checked302 : bytes302=statementBytes 336 (op302.map lower) ∧ bytes302.length=37 := by core033_kernel_decide
def op303 : List WordIR.Op := [.bxor 334 336]
def bytes303 : Bytes := ("    let r00000151: u32 = r0000014e ^ r00000150;\n" : String).toByteArray.data.toList
theorem checked303 : bytes303=statementBytes 337 (op303.map lower) ∧ bytes303.length=48 := by core033_kernel_decide
def op304 : List WordIR.Op := [.shr 96 5]
def bytes304 : Bytes := ("    let r00000152: u32 = r00000060 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked304 : bytes304=statementBytes 338 (op304.map lower) ∧ bytes304.length=54 := by core033_kernel_decide
def op305 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes305 : Bytes := ("    let r00000153: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked305 : bytes305=statementBytes 339 (op305.map lower) ∧ bytes305.length=41 := by core033_kernel_decide
def op306 : List WordIR.Op := [.bnot 339]
def bytes306 : Bytes := ("    let r00000154: u32 = !r00000153;\n" : String).toByteArray.data.toList
theorem checked306 : bytes306=statementBytes 340 (op306.map lower) ∧ bytes306.length=37 := by core033_kernel_decide
def op307 : List WordIR.Op := [.badd 338 340]
def bytes307 : Bytes := ("    let r00000155: u32 = r00000152.wrapping_add(r00000154);\n" : String).toByteArray.data.toList
theorem checked307 : bytes307=statementBytes 341 (op307.map lower) ∧ bytes307.length=60 := by core033_kernel_decide
def op308 : List WordIR.Op := [.bnot 341]
def bytes308 : Bytes := ("    let r00000156: u32 = !r00000155;\n" : String).toByteArray.data.toList
theorem checked308 : bytes308=statementBytes 342 (op308.map lower) ∧ bytes308.length=37 := by core033_kernel_decide
def op309 : List WordIR.Op := [.band 337 342]
def bytes309 : Bytes := ("    let r00000157: u32 = r00000151 & r00000156;\n" : String).toByteArray.data.toList
theorem checked309 : bytes309=statementBytes 343 (op309.map lower) ∧ bytes309.length=48 := by core033_kernel_decide
def op310 : List WordIR.Op := [.bxor 333 343]
def bytes310 : Bytes := ("    let r00000158: u32 = r0000014d ^ r00000157;\n" : String).toByteArray.data.toList
theorem checked310 : bytes310=statementBytes 344 (op310.map lower) ∧ bytes310.length=48 := by core033_kernel_decide
def op311 : List WordIR.Op := [.shr 344 31]
def bytes311 : Bytes := ("    let r00000159: u32 = r00000158 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked311 : bytes311=statementBytes 345 (op311.map lower) ∧ bytes311.length=54 := by core033_kernel_decide
def op312 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes312 : Bytes := ("    let r0000015a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked312 : bytes312=statementBytes 346 (op312.map lower) ∧ bytes312.length=41 := by core033_kernel_decide
def op313 : List WordIR.Op := [.bxor 345 346]
def bytes313 : Bytes := ("    let r0000015b: u32 = r00000159 ^ r0000015a;\n" : String).toByteArray.data.toList
theorem checked313 : bytes313=statementBytes 347 (op313.map lower) ∧ bytes313.length=48 := by core033_kernel_decide
def op314 : List WordIR.Op := [.shr 329 0]
def bytes314 : Bytes := ("    let r0000015c: u32 = r00000149 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked314 : bytes314=statementBytes 348 (op314.map lower) ∧ bytes314.length=54 := by core033_kernel_decide
def op315 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes315 : Bytes := ("    let r0000015d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked315 : bytes315=statementBytes 349 (op315.map lower) ∧ bytes315.length=41 := by core033_kernel_decide
def op316 : List WordIR.Op := [.band 348 349]
def bytes316 : Bytes := ("    let r0000015e: u32 = r0000015c & r0000015d;\n" : String).toByteArray.data.toList
theorem checked316 : bytes316=statementBytes 350 (op316.map lower) ∧ bytes316.length=48 := by core033_kernel_decide
def op317 : List WordIR.Op := [.bnot 350]
def bytes317 : Bytes := ("    let r0000015f: u32 = !r0000015e;\n" : String).toByteArray.data.toList
theorem checked317 : bytes317=statementBytes 351 (op317.map lower) ∧ bytes317.length=37 := by core033_kernel_decide
def op318 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes318 : Bytes := ("    let r00000160: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked318 : bytes318=statementBytes 352 (op318.map lower) ∧ bytes318.length=41 := by core033_kernel_decide
def op319 : List WordIR.Op := [.badd 351 352]
def bytes319 : Bytes := ("    let r00000161: u32 = r0000015f.wrapping_add(r00000160);\n" : String).toByteArray.data.toList
theorem checked319 : bytes319=statementBytes 353 (op319.map lower) ∧ bytes319.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op256,op257,op258,op259,op260,op261,op262,op263,op264,op265,op266,op267,op268,op269,op270,op271,op272,op273,op274,op275,op276,op277,op278,op279,op280,op281,op282,op283,op284,op285,op286,op287,op288,op289,op290,op291,op292,op293,op294,op295,op296,op297,op298,op299,op300,op301,op302,op303,op304,op305,op306,op307,op308,op309,op310,op311,op312,op313,op314,op315,op316,op317,op318,op319]
def chunks : List Bytes := [bytes256,bytes257,bytes258,bytes259,bytes260,bytes261,bytes262,bytes263,bytes264,bytes265,bytes266,bytes267,bytes268,bytes269,bytes270,bytes271,bytes272,bytes273,bytes274,bytes275,bytes276,bytes277,bytes278,bytes279,bytes280,bytes281,bytes282,bytes283,bytes284,bytes285,bytes286,bytes287,bytes288,bytes289,bytes290,bytes291,bytes292,bytes293,bytes294,bytes295,bytes296,bytes297,bytes298,bytes299,bytes300,bytes301,bytes302,bytes303,bytes304,bytes305,bytes306,bytes307,bytes308,bytes309,bytes310,bytes311,bytes312,bytes313,bytes314,bytes315,bytes316,bytes317,bytes318,bytes319]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 290 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked256.1 (.cons _ _ _ _ _ checked257.1 (.cons _ _ _ _ _ checked258.1 (.cons _ _ _ _ _ checked259.1 (.cons _ _ _ _ _ checked260.1 (.cons _ _ _ _ _ checked261.1 (.cons _ _ _ _ _ checked262.1 (.cons _ _ _ _ _ checked263.1 (.cons _ _ _ _ _ checked264.1 (.cons _ _ _ _ _ checked265.1 (.cons _ _ _ _ _ checked266.1 (.cons _ _ _ _ _ checked267.1 (.cons _ _ _ _ _ checked268.1 (.cons _ _ _ _ _ checked269.1 (.cons _ _ _ _ _ checked270.1 (.cons _ _ _ _ _ checked271.1 (.cons _ _ _ _ _ checked272.1 (.cons _ _ _ _ _ checked273.1 (.cons _ _ _ _ _ checked274.1 (.cons _ _ _ _ _ checked275.1 (.cons _ _ _ _ _ checked276.1 (.cons _ _ _ _ _ checked277.1 (.cons _ _ _ _ _ checked278.1 (.cons _ _ _ _ _ checked279.1 (.cons _ _ _ _ _ checked280.1 (.cons _ _ _ _ _ checked281.1 (.cons _ _ _ _ _ checked282.1 (.cons _ _ _ _ _ checked283.1 (.cons _ _ _ _ _ checked284.1 (.cons _ _ _ _ _ checked285.1 (.cons _ _ _ _ _ checked286.1 (.cons _ _ _ _ _ checked287.1 (.cons _ _ _ _ _ checked288.1 (.cons _ _ _ _ _ checked289.1 (.cons _ _ _ _ _ checked290.1 (.cons _ _ _ _ _ checked291.1 (.cons _ _ _ _ _ checked292.1 (.cons _ _ _ _ _ checked293.1 (.cons _ _ _ _ _ checked294.1 (.cons _ _ _ _ _ checked295.1 (.cons _ _ _ _ _ checked296.1 (.cons _ _ _ _ _ checked297.1 (.cons _ _ _ _ _ checked298.1 (.cons _ _ _ _ _ checked299.1 (.cons _ _ _ _ _ checked300.1 (.cons _ _ _ _ _ checked301.1 (.cons _ _ _ _ _ checked302.1 (.cons _ _ _ _ _ checked303.1 (.cons _ _ _ _ _ checked304.1 (.cons _ _ _ _ _ checked305.1 (.cons _ _ _ _ _ checked306.1 (.cons _ _ _ _ _ checked307.1 (.cons _ _ _ _ _ checked308.1 (.cons _ _ _ _ _ checked309.1 (.cons _ _ _ _ _ checked310.1 (.cons _ _ _ _ _ checked311.1 (.cons _ _ _ _ _ checked312.1 (.cons _ _ _ _ _ checked313.1 (.cons _ _ _ _ _ checked314.1 (.cons _ _ _ _ _ checked315.1 (.cons _ _ _ _ _ checked316.1 (.cons _ _ _ _ _ checked317.1 (.cons _ _ _ _ _ checked318.1 (.cons _ _ _ _ _ checked319.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 290 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2974 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked256.2,checked257.2,checked258.2,checked259.2,checked260.2,checked261.2,checked262.2,checked263.2,checked264.2,checked265.2,checked266.2,checked267.2,checked268.2,checked269.2,checked270.2,checked271.2,checked272.2,checked273.2,checked274.2,checked275.2,checked276.2,checked277.2,checked278.2,checked279.2,checked280.2,checked281.2,checked282.2,checked283.2,checked284.2,checked285.2,checked286.2,checked287.2,checked288.2,checked289.2,checked290.2,checked291.2,checked292.2,checked293.2,checked294.2,checked295.2,checked296.2,checked297.2,checked298.2,checked299.2,checked300.2,checked301.2,checked302.2,checked303.2,checked304.2,checked305.2,checked306.2,checked307.2,checked308.2,checked309.2,checked310.2,checked311.2,checked312.2,checked313.2,checked314.2,checked315.2,checked316.2,checked317.2,checked318.2,checked319.2]
  decide
end ArtifactPathFrameGroup4
