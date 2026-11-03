import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData75
import PairedPathRoundInstructionMatrixData76
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4832 : actualRows4832=WordField.canonicalRows actualModulus 4832 (.badd 4830 4831) := by core033_kernel_decide
theorem stats4832 : actualRows4832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4832=5388 := by core033_kernel_decide
theorem rows4833 : actualRows4833=WordField.canonicalRows actualModulus 4833 (.bnot 4832) := by core033_kernel_decide
theorem stats4833 : actualRows4833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4833=6276 := by core033_kernel_decide
theorem rows4834 : actualRows4834=WordField.canonicalRows actualModulus 4834 (.band 4833 1932) := by core033_kernel_decide
theorem stats4834 : actualRows4834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4834=5124 := by core033_kernel_decide
theorem rows4835 : actualRows4835=WordField.canonicalRows actualModulus 4835 (.bxor 4808 4834) := by core033_kernel_decide
theorem stats4835 : actualRows4835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4835=7428 := by core033_kernel_decide
theorem rows4836 : actualRows4836=WordField.canonicalRows actualModulus 4836 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4836 : actualRows4836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4836=2892 := by core033_kernel_decide
theorem rows4837 : actualRows4837=WordField.canonicalRows actualModulus 4837 (.bxor 616 4836) := by core033_kernel_decide
theorem stats4837 : actualRows4837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4837=7428 := by core033_kernel_decide
theorem rows4838 : actualRows4838=WordField.canonicalRows actualModulus 4838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4838 : actualRows4838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4838=2820 := by core033_kernel_decide
theorem rows4839 : actualRows4839=WordField.canonicalRows actualModulus 4839 (.bnot 4838) := by core033_kernel_decide
theorem stats4839 : actualRows4839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4839=6276 := by core033_kernel_decide
theorem rows4840 : actualRows4840=WordField.canonicalRows actualModulus 4840 (.band 4837 4839) := by core033_kernel_decide
theorem stats4840 : actualRows4840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4840=5124 := by core033_kernel_decide
theorem rows4841 : actualRows4841=WordField.canonicalRows actualModulus 4841 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4841 : actualRows4841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4841=2892 := by core033_kernel_decide
theorem rows4842 : actualRows4842=WordField.canonicalRows actualModulus 4842 (.bxor 616 4841) := by core033_kernel_decide
theorem stats4842 : actualRows4842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4842=7428 := by core033_kernel_decide
theorem rows4843 : actualRows4843=WordField.canonicalRows actualModulus 4843 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4843 : actualRows4843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4843=2820 := by core033_kernel_decide
theorem rows4844 : actualRows4844=WordField.canonicalRows actualModulus 4844 (.bnot 4843) := by core033_kernel_decide
theorem stats4844 : actualRows4844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4844=6276 := by core033_kernel_decide
theorem rows4845 : actualRows4845=WordField.canonicalRows actualModulus 4845 (.bxor 4842 4844) := by core033_kernel_decide
theorem stats4845 : actualRows4845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4845=7428 := by core033_kernel_decide
theorem rows4846 : actualRows4846=WordField.canonicalRows actualModulus 4846 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4846 : actualRows4846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4846=2892 := by core033_kernel_decide
theorem rows4847 : actualRows4847=WordField.canonicalRows actualModulus 4847 (.bxor 616 4846) := by core033_kernel_decide
theorem stats4847 : actualRows4847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4847=7428 := by core033_kernel_decide
theorem rows4848 : actualRows4848=WordField.canonicalRows actualModulus 4848 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4848 : actualRows4848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4848=2820 := by core033_kernel_decide
theorem rows4849 : actualRows4849=WordField.canonicalRows actualModulus 4849 (.bnot 4848) := by core033_kernel_decide
theorem stats4849 : actualRows4849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4849=6276 := by core033_kernel_decide
theorem rows4850 : actualRows4850=WordField.canonicalRows actualModulus 4850 (.badd 4847 4849) := by core033_kernel_decide
theorem stats4850 : actualRows4850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4850=5388 := by core033_kernel_decide
theorem rows4851 : actualRows4851=WordField.canonicalRows actualModulus 4851 (.bnot 4850) := by core033_kernel_decide
theorem stats4851 : actualRows4851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4851=6276 := by core033_kernel_decide
theorem rows4852 : actualRows4852=WordField.canonicalRows actualModulus 4852 (.band 4845 4851) := by core033_kernel_decide
theorem stats4852 : actualRows4852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4852=5124 := by core033_kernel_decide
theorem rows4853 : actualRows4853=WordField.canonicalRows actualModulus 4853 (.bxor 4840 4852) := by core033_kernel_decide
theorem stats4853 : actualRows4853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4853=7428 := by core033_kernel_decide
theorem rows4854 : actualRows4854=WordField.canonicalRows actualModulus 4854 (.shr 4853 31) := by core033_kernel_decide
theorem stats4854 : actualRows4854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4854=2892 := by core033_kernel_decide
theorem rows4855 : actualRows4855=WordField.canonicalRows actualModulus 4855 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4855 : actualRows4855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4855=2892 := by core033_kernel_decide
theorem rows4856 : actualRows4856=WordField.canonicalRows actualModulus 4856 (.bxor 4854 4855) := by core033_kernel_decide
theorem stats4856 : actualRows4856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4856=7428 := by core033_kernel_decide
theorem rows4857 : actualRows4857=WordField.canonicalRows actualModulus 4857 (.bnot 4856) := by core033_kernel_decide
theorem stats4857 : actualRows4857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4857=6276 := by core033_kernel_decide
theorem rows4858 : actualRows4858=WordField.canonicalRows actualModulus 4858 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4858 : actualRows4858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4858=2892 := by core033_kernel_decide
theorem rows4859 : actualRows4859=WordField.canonicalRows actualModulus 4859 (.badd 4857 4858) := by core033_kernel_decide
theorem stats4859 : actualRows4859.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4859=5388 := by core033_kernel_decide
theorem rows4860 : actualRows4860=WordField.canonicalRows actualModulus 4860 (.band 4859 2127) := by core033_kernel_decide
theorem stats4860 : actualRows4860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4860=5124 := by core033_kernel_decide
theorem rows4861 : actualRows4861=WordField.canonicalRows actualModulus 4861 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4861 : actualRows4861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4861=2892 := by core033_kernel_decide
theorem rows4862 : actualRows4862=WordField.canonicalRows actualModulus 4862 (.bxor 616 4861) := by core033_kernel_decide
theorem stats4862 : actualRows4862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4862=7428 := by core033_kernel_decide
theorem rows4863 : actualRows4863=WordField.canonicalRows actualModulus 4863 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4863 : actualRows4863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4863=2820 := by core033_kernel_decide
theorem rows4864 : actualRows4864=WordField.canonicalRows actualModulus 4864 (.bnot 4863) := by core033_kernel_decide
theorem stats4864 : actualRows4864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4864=6276 := by core033_kernel_decide
theorem rows4865 : actualRows4865=WordField.canonicalRows actualModulus 4865 (.band 4862 4864) := by core033_kernel_decide
theorem stats4865 : actualRows4865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4865=5124 := by core033_kernel_decide
theorem rows4866 : actualRows4866=WordField.canonicalRows actualModulus 4866 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4866 : actualRows4866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4866=2892 := by core033_kernel_decide
theorem rows4867 : actualRows4867=WordField.canonicalRows actualModulus 4867 (.bxor 616 4866) := by core033_kernel_decide
theorem stats4867 : actualRows4867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4867=7428 := by core033_kernel_decide
theorem rows4868 : actualRows4868=WordField.canonicalRows actualModulus 4868 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4868 : actualRows4868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4868=2820 := by core033_kernel_decide
theorem rows4869 : actualRows4869=WordField.canonicalRows actualModulus 4869 (.bnot 4868) := by core033_kernel_decide
theorem stats4869 : actualRows4869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4869=6276 := by core033_kernel_decide
theorem rows4870 : actualRows4870=WordField.canonicalRows actualModulus 4870 (.bxor 4867 4869) := by core033_kernel_decide
theorem stats4870 : actualRows4870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4870=7428 := by core033_kernel_decide
theorem rows4871 : actualRows4871=WordField.canonicalRows actualModulus 4871 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4871 : actualRows4871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4871=2892 := by core033_kernel_decide
theorem rows4872 : actualRows4872=WordField.canonicalRows actualModulus 4872 (.bxor 616 4871) := by core033_kernel_decide
theorem stats4872 : actualRows4872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4872=7428 := by core033_kernel_decide
theorem rows4873 : actualRows4873=WordField.canonicalRows actualModulus 4873 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4873 : actualRows4873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4873=2820 := by core033_kernel_decide
theorem rows4874 : actualRows4874=WordField.canonicalRows actualModulus 4874 (.bnot 4873) := by core033_kernel_decide
theorem stats4874 : actualRows4874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4874=6276 := by core033_kernel_decide
theorem rows4875 : actualRows4875=WordField.canonicalRows actualModulus 4875 (.badd 4872 4874) := by core033_kernel_decide
theorem stats4875 : actualRows4875.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4875=5388 := by core033_kernel_decide
theorem rows4876 : actualRows4876=WordField.canonicalRows actualModulus 4876 (.bnot 4875) := by core033_kernel_decide
theorem stats4876 : actualRows4876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4876=6276 := by core033_kernel_decide
theorem rows4877 : actualRows4877=WordField.canonicalRows actualModulus 4877 (.band 4870 4876) := by core033_kernel_decide
theorem stats4877 : actualRows4877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4877=5124 := by core033_kernel_decide
theorem rows4878 : actualRows4878=WordField.canonicalRows actualModulus 4878 (.bxor 4865 4877) := by core033_kernel_decide
theorem stats4878 : actualRows4878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4878=7428 := by core033_kernel_decide
theorem rows4879 : actualRows4879=WordField.canonicalRows actualModulus 4879 (.shr 4878 31) := by core033_kernel_decide
theorem stats4879 : actualRows4879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4879=2892 := by core033_kernel_decide
theorem rows4880 : actualRows4880=WordField.canonicalRows actualModulus 4880 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4880 : actualRows4880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4880=2892 := by core033_kernel_decide
theorem rows4881 : actualRows4881=WordField.canonicalRows actualModulus 4881 (.bxor 4879 4880) := by core033_kernel_decide
theorem stats4881 : actualRows4881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4881=7428 := by core033_kernel_decide
theorem rows4882 : actualRows4882=WordField.canonicalRows actualModulus 4882 (.bnot 4881) := by core033_kernel_decide
theorem stats4882 : actualRows4882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4882=6276 := by core033_kernel_decide
theorem rows4883 : actualRows4883=WordField.canonicalRows actualModulus 4883 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4883 : actualRows4883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4883=2892 := by core033_kernel_decide
theorem rows4884 : actualRows4884=WordField.canonicalRows actualModulus 4884 (.badd 4882 4883) := by core033_kernel_decide
theorem stats4884 : actualRows4884.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4884=5388 := by core033_kernel_decide
theorem rows4885 : actualRows4885=WordField.canonicalRows actualModulus 4885 (.bnot 4884) := by core033_kernel_decide
theorem stats4885 : actualRows4885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4885=6276 := by core033_kernel_decide
theorem rows4886 : actualRows4886=WordField.canonicalRows actualModulus 4886 (.band 4885 1935) := by core033_kernel_decide
theorem stats4886 : actualRows4886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4886=5124 := by core033_kernel_decide
theorem rows4887 : actualRows4887=WordField.canonicalRows actualModulus 4887 (.bxor 4860 4886) := by core033_kernel_decide
theorem stats4887 : actualRows4887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4887=7428 := by core033_kernel_decide
theorem rows4888 : actualRows4888=WordField.canonicalRows actualModulus 4888 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4888 : actualRows4888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4888=2892 := by core033_kernel_decide
theorem rows4889 : actualRows4889=WordField.canonicalRows actualModulus 4889 (.bxor 616 4888) := by core033_kernel_decide
theorem stats4889 : actualRows4889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4889=7428 := by core033_kernel_decide
theorem rows4890 : actualRows4890=WordField.canonicalRows actualModulus 4890 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4890 : actualRows4890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4890=2820 := by core033_kernel_decide
theorem rows4891 : actualRows4891=WordField.canonicalRows actualModulus 4891 (.bnot 4890) := by core033_kernel_decide
theorem stats4891 : actualRows4891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4891=6276 := by core033_kernel_decide
theorem rows4892 : actualRows4892=WordField.canonicalRows actualModulus 4892 (.band 4889 4891) := by core033_kernel_decide
theorem stats4892 : actualRows4892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4892=5124 := by core033_kernel_decide
theorem rows4893 : actualRows4893=WordField.canonicalRows actualModulus 4893 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4893 : actualRows4893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4893=2892 := by core033_kernel_decide
theorem rows4894 : actualRows4894=WordField.canonicalRows actualModulus 4894 (.bxor 616 4893) := by core033_kernel_decide
theorem stats4894 : actualRows4894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4894=7428 := by core033_kernel_decide
theorem rows4895 : actualRows4895=WordField.canonicalRows actualModulus 4895 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4895 : actualRows4895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4895=2820 := by core033_kernel_decide
def partRows74 : List R1CS.Row := actualRows4832++actualRows4833++actualRows4834++actualRows4835++actualRows4836++actualRows4837++actualRows4838++actualRows4839++actualRows4840++actualRows4841++actualRows4842++actualRows4843++actualRows4844++actualRows4845++actualRows4846++actualRows4847++actualRows4848++actualRows4849++actualRows4850++actualRows4851++actualRows4852++actualRows4853++actualRows4854++actualRows4855++actualRows4856++actualRows4857++actualRows4858++actualRows4859++actualRows4860++actualRows4861++actualRows4862++actualRows4863++actualRows4864++actualRows4865++actualRows4866++actualRows4867++actualRows4868++actualRows4869++actualRows4870++actualRows4871++actualRows4872++actualRows4873++actualRows4874++actualRows4875++actualRows4876++actualRows4877++actualRows4878++actualRows4879++actualRows4880++actualRows4881++actualRows4882++actualRows4883++actualRows4884++actualRows4885++actualRows4886++actualRows4887++actualRows4888++actualRows4889++actualRows4890++actualRows4891++actualRows4892++actualRows4893++actualRows4894++actualRows4895
def partOps74 : List WordIR.Op := [.badd 4830 4831,.bnot 4832,.band 4833 1932,.bxor 4808 4834,.literal (BitVec.ofNat 32 2),.bxor 616 4836,.literal (BitVec.ofNat 32 0),.bnot 4838,.band 4837 4839,.literal (BitVec.ofNat 32 2),.bxor 616 4841,.literal (BitVec.ofNat 32 0),.bnot 4843,.bxor 4842 4844,.literal (BitVec.ofNat 32 2),.bxor 616 4846,.literal (BitVec.ofNat 32 0),.bnot 4848,.badd 4847 4849,.bnot 4850,.band 4845 4851,.bxor 4840 4852,.shr 4853 31,.literal (BitVec.ofNat 32 1),.bxor 4854 4855,.bnot 4856,.literal (BitVec.ofNat 32 1),.badd 4857 4858,.band 4859 2127,.literal (BitVec.ofNat 32 2),.bxor 616 4861,.literal (BitVec.ofNat 32 0),.bnot 4863,.band 4862 4864,.literal (BitVec.ofNat 32 2),.bxor 616 4866,.literal (BitVec.ofNat 32 0),.bnot 4868,.bxor 4867 4869,.literal (BitVec.ofNat 32 2),.bxor 616 4871,.literal (BitVec.ofNat 32 0),.bnot 4873,.badd 4872 4874,.bnot 4875,.band 4870 4876,.bxor 4865 4877,.shr 4878 31,.literal (BitVec.ofNat 32 1),.bxor 4879 4880,.bnot 4881,.literal (BitVec.ofNat 32 1),.badd 4882 4883,.bnot 4884,.band 4885 1935,.bxor 4860 4886,.literal (BitVec.ofNat 32 2),.bxor 616 4888,.literal (BitVec.ofNat 32 0),.bnot 4890,.band 4889 4891,.literal (BitVec.ofNat 32 2),.bxor 616 4893,.literal (BitVec.ofNat 32 0)]
theorem partExact74 : partRows74=WordField.rows actualModulus 4832 partOps74 := by
  simp only [partRows74,partOps74,WordField.rows,rows4832,rows4833,rows4834,rows4835,rows4836,rows4837,rows4838,rows4839,rows4840,rows4841,rows4842,rows4843,rows4844,rows4845,rows4846,rows4847,rows4848,rows4849,rows4850,rows4851,rows4852,rows4853,rows4854,rows4855,rows4856,rows4857,rows4858,rows4859,rows4860,rows4861,rows4862,rows4863,rows4864,rows4865,rows4866,rows4867,rows4868,rows4869,rows4870,rows4871,rows4872,rows4873,rows4874,rows4875,rows4876,rows4877,rows4878,rows4879,rows4880,rows4881,rows4882,rows4883,rows4884,rows4885,rows4886,rows4887,rows4888,rows4889,rows4890,rows4891,rows4892,rows4893,rows4894,rows4895,List.append_assoc,List.append_nil]
theorem partLength74 : partOps74.length=64 := by decide
theorem partStats74 : partRows74.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows74=331416 := by
  simp only [partRows74,List.length_append,MatrixRowBlocks.rows_weight_append,stats4832.1,stats4832.2,stats4833.1,stats4833.2,stats4834.1,stats4834.2,stats4835.1,stats4835.2,stats4836.1,stats4836.2,stats4837.1,stats4837.2,stats4838.1,stats4838.2,stats4839.1,stats4839.2,stats4840.1,stats4840.2,stats4841.1,stats4841.2,stats4842.1,stats4842.2,stats4843.1,stats4843.2,stats4844.1,stats4844.2,stats4845.1,stats4845.2,stats4846.1,stats4846.2,stats4847.1,stats4847.2,stats4848.1,stats4848.2,stats4849.1,stats4849.2,stats4850.1,stats4850.2,stats4851.1,stats4851.2,stats4852.1,stats4852.2,stats4853.1,stats4853.2,stats4854.1,stats4854.2,stats4855.1,stats4855.2,stats4856.1,stats4856.2,stats4857.1,stats4857.2,stats4858.1,stats4858.2,stats4859.1,stats4859.2,stats4860.1,stats4860.2,stats4861.1,stats4861.2,stats4862.1,stats4862.2,stats4863.1,stats4863.2,stats4864.1,stats4864.2,stats4865.1,stats4865.2,stats4866.1,stats4866.2,stats4867.1,stats4867.2,stats4868.1,stats4868.2,stats4869.1,stats4869.2,stats4870.1,stats4870.2,stats4871.1,stats4871.2,stats4872.1,stats4872.2,stats4873.1,stats4873.2,stats4874.1,stats4874.2,stats4875.1,stats4875.2,stats4876.1,stats4876.2,stats4877.1,stats4877.2,stats4878.1,stats4878.2,stats4879.1,stats4879.2,stats4880.1,stats4880.2,stats4881.1,stats4881.2,stats4882.1,stats4882.2,stats4883.1,stats4883.2,stats4884.1,stats4884.2,stats4885.1,stats4885.2,stats4886.1,stats4886.2,stats4887.1,stats4887.2,stats4888.1,stats4888.2,stats4889.1,stats4889.2,stats4890.1,stats4890.2,stats4891.1,stats4891.2,stats4892.1,stats4892.2,stats4893.1,stats4893.2,stats4894.1,stats4894.2,stats4895.1,stats4895.2]
  decide
end QuotedPairedPathRoundCheckedRows
