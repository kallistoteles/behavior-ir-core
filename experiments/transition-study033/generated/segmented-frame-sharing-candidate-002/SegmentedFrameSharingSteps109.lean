import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps109_0 : List Op := [.bxor 7017 7018,.shr 6828 3,.bxor 7019 7020,.badd 7016 7021,.badd 7022 6815,.rotr 7010 17,.rotr 7010 19,.bxor 7024 7025]
theorem subChecked109_0 : checkSteps target certificate.alias 7019 subOps109_0=true := by core033_kernel_decide
theorem subLength109_0 : subOps109_0.length=8 := by decide
def subOps109_1 : List Op := [.shr 7010 10,.bxor 7026 7027,.badd 7028 6945,.rotr 6841 7,.rotr 6841 18,.bxor 7030 7031,.shr 6841 3,.bxor 7032 7033]
theorem subChecked109_1 : checkSteps target certificate.alias 7027 subOps109_1=true := by core033_kernel_decide
theorem subLength109_1 : subOps109_1.length=8 := by decide
def subOps109_2 : List Op := [.badd 7029 7034,.badd 7035 6828,.rotr 1664 6,.rotr 1664 11,.bxor 7037 7038,.rotr 1664 25,.bxor 7039 7040,.badd 1823 7041]
theorem subChecked109_2 : checkSteps target certificate.alias 7035 subOps109_2=true := by core033_kernel_decide
theorem subLength109_2 : subOps109_2.length=8 := by decide
def subOps109_3 : List Op := [.band 1664 1717,.bnot 1664,.band 7044 1770,.bxor 7043 7045,.badd 7042 7046,.literal (BitVec.ofNat 32 1116352408),.badd 7047 7048,.badd 7049 5170]
theorem subChecked109_3 : checkSteps target certificate.alias 7043 subOps109_3=true := by core033_kernel_decide
theorem subLength109_3 : subOps109_3.length=8 := by decide
def subOps109_4 : List Op := [.rotr 1452 2,.rotr 1452 13,.bxor 7051 7052,.rotr 1452 22,.bxor 7053 7054,.band 1452 1505,.band 1452 1558,.bxor 7056 7057]
theorem subChecked109_4 : checkSteps target certificate.alias 7051 subOps109_4=true := by core033_kernel_decide
theorem subLength109_4 : subOps109_4.length=8 := by decide
def subOps109_5 : List Op := [.band 1505 1558,.bxor 7058 7059,.badd 7055 7060,.badd 7050 7061,.badd 1611 7050,.rotr 7063 6,.rotr 7063 11,.bxor 7064 7065]
theorem subChecked109_5 : checkSteps target certificate.alias 7059 subOps109_5=true := by core033_kernel_decide
theorem subLength109_5 : subOps109_5.length=8 := by decide
def subOps109_6 : List Op := [.rotr 7063 25,.bxor 7066 7067,.badd 1770 7068,.band 7063 1664,.bnot 7063,.band 7071 1717,.bxor 7070 7072,.badd 7069 7073]
theorem subChecked109_6 : checkSteps target certificate.alias 7067 subOps109_6=true := by core033_kernel_decide
theorem subLength109_6 : subOps109_6.length=8 := by decide
def subOps109_7 : List Op := [.literal (BitVec.ofNat 32 1899447441),.badd 7074 7075,.badd 7076 5176,.rotr 7062 2,.rotr 7062 13,.bxor 7078 7079,.rotr 7062 22,.bxor 7080 7081]
theorem subChecked109_7 : checkSteps target certificate.alias 7075 subOps109_7=true := by core033_kernel_decide
theorem subLength109_7 : subOps109_7.length=8 := by decide
theorem checked109 : checkSteps target certificate.alias 7019 QuotedFrameHashControllerIR.operations109=true := by
  have partition : QuotedFrameHashControllerIR.operations109=subOps109_0++subOps109_1++subOps109_2++subOps109_3++subOps109_4++subOps109_5++subOps109_6++subOps109_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked109_0,subLength109_0]
  rw [check_steps_append,subChecked109_1,subLength109_1]
  rw [check_steps_append,subChecked109_2,subLength109_2]
  rw [check_steps_append,subChecked109_3,subLength109_3]
  rw [check_steps_append,subChecked109_4,subLength109_4]
  rw [check_steps_append,subChecked109_5,subLength109_5]
  rw [check_steps_append,subChecked109_6,subLength109_6]
  exact subChecked109_7
theorem length109 : QuotedFrameHashControllerIR.operations109.length=64 := by decide
end SegmentedFrameSharing
