import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData93
import PathRoundDispatchInstructionMatrixData94
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5995 : actualRows5995=WordField.canonicalRows actualModulus 5995 (.bnot 5994) := by core033_kernel_decide
theorem stats5995 : actualRows5995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5995=6276 := by core033_kernel_decide
theorem rows5996 : actualRows5996=WordField.canonicalRows actualModulus 5996 (.band 5993 5995) := by core033_kernel_decide
theorem stats5996 : actualRows5996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5996=5124 := by core033_kernel_decide
theorem rows5997 : actualRows5997=WordField.canonicalRows actualModulus 5997 (.shr 3015 8) := by core033_kernel_decide
theorem stats5997 : actualRows5997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5997=4548 := by core033_kernel_decide
theorem rows5998 : actualRows5998=WordField.canonicalRows actualModulus 5998 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5998 : actualRows5998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5998=2820 := by core033_kernel_decide
theorem rows5999 : actualRows5999=WordField.canonicalRows actualModulus 5999 (.bnot 5998) := by core033_kernel_decide
theorem stats5999 : actualRows5999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5999=6276 := by core033_kernel_decide
theorem rows6000 : actualRows6000=WordField.canonicalRows actualModulus 6000 (.bxor 5997 5999) := by core033_kernel_decide
theorem stats6000 : actualRows6000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6000=7428 := by core033_kernel_decide
theorem rows6001 : actualRows6001=WordField.canonicalRows actualModulus 6001 (.shr 3015 8) := by core033_kernel_decide
theorem stats6001 : actualRows6001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6001=4548 := by core033_kernel_decide
theorem rows6002 : actualRows6002=WordField.canonicalRows actualModulus 6002 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6002 : actualRows6002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6002=2820 := by core033_kernel_decide
theorem rows6003 : actualRows6003=WordField.canonicalRows actualModulus 6003 (.bnot 6002) := by core033_kernel_decide
theorem stats6003 : actualRows6003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6003=6276 := by core033_kernel_decide
theorem rows6004 : actualRows6004=WordField.canonicalRows actualModulus 6004 (.badd 6001 6003) := by core033_kernel_decide
theorem stats6004 : actualRows6004.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6004=5388 := by core033_kernel_decide
theorem rows6005 : actualRows6005=WordField.canonicalRows actualModulus 6005 (.bnot 6004) := by core033_kernel_decide
theorem stats6005 : actualRows6005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6005=6276 := by core033_kernel_decide
theorem rows6006 : actualRows6006=WordField.canonicalRows actualModulus 6006 (.band 6000 6005) := by core033_kernel_decide
theorem stats6006 : actualRows6006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6006=5124 := by core033_kernel_decide
theorem rows6007 : actualRows6007=WordField.canonicalRows actualModulus 6007 (.bxor 5996 6006) := by core033_kernel_decide
theorem stats6007 : actualRows6007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6007=7428 := by core033_kernel_decide
theorem rows6008 : actualRows6008=WordField.canonicalRows actualModulus 6008 (.shr 6007 31) := by core033_kernel_decide
theorem stats6008 : actualRows6008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6008=2892 := by core033_kernel_decide
theorem rows6009 : actualRows6009=WordField.canonicalRows actualModulus 6009 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6009 : actualRows6009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6009=2892 := by core033_kernel_decide
theorem rows6010 : actualRows6010=WordField.canonicalRows actualModulus 6010 (.bxor 6008 6009) := by core033_kernel_decide
theorem stats6010 : actualRows6010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6010=7428 := by core033_kernel_decide
theorem rows6011 : actualRows6011=WordField.canonicalRows actualModulus 6011 (.shr 3067 8) := by core033_kernel_decide
theorem stats6011 : actualRows6011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6011=4548 := by core033_kernel_decide
theorem rows6012 : actualRows6012=WordField.canonicalRows actualModulus 6012 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6012 : actualRows6012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6012=2820 := by core033_kernel_decide
theorem rows6013 : actualRows6013=WordField.canonicalRows actualModulus 6013 (.bnot 6012) := by core033_kernel_decide
theorem stats6013 : actualRows6013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6013=6276 := by core033_kernel_decide
theorem rows6014 : actualRows6014=WordField.canonicalRows actualModulus 6014 (.band 6011 6013) := by core033_kernel_decide
theorem stats6014 : actualRows6014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6014=5124 := by core033_kernel_decide
theorem rows6015 : actualRows6015=WordField.canonicalRows actualModulus 6015 (.shr 3067 8) := by core033_kernel_decide
theorem stats6015 : actualRows6015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6015=4548 := by core033_kernel_decide
theorem rows6016 : actualRows6016=WordField.canonicalRows actualModulus 6016 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6016 : actualRows6016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6016=2820 := by core033_kernel_decide
theorem rows6017 : actualRows6017=WordField.canonicalRows actualModulus 6017 (.bnot 6016) := by core033_kernel_decide
theorem stats6017 : actualRows6017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6017=6276 := by core033_kernel_decide
theorem rows6018 : actualRows6018=WordField.canonicalRows actualModulus 6018 (.bxor 6015 6017) := by core033_kernel_decide
theorem stats6018 : actualRows6018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6018=7428 := by core033_kernel_decide
theorem rows6019 : actualRows6019=WordField.canonicalRows actualModulus 6019 (.shr 3067 8) := by core033_kernel_decide
theorem stats6019 : actualRows6019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6019=4548 := by core033_kernel_decide
theorem rows6020 : actualRows6020=WordField.canonicalRows actualModulus 6020 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6020 : actualRows6020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6020=2820 := by core033_kernel_decide
theorem rows6021 : actualRows6021=WordField.canonicalRows actualModulus 6021 (.bnot 6020) := by core033_kernel_decide
theorem stats6021 : actualRows6021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6021=6276 := by core033_kernel_decide
theorem rows6022 : actualRows6022=WordField.canonicalRows actualModulus 6022 (.badd 6019 6021) := by core033_kernel_decide
theorem stats6022 : actualRows6022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6022=5388 := by core033_kernel_decide
theorem rows6023 : actualRows6023=WordField.canonicalRows actualModulus 6023 (.bnot 6022) := by core033_kernel_decide
theorem stats6023 : actualRows6023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6023=6276 := by core033_kernel_decide
theorem rows6024 : actualRows6024=WordField.canonicalRows actualModulus 6024 (.band 6018 6023) := by core033_kernel_decide
theorem stats6024 : actualRows6024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6024=5124 := by core033_kernel_decide
theorem rows6025 : actualRows6025=WordField.canonicalRows actualModulus 6025 (.bxor 6014 6024) := by core033_kernel_decide
theorem stats6025 : actualRows6025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6025=7428 := by core033_kernel_decide
theorem rows6026 : actualRows6026=WordField.canonicalRows actualModulus 6026 (.shr 6025 31) := by core033_kernel_decide
theorem stats6026 : actualRows6026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6026=2892 := by core033_kernel_decide
theorem rows6027 : actualRows6027=WordField.canonicalRows actualModulus 6027 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6027 : actualRows6027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6027=2892 := by core033_kernel_decide
theorem rows6028 : actualRows6028=WordField.canonicalRows actualModulus 6028 (.bxor 6026 6027) := by core033_kernel_decide
theorem stats6028 : actualRows6028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6028=7428 := by core033_kernel_decide
theorem rows6029 : actualRows6029=WordField.canonicalRows actualModulus 6029 (.shr 3119 8) := by core033_kernel_decide
theorem stats6029 : actualRows6029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6029=4548 := by core033_kernel_decide
theorem rows6030 : actualRows6030=WordField.canonicalRows actualModulus 6030 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6030 : actualRows6030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6030=2820 := by core033_kernel_decide
theorem rows6031 : actualRows6031=WordField.canonicalRows actualModulus 6031 (.bnot 6030) := by core033_kernel_decide
theorem stats6031 : actualRows6031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6031=6276 := by core033_kernel_decide
theorem rows6032 : actualRows6032=WordField.canonicalRows actualModulus 6032 (.band 6029 6031) := by core033_kernel_decide
theorem stats6032 : actualRows6032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6032=5124 := by core033_kernel_decide
theorem rows6033 : actualRows6033=WordField.canonicalRows actualModulus 6033 (.shr 3119 8) := by core033_kernel_decide
theorem stats6033 : actualRows6033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6033=4548 := by core033_kernel_decide
theorem rows6034 : actualRows6034=WordField.canonicalRows actualModulus 6034 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6034 : actualRows6034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6034=2820 := by core033_kernel_decide
theorem rows6035 : actualRows6035=WordField.canonicalRows actualModulus 6035 (.bnot 6034) := by core033_kernel_decide
theorem stats6035 : actualRows6035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6035=6276 := by core033_kernel_decide
theorem rows6036 : actualRows6036=WordField.canonicalRows actualModulus 6036 (.bxor 6033 6035) := by core033_kernel_decide
theorem stats6036 : actualRows6036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6036=7428 := by core033_kernel_decide
theorem rows6037 : actualRows6037=WordField.canonicalRows actualModulus 6037 (.shr 3119 8) := by core033_kernel_decide
theorem stats6037 : actualRows6037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6037=4548 := by core033_kernel_decide
theorem rows6038 : actualRows6038=WordField.canonicalRows actualModulus 6038 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6038 : actualRows6038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6038=2820 := by core033_kernel_decide
theorem rows6039 : actualRows6039=WordField.canonicalRows actualModulus 6039 (.bnot 6038) := by core033_kernel_decide
theorem stats6039 : actualRows6039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6039=6276 := by core033_kernel_decide
theorem rows6040 : actualRows6040=WordField.canonicalRows actualModulus 6040 (.badd 6037 6039) := by core033_kernel_decide
theorem stats6040 : actualRows6040.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6040=5388 := by core033_kernel_decide
theorem rows6041 : actualRows6041=WordField.canonicalRows actualModulus 6041 (.bnot 6040) := by core033_kernel_decide
theorem stats6041 : actualRows6041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6041=6276 := by core033_kernel_decide
theorem rows6042 : actualRows6042=WordField.canonicalRows actualModulus 6042 (.band 6036 6041) := by core033_kernel_decide
theorem stats6042 : actualRows6042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6042=5124 := by core033_kernel_decide
theorem rows6043 : actualRows6043=WordField.canonicalRows actualModulus 6043 (.bxor 6032 6042) := by core033_kernel_decide
theorem stats6043 : actualRows6043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6043=7428 := by core033_kernel_decide
theorem rows6044 : actualRows6044=WordField.canonicalRows actualModulus 6044 (.shr 6043 31) := by core033_kernel_decide
theorem stats6044 : actualRows6044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6044=2892 := by core033_kernel_decide
theorem rows6045 : actualRows6045=WordField.canonicalRows actualModulus 6045 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6045 : actualRows6045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6045=2892 := by core033_kernel_decide
theorem rows6046 : actualRows6046=WordField.canonicalRows actualModulus 6046 (.bxor 6044 6045) := by core033_kernel_decide
theorem stats6046 : actualRows6046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6046=7428 := by core033_kernel_decide
theorem rows6047 : actualRows6047=WordField.canonicalRows actualModulus 6047 (.shr 3171 8) := by core033_kernel_decide
theorem stats6047 : actualRows6047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6047=4548 := by core033_kernel_decide
theorem rows6048 : actualRows6048=WordField.canonicalRows actualModulus 6048 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6048 : actualRows6048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6048=2820 := by core033_kernel_decide
theorem rows6049 : actualRows6049=WordField.canonicalRows actualModulus 6049 (.bnot 6048) := by core033_kernel_decide
theorem stats6049 : actualRows6049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6049=6276 := by core033_kernel_decide
theorem rows6050 : actualRows6050=WordField.canonicalRows actualModulus 6050 (.band 6047 6049) := by core033_kernel_decide
theorem stats6050 : actualRows6050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6050=5124 := by core033_kernel_decide
theorem rows6051 : actualRows6051=WordField.canonicalRows actualModulus 6051 (.shr 3171 8) := by core033_kernel_decide
theorem stats6051 : actualRows6051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6051=4548 := by core033_kernel_decide
theorem rows6052 : actualRows6052=WordField.canonicalRows actualModulus 6052 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6052 : actualRows6052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6052=2820 := by core033_kernel_decide
theorem rows6053 : actualRows6053=WordField.canonicalRows actualModulus 6053 (.bnot 6052) := by core033_kernel_decide
theorem stats6053 : actualRows6053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6053=6276 := by core033_kernel_decide
theorem rows6054 : actualRows6054=WordField.canonicalRows actualModulus 6054 (.bxor 6051 6053) := by core033_kernel_decide
theorem stats6054 : actualRows6054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6054=7428 := by core033_kernel_decide
theorem rows6055 : actualRows6055=WordField.canonicalRows actualModulus 6055 (.shr 3171 8) := by core033_kernel_decide
theorem stats6055 : actualRows6055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6055=4548 := by core033_kernel_decide
theorem rows6056 : actualRows6056=WordField.canonicalRows actualModulus 6056 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6056 : actualRows6056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6056=2820 := by core033_kernel_decide
theorem rows6057 : actualRows6057=WordField.canonicalRows actualModulus 6057 (.bnot 6056) := by core033_kernel_decide
theorem stats6057 : actualRows6057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6057=6276 := by core033_kernel_decide
theorem rows6058 : actualRows6058=WordField.canonicalRows actualModulus 6058 (.badd 6055 6057) := by core033_kernel_decide
theorem stats6058 : actualRows6058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6058=5388 := by core033_kernel_decide
def partRows93 : List R1CS.Row := actualRows5995++actualRows5996++actualRows5997++actualRows5998++actualRows5999++actualRows6000++actualRows6001++actualRows6002++actualRows6003++actualRows6004++actualRows6005++actualRows6006++actualRows6007++actualRows6008++actualRows6009++actualRows6010++actualRows6011++actualRows6012++actualRows6013++actualRows6014++actualRows6015++actualRows6016++actualRows6017++actualRows6018++actualRows6019++actualRows6020++actualRows6021++actualRows6022++actualRows6023++actualRows6024++actualRows6025++actualRows6026++actualRows6027++actualRows6028++actualRows6029++actualRows6030++actualRows6031++actualRows6032++actualRows6033++actualRows6034++actualRows6035++actualRows6036++actualRows6037++actualRows6038++actualRows6039++actualRows6040++actualRows6041++actualRows6042++actualRows6043++actualRows6044++actualRows6045++actualRows6046++actualRows6047++actualRows6048++actualRows6049++actualRows6050++actualRows6051++actualRows6052++actualRows6053++actualRows6054++actualRows6055++actualRows6056++actualRows6057++actualRows6058
def partOps93 : List WordIR.Op := [.bnot 5994,.band 5993 5995,.shr 3015 8,.literal (BitVec.ofNat 32 0),.bnot 5998,.bxor 5997 5999,.shr 3015 8,.literal (BitVec.ofNat 32 0),.bnot 6002,.badd 6001 6003,.bnot 6004,.band 6000 6005,.bxor 5996 6006,.shr 6007 31,.literal (BitVec.ofNat 32 1),.bxor 6008 6009,.shr 3067 8,.literal (BitVec.ofNat 32 0),.bnot 6012,.band 6011 6013,.shr 3067 8,.literal (BitVec.ofNat 32 0),.bnot 6016,.bxor 6015 6017,.shr 3067 8,.literal (BitVec.ofNat 32 0),.bnot 6020,.badd 6019 6021,.bnot 6022,.band 6018 6023,.bxor 6014 6024,.shr 6025 31,.literal (BitVec.ofNat 32 1),.bxor 6026 6027,.shr 3119 8,.literal (BitVec.ofNat 32 0),.bnot 6030,.band 6029 6031,.shr 3119 8,.literal (BitVec.ofNat 32 0),.bnot 6034,.bxor 6033 6035,.shr 3119 8,.literal (BitVec.ofNat 32 0),.bnot 6038,.badd 6037 6039,.bnot 6040,.band 6036 6041,.bxor 6032 6042,.shr 6043 31,.literal (BitVec.ofNat 32 1),.bxor 6044 6045,.shr 3171 8,.literal (BitVec.ofNat 32 0),.bnot 6048,.band 6047 6049,.shr 3171 8,.literal (BitVec.ofNat 32 0),.bnot 6052,.bxor 6051 6053,.shr 3171 8,.literal (BitVec.ofNat 32 0),.bnot 6056,.badd 6055 6057]
theorem partExact93 : partRows93=WordField.rows actualModulus 5995 partOps93 := by
  simp only [partRows93,partOps93,WordField.rows,rows5995,rows5996,rows5997,rows5998,rows5999,rows6000,rows6001,rows6002,rows6003,rows6004,rows6005,rows6006,rows6007,rows6008,rows6009,rows6010,rows6011,rows6012,rows6013,rows6014,rows6015,rows6016,rows6017,rows6018,rows6019,rows6020,rows6021,rows6022,rows6023,rows6024,rows6025,rows6026,rows6027,rows6028,rows6029,rows6030,rows6031,rows6032,rows6033,rows6034,rows6035,rows6036,rows6037,rows6038,rows6039,rows6040,rows6041,rows6042,rows6043,rows6044,rows6045,rows6046,rows6047,rows6048,rows6049,rows6050,rows6051,rows6052,rows6053,rows6054,rows6055,rows6056,rows6057,rows6058,List.append_assoc,List.append_nil]
theorem partLength93 : partOps93.length=64 := by decide
theorem partStats93 : partRows93.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows93=324240 := by
  simp only [partRows93,List.length_append,MatrixRowBlocks.rows_weight_append,stats5995.1,stats5995.2,stats5996.1,stats5996.2,stats5997.1,stats5997.2,stats5998.1,stats5998.2,stats5999.1,stats5999.2,stats6000.1,stats6000.2,stats6001.1,stats6001.2,stats6002.1,stats6002.2,stats6003.1,stats6003.2,stats6004.1,stats6004.2,stats6005.1,stats6005.2,stats6006.1,stats6006.2,stats6007.1,stats6007.2,stats6008.1,stats6008.2,stats6009.1,stats6009.2,stats6010.1,stats6010.2,stats6011.1,stats6011.2,stats6012.1,stats6012.2,stats6013.1,stats6013.2,stats6014.1,stats6014.2,stats6015.1,stats6015.2,stats6016.1,stats6016.2,stats6017.1,stats6017.2,stats6018.1,stats6018.2,stats6019.1,stats6019.2,stats6020.1,stats6020.2,stats6021.1,stats6021.2,stats6022.1,stats6022.2,stats6023.1,stats6023.2,stats6024.1,stats6024.2,stats6025.1,stats6025.2,stats6026.1,stats6026.2,stats6027.1,stats6027.2,stats6028.1,stats6028.2,stats6029.1,stats6029.2,stats6030.1,stats6030.2,stats6031.1,stats6031.2,stats6032.1,stats6032.2,stats6033.1,stats6033.2,stats6034.1,stats6034.2,stats6035.1,stats6035.2,stats6036.1,stats6036.2,stats6037.1,stats6037.2,stats6038.1,stats6038.2,stats6039.1,stats6039.2,stats6040.1,stats6040.2,stats6041.1,stats6041.2,stats6042.1,stats6042.2,stats6043.1,stats6043.2,stats6044.1,stats6044.2,stats6045.1,stats6045.2,stats6046.1,stats6046.2,stats6047.1,stats6047.2,stats6048.1,stats6048.2,stats6049.1,stats6049.2,stats6050.1,stats6050.2,stats6051.1,stats6051.2,stats6052.1,stats6052.2,stats6053.1,stats6053.2,stats6054.1,stats6054.2,stats6055.1,stats6055.2,stats6056.1,stats6056.2,stats6057.1,stats6057.2,stats6058.1,stats6058.2]
  decide
end PathRoundDispatchCheckedRows
