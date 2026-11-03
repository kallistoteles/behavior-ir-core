import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData62
import PairedPathRoundInstructionMatrixData63
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4000 : actualRows4000=WordField.canonicalRows actualModulus 4000 (.badd 3998 3999) := by core033_kernel_decide
theorem stats4000 : actualRows4000.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4000=5388 := by core033_kernel_decide
theorem rows4001 : actualRows4001=WordField.canonicalRows actualModulus 4001 (.bnot 4000) := by core033_kernel_decide
theorem stats4001 : actualRows4001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4001=6276 := by core033_kernel_decide
theorem rows4002 : actualRows4002=WordField.canonicalRows actualModulus 4002 (.band 4001 1884) := by core033_kernel_decide
theorem stats4002 : actualRows4002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4002=5124 := by core033_kernel_decide
theorem rows4003 : actualRows4003=WordField.canonicalRows actualModulus 4003 (.bxor 3976 4002) := by core033_kernel_decide
theorem stats4003 : actualRows4003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4003=7428 := by core033_kernel_decide
theorem rows4004 : actualRows4004=WordField.canonicalRows actualModulus 4004 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4004 : actualRows4004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4004=2892 := by core033_kernel_decide
theorem rows4005 : actualRows4005=WordField.canonicalRows actualModulus 4005 (.bxor 616 4004) := by core033_kernel_decide
theorem stats4005 : actualRows4005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4005=7428 := by core033_kernel_decide
theorem rows4006 : actualRows4006=WordField.canonicalRows actualModulus 4006 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4006 : actualRows4006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4006=2820 := by core033_kernel_decide
theorem rows4007 : actualRows4007=WordField.canonicalRows actualModulus 4007 (.bnot 4006) := by core033_kernel_decide
theorem stats4007 : actualRows4007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4007=6276 := by core033_kernel_decide
theorem rows4008 : actualRows4008=WordField.canonicalRows actualModulus 4008 (.band 4005 4007) := by core033_kernel_decide
theorem stats4008 : actualRows4008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4008=5124 := by core033_kernel_decide
theorem rows4009 : actualRows4009=WordField.canonicalRows actualModulus 4009 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4009 : actualRows4009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4009=2892 := by core033_kernel_decide
theorem rows4010 : actualRows4010=WordField.canonicalRows actualModulus 4010 (.bxor 616 4009) := by core033_kernel_decide
theorem stats4010 : actualRows4010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4010=7428 := by core033_kernel_decide
theorem rows4011 : actualRows4011=WordField.canonicalRows actualModulus 4011 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4011 : actualRows4011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4011=2820 := by core033_kernel_decide
theorem rows4012 : actualRows4012=WordField.canonicalRows actualModulus 4012 (.bnot 4011) := by core033_kernel_decide
theorem stats4012 : actualRows4012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4012=6276 := by core033_kernel_decide
theorem rows4013 : actualRows4013=WordField.canonicalRows actualModulus 4013 (.bxor 4010 4012) := by core033_kernel_decide
theorem stats4013 : actualRows4013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4013=7428 := by core033_kernel_decide
theorem rows4014 : actualRows4014=WordField.canonicalRows actualModulus 4014 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4014 : actualRows4014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4014=2892 := by core033_kernel_decide
theorem rows4015 : actualRows4015=WordField.canonicalRows actualModulus 4015 (.bxor 616 4014) := by core033_kernel_decide
theorem stats4015 : actualRows4015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4015=7428 := by core033_kernel_decide
theorem rows4016 : actualRows4016=WordField.canonicalRows actualModulus 4016 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4016 : actualRows4016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4016=2820 := by core033_kernel_decide
theorem rows4017 : actualRows4017=WordField.canonicalRows actualModulus 4017 (.bnot 4016) := by core033_kernel_decide
theorem stats4017 : actualRows4017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4017=6276 := by core033_kernel_decide
theorem rows4018 : actualRows4018=WordField.canonicalRows actualModulus 4018 (.badd 4015 4017) := by core033_kernel_decide
theorem stats4018 : actualRows4018.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4018=5388 := by core033_kernel_decide
theorem rows4019 : actualRows4019=WordField.canonicalRows actualModulus 4019 (.bnot 4018) := by core033_kernel_decide
theorem stats4019 : actualRows4019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4019=6276 := by core033_kernel_decide
theorem rows4020 : actualRows4020=WordField.canonicalRows actualModulus 4020 (.band 4013 4019) := by core033_kernel_decide
theorem stats4020 : actualRows4020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4020=5124 := by core033_kernel_decide
theorem rows4021 : actualRows4021=WordField.canonicalRows actualModulus 4021 (.bxor 4008 4020) := by core033_kernel_decide
theorem stats4021 : actualRows4021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4021=7428 := by core033_kernel_decide
theorem rows4022 : actualRows4022=WordField.canonicalRows actualModulus 4022 (.shr 4021 31) := by core033_kernel_decide
theorem stats4022 : actualRows4022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4022=2892 := by core033_kernel_decide
theorem rows4023 : actualRows4023=WordField.canonicalRows actualModulus 4023 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4023 : actualRows4023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4023=2892 := by core033_kernel_decide
theorem rows4024 : actualRows4024=WordField.canonicalRows actualModulus 4024 (.bxor 4022 4023) := by core033_kernel_decide
theorem stats4024 : actualRows4024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4024=7428 := by core033_kernel_decide
theorem rows4025 : actualRows4025=WordField.canonicalRows actualModulus 4025 (.bnot 4024) := by core033_kernel_decide
theorem stats4025 : actualRows4025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4025=6276 := by core033_kernel_decide
theorem rows4026 : actualRows4026=WordField.canonicalRows actualModulus 4026 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4026 : actualRows4026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4026=2892 := by core033_kernel_decide
theorem rows4027 : actualRows4027=WordField.canonicalRows actualModulus 4027 (.badd 4025 4026) := by core033_kernel_decide
theorem stats4027 : actualRows4027.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4027=5388 := by core033_kernel_decide
theorem rows4028 : actualRows4028=WordField.canonicalRows actualModulus 4028 (.band 4027 2079) := by core033_kernel_decide
theorem stats4028 : actualRows4028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4028=5124 := by core033_kernel_decide
theorem rows4029 : actualRows4029=WordField.canonicalRows actualModulus 4029 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4029 : actualRows4029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4029=2892 := by core033_kernel_decide
theorem rows4030 : actualRows4030=WordField.canonicalRows actualModulus 4030 (.bxor 616 4029) := by core033_kernel_decide
theorem stats4030 : actualRows4030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4030=7428 := by core033_kernel_decide
theorem rows4031 : actualRows4031=WordField.canonicalRows actualModulus 4031 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4031 : actualRows4031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4031=2820 := by core033_kernel_decide
theorem rows4032 : actualRows4032=WordField.canonicalRows actualModulus 4032 (.bnot 4031) := by core033_kernel_decide
theorem stats4032 : actualRows4032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4032=6276 := by core033_kernel_decide
theorem rows4033 : actualRows4033=WordField.canonicalRows actualModulus 4033 (.band 4030 4032) := by core033_kernel_decide
theorem stats4033 : actualRows4033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4033=5124 := by core033_kernel_decide
theorem rows4034 : actualRows4034=WordField.canonicalRows actualModulus 4034 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4034 : actualRows4034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4034=2892 := by core033_kernel_decide
theorem rows4035 : actualRows4035=WordField.canonicalRows actualModulus 4035 (.bxor 616 4034) := by core033_kernel_decide
theorem stats4035 : actualRows4035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4035=7428 := by core033_kernel_decide
theorem rows4036 : actualRows4036=WordField.canonicalRows actualModulus 4036 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4036 : actualRows4036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4036=2820 := by core033_kernel_decide
theorem rows4037 : actualRows4037=WordField.canonicalRows actualModulus 4037 (.bnot 4036) := by core033_kernel_decide
theorem stats4037 : actualRows4037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4037=6276 := by core033_kernel_decide
theorem rows4038 : actualRows4038=WordField.canonicalRows actualModulus 4038 (.bxor 4035 4037) := by core033_kernel_decide
theorem stats4038 : actualRows4038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4038=7428 := by core033_kernel_decide
theorem rows4039 : actualRows4039=WordField.canonicalRows actualModulus 4039 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4039 : actualRows4039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4039=2892 := by core033_kernel_decide
theorem rows4040 : actualRows4040=WordField.canonicalRows actualModulus 4040 (.bxor 616 4039) := by core033_kernel_decide
theorem stats4040 : actualRows4040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4040=7428 := by core033_kernel_decide
theorem rows4041 : actualRows4041=WordField.canonicalRows actualModulus 4041 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4041 : actualRows4041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4041=2820 := by core033_kernel_decide
theorem rows4042 : actualRows4042=WordField.canonicalRows actualModulus 4042 (.bnot 4041) := by core033_kernel_decide
theorem stats4042 : actualRows4042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4042=6276 := by core033_kernel_decide
theorem rows4043 : actualRows4043=WordField.canonicalRows actualModulus 4043 (.badd 4040 4042) := by core033_kernel_decide
theorem stats4043 : actualRows4043.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4043=5388 := by core033_kernel_decide
theorem rows4044 : actualRows4044=WordField.canonicalRows actualModulus 4044 (.bnot 4043) := by core033_kernel_decide
theorem stats4044 : actualRows4044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4044=6276 := by core033_kernel_decide
theorem rows4045 : actualRows4045=WordField.canonicalRows actualModulus 4045 (.band 4038 4044) := by core033_kernel_decide
theorem stats4045 : actualRows4045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4045=5124 := by core033_kernel_decide
theorem rows4046 : actualRows4046=WordField.canonicalRows actualModulus 4046 (.bxor 4033 4045) := by core033_kernel_decide
theorem stats4046 : actualRows4046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4046=7428 := by core033_kernel_decide
theorem rows4047 : actualRows4047=WordField.canonicalRows actualModulus 4047 (.shr 4046 31) := by core033_kernel_decide
theorem stats4047 : actualRows4047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4047=2892 := by core033_kernel_decide
theorem rows4048 : actualRows4048=WordField.canonicalRows actualModulus 4048 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4048 : actualRows4048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4048=2892 := by core033_kernel_decide
theorem rows4049 : actualRows4049=WordField.canonicalRows actualModulus 4049 (.bxor 4047 4048) := by core033_kernel_decide
theorem stats4049 : actualRows4049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4049=7428 := by core033_kernel_decide
theorem rows4050 : actualRows4050=WordField.canonicalRows actualModulus 4050 (.bnot 4049) := by core033_kernel_decide
theorem stats4050 : actualRows4050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4050=6276 := by core033_kernel_decide
theorem rows4051 : actualRows4051=WordField.canonicalRows actualModulus 4051 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4051 : actualRows4051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4051=2892 := by core033_kernel_decide
theorem rows4052 : actualRows4052=WordField.canonicalRows actualModulus 4052 (.badd 4050 4051) := by core033_kernel_decide
theorem stats4052 : actualRows4052.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4052=5388 := by core033_kernel_decide
theorem rows4053 : actualRows4053=WordField.canonicalRows actualModulus 4053 (.bnot 4052) := by core033_kernel_decide
theorem stats4053 : actualRows4053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4053=6276 := by core033_kernel_decide
theorem rows4054 : actualRows4054=WordField.canonicalRows actualModulus 4054 (.band 4053 1887) := by core033_kernel_decide
theorem stats4054 : actualRows4054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4054=5124 := by core033_kernel_decide
theorem rows4055 : actualRows4055=WordField.canonicalRows actualModulus 4055 (.bxor 4028 4054) := by core033_kernel_decide
theorem stats4055 : actualRows4055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4055=7428 := by core033_kernel_decide
theorem rows4056 : actualRows4056=WordField.canonicalRows actualModulus 4056 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4056 : actualRows4056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4056=2892 := by core033_kernel_decide
theorem rows4057 : actualRows4057=WordField.canonicalRows actualModulus 4057 (.bxor 616 4056) := by core033_kernel_decide
theorem stats4057 : actualRows4057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4057=7428 := by core033_kernel_decide
theorem rows4058 : actualRows4058=WordField.canonicalRows actualModulus 4058 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4058 : actualRows4058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4058=2820 := by core033_kernel_decide
theorem rows4059 : actualRows4059=WordField.canonicalRows actualModulus 4059 (.bnot 4058) := by core033_kernel_decide
theorem stats4059 : actualRows4059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4059=6276 := by core033_kernel_decide
theorem rows4060 : actualRows4060=WordField.canonicalRows actualModulus 4060 (.band 4057 4059) := by core033_kernel_decide
theorem stats4060 : actualRows4060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4060=5124 := by core033_kernel_decide
theorem rows4061 : actualRows4061=WordField.canonicalRows actualModulus 4061 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4061 : actualRows4061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4061=2892 := by core033_kernel_decide
theorem rows4062 : actualRows4062=WordField.canonicalRows actualModulus 4062 (.bxor 616 4061) := by core033_kernel_decide
theorem stats4062 : actualRows4062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4062=7428 := by core033_kernel_decide
theorem rows4063 : actualRows4063=WordField.canonicalRows actualModulus 4063 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4063 : actualRows4063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4063=2820 := by core033_kernel_decide
def partRows61 : List R1CS.Row := actualRows4000++actualRows4001++actualRows4002++actualRows4003++actualRows4004++actualRows4005++actualRows4006++actualRows4007++actualRows4008++actualRows4009++actualRows4010++actualRows4011++actualRows4012++actualRows4013++actualRows4014++actualRows4015++actualRows4016++actualRows4017++actualRows4018++actualRows4019++actualRows4020++actualRows4021++actualRows4022++actualRows4023++actualRows4024++actualRows4025++actualRows4026++actualRows4027++actualRows4028++actualRows4029++actualRows4030++actualRows4031++actualRows4032++actualRows4033++actualRows4034++actualRows4035++actualRows4036++actualRows4037++actualRows4038++actualRows4039++actualRows4040++actualRows4041++actualRows4042++actualRows4043++actualRows4044++actualRows4045++actualRows4046++actualRows4047++actualRows4048++actualRows4049++actualRows4050++actualRows4051++actualRows4052++actualRows4053++actualRows4054++actualRows4055++actualRows4056++actualRows4057++actualRows4058++actualRows4059++actualRows4060++actualRows4061++actualRows4062++actualRows4063
def partOps61 : List WordIR.Op := [.badd 3998 3999,.bnot 4000,.band 4001 1884,.bxor 3976 4002,.literal (BitVec.ofNat 32 2),.bxor 616 4004,.literal (BitVec.ofNat 32 0),.bnot 4006,.band 4005 4007,.literal (BitVec.ofNat 32 2),.bxor 616 4009,.literal (BitVec.ofNat 32 0),.bnot 4011,.bxor 4010 4012,.literal (BitVec.ofNat 32 2),.bxor 616 4014,.literal (BitVec.ofNat 32 0),.bnot 4016,.badd 4015 4017,.bnot 4018,.band 4013 4019,.bxor 4008 4020,.shr 4021 31,.literal (BitVec.ofNat 32 1),.bxor 4022 4023,.bnot 4024,.literal (BitVec.ofNat 32 1),.badd 4025 4026,.band 4027 2079,.literal (BitVec.ofNat 32 2),.bxor 616 4029,.literal (BitVec.ofNat 32 0),.bnot 4031,.band 4030 4032,.literal (BitVec.ofNat 32 2),.bxor 616 4034,.literal (BitVec.ofNat 32 0),.bnot 4036,.bxor 4035 4037,.literal (BitVec.ofNat 32 2),.bxor 616 4039,.literal (BitVec.ofNat 32 0),.bnot 4041,.badd 4040 4042,.bnot 4043,.band 4038 4044,.bxor 4033 4045,.shr 4046 31,.literal (BitVec.ofNat 32 1),.bxor 4047 4048,.bnot 4049,.literal (BitVec.ofNat 32 1),.badd 4050 4051,.bnot 4052,.band 4053 1887,.bxor 4028 4054,.literal (BitVec.ofNat 32 2),.bxor 616 4056,.literal (BitVec.ofNat 32 0),.bnot 4058,.band 4057 4059,.literal (BitVec.ofNat 32 2),.bxor 616 4061,.literal (BitVec.ofNat 32 0)]
theorem partExact61 : partRows61=WordField.rows actualModulus 4000 partOps61 := by
  simp only [partRows61,partOps61,WordField.rows,rows4000,rows4001,rows4002,rows4003,rows4004,rows4005,rows4006,rows4007,rows4008,rows4009,rows4010,rows4011,rows4012,rows4013,rows4014,rows4015,rows4016,rows4017,rows4018,rows4019,rows4020,rows4021,rows4022,rows4023,rows4024,rows4025,rows4026,rows4027,rows4028,rows4029,rows4030,rows4031,rows4032,rows4033,rows4034,rows4035,rows4036,rows4037,rows4038,rows4039,rows4040,rows4041,rows4042,rows4043,rows4044,rows4045,rows4046,rows4047,rows4048,rows4049,rows4050,rows4051,rows4052,rows4053,rows4054,rows4055,rows4056,rows4057,rows4058,rows4059,rows4060,rows4061,rows4062,rows4063,List.append_assoc,List.append_nil]
theorem partLength61 : partOps61.length=64 := by decide
theorem partStats61 : partRows61.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows61=331416 := by
  simp only [partRows61,List.length_append,MatrixRowBlocks.rows_weight_append,stats4000.1,stats4000.2,stats4001.1,stats4001.2,stats4002.1,stats4002.2,stats4003.1,stats4003.2,stats4004.1,stats4004.2,stats4005.1,stats4005.2,stats4006.1,stats4006.2,stats4007.1,stats4007.2,stats4008.1,stats4008.2,stats4009.1,stats4009.2,stats4010.1,stats4010.2,stats4011.1,stats4011.2,stats4012.1,stats4012.2,stats4013.1,stats4013.2,stats4014.1,stats4014.2,stats4015.1,stats4015.2,stats4016.1,stats4016.2,stats4017.1,stats4017.2,stats4018.1,stats4018.2,stats4019.1,stats4019.2,stats4020.1,stats4020.2,stats4021.1,stats4021.2,stats4022.1,stats4022.2,stats4023.1,stats4023.2,stats4024.1,stats4024.2,stats4025.1,stats4025.2,stats4026.1,stats4026.2,stats4027.1,stats4027.2,stats4028.1,stats4028.2,stats4029.1,stats4029.2,stats4030.1,stats4030.2,stats4031.1,stats4031.2,stats4032.1,stats4032.2,stats4033.1,stats4033.2,stats4034.1,stats4034.2,stats4035.1,stats4035.2,stats4036.1,stats4036.2,stats4037.1,stats4037.2,stats4038.1,stats4038.2,stats4039.1,stats4039.2,stats4040.1,stats4040.2,stats4041.1,stats4041.2,stats4042.1,stats4042.2,stats4043.1,stats4043.2,stats4044.1,stats4044.2,stats4045.1,stats4045.2,stats4046.1,stats4046.2,stats4047.1,stats4047.2,stats4048.1,stats4048.2,stats4049.1,stats4049.2,stats4050.1,stats4050.2,stats4051.1,stats4051.2,stats4052.1,stats4052.2,stats4053.1,stats4053.2,stats4054.1,stats4054.2,stats4055.1,stats4055.2,stats4056.1,stats4056.2,stats4057.1,stats4057.2,stats4058.1,stats4058.2,stats4059.1,stats4059.2,stats4060.1,stats4060.2,stats4061.1,stats4061.2,stats4062.1,stats4062.2,stats4063.1,stats4063.2]
  decide
end PairedPathRoundCheckedRows
