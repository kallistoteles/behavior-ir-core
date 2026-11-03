import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData77
import PairedPathRoundInstructionMatrixData78
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4960 : actualRows4960=WordField.canonicalRows actualModulus 4960 (.bxor 4958 4959) := by core033_kernel_decide
theorem stats4960 : actualRows4960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4960=7428 := by core033_kernel_decide
theorem rows4961 : actualRows4961=WordField.canonicalRows actualModulus 4961 (.bnot 4960) := by core033_kernel_decide
theorem stats4961 : actualRows4961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4961=6276 := by core033_kernel_decide
theorem rows4962 : actualRows4962=WordField.canonicalRows actualModulus 4962 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4962 : actualRows4962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4962=2892 := by core033_kernel_decide
theorem rows4963 : actualRows4963=WordField.canonicalRows actualModulus 4963 (.badd 4961 4962) := by core033_kernel_decide
theorem stats4963 : actualRows4963.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4963=5388 := by core033_kernel_decide
theorem rows4964 : actualRows4964=WordField.canonicalRows actualModulus 4964 (.band 4963 2133) := by core033_kernel_decide
theorem stats4964 : actualRows4964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4964=5124 := by core033_kernel_decide
theorem rows4965 : actualRows4965=WordField.canonicalRows actualModulus 4965 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4965 : actualRows4965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4965=2892 := by core033_kernel_decide
theorem rows4966 : actualRows4966=WordField.canonicalRows actualModulus 4966 (.bxor 616 4965) := by core033_kernel_decide
theorem stats4966 : actualRows4966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4966=7428 := by core033_kernel_decide
theorem rows4967 : actualRows4967=WordField.canonicalRows actualModulus 4967 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4967 : actualRows4967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4967=2820 := by core033_kernel_decide
theorem rows4968 : actualRows4968=WordField.canonicalRows actualModulus 4968 (.bnot 4967) := by core033_kernel_decide
theorem stats4968 : actualRows4968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4968=6276 := by core033_kernel_decide
theorem rows4969 : actualRows4969=WordField.canonicalRows actualModulus 4969 (.band 4966 4968) := by core033_kernel_decide
theorem stats4969 : actualRows4969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4969=5124 := by core033_kernel_decide
theorem rows4970 : actualRows4970=WordField.canonicalRows actualModulus 4970 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4970 : actualRows4970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4970=2892 := by core033_kernel_decide
theorem rows4971 : actualRows4971=WordField.canonicalRows actualModulus 4971 (.bxor 616 4970) := by core033_kernel_decide
theorem stats4971 : actualRows4971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4971=7428 := by core033_kernel_decide
theorem rows4972 : actualRows4972=WordField.canonicalRows actualModulus 4972 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4972 : actualRows4972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4972=2820 := by core033_kernel_decide
theorem rows4973 : actualRows4973=WordField.canonicalRows actualModulus 4973 (.bnot 4972) := by core033_kernel_decide
theorem stats4973 : actualRows4973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4973=6276 := by core033_kernel_decide
theorem rows4974 : actualRows4974=WordField.canonicalRows actualModulus 4974 (.bxor 4971 4973) := by core033_kernel_decide
theorem stats4974 : actualRows4974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4974=7428 := by core033_kernel_decide
theorem rows4975 : actualRows4975=WordField.canonicalRows actualModulus 4975 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4975 : actualRows4975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4975=2892 := by core033_kernel_decide
theorem rows4976 : actualRows4976=WordField.canonicalRows actualModulus 4976 (.bxor 616 4975) := by core033_kernel_decide
theorem stats4976 : actualRows4976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4976=7428 := by core033_kernel_decide
theorem rows4977 : actualRows4977=WordField.canonicalRows actualModulus 4977 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4977 : actualRows4977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4977=2820 := by core033_kernel_decide
theorem rows4978 : actualRows4978=WordField.canonicalRows actualModulus 4978 (.bnot 4977) := by core033_kernel_decide
theorem stats4978 : actualRows4978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4978=6276 := by core033_kernel_decide
theorem rows4979 : actualRows4979=WordField.canonicalRows actualModulus 4979 (.badd 4976 4978) := by core033_kernel_decide
theorem stats4979 : actualRows4979.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4979=5388 := by core033_kernel_decide
theorem rows4980 : actualRows4980=WordField.canonicalRows actualModulus 4980 (.bnot 4979) := by core033_kernel_decide
theorem stats4980 : actualRows4980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4980=6276 := by core033_kernel_decide
theorem rows4981 : actualRows4981=WordField.canonicalRows actualModulus 4981 (.band 4974 4980) := by core033_kernel_decide
theorem stats4981 : actualRows4981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4981=5124 := by core033_kernel_decide
theorem rows4982 : actualRows4982=WordField.canonicalRows actualModulus 4982 (.bxor 4969 4981) := by core033_kernel_decide
theorem stats4982 : actualRows4982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4982=7428 := by core033_kernel_decide
theorem rows4983 : actualRows4983=WordField.canonicalRows actualModulus 4983 (.shr 4982 31) := by core033_kernel_decide
theorem stats4983 : actualRows4983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4983=2892 := by core033_kernel_decide
theorem rows4984 : actualRows4984=WordField.canonicalRows actualModulus 4984 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4984 : actualRows4984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4984=2892 := by core033_kernel_decide
theorem rows4985 : actualRows4985=WordField.canonicalRows actualModulus 4985 (.bxor 4983 4984) := by core033_kernel_decide
theorem stats4985 : actualRows4985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4985=7428 := by core033_kernel_decide
theorem rows4986 : actualRows4986=WordField.canonicalRows actualModulus 4986 (.bnot 4985) := by core033_kernel_decide
theorem stats4986 : actualRows4986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4986=6276 := by core033_kernel_decide
theorem rows4987 : actualRows4987=WordField.canonicalRows actualModulus 4987 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4987 : actualRows4987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4987=2892 := by core033_kernel_decide
theorem rows4988 : actualRows4988=WordField.canonicalRows actualModulus 4988 (.badd 4986 4987) := by core033_kernel_decide
theorem stats4988 : actualRows4988.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4988=5388 := by core033_kernel_decide
theorem rows4989 : actualRows4989=WordField.canonicalRows actualModulus 4989 (.bnot 4988) := by core033_kernel_decide
theorem stats4989 : actualRows4989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4989=6276 := by core033_kernel_decide
theorem rows4990 : actualRows4990=WordField.canonicalRows actualModulus 4990 (.band 4989 1941) := by core033_kernel_decide
theorem stats4990 : actualRows4990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4990=5124 := by core033_kernel_decide
theorem rows4991 : actualRows4991=WordField.canonicalRows actualModulus 4991 (.bxor 4964 4990) := by core033_kernel_decide
theorem stats4991 : actualRows4991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4991=7428 := by core033_kernel_decide
theorem rows4992 : actualRows4992=WordField.canonicalRows actualModulus 4992 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4992 : actualRows4992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4992=2892 := by core033_kernel_decide
theorem rows4993 : actualRows4993=WordField.canonicalRows actualModulus 4993 (.bxor 616 4992) := by core033_kernel_decide
theorem stats4993 : actualRows4993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4993=7428 := by core033_kernel_decide
theorem rows4994 : actualRows4994=WordField.canonicalRows actualModulus 4994 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4994 : actualRows4994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4994=2820 := by core033_kernel_decide
theorem rows4995 : actualRows4995=WordField.canonicalRows actualModulus 4995 (.bnot 4994) := by core033_kernel_decide
theorem stats4995 : actualRows4995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4995=6276 := by core033_kernel_decide
theorem rows4996 : actualRows4996=WordField.canonicalRows actualModulus 4996 (.band 4993 4995) := by core033_kernel_decide
theorem stats4996 : actualRows4996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4996=5124 := by core033_kernel_decide
theorem rows4997 : actualRows4997=WordField.canonicalRows actualModulus 4997 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4997 : actualRows4997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4997=2892 := by core033_kernel_decide
theorem rows4998 : actualRows4998=WordField.canonicalRows actualModulus 4998 (.bxor 616 4997) := by core033_kernel_decide
theorem stats4998 : actualRows4998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4998=7428 := by core033_kernel_decide
theorem rows4999 : actualRows4999=WordField.canonicalRows actualModulus 4999 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4999 : actualRows4999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4999=2820 := by core033_kernel_decide
theorem rows5000 : actualRows5000=WordField.canonicalRows actualModulus 5000 (.bnot 4999) := by core033_kernel_decide
theorem stats5000 : actualRows5000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5000=6276 := by core033_kernel_decide
theorem rows5001 : actualRows5001=WordField.canonicalRows actualModulus 5001 (.bxor 4998 5000) := by core033_kernel_decide
theorem stats5001 : actualRows5001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5001=7428 := by core033_kernel_decide
theorem rows5002 : actualRows5002=WordField.canonicalRows actualModulus 5002 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5002 : actualRows5002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5002=2892 := by core033_kernel_decide
theorem rows5003 : actualRows5003=WordField.canonicalRows actualModulus 5003 (.bxor 616 5002) := by core033_kernel_decide
theorem stats5003 : actualRows5003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5003=7428 := by core033_kernel_decide
theorem rows5004 : actualRows5004=WordField.canonicalRows actualModulus 5004 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5004 : actualRows5004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5004=2820 := by core033_kernel_decide
theorem rows5005 : actualRows5005=WordField.canonicalRows actualModulus 5005 (.bnot 5004) := by core033_kernel_decide
theorem stats5005 : actualRows5005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5005=6276 := by core033_kernel_decide
theorem rows5006 : actualRows5006=WordField.canonicalRows actualModulus 5006 (.badd 5003 5005) := by core033_kernel_decide
theorem stats5006 : actualRows5006.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5006=5388 := by core033_kernel_decide
theorem rows5007 : actualRows5007=WordField.canonicalRows actualModulus 5007 (.bnot 5006) := by core033_kernel_decide
theorem stats5007 : actualRows5007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5007=6276 := by core033_kernel_decide
theorem rows5008 : actualRows5008=WordField.canonicalRows actualModulus 5008 (.band 5001 5007) := by core033_kernel_decide
theorem stats5008 : actualRows5008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5008=5124 := by core033_kernel_decide
theorem rows5009 : actualRows5009=WordField.canonicalRows actualModulus 5009 (.bxor 4996 5008) := by core033_kernel_decide
theorem stats5009 : actualRows5009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5009=7428 := by core033_kernel_decide
theorem rows5010 : actualRows5010=WordField.canonicalRows actualModulus 5010 (.shr 5009 31) := by core033_kernel_decide
theorem stats5010 : actualRows5010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5010=2892 := by core033_kernel_decide
theorem rows5011 : actualRows5011=WordField.canonicalRows actualModulus 5011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5011 : actualRows5011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5011=2892 := by core033_kernel_decide
theorem rows5012 : actualRows5012=WordField.canonicalRows actualModulus 5012 (.bxor 5010 5011) := by core033_kernel_decide
theorem stats5012 : actualRows5012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5012=7428 := by core033_kernel_decide
theorem rows5013 : actualRows5013=WordField.canonicalRows actualModulus 5013 (.bnot 5012) := by core033_kernel_decide
theorem stats5013 : actualRows5013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5013=6276 := by core033_kernel_decide
theorem rows5014 : actualRows5014=WordField.canonicalRows actualModulus 5014 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5014 : actualRows5014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5014=2892 := by core033_kernel_decide
theorem rows5015 : actualRows5015=WordField.canonicalRows actualModulus 5015 (.badd 5013 5014) := by core033_kernel_decide
theorem stats5015 : actualRows5015.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5015=5388 := by core033_kernel_decide
theorem rows5016 : actualRows5016=WordField.canonicalRows actualModulus 5016 (.band 5015 2136) := by core033_kernel_decide
theorem stats5016 : actualRows5016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5016=5124 := by core033_kernel_decide
theorem rows5017 : actualRows5017=WordField.canonicalRows actualModulus 5017 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5017 : actualRows5017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5017=2892 := by core033_kernel_decide
theorem rows5018 : actualRows5018=WordField.canonicalRows actualModulus 5018 (.bxor 616 5017) := by core033_kernel_decide
theorem stats5018 : actualRows5018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5018=7428 := by core033_kernel_decide
theorem rows5019 : actualRows5019=WordField.canonicalRows actualModulus 5019 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5019 : actualRows5019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5019=2820 := by core033_kernel_decide
theorem rows5020 : actualRows5020=WordField.canonicalRows actualModulus 5020 (.bnot 5019) := by core033_kernel_decide
theorem stats5020 : actualRows5020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5020=6276 := by core033_kernel_decide
theorem rows5021 : actualRows5021=WordField.canonicalRows actualModulus 5021 (.band 5018 5020) := by core033_kernel_decide
theorem stats5021 : actualRows5021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5021=5124 := by core033_kernel_decide
theorem rows5022 : actualRows5022=WordField.canonicalRows actualModulus 5022 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5022 : actualRows5022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5022=2892 := by core033_kernel_decide
theorem rows5023 : actualRows5023=WordField.canonicalRows actualModulus 5023 (.bxor 616 5022) := by core033_kernel_decide
theorem stats5023 : actualRows5023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5023=7428 := by core033_kernel_decide
def partRows76 : List R1CS.Row := actualRows4960++actualRows4961++actualRows4962++actualRows4963++actualRows4964++actualRows4965++actualRows4966++actualRows4967++actualRows4968++actualRows4969++actualRows4970++actualRows4971++actualRows4972++actualRows4973++actualRows4974++actualRows4975++actualRows4976++actualRows4977++actualRows4978++actualRows4979++actualRows4980++actualRows4981++actualRows4982++actualRows4983++actualRows4984++actualRows4985++actualRows4986++actualRows4987++actualRows4988++actualRows4989++actualRows4990++actualRows4991++actualRows4992++actualRows4993++actualRows4994++actualRows4995++actualRows4996++actualRows4997++actualRows4998++actualRows4999++actualRows5000++actualRows5001++actualRows5002++actualRows5003++actualRows5004++actualRows5005++actualRows5006++actualRows5007++actualRows5008++actualRows5009++actualRows5010++actualRows5011++actualRows5012++actualRows5013++actualRows5014++actualRows5015++actualRows5016++actualRows5017++actualRows5018++actualRows5019++actualRows5020++actualRows5021++actualRows5022++actualRows5023
def partOps76 : List WordIR.Op := [.bxor 4958 4959,.bnot 4960,.literal (BitVec.ofNat 32 1),.badd 4961 4962,.band 4963 2133,.literal (BitVec.ofNat 32 2),.bxor 616 4965,.literal (BitVec.ofNat 32 0),.bnot 4967,.band 4966 4968,.literal (BitVec.ofNat 32 2),.bxor 616 4970,.literal (BitVec.ofNat 32 0),.bnot 4972,.bxor 4971 4973,.literal (BitVec.ofNat 32 2),.bxor 616 4975,.literal (BitVec.ofNat 32 0),.bnot 4977,.badd 4976 4978,.bnot 4979,.band 4974 4980,.bxor 4969 4981,.shr 4982 31,.literal (BitVec.ofNat 32 1),.bxor 4983 4984,.bnot 4985,.literal (BitVec.ofNat 32 1),.badd 4986 4987,.bnot 4988,.band 4989 1941,.bxor 4964 4990,.literal (BitVec.ofNat 32 2),.bxor 616 4992,.literal (BitVec.ofNat 32 0),.bnot 4994,.band 4993 4995,.literal (BitVec.ofNat 32 2),.bxor 616 4997,.literal (BitVec.ofNat 32 0),.bnot 4999,.bxor 4998 5000,.literal (BitVec.ofNat 32 2),.bxor 616 5002,.literal (BitVec.ofNat 32 0),.bnot 5004,.badd 5003 5005,.bnot 5006,.band 5001 5007,.bxor 4996 5008,.shr 5009 31,.literal (BitVec.ofNat 32 1),.bxor 5010 5011,.bnot 5012,.literal (BitVec.ofNat 32 1),.badd 5013 5014,.band 5015 2136,.literal (BitVec.ofNat 32 2),.bxor 616 5017,.literal (BitVec.ofNat 32 0),.bnot 5019,.band 5018 5020,.literal (BitVec.ofNat 32 2),.bxor 616 5022]
theorem partExact76 : partRows76=WordField.rows actualModulus 4960 partOps76 := by
  simp only [partRows76,partOps76,WordField.rows,rows4960,rows4961,rows4962,rows4963,rows4964,rows4965,rows4966,rows4967,rows4968,rows4969,rows4970,rows4971,rows4972,rows4973,rows4974,rows4975,rows4976,rows4977,rows4978,rows4979,rows4980,rows4981,rows4982,rows4983,rows4984,rows4985,rows4986,rows4987,rows4988,rows4989,rows4990,rows4991,rows4992,rows4993,rows4994,rows4995,rows4996,rows4997,rows4998,rows4999,rows5000,rows5001,rows5002,rows5003,rows5004,rows5005,rows5006,rows5007,rows5008,rows5009,rows5010,rows5011,rows5012,rows5013,rows5014,rows5015,rows5016,rows5017,rows5018,rows5019,rows5020,rows5021,rows5022,rows5023,List.append_assoc,List.append_nil]
theorem partLength76 : partOps76.length=64 := by decide
theorem partStats76 : partRows76.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows76=331488 := by
  simp only [partRows76,List.length_append,MatrixRowBlocks.rows_weight_append,stats4960.1,stats4960.2,stats4961.1,stats4961.2,stats4962.1,stats4962.2,stats4963.1,stats4963.2,stats4964.1,stats4964.2,stats4965.1,stats4965.2,stats4966.1,stats4966.2,stats4967.1,stats4967.2,stats4968.1,stats4968.2,stats4969.1,stats4969.2,stats4970.1,stats4970.2,stats4971.1,stats4971.2,stats4972.1,stats4972.2,stats4973.1,stats4973.2,stats4974.1,stats4974.2,stats4975.1,stats4975.2,stats4976.1,stats4976.2,stats4977.1,stats4977.2,stats4978.1,stats4978.2,stats4979.1,stats4979.2,stats4980.1,stats4980.2,stats4981.1,stats4981.2,stats4982.1,stats4982.2,stats4983.1,stats4983.2,stats4984.1,stats4984.2,stats4985.1,stats4985.2,stats4986.1,stats4986.2,stats4987.1,stats4987.2,stats4988.1,stats4988.2,stats4989.1,stats4989.2,stats4990.1,stats4990.2,stats4991.1,stats4991.2,stats4992.1,stats4992.2,stats4993.1,stats4993.2,stats4994.1,stats4994.2,stats4995.1,stats4995.2,stats4996.1,stats4996.2,stats4997.1,stats4997.2,stats4998.1,stats4998.2,stats4999.1,stats4999.2,stats5000.1,stats5000.2,stats5001.1,stats5001.2,stats5002.1,stats5002.2,stats5003.1,stats5003.2,stats5004.1,stats5004.2,stats5005.1,stats5005.2,stats5006.1,stats5006.2,stats5007.1,stats5007.2,stats5008.1,stats5008.2,stats5009.1,stats5009.2,stats5010.1,stats5010.2,stats5011.1,stats5011.2,stats5012.1,stats5012.2,stats5013.1,stats5013.2,stats5014.1,stats5014.2,stats5015.1,stats5015.2,stats5016.1,stats5016.2,stats5017.1,stats5017.2,stats5018.1,stats5018.2,stats5019.1,stats5019.2,stats5020.1,stats5020.2,stats5021.1,stats5021.2,stats5022.1,stats5022.2,stats5023.1,stats5023.2]
  decide
end PairedPathRoundCheckedRows
