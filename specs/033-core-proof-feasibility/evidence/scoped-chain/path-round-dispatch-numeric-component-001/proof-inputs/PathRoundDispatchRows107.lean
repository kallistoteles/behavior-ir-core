import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData107
import PathRoundDispatchInstructionMatrixData108
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6891 : actualRows6891=WordField.canonicalRows actualModulus 6891 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6891 : actualRows6891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6891=2892 := by core033_kernel_decide
theorem rows6892 : actualRows6892=WordField.canonicalRows actualModulus 6892 (.bxor 6890 6891) := by core033_kernel_decide
theorem stats6892 : actualRows6892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6892=7428 := by core033_kernel_decide
theorem rows6893 : actualRows6893=WordField.canonicalRows actualModulus 6893 (.shr 5627 8) := by core033_kernel_decide
theorem stats6893 : actualRows6893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6893=4548 := by core033_kernel_decide
theorem rows6894 : actualRows6894=WordField.canonicalRows actualModulus 6894 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6894 : actualRows6894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6894=2820 := by core033_kernel_decide
theorem rows6895 : actualRows6895=WordField.canonicalRows actualModulus 6895 (.bnot 6894) := by core033_kernel_decide
theorem stats6895 : actualRows6895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6895=6276 := by core033_kernel_decide
theorem rows6896 : actualRows6896=WordField.canonicalRows actualModulus 6896 (.band 6893 6895) := by core033_kernel_decide
theorem stats6896 : actualRows6896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6896=5124 := by core033_kernel_decide
theorem rows6897 : actualRows6897=WordField.canonicalRows actualModulus 6897 (.shr 5627 8) := by core033_kernel_decide
theorem stats6897 : actualRows6897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6897=4548 := by core033_kernel_decide
theorem rows6898 : actualRows6898=WordField.canonicalRows actualModulus 6898 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6898 : actualRows6898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6898=2820 := by core033_kernel_decide
theorem rows6899 : actualRows6899=WordField.canonicalRows actualModulus 6899 (.bnot 6898) := by core033_kernel_decide
theorem stats6899 : actualRows6899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6899=6276 := by core033_kernel_decide
theorem rows6900 : actualRows6900=WordField.canonicalRows actualModulus 6900 (.bxor 6897 6899) := by core033_kernel_decide
theorem stats6900 : actualRows6900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6900=7428 := by core033_kernel_decide
theorem rows6901 : actualRows6901=WordField.canonicalRows actualModulus 6901 (.shr 5627 8) := by core033_kernel_decide
theorem stats6901 : actualRows6901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6901=4548 := by core033_kernel_decide
theorem rows6902 : actualRows6902=WordField.canonicalRows actualModulus 6902 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6902 : actualRows6902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6902=2820 := by core033_kernel_decide
theorem rows6903 : actualRows6903=WordField.canonicalRows actualModulus 6903 (.bnot 6902) := by core033_kernel_decide
theorem stats6903 : actualRows6903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6903=6276 := by core033_kernel_decide
theorem rows6904 : actualRows6904=WordField.canonicalRows actualModulus 6904 (.badd 6901 6903) := by core033_kernel_decide
theorem stats6904 : actualRows6904.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6904=5388 := by core033_kernel_decide
theorem rows6905 : actualRows6905=WordField.canonicalRows actualModulus 6905 (.bnot 6904) := by core033_kernel_decide
theorem stats6905 : actualRows6905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6905=6276 := by core033_kernel_decide
theorem rows6906 : actualRows6906=WordField.canonicalRows actualModulus 6906 (.band 6900 6905) := by core033_kernel_decide
theorem stats6906 : actualRows6906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6906=5124 := by core033_kernel_decide
theorem rows6907 : actualRows6907=WordField.canonicalRows actualModulus 6907 (.bxor 6896 6906) := by core033_kernel_decide
theorem stats6907 : actualRows6907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6907=7428 := by core033_kernel_decide
theorem rows6908 : actualRows6908=WordField.canonicalRows actualModulus 6908 (.shr 6907 31) := by core033_kernel_decide
theorem stats6908 : actualRows6908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6908=2892 := by core033_kernel_decide
theorem rows6909 : actualRows6909=WordField.canonicalRows actualModulus 6909 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6909 : actualRows6909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6909=2892 := by core033_kernel_decide
theorem rows6910 : actualRows6910=WordField.canonicalRows actualModulus 6910 (.bxor 6908 6909) := by core033_kernel_decide
theorem stats6910 : actualRows6910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6910=7428 := by core033_kernel_decide
theorem rows6911 : actualRows6911=WordField.canonicalRows actualModulus 6911 (.shr 5680 8) := by core033_kernel_decide
theorem stats6911 : actualRows6911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6911=4548 := by core033_kernel_decide
theorem rows6912 : actualRows6912=WordField.canonicalRows actualModulus 6912 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6912 : actualRows6912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6912=2820 := by core033_kernel_decide
theorem rows6913 : actualRows6913=WordField.canonicalRows actualModulus 6913 (.bnot 6912) := by core033_kernel_decide
theorem stats6913 : actualRows6913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6913=6276 := by core033_kernel_decide
theorem rows6914 : actualRows6914=WordField.canonicalRows actualModulus 6914 (.band 6911 6913) := by core033_kernel_decide
theorem stats6914 : actualRows6914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6914=5124 := by core033_kernel_decide
theorem rows6915 : actualRows6915=WordField.canonicalRows actualModulus 6915 (.shr 5680 8) := by core033_kernel_decide
theorem stats6915 : actualRows6915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6915=4548 := by core033_kernel_decide
theorem rows6916 : actualRows6916=WordField.canonicalRows actualModulus 6916 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6916 : actualRows6916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6916=2820 := by core033_kernel_decide
theorem rows6917 : actualRows6917=WordField.canonicalRows actualModulus 6917 (.bnot 6916) := by core033_kernel_decide
theorem stats6917 : actualRows6917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6917=6276 := by core033_kernel_decide
theorem rows6918 : actualRows6918=WordField.canonicalRows actualModulus 6918 (.bxor 6915 6917) := by core033_kernel_decide
theorem stats6918 : actualRows6918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6918=7428 := by core033_kernel_decide
theorem rows6919 : actualRows6919=WordField.canonicalRows actualModulus 6919 (.shr 5680 8) := by core033_kernel_decide
theorem stats6919 : actualRows6919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6919=4548 := by core033_kernel_decide
theorem rows6920 : actualRows6920=WordField.canonicalRows actualModulus 6920 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6920 : actualRows6920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6920=2820 := by core033_kernel_decide
theorem rows6921 : actualRows6921=WordField.canonicalRows actualModulus 6921 (.bnot 6920) := by core033_kernel_decide
theorem stats6921 : actualRows6921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6921=6276 := by core033_kernel_decide
theorem rows6922 : actualRows6922=WordField.canonicalRows actualModulus 6922 (.badd 6919 6921) := by core033_kernel_decide
theorem stats6922 : actualRows6922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6922=5388 := by core033_kernel_decide
theorem rows6923 : actualRows6923=WordField.canonicalRows actualModulus 6923 (.bnot 6922) := by core033_kernel_decide
theorem stats6923 : actualRows6923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6923=6276 := by core033_kernel_decide
theorem rows6924 : actualRows6924=WordField.canonicalRows actualModulus 6924 (.band 6918 6923) := by core033_kernel_decide
theorem stats6924 : actualRows6924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6924=5124 := by core033_kernel_decide
theorem rows6925 : actualRows6925=WordField.canonicalRows actualModulus 6925 (.bxor 6914 6924) := by core033_kernel_decide
theorem stats6925 : actualRows6925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6925=7428 := by core033_kernel_decide
theorem rows6926 : actualRows6926=WordField.canonicalRows actualModulus 6926 (.shr 6925 31) := by core033_kernel_decide
theorem stats6926 : actualRows6926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6926=2892 := by core033_kernel_decide
theorem rows6927 : actualRows6927=WordField.canonicalRows actualModulus 6927 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6927 : actualRows6927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6927=2892 := by core033_kernel_decide
theorem rows6928 : actualRows6928=WordField.canonicalRows actualModulus 6928 (.bxor 6926 6927) := by core033_kernel_decide
theorem stats6928 : actualRows6928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6928=7428 := by core033_kernel_decide
theorem rows6929 : actualRows6929=WordField.canonicalRows actualModulus 6929 (.rotr 5770 17) := by core033_kernel_decide
theorem stats6929 : actualRows6929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6929=5124 := by core033_kernel_decide
theorem rows6930 : actualRows6930=WordField.canonicalRows actualModulus 6930 (.rotr 5770 19) := by core033_kernel_decide
theorem stats6930 : actualRows6930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6930=5124 := by core033_kernel_decide
theorem rows6931 : actualRows6931=WordField.canonicalRows actualModulus 6931 (.bxor 6929 6930) := by core033_kernel_decide
theorem stats6931 : actualRows6931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6931=7428 := by core033_kernel_decide
theorem rows6932 : actualRows6932=WordField.canonicalRows actualModulus 6932 (.shr 5770 10) := by core033_kernel_decide
theorem stats6932 : actualRows6932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6932=4404 := by core033_kernel_decide
theorem rows6933 : actualRows6933=WordField.canonicalRows actualModulus 6933 (.bxor 6931 6932) := by core033_kernel_decide
theorem stats6933 : actualRows6933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6933=7428 := by core033_kernel_decide
theorem rows6934 : actualRows6934=WordField.canonicalRows actualModulus 6934 (.badd 6933 5740) := by core033_kernel_decide
theorem stats6934 : actualRows6934.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6934=5388 := by core033_kernel_decide
theorem rows6935 : actualRows6935=WordField.canonicalRows actualModulus 6935 (.rotr 5692 7) := by core033_kernel_decide
theorem stats6935 : actualRows6935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6935=5124 := by core033_kernel_decide
theorem rows6936 : actualRows6936=WordField.canonicalRows actualModulus 6936 (.rotr 5692 18) := by core033_kernel_decide
theorem stats6936 : actualRows6936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6936=5124 := by core033_kernel_decide
theorem rows6937 : actualRows6937=WordField.canonicalRows actualModulus 6937 (.bxor 6935 6936) := by core033_kernel_decide
theorem stats6937 : actualRows6937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6937=7428 := by core033_kernel_decide
theorem rows6938 : actualRows6938=WordField.canonicalRows actualModulus 6938 (.shr 5692 3) := by core033_kernel_decide
theorem stats6938 : actualRows6938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6938=4908 := by core033_kernel_decide
theorem rows6939 : actualRows6939=WordField.canonicalRows actualModulus 6939 (.bxor 6937 6938) := by core033_kernel_decide
theorem stats6939 : actualRows6939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6939=7428 := by core033_kernel_decide
theorem rows6940 : actualRows6940=WordField.canonicalRows actualModulus 6940 (.badd 6934 6939) := by core033_kernel_decide
theorem stats6940 : actualRows6940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6940=5388 := by core033_kernel_decide
theorem rows6941 : actualRows6941=WordField.canonicalRows actualModulus 6941 (.badd 6940 5686) := by core033_kernel_decide
theorem stats6941 : actualRows6941.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6941=5388 := by core033_kernel_decide
theorem rows6942 : actualRows6942=WordField.canonicalRows actualModulus 6942 (.rotr 5776 17) := by core033_kernel_decide
theorem stats6942 : actualRows6942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6942=5124 := by core033_kernel_decide
theorem rows6943 : actualRows6943=WordField.canonicalRows actualModulus 6943 (.rotr 5776 19) := by core033_kernel_decide
theorem stats6943 : actualRows6943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6943=5124 := by core033_kernel_decide
theorem rows6944 : actualRows6944=WordField.canonicalRows actualModulus 6944 (.bxor 6942 6943) := by core033_kernel_decide
theorem stats6944 : actualRows6944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6944=7428 := by core033_kernel_decide
theorem rows6945 : actualRows6945=WordField.canonicalRows actualModulus 6945 (.shr 5776 10) := by core033_kernel_decide
theorem stats6945 : actualRows6945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6945=4404 := by core033_kernel_decide
theorem rows6946 : actualRows6946=WordField.canonicalRows actualModulus 6946 (.bxor 6944 6945) := by core033_kernel_decide
theorem stats6946 : actualRows6946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6946=7428 := by core033_kernel_decide
theorem rows6947 : actualRows6947=WordField.canonicalRows actualModulus 6947 (.badd 6946 5746) := by core033_kernel_decide
theorem stats6947 : actualRows6947.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6947=5388 := by core033_kernel_decide
theorem rows6948 : actualRows6948=WordField.canonicalRows actualModulus 6948 (.rotr 5698 7) := by core033_kernel_decide
theorem stats6948 : actualRows6948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6948=5124 := by core033_kernel_decide
theorem rows6949 : actualRows6949=WordField.canonicalRows actualModulus 6949 (.rotr 5698 18) := by core033_kernel_decide
theorem stats6949 : actualRows6949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6949=5124 := by core033_kernel_decide
theorem rows6950 : actualRows6950=WordField.canonicalRows actualModulus 6950 (.bxor 6948 6949) := by core033_kernel_decide
theorem stats6950 : actualRows6950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6950=7428 := by core033_kernel_decide
theorem rows6951 : actualRows6951=WordField.canonicalRows actualModulus 6951 (.shr 5698 3) := by core033_kernel_decide
theorem stats6951 : actualRows6951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6951=4908 := by core033_kernel_decide
theorem rows6952 : actualRows6952=WordField.canonicalRows actualModulus 6952 (.bxor 6950 6951) := by core033_kernel_decide
theorem stats6952 : actualRows6952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6952=7428 := by core033_kernel_decide
theorem rows6953 : actualRows6953=WordField.canonicalRows actualModulus 6953 (.badd 6947 6952) := by core033_kernel_decide
theorem stats6953 : actualRows6953.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6953=5388 := by core033_kernel_decide
theorem rows6954 : actualRows6954=WordField.canonicalRows actualModulus 6954 (.badd 6953 5692) := by core033_kernel_decide
theorem stats6954 : actualRows6954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6954=5388 := by core033_kernel_decide
def partRows107 : List R1CS.Row := actualRows6891++actualRows6892++actualRows6893++actualRows6894++actualRows6895++actualRows6896++actualRows6897++actualRows6898++actualRows6899++actualRows6900++actualRows6901++actualRows6902++actualRows6903++actualRows6904++actualRows6905++actualRows6906++actualRows6907++actualRows6908++actualRows6909++actualRows6910++actualRows6911++actualRows6912++actualRows6913++actualRows6914++actualRows6915++actualRows6916++actualRows6917++actualRows6918++actualRows6919++actualRows6920++actualRows6921++actualRows6922++actualRows6923++actualRows6924++actualRows6925++actualRows6926++actualRows6927++actualRows6928++actualRows6929++actualRows6930++actualRows6931++actualRows6932++actualRows6933++actualRows6934++actualRows6935++actualRows6936++actualRows6937++actualRows6938++actualRows6939++actualRows6940++actualRows6941++actualRows6942++actualRows6943++actualRows6944++actualRows6945++actualRows6946++actualRows6947++actualRows6948++actualRows6949++actualRows6950++actualRows6951++actualRows6952++actualRows6953++actualRows6954
def partOps107 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 6890 6891,.shr 5627 8,.literal (BitVec.ofNat 32 0),.bnot 6894,.band 6893 6895,.shr 5627 8,.literal (BitVec.ofNat 32 0),.bnot 6898,.bxor 6897 6899,.shr 5627 8,.literal (BitVec.ofNat 32 0),.bnot 6902,.badd 6901 6903,.bnot 6904,.band 6900 6905,.bxor 6896 6906,.shr 6907 31,.literal (BitVec.ofNat 32 1),.bxor 6908 6909,.shr 5680 8,.literal (BitVec.ofNat 32 0),.bnot 6912,.band 6911 6913,.shr 5680 8,.literal (BitVec.ofNat 32 0),.bnot 6916,.bxor 6915 6917,.shr 5680 8,.literal (BitVec.ofNat 32 0),.bnot 6920,.badd 6919 6921,.bnot 6922,.band 6918 6923,.bxor 6914 6924,.shr 6925 31,.literal (BitVec.ofNat 32 1),.bxor 6926 6927,.rotr 5770 17,.rotr 5770 19,.bxor 6929 6930,.shr 5770 10,.bxor 6931 6932,.badd 6933 5740,.rotr 5692 7,.rotr 5692 18,.bxor 6935 6936,.shr 5692 3,.bxor 6937 6938,.badd 6934 6939,.badd 6940 5686,.rotr 5776 17,.rotr 5776 19,.bxor 6942 6943,.shr 5776 10,.bxor 6944 6945,.badd 6946 5746,.rotr 5698 7,.rotr 5698 18,.bxor 6948 6949,.shr 5698 3,.bxor 6950 6951,.badd 6947 6952,.badd 6953 5692]
theorem partExact107 : partRows107=WordField.rows actualModulus 6891 partOps107 := by
  simp only [partRows107,partOps107,WordField.rows,rows6891,rows6892,rows6893,rows6894,rows6895,rows6896,rows6897,rows6898,rows6899,rows6900,rows6901,rows6902,rows6903,rows6904,rows6905,rows6906,rows6907,rows6908,rows6909,rows6910,rows6911,rows6912,rows6913,rows6914,rows6915,rows6916,rows6917,rows6918,rows6919,rows6920,rows6921,rows6922,rows6923,rows6924,rows6925,rows6926,rows6927,rows6928,rows6929,rows6930,rows6931,rows6932,rows6933,rows6934,rows6935,rows6936,rows6937,rows6938,rows6939,rows6940,rows6941,rows6942,rows6943,rows6944,rows6945,rows6946,rows6947,rows6948,rows6949,rows6950,rows6951,rows6952,rows6953,rows6954,List.append_assoc,List.append_nil]
theorem partLength107 : partOps107.length=64 := by decide
theorem partStats107 : partRows107.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows107=343512 := by
  simp only [partRows107,List.length_append,MatrixRowBlocks.rows_weight_append,stats6891.1,stats6891.2,stats6892.1,stats6892.2,stats6893.1,stats6893.2,stats6894.1,stats6894.2,stats6895.1,stats6895.2,stats6896.1,stats6896.2,stats6897.1,stats6897.2,stats6898.1,stats6898.2,stats6899.1,stats6899.2,stats6900.1,stats6900.2,stats6901.1,stats6901.2,stats6902.1,stats6902.2,stats6903.1,stats6903.2,stats6904.1,stats6904.2,stats6905.1,stats6905.2,stats6906.1,stats6906.2,stats6907.1,stats6907.2,stats6908.1,stats6908.2,stats6909.1,stats6909.2,stats6910.1,stats6910.2,stats6911.1,stats6911.2,stats6912.1,stats6912.2,stats6913.1,stats6913.2,stats6914.1,stats6914.2,stats6915.1,stats6915.2,stats6916.1,stats6916.2,stats6917.1,stats6917.2,stats6918.1,stats6918.2,stats6919.1,stats6919.2,stats6920.1,stats6920.2,stats6921.1,stats6921.2,stats6922.1,stats6922.2,stats6923.1,stats6923.2,stats6924.1,stats6924.2,stats6925.1,stats6925.2,stats6926.1,stats6926.2,stats6927.1,stats6927.2,stats6928.1,stats6928.2,stats6929.1,stats6929.2,stats6930.1,stats6930.2,stats6931.1,stats6931.2,stats6932.1,stats6932.2,stats6933.1,stats6933.2,stats6934.1,stats6934.2,stats6935.1,stats6935.2,stats6936.1,stats6936.2,stats6937.1,stats6937.2,stats6938.1,stats6938.2,stats6939.1,stats6939.2,stats6940.1,stats6940.2,stats6941.1,stats6941.2,stats6942.1,stats6942.2,stats6943.1,stats6943.2,stats6944.1,stats6944.2,stats6945.1,stats6945.2,stats6946.1,stats6946.2,stats6947.1,stats6947.2,stats6948.1,stats6948.2,stats6949.1,stats6949.2,stats6950.1,stats6950.2,stats6951.1,stats6951.2,stats6952.1,stats6952.2,stats6953.1,stats6953.2,stats6954.1,stats6954.2]
  decide
end PathRoundDispatchCheckedRows
