import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps106_0 : List Op := [.badd 6821 6826,.badd 6827 6620,.rotr 6815 17,.rotr 6815 19,.bxor 6829 6830,.shr 6815 10,.bxor 6831 6832,.badd 6833 6750]
theorem subChecked106_0 : checkSteps target certificate.alias 6827 subOps106_0=true := by core033_kernel_decide
theorem subLength106_0 : subOps106_0.length=8 := by decide
def subOps106_1 : List Op := [.rotr 6646 7,.rotr 6646 18,.bxor 6835 6836,.shr 6646 3,.bxor 6837 6838,.badd 6834 6839,.badd 6840 6633,.rotr 6828 17]
theorem subChecked106_1 : checkSteps target certificate.alias 6835 subOps106_1=true := by core033_kernel_decide
theorem subLength106_1 : subOps106_1.length=8 := by decide
def subOps106_2 : List Op := [.rotr 6828 19,.bxor 6842 6843,.shr 6828 10,.bxor 6844 6845,.badd 6846 6763,.rotr 6659 7,.rotr 6659 18,.bxor 6848 6849]
theorem subChecked106_2 : checkSteps target certificate.alias 6843 subOps106_2=true := by core033_kernel_decide
theorem subLength106_2 : subOps106_2.length=8 := by decide
def subOps106_3 : List Op := [.shr 6659 3,.bxor 6850 6851,.badd 6847 6852,.badd 6853 6646,.rotr 6841 17,.rotr 6841 19,.bxor 6855 6856,.shr 6841 10]
theorem subChecked106_3 : checkSteps target certificate.alias 6851 subOps106_3=true := by core033_kernel_decide
theorem subLength106_3 : subOps106_3.length=8 := by decide
def subOps106_4 : List Op := [.bxor 6857 6858,.badd 6859 6776,.rotr 6672 7,.rotr 6672 18,.bxor 6861 6862,.shr 6672 3,.bxor 6863 6864,.badd 6860 6865]
theorem subChecked106_4 : checkSteps target certificate.alias 6859 subOps106_4=true := by core033_kernel_decide
theorem subLength106_4 : subOps106_4.length=8 := by decide
def subOps106_5 : List Op := [.badd 6866 6659,.rotr 6854 17,.rotr 6854 19,.bxor 6868 6869,.shr 6854 10,.bxor 6870 6871,.badd 6872 6789,.rotr 6685 7]
theorem subChecked106_5 : checkSteps target certificate.alias 6867 subOps106_5=true := by core033_kernel_decide
theorem subLength106_5 : subOps106_5.length=8 := by decide
def subOps106_6 : List Op := [.rotr 6685 18,.bxor 6874 6875,.shr 6685 3,.bxor 6876 6877,.badd 6873 6878,.badd 6879 6672,.rotr 6867 17,.rotr 6867 19]
theorem subChecked106_6 : checkSteps target certificate.alias 6875 subOps106_6=true := by core033_kernel_decide
theorem subLength106_6 : subOps106_6.length=8 := by decide
def subOps106_7 : List Op := [.bxor 6881 6882,.shr 6867 10,.bxor 6883 6884,.badd 6885 6802,.rotr 6698 7,.rotr 6698 18,.bxor 6887 6888,.shr 6698 3]
theorem subChecked106_7 : checkSteps target certificate.alias 6883 subOps106_7=true := by core033_kernel_decide
theorem subLength106_7 : subOps106_7.length=8 := by decide
theorem checked106 : checkSteps target certificate.alias 6827 QuotedFrameHashControllerIR.operations106=true := by
  have partition : QuotedFrameHashControllerIR.operations106=(subOps106_0++(subOps106_1++(subOps106_2++(subOps106_3++(subOps106_4++(subOps106_5++(subOps106_6++subOps106_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked106_0,subLength106_0]
  rw [check_steps_append,subChecked106_1,subLength106_1]
  rw [check_steps_append,subChecked106_2,subLength106_2]
  rw [check_steps_append,subChecked106_3,subLength106_3]
  rw [check_steps_append,subChecked106_4,subLength106_4]
  rw [check_steps_append,subChecked106_5,subLength106_5]
  rw [check_steps_append,subChecked106_6,subLength106_6]
  exact subChecked106_7
theorem length106 : QuotedFrameHashControllerIR.operations106.length=64 := by decide
end SegmentedFrameSharing
