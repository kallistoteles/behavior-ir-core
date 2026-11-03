import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData154
import PairedPathRoundInstructionMatrixData155
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9888 : actualRows9888=WordField.canonicalRows actualModulus 9888 (.band 9885 9887) := by core033_kernel_decide
theorem stats9888 : actualRows9888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9888=5124 := by core033_kernel_decide
theorem rows9889 : actualRows9889=WordField.canonicalRows actualModulus 9889 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9889 : actualRows9889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9889=2892 := by core033_kernel_decide
theorem rows9890 : actualRows9890=WordField.canonicalRows actualModulus 9890 (.bxor 616 9889) := by core033_kernel_decide
theorem stats9890 : actualRows9890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9890=7428 := by core033_kernel_decide
theorem rows9891 : actualRows9891=WordField.canonicalRows actualModulus 9891 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9891 : actualRows9891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9891=2820 := by core033_kernel_decide
theorem rows9892 : actualRows9892=WordField.canonicalRows actualModulus 9892 (.bnot 9891) := by core033_kernel_decide
theorem stats9892 : actualRows9892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9892=6276 := by core033_kernel_decide
theorem rows9893 : actualRows9893=WordField.canonicalRows actualModulus 9893 (.bxor 9890 9892) := by core033_kernel_decide
theorem stats9893 : actualRows9893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9893=7428 := by core033_kernel_decide
theorem rows9894 : actualRows9894=WordField.canonicalRows actualModulus 9894 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9894 : actualRows9894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9894=2892 := by core033_kernel_decide
theorem rows9895 : actualRows9895=WordField.canonicalRows actualModulus 9895 (.bxor 616 9894) := by core033_kernel_decide
theorem stats9895 : actualRows9895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9895=7428 := by core033_kernel_decide
theorem rows9896 : actualRows9896=WordField.canonicalRows actualModulus 9896 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9896 : actualRows9896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9896=2820 := by core033_kernel_decide
theorem rows9897 : actualRows9897=WordField.canonicalRows actualModulus 9897 (.bnot 9896) := by core033_kernel_decide
theorem stats9897 : actualRows9897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9897=6276 := by core033_kernel_decide
theorem rows9898 : actualRows9898=WordField.canonicalRows actualModulus 9898 (.badd 9895 9897) := by core033_kernel_decide
theorem stats9898 : actualRows9898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9898=5388 := by core033_kernel_decide
theorem rows9899 : actualRows9899=WordField.canonicalRows actualModulus 9899 (.bnot 9898) := by core033_kernel_decide
theorem stats9899 : actualRows9899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9899=6276 := by core033_kernel_decide
theorem rows9900 : actualRows9900=WordField.canonicalRows actualModulus 9900 (.band 9893 9899) := by core033_kernel_decide
theorem stats9900 : actualRows9900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9900=5124 := by core033_kernel_decide
theorem rows9901 : actualRows9901=WordField.canonicalRows actualModulus 9901 (.bxor 9888 9900) := by core033_kernel_decide
theorem stats9901 : actualRows9901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9901=7428 := by core033_kernel_decide
theorem rows9902 : actualRows9902=WordField.canonicalRows actualModulus 9902 (.shr 9901 31) := by core033_kernel_decide
theorem stats9902 : actualRows9902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9902=2892 := by core033_kernel_decide
theorem rows9903 : actualRows9903=WordField.canonicalRows actualModulus 9903 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9903 : actualRows9903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9903=2892 := by core033_kernel_decide
theorem rows9904 : actualRows9904=WordField.canonicalRows actualModulus 9904 (.bxor 9902 9903) := by core033_kernel_decide
theorem stats9904 : actualRows9904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9904=7428 := by core033_kernel_decide
theorem rows9905 : actualRows9905=WordField.canonicalRows actualModulus 9905 (.bxor 9883 9904) := by core033_kernel_decide
theorem stats9905 : actualRows9905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9905=7428 := by core033_kernel_decide
theorem rows9906 : actualRows9906=WordField.canonicalRows actualModulus 9906 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9906 : actualRows9906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9906=2964 := by core033_kernel_decide
theorem rows9907 : actualRows9907=WordField.canonicalRows actualModulus 9907 (.bxor 442 9906) := by core033_kernel_decide
theorem stats9907 : actualRows9907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9907=7428 := by core033_kernel_decide
theorem rows9908 : actualRows9908=WordField.canonicalRows actualModulus 9908 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9908 : actualRows9908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9908=2820 := by core033_kernel_decide
theorem rows9909 : actualRows9909=WordField.canonicalRows actualModulus 9909 (.bnot 9908) := by core033_kernel_decide
theorem stats9909 : actualRows9909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9909=6276 := by core033_kernel_decide
theorem rows9910 : actualRows9910=WordField.canonicalRows actualModulus 9910 (.band 9907 9909) := by core033_kernel_decide
theorem stats9910 : actualRows9910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9910=5124 := by core033_kernel_decide
theorem rows9911 : actualRows9911=WordField.canonicalRows actualModulus 9911 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9911 : actualRows9911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9911=2964 := by core033_kernel_decide
theorem rows9912 : actualRows9912=WordField.canonicalRows actualModulus 9912 (.bxor 442 9911) := by core033_kernel_decide
theorem stats9912 : actualRows9912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9912=7428 := by core033_kernel_decide
theorem rows9913 : actualRows9913=WordField.canonicalRows actualModulus 9913 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9913 : actualRows9913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9913=2820 := by core033_kernel_decide
theorem rows9914 : actualRows9914=WordField.canonicalRows actualModulus 9914 (.bnot 9913) := by core033_kernel_decide
theorem stats9914 : actualRows9914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9914=6276 := by core033_kernel_decide
theorem rows9915 : actualRows9915=WordField.canonicalRows actualModulus 9915 (.bxor 9912 9914) := by core033_kernel_decide
theorem stats9915 : actualRows9915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9915=7428 := by core033_kernel_decide
theorem rows9916 : actualRows9916=WordField.canonicalRows actualModulus 9916 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9916 : actualRows9916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9916=2964 := by core033_kernel_decide
theorem rows9917 : actualRows9917=WordField.canonicalRows actualModulus 9917 (.bxor 442 9916) := by core033_kernel_decide
theorem stats9917 : actualRows9917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9917=7428 := by core033_kernel_decide
theorem rows9918 : actualRows9918=WordField.canonicalRows actualModulus 9918 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9918 : actualRows9918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9918=2820 := by core033_kernel_decide
theorem rows9919 : actualRows9919=WordField.canonicalRows actualModulus 9919 (.bnot 9918) := by core033_kernel_decide
theorem stats9919 : actualRows9919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9919=6276 := by core033_kernel_decide
theorem rows9920 : actualRows9920=WordField.canonicalRows actualModulus 9920 (.badd 9917 9919) := by core033_kernel_decide
theorem stats9920 : actualRows9920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9920=5388 := by core033_kernel_decide
theorem rows9921 : actualRows9921=WordField.canonicalRows actualModulus 9921 (.bnot 9920) := by core033_kernel_decide
theorem stats9921 : actualRows9921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9921=6276 := by core033_kernel_decide
theorem rows9922 : actualRows9922=WordField.canonicalRows actualModulus 9922 (.band 9915 9921) := by core033_kernel_decide
theorem stats9922 : actualRows9922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9922=5124 := by core033_kernel_decide
theorem rows9923 : actualRows9923=WordField.canonicalRows actualModulus 9923 (.bxor 9910 9922) := by core033_kernel_decide
theorem stats9923 : actualRows9923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9923=7428 := by core033_kernel_decide
theorem rows9924 : actualRows9924=WordField.canonicalRows actualModulus 9924 (.shr 9923 31) := by core033_kernel_decide
theorem stats9924 : actualRows9924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9924=2892 := by core033_kernel_decide
theorem rows9925 : actualRows9925=WordField.canonicalRows actualModulus 9925 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9925 : actualRows9925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9925=2892 := by core033_kernel_decide
theorem rows9926 : actualRows9926=WordField.canonicalRows actualModulus 9926 (.bxor 9924 9925) := by core033_kernel_decide
theorem stats9926 : actualRows9926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9926=7428 := by core033_kernel_decide
theorem rows9927 : actualRows9927=WordField.canonicalRows actualModulus 9927 (.bnot 9926) := by core033_kernel_decide
theorem stats9927 : actualRows9927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9927=6276 := by core033_kernel_decide
theorem rows9928 : actualRows9928=WordField.canonicalRows actualModulus 9928 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9928 : actualRows9928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9928=2892 := by core033_kernel_decide
theorem rows9929 : actualRows9929=WordField.canonicalRows actualModulus 9929 (.badd 9927 9928) := by core033_kernel_decide
theorem stats9929 : actualRows9929.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9929=5388 := by core033_kernel_decide
theorem rows9930 : actualRows9930=WordField.canonicalRows actualModulus 9930 (.band 9929 442) := by core033_kernel_decide
theorem stats9930 : actualRows9930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9930=5124 := by core033_kernel_decide
theorem rows9931 : actualRows9931=WordField.canonicalRows actualModulus 9931 (.bnot 9926) := by core033_kernel_decide
theorem stats9931 : actualRows9931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9931=6276 := by core033_kernel_decide
theorem rows9932 : actualRows9932=WordField.canonicalRows actualModulus 9932 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9932 : actualRows9932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9932=2892 := by core033_kernel_decide
theorem rows9933 : actualRows9933=WordField.canonicalRows actualModulus 9933 (.badd 9931 9932) := by core033_kernel_decide
theorem stats9933 : actualRows9933.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9933=5388 := by core033_kernel_decide
theorem rows9934 : actualRows9934=WordField.canonicalRows actualModulus 9934 (.bnot 9933) := by core033_kernel_decide
theorem stats9934 : actualRows9934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9934=6276 := by core033_kernel_decide
theorem rows9935 : actualRows9935=WordField.canonicalRows actualModulus 9935 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9935 : actualRows9935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9935=2964 := by core033_kernel_decide
theorem rows9936 : actualRows9936=WordField.canonicalRows actualModulus 9936 (.band 9934 9935) := by core033_kernel_decide
theorem stats9936 : actualRows9936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9936=5124 := by core033_kernel_decide
theorem rows9937 : actualRows9937=WordField.canonicalRows actualModulus 9937 (.bxor 9930 9936) := by core033_kernel_decide
theorem stats9937 : actualRows9937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9937=7428 := by core033_kernel_decide
theorem rows9938 : actualRows9938=WordField.canonicalRows actualModulus 9938 (.bnot 9926) := by core033_kernel_decide
theorem stats9938 : actualRows9938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9938=6276 := by core033_kernel_decide
theorem rows9939 : actualRows9939=WordField.canonicalRows actualModulus 9939 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9939 : actualRows9939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9939=2892 := by core033_kernel_decide
theorem rows9940 : actualRows9940=WordField.canonicalRows actualModulus 9940 (.badd 9938 9939) := by core033_kernel_decide
theorem stats9940 : actualRows9940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9940=5388 := by core033_kernel_decide
theorem rows9941 : actualRows9941=WordField.canonicalRows actualModulus 9941 (.band 9940 1) := by core033_kernel_decide
theorem stats9941 : actualRows9941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9941=5124 := by core033_kernel_decide
theorem rows9942 : actualRows9942=WordField.canonicalRows actualModulus 9942 (.bnot 9926) := by core033_kernel_decide
theorem stats9942 : actualRows9942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9942=6276 := by core033_kernel_decide
theorem rows9943 : actualRows9943=WordField.canonicalRows actualModulus 9943 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9943 : actualRows9943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9943=2892 := by core033_kernel_decide
theorem rows9944 : actualRows9944=WordField.canonicalRows actualModulus 9944 (.badd 9942 9943) := by core033_kernel_decide
theorem stats9944 : actualRows9944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9944=5388 := by core033_kernel_decide
theorem rows9945 : actualRows9945=WordField.canonicalRows actualModulus 9945 (.bnot 9944) := by core033_kernel_decide
theorem stats9945 : actualRows9945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9945=6276 := by core033_kernel_decide
theorem rows9946 : actualRows9946=WordField.canonicalRows actualModulus 9946 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9946 : actualRows9946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9946=2892 := by core033_kernel_decide
theorem rows9947 : actualRows9947=WordField.canonicalRows actualModulus 9947 (.band 9945 9946) := by core033_kernel_decide
theorem stats9947 : actualRows9947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9947=5124 := by core033_kernel_decide
theorem rows9948 : actualRows9948=WordField.canonicalRows actualModulus 9948 (.bxor 9941 9947) := by core033_kernel_decide
theorem stats9948 : actualRows9948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9948=7428 := by core033_kernel_decide
theorem rows9949 : actualRows9949=WordField.canonicalRows actualModulus 9949 (.bnot 9926) := by core033_kernel_decide
theorem stats9949 : actualRows9949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9949=6276 := by core033_kernel_decide
theorem rows9950 : actualRows9950=WordField.canonicalRows actualModulus 9950 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9950 : actualRows9950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9950=2892 := by core033_kernel_decide
theorem rows9951 : actualRows9951=WordField.canonicalRows actualModulus 9951 (.badd 9949 9950) := by core033_kernel_decide
theorem stats9951 : actualRows9951.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9951=5388 := by core033_kernel_decide
def partRows153 : List R1CS.Row := actualRows9888++actualRows9889++actualRows9890++actualRows9891++actualRows9892++actualRows9893++actualRows9894++actualRows9895++actualRows9896++actualRows9897++actualRows9898++actualRows9899++actualRows9900++actualRows9901++actualRows9902++actualRows9903++actualRows9904++actualRows9905++actualRows9906++actualRows9907++actualRows9908++actualRows9909++actualRows9910++actualRows9911++actualRows9912++actualRows9913++actualRows9914++actualRows9915++actualRows9916++actualRows9917++actualRows9918++actualRows9919++actualRows9920++actualRows9921++actualRows9922++actualRows9923++actualRows9924++actualRows9925++actualRows9926++actualRows9927++actualRows9928++actualRows9929++actualRows9930++actualRows9931++actualRows9932++actualRows9933++actualRows9934++actualRows9935++actualRows9936++actualRows9937++actualRows9938++actualRows9939++actualRows9940++actualRows9941++actualRows9942++actualRows9943++actualRows9944++actualRows9945++actualRows9946++actualRows9947++actualRows9948++actualRows9949++actualRows9950++actualRows9951
def partOps153 : List WordIR.Op := [.band 9885 9887,.literal (BitVec.ofNat 32 2),.bxor 616 9889,.literal (BitVec.ofNat 32 0),.bnot 9891,.bxor 9890 9892,.literal (BitVec.ofNat 32 2),.bxor 616 9894,.literal (BitVec.ofNat 32 0),.bnot 9896,.badd 9895 9897,.bnot 9898,.band 9893 9899,.bxor 9888 9900,.shr 9901 31,.literal (BitVec.ofNat 32 1),.bxor 9902 9903,.bxor 9883 9904,.literal (BitVec.ofNat 32 3),.bxor 442 9906,.literal (BitVec.ofNat 32 0),.bnot 9908,.band 9907 9909,.literal (BitVec.ofNat 32 3),.bxor 442 9911,.literal (BitVec.ofNat 32 0),.bnot 9913,.bxor 9912 9914,.literal (BitVec.ofNat 32 3),.bxor 442 9916,.literal (BitVec.ofNat 32 0),.bnot 9918,.badd 9917 9919,.bnot 9920,.band 9915 9921,.bxor 9910 9922,.shr 9923 31,.literal (BitVec.ofNat 32 1),.bxor 9924 9925,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9927 9928,.band 9929 442,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9931 9932,.bnot 9933,.literal (BitVec.ofNat 32 3),.band 9934 9935,.bxor 9930 9936,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9938 9939,.band 9940 1,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9942 9943,.bnot 9944,.literal (BitVec.ofNat 32 1),.band 9945 9946,.bxor 9941 9947,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9949 9950]
theorem partExact153 : partRows153=WordField.rows actualModulus 9888 partOps153 := by
  simp only [partRows153,partOps153,WordField.rows,rows9888,rows9889,rows9890,rows9891,rows9892,rows9893,rows9894,rows9895,rows9896,rows9897,rows9898,rows9899,rows9900,rows9901,rows9902,rows9903,rows9904,rows9905,rows9906,rows9907,rows9908,rows9909,rows9910,rows9911,rows9912,rows9913,rows9914,rows9915,rows9916,rows9917,rows9918,rows9919,rows9920,rows9921,rows9922,rows9923,rows9924,rows9925,rows9926,rows9927,rows9928,rows9929,rows9930,rows9931,rows9932,rows9933,rows9934,rows9935,rows9936,rows9937,rows9938,rows9939,rows9940,rows9941,rows9942,rows9943,rows9944,rows9945,rows9946,rows9947,rows9948,rows9949,rows9950,rows9951,List.append_assoc,List.append_nil]
theorem partLength153 : partOps153.length=64 := by decide
theorem partStats153 : partRows153.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows153=331224 := by
  simp only [partRows153,List.length_append,MatrixRowBlocks.rows_weight_append,stats9888.1,stats9888.2,stats9889.1,stats9889.2,stats9890.1,stats9890.2,stats9891.1,stats9891.2,stats9892.1,stats9892.2,stats9893.1,stats9893.2,stats9894.1,stats9894.2,stats9895.1,stats9895.2,stats9896.1,stats9896.2,stats9897.1,stats9897.2,stats9898.1,stats9898.2,stats9899.1,stats9899.2,stats9900.1,stats9900.2,stats9901.1,stats9901.2,stats9902.1,stats9902.2,stats9903.1,stats9903.2,stats9904.1,stats9904.2,stats9905.1,stats9905.2,stats9906.1,stats9906.2,stats9907.1,stats9907.2,stats9908.1,stats9908.2,stats9909.1,stats9909.2,stats9910.1,stats9910.2,stats9911.1,stats9911.2,stats9912.1,stats9912.2,stats9913.1,stats9913.2,stats9914.1,stats9914.2,stats9915.1,stats9915.2,stats9916.1,stats9916.2,stats9917.1,stats9917.2,stats9918.1,stats9918.2,stats9919.1,stats9919.2,stats9920.1,stats9920.2,stats9921.1,stats9921.2,stats9922.1,stats9922.2,stats9923.1,stats9923.2,stats9924.1,stats9924.2,stats9925.1,stats9925.2,stats9926.1,stats9926.2,stats9927.1,stats9927.2,stats9928.1,stats9928.2,stats9929.1,stats9929.2,stats9930.1,stats9930.2,stats9931.1,stats9931.2,stats9932.1,stats9932.2,stats9933.1,stats9933.2,stats9934.1,stats9934.2,stats9935.1,stats9935.2,stats9936.1,stats9936.2,stats9937.1,stats9937.2,stats9938.1,stats9938.2,stats9939.1,stats9939.2,stats9940.1,stats9940.2,stats9941.1,stats9941.2,stats9942.1,stats9942.2,stats9943.1,stats9943.2,stats9944.1,stats9944.2,stats9945.1,stats9945.2,stats9946.1,stats9946.2,stats9947.1,stats9947.2,stats9948.1,stats9948.2,stats9949.1,stats9949.2,stats9950.1,stats9950.2,stats9951.1,stats9951.2]
  decide
end QuotedPairedPathRoundCheckedRows
