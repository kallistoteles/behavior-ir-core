import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps135_0 : List Op := [.badd 8574 8670,.rotr 8683 6,.rotr 8683 11,.bxor 8684 8685,.rotr 8683 25,.bxor 8686 8687,.badd 8602 8688,.band 8683 8656]
theorem subChecked135_0 : checkSteps target certificate.alias 8683 subOps135_0=true := by core033_kernel_decide
theorem subLength135_0 : subOps135_0.length=8 := by decide
def subOps135_1 : List Op := [.bnot 8683,.band 8691 8629,.bxor 8690 8692,.badd 8689 8693,.literal (BitVec.ofNat 32 2756734187),.badd 8694 8695,.badd 8696 7010,.rotr 8682 2]
theorem subChecked135_1 : checkSteps target certificate.alias 8691 subOps135_1=true := by core033_kernel_decide
theorem subLength135_1 : subOps135_1.length=8 := by decide
def subOps135_2 : List Op := [.rotr 8682 13,.bxor 8698 8699,.rotr 8682 22,.bxor 8700 8701,.band 8682 8655,.band 8682 8628,.bxor 8703 8704,.band 8655 8628]
theorem subChecked135_2 : checkSteps target certificate.alias 8699 subOps135_2=true := by core033_kernel_decide
theorem subLength135_2 : subOps135_2.length=8 := by decide
def subOps135_3 : List Op := [.bxor 8705 8706,.badd 8702 8707,.badd 8697 8708,.badd 8601 8697,.rotr 8710 6,.rotr 8710 11,.bxor 8711 8712,.rotr 8710 25]
theorem subChecked135_3 : checkSteps target certificate.alias 8707 subOps135_3=true := by core033_kernel_decide
theorem subLength135_3 : subOps135_3.length=8 := by decide
def subOps135_4 : List Op := [.bxor 8713 8714,.badd 8629 8715,.band 8710 8683,.bnot 8710,.band 8718 8656,.bxor 8717 8719,.badd 8716 8720,.literal (BitVec.ofNat 32 3204031479)]
theorem subChecked135_4 : checkSteps target certificate.alias 8715 subOps135_4=true := by core033_kernel_decide
theorem subLength135_4 : subOps135_4.length=8 := by decide
def subOps135_5 : List Op := [.badd 8721 8722,.badd 8723 7023,.rotr 8709 2,.rotr 8709 13,.bxor 8725 8726,.rotr 8709 22,.bxor 8727 8728,.band 8709 8682]
theorem subChecked135_5 : checkSteps target certificate.alias 8723 subOps135_5=true := by core033_kernel_decide
theorem subLength135_5 : subOps135_5.length=8 := by decide
def subOps135_6 : List Op := [.band 8709 8655,.bxor 8730 8731,.band 8682 8655,.bxor 8732 8733,.badd 8729 8734,.badd 8724 8735,.badd 8628 8724,.rotr 8737 6]
theorem subChecked135_6 : checkSteps target certificate.alias 8731 subOps135_6=true := by core033_kernel_decide
theorem subLength135_6 : subOps135_6.length=8 := by decide
def subOps135_7 : List Op := [.rotr 8737 11,.bxor 8738 8739,.rotr 8737 25,.bxor 8740 8741,.badd 8656 8742,.band 8737 8710,.bnot 8737,.band 8745 8683]
theorem subChecked135_7 : checkSteps target certificate.alias 8739 subOps135_7=true := by core033_kernel_decide
theorem subLength135_7 : subOps135_7.length=8 := by decide
theorem checked135 : checkSteps target certificate.alias 8683 QuotedFrameHashControllerIR.operations135=true := by
  have partition : QuotedFrameHashControllerIR.operations135=(subOps135_0++(subOps135_1++(subOps135_2++(subOps135_3++(subOps135_4++(subOps135_5++(subOps135_6++subOps135_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked135_0,subLength135_0]
  rw [check_steps_append,subChecked135_1,subLength135_1]
  rw [check_steps_append,subChecked135_2,subLength135_2]
  rw [check_steps_append,subChecked135_3,subLength135_3]
  rw [check_steps_append,subChecked135_4,subLength135_4]
  rw [check_steps_append,subChecked135_5,subLength135_5]
  rw [check_steps_append,subChecked135_6,subLength135_6]
  exact subChecked135_7
theorem length135 : QuotedFrameHashControllerIR.operations135.length=64 := by decide
end SegmentedFrameSharing
