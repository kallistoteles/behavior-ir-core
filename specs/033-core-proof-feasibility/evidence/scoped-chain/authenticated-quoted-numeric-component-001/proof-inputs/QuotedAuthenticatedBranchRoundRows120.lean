import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData121
import AuthenticatedBranchRoundInstructionMatrixData122
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7798 : actualRows7798=WordField.canonicalRows actualModulus 7798 (.shr 5934 8) := by core033_kernel_decide
theorem stats7798 : actualRows7798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7798=4548 := by core033_kernel_decide
theorem rows7799 : actualRows7799=WordField.canonicalRows actualModulus 7799 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7799 : actualRows7799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7799=2820 := by core033_kernel_decide
theorem rows7800 : actualRows7800=WordField.canonicalRows actualModulus 7800 (.bnot 7799) := by core033_kernel_decide
theorem stats7800 : actualRows7800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7800=6276 := by core033_kernel_decide
theorem rows7801 : actualRows7801=WordField.canonicalRows actualModulus 7801 (.badd 7798 7800) := by core033_kernel_decide
theorem stats7801 : actualRows7801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7801=5388 := by core033_kernel_decide
theorem rows7802 : actualRows7802=WordField.canonicalRows actualModulus 7802 (.bnot 7801) := by core033_kernel_decide
theorem stats7802 : actualRows7802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7802=6276 := by core033_kernel_decide
theorem rows7803 : actualRows7803=WordField.canonicalRows actualModulus 7803 (.band 7797 7802) := by core033_kernel_decide
theorem stats7803 : actualRows7803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7803=5124 := by core033_kernel_decide
theorem rows7804 : actualRows7804=WordField.canonicalRows actualModulus 7804 (.bxor 7793 7803) := by core033_kernel_decide
theorem stats7804 : actualRows7804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7804=7428 := by core033_kernel_decide
theorem rows7805 : actualRows7805=WordField.canonicalRows actualModulus 7805 (.shr 7804 31) := by core033_kernel_decide
theorem stats7805 : actualRows7805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7805=2892 := by core033_kernel_decide
theorem rows7806 : actualRows7806=WordField.canonicalRows actualModulus 7806 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7806 : actualRows7806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7806=2892 := by core033_kernel_decide
theorem rows7807 : actualRows7807=WordField.canonicalRows actualModulus 7807 (.bxor 7805 7806) := by core033_kernel_decide
theorem stats7807 : actualRows7807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7807=7428 := by core033_kernel_decide
theorem rows7808 : actualRows7808=WordField.canonicalRows actualModulus 7808 (.shr 5986 8) := by core033_kernel_decide
theorem stats7808 : actualRows7808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7808=4548 := by core033_kernel_decide
theorem rows7809 : actualRows7809=WordField.canonicalRows actualModulus 7809 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7809 : actualRows7809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7809=2820 := by core033_kernel_decide
theorem rows7810 : actualRows7810=WordField.canonicalRows actualModulus 7810 (.bnot 7809) := by core033_kernel_decide
theorem stats7810 : actualRows7810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7810=6276 := by core033_kernel_decide
theorem rows7811 : actualRows7811=WordField.canonicalRows actualModulus 7811 (.band 7808 7810) := by core033_kernel_decide
theorem stats7811 : actualRows7811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7811=5124 := by core033_kernel_decide
theorem rows7812 : actualRows7812=WordField.canonicalRows actualModulus 7812 (.shr 5986 8) := by core033_kernel_decide
theorem stats7812 : actualRows7812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7812=4548 := by core033_kernel_decide
theorem rows7813 : actualRows7813=WordField.canonicalRows actualModulus 7813 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7813 : actualRows7813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7813=2820 := by core033_kernel_decide
theorem rows7814 : actualRows7814=WordField.canonicalRows actualModulus 7814 (.bnot 7813) := by core033_kernel_decide
theorem stats7814 : actualRows7814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7814=6276 := by core033_kernel_decide
theorem rows7815 : actualRows7815=WordField.canonicalRows actualModulus 7815 (.bxor 7812 7814) := by core033_kernel_decide
theorem stats7815 : actualRows7815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7815=7428 := by core033_kernel_decide
theorem rows7816 : actualRows7816=WordField.canonicalRows actualModulus 7816 (.shr 5986 8) := by core033_kernel_decide
theorem stats7816 : actualRows7816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7816=4548 := by core033_kernel_decide
theorem rows7817 : actualRows7817=WordField.canonicalRows actualModulus 7817 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7817 : actualRows7817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7817=2820 := by core033_kernel_decide
theorem rows7818 : actualRows7818=WordField.canonicalRows actualModulus 7818 (.bnot 7817) := by core033_kernel_decide
theorem stats7818 : actualRows7818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7818=6276 := by core033_kernel_decide
theorem rows7819 : actualRows7819=WordField.canonicalRows actualModulus 7819 (.badd 7816 7818) := by core033_kernel_decide
theorem stats7819 : actualRows7819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7819=5388 := by core033_kernel_decide
theorem rows7820 : actualRows7820=WordField.canonicalRows actualModulus 7820 (.bnot 7819) := by core033_kernel_decide
theorem stats7820 : actualRows7820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7820=6276 := by core033_kernel_decide
theorem rows7821 : actualRows7821=WordField.canonicalRows actualModulus 7821 (.band 7815 7820) := by core033_kernel_decide
theorem stats7821 : actualRows7821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7821=5124 := by core033_kernel_decide
theorem rows7822 : actualRows7822=WordField.canonicalRows actualModulus 7822 (.bxor 7811 7821) := by core033_kernel_decide
theorem stats7822 : actualRows7822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7822=7428 := by core033_kernel_decide
theorem rows7823 : actualRows7823=WordField.canonicalRows actualModulus 7823 (.shr 7822 31) := by core033_kernel_decide
theorem stats7823 : actualRows7823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7823=2892 := by core033_kernel_decide
theorem rows7824 : actualRows7824=WordField.canonicalRows actualModulus 7824 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7824 : actualRows7824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7824=2892 := by core033_kernel_decide
theorem rows7825 : actualRows7825=WordField.canonicalRows actualModulus 7825 (.bxor 7823 7824) := by core033_kernel_decide
theorem stats7825 : actualRows7825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7825=7428 := by core033_kernel_decide
theorem rows7826 : actualRows7826=WordField.canonicalRows actualModulus 7826 (.shr 6038 8) := by core033_kernel_decide
theorem stats7826 : actualRows7826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7826=4548 := by core033_kernel_decide
theorem rows7827 : actualRows7827=WordField.canonicalRows actualModulus 7827 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7827 : actualRows7827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7827=2820 := by core033_kernel_decide
theorem rows7828 : actualRows7828=WordField.canonicalRows actualModulus 7828 (.bnot 7827) := by core033_kernel_decide
theorem stats7828 : actualRows7828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7828=6276 := by core033_kernel_decide
theorem rows7829 : actualRows7829=WordField.canonicalRows actualModulus 7829 (.band 7826 7828) := by core033_kernel_decide
theorem stats7829 : actualRows7829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7829=5124 := by core033_kernel_decide
theorem rows7830 : actualRows7830=WordField.canonicalRows actualModulus 7830 (.shr 6038 8) := by core033_kernel_decide
theorem stats7830 : actualRows7830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7830=4548 := by core033_kernel_decide
theorem rows7831 : actualRows7831=WordField.canonicalRows actualModulus 7831 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7831 : actualRows7831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7831=2820 := by core033_kernel_decide
theorem rows7832 : actualRows7832=WordField.canonicalRows actualModulus 7832 (.bnot 7831) := by core033_kernel_decide
theorem stats7832 : actualRows7832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7832=6276 := by core033_kernel_decide
theorem rows7833 : actualRows7833=WordField.canonicalRows actualModulus 7833 (.bxor 7830 7832) := by core033_kernel_decide
theorem stats7833 : actualRows7833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7833=7428 := by core033_kernel_decide
theorem rows7834 : actualRows7834=WordField.canonicalRows actualModulus 7834 (.shr 6038 8) := by core033_kernel_decide
theorem stats7834 : actualRows7834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7834=4548 := by core033_kernel_decide
theorem rows7835 : actualRows7835=WordField.canonicalRows actualModulus 7835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7835 : actualRows7835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7835=2820 := by core033_kernel_decide
theorem rows7836 : actualRows7836=WordField.canonicalRows actualModulus 7836 (.bnot 7835) := by core033_kernel_decide
theorem stats7836 : actualRows7836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7836=6276 := by core033_kernel_decide
theorem rows7837 : actualRows7837=WordField.canonicalRows actualModulus 7837 (.badd 7834 7836) := by core033_kernel_decide
theorem stats7837 : actualRows7837.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7837=5388 := by core033_kernel_decide
theorem rows7838 : actualRows7838=WordField.canonicalRows actualModulus 7838 (.bnot 7837) := by core033_kernel_decide
theorem stats7838 : actualRows7838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7838=6276 := by core033_kernel_decide
theorem rows7839 : actualRows7839=WordField.canonicalRows actualModulus 7839 (.band 7833 7838) := by core033_kernel_decide
theorem stats7839 : actualRows7839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7839=5124 := by core033_kernel_decide
theorem rows7840 : actualRows7840=WordField.canonicalRows actualModulus 7840 (.bxor 7829 7839) := by core033_kernel_decide
theorem stats7840 : actualRows7840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7840=7428 := by core033_kernel_decide
theorem rows7841 : actualRows7841=WordField.canonicalRows actualModulus 7841 (.shr 7840 31) := by core033_kernel_decide
theorem stats7841 : actualRows7841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7841=2892 := by core033_kernel_decide
theorem rows7842 : actualRows7842=WordField.canonicalRows actualModulus 7842 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7842 : actualRows7842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7842=2892 := by core033_kernel_decide
theorem rows7843 : actualRows7843=WordField.canonicalRows actualModulus 7843 (.bxor 7841 7842) := by core033_kernel_decide
theorem stats7843 : actualRows7843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7843=7428 := by core033_kernel_decide
theorem rows7844 : actualRows7844=WordField.canonicalRows actualModulus 7844 (.shr 6090 8) := by core033_kernel_decide
theorem stats7844 : actualRows7844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7844=4548 := by core033_kernel_decide
theorem rows7845 : actualRows7845=WordField.canonicalRows actualModulus 7845 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7845 : actualRows7845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7845=2820 := by core033_kernel_decide
theorem rows7846 : actualRows7846=WordField.canonicalRows actualModulus 7846 (.bnot 7845) := by core033_kernel_decide
theorem stats7846 : actualRows7846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7846=6276 := by core033_kernel_decide
theorem rows7847 : actualRows7847=WordField.canonicalRows actualModulus 7847 (.band 7844 7846) := by core033_kernel_decide
theorem stats7847 : actualRows7847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7847=5124 := by core033_kernel_decide
theorem rows7848 : actualRows7848=WordField.canonicalRows actualModulus 7848 (.shr 6090 8) := by core033_kernel_decide
theorem stats7848 : actualRows7848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7848=4548 := by core033_kernel_decide
theorem rows7849 : actualRows7849=WordField.canonicalRows actualModulus 7849 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7849 : actualRows7849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7849=2820 := by core033_kernel_decide
theorem rows7850 : actualRows7850=WordField.canonicalRows actualModulus 7850 (.bnot 7849) := by core033_kernel_decide
theorem stats7850 : actualRows7850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7850=6276 := by core033_kernel_decide
theorem rows7851 : actualRows7851=WordField.canonicalRows actualModulus 7851 (.bxor 7848 7850) := by core033_kernel_decide
theorem stats7851 : actualRows7851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7851=7428 := by core033_kernel_decide
theorem rows7852 : actualRows7852=WordField.canonicalRows actualModulus 7852 (.shr 6090 8) := by core033_kernel_decide
theorem stats7852 : actualRows7852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7852=4548 := by core033_kernel_decide
theorem rows7853 : actualRows7853=WordField.canonicalRows actualModulus 7853 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7853 : actualRows7853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7853=2820 := by core033_kernel_decide
theorem rows7854 : actualRows7854=WordField.canonicalRows actualModulus 7854 (.bnot 7853) := by core033_kernel_decide
theorem stats7854 : actualRows7854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7854=6276 := by core033_kernel_decide
theorem rows7855 : actualRows7855=WordField.canonicalRows actualModulus 7855 (.badd 7852 7854) := by core033_kernel_decide
theorem stats7855 : actualRows7855.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7855=5388 := by core033_kernel_decide
theorem rows7856 : actualRows7856=WordField.canonicalRows actualModulus 7856 (.bnot 7855) := by core033_kernel_decide
theorem stats7856 : actualRows7856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7856=6276 := by core033_kernel_decide
theorem rows7857 : actualRows7857=WordField.canonicalRows actualModulus 7857 (.band 7851 7856) := by core033_kernel_decide
theorem stats7857 : actualRows7857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7857=5124 := by core033_kernel_decide
theorem rows7858 : actualRows7858=WordField.canonicalRows actualModulus 7858 (.bxor 7847 7857) := by core033_kernel_decide
theorem stats7858 : actualRows7858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7858=7428 := by core033_kernel_decide
theorem rows7859 : actualRows7859=WordField.canonicalRows actualModulus 7859 (.shr 7858 31) := by core033_kernel_decide
theorem stats7859 : actualRows7859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7859=2892 := by core033_kernel_decide
theorem rows7860 : actualRows7860=WordField.canonicalRows actualModulus 7860 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7860 : actualRows7860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7860=2892 := by core033_kernel_decide
theorem rows7861 : actualRows7861=WordField.canonicalRows actualModulus 7861 (.bxor 7859 7860) := by core033_kernel_decide
theorem stats7861 : actualRows7861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7861=7428 := by core033_kernel_decide
def partRows120 : List R1CS.Row := actualRows7798++actualRows7799++actualRows7800++actualRows7801++actualRows7802++actualRows7803++actualRows7804++actualRows7805++actualRows7806++actualRows7807++actualRows7808++actualRows7809++actualRows7810++actualRows7811++actualRows7812++actualRows7813++actualRows7814++actualRows7815++actualRows7816++actualRows7817++actualRows7818++actualRows7819++actualRows7820++actualRows7821++actualRows7822++actualRows7823++actualRows7824++actualRows7825++actualRows7826++actualRows7827++actualRows7828++actualRows7829++actualRows7830++actualRows7831++actualRows7832++actualRows7833++actualRows7834++actualRows7835++actualRows7836++actualRows7837++actualRows7838++actualRows7839++actualRows7840++actualRows7841++actualRows7842++actualRows7843++actualRows7844++actualRows7845++actualRows7846++actualRows7847++actualRows7848++actualRows7849++actualRows7850++actualRows7851++actualRows7852++actualRows7853++actualRows7854++actualRows7855++actualRows7856++actualRows7857++actualRows7858++actualRows7859++actualRows7860++actualRows7861
def partOps120 : List WordIR.Op := [.shr 5934 8,.literal (BitVec.ofNat 32 0),.bnot 7799,.badd 7798 7800,.bnot 7801,.band 7797 7802,.bxor 7793 7803,.shr 7804 31,.literal (BitVec.ofNat 32 1),.bxor 7805 7806,.shr 5986 8,.literal (BitVec.ofNat 32 0),.bnot 7809,.band 7808 7810,.shr 5986 8,.literal (BitVec.ofNat 32 0),.bnot 7813,.bxor 7812 7814,.shr 5986 8,.literal (BitVec.ofNat 32 0),.bnot 7817,.badd 7816 7818,.bnot 7819,.band 7815 7820,.bxor 7811 7821,.shr 7822 31,.literal (BitVec.ofNat 32 1),.bxor 7823 7824,.shr 6038 8,.literal (BitVec.ofNat 32 0),.bnot 7827,.band 7826 7828,.shr 6038 8,.literal (BitVec.ofNat 32 0),.bnot 7831,.bxor 7830 7832,.shr 6038 8,.literal (BitVec.ofNat 32 0),.bnot 7835,.badd 7834 7836,.bnot 7837,.band 7833 7838,.bxor 7829 7839,.shr 7840 31,.literal (BitVec.ofNat 32 1),.bxor 7841 7842,.shr 6090 8,.literal (BitVec.ofNat 32 0),.bnot 7845,.band 7844 7846,.shr 6090 8,.literal (BitVec.ofNat 32 0),.bnot 7849,.bxor 7848 7850,.shr 6090 8,.literal (BitVec.ofNat 32 0),.bnot 7853,.badd 7852 7854,.bnot 7855,.band 7851 7856,.bxor 7847 7857,.shr 7858 31,.literal (BitVec.ofNat 32 1),.bxor 7859 7860]
theorem partExact120 : partRows120=WordField.rows actualModulus 7798 partOps120 := by
  simp only [partRows120,partOps120,WordField.rows,rows7798,rows7799,rows7800,rows7801,rows7802,rows7803,rows7804,rows7805,rows7806,rows7807,rows7808,rows7809,rows7810,rows7811,rows7812,rows7813,rows7814,rows7815,rows7816,rows7817,rows7818,rows7819,rows7820,rows7821,rows7822,rows7823,rows7824,rows7825,rows7826,rows7827,rows7828,rows7829,rows7830,rows7831,rows7832,rows7833,rows7834,rows7835,rows7836,rows7837,rows7838,rows7839,rows7840,rows7841,rows7842,rows7843,rows7844,rows7845,rows7846,rows7847,rows7848,rows7849,rows7850,rows7851,rows7852,rows7853,rows7854,rows7855,rows7856,rows7857,rows7858,rows7859,rows7860,rows7861,List.append_assoc,List.append_nil]
theorem partLength120 : partOps120.length=64 := by decide
theorem partStats120 : partRows120.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows120=323808 := by
  simp only [partRows120,List.length_append,MatrixRowBlocks.rows_weight_append,stats7798.1,stats7798.2,stats7799.1,stats7799.2,stats7800.1,stats7800.2,stats7801.1,stats7801.2,stats7802.1,stats7802.2,stats7803.1,stats7803.2,stats7804.1,stats7804.2,stats7805.1,stats7805.2,stats7806.1,stats7806.2,stats7807.1,stats7807.2,stats7808.1,stats7808.2,stats7809.1,stats7809.2,stats7810.1,stats7810.2,stats7811.1,stats7811.2,stats7812.1,stats7812.2,stats7813.1,stats7813.2,stats7814.1,stats7814.2,stats7815.1,stats7815.2,stats7816.1,stats7816.2,stats7817.1,stats7817.2,stats7818.1,stats7818.2,stats7819.1,stats7819.2,stats7820.1,stats7820.2,stats7821.1,stats7821.2,stats7822.1,stats7822.2,stats7823.1,stats7823.2,stats7824.1,stats7824.2,stats7825.1,stats7825.2,stats7826.1,stats7826.2,stats7827.1,stats7827.2,stats7828.1,stats7828.2,stats7829.1,stats7829.2,stats7830.1,stats7830.2,stats7831.1,stats7831.2,stats7832.1,stats7832.2,stats7833.1,stats7833.2,stats7834.1,stats7834.2,stats7835.1,stats7835.2,stats7836.1,stats7836.2,stats7837.1,stats7837.2,stats7838.1,stats7838.2,stats7839.1,stats7839.2,stats7840.1,stats7840.2,stats7841.1,stats7841.2,stats7842.1,stats7842.2,stats7843.1,stats7843.2,stats7844.1,stats7844.2,stats7845.1,stats7845.2,stats7846.1,stats7846.2,stats7847.1,stats7847.2,stats7848.1,stats7848.2,stats7849.1,stats7849.2,stats7850.1,stats7850.2,stats7851.1,stats7851.2,stats7852.1,stats7852.2,stats7853.1,stats7853.2,stats7854.1,stats7854.2,stats7855.1,stats7855.2,stats7856.1,stats7856.2,stats7857.1,stats7857.2,stats7858.1,stats7858.2,stats7859.1,stats7859.2,stats7860.1,stats7860.2,stats7861.1,stats7861.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
