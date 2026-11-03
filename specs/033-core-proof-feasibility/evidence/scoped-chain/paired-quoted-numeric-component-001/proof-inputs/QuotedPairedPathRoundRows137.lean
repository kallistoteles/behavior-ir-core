import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData138
import PairedPathRoundInstructionMatrixData139
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8864 : actualRows8864=WordField.canonicalRows actualModulus 8864 (.band 8863 8801) := by core033_kernel_decide
theorem stats8864 : actualRows8864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8864=5124 := by core033_kernel_decide
theorem rows8865 : actualRows8865=WordField.canonicalRows actualModulus 8865 (.bxor 8862 8864) := by core033_kernel_decide
theorem stats8865 : actualRows8865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8865=7428 := by core033_kernel_decide
theorem rows8866 : actualRows8866=WordField.canonicalRows actualModulus 8866 (.badd 8861 8865) := by core033_kernel_decide
theorem stats8866 : actualRows8866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8866=5388 := by core033_kernel_decide
theorem rows8867 : actualRows8867=WordField.canonicalRows actualModulus 8867 (.literal (BitVec.ofNat 32 3584528711)) := by core033_kernel_decide
theorem stats8867 : actualRows8867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8867=4044 := by core033_kernel_decide
theorem rows8868 : actualRows8868=WordField.canonicalRows actualModulus 8868 (.badd 8866 8867) := by core033_kernel_decide
theorem stats8868 : actualRows8868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8868=5388 := by core033_kernel_decide
theorem rows8869 : actualRows8869=WordField.canonicalRows actualModulus 8869 (.badd 8868 7630) := by core033_kernel_decide
theorem stats8869 : actualRows8869.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8869=5388 := by core033_kernel_decide
theorem rows8870 : actualRows8870=WordField.canonicalRows actualModulus 8870 (.rotr 8854 2) := by core033_kernel_decide
theorem stats8870 : actualRows8870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8870=5124 := by core033_kernel_decide
theorem rows8871 : actualRows8871=WordField.canonicalRows actualModulus 8871 (.rotr 8854 13) := by core033_kernel_decide
theorem stats8871 : actualRows8871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8871=5124 := by core033_kernel_decide
theorem rows8872 : actualRows8872=WordField.canonicalRows actualModulus 8872 (.bxor 8870 8871) := by core033_kernel_decide
theorem stats8872 : actualRows8872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8872=7428 := by core033_kernel_decide
theorem rows8873 : actualRows8873=WordField.canonicalRows actualModulus 8873 (.rotr 8854 22) := by core033_kernel_decide
theorem stats8873 : actualRows8873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8873=5124 := by core033_kernel_decide
theorem rows8874 : actualRows8874=WordField.canonicalRows actualModulus 8874 (.bxor 8872 8873) := by core033_kernel_decide
theorem stats8874 : actualRows8874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8874=7428 := by core033_kernel_decide
theorem rows8875 : actualRows8875=WordField.canonicalRows actualModulus 8875 (.band 8854 8827) := by core033_kernel_decide
theorem stats8875 : actualRows8875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8875=5124 := by core033_kernel_decide
theorem rows8876 : actualRows8876=WordField.canonicalRows actualModulus 8876 (.band 8854 8800) := by core033_kernel_decide
theorem stats8876 : actualRows8876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8876=5124 := by core033_kernel_decide
theorem rows8877 : actualRows8877=WordField.canonicalRows actualModulus 8877 (.bxor 8875 8876) := by core033_kernel_decide
theorem stats8877 : actualRows8877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8877=7428 := by core033_kernel_decide
theorem rows8878 : actualRows8878=WordField.canonicalRows actualModulus 8878 (.band 8827 8800) := by core033_kernel_decide
theorem stats8878 : actualRows8878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8878=5124 := by core033_kernel_decide
theorem rows8879 : actualRows8879=WordField.canonicalRows actualModulus 8879 (.bxor 8877 8878) := by core033_kernel_decide
theorem stats8879 : actualRows8879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8879=7428 := by core033_kernel_decide
theorem rows8880 : actualRows8880=WordField.canonicalRows actualModulus 8880 (.badd 8874 8879) := by core033_kernel_decide
theorem stats8880 : actualRows8880.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8880=5388 := by core033_kernel_decide
theorem rows8881 : actualRows8881=WordField.canonicalRows actualModulus 8881 (.badd 8869 8880) := by core033_kernel_decide
theorem stats8881 : actualRows8881.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8881=5388 := by core033_kernel_decide
theorem rows8882 : actualRows8882=WordField.canonicalRows actualModulus 8882 (.badd 8773 8869) := by core033_kernel_decide
theorem stats8882 : actualRows8882.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8882=5388 := by core033_kernel_decide
theorem rows8883 : actualRows8883=WordField.canonicalRows actualModulus 8883 (.rotr 8882 6) := by core033_kernel_decide
theorem stats8883 : actualRows8883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8883=5124 := by core033_kernel_decide
theorem rows8884 : actualRows8884=WordField.canonicalRows actualModulus 8884 (.rotr 8882 11) := by core033_kernel_decide
theorem stats8884 : actualRows8884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8884=5124 := by core033_kernel_decide
theorem rows8885 : actualRows8885=WordField.canonicalRows actualModulus 8885 (.bxor 8883 8884) := by core033_kernel_decide
theorem stats8885 : actualRows8885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8885=7428 := by core033_kernel_decide
theorem rows8886 : actualRows8886=WordField.canonicalRows actualModulus 8886 (.rotr 8882 25) := by core033_kernel_decide
theorem stats8886 : actualRows8886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8886=5124 := by core033_kernel_decide
theorem rows8887 : actualRows8887=WordField.canonicalRows actualModulus 8887 (.bxor 8885 8886) := by core033_kernel_decide
theorem stats8887 : actualRows8887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8887=7428 := by core033_kernel_decide
theorem rows8888 : actualRows8888=WordField.canonicalRows actualModulus 8888 (.badd 8801 8887) := by core033_kernel_decide
theorem stats8888 : actualRows8888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8888=5388 := by core033_kernel_decide
theorem rows8889 : actualRows8889=WordField.canonicalRows actualModulus 8889 (.band 8882 8855) := by core033_kernel_decide
theorem stats8889 : actualRows8889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8889=5124 := by core033_kernel_decide
theorem rows8890 : actualRows8890=WordField.canonicalRows actualModulus 8890 (.bnot 8882) := by core033_kernel_decide
theorem stats8890 : actualRows8890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8890=6276 := by core033_kernel_decide
theorem rows8891 : actualRows8891=WordField.canonicalRows actualModulus 8891 (.band 8890 8828) := by core033_kernel_decide
theorem stats8891 : actualRows8891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8891=5124 := by core033_kernel_decide
theorem rows8892 : actualRows8892=WordField.canonicalRows actualModulus 8892 (.bxor 8889 8891) := by core033_kernel_decide
theorem stats8892 : actualRows8892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8892=7428 := by core033_kernel_decide
theorem rows8893 : actualRows8893=WordField.canonicalRows actualModulus 8893 (.badd 8888 8892) := by core033_kernel_decide
theorem stats8893 : actualRows8893.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8893=5388 := by core033_kernel_decide
theorem rows8894 : actualRows8894=WordField.canonicalRows actualModulus 8894 (.literal (BitVec.ofNat 32 113926993)) := by core033_kernel_decide
theorem stats8894 : actualRows8894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8894=3756 := by core033_kernel_decide
theorem rows8895 : actualRows8895=WordField.canonicalRows actualModulus 8895 (.badd 8893 8894) := by core033_kernel_decide
theorem stats8895 : actualRows8895.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8895=5388 := by core033_kernel_decide
theorem rows8896 : actualRows8896=WordField.canonicalRows actualModulus 8896 (.badd 8895 7643) := by core033_kernel_decide
theorem stats8896 : actualRows8896.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8896=5388 := by core033_kernel_decide
theorem rows8897 : actualRows8897=WordField.canonicalRows actualModulus 8897 (.rotr 8881 2) := by core033_kernel_decide
theorem stats8897 : actualRows8897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8897=5124 := by core033_kernel_decide
theorem rows8898 : actualRows8898=WordField.canonicalRows actualModulus 8898 (.rotr 8881 13) := by core033_kernel_decide
theorem stats8898 : actualRows8898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8898=5124 := by core033_kernel_decide
theorem rows8899 : actualRows8899=WordField.canonicalRows actualModulus 8899 (.bxor 8897 8898) := by core033_kernel_decide
theorem stats8899 : actualRows8899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8899=7428 := by core033_kernel_decide
theorem rows8900 : actualRows8900=WordField.canonicalRows actualModulus 8900 (.rotr 8881 22) := by core033_kernel_decide
theorem stats8900 : actualRows8900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8900=5124 := by core033_kernel_decide
theorem rows8901 : actualRows8901=WordField.canonicalRows actualModulus 8901 (.bxor 8899 8900) := by core033_kernel_decide
theorem stats8901 : actualRows8901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8901=7428 := by core033_kernel_decide
theorem rows8902 : actualRows8902=WordField.canonicalRows actualModulus 8902 (.band 8881 8854) := by core033_kernel_decide
theorem stats8902 : actualRows8902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8902=5124 := by core033_kernel_decide
theorem rows8903 : actualRows8903=WordField.canonicalRows actualModulus 8903 (.band 8881 8827) := by core033_kernel_decide
theorem stats8903 : actualRows8903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8903=5124 := by core033_kernel_decide
theorem rows8904 : actualRows8904=WordField.canonicalRows actualModulus 8904 (.bxor 8902 8903) := by core033_kernel_decide
theorem stats8904 : actualRows8904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8904=7428 := by core033_kernel_decide
theorem rows8905 : actualRows8905=WordField.canonicalRows actualModulus 8905 (.band 8854 8827) := by core033_kernel_decide
theorem stats8905 : actualRows8905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8905=5124 := by core033_kernel_decide
theorem rows8906 : actualRows8906=WordField.canonicalRows actualModulus 8906 (.bxor 8904 8905) := by core033_kernel_decide
theorem stats8906 : actualRows8906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8906=7428 := by core033_kernel_decide
theorem rows8907 : actualRows8907=WordField.canonicalRows actualModulus 8907 (.badd 8901 8906) := by core033_kernel_decide
theorem stats8907 : actualRows8907.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8907=5388 := by core033_kernel_decide
theorem rows8908 : actualRows8908=WordField.canonicalRows actualModulus 8908 (.badd 8896 8907) := by core033_kernel_decide
theorem stats8908 : actualRows8908.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8908=5388 := by core033_kernel_decide
theorem rows8909 : actualRows8909=WordField.canonicalRows actualModulus 8909 (.badd 8800 8896) := by core033_kernel_decide
theorem stats8909 : actualRows8909.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8909=5388 := by core033_kernel_decide
theorem rows8910 : actualRows8910=WordField.canonicalRows actualModulus 8910 (.rotr 8909 6) := by core033_kernel_decide
theorem stats8910 : actualRows8910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8910=5124 := by core033_kernel_decide
theorem rows8911 : actualRows8911=WordField.canonicalRows actualModulus 8911 (.rotr 8909 11) := by core033_kernel_decide
theorem stats8911 : actualRows8911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8911=5124 := by core033_kernel_decide
theorem rows8912 : actualRows8912=WordField.canonicalRows actualModulus 8912 (.bxor 8910 8911) := by core033_kernel_decide
theorem stats8912 : actualRows8912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8912=7428 := by core033_kernel_decide
theorem rows8913 : actualRows8913=WordField.canonicalRows actualModulus 8913 (.rotr 8909 25) := by core033_kernel_decide
theorem stats8913 : actualRows8913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8913=5124 := by core033_kernel_decide
theorem rows8914 : actualRows8914=WordField.canonicalRows actualModulus 8914 (.bxor 8912 8913) := by core033_kernel_decide
theorem stats8914 : actualRows8914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8914=7428 := by core033_kernel_decide
theorem rows8915 : actualRows8915=WordField.canonicalRows actualModulus 8915 (.badd 8828 8914) := by core033_kernel_decide
theorem stats8915 : actualRows8915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8915=5388 := by core033_kernel_decide
theorem rows8916 : actualRows8916=WordField.canonicalRows actualModulus 8916 (.band 8909 8882) := by core033_kernel_decide
theorem stats8916 : actualRows8916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8916=5124 := by core033_kernel_decide
theorem rows8917 : actualRows8917=WordField.canonicalRows actualModulus 8917 (.bnot 8909) := by core033_kernel_decide
theorem stats8917 : actualRows8917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8917=6276 := by core033_kernel_decide
theorem rows8918 : actualRows8918=WordField.canonicalRows actualModulus 8918 (.band 8917 8855) := by core033_kernel_decide
theorem stats8918 : actualRows8918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8918=5124 := by core033_kernel_decide
theorem rows8919 : actualRows8919=WordField.canonicalRows actualModulus 8919 (.bxor 8916 8918) := by core033_kernel_decide
theorem stats8919 : actualRows8919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8919=7428 := by core033_kernel_decide
theorem rows8920 : actualRows8920=WordField.canonicalRows actualModulus 8920 (.badd 8915 8919) := by core033_kernel_decide
theorem stats8920 : actualRows8920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8920=5388 := by core033_kernel_decide
theorem rows8921 : actualRows8921=WordField.canonicalRows actualModulus 8921 (.literal (BitVec.ofNat 32 338241895)) := by core033_kernel_decide
theorem stats8921 : actualRows8921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8921=3756 := by core033_kernel_decide
theorem rows8922 : actualRows8922=WordField.canonicalRows actualModulus 8922 (.badd 8920 8921) := by core033_kernel_decide
theorem stats8922 : actualRows8922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8922=5388 := by core033_kernel_decide
theorem rows8923 : actualRows8923=WordField.canonicalRows actualModulus 8923 (.badd 8922 7656) := by core033_kernel_decide
theorem stats8923 : actualRows8923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8923=5388 := by core033_kernel_decide
theorem rows8924 : actualRows8924=WordField.canonicalRows actualModulus 8924 (.rotr 8908 2) := by core033_kernel_decide
theorem stats8924 : actualRows8924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8924=5124 := by core033_kernel_decide
theorem rows8925 : actualRows8925=WordField.canonicalRows actualModulus 8925 (.rotr 8908 13) := by core033_kernel_decide
theorem stats8925 : actualRows8925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8925=5124 := by core033_kernel_decide
theorem rows8926 : actualRows8926=WordField.canonicalRows actualModulus 8926 (.bxor 8924 8925) := by core033_kernel_decide
theorem stats8926 : actualRows8926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8926=7428 := by core033_kernel_decide
theorem rows8927 : actualRows8927=WordField.canonicalRows actualModulus 8927 (.rotr 8908 22) := by core033_kernel_decide
theorem stats8927 : actualRows8927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8927=5124 := by core033_kernel_decide
def partRows137 : List R1CS.Row := actualRows8864++actualRows8865++actualRows8866++actualRows8867++actualRows8868++actualRows8869++actualRows8870++actualRows8871++actualRows8872++actualRows8873++actualRows8874++actualRows8875++actualRows8876++actualRows8877++actualRows8878++actualRows8879++actualRows8880++actualRows8881++actualRows8882++actualRows8883++actualRows8884++actualRows8885++actualRows8886++actualRows8887++actualRows8888++actualRows8889++actualRows8890++actualRows8891++actualRows8892++actualRows8893++actualRows8894++actualRows8895++actualRows8896++actualRows8897++actualRows8898++actualRows8899++actualRows8900++actualRows8901++actualRows8902++actualRows8903++actualRows8904++actualRows8905++actualRows8906++actualRows8907++actualRows8908++actualRows8909++actualRows8910++actualRows8911++actualRows8912++actualRows8913++actualRows8914++actualRows8915++actualRows8916++actualRows8917++actualRows8918++actualRows8919++actualRows8920++actualRows8921++actualRows8922++actualRows8923++actualRows8924++actualRows8925++actualRows8926++actualRows8927
def partOps137 : List WordIR.Op := [.band 8863 8801,.bxor 8862 8864,.badd 8861 8865,.literal (BitVec.ofNat 32 3584528711),.badd 8866 8867,.badd 8868 7630,.rotr 8854 2,.rotr 8854 13,.bxor 8870 8871,.rotr 8854 22,.bxor 8872 8873,.band 8854 8827,.band 8854 8800,.bxor 8875 8876,.band 8827 8800,.bxor 8877 8878,.badd 8874 8879,.badd 8869 8880,.badd 8773 8869,.rotr 8882 6,.rotr 8882 11,.bxor 8883 8884,.rotr 8882 25,.bxor 8885 8886,.badd 8801 8887,.band 8882 8855,.bnot 8882,.band 8890 8828,.bxor 8889 8891,.badd 8888 8892,.literal (BitVec.ofNat 32 113926993),.badd 8893 8894,.badd 8895 7643,.rotr 8881 2,.rotr 8881 13,.bxor 8897 8898,.rotr 8881 22,.bxor 8899 8900,.band 8881 8854,.band 8881 8827,.bxor 8902 8903,.band 8854 8827,.bxor 8904 8905,.badd 8901 8906,.badd 8896 8907,.badd 8800 8896,.rotr 8909 6,.rotr 8909 11,.bxor 8910 8911,.rotr 8909 25,.bxor 8912 8913,.badd 8828 8914,.band 8909 8882,.bnot 8909,.band 8917 8855,.bxor 8916 8918,.badd 8915 8919,.literal (BitVec.ofNat 32 338241895),.badd 8920 8921,.badd 8922 7656,.rotr 8908 2,.rotr 8908 13,.bxor 8924 8925,.rotr 8908 22]
theorem partExact137 : partRows137=WordField.rows actualModulus 8864 partOps137 := by
  simp only [partRows137,partOps137,WordField.rows,rows8864,rows8865,rows8866,rows8867,rows8868,rows8869,rows8870,rows8871,rows8872,rows8873,rows8874,rows8875,rows8876,rows8877,rows8878,rows8879,rows8880,rows8881,rows8882,rows8883,rows8884,rows8885,rows8886,rows8887,rows8888,rows8889,rows8890,rows8891,rows8892,rows8893,rows8894,rows8895,rows8896,rows8897,rows8898,rows8899,rows8900,rows8901,rows8902,rows8903,rows8904,rows8905,rows8906,rows8907,rows8908,rows8909,rows8910,rows8911,rows8912,rows8913,rows8914,rows8915,rows8916,rows8917,rows8918,rows8919,rows8920,rows8921,rows8922,rows8923,rows8924,rows8925,rows8926,rows8927,List.append_assoc,List.append_nil]
theorem partLength137 : partOps137.length=64 := by decide
theorem partStats137 : partRows137.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows137=367776 := by
  simp only [partRows137,List.length_append,MatrixRowBlocks.rows_weight_append,stats8864.1,stats8864.2,stats8865.1,stats8865.2,stats8866.1,stats8866.2,stats8867.1,stats8867.2,stats8868.1,stats8868.2,stats8869.1,stats8869.2,stats8870.1,stats8870.2,stats8871.1,stats8871.2,stats8872.1,stats8872.2,stats8873.1,stats8873.2,stats8874.1,stats8874.2,stats8875.1,stats8875.2,stats8876.1,stats8876.2,stats8877.1,stats8877.2,stats8878.1,stats8878.2,stats8879.1,stats8879.2,stats8880.1,stats8880.2,stats8881.1,stats8881.2,stats8882.1,stats8882.2,stats8883.1,stats8883.2,stats8884.1,stats8884.2,stats8885.1,stats8885.2,stats8886.1,stats8886.2,stats8887.1,stats8887.2,stats8888.1,stats8888.2,stats8889.1,stats8889.2,stats8890.1,stats8890.2,stats8891.1,stats8891.2,stats8892.1,stats8892.2,stats8893.1,stats8893.2,stats8894.1,stats8894.2,stats8895.1,stats8895.2,stats8896.1,stats8896.2,stats8897.1,stats8897.2,stats8898.1,stats8898.2,stats8899.1,stats8899.2,stats8900.1,stats8900.2,stats8901.1,stats8901.2,stats8902.1,stats8902.2,stats8903.1,stats8903.2,stats8904.1,stats8904.2,stats8905.1,stats8905.2,stats8906.1,stats8906.2,stats8907.1,stats8907.2,stats8908.1,stats8908.2,stats8909.1,stats8909.2,stats8910.1,stats8910.2,stats8911.1,stats8911.2,stats8912.1,stats8912.2,stats8913.1,stats8913.2,stats8914.1,stats8914.2,stats8915.1,stats8915.2,stats8916.1,stats8916.2,stats8917.1,stats8917.2,stats8918.1,stats8918.2,stats8919.1,stats8919.2,stats8920.1,stats8920.2,stats8921.1,stats8921.2,stats8922.1,stats8922.2,stats8923.1,stats8923.2,stats8924.1,stats8924.2,stats8925.1,stats8925.2,stats8926.1,stats8926.2,stats8927.1,stats8927.2]
  decide
end QuotedPairedPathRoundCheckedRows
