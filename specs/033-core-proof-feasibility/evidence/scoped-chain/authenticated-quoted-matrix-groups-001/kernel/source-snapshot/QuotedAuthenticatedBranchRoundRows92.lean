import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData93
import AuthenticatedBranchRoundInstructionMatrixData94
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6006 : actualRows6006=WordField.canonicalRows actualModulus 6006 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6006 : actualRows6006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6006=2892 := by core033_kernel_decide
theorem rows6007 : actualRows6007=WordField.canonicalRows actualModulus 6007 (.bxor 6005 6006) := by core033_kernel_decide
theorem stats6007 : actualRows6007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6007=7428 := by core033_kernel_decide
theorem rows6008 : actualRows6008=WordField.canonicalRows actualModulus 6008 (.bnot 6007) := by core033_kernel_decide
theorem stats6008 : actualRows6008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6008=6276 := by core033_kernel_decide
theorem rows6009 : actualRows6009=WordField.canonicalRows actualModulus 6009 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6009 : actualRows6009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6009=2892 := by core033_kernel_decide
theorem rows6010 : actualRows6010=WordField.canonicalRows actualModulus 6010 (.badd 6008 6009) := by core033_kernel_decide
theorem stats6010 : actualRows6010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6010=5388 := by core033_kernel_decide
theorem rows6011 : actualRows6011=WordField.canonicalRows actualModulus 6011 (.band 6010 2837) := by core033_kernel_decide
theorem stats6011 : actualRows6011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6011=5124 := by core033_kernel_decide
theorem rows6012 : actualRows6012=WordField.canonicalRows actualModulus 6012 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6012 : actualRows6012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6012=2892 := by core033_kernel_decide
theorem rows6013 : actualRows6013=WordField.canonicalRows actualModulus 6013 (.bxor 1299 6012) := by core033_kernel_decide
theorem stats6013 : actualRows6013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6013=7428 := by core033_kernel_decide
theorem rows6014 : actualRows6014=WordField.canonicalRows actualModulus 6014 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6014 : actualRows6014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6014=2820 := by core033_kernel_decide
theorem rows6015 : actualRows6015=WordField.canonicalRows actualModulus 6015 (.bnot 6014) := by core033_kernel_decide
theorem stats6015 : actualRows6015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6015=6276 := by core033_kernel_decide
theorem rows6016 : actualRows6016=WordField.canonicalRows actualModulus 6016 (.band 6013 6015) := by core033_kernel_decide
theorem stats6016 : actualRows6016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6016=5124 := by core033_kernel_decide
theorem rows6017 : actualRows6017=WordField.canonicalRows actualModulus 6017 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6017 : actualRows6017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6017=2892 := by core033_kernel_decide
theorem rows6018 : actualRows6018=WordField.canonicalRows actualModulus 6018 (.bxor 1299 6017) := by core033_kernel_decide
theorem stats6018 : actualRows6018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6018=7428 := by core033_kernel_decide
theorem rows6019 : actualRows6019=WordField.canonicalRows actualModulus 6019 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6019 : actualRows6019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6019=2820 := by core033_kernel_decide
theorem rows6020 : actualRows6020=WordField.canonicalRows actualModulus 6020 (.bnot 6019) := by core033_kernel_decide
theorem stats6020 : actualRows6020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6020=6276 := by core033_kernel_decide
theorem rows6021 : actualRows6021=WordField.canonicalRows actualModulus 6021 (.bxor 6018 6020) := by core033_kernel_decide
theorem stats6021 : actualRows6021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6021=7428 := by core033_kernel_decide
theorem rows6022 : actualRows6022=WordField.canonicalRows actualModulus 6022 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6022 : actualRows6022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6022=2892 := by core033_kernel_decide
theorem rows6023 : actualRows6023=WordField.canonicalRows actualModulus 6023 (.bxor 1299 6022) := by core033_kernel_decide
theorem stats6023 : actualRows6023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6023=7428 := by core033_kernel_decide
theorem rows6024 : actualRows6024=WordField.canonicalRows actualModulus 6024 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6024 : actualRows6024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6024=2820 := by core033_kernel_decide
theorem rows6025 : actualRows6025=WordField.canonicalRows actualModulus 6025 (.bnot 6024) := by core033_kernel_decide
theorem stats6025 : actualRows6025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6025=6276 := by core033_kernel_decide
theorem rows6026 : actualRows6026=WordField.canonicalRows actualModulus 6026 (.badd 6023 6025) := by core033_kernel_decide
theorem stats6026 : actualRows6026.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6026=5388 := by core033_kernel_decide
theorem rows6027 : actualRows6027=WordField.canonicalRows actualModulus 6027 (.bnot 6026) := by core033_kernel_decide
theorem stats6027 : actualRows6027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6027=6276 := by core033_kernel_decide
theorem rows6028 : actualRows6028=WordField.canonicalRows actualModulus 6028 (.band 6021 6027) := by core033_kernel_decide
theorem stats6028 : actualRows6028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6028=5124 := by core033_kernel_decide
theorem rows6029 : actualRows6029=WordField.canonicalRows actualModulus 6029 (.bxor 6016 6028) := by core033_kernel_decide
theorem stats6029 : actualRows6029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6029=7428 := by core033_kernel_decide
theorem rows6030 : actualRows6030=WordField.canonicalRows actualModulus 6030 (.shr 6029 31) := by core033_kernel_decide
theorem stats6030 : actualRows6030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6030=2892 := by core033_kernel_decide
theorem rows6031 : actualRows6031=WordField.canonicalRows actualModulus 6031 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6031 : actualRows6031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6031=2892 := by core033_kernel_decide
theorem rows6032 : actualRows6032=WordField.canonicalRows actualModulus 6032 (.bxor 6030 6031) := by core033_kernel_decide
theorem stats6032 : actualRows6032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6032=7428 := by core033_kernel_decide
theorem rows6033 : actualRows6033=WordField.canonicalRows actualModulus 6033 (.bnot 6032) := by core033_kernel_decide
theorem stats6033 : actualRows6033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6033=6276 := by core033_kernel_decide
theorem rows6034 : actualRows6034=WordField.canonicalRows actualModulus 6034 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6034 : actualRows6034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6034=2892 := by core033_kernel_decide
theorem rows6035 : actualRows6035=WordField.canonicalRows actualModulus 6035 (.badd 6033 6034) := by core033_kernel_decide
theorem stats6035 : actualRows6035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6035=5388 := by core033_kernel_decide
theorem rows6036 : actualRows6036=WordField.canonicalRows actualModulus 6036 (.bnot 6035) := by core033_kernel_decide
theorem stats6036 : actualRows6036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6036=6276 := by core033_kernel_decide
theorem rows6037 : actualRows6037=WordField.canonicalRows actualModulus 6037 (.band 6036 2645) := by core033_kernel_decide
theorem stats6037 : actualRows6037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6037=5124 := by core033_kernel_decide
theorem rows6038 : actualRows6038=WordField.canonicalRows actualModulus 6038 (.bxor 6011 6037) := by core033_kernel_decide
theorem stats6038 : actualRows6038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6038=7428 := by core033_kernel_decide
theorem rows6039 : actualRows6039=WordField.canonicalRows actualModulus 6039 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6039 : actualRows6039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6039=2892 := by core033_kernel_decide
theorem rows6040 : actualRows6040=WordField.canonicalRows actualModulus 6040 (.bxor 1299 6039) := by core033_kernel_decide
theorem stats6040 : actualRows6040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6040=7428 := by core033_kernel_decide
theorem rows6041 : actualRows6041=WordField.canonicalRows actualModulus 6041 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6041 : actualRows6041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6041=2820 := by core033_kernel_decide
theorem rows6042 : actualRows6042=WordField.canonicalRows actualModulus 6042 (.bnot 6041) := by core033_kernel_decide
theorem stats6042 : actualRows6042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6042=6276 := by core033_kernel_decide
theorem rows6043 : actualRows6043=WordField.canonicalRows actualModulus 6043 (.band 6040 6042) := by core033_kernel_decide
theorem stats6043 : actualRows6043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6043=5124 := by core033_kernel_decide
theorem rows6044 : actualRows6044=WordField.canonicalRows actualModulus 6044 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6044 : actualRows6044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6044=2892 := by core033_kernel_decide
theorem rows6045 : actualRows6045=WordField.canonicalRows actualModulus 6045 (.bxor 1299 6044) := by core033_kernel_decide
theorem stats6045 : actualRows6045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6045=7428 := by core033_kernel_decide
theorem rows6046 : actualRows6046=WordField.canonicalRows actualModulus 6046 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6046 : actualRows6046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6046=2820 := by core033_kernel_decide
theorem rows6047 : actualRows6047=WordField.canonicalRows actualModulus 6047 (.bnot 6046) := by core033_kernel_decide
theorem stats6047 : actualRows6047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6047=6276 := by core033_kernel_decide
theorem rows6048 : actualRows6048=WordField.canonicalRows actualModulus 6048 (.bxor 6045 6047) := by core033_kernel_decide
theorem stats6048 : actualRows6048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6048=7428 := by core033_kernel_decide
theorem rows6049 : actualRows6049=WordField.canonicalRows actualModulus 6049 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6049 : actualRows6049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6049=2892 := by core033_kernel_decide
theorem rows6050 : actualRows6050=WordField.canonicalRows actualModulus 6050 (.bxor 1299 6049) := by core033_kernel_decide
theorem stats6050 : actualRows6050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6050=7428 := by core033_kernel_decide
theorem rows6051 : actualRows6051=WordField.canonicalRows actualModulus 6051 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6051 : actualRows6051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6051=2820 := by core033_kernel_decide
theorem rows6052 : actualRows6052=WordField.canonicalRows actualModulus 6052 (.bnot 6051) := by core033_kernel_decide
theorem stats6052 : actualRows6052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6052=6276 := by core033_kernel_decide
theorem rows6053 : actualRows6053=WordField.canonicalRows actualModulus 6053 (.badd 6050 6052) := by core033_kernel_decide
theorem stats6053 : actualRows6053.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6053=5388 := by core033_kernel_decide
theorem rows6054 : actualRows6054=WordField.canonicalRows actualModulus 6054 (.bnot 6053) := by core033_kernel_decide
theorem stats6054 : actualRows6054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6054=6276 := by core033_kernel_decide
theorem rows6055 : actualRows6055=WordField.canonicalRows actualModulus 6055 (.band 6048 6054) := by core033_kernel_decide
theorem stats6055 : actualRows6055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6055=5124 := by core033_kernel_decide
theorem rows6056 : actualRows6056=WordField.canonicalRows actualModulus 6056 (.bxor 6043 6055) := by core033_kernel_decide
theorem stats6056 : actualRows6056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6056=7428 := by core033_kernel_decide
theorem rows6057 : actualRows6057=WordField.canonicalRows actualModulus 6057 (.shr 6056 31) := by core033_kernel_decide
theorem stats6057 : actualRows6057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6057=2892 := by core033_kernel_decide
theorem rows6058 : actualRows6058=WordField.canonicalRows actualModulus 6058 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6058 : actualRows6058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6058=2892 := by core033_kernel_decide
theorem rows6059 : actualRows6059=WordField.canonicalRows actualModulus 6059 (.bxor 6057 6058) := by core033_kernel_decide
theorem stats6059 : actualRows6059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6059=7428 := by core033_kernel_decide
theorem rows6060 : actualRows6060=WordField.canonicalRows actualModulus 6060 (.bnot 6059) := by core033_kernel_decide
theorem stats6060 : actualRows6060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6060=6276 := by core033_kernel_decide
theorem rows6061 : actualRows6061=WordField.canonicalRows actualModulus 6061 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6061 : actualRows6061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6061=2892 := by core033_kernel_decide
theorem rows6062 : actualRows6062=WordField.canonicalRows actualModulus 6062 (.badd 6060 6061) := by core033_kernel_decide
theorem stats6062 : actualRows6062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6062=5388 := by core033_kernel_decide
theorem rows6063 : actualRows6063=WordField.canonicalRows actualModulus 6063 (.band 6062 2840) := by core033_kernel_decide
theorem stats6063 : actualRows6063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6063=5124 := by core033_kernel_decide
theorem rows6064 : actualRows6064=WordField.canonicalRows actualModulus 6064 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6064 : actualRows6064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6064=2892 := by core033_kernel_decide
theorem rows6065 : actualRows6065=WordField.canonicalRows actualModulus 6065 (.bxor 1299 6064) := by core033_kernel_decide
theorem stats6065 : actualRows6065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6065=7428 := by core033_kernel_decide
theorem rows6066 : actualRows6066=WordField.canonicalRows actualModulus 6066 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6066 : actualRows6066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6066=2820 := by core033_kernel_decide
theorem rows6067 : actualRows6067=WordField.canonicalRows actualModulus 6067 (.bnot 6066) := by core033_kernel_decide
theorem stats6067 : actualRows6067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6067=6276 := by core033_kernel_decide
theorem rows6068 : actualRows6068=WordField.canonicalRows actualModulus 6068 (.band 6065 6067) := by core033_kernel_decide
theorem stats6068 : actualRows6068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6068=5124 := by core033_kernel_decide
theorem rows6069 : actualRows6069=WordField.canonicalRows actualModulus 6069 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6069 : actualRows6069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6069=2892 := by core033_kernel_decide
def partRows92 : List R1CS.Row := actualRows6006++actualRows6007++actualRows6008++actualRows6009++actualRows6010++actualRows6011++actualRows6012++actualRows6013++actualRows6014++actualRows6015++actualRows6016++actualRows6017++actualRows6018++actualRows6019++actualRows6020++actualRows6021++actualRows6022++actualRows6023++actualRows6024++actualRows6025++actualRows6026++actualRows6027++actualRows6028++actualRows6029++actualRows6030++actualRows6031++actualRows6032++actualRows6033++actualRows6034++actualRows6035++actualRows6036++actualRows6037++actualRows6038++actualRows6039++actualRows6040++actualRows6041++actualRows6042++actualRows6043++actualRows6044++actualRows6045++actualRows6046++actualRows6047++actualRows6048++actualRows6049++actualRows6050++actualRows6051++actualRows6052++actualRows6053++actualRows6054++actualRows6055++actualRows6056++actualRows6057++actualRows6058++actualRows6059++actualRows6060++actualRows6061++actualRows6062++actualRows6063++actualRows6064++actualRows6065++actualRows6066++actualRows6067++actualRows6068++actualRows6069
def partOps92 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 6005 6006,.bnot 6007,.literal (BitVec.ofNat 32 1),.badd 6008 6009,.band 6010 2837,.literal (BitVec.ofNat 32 2),.bxor 1299 6012,.literal (BitVec.ofNat 32 0),.bnot 6014,.band 6013 6015,.literal (BitVec.ofNat 32 2),.bxor 1299 6017,.literal (BitVec.ofNat 32 0),.bnot 6019,.bxor 6018 6020,.literal (BitVec.ofNat 32 2),.bxor 1299 6022,.literal (BitVec.ofNat 32 0),.bnot 6024,.badd 6023 6025,.bnot 6026,.band 6021 6027,.bxor 6016 6028,.shr 6029 31,.literal (BitVec.ofNat 32 1),.bxor 6030 6031,.bnot 6032,.literal (BitVec.ofNat 32 1),.badd 6033 6034,.bnot 6035,.band 6036 2645,.bxor 6011 6037,.literal (BitVec.ofNat 32 2),.bxor 1299 6039,.literal (BitVec.ofNat 32 0),.bnot 6041,.band 6040 6042,.literal (BitVec.ofNat 32 2),.bxor 1299 6044,.literal (BitVec.ofNat 32 0),.bnot 6046,.bxor 6045 6047,.literal (BitVec.ofNat 32 2),.bxor 1299 6049,.literal (BitVec.ofNat 32 0),.bnot 6051,.badd 6050 6052,.bnot 6053,.band 6048 6054,.bxor 6043 6055,.shr 6056 31,.literal (BitVec.ofNat 32 1),.bxor 6057 6058,.bnot 6059,.literal (BitVec.ofNat 32 1),.badd 6060 6061,.band 6062 2840,.literal (BitVec.ofNat 32 2),.bxor 1299 6064,.literal (BitVec.ofNat 32 0),.bnot 6066,.band 6065 6067,.literal (BitVec.ofNat 32 2)]
theorem partExact92 : partRows92=WordField.rows actualModulus 6006 partOps92 := by
  simp only [partRows92,partOps92,WordField.rows,rows6006,rows6007,rows6008,rows6009,rows6010,rows6011,rows6012,rows6013,rows6014,rows6015,rows6016,rows6017,rows6018,rows6019,rows6020,rows6021,rows6022,rows6023,rows6024,rows6025,rows6026,rows6027,rows6028,rows6029,rows6030,rows6031,rows6032,rows6033,rows6034,rows6035,rows6036,rows6037,rows6038,rows6039,rows6040,rows6041,rows6042,rows6043,rows6044,rows6045,rows6046,rows6047,rows6048,rows6049,rows6050,rows6051,rows6052,rows6053,rows6054,rows6055,rows6056,rows6057,rows6058,rows6059,rows6060,rows6061,rows6062,rows6063,rows6064,rows6065,rows6066,rows6067,rows6068,rows6069,List.append_assoc,List.append_nil]
theorem partLength92 : partOps92.length=64 := by decide
theorem partStats92 : partRows92.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows92=326952 := by
  simp only [partRows92,List.length_append,MatrixRowBlocks.rows_weight_append,stats6006.1,stats6006.2,stats6007.1,stats6007.2,stats6008.1,stats6008.2,stats6009.1,stats6009.2,stats6010.1,stats6010.2,stats6011.1,stats6011.2,stats6012.1,stats6012.2,stats6013.1,stats6013.2,stats6014.1,stats6014.2,stats6015.1,stats6015.2,stats6016.1,stats6016.2,stats6017.1,stats6017.2,stats6018.1,stats6018.2,stats6019.1,stats6019.2,stats6020.1,stats6020.2,stats6021.1,stats6021.2,stats6022.1,stats6022.2,stats6023.1,stats6023.2,stats6024.1,stats6024.2,stats6025.1,stats6025.2,stats6026.1,stats6026.2,stats6027.1,stats6027.2,stats6028.1,stats6028.2,stats6029.1,stats6029.2,stats6030.1,stats6030.2,stats6031.1,stats6031.2,stats6032.1,stats6032.2,stats6033.1,stats6033.2,stats6034.1,stats6034.2,stats6035.1,stats6035.2,stats6036.1,stats6036.2,stats6037.1,stats6037.2,stats6038.1,stats6038.2,stats6039.1,stats6039.2,stats6040.1,stats6040.2,stats6041.1,stats6041.2,stats6042.1,stats6042.2,stats6043.1,stats6043.2,stats6044.1,stats6044.2,stats6045.1,stats6045.2,stats6046.1,stats6046.2,stats6047.1,stats6047.2,stats6048.1,stats6048.2,stats6049.1,stats6049.2,stats6050.1,stats6050.2,stats6051.1,stats6051.2,stats6052.1,stats6052.2,stats6053.1,stats6053.2,stats6054.1,stats6054.2,stats6055.1,stats6055.2,stats6056.1,stats6056.2,stats6057.1,stats6057.2,stats6058.1,stats6058.2,stats6059.1,stats6059.2,stats6060.1,stats6060.2,stats6061.1,stats6061.2,stats6062.1,stats6062.2,stats6063.1,stats6063.2,stats6064.1,stats6064.2,stats6065.1,stats6065.2,stats6066.1,stats6066.2,stats6067.1,stats6067.2,stats6068.1,stats6068.2,stats6069.1,stats6069.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
