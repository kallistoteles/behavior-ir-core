import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData105
import FrameHashControllerInstructionMatrixData106
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6763 : actualRows6763=WordField.canonicalRows actualModulus 6763 (.badd 6762 6555) := by core033_kernel_decide
theorem stats6763 : actualRows6763.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6763=5388 := by core033_kernel_decide
theorem rows6764 : actualRows6764=WordField.canonicalRows actualModulus 6764 (.rotr 6750 17) := by core033_kernel_decide
theorem stats6764 : actualRows6764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6764=5124 := by core033_kernel_decide
theorem rows6765 : actualRows6765=WordField.canonicalRows actualModulus 6765 (.rotr 6750 19) := by core033_kernel_decide
theorem stats6765 : actualRows6765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6765=5124 := by core033_kernel_decide
theorem rows6766 : actualRows6766=WordField.canonicalRows actualModulus 6766 (.bxor 6764 6765) := by core033_kernel_decide
theorem stats6766 : actualRows6766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6766=7428 := by core033_kernel_decide
theorem rows6767 : actualRows6767=WordField.canonicalRows actualModulus 6767 (.shr 6750 10) := by core033_kernel_decide
theorem stats6767 : actualRows6767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6767=4404 := by core033_kernel_decide
theorem rows6768 : actualRows6768=WordField.canonicalRows actualModulus 6768 (.bxor 6766 6767) := by core033_kernel_decide
theorem stats6768 : actualRows6768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6768=7428 := by core033_kernel_decide
theorem rows6769 : actualRows6769=WordField.canonicalRows actualModulus 6769 (.badd 6768 6685) := by core033_kernel_decide
theorem stats6769 : actualRows6769.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6769=5388 := by core033_kernel_decide
theorem rows6770 : actualRows6770=WordField.canonicalRows actualModulus 6770 (.rotr 6581 7) := by core033_kernel_decide
theorem stats6770 : actualRows6770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6770=5124 := by core033_kernel_decide
theorem rows6771 : actualRows6771=WordField.canonicalRows actualModulus 6771 (.rotr 6581 18) := by core033_kernel_decide
theorem stats6771 : actualRows6771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6771=5124 := by core033_kernel_decide
theorem rows6772 : actualRows6772=WordField.canonicalRows actualModulus 6772 (.bxor 6770 6771) := by core033_kernel_decide
theorem stats6772 : actualRows6772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6772=7428 := by core033_kernel_decide
theorem rows6773 : actualRows6773=WordField.canonicalRows actualModulus 6773 (.shr 6581 3) := by core033_kernel_decide
theorem stats6773 : actualRows6773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6773=4908 := by core033_kernel_decide
theorem rows6774 : actualRows6774=WordField.canonicalRows actualModulus 6774 (.bxor 6772 6773) := by core033_kernel_decide
theorem stats6774 : actualRows6774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6774=7428 := by core033_kernel_decide
theorem rows6775 : actualRows6775=WordField.canonicalRows actualModulus 6775 (.badd 6769 6774) := by core033_kernel_decide
theorem stats6775 : actualRows6775.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6775=5388 := by core033_kernel_decide
theorem rows6776 : actualRows6776=WordField.canonicalRows actualModulus 6776 (.badd 6775 6568) := by core033_kernel_decide
theorem stats6776 : actualRows6776.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6776=5388 := by core033_kernel_decide
theorem rows6777 : actualRows6777=WordField.canonicalRows actualModulus 6777 (.rotr 6763 17) := by core033_kernel_decide
theorem stats6777 : actualRows6777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6777=5124 := by core033_kernel_decide
theorem rows6778 : actualRows6778=WordField.canonicalRows actualModulus 6778 (.rotr 6763 19) := by core033_kernel_decide
theorem stats6778 : actualRows6778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6778=5124 := by core033_kernel_decide
theorem rows6779 : actualRows6779=WordField.canonicalRows actualModulus 6779 (.bxor 6777 6778) := by core033_kernel_decide
theorem stats6779 : actualRows6779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6779=7428 := by core033_kernel_decide
theorem rows6780 : actualRows6780=WordField.canonicalRows actualModulus 6780 (.shr 6763 10) := by core033_kernel_decide
theorem stats6780 : actualRows6780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6780=4404 := by core033_kernel_decide
theorem rows6781 : actualRows6781=WordField.canonicalRows actualModulus 6781 (.bxor 6779 6780) := by core033_kernel_decide
theorem stats6781 : actualRows6781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6781=7428 := by core033_kernel_decide
theorem rows6782 : actualRows6782=WordField.canonicalRows actualModulus 6782 (.badd 6781 6698) := by core033_kernel_decide
theorem stats6782 : actualRows6782.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6782=5388 := by core033_kernel_decide
theorem rows6783 : actualRows6783=WordField.canonicalRows actualModulus 6783 (.rotr 6594 7) := by core033_kernel_decide
theorem stats6783 : actualRows6783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6783=5124 := by core033_kernel_decide
theorem rows6784 : actualRows6784=WordField.canonicalRows actualModulus 6784 (.rotr 6594 18) := by core033_kernel_decide
theorem stats6784 : actualRows6784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6784=5124 := by core033_kernel_decide
theorem rows6785 : actualRows6785=WordField.canonicalRows actualModulus 6785 (.bxor 6783 6784) := by core033_kernel_decide
theorem stats6785 : actualRows6785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6785=7428 := by core033_kernel_decide
theorem rows6786 : actualRows6786=WordField.canonicalRows actualModulus 6786 (.shr 6594 3) := by core033_kernel_decide
theorem stats6786 : actualRows6786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6786=4908 := by core033_kernel_decide
theorem rows6787 : actualRows6787=WordField.canonicalRows actualModulus 6787 (.bxor 6785 6786) := by core033_kernel_decide
theorem stats6787 : actualRows6787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6787=7428 := by core033_kernel_decide
theorem rows6788 : actualRows6788=WordField.canonicalRows actualModulus 6788 (.badd 6782 6787) := by core033_kernel_decide
theorem stats6788 : actualRows6788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6788=5388 := by core033_kernel_decide
theorem rows6789 : actualRows6789=WordField.canonicalRows actualModulus 6789 (.badd 6788 6581) := by core033_kernel_decide
theorem stats6789 : actualRows6789.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6789=5388 := by core033_kernel_decide
theorem rows6790 : actualRows6790=WordField.canonicalRows actualModulus 6790 (.rotr 6776 17) := by core033_kernel_decide
theorem stats6790 : actualRows6790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6790=5124 := by core033_kernel_decide
theorem rows6791 : actualRows6791=WordField.canonicalRows actualModulus 6791 (.rotr 6776 19) := by core033_kernel_decide
theorem stats6791 : actualRows6791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6791=5124 := by core033_kernel_decide
theorem rows6792 : actualRows6792=WordField.canonicalRows actualModulus 6792 (.bxor 6790 6791) := by core033_kernel_decide
theorem stats6792 : actualRows6792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6792=7428 := by core033_kernel_decide
theorem rows6793 : actualRows6793=WordField.canonicalRows actualModulus 6793 (.shr 6776 10) := by core033_kernel_decide
theorem stats6793 : actualRows6793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6793=4404 := by core033_kernel_decide
theorem rows6794 : actualRows6794=WordField.canonicalRows actualModulus 6794 (.bxor 6792 6793) := by core033_kernel_decide
theorem stats6794 : actualRows6794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6794=7428 := by core033_kernel_decide
theorem rows6795 : actualRows6795=WordField.canonicalRows actualModulus 6795 (.badd 6794 6711) := by core033_kernel_decide
theorem stats6795 : actualRows6795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6795=5388 := by core033_kernel_decide
theorem rows6796 : actualRows6796=WordField.canonicalRows actualModulus 6796 (.rotr 6607 7) := by core033_kernel_decide
theorem stats6796 : actualRows6796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6796=5124 := by core033_kernel_decide
theorem rows6797 : actualRows6797=WordField.canonicalRows actualModulus 6797 (.rotr 6607 18) := by core033_kernel_decide
theorem stats6797 : actualRows6797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6797=5124 := by core033_kernel_decide
theorem rows6798 : actualRows6798=WordField.canonicalRows actualModulus 6798 (.bxor 6796 6797) := by core033_kernel_decide
theorem stats6798 : actualRows6798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6798=7428 := by core033_kernel_decide
theorem rows6799 : actualRows6799=WordField.canonicalRows actualModulus 6799 (.shr 6607 3) := by core033_kernel_decide
theorem stats6799 : actualRows6799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6799=4908 := by core033_kernel_decide
theorem rows6800 : actualRows6800=WordField.canonicalRows actualModulus 6800 (.bxor 6798 6799) := by core033_kernel_decide
theorem stats6800 : actualRows6800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6800=7428 := by core033_kernel_decide
theorem rows6801 : actualRows6801=WordField.canonicalRows actualModulus 6801 (.badd 6795 6800) := by core033_kernel_decide
theorem stats6801 : actualRows6801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6801=5388 := by core033_kernel_decide
theorem rows6802 : actualRows6802=WordField.canonicalRows actualModulus 6802 (.badd 6801 6594) := by core033_kernel_decide
theorem stats6802 : actualRows6802.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6802=5388 := by core033_kernel_decide
theorem rows6803 : actualRows6803=WordField.canonicalRows actualModulus 6803 (.rotr 6789 17) := by core033_kernel_decide
theorem stats6803 : actualRows6803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6803=5124 := by core033_kernel_decide
theorem rows6804 : actualRows6804=WordField.canonicalRows actualModulus 6804 (.rotr 6789 19) := by core033_kernel_decide
theorem stats6804 : actualRows6804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6804=5124 := by core033_kernel_decide
theorem rows6805 : actualRows6805=WordField.canonicalRows actualModulus 6805 (.bxor 6803 6804) := by core033_kernel_decide
theorem stats6805 : actualRows6805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6805=7428 := by core033_kernel_decide
theorem rows6806 : actualRows6806=WordField.canonicalRows actualModulus 6806 (.shr 6789 10) := by core033_kernel_decide
theorem stats6806 : actualRows6806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6806=4404 := by core033_kernel_decide
theorem rows6807 : actualRows6807=WordField.canonicalRows actualModulus 6807 (.bxor 6805 6806) := by core033_kernel_decide
theorem stats6807 : actualRows6807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6807=7428 := by core033_kernel_decide
theorem rows6808 : actualRows6808=WordField.canonicalRows actualModulus 6808 (.badd 6807 6724) := by core033_kernel_decide
theorem stats6808 : actualRows6808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6808=5388 := by core033_kernel_decide
theorem rows6809 : actualRows6809=WordField.canonicalRows actualModulus 6809 (.rotr 6620 7) := by core033_kernel_decide
theorem stats6809 : actualRows6809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6809=5124 := by core033_kernel_decide
theorem rows6810 : actualRows6810=WordField.canonicalRows actualModulus 6810 (.rotr 6620 18) := by core033_kernel_decide
theorem stats6810 : actualRows6810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6810=5124 := by core033_kernel_decide
theorem rows6811 : actualRows6811=WordField.canonicalRows actualModulus 6811 (.bxor 6809 6810) := by core033_kernel_decide
theorem stats6811 : actualRows6811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6811=7428 := by core033_kernel_decide
theorem rows6812 : actualRows6812=WordField.canonicalRows actualModulus 6812 (.shr 6620 3) := by core033_kernel_decide
theorem stats6812 : actualRows6812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6812=4908 := by core033_kernel_decide
theorem rows6813 : actualRows6813=WordField.canonicalRows actualModulus 6813 (.bxor 6811 6812) := by core033_kernel_decide
theorem stats6813 : actualRows6813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6813=7428 := by core033_kernel_decide
theorem rows6814 : actualRows6814=WordField.canonicalRows actualModulus 6814 (.badd 6808 6813) := by core033_kernel_decide
theorem stats6814 : actualRows6814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6814=5388 := by core033_kernel_decide
theorem rows6815 : actualRows6815=WordField.canonicalRows actualModulus 6815 (.badd 6814 6607) := by core033_kernel_decide
theorem stats6815 : actualRows6815.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6815=5388 := by core033_kernel_decide
theorem rows6816 : actualRows6816=WordField.canonicalRows actualModulus 6816 (.rotr 6802 17) := by core033_kernel_decide
theorem stats6816 : actualRows6816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6816=5124 := by core033_kernel_decide
theorem rows6817 : actualRows6817=WordField.canonicalRows actualModulus 6817 (.rotr 6802 19) := by core033_kernel_decide
theorem stats6817 : actualRows6817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6817=5124 := by core033_kernel_decide
theorem rows6818 : actualRows6818=WordField.canonicalRows actualModulus 6818 (.bxor 6816 6817) := by core033_kernel_decide
theorem stats6818 : actualRows6818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6818=7428 := by core033_kernel_decide
theorem rows6819 : actualRows6819=WordField.canonicalRows actualModulus 6819 (.shr 6802 10) := by core033_kernel_decide
theorem stats6819 : actualRows6819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6819=4404 := by core033_kernel_decide
theorem rows6820 : actualRows6820=WordField.canonicalRows actualModulus 6820 (.bxor 6818 6819) := by core033_kernel_decide
theorem stats6820 : actualRows6820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6820=7428 := by core033_kernel_decide
theorem rows6821 : actualRows6821=WordField.canonicalRows actualModulus 6821 (.badd 6820 6737) := by core033_kernel_decide
theorem stats6821 : actualRows6821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6821=5388 := by core033_kernel_decide
theorem rows6822 : actualRows6822=WordField.canonicalRows actualModulus 6822 (.rotr 6633 7) := by core033_kernel_decide
theorem stats6822 : actualRows6822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6822=5124 := by core033_kernel_decide
theorem rows6823 : actualRows6823=WordField.canonicalRows actualModulus 6823 (.rotr 6633 18) := by core033_kernel_decide
theorem stats6823 : actualRows6823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6823=5124 := by core033_kernel_decide
theorem rows6824 : actualRows6824=WordField.canonicalRows actualModulus 6824 (.bxor 6822 6823) := by core033_kernel_decide
theorem stats6824 : actualRows6824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6824=7428 := by core033_kernel_decide
theorem rows6825 : actualRows6825=WordField.canonicalRows actualModulus 6825 (.shr 6633 3) := by core033_kernel_decide
theorem stats6825 : actualRows6825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6825=4908 := by core033_kernel_decide
theorem rows6826 : actualRows6826=WordField.canonicalRows actualModulus 6826 (.bxor 6824 6825) := by core033_kernel_decide
theorem stats6826 : actualRows6826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6826=7428 := by core033_kernel_decide
def partRows105 : List R1CS.Row := actualRows6763++actualRows6764++actualRows6765++actualRows6766++actualRows6767++actualRows6768++actualRows6769++actualRows6770++actualRows6771++actualRows6772++actualRows6773++actualRows6774++actualRows6775++actualRows6776++actualRows6777++actualRows6778++actualRows6779++actualRows6780++actualRows6781++actualRows6782++actualRows6783++actualRows6784++actualRows6785++actualRows6786++actualRows6787++actualRows6788++actualRows6789++actualRows6790++actualRows6791++actualRows6792++actualRows6793++actualRows6794++actualRows6795++actualRows6796++actualRows6797++actualRows6798++actualRows6799++actualRows6800++actualRows6801++actualRows6802++actualRows6803++actualRows6804++actualRows6805++actualRows6806++actualRows6807++actualRows6808++actualRows6809++actualRows6810++actualRows6811++actualRows6812++actualRows6813++actualRows6814++actualRows6815++actualRows6816++actualRows6817++actualRows6818++actualRows6819++actualRows6820++actualRows6821++actualRows6822++actualRows6823++actualRows6824++actualRows6825++actualRows6826
def partOps105 : List WordIR.Op := [.badd 6762 6555,.rotr 6750 17,.rotr 6750 19,.bxor 6764 6765,.shr 6750 10,.bxor 6766 6767,.badd 6768 6685,.rotr 6581 7,.rotr 6581 18,.bxor 6770 6771,.shr 6581 3,.bxor 6772 6773,.badd 6769 6774,.badd 6775 6568,.rotr 6763 17,.rotr 6763 19,.bxor 6777 6778,.shr 6763 10,.bxor 6779 6780,.badd 6781 6698,.rotr 6594 7,.rotr 6594 18,.bxor 6783 6784,.shr 6594 3,.bxor 6785 6786,.badd 6782 6787,.badd 6788 6581,.rotr 6776 17,.rotr 6776 19,.bxor 6790 6791,.shr 6776 10,.bxor 6792 6793,.badd 6794 6711,.rotr 6607 7,.rotr 6607 18,.bxor 6796 6797,.shr 6607 3,.bxor 6798 6799,.badd 6795 6800,.badd 6801 6594,.rotr 6789 17,.rotr 6789 19,.bxor 6803 6804,.shr 6789 10,.bxor 6805 6806,.badd 6807 6724,.rotr 6620 7,.rotr 6620 18,.bxor 6809 6810,.shr 6620 3,.bxor 6811 6812,.badd 6808 6813,.badd 6814 6607,.rotr 6802 17,.rotr 6802 19,.bxor 6816 6817,.shr 6802 10,.bxor 6818 6819,.badd 6820 6737,.rotr 6633 7,.rotr 6633 18,.bxor 6822 6823,.shr 6633 3,.bxor 6824 6825]
theorem partExact105 : partRows105=WordField.rows actualModulus 6763 partOps105 := by
  simp only [partRows105,partOps105,WordField.rows,rows6763,rows6764,rows6765,rows6766,rows6767,rows6768,rows6769,rows6770,rows6771,rows6772,rows6773,rows6774,rows6775,rows6776,rows6777,rows6778,rows6779,rows6780,rows6781,rows6782,rows6783,rows6784,rows6785,rows6786,rows6787,rows6788,rows6789,rows6790,rows6791,rows6792,rows6793,rows6794,rows6795,rows6796,rows6797,rows6798,rows6799,rows6800,rows6801,rows6802,rows6803,rows6804,rows6805,rows6806,rows6807,rows6808,rows6809,rows6810,rows6811,rows6812,rows6813,rows6814,rows6815,rows6816,rows6817,rows6818,rows6819,rows6820,rows6821,rows6822,rows6823,rows6824,rows6825,rows6826,List.append_assoc,List.append_nil]
theorem partLength105 : partOps105.length=64 := by decide
theorem partStats105 : partRows105.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows105=373032 := by
  simp only [partRows105,List.length_append,MatrixRowBlocks.rows_weight_append,stats6763.1,stats6763.2,stats6764.1,stats6764.2,stats6765.1,stats6765.2,stats6766.1,stats6766.2,stats6767.1,stats6767.2,stats6768.1,stats6768.2,stats6769.1,stats6769.2,stats6770.1,stats6770.2,stats6771.1,stats6771.2,stats6772.1,stats6772.2,stats6773.1,stats6773.2,stats6774.1,stats6774.2,stats6775.1,stats6775.2,stats6776.1,stats6776.2,stats6777.1,stats6777.2,stats6778.1,stats6778.2,stats6779.1,stats6779.2,stats6780.1,stats6780.2,stats6781.1,stats6781.2,stats6782.1,stats6782.2,stats6783.1,stats6783.2,stats6784.1,stats6784.2,stats6785.1,stats6785.2,stats6786.1,stats6786.2,stats6787.1,stats6787.2,stats6788.1,stats6788.2,stats6789.1,stats6789.2,stats6790.1,stats6790.2,stats6791.1,stats6791.2,stats6792.1,stats6792.2,stats6793.1,stats6793.2,stats6794.1,stats6794.2,stats6795.1,stats6795.2,stats6796.1,stats6796.2,stats6797.1,stats6797.2,stats6798.1,stats6798.2,stats6799.1,stats6799.2,stats6800.1,stats6800.2,stats6801.1,stats6801.2,stats6802.1,stats6802.2,stats6803.1,stats6803.2,stats6804.1,stats6804.2,stats6805.1,stats6805.2,stats6806.1,stats6806.2,stats6807.1,stats6807.2,stats6808.1,stats6808.2,stats6809.1,stats6809.2,stats6810.1,stats6810.2,stats6811.1,stats6811.2,stats6812.1,stats6812.2,stats6813.1,stats6813.2,stats6814.1,stats6814.2,stats6815.1,stats6815.2,stats6816.1,stats6816.2,stats6817.1,stats6817.2,stats6818.1,stats6818.2,stats6819.1,stats6819.2,stats6820.1,stats6820.2,stats6821.1,stats6821.2,stats6822.1,stats6822.2,stats6823.1,stats6823.2,stats6824.1,stats6824.2,stats6825.1,stats6825.2,stats6826.1,stats6826.2]
  decide
end FrameHashControllerCheckedRows
