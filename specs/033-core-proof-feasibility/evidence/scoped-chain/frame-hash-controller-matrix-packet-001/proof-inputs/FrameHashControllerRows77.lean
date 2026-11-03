import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData77
import FrameHashControllerInstructionMatrixData78
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4971 : actualRows4971=WordField.canonicalRows actualModulus 4971 (.shr 4970 31) := by core033_kernel_decide
theorem stats4971 : actualRows4971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4971=2892 := by core033_kernel_decide
theorem rows4972 : actualRows4972=WordField.canonicalRows actualModulus 4972 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4972 : actualRows4972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4972=2892 := by core033_kernel_decide
theorem rows4973 : actualRows4973=WordField.canonicalRows actualModulus 4973 (.bxor 4971 4972) := by core033_kernel_decide
theorem stats4973 : actualRows4973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4973=7428 := by core033_kernel_decide
theorem rows4974 : actualRows4974=WordField.canonicalRows actualModulus 4974 (.bnot 4973) := by core033_kernel_decide
theorem stats4974 : actualRows4974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4974=6276 := by core033_kernel_decide
theorem rows4975 : actualRows4975=WordField.canonicalRows actualModulus 4975 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4975 : actualRows4975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4975=2892 := by core033_kernel_decide
theorem rows4976 : actualRows4976=WordField.canonicalRows actualModulus 4976 (.badd 4974 4975) := by core033_kernel_decide
theorem stats4976 : actualRows4976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4976=5388 := by core033_kernel_decide
theorem rows4977 : actualRows4977=WordField.canonicalRows actualModulus 4977 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4977 : actualRows4977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4977=2820 := by core033_kernel_decide
theorem rows4978 : actualRows4978=WordField.canonicalRows actualModulus 4978 (.band 4976 4977) := by core033_kernel_decide
theorem stats4978 : actualRows4978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4978=5124 := by core033_kernel_decide
theorem rows4979 : actualRows4979=WordField.canonicalRows actualModulus 4979 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4979 : actualRows4979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4979=2892 := by core033_kernel_decide
theorem rows4980 : actualRows4980=WordField.canonicalRows actualModulus 4980 (.bxor 0 4979) := by core033_kernel_decide
theorem stats4980 : actualRows4980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4980=7428 := by core033_kernel_decide
theorem rows4981 : actualRows4981=WordField.canonicalRows actualModulus 4981 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4981 : actualRows4981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4981=2820 := by core033_kernel_decide
theorem rows4982 : actualRows4982=WordField.canonicalRows actualModulus 4982 (.bnot 4981) := by core033_kernel_decide
theorem stats4982 : actualRows4982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4982=6276 := by core033_kernel_decide
theorem rows4983 : actualRows4983=WordField.canonicalRows actualModulus 4983 (.band 4980 4982) := by core033_kernel_decide
theorem stats4983 : actualRows4983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4983=5124 := by core033_kernel_decide
theorem rows4984 : actualRows4984=WordField.canonicalRows actualModulus 4984 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4984 : actualRows4984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4984=2892 := by core033_kernel_decide
theorem rows4985 : actualRows4985=WordField.canonicalRows actualModulus 4985 (.bxor 0 4984) := by core033_kernel_decide
theorem stats4985 : actualRows4985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4985=7428 := by core033_kernel_decide
theorem rows4986 : actualRows4986=WordField.canonicalRows actualModulus 4986 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4986 : actualRows4986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4986=2820 := by core033_kernel_decide
theorem rows4987 : actualRows4987=WordField.canonicalRows actualModulus 4987 (.bnot 4986) := by core033_kernel_decide
theorem stats4987 : actualRows4987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4987=6276 := by core033_kernel_decide
theorem rows4988 : actualRows4988=WordField.canonicalRows actualModulus 4988 (.bxor 4985 4987) := by core033_kernel_decide
theorem stats4988 : actualRows4988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4988=7428 := by core033_kernel_decide
theorem rows4989 : actualRows4989=WordField.canonicalRows actualModulus 4989 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4989 : actualRows4989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4989=2892 := by core033_kernel_decide
theorem rows4990 : actualRows4990=WordField.canonicalRows actualModulus 4990 (.bxor 0 4989) := by core033_kernel_decide
theorem stats4990 : actualRows4990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4990=7428 := by core033_kernel_decide
theorem rows4991 : actualRows4991=WordField.canonicalRows actualModulus 4991 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4991 : actualRows4991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4991=2820 := by core033_kernel_decide
theorem rows4992 : actualRows4992=WordField.canonicalRows actualModulus 4992 (.bnot 4991) := by core033_kernel_decide
theorem stats4992 : actualRows4992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4992=6276 := by core033_kernel_decide
theorem rows4993 : actualRows4993=WordField.canonicalRows actualModulus 4993 (.badd 4990 4992) := by core033_kernel_decide
theorem stats4993 : actualRows4993.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4993=5388 := by core033_kernel_decide
theorem rows4994 : actualRows4994=WordField.canonicalRows actualModulus 4994 (.bnot 4993) := by core033_kernel_decide
theorem stats4994 : actualRows4994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4994=6276 := by core033_kernel_decide
theorem rows4995 : actualRows4995=WordField.canonicalRows actualModulus 4995 (.band 4988 4994) := by core033_kernel_decide
theorem stats4995 : actualRows4995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4995=5124 := by core033_kernel_decide
theorem rows4996 : actualRows4996=WordField.canonicalRows actualModulus 4996 (.bxor 4983 4995) := by core033_kernel_decide
theorem stats4996 : actualRows4996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4996=7428 := by core033_kernel_decide
theorem rows4997 : actualRows4997=WordField.canonicalRows actualModulus 4997 (.shr 4996 31) := by core033_kernel_decide
theorem stats4997 : actualRows4997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4997=2892 := by core033_kernel_decide
theorem rows4998 : actualRows4998=WordField.canonicalRows actualModulus 4998 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4998 : actualRows4998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4998=2892 := by core033_kernel_decide
theorem rows4999 : actualRows4999=WordField.canonicalRows actualModulus 4999 (.bxor 4997 4998) := by core033_kernel_decide
theorem stats4999 : actualRows4999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4999=7428 := by core033_kernel_decide
theorem rows5000 : actualRows5000=WordField.canonicalRows actualModulus 5000 (.bnot 4999) := by core033_kernel_decide
theorem stats5000 : actualRows5000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5000=6276 := by core033_kernel_decide
theorem rows5001 : actualRows5001=WordField.canonicalRows actualModulus 5001 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5001 : actualRows5001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5001=2892 := by core033_kernel_decide
theorem rows5002 : actualRows5002=WordField.canonicalRows actualModulus 5002 (.badd 5000 5001) := by core033_kernel_decide
theorem stats5002 : actualRows5002.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5002=5388 := by core033_kernel_decide
theorem rows5003 : actualRows5003=WordField.canonicalRows actualModulus 5003 (.bnot 5002) := by core033_kernel_decide
theorem stats5003 : actualRows5003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5003=6276 := by core033_kernel_decide
theorem rows5004 : actualRows5004=WordField.canonicalRows actualModulus 5004 (.band 5003 965) := by core033_kernel_decide
theorem stats5004 : actualRows5004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5004=5124 := by core033_kernel_decide
theorem rows5005 : actualRows5005=WordField.canonicalRows actualModulus 5005 (.bxor 4978 5004) := by core033_kernel_decide
theorem stats5005 : actualRows5005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5005=7428 := by core033_kernel_decide
theorem rows5006 : actualRows5006=WordField.canonicalRows actualModulus 5006 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5006 : actualRows5006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5006=2892 := by core033_kernel_decide
theorem rows5007 : actualRows5007=WordField.canonicalRows actualModulus 5007 (.bxor 0 5006) := by core033_kernel_decide
theorem stats5007 : actualRows5007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5007=7428 := by core033_kernel_decide
theorem rows5008 : actualRows5008=WordField.canonicalRows actualModulus 5008 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5008 : actualRows5008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5008=2820 := by core033_kernel_decide
theorem rows5009 : actualRows5009=WordField.canonicalRows actualModulus 5009 (.bnot 5008) := by core033_kernel_decide
theorem stats5009 : actualRows5009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5009=6276 := by core033_kernel_decide
theorem rows5010 : actualRows5010=WordField.canonicalRows actualModulus 5010 (.band 5007 5009) := by core033_kernel_decide
theorem stats5010 : actualRows5010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5010=5124 := by core033_kernel_decide
theorem rows5011 : actualRows5011=WordField.canonicalRows actualModulus 5011 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5011 : actualRows5011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5011=2892 := by core033_kernel_decide
theorem rows5012 : actualRows5012=WordField.canonicalRows actualModulus 5012 (.bxor 0 5011) := by core033_kernel_decide
theorem stats5012 : actualRows5012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5012=7428 := by core033_kernel_decide
theorem rows5013 : actualRows5013=WordField.canonicalRows actualModulus 5013 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5013 : actualRows5013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5013=2820 := by core033_kernel_decide
theorem rows5014 : actualRows5014=WordField.canonicalRows actualModulus 5014 (.bnot 5013) := by core033_kernel_decide
theorem stats5014 : actualRows5014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5014=6276 := by core033_kernel_decide
theorem rows5015 : actualRows5015=WordField.canonicalRows actualModulus 5015 (.bxor 5012 5014) := by core033_kernel_decide
theorem stats5015 : actualRows5015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5015=7428 := by core033_kernel_decide
theorem rows5016 : actualRows5016=WordField.canonicalRows actualModulus 5016 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5016 : actualRows5016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5016=2892 := by core033_kernel_decide
theorem rows5017 : actualRows5017=WordField.canonicalRows actualModulus 5017 (.bxor 0 5016) := by core033_kernel_decide
theorem stats5017 : actualRows5017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5017=7428 := by core033_kernel_decide
theorem rows5018 : actualRows5018=WordField.canonicalRows actualModulus 5018 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5018 : actualRows5018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5018=2820 := by core033_kernel_decide
theorem rows5019 : actualRows5019=WordField.canonicalRows actualModulus 5019 (.bnot 5018) := by core033_kernel_decide
theorem stats5019 : actualRows5019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5019=6276 := by core033_kernel_decide
theorem rows5020 : actualRows5020=WordField.canonicalRows actualModulus 5020 (.badd 5017 5019) := by core033_kernel_decide
theorem stats5020 : actualRows5020.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5020=5388 := by core033_kernel_decide
theorem rows5021 : actualRows5021=WordField.canonicalRows actualModulus 5021 (.bnot 5020) := by core033_kernel_decide
theorem stats5021 : actualRows5021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5021=6276 := by core033_kernel_decide
theorem rows5022 : actualRows5022=WordField.canonicalRows actualModulus 5022 (.band 5015 5021) := by core033_kernel_decide
theorem stats5022 : actualRows5022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5022=5124 := by core033_kernel_decide
theorem rows5023 : actualRows5023=WordField.canonicalRows actualModulus 5023 (.bxor 5010 5022) := by core033_kernel_decide
theorem stats5023 : actualRows5023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5023=7428 := by core033_kernel_decide
theorem rows5024 : actualRows5024=WordField.canonicalRows actualModulus 5024 (.shr 5023 31) := by core033_kernel_decide
theorem stats5024 : actualRows5024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5024=2892 := by core033_kernel_decide
theorem rows5025 : actualRows5025=WordField.canonicalRows actualModulus 5025 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5025 : actualRows5025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5025=2892 := by core033_kernel_decide
theorem rows5026 : actualRows5026=WordField.canonicalRows actualModulus 5026 (.bxor 5024 5025) := by core033_kernel_decide
theorem stats5026 : actualRows5026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5026=7428 := by core033_kernel_decide
theorem rows5027 : actualRows5027=WordField.canonicalRows actualModulus 5027 (.bnot 5026) := by core033_kernel_decide
theorem stats5027 : actualRows5027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5027=6276 := by core033_kernel_decide
theorem rows5028 : actualRows5028=WordField.canonicalRows actualModulus 5028 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5028 : actualRows5028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5028=2892 := by core033_kernel_decide
theorem rows5029 : actualRows5029=WordField.canonicalRows actualModulus 5029 (.badd 5027 5028) := by core033_kernel_decide
theorem stats5029 : actualRows5029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5029=5388 := by core033_kernel_decide
theorem rows5030 : actualRows5030=WordField.canonicalRows actualModulus 5030 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5030 : actualRows5030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5030=2820 := by core033_kernel_decide
theorem rows5031 : actualRows5031=WordField.canonicalRows actualModulus 5031 (.band 5029 5030) := by core033_kernel_decide
theorem stats5031 : actualRows5031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5031=5124 := by core033_kernel_decide
theorem rows5032 : actualRows5032=WordField.canonicalRows actualModulus 5032 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5032 : actualRows5032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5032=2892 := by core033_kernel_decide
theorem rows5033 : actualRows5033=WordField.canonicalRows actualModulus 5033 (.bxor 0 5032) := by core033_kernel_decide
theorem stats5033 : actualRows5033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5033=7428 := by core033_kernel_decide
theorem rows5034 : actualRows5034=WordField.canonicalRows actualModulus 5034 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5034 : actualRows5034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5034=2820 := by core033_kernel_decide
def partRows77 : List R1CS.Row := actualRows4971++actualRows4972++actualRows4973++actualRows4974++actualRows4975++actualRows4976++actualRows4977++actualRows4978++actualRows4979++actualRows4980++actualRows4981++actualRows4982++actualRows4983++actualRows4984++actualRows4985++actualRows4986++actualRows4987++actualRows4988++actualRows4989++actualRows4990++actualRows4991++actualRows4992++actualRows4993++actualRows4994++actualRows4995++actualRows4996++actualRows4997++actualRows4998++actualRows4999++actualRows5000++actualRows5001++actualRows5002++actualRows5003++actualRows5004++actualRows5005++actualRows5006++actualRows5007++actualRows5008++actualRows5009++actualRows5010++actualRows5011++actualRows5012++actualRows5013++actualRows5014++actualRows5015++actualRows5016++actualRows5017++actualRows5018++actualRows5019++actualRows5020++actualRows5021++actualRows5022++actualRows5023++actualRows5024++actualRows5025++actualRows5026++actualRows5027++actualRows5028++actualRows5029++actualRows5030++actualRows5031++actualRows5032++actualRows5033++actualRows5034
def partOps77 : List WordIR.Op := [.shr 4970 31,.literal (BitVec.ofNat 32 1),.bxor 4971 4972,.bnot 4973,.literal (BitVec.ofNat 32 1),.badd 4974 4975,.literal (BitVec.ofNat 32 0),.band 4976 4977,.literal (BitVec.ofNat 32 2),.bxor 0 4979,.literal (BitVec.ofNat 32 0),.bnot 4981,.band 4980 4982,.literal (BitVec.ofNat 32 2),.bxor 0 4984,.literal (BitVec.ofNat 32 0),.bnot 4986,.bxor 4985 4987,.literal (BitVec.ofNat 32 2),.bxor 0 4989,.literal (BitVec.ofNat 32 0),.bnot 4991,.badd 4990 4992,.bnot 4993,.band 4988 4994,.bxor 4983 4995,.shr 4996 31,.literal (BitVec.ofNat 32 1),.bxor 4997 4998,.bnot 4999,.literal (BitVec.ofNat 32 1),.badd 5000 5001,.bnot 5002,.band 5003 965,.bxor 4978 5004,.literal (BitVec.ofNat 32 2),.bxor 0 5006,.literal (BitVec.ofNat 32 0),.bnot 5008,.band 5007 5009,.literal (BitVec.ofNat 32 2),.bxor 0 5011,.literal (BitVec.ofNat 32 0),.bnot 5013,.bxor 5012 5014,.literal (BitVec.ofNat 32 2),.bxor 0 5016,.literal (BitVec.ofNat 32 0),.bnot 5018,.badd 5017 5019,.bnot 5020,.band 5015 5021,.bxor 5010 5022,.shr 5023 31,.literal (BitVec.ofNat 32 1),.bxor 5024 5025,.bnot 5026,.literal (BitVec.ofNat 32 1),.badd 5027 5028,.literal (BitVec.ofNat 32 0),.band 5029 5030,.literal (BitVec.ofNat 32 2),.bxor 0 5032,.literal (BitVec.ofNat 32 0)]
theorem partExact77 : partRows77=WordField.rows actualModulus 4971 partOps77 := by
  simp only [partRows77,partOps77,WordField.rows,rows4971,rows4972,rows4973,rows4974,rows4975,rows4976,rows4977,rows4978,rows4979,rows4980,rows4981,rows4982,rows4983,rows4984,rows4985,rows4986,rows4987,rows4988,rows4989,rows4990,rows4991,rows4992,rows4993,rows4994,rows4995,rows4996,rows4997,rows4998,rows4999,rows5000,rows5001,rows5002,rows5003,rows5004,rows5005,rows5006,rows5007,rows5008,rows5009,rows5010,rows5011,rows5012,rows5013,rows5014,rows5015,rows5016,rows5017,rows5018,rows5019,rows5020,rows5021,rows5022,rows5023,rows5024,rows5025,rows5026,rows5027,rows5028,rows5029,rows5030,rows5031,rows5032,rows5033,rows5034,List.append_assoc,List.append_nil]
theorem partLength77 : partOps77.length=64 := by decide
theorem partStats77 : partRows77.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows77=321192 := by
  simp only [partRows77,List.length_append,MatrixRowBlocks.rows_weight_append,stats4971.1,stats4971.2,stats4972.1,stats4972.2,stats4973.1,stats4973.2,stats4974.1,stats4974.2,stats4975.1,stats4975.2,stats4976.1,stats4976.2,stats4977.1,stats4977.2,stats4978.1,stats4978.2,stats4979.1,stats4979.2,stats4980.1,stats4980.2,stats4981.1,stats4981.2,stats4982.1,stats4982.2,stats4983.1,stats4983.2,stats4984.1,stats4984.2,stats4985.1,stats4985.2,stats4986.1,stats4986.2,stats4987.1,stats4987.2,stats4988.1,stats4988.2,stats4989.1,stats4989.2,stats4990.1,stats4990.2,stats4991.1,stats4991.2,stats4992.1,stats4992.2,stats4993.1,stats4993.2,stats4994.1,stats4994.2,stats4995.1,stats4995.2,stats4996.1,stats4996.2,stats4997.1,stats4997.2,stats4998.1,stats4998.2,stats4999.1,stats4999.2,stats5000.1,stats5000.2,stats5001.1,stats5001.2,stats5002.1,stats5002.2,stats5003.1,stats5003.2,stats5004.1,stats5004.2,stats5005.1,stats5005.2,stats5006.1,stats5006.2,stats5007.1,stats5007.2,stats5008.1,stats5008.2,stats5009.1,stats5009.2,stats5010.1,stats5010.2,stats5011.1,stats5011.2,stats5012.1,stats5012.2,stats5013.1,stats5013.2,stats5014.1,stats5014.2,stats5015.1,stats5015.2,stats5016.1,stats5016.2,stats5017.1,stats5017.2,stats5018.1,stats5018.2,stats5019.1,stats5019.2,stats5020.1,stats5020.2,stats5021.1,stats5021.2,stats5022.1,stats5022.2,stats5023.1,stats5023.2,stats5024.1,stats5024.2,stats5025.1,stats5025.2,stats5026.1,stats5026.2,stats5027.1,stats5027.2,stats5028.1,stats5028.2,stats5029.1,stats5029.2,stats5030.1,stats5030.2,stats5031.1,stats5031.2,stats5032.1,stats5032.2,stats5033.1,stats5033.2,stats5034.1,stats5034.2]
  decide
end FrameHashControllerCheckedRows
