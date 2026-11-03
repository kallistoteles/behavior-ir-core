import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData107
import PairedPathRoundInstructionMatrixData108
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6880 : actualRows6880=WordField.canonicalRows actualModulus 6880 (.bxor 6877 6879) := by core033_kernel_decide
theorem stats6880 : actualRows6880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6880=7428 := by core033_kernel_decide
theorem rows6881 : actualRows6881=WordField.canonicalRows actualModulus 6881 (.shr 4575 8) := by core033_kernel_decide
theorem stats6881 : actualRows6881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6881=4548 := by core033_kernel_decide
theorem rows6882 : actualRows6882=WordField.canonicalRows actualModulus 6882 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6882 : actualRows6882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6882=2820 := by core033_kernel_decide
theorem rows6883 : actualRows6883=WordField.canonicalRows actualModulus 6883 (.bnot 6882) := by core033_kernel_decide
theorem stats6883 : actualRows6883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6883=6276 := by core033_kernel_decide
theorem rows6884 : actualRows6884=WordField.canonicalRows actualModulus 6884 (.badd 6881 6883) := by core033_kernel_decide
theorem stats6884 : actualRows6884.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6884=5388 := by core033_kernel_decide
theorem rows6885 : actualRows6885=WordField.canonicalRows actualModulus 6885 (.bnot 6884) := by core033_kernel_decide
theorem stats6885 : actualRows6885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6885=6276 := by core033_kernel_decide
theorem rows6886 : actualRows6886=WordField.canonicalRows actualModulus 6886 (.band 6880 6885) := by core033_kernel_decide
theorem stats6886 : actualRows6886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6886=5124 := by core033_kernel_decide
theorem rows6887 : actualRows6887=WordField.canonicalRows actualModulus 6887 (.bxor 6876 6886) := by core033_kernel_decide
theorem stats6887 : actualRows6887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6887=7428 := by core033_kernel_decide
theorem rows6888 : actualRows6888=WordField.canonicalRows actualModulus 6888 (.shr 6887 31) := by core033_kernel_decide
theorem stats6888 : actualRows6888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6888=2892 := by core033_kernel_decide
theorem rows6889 : actualRows6889=WordField.canonicalRows actualModulus 6889 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6889 : actualRows6889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6889=2892 := by core033_kernel_decide
theorem rows6890 : actualRows6890=WordField.canonicalRows actualModulus 6890 (.bxor 6888 6889) := by core033_kernel_decide
theorem stats6890 : actualRows6890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6890=7428 := by core033_kernel_decide
theorem rows6891 : actualRows6891=WordField.canonicalRows actualModulus 6891 (.shr 4627 8) := by core033_kernel_decide
theorem stats6891 : actualRows6891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6891=4548 := by core033_kernel_decide
theorem rows6892 : actualRows6892=WordField.canonicalRows actualModulus 6892 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6892 : actualRows6892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6892=2820 := by core033_kernel_decide
theorem rows6893 : actualRows6893=WordField.canonicalRows actualModulus 6893 (.bnot 6892) := by core033_kernel_decide
theorem stats6893 : actualRows6893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6893=6276 := by core033_kernel_decide
theorem rows6894 : actualRows6894=WordField.canonicalRows actualModulus 6894 (.band 6891 6893) := by core033_kernel_decide
theorem stats6894 : actualRows6894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6894=5124 := by core033_kernel_decide
theorem rows6895 : actualRows6895=WordField.canonicalRows actualModulus 6895 (.shr 4627 8) := by core033_kernel_decide
theorem stats6895 : actualRows6895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6895=4548 := by core033_kernel_decide
theorem rows6896 : actualRows6896=WordField.canonicalRows actualModulus 6896 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6896 : actualRows6896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6896=2820 := by core033_kernel_decide
theorem rows6897 : actualRows6897=WordField.canonicalRows actualModulus 6897 (.bnot 6896) := by core033_kernel_decide
theorem stats6897 : actualRows6897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6897=6276 := by core033_kernel_decide
theorem rows6898 : actualRows6898=WordField.canonicalRows actualModulus 6898 (.bxor 6895 6897) := by core033_kernel_decide
theorem stats6898 : actualRows6898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6898=7428 := by core033_kernel_decide
theorem rows6899 : actualRows6899=WordField.canonicalRows actualModulus 6899 (.shr 4627 8) := by core033_kernel_decide
theorem stats6899 : actualRows6899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6899=4548 := by core033_kernel_decide
theorem rows6900 : actualRows6900=WordField.canonicalRows actualModulus 6900 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6900 : actualRows6900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6900=2820 := by core033_kernel_decide
theorem rows6901 : actualRows6901=WordField.canonicalRows actualModulus 6901 (.bnot 6900) := by core033_kernel_decide
theorem stats6901 : actualRows6901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6901=6276 := by core033_kernel_decide
theorem rows6902 : actualRows6902=WordField.canonicalRows actualModulus 6902 (.badd 6899 6901) := by core033_kernel_decide
theorem stats6902 : actualRows6902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6902=5388 := by core033_kernel_decide
theorem rows6903 : actualRows6903=WordField.canonicalRows actualModulus 6903 (.bnot 6902) := by core033_kernel_decide
theorem stats6903 : actualRows6903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6903=6276 := by core033_kernel_decide
theorem rows6904 : actualRows6904=WordField.canonicalRows actualModulus 6904 (.band 6898 6903) := by core033_kernel_decide
theorem stats6904 : actualRows6904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6904=5124 := by core033_kernel_decide
theorem rows6905 : actualRows6905=WordField.canonicalRows actualModulus 6905 (.bxor 6894 6904) := by core033_kernel_decide
theorem stats6905 : actualRows6905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6905=7428 := by core033_kernel_decide
theorem rows6906 : actualRows6906=WordField.canonicalRows actualModulus 6906 (.shr 6905 31) := by core033_kernel_decide
theorem stats6906 : actualRows6906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6906=2892 := by core033_kernel_decide
theorem rows6907 : actualRows6907=WordField.canonicalRows actualModulus 6907 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6907 : actualRows6907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6907=2892 := by core033_kernel_decide
theorem rows6908 : actualRows6908=WordField.canonicalRows actualModulus 6908 (.bxor 6906 6907) := by core033_kernel_decide
theorem stats6908 : actualRows6908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6908=7428 := by core033_kernel_decide
theorem rows6909 : actualRows6909=WordField.canonicalRows actualModulus 6909 (.shr 4679 8) := by core033_kernel_decide
theorem stats6909 : actualRows6909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6909=4548 := by core033_kernel_decide
theorem rows6910 : actualRows6910=WordField.canonicalRows actualModulus 6910 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6910 : actualRows6910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6910=2820 := by core033_kernel_decide
theorem rows6911 : actualRows6911=WordField.canonicalRows actualModulus 6911 (.bnot 6910) := by core033_kernel_decide
theorem stats6911 : actualRows6911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6911=6276 := by core033_kernel_decide
theorem rows6912 : actualRows6912=WordField.canonicalRows actualModulus 6912 (.band 6909 6911) := by core033_kernel_decide
theorem stats6912 : actualRows6912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6912=5124 := by core033_kernel_decide
theorem rows6913 : actualRows6913=WordField.canonicalRows actualModulus 6913 (.shr 4679 8) := by core033_kernel_decide
theorem stats6913 : actualRows6913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6913=4548 := by core033_kernel_decide
theorem rows6914 : actualRows6914=WordField.canonicalRows actualModulus 6914 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6914 : actualRows6914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6914=2820 := by core033_kernel_decide
theorem rows6915 : actualRows6915=WordField.canonicalRows actualModulus 6915 (.bnot 6914) := by core033_kernel_decide
theorem stats6915 : actualRows6915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6915=6276 := by core033_kernel_decide
theorem rows6916 : actualRows6916=WordField.canonicalRows actualModulus 6916 (.bxor 6913 6915) := by core033_kernel_decide
theorem stats6916 : actualRows6916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6916=7428 := by core033_kernel_decide
theorem rows6917 : actualRows6917=WordField.canonicalRows actualModulus 6917 (.shr 4679 8) := by core033_kernel_decide
theorem stats6917 : actualRows6917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6917=4548 := by core033_kernel_decide
theorem rows6918 : actualRows6918=WordField.canonicalRows actualModulus 6918 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6918 : actualRows6918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6918=2820 := by core033_kernel_decide
theorem rows6919 : actualRows6919=WordField.canonicalRows actualModulus 6919 (.bnot 6918) := by core033_kernel_decide
theorem stats6919 : actualRows6919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6919=6276 := by core033_kernel_decide
theorem rows6920 : actualRows6920=WordField.canonicalRows actualModulus 6920 (.badd 6917 6919) := by core033_kernel_decide
theorem stats6920 : actualRows6920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6920=5388 := by core033_kernel_decide
theorem rows6921 : actualRows6921=WordField.canonicalRows actualModulus 6921 (.bnot 6920) := by core033_kernel_decide
theorem stats6921 : actualRows6921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6921=6276 := by core033_kernel_decide
theorem rows6922 : actualRows6922=WordField.canonicalRows actualModulus 6922 (.band 6916 6921) := by core033_kernel_decide
theorem stats6922 : actualRows6922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6922=5124 := by core033_kernel_decide
theorem rows6923 : actualRows6923=WordField.canonicalRows actualModulus 6923 (.bxor 6912 6922) := by core033_kernel_decide
theorem stats6923 : actualRows6923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6923=7428 := by core033_kernel_decide
theorem rows6924 : actualRows6924=WordField.canonicalRows actualModulus 6924 (.shr 6923 31) := by core033_kernel_decide
theorem stats6924 : actualRows6924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6924=2892 := by core033_kernel_decide
theorem rows6925 : actualRows6925=WordField.canonicalRows actualModulus 6925 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6925 : actualRows6925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6925=2892 := by core033_kernel_decide
theorem rows6926 : actualRows6926=WordField.canonicalRows actualModulus 6926 (.bxor 6924 6925) := by core033_kernel_decide
theorem stats6926 : actualRows6926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6926=7428 := by core033_kernel_decide
theorem rows6927 : actualRows6927=WordField.canonicalRows actualModulus 6927 (.shr 4731 8) := by core033_kernel_decide
theorem stats6927 : actualRows6927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6927=4548 := by core033_kernel_decide
theorem rows6928 : actualRows6928=WordField.canonicalRows actualModulus 6928 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6928 : actualRows6928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6928=2820 := by core033_kernel_decide
theorem rows6929 : actualRows6929=WordField.canonicalRows actualModulus 6929 (.bnot 6928) := by core033_kernel_decide
theorem stats6929 : actualRows6929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6929=6276 := by core033_kernel_decide
theorem rows6930 : actualRows6930=WordField.canonicalRows actualModulus 6930 (.band 6927 6929) := by core033_kernel_decide
theorem stats6930 : actualRows6930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6930=5124 := by core033_kernel_decide
theorem rows6931 : actualRows6931=WordField.canonicalRows actualModulus 6931 (.shr 4731 8) := by core033_kernel_decide
theorem stats6931 : actualRows6931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6931=4548 := by core033_kernel_decide
theorem rows6932 : actualRows6932=WordField.canonicalRows actualModulus 6932 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6932 : actualRows6932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6932=2820 := by core033_kernel_decide
theorem rows6933 : actualRows6933=WordField.canonicalRows actualModulus 6933 (.bnot 6932) := by core033_kernel_decide
theorem stats6933 : actualRows6933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6933=6276 := by core033_kernel_decide
theorem rows6934 : actualRows6934=WordField.canonicalRows actualModulus 6934 (.bxor 6931 6933) := by core033_kernel_decide
theorem stats6934 : actualRows6934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6934=7428 := by core033_kernel_decide
theorem rows6935 : actualRows6935=WordField.canonicalRows actualModulus 6935 (.shr 4731 8) := by core033_kernel_decide
theorem stats6935 : actualRows6935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6935=4548 := by core033_kernel_decide
theorem rows6936 : actualRows6936=WordField.canonicalRows actualModulus 6936 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6936 : actualRows6936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6936=2820 := by core033_kernel_decide
theorem rows6937 : actualRows6937=WordField.canonicalRows actualModulus 6937 (.bnot 6936) := by core033_kernel_decide
theorem stats6937 : actualRows6937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6937=6276 := by core033_kernel_decide
theorem rows6938 : actualRows6938=WordField.canonicalRows actualModulus 6938 (.badd 6935 6937) := by core033_kernel_decide
theorem stats6938 : actualRows6938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6938=5388 := by core033_kernel_decide
theorem rows6939 : actualRows6939=WordField.canonicalRows actualModulus 6939 (.bnot 6938) := by core033_kernel_decide
theorem stats6939 : actualRows6939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6939=6276 := by core033_kernel_decide
theorem rows6940 : actualRows6940=WordField.canonicalRows actualModulus 6940 (.band 6934 6939) := by core033_kernel_decide
theorem stats6940 : actualRows6940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6940=5124 := by core033_kernel_decide
theorem rows6941 : actualRows6941=WordField.canonicalRows actualModulus 6941 (.bxor 6930 6940) := by core033_kernel_decide
theorem stats6941 : actualRows6941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6941=7428 := by core033_kernel_decide
theorem rows6942 : actualRows6942=WordField.canonicalRows actualModulus 6942 (.shr 6941 31) := by core033_kernel_decide
theorem stats6942 : actualRows6942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6942=2892 := by core033_kernel_decide
theorem rows6943 : actualRows6943=WordField.canonicalRows actualModulus 6943 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6943 : actualRows6943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6943=2892 := by core033_kernel_decide
def partRows106 : List R1CS.Row := actualRows6880++actualRows6881++actualRows6882++actualRows6883++actualRows6884++actualRows6885++actualRows6886++actualRows6887++actualRows6888++actualRows6889++actualRows6890++actualRows6891++actualRows6892++actualRows6893++actualRows6894++actualRows6895++actualRows6896++actualRows6897++actualRows6898++actualRows6899++actualRows6900++actualRows6901++actualRows6902++actualRows6903++actualRows6904++actualRows6905++actualRows6906++actualRows6907++actualRows6908++actualRows6909++actualRows6910++actualRows6911++actualRows6912++actualRows6913++actualRows6914++actualRows6915++actualRows6916++actualRows6917++actualRows6918++actualRows6919++actualRows6920++actualRows6921++actualRows6922++actualRows6923++actualRows6924++actualRows6925++actualRows6926++actualRows6927++actualRows6928++actualRows6929++actualRows6930++actualRows6931++actualRows6932++actualRows6933++actualRows6934++actualRows6935++actualRows6936++actualRows6937++actualRows6938++actualRows6939++actualRows6940++actualRows6941++actualRows6942++actualRows6943
def partOps106 : List WordIR.Op := [.bxor 6877 6879,.shr 4575 8,.literal (BitVec.ofNat 32 0),.bnot 6882,.badd 6881 6883,.bnot 6884,.band 6880 6885,.bxor 6876 6886,.shr 6887 31,.literal (BitVec.ofNat 32 1),.bxor 6888 6889,.shr 4627 8,.literal (BitVec.ofNat 32 0),.bnot 6892,.band 6891 6893,.shr 4627 8,.literal (BitVec.ofNat 32 0),.bnot 6896,.bxor 6895 6897,.shr 4627 8,.literal (BitVec.ofNat 32 0),.bnot 6900,.badd 6899 6901,.bnot 6902,.band 6898 6903,.bxor 6894 6904,.shr 6905 31,.literal (BitVec.ofNat 32 1),.bxor 6906 6907,.shr 4679 8,.literal (BitVec.ofNat 32 0),.bnot 6910,.band 6909 6911,.shr 4679 8,.literal (BitVec.ofNat 32 0),.bnot 6914,.bxor 6913 6915,.shr 4679 8,.literal (BitVec.ofNat 32 0),.bnot 6918,.badd 6917 6919,.bnot 6920,.band 6916 6921,.bxor 6912 6922,.shr 6923 31,.literal (BitVec.ofNat 32 1),.bxor 6924 6925,.shr 4731 8,.literal (BitVec.ofNat 32 0),.bnot 6928,.band 6927 6929,.shr 4731 8,.literal (BitVec.ofNat 32 0),.bnot 6932,.bxor 6931 6933,.shr 4731 8,.literal (BitVec.ofNat 32 0),.bnot 6936,.badd 6935 6937,.bnot 6938,.band 6934 6939,.bxor 6930 6940,.shr 6941 31,.literal (BitVec.ofNat 32 1)]
theorem partExact106 : partRows106=WordField.rows actualModulus 6880 partOps106 := by
  simp only [partRows106,partOps106,WordField.rows,rows6880,rows6881,rows6882,rows6883,rows6884,rows6885,rows6886,rows6887,rows6888,rows6889,rows6890,rows6891,rows6892,rows6893,rows6894,rows6895,rows6896,rows6897,rows6898,rows6899,rows6900,rows6901,rows6902,rows6903,rows6904,rows6905,rows6906,rows6907,rows6908,rows6909,rows6910,rows6911,rows6912,rows6913,rows6914,rows6915,rows6916,rows6917,rows6918,rows6919,rows6920,rows6921,rows6922,rows6923,rows6924,rows6925,rows6926,rows6927,rows6928,rows6929,rows6930,rows6931,rows6932,rows6933,rows6934,rows6935,rows6936,rows6937,rows6938,rows6939,rows6940,rows6941,rows6942,rows6943,List.append_assoc,List.append_nil]
theorem partLength106 : partOps106.length=64 := by decide
theorem partStats106 : partRows106.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows106=323808 := by
  simp only [partRows106,List.length_append,MatrixRowBlocks.rows_weight_append,stats6880.1,stats6880.2,stats6881.1,stats6881.2,stats6882.1,stats6882.2,stats6883.1,stats6883.2,stats6884.1,stats6884.2,stats6885.1,stats6885.2,stats6886.1,stats6886.2,stats6887.1,stats6887.2,stats6888.1,stats6888.2,stats6889.1,stats6889.2,stats6890.1,stats6890.2,stats6891.1,stats6891.2,stats6892.1,stats6892.2,stats6893.1,stats6893.2,stats6894.1,stats6894.2,stats6895.1,stats6895.2,stats6896.1,stats6896.2,stats6897.1,stats6897.2,stats6898.1,stats6898.2,stats6899.1,stats6899.2,stats6900.1,stats6900.2,stats6901.1,stats6901.2,stats6902.1,stats6902.2,stats6903.1,stats6903.2,stats6904.1,stats6904.2,stats6905.1,stats6905.2,stats6906.1,stats6906.2,stats6907.1,stats6907.2,stats6908.1,stats6908.2,stats6909.1,stats6909.2,stats6910.1,stats6910.2,stats6911.1,stats6911.2,stats6912.1,stats6912.2,stats6913.1,stats6913.2,stats6914.1,stats6914.2,stats6915.1,stats6915.2,stats6916.1,stats6916.2,stats6917.1,stats6917.2,stats6918.1,stats6918.2,stats6919.1,stats6919.2,stats6920.1,stats6920.2,stats6921.1,stats6921.2,stats6922.1,stats6922.2,stats6923.1,stats6923.2,stats6924.1,stats6924.2,stats6925.1,stats6925.2,stats6926.1,stats6926.2,stats6927.1,stats6927.2,stats6928.1,stats6928.2,stats6929.1,stats6929.2,stats6930.1,stats6930.2,stats6931.1,stats6931.2,stats6932.1,stats6932.2,stats6933.1,stats6933.2,stats6934.1,stats6934.2,stats6935.1,stats6935.2,stats6936.1,stats6936.2,stats6937.1,stats6937.2,stats6938.1,stats6938.2,stats6939.1,stats6939.2,stats6940.1,stats6940.2,stats6941.1,stats6941.2,stats6942.1,stats6942.2,stats6943.1,stats6943.2]
  decide
end PairedPathRoundCheckedRows
