import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData77
import AuthenticatedBranchRoundInstructionMatrixData78
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4982 : actualRows4982=WordField.canonicalRows actualModulus 4982 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4982 : actualRows4982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4982=2892 := by core033_kernel_decide
theorem rows4983 : actualRows4983=WordField.canonicalRows actualModulus 4983 (.bxor 1299 4982) := by core033_kernel_decide
theorem stats4983 : actualRows4983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4983=7428 := by core033_kernel_decide
theorem rows4984 : actualRows4984=WordField.canonicalRows actualModulus 4984 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4984 : actualRows4984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4984=2820 := by core033_kernel_decide
theorem rows4985 : actualRows4985=WordField.canonicalRows actualModulus 4985 (.bnot 4984) := by core033_kernel_decide
theorem stats4985 : actualRows4985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4985=6276 := by core033_kernel_decide
theorem rows4986 : actualRows4986=WordField.canonicalRows actualModulus 4986 (.badd 4983 4985) := by core033_kernel_decide
theorem stats4986 : actualRows4986.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4986=5388 := by core033_kernel_decide
theorem rows4987 : actualRows4987=WordField.canonicalRows actualModulus 4987 (.bnot 4986) := by core033_kernel_decide
theorem stats4987 : actualRows4987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4987=6276 := by core033_kernel_decide
theorem rows4988 : actualRows4988=WordField.canonicalRows actualModulus 4988 (.band 4981 4987) := by core033_kernel_decide
theorem stats4988 : actualRows4988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4988=5124 := by core033_kernel_decide
theorem rows4989 : actualRows4989=WordField.canonicalRows actualModulus 4989 (.bxor 4976 4988) := by core033_kernel_decide
theorem stats4989 : actualRows4989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4989=7428 := by core033_kernel_decide
theorem rows4990 : actualRows4990=WordField.canonicalRows actualModulus 4990 (.shr 4989 31) := by core033_kernel_decide
theorem stats4990 : actualRows4990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4990=2892 := by core033_kernel_decide
theorem rows4991 : actualRows4991=WordField.canonicalRows actualModulus 4991 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4991 : actualRows4991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4991=2892 := by core033_kernel_decide
theorem rows4992 : actualRows4992=WordField.canonicalRows actualModulus 4992 (.bxor 4990 4991) := by core033_kernel_decide
theorem stats4992 : actualRows4992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4992=7428 := by core033_kernel_decide
theorem rows4993 : actualRows4993=WordField.canonicalRows actualModulus 4993 (.bnot 4992) := by core033_kernel_decide
theorem stats4993 : actualRows4993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4993=6276 := by core033_kernel_decide
theorem rows4994 : actualRows4994=WordField.canonicalRows actualModulus 4994 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4994 : actualRows4994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4994=2892 := by core033_kernel_decide
theorem rows4995 : actualRows4995=WordField.canonicalRows actualModulus 4995 (.badd 4993 4994) := by core033_kernel_decide
theorem stats4995 : actualRows4995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4995=5388 := by core033_kernel_decide
theorem rows4996 : actualRows4996=WordField.canonicalRows actualModulus 4996 (.bnot 4995) := by core033_kernel_decide
theorem stats4996 : actualRows4996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4996=6276 := by core033_kernel_decide
theorem rows4997 : actualRows4997=WordField.canonicalRows actualModulus 4997 (.band 4996 2585) := by core033_kernel_decide
theorem stats4997 : actualRows4997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4997=5124 := by core033_kernel_decide
theorem rows4998 : actualRows4998=WordField.canonicalRows actualModulus 4998 (.bxor 4971 4997) := by core033_kernel_decide
theorem stats4998 : actualRows4998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4998=7428 := by core033_kernel_decide
theorem rows4999 : actualRows4999=WordField.canonicalRows actualModulus 4999 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4999 : actualRows4999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4999=2892 := by core033_kernel_decide
theorem rows5000 : actualRows5000=WordField.canonicalRows actualModulus 5000 (.bxor 1299 4999) := by core033_kernel_decide
theorem stats5000 : actualRows5000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5000=7428 := by core033_kernel_decide
theorem rows5001 : actualRows5001=WordField.canonicalRows actualModulus 5001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5001 : actualRows5001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5001=2820 := by core033_kernel_decide
theorem rows5002 : actualRows5002=WordField.canonicalRows actualModulus 5002 (.bnot 5001) := by core033_kernel_decide
theorem stats5002 : actualRows5002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5002=6276 := by core033_kernel_decide
theorem rows5003 : actualRows5003=WordField.canonicalRows actualModulus 5003 (.band 5000 5002) := by core033_kernel_decide
theorem stats5003 : actualRows5003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5003=5124 := by core033_kernel_decide
theorem rows5004 : actualRows5004=WordField.canonicalRows actualModulus 5004 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5004 : actualRows5004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5004=2892 := by core033_kernel_decide
theorem rows5005 : actualRows5005=WordField.canonicalRows actualModulus 5005 (.bxor 1299 5004) := by core033_kernel_decide
theorem stats5005 : actualRows5005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5005=7428 := by core033_kernel_decide
theorem rows5006 : actualRows5006=WordField.canonicalRows actualModulus 5006 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5006 : actualRows5006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5006=2820 := by core033_kernel_decide
theorem rows5007 : actualRows5007=WordField.canonicalRows actualModulus 5007 (.bnot 5006) := by core033_kernel_decide
theorem stats5007 : actualRows5007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5007=6276 := by core033_kernel_decide
theorem rows5008 : actualRows5008=WordField.canonicalRows actualModulus 5008 (.bxor 5005 5007) := by core033_kernel_decide
theorem stats5008 : actualRows5008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5008=7428 := by core033_kernel_decide
theorem rows5009 : actualRows5009=WordField.canonicalRows actualModulus 5009 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5009 : actualRows5009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5009=2892 := by core033_kernel_decide
theorem rows5010 : actualRows5010=WordField.canonicalRows actualModulus 5010 (.bxor 1299 5009) := by core033_kernel_decide
theorem stats5010 : actualRows5010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5010=7428 := by core033_kernel_decide
theorem rows5011 : actualRows5011=WordField.canonicalRows actualModulus 5011 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5011 : actualRows5011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5011=2820 := by core033_kernel_decide
theorem rows5012 : actualRows5012=WordField.canonicalRows actualModulus 5012 (.bnot 5011) := by core033_kernel_decide
theorem stats5012 : actualRows5012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5012=6276 := by core033_kernel_decide
theorem rows5013 : actualRows5013=WordField.canonicalRows actualModulus 5013 (.badd 5010 5012) := by core033_kernel_decide
theorem stats5013 : actualRows5013.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5013=5388 := by core033_kernel_decide
theorem rows5014 : actualRows5014=WordField.canonicalRows actualModulus 5014 (.bnot 5013) := by core033_kernel_decide
theorem stats5014 : actualRows5014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5014=6276 := by core033_kernel_decide
theorem rows5015 : actualRows5015=WordField.canonicalRows actualModulus 5015 (.band 5008 5014) := by core033_kernel_decide
theorem stats5015 : actualRows5015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5015=5124 := by core033_kernel_decide
theorem rows5016 : actualRows5016=WordField.canonicalRows actualModulus 5016 (.bxor 5003 5015) := by core033_kernel_decide
theorem stats5016 : actualRows5016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5016=7428 := by core033_kernel_decide
theorem rows5017 : actualRows5017=WordField.canonicalRows actualModulus 5017 (.shr 5016 31) := by core033_kernel_decide
theorem stats5017 : actualRows5017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5017=2892 := by core033_kernel_decide
theorem rows5018 : actualRows5018=WordField.canonicalRows actualModulus 5018 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5018 : actualRows5018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5018=2892 := by core033_kernel_decide
theorem rows5019 : actualRows5019=WordField.canonicalRows actualModulus 5019 (.bxor 5017 5018) := by core033_kernel_decide
theorem stats5019 : actualRows5019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5019=7428 := by core033_kernel_decide
theorem rows5020 : actualRows5020=WordField.canonicalRows actualModulus 5020 (.bnot 5019) := by core033_kernel_decide
theorem stats5020 : actualRows5020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5020=6276 := by core033_kernel_decide
theorem rows5021 : actualRows5021=WordField.canonicalRows actualModulus 5021 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5021 : actualRows5021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5021=2892 := by core033_kernel_decide
theorem rows5022 : actualRows5022=WordField.canonicalRows actualModulus 5022 (.badd 5020 5021) := by core033_kernel_decide
theorem stats5022 : actualRows5022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5022=5388 := by core033_kernel_decide
theorem rows5023 : actualRows5023=WordField.canonicalRows actualModulus 5023 (.band 5022 2780) := by core033_kernel_decide
theorem stats5023 : actualRows5023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5023=5124 := by core033_kernel_decide
theorem rows5024 : actualRows5024=WordField.canonicalRows actualModulus 5024 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5024 : actualRows5024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5024=2892 := by core033_kernel_decide
theorem rows5025 : actualRows5025=WordField.canonicalRows actualModulus 5025 (.bxor 1299 5024) := by core033_kernel_decide
theorem stats5025 : actualRows5025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5025=7428 := by core033_kernel_decide
theorem rows5026 : actualRows5026=WordField.canonicalRows actualModulus 5026 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5026 : actualRows5026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5026=2820 := by core033_kernel_decide
theorem rows5027 : actualRows5027=WordField.canonicalRows actualModulus 5027 (.bnot 5026) := by core033_kernel_decide
theorem stats5027 : actualRows5027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5027=6276 := by core033_kernel_decide
theorem rows5028 : actualRows5028=WordField.canonicalRows actualModulus 5028 (.band 5025 5027) := by core033_kernel_decide
theorem stats5028 : actualRows5028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5028=5124 := by core033_kernel_decide
theorem rows5029 : actualRows5029=WordField.canonicalRows actualModulus 5029 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5029 : actualRows5029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5029=2892 := by core033_kernel_decide
theorem rows5030 : actualRows5030=WordField.canonicalRows actualModulus 5030 (.bxor 1299 5029) := by core033_kernel_decide
theorem stats5030 : actualRows5030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5030=7428 := by core033_kernel_decide
theorem rows5031 : actualRows5031=WordField.canonicalRows actualModulus 5031 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5031 : actualRows5031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5031=2820 := by core033_kernel_decide
theorem rows5032 : actualRows5032=WordField.canonicalRows actualModulus 5032 (.bnot 5031) := by core033_kernel_decide
theorem stats5032 : actualRows5032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5032=6276 := by core033_kernel_decide
theorem rows5033 : actualRows5033=WordField.canonicalRows actualModulus 5033 (.bxor 5030 5032) := by core033_kernel_decide
theorem stats5033 : actualRows5033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5033=7428 := by core033_kernel_decide
theorem rows5034 : actualRows5034=WordField.canonicalRows actualModulus 5034 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5034 : actualRows5034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5034=2892 := by core033_kernel_decide
theorem rows5035 : actualRows5035=WordField.canonicalRows actualModulus 5035 (.bxor 1299 5034) := by core033_kernel_decide
theorem stats5035 : actualRows5035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5035=7428 := by core033_kernel_decide
theorem rows5036 : actualRows5036=WordField.canonicalRows actualModulus 5036 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5036 : actualRows5036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5036=2820 := by core033_kernel_decide
theorem rows5037 : actualRows5037=WordField.canonicalRows actualModulus 5037 (.bnot 5036) := by core033_kernel_decide
theorem stats5037 : actualRows5037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5037=6276 := by core033_kernel_decide
theorem rows5038 : actualRows5038=WordField.canonicalRows actualModulus 5038 (.badd 5035 5037) := by core033_kernel_decide
theorem stats5038 : actualRows5038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5038=5388 := by core033_kernel_decide
theorem rows5039 : actualRows5039=WordField.canonicalRows actualModulus 5039 (.bnot 5038) := by core033_kernel_decide
theorem stats5039 : actualRows5039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5039=6276 := by core033_kernel_decide
theorem rows5040 : actualRows5040=WordField.canonicalRows actualModulus 5040 (.band 5033 5039) := by core033_kernel_decide
theorem stats5040 : actualRows5040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5040=5124 := by core033_kernel_decide
theorem rows5041 : actualRows5041=WordField.canonicalRows actualModulus 5041 (.bxor 5028 5040) := by core033_kernel_decide
theorem stats5041 : actualRows5041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5041=7428 := by core033_kernel_decide
theorem rows5042 : actualRows5042=WordField.canonicalRows actualModulus 5042 (.shr 5041 31) := by core033_kernel_decide
theorem stats5042 : actualRows5042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5042=2892 := by core033_kernel_decide
theorem rows5043 : actualRows5043=WordField.canonicalRows actualModulus 5043 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5043 : actualRows5043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5043=2892 := by core033_kernel_decide
theorem rows5044 : actualRows5044=WordField.canonicalRows actualModulus 5044 (.bxor 5042 5043) := by core033_kernel_decide
theorem stats5044 : actualRows5044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5044=7428 := by core033_kernel_decide
theorem rows5045 : actualRows5045=WordField.canonicalRows actualModulus 5045 (.bnot 5044) := by core033_kernel_decide
theorem stats5045 : actualRows5045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5045=6276 := by core033_kernel_decide
def partRows76 : List R1CS.Row := actualRows4982++actualRows4983++actualRows4984++actualRows4985++actualRows4986++actualRows4987++actualRows4988++actualRows4989++actualRows4990++actualRows4991++actualRows4992++actualRows4993++actualRows4994++actualRows4995++actualRows4996++actualRows4997++actualRows4998++actualRows4999++actualRows5000++actualRows5001++actualRows5002++actualRows5003++actualRows5004++actualRows5005++actualRows5006++actualRows5007++actualRows5008++actualRows5009++actualRows5010++actualRows5011++actualRows5012++actualRows5013++actualRows5014++actualRows5015++actualRows5016++actualRows5017++actualRows5018++actualRows5019++actualRows5020++actualRows5021++actualRows5022++actualRows5023++actualRows5024++actualRows5025++actualRows5026++actualRows5027++actualRows5028++actualRows5029++actualRows5030++actualRows5031++actualRows5032++actualRows5033++actualRows5034++actualRows5035++actualRows5036++actualRows5037++actualRows5038++actualRows5039++actualRows5040++actualRows5041++actualRows5042++actualRows5043++actualRows5044++actualRows5045
def partOps76 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 1299 4982,.literal (BitVec.ofNat 32 0),.bnot 4984,.badd 4983 4985,.bnot 4986,.band 4981 4987,.bxor 4976 4988,.shr 4989 31,.literal (BitVec.ofNat 32 1),.bxor 4990 4991,.bnot 4992,.literal (BitVec.ofNat 32 1),.badd 4993 4994,.bnot 4995,.band 4996 2585,.bxor 4971 4997,.literal (BitVec.ofNat 32 2),.bxor 1299 4999,.literal (BitVec.ofNat 32 0),.bnot 5001,.band 5000 5002,.literal (BitVec.ofNat 32 2),.bxor 1299 5004,.literal (BitVec.ofNat 32 0),.bnot 5006,.bxor 5005 5007,.literal (BitVec.ofNat 32 2),.bxor 1299 5009,.literal (BitVec.ofNat 32 0),.bnot 5011,.badd 5010 5012,.bnot 5013,.band 5008 5014,.bxor 5003 5015,.shr 5016 31,.literal (BitVec.ofNat 32 1),.bxor 5017 5018,.bnot 5019,.literal (BitVec.ofNat 32 1),.badd 5020 5021,.band 5022 2780,.literal (BitVec.ofNat 32 2),.bxor 1299 5024,.literal (BitVec.ofNat 32 0),.bnot 5026,.band 5025 5027,.literal (BitVec.ofNat 32 2),.bxor 1299 5029,.literal (BitVec.ofNat 32 0),.bnot 5031,.bxor 5030 5032,.literal (BitVec.ofNat 32 2),.bxor 1299 5034,.literal (BitVec.ofNat 32 0),.bnot 5036,.badd 5035 5037,.bnot 5038,.band 5033 5039,.bxor 5028 5040,.shr 5041 31,.literal (BitVec.ofNat 32 1),.bxor 5042 5043,.bnot 5044]
theorem partExact76 : partRows76=WordField.rows actualModulus 4982 partOps76 := by
  simp only [partRows76,partOps76,WordField.rows,rows4982,rows4983,rows4984,rows4985,rows4986,rows4987,rows4988,rows4989,rows4990,rows4991,rows4992,rows4993,rows4994,rows4995,rows4996,rows4997,rows4998,rows4999,rows5000,rows5001,rows5002,rows5003,rows5004,rows5005,rows5006,rows5007,rows5008,rows5009,rows5010,rows5011,rows5012,rows5013,rows5014,rows5015,rows5016,rows5017,rows5018,rows5019,rows5020,rows5021,rows5022,rows5023,rows5024,rows5025,rows5026,rows5027,rows5028,rows5029,rows5030,rows5031,rows5032,rows5033,rows5034,rows5035,rows5036,rows5037,rows5038,rows5039,rows5040,rows5041,rows5042,rows5043,rows5044,rows5045,List.append_assoc,List.append_nil]
theorem partLength76 : partOps76.length=64 := by decide
theorem partStats76 : partRows76.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows76=332640 := by
  simp only [partRows76,List.length_append,MatrixRowBlocks.rows_weight_append,stats4982.1,stats4982.2,stats4983.1,stats4983.2,stats4984.1,stats4984.2,stats4985.1,stats4985.2,stats4986.1,stats4986.2,stats4987.1,stats4987.2,stats4988.1,stats4988.2,stats4989.1,stats4989.2,stats4990.1,stats4990.2,stats4991.1,stats4991.2,stats4992.1,stats4992.2,stats4993.1,stats4993.2,stats4994.1,stats4994.2,stats4995.1,stats4995.2,stats4996.1,stats4996.2,stats4997.1,stats4997.2,stats4998.1,stats4998.2,stats4999.1,stats4999.2,stats5000.1,stats5000.2,stats5001.1,stats5001.2,stats5002.1,stats5002.2,stats5003.1,stats5003.2,stats5004.1,stats5004.2,stats5005.1,stats5005.2,stats5006.1,stats5006.2,stats5007.1,stats5007.2,stats5008.1,stats5008.2,stats5009.1,stats5009.2,stats5010.1,stats5010.2,stats5011.1,stats5011.2,stats5012.1,stats5012.2,stats5013.1,stats5013.2,stats5014.1,stats5014.2,stats5015.1,stats5015.2,stats5016.1,stats5016.2,stats5017.1,stats5017.2,stats5018.1,stats5018.2,stats5019.1,stats5019.2,stats5020.1,stats5020.2,stats5021.1,stats5021.2,stats5022.1,stats5022.2,stats5023.1,stats5023.2,stats5024.1,stats5024.2,stats5025.1,stats5025.2,stats5026.1,stats5026.2,stats5027.1,stats5027.2,stats5028.1,stats5028.2,stats5029.1,stats5029.2,stats5030.1,stats5030.2,stats5031.1,stats5031.2,stats5032.1,stats5032.2,stats5033.1,stats5033.2,stats5034.1,stats5034.2,stats5035.1,stats5035.2,stats5036.1,stats5036.2,stats5037.1,stats5037.2,stats5038.1,stats5038.2,stats5039.1,stats5039.2,stats5040.1,stats5040.2,stats5041.1,stats5041.2,stats5042.1,stats5042.2,stats5043.1,stats5043.2,stats5044.1,stats5044.2,stats5045.1,stats5045.2]
  decide
end AuthenticatedBranchRoundCheckedRows
