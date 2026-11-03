import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData170
import AuthenticatedBranchRoundInstructionMatrixData171
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10934 : actualRows10934=WordField.canonicalRows actualModulus 10934 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10934 : actualRows10934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10934=2892 := by core033_kernel_decide
theorem rows10935 : actualRows10935=WordField.canonicalRows actualModulus 10935 (.badd 10933 10934) := by core033_kernel_decide
theorem stats10935 : actualRows10935.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10935=5388 := by core033_kernel_decide
theorem rows10936 : actualRows10936=WordField.canonicalRows actualModulus 10936 (.bnot 10935) := by core033_kernel_decide
theorem stats10936 : actualRows10936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10936=6276 := by core033_kernel_decide
theorem rows10937 : actualRows10937=WordField.canonicalRows actualModulus 10937 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10937 : actualRows10937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10937=2820 := by core033_kernel_decide
theorem rows10938 : actualRows10938=WordField.canonicalRows actualModulus 10938 (.band 10936 10937) := by core033_kernel_decide
theorem stats10938 : actualRows10938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10938=5124 := by core033_kernel_decide
theorem rows10939 : actualRows10939=WordField.canonicalRows actualModulus 10939 (.bxor 10932 10938) := by core033_kernel_decide
theorem stats10939 : actualRows10939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10939=7428 := by core033_kernel_decide
theorem rows10940 : actualRows10940=WordField.canonicalRows actualModulus 10940 (.bnot 10609) := by core033_kernel_decide
theorem stats10940 : actualRows10940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10940=6276 := by core033_kernel_decide
theorem rows10941 : actualRows10941=WordField.canonicalRows actualModulus 10941 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10941 : actualRows10941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10941=2892 := by core033_kernel_decide
theorem rows10942 : actualRows10942=WordField.canonicalRows actualModulus 10942 (.badd 10940 10941) := by core033_kernel_decide
theorem stats10942 : actualRows10942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10942=5388 := by core033_kernel_decide
theorem rows10943 : actualRows10943=WordField.canonicalRows actualModulus 10943 (.band 10942 1103) := by core033_kernel_decide
theorem stats10943 : actualRows10943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10943=5124 := by core033_kernel_decide
theorem rows10944 : actualRows10944=WordField.canonicalRows actualModulus 10944 (.bnot 10609) := by core033_kernel_decide
theorem stats10944 : actualRows10944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10944=6276 := by core033_kernel_decide
theorem rows10945 : actualRows10945=WordField.canonicalRows actualModulus 10945 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10945 : actualRows10945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10945=2892 := by core033_kernel_decide
theorem rows10946 : actualRows10946=WordField.canonicalRows actualModulus 10946 (.badd 10944 10945) := by core033_kernel_decide
theorem stats10946 : actualRows10946.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10946=5388 := by core033_kernel_decide
theorem rows10947 : actualRows10947=WordField.canonicalRows actualModulus 10947 (.bnot 10946) := by core033_kernel_decide
theorem stats10947 : actualRows10947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10947=6276 := by core033_kernel_decide
theorem rows10948 : actualRows10948=WordField.canonicalRows actualModulus 10948 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10948 : actualRows10948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10948=2820 := by core033_kernel_decide
theorem rows10949 : actualRows10949=WordField.canonicalRows actualModulus 10949 (.band 10947 10948) := by core033_kernel_decide
theorem stats10949 : actualRows10949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10949=5124 := by core033_kernel_decide
theorem rows10950 : actualRows10950=WordField.canonicalRows actualModulus 10950 (.bxor 10943 10949) := by core033_kernel_decide
theorem stats10950 : actualRows10950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10950=7428 := by core033_kernel_decide
theorem rows10951 : actualRows10951=WordField.canonicalRows actualModulus 10951 (.bnot 10609) := by core033_kernel_decide
theorem stats10951 : actualRows10951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10951=6276 := by core033_kernel_decide
theorem rows10952 : actualRows10952=WordField.canonicalRows actualModulus 10952 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10952 : actualRows10952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10952=2892 := by core033_kernel_decide
theorem rows10953 : actualRows10953=WordField.canonicalRows actualModulus 10953 (.badd 10951 10952) := by core033_kernel_decide
theorem stats10953 : actualRows10953.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10953=5388 := by core033_kernel_decide
theorem rows10954 : actualRows10954=WordField.canonicalRows actualModulus 10954 (.band 10953 1123) := by core033_kernel_decide
theorem stats10954 : actualRows10954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10954=5124 := by core033_kernel_decide
theorem rows10955 : actualRows10955=WordField.canonicalRows actualModulus 10955 (.bnot 10609) := by core033_kernel_decide
theorem stats10955 : actualRows10955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10955=6276 := by core033_kernel_decide
theorem rows10956 : actualRows10956=WordField.canonicalRows actualModulus 10956 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10956 : actualRows10956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10956=2892 := by core033_kernel_decide
theorem rows10957 : actualRows10957=WordField.canonicalRows actualModulus 10957 (.badd 10955 10956) := by core033_kernel_decide
theorem stats10957 : actualRows10957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10957=5388 := by core033_kernel_decide
theorem rows10958 : actualRows10958=WordField.canonicalRows actualModulus 10958 (.bnot 10957) := by core033_kernel_decide
theorem stats10958 : actualRows10958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10958=6276 := by core033_kernel_decide
theorem rows10959 : actualRows10959=WordField.canonicalRows actualModulus 10959 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10959 : actualRows10959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10959=2820 := by core033_kernel_decide
theorem rows10960 : actualRows10960=WordField.canonicalRows actualModulus 10960 (.band 10958 10959) := by core033_kernel_decide
theorem stats10960 : actualRows10960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10960=5124 := by core033_kernel_decide
theorem rows10961 : actualRows10961=WordField.canonicalRows actualModulus 10961 (.bxor 10954 10960) := by core033_kernel_decide
theorem stats10961 : actualRows10961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10961=7428 := by core033_kernel_decide
theorem rows10962 : actualRows10962=WordField.canonicalRows actualModulus 10962 (.bnot 10609) := by core033_kernel_decide
theorem stats10962 : actualRows10962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10962=6276 := by core033_kernel_decide
theorem rows10963 : actualRows10963=WordField.canonicalRows actualModulus 10963 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10963 : actualRows10963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10963=2892 := by core033_kernel_decide
theorem rows10964 : actualRows10964=WordField.canonicalRows actualModulus 10964 (.badd 10962 10963) := by core033_kernel_decide
theorem stats10964 : actualRows10964.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10964=5388 := by core033_kernel_decide
theorem rows10965 : actualRows10965=WordField.canonicalRows actualModulus 10965 (.band 10964 1134) := by core033_kernel_decide
theorem stats10965 : actualRows10965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10965=5124 := by core033_kernel_decide
theorem rows10966 : actualRows10966=WordField.canonicalRows actualModulus 10966 (.bnot 10609) := by core033_kernel_decide
theorem stats10966 : actualRows10966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10966=6276 := by core033_kernel_decide
theorem rows10967 : actualRows10967=WordField.canonicalRows actualModulus 10967 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10967 : actualRows10967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10967=2892 := by core033_kernel_decide
theorem rows10968 : actualRows10968=WordField.canonicalRows actualModulus 10968 (.badd 10966 10967) := by core033_kernel_decide
theorem stats10968 : actualRows10968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10968=5388 := by core033_kernel_decide
theorem rows10969 : actualRows10969=WordField.canonicalRows actualModulus 10969 (.bnot 10968) := by core033_kernel_decide
theorem stats10969 : actualRows10969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10969=6276 := by core033_kernel_decide
theorem rows10970 : actualRows10970=WordField.canonicalRows actualModulus 10970 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10970 : actualRows10970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10970=2820 := by core033_kernel_decide
theorem rows10971 : actualRows10971=WordField.canonicalRows actualModulus 10971 (.band 10969 10970) := by core033_kernel_decide
theorem stats10971 : actualRows10971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10971=5124 := by core033_kernel_decide
theorem rows10972 : actualRows10972=WordField.canonicalRows actualModulus 10972 (.bxor 10965 10971) := by core033_kernel_decide
theorem stats10972 : actualRows10972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10972=7428 := by core033_kernel_decide
theorem rows10973 : actualRows10973=WordField.canonicalRows actualModulus 10973 (.bnot 10609) := by core033_kernel_decide
theorem stats10973 : actualRows10973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10973=6276 := by core033_kernel_decide
theorem rows10974 : actualRows10974=WordField.canonicalRows actualModulus 10974 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10974 : actualRows10974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10974=2892 := by core033_kernel_decide
theorem rows10975 : actualRows10975=WordField.canonicalRows actualModulus 10975 (.badd 10973 10974) := by core033_kernel_decide
theorem stats10975 : actualRows10975.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10975=5388 := by core033_kernel_decide
theorem rows10976 : actualRows10976=WordField.canonicalRows actualModulus 10976 (.band 10975 1154) := by core033_kernel_decide
theorem stats10976 : actualRows10976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10976=5124 := by core033_kernel_decide
theorem rows10977 : actualRows10977=WordField.canonicalRows actualModulus 10977 (.bnot 10609) := by core033_kernel_decide
theorem stats10977 : actualRows10977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10977=6276 := by core033_kernel_decide
theorem rows10978 : actualRows10978=WordField.canonicalRows actualModulus 10978 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10978 : actualRows10978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10978=2892 := by core033_kernel_decide
theorem rows10979 : actualRows10979=WordField.canonicalRows actualModulus 10979 (.badd 10977 10978) := by core033_kernel_decide
theorem stats10979 : actualRows10979.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10979=5388 := by core033_kernel_decide
theorem rows10980 : actualRows10980=WordField.canonicalRows actualModulus 10980 (.bnot 10979) := by core033_kernel_decide
theorem stats10980 : actualRows10980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10980=6276 := by core033_kernel_decide
theorem rows10981 : actualRows10981=WordField.canonicalRows actualModulus 10981 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10981 : actualRows10981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10981=2820 := by core033_kernel_decide
theorem rows10982 : actualRows10982=WordField.canonicalRows actualModulus 10982 (.band 10980 10981) := by core033_kernel_decide
theorem stats10982 : actualRows10982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10982=5124 := by core033_kernel_decide
theorem rows10983 : actualRows10983=WordField.canonicalRows actualModulus 10983 (.bxor 10976 10982) := by core033_kernel_decide
theorem stats10983 : actualRows10983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10983=7428 := by core033_kernel_decide
theorem rows10984 : actualRows10984=WordField.canonicalRows actualModulus 10984 (.bnot 10609) := by core033_kernel_decide
theorem stats10984 : actualRows10984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10984=6276 := by core033_kernel_decide
theorem rows10985 : actualRows10985=WordField.canonicalRows actualModulus 10985 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10985 : actualRows10985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10985=2892 := by core033_kernel_decide
theorem rows10986 : actualRows10986=WordField.canonicalRows actualModulus 10986 (.badd 10984 10985) := by core033_kernel_decide
theorem stats10986 : actualRows10986.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10986=5388 := by core033_kernel_decide
theorem rows10987 : actualRows10987=WordField.canonicalRows actualModulus 10987 (.band 10986 1165) := by core033_kernel_decide
theorem stats10987 : actualRows10987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10987=5124 := by core033_kernel_decide
theorem rows10988 : actualRows10988=WordField.canonicalRows actualModulus 10988 (.bnot 10609) := by core033_kernel_decide
theorem stats10988 : actualRows10988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10988=6276 := by core033_kernel_decide
theorem rows10989 : actualRows10989=WordField.canonicalRows actualModulus 10989 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10989 : actualRows10989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10989=2892 := by core033_kernel_decide
theorem rows10990 : actualRows10990=WordField.canonicalRows actualModulus 10990 (.badd 10988 10989) := by core033_kernel_decide
theorem stats10990 : actualRows10990.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10990=5388 := by core033_kernel_decide
theorem rows10991 : actualRows10991=WordField.canonicalRows actualModulus 10991 (.bnot 10990) := by core033_kernel_decide
theorem stats10991 : actualRows10991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10991=6276 := by core033_kernel_decide
theorem rows10992 : actualRows10992=WordField.canonicalRows actualModulus 10992 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10992 : actualRows10992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10992=2820 := by core033_kernel_decide
theorem rows10993 : actualRows10993=WordField.canonicalRows actualModulus 10993 (.band 10991 10992) := by core033_kernel_decide
theorem stats10993 : actualRows10993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10993=5124 := by core033_kernel_decide
theorem rows10994 : actualRows10994=WordField.canonicalRows actualModulus 10994 (.bxor 10987 10993) := by core033_kernel_decide
theorem stats10994 : actualRows10994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10994=7428 := by core033_kernel_decide
theorem rows10995 : actualRows10995=WordField.canonicalRows actualModulus 10995 (.bnot 10609) := by core033_kernel_decide
theorem stats10995 : actualRows10995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10995=6276 := by core033_kernel_decide
theorem rows10996 : actualRows10996=WordField.canonicalRows actualModulus 10996 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10996 : actualRows10996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10996=2892 := by core033_kernel_decide
theorem rows10997 : actualRows10997=WordField.canonicalRows actualModulus 10997 (.badd 10995 10996) := by core033_kernel_decide
theorem stats10997 : actualRows10997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10997=5388 := by core033_kernel_decide
def partRows169 : List R1CS.Row := actualRows10934++actualRows10935++actualRows10936++actualRows10937++actualRows10938++actualRows10939++actualRows10940++actualRows10941++actualRows10942++actualRows10943++actualRows10944++actualRows10945++actualRows10946++actualRows10947++actualRows10948++actualRows10949++actualRows10950++actualRows10951++actualRows10952++actualRows10953++actualRows10954++actualRows10955++actualRows10956++actualRows10957++actualRows10958++actualRows10959++actualRows10960++actualRows10961++actualRows10962++actualRows10963++actualRows10964++actualRows10965++actualRows10966++actualRows10967++actualRows10968++actualRows10969++actualRows10970++actualRows10971++actualRows10972++actualRows10973++actualRows10974++actualRows10975++actualRows10976++actualRows10977++actualRows10978++actualRows10979++actualRows10980++actualRows10981++actualRows10982++actualRows10983++actualRows10984++actualRows10985++actualRows10986++actualRows10987++actualRows10988++actualRows10989++actualRows10990++actualRows10991++actualRows10992++actualRows10993++actualRows10994++actualRows10995++actualRows10996++actualRows10997
def partOps169 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 10933 10934,.bnot 10935,.literal (BitVec.ofNat 32 0),.band 10936 10937,.bxor 10932 10938,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10940 10941,.band 10942 1103,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10944 10945,.bnot 10946,.literal (BitVec.ofNat 32 0),.band 10947 10948,.bxor 10943 10949,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10951 10952,.band 10953 1123,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10955 10956,.bnot 10957,.literal (BitVec.ofNat 32 0),.band 10958 10959,.bxor 10954 10960,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10962 10963,.band 10964 1134,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10966 10967,.bnot 10968,.literal (BitVec.ofNat 32 0),.band 10969 10970,.bxor 10965 10971,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10973 10974,.band 10975 1154,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10977 10978,.bnot 10979,.literal (BitVec.ofNat 32 0),.band 10980 10981,.bxor 10976 10982,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10984 10985,.band 10986 1165,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10988 10989,.bnot 10990,.literal (BitVec.ofNat 32 0),.band 10991 10992,.bxor 10987 10993,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10995 10996]
theorem partExact169 : partRows169=WordField.rows actualModulus 10934 partOps169 := by
  simp only [partRows169,partOps169,WordField.rows,rows10934,rows10935,rows10936,rows10937,rows10938,rows10939,rows10940,rows10941,rows10942,rows10943,rows10944,rows10945,rows10946,rows10947,rows10948,rows10949,rows10950,rows10951,rows10952,rows10953,rows10954,rows10955,rows10956,rows10957,rows10958,rows10959,rows10960,rows10961,rows10962,rows10963,rows10964,rows10965,rows10966,rows10967,rows10968,rows10969,rows10970,rows10971,rows10972,rows10973,rows10974,rows10975,rows10976,rows10977,rows10978,rows10979,rows10980,rows10981,rows10982,rows10983,rows10984,rows10985,rows10986,rows10987,rows10988,rows10989,rows10990,rows10991,rows10992,rows10993,rows10994,rows10995,rows10996,rows10997,List.append_assoc,List.append_nil]
theorem partLength169 : partOps169.length=64 := by decide
theorem partStats169 : partRows169.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows169=323904 := by
  simp only [partRows169,List.length_append,MatrixRowBlocks.rows_weight_append,stats10934.1,stats10934.2,stats10935.1,stats10935.2,stats10936.1,stats10936.2,stats10937.1,stats10937.2,stats10938.1,stats10938.2,stats10939.1,stats10939.2,stats10940.1,stats10940.2,stats10941.1,stats10941.2,stats10942.1,stats10942.2,stats10943.1,stats10943.2,stats10944.1,stats10944.2,stats10945.1,stats10945.2,stats10946.1,stats10946.2,stats10947.1,stats10947.2,stats10948.1,stats10948.2,stats10949.1,stats10949.2,stats10950.1,stats10950.2,stats10951.1,stats10951.2,stats10952.1,stats10952.2,stats10953.1,stats10953.2,stats10954.1,stats10954.2,stats10955.1,stats10955.2,stats10956.1,stats10956.2,stats10957.1,stats10957.2,stats10958.1,stats10958.2,stats10959.1,stats10959.2,stats10960.1,stats10960.2,stats10961.1,stats10961.2,stats10962.1,stats10962.2,stats10963.1,stats10963.2,stats10964.1,stats10964.2,stats10965.1,stats10965.2,stats10966.1,stats10966.2,stats10967.1,stats10967.2,stats10968.1,stats10968.2,stats10969.1,stats10969.2,stats10970.1,stats10970.2,stats10971.1,stats10971.2,stats10972.1,stats10972.2,stats10973.1,stats10973.2,stats10974.1,stats10974.2,stats10975.1,stats10975.2,stats10976.1,stats10976.2,stats10977.1,stats10977.2,stats10978.1,stats10978.2,stats10979.1,stats10979.2,stats10980.1,stats10980.2,stats10981.1,stats10981.2,stats10982.1,stats10982.2,stats10983.1,stats10983.2,stats10984.1,stats10984.2,stats10985.1,stats10985.2,stats10986.1,stats10986.2,stats10987.1,stats10987.2,stats10988.1,stats10988.2,stats10989.1,stats10989.2,stats10990.1,stats10990.2,stats10991.1,stats10991.2,stats10992.1,stats10992.2,stats10993.1,stats10993.2,stats10994.1,stats10994.2,stats10995.1,stats10995.2,stats10996.1,stats10996.2,stats10997.1,stats10997.2]
  decide
end AuthenticatedBranchRoundCheckedRows
