import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps104_0 : List Op := [.rotr 6685 17,.rotr 6685 19,.bxor 6699 6700,.shr 6685 10,.bxor 6701 6702,.badd 6703 6620,.rotr 6516 7,.rotr 6516 18]
theorem subChecked104_0 : checkSteps target certificate.alias 6699 subOps104_0=true := by core033_kernel_decide
theorem subLength104_0 : subOps104_0.length=8 := by decide
def subOps104_1 : List Op := [.bxor 6705 6706,.shr 6516 3,.bxor 6707 6708,.badd 6704 6709,.badd 6710 6503,.rotr 6698 17,.rotr 6698 19,.bxor 6712 6713]
theorem subChecked104_1 : checkSteps target certificate.alias 6707 subOps104_1=true := by core033_kernel_decide
theorem subLength104_1 : subOps104_1.length=8 := by decide
def subOps104_2 : List Op := [.shr 6698 10,.bxor 6714 6715,.badd 6716 6633,.rotr 6529 7,.rotr 6529 18,.bxor 6718 6719,.shr 6529 3,.bxor 6720 6721]
theorem subChecked104_2 : checkSteps target certificate.alias 6715 subOps104_2=true := by core033_kernel_decide
theorem subLength104_2 : subOps104_2.length=8 := by decide
def subOps104_3 : List Op := [.badd 6717 6722,.badd 6723 6516,.rotr 6711 17,.rotr 6711 19,.bxor 6725 6726,.shr 6711 10,.bxor 6727 6728,.badd 6729 6646]
theorem subChecked104_3 : checkSteps target certificate.alias 6723 subOps104_3=true := by core033_kernel_decide
theorem subLength104_3 : subOps104_3.length=8 := by decide
def subOps104_4 : List Op := [.rotr 6542 7,.rotr 6542 18,.bxor 6731 6732,.shr 6542 3,.bxor 6733 6734,.badd 6730 6735,.badd 6736 6529,.rotr 6724 17]
theorem subChecked104_4 : checkSteps target certificate.alias 6731 subOps104_4=true := by core033_kernel_decide
theorem subLength104_4 : subOps104_4.length=8 := by decide
def subOps104_5 : List Op := [.rotr 6724 19,.bxor 6738 6739,.shr 6724 10,.bxor 6740 6741,.badd 6742 6659,.rotr 6555 7,.rotr 6555 18,.bxor 6744 6745]
theorem subChecked104_5 : checkSteps target certificate.alias 6739 subOps104_5=true := by core033_kernel_decide
theorem subLength104_5 : subOps104_5.length=8 := by decide
def subOps104_6 : List Op := [.shr 6555 3,.bxor 6746 6747,.badd 6743 6748,.badd 6749 6542,.rotr 6737 17,.rotr 6737 19,.bxor 6751 6752,.shr 6737 10]
theorem subChecked104_6 : checkSteps target certificate.alias 6747 subOps104_6=true := by core033_kernel_decide
theorem subLength104_6 : subOps104_6.length=8 := by decide
def subOps104_7 : List Op := [.bxor 6753 6754,.badd 6755 6672,.rotr 6568 7,.rotr 6568 18,.bxor 6757 6758,.shr 6568 3,.bxor 6759 6760,.badd 6756 6761]
theorem subChecked104_7 : checkSteps target certificate.alias 6755 subOps104_7=true := by core033_kernel_decide
theorem subLength104_7 : subOps104_7.length=8 := by decide
theorem checked104 : checkSteps target certificate.alias 6699 QuotedFrameHashControllerIR.operations104=true := by
  have partition : QuotedFrameHashControllerIR.operations104=(subOps104_0++(subOps104_1++(subOps104_2++(subOps104_3++(subOps104_4++(subOps104_5++(subOps104_6++subOps104_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked104_0,subLength104_0]
  rw [check_steps_append,subChecked104_1,subLength104_1]
  rw [check_steps_append,subChecked104_2,subLength104_2]
  rw [check_steps_append,subChecked104_3,subLength104_3]
  rw [check_steps_append,subChecked104_4,subLength104_4]
  rw [check_steps_append,subChecked104_5,subLength104_5]
  rw [check_steps_append,subChecked104_6,subLength104_6]
  exact subChecked104_7
theorem length104 : QuotedFrameHashControllerIR.operations104.length=64 := by decide
end SegmentedFrameSharing
