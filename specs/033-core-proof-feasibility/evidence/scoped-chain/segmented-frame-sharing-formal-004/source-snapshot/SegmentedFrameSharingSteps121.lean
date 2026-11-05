import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps121_0 : List Op := [.bxor 7785 7786,.band 7737 7710,.bxor 7787 7788,.badd 7784 7789,.badd 7779 7790,.badd 7683 7779,.rotr 7792 6,.rotr 7792 11]
theorem subChecked121_0 : checkSteps target certificate.alias 7787 subOps121_0=true := by core033_kernel_decide
theorem subLength121_0 : subOps121_0.length=8 := by decide
def subOps121_1 : List Op := [.bxor 7793 7794,.rotr 7792 25,.bxor 7795 7796,.badd 7711 7797,.band 7792 7765,.bnot 7792,.band 7800 7738,.bxor 7799 7801]
theorem subChecked121_1 : checkSteps target certificate.alias 7795 subOps121_1=true := by core033_kernel_decide
theorem subLength121_1 : subOps121_1.length=8 := by decide
def subOps121_2 : List Op := [.badd 7798 7802,.literal (BitVec.ofNat 32 3336571891),.badd 7803 7804,.badd 7805 6581,.rotr 7791 2,.rotr 7791 13,.bxor 7807 7808,.rotr 7791 22]
theorem subChecked121_2 : checkSteps target certificate.alias 7803 subOps121_2=true := by core033_kernel_decide
theorem subLength121_2 : subOps121_2.length=8 := by decide
def subOps121_3 : List Op := [.bxor 7809 7810,.band 7791 7764,.band 7791 7737,.bxor 7812 7813,.band 7764 7737,.bxor 7814 7815,.badd 7811 7816,.badd 7806 7817]
theorem subChecked121_3 : checkSteps target certificate.alias 7811 subOps121_3=true := by core033_kernel_decide
theorem subLength121_3 : subOps121_3.length=8 := by decide
def subOps121_4 : List Op := [.badd 7710 7806,.rotr 7819 6,.rotr 7819 11,.bxor 7820 7821,.rotr 7819 25,.bxor 7822 7823,.badd 7738 7824,.band 7819 7792]
theorem subChecked121_4 : checkSteps target certificate.alias 7819 subOps121_4=true := by core033_kernel_decide
theorem subLength121_4 : subOps121_4.length=8 := by decide
def subOps121_5 : List Op := [.bnot 7819,.band 7827 7765,.bxor 7826 7828,.badd 7825 7829,.literal (BitVec.ofNat 32 3584528711),.badd 7830 7831,.badd 7832 6594,.rotr 7818 2]
theorem subChecked121_5 : checkSteps target certificate.alias 7827 subOps121_5=true := by core033_kernel_decide
theorem subLength121_5 : subOps121_5.length=8 := by decide
def subOps121_6 : List Op := [.rotr 7818 13,.bxor 7834 7835,.rotr 7818 22,.bxor 7836 7837,.band 7818 7791,.band 7818 7764,.bxor 7839 7840,.band 7791 7764]
theorem subChecked121_6 : checkSteps target certificate.alias 7835 subOps121_6=true := by core033_kernel_decide
theorem subLength121_6 : subOps121_6.length=8 := by decide
def subOps121_7 : List Op := [.bxor 7841 7842,.badd 7838 7843,.badd 7833 7844,.badd 7737 7833,.rotr 7846 6,.rotr 7846 11,.bxor 7847 7848,.rotr 7846 25]
theorem subChecked121_7 : checkSteps target certificate.alias 7843 subOps121_7=true := by core033_kernel_decide
theorem subLength121_7 : subOps121_7.length=8 := by decide
theorem checked121 : checkSteps target certificate.alias 7787 QuotedFrameHashControllerIR.operations121=true := by
  have partition : QuotedFrameHashControllerIR.operations121=(subOps121_0++(subOps121_1++(subOps121_2++(subOps121_3++(subOps121_4++(subOps121_5++(subOps121_6++subOps121_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked121_0,subLength121_0]
  rw [check_steps_append,subChecked121_1,subLength121_1]
  rw [check_steps_append,subChecked121_2,subLength121_2]
  rw [check_steps_append,subChecked121_3,subLength121_3]
  rw [check_steps_append,subChecked121_4,subLength121_4]
  rw [check_steps_append,subChecked121_5,subLength121_5]
  rw [check_steps_append,subChecked121_6,subLength121_6]
  exact subChecked121_7
theorem length121 : QuotedFrameHashControllerIR.operations121.length=64 := by decide
end SegmentedFrameSharing
