import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData93
import PairedPathRoundInstructionMatrixData94
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5984 : actualRows5984=WordField.canonicalRows actualModulus 5984 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5984 : actualRows5984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5984=2892 := by core033_kernel_decide
theorem rows5985 : actualRows5985=WordField.canonicalRows actualModulus 5985 (.badd 5983 5984) := by core033_kernel_decide
theorem stats5985 : actualRows5985.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5985=5388 := by core033_kernel_decide
theorem rows5986 : actualRows5986=WordField.canonicalRows actualModulus 5986 (.bnot 5985) := by core033_kernel_decide
theorem stats5986 : actualRows5986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5986=6276 := by core033_kernel_decide
theorem rows5987 : actualRows5987=WordField.canonicalRows actualModulus 5987 (.band 5986 1998) := by core033_kernel_decide
theorem stats5987 : actualRows5987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5987=5124 := by core033_kernel_decide
theorem rows5988 : actualRows5988=WordField.canonicalRows actualModulus 5988 (.bxor 5961 5987) := by core033_kernel_decide
theorem stats5988 : actualRows5988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5988=7428 := by core033_kernel_decide
theorem rows5989 : actualRows5989=WordField.canonicalRows actualModulus 5989 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5989 : actualRows5989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5989=2892 := by core033_kernel_decide
theorem rows5990 : actualRows5990=WordField.canonicalRows actualModulus 5990 (.bxor 616 5989) := by core033_kernel_decide
theorem stats5990 : actualRows5990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5990=7428 := by core033_kernel_decide
theorem rows5991 : actualRows5991=WordField.canonicalRows actualModulus 5991 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5991 : actualRows5991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5991=2820 := by core033_kernel_decide
theorem rows5992 : actualRows5992=WordField.canonicalRows actualModulus 5992 (.bnot 5991) := by core033_kernel_decide
theorem stats5992 : actualRows5992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5992=6276 := by core033_kernel_decide
theorem rows5993 : actualRows5993=WordField.canonicalRows actualModulus 5993 (.band 5990 5992) := by core033_kernel_decide
theorem stats5993 : actualRows5993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5993=5124 := by core033_kernel_decide
theorem rows5994 : actualRows5994=WordField.canonicalRows actualModulus 5994 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5994 : actualRows5994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5994=2892 := by core033_kernel_decide
theorem rows5995 : actualRows5995=WordField.canonicalRows actualModulus 5995 (.bxor 616 5994) := by core033_kernel_decide
theorem stats5995 : actualRows5995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5995=7428 := by core033_kernel_decide
theorem rows5996 : actualRows5996=WordField.canonicalRows actualModulus 5996 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5996 : actualRows5996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5996=2820 := by core033_kernel_decide
theorem rows5997 : actualRows5997=WordField.canonicalRows actualModulus 5997 (.bnot 5996) := by core033_kernel_decide
theorem stats5997 : actualRows5997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5997=6276 := by core033_kernel_decide
theorem rows5998 : actualRows5998=WordField.canonicalRows actualModulus 5998 (.bxor 5995 5997) := by core033_kernel_decide
theorem stats5998 : actualRows5998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5998=7428 := by core033_kernel_decide
theorem rows5999 : actualRows5999=WordField.canonicalRows actualModulus 5999 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5999 : actualRows5999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5999=2892 := by core033_kernel_decide
theorem rows6000 : actualRows6000=WordField.canonicalRows actualModulus 6000 (.bxor 616 5999) := by core033_kernel_decide
theorem stats6000 : actualRows6000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6000=7428 := by core033_kernel_decide
theorem rows6001 : actualRows6001=WordField.canonicalRows actualModulus 6001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6001 : actualRows6001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6001=2820 := by core033_kernel_decide
theorem rows6002 : actualRows6002=WordField.canonicalRows actualModulus 6002 (.bnot 6001) := by core033_kernel_decide
theorem stats6002 : actualRows6002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6002=6276 := by core033_kernel_decide
theorem rows6003 : actualRows6003=WordField.canonicalRows actualModulus 6003 (.badd 6000 6002) := by core033_kernel_decide
theorem stats6003 : actualRows6003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6003=5388 := by core033_kernel_decide
theorem rows6004 : actualRows6004=WordField.canonicalRows actualModulus 6004 (.bnot 6003) := by core033_kernel_decide
theorem stats6004 : actualRows6004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6004=6276 := by core033_kernel_decide
theorem rows6005 : actualRows6005=WordField.canonicalRows actualModulus 6005 (.band 5998 6004) := by core033_kernel_decide
theorem stats6005 : actualRows6005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6005=5124 := by core033_kernel_decide
theorem rows6006 : actualRows6006=WordField.canonicalRows actualModulus 6006 (.bxor 5993 6005) := by core033_kernel_decide
theorem stats6006 : actualRows6006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6006=7428 := by core033_kernel_decide
theorem rows6007 : actualRows6007=WordField.canonicalRows actualModulus 6007 (.shr 6006 31) := by core033_kernel_decide
theorem stats6007 : actualRows6007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6007=2892 := by core033_kernel_decide
theorem rows6008 : actualRows6008=WordField.canonicalRows actualModulus 6008 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6008 : actualRows6008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6008=2892 := by core033_kernel_decide
theorem rows6009 : actualRows6009=WordField.canonicalRows actualModulus 6009 (.bxor 6007 6008) := by core033_kernel_decide
theorem stats6009 : actualRows6009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6009=7428 := by core033_kernel_decide
theorem rows6010 : actualRows6010=WordField.canonicalRows actualModulus 6010 (.bnot 6009) := by core033_kernel_decide
theorem stats6010 : actualRows6010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6010=6276 := by core033_kernel_decide
theorem rows6011 : actualRows6011=WordField.canonicalRows actualModulus 6011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6011 : actualRows6011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6011=2892 := by core033_kernel_decide
theorem rows6012 : actualRows6012=WordField.canonicalRows actualModulus 6012 (.badd 6010 6011) := by core033_kernel_decide
theorem stats6012 : actualRows6012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6012=5388 := by core033_kernel_decide
theorem rows6013 : actualRows6013=WordField.canonicalRows actualModulus 6013 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6013 : actualRows6013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6013=2820 := by core033_kernel_decide
theorem rows6014 : actualRows6014=WordField.canonicalRows actualModulus 6014 (.band 6012 6013) := by core033_kernel_decide
theorem stats6014 : actualRows6014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6014=5124 := by core033_kernel_decide
theorem rows6015 : actualRows6015=WordField.canonicalRows actualModulus 6015 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6015 : actualRows6015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6015=2892 := by core033_kernel_decide
theorem rows6016 : actualRows6016=WordField.canonicalRows actualModulus 6016 (.bxor 616 6015) := by core033_kernel_decide
theorem stats6016 : actualRows6016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6016=7428 := by core033_kernel_decide
theorem rows6017 : actualRows6017=WordField.canonicalRows actualModulus 6017 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6017 : actualRows6017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6017=2820 := by core033_kernel_decide
theorem rows6018 : actualRows6018=WordField.canonicalRows actualModulus 6018 (.bnot 6017) := by core033_kernel_decide
theorem stats6018 : actualRows6018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6018=6276 := by core033_kernel_decide
theorem rows6019 : actualRows6019=WordField.canonicalRows actualModulus 6019 (.band 6016 6018) := by core033_kernel_decide
theorem stats6019 : actualRows6019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6019=5124 := by core033_kernel_decide
theorem rows6020 : actualRows6020=WordField.canonicalRows actualModulus 6020 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6020 : actualRows6020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6020=2892 := by core033_kernel_decide
theorem rows6021 : actualRows6021=WordField.canonicalRows actualModulus 6021 (.bxor 616 6020) := by core033_kernel_decide
theorem stats6021 : actualRows6021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6021=7428 := by core033_kernel_decide
theorem rows6022 : actualRows6022=WordField.canonicalRows actualModulus 6022 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6022 : actualRows6022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6022=2820 := by core033_kernel_decide
theorem rows6023 : actualRows6023=WordField.canonicalRows actualModulus 6023 (.bnot 6022) := by core033_kernel_decide
theorem stats6023 : actualRows6023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6023=6276 := by core033_kernel_decide
theorem rows6024 : actualRows6024=WordField.canonicalRows actualModulus 6024 (.bxor 6021 6023) := by core033_kernel_decide
theorem stats6024 : actualRows6024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6024=7428 := by core033_kernel_decide
theorem rows6025 : actualRows6025=WordField.canonicalRows actualModulus 6025 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6025 : actualRows6025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6025=2892 := by core033_kernel_decide
theorem rows6026 : actualRows6026=WordField.canonicalRows actualModulus 6026 (.bxor 616 6025) := by core033_kernel_decide
theorem stats6026 : actualRows6026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6026=7428 := by core033_kernel_decide
theorem rows6027 : actualRows6027=WordField.canonicalRows actualModulus 6027 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6027 : actualRows6027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6027=2820 := by core033_kernel_decide
theorem rows6028 : actualRows6028=WordField.canonicalRows actualModulus 6028 (.bnot 6027) := by core033_kernel_decide
theorem stats6028 : actualRows6028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6028=6276 := by core033_kernel_decide
theorem rows6029 : actualRows6029=WordField.canonicalRows actualModulus 6029 (.badd 6026 6028) := by core033_kernel_decide
theorem stats6029 : actualRows6029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6029=5388 := by core033_kernel_decide
theorem rows6030 : actualRows6030=WordField.canonicalRows actualModulus 6030 (.bnot 6029) := by core033_kernel_decide
theorem stats6030 : actualRows6030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6030=6276 := by core033_kernel_decide
theorem rows6031 : actualRows6031=WordField.canonicalRows actualModulus 6031 (.band 6024 6030) := by core033_kernel_decide
theorem stats6031 : actualRows6031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6031=5124 := by core033_kernel_decide
theorem rows6032 : actualRows6032=WordField.canonicalRows actualModulus 6032 (.bxor 6019 6031) := by core033_kernel_decide
theorem stats6032 : actualRows6032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6032=7428 := by core033_kernel_decide
theorem rows6033 : actualRows6033=WordField.canonicalRows actualModulus 6033 (.shr 6032 31) := by core033_kernel_decide
theorem stats6033 : actualRows6033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6033=2892 := by core033_kernel_decide
theorem rows6034 : actualRows6034=WordField.canonicalRows actualModulus 6034 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6034 : actualRows6034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6034=2892 := by core033_kernel_decide
theorem rows6035 : actualRows6035=WordField.canonicalRows actualModulus 6035 (.bxor 6033 6034) := by core033_kernel_decide
theorem stats6035 : actualRows6035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6035=7428 := by core033_kernel_decide
theorem rows6036 : actualRows6036=WordField.canonicalRows actualModulus 6036 (.bnot 6035) := by core033_kernel_decide
theorem stats6036 : actualRows6036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6036=6276 := by core033_kernel_decide
theorem rows6037 : actualRows6037=WordField.canonicalRows actualModulus 6037 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6037 : actualRows6037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6037=2892 := by core033_kernel_decide
theorem rows6038 : actualRows6038=WordField.canonicalRows actualModulus 6038 (.badd 6036 6037) := by core033_kernel_decide
theorem stats6038 : actualRows6038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6038=5388 := by core033_kernel_decide
theorem rows6039 : actualRows6039=WordField.canonicalRows actualModulus 6039 (.bnot 6038) := by core033_kernel_decide
theorem stats6039 : actualRows6039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6039=6276 := by core033_kernel_decide
theorem rows6040 : actualRows6040=WordField.canonicalRows actualModulus 6040 (.band 6039 2001) := by core033_kernel_decide
theorem stats6040 : actualRows6040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6040=5124 := by core033_kernel_decide
theorem rows6041 : actualRows6041=WordField.canonicalRows actualModulus 6041 (.bxor 6014 6040) := by core033_kernel_decide
theorem stats6041 : actualRows6041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6041=7428 := by core033_kernel_decide
theorem rows6042 : actualRows6042=WordField.canonicalRows actualModulus 6042 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6042 : actualRows6042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6042=2892 := by core033_kernel_decide
theorem rows6043 : actualRows6043=WordField.canonicalRows actualModulus 6043 (.bxor 616 6042) := by core033_kernel_decide
theorem stats6043 : actualRows6043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6043=7428 := by core033_kernel_decide
theorem rows6044 : actualRows6044=WordField.canonicalRows actualModulus 6044 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6044 : actualRows6044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6044=2820 := by core033_kernel_decide
theorem rows6045 : actualRows6045=WordField.canonicalRows actualModulus 6045 (.bnot 6044) := by core033_kernel_decide
theorem stats6045 : actualRows6045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6045=6276 := by core033_kernel_decide
theorem rows6046 : actualRows6046=WordField.canonicalRows actualModulus 6046 (.band 6043 6045) := by core033_kernel_decide
theorem stats6046 : actualRows6046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6046=5124 := by core033_kernel_decide
theorem rows6047 : actualRows6047=WordField.canonicalRows actualModulus 6047 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6047 : actualRows6047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6047=2892 := by core033_kernel_decide
def partRows92 : List R1CS.Row := actualRows5984++actualRows5985++actualRows5986++actualRows5987++actualRows5988++actualRows5989++actualRows5990++actualRows5991++actualRows5992++actualRows5993++actualRows5994++actualRows5995++actualRows5996++actualRows5997++actualRows5998++actualRows5999++actualRows6000++actualRows6001++actualRows6002++actualRows6003++actualRows6004++actualRows6005++actualRows6006++actualRows6007++actualRows6008++actualRows6009++actualRows6010++actualRows6011++actualRows6012++actualRows6013++actualRows6014++actualRows6015++actualRows6016++actualRows6017++actualRows6018++actualRows6019++actualRows6020++actualRows6021++actualRows6022++actualRows6023++actualRows6024++actualRows6025++actualRows6026++actualRows6027++actualRows6028++actualRows6029++actualRows6030++actualRows6031++actualRows6032++actualRows6033++actualRows6034++actualRows6035++actualRows6036++actualRows6037++actualRows6038++actualRows6039++actualRows6040++actualRows6041++actualRows6042++actualRows6043++actualRows6044++actualRows6045++actualRows6046++actualRows6047
def partOps92 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 5983 5984,.bnot 5985,.band 5986 1998,.bxor 5961 5987,.literal (BitVec.ofNat 32 2),.bxor 616 5989,.literal (BitVec.ofNat 32 0),.bnot 5991,.band 5990 5992,.literal (BitVec.ofNat 32 2),.bxor 616 5994,.literal (BitVec.ofNat 32 0),.bnot 5996,.bxor 5995 5997,.literal (BitVec.ofNat 32 2),.bxor 616 5999,.literal (BitVec.ofNat 32 0),.bnot 6001,.badd 6000 6002,.bnot 6003,.band 5998 6004,.bxor 5993 6005,.shr 6006 31,.literal (BitVec.ofNat 32 1),.bxor 6007 6008,.bnot 6009,.literal (BitVec.ofNat 32 1),.badd 6010 6011,.literal (BitVec.ofNat 32 0),.band 6012 6013,.literal (BitVec.ofNat 32 2),.bxor 616 6015,.literal (BitVec.ofNat 32 0),.bnot 6017,.band 6016 6018,.literal (BitVec.ofNat 32 2),.bxor 616 6020,.literal (BitVec.ofNat 32 0),.bnot 6022,.bxor 6021 6023,.literal (BitVec.ofNat 32 2),.bxor 616 6025,.literal (BitVec.ofNat 32 0),.bnot 6027,.badd 6026 6028,.bnot 6029,.band 6024 6030,.bxor 6019 6031,.shr 6032 31,.literal (BitVec.ofNat 32 1),.bxor 6033 6034,.bnot 6035,.literal (BitVec.ofNat 32 1),.badd 6036 6037,.bnot 6038,.band 6039 2001,.bxor 6014 6040,.literal (BitVec.ofNat 32 2),.bxor 616 6042,.literal (BitVec.ofNat 32 0),.bnot 6044,.band 6043 6045,.literal (BitVec.ofNat 32 2)]
theorem partExact92 : partRows92=WordField.rows actualModulus 5984 partOps92 := by
  simp only [partRows92,partOps92,WordField.rows,rows5984,rows5985,rows5986,rows5987,rows5988,rows5989,rows5990,rows5991,rows5992,rows5993,rows5994,rows5995,rows5996,rows5997,rows5998,rows5999,rows6000,rows6001,rows6002,rows6003,rows6004,rows6005,rows6006,rows6007,rows6008,rows6009,rows6010,rows6011,rows6012,rows6013,rows6014,rows6015,rows6016,rows6017,rows6018,rows6019,rows6020,rows6021,rows6022,rows6023,rows6024,rows6025,rows6026,rows6027,rows6028,rows6029,rows6030,rows6031,rows6032,rows6033,rows6034,rows6035,rows6036,rows6037,rows6038,rows6039,rows6040,rows6041,rows6042,rows6043,rows6044,rows6045,rows6046,rows6047,List.append_assoc,List.append_nil]
theorem partLength92 : partOps92.length=64 := by decide
theorem partStats92 : partRows92.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows92=326880 := by
  simp only [partRows92,List.length_append,MatrixRowBlocks.rows_weight_append,stats5984.1,stats5984.2,stats5985.1,stats5985.2,stats5986.1,stats5986.2,stats5987.1,stats5987.2,stats5988.1,stats5988.2,stats5989.1,stats5989.2,stats5990.1,stats5990.2,stats5991.1,stats5991.2,stats5992.1,stats5992.2,stats5993.1,stats5993.2,stats5994.1,stats5994.2,stats5995.1,stats5995.2,stats5996.1,stats5996.2,stats5997.1,stats5997.2,stats5998.1,stats5998.2,stats5999.1,stats5999.2,stats6000.1,stats6000.2,stats6001.1,stats6001.2,stats6002.1,stats6002.2,stats6003.1,stats6003.2,stats6004.1,stats6004.2,stats6005.1,stats6005.2,stats6006.1,stats6006.2,stats6007.1,stats6007.2,stats6008.1,stats6008.2,stats6009.1,stats6009.2,stats6010.1,stats6010.2,stats6011.1,stats6011.2,stats6012.1,stats6012.2,stats6013.1,stats6013.2,stats6014.1,stats6014.2,stats6015.1,stats6015.2,stats6016.1,stats6016.2,stats6017.1,stats6017.2,stats6018.1,stats6018.2,stats6019.1,stats6019.2,stats6020.1,stats6020.2,stats6021.1,stats6021.2,stats6022.1,stats6022.2,stats6023.1,stats6023.2,stats6024.1,stats6024.2,stats6025.1,stats6025.2,stats6026.1,stats6026.2,stats6027.1,stats6027.2,stats6028.1,stats6028.2,stats6029.1,stats6029.2,stats6030.1,stats6030.2,stats6031.1,stats6031.2,stats6032.1,stats6032.2,stats6033.1,stats6033.2,stats6034.1,stats6034.2,stats6035.1,stats6035.2,stats6036.1,stats6036.2,stats6037.1,stats6037.2,stats6038.1,stats6038.2,stats6039.1,stats6039.2,stats6040.1,stats6040.2,stats6041.1,stats6041.2,stats6042.1,stats6042.2,stats6043.1,stats6043.2,stats6044.1,stats6044.2,stats6045.1,stats6045.2,stats6046.1,stats6046.2,stats6047.1,stats6047.2]
  decide
end PairedPathRoundCheckedRows
