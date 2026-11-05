import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps108_0 : List Op := [.shr 6763 3,.bxor 6954 6955,.badd 6951 6956,.badd 6957 6750,.rotr 6945 17,.rotr 6945 19,.bxor 6959 6960,.shr 6945 10]
theorem subChecked108_0 : checkSteps target certificate.alias 6955 subOps108_0=true := by core033_kernel_decide
theorem subLength108_0 : subOps108_0.length=8 := by decide
def subOps108_1 : List Op := [.bxor 6961 6962,.badd 6963 6880,.rotr 6776 7,.rotr 6776 18,.bxor 6965 6966,.shr 6776 3,.bxor 6967 6968,.badd 6964 6969]
theorem subChecked108_1 : checkSteps target certificate.alias 6963 subOps108_1=true := by core033_kernel_decide
theorem subLength108_1 : subOps108_1.length=8 := by decide
def subOps108_2 : List Op := [.badd 6970 6763,.rotr 6958 17,.rotr 6958 19,.bxor 6972 6973,.shr 6958 10,.bxor 6974 6975,.badd 6976 6893,.rotr 6789 7]
theorem subChecked108_2 : checkSteps target certificate.alias 6971 subOps108_2=true := by core033_kernel_decide
theorem subLength108_2 : subOps108_2.length=8 := by decide
def subOps108_3 : List Op := [.rotr 6789 18,.bxor 6978 6979,.shr 6789 3,.bxor 6980 6981,.badd 6977 6982,.badd 6983 6776,.rotr 6971 17,.rotr 6971 19]
theorem subChecked108_3 : checkSteps target certificate.alias 6979 subOps108_3=true := by core033_kernel_decide
theorem subLength108_3 : subOps108_3.length=8 := by decide
def subOps108_4 : List Op := [.bxor 6985 6986,.shr 6971 10,.bxor 6987 6988,.badd 6989 6906,.rotr 6802 7,.rotr 6802 18,.bxor 6991 6992,.shr 6802 3]
theorem subChecked108_4 : checkSteps target certificate.alias 6987 subOps108_4=true := by core033_kernel_decide
theorem subLength108_4 : subOps108_4.length=8 := by decide
def subOps108_5 : List Op := [.bxor 6993 6994,.badd 6990 6995,.badd 6996 6789,.rotr 6984 17,.rotr 6984 19,.bxor 6998 6999,.shr 6984 10,.bxor 7000 7001]
theorem subChecked108_5 : checkSteps target certificate.alias 6995 subOps108_5=true := by core033_kernel_decide
theorem subLength108_5 : subOps108_5.length=8 := by decide
def subOps108_6 : List Op := [.badd 7002 6919,.rotr 6815 7,.rotr 6815 18,.bxor 7004 7005,.shr 6815 3,.bxor 7006 7007,.badd 7003 7008,.badd 7009 6802]
theorem subChecked108_6 : checkSteps target certificate.alias 7003 subOps108_6=true := by core033_kernel_decide
theorem subLength108_6 : subOps108_6.length=8 := by decide
def subOps108_7 : List Op := [.rotr 6997 17,.rotr 6997 19,.bxor 7011 7012,.shr 6997 10,.bxor 7013 7014,.badd 7015 6932,.rotr 6828 7,.rotr 6828 18]
theorem subChecked108_7 : checkSteps target certificate.alias 7011 subOps108_7=true := by core033_kernel_decide
theorem subLength108_7 : subOps108_7.length=8 := by decide
theorem checked108 : checkSteps target certificate.alias 6955 QuotedFrameHashControllerIR.operations108=true := by
  have partition : QuotedFrameHashControllerIR.operations108=(subOps108_0++(subOps108_1++(subOps108_2++(subOps108_3++(subOps108_4++(subOps108_5++(subOps108_6++subOps108_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked108_0,subLength108_0]
  rw [check_steps_append,subChecked108_1,subLength108_1]
  rw [check_steps_append,subChecked108_2,subLength108_2]
  rw [check_steps_append,subChecked108_3,subLength108_3]
  rw [check_steps_append,subChecked108_4,subLength108_4]
  rw [check_steps_append,subChecked108_5,subLength108_5]
  rw [check_steps_append,subChecked108_6,subLength108_6]
  exact subChecked108_7
theorem length108 : QuotedFrameHashControllerIR.operations108.length=64 := by decide
end SegmentedFrameSharing
