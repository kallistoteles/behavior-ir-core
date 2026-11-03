import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData62
import FrameHashControllerInstructionMatrixData63
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4011 : actualRows4011=WordField.canonicalRows actualModulus 4011 (.bnot 4010) := by core033_kernel_decide
theorem stats4011 : actualRows4011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4011=6276 := by core033_kernel_decide
theorem rows4012 : actualRows4012=WordField.canonicalRows actualModulus 4012 (.band 4009 4011) := by core033_kernel_decide
theorem stats4012 : actualRows4012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4012=5124 := by core033_kernel_decide
theorem rows4013 : actualRows4013=WordField.canonicalRows actualModulus 4013 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4013 : actualRows4013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4013=2892 := by core033_kernel_decide
theorem rows4014 : actualRows4014=WordField.canonicalRows actualModulus 4014 (.bxor 0 4013) := by core033_kernel_decide
theorem stats4014 : actualRows4014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4014=7428 := by core033_kernel_decide
theorem rows4015 : actualRows4015=WordField.canonicalRows actualModulus 4015 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4015 : actualRows4015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4015=2820 := by core033_kernel_decide
theorem rows4016 : actualRows4016=WordField.canonicalRows actualModulus 4016 (.bnot 4015) := by core033_kernel_decide
theorem stats4016 : actualRows4016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4016=6276 := by core033_kernel_decide
theorem rows4017 : actualRows4017=WordField.canonicalRows actualModulus 4017 (.bxor 4014 4016) := by core033_kernel_decide
theorem stats4017 : actualRows4017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4017=7428 := by core033_kernel_decide
theorem rows4018 : actualRows4018=WordField.canonicalRows actualModulus 4018 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4018 : actualRows4018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4018=2892 := by core033_kernel_decide
theorem rows4019 : actualRows4019=WordField.canonicalRows actualModulus 4019 (.bxor 0 4018) := by core033_kernel_decide
theorem stats4019 : actualRows4019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4019=7428 := by core033_kernel_decide
theorem rows4020 : actualRows4020=WordField.canonicalRows actualModulus 4020 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4020 : actualRows4020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4020=2820 := by core033_kernel_decide
theorem rows4021 : actualRows4021=WordField.canonicalRows actualModulus 4021 (.bnot 4020) := by core033_kernel_decide
theorem stats4021 : actualRows4021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4021=6276 := by core033_kernel_decide
theorem rows4022 : actualRows4022=WordField.canonicalRows actualModulus 4022 (.badd 4019 4021) := by core033_kernel_decide
theorem stats4022 : actualRows4022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4022=5388 := by core033_kernel_decide
theorem rows4023 : actualRows4023=WordField.canonicalRows actualModulus 4023 (.bnot 4022) := by core033_kernel_decide
theorem stats4023 : actualRows4023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4023=6276 := by core033_kernel_decide
theorem rows4024 : actualRows4024=WordField.canonicalRows actualModulus 4024 (.band 4017 4023) := by core033_kernel_decide
theorem stats4024 : actualRows4024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4024=5124 := by core033_kernel_decide
theorem rows4025 : actualRows4025=WordField.canonicalRows actualModulus 4025 (.bxor 4012 4024) := by core033_kernel_decide
theorem stats4025 : actualRows4025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4025=7428 := by core033_kernel_decide
theorem rows4026 : actualRows4026=WordField.canonicalRows actualModulus 4026 (.shr 4025 31) := by core033_kernel_decide
theorem stats4026 : actualRows4026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4026=2892 := by core033_kernel_decide
theorem rows4027 : actualRows4027=WordField.canonicalRows actualModulus 4027 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4027 : actualRows4027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4027=2892 := by core033_kernel_decide
theorem rows4028 : actualRows4028=WordField.canonicalRows actualModulus 4028 (.bxor 4026 4027) := by core033_kernel_decide
theorem stats4028 : actualRows4028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4028=7428 := by core033_kernel_decide
theorem rows4029 : actualRows4029=WordField.canonicalRows actualModulus 4029 (.bnot 4028) := by core033_kernel_decide
theorem stats4029 : actualRows4029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4029=6276 := by core033_kernel_decide
theorem rows4030 : actualRows4030=WordField.canonicalRows actualModulus 4030 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4030 : actualRows4030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4030=2892 := by core033_kernel_decide
theorem rows4031 : actualRows4031=WordField.canonicalRows actualModulus 4031 (.badd 4029 4030) := by core033_kernel_decide
theorem stats4031 : actualRows4031.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4031=5388 := by core033_kernel_decide
theorem rows4032 : actualRows4032=WordField.canonicalRows actualModulus 4032 (.band 4031 1103) := by core033_kernel_decide
theorem stats4032 : actualRows4032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4032=5124 := by core033_kernel_decide
theorem rows4033 : actualRows4033=WordField.canonicalRows actualModulus 4033 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4033 : actualRows4033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4033=2892 := by core033_kernel_decide
theorem rows4034 : actualRows4034=WordField.canonicalRows actualModulus 4034 (.bxor 0 4033) := by core033_kernel_decide
theorem stats4034 : actualRows4034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4034=7428 := by core033_kernel_decide
theorem rows4035 : actualRows4035=WordField.canonicalRows actualModulus 4035 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4035 : actualRows4035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4035=2820 := by core033_kernel_decide
theorem rows4036 : actualRows4036=WordField.canonicalRows actualModulus 4036 (.bnot 4035) := by core033_kernel_decide
theorem stats4036 : actualRows4036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4036=6276 := by core033_kernel_decide
theorem rows4037 : actualRows4037=WordField.canonicalRows actualModulus 4037 (.band 4034 4036) := by core033_kernel_decide
theorem stats4037 : actualRows4037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4037=5124 := by core033_kernel_decide
theorem rows4038 : actualRows4038=WordField.canonicalRows actualModulus 4038 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4038 : actualRows4038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4038=2892 := by core033_kernel_decide
theorem rows4039 : actualRows4039=WordField.canonicalRows actualModulus 4039 (.bxor 0 4038) := by core033_kernel_decide
theorem stats4039 : actualRows4039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4039=7428 := by core033_kernel_decide
theorem rows4040 : actualRows4040=WordField.canonicalRows actualModulus 4040 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4040 : actualRows4040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4040=2820 := by core033_kernel_decide
theorem rows4041 : actualRows4041=WordField.canonicalRows actualModulus 4041 (.bnot 4040) := by core033_kernel_decide
theorem stats4041 : actualRows4041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4041=6276 := by core033_kernel_decide
theorem rows4042 : actualRows4042=WordField.canonicalRows actualModulus 4042 (.bxor 4039 4041) := by core033_kernel_decide
theorem stats4042 : actualRows4042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4042=7428 := by core033_kernel_decide
theorem rows4043 : actualRows4043=WordField.canonicalRows actualModulus 4043 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4043 : actualRows4043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4043=2892 := by core033_kernel_decide
theorem rows4044 : actualRows4044=WordField.canonicalRows actualModulus 4044 (.bxor 0 4043) := by core033_kernel_decide
theorem stats4044 : actualRows4044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4044=7428 := by core033_kernel_decide
theorem rows4045 : actualRows4045=WordField.canonicalRows actualModulus 4045 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4045 : actualRows4045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4045=2820 := by core033_kernel_decide
theorem rows4046 : actualRows4046=WordField.canonicalRows actualModulus 4046 (.bnot 4045) := by core033_kernel_decide
theorem stats4046 : actualRows4046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4046=6276 := by core033_kernel_decide
theorem rows4047 : actualRows4047=WordField.canonicalRows actualModulus 4047 (.badd 4044 4046) := by core033_kernel_decide
theorem stats4047 : actualRows4047.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4047=5388 := by core033_kernel_decide
theorem rows4048 : actualRows4048=WordField.canonicalRows actualModulus 4048 (.bnot 4047) := by core033_kernel_decide
theorem stats4048 : actualRows4048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4048=6276 := by core033_kernel_decide
theorem rows4049 : actualRows4049=WordField.canonicalRows actualModulus 4049 (.band 4042 4048) := by core033_kernel_decide
theorem stats4049 : actualRows4049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4049=5124 := by core033_kernel_decide
theorem rows4050 : actualRows4050=WordField.canonicalRows actualModulus 4050 (.bxor 4037 4049) := by core033_kernel_decide
theorem stats4050 : actualRows4050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4050=7428 := by core033_kernel_decide
theorem rows4051 : actualRows4051=WordField.canonicalRows actualModulus 4051 (.shr 4050 31) := by core033_kernel_decide
theorem stats4051 : actualRows4051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4051=2892 := by core033_kernel_decide
theorem rows4052 : actualRows4052=WordField.canonicalRows actualModulus 4052 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4052 : actualRows4052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4052=2892 := by core033_kernel_decide
theorem rows4053 : actualRows4053=WordField.canonicalRows actualModulus 4053 (.bxor 4051 4052) := by core033_kernel_decide
theorem stats4053 : actualRows4053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4053=7428 := by core033_kernel_decide
theorem rows4054 : actualRows4054=WordField.canonicalRows actualModulus 4054 (.bnot 4053) := by core033_kernel_decide
theorem stats4054 : actualRows4054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4054=6276 := by core033_kernel_decide
theorem rows4055 : actualRows4055=WordField.canonicalRows actualModulus 4055 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4055 : actualRows4055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4055=2892 := by core033_kernel_decide
theorem rows4056 : actualRows4056=WordField.canonicalRows actualModulus 4056 (.badd 4054 4055) := by core033_kernel_decide
theorem stats4056 : actualRows4056.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4056=5388 := by core033_kernel_decide
theorem rows4057 : actualRows4057=WordField.canonicalRows actualModulus 4057 (.bnot 4056) := by core033_kernel_decide
theorem stats4057 : actualRows4057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4057=6276 := by core033_kernel_decide
theorem rows4058 : actualRows4058=WordField.canonicalRows actualModulus 4058 (.band 4057 911) := by core033_kernel_decide
theorem stats4058 : actualRows4058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4058=5124 := by core033_kernel_decide
theorem rows4059 : actualRows4059=WordField.canonicalRows actualModulus 4059 (.bxor 4032 4058) := by core033_kernel_decide
theorem stats4059 : actualRows4059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4059=7428 := by core033_kernel_decide
theorem rows4060 : actualRows4060=WordField.canonicalRows actualModulus 4060 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4060 : actualRows4060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4060=2892 := by core033_kernel_decide
theorem rows4061 : actualRows4061=WordField.canonicalRows actualModulus 4061 (.bxor 0 4060) := by core033_kernel_decide
theorem stats4061 : actualRows4061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4061=7428 := by core033_kernel_decide
theorem rows4062 : actualRows4062=WordField.canonicalRows actualModulus 4062 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4062 : actualRows4062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4062=2820 := by core033_kernel_decide
theorem rows4063 : actualRows4063=WordField.canonicalRows actualModulus 4063 (.bnot 4062) := by core033_kernel_decide
theorem stats4063 : actualRows4063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4063=6276 := by core033_kernel_decide
theorem rows4064 : actualRows4064=WordField.canonicalRows actualModulus 4064 (.band 4061 4063) := by core033_kernel_decide
theorem stats4064 : actualRows4064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4064=5124 := by core033_kernel_decide
theorem rows4065 : actualRows4065=WordField.canonicalRows actualModulus 4065 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4065 : actualRows4065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4065=2892 := by core033_kernel_decide
theorem rows4066 : actualRows4066=WordField.canonicalRows actualModulus 4066 (.bxor 0 4065) := by core033_kernel_decide
theorem stats4066 : actualRows4066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4066=7428 := by core033_kernel_decide
theorem rows4067 : actualRows4067=WordField.canonicalRows actualModulus 4067 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4067 : actualRows4067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4067=2820 := by core033_kernel_decide
theorem rows4068 : actualRows4068=WordField.canonicalRows actualModulus 4068 (.bnot 4067) := by core033_kernel_decide
theorem stats4068 : actualRows4068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4068=6276 := by core033_kernel_decide
theorem rows4069 : actualRows4069=WordField.canonicalRows actualModulus 4069 (.bxor 4066 4068) := by core033_kernel_decide
theorem stats4069 : actualRows4069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4069=7428 := by core033_kernel_decide
theorem rows4070 : actualRows4070=WordField.canonicalRows actualModulus 4070 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4070 : actualRows4070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4070=2892 := by core033_kernel_decide
theorem rows4071 : actualRows4071=WordField.canonicalRows actualModulus 4071 (.bxor 0 4070) := by core033_kernel_decide
theorem stats4071 : actualRows4071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4071=7428 := by core033_kernel_decide
theorem rows4072 : actualRows4072=WordField.canonicalRows actualModulus 4072 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4072 : actualRows4072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4072=2820 := by core033_kernel_decide
theorem rows4073 : actualRows4073=WordField.canonicalRows actualModulus 4073 (.bnot 4072) := by core033_kernel_decide
theorem stats4073 : actualRows4073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4073=6276 := by core033_kernel_decide
theorem rows4074 : actualRows4074=WordField.canonicalRows actualModulus 4074 (.badd 4071 4073) := by core033_kernel_decide
theorem stats4074 : actualRows4074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4074=5388 := by core033_kernel_decide
def partRows62 : List R1CS.Row := actualRows4011++actualRows4012++actualRows4013++actualRows4014++actualRows4015++actualRows4016++actualRows4017++actualRows4018++actualRows4019++actualRows4020++actualRows4021++actualRows4022++actualRows4023++actualRows4024++actualRows4025++actualRows4026++actualRows4027++actualRows4028++actualRows4029++actualRows4030++actualRows4031++actualRows4032++actualRows4033++actualRows4034++actualRows4035++actualRows4036++actualRows4037++actualRows4038++actualRows4039++actualRows4040++actualRows4041++actualRows4042++actualRows4043++actualRows4044++actualRows4045++actualRows4046++actualRows4047++actualRows4048++actualRows4049++actualRows4050++actualRows4051++actualRows4052++actualRows4053++actualRows4054++actualRows4055++actualRows4056++actualRows4057++actualRows4058++actualRows4059++actualRows4060++actualRows4061++actualRows4062++actualRows4063++actualRows4064++actualRows4065++actualRows4066++actualRows4067++actualRows4068++actualRows4069++actualRows4070++actualRows4071++actualRows4072++actualRows4073++actualRows4074
def partOps62 : List WordIR.Op := [.bnot 4010,.band 4009 4011,.literal (BitVec.ofNat 32 2),.bxor 0 4013,.literal (BitVec.ofNat 32 0),.bnot 4015,.bxor 4014 4016,.literal (BitVec.ofNat 32 2),.bxor 0 4018,.literal (BitVec.ofNat 32 0),.bnot 4020,.badd 4019 4021,.bnot 4022,.band 4017 4023,.bxor 4012 4024,.shr 4025 31,.literal (BitVec.ofNat 32 1),.bxor 4026 4027,.bnot 4028,.literal (BitVec.ofNat 32 1),.badd 4029 4030,.band 4031 1103,.literal (BitVec.ofNat 32 2),.bxor 0 4033,.literal (BitVec.ofNat 32 0),.bnot 4035,.band 4034 4036,.literal (BitVec.ofNat 32 2),.bxor 0 4038,.literal (BitVec.ofNat 32 0),.bnot 4040,.bxor 4039 4041,.literal (BitVec.ofNat 32 2),.bxor 0 4043,.literal (BitVec.ofNat 32 0),.bnot 4045,.badd 4044 4046,.bnot 4047,.band 4042 4048,.bxor 4037 4049,.shr 4050 31,.literal (BitVec.ofNat 32 1),.bxor 4051 4052,.bnot 4053,.literal (BitVec.ofNat 32 1),.badd 4054 4055,.bnot 4056,.band 4057 911,.bxor 4032 4058,.literal (BitVec.ofNat 32 2),.bxor 0 4060,.literal (BitVec.ofNat 32 0),.bnot 4062,.band 4061 4063,.literal (BitVec.ofNat 32 2),.bxor 0 4065,.literal (BitVec.ofNat 32 0),.bnot 4067,.bxor 4066 4068,.literal (BitVec.ofNat 32 2),.bxor 0 4070,.literal (BitVec.ofNat 32 0),.bnot 4072,.badd 4071 4073]
theorem partExact62 : partRows62=WordField.rows actualModulus 4011 partOps62 := by
  simp only [partRows62,partOps62,WordField.rows,rows4011,rows4012,rows4013,rows4014,rows4015,rows4016,rows4017,rows4018,rows4019,rows4020,rows4021,rows4022,rows4023,rows4024,rows4025,rows4026,rows4027,rows4028,rows4029,rows4030,rows4031,rows4032,rows4033,rows4034,rows4035,rows4036,rows4037,rows4038,rows4039,rows4040,rows4041,rows4042,rows4043,rows4044,rows4045,rows4046,rows4047,rows4048,rows4049,rows4050,rows4051,rows4052,rows4053,rows4054,rows4055,rows4056,rows4057,rows4058,rows4059,rows4060,rows4061,rows4062,rows4063,rows4064,rows4065,rows4066,rows4067,rows4068,rows4069,rows4070,rows4071,rows4072,rows4073,rows4074,List.append_assoc,List.append_nil]
theorem partLength62 : partOps62.length=64 := by decide
theorem partStats62 : partRows62.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows62=332568 := by
  simp only [partRows62,List.length_append,MatrixRowBlocks.rows_weight_append,stats4011.1,stats4011.2,stats4012.1,stats4012.2,stats4013.1,stats4013.2,stats4014.1,stats4014.2,stats4015.1,stats4015.2,stats4016.1,stats4016.2,stats4017.1,stats4017.2,stats4018.1,stats4018.2,stats4019.1,stats4019.2,stats4020.1,stats4020.2,stats4021.1,stats4021.2,stats4022.1,stats4022.2,stats4023.1,stats4023.2,stats4024.1,stats4024.2,stats4025.1,stats4025.2,stats4026.1,stats4026.2,stats4027.1,stats4027.2,stats4028.1,stats4028.2,stats4029.1,stats4029.2,stats4030.1,stats4030.2,stats4031.1,stats4031.2,stats4032.1,stats4032.2,stats4033.1,stats4033.2,stats4034.1,stats4034.2,stats4035.1,stats4035.2,stats4036.1,stats4036.2,stats4037.1,stats4037.2,stats4038.1,stats4038.2,stats4039.1,stats4039.2,stats4040.1,stats4040.2,stats4041.1,stats4041.2,stats4042.1,stats4042.2,stats4043.1,stats4043.2,stats4044.1,stats4044.2,stats4045.1,stats4045.2,stats4046.1,stats4046.2,stats4047.1,stats4047.2,stats4048.1,stats4048.2,stats4049.1,stats4049.2,stats4050.1,stats4050.2,stats4051.1,stats4051.2,stats4052.1,stats4052.2,stats4053.1,stats4053.2,stats4054.1,stats4054.2,stats4055.1,stats4055.2,stats4056.1,stats4056.2,stats4057.1,stats4057.2,stats4058.1,stats4058.2,stats4059.1,stats4059.2,stats4060.1,stats4060.2,stats4061.1,stats4061.2,stats4062.1,stats4062.2,stats4063.1,stats4063.2,stats4064.1,stats4064.2,stats4065.1,stats4065.2,stats4066.1,stats4066.2,stats4067.1,stats4067.2,stats4068.1,stats4068.2,stats4069.1,stats4069.2,stats4070.1,stats4070.2,stats4071.1,stats4071.2,stats4072.1,stats4072.2,stats4073.1,stats4073.2,stats4074.1,stats4074.2]
  decide
end FrameHashControllerCheckedRows
