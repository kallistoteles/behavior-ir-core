import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps125_0 : List Op := [.bnot 8035,.band 8043 7981,.bxor 8042 8044,.badd 8041 8045,.literal (BitVec.ofNat 32 1986661051),.badd 8046 8047,.badd 8048 6698,.rotr 8034 2]
theorem subChecked125_0 : checkSteps target certificate.alias 8043 subOps125_0=true := by core033_kernel_decide
theorem subLength125_0 : subOps125_0.length=8 := by decide
def subOps125_1 : List Op := [.rotr 8034 13,.bxor 8050 8051,.rotr 8034 22,.bxor 8052 8053,.band 8034 8007,.band 8034 7980,.bxor 8055 8056,.band 8007 7980]
theorem subChecked125_1 : checkSteps target certificate.alias 8051 subOps125_1=true := by core033_kernel_decide
theorem subLength125_1 : subOps125_1.length=8 := by decide
def subOps125_2 : List Op := [.bxor 8057 8058,.badd 8054 8059,.badd 8049 8060,.badd 7953 8049,.rotr 8062 6,.rotr 8062 11,.bxor 8063 8064,.rotr 8062 25]
theorem subChecked125_2 : checkSteps target certificate.alias 8059 subOps125_2=true := by core033_kernel_decide
theorem subLength125_2 : subOps125_2.length=8 := by decide
def subOps125_3 : List Op := [.bxor 8065 8066,.badd 7981 8067,.band 8062 8035,.bnot 8062,.band 8070 8008,.bxor 8069 8071,.badd 8068 8072,.literal (BitVec.ofNat 32 2177026350)]
theorem subChecked125_3 : checkSteps target certificate.alias 8067 subOps125_3=true := by core033_kernel_decide
theorem subLength125_3 : subOps125_3.length=8 := by decide
def subOps125_4 : List Op := [.badd 8073 8074,.badd 8075 6711,.rotr 8061 2,.rotr 8061 13,.bxor 8077 8078,.rotr 8061 22,.bxor 8079 8080,.band 8061 8034]
theorem subChecked125_4 : checkSteps target certificate.alias 8075 subOps125_4=true := by core033_kernel_decide
theorem subLength125_4 : subOps125_4.length=8 := by decide
def subOps125_5 : List Op := [.band 8061 8007,.bxor 8082 8083,.band 8034 8007,.bxor 8084 8085,.badd 8081 8086,.badd 8076 8087,.badd 7980 8076,.rotr 8089 6]
theorem subChecked125_5 : checkSteps target certificate.alias 8083 subOps125_5=true := by core033_kernel_decide
theorem subLength125_5 : subOps125_5.length=8 := by decide
def subOps125_6 : List Op := [.rotr 8089 11,.bxor 8090 8091,.rotr 8089 25,.bxor 8092 8093,.badd 8008 8094,.band 8089 8062,.bnot 8089,.band 8097 8035]
theorem subChecked125_6 : checkSteps target certificate.alias 8091 subOps125_6=true := by core033_kernel_decide
theorem subLength125_6 : subOps125_6.length=8 := by decide
def subOps125_7 : List Op := [.bxor 8096 8098,.badd 8095 8099,.literal (BitVec.ofNat 32 2456956037),.badd 8100 8101,.badd 8102 6724,.rotr 8088 2,.rotr 8088 13,.bxor 8104 8105]
theorem subChecked125_7 : checkSteps target certificate.alias 8099 subOps125_7=true := by core033_kernel_decide
theorem subLength125_7 : subOps125_7.length=8 := by decide
theorem checked125 : checkSteps target certificate.alias 8043 QuotedFrameHashControllerIR.operations125=true := by
  have partition : QuotedFrameHashControllerIR.operations125=(subOps125_0++(subOps125_1++(subOps125_2++(subOps125_3++(subOps125_4++(subOps125_5++(subOps125_6++subOps125_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked125_0,subLength125_0]
  rw [check_steps_append,subChecked125_1,subLength125_1]
  rw [check_steps_append,subChecked125_2,subLength125_2]
  rw [check_steps_append,subChecked125_3,subLength125_3]
  rw [check_steps_append,subChecked125_4,subLength125_4]
  rw [check_steps_append,subChecked125_5,subLength125_5]
  rw [check_steps_append,subChecked125_6,subLength125_6]
  exact subChecked125_7
theorem length125 : QuotedFrameHashControllerIR.operations125.length=64 := by decide
end SegmentedFrameSharing
