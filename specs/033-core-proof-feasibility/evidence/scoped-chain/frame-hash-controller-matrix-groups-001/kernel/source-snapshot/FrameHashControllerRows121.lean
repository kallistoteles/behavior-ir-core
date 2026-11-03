import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData121
import FrameHashControllerInstructionMatrixData122
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7787 : actualRows7787=WordField.canonicalRows actualModulus 7787 (.bxor 7785 7786) := by core033_kernel_decide
theorem stats7787 : actualRows7787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7787=7428 := by core033_kernel_decide
theorem rows7788 : actualRows7788=WordField.canonicalRows actualModulus 7788 (.band 7737 7710) := by core033_kernel_decide
theorem stats7788 : actualRows7788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7788=5124 := by core033_kernel_decide
theorem rows7789 : actualRows7789=WordField.canonicalRows actualModulus 7789 (.bxor 7787 7788) := by core033_kernel_decide
theorem stats7789 : actualRows7789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7789=7428 := by core033_kernel_decide
theorem rows7790 : actualRows7790=WordField.canonicalRows actualModulus 7790 (.badd 7784 7789) := by core033_kernel_decide
theorem stats7790 : actualRows7790.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7790=5388 := by core033_kernel_decide
theorem rows7791 : actualRows7791=WordField.canonicalRows actualModulus 7791 (.badd 7779 7790) := by core033_kernel_decide
theorem stats7791 : actualRows7791.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7791=5388 := by core033_kernel_decide
theorem rows7792 : actualRows7792=WordField.canonicalRows actualModulus 7792 (.badd 7683 7779) := by core033_kernel_decide
theorem stats7792 : actualRows7792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7792=5388 := by core033_kernel_decide
theorem rows7793 : actualRows7793=WordField.canonicalRows actualModulus 7793 (.rotr 7792 6) := by core033_kernel_decide
theorem stats7793 : actualRows7793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7793=5124 := by core033_kernel_decide
theorem rows7794 : actualRows7794=WordField.canonicalRows actualModulus 7794 (.rotr 7792 11) := by core033_kernel_decide
theorem stats7794 : actualRows7794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7794=5124 := by core033_kernel_decide
theorem rows7795 : actualRows7795=WordField.canonicalRows actualModulus 7795 (.bxor 7793 7794) := by core033_kernel_decide
theorem stats7795 : actualRows7795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7795=7428 := by core033_kernel_decide
theorem rows7796 : actualRows7796=WordField.canonicalRows actualModulus 7796 (.rotr 7792 25) := by core033_kernel_decide
theorem stats7796 : actualRows7796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7796=5124 := by core033_kernel_decide
theorem rows7797 : actualRows7797=WordField.canonicalRows actualModulus 7797 (.bxor 7795 7796) := by core033_kernel_decide
theorem stats7797 : actualRows7797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7797=7428 := by core033_kernel_decide
theorem rows7798 : actualRows7798=WordField.canonicalRows actualModulus 7798 (.badd 7711 7797) := by core033_kernel_decide
theorem stats7798 : actualRows7798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7798=5388 := by core033_kernel_decide
theorem rows7799 : actualRows7799=WordField.canonicalRows actualModulus 7799 (.band 7792 7765) := by core033_kernel_decide
theorem stats7799 : actualRows7799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7799=5124 := by core033_kernel_decide
theorem rows7800 : actualRows7800=WordField.canonicalRows actualModulus 7800 (.bnot 7792) := by core033_kernel_decide
theorem stats7800 : actualRows7800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7800=6276 := by core033_kernel_decide
theorem rows7801 : actualRows7801=WordField.canonicalRows actualModulus 7801 (.band 7800 7738) := by core033_kernel_decide
theorem stats7801 : actualRows7801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7801=5124 := by core033_kernel_decide
theorem rows7802 : actualRows7802=WordField.canonicalRows actualModulus 7802 (.bxor 7799 7801) := by core033_kernel_decide
theorem stats7802 : actualRows7802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7802=7428 := by core033_kernel_decide
theorem rows7803 : actualRows7803=WordField.canonicalRows actualModulus 7803 (.badd 7798 7802) := by core033_kernel_decide
theorem stats7803 : actualRows7803.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7803=5388 := by core033_kernel_decide
theorem rows7804 : actualRows7804=WordField.canonicalRows actualModulus 7804 (.literal (BitVec.ofNat 32 3336571891)) := by core033_kernel_decide
theorem stats7804 : actualRows7804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7804=3972 := by core033_kernel_decide
theorem rows7805 : actualRows7805=WordField.canonicalRows actualModulus 7805 (.badd 7803 7804) := by core033_kernel_decide
theorem stats7805 : actualRows7805.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7805=5388 := by core033_kernel_decide
theorem rows7806 : actualRows7806=WordField.canonicalRows actualModulus 7806 (.badd 7805 6581) := by core033_kernel_decide
theorem stats7806 : actualRows7806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7806=5388 := by core033_kernel_decide
theorem rows7807 : actualRows7807=WordField.canonicalRows actualModulus 7807 (.rotr 7791 2) := by core033_kernel_decide
theorem stats7807 : actualRows7807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7807=5124 := by core033_kernel_decide
theorem rows7808 : actualRows7808=WordField.canonicalRows actualModulus 7808 (.rotr 7791 13) := by core033_kernel_decide
theorem stats7808 : actualRows7808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7808=5124 := by core033_kernel_decide
theorem rows7809 : actualRows7809=WordField.canonicalRows actualModulus 7809 (.bxor 7807 7808) := by core033_kernel_decide
theorem stats7809 : actualRows7809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7809=7428 := by core033_kernel_decide
theorem rows7810 : actualRows7810=WordField.canonicalRows actualModulus 7810 (.rotr 7791 22) := by core033_kernel_decide
theorem stats7810 : actualRows7810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7810=5124 := by core033_kernel_decide
theorem rows7811 : actualRows7811=WordField.canonicalRows actualModulus 7811 (.bxor 7809 7810) := by core033_kernel_decide
theorem stats7811 : actualRows7811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7811=7428 := by core033_kernel_decide
theorem rows7812 : actualRows7812=WordField.canonicalRows actualModulus 7812 (.band 7791 7764) := by core033_kernel_decide
theorem stats7812 : actualRows7812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7812=5124 := by core033_kernel_decide
theorem rows7813 : actualRows7813=WordField.canonicalRows actualModulus 7813 (.band 7791 7737) := by core033_kernel_decide
theorem stats7813 : actualRows7813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7813=5124 := by core033_kernel_decide
theorem rows7814 : actualRows7814=WordField.canonicalRows actualModulus 7814 (.bxor 7812 7813) := by core033_kernel_decide
theorem stats7814 : actualRows7814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7814=7428 := by core033_kernel_decide
theorem rows7815 : actualRows7815=WordField.canonicalRows actualModulus 7815 (.band 7764 7737) := by core033_kernel_decide
theorem stats7815 : actualRows7815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7815=5124 := by core033_kernel_decide
theorem rows7816 : actualRows7816=WordField.canonicalRows actualModulus 7816 (.bxor 7814 7815) := by core033_kernel_decide
theorem stats7816 : actualRows7816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7816=7428 := by core033_kernel_decide
theorem rows7817 : actualRows7817=WordField.canonicalRows actualModulus 7817 (.badd 7811 7816) := by core033_kernel_decide
theorem stats7817 : actualRows7817.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7817=5388 := by core033_kernel_decide
theorem rows7818 : actualRows7818=WordField.canonicalRows actualModulus 7818 (.badd 7806 7817) := by core033_kernel_decide
theorem stats7818 : actualRows7818.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7818=5388 := by core033_kernel_decide
theorem rows7819 : actualRows7819=WordField.canonicalRows actualModulus 7819 (.badd 7710 7806) := by core033_kernel_decide
theorem stats7819 : actualRows7819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7819=5388 := by core033_kernel_decide
theorem rows7820 : actualRows7820=WordField.canonicalRows actualModulus 7820 (.rotr 7819 6) := by core033_kernel_decide
theorem stats7820 : actualRows7820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7820=5124 := by core033_kernel_decide
theorem rows7821 : actualRows7821=WordField.canonicalRows actualModulus 7821 (.rotr 7819 11) := by core033_kernel_decide
theorem stats7821 : actualRows7821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7821=5124 := by core033_kernel_decide
theorem rows7822 : actualRows7822=WordField.canonicalRows actualModulus 7822 (.bxor 7820 7821) := by core033_kernel_decide
theorem stats7822 : actualRows7822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7822=7428 := by core033_kernel_decide
theorem rows7823 : actualRows7823=WordField.canonicalRows actualModulus 7823 (.rotr 7819 25) := by core033_kernel_decide
theorem stats7823 : actualRows7823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7823=5124 := by core033_kernel_decide
theorem rows7824 : actualRows7824=WordField.canonicalRows actualModulus 7824 (.bxor 7822 7823) := by core033_kernel_decide
theorem stats7824 : actualRows7824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7824=7428 := by core033_kernel_decide
theorem rows7825 : actualRows7825=WordField.canonicalRows actualModulus 7825 (.badd 7738 7824) := by core033_kernel_decide
theorem stats7825 : actualRows7825.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7825=5388 := by core033_kernel_decide
theorem rows7826 : actualRows7826=WordField.canonicalRows actualModulus 7826 (.band 7819 7792) := by core033_kernel_decide
theorem stats7826 : actualRows7826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7826=5124 := by core033_kernel_decide
theorem rows7827 : actualRows7827=WordField.canonicalRows actualModulus 7827 (.bnot 7819) := by core033_kernel_decide
theorem stats7827 : actualRows7827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7827=6276 := by core033_kernel_decide
theorem rows7828 : actualRows7828=WordField.canonicalRows actualModulus 7828 (.band 7827 7765) := by core033_kernel_decide
theorem stats7828 : actualRows7828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7828=5124 := by core033_kernel_decide
theorem rows7829 : actualRows7829=WordField.canonicalRows actualModulus 7829 (.bxor 7826 7828) := by core033_kernel_decide
theorem stats7829 : actualRows7829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7829=7428 := by core033_kernel_decide
theorem rows7830 : actualRows7830=WordField.canonicalRows actualModulus 7830 (.badd 7825 7829) := by core033_kernel_decide
theorem stats7830 : actualRows7830.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7830=5388 := by core033_kernel_decide
theorem rows7831 : actualRows7831=WordField.canonicalRows actualModulus 7831 (.literal (BitVec.ofNat 32 3584528711)) := by core033_kernel_decide
theorem stats7831 : actualRows7831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7831=4044 := by core033_kernel_decide
theorem rows7832 : actualRows7832=WordField.canonicalRows actualModulus 7832 (.badd 7830 7831) := by core033_kernel_decide
theorem stats7832 : actualRows7832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7832=5388 := by core033_kernel_decide
theorem rows7833 : actualRows7833=WordField.canonicalRows actualModulus 7833 (.badd 7832 6594) := by core033_kernel_decide
theorem stats7833 : actualRows7833.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7833=5388 := by core033_kernel_decide
theorem rows7834 : actualRows7834=WordField.canonicalRows actualModulus 7834 (.rotr 7818 2) := by core033_kernel_decide
theorem stats7834 : actualRows7834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7834=5124 := by core033_kernel_decide
theorem rows7835 : actualRows7835=WordField.canonicalRows actualModulus 7835 (.rotr 7818 13) := by core033_kernel_decide
theorem stats7835 : actualRows7835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7835=5124 := by core033_kernel_decide
theorem rows7836 : actualRows7836=WordField.canonicalRows actualModulus 7836 (.bxor 7834 7835) := by core033_kernel_decide
theorem stats7836 : actualRows7836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7836=7428 := by core033_kernel_decide
theorem rows7837 : actualRows7837=WordField.canonicalRows actualModulus 7837 (.rotr 7818 22) := by core033_kernel_decide
theorem stats7837 : actualRows7837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7837=5124 := by core033_kernel_decide
theorem rows7838 : actualRows7838=WordField.canonicalRows actualModulus 7838 (.bxor 7836 7837) := by core033_kernel_decide
theorem stats7838 : actualRows7838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7838=7428 := by core033_kernel_decide
theorem rows7839 : actualRows7839=WordField.canonicalRows actualModulus 7839 (.band 7818 7791) := by core033_kernel_decide
theorem stats7839 : actualRows7839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7839=5124 := by core033_kernel_decide
theorem rows7840 : actualRows7840=WordField.canonicalRows actualModulus 7840 (.band 7818 7764) := by core033_kernel_decide
theorem stats7840 : actualRows7840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7840=5124 := by core033_kernel_decide
theorem rows7841 : actualRows7841=WordField.canonicalRows actualModulus 7841 (.bxor 7839 7840) := by core033_kernel_decide
theorem stats7841 : actualRows7841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7841=7428 := by core033_kernel_decide
theorem rows7842 : actualRows7842=WordField.canonicalRows actualModulus 7842 (.band 7791 7764) := by core033_kernel_decide
theorem stats7842 : actualRows7842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7842=5124 := by core033_kernel_decide
theorem rows7843 : actualRows7843=WordField.canonicalRows actualModulus 7843 (.bxor 7841 7842) := by core033_kernel_decide
theorem stats7843 : actualRows7843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7843=7428 := by core033_kernel_decide
theorem rows7844 : actualRows7844=WordField.canonicalRows actualModulus 7844 (.badd 7838 7843) := by core033_kernel_decide
theorem stats7844 : actualRows7844.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7844=5388 := by core033_kernel_decide
theorem rows7845 : actualRows7845=WordField.canonicalRows actualModulus 7845 (.badd 7833 7844) := by core033_kernel_decide
theorem stats7845 : actualRows7845.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7845=5388 := by core033_kernel_decide
theorem rows7846 : actualRows7846=WordField.canonicalRows actualModulus 7846 (.badd 7737 7833) := by core033_kernel_decide
theorem stats7846 : actualRows7846.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7846=5388 := by core033_kernel_decide
theorem rows7847 : actualRows7847=WordField.canonicalRows actualModulus 7847 (.rotr 7846 6) := by core033_kernel_decide
theorem stats7847 : actualRows7847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7847=5124 := by core033_kernel_decide
theorem rows7848 : actualRows7848=WordField.canonicalRows actualModulus 7848 (.rotr 7846 11) := by core033_kernel_decide
theorem stats7848 : actualRows7848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7848=5124 := by core033_kernel_decide
theorem rows7849 : actualRows7849=WordField.canonicalRows actualModulus 7849 (.bxor 7847 7848) := by core033_kernel_decide
theorem stats7849 : actualRows7849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7849=7428 := by core033_kernel_decide
theorem rows7850 : actualRows7850=WordField.canonicalRows actualModulus 7850 (.rotr 7846 25) := by core033_kernel_decide
theorem stats7850 : actualRows7850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7850=5124 := by core033_kernel_decide
def partRows121 : List R1CS.Row := actualRows7787++actualRows7788++actualRows7789++actualRows7790++actualRows7791++actualRows7792++actualRows7793++actualRows7794++actualRows7795++actualRows7796++actualRows7797++actualRows7798++actualRows7799++actualRows7800++actualRows7801++actualRows7802++actualRows7803++actualRows7804++actualRows7805++actualRows7806++actualRows7807++actualRows7808++actualRows7809++actualRows7810++actualRows7811++actualRows7812++actualRows7813++actualRows7814++actualRows7815++actualRows7816++actualRows7817++actualRows7818++actualRows7819++actualRows7820++actualRows7821++actualRows7822++actualRows7823++actualRows7824++actualRows7825++actualRows7826++actualRows7827++actualRows7828++actualRows7829++actualRows7830++actualRows7831++actualRows7832++actualRows7833++actualRows7834++actualRows7835++actualRows7836++actualRows7837++actualRows7838++actualRows7839++actualRows7840++actualRows7841++actualRows7842++actualRows7843++actualRows7844++actualRows7845++actualRows7846++actualRows7847++actualRows7848++actualRows7849++actualRows7850
def partOps121 : List WordIR.Op := [.bxor 7785 7786,.band 7737 7710,.bxor 7787 7788,.badd 7784 7789,.badd 7779 7790,.badd 7683 7779,.rotr 7792 6,.rotr 7792 11,.bxor 7793 7794,.rotr 7792 25,.bxor 7795 7796,.badd 7711 7797,.band 7792 7765,.bnot 7792,.band 7800 7738,.bxor 7799 7801,.badd 7798 7802,.literal (BitVec.ofNat 32 3336571891),.badd 7803 7804,.badd 7805 6581,.rotr 7791 2,.rotr 7791 13,.bxor 7807 7808,.rotr 7791 22,.bxor 7809 7810,.band 7791 7764,.band 7791 7737,.bxor 7812 7813,.band 7764 7737,.bxor 7814 7815,.badd 7811 7816,.badd 7806 7817,.badd 7710 7806,.rotr 7819 6,.rotr 7819 11,.bxor 7820 7821,.rotr 7819 25,.bxor 7822 7823,.badd 7738 7824,.band 7819 7792,.bnot 7819,.band 7827 7765,.bxor 7826 7828,.badd 7825 7829,.literal (BitVec.ofNat 32 3584528711),.badd 7830 7831,.badd 7832 6594,.rotr 7818 2,.rotr 7818 13,.bxor 7834 7835,.rotr 7818 22,.bxor 7836 7837,.band 7818 7791,.band 7818 7764,.bxor 7839 7840,.band 7791 7764,.bxor 7841 7842,.badd 7838 7843,.badd 7833 7844,.badd 7737 7833,.rotr 7846 6,.rotr 7846 11,.bxor 7847 7848,.rotr 7846 25]
theorem partExact121 : partRows121=WordField.rows actualModulus 7787 partOps121 := by
  simp only [partRows121,partOps121,WordField.rows,rows7787,rows7788,rows7789,rows7790,rows7791,rows7792,rows7793,rows7794,rows7795,rows7796,rows7797,rows7798,rows7799,rows7800,rows7801,rows7802,rows7803,rows7804,rows7805,rows7806,rows7807,rows7808,rows7809,rows7810,rows7811,rows7812,rows7813,rows7814,rows7815,rows7816,rows7817,rows7818,rows7819,rows7820,rows7821,rows7822,rows7823,rows7824,rows7825,rows7826,rows7827,rows7828,rows7829,rows7830,rows7831,rows7832,rows7833,rows7834,rows7835,rows7836,rows7837,rows7838,rows7839,rows7840,rows7841,rows7842,rows7843,rows7844,rows7845,rows7846,rows7847,rows7848,rows7849,rows7850,List.append_assoc,List.append_nil]
theorem partLength121 : partOps121.length=64 := by decide
theorem partStats121 : partRows121.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows121=371664 := by
  simp only [partRows121,List.length_append,MatrixRowBlocks.rows_weight_append,stats7787.1,stats7787.2,stats7788.1,stats7788.2,stats7789.1,stats7789.2,stats7790.1,stats7790.2,stats7791.1,stats7791.2,stats7792.1,stats7792.2,stats7793.1,stats7793.2,stats7794.1,stats7794.2,stats7795.1,stats7795.2,stats7796.1,stats7796.2,stats7797.1,stats7797.2,stats7798.1,stats7798.2,stats7799.1,stats7799.2,stats7800.1,stats7800.2,stats7801.1,stats7801.2,stats7802.1,stats7802.2,stats7803.1,stats7803.2,stats7804.1,stats7804.2,stats7805.1,stats7805.2,stats7806.1,stats7806.2,stats7807.1,stats7807.2,stats7808.1,stats7808.2,stats7809.1,stats7809.2,stats7810.1,stats7810.2,stats7811.1,stats7811.2,stats7812.1,stats7812.2,stats7813.1,stats7813.2,stats7814.1,stats7814.2,stats7815.1,stats7815.2,stats7816.1,stats7816.2,stats7817.1,stats7817.2,stats7818.1,stats7818.2,stats7819.1,stats7819.2,stats7820.1,stats7820.2,stats7821.1,stats7821.2,stats7822.1,stats7822.2,stats7823.1,stats7823.2,stats7824.1,stats7824.2,stats7825.1,stats7825.2,stats7826.1,stats7826.2,stats7827.1,stats7827.2,stats7828.1,stats7828.2,stats7829.1,stats7829.2,stats7830.1,stats7830.2,stats7831.1,stats7831.2,stats7832.1,stats7832.2,stats7833.1,stats7833.2,stats7834.1,stats7834.2,stats7835.1,stats7835.2,stats7836.1,stats7836.2,stats7837.1,stats7837.2,stats7838.1,stats7838.2,stats7839.1,stats7839.2,stats7840.1,stats7840.2,stats7841.1,stats7841.2,stats7842.1,stats7842.2,stats7843.1,stats7843.2,stats7844.1,stats7844.2,stats7845.1,stats7845.2,stats7846.1,stats7846.2,stats7847.1,stats7847.2,stats7848.1,stats7848.2,stats7849.1,stats7849.2,stats7850.1,stats7850.2]
  decide
end FrameHashControllerCheckedRows
