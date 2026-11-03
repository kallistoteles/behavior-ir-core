import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData170
import PathRoundDispatchInstructionMatrixData171
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10923 : actualRows10923=WordField.canonicalRows actualModulus 10923 (.bnot 10922) := by core033_kernel_decide
theorem stats10923 : actualRows10923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10923=6276 := by core033_kernel_decide
theorem rows10924 : actualRows10924=WordField.canonicalRows actualModulus 10924 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10924 : actualRows10924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10924=2892 := by core033_kernel_decide
theorem rows10925 : actualRows10925=WordField.canonicalRows actualModulus 10925 (.badd 10923 10924) := by core033_kernel_decide
theorem stats10925 : actualRows10925.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10925=5388 := by core033_kernel_decide
theorem rows10926 : actualRows10926=WordField.canonicalRows actualModulus 10926 (.band 10925 9900) := by core033_kernel_decide
theorem stats10926 : actualRows10926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10926=5124 := by core033_kernel_decide
theorem rows10927 : actualRows10927=WordField.canonicalRows actualModulus 10927 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10927 : actualRows10927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10927=2964 := by core033_kernel_decide
theorem rows10928 : actualRows10928=WordField.canonicalRows actualModulus 10928 (.bxor 0 10927) := by core033_kernel_decide
theorem stats10928 : actualRows10928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10928=7428 := by core033_kernel_decide
theorem rows10929 : actualRows10929=WordField.canonicalRows actualModulus 10929 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10929 : actualRows10929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10929=2820 := by core033_kernel_decide
theorem rows10930 : actualRows10930=WordField.canonicalRows actualModulus 10930 (.bnot 10929) := by core033_kernel_decide
theorem stats10930 : actualRows10930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10930=6276 := by core033_kernel_decide
theorem rows10931 : actualRows10931=WordField.canonicalRows actualModulus 10931 (.band 10928 10930) := by core033_kernel_decide
theorem stats10931 : actualRows10931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10931=5124 := by core033_kernel_decide
theorem rows10932 : actualRows10932=WordField.canonicalRows actualModulus 10932 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10932 : actualRows10932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10932=2964 := by core033_kernel_decide
theorem rows10933 : actualRows10933=WordField.canonicalRows actualModulus 10933 (.bxor 0 10932) := by core033_kernel_decide
theorem stats10933 : actualRows10933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10933=7428 := by core033_kernel_decide
theorem rows10934 : actualRows10934=WordField.canonicalRows actualModulus 10934 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10934 : actualRows10934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10934=2820 := by core033_kernel_decide
theorem rows10935 : actualRows10935=WordField.canonicalRows actualModulus 10935 (.bnot 10934) := by core033_kernel_decide
theorem stats10935 : actualRows10935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10935=6276 := by core033_kernel_decide
theorem rows10936 : actualRows10936=WordField.canonicalRows actualModulus 10936 (.bxor 10933 10935) := by core033_kernel_decide
theorem stats10936 : actualRows10936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10936=7428 := by core033_kernel_decide
theorem rows10937 : actualRows10937=WordField.canonicalRows actualModulus 10937 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10937 : actualRows10937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10937=2964 := by core033_kernel_decide
theorem rows10938 : actualRows10938=WordField.canonicalRows actualModulus 10938 (.bxor 0 10937) := by core033_kernel_decide
theorem stats10938 : actualRows10938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10938=7428 := by core033_kernel_decide
theorem rows10939 : actualRows10939=WordField.canonicalRows actualModulus 10939 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10939 : actualRows10939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10939=2820 := by core033_kernel_decide
theorem rows10940 : actualRows10940=WordField.canonicalRows actualModulus 10940 (.bnot 10939) := by core033_kernel_decide
theorem stats10940 : actualRows10940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10940=6276 := by core033_kernel_decide
theorem rows10941 : actualRows10941=WordField.canonicalRows actualModulus 10941 (.badd 10938 10940) := by core033_kernel_decide
theorem stats10941 : actualRows10941.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10941=5388 := by core033_kernel_decide
theorem rows10942 : actualRows10942=WordField.canonicalRows actualModulus 10942 (.bnot 10941) := by core033_kernel_decide
theorem stats10942 : actualRows10942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10942=6276 := by core033_kernel_decide
theorem rows10943 : actualRows10943=WordField.canonicalRows actualModulus 10943 (.band 10936 10942) := by core033_kernel_decide
theorem stats10943 : actualRows10943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10943=5124 := by core033_kernel_decide
theorem rows10944 : actualRows10944=WordField.canonicalRows actualModulus 10944 (.bxor 10931 10943) := by core033_kernel_decide
theorem stats10944 : actualRows10944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10944=7428 := by core033_kernel_decide
theorem rows10945 : actualRows10945=WordField.canonicalRows actualModulus 10945 (.shr 10944 31) := by core033_kernel_decide
theorem stats10945 : actualRows10945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10945=2892 := by core033_kernel_decide
theorem rows10946 : actualRows10946=WordField.canonicalRows actualModulus 10946 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10946 : actualRows10946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10946=2892 := by core033_kernel_decide
theorem rows10947 : actualRows10947=WordField.canonicalRows actualModulus 10947 (.bxor 10945 10946) := by core033_kernel_decide
theorem stats10947 : actualRows10947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10947=7428 := by core033_kernel_decide
theorem rows10948 : actualRows10948=WordField.canonicalRows actualModulus 10948 (.bnot 10947) := by core033_kernel_decide
theorem stats10948 : actualRows10948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10948=6276 := by core033_kernel_decide
theorem rows10949 : actualRows10949=WordField.canonicalRows actualModulus 10949 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10949 : actualRows10949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10949=2892 := by core033_kernel_decide
theorem rows10950 : actualRows10950=WordField.canonicalRows actualModulus 10950 (.badd 10948 10949) := by core033_kernel_decide
theorem stats10950 : actualRows10950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10950=5388 := by core033_kernel_decide
theorem rows10951 : actualRows10951=WordField.canonicalRows actualModulus 10951 (.bnot 10950) := by core033_kernel_decide
theorem stats10951 : actualRows10951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10951=6276 := by core033_kernel_decide
theorem rows10952 : actualRows10952=WordField.canonicalRows actualModulus 10952 (.band 10951 239) := by core033_kernel_decide
theorem stats10952 : actualRows10952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10952=5124 := by core033_kernel_decide
theorem rows10953 : actualRows10953=WordField.canonicalRows actualModulus 10953 (.bxor 10926 10952) := by core033_kernel_decide
theorem stats10953 : actualRows10953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10953=7428 := by core033_kernel_decide
theorem rows10954 : actualRows10954=WordField.canonicalRows actualModulus 10954 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10954 : actualRows10954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10954=2964 := by core033_kernel_decide
theorem rows10955 : actualRows10955=WordField.canonicalRows actualModulus 10955 (.bxor 0 10954) := by core033_kernel_decide
theorem stats10955 : actualRows10955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10955=7428 := by core033_kernel_decide
theorem rows10956 : actualRows10956=WordField.canonicalRows actualModulus 10956 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10956 : actualRows10956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10956=2820 := by core033_kernel_decide
theorem rows10957 : actualRows10957=WordField.canonicalRows actualModulus 10957 (.bnot 10956) := by core033_kernel_decide
theorem stats10957 : actualRows10957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10957=6276 := by core033_kernel_decide
theorem rows10958 : actualRows10958=WordField.canonicalRows actualModulus 10958 (.band 10955 10957) := by core033_kernel_decide
theorem stats10958 : actualRows10958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10958=5124 := by core033_kernel_decide
theorem rows10959 : actualRows10959=WordField.canonicalRows actualModulus 10959 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10959 : actualRows10959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10959=2964 := by core033_kernel_decide
theorem rows10960 : actualRows10960=WordField.canonicalRows actualModulus 10960 (.bxor 0 10959) := by core033_kernel_decide
theorem stats10960 : actualRows10960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10960=7428 := by core033_kernel_decide
theorem rows10961 : actualRows10961=WordField.canonicalRows actualModulus 10961 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10961 : actualRows10961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10961=2820 := by core033_kernel_decide
theorem rows10962 : actualRows10962=WordField.canonicalRows actualModulus 10962 (.bnot 10961) := by core033_kernel_decide
theorem stats10962 : actualRows10962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10962=6276 := by core033_kernel_decide
theorem rows10963 : actualRows10963=WordField.canonicalRows actualModulus 10963 (.bxor 10960 10962) := by core033_kernel_decide
theorem stats10963 : actualRows10963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10963=7428 := by core033_kernel_decide
theorem rows10964 : actualRows10964=WordField.canonicalRows actualModulus 10964 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10964 : actualRows10964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10964=2964 := by core033_kernel_decide
theorem rows10965 : actualRows10965=WordField.canonicalRows actualModulus 10965 (.bxor 0 10964) := by core033_kernel_decide
theorem stats10965 : actualRows10965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10965=7428 := by core033_kernel_decide
theorem rows10966 : actualRows10966=WordField.canonicalRows actualModulus 10966 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10966 : actualRows10966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10966=2820 := by core033_kernel_decide
theorem rows10967 : actualRows10967=WordField.canonicalRows actualModulus 10967 (.bnot 10966) := by core033_kernel_decide
theorem stats10967 : actualRows10967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10967=6276 := by core033_kernel_decide
theorem rows10968 : actualRows10968=WordField.canonicalRows actualModulus 10968 (.badd 10965 10967) := by core033_kernel_decide
theorem stats10968 : actualRows10968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10968=5388 := by core033_kernel_decide
theorem rows10969 : actualRows10969=WordField.canonicalRows actualModulus 10969 (.bnot 10968) := by core033_kernel_decide
theorem stats10969 : actualRows10969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10969=6276 := by core033_kernel_decide
theorem rows10970 : actualRows10970=WordField.canonicalRows actualModulus 10970 (.band 10963 10969) := by core033_kernel_decide
theorem stats10970 : actualRows10970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10970=5124 := by core033_kernel_decide
theorem rows10971 : actualRows10971=WordField.canonicalRows actualModulus 10971 (.bxor 10958 10970) := by core033_kernel_decide
theorem stats10971 : actualRows10971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10971=7428 := by core033_kernel_decide
theorem rows10972 : actualRows10972=WordField.canonicalRows actualModulus 10972 (.shr 10971 31) := by core033_kernel_decide
theorem stats10972 : actualRows10972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10972=2892 := by core033_kernel_decide
theorem rows10973 : actualRows10973=WordField.canonicalRows actualModulus 10973 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10973 : actualRows10973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10973=2892 := by core033_kernel_decide
theorem rows10974 : actualRows10974=WordField.canonicalRows actualModulus 10974 (.bxor 10972 10973) := by core033_kernel_decide
theorem stats10974 : actualRows10974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10974=7428 := by core033_kernel_decide
theorem rows10975 : actualRows10975=WordField.canonicalRows actualModulus 10975 (.bnot 10974) := by core033_kernel_decide
theorem stats10975 : actualRows10975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10975=6276 := by core033_kernel_decide
theorem rows10976 : actualRows10976=WordField.canonicalRows actualModulus 10976 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10976 : actualRows10976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10976=2892 := by core033_kernel_decide
theorem rows10977 : actualRows10977=WordField.canonicalRows actualModulus 10977 (.badd 10975 10976) := by core033_kernel_decide
theorem stats10977 : actualRows10977.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10977=5388 := by core033_kernel_decide
theorem rows10978 : actualRows10978=WordField.canonicalRows actualModulus 10978 (.band 10977 9907) := by core033_kernel_decide
theorem stats10978 : actualRows10978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10978=5124 := by core033_kernel_decide
theorem rows10979 : actualRows10979=WordField.canonicalRows actualModulus 10979 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10979 : actualRows10979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10979=2964 := by core033_kernel_decide
theorem rows10980 : actualRows10980=WordField.canonicalRows actualModulus 10980 (.bxor 0 10979) := by core033_kernel_decide
theorem stats10980 : actualRows10980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10980=7428 := by core033_kernel_decide
theorem rows10981 : actualRows10981=WordField.canonicalRows actualModulus 10981 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10981 : actualRows10981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10981=2820 := by core033_kernel_decide
theorem rows10982 : actualRows10982=WordField.canonicalRows actualModulus 10982 (.bnot 10981) := by core033_kernel_decide
theorem stats10982 : actualRows10982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10982=6276 := by core033_kernel_decide
theorem rows10983 : actualRows10983=WordField.canonicalRows actualModulus 10983 (.band 10980 10982) := by core033_kernel_decide
theorem stats10983 : actualRows10983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10983=5124 := by core033_kernel_decide
theorem rows10984 : actualRows10984=WordField.canonicalRows actualModulus 10984 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10984 : actualRows10984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10984=2964 := by core033_kernel_decide
theorem rows10985 : actualRows10985=WordField.canonicalRows actualModulus 10985 (.bxor 0 10984) := by core033_kernel_decide
theorem stats10985 : actualRows10985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10985=7428 := by core033_kernel_decide
theorem rows10986 : actualRows10986=WordField.canonicalRows actualModulus 10986 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10986 : actualRows10986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10986=2820 := by core033_kernel_decide
def partRows170 : List R1CS.Row := actualRows10923++actualRows10924++actualRows10925++actualRows10926++actualRows10927++actualRows10928++actualRows10929++actualRows10930++actualRows10931++actualRows10932++actualRows10933++actualRows10934++actualRows10935++actualRows10936++actualRows10937++actualRows10938++actualRows10939++actualRows10940++actualRows10941++actualRows10942++actualRows10943++actualRows10944++actualRows10945++actualRows10946++actualRows10947++actualRows10948++actualRows10949++actualRows10950++actualRows10951++actualRows10952++actualRows10953++actualRows10954++actualRows10955++actualRows10956++actualRows10957++actualRows10958++actualRows10959++actualRows10960++actualRows10961++actualRows10962++actualRows10963++actualRows10964++actualRows10965++actualRows10966++actualRows10967++actualRows10968++actualRows10969++actualRows10970++actualRows10971++actualRows10972++actualRows10973++actualRows10974++actualRows10975++actualRows10976++actualRows10977++actualRows10978++actualRows10979++actualRows10980++actualRows10981++actualRows10982++actualRows10983++actualRows10984++actualRows10985++actualRows10986
def partOps170 : List WordIR.Op := [.bnot 10922,.literal (BitVec.ofNat 32 1),.badd 10923 10924,.band 10925 9900,.literal (BitVec.ofNat 32 3),.bxor 0 10927,.literal (BitVec.ofNat 32 0),.bnot 10929,.band 10928 10930,.literal (BitVec.ofNat 32 3),.bxor 0 10932,.literal (BitVec.ofNat 32 0),.bnot 10934,.bxor 10933 10935,.literal (BitVec.ofNat 32 3),.bxor 0 10937,.literal (BitVec.ofNat 32 0),.bnot 10939,.badd 10938 10940,.bnot 10941,.band 10936 10942,.bxor 10931 10943,.shr 10944 31,.literal (BitVec.ofNat 32 1),.bxor 10945 10946,.bnot 10947,.literal (BitVec.ofNat 32 1),.badd 10948 10949,.bnot 10950,.band 10951 239,.bxor 10926 10952,.literal (BitVec.ofNat 32 3),.bxor 0 10954,.literal (BitVec.ofNat 32 0),.bnot 10956,.band 10955 10957,.literal (BitVec.ofNat 32 3),.bxor 0 10959,.literal (BitVec.ofNat 32 0),.bnot 10961,.bxor 10960 10962,.literal (BitVec.ofNat 32 3),.bxor 0 10964,.literal (BitVec.ofNat 32 0),.bnot 10966,.badd 10965 10967,.bnot 10968,.band 10963 10969,.bxor 10958 10970,.shr 10971 31,.literal (BitVec.ofNat 32 1),.bxor 10972 10973,.bnot 10974,.literal (BitVec.ofNat 32 1),.badd 10975 10976,.band 10977 9907,.literal (BitVec.ofNat 32 3),.bxor 0 10979,.literal (BitVec.ofNat 32 0),.bnot 10981,.band 10980 10982,.literal (BitVec.ofNat 32 3),.bxor 0 10984,.literal (BitVec.ofNat 32 0)]
theorem partExact170 : partRows170=WordField.rows actualModulus 10923 partOps170 := by
  simp only [partRows170,partOps170,WordField.rows,rows10923,rows10924,rows10925,rows10926,rows10927,rows10928,rows10929,rows10930,rows10931,rows10932,rows10933,rows10934,rows10935,rows10936,rows10937,rows10938,rows10939,rows10940,rows10941,rows10942,rows10943,rows10944,rows10945,rows10946,rows10947,rows10948,rows10949,rows10950,rows10951,rows10952,rows10953,rows10954,rows10955,rows10956,rows10957,rows10958,rows10959,rows10960,rows10961,rows10962,rows10963,rows10964,rows10965,rows10966,rows10967,rows10968,rows10969,rows10970,rows10971,rows10972,rows10973,rows10974,rows10975,rows10976,rows10977,rows10978,rows10979,rows10980,rows10981,rows10982,rows10983,rows10984,rows10985,rows10986,List.append_assoc,List.append_nil]
theorem partLength170 : partOps170.length=64 := by decide
theorem partStats170 : partRows170.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows170=327456 := by
  simp only [partRows170,List.length_append,MatrixRowBlocks.rows_weight_append,stats10923.1,stats10923.2,stats10924.1,stats10924.2,stats10925.1,stats10925.2,stats10926.1,stats10926.2,stats10927.1,stats10927.2,stats10928.1,stats10928.2,stats10929.1,stats10929.2,stats10930.1,stats10930.2,stats10931.1,stats10931.2,stats10932.1,stats10932.2,stats10933.1,stats10933.2,stats10934.1,stats10934.2,stats10935.1,stats10935.2,stats10936.1,stats10936.2,stats10937.1,stats10937.2,stats10938.1,stats10938.2,stats10939.1,stats10939.2,stats10940.1,stats10940.2,stats10941.1,stats10941.2,stats10942.1,stats10942.2,stats10943.1,stats10943.2,stats10944.1,stats10944.2,stats10945.1,stats10945.2,stats10946.1,stats10946.2,stats10947.1,stats10947.2,stats10948.1,stats10948.2,stats10949.1,stats10949.2,stats10950.1,stats10950.2,stats10951.1,stats10951.2,stats10952.1,stats10952.2,stats10953.1,stats10953.2,stats10954.1,stats10954.2,stats10955.1,stats10955.2,stats10956.1,stats10956.2,stats10957.1,stats10957.2,stats10958.1,stats10958.2,stats10959.1,stats10959.2,stats10960.1,stats10960.2,stats10961.1,stats10961.2,stats10962.1,stats10962.2,stats10963.1,stats10963.2,stats10964.1,stats10964.2,stats10965.1,stats10965.2,stats10966.1,stats10966.2,stats10967.1,stats10967.2,stats10968.1,stats10968.2,stats10969.1,stats10969.2,stats10970.1,stats10970.2,stats10971.1,stats10971.2,stats10972.1,stats10972.2,stats10973.1,stats10973.2,stats10974.1,stats10974.2,stats10975.1,stats10975.2,stats10976.1,stats10976.2,stats10977.1,stats10977.2,stats10978.1,stats10978.2,stats10979.1,stats10979.2,stats10980.1,stats10980.2,stats10981.1,stats10981.2,stats10982.1,stats10982.2,stats10983.1,stats10983.2,stats10984.1,stats10984.2,stats10985.1,stats10985.2,stats10986.1,stats10986.2]
  decide
end PathRoundDispatchCheckedRows
