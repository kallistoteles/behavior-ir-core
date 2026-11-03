import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps105_0 : List Op := [.badd 6762 6555,.rotr 6750 17,.rotr 6750 19,.bxor 6764 6765,.shr 6750 10,.bxor 6766 6767,.badd 6768 6685,.rotr 6581 7]
theorem subChecked105_0 : checkSteps target certificate.alias 6763 subOps105_0=true := by core033_kernel_decide
theorem subLength105_0 : subOps105_0.length=8 := by decide
def subOps105_1 : List Op := [.rotr 6581 18,.bxor 6770 6771,.shr 6581 3,.bxor 6772 6773,.badd 6769 6774,.badd 6775 6568,.rotr 6763 17,.rotr 6763 19]
theorem subChecked105_1 : checkSteps target certificate.alias 6771 subOps105_1=true := by core033_kernel_decide
theorem subLength105_1 : subOps105_1.length=8 := by decide
def subOps105_2 : List Op := [.bxor 6777 6778,.shr 6763 10,.bxor 6779 6780,.badd 6781 6698,.rotr 6594 7,.rotr 6594 18,.bxor 6783 6784,.shr 6594 3]
theorem subChecked105_2 : checkSteps target certificate.alias 6779 subOps105_2=true := by core033_kernel_decide
theorem subLength105_2 : subOps105_2.length=8 := by decide
def subOps105_3 : List Op := [.bxor 6785 6786,.badd 6782 6787,.badd 6788 6581,.rotr 6776 17,.rotr 6776 19,.bxor 6790 6791,.shr 6776 10,.bxor 6792 6793]
theorem subChecked105_3 : checkSteps target certificate.alias 6787 subOps105_3=true := by core033_kernel_decide
theorem subLength105_3 : subOps105_3.length=8 := by decide
def subOps105_4 : List Op := [.badd 6794 6711,.rotr 6607 7,.rotr 6607 18,.bxor 6796 6797,.shr 6607 3,.bxor 6798 6799,.badd 6795 6800,.badd 6801 6594]
theorem subChecked105_4 : checkSteps target certificate.alias 6795 subOps105_4=true := by core033_kernel_decide
theorem subLength105_4 : subOps105_4.length=8 := by decide
def subOps105_5 : List Op := [.rotr 6789 17,.rotr 6789 19,.bxor 6803 6804,.shr 6789 10,.bxor 6805 6806,.badd 6807 6724,.rotr 6620 7,.rotr 6620 18]
theorem subChecked105_5 : checkSteps target certificate.alias 6803 subOps105_5=true := by core033_kernel_decide
theorem subLength105_5 : subOps105_5.length=8 := by decide
def subOps105_6 : List Op := [.bxor 6809 6810,.shr 6620 3,.bxor 6811 6812,.badd 6808 6813,.badd 6814 6607,.rotr 6802 17,.rotr 6802 19,.bxor 6816 6817]
theorem subChecked105_6 : checkSteps target certificate.alias 6811 subOps105_6=true := by core033_kernel_decide
theorem subLength105_6 : subOps105_6.length=8 := by decide
def subOps105_7 : List Op := [.shr 6802 10,.bxor 6818 6819,.badd 6820 6737,.rotr 6633 7,.rotr 6633 18,.bxor 6822 6823,.shr 6633 3,.bxor 6824 6825]
theorem subChecked105_7 : checkSteps target certificate.alias 6819 subOps105_7=true := by core033_kernel_decide
theorem subLength105_7 : subOps105_7.length=8 := by decide
theorem checked105 : checkSteps target certificate.alias 6763 QuotedFrameHashControllerIR.operations105=true := by
  have partition : QuotedFrameHashControllerIR.operations105=subOps105_0++subOps105_1++subOps105_2++subOps105_3++subOps105_4++subOps105_5++subOps105_6++subOps105_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked105_0,subLength105_0]
  rw [check_steps_append,subChecked105_1,subLength105_1]
  rw [check_steps_append,subChecked105_2,subLength105_2]
  rw [check_steps_append,subChecked105_3,subLength105_3]
  rw [check_steps_append,subChecked105_4,subLength105_4]
  rw [check_steps_append,subChecked105_5,subLength105_5]
  rw [check_steps_append,subChecked105_6,subLength105_6]
  exact subChecked105_7
theorem length105 : QuotedFrameHashControllerIR.operations105.length=64 := by decide
end SegmentedFrameSharing
