import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData107
import FrameHashControllerInstructionMatrixData108
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6891 : actualRows6891=WordField.canonicalRows actualModulus 6891 (.bxor 6889 6890) := by core033_kernel_decide
theorem stats6891 : actualRows6891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6891=7428 := by core033_kernel_decide
theorem rows6892 : actualRows6892=WordField.canonicalRows actualModulus 6892 (.badd 6886 6891) := by core033_kernel_decide
theorem stats6892 : actualRows6892.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6892=5388 := by core033_kernel_decide
theorem rows6893 : actualRows6893=WordField.canonicalRows actualModulus 6893 (.badd 6892 6685) := by core033_kernel_decide
theorem stats6893 : actualRows6893.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6893=5388 := by core033_kernel_decide
theorem rows6894 : actualRows6894=WordField.canonicalRows actualModulus 6894 (.rotr 6880 17) := by core033_kernel_decide
theorem stats6894 : actualRows6894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6894=5124 := by core033_kernel_decide
theorem rows6895 : actualRows6895=WordField.canonicalRows actualModulus 6895 (.rotr 6880 19) := by core033_kernel_decide
theorem stats6895 : actualRows6895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6895=5124 := by core033_kernel_decide
theorem rows6896 : actualRows6896=WordField.canonicalRows actualModulus 6896 (.bxor 6894 6895) := by core033_kernel_decide
theorem stats6896 : actualRows6896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6896=7428 := by core033_kernel_decide
theorem rows6897 : actualRows6897=WordField.canonicalRows actualModulus 6897 (.shr 6880 10) := by core033_kernel_decide
theorem stats6897 : actualRows6897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6897=4404 := by core033_kernel_decide
theorem rows6898 : actualRows6898=WordField.canonicalRows actualModulus 6898 (.bxor 6896 6897) := by core033_kernel_decide
theorem stats6898 : actualRows6898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6898=7428 := by core033_kernel_decide
theorem rows6899 : actualRows6899=WordField.canonicalRows actualModulus 6899 (.badd 6898 6815) := by core033_kernel_decide
theorem stats6899 : actualRows6899.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6899=5388 := by core033_kernel_decide
theorem rows6900 : actualRows6900=WordField.canonicalRows actualModulus 6900 (.rotr 6711 7) := by core033_kernel_decide
theorem stats6900 : actualRows6900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6900=5124 := by core033_kernel_decide
theorem rows6901 : actualRows6901=WordField.canonicalRows actualModulus 6901 (.rotr 6711 18) := by core033_kernel_decide
theorem stats6901 : actualRows6901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6901=5124 := by core033_kernel_decide
theorem rows6902 : actualRows6902=WordField.canonicalRows actualModulus 6902 (.bxor 6900 6901) := by core033_kernel_decide
theorem stats6902 : actualRows6902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6902=7428 := by core033_kernel_decide
theorem rows6903 : actualRows6903=WordField.canonicalRows actualModulus 6903 (.shr 6711 3) := by core033_kernel_decide
theorem stats6903 : actualRows6903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6903=4908 := by core033_kernel_decide
theorem rows6904 : actualRows6904=WordField.canonicalRows actualModulus 6904 (.bxor 6902 6903) := by core033_kernel_decide
theorem stats6904 : actualRows6904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6904=7428 := by core033_kernel_decide
theorem rows6905 : actualRows6905=WordField.canonicalRows actualModulus 6905 (.badd 6899 6904) := by core033_kernel_decide
theorem stats6905 : actualRows6905.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6905=5388 := by core033_kernel_decide
theorem rows6906 : actualRows6906=WordField.canonicalRows actualModulus 6906 (.badd 6905 6698) := by core033_kernel_decide
theorem stats6906 : actualRows6906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6906=5388 := by core033_kernel_decide
theorem rows6907 : actualRows6907=WordField.canonicalRows actualModulus 6907 (.rotr 6893 17) := by core033_kernel_decide
theorem stats6907 : actualRows6907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6907=5124 := by core033_kernel_decide
theorem rows6908 : actualRows6908=WordField.canonicalRows actualModulus 6908 (.rotr 6893 19) := by core033_kernel_decide
theorem stats6908 : actualRows6908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6908=5124 := by core033_kernel_decide
theorem rows6909 : actualRows6909=WordField.canonicalRows actualModulus 6909 (.bxor 6907 6908) := by core033_kernel_decide
theorem stats6909 : actualRows6909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6909=7428 := by core033_kernel_decide
theorem rows6910 : actualRows6910=WordField.canonicalRows actualModulus 6910 (.shr 6893 10) := by core033_kernel_decide
theorem stats6910 : actualRows6910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6910=4404 := by core033_kernel_decide
theorem rows6911 : actualRows6911=WordField.canonicalRows actualModulus 6911 (.bxor 6909 6910) := by core033_kernel_decide
theorem stats6911 : actualRows6911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6911=7428 := by core033_kernel_decide
theorem rows6912 : actualRows6912=WordField.canonicalRows actualModulus 6912 (.badd 6911 6828) := by core033_kernel_decide
theorem stats6912 : actualRows6912.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6912=5388 := by core033_kernel_decide
theorem rows6913 : actualRows6913=WordField.canonicalRows actualModulus 6913 (.rotr 6724 7) := by core033_kernel_decide
theorem stats6913 : actualRows6913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6913=5124 := by core033_kernel_decide
theorem rows6914 : actualRows6914=WordField.canonicalRows actualModulus 6914 (.rotr 6724 18) := by core033_kernel_decide
theorem stats6914 : actualRows6914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6914=5124 := by core033_kernel_decide
theorem rows6915 : actualRows6915=WordField.canonicalRows actualModulus 6915 (.bxor 6913 6914) := by core033_kernel_decide
theorem stats6915 : actualRows6915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6915=7428 := by core033_kernel_decide
theorem rows6916 : actualRows6916=WordField.canonicalRows actualModulus 6916 (.shr 6724 3) := by core033_kernel_decide
theorem stats6916 : actualRows6916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6916=4908 := by core033_kernel_decide
theorem rows6917 : actualRows6917=WordField.canonicalRows actualModulus 6917 (.bxor 6915 6916) := by core033_kernel_decide
theorem stats6917 : actualRows6917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6917=7428 := by core033_kernel_decide
theorem rows6918 : actualRows6918=WordField.canonicalRows actualModulus 6918 (.badd 6912 6917) := by core033_kernel_decide
theorem stats6918 : actualRows6918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6918=5388 := by core033_kernel_decide
theorem rows6919 : actualRows6919=WordField.canonicalRows actualModulus 6919 (.badd 6918 6711) := by core033_kernel_decide
theorem stats6919 : actualRows6919.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6919=5388 := by core033_kernel_decide
theorem rows6920 : actualRows6920=WordField.canonicalRows actualModulus 6920 (.rotr 6906 17) := by core033_kernel_decide
theorem stats6920 : actualRows6920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6920=5124 := by core033_kernel_decide
theorem rows6921 : actualRows6921=WordField.canonicalRows actualModulus 6921 (.rotr 6906 19) := by core033_kernel_decide
theorem stats6921 : actualRows6921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6921=5124 := by core033_kernel_decide
theorem rows6922 : actualRows6922=WordField.canonicalRows actualModulus 6922 (.bxor 6920 6921) := by core033_kernel_decide
theorem stats6922 : actualRows6922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6922=7428 := by core033_kernel_decide
theorem rows6923 : actualRows6923=WordField.canonicalRows actualModulus 6923 (.shr 6906 10) := by core033_kernel_decide
theorem stats6923 : actualRows6923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6923=4404 := by core033_kernel_decide
theorem rows6924 : actualRows6924=WordField.canonicalRows actualModulus 6924 (.bxor 6922 6923) := by core033_kernel_decide
theorem stats6924 : actualRows6924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6924=7428 := by core033_kernel_decide
theorem rows6925 : actualRows6925=WordField.canonicalRows actualModulus 6925 (.badd 6924 6841) := by core033_kernel_decide
theorem stats6925 : actualRows6925.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6925=5388 := by core033_kernel_decide
theorem rows6926 : actualRows6926=WordField.canonicalRows actualModulus 6926 (.rotr 6737 7) := by core033_kernel_decide
theorem stats6926 : actualRows6926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6926=5124 := by core033_kernel_decide
theorem rows6927 : actualRows6927=WordField.canonicalRows actualModulus 6927 (.rotr 6737 18) := by core033_kernel_decide
theorem stats6927 : actualRows6927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6927=5124 := by core033_kernel_decide
theorem rows6928 : actualRows6928=WordField.canonicalRows actualModulus 6928 (.bxor 6926 6927) := by core033_kernel_decide
theorem stats6928 : actualRows6928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6928=7428 := by core033_kernel_decide
theorem rows6929 : actualRows6929=WordField.canonicalRows actualModulus 6929 (.shr 6737 3) := by core033_kernel_decide
theorem stats6929 : actualRows6929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6929=4908 := by core033_kernel_decide
theorem rows6930 : actualRows6930=WordField.canonicalRows actualModulus 6930 (.bxor 6928 6929) := by core033_kernel_decide
theorem stats6930 : actualRows6930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6930=7428 := by core033_kernel_decide
theorem rows6931 : actualRows6931=WordField.canonicalRows actualModulus 6931 (.badd 6925 6930) := by core033_kernel_decide
theorem stats6931 : actualRows6931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6931=5388 := by core033_kernel_decide
theorem rows6932 : actualRows6932=WordField.canonicalRows actualModulus 6932 (.badd 6931 6724) := by core033_kernel_decide
theorem stats6932 : actualRows6932.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6932=5388 := by core033_kernel_decide
theorem rows6933 : actualRows6933=WordField.canonicalRows actualModulus 6933 (.rotr 6919 17) := by core033_kernel_decide
theorem stats6933 : actualRows6933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6933=5124 := by core033_kernel_decide
theorem rows6934 : actualRows6934=WordField.canonicalRows actualModulus 6934 (.rotr 6919 19) := by core033_kernel_decide
theorem stats6934 : actualRows6934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6934=5124 := by core033_kernel_decide
theorem rows6935 : actualRows6935=WordField.canonicalRows actualModulus 6935 (.bxor 6933 6934) := by core033_kernel_decide
theorem stats6935 : actualRows6935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6935=7428 := by core033_kernel_decide
theorem rows6936 : actualRows6936=WordField.canonicalRows actualModulus 6936 (.shr 6919 10) := by core033_kernel_decide
theorem stats6936 : actualRows6936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6936=4404 := by core033_kernel_decide
theorem rows6937 : actualRows6937=WordField.canonicalRows actualModulus 6937 (.bxor 6935 6936) := by core033_kernel_decide
theorem stats6937 : actualRows6937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6937=7428 := by core033_kernel_decide
theorem rows6938 : actualRows6938=WordField.canonicalRows actualModulus 6938 (.badd 6937 6854) := by core033_kernel_decide
theorem stats6938 : actualRows6938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6938=5388 := by core033_kernel_decide
theorem rows6939 : actualRows6939=WordField.canonicalRows actualModulus 6939 (.rotr 6750 7) := by core033_kernel_decide
theorem stats6939 : actualRows6939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6939=5124 := by core033_kernel_decide
theorem rows6940 : actualRows6940=WordField.canonicalRows actualModulus 6940 (.rotr 6750 18) := by core033_kernel_decide
theorem stats6940 : actualRows6940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6940=5124 := by core033_kernel_decide
theorem rows6941 : actualRows6941=WordField.canonicalRows actualModulus 6941 (.bxor 6939 6940) := by core033_kernel_decide
theorem stats6941 : actualRows6941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6941=7428 := by core033_kernel_decide
theorem rows6942 : actualRows6942=WordField.canonicalRows actualModulus 6942 (.shr 6750 3) := by core033_kernel_decide
theorem stats6942 : actualRows6942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6942=4908 := by core033_kernel_decide
theorem rows6943 : actualRows6943=WordField.canonicalRows actualModulus 6943 (.bxor 6941 6942) := by core033_kernel_decide
theorem stats6943 : actualRows6943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6943=7428 := by core033_kernel_decide
theorem rows6944 : actualRows6944=WordField.canonicalRows actualModulus 6944 (.badd 6938 6943) := by core033_kernel_decide
theorem stats6944 : actualRows6944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6944=5388 := by core033_kernel_decide
theorem rows6945 : actualRows6945=WordField.canonicalRows actualModulus 6945 (.badd 6944 6737) := by core033_kernel_decide
theorem stats6945 : actualRows6945.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6945=5388 := by core033_kernel_decide
theorem rows6946 : actualRows6946=WordField.canonicalRows actualModulus 6946 (.rotr 6932 17) := by core033_kernel_decide
theorem stats6946 : actualRows6946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6946=5124 := by core033_kernel_decide
theorem rows6947 : actualRows6947=WordField.canonicalRows actualModulus 6947 (.rotr 6932 19) := by core033_kernel_decide
theorem stats6947 : actualRows6947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6947=5124 := by core033_kernel_decide
theorem rows6948 : actualRows6948=WordField.canonicalRows actualModulus 6948 (.bxor 6946 6947) := by core033_kernel_decide
theorem stats6948 : actualRows6948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6948=7428 := by core033_kernel_decide
theorem rows6949 : actualRows6949=WordField.canonicalRows actualModulus 6949 (.shr 6932 10) := by core033_kernel_decide
theorem stats6949 : actualRows6949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6949=4404 := by core033_kernel_decide
theorem rows6950 : actualRows6950=WordField.canonicalRows actualModulus 6950 (.bxor 6948 6949) := by core033_kernel_decide
theorem stats6950 : actualRows6950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6950=7428 := by core033_kernel_decide
theorem rows6951 : actualRows6951=WordField.canonicalRows actualModulus 6951 (.badd 6950 6867) := by core033_kernel_decide
theorem stats6951 : actualRows6951.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6951=5388 := by core033_kernel_decide
theorem rows6952 : actualRows6952=WordField.canonicalRows actualModulus 6952 (.rotr 6763 7) := by core033_kernel_decide
theorem stats6952 : actualRows6952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6952=5124 := by core033_kernel_decide
theorem rows6953 : actualRows6953=WordField.canonicalRows actualModulus 6953 (.rotr 6763 18) := by core033_kernel_decide
theorem stats6953 : actualRows6953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6953=5124 := by core033_kernel_decide
theorem rows6954 : actualRows6954=WordField.canonicalRows actualModulus 6954 (.bxor 6952 6953) := by core033_kernel_decide
theorem stats6954 : actualRows6954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6954=7428 := by core033_kernel_decide
def partRows107 : List R1CS.Row := actualRows6891++actualRows6892++actualRows6893++actualRows6894++actualRows6895++actualRows6896++actualRows6897++actualRows6898++actualRows6899++actualRows6900++actualRows6901++actualRows6902++actualRows6903++actualRows6904++actualRows6905++actualRows6906++actualRows6907++actualRows6908++actualRows6909++actualRows6910++actualRows6911++actualRows6912++actualRows6913++actualRows6914++actualRows6915++actualRows6916++actualRows6917++actualRows6918++actualRows6919++actualRows6920++actualRows6921++actualRows6922++actualRows6923++actualRows6924++actualRows6925++actualRows6926++actualRows6927++actualRows6928++actualRows6929++actualRows6930++actualRows6931++actualRows6932++actualRows6933++actualRows6934++actualRows6935++actualRows6936++actualRows6937++actualRows6938++actualRows6939++actualRows6940++actualRows6941++actualRows6942++actualRows6943++actualRows6944++actualRows6945++actualRows6946++actualRows6947++actualRows6948++actualRows6949++actualRows6950++actualRows6951++actualRows6952++actualRows6953++actualRows6954
def partOps107 : List WordIR.Op := [.bxor 6889 6890,.badd 6886 6891,.badd 6892 6685,.rotr 6880 17,.rotr 6880 19,.bxor 6894 6895,.shr 6880 10,.bxor 6896 6897,.badd 6898 6815,.rotr 6711 7,.rotr 6711 18,.bxor 6900 6901,.shr 6711 3,.bxor 6902 6903,.badd 6899 6904,.badd 6905 6698,.rotr 6893 17,.rotr 6893 19,.bxor 6907 6908,.shr 6893 10,.bxor 6909 6910,.badd 6911 6828,.rotr 6724 7,.rotr 6724 18,.bxor 6913 6914,.shr 6724 3,.bxor 6915 6916,.badd 6912 6917,.badd 6918 6711,.rotr 6906 17,.rotr 6906 19,.bxor 6920 6921,.shr 6906 10,.bxor 6922 6923,.badd 6924 6841,.rotr 6737 7,.rotr 6737 18,.bxor 6926 6927,.shr 6737 3,.bxor 6928 6929,.badd 6925 6930,.badd 6931 6724,.rotr 6919 17,.rotr 6919 19,.bxor 6933 6934,.shr 6919 10,.bxor 6935 6936,.badd 6937 6854,.rotr 6750 7,.rotr 6750 18,.bxor 6939 6940,.shr 6750 3,.bxor 6941 6942,.badd 6938 6943,.badd 6944 6737,.rotr 6932 17,.rotr 6932 19,.bxor 6946 6947,.shr 6932 10,.bxor 6948 6949,.badd 6950 6867,.rotr 6763 7,.rotr 6763 18,.bxor 6952 6953]
theorem partExact107 : partRows107=WordField.rows actualModulus 6891 partOps107 := by
  simp only [partRows107,partOps107,WordField.rows,rows6891,rows6892,rows6893,rows6894,rows6895,rows6896,rows6897,rows6898,rows6899,rows6900,rows6901,rows6902,rows6903,rows6904,rows6905,rows6906,rows6907,rows6908,rows6909,rows6910,rows6911,rows6912,rows6913,rows6914,rows6915,rows6916,rows6917,rows6918,rows6919,rows6920,rows6921,rows6922,rows6923,rows6924,rows6925,rows6926,rows6927,rows6928,rows6929,rows6930,rows6931,rows6932,rows6933,rows6934,rows6935,rows6936,rows6937,rows6938,rows6939,rows6940,rows6941,rows6942,rows6943,rows6944,rows6945,rows6946,rows6947,rows6948,rows6949,rows6950,rows6951,rows6952,rows6953,rows6954,List.append_assoc,List.append_nil]
theorem partLength107 : partOps107.length=64 := by decide
theorem partStats107 : partRows107.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows107=373512 := by
  simp only [partRows107,List.length_append,MatrixRowBlocks.rows_weight_append,stats6891.1,stats6891.2,stats6892.1,stats6892.2,stats6893.1,stats6893.2,stats6894.1,stats6894.2,stats6895.1,stats6895.2,stats6896.1,stats6896.2,stats6897.1,stats6897.2,stats6898.1,stats6898.2,stats6899.1,stats6899.2,stats6900.1,stats6900.2,stats6901.1,stats6901.2,stats6902.1,stats6902.2,stats6903.1,stats6903.2,stats6904.1,stats6904.2,stats6905.1,stats6905.2,stats6906.1,stats6906.2,stats6907.1,stats6907.2,stats6908.1,stats6908.2,stats6909.1,stats6909.2,stats6910.1,stats6910.2,stats6911.1,stats6911.2,stats6912.1,stats6912.2,stats6913.1,stats6913.2,stats6914.1,stats6914.2,stats6915.1,stats6915.2,stats6916.1,stats6916.2,stats6917.1,stats6917.2,stats6918.1,stats6918.2,stats6919.1,stats6919.2,stats6920.1,stats6920.2,stats6921.1,stats6921.2,stats6922.1,stats6922.2,stats6923.1,stats6923.2,stats6924.1,stats6924.2,stats6925.1,stats6925.2,stats6926.1,stats6926.2,stats6927.1,stats6927.2,stats6928.1,stats6928.2,stats6929.1,stats6929.2,stats6930.1,stats6930.2,stats6931.1,stats6931.2,stats6932.1,stats6932.2,stats6933.1,stats6933.2,stats6934.1,stats6934.2,stats6935.1,stats6935.2,stats6936.1,stats6936.2,stats6937.1,stats6937.2,stats6938.1,stats6938.2,stats6939.1,stats6939.2,stats6940.1,stats6940.2,stats6941.1,stats6941.2,stats6942.1,stats6942.2,stats6943.1,stats6943.2,stats6944.1,stats6944.2,stats6945.1,stats6945.2,stats6946.1,stats6946.2,stats6947.1,stats6947.2,stats6948.1,stats6948.2,stats6949.1,stats6949.2,stats6950.1,stats6950.2,stats6951.1,stats6951.2,stats6952.1,stats6952.2,stats6953.1,stats6953.2,stats6954.1,stats6954.2]
  decide
end FrameHashControllerCheckedRows
