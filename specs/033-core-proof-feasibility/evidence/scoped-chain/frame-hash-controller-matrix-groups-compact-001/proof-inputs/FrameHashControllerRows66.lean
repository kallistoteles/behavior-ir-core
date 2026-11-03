import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData66
import FrameHashControllerInstructionMatrixData67
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4267 : actualRows4267=WordField.canonicalRows actualModulus 4267 (.bxor 4240 4266) := by core033_kernel_decide
theorem stats4267 : actualRows4267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4267=7428 := by core033_kernel_decide
theorem rows4268 : actualRows4268=WordField.canonicalRows actualModulus 4268 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4268 : actualRows4268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4268=2892 := by core033_kernel_decide
theorem rows4269 : actualRows4269=WordField.canonicalRows actualModulus 4269 (.bxor 0 4268) := by core033_kernel_decide
theorem stats4269 : actualRows4269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4269=7428 := by core033_kernel_decide
theorem rows4270 : actualRows4270=WordField.canonicalRows actualModulus 4270 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4270 : actualRows4270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4270=2820 := by core033_kernel_decide
theorem rows4271 : actualRows4271=WordField.canonicalRows actualModulus 4271 (.bnot 4270) := by core033_kernel_decide
theorem stats4271 : actualRows4271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4271=6276 := by core033_kernel_decide
theorem rows4272 : actualRows4272=WordField.canonicalRows actualModulus 4272 (.band 4269 4271) := by core033_kernel_decide
theorem stats4272 : actualRows4272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4272=5124 := by core033_kernel_decide
theorem rows4273 : actualRows4273=WordField.canonicalRows actualModulus 4273 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4273 : actualRows4273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4273=2892 := by core033_kernel_decide
theorem rows4274 : actualRows4274=WordField.canonicalRows actualModulus 4274 (.bxor 0 4273) := by core033_kernel_decide
theorem stats4274 : actualRows4274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4274=7428 := by core033_kernel_decide
theorem rows4275 : actualRows4275=WordField.canonicalRows actualModulus 4275 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4275 : actualRows4275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4275=2820 := by core033_kernel_decide
theorem rows4276 : actualRows4276=WordField.canonicalRows actualModulus 4276 (.bnot 4275) := by core033_kernel_decide
theorem stats4276 : actualRows4276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4276=6276 := by core033_kernel_decide
theorem rows4277 : actualRows4277=WordField.canonicalRows actualModulus 4277 (.bxor 4274 4276) := by core033_kernel_decide
theorem stats4277 : actualRows4277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4277=7428 := by core033_kernel_decide
theorem rows4278 : actualRows4278=WordField.canonicalRows actualModulus 4278 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4278 : actualRows4278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4278=2892 := by core033_kernel_decide
theorem rows4279 : actualRows4279=WordField.canonicalRows actualModulus 4279 (.bxor 0 4278) := by core033_kernel_decide
theorem stats4279 : actualRows4279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4279=7428 := by core033_kernel_decide
theorem rows4280 : actualRows4280=WordField.canonicalRows actualModulus 4280 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4280 : actualRows4280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4280=2820 := by core033_kernel_decide
theorem rows4281 : actualRows4281=WordField.canonicalRows actualModulus 4281 (.bnot 4280) := by core033_kernel_decide
theorem stats4281 : actualRows4281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4281=6276 := by core033_kernel_decide
theorem rows4282 : actualRows4282=WordField.canonicalRows actualModulus 4282 (.badd 4279 4281) := by core033_kernel_decide
theorem stats4282 : actualRows4282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4282=5388 := by core033_kernel_decide
theorem rows4283 : actualRows4283=WordField.canonicalRows actualModulus 4283 (.bnot 4282) := by core033_kernel_decide
theorem stats4283 : actualRows4283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4283=6276 := by core033_kernel_decide
theorem rows4284 : actualRows4284=WordField.canonicalRows actualModulus 4284 (.band 4277 4283) := by core033_kernel_decide
theorem stats4284 : actualRows4284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4284=5124 := by core033_kernel_decide
theorem rows4285 : actualRows4285=WordField.canonicalRows actualModulus 4285 (.bxor 4272 4284) := by core033_kernel_decide
theorem stats4285 : actualRows4285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4285=7428 := by core033_kernel_decide
theorem rows4286 : actualRows4286=WordField.canonicalRows actualModulus 4286 (.shr 4285 31) := by core033_kernel_decide
theorem stats4286 : actualRows4286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4286=2892 := by core033_kernel_decide
theorem rows4287 : actualRows4287=WordField.canonicalRows actualModulus 4287 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4287 : actualRows4287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4287=2892 := by core033_kernel_decide
theorem rows4288 : actualRows4288=WordField.canonicalRows actualModulus 4288 (.bxor 4286 4287) := by core033_kernel_decide
theorem stats4288 : actualRows4288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4288=7428 := by core033_kernel_decide
theorem rows4289 : actualRows4289=WordField.canonicalRows actualModulus 4289 (.bnot 4288) := by core033_kernel_decide
theorem stats4289 : actualRows4289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4289=6276 := by core033_kernel_decide
theorem rows4290 : actualRows4290=WordField.canonicalRows actualModulus 4290 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4290 : actualRows4290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4290=2892 := by core033_kernel_decide
theorem rows4291 : actualRows4291=WordField.canonicalRows actualModulus 4291 (.badd 4289 4290) := by core033_kernel_decide
theorem stats4291 : actualRows4291.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4291=5388 := by core033_kernel_decide
theorem rows4292 : actualRows4292=WordField.canonicalRows actualModulus 4292 (.band 4291 1118) := by core033_kernel_decide
theorem stats4292 : actualRows4292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4292=5124 := by core033_kernel_decide
theorem rows4293 : actualRows4293=WordField.canonicalRows actualModulus 4293 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4293 : actualRows4293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4293=2892 := by core033_kernel_decide
theorem rows4294 : actualRows4294=WordField.canonicalRows actualModulus 4294 (.bxor 0 4293) := by core033_kernel_decide
theorem stats4294 : actualRows4294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4294=7428 := by core033_kernel_decide
theorem rows4295 : actualRows4295=WordField.canonicalRows actualModulus 4295 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4295 : actualRows4295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4295=2820 := by core033_kernel_decide
theorem rows4296 : actualRows4296=WordField.canonicalRows actualModulus 4296 (.bnot 4295) := by core033_kernel_decide
theorem stats4296 : actualRows4296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4296=6276 := by core033_kernel_decide
theorem rows4297 : actualRows4297=WordField.canonicalRows actualModulus 4297 (.band 4294 4296) := by core033_kernel_decide
theorem stats4297 : actualRows4297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4297=5124 := by core033_kernel_decide
theorem rows4298 : actualRows4298=WordField.canonicalRows actualModulus 4298 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4298 : actualRows4298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4298=2892 := by core033_kernel_decide
theorem rows4299 : actualRows4299=WordField.canonicalRows actualModulus 4299 (.bxor 0 4298) := by core033_kernel_decide
theorem stats4299 : actualRows4299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4299=7428 := by core033_kernel_decide
theorem rows4300 : actualRows4300=WordField.canonicalRows actualModulus 4300 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4300 : actualRows4300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4300=2820 := by core033_kernel_decide
theorem rows4301 : actualRows4301=WordField.canonicalRows actualModulus 4301 (.bnot 4300) := by core033_kernel_decide
theorem stats4301 : actualRows4301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4301=6276 := by core033_kernel_decide
theorem rows4302 : actualRows4302=WordField.canonicalRows actualModulus 4302 (.bxor 4299 4301) := by core033_kernel_decide
theorem stats4302 : actualRows4302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4302=7428 := by core033_kernel_decide
theorem rows4303 : actualRows4303=WordField.canonicalRows actualModulus 4303 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4303 : actualRows4303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4303=2892 := by core033_kernel_decide
theorem rows4304 : actualRows4304=WordField.canonicalRows actualModulus 4304 (.bxor 0 4303) := by core033_kernel_decide
theorem stats4304 : actualRows4304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4304=7428 := by core033_kernel_decide
theorem rows4305 : actualRows4305=WordField.canonicalRows actualModulus 4305 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4305 : actualRows4305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4305=2820 := by core033_kernel_decide
theorem rows4306 : actualRows4306=WordField.canonicalRows actualModulus 4306 (.bnot 4305) := by core033_kernel_decide
theorem stats4306 : actualRows4306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4306=6276 := by core033_kernel_decide
theorem rows4307 : actualRows4307=WordField.canonicalRows actualModulus 4307 (.badd 4304 4306) := by core033_kernel_decide
theorem stats4307 : actualRows4307.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4307=5388 := by core033_kernel_decide
theorem rows4308 : actualRows4308=WordField.canonicalRows actualModulus 4308 (.bnot 4307) := by core033_kernel_decide
theorem stats4308 : actualRows4308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4308=6276 := by core033_kernel_decide
theorem rows4309 : actualRows4309=WordField.canonicalRows actualModulus 4309 (.band 4302 4308) := by core033_kernel_decide
theorem stats4309 : actualRows4309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4309=5124 := by core033_kernel_decide
theorem rows4310 : actualRows4310=WordField.canonicalRows actualModulus 4310 (.bxor 4297 4309) := by core033_kernel_decide
theorem stats4310 : actualRows4310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4310=7428 := by core033_kernel_decide
theorem rows4311 : actualRows4311=WordField.canonicalRows actualModulus 4311 (.shr 4310 31) := by core033_kernel_decide
theorem stats4311 : actualRows4311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4311=2892 := by core033_kernel_decide
theorem rows4312 : actualRows4312=WordField.canonicalRows actualModulus 4312 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4312 : actualRows4312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4312=2892 := by core033_kernel_decide
theorem rows4313 : actualRows4313=WordField.canonicalRows actualModulus 4313 (.bxor 4311 4312) := by core033_kernel_decide
theorem stats4313 : actualRows4313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4313=7428 := by core033_kernel_decide
theorem rows4314 : actualRows4314=WordField.canonicalRows actualModulus 4314 (.bnot 4313) := by core033_kernel_decide
theorem stats4314 : actualRows4314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4314=6276 := by core033_kernel_decide
theorem rows4315 : actualRows4315=WordField.canonicalRows actualModulus 4315 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4315 : actualRows4315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4315=2892 := by core033_kernel_decide
theorem rows4316 : actualRows4316=WordField.canonicalRows actualModulus 4316 (.badd 4314 4315) := by core033_kernel_decide
theorem stats4316 : actualRows4316.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4316=5388 := by core033_kernel_decide
theorem rows4317 : actualRows4317=WordField.canonicalRows actualModulus 4317 (.bnot 4316) := by core033_kernel_decide
theorem stats4317 : actualRows4317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4317=6276 := by core033_kernel_decide
theorem rows4318 : actualRows4318=WordField.canonicalRows actualModulus 4318 (.band 4317 926) := by core033_kernel_decide
theorem stats4318 : actualRows4318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4318=5124 := by core033_kernel_decide
theorem rows4319 : actualRows4319=WordField.canonicalRows actualModulus 4319 (.bxor 4292 4318) := by core033_kernel_decide
theorem stats4319 : actualRows4319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4319=7428 := by core033_kernel_decide
theorem rows4320 : actualRows4320=WordField.canonicalRows actualModulus 4320 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4320 : actualRows4320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4320=2892 := by core033_kernel_decide
theorem rows4321 : actualRows4321=WordField.canonicalRows actualModulus 4321 (.bxor 0 4320) := by core033_kernel_decide
theorem stats4321 : actualRows4321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4321=7428 := by core033_kernel_decide
theorem rows4322 : actualRows4322=WordField.canonicalRows actualModulus 4322 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4322 : actualRows4322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4322=2820 := by core033_kernel_decide
theorem rows4323 : actualRows4323=WordField.canonicalRows actualModulus 4323 (.bnot 4322) := by core033_kernel_decide
theorem stats4323 : actualRows4323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4323=6276 := by core033_kernel_decide
theorem rows4324 : actualRows4324=WordField.canonicalRows actualModulus 4324 (.band 4321 4323) := by core033_kernel_decide
theorem stats4324 : actualRows4324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4324=5124 := by core033_kernel_decide
theorem rows4325 : actualRows4325=WordField.canonicalRows actualModulus 4325 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4325 : actualRows4325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4325=2892 := by core033_kernel_decide
theorem rows4326 : actualRows4326=WordField.canonicalRows actualModulus 4326 (.bxor 0 4325) := by core033_kernel_decide
theorem stats4326 : actualRows4326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4326=7428 := by core033_kernel_decide
theorem rows4327 : actualRows4327=WordField.canonicalRows actualModulus 4327 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4327 : actualRows4327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4327=2820 := by core033_kernel_decide
theorem rows4328 : actualRows4328=WordField.canonicalRows actualModulus 4328 (.bnot 4327) := by core033_kernel_decide
theorem stats4328 : actualRows4328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4328=6276 := by core033_kernel_decide
theorem rows4329 : actualRows4329=WordField.canonicalRows actualModulus 4329 (.bxor 4326 4328) := by core033_kernel_decide
theorem stats4329 : actualRows4329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4329=7428 := by core033_kernel_decide
theorem rows4330 : actualRows4330=WordField.canonicalRows actualModulus 4330 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4330 : actualRows4330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4330=2892 := by core033_kernel_decide
def partRows66 : List R1CS.Row := actualRows4267++actualRows4268++actualRows4269++actualRows4270++actualRows4271++actualRows4272++actualRows4273++actualRows4274++actualRows4275++actualRows4276++actualRows4277++actualRows4278++actualRows4279++actualRows4280++actualRows4281++actualRows4282++actualRows4283++actualRows4284++actualRows4285++actualRows4286++actualRows4287++actualRows4288++actualRows4289++actualRows4290++actualRows4291++actualRows4292++actualRows4293++actualRows4294++actualRows4295++actualRows4296++actualRows4297++actualRows4298++actualRows4299++actualRows4300++actualRows4301++actualRows4302++actualRows4303++actualRows4304++actualRows4305++actualRows4306++actualRows4307++actualRows4308++actualRows4309++actualRows4310++actualRows4311++actualRows4312++actualRows4313++actualRows4314++actualRows4315++actualRows4316++actualRows4317++actualRows4318++actualRows4319++actualRows4320++actualRows4321++actualRows4322++actualRows4323++actualRows4324++actualRows4325++actualRows4326++actualRows4327++actualRows4328++actualRows4329++actualRows4330
def partOps66 : List WordIR.Op := [.bxor 4240 4266,.literal (BitVec.ofNat 32 2),.bxor 0 4268,.literal (BitVec.ofNat 32 0),.bnot 4270,.band 4269 4271,.literal (BitVec.ofNat 32 2),.bxor 0 4273,.literal (BitVec.ofNat 32 0),.bnot 4275,.bxor 4274 4276,.literal (BitVec.ofNat 32 2),.bxor 0 4278,.literal (BitVec.ofNat 32 0),.bnot 4280,.badd 4279 4281,.bnot 4282,.band 4277 4283,.bxor 4272 4284,.shr 4285 31,.literal (BitVec.ofNat 32 1),.bxor 4286 4287,.bnot 4288,.literal (BitVec.ofNat 32 1),.badd 4289 4290,.band 4291 1118,.literal (BitVec.ofNat 32 2),.bxor 0 4293,.literal (BitVec.ofNat 32 0),.bnot 4295,.band 4294 4296,.literal (BitVec.ofNat 32 2),.bxor 0 4298,.literal (BitVec.ofNat 32 0),.bnot 4300,.bxor 4299 4301,.literal (BitVec.ofNat 32 2),.bxor 0 4303,.literal (BitVec.ofNat 32 0),.bnot 4305,.badd 4304 4306,.bnot 4307,.band 4302 4308,.bxor 4297 4309,.shr 4310 31,.literal (BitVec.ofNat 32 1),.bxor 4311 4312,.bnot 4313,.literal (BitVec.ofNat 32 1),.badd 4314 4315,.bnot 4316,.band 4317 926,.bxor 4292 4318,.literal (BitVec.ofNat 32 2),.bxor 0 4320,.literal (BitVec.ofNat 32 0),.bnot 4322,.band 4321 4323,.literal (BitVec.ofNat 32 2),.bxor 0 4325,.literal (BitVec.ofNat 32 0),.bnot 4327,.bxor 4326 4328,.literal (BitVec.ofNat 32 2)]
theorem partExact66 : partRows66=WordField.rows actualModulus 4267 partOps66 := by
  simp only [partRows66,partOps66,WordField.rows,rows4267,rows4268,rows4269,rows4270,rows4271,rows4272,rows4273,rows4274,rows4275,rows4276,rows4277,rows4278,rows4279,rows4280,rows4281,rows4282,rows4283,rows4284,rows4285,rows4286,rows4287,rows4288,rows4289,rows4290,rows4291,rows4292,rows4293,rows4294,rows4295,rows4296,rows4297,rows4298,rows4299,rows4300,rows4301,rows4302,rows4303,rows4304,rows4305,rows4306,rows4307,rows4308,rows4309,rows4310,rows4311,rows4312,rows4313,rows4314,rows4315,rows4316,rows4317,rows4318,rows4319,rows4320,rows4321,rows4322,rows4323,rows4324,rows4325,rows4326,rows4327,rows4328,rows4329,rows4330,List.append_assoc,List.append_nil]
theorem partLength66 : partOps66.length=64 := by decide
theorem partStats66 : partRows66.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows66=331224 := by
  simp only [partRows66,List.length_append,MatrixRowBlocks.rows_weight_append,stats4267.1,stats4267.2,stats4268.1,stats4268.2,stats4269.1,stats4269.2,stats4270.1,stats4270.2,stats4271.1,stats4271.2,stats4272.1,stats4272.2,stats4273.1,stats4273.2,stats4274.1,stats4274.2,stats4275.1,stats4275.2,stats4276.1,stats4276.2,stats4277.1,stats4277.2,stats4278.1,stats4278.2,stats4279.1,stats4279.2,stats4280.1,stats4280.2,stats4281.1,stats4281.2,stats4282.1,stats4282.2,stats4283.1,stats4283.2,stats4284.1,stats4284.2,stats4285.1,stats4285.2,stats4286.1,stats4286.2,stats4287.1,stats4287.2,stats4288.1,stats4288.2,stats4289.1,stats4289.2,stats4290.1,stats4290.2,stats4291.1,stats4291.2,stats4292.1,stats4292.2,stats4293.1,stats4293.2,stats4294.1,stats4294.2,stats4295.1,stats4295.2,stats4296.1,stats4296.2,stats4297.1,stats4297.2,stats4298.1,stats4298.2,stats4299.1,stats4299.2,stats4300.1,stats4300.2,stats4301.1,stats4301.2,stats4302.1,stats4302.2,stats4303.1,stats4303.2,stats4304.1,stats4304.2,stats4305.1,stats4305.2,stats4306.1,stats4306.2,stats4307.1,stats4307.2,stats4308.1,stats4308.2,stats4309.1,stats4309.2,stats4310.1,stats4310.2,stats4311.1,stats4311.2,stats4312.1,stats4312.2,stats4313.1,stats4313.2,stats4314.1,stats4314.2,stats4315.1,stats4315.2,stats4316.1,stats4316.2,stats4317.1,stats4317.2,stats4318.1,stats4318.2,stats4319.1,stats4319.2,stats4320.1,stats4320.2,stats4321.1,stats4321.2,stats4322.1,stats4322.2,stats4323.1,stats4323.2,stats4324.1,stats4324.2,stats4325.1,stats4325.2,stats4326.1,stats4326.2,stats4327.1,stats4327.2,stats4328.1,stats4328.2,stats4329.1,stats4329.2,stats4330.1,stats4330.2]
  decide
end FrameHashControllerCheckedRows
