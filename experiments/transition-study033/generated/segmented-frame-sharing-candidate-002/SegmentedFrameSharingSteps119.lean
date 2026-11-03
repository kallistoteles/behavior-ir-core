import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps119_0 : List Op := [.rotr 7657 11,.bxor 7658 7659,.rotr 7657 25,.bxor 7660 7661,.badd 7576 7662,.band 7657 7630,.bnot 7657,.band 7665 7603]
theorem subChecked119_0 : checkSteps target certificate.alias 7659 subOps119_0=true := by core033_kernel_decide
theorem subLength119_0 : subOps119_0.length=8 := by decide
def subOps119_1 : List Op := [.bxor 7664 7666,.badd 7663 7667,.literal (BitVec.ofNat 32 1996064986),.badd 7668 7669,.badd 7670 6516,.rotr 7656 2,.rotr 7656 13,.bxor 7672 7673]
theorem subChecked119_1 : checkSteps target certificate.alias 7667 subOps119_1=true := by core033_kernel_decide
theorem subLength119_1 : subOps119_1.length=8 := by decide
def subOps119_2 : List Op := [.rotr 7656 22,.bxor 7674 7675,.band 7656 7629,.band 7656 7602,.bxor 7677 7678,.band 7629 7602,.bxor 7679 7680,.badd 7676 7681]
theorem subChecked119_2 : checkSteps target certificate.alias 7675 subOps119_2=true := by core033_kernel_decide
theorem subLength119_2 : subOps119_2.length=8 := by decide
def subOps119_3 : List Op := [.badd 7671 7682,.badd 7575 7671,.rotr 7684 6,.rotr 7684 11,.bxor 7685 7686,.rotr 7684 25,.bxor 7687 7688,.badd 7603 7689]
theorem subChecked119_3 : checkSteps target certificate.alias 7683 subOps119_3=true := by core033_kernel_decide
theorem subLength119_3 : subOps119_3.length=8 := by decide
def subOps119_4 : List Op := [.band 7684 7657,.bnot 7684,.band 7692 7630,.bxor 7691 7693,.badd 7690 7694,.literal (BitVec.ofNat 32 2554220882),.badd 7695 7696,.badd 7697 6529]
theorem subChecked119_4 : checkSteps target certificate.alias 7691 subOps119_4=true := by core033_kernel_decide
theorem subLength119_4 : subOps119_4.length=8 := by decide
def subOps119_5 : List Op := [.rotr 7683 2,.rotr 7683 13,.bxor 7699 7700,.rotr 7683 22,.bxor 7701 7702,.band 7683 7656,.band 7683 7629,.bxor 7704 7705]
theorem subChecked119_5 : checkSteps target certificate.alias 7699 subOps119_5=true := by core033_kernel_decide
theorem subLength119_5 : subOps119_5.length=8 := by decide
def subOps119_6 : List Op := [.band 7656 7629,.bxor 7706 7707,.badd 7703 7708,.badd 7698 7709,.badd 7602 7698,.rotr 7711 6,.rotr 7711 11,.bxor 7712 7713]
theorem subChecked119_6 : checkSteps target certificate.alias 7707 subOps119_6=true := by core033_kernel_decide
theorem subLength119_6 : subOps119_6.length=8 := by decide
def subOps119_7 : List Op := [.rotr 7711 25,.bxor 7714 7715,.badd 7630 7716,.band 7711 7684,.bnot 7711,.band 7719 7657,.bxor 7718 7720,.badd 7717 7721]
theorem subChecked119_7 : checkSteps target certificate.alias 7715 subOps119_7=true := by core033_kernel_decide
theorem subLength119_7 : subOps119_7.length=8 := by decide
theorem checked119 : checkSteps target certificate.alias 7659 QuotedFrameHashControllerIR.operations119=true := by
  have partition : QuotedFrameHashControllerIR.operations119=subOps119_0++subOps119_1++subOps119_2++subOps119_3++subOps119_4++subOps119_5++subOps119_6++subOps119_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked119_0,subLength119_0]
  rw [check_steps_append,subChecked119_1,subLength119_1]
  rw [check_steps_append,subChecked119_2,subLength119_2]
  rw [check_steps_append,subChecked119_3,subLength119_3]
  rw [check_steps_append,subChecked119_4,subLength119_4]
  rw [check_steps_append,subChecked119_5,subLength119_5]
  rw [check_steps_append,subChecked119_6,subLength119_6]
  exact subChecked119_7
theorem length119 : QuotedFrameHashControllerIR.operations119.length=64 := by decide
end SegmentedFrameSharing
