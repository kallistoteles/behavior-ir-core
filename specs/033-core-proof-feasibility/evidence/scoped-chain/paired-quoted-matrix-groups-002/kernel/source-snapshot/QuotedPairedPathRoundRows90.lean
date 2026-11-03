import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData91
import PairedPathRoundInstructionMatrixData92
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5856 : actualRows5856=WordField.canonicalRows actualModulus 5856 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5856 : actualRows5856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5856=2892 := by core033_kernel_decide
theorem rows5857 : actualRows5857=WordField.canonicalRows actualModulus 5857 (.bxor 616 5856) := by core033_kernel_decide
theorem stats5857 : actualRows5857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5857=7428 := by core033_kernel_decide
theorem rows5858 : actualRows5858=WordField.canonicalRows actualModulus 5858 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5858 : actualRows5858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5858=2820 := by core033_kernel_decide
theorem rows5859 : actualRows5859=WordField.canonicalRows actualModulus 5859 (.bnot 5858) := by core033_kernel_decide
theorem stats5859 : actualRows5859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5859=6276 := by core033_kernel_decide
theorem rows5860 : actualRows5860=WordField.canonicalRows actualModulus 5860 (.band 5857 5859) := by core033_kernel_decide
theorem stats5860 : actualRows5860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5860=5124 := by core033_kernel_decide
theorem rows5861 : actualRows5861=WordField.canonicalRows actualModulus 5861 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5861 : actualRows5861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5861=2892 := by core033_kernel_decide
theorem rows5862 : actualRows5862=WordField.canonicalRows actualModulus 5862 (.bxor 616 5861) := by core033_kernel_decide
theorem stats5862 : actualRows5862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5862=7428 := by core033_kernel_decide
theorem rows5863 : actualRows5863=WordField.canonicalRows actualModulus 5863 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5863 : actualRows5863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5863=2820 := by core033_kernel_decide
theorem rows5864 : actualRows5864=WordField.canonicalRows actualModulus 5864 (.bnot 5863) := by core033_kernel_decide
theorem stats5864 : actualRows5864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5864=6276 := by core033_kernel_decide
theorem rows5865 : actualRows5865=WordField.canonicalRows actualModulus 5865 (.bxor 5862 5864) := by core033_kernel_decide
theorem stats5865 : actualRows5865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5865=7428 := by core033_kernel_decide
theorem rows5866 : actualRows5866=WordField.canonicalRows actualModulus 5866 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5866 : actualRows5866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5866=2892 := by core033_kernel_decide
theorem rows5867 : actualRows5867=WordField.canonicalRows actualModulus 5867 (.bxor 616 5866) := by core033_kernel_decide
theorem stats5867 : actualRows5867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5867=7428 := by core033_kernel_decide
theorem rows5868 : actualRows5868=WordField.canonicalRows actualModulus 5868 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5868 : actualRows5868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5868=2820 := by core033_kernel_decide
theorem rows5869 : actualRows5869=WordField.canonicalRows actualModulus 5869 (.bnot 5868) := by core033_kernel_decide
theorem stats5869 : actualRows5869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5869=6276 := by core033_kernel_decide
theorem rows5870 : actualRows5870=WordField.canonicalRows actualModulus 5870 (.badd 5867 5869) := by core033_kernel_decide
theorem stats5870 : actualRows5870.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5870=5388 := by core033_kernel_decide
theorem rows5871 : actualRows5871=WordField.canonicalRows actualModulus 5871 (.bnot 5870) := by core033_kernel_decide
theorem stats5871 : actualRows5871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5871=6276 := by core033_kernel_decide
theorem rows5872 : actualRows5872=WordField.canonicalRows actualModulus 5872 (.band 5865 5871) := by core033_kernel_decide
theorem stats5872 : actualRows5872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5872=5124 := by core033_kernel_decide
theorem rows5873 : actualRows5873=WordField.canonicalRows actualModulus 5873 (.bxor 5860 5872) := by core033_kernel_decide
theorem stats5873 : actualRows5873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5873=7428 := by core033_kernel_decide
theorem rows5874 : actualRows5874=WordField.canonicalRows actualModulus 5874 (.shr 5873 31) := by core033_kernel_decide
theorem stats5874 : actualRows5874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5874=2892 := by core033_kernel_decide
theorem rows5875 : actualRows5875=WordField.canonicalRows actualModulus 5875 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5875 : actualRows5875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5875=2892 := by core033_kernel_decide
theorem rows5876 : actualRows5876=WordField.canonicalRows actualModulus 5876 (.bxor 5874 5875) := by core033_kernel_decide
theorem stats5876 : actualRows5876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5876=7428 := by core033_kernel_decide
theorem rows5877 : actualRows5877=WordField.canonicalRows actualModulus 5877 (.bnot 5876) := by core033_kernel_decide
theorem stats5877 : actualRows5877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5877=6276 := by core033_kernel_decide
theorem rows5878 : actualRows5878=WordField.canonicalRows actualModulus 5878 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5878 : actualRows5878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5878=2892 := by core033_kernel_decide
theorem rows5879 : actualRows5879=WordField.canonicalRows actualModulus 5879 (.badd 5877 5878) := by core033_kernel_decide
theorem stats5879 : actualRows5879.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5879=5388 := by core033_kernel_decide
theorem rows5880 : actualRows5880=WordField.canonicalRows actualModulus 5880 (.bnot 5879) := by core033_kernel_decide
theorem stats5880 : actualRows5880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5880=6276 := by core033_kernel_decide
theorem rows5881 : actualRows5881=WordField.canonicalRows actualModulus 5881 (.band 5880 1992) := by core033_kernel_decide
theorem stats5881 : actualRows5881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5881=5124 := by core033_kernel_decide
theorem rows5882 : actualRows5882=WordField.canonicalRows actualModulus 5882 (.bxor 5855 5881) := by core033_kernel_decide
theorem stats5882 : actualRows5882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5882=7428 := by core033_kernel_decide
theorem rows5883 : actualRows5883=WordField.canonicalRows actualModulus 5883 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5883 : actualRows5883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5883=2892 := by core033_kernel_decide
theorem rows5884 : actualRows5884=WordField.canonicalRows actualModulus 5884 (.bxor 616 5883) := by core033_kernel_decide
theorem stats5884 : actualRows5884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5884=7428 := by core033_kernel_decide
theorem rows5885 : actualRows5885=WordField.canonicalRows actualModulus 5885 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5885 : actualRows5885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5885=2820 := by core033_kernel_decide
theorem rows5886 : actualRows5886=WordField.canonicalRows actualModulus 5886 (.bnot 5885) := by core033_kernel_decide
theorem stats5886 : actualRows5886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5886=6276 := by core033_kernel_decide
theorem rows5887 : actualRows5887=WordField.canonicalRows actualModulus 5887 (.band 5884 5886) := by core033_kernel_decide
theorem stats5887 : actualRows5887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5887=5124 := by core033_kernel_decide
theorem rows5888 : actualRows5888=WordField.canonicalRows actualModulus 5888 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5888 : actualRows5888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5888=2892 := by core033_kernel_decide
theorem rows5889 : actualRows5889=WordField.canonicalRows actualModulus 5889 (.bxor 616 5888) := by core033_kernel_decide
theorem stats5889 : actualRows5889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5889=7428 := by core033_kernel_decide
theorem rows5890 : actualRows5890=WordField.canonicalRows actualModulus 5890 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5890 : actualRows5890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5890=2820 := by core033_kernel_decide
theorem rows5891 : actualRows5891=WordField.canonicalRows actualModulus 5891 (.bnot 5890) := by core033_kernel_decide
theorem stats5891 : actualRows5891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5891=6276 := by core033_kernel_decide
theorem rows5892 : actualRows5892=WordField.canonicalRows actualModulus 5892 (.bxor 5889 5891) := by core033_kernel_decide
theorem stats5892 : actualRows5892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5892=7428 := by core033_kernel_decide
theorem rows5893 : actualRows5893=WordField.canonicalRows actualModulus 5893 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5893 : actualRows5893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5893=2892 := by core033_kernel_decide
theorem rows5894 : actualRows5894=WordField.canonicalRows actualModulus 5894 (.bxor 616 5893) := by core033_kernel_decide
theorem stats5894 : actualRows5894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5894=7428 := by core033_kernel_decide
theorem rows5895 : actualRows5895=WordField.canonicalRows actualModulus 5895 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5895 : actualRows5895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5895=2820 := by core033_kernel_decide
theorem rows5896 : actualRows5896=WordField.canonicalRows actualModulus 5896 (.bnot 5895) := by core033_kernel_decide
theorem stats5896 : actualRows5896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5896=6276 := by core033_kernel_decide
theorem rows5897 : actualRows5897=WordField.canonicalRows actualModulus 5897 (.badd 5894 5896) := by core033_kernel_decide
theorem stats5897 : actualRows5897.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5897=5388 := by core033_kernel_decide
theorem rows5898 : actualRows5898=WordField.canonicalRows actualModulus 5898 (.bnot 5897) := by core033_kernel_decide
theorem stats5898 : actualRows5898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5898=6276 := by core033_kernel_decide
theorem rows5899 : actualRows5899=WordField.canonicalRows actualModulus 5899 (.band 5892 5898) := by core033_kernel_decide
theorem stats5899 : actualRows5899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5899=5124 := by core033_kernel_decide
theorem rows5900 : actualRows5900=WordField.canonicalRows actualModulus 5900 (.bxor 5887 5899) := by core033_kernel_decide
theorem stats5900 : actualRows5900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5900=7428 := by core033_kernel_decide
theorem rows5901 : actualRows5901=WordField.canonicalRows actualModulus 5901 (.shr 5900 31) := by core033_kernel_decide
theorem stats5901 : actualRows5901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5901=2892 := by core033_kernel_decide
theorem rows5902 : actualRows5902=WordField.canonicalRows actualModulus 5902 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5902 : actualRows5902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5902=2892 := by core033_kernel_decide
theorem rows5903 : actualRows5903=WordField.canonicalRows actualModulus 5903 (.bxor 5901 5902) := by core033_kernel_decide
theorem stats5903 : actualRows5903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5903=7428 := by core033_kernel_decide
theorem rows5904 : actualRows5904=WordField.canonicalRows actualModulus 5904 (.bnot 5903) := by core033_kernel_decide
theorem stats5904 : actualRows5904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5904=6276 := by core033_kernel_decide
theorem rows5905 : actualRows5905=WordField.canonicalRows actualModulus 5905 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5905 : actualRows5905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5905=2892 := by core033_kernel_decide
theorem rows5906 : actualRows5906=WordField.canonicalRows actualModulus 5906 (.badd 5904 5905) := by core033_kernel_decide
theorem stats5906 : actualRows5906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5906=5388 := by core033_kernel_decide
theorem rows5907 : actualRows5907=WordField.canonicalRows actualModulus 5907 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5907 : actualRows5907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5907=2820 := by core033_kernel_decide
theorem rows5908 : actualRows5908=WordField.canonicalRows actualModulus 5908 (.band 5906 5907) := by core033_kernel_decide
theorem stats5908 : actualRows5908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5908=5124 := by core033_kernel_decide
theorem rows5909 : actualRows5909=WordField.canonicalRows actualModulus 5909 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5909 : actualRows5909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5909=2892 := by core033_kernel_decide
theorem rows5910 : actualRows5910=WordField.canonicalRows actualModulus 5910 (.bxor 616 5909) := by core033_kernel_decide
theorem stats5910 : actualRows5910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5910=7428 := by core033_kernel_decide
theorem rows5911 : actualRows5911=WordField.canonicalRows actualModulus 5911 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5911 : actualRows5911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5911=2820 := by core033_kernel_decide
theorem rows5912 : actualRows5912=WordField.canonicalRows actualModulus 5912 (.bnot 5911) := by core033_kernel_decide
theorem stats5912 : actualRows5912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5912=6276 := by core033_kernel_decide
theorem rows5913 : actualRows5913=WordField.canonicalRows actualModulus 5913 (.band 5910 5912) := by core033_kernel_decide
theorem stats5913 : actualRows5913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5913=5124 := by core033_kernel_decide
theorem rows5914 : actualRows5914=WordField.canonicalRows actualModulus 5914 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5914 : actualRows5914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5914=2892 := by core033_kernel_decide
theorem rows5915 : actualRows5915=WordField.canonicalRows actualModulus 5915 (.bxor 616 5914) := by core033_kernel_decide
theorem stats5915 : actualRows5915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5915=7428 := by core033_kernel_decide
theorem rows5916 : actualRows5916=WordField.canonicalRows actualModulus 5916 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5916 : actualRows5916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5916=2820 := by core033_kernel_decide
theorem rows5917 : actualRows5917=WordField.canonicalRows actualModulus 5917 (.bnot 5916) := by core033_kernel_decide
theorem stats5917 : actualRows5917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5917=6276 := by core033_kernel_decide
theorem rows5918 : actualRows5918=WordField.canonicalRows actualModulus 5918 (.bxor 5915 5917) := by core033_kernel_decide
theorem stats5918 : actualRows5918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5918=7428 := by core033_kernel_decide
theorem rows5919 : actualRows5919=WordField.canonicalRows actualModulus 5919 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5919 : actualRows5919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5919=2892 := by core033_kernel_decide
def partRows90 : List R1CS.Row := actualRows5856++actualRows5857++actualRows5858++actualRows5859++actualRows5860++actualRows5861++actualRows5862++actualRows5863++actualRows5864++actualRows5865++actualRows5866++actualRows5867++actualRows5868++actualRows5869++actualRows5870++actualRows5871++actualRows5872++actualRows5873++actualRows5874++actualRows5875++actualRows5876++actualRows5877++actualRows5878++actualRows5879++actualRows5880++actualRows5881++actualRows5882++actualRows5883++actualRows5884++actualRows5885++actualRows5886++actualRows5887++actualRows5888++actualRows5889++actualRows5890++actualRows5891++actualRows5892++actualRows5893++actualRows5894++actualRows5895++actualRows5896++actualRows5897++actualRows5898++actualRows5899++actualRows5900++actualRows5901++actualRows5902++actualRows5903++actualRows5904++actualRows5905++actualRows5906++actualRows5907++actualRows5908++actualRows5909++actualRows5910++actualRows5911++actualRows5912++actualRows5913++actualRows5914++actualRows5915++actualRows5916++actualRows5917++actualRows5918++actualRows5919
def partOps90 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 616 5856,.literal (BitVec.ofNat 32 0),.bnot 5858,.band 5857 5859,.literal (BitVec.ofNat 32 2),.bxor 616 5861,.literal (BitVec.ofNat 32 0),.bnot 5863,.bxor 5862 5864,.literal (BitVec.ofNat 32 2),.bxor 616 5866,.literal (BitVec.ofNat 32 0),.bnot 5868,.badd 5867 5869,.bnot 5870,.band 5865 5871,.bxor 5860 5872,.shr 5873 31,.literal (BitVec.ofNat 32 1),.bxor 5874 5875,.bnot 5876,.literal (BitVec.ofNat 32 1),.badd 5877 5878,.bnot 5879,.band 5880 1992,.bxor 5855 5881,.literal (BitVec.ofNat 32 2),.bxor 616 5883,.literal (BitVec.ofNat 32 0),.bnot 5885,.band 5884 5886,.literal (BitVec.ofNat 32 2),.bxor 616 5888,.literal (BitVec.ofNat 32 0),.bnot 5890,.bxor 5889 5891,.literal (BitVec.ofNat 32 2),.bxor 616 5893,.literal (BitVec.ofNat 32 0),.bnot 5895,.badd 5894 5896,.bnot 5897,.band 5892 5898,.bxor 5887 5899,.shr 5900 31,.literal (BitVec.ofNat 32 1),.bxor 5901 5902,.bnot 5903,.literal (BitVec.ofNat 32 1),.badd 5904 5905,.literal (BitVec.ofNat 32 0),.band 5906 5907,.literal (BitVec.ofNat 32 2),.bxor 616 5909,.literal (BitVec.ofNat 32 0),.bnot 5911,.band 5910 5912,.literal (BitVec.ofNat 32 2),.bxor 616 5914,.literal (BitVec.ofNat 32 0),.bnot 5916,.bxor 5915 5917,.literal (BitVec.ofNat 32 2)]
theorem partExact90 : partRows90=WordField.rows actualModulus 5856 partOps90 := by
  simp only [partRows90,partOps90,WordField.rows,rows5856,rows5857,rows5858,rows5859,rows5860,rows5861,rows5862,rows5863,rows5864,rows5865,rows5866,rows5867,rows5868,rows5869,rows5870,rows5871,rows5872,rows5873,rows5874,rows5875,rows5876,rows5877,rows5878,rows5879,rows5880,rows5881,rows5882,rows5883,rows5884,rows5885,rows5886,rows5887,rows5888,rows5889,rows5890,rows5891,rows5892,rows5893,rows5894,rows5895,rows5896,rows5897,rows5898,rows5899,rows5900,rows5901,rows5902,rows5903,rows5904,rows5905,rows5906,rows5907,rows5908,rows5909,rows5910,rows5911,rows5912,rows5913,rows5914,rows5915,rows5916,rows5917,rows5918,rows5919,List.append_assoc,List.append_nil]
theorem partLength90 : partOps90.length=64 := by decide
theorem partStats90 : partRows90.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows90=326616 := by
  simp only [partRows90,List.length_append,MatrixRowBlocks.rows_weight_append,stats5856.1,stats5856.2,stats5857.1,stats5857.2,stats5858.1,stats5858.2,stats5859.1,stats5859.2,stats5860.1,stats5860.2,stats5861.1,stats5861.2,stats5862.1,stats5862.2,stats5863.1,stats5863.2,stats5864.1,stats5864.2,stats5865.1,stats5865.2,stats5866.1,stats5866.2,stats5867.1,stats5867.2,stats5868.1,stats5868.2,stats5869.1,stats5869.2,stats5870.1,stats5870.2,stats5871.1,stats5871.2,stats5872.1,stats5872.2,stats5873.1,stats5873.2,stats5874.1,stats5874.2,stats5875.1,stats5875.2,stats5876.1,stats5876.2,stats5877.1,stats5877.2,stats5878.1,stats5878.2,stats5879.1,stats5879.2,stats5880.1,stats5880.2,stats5881.1,stats5881.2,stats5882.1,stats5882.2,stats5883.1,stats5883.2,stats5884.1,stats5884.2,stats5885.1,stats5885.2,stats5886.1,stats5886.2,stats5887.1,stats5887.2,stats5888.1,stats5888.2,stats5889.1,stats5889.2,stats5890.1,stats5890.2,stats5891.1,stats5891.2,stats5892.1,stats5892.2,stats5893.1,stats5893.2,stats5894.1,stats5894.2,stats5895.1,stats5895.2,stats5896.1,stats5896.2,stats5897.1,stats5897.2,stats5898.1,stats5898.2,stats5899.1,stats5899.2,stats5900.1,stats5900.2,stats5901.1,stats5901.2,stats5902.1,stats5902.2,stats5903.1,stats5903.2,stats5904.1,stats5904.2,stats5905.1,stats5905.2,stats5906.1,stats5906.2,stats5907.1,stats5907.2,stats5908.1,stats5908.2,stats5909.1,stats5909.2,stats5910.1,stats5910.2,stats5911.1,stats5911.2,stats5912.1,stats5912.2,stats5913.1,stats5913.2,stats5914.1,stats5914.2,stats5915.1,stats5915.2,stats5916.1,stats5916.2,stats5917.1,stats5917.2,stats5918.1,stats5918.2,stats5919.1,stats5919.2]
  decide
end QuotedPairedPathRoundCheckedRows
