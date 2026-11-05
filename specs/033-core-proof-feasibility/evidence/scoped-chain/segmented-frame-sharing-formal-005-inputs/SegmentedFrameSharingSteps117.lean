import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps117_0 : List Op := [.band 7530 7468,.bxor 7529 7531,.badd 7528 7532,.literal (BitVec.ofNat 32 264347078),.badd 7533 7534,.badd 7535 6451,.rotr 7521 2,.rotr 7521 13]
theorem subChecked117_0 : checkSteps target certificate.alias 7531 subOps117_0=true := by core033_kernel_decide
theorem subLength117_0 : subOps117_0.length=8 := by decide
def subOps117_1 : List Op := [.bxor 7537 7538,.rotr 7521 22,.bxor 7539 7540,.band 7521 7494,.band 7521 7467,.bxor 7542 7543,.band 7494 7467,.bxor 7544 7545]
theorem subChecked117_1 : checkSteps target certificate.alias 7539 subOps117_1=true := by core033_kernel_decide
theorem subLength117_1 : subOps117_1.length=8 := by decide
def subOps117_2 : List Op := [.badd 7541 7546,.badd 7536 7547,.badd 7440 7536,.rotr 7549 6,.rotr 7549 11,.bxor 7550 7551,.rotr 7549 25,.bxor 7552 7553]
theorem subChecked117_2 : checkSteps target certificate.alias 7547 subOps117_2=true := by core033_kernel_decide
theorem subLength117_2 : subOps117_2.length=8 := by decide
def subOps117_3 : List Op := [.badd 7468 7554,.band 7549 7522,.bnot 7549,.band 7557 7495,.bxor 7556 7558,.badd 7555 7559,.literal (BitVec.ofNat 32 604807628),.badd 7560 7561]
theorem subChecked117_3 : checkSteps target certificate.alias 7555 subOps117_3=true := by core033_kernel_decide
theorem subLength117_3 : subOps117_3.length=8 := by decide
def subOps117_4 : List Op := [.badd 7562 6464,.rotr 7548 2,.rotr 7548 13,.bxor 7564 7565,.rotr 7548 22,.bxor 7566 7567,.band 7548 7521,.band 7548 7494]
theorem subChecked117_4 : checkSteps target certificate.alias 7563 subOps117_4=true := by core033_kernel_decide
theorem subLength117_4 : subOps117_4.length=8 := by decide
def subOps117_5 : List Op := [.bxor 7569 7570,.band 7521 7494,.bxor 7571 7572,.badd 7568 7573,.badd 7563 7574,.badd 7467 7563,.rotr 7576 6,.rotr 7576 11]
theorem subChecked117_5 : checkSteps target certificate.alias 7571 subOps117_5=true := by core033_kernel_decide
theorem subLength117_5 : subOps117_5.length=8 := by decide
def subOps117_6 : List Op := [.bxor 7577 7578,.rotr 7576 25,.bxor 7579 7580,.badd 7495 7581,.band 7576 7549,.bnot 7576,.band 7584 7522,.bxor 7583 7585]
theorem subChecked117_6 : checkSteps target certificate.alias 7579 subOps117_6=true := by core033_kernel_decide
theorem subLength117_6 : subOps117_6.length=8 := by decide
def subOps117_7 : List Op := [.badd 7582 7586,.literal (BitVec.ofNat 32 770255983),.badd 7587 7588,.badd 7589 6477,.rotr 7575 2,.rotr 7575 13,.bxor 7591 7592,.rotr 7575 22]
theorem subChecked117_7 : checkSteps target certificate.alias 7587 subOps117_7=true := by core033_kernel_decide
theorem subLength117_7 : subOps117_7.length=8 := by decide
theorem checked117 : checkSteps target certificate.alias 7531 QuotedFrameHashControllerIR.operations117=true := by
  have partition : QuotedFrameHashControllerIR.operations117=(subOps117_0++(subOps117_1++(subOps117_2++(subOps117_3++(subOps117_4++(subOps117_5++(subOps117_6++subOps117_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked117_0,subLength117_0]
  rw [check_steps_append,subChecked117_1,subLength117_1]
  rw [check_steps_append,subChecked117_2,subLength117_2]
  rw [check_steps_append,subChecked117_3,subLength117_3]
  rw [check_steps_append,subChecked117_4,subLength117_4]
  rw [check_steps_append,subChecked117_5,subLength117_5]
  rw [check_steps_append,subChecked117_6,subLength117_6]
  exact subChecked117_7
theorem length117 : QuotedFrameHashControllerIR.operations117.length=64 := by decide
end SegmentedFrameSharing
