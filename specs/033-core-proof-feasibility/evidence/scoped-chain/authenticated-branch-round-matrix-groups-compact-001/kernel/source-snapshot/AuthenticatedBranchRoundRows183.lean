import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData184
import AuthenticatedBranchRoundInstructionMatrixData185
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11830 : actualRows11830=WordField.canonicalRows actualModulus 11830 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11830 : actualRows11830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11830=2820 := by core033_kernel_decide
theorem rows11831 : actualRows11831=WordField.canonicalRows actualModulus 11831 (.bnot 11830) := by core033_kernel_decide
theorem stats11831 : actualRows11831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11831=6276 := by core033_kernel_decide
theorem rows11832 : actualRows11832=WordField.canonicalRows actualModulus 11832 (.badd 11829 11831) := by core033_kernel_decide
theorem stats11832 : actualRows11832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11832=5388 := by core033_kernel_decide
theorem rows11833 : actualRows11833=WordField.canonicalRows actualModulus 11833 (.bnot 11832) := by core033_kernel_decide
theorem stats11833 : actualRows11833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11833=6276 := by core033_kernel_decide
theorem rows11834 : actualRows11834=WordField.canonicalRows actualModulus 11834 (.band 11827 11833) := by core033_kernel_decide
theorem stats11834 : actualRows11834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11834=5124 := by core033_kernel_decide
theorem rows11835 : actualRows11835=WordField.canonicalRows actualModulus 11835 (.bxor 11822 11834) := by core033_kernel_decide
theorem stats11835 : actualRows11835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11835=7428 := by core033_kernel_decide
theorem rows11836 : actualRows11836=WordField.canonicalRows actualModulus 11836 (.shr 11835 31) := by core033_kernel_decide
theorem stats11836 : actualRows11836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11836=2892 := by core033_kernel_decide
theorem rows11837 : actualRows11837=WordField.canonicalRows actualModulus 11837 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11837 : actualRows11837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11837=2892 := by core033_kernel_decide
theorem rows11838 : actualRows11838=WordField.canonicalRows actualModulus 11838 (.bxor 11836 11837) := by core033_kernel_decide
theorem stats11838 : actualRows11838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11838=7428 := by core033_kernel_decide
theorem rows11839 : actualRows11839=WordField.canonicalRows actualModulus 11839 (.bnot 11838) := by core033_kernel_decide
theorem stats11839 : actualRows11839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11839=6276 := by core033_kernel_decide
theorem rows11840 : actualRows11840=WordField.canonicalRows actualModulus 11840 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11840 : actualRows11840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11840=2892 := by core033_kernel_decide
theorem rows11841 : actualRows11841=WordField.canonicalRows actualModulus 11841 (.badd 11839 11840) := by core033_kernel_decide
theorem stats11841 : actualRows11841.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11841=5388 := by core033_kernel_decide
theorem rows11842 : actualRows11842=WordField.canonicalRows actualModulus 11842 (.bnot 11841) := by core033_kernel_decide
theorem stats11842 : actualRows11842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11842=6276 := by core033_kernel_decide
theorem rows11843 : actualRows11843=WordField.canonicalRows actualModulus 11843 (.band 11842 1376) := by core033_kernel_decide
theorem stats11843 : actualRows11843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11843=5124 := by core033_kernel_decide
theorem rows11844 : actualRows11844=WordField.canonicalRows actualModulus 11844 (.bxor 11817 11843) := by core033_kernel_decide
theorem stats11844 : actualRows11844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11844=7428 := by core033_kernel_decide
theorem rows11845 : actualRows11845=WordField.canonicalRows actualModulus 11845 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11845 : actualRows11845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11845=2964 := by core033_kernel_decide
theorem rows11846 : actualRows11846=WordField.canonicalRows actualModulus 11846 (.bxor 693 11845) := by core033_kernel_decide
theorem stats11846 : actualRows11846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11846=7428 := by core033_kernel_decide
theorem rows11847 : actualRows11847=WordField.canonicalRows actualModulus 11847 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11847 : actualRows11847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11847=2820 := by core033_kernel_decide
theorem rows11848 : actualRows11848=WordField.canonicalRows actualModulus 11848 (.bnot 11847) := by core033_kernel_decide
theorem stats11848 : actualRows11848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11848=6276 := by core033_kernel_decide
theorem rows11849 : actualRows11849=WordField.canonicalRows actualModulus 11849 (.band 11846 11848) := by core033_kernel_decide
theorem stats11849 : actualRows11849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11849=5124 := by core033_kernel_decide
theorem rows11850 : actualRows11850=WordField.canonicalRows actualModulus 11850 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11850 : actualRows11850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11850=2964 := by core033_kernel_decide
theorem rows11851 : actualRows11851=WordField.canonicalRows actualModulus 11851 (.bxor 693 11850) := by core033_kernel_decide
theorem stats11851 : actualRows11851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11851=7428 := by core033_kernel_decide
theorem rows11852 : actualRows11852=WordField.canonicalRows actualModulus 11852 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11852 : actualRows11852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11852=2820 := by core033_kernel_decide
theorem rows11853 : actualRows11853=WordField.canonicalRows actualModulus 11853 (.bnot 11852) := by core033_kernel_decide
theorem stats11853 : actualRows11853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11853=6276 := by core033_kernel_decide
theorem rows11854 : actualRows11854=WordField.canonicalRows actualModulus 11854 (.bxor 11851 11853) := by core033_kernel_decide
theorem stats11854 : actualRows11854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11854=7428 := by core033_kernel_decide
theorem rows11855 : actualRows11855=WordField.canonicalRows actualModulus 11855 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11855 : actualRows11855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11855=2964 := by core033_kernel_decide
theorem rows11856 : actualRows11856=WordField.canonicalRows actualModulus 11856 (.bxor 693 11855) := by core033_kernel_decide
theorem stats11856 : actualRows11856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11856=7428 := by core033_kernel_decide
theorem rows11857 : actualRows11857=WordField.canonicalRows actualModulus 11857 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11857 : actualRows11857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11857=2820 := by core033_kernel_decide
theorem rows11858 : actualRows11858=WordField.canonicalRows actualModulus 11858 (.bnot 11857) := by core033_kernel_decide
theorem stats11858 : actualRows11858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11858=6276 := by core033_kernel_decide
theorem rows11859 : actualRows11859=WordField.canonicalRows actualModulus 11859 (.badd 11856 11858) := by core033_kernel_decide
theorem stats11859 : actualRows11859.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11859=5388 := by core033_kernel_decide
theorem rows11860 : actualRows11860=WordField.canonicalRows actualModulus 11860 (.bnot 11859) := by core033_kernel_decide
theorem stats11860 : actualRows11860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11860=6276 := by core033_kernel_decide
theorem rows11861 : actualRows11861=WordField.canonicalRows actualModulus 11861 (.band 11854 11860) := by core033_kernel_decide
theorem stats11861 : actualRows11861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11861=5124 := by core033_kernel_decide
theorem rows11862 : actualRows11862=WordField.canonicalRows actualModulus 11862 (.bxor 11849 11861) := by core033_kernel_decide
theorem stats11862 : actualRows11862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11862=7428 := by core033_kernel_decide
theorem rows11863 : actualRows11863=WordField.canonicalRows actualModulus 11863 (.shr 11862 31) := by core033_kernel_decide
theorem stats11863 : actualRows11863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11863=2892 := by core033_kernel_decide
theorem rows11864 : actualRows11864=WordField.canonicalRows actualModulus 11864 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11864 : actualRows11864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11864=2892 := by core033_kernel_decide
theorem rows11865 : actualRows11865=WordField.canonicalRows actualModulus 11865 (.bxor 11863 11864) := by core033_kernel_decide
theorem stats11865 : actualRows11865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11865=7428 := by core033_kernel_decide
theorem rows11866 : actualRows11866=WordField.canonicalRows actualModulus 11866 (.bnot 11865) := by core033_kernel_decide
theorem stats11866 : actualRows11866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11866=6276 := by core033_kernel_decide
theorem rows11867 : actualRows11867=WordField.canonicalRows actualModulus 11867 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11867 : actualRows11867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11867=2892 := by core033_kernel_decide
theorem rows11868 : actualRows11868=WordField.canonicalRows actualModulus 11868 (.badd 11866 11867) := by core033_kernel_decide
theorem stats11868 : actualRows11868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11868=5388 := by core033_kernel_decide
theorem rows11869 : actualRows11869=WordField.canonicalRows actualModulus 11869 (.band 11868 10708) := by core033_kernel_decide
theorem stats11869 : actualRows11869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11869=5124 := by core033_kernel_decide
theorem rows11870 : actualRows11870=WordField.canonicalRows actualModulus 11870 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11870 : actualRows11870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11870=2964 := by core033_kernel_decide
theorem rows11871 : actualRows11871=WordField.canonicalRows actualModulus 11871 (.bxor 693 11870) := by core033_kernel_decide
theorem stats11871 : actualRows11871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11871=7428 := by core033_kernel_decide
theorem rows11872 : actualRows11872=WordField.canonicalRows actualModulus 11872 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11872 : actualRows11872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11872=2820 := by core033_kernel_decide
theorem rows11873 : actualRows11873=WordField.canonicalRows actualModulus 11873 (.bnot 11872) := by core033_kernel_decide
theorem stats11873 : actualRows11873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11873=6276 := by core033_kernel_decide
theorem rows11874 : actualRows11874=WordField.canonicalRows actualModulus 11874 (.band 11871 11873) := by core033_kernel_decide
theorem stats11874 : actualRows11874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11874=5124 := by core033_kernel_decide
theorem rows11875 : actualRows11875=WordField.canonicalRows actualModulus 11875 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11875 : actualRows11875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11875=2964 := by core033_kernel_decide
theorem rows11876 : actualRows11876=WordField.canonicalRows actualModulus 11876 (.bxor 693 11875) := by core033_kernel_decide
theorem stats11876 : actualRows11876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11876=7428 := by core033_kernel_decide
theorem rows11877 : actualRows11877=WordField.canonicalRows actualModulus 11877 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11877 : actualRows11877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11877=2820 := by core033_kernel_decide
theorem rows11878 : actualRows11878=WordField.canonicalRows actualModulus 11878 (.bnot 11877) := by core033_kernel_decide
theorem stats11878 : actualRows11878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11878=6276 := by core033_kernel_decide
theorem rows11879 : actualRows11879=WordField.canonicalRows actualModulus 11879 (.bxor 11876 11878) := by core033_kernel_decide
theorem stats11879 : actualRows11879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11879=7428 := by core033_kernel_decide
theorem rows11880 : actualRows11880=WordField.canonicalRows actualModulus 11880 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11880 : actualRows11880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11880=2964 := by core033_kernel_decide
theorem rows11881 : actualRows11881=WordField.canonicalRows actualModulus 11881 (.bxor 693 11880) := by core033_kernel_decide
theorem stats11881 : actualRows11881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11881=7428 := by core033_kernel_decide
theorem rows11882 : actualRows11882=WordField.canonicalRows actualModulus 11882 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11882 : actualRows11882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11882=2820 := by core033_kernel_decide
theorem rows11883 : actualRows11883=WordField.canonicalRows actualModulus 11883 (.bnot 11882) := by core033_kernel_decide
theorem stats11883 : actualRows11883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11883=6276 := by core033_kernel_decide
theorem rows11884 : actualRows11884=WordField.canonicalRows actualModulus 11884 (.badd 11881 11883) := by core033_kernel_decide
theorem stats11884 : actualRows11884.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11884=5388 := by core033_kernel_decide
theorem rows11885 : actualRows11885=WordField.canonicalRows actualModulus 11885 (.bnot 11884) := by core033_kernel_decide
theorem stats11885 : actualRows11885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11885=6276 := by core033_kernel_decide
theorem rows11886 : actualRows11886=WordField.canonicalRows actualModulus 11886 (.band 11879 11885) := by core033_kernel_decide
theorem stats11886 : actualRows11886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11886=5124 := by core033_kernel_decide
theorem rows11887 : actualRows11887=WordField.canonicalRows actualModulus 11887 (.bxor 11874 11886) := by core033_kernel_decide
theorem stats11887 : actualRows11887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11887=7428 := by core033_kernel_decide
theorem rows11888 : actualRows11888=WordField.canonicalRows actualModulus 11888 (.shr 11887 31) := by core033_kernel_decide
theorem stats11888 : actualRows11888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11888=2892 := by core033_kernel_decide
theorem rows11889 : actualRows11889=WordField.canonicalRows actualModulus 11889 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11889 : actualRows11889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11889=2892 := by core033_kernel_decide
theorem rows11890 : actualRows11890=WordField.canonicalRows actualModulus 11890 (.bxor 11888 11889) := by core033_kernel_decide
theorem stats11890 : actualRows11890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11890=7428 := by core033_kernel_decide
theorem rows11891 : actualRows11891=WordField.canonicalRows actualModulus 11891 (.bnot 11890) := by core033_kernel_decide
theorem stats11891 : actualRows11891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11891=6276 := by core033_kernel_decide
theorem rows11892 : actualRows11892=WordField.canonicalRows actualModulus 11892 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11892 : actualRows11892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11892=2892 := by core033_kernel_decide
theorem rows11893 : actualRows11893=WordField.canonicalRows actualModulus 11893 (.badd 11891 11892) := by core033_kernel_decide
theorem stats11893 : actualRows11893.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11893=5388 := by core033_kernel_decide
def partRows183 : List R1CS.Row := actualRows11830++actualRows11831++actualRows11832++actualRows11833++actualRows11834++actualRows11835++actualRows11836++actualRows11837++actualRows11838++actualRows11839++actualRows11840++actualRows11841++actualRows11842++actualRows11843++actualRows11844++actualRows11845++actualRows11846++actualRows11847++actualRows11848++actualRows11849++actualRows11850++actualRows11851++actualRows11852++actualRows11853++actualRows11854++actualRows11855++actualRows11856++actualRows11857++actualRows11858++actualRows11859++actualRows11860++actualRows11861++actualRows11862++actualRows11863++actualRows11864++actualRows11865++actualRows11866++actualRows11867++actualRows11868++actualRows11869++actualRows11870++actualRows11871++actualRows11872++actualRows11873++actualRows11874++actualRows11875++actualRows11876++actualRows11877++actualRows11878++actualRows11879++actualRows11880++actualRows11881++actualRows11882++actualRows11883++actualRows11884++actualRows11885++actualRows11886++actualRows11887++actualRows11888++actualRows11889++actualRows11890++actualRows11891++actualRows11892++actualRows11893
def partOps183 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 11830,.badd 11829 11831,.bnot 11832,.band 11827 11833,.bxor 11822 11834,.shr 11835 31,.literal (BitVec.ofNat 32 1),.bxor 11836 11837,.bnot 11838,.literal (BitVec.ofNat 32 1),.badd 11839 11840,.bnot 11841,.band 11842 1376,.bxor 11817 11843,.literal (BitVec.ofNat 32 3),.bxor 693 11845,.literal (BitVec.ofNat 32 0),.bnot 11847,.band 11846 11848,.literal (BitVec.ofNat 32 3),.bxor 693 11850,.literal (BitVec.ofNat 32 0),.bnot 11852,.bxor 11851 11853,.literal (BitVec.ofNat 32 3),.bxor 693 11855,.literal (BitVec.ofNat 32 0),.bnot 11857,.badd 11856 11858,.bnot 11859,.band 11854 11860,.bxor 11849 11861,.shr 11862 31,.literal (BitVec.ofNat 32 1),.bxor 11863 11864,.bnot 11865,.literal (BitVec.ofNat 32 1),.badd 11866 11867,.band 11868 10708,.literal (BitVec.ofNat 32 3),.bxor 693 11870,.literal (BitVec.ofNat 32 0),.bnot 11872,.band 11871 11873,.literal (BitVec.ofNat 32 3),.bxor 693 11875,.literal (BitVec.ofNat 32 0),.bnot 11877,.bxor 11876 11878,.literal (BitVec.ofNat 32 3),.bxor 693 11880,.literal (BitVec.ofNat 32 0),.bnot 11882,.badd 11881 11883,.bnot 11884,.band 11879 11885,.bxor 11874 11886,.shr 11887 31,.literal (BitVec.ofNat 32 1),.bxor 11888 11889,.bnot 11890,.literal (BitVec.ofNat 32 1),.badd 11891 11892]
theorem partExact183 : partRows183=WordField.rows actualModulus 11830 partOps183 := by
  simp only [partRows183,partOps183,WordField.rows,rows11830,rows11831,rows11832,rows11833,rows11834,rows11835,rows11836,rows11837,rows11838,rows11839,rows11840,rows11841,rows11842,rows11843,rows11844,rows11845,rows11846,rows11847,rows11848,rows11849,rows11850,rows11851,rows11852,rows11853,rows11854,rows11855,rows11856,rows11857,rows11858,rows11859,rows11860,rows11861,rows11862,rows11863,rows11864,rows11865,rows11866,rows11867,rows11868,rows11869,rows11870,rows11871,rows11872,rows11873,rows11874,rows11875,rows11876,rows11877,rows11878,rows11879,rows11880,rows11881,rows11882,rows11883,rows11884,rows11885,rows11886,rows11887,rows11888,rows11889,rows11890,rows11891,rows11892,rows11893,List.append_assoc,List.append_nil]
theorem partLength183 : partOps183.length=64 := by decide
theorem partStats183 : partRows183.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows183=331032 := by
  simp only [partRows183,List.length_append,MatrixRowBlocks.rows_weight_append,stats11830.1,stats11830.2,stats11831.1,stats11831.2,stats11832.1,stats11832.2,stats11833.1,stats11833.2,stats11834.1,stats11834.2,stats11835.1,stats11835.2,stats11836.1,stats11836.2,stats11837.1,stats11837.2,stats11838.1,stats11838.2,stats11839.1,stats11839.2,stats11840.1,stats11840.2,stats11841.1,stats11841.2,stats11842.1,stats11842.2,stats11843.1,stats11843.2,stats11844.1,stats11844.2,stats11845.1,stats11845.2,stats11846.1,stats11846.2,stats11847.1,stats11847.2,stats11848.1,stats11848.2,stats11849.1,stats11849.2,stats11850.1,stats11850.2,stats11851.1,stats11851.2,stats11852.1,stats11852.2,stats11853.1,stats11853.2,stats11854.1,stats11854.2,stats11855.1,stats11855.2,stats11856.1,stats11856.2,stats11857.1,stats11857.2,stats11858.1,stats11858.2,stats11859.1,stats11859.2,stats11860.1,stats11860.2,stats11861.1,stats11861.2,stats11862.1,stats11862.2,stats11863.1,stats11863.2,stats11864.1,stats11864.2,stats11865.1,stats11865.2,stats11866.1,stats11866.2,stats11867.1,stats11867.2,stats11868.1,stats11868.2,stats11869.1,stats11869.2,stats11870.1,stats11870.2,stats11871.1,stats11871.2,stats11872.1,stats11872.2,stats11873.1,stats11873.2,stats11874.1,stats11874.2,stats11875.1,stats11875.2,stats11876.1,stats11876.2,stats11877.1,stats11877.2,stats11878.1,stats11878.2,stats11879.1,stats11879.2,stats11880.1,stats11880.2,stats11881.1,stats11881.2,stats11882.1,stats11882.2,stats11883.1,stats11883.2,stats11884.1,stats11884.2,stats11885.1,stats11885.2,stats11886.1,stats11886.2,stats11887.1,stats11887.2,stats11888.1,stats11888.2,stats11889.1,stats11889.2,stats11890.1,stats11890.2,stats11891.1,stats11891.2,stats11892.1,stats11892.2,stats11893.1,stats11893.2]
  decide
end AuthenticatedBranchRoundCheckedRows
