import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData91
import PathRoundDispatchInstructionMatrixData92
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5867 : actualRows5867=WordField.canonicalRows actualModulus 5867 (.shr 2651 8) := by core033_kernel_decide
theorem stats5867 : actualRows5867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5867=4548 := by core033_kernel_decide
theorem rows5868 : actualRows5868=WordField.canonicalRows actualModulus 5868 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5868 : actualRows5868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5868=2820 := by core033_kernel_decide
theorem rows5869 : actualRows5869=WordField.canonicalRows actualModulus 5869 (.bnot 5868) := by core033_kernel_decide
theorem stats5869 : actualRows5869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5869=6276 := by core033_kernel_decide
theorem rows5870 : actualRows5870=WordField.canonicalRows actualModulus 5870 (.band 5867 5869) := by core033_kernel_decide
theorem stats5870 : actualRows5870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5870=5124 := by core033_kernel_decide
theorem rows5871 : actualRows5871=WordField.canonicalRows actualModulus 5871 (.shr 2651 8) := by core033_kernel_decide
theorem stats5871 : actualRows5871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5871=4548 := by core033_kernel_decide
theorem rows5872 : actualRows5872=WordField.canonicalRows actualModulus 5872 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5872 : actualRows5872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5872=2820 := by core033_kernel_decide
theorem rows5873 : actualRows5873=WordField.canonicalRows actualModulus 5873 (.bnot 5872) := by core033_kernel_decide
theorem stats5873 : actualRows5873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5873=6276 := by core033_kernel_decide
theorem rows5874 : actualRows5874=WordField.canonicalRows actualModulus 5874 (.bxor 5871 5873) := by core033_kernel_decide
theorem stats5874 : actualRows5874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5874=7428 := by core033_kernel_decide
theorem rows5875 : actualRows5875=WordField.canonicalRows actualModulus 5875 (.shr 2651 8) := by core033_kernel_decide
theorem stats5875 : actualRows5875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5875=4548 := by core033_kernel_decide
theorem rows5876 : actualRows5876=WordField.canonicalRows actualModulus 5876 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5876 : actualRows5876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5876=2820 := by core033_kernel_decide
theorem rows5877 : actualRows5877=WordField.canonicalRows actualModulus 5877 (.bnot 5876) := by core033_kernel_decide
theorem stats5877 : actualRows5877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5877=6276 := by core033_kernel_decide
theorem rows5878 : actualRows5878=WordField.canonicalRows actualModulus 5878 (.badd 5875 5877) := by core033_kernel_decide
theorem stats5878 : actualRows5878.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5878=5388 := by core033_kernel_decide
theorem rows5879 : actualRows5879=WordField.canonicalRows actualModulus 5879 (.bnot 5878) := by core033_kernel_decide
theorem stats5879 : actualRows5879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5879=6276 := by core033_kernel_decide
theorem rows5880 : actualRows5880=WordField.canonicalRows actualModulus 5880 (.band 5874 5879) := by core033_kernel_decide
theorem stats5880 : actualRows5880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5880=5124 := by core033_kernel_decide
theorem rows5881 : actualRows5881=WordField.canonicalRows actualModulus 5881 (.bxor 5870 5880) := by core033_kernel_decide
theorem stats5881 : actualRows5881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5881=7428 := by core033_kernel_decide
theorem rows5882 : actualRows5882=WordField.canonicalRows actualModulus 5882 (.shr 5881 31) := by core033_kernel_decide
theorem stats5882 : actualRows5882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5882=2892 := by core033_kernel_decide
theorem rows5883 : actualRows5883=WordField.canonicalRows actualModulus 5883 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5883 : actualRows5883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5883=2892 := by core033_kernel_decide
theorem rows5884 : actualRows5884=WordField.canonicalRows actualModulus 5884 (.bxor 5882 5883) := by core033_kernel_decide
theorem stats5884 : actualRows5884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5884=7428 := by core033_kernel_decide
theorem rows5885 : actualRows5885=WordField.canonicalRows actualModulus 5885 (.shr 2703 8) := by core033_kernel_decide
theorem stats5885 : actualRows5885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5885=4548 := by core033_kernel_decide
theorem rows5886 : actualRows5886=WordField.canonicalRows actualModulus 5886 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5886 : actualRows5886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5886=2820 := by core033_kernel_decide
theorem rows5887 : actualRows5887=WordField.canonicalRows actualModulus 5887 (.bnot 5886) := by core033_kernel_decide
theorem stats5887 : actualRows5887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5887=6276 := by core033_kernel_decide
theorem rows5888 : actualRows5888=WordField.canonicalRows actualModulus 5888 (.band 5885 5887) := by core033_kernel_decide
theorem stats5888 : actualRows5888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5888=5124 := by core033_kernel_decide
theorem rows5889 : actualRows5889=WordField.canonicalRows actualModulus 5889 (.shr 2703 8) := by core033_kernel_decide
theorem stats5889 : actualRows5889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5889=4548 := by core033_kernel_decide
theorem rows5890 : actualRows5890=WordField.canonicalRows actualModulus 5890 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5890 : actualRows5890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5890=2820 := by core033_kernel_decide
theorem rows5891 : actualRows5891=WordField.canonicalRows actualModulus 5891 (.bnot 5890) := by core033_kernel_decide
theorem stats5891 : actualRows5891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5891=6276 := by core033_kernel_decide
theorem rows5892 : actualRows5892=WordField.canonicalRows actualModulus 5892 (.bxor 5889 5891) := by core033_kernel_decide
theorem stats5892 : actualRows5892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5892=7428 := by core033_kernel_decide
theorem rows5893 : actualRows5893=WordField.canonicalRows actualModulus 5893 (.shr 2703 8) := by core033_kernel_decide
theorem stats5893 : actualRows5893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5893=4548 := by core033_kernel_decide
theorem rows5894 : actualRows5894=WordField.canonicalRows actualModulus 5894 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5894 : actualRows5894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5894=2820 := by core033_kernel_decide
theorem rows5895 : actualRows5895=WordField.canonicalRows actualModulus 5895 (.bnot 5894) := by core033_kernel_decide
theorem stats5895 : actualRows5895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5895=6276 := by core033_kernel_decide
theorem rows5896 : actualRows5896=WordField.canonicalRows actualModulus 5896 (.badd 5893 5895) := by core033_kernel_decide
theorem stats5896 : actualRows5896.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5896=5388 := by core033_kernel_decide
theorem rows5897 : actualRows5897=WordField.canonicalRows actualModulus 5897 (.bnot 5896) := by core033_kernel_decide
theorem stats5897 : actualRows5897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5897=6276 := by core033_kernel_decide
theorem rows5898 : actualRows5898=WordField.canonicalRows actualModulus 5898 (.band 5892 5897) := by core033_kernel_decide
theorem stats5898 : actualRows5898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5898=5124 := by core033_kernel_decide
theorem rows5899 : actualRows5899=WordField.canonicalRows actualModulus 5899 (.bxor 5888 5898) := by core033_kernel_decide
theorem stats5899 : actualRows5899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5899=7428 := by core033_kernel_decide
theorem rows5900 : actualRows5900=WordField.canonicalRows actualModulus 5900 (.shr 5899 31) := by core033_kernel_decide
theorem stats5900 : actualRows5900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5900=2892 := by core033_kernel_decide
theorem rows5901 : actualRows5901=WordField.canonicalRows actualModulus 5901 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5901 : actualRows5901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5901=2892 := by core033_kernel_decide
theorem rows5902 : actualRows5902=WordField.canonicalRows actualModulus 5902 (.bxor 5900 5901) := by core033_kernel_decide
theorem stats5902 : actualRows5902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5902=7428 := by core033_kernel_decide
theorem rows5903 : actualRows5903=WordField.canonicalRows actualModulus 5903 (.shr 2755 8) := by core033_kernel_decide
theorem stats5903 : actualRows5903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5903=4548 := by core033_kernel_decide
theorem rows5904 : actualRows5904=WordField.canonicalRows actualModulus 5904 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5904 : actualRows5904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5904=2820 := by core033_kernel_decide
theorem rows5905 : actualRows5905=WordField.canonicalRows actualModulus 5905 (.bnot 5904) := by core033_kernel_decide
theorem stats5905 : actualRows5905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5905=6276 := by core033_kernel_decide
theorem rows5906 : actualRows5906=WordField.canonicalRows actualModulus 5906 (.band 5903 5905) := by core033_kernel_decide
theorem stats5906 : actualRows5906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5906=5124 := by core033_kernel_decide
theorem rows5907 : actualRows5907=WordField.canonicalRows actualModulus 5907 (.shr 2755 8) := by core033_kernel_decide
theorem stats5907 : actualRows5907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5907=4548 := by core033_kernel_decide
theorem rows5908 : actualRows5908=WordField.canonicalRows actualModulus 5908 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5908 : actualRows5908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5908=2820 := by core033_kernel_decide
theorem rows5909 : actualRows5909=WordField.canonicalRows actualModulus 5909 (.bnot 5908) := by core033_kernel_decide
theorem stats5909 : actualRows5909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5909=6276 := by core033_kernel_decide
theorem rows5910 : actualRows5910=WordField.canonicalRows actualModulus 5910 (.bxor 5907 5909) := by core033_kernel_decide
theorem stats5910 : actualRows5910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5910=7428 := by core033_kernel_decide
theorem rows5911 : actualRows5911=WordField.canonicalRows actualModulus 5911 (.shr 2755 8) := by core033_kernel_decide
theorem stats5911 : actualRows5911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5911=4548 := by core033_kernel_decide
theorem rows5912 : actualRows5912=WordField.canonicalRows actualModulus 5912 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5912 : actualRows5912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5912=2820 := by core033_kernel_decide
theorem rows5913 : actualRows5913=WordField.canonicalRows actualModulus 5913 (.bnot 5912) := by core033_kernel_decide
theorem stats5913 : actualRows5913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5913=6276 := by core033_kernel_decide
theorem rows5914 : actualRows5914=WordField.canonicalRows actualModulus 5914 (.badd 5911 5913) := by core033_kernel_decide
theorem stats5914 : actualRows5914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5914=5388 := by core033_kernel_decide
theorem rows5915 : actualRows5915=WordField.canonicalRows actualModulus 5915 (.bnot 5914) := by core033_kernel_decide
theorem stats5915 : actualRows5915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5915=6276 := by core033_kernel_decide
theorem rows5916 : actualRows5916=WordField.canonicalRows actualModulus 5916 (.band 5910 5915) := by core033_kernel_decide
theorem stats5916 : actualRows5916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5916=5124 := by core033_kernel_decide
theorem rows5917 : actualRows5917=WordField.canonicalRows actualModulus 5917 (.bxor 5906 5916) := by core033_kernel_decide
theorem stats5917 : actualRows5917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5917=7428 := by core033_kernel_decide
theorem rows5918 : actualRows5918=WordField.canonicalRows actualModulus 5918 (.shr 5917 31) := by core033_kernel_decide
theorem stats5918 : actualRows5918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5918=2892 := by core033_kernel_decide
theorem rows5919 : actualRows5919=WordField.canonicalRows actualModulus 5919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5919 : actualRows5919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5919=2892 := by core033_kernel_decide
theorem rows5920 : actualRows5920=WordField.canonicalRows actualModulus 5920 (.bxor 5918 5919) := by core033_kernel_decide
theorem stats5920 : actualRows5920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5920=7428 := by core033_kernel_decide
theorem rows5921 : actualRows5921=WordField.canonicalRows actualModulus 5921 (.shr 2807 8) := by core033_kernel_decide
theorem stats5921 : actualRows5921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5921=4548 := by core033_kernel_decide
theorem rows5922 : actualRows5922=WordField.canonicalRows actualModulus 5922 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5922 : actualRows5922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5922=2820 := by core033_kernel_decide
theorem rows5923 : actualRows5923=WordField.canonicalRows actualModulus 5923 (.bnot 5922) := by core033_kernel_decide
theorem stats5923 : actualRows5923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5923=6276 := by core033_kernel_decide
theorem rows5924 : actualRows5924=WordField.canonicalRows actualModulus 5924 (.band 5921 5923) := by core033_kernel_decide
theorem stats5924 : actualRows5924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5924=5124 := by core033_kernel_decide
theorem rows5925 : actualRows5925=WordField.canonicalRows actualModulus 5925 (.shr 2807 8) := by core033_kernel_decide
theorem stats5925 : actualRows5925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5925=4548 := by core033_kernel_decide
theorem rows5926 : actualRows5926=WordField.canonicalRows actualModulus 5926 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5926 : actualRows5926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5926=2820 := by core033_kernel_decide
theorem rows5927 : actualRows5927=WordField.canonicalRows actualModulus 5927 (.bnot 5926) := by core033_kernel_decide
theorem stats5927 : actualRows5927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5927=6276 := by core033_kernel_decide
theorem rows5928 : actualRows5928=WordField.canonicalRows actualModulus 5928 (.bxor 5925 5927) := by core033_kernel_decide
theorem stats5928 : actualRows5928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5928=7428 := by core033_kernel_decide
theorem rows5929 : actualRows5929=WordField.canonicalRows actualModulus 5929 (.shr 2807 8) := by core033_kernel_decide
theorem stats5929 : actualRows5929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5929=4548 := by core033_kernel_decide
theorem rows5930 : actualRows5930=WordField.canonicalRows actualModulus 5930 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5930 : actualRows5930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5930=2820 := by core033_kernel_decide
def partRows91 : List R1CS.Row := actualRows5867++actualRows5868++actualRows5869++actualRows5870++actualRows5871++actualRows5872++actualRows5873++actualRows5874++actualRows5875++actualRows5876++actualRows5877++actualRows5878++actualRows5879++actualRows5880++actualRows5881++actualRows5882++actualRows5883++actualRows5884++actualRows5885++actualRows5886++actualRows5887++actualRows5888++actualRows5889++actualRows5890++actualRows5891++actualRows5892++actualRows5893++actualRows5894++actualRows5895++actualRows5896++actualRows5897++actualRows5898++actualRows5899++actualRows5900++actualRows5901++actualRows5902++actualRows5903++actualRows5904++actualRows5905++actualRows5906++actualRows5907++actualRows5908++actualRows5909++actualRows5910++actualRows5911++actualRows5912++actualRows5913++actualRows5914++actualRows5915++actualRows5916++actualRows5917++actualRows5918++actualRows5919++actualRows5920++actualRows5921++actualRows5922++actualRows5923++actualRows5924++actualRows5925++actualRows5926++actualRows5927++actualRows5928++actualRows5929++actualRows5930
def partOps91 : List WordIR.Op := [.shr 2651 8,.literal (BitVec.ofNat 32 0),.bnot 5868,.band 5867 5869,.shr 2651 8,.literal (BitVec.ofNat 32 0),.bnot 5872,.bxor 5871 5873,.shr 2651 8,.literal (BitVec.ofNat 32 0),.bnot 5876,.badd 5875 5877,.bnot 5878,.band 5874 5879,.bxor 5870 5880,.shr 5881 31,.literal (BitVec.ofNat 32 1),.bxor 5882 5883,.shr 2703 8,.literal (BitVec.ofNat 32 0),.bnot 5886,.band 5885 5887,.shr 2703 8,.literal (BitVec.ofNat 32 0),.bnot 5890,.bxor 5889 5891,.shr 2703 8,.literal (BitVec.ofNat 32 0),.bnot 5894,.badd 5893 5895,.bnot 5896,.band 5892 5897,.bxor 5888 5898,.shr 5899 31,.literal (BitVec.ofNat 32 1),.bxor 5900 5901,.shr 2755 8,.literal (BitVec.ofNat 32 0),.bnot 5904,.band 5903 5905,.shr 2755 8,.literal (BitVec.ofNat 32 0),.bnot 5908,.bxor 5907 5909,.shr 2755 8,.literal (BitVec.ofNat 32 0),.bnot 5912,.badd 5911 5913,.bnot 5914,.band 5910 5915,.bxor 5906 5916,.shr 5917 31,.literal (BitVec.ofNat 32 1),.bxor 5918 5919,.shr 2807 8,.literal (BitVec.ofNat 32 0),.bnot 5922,.band 5921 5923,.shr 2807 8,.literal (BitVec.ofNat 32 0),.bnot 5926,.bxor 5925 5927,.shr 2807 8,.literal (BitVec.ofNat 32 0)]
theorem partExact91 : partRows91=WordField.rows actualModulus 5867 partOps91 := by
  simp only [partRows91,partOps91,WordField.rows,rows5867,rows5868,rows5869,rows5870,rows5871,rows5872,rows5873,rows5874,rows5875,rows5876,rows5877,rows5878,rows5879,rows5880,rows5881,rows5882,rows5883,rows5884,rows5885,rows5886,rows5887,rows5888,rows5889,rows5890,rows5891,rows5892,rows5893,rows5894,rows5895,rows5896,rows5897,rows5898,rows5899,rows5900,rows5901,rows5902,rows5903,rows5904,rows5905,rows5906,rows5907,rows5908,rows5909,rows5910,rows5911,rows5912,rows5913,rows5914,rows5915,rows5916,rows5917,rows5918,rows5919,rows5920,rows5921,rows5922,rows5923,rows5924,rows5925,rows5926,rows5927,rows5928,rows5929,rows5930,List.append_assoc,List.append_nil]
theorem partLength91 : partOps91.length=64 := by decide
theorem partStats91 : partRows91.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows91=319944 := by
  simp only [partRows91,List.length_append,MatrixRowBlocks.rows_weight_append,stats5867.1,stats5867.2,stats5868.1,stats5868.2,stats5869.1,stats5869.2,stats5870.1,stats5870.2,stats5871.1,stats5871.2,stats5872.1,stats5872.2,stats5873.1,stats5873.2,stats5874.1,stats5874.2,stats5875.1,stats5875.2,stats5876.1,stats5876.2,stats5877.1,stats5877.2,stats5878.1,stats5878.2,stats5879.1,stats5879.2,stats5880.1,stats5880.2,stats5881.1,stats5881.2,stats5882.1,stats5882.2,stats5883.1,stats5883.2,stats5884.1,stats5884.2,stats5885.1,stats5885.2,stats5886.1,stats5886.2,stats5887.1,stats5887.2,stats5888.1,stats5888.2,stats5889.1,stats5889.2,stats5890.1,stats5890.2,stats5891.1,stats5891.2,stats5892.1,stats5892.2,stats5893.1,stats5893.2,stats5894.1,stats5894.2,stats5895.1,stats5895.2,stats5896.1,stats5896.2,stats5897.1,stats5897.2,stats5898.1,stats5898.2,stats5899.1,stats5899.2,stats5900.1,stats5900.2,stats5901.1,stats5901.2,stats5902.1,stats5902.2,stats5903.1,stats5903.2,stats5904.1,stats5904.2,stats5905.1,stats5905.2,stats5906.1,stats5906.2,stats5907.1,stats5907.2,stats5908.1,stats5908.2,stats5909.1,stats5909.2,stats5910.1,stats5910.2,stats5911.1,stats5911.2,stats5912.1,stats5912.2,stats5913.1,stats5913.2,stats5914.1,stats5914.2,stats5915.1,stats5915.2,stats5916.1,stats5916.2,stats5917.1,stats5917.2,stats5918.1,stats5918.2,stats5919.1,stats5919.2,stats5920.1,stats5920.2,stats5921.1,stats5921.2,stats5922.1,stats5922.2,stats5923.1,stats5923.2,stats5924.1,stats5924.2,stats5925.1,stats5925.2,stats5926.1,stats5926.2,stats5927.1,stats5927.2,stats5928.1,stats5928.2,stats5929.1,stats5929.2,stats5930.1,stats5930.2]
  decide
end PathRoundDispatchCheckedRows
