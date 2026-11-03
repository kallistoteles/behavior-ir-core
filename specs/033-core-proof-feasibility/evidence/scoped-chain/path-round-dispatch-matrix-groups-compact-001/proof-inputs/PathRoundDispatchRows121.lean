import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData121
import PathRoundDispatchInstructionMatrixData122
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7787 : actualRows7787=WordField.canonicalRows actualModulus 7787 (.bxor 7785 7786) := by core033_kernel_decide
theorem stats7787 : actualRows7787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7787=7428 := by core033_kernel_decide
theorem rows7788 : actualRows7788=WordField.canonicalRows actualModulus 7788 (.band 7767 7740) := by core033_kernel_decide
theorem stats7788 : actualRows7788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7788=5124 := by core033_kernel_decide
theorem rows7789 : actualRows7789=WordField.canonicalRows actualModulus 7789 (.band 7767 7713) := by core033_kernel_decide
theorem stats7789 : actualRows7789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7789=5124 := by core033_kernel_decide
theorem rows7790 : actualRows7790=WordField.canonicalRows actualModulus 7790 (.bxor 7788 7789) := by core033_kernel_decide
theorem stats7790 : actualRows7790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7790=7428 := by core033_kernel_decide
theorem rows7791 : actualRows7791=WordField.canonicalRows actualModulus 7791 (.band 7740 7713) := by core033_kernel_decide
theorem stats7791 : actualRows7791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7791=5124 := by core033_kernel_decide
theorem rows7792 : actualRows7792=WordField.canonicalRows actualModulus 7792 (.bxor 7790 7791) := by core033_kernel_decide
theorem stats7792 : actualRows7792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7792=7428 := by core033_kernel_decide
theorem rows7793 : actualRows7793=WordField.canonicalRows actualModulus 7793 (.badd 7787 7792) := by core033_kernel_decide
theorem stats7793 : actualRows7793.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7793=5388 := by core033_kernel_decide
theorem rows7794 : actualRows7794=WordField.canonicalRows actualModulus 7794 (.badd 7782 7793) := by core033_kernel_decide
theorem stats7794 : actualRows7794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7794=5388 := by core033_kernel_decide
theorem rows7795 : actualRows7795=WordField.canonicalRows actualModulus 7795 (.badd 7686 7782) := by core033_kernel_decide
theorem stats7795 : actualRows7795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7795=5388 := by core033_kernel_decide
theorem rows7796 : actualRows7796=WordField.canonicalRows actualModulus 7796 (.rotr 7795 6) := by core033_kernel_decide
theorem stats7796 : actualRows7796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7796=5124 := by core033_kernel_decide
theorem rows7797 : actualRows7797=WordField.canonicalRows actualModulus 7797 (.rotr 7795 11) := by core033_kernel_decide
theorem stats7797 : actualRows7797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7797=5124 := by core033_kernel_decide
theorem rows7798 : actualRows7798=WordField.canonicalRows actualModulus 7798 (.bxor 7796 7797) := by core033_kernel_decide
theorem stats7798 : actualRows7798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7798=7428 := by core033_kernel_decide
theorem rows7799 : actualRows7799=WordField.canonicalRows actualModulus 7799 (.rotr 7795 25) := by core033_kernel_decide
theorem stats7799 : actualRows7799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7799=5124 := by core033_kernel_decide
theorem rows7800 : actualRows7800=WordField.canonicalRows actualModulus 7800 (.bxor 7798 7799) := by core033_kernel_decide
theorem stats7800 : actualRows7800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7800=7428 := by core033_kernel_decide
theorem rows7801 : actualRows7801=WordField.canonicalRows actualModulus 7801 (.badd 7714 7800) := by core033_kernel_decide
theorem stats7801 : actualRows7801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7801=5388 := by core033_kernel_decide
theorem rows7802 : actualRows7802=WordField.canonicalRows actualModulus 7802 (.band 7795 7768) := by core033_kernel_decide
theorem stats7802 : actualRows7802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7802=5124 := by core033_kernel_decide
theorem rows7803 : actualRows7803=WordField.canonicalRows actualModulus 7803 (.bnot 7795) := by core033_kernel_decide
theorem stats7803 : actualRows7803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7803=6276 := by core033_kernel_decide
theorem rows7804 : actualRows7804=WordField.canonicalRows actualModulus 7804 (.band 7803 7741) := by core033_kernel_decide
theorem stats7804 : actualRows7804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7804=5124 := by core033_kernel_decide
theorem rows7805 : actualRows7805=WordField.canonicalRows actualModulus 7805 (.bxor 7802 7804) := by core033_kernel_decide
theorem stats7805 : actualRows7805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7805=7428 := by core033_kernel_decide
theorem rows7806 : actualRows7806=WordField.canonicalRows actualModulus 7806 (.badd 7801 7805) := by core033_kernel_decide
theorem stats7806 : actualRows7806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7806=5388 := by core033_kernel_decide
theorem rows7807 : actualRows7807=WordField.canonicalRows actualModulus 7807 (.literal (BitVec.ofNat 32 310598401)) := by core033_kernel_decide
theorem stats7807 : actualRows7807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7807=3612 := by core033_kernel_decide
theorem rows7808 : actualRows7808=WordField.canonicalRows actualModulus 7808 (.badd 7806 7807) := by core033_kernel_decide
theorem stats7808 : actualRows7808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7808=5388 := by core033_kernel_decide
theorem rows7809 : actualRows7809=WordField.canonicalRows actualModulus 7809 (.badd 7808 5740) := by core033_kernel_decide
theorem stats7809 : actualRows7809.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7809=5388 := by core033_kernel_decide
theorem rows7810 : actualRows7810=WordField.canonicalRows actualModulus 7810 (.rotr 7794 2) := by core033_kernel_decide
theorem stats7810 : actualRows7810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7810=5124 := by core033_kernel_decide
theorem rows7811 : actualRows7811=WordField.canonicalRows actualModulus 7811 (.rotr 7794 13) := by core033_kernel_decide
theorem stats7811 : actualRows7811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7811=5124 := by core033_kernel_decide
theorem rows7812 : actualRows7812=WordField.canonicalRows actualModulus 7812 (.bxor 7810 7811) := by core033_kernel_decide
theorem stats7812 : actualRows7812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7812=7428 := by core033_kernel_decide
theorem rows7813 : actualRows7813=WordField.canonicalRows actualModulus 7813 (.rotr 7794 22) := by core033_kernel_decide
theorem stats7813 : actualRows7813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7813=5124 := by core033_kernel_decide
theorem rows7814 : actualRows7814=WordField.canonicalRows actualModulus 7814 (.bxor 7812 7813) := by core033_kernel_decide
theorem stats7814 : actualRows7814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7814=7428 := by core033_kernel_decide
theorem rows7815 : actualRows7815=WordField.canonicalRows actualModulus 7815 (.band 7794 7767) := by core033_kernel_decide
theorem stats7815 : actualRows7815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7815=5124 := by core033_kernel_decide
theorem rows7816 : actualRows7816=WordField.canonicalRows actualModulus 7816 (.band 7794 7740) := by core033_kernel_decide
theorem stats7816 : actualRows7816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7816=5124 := by core033_kernel_decide
theorem rows7817 : actualRows7817=WordField.canonicalRows actualModulus 7817 (.bxor 7815 7816) := by core033_kernel_decide
theorem stats7817 : actualRows7817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7817=7428 := by core033_kernel_decide
theorem rows7818 : actualRows7818=WordField.canonicalRows actualModulus 7818 (.band 7767 7740) := by core033_kernel_decide
theorem stats7818 : actualRows7818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7818=5124 := by core033_kernel_decide
theorem rows7819 : actualRows7819=WordField.canonicalRows actualModulus 7819 (.bxor 7817 7818) := by core033_kernel_decide
theorem stats7819 : actualRows7819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7819=7428 := by core033_kernel_decide
theorem rows7820 : actualRows7820=WordField.canonicalRows actualModulus 7820 (.badd 7814 7819) := by core033_kernel_decide
theorem stats7820 : actualRows7820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7820=5388 := by core033_kernel_decide
theorem rows7821 : actualRows7821=WordField.canonicalRows actualModulus 7821 (.badd 7809 7820) := by core033_kernel_decide
theorem stats7821 : actualRows7821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7821=5388 := by core033_kernel_decide
theorem rows7822 : actualRows7822=WordField.canonicalRows actualModulus 7822 (.badd 7713 7809) := by core033_kernel_decide
theorem stats7822 : actualRows7822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7822=5388 := by core033_kernel_decide
theorem rows7823 : actualRows7823=WordField.canonicalRows actualModulus 7823 (.rotr 7822 6) := by core033_kernel_decide
theorem stats7823 : actualRows7823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7823=5124 := by core033_kernel_decide
theorem rows7824 : actualRows7824=WordField.canonicalRows actualModulus 7824 (.rotr 7822 11) := by core033_kernel_decide
theorem stats7824 : actualRows7824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7824=5124 := by core033_kernel_decide
theorem rows7825 : actualRows7825=WordField.canonicalRows actualModulus 7825 (.bxor 7823 7824) := by core033_kernel_decide
theorem stats7825 : actualRows7825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7825=7428 := by core033_kernel_decide
theorem rows7826 : actualRows7826=WordField.canonicalRows actualModulus 7826 (.rotr 7822 25) := by core033_kernel_decide
theorem stats7826 : actualRows7826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7826=5124 := by core033_kernel_decide
theorem rows7827 : actualRows7827=WordField.canonicalRows actualModulus 7827 (.bxor 7825 7826) := by core033_kernel_decide
theorem stats7827 : actualRows7827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7827=7428 := by core033_kernel_decide
theorem rows7828 : actualRows7828=WordField.canonicalRows actualModulus 7828 (.badd 7741 7827) := by core033_kernel_decide
theorem stats7828 : actualRows7828.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7828=5388 := by core033_kernel_decide
theorem rows7829 : actualRows7829=WordField.canonicalRows actualModulus 7829 (.band 7822 7795) := by core033_kernel_decide
theorem stats7829 : actualRows7829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7829=5124 := by core033_kernel_decide
theorem rows7830 : actualRows7830=WordField.canonicalRows actualModulus 7830 (.bnot 7822) := by core033_kernel_decide
theorem stats7830 : actualRows7830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7830=6276 := by core033_kernel_decide
theorem rows7831 : actualRows7831=WordField.canonicalRows actualModulus 7831 (.band 7830 7768) := by core033_kernel_decide
theorem stats7831 : actualRows7831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7831=5124 := by core033_kernel_decide
theorem rows7832 : actualRows7832=WordField.canonicalRows actualModulus 7832 (.bxor 7829 7831) := by core033_kernel_decide
theorem stats7832 : actualRows7832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7832=7428 := by core033_kernel_decide
theorem rows7833 : actualRows7833=WordField.canonicalRows actualModulus 7833 (.badd 7828 7832) := by core033_kernel_decide
theorem stats7833 : actualRows7833.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7833=5388 := by core033_kernel_decide
theorem rows7834 : actualRows7834=WordField.canonicalRows actualModulus 7834 (.literal (BitVec.ofNat 32 607225278)) := by core033_kernel_decide
theorem stats7834 : actualRows7834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7834=3828 := by core033_kernel_decide
theorem rows7835 : actualRows7835=WordField.canonicalRows actualModulus 7835 (.badd 7833 7834) := by core033_kernel_decide
theorem stats7835 : actualRows7835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7835=5388 := by core033_kernel_decide
theorem rows7836 : actualRows7836=WordField.canonicalRows actualModulus 7836 (.badd 7835 5746) := by core033_kernel_decide
theorem stats7836 : actualRows7836.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7836=5388 := by core033_kernel_decide
theorem rows7837 : actualRows7837=WordField.canonicalRows actualModulus 7837 (.rotr 7821 2) := by core033_kernel_decide
theorem stats7837 : actualRows7837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7837=5124 := by core033_kernel_decide
theorem rows7838 : actualRows7838=WordField.canonicalRows actualModulus 7838 (.rotr 7821 13) := by core033_kernel_decide
theorem stats7838 : actualRows7838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7838=5124 := by core033_kernel_decide
theorem rows7839 : actualRows7839=WordField.canonicalRows actualModulus 7839 (.bxor 7837 7838) := by core033_kernel_decide
theorem stats7839 : actualRows7839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7839=7428 := by core033_kernel_decide
theorem rows7840 : actualRows7840=WordField.canonicalRows actualModulus 7840 (.rotr 7821 22) := by core033_kernel_decide
theorem stats7840 : actualRows7840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7840=5124 := by core033_kernel_decide
theorem rows7841 : actualRows7841=WordField.canonicalRows actualModulus 7841 (.bxor 7839 7840) := by core033_kernel_decide
theorem stats7841 : actualRows7841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7841=7428 := by core033_kernel_decide
theorem rows7842 : actualRows7842=WordField.canonicalRows actualModulus 7842 (.band 7821 7794) := by core033_kernel_decide
theorem stats7842 : actualRows7842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7842=5124 := by core033_kernel_decide
theorem rows7843 : actualRows7843=WordField.canonicalRows actualModulus 7843 (.band 7821 7767) := by core033_kernel_decide
theorem stats7843 : actualRows7843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7843=5124 := by core033_kernel_decide
theorem rows7844 : actualRows7844=WordField.canonicalRows actualModulus 7844 (.bxor 7842 7843) := by core033_kernel_decide
theorem stats7844 : actualRows7844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7844=7428 := by core033_kernel_decide
theorem rows7845 : actualRows7845=WordField.canonicalRows actualModulus 7845 (.band 7794 7767) := by core033_kernel_decide
theorem stats7845 : actualRows7845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7845=5124 := by core033_kernel_decide
theorem rows7846 : actualRows7846=WordField.canonicalRows actualModulus 7846 (.bxor 7844 7845) := by core033_kernel_decide
theorem stats7846 : actualRows7846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7846=7428 := by core033_kernel_decide
theorem rows7847 : actualRows7847=WordField.canonicalRows actualModulus 7847 (.badd 7841 7846) := by core033_kernel_decide
theorem stats7847 : actualRows7847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7847=5388 := by core033_kernel_decide
theorem rows7848 : actualRows7848=WordField.canonicalRows actualModulus 7848 (.badd 7836 7847) := by core033_kernel_decide
theorem stats7848 : actualRows7848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7848=5388 := by core033_kernel_decide
theorem rows7849 : actualRows7849=WordField.canonicalRows actualModulus 7849 (.badd 7740 7836) := by core033_kernel_decide
theorem stats7849 : actualRows7849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7849=5388 := by core033_kernel_decide
theorem rows7850 : actualRows7850=WordField.canonicalRows actualModulus 7850 (.rotr 7849 6) := by core033_kernel_decide
theorem stats7850 : actualRows7850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7850=5124 := by core033_kernel_decide
def partRows121 : List R1CS.Row := actualRows7787++actualRows7788++actualRows7789++actualRows7790++actualRows7791++actualRows7792++actualRows7793++actualRows7794++actualRows7795++actualRows7796++actualRows7797++actualRows7798++actualRows7799++actualRows7800++actualRows7801++actualRows7802++actualRows7803++actualRows7804++actualRows7805++actualRows7806++actualRows7807++actualRows7808++actualRows7809++actualRows7810++actualRows7811++actualRows7812++actualRows7813++actualRows7814++actualRows7815++actualRows7816++actualRows7817++actualRows7818++actualRows7819++actualRows7820++actualRows7821++actualRows7822++actualRows7823++actualRows7824++actualRows7825++actualRows7826++actualRows7827++actualRows7828++actualRows7829++actualRows7830++actualRows7831++actualRows7832++actualRows7833++actualRows7834++actualRows7835++actualRows7836++actualRows7837++actualRows7838++actualRows7839++actualRows7840++actualRows7841++actualRows7842++actualRows7843++actualRows7844++actualRows7845++actualRows7846++actualRows7847++actualRows7848++actualRows7849++actualRows7850
def partOps121 : List WordIR.Op := [.bxor 7785 7786,.band 7767 7740,.band 7767 7713,.bxor 7788 7789,.band 7740 7713,.bxor 7790 7791,.badd 7787 7792,.badd 7782 7793,.badd 7686 7782,.rotr 7795 6,.rotr 7795 11,.bxor 7796 7797,.rotr 7795 25,.bxor 7798 7799,.badd 7714 7800,.band 7795 7768,.bnot 7795,.band 7803 7741,.bxor 7802 7804,.badd 7801 7805,.literal (BitVec.ofNat 32 310598401),.badd 7806 7807,.badd 7808 5740,.rotr 7794 2,.rotr 7794 13,.bxor 7810 7811,.rotr 7794 22,.bxor 7812 7813,.band 7794 7767,.band 7794 7740,.bxor 7815 7816,.band 7767 7740,.bxor 7817 7818,.badd 7814 7819,.badd 7809 7820,.badd 7713 7809,.rotr 7822 6,.rotr 7822 11,.bxor 7823 7824,.rotr 7822 25,.bxor 7825 7826,.badd 7741 7827,.band 7822 7795,.bnot 7822,.band 7830 7768,.bxor 7829 7831,.badd 7828 7832,.literal (BitVec.ofNat 32 607225278),.badd 7833 7834,.badd 7835 5746,.rotr 7821 2,.rotr 7821 13,.bxor 7837 7838,.rotr 7821 22,.bxor 7839 7840,.band 7821 7794,.band 7821 7767,.bxor 7842 7843,.band 7794 7767,.bxor 7844 7845,.badd 7841 7846,.badd 7836 7847,.badd 7740 7836,.rotr 7849 6]
theorem partExact121 : partRows121=WordField.rows actualModulus 7787 partOps121 := by
  simp only [partRows121,partOps121,WordField.rows,rows7787,rows7788,rows7789,rows7790,rows7791,rows7792,rows7793,rows7794,rows7795,rows7796,rows7797,rows7798,rows7799,rows7800,rows7801,rows7802,rows7803,rows7804,rows7805,rows7806,rows7807,rows7808,rows7809,rows7810,rows7811,rows7812,rows7813,rows7814,rows7815,rows7816,rows7817,rows7818,rows7819,rows7820,rows7821,rows7822,rows7823,rows7824,rows7825,rows7826,rows7827,rows7828,rows7829,rows7830,rows7831,rows7832,rows7833,rows7834,rows7835,rows7836,rows7837,rows7838,rows7839,rows7840,rows7841,rows7842,rows7843,rows7844,rows7845,rows7846,rows7847,rows7848,rows7849,rows7850,List.append_assoc,List.append_nil]
theorem partLength121 : partOps121.length=64 := by decide
theorem partStats121 : partRows121.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows121=371088 := by
  simp only [partRows121,List.length_append,MatrixRowBlocks.rows_weight_append,stats7787.1,stats7787.2,stats7788.1,stats7788.2,stats7789.1,stats7789.2,stats7790.1,stats7790.2,stats7791.1,stats7791.2,stats7792.1,stats7792.2,stats7793.1,stats7793.2,stats7794.1,stats7794.2,stats7795.1,stats7795.2,stats7796.1,stats7796.2,stats7797.1,stats7797.2,stats7798.1,stats7798.2,stats7799.1,stats7799.2,stats7800.1,stats7800.2,stats7801.1,stats7801.2,stats7802.1,stats7802.2,stats7803.1,stats7803.2,stats7804.1,stats7804.2,stats7805.1,stats7805.2,stats7806.1,stats7806.2,stats7807.1,stats7807.2,stats7808.1,stats7808.2,stats7809.1,stats7809.2,stats7810.1,stats7810.2,stats7811.1,stats7811.2,stats7812.1,stats7812.2,stats7813.1,stats7813.2,stats7814.1,stats7814.2,stats7815.1,stats7815.2,stats7816.1,stats7816.2,stats7817.1,stats7817.2,stats7818.1,stats7818.2,stats7819.1,stats7819.2,stats7820.1,stats7820.2,stats7821.1,stats7821.2,stats7822.1,stats7822.2,stats7823.1,stats7823.2,stats7824.1,stats7824.2,stats7825.1,stats7825.2,stats7826.1,stats7826.2,stats7827.1,stats7827.2,stats7828.1,stats7828.2,stats7829.1,stats7829.2,stats7830.1,stats7830.2,stats7831.1,stats7831.2,stats7832.1,stats7832.2,stats7833.1,stats7833.2,stats7834.1,stats7834.2,stats7835.1,stats7835.2,stats7836.1,stats7836.2,stats7837.1,stats7837.2,stats7838.1,stats7838.2,stats7839.1,stats7839.2,stats7840.1,stats7840.2,stats7841.1,stats7841.2,stats7842.1,stats7842.2,stats7843.1,stats7843.2,stats7844.1,stats7844.2,stats7845.1,stats7845.2,stats7846.1,stats7846.2,stats7847.1,stats7847.2,stats7848.1,stats7848.2,stats7849.1,stats7849.2,stats7850.1,stats7850.2]
  decide
end PathRoundDispatchCheckedRows
