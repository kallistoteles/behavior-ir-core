import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData66
import PathRoundDispatchInstructionMatrixData67
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4267 : actualRows4267=WordField.canonicalRows actualModulus 4267 (.bnot 4266) := by core033_kernel_decide
theorem stats4267 : actualRows4267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4267=6276 := by core033_kernel_decide
theorem rows4268 : actualRows4268=WordField.canonicalRows actualModulus 4268 (.band 4265 4267) := by core033_kernel_decide
theorem stats4268 : actualRows4268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4268=5124 := by core033_kernel_decide
theorem rows4269 : actualRows4269=WordField.canonicalRows actualModulus 4269 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4269 : actualRows4269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4269=2892 := by core033_kernel_decide
theorem rows4270 : actualRows4270=WordField.canonicalRows actualModulus 4270 (.bxor 96 4269) := by core033_kernel_decide
theorem stats4270 : actualRows4270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4270=7428 := by core033_kernel_decide
theorem rows4271 : actualRows4271=WordField.canonicalRows actualModulus 4271 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4271 : actualRows4271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4271=2820 := by core033_kernel_decide
theorem rows4272 : actualRows4272=WordField.canonicalRows actualModulus 4272 (.bnot 4271) := by core033_kernel_decide
theorem stats4272 : actualRows4272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4272=6276 := by core033_kernel_decide
theorem rows4273 : actualRows4273=WordField.canonicalRows actualModulus 4273 (.bxor 4270 4272) := by core033_kernel_decide
theorem stats4273 : actualRows4273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4273=7428 := by core033_kernel_decide
theorem rows4274 : actualRows4274=WordField.canonicalRows actualModulus 4274 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4274 : actualRows4274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4274=2892 := by core033_kernel_decide
theorem rows4275 : actualRows4275=WordField.canonicalRows actualModulus 4275 (.bxor 96 4274) := by core033_kernel_decide
theorem stats4275 : actualRows4275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4275=7428 := by core033_kernel_decide
theorem rows4276 : actualRows4276=WordField.canonicalRows actualModulus 4276 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4276 : actualRows4276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4276=2820 := by core033_kernel_decide
theorem rows4277 : actualRows4277=WordField.canonicalRows actualModulus 4277 (.bnot 4276) := by core033_kernel_decide
theorem stats4277 : actualRows4277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4277=6276 := by core033_kernel_decide
theorem rows4278 : actualRows4278=WordField.canonicalRows actualModulus 4278 (.badd 4275 4277) := by core033_kernel_decide
theorem stats4278 : actualRows4278.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4278=5388 := by core033_kernel_decide
theorem rows4279 : actualRows4279=WordField.canonicalRows actualModulus 4279 (.bnot 4278) := by core033_kernel_decide
theorem stats4279 : actualRows4279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4279=6276 := by core033_kernel_decide
theorem rows4280 : actualRows4280=WordField.canonicalRows actualModulus 4280 (.band 4273 4279) := by core033_kernel_decide
theorem stats4280 : actualRows4280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4280=5124 := by core033_kernel_decide
theorem rows4281 : actualRows4281=WordField.canonicalRows actualModulus 4281 (.bxor 4268 4280) := by core033_kernel_decide
theorem stats4281 : actualRows4281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4281=7428 := by core033_kernel_decide
theorem rows4282 : actualRows4282=WordField.canonicalRows actualModulus 4282 (.shr 4281 31) := by core033_kernel_decide
theorem stats4282 : actualRows4282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4282=2892 := by core033_kernel_decide
theorem rows4283 : actualRows4283=WordField.canonicalRows actualModulus 4283 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4283 : actualRows4283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4283=2892 := by core033_kernel_decide
theorem rows4284 : actualRows4284=WordField.canonicalRows actualModulus 4284 (.bxor 4282 4283) := by core033_kernel_decide
theorem stats4284 : actualRows4284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4284=7428 := by core033_kernel_decide
theorem rows4285 : actualRows4285=WordField.canonicalRows actualModulus 4285 (.bnot 4284) := by core033_kernel_decide
theorem stats4285 : actualRows4285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4285=6276 := by core033_kernel_decide
theorem rows4286 : actualRows4286=WordField.canonicalRows actualModulus 4286 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4286 : actualRows4286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4286=2892 := by core033_kernel_decide
theorem rows4287 : actualRows4287=WordField.canonicalRows actualModulus 4287 (.badd 4285 4286) := by core033_kernel_decide
theorem stats4287 : actualRows4287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4287=5388 := by core033_kernel_decide
theorem rows4288 : actualRows4288=WordField.canonicalRows actualModulus 4288 (.band 4287 1604) := by core033_kernel_decide
theorem stats4288 : actualRows4288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4288=5124 := by core033_kernel_decide
theorem rows4289 : actualRows4289=WordField.canonicalRows actualModulus 4289 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4289 : actualRows4289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4289=2892 := by core033_kernel_decide
theorem rows4290 : actualRows4290=WordField.canonicalRows actualModulus 4290 (.bxor 96 4289) := by core033_kernel_decide
theorem stats4290 : actualRows4290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4290=7428 := by core033_kernel_decide
theorem rows4291 : actualRows4291=WordField.canonicalRows actualModulus 4291 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4291 : actualRows4291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4291=2820 := by core033_kernel_decide
theorem rows4292 : actualRows4292=WordField.canonicalRows actualModulus 4292 (.bnot 4291) := by core033_kernel_decide
theorem stats4292 : actualRows4292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4292=6276 := by core033_kernel_decide
theorem rows4293 : actualRows4293=WordField.canonicalRows actualModulus 4293 (.band 4290 4292) := by core033_kernel_decide
theorem stats4293 : actualRows4293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4293=5124 := by core033_kernel_decide
theorem rows4294 : actualRows4294=WordField.canonicalRows actualModulus 4294 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4294 : actualRows4294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4294=2892 := by core033_kernel_decide
theorem rows4295 : actualRows4295=WordField.canonicalRows actualModulus 4295 (.bxor 96 4294) := by core033_kernel_decide
theorem stats4295 : actualRows4295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4295=7428 := by core033_kernel_decide
theorem rows4296 : actualRows4296=WordField.canonicalRows actualModulus 4296 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4296 : actualRows4296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4296=2820 := by core033_kernel_decide
theorem rows4297 : actualRows4297=WordField.canonicalRows actualModulus 4297 (.bnot 4296) := by core033_kernel_decide
theorem stats4297 : actualRows4297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4297=6276 := by core033_kernel_decide
theorem rows4298 : actualRows4298=WordField.canonicalRows actualModulus 4298 (.bxor 4295 4297) := by core033_kernel_decide
theorem stats4298 : actualRows4298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4298=7428 := by core033_kernel_decide
theorem rows4299 : actualRows4299=WordField.canonicalRows actualModulus 4299 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4299 : actualRows4299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4299=2892 := by core033_kernel_decide
theorem rows4300 : actualRows4300=WordField.canonicalRows actualModulus 4300 (.bxor 96 4299) := by core033_kernel_decide
theorem stats4300 : actualRows4300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4300=7428 := by core033_kernel_decide
theorem rows4301 : actualRows4301=WordField.canonicalRows actualModulus 4301 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4301 : actualRows4301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4301=2820 := by core033_kernel_decide
theorem rows4302 : actualRows4302=WordField.canonicalRows actualModulus 4302 (.bnot 4301) := by core033_kernel_decide
theorem stats4302 : actualRows4302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4302=6276 := by core033_kernel_decide
theorem rows4303 : actualRows4303=WordField.canonicalRows actualModulus 4303 (.badd 4300 4302) := by core033_kernel_decide
theorem stats4303 : actualRows4303.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4303=5388 := by core033_kernel_decide
theorem rows4304 : actualRows4304=WordField.canonicalRows actualModulus 4304 (.bnot 4303) := by core033_kernel_decide
theorem stats4304 : actualRows4304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4304=6276 := by core033_kernel_decide
theorem rows4305 : actualRows4305=WordField.canonicalRows actualModulus 4305 (.band 4298 4304) := by core033_kernel_decide
theorem stats4305 : actualRows4305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4305=5124 := by core033_kernel_decide
theorem rows4306 : actualRows4306=WordField.canonicalRows actualModulus 4306 (.bxor 4293 4305) := by core033_kernel_decide
theorem stats4306 : actualRows4306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4306=7428 := by core033_kernel_decide
theorem rows4307 : actualRows4307=WordField.canonicalRows actualModulus 4307 (.shr 4306 31) := by core033_kernel_decide
theorem stats4307 : actualRows4307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4307=2892 := by core033_kernel_decide
theorem rows4308 : actualRows4308=WordField.canonicalRows actualModulus 4308 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4308 : actualRows4308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4308=2892 := by core033_kernel_decide
theorem rows4309 : actualRows4309=WordField.canonicalRows actualModulus 4309 (.bxor 4307 4308) := by core033_kernel_decide
theorem stats4309 : actualRows4309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4309=7428 := by core033_kernel_decide
theorem rows4310 : actualRows4310=WordField.canonicalRows actualModulus 4310 (.bnot 4309) := by core033_kernel_decide
theorem stats4310 : actualRows4310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4310=6276 := by core033_kernel_decide
theorem rows4311 : actualRows4311=WordField.canonicalRows actualModulus 4311 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4311 : actualRows4311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4311=2892 := by core033_kernel_decide
theorem rows4312 : actualRows4312=WordField.canonicalRows actualModulus 4312 (.badd 4310 4311) := by core033_kernel_decide
theorem stats4312 : actualRows4312.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4312=5388 := by core033_kernel_decide
theorem rows4313 : actualRows4313=WordField.canonicalRows actualModulus 4313 (.bnot 4312) := by core033_kernel_decide
theorem stats4313 : actualRows4313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4313=6276 := by core033_kernel_decide
theorem rows4314 : actualRows4314=WordField.canonicalRows actualModulus 4314 (.band 4313 1412) := by core033_kernel_decide
theorem stats4314 : actualRows4314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4314=5124 := by core033_kernel_decide
theorem rows4315 : actualRows4315=WordField.canonicalRows actualModulus 4315 (.bxor 4288 4314) := by core033_kernel_decide
theorem stats4315 : actualRows4315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4315=7428 := by core033_kernel_decide
theorem rows4316 : actualRows4316=WordField.canonicalRows actualModulus 4316 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4316 : actualRows4316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4316=2892 := by core033_kernel_decide
theorem rows4317 : actualRows4317=WordField.canonicalRows actualModulus 4317 (.bxor 96 4316) := by core033_kernel_decide
theorem stats4317 : actualRows4317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4317=7428 := by core033_kernel_decide
theorem rows4318 : actualRows4318=WordField.canonicalRows actualModulus 4318 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4318 : actualRows4318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4318=2820 := by core033_kernel_decide
theorem rows4319 : actualRows4319=WordField.canonicalRows actualModulus 4319 (.bnot 4318) := by core033_kernel_decide
theorem stats4319 : actualRows4319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4319=6276 := by core033_kernel_decide
theorem rows4320 : actualRows4320=WordField.canonicalRows actualModulus 4320 (.band 4317 4319) := by core033_kernel_decide
theorem stats4320 : actualRows4320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4320=5124 := by core033_kernel_decide
theorem rows4321 : actualRows4321=WordField.canonicalRows actualModulus 4321 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4321 : actualRows4321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4321=2892 := by core033_kernel_decide
theorem rows4322 : actualRows4322=WordField.canonicalRows actualModulus 4322 (.bxor 96 4321) := by core033_kernel_decide
theorem stats4322 : actualRows4322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4322=7428 := by core033_kernel_decide
theorem rows4323 : actualRows4323=WordField.canonicalRows actualModulus 4323 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4323 : actualRows4323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4323=2820 := by core033_kernel_decide
theorem rows4324 : actualRows4324=WordField.canonicalRows actualModulus 4324 (.bnot 4323) := by core033_kernel_decide
theorem stats4324 : actualRows4324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4324=6276 := by core033_kernel_decide
theorem rows4325 : actualRows4325=WordField.canonicalRows actualModulus 4325 (.bxor 4322 4324) := by core033_kernel_decide
theorem stats4325 : actualRows4325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4325=7428 := by core033_kernel_decide
theorem rows4326 : actualRows4326=WordField.canonicalRows actualModulus 4326 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4326 : actualRows4326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4326=2892 := by core033_kernel_decide
theorem rows4327 : actualRows4327=WordField.canonicalRows actualModulus 4327 (.bxor 96 4326) := by core033_kernel_decide
theorem stats4327 : actualRows4327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4327=7428 := by core033_kernel_decide
theorem rows4328 : actualRows4328=WordField.canonicalRows actualModulus 4328 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4328 : actualRows4328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4328=2820 := by core033_kernel_decide
theorem rows4329 : actualRows4329=WordField.canonicalRows actualModulus 4329 (.bnot 4328) := by core033_kernel_decide
theorem stats4329 : actualRows4329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4329=6276 := by core033_kernel_decide
theorem rows4330 : actualRows4330=WordField.canonicalRows actualModulus 4330 (.badd 4327 4329) := by core033_kernel_decide
theorem stats4330 : actualRows4330.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4330=5388 := by core033_kernel_decide
def partRows66 : List R1CS.Row := actualRows4267++actualRows4268++actualRows4269++actualRows4270++actualRows4271++actualRows4272++actualRows4273++actualRows4274++actualRows4275++actualRows4276++actualRows4277++actualRows4278++actualRows4279++actualRows4280++actualRows4281++actualRows4282++actualRows4283++actualRows4284++actualRows4285++actualRows4286++actualRows4287++actualRows4288++actualRows4289++actualRows4290++actualRows4291++actualRows4292++actualRows4293++actualRows4294++actualRows4295++actualRows4296++actualRows4297++actualRows4298++actualRows4299++actualRows4300++actualRows4301++actualRows4302++actualRows4303++actualRows4304++actualRows4305++actualRows4306++actualRows4307++actualRows4308++actualRows4309++actualRows4310++actualRows4311++actualRows4312++actualRows4313++actualRows4314++actualRows4315++actualRows4316++actualRows4317++actualRows4318++actualRows4319++actualRows4320++actualRows4321++actualRows4322++actualRows4323++actualRows4324++actualRows4325++actualRows4326++actualRows4327++actualRows4328++actualRows4329++actualRows4330
def partOps66 : List WordIR.Op := [.bnot 4266,.band 4265 4267,.literal (BitVec.ofNat 32 2),.bxor 96 4269,.literal (BitVec.ofNat 32 0),.bnot 4271,.bxor 4270 4272,.literal (BitVec.ofNat 32 2),.bxor 96 4274,.literal (BitVec.ofNat 32 0),.bnot 4276,.badd 4275 4277,.bnot 4278,.band 4273 4279,.bxor 4268 4280,.shr 4281 31,.literal (BitVec.ofNat 32 1),.bxor 4282 4283,.bnot 4284,.literal (BitVec.ofNat 32 1),.badd 4285 4286,.band 4287 1604,.literal (BitVec.ofNat 32 2),.bxor 96 4289,.literal (BitVec.ofNat 32 0),.bnot 4291,.band 4290 4292,.literal (BitVec.ofNat 32 2),.bxor 96 4294,.literal (BitVec.ofNat 32 0),.bnot 4296,.bxor 4295 4297,.literal (BitVec.ofNat 32 2),.bxor 96 4299,.literal (BitVec.ofNat 32 0),.bnot 4301,.badd 4300 4302,.bnot 4303,.band 4298 4304,.bxor 4293 4305,.shr 4306 31,.literal (BitVec.ofNat 32 1),.bxor 4307 4308,.bnot 4309,.literal (BitVec.ofNat 32 1),.badd 4310 4311,.bnot 4312,.band 4313 1412,.bxor 4288 4314,.literal (BitVec.ofNat 32 2),.bxor 96 4316,.literal (BitVec.ofNat 32 0),.bnot 4318,.band 4317 4319,.literal (BitVec.ofNat 32 2),.bxor 96 4321,.literal (BitVec.ofNat 32 0),.bnot 4323,.bxor 4322 4324,.literal (BitVec.ofNat 32 2),.bxor 96 4326,.literal (BitVec.ofNat 32 0),.bnot 4328,.badd 4327 4329]
theorem partExact66 : partRows66=WordField.rows actualModulus 4267 partOps66 := by
  simp only [partRows66,partOps66,WordField.rows,rows4267,rows4268,rows4269,rows4270,rows4271,rows4272,rows4273,rows4274,rows4275,rows4276,rows4277,rows4278,rows4279,rows4280,rows4281,rows4282,rows4283,rows4284,rows4285,rows4286,rows4287,rows4288,rows4289,rows4290,rows4291,rows4292,rows4293,rows4294,rows4295,rows4296,rows4297,rows4298,rows4299,rows4300,rows4301,rows4302,rows4303,rows4304,rows4305,rows4306,rows4307,rows4308,rows4309,rows4310,rows4311,rows4312,rows4313,rows4314,rows4315,rows4316,rows4317,rows4318,rows4319,rows4320,rows4321,rows4322,rows4323,rows4324,rows4325,rows4326,rows4327,rows4328,rows4329,rows4330,List.append_assoc,List.append_nil]
theorem partLength66 : partOps66.length=64 := by decide
theorem partStats66 : partRows66.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows66=332568 := by
  simp only [partRows66,List.length_append,MatrixRowBlocks.rows_weight_append,stats4267.1,stats4267.2,stats4268.1,stats4268.2,stats4269.1,stats4269.2,stats4270.1,stats4270.2,stats4271.1,stats4271.2,stats4272.1,stats4272.2,stats4273.1,stats4273.2,stats4274.1,stats4274.2,stats4275.1,stats4275.2,stats4276.1,stats4276.2,stats4277.1,stats4277.2,stats4278.1,stats4278.2,stats4279.1,stats4279.2,stats4280.1,stats4280.2,stats4281.1,stats4281.2,stats4282.1,stats4282.2,stats4283.1,stats4283.2,stats4284.1,stats4284.2,stats4285.1,stats4285.2,stats4286.1,stats4286.2,stats4287.1,stats4287.2,stats4288.1,stats4288.2,stats4289.1,stats4289.2,stats4290.1,stats4290.2,stats4291.1,stats4291.2,stats4292.1,stats4292.2,stats4293.1,stats4293.2,stats4294.1,stats4294.2,stats4295.1,stats4295.2,stats4296.1,stats4296.2,stats4297.1,stats4297.2,stats4298.1,stats4298.2,stats4299.1,stats4299.2,stats4300.1,stats4300.2,stats4301.1,stats4301.2,stats4302.1,stats4302.2,stats4303.1,stats4303.2,stats4304.1,stats4304.2,stats4305.1,stats4305.2,stats4306.1,stats4306.2,stats4307.1,stats4307.2,stats4308.1,stats4308.2,stats4309.1,stats4309.2,stats4310.1,stats4310.2,stats4311.1,stats4311.2,stats4312.1,stats4312.2,stats4313.1,stats4313.2,stats4314.1,stats4314.2,stats4315.1,stats4315.2,stats4316.1,stats4316.2,stats4317.1,stats4317.2,stats4318.1,stats4318.2,stats4319.1,stats4319.2,stats4320.1,stats4320.2,stats4321.1,stats4321.2,stats4322.1,stats4322.2,stats4323.1,stats4323.2,stats4324.1,stats4324.2,stats4325.1,stats4325.2,stats4326.1,stats4326.2,stats4327.1,stats4327.2,stats4328.1,stats4328.2,stats4329.1,stats4329.2,stats4330.1,stats4330.2]
  decide
end PathRoundDispatchCheckedRows
