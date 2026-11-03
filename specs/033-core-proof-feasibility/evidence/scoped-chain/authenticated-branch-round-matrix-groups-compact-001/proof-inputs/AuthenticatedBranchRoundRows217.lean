import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData218
import AuthenticatedBranchRoundInstructionMatrixData219
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows14006 : actualRows14006=WordField.canonicalRows actualModulus 14006 (.bnot 440) := by core033_kernel_decide
theorem stats14006 : actualRows14006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14006=6276 := by core033_kernel_decide
theorem rows14007 : actualRows14007=WordField.canonicalRows actualModulus 14007 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14007 : actualRows14007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14007=2892 := by core033_kernel_decide
theorem rows14008 : actualRows14008=WordField.canonicalRows actualModulus 14008 (.badd 14006 14007) := by core033_kernel_decide
theorem stats14008 : actualRows14008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14008=5388 := by core033_kernel_decide
theorem rows14009 : actualRows14009=WordField.canonicalRows actualModulus 14009 (.bnot 14008) := by core033_kernel_decide
theorem stats14009 : actualRows14009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14009=6276 := by core033_kernel_decide
theorem rows14010 : actualRows14010=WordField.canonicalRows actualModulus 14010 (.band 14009 69) := by core033_kernel_decide
theorem stats14010 : actualRows14010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14010=5124 := by core033_kernel_decide
theorem rows14011 : actualRows14011=WordField.canonicalRows actualModulus 14011 (.bxor 14005 14010) := by core033_kernel_decide
theorem stats14011 : actualRows14011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14011=7428 := by core033_kernel_decide
theorem rows14012 : actualRows14012=WordField.canonicalRows actualModulus 14012 (.bnot 440) := by core033_kernel_decide
theorem stats14012 : actualRows14012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14012=6276 := by core033_kernel_decide
theorem rows14013 : actualRows14013=WordField.canonicalRows actualModulus 14013 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14013 : actualRows14013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14013=2892 := by core033_kernel_decide
theorem rows14014 : actualRows14014=WordField.canonicalRows actualModulus 14014 (.badd 14012 14013) := by core033_kernel_decide
theorem stats14014 : actualRows14014.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14014=5388 := by core033_kernel_decide
theorem rows14015 : actualRows14015=WordField.canonicalRows actualModulus 14015 (.band 14014 12208) := by core033_kernel_decide
theorem stats14015 : actualRows14015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14015=5124 := by core033_kernel_decide
theorem rows14016 : actualRows14016=WordField.canonicalRows actualModulus 14016 (.bnot 440) := by core033_kernel_decide
theorem stats14016 : actualRows14016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14016=6276 := by core033_kernel_decide
theorem rows14017 : actualRows14017=WordField.canonicalRows actualModulus 14017 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14017 : actualRows14017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14017=2892 := by core033_kernel_decide
theorem rows14018 : actualRows14018=WordField.canonicalRows actualModulus 14018 (.badd 14016 14017) := by core033_kernel_decide
theorem stats14018 : actualRows14018.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14018=5388 := by core033_kernel_decide
theorem rows14019 : actualRows14019=WordField.canonicalRows actualModulus 14019 (.bnot 14018) := by core033_kernel_decide
theorem stats14019 : actualRows14019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14019=6276 := by core033_kernel_decide
theorem rows14020 : actualRows14020=WordField.canonicalRows actualModulus 14020 (.band 14019 70) := by core033_kernel_decide
theorem stats14020 : actualRows14020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14020=5124 := by core033_kernel_decide
theorem rows14021 : actualRows14021=WordField.canonicalRows actualModulus 14021 (.bxor 14015 14020) := by core033_kernel_decide
theorem stats14021 : actualRows14021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14021=7428 := by core033_kernel_decide
theorem rows14022 : actualRows14022=WordField.canonicalRows actualModulus 14022 (.bnot 440) := by core033_kernel_decide
theorem stats14022 : actualRows14022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14022=6276 := by core033_kernel_decide
theorem rows14023 : actualRows14023=WordField.canonicalRows actualModulus 14023 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14023 : actualRows14023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14023=2892 := by core033_kernel_decide
theorem rows14024 : actualRows14024=WordField.canonicalRows actualModulus 14024 (.badd 14022 14023) := by core033_kernel_decide
theorem stats14024 : actualRows14024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14024=5388 := by core033_kernel_decide
theorem rows14025 : actualRows14025=WordField.canonicalRows actualModulus 14025 (.band 14024 12260) := by core033_kernel_decide
theorem stats14025 : actualRows14025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14025=5124 := by core033_kernel_decide
theorem rows14026 : actualRows14026=WordField.canonicalRows actualModulus 14026 (.bnot 440) := by core033_kernel_decide
theorem stats14026 : actualRows14026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14026=6276 := by core033_kernel_decide
theorem rows14027 : actualRows14027=WordField.canonicalRows actualModulus 14027 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14027 : actualRows14027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14027=2892 := by core033_kernel_decide
theorem rows14028 : actualRows14028=WordField.canonicalRows actualModulus 14028 (.badd 14026 14027) := by core033_kernel_decide
theorem stats14028 : actualRows14028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14028=5388 := by core033_kernel_decide
theorem rows14029 : actualRows14029=WordField.canonicalRows actualModulus 14029 (.bnot 14028) := by core033_kernel_decide
theorem stats14029 : actualRows14029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14029=6276 := by core033_kernel_decide
theorem rows14030 : actualRows14030=WordField.canonicalRows actualModulus 14030 (.band 14029 71) := by core033_kernel_decide
theorem stats14030 : actualRows14030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14030=5124 := by core033_kernel_decide
theorem rows14031 : actualRows14031=WordField.canonicalRows actualModulus 14031 (.bxor 14025 14030) := by core033_kernel_decide
theorem stats14031 : actualRows14031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14031=7428 := by core033_kernel_decide
theorem rows14032 : actualRows14032=WordField.canonicalRows actualModulus 14032 (.bnot 440) := by core033_kernel_decide
theorem stats14032 : actualRows14032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14032=6276 := by core033_kernel_decide
theorem rows14033 : actualRows14033=WordField.canonicalRows actualModulus 14033 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14033 : actualRows14033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14033=2892 := by core033_kernel_decide
theorem rows14034 : actualRows14034=WordField.canonicalRows actualModulus 14034 (.badd 14032 14033) := by core033_kernel_decide
theorem stats14034 : actualRows14034.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14034=5388 := by core033_kernel_decide
theorem rows14035 : actualRows14035=WordField.canonicalRows actualModulus 14035 (.band 14034 12312) := by core033_kernel_decide
theorem stats14035 : actualRows14035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14035=5124 := by core033_kernel_decide
theorem rows14036 : actualRows14036=WordField.canonicalRows actualModulus 14036 (.bnot 440) := by core033_kernel_decide
theorem stats14036 : actualRows14036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14036=6276 := by core033_kernel_decide
theorem rows14037 : actualRows14037=WordField.canonicalRows actualModulus 14037 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14037 : actualRows14037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14037=2892 := by core033_kernel_decide
theorem rows14038 : actualRows14038=WordField.canonicalRows actualModulus 14038 (.badd 14036 14037) := by core033_kernel_decide
theorem stats14038 : actualRows14038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14038=5388 := by core033_kernel_decide
theorem rows14039 : actualRows14039=WordField.canonicalRows actualModulus 14039 (.bnot 14038) := by core033_kernel_decide
theorem stats14039 : actualRows14039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14039=6276 := by core033_kernel_decide
theorem rows14040 : actualRows14040=WordField.canonicalRows actualModulus 14040 (.band 14039 72) := by core033_kernel_decide
theorem stats14040 : actualRows14040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14040=5124 := by core033_kernel_decide
theorem rows14041 : actualRows14041=WordField.canonicalRows actualModulus 14041 (.bxor 14035 14040) := by core033_kernel_decide
theorem stats14041 : actualRows14041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14041=7428 := by core033_kernel_decide
theorem rows14042 : actualRows14042=WordField.canonicalRows actualModulus 14042 (.bnot 440) := by core033_kernel_decide
theorem stats14042 : actualRows14042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14042=6276 := by core033_kernel_decide
theorem rows14043 : actualRows14043=WordField.canonicalRows actualModulus 14043 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14043 : actualRows14043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14043=2892 := by core033_kernel_decide
theorem rows14044 : actualRows14044=WordField.canonicalRows actualModulus 14044 (.badd 14042 14043) := by core033_kernel_decide
theorem stats14044 : actualRows14044.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14044=5388 := by core033_kernel_decide
theorem rows14045 : actualRows14045=WordField.canonicalRows actualModulus 14045 (.band 14044 12364) := by core033_kernel_decide
theorem stats14045 : actualRows14045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14045=5124 := by core033_kernel_decide
theorem rows14046 : actualRows14046=WordField.canonicalRows actualModulus 14046 (.bnot 440) := by core033_kernel_decide
theorem stats14046 : actualRows14046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14046=6276 := by core033_kernel_decide
theorem rows14047 : actualRows14047=WordField.canonicalRows actualModulus 14047 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14047 : actualRows14047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14047=2892 := by core033_kernel_decide
theorem rows14048 : actualRows14048=WordField.canonicalRows actualModulus 14048 (.badd 14046 14047) := by core033_kernel_decide
theorem stats14048 : actualRows14048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14048=5388 := by core033_kernel_decide
theorem rows14049 : actualRows14049=WordField.canonicalRows actualModulus 14049 (.bnot 14048) := by core033_kernel_decide
theorem stats14049 : actualRows14049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14049=6276 := by core033_kernel_decide
theorem rows14050 : actualRows14050=WordField.canonicalRows actualModulus 14050 (.band 14049 73) := by core033_kernel_decide
theorem stats14050 : actualRows14050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14050=5124 := by core033_kernel_decide
theorem rows14051 : actualRows14051=WordField.canonicalRows actualModulus 14051 (.bxor 14045 14050) := by core033_kernel_decide
theorem stats14051 : actualRows14051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14051=7428 := by core033_kernel_decide
theorem rows14052 : actualRows14052=WordField.canonicalRows actualModulus 14052 (.bnot 440) := by core033_kernel_decide
theorem stats14052 : actualRows14052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14052=6276 := by core033_kernel_decide
theorem rows14053 : actualRows14053=WordField.canonicalRows actualModulus 14053 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14053 : actualRows14053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14053=2892 := by core033_kernel_decide
theorem rows14054 : actualRows14054=WordField.canonicalRows actualModulus 14054 (.badd 14052 14053) := by core033_kernel_decide
theorem stats14054 : actualRows14054.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14054=5388 := by core033_kernel_decide
theorem rows14055 : actualRows14055=WordField.canonicalRows actualModulus 14055 (.band 14054 12416) := by core033_kernel_decide
theorem stats14055 : actualRows14055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14055=5124 := by core033_kernel_decide
theorem rows14056 : actualRows14056=WordField.canonicalRows actualModulus 14056 (.bnot 440) := by core033_kernel_decide
theorem stats14056 : actualRows14056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14056=6276 := by core033_kernel_decide
theorem rows14057 : actualRows14057=WordField.canonicalRows actualModulus 14057 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14057 : actualRows14057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14057=2892 := by core033_kernel_decide
theorem rows14058 : actualRows14058=WordField.canonicalRows actualModulus 14058 (.badd 14056 14057) := by core033_kernel_decide
theorem stats14058 : actualRows14058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14058=5388 := by core033_kernel_decide
theorem rows14059 : actualRows14059=WordField.canonicalRows actualModulus 14059 (.bnot 14058) := by core033_kernel_decide
theorem stats14059 : actualRows14059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14059=6276 := by core033_kernel_decide
theorem rows14060 : actualRows14060=WordField.canonicalRows actualModulus 14060 (.band 14059 74) := by core033_kernel_decide
theorem stats14060 : actualRows14060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14060=5124 := by core033_kernel_decide
theorem rows14061 : actualRows14061=WordField.canonicalRows actualModulus 14061 (.bxor 14055 14060) := by core033_kernel_decide
theorem stats14061 : actualRows14061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14061=7428 := by core033_kernel_decide
theorem rows14062 : actualRows14062=WordField.canonicalRows actualModulus 14062 (.bnot 440) := by core033_kernel_decide
theorem stats14062 : actualRows14062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14062=6276 := by core033_kernel_decide
theorem rows14063 : actualRows14063=WordField.canonicalRows actualModulus 14063 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14063 : actualRows14063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14063=2892 := by core033_kernel_decide
theorem rows14064 : actualRows14064=WordField.canonicalRows actualModulus 14064 (.badd 14062 14063) := by core033_kernel_decide
theorem stats14064 : actualRows14064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14064=5388 := by core033_kernel_decide
theorem rows14065 : actualRows14065=WordField.canonicalRows actualModulus 14065 (.band 14064 12884) := by core033_kernel_decide
theorem stats14065 : actualRows14065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14065=5124 := by core033_kernel_decide
theorem rows14066 : actualRows14066=WordField.canonicalRows actualModulus 14066 (.bnot 440) := by core033_kernel_decide
theorem stats14066 : actualRows14066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14066=6276 := by core033_kernel_decide
theorem rows14067 : actualRows14067=WordField.canonicalRows actualModulus 14067 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14067 : actualRows14067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14067=2892 := by core033_kernel_decide
theorem rows14068 : actualRows14068=WordField.canonicalRows actualModulus 14068 (.badd 14066 14067) := by core033_kernel_decide
theorem stats14068 : actualRows14068.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14068=5388 := by core033_kernel_decide
theorem rows14069 : actualRows14069=WordField.canonicalRows actualModulus 14069 (.bnot 14068) := by core033_kernel_decide
theorem stats14069 : actualRows14069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14069=6276 := by core033_kernel_decide
def partRows217 : List R1CS.Row := actualRows14006++actualRows14007++actualRows14008++actualRows14009++actualRows14010++actualRows14011++actualRows14012++actualRows14013++actualRows14014++actualRows14015++actualRows14016++actualRows14017++actualRows14018++actualRows14019++actualRows14020++actualRows14021++actualRows14022++actualRows14023++actualRows14024++actualRows14025++actualRows14026++actualRows14027++actualRows14028++actualRows14029++actualRows14030++actualRows14031++actualRows14032++actualRows14033++actualRows14034++actualRows14035++actualRows14036++actualRows14037++actualRows14038++actualRows14039++actualRows14040++actualRows14041++actualRows14042++actualRows14043++actualRows14044++actualRows14045++actualRows14046++actualRows14047++actualRows14048++actualRows14049++actualRows14050++actualRows14051++actualRows14052++actualRows14053++actualRows14054++actualRows14055++actualRows14056++actualRows14057++actualRows14058++actualRows14059++actualRows14060++actualRows14061++actualRows14062++actualRows14063++actualRows14064++actualRows14065++actualRows14066++actualRows14067++actualRows14068++actualRows14069
def partOps217 : List WordIR.Op := [.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14006 14007,.bnot 14008,.band 14009 69,.bxor 14005 14010,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14012 14013,.band 14014 12208,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14016 14017,.bnot 14018,.band 14019 70,.bxor 14015 14020,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14022 14023,.band 14024 12260,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14026 14027,.bnot 14028,.band 14029 71,.bxor 14025 14030,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14032 14033,.band 14034 12312,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14036 14037,.bnot 14038,.band 14039 72,.bxor 14035 14040,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14042 14043,.band 14044 12364,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14046 14047,.bnot 14048,.band 14049 73,.bxor 14045 14050,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14052 14053,.band 14054 12416,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14056 14057,.bnot 14058,.band 14059 74,.bxor 14055 14060,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14062 14063,.band 14064 12884,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14066 14067,.bnot 14068]
theorem partExact217 : partRows217=WordField.rows actualModulus 14006 partOps217 := by
  simp only [partRows217,partOps217,WordField.rows,rows14006,rows14007,rows14008,rows14009,rows14010,rows14011,rows14012,rows14013,rows14014,rows14015,rows14016,rows14017,rows14018,rows14019,rows14020,rows14021,rows14022,rows14023,rows14024,rows14025,rows14026,rows14027,rows14028,rows14029,rows14030,rows14031,rows14032,rows14033,rows14034,rows14035,rows14036,rows14037,rows14038,rows14039,rows14040,rows14041,rows14042,rows14043,rows14044,rows14045,rows14046,rows14047,rows14048,rows14049,rows14050,rows14051,rows14052,rows14053,rows14054,rows14055,rows14056,rows14057,rows14058,rows14059,rows14060,rows14061,rows14062,rows14063,rows14064,rows14065,rows14066,rows14067,rows14068,rows14069,List.append_assoc,List.append_nil]
theorem partLength217 : partOps217.length=64 := by decide
theorem partStats217 : partRows217.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows217=339216 := by
  simp only [partRows217,List.length_append,MatrixRowBlocks.rows_weight_append,stats14006.1,stats14006.2,stats14007.1,stats14007.2,stats14008.1,stats14008.2,stats14009.1,stats14009.2,stats14010.1,stats14010.2,stats14011.1,stats14011.2,stats14012.1,stats14012.2,stats14013.1,stats14013.2,stats14014.1,stats14014.2,stats14015.1,stats14015.2,stats14016.1,stats14016.2,stats14017.1,stats14017.2,stats14018.1,stats14018.2,stats14019.1,stats14019.2,stats14020.1,stats14020.2,stats14021.1,stats14021.2,stats14022.1,stats14022.2,stats14023.1,stats14023.2,stats14024.1,stats14024.2,stats14025.1,stats14025.2,stats14026.1,stats14026.2,stats14027.1,stats14027.2,stats14028.1,stats14028.2,stats14029.1,stats14029.2,stats14030.1,stats14030.2,stats14031.1,stats14031.2,stats14032.1,stats14032.2,stats14033.1,stats14033.2,stats14034.1,stats14034.2,stats14035.1,stats14035.2,stats14036.1,stats14036.2,stats14037.1,stats14037.2,stats14038.1,stats14038.2,stats14039.1,stats14039.2,stats14040.1,stats14040.2,stats14041.1,stats14041.2,stats14042.1,stats14042.2,stats14043.1,stats14043.2,stats14044.1,stats14044.2,stats14045.1,stats14045.2,stats14046.1,stats14046.2,stats14047.1,stats14047.2,stats14048.1,stats14048.2,stats14049.1,stats14049.2,stats14050.1,stats14050.2,stats14051.1,stats14051.2,stats14052.1,stats14052.2,stats14053.1,stats14053.2,stats14054.1,stats14054.2,stats14055.1,stats14055.2,stats14056.1,stats14056.2,stats14057.1,stats14057.2,stats14058.1,stats14058.2,stats14059.1,stats14059.2,stats14060.1,stats14060.2,stats14061.1,stats14061.2,stats14062.1,stats14062.2,stats14063.1,stats14063.2,stats14064.1,stats14064.2,stats14065.1,stats14065.2,stats14066.1,stats14066.2,stats14067.1,stats14067.2,stats14068.1,stats14068.2,stats14069.1,stats14069.2]
  decide
end AuthenticatedBranchRoundCheckedRows
