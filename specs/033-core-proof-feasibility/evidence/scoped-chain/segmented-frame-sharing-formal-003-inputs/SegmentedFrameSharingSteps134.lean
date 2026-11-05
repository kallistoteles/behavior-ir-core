import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps134_0 : List Op := [.bxor 8617 8618,.rotr 8601 22,.bxor 8619 8620,.band 8601 8574,.band 8601 8547,.bxor 8622 8623,.band 8574 8547,.bxor 8624 8625]
theorem subChecked134_0 : checkSteps target certificate.alias 8619 subOps134_0=true := by core033_kernel_decide
theorem subLength134_0 : subOps134_0.length=8 := by decide
def subOps134_1 : List Op := [.badd 8621 8626,.badd 8616 8627,.badd 8520 8616,.rotr 8629 6,.rotr 8629 11,.bxor 8630 8631,.rotr 8629 25,.bxor 8632 8633]
theorem subChecked134_1 : checkSteps target certificate.alias 8627 subOps134_1=true := by core033_kernel_decide
theorem subLength134_1 : subOps134_1.length=8 := by decide
def subOps134_2 : List Op := [.badd 8548 8634,.band 8629 8602,.bnot 8629,.band 8637 8575,.bxor 8636 8638,.badd 8635 8639,.literal (BitVec.ofNat 32 2361852424),.badd 8640 8641]
theorem subChecked134_2 : checkSteps target certificate.alias 8635 subOps134_2=true := by core033_kernel_decide
theorem subLength134_2 : subOps134_2.length=8 := by decide
def subOps134_3 : List Op := [.badd 8642 6984,.rotr 8628 2,.rotr 8628 13,.bxor 8644 8645,.rotr 8628 22,.bxor 8646 8647,.band 8628 8601,.band 8628 8574]
theorem subChecked134_3 : checkSteps target certificate.alias 8643 subOps134_3=true := by core033_kernel_decide
theorem subLength134_3 : subOps134_3.length=8 := by decide
def subOps134_4 : List Op := [.bxor 8649 8650,.band 8601 8574,.bxor 8651 8652,.badd 8648 8653,.badd 8643 8654,.badd 8547 8643,.rotr 8656 6,.rotr 8656 11]
theorem subChecked134_4 : checkSteps target certificate.alias 8651 subOps134_4=true := by core033_kernel_decide
theorem subLength134_4 : subOps134_4.length=8 := by decide
def subOps134_5 : List Op := [.bxor 8657 8658,.rotr 8656 25,.bxor 8659 8660,.badd 8575 8661,.band 8656 8629,.bnot 8656,.band 8664 8602,.bxor 8663 8665]
theorem subChecked134_5 : checkSteps target certificate.alias 8659 subOps134_5=true := by core033_kernel_decide
theorem subLength134_5 : subOps134_5.length=8 := by decide
def subOps134_6 : List Op := [.badd 8662 8666,.literal (BitVec.ofNat 32 2428436474),.badd 8667 8668,.badd 8669 6997,.rotr 8655 2,.rotr 8655 13,.bxor 8671 8672,.rotr 8655 22]
theorem subChecked134_6 : checkSteps target certificate.alias 8667 subOps134_6=true := by core033_kernel_decide
theorem subLength134_6 : subOps134_6.length=8 := by decide
def subOps134_7 : List Op := [.bxor 8673 8674,.band 8655 8628,.band 8655 8601,.bxor 8676 8677,.band 8628 8601,.bxor 8678 8679,.badd 8675 8680,.badd 8670 8681]
theorem subChecked134_7 : checkSteps target certificate.alias 8675 subOps134_7=true := by core033_kernel_decide
theorem subLength134_7 : subOps134_7.length=8 := by decide
theorem checked134 : checkSteps target certificate.alias 8619 QuotedFrameHashControllerIR.operations134=true := by
  have partition : QuotedFrameHashControllerIR.operations134=(subOps134_0++(subOps134_1++(subOps134_2++(subOps134_3++(subOps134_4++(subOps134_5++(subOps134_6++subOps134_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked134_0,subLength134_0]
  rw [check_steps_append,subChecked134_1,subLength134_1]
  rw [check_steps_append,subChecked134_2,subLength134_2]
  rw [check_steps_append,subChecked134_3,subLength134_3]
  rw [check_steps_append,subChecked134_4,subLength134_4]
  rw [check_steps_append,subChecked134_5,subLength134_5]
  rw [check_steps_append,subChecked134_6,subLength134_6]
  exact subChecked134_7
theorem length134 : QuotedFrameHashControllerIR.operations134.length=64 := by decide
end SegmentedFrameSharing
