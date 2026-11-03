import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData154
import PathRoundDispatchInstructionMatrixData155
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9899 : actualRows9899=WordField.canonicalRows actualModulus 9899 (.band 9897 9898) := by core033_kernel_decide
theorem stats9899 : actualRows9899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9899=5124 := by core033_kernel_decide
theorem rows9900 : actualRows9900=WordField.canonicalRows actualModulus 9900 (.bxor 9896 9899) := by core033_kernel_decide
theorem stats9900 : actualRows9900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9900=7428 := by core033_kernel_decide
theorem rows9901 : actualRows9901=WordField.canonicalRows actualModulus 9901 (.rotr 9835 24) := by core033_kernel_decide
theorem stats9901 : actualRows9901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9901=5124 := by core033_kernel_decide
theorem rows9902 : actualRows9902=WordField.canonicalRows actualModulus 9902 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9902 : actualRows9902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9902=3972 := by core033_kernel_decide
theorem rows9903 : actualRows9903=WordField.canonicalRows actualModulus 9903 (.band 9901 9902) := by core033_kernel_decide
theorem stats9903 : actualRows9903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9903=5124 := by core033_kernel_decide
theorem rows9904 : actualRows9904=WordField.canonicalRows actualModulus 9904 (.rotr 9835 8) := by core033_kernel_decide
theorem stats9904 : actualRows9904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9904=5124 := by core033_kernel_decide
theorem rows9905 : actualRows9905=WordField.canonicalRows actualModulus 9905 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9905 : actualRows9905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9905=3972 := by core033_kernel_decide
theorem rows9906 : actualRows9906=WordField.canonicalRows actualModulus 9906 (.band 9904 9905) := by core033_kernel_decide
theorem stats9906 : actualRows9906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9906=5124 := by core033_kernel_decide
theorem rows9907 : actualRows9907=WordField.canonicalRows actualModulus 9907 (.bxor 9903 9906) := by core033_kernel_decide
theorem stats9907 : actualRows9907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9907=7428 := by core033_kernel_decide
theorem rows9908 : actualRows9908=WordField.canonicalRows actualModulus 9908 (.rotr 9846 24) := by core033_kernel_decide
theorem stats9908 : actualRows9908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9908=5124 := by core033_kernel_decide
theorem rows9909 : actualRows9909=WordField.canonicalRows actualModulus 9909 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9909 : actualRows9909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9909=3972 := by core033_kernel_decide
theorem rows9910 : actualRows9910=WordField.canonicalRows actualModulus 9910 (.band 9908 9909) := by core033_kernel_decide
theorem stats9910 : actualRows9910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9910=5124 := by core033_kernel_decide
theorem rows9911 : actualRows9911=WordField.canonicalRows actualModulus 9911 (.rotr 9846 8) := by core033_kernel_decide
theorem stats9911 : actualRows9911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9911=5124 := by core033_kernel_decide
theorem rows9912 : actualRows9912=WordField.canonicalRows actualModulus 9912 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9912 : actualRows9912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9912=3972 := by core033_kernel_decide
theorem rows9913 : actualRows9913=WordField.canonicalRows actualModulus 9913 (.band 9911 9912) := by core033_kernel_decide
theorem stats9913 : actualRows9913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9913=5124 := by core033_kernel_decide
theorem rows9914 : actualRows9914=WordField.canonicalRows actualModulus 9914 (.bxor 9910 9913) := by core033_kernel_decide
theorem stats9914 : actualRows9914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9914=7428 := by core033_kernel_decide
theorem rows9915 : actualRows9915=WordField.canonicalRows actualModulus 9915 (.rotr 9857 24) := by core033_kernel_decide
theorem stats9915 : actualRows9915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9915=5124 := by core033_kernel_decide
theorem rows9916 : actualRows9916=WordField.canonicalRows actualModulus 9916 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9916 : actualRows9916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9916=3972 := by core033_kernel_decide
theorem rows9917 : actualRows9917=WordField.canonicalRows actualModulus 9917 (.band 9915 9916) := by core033_kernel_decide
theorem stats9917 : actualRows9917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9917=5124 := by core033_kernel_decide
theorem rows9918 : actualRows9918=WordField.canonicalRows actualModulus 9918 (.rotr 9857 8) := by core033_kernel_decide
theorem stats9918 : actualRows9918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9918=5124 := by core033_kernel_decide
theorem rows9919 : actualRows9919=WordField.canonicalRows actualModulus 9919 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9919 : actualRows9919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9919=3972 := by core033_kernel_decide
theorem rows9920 : actualRows9920=WordField.canonicalRows actualModulus 9920 (.band 9918 9919) := by core033_kernel_decide
theorem stats9920 : actualRows9920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9920=5124 := by core033_kernel_decide
theorem rows9921 : actualRows9921=WordField.canonicalRows actualModulus 9921 (.bxor 9917 9920) := by core033_kernel_decide
theorem stats9921 : actualRows9921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9921=7428 := by core033_kernel_decide
theorem rows9922 : actualRows9922=WordField.canonicalRows actualModulus 9922 (.rotr 9868 24) := by core033_kernel_decide
theorem stats9922 : actualRows9922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9922=5124 := by core033_kernel_decide
theorem rows9923 : actualRows9923=WordField.canonicalRows actualModulus 9923 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9923 : actualRows9923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9923=3972 := by core033_kernel_decide
theorem rows9924 : actualRows9924=WordField.canonicalRows actualModulus 9924 (.band 9922 9923) := by core033_kernel_decide
theorem stats9924 : actualRows9924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9924=5124 := by core033_kernel_decide
theorem rows9925 : actualRows9925=WordField.canonicalRows actualModulus 9925 (.rotr 9868 8) := by core033_kernel_decide
theorem stats9925 : actualRows9925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9925=5124 := by core033_kernel_decide
theorem rows9926 : actualRows9926=WordField.canonicalRows actualModulus 9926 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9926 : actualRows9926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9926=3972 := by core033_kernel_decide
theorem rows9927 : actualRows9927=WordField.canonicalRows actualModulus 9927 (.band 9925 9926) := by core033_kernel_decide
theorem stats9927 : actualRows9927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9927=5124 := by core033_kernel_decide
theorem rows9928 : actualRows9928=WordField.canonicalRows actualModulus 9928 (.bxor 9924 9927) := by core033_kernel_decide
theorem stats9928 : actualRows9928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9928=7428 := by core033_kernel_decide
theorem rows9929 : actualRows9929=WordField.canonicalRows actualModulus 9929 (.rotr 9879 24) := by core033_kernel_decide
theorem stats9929 : actualRows9929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9929=5124 := by core033_kernel_decide
theorem rows9930 : actualRows9930=WordField.canonicalRows actualModulus 9930 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9930 : actualRows9930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9930=3972 := by core033_kernel_decide
theorem rows9931 : actualRows9931=WordField.canonicalRows actualModulus 9931 (.band 9929 9930) := by core033_kernel_decide
theorem stats9931 : actualRows9931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9931=5124 := by core033_kernel_decide
theorem rows9932 : actualRows9932=WordField.canonicalRows actualModulus 9932 (.rotr 9879 8) := by core033_kernel_decide
theorem stats9932 : actualRows9932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9932=5124 := by core033_kernel_decide
theorem rows9933 : actualRows9933=WordField.canonicalRows actualModulus 9933 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9933 : actualRows9933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9933=3972 := by core033_kernel_decide
theorem rows9934 : actualRows9934=WordField.canonicalRows actualModulus 9934 (.band 9932 9933) := by core033_kernel_decide
theorem stats9934 : actualRows9934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9934=5124 := by core033_kernel_decide
theorem rows9935 : actualRows9935=WordField.canonicalRows actualModulus 9935 (.bxor 9931 9934) := by core033_kernel_decide
theorem stats9935 : actualRows9935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9935=7428 := by core033_kernel_decide
theorem rows9936 : actualRows9936=WordField.canonicalRows actualModulus 9936 (.badd 9714 9736) := by core033_kernel_decide
theorem stats9936 : actualRows9936.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9936=5388 := by core033_kernel_decide
theorem rows9937 : actualRows9937=WordField.canonicalRows actualModulus 9937 (.badd 9725 9747) := by core033_kernel_decide
theorem stats9937 : actualRows9937.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9937=5388 := by core033_kernel_decide
theorem rows9938 : actualRows9938=WordField.canonicalRows actualModulus 9938 (.band 9714 9736) := by core033_kernel_decide
theorem stats9938 : actualRows9938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9938=5124 := by core033_kernel_decide
theorem rows9939 : actualRows9939=WordField.canonicalRows actualModulus 9939 (.bxor 9714 9736) := by core033_kernel_decide
theorem stats9939 : actualRows9939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9939=7428 := by core033_kernel_decide
theorem rows9940 : actualRows9940=WordField.canonicalRows actualModulus 9940 (.badd 9714 9736) := by core033_kernel_decide
theorem stats9940 : actualRows9940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9940=5388 := by core033_kernel_decide
theorem rows9941 : actualRows9941=WordField.canonicalRows actualModulus 9941 (.bnot 9940) := by core033_kernel_decide
theorem stats9941 : actualRows9941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9941=6276 := by core033_kernel_decide
theorem rows9942 : actualRows9942=WordField.canonicalRows actualModulus 9942 (.band 9939 9941) := by core033_kernel_decide
theorem stats9942 : actualRows9942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9942=5124 := by core033_kernel_decide
theorem rows9943 : actualRows9943=WordField.canonicalRows actualModulus 9943 (.bxor 9938 9942) := by core033_kernel_decide
theorem stats9943 : actualRows9943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9943=7428 := by core033_kernel_decide
theorem rows9944 : actualRows9944=WordField.canonicalRows actualModulus 9944 (.shr 9943 31) := by core033_kernel_decide
theorem stats9944 : actualRows9944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9944=2892 := by core033_kernel_decide
theorem rows9945 : actualRows9945=WordField.canonicalRows actualModulus 9945 (.badd 9937 9944) := by core033_kernel_decide
theorem stats9945 : actualRows9945.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9945=5388 := by core033_kernel_decide
theorem rows9946 : actualRows9946=WordField.canonicalRows actualModulus 9946 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9946 : actualRows9946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9946=2820 := by core033_kernel_decide
theorem rows9947 : actualRows9947=WordField.canonicalRows actualModulus 9947 (.bnot 9946) := by core033_kernel_decide
theorem stats9947 : actualRows9947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9947=6276 := by core033_kernel_decide
theorem rows9948 : actualRows9948=WordField.canonicalRows actualModulus 9948 (.band 9725 9947) := by core033_kernel_decide
theorem stats9948 : actualRows9948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9948=5124 := by core033_kernel_decide
theorem rows9949 : actualRows9949=WordField.canonicalRows actualModulus 9949 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9949 : actualRows9949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9949=2820 := by core033_kernel_decide
theorem rows9950 : actualRows9950=WordField.canonicalRows actualModulus 9950 (.bnot 9949) := by core033_kernel_decide
theorem stats9950 : actualRows9950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9950=6276 := by core033_kernel_decide
theorem rows9951 : actualRows9951=WordField.canonicalRows actualModulus 9951 (.bxor 9725 9950) := by core033_kernel_decide
theorem stats9951 : actualRows9951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9951=7428 := by core033_kernel_decide
theorem rows9952 : actualRows9952=WordField.canonicalRows actualModulus 9952 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9952 : actualRows9952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9952=2820 := by core033_kernel_decide
theorem rows9953 : actualRows9953=WordField.canonicalRows actualModulus 9953 (.bnot 9952) := by core033_kernel_decide
theorem stats9953 : actualRows9953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9953=6276 := by core033_kernel_decide
theorem rows9954 : actualRows9954=WordField.canonicalRows actualModulus 9954 (.badd 9725 9953) := by core033_kernel_decide
theorem stats9954 : actualRows9954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9954=5388 := by core033_kernel_decide
theorem rows9955 : actualRows9955=WordField.canonicalRows actualModulus 9955 (.bnot 9954) := by core033_kernel_decide
theorem stats9955 : actualRows9955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9955=6276 := by core033_kernel_decide
theorem rows9956 : actualRows9956=WordField.canonicalRows actualModulus 9956 (.band 9951 9955) := by core033_kernel_decide
theorem stats9956 : actualRows9956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9956=5124 := by core033_kernel_decide
theorem rows9957 : actualRows9957=WordField.canonicalRows actualModulus 9957 (.bxor 9948 9956) := by core033_kernel_decide
theorem stats9957 : actualRows9957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9957=7428 := by core033_kernel_decide
theorem rows9958 : actualRows9958=WordField.canonicalRows actualModulus 9958 (.shr 9957 31) := by core033_kernel_decide
theorem stats9958 : actualRows9958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9958=2892 := by core033_kernel_decide
theorem rows9959 : actualRows9959=WordField.canonicalRows actualModulus 9959 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9959 : actualRows9959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9959=2892 := by core033_kernel_decide
theorem rows9960 : actualRows9960=WordField.canonicalRows actualModulus 9960 (.bxor 9958 9959) := by core033_kernel_decide
theorem stats9960 : actualRows9960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9960=7428 := by core033_kernel_decide
theorem rows9961 : actualRows9961=WordField.canonicalRows actualModulus 9961 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats9961 : actualRows9961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9961=2892 := by core033_kernel_decide
theorem rows9962 : actualRows9962=WordField.canonicalRows actualModulus 9962 (.bnot 9961) := by core033_kernel_decide
theorem stats9962 : actualRows9962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9962=6276 := by core033_kernel_decide
def partRows154 : List R1CS.Row := actualRows9899++actualRows9900++actualRows9901++actualRows9902++actualRows9903++actualRows9904++actualRows9905++actualRows9906++actualRows9907++actualRows9908++actualRows9909++actualRows9910++actualRows9911++actualRows9912++actualRows9913++actualRows9914++actualRows9915++actualRows9916++actualRows9917++actualRows9918++actualRows9919++actualRows9920++actualRows9921++actualRows9922++actualRows9923++actualRows9924++actualRows9925++actualRows9926++actualRows9927++actualRows9928++actualRows9929++actualRows9930++actualRows9931++actualRows9932++actualRows9933++actualRows9934++actualRows9935++actualRows9936++actualRows9937++actualRows9938++actualRows9939++actualRows9940++actualRows9941++actualRows9942++actualRows9943++actualRows9944++actualRows9945++actualRows9946++actualRows9947++actualRows9948++actualRows9949++actualRows9950++actualRows9951++actualRows9952++actualRows9953++actualRows9954++actualRows9955++actualRows9956++actualRows9957++actualRows9958++actualRows9959++actualRows9960++actualRows9961++actualRows9962
def partOps154 : List WordIR.Op := [.band 9897 9898,.bxor 9896 9899,.rotr 9835 24,.literal (BitVec.ofNat 32 16711935),.band 9901 9902,.rotr 9835 8,.literal (BitVec.ofNat 32 4278255360),.band 9904 9905,.bxor 9903 9906,.rotr 9846 24,.literal (BitVec.ofNat 32 16711935),.band 9908 9909,.rotr 9846 8,.literal (BitVec.ofNat 32 4278255360),.band 9911 9912,.bxor 9910 9913,.rotr 9857 24,.literal (BitVec.ofNat 32 16711935),.band 9915 9916,.rotr 9857 8,.literal (BitVec.ofNat 32 4278255360),.band 9918 9919,.bxor 9917 9920,.rotr 9868 24,.literal (BitVec.ofNat 32 16711935),.band 9922 9923,.rotr 9868 8,.literal (BitVec.ofNat 32 4278255360),.band 9925 9926,.bxor 9924 9927,.rotr 9879 24,.literal (BitVec.ofNat 32 16711935),.band 9929 9930,.rotr 9879 8,.literal (BitVec.ofNat 32 4278255360),.band 9932 9933,.bxor 9931 9934,.badd 9714 9736,.badd 9725 9747,.band 9714 9736,.bxor 9714 9736,.badd 9714 9736,.bnot 9940,.band 9939 9941,.bxor 9938 9942,.shr 9943 31,.badd 9937 9944,.literal (BitVec.ofNat 32 0),.bnot 9946,.band 9725 9947,.literal (BitVec.ofNat 32 0),.bnot 9949,.bxor 9725 9950,.literal (BitVec.ofNat 32 0),.bnot 9952,.badd 9725 9953,.bnot 9954,.band 9951 9955,.bxor 9948 9956,.shr 9957 31,.literal (BitVec.ofNat 32 1),.bxor 9958 9959,.literal (BitVec.ofNat 32 1048576),.bnot 9961]
theorem partExact154 : partRows154=WordField.rows actualModulus 9899 partOps154 := by
  simp only [partRows154,partOps154,WordField.rows,rows9899,rows9900,rows9901,rows9902,rows9903,rows9904,rows9905,rows9906,rows9907,rows9908,rows9909,rows9910,rows9911,rows9912,rows9913,rows9914,rows9915,rows9916,rows9917,rows9918,rows9919,rows9920,rows9921,rows9922,rows9923,rows9924,rows9925,rows9926,rows9927,rows9928,rows9929,rows9930,rows9931,rows9932,rows9933,rows9934,rows9935,rows9936,rows9937,rows9938,rows9939,rows9940,rows9941,rows9942,rows9943,rows9944,rows9945,rows9946,rows9947,rows9948,rows9949,rows9950,rows9951,rows9952,rows9953,rows9954,rows9955,rows9956,rows9957,rows9958,rows9959,rows9960,rows9961,rows9962,List.append_assoc,List.append_nil]
theorem partLength154 : partOps154.length=64 := by decide
theorem partStats154 : partRows154.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows154=334152 := by
  simp only [partRows154,List.length_append,MatrixRowBlocks.rows_weight_append,stats9899.1,stats9899.2,stats9900.1,stats9900.2,stats9901.1,stats9901.2,stats9902.1,stats9902.2,stats9903.1,stats9903.2,stats9904.1,stats9904.2,stats9905.1,stats9905.2,stats9906.1,stats9906.2,stats9907.1,stats9907.2,stats9908.1,stats9908.2,stats9909.1,stats9909.2,stats9910.1,stats9910.2,stats9911.1,stats9911.2,stats9912.1,stats9912.2,stats9913.1,stats9913.2,stats9914.1,stats9914.2,stats9915.1,stats9915.2,stats9916.1,stats9916.2,stats9917.1,stats9917.2,stats9918.1,stats9918.2,stats9919.1,stats9919.2,stats9920.1,stats9920.2,stats9921.1,stats9921.2,stats9922.1,stats9922.2,stats9923.1,stats9923.2,stats9924.1,stats9924.2,stats9925.1,stats9925.2,stats9926.1,stats9926.2,stats9927.1,stats9927.2,stats9928.1,stats9928.2,stats9929.1,stats9929.2,stats9930.1,stats9930.2,stats9931.1,stats9931.2,stats9932.1,stats9932.2,stats9933.1,stats9933.2,stats9934.1,stats9934.2,stats9935.1,stats9935.2,stats9936.1,stats9936.2,stats9937.1,stats9937.2,stats9938.1,stats9938.2,stats9939.1,stats9939.2,stats9940.1,stats9940.2,stats9941.1,stats9941.2,stats9942.1,stats9942.2,stats9943.1,stats9943.2,stats9944.1,stats9944.2,stats9945.1,stats9945.2,stats9946.1,stats9946.2,stats9947.1,stats9947.2,stats9948.1,stats9948.2,stats9949.1,stats9949.2,stats9950.1,stats9950.2,stats9951.1,stats9951.2,stats9952.1,stats9952.2,stats9953.1,stats9953.2,stats9954.1,stats9954.2,stats9955.1,stats9955.2,stats9956.1,stats9956.2,stats9957.1,stats9957.2,stats9958.1,stats9958.2,stats9959.1,stats9959.2,stats9960.1,stats9960.2,stats9961.1,stats9961.2,stats9962.1,stats9962.2]
  decide
end PathRoundDispatchCheckedRows
