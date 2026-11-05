import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData62
import AuthenticatedBranchRoundInstructionMatrixData63
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4022 : actualRows4022=WordField.canonicalRows actualModulus 4022 (.bxor 1299 4021) := by core033_kernel_decide
theorem stats4022 : actualRows4022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4022=7428 := by core033_kernel_decide
theorem rows4023 : actualRows4023=WordField.canonicalRows actualModulus 4023 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4023 : actualRows4023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4023=2820 := by core033_kernel_decide
theorem rows4024 : actualRows4024=WordField.canonicalRows actualModulus 4024 (.bnot 4023) := by core033_kernel_decide
theorem stats4024 : actualRows4024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4024=6276 := by core033_kernel_decide
theorem rows4025 : actualRows4025=WordField.canonicalRows actualModulus 4025 (.badd 4022 4024) := by core033_kernel_decide
theorem stats4025 : actualRows4025.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4025=5388 := by core033_kernel_decide
theorem rows4026 : actualRows4026=WordField.canonicalRows actualModulus 4026 (.bnot 4025) := by core033_kernel_decide
theorem stats4026 : actualRows4026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4026=6276 := by core033_kernel_decide
theorem rows4027 : actualRows4027=WordField.canonicalRows actualModulus 4027 (.band 4020 4026) := by core033_kernel_decide
theorem stats4027 : actualRows4027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4027=5124 := by core033_kernel_decide
theorem rows4028 : actualRows4028=WordField.canonicalRows actualModulus 4028 (.bxor 4015 4027) := by core033_kernel_decide
theorem stats4028 : actualRows4028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4028=7428 := by core033_kernel_decide
theorem rows4029 : actualRows4029=WordField.canonicalRows actualModulus 4029 (.shr 4028 31) := by core033_kernel_decide
theorem stats4029 : actualRows4029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4029=2892 := by core033_kernel_decide
theorem rows4030 : actualRows4030=WordField.canonicalRows actualModulus 4030 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4030 : actualRows4030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4030=2892 := by core033_kernel_decide
theorem rows4031 : actualRows4031=WordField.canonicalRows actualModulus 4031 (.bxor 4029 4030) := by core033_kernel_decide
theorem stats4031 : actualRows4031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4031=7428 := by core033_kernel_decide
theorem rows4032 : actualRows4032=WordField.canonicalRows actualModulus 4032 (.bnot 4031) := by core033_kernel_decide
theorem stats4032 : actualRows4032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4032=6276 := by core033_kernel_decide
theorem rows4033 : actualRows4033=WordField.canonicalRows actualModulus 4033 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4033 : actualRows4033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4033=2892 := by core033_kernel_decide
theorem rows4034 : actualRows4034=WordField.canonicalRows actualModulus 4034 (.badd 4032 4033) := by core033_kernel_decide
theorem stats4034 : actualRows4034.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4034=5388 := by core033_kernel_decide
theorem rows4035 : actualRows4035=WordField.canonicalRows actualModulus 4035 (.band 4034 2723) := by core033_kernel_decide
theorem stats4035 : actualRows4035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4035=5124 := by core033_kernel_decide
theorem rows4036 : actualRows4036=WordField.canonicalRows actualModulus 4036 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4036 : actualRows4036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4036=2892 := by core033_kernel_decide
theorem rows4037 : actualRows4037=WordField.canonicalRows actualModulus 4037 (.bxor 1299 4036) := by core033_kernel_decide
theorem stats4037 : actualRows4037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4037=7428 := by core033_kernel_decide
theorem rows4038 : actualRows4038=WordField.canonicalRows actualModulus 4038 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4038 : actualRows4038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4038=2820 := by core033_kernel_decide
theorem rows4039 : actualRows4039=WordField.canonicalRows actualModulus 4039 (.bnot 4038) := by core033_kernel_decide
theorem stats4039 : actualRows4039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4039=6276 := by core033_kernel_decide
theorem rows4040 : actualRows4040=WordField.canonicalRows actualModulus 4040 (.band 4037 4039) := by core033_kernel_decide
theorem stats4040 : actualRows4040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4040=5124 := by core033_kernel_decide
theorem rows4041 : actualRows4041=WordField.canonicalRows actualModulus 4041 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4041 : actualRows4041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4041=2892 := by core033_kernel_decide
theorem rows4042 : actualRows4042=WordField.canonicalRows actualModulus 4042 (.bxor 1299 4041) := by core033_kernel_decide
theorem stats4042 : actualRows4042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4042=7428 := by core033_kernel_decide
theorem rows4043 : actualRows4043=WordField.canonicalRows actualModulus 4043 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4043 : actualRows4043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4043=2820 := by core033_kernel_decide
theorem rows4044 : actualRows4044=WordField.canonicalRows actualModulus 4044 (.bnot 4043) := by core033_kernel_decide
theorem stats4044 : actualRows4044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4044=6276 := by core033_kernel_decide
theorem rows4045 : actualRows4045=WordField.canonicalRows actualModulus 4045 (.bxor 4042 4044) := by core033_kernel_decide
theorem stats4045 : actualRows4045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4045=7428 := by core033_kernel_decide
theorem rows4046 : actualRows4046=WordField.canonicalRows actualModulus 4046 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4046 : actualRows4046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4046=2892 := by core033_kernel_decide
theorem rows4047 : actualRows4047=WordField.canonicalRows actualModulus 4047 (.bxor 1299 4046) := by core033_kernel_decide
theorem stats4047 : actualRows4047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4047=7428 := by core033_kernel_decide
theorem rows4048 : actualRows4048=WordField.canonicalRows actualModulus 4048 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4048 : actualRows4048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4048=2820 := by core033_kernel_decide
theorem rows4049 : actualRows4049=WordField.canonicalRows actualModulus 4049 (.bnot 4048) := by core033_kernel_decide
theorem stats4049 : actualRows4049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4049=6276 := by core033_kernel_decide
theorem rows4050 : actualRows4050=WordField.canonicalRows actualModulus 4050 (.badd 4047 4049) := by core033_kernel_decide
theorem stats4050 : actualRows4050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4050=5388 := by core033_kernel_decide
theorem rows4051 : actualRows4051=WordField.canonicalRows actualModulus 4051 (.bnot 4050) := by core033_kernel_decide
theorem stats4051 : actualRows4051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4051=6276 := by core033_kernel_decide
theorem rows4052 : actualRows4052=WordField.canonicalRows actualModulus 4052 (.band 4045 4051) := by core033_kernel_decide
theorem stats4052 : actualRows4052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4052=5124 := by core033_kernel_decide
theorem rows4053 : actualRows4053=WordField.canonicalRows actualModulus 4053 (.bxor 4040 4052) := by core033_kernel_decide
theorem stats4053 : actualRows4053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4053=7428 := by core033_kernel_decide
theorem rows4054 : actualRows4054=WordField.canonicalRows actualModulus 4054 (.shr 4053 31) := by core033_kernel_decide
theorem stats4054 : actualRows4054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4054=2892 := by core033_kernel_decide
theorem rows4055 : actualRows4055=WordField.canonicalRows actualModulus 4055 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4055 : actualRows4055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4055=2892 := by core033_kernel_decide
theorem rows4056 : actualRows4056=WordField.canonicalRows actualModulus 4056 (.bxor 4054 4055) := by core033_kernel_decide
theorem stats4056 : actualRows4056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4056=7428 := by core033_kernel_decide
theorem rows4057 : actualRows4057=WordField.canonicalRows actualModulus 4057 (.bnot 4056) := by core033_kernel_decide
theorem stats4057 : actualRows4057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4057=6276 := by core033_kernel_decide
theorem rows4058 : actualRows4058=WordField.canonicalRows actualModulus 4058 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4058 : actualRows4058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4058=2892 := by core033_kernel_decide
theorem rows4059 : actualRows4059=WordField.canonicalRows actualModulus 4059 (.badd 4057 4058) := by core033_kernel_decide
theorem stats4059 : actualRows4059.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4059=5388 := by core033_kernel_decide
theorem rows4060 : actualRows4060=WordField.canonicalRows actualModulus 4060 (.bnot 4059) := by core033_kernel_decide
theorem stats4060 : actualRows4060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4060=6276 := by core033_kernel_decide
theorem rows4061 : actualRows4061=WordField.canonicalRows actualModulus 4061 (.band 4060 2555) := by core033_kernel_decide
theorem stats4061 : actualRows4061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4061=5124 := by core033_kernel_decide
theorem rows4062 : actualRows4062=WordField.canonicalRows actualModulus 4062 (.bxor 4035 4061) := by core033_kernel_decide
theorem stats4062 : actualRows4062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4062=7428 := by core033_kernel_decide
theorem rows4063 : actualRows4063=WordField.canonicalRows actualModulus 4063 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4063 : actualRows4063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4063=2892 := by core033_kernel_decide
theorem rows4064 : actualRows4064=WordField.canonicalRows actualModulus 4064 (.bxor 1299 4063) := by core033_kernel_decide
theorem stats4064 : actualRows4064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4064=7428 := by core033_kernel_decide
theorem rows4065 : actualRows4065=WordField.canonicalRows actualModulus 4065 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4065 : actualRows4065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4065=2820 := by core033_kernel_decide
theorem rows4066 : actualRows4066=WordField.canonicalRows actualModulus 4066 (.bnot 4065) := by core033_kernel_decide
theorem stats4066 : actualRows4066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4066=6276 := by core033_kernel_decide
theorem rows4067 : actualRows4067=WordField.canonicalRows actualModulus 4067 (.band 4064 4066) := by core033_kernel_decide
theorem stats4067 : actualRows4067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4067=5124 := by core033_kernel_decide
theorem rows4068 : actualRows4068=WordField.canonicalRows actualModulus 4068 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4068 : actualRows4068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4068=2892 := by core033_kernel_decide
theorem rows4069 : actualRows4069=WordField.canonicalRows actualModulus 4069 (.bxor 1299 4068) := by core033_kernel_decide
theorem stats4069 : actualRows4069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4069=7428 := by core033_kernel_decide
theorem rows4070 : actualRows4070=WordField.canonicalRows actualModulus 4070 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4070 : actualRows4070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4070=2820 := by core033_kernel_decide
theorem rows4071 : actualRows4071=WordField.canonicalRows actualModulus 4071 (.bnot 4070) := by core033_kernel_decide
theorem stats4071 : actualRows4071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4071=6276 := by core033_kernel_decide
theorem rows4072 : actualRows4072=WordField.canonicalRows actualModulus 4072 (.bxor 4069 4071) := by core033_kernel_decide
theorem stats4072 : actualRows4072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4072=7428 := by core033_kernel_decide
theorem rows4073 : actualRows4073=WordField.canonicalRows actualModulus 4073 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4073 : actualRows4073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4073=2892 := by core033_kernel_decide
theorem rows4074 : actualRows4074=WordField.canonicalRows actualModulus 4074 (.bxor 1299 4073) := by core033_kernel_decide
theorem stats4074 : actualRows4074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4074=7428 := by core033_kernel_decide
theorem rows4075 : actualRows4075=WordField.canonicalRows actualModulus 4075 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4075 : actualRows4075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4075=2820 := by core033_kernel_decide
theorem rows4076 : actualRows4076=WordField.canonicalRows actualModulus 4076 (.bnot 4075) := by core033_kernel_decide
theorem stats4076 : actualRows4076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4076=6276 := by core033_kernel_decide
theorem rows4077 : actualRows4077=WordField.canonicalRows actualModulus 4077 (.badd 4074 4076) := by core033_kernel_decide
theorem stats4077 : actualRows4077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4077=5388 := by core033_kernel_decide
theorem rows4078 : actualRows4078=WordField.canonicalRows actualModulus 4078 (.bnot 4077) := by core033_kernel_decide
theorem stats4078 : actualRows4078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4078=6276 := by core033_kernel_decide
theorem rows4079 : actualRows4079=WordField.canonicalRows actualModulus 4079 (.band 4072 4078) := by core033_kernel_decide
theorem stats4079 : actualRows4079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4079=5124 := by core033_kernel_decide
theorem rows4080 : actualRows4080=WordField.canonicalRows actualModulus 4080 (.bxor 4067 4079) := by core033_kernel_decide
theorem stats4080 : actualRows4080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4080=7428 := by core033_kernel_decide
theorem rows4081 : actualRows4081=WordField.canonicalRows actualModulus 4081 (.shr 4080 31) := by core033_kernel_decide
theorem stats4081 : actualRows4081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4081=2892 := by core033_kernel_decide
theorem rows4082 : actualRows4082=WordField.canonicalRows actualModulus 4082 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4082 : actualRows4082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4082=2892 := by core033_kernel_decide
theorem rows4083 : actualRows4083=WordField.canonicalRows actualModulus 4083 (.bxor 4081 4082) := by core033_kernel_decide
theorem stats4083 : actualRows4083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4083=7428 := by core033_kernel_decide
theorem rows4084 : actualRows4084=WordField.canonicalRows actualModulus 4084 (.bnot 4083) := by core033_kernel_decide
theorem stats4084 : actualRows4084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4084=6276 := by core033_kernel_decide
theorem rows4085 : actualRows4085=WordField.canonicalRows actualModulus 4085 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4085 : actualRows4085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4085=2892 := by core033_kernel_decide
def partRows61 : List R1CS.Row := actualRows4022++actualRows4023++actualRows4024++actualRows4025++actualRows4026++actualRows4027++actualRows4028++actualRows4029++actualRows4030++actualRows4031++actualRows4032++actualRows4033++actualRows4034++actualRows4035++actualRows4036++actualRows4037++actualRows4038++actualRows4039++actualRows4040++actualRows4041++actualRows4042++actualRows4043++actualRows4044++actualRows4045++actualRows4046++actualRows4047++actualRows4048++actualRows4049++actualRows4050++actualRows4051++actualRows4052++actualRows4053++actualRows4054++actualRows4055++actualRows4056++actualRows4057++actualRows4058++actualRows4059++actualRows4060++actualRows4061++actualRows4062++actualRows4063++actualRows4064++actualRows4065++actualRows4066++actualRows4067++actualRows4068++actualRows4069++actualRows4070++actualRows4071++actualRows4072++actualRows4073++actualRows4074++actualRows4075++actualRows4076++actualRows4077++actualRows4078++actualRows4079++actualRows4080++actualRows4081++actualRows4082++actualRows4083++actualRows4084++actualRows4085
def partOps61 : List WordIR.Op := [.bxor 1299 4021,.literal (BitVec.ofNat 32 0),.bnot 4023,.badd 4022 4024,.bnot 4025,.band 4020 4026,.bxor 4015 4027,.shr 4028 31,.literal (BitVec.ofNat 32 1),.bxor 4029 4030,.bnot 4031,.literal (BitVec.ofNat 32 1),.badd 4032 4033,.band 4034 2723,.literal (BitVec.ofNat 32 2),.bxor 1299 4036,.literal (BitVec.ofNat 32 0),.bnot 4038,.band 4037 4039,.literal (BitVec.ofNat 32 2),.bxor 1299 4041,.literal (BitVec.ofNat 32 0),.bnot 4043,.bxor 4042 4044,.literal (BitVec.ofNat 32 2),.bxor 1299 4046,.literal (BitVec.ofNat 32 0),.bnot 4048,.badd 4047 4049,.bnot 4050,.band 4045 4051,.bxor 4040 4052,.shr 4053 31,.literal (BitVec.ofNat 32 1),.bxor 4054 4055,.bnot 4056,.literal (BitVec.ofNat 32 1),.badd 4057 4058,.bnot 4059,.band 4060 2555,.bxor 4035 4061,.literal (BitVec.ofNat 32 2),.bxor 1299 4063,.literal (BitVec.ofNat 32 0),.bnot 4065,.band 4064 4066,.literal (BitVec.ofNat 32 2),.bxor 1299 4068,.literal (BitVec.ofNat 32 0),.bnot 4070,.bxor 4069 4071,.literal (BitVec.ofNat 32 2),.bxor 1299 4073,.literal (BitVec.ofNat 32 0),.bnot 4075,.badd 4074 4076,.bnot 4077,.band 4072 4078,.bxor 4067 4079,.shr 4080 31,.literal (BitVec.ofNat 32 1),.bxor 4081 4082,.bnot 4083,.literal (BitVec.ofNat 32 1)]
theorem partExact61 : partRows61=WordField.rows actualModulus 4022 partOps61 := by
  simp only [partRows61,partOps61,WordField.rows,rows4022,rows4023,rows4024,rows4025,rows4026,rows4027,rows4028,rows4029,rows4030,rows4031,rows4032,rows4033,rows4034,rows4035,rows4036,rows4037,rows4038,rows4039,rows4040,rows4041,rows4042,rows4043,rows4044,rows4045,rows4046,rows4047,rows4048,rows4049,rows4050,rows4051,rows4052,rows4053,rows4054,rows4055,rows4056,rows4057,rows4058,rows4059,rows4060,rows4061,rows4062,rows4063,rows4064,rows4065,rows4066,rows4067,rows4068,rows4069,rows4070,rows4071,rows4072,rows4073,rows4074,rows4075,rows4076,rows4077,rows4078,rows4079,rows4080,rows4081,rows4082,rows4083,rows4084,rows4085,List.append_assoc,List.append_nil]
theorem partLength61 : partOps61.length=64 := by decide
theorem partStats61 : partRows61.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows61=332640 := by
  simp only [partRows61,List.length_append,MatrixRowBlocks.rows_weight_append,stats4022.1,stats4022.2,stats4023.1,stats4023.2,stats4024.1,stats4024.2,stats4025.1,stats4025.2,stats4026.1,stats4026.2,stats4027.1,stats4027.2,stats4028.1,stats4028.2,stats4029.1,stats4029.2,stats4030.1,stats4030.2,stats4031.1,stats4031.2,stats4032.1,stats4032.2,stats4033.1,stats4033.2,stats4034.1,stats4034.2,stats4035.1,stats4035.2,stats4036.1,stats4036.2,stats4037.1,stats4037.2,stats4038.1,stats4038.2,stats4039.1,stats4039.2,stats4040.1,stats4040.2,stats4041.1,stats4041.2,stats4042.1,stats4042.2,stats4043.1,stats4043.2,stats4044.1,stats4044.2,stats4045.1,stats4045.2,stats4046.1,stats4046.2,stats4047.1,stats4047.2,stats4048.1,stats4048.2,stats4049.1,stats4049.2,stats4050.1,stats4050.2,stats4051.1,stats4051.2,stats4052.1,stats4052.2,stats4053.1,stats4053.2,stats4054.1,stats4054.2,stats4055.1,stats4055.2,stats4056.1,stats4056.2,stats4057.1,stats4057.2,stats4058.1,stats4058.2,stats4059.1,stats4059.2,stats4060.1,stats4060.2,stats4061.1,stats4061.2,stats4062.1,stats4062.2,stats4063.1,stats4063.2,stats4064.1,stats4064.2,stats4065.1,stats4065.2,stats4066.1,stats4066.2,stats4067.1,stats4067.2,stats4068.1,stats4068.2,stats4069.1,stats4069.2,stats4070.1,stats4070.2,stats4071.1,stats4071.2,stats4072.1,stats4072.2,stats4073.1,stats4073.2,stats4074.1,stats4074.2,stats4075.1,stats4075.2,stats4076.1,stats4076.2,stats4077.1,stats4077.2,stats4078.1,stats4078.2,stats4079.1,stats4079.2,stats4080.1,stats4080.2,stats4081.1,stats4081.2,stats4082.1,stats4082.2,stats4083.1,stats4083.2,stats4084.1,stats4084.2,stats4085.1,stats4085.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
