import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps120_0 : List Op := [.literal (BitVec.ofNat 32 2821834349),.badd 7722 7723,.badd 7724 6542,.rotr 7710 2,.rotr 7710 13,.bxor 7726 7727,.rotr 7710 22,.bxor 7728 7729]
theorem subChecked120_0 : checkSteps target certificate.alias 7723 subOps120_0=true := by core033_kernel_decide
theorem subLength120_0 : subOps120_0.length=8 := by decide
def subOps120_1 : List Op := [.band 7710 7683,.band 7710 7656,.bxor 7731 7732,.band 7683 7656,.bxor 7733 7734,.badd 7730 7735,.badd 7725 7736,.badd 7629 7725]
theorem subChecked120_1 : checkSteps target certificate.alias 7731 subOps120_1=true := by core033_kernel_decide
theorem subLength120_1 : subOps120_1.length=8 := by decide
def subOps120_2 : List Op := [.rotr 7738 6,.rotr 7738 11,.bxor 7739 7740,.rotr 7738 25,.bxor 7741 7742,.badd 7657 7743,.band 7738 7711,.bnot 7738]
theorem subChecked120_2 : checkSteps target certificate.alias 7739 subOps120_2=true := by core033_kernel_decide
theorem subLength120_2 : subOps120_2.length=8 := by decide
def subOps120_3 : List Op := [.band 7746 7684,.bxor 7745 7747,.badd 7744 7748,.literal (BitVec.ofNat 32 2952996808),.badd 7749 7750,.badd 7751 6555,.rotr 7737 2,.rotr 7737 13]
theorem subChecked120_3 : checkSteps target certificate.alias 7747 subOps120_3=true := by core033_kernel_decide
theorem subLength120_3 : subOps120_3.length=8 := by decide
def subOps120_4 : List Op := [.bxor 7753 7754,.rotr 7737 22,.bxor 7755 7756,.band 7737 7710,.band 7737 7683,.bxor 7758 7759,.band 7710 7683,.bxor 7760 7761]
theorem subChecked120_4 : checkSteps target certificate.alias 7755 subOps120_4=true := by core033_kernel_decide
theorem subLength120_4 : subOps120_4.length=8 := by decide
def subOps120_5 : List Op := [.badd 7757 7762,.badd 7752 7763,.badd 7656 7752,.rotr 7765 6,.rotr 7765 11,.bxor 7766 7767,.rotr 7765 25,.bxor 7768 7769]
theorem subChecked120_5 : checkSteps target certificate.alias 7763 subOps120_5=true := by core033_kernel_decide
theorem subLength120_5 : subOps120_5.length=8 := by decide
def subOps120_6 : List Op := [.badd 7684 7770,.band 7765 7738,.bnot 7765,.band 7773 7711,.bxor 7772 7774,.badd 7771 7775,.literal (BitVec.ofNat 32 3210313671),.badd 7776 7777]
theorem subChecked120_6 : checkSteps target certificate.alias 7771 subOps120_6=true := by core033_kernel_decide
theorem subLength120_6 : subOps120_6.length=8 := by decide
def subOps120_7 : List Op := [.badd 7778 6568,.rotr 7764 2,.rotr 7764 13,.bxor 7780 7781,.rotr 7764 22,.bxor 7782 7783,.band 7764 7737,.band 7764 7710]
theorem subChecked120_7 : checkSteps target certificate.alias 7779 subOps120_7=true := by core033_kernel_decide
theorem subLength120_7 : subOps120_7.length=8 := by decide
theorem checked120 : checkSteps target certificate.alias 7723 QuotedFrameHashControllerIR.operations120=true := by
  have partition : QuotedFrameHashControllerIR.operations120=subOps120_0++subOps120_1++subOps120_2++subOps120_3++subOps120_4++subOps120_5++subOps120_6++subOps120_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked120_0,subLength120_0]
  rw [check_steps_append,subChecked120_1,subLength120_1]
  rw [check_steps_append,subChecked120_2,subLength120_2]
  rw [check_steps_append,subChecked120_3,subLength120_3]
  rw [check_steps_append,subChecked120_4,subLength120_4]
  rw [check_steps_append,subChecked120_5,subLength120_5]
  rw [check_steps_append,subChecked120_6,subLength120_6]
  exact subChecked120_7
theorem length120 : QuotedFrameHashControllerIR.operations120.length=64 := by decide
end SegmentedFrameSharing
