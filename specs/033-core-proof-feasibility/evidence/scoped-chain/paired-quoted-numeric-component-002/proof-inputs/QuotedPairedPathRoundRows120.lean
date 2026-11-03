import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData121
import PairedPathRoundInstructionMatrixData122
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7776 : actualRows7776=WordField.canonicalRows actualModulus 7776 (.bxor 7774 7775) := by core033_kernel_decide
theorem stats7776 : actualRows7776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7776=7428 := by core033_kernel_decide
theorem rows7777 : actualRows7777=WordField.canonicalRows actualModulus 7777 (.shr 7760 10) := by core033_kernel_decide
theorem stats7777 : actualRows7777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7777=4404 := by core033_kernel_decide
theorem rows7778 : actualRows7778=WordField.canonicalRows actualModulus 7778 (.bxor 7776 7777) := by core033_kernel_decide
theorem stats7778 : actualRows7778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7778=7428 := by core033_kernel_decide
theorem rows7779 : actualRows7779=WordField.canonicalRows actualModulus 7779 (.badd 7778 7695) := by core033_kernel_decide
theorem stats7779 : actualRows7779.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7779=5388 := by core033_kernel_decide
theorem rows7780 : actualRows7780=WordField.canonicalRows actualModulus 7780 (.rotr 7591 7) := by core033_kernel_decide
theorem stats7780 : actualRows7780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7780=5124 := by core033_kernel_decide
theorem rows7781 : actualRows7781=WordField.canonicalRows actualModulus 7781 (.rotr 7591 18) := by core033_kernel_decide
theorem stats7781 : actualRows7781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7781=5124 := by core033_kernel_decide
theorem rows7782 : actualRows7782=WordField.canonicalRows actualModulus 7782 (.bxor 7780 7781) := by core033_kernel_decide
theorem stats7782 : actualRows7782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7782=7428 := by core033_kernel_decide
theorem rows7783 : actualRows7783=WordField.canonicalRows actualModulus 7783 (.shr 7591 3) := by core033_kernel_decide
theorem stats7783 : actualRows7783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7783=4908 := by core033_kernel_decide
theorem rows7784 : actualRows7784=WordField.canonicalRows actualModulus 7784 (.bxor 7782 7783) := by core033_kernel_decide
theorem stats7784 : actualRows7784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7784=7428 := by core033_kernel_decide
theorem rows7785 : actualRows7785=WordField.canonicalRows actualModulus 7785 (.badd 7779 7784) := by core033_kernel_decide
theorem stats7785 : actualRows7785.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7785=5388 := by core033_kernel_decide
theorem rows7786 : actualRows7786=WordField.canonicalRows actualModulus 7786 (.badd 7785 7578) := by core033_kernel_decide
theorem stats7786 : actualRows7786.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7786=5388 := by core033_kernel_decide
theorem rows7787 : actualRows7787=WordField.canonicalRows actualModulus 7787 (.rotr 7773 17) := by core033_kernel_decide
theorem stats7787 : actualRows7787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7787=5124 := by core033_kernel_decide
theorem rows7788 : actualRows7788=WordField.canonicalRows actualModulus 7788 (.rotr 7773 19) := by core033_kernel_decide
theorem stats7788 : actualRows7788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7788=5124 := by core033_kernel_decide
theorem rows7789 : actualRows7789=WordField.canonicalRows actualModulus 7789 (.bxor 7787 7788) := by core033_kernel_decide
theorem stats7789 : actualRows7789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7789=7428 := by core033_kernel_decide
theorem rows7790 : actualRows7790=WordField.canonicalRows actualModulus 7790 (.shr 7773 10) := by core033_kernel_decide
theorem stats7790 : actualRows7790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7790=4404 := by core033_kernel_decide
theorem rows7791 : actualRows7791=WordField.canonicalRows actualModulus 7791 (.bxor 7789 7790) := by core033_kernel_decide
theorem stats7791 : actualRows7791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7791=7428 := by core033_kernel_decide
theorem rows7792 : actualRows7792=WordField.canonicalRows actualModulus 7792 (.badd 7791 7708) := by core033_kernel_decide
theorem stats7792 : actualRows7792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7792=5388 := by core033_kernel_decide
theorem rows7793 : actualRows7793=WordField.canonicalRows actualModulus 7793 (.rotr 7604 7) := by core033_kernel_decide
theorem stats7793 : actualRows7793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7793=5124 := by core033_kernel_decide
theorem rows7794 : actualRows7794=WordField.canonicalRows actualModulus 7794 (.rotr 7604 18) := by core033_kernel_decide
theorem stats7794 : actualRows7794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7794=5124 := by core033_kernel_decide
theorem rows7795 : actualRows7795=WordField.canonicalRows actualModulus 7795 (.bxor 7793 7794) := by core033_kernel_decide
theorem stats7795 : actualRows7795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7795=7428 := by core033_kernel_decide
theorem rows7796 : actualRows7796=WordField.canonicalRows actualModulus 7796 (.shr 7604 3) := by core033_kernel_decide
theorem stats7796 : actualRows7796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7796=4908 := by core033_kernel_decide
theorem rows7797 : actualRows7797=WordField.canonicalRows actualModulus 7797 (.bxor 7795 7796) := by core033_kernel_decide
theorem stats7797 : actualRows7797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7797=7428 := by core033_kernel_decide
theorem rows7798 : actualRows7798=WordField.canonicalRows actualModulus 7798 (.badd 7792 7797) := by core033_kernel_decide
theorem stats7798 : actualRows7798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7798=5388 := by core033_kernel_decide
theorem rows7799 : actualRows7799=WordField.canonicalRows actualModulus 7799 (.badd 7798 7591) := by core033_kernel_decide
theorem stats7799 : actualRows7799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7799=5388 := by core033_kernel_decide
theorem rows7800 : actualRows7800=WordField.canonicalRows actualModulus 7800 (.rotr 7786 17) := by core033_kernel_decide
theorem stats7800 : actualRows7800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7800=5124 := by core033_kernel_decide
theorem rows7801 : actualRows7801=WordField.canonicalRows actualModulus 7801 (.rotr 7786 19) := by core033_kernel_decide
theorem stats7801 : actualRows7801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7801=5124 := by core033_kernel_decide
theorem rows7802 : actualRows7802=WordField.canonicalRows actualModulus 7802 (.bxor 7800 7801) := by core033_kernel_decide
theorem stats7802 : actualRows7802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7802=7428 := by core033_kernel_decide
theorem rows7803 : actualRows7803=WordField.canonicalRows actualModulus 7803 (.shr 7786 10) := by core033_kernel_decide
theorem stats7803 : actualRows7803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7803=4404 := by core033_kernel_decide
theorem rows7804 : actualRows7804=WordField.canonicalRows actualModulus 7804 (.bxor 7802 7803) := by core033_kernel_decide
theorem stats7804 : actualRows7804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7804=7428 := by core033_kernel_decide
theorem rows7805 : actualRows7805=WordField.canonicalRows actualModulus 7805 (.badd 7804 7721) := by core033_kernel_decide
theorem stats7805 : actualRows7805.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7805=5388 := by core033_kernel_decide
theorem rows7806 : actualRows7806=WordField.canonicalRows actualModulus 7806 (.rotr 7617 7) := by core033_kernel_decide
theorem stats7806 : actualRows7806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7806=5124 := by core033_kernel_decide
theorem rows7807 : actualRows7807=WordField.canonicalRows actualModulus 7807 (.rotr 7617 18) := by core033_kernel_decide
theorem stats7807 : actualRows7807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7807=5124 := by core033_kernel_decide
theorem rows7808 : actualRows7808=WordField.canonicalRows actualModulus 7808 (.bxor 7806 7807) := by core033_kernel_decide
theorem stats7808 : actualRows7808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7808=7428 := by core033_kernel_decide
theorem rows7809 : actualRows7809=WordField.canonicalRows actualModulus 7809 (.shr 7617 3) := by core033_kernel_decide
theorem stats7809 : actualRows7809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7809=4908 := by core033_kernel_decide
theorem rows7810 : actualRows7810=WordField.canonicalRows actualModulus 7810 (.bxor 7808 7809) := by core033_kernel_decide
theorem stats7810 : actualRows7810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7810=7428 := by core033_kernel_decide
theorem rows7811 : actualRows7811=WordField.canonicalRows actualModulus 7811 (.badd 7805 7810) := by core033_kernel_decide
theorem stats7811 : actualRows7811.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7811=5388 := by core033_kernel_decide
theorem rows7812 : actualRows7812=WordField.canonicalRows actualModulus 7812 (.badd 7811 7604) := by core033_kernel_decide
theorem stats7812 : actualRows7812.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7812=5388 := by core033_kernel_decide
theorem rows7813 : actualRows7813=WordField.canonicalRows actualModulus 7813 (.rotr 7799 17) := by core033_kernel_decide
theorem stats7813 : actualRows7813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7813=5124 := by core033_kernel_decide
theorem rows7814 : actualRows7814=WordField.canonicalRows actualModulus 7814 (.rotr 7799 19) := by core033_kernel_decide
theorem stats7814 : actualRows7814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7814=5124 := by core033_kernel_decide
theorem rows7815 : actualRows7815=WordField.canonicalRows actualModulus 7815 (.bxor 7813 7814) := by core033_kernel_decide
theorem stats7815 : actualRows7815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7815=7428 := by core033_kernel_decide
theorem rows7816 : actualRows7816=WordField.canonicalRows actualModulus 7816 (.shr 7799 10) := by core033_kernel_decide
theorem stats7816 : actualRows7816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7816=4404 := by core033_kernel_decide
theorem rows7817 : actualRows7817=WordField.canonicalRows actualModulus 7817 (.bxor 7815 7816) := by core033_kernel_decide
theorem stats7817 : actualRows7817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7817=7428 := by core033_kernel_decide
theorem rows7818 : actualRows7818=WordField.canonicalRows actualModulus 7818 (.badd 7817 7734) := by core033_kernel_decide
theorem stats7818 : actualRows7818.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7818=5388 := by core033_kernel_decide
theorem rows7819 : actualRows7819=WordField.canonicalRows actualModulus 7819 (.rotr 7630 7) := by core033_kernel_decide
theorem stats7819 : actualRows7819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7819=5124 := by core033_kernel_decide
theorem rows7820 : actualRows7820=WordField.canonicalRows actualModulus 7820 (.rotr 7630 18) := by core033_kernel_decide
theorem stats7820 : actualRows7820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7820=5124 := by core033_kernel_decide
theorem rows7821 : actualRows7821=WordField.canonicalRows actualModulus 7821 (.bxor 7819 7820) := by core033_kernel_decide
theorem stats7821 : actualRows7821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7821=7428 := by core033_kernel_decide
theorem rows7822 : actualRows7822=WordField.canonicalRows actualModulus 7822 (.shr 7630 3) := by core033_kernel_decide
theorem stats7822 : actualRows7822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7822=4908 := by core033_kernel_decide
theorem rows7823 : actualRows7823=WordField.canonicalRows actualModulus 7823 (.bxor 7821 7822) := by core033_kernel_decide
theorem stats7823 : actualRows7823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7823=7428 := by core033_kernel_decide
theorem rows7824 : actualRows7824=WordField.canonicalRows actualModulus 7824 (.badd 7818 7823) := by core033_kernel_decide
theorem stats7824 : actualRows7824.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7824=5388 := by core033_kernel_decide
theorem rows7825 : actualRows7825=WordField.canonicalRows actualModulus 7825 (.badd 7824 7617) := by core033_kernel_decide
theorem stats7825 : actualRows7825.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7825=5388 := by core033_kernel_decide
theorem rows7826 : actualRows7826=WordField.canonicalRows actualModulus 7826 (.rotr 7812 17) := by core033_kernel_decide
theorem stats7826 : actualRows7826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7826=5124 := by core033_kernel_decide
theorem rows7827 : actualRows7827=WordField.canonicalRows actualModulus 7827 (.rotr 7812 19) := by core033_kernel_decide
theorem stats7827 : actualRows7827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7827=5124 := by core033_kernel_decide
theorem rows7828 : actualRows7828=WordField.canonicalRows actualModulus 7828 (.bxor 7826 7827) := by core033_kernel_decide
theorem stats7828 : actualRows7828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7828=7428 := by core033_kernel_decide
theorem rows7829 : actualRows7829=WordField.canonicalRows actualModulus 7829 (.shr 7812 10) := by core033_kernel_decide
theorem stats7829 : actualRows7829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7829=4404 := by core033_kernel_decide
theorem rows7830 : actualRows7830=WordField.canonicalRows actualModulus 7830 (.bxor 7828 7829) := by core033_kernel_decide
theorem stats7830 : actualRows7830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7830=7428 := by core033_kernel_decide
theorem rows7831 : actualRows7831=WordField.canonicalRows actualModulus 7831 (.badd 7830 7747) := by core033_kernel_decide
theorem stats7831 : actualRows7831.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7831=5388 := by core033_kernel_decide
theorem rows7832 : actualRows7832=WordField.canonicalRows actualModulus 7832 (.rotr 7643 7) := by core033_kernel_decide
theorem stats7832 : actualRows7832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7832=5124 := by core033_kernel_decide
theorem rows7833 : actualRows7833=WordField.canonicalRows actualModulus 7833 (.rotr 7643 18) := by core033_kernel_decide
theorem stats7833 : actualRows7833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7833=5124 := by core033_kernel_decide
theorem rows7834 : actualRows7834=WordField.canonicalRows actualModulus 7834 (.bxor 7832 7833) := by core033_kernel_decide
theorem stats7834 : actualRows7834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7834=7428 := by core033_kernel_decide
theorem rows7835 : actualRows7835=WordField.canonicalRows actualModulus 7835 (.shr 7643 3) := by core033_kernel_decide
theorem stats7835 : actualRows7835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7835=4908 := by core033_kernel_decide
theorem rows7836 : actualRows7836=WordField.canonicalRows actualModulus 7836 (.bxor 7834 7835) := by core033_kernel_decide
theorem stats7836 : actualRows7836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7836=7428 := by core033_kernel_decide
theorem rows7837 : actualRows7837=WordField.canonicalRows actualModulus 7837 (.badd 7831 7836) := by core033_kernel_decide
theorem stats7837 : actualRows7837.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7837=5388 := by core033_kernel_decide
theorem rows7838 : actualRows7838=WordField.canonicalRows actualModulus 7838 (.badd 7837 7630) := by core033_kernel_decide
theorem stats7838 : actualRows7838.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7838=5388 := by core033_kernel_decide
theorem rows7839 : actualRows7839=WordField.canonicalRows actualModulus 7839 (.rotr 7825 17) := by core033_kernel_decide
theorem stats7839 : actualRows7839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7839=5124 := by core033_kernel_decide
def partRows120 : List R1CS.Row := actualRows7776++actualRows7777++actualRows7778++actualRows7779++actualRows7780++actualRows7781++actualRows7782++actualRows7783++actualRows7784++actualRows7785++actualRows7786++actualRows7787++actualRows7788++actualRows7789++actualRows7790++actualRows7791++actualRows7792++actualRows7793++actualRows7794++actualRows7795++actualRows7796++actualRows7797++actualRows7798++actualRows7799++actualRows7800++actualRows7801++actualRows7802++actualRows7803++actualRows7804++actualRows7805++actualRows7806++actualRows7807++actualRows7808++actualRows7809++actualRows7810++actualRows7811++actualRows7812++actualRows7813++actualRows7814++actualRows7815++actualRows7816++actualRows7817++actualRows7818++actualRows7819++actualRows7820++actualRows7821++actualRows7822++actualRows7823++actualRows7824++actualRows7825++actualRows7826++actualRows7827++actualRows7828++actualRows7829++actualRows7830++actualRows7831++actualRows7832++actualRows7833++actualRows7834++actualRows7835++actualRows7836++actualRows7837++actualRows7838++actualRows7839
def partOps120 : List WordIR.Op := [.bxor 7774 7775,.shr 7760 10,.bxor 7776 7777,.badd 7778 7695,.rotr 7591 7,.rotr 7591 18,.bxor 7780 7781,.shr 7591 3,.bxor 7782 7783,.badd 7779 7784,.badd 7785 7578,.rotr 7773 17,.rotr 7773 19,.bxor 7787 7788,.shr 7773 10,.bxor 7789 7790,.badd 7791 7708,.rotr 7604 7,.rotr 7604 18,.bxor 7793 7794,.shr 7604 3,.bxor 7795 7796,.badd 7792 7797,.badd 7798 7591,.rotr 7786 17,.rotr 7786 19,.bxor 7800 7801,.shr 7786 10,.bxor 7802 7803,.badd 7804 7721,.rotr 7617 7,.rotr 7617 18,.bxor 7806 7807,.shr 7617 3,.bxor 7808 7809,.badd 7805 7810,.badd 7811 7604,.rotr 7799 17,.rotr 7799 19,.bxor 7813 7814,.shr 7799 10,.bxor 7815 7816,.badd 7817 7734,.rotr 7630 7,.rotr 7630 18,.bxor 7819 7820,.shr 7630 3,.bxor 7821 7822,.badd 7818 7823,.badd 7824 7617,.rotr 7812 17,.rotr 7812 19,.bxor 7826 7827,.shr 7812 10,.bxor 7828 7829,.badd 7830 7747,.rotr 7643 7,.rotr 7643 18,.bxor 7832 7833,.shr 7643 3,.bxor 7834 7835,.badd 7831 7836,.badd 7837 7630,.rotr 7825 17]
theorem partExact120 : partRows120=WordField.rows actualModulus 7776 partOps120 := by
  simp only [partRows120,partOps120,WordField.rows,rows7776,rows7777,rows7778,rows7779,rows7780,rows7781,rows7782,rows7783,rows7784,rows7785,rows7786,rows7787,rows7788,rows7789,rows7790,rows7791,rows7792,rows7793,rows7794,rows7795,rows7796,rows7797,rows7798,rows7799,rows7800,rows7801,rows7802,rows7803,rows7804,rows7805,rows7806,rows7807,rows7808,rows7809,rows7810,rows7811,rows7812,rows7813,rows7814,rows7815,rows7816,rows7817,rows7818,rows7819,rows7820,rows7821,rows7822,rows7823,rows7824,rows7825,rows7826,rows7827,rows7828,rows7829,rows7830,rows7831,rows7832,rows7833,rows7834,rows7835,rows7836,rows7837,rows7838,rows7839,List.append_assoc,List.append_nil]
theorem partLength120 : partOps120.length=64 := by decide
theorem partStats120 : partRows120.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows120=373296 := by
  simp only [partRows120,List.length_append,MatrixRowBlocks.rows_weight_append,stats7776.1,stats7776.2,stats7777.1,stats7777.2,stats7778.1,stats7778.2,stats7779.1,stats7779.2,stats7780.1,stats7780.2,stats7781.1,stats7781.2,stats7782.1,stats7782.2,stats7783.1,stats7783.2,stats7784.1,stats7784.2,stats7785.1,stats7785.2,stats7786.1,stats7786.2,stats7787.1,stats7787.2,stats7788.1,stats7788.2,stats7789.1,stats7789.2,stats7790.1,stats7790.2,stats7791.1,stats7791.2,stats7792.1,stats7792.2,stats7793.1,stats7793.2,stats7794.1,stats7794.2,stats7795.1,stats7795.2,stats7796.1,stats7796.2,stats7797.1,stats7797.2,stats7798.1,stats7798.2,stats7799.1,stats7799.2,stats7800.1,stats7800.2,stats7801.1,stats7801.2,stats7802.1,stats7802.2,stats7803.1,stats7803.2,stats7804.1,stats7804.2,stats7805.1,stats7805.2,stats7806.1,stats7806.2,stats7807.1,stats7807.2,stats7808.1,stats7808.2,stats7809.1,stats7809.2,stats7810.1,stats7810.2,stats7811.1,stats7811.2,stats7812.1,stats7812.2,stats7813.1,stats7813.2,stats7814.1,stats7814.2,stats7815.1,stats7815.2,stats7816.1,stats7816.2,stats7817.1,stats7817.2,stats7818.1,stats7818.2,stats7819.1,stats7819.2,stats7820.1,stats7820.2,stats7821.1,stats7821.2,stats7822.1,stats7822.2,stats7823.1,stats7823.2,stats7824.1,stats7824.2,stats7825.1,stats7825.2,stats7826.1,stats7826.2,stats7827.1,stats7827.2,stats7828.1,stats7828.2,stats7829.1,stats7829.2,stats7830.1,stats7830.2,stats7831.1,stats7831.2,stats7832.1,stats7832.2,stats7833.1,stats7833.2,stats7834.1,stats7834.2,stats7835.1,stats7835.2,stats7836.1,stats7836.2,stats7837.1,stats7837.2,stats7838.1,stats7838.2,stats7839.1,stats7839.2]
  decide
end QuotedPairedPathRoundCheckedRows
