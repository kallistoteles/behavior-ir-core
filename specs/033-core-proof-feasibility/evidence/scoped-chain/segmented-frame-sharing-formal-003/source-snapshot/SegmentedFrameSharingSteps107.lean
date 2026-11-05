import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps107_0 : List Op := [.bxor 6889 6890,.badd 6886 6891,.badd 6892 6685,.rotr 6880 17,.rotr 6880 19,.bxor 6894 6895,.shr 6880 10,.bxor 6896 6897]
theorem subChecked107_0 : checkSteps target certificate.alias 6891 subOps107_0=true := by core033_kernel_decide
theorem subLength107_0 : subOps107_0.length=8 := by decide
def subOps107_1 : List Op := [.badd 6898 6815,.rotr 6711 7,.rotr 6711 18,.bxor 6900 6901,.shr 6711 3,.bxor 6902 6903,.badd 6899 6904,.badd 6905 6698]
theorem subChecked107_1 : checkSteps target certificate.alias 6899 subOps107_1=true := by core033_kernel_decide
theorem subLength107_1 : subOps107_1.length=8 := by decide
def subOps107_2 : List Op := [.rotr 6893 17,.rotr 6893 19,.bxor 6907 6908,.shr 6893 10,.bxor 6909 6910,.badd 6911 6828,.rotr 6724 7,.rotr 6724 18]
theorem subChecked107_2 : checkSteps target certificate.alias 6907 subOps107_2=true := by core033_kernel_decide
theorem subLength107_2 : subOps107_2.length=8 := by decide
def subOps107_3 : List Op := [.bxor 6913 6914,.shr 6724 3,.bxor 6915 6916,.badd 6912 6917,.badd 6918 6711,.rotr 6906 17,.rotr 6906 19,.bxor 6920 6921]
theorem subChecked107_3 : checkSteps target certificate.alias 6915 subOps107_3=true := by core033_kernel_decide
theorem subLength107_3 : subOps107_3.length=8 := by decide
def subOps107_4 : List Op := [.shr 6906 10,.bxor 6922 6923,.badd 6924 6841,.rotr 6737 7,.rotr 6737 18,.bxor 6926 6927,.shr 6737 3,.bxor 6928 6929]
theorem subChecked107_4 : checkSteps target certificate.alias 6923 subOps107_4=true := by core033_kernel_decide
theorem subLength107_4 : subOps107_4.length=8 := by decide
def subOps107_5 : List Op := [.badd 6925 6930,.badd 6931 6724,.rotr 6919 17,.rotr 6919 19,.bxor 6933 6934,.shr 6919 10,.bxor 6935 6936,.badd 6937 6854]
theorem subChecked107_5 : checkSteps target certificate.alias 6931 subOps107_5=true := by core033_kernel_decide
theorem subLength107_5 : subOps107_5.length=8 := by decide
def subOps107_6 : List Op := [.rotr 6750 7,.rotr 6750 18,.bxor 6939 6940,.shr 6750 3,.bxor 6941 6942,.badd 6938 6943,.badd 6944 6737,.rotr 6932 17]
theorem subChecked107_6 : checkSteps target certificate.alias 6939 subOps107_6=true := by core033_kernel_decide
theorem subLength107_6 : subOps107_6.length=8 := by decide
def subOps107_7 : List Op := [.rotr 6932 19,.bxor 6946 6947,.shr 6932 10,.bxor 6948 6949,.badd 6950 6867,.rotr 6763 7,.rotr 6763 18,.bxor 6952 6953]
theorem subChecked107_7 : checkSteps target certificate.alias 6947 subOps107_7=true := by core033_kernel_decide
theorem subLength107_7 : subOps107_7.length=8 := by decide
theorem checked107 : checkSteps target certificate.alias 6891 QuotedFrameHashControllerIR.operations107=true := by
  have partition : QuotedFrameHashControllerIR.operations107=(subOps107_0++(subOps107_1++(subOps107_2++(subOps107_3++(subOps107_4++(subOps107_5++(subOps107_6++subOps107_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked107_0,subLength107_0]
  rw [check_steps_append,subChecked107_1,subLength107_1]
  rw [check_steps_append,subChecked107_2,subLength107_2]
  rw [check_steps_append,subChecked107_3,subLength107_3]
  rw [check_steps_append,subChecked107_4,subLength107_4]
  rw [check_steps_append,subChecked107_5,subLength107_5]
  rw [check_steps_append,subChecked107_6,subLength107_6]
  exact subChecked107_7
theorem length107 : QuotedFrameHashControllerIR.operations107.length=64 := by decide
end SegmentedFrameSharing
