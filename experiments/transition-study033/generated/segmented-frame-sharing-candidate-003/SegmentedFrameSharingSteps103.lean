import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps103_0 : List Op := [.rotr 6620 19,.bxor 6634 6635,.shr 6620 10,.bxor 6636 6637,.badd 6638 6555,.rotr 6451 7,.rotr 6451 18,.bxor 6640 6641]
theorem subChecked103_0 : checkSteps target certificate.alias 6635 subOps103_0=true := by core033_kernel_decide
theorem subLength103_0 : subOps103_0.length=8 := by decide
def subOps103_1 : List Op := [.shr 6451 3,.bxor 6642 6643,.badd 6639 6644,.badd 6645 6438,.rotr 6633 17,.rotr 6633 19,.bxor 6647 6648,.shr 6633 10]
theorem subChecked103_1 : checkSteps target certificate.alias 6643 subOps103_1=true := by core033_kernel_decide
theorem subLength103_1 : subOps103_1.length=8 := by decide
def subOps103_2 : List Op := [.bxor 6649 6650,.badd 6651 6568,.rotr 6464 7,.rotr 6464 18,.bxor 6653 6654,.shr 6464 3,.bxor 6655 6656,.badd 6652 6657]
theorem subChecked103_2 : checkSteps target certificate.alias 6651 subOps103_2=true := by core033_kernel_decide
theorem subLength103_2 : subOps103_2.length=8 := by decide
def subOps103_3 : List Op := [.badd 6658 6451,.rotr 6646 17,.rotr 6646 19,.bxor 6660 6661,.shr 6646 10,.bxor 6662 6663,.badd 6664 6581,.rotr 6477 7]
theorem subChecked103_3 : checkSteps target certificate.alias 6659 subOps103_3=true := by core033_kernel_decide
theorem subLength103_3 : subOps103_3.length=8 := by decide
def subOps103_4 : List Op := [.rotr 6477 18,.bxor 6666 6667,.shr 6477 3,.bxor 6668 6669,.badd 6665 6670,.badd 6671 6464,.rotr 6659 17,.rotr 6659 19]
theorem subChecked103_4 : checkSteps target certificate.alias 6667 subOps103_4=true := by core033_kernel_decide
theorem subLength103_4 : subOps103_4.length=8 := by decide
def subOps103_5 : List Op := [.bxor 6673 6674,.shr 6659 10,.bxor 6675 6676,.badd 6677 6594,.rotr 6490 7,.rotr 6490 18,.bxor 6679 6680,.shr 6490 3]
theorem subChecked103_5 : checkSteps target certificate.alias 6675 subOps103_5=true := by core033_kernel_decide
theorem subLength103_5 : subOps103_5.length=8 := by decide
def subOps103_6 : List Op := [.bxor 6681 6682,.badd 6678 6683,.badd 6684 6477,.rotr 6672 17,.rotr 6672 19,.bxor 6686 6687,.shr 6672 10,.bxor 6688 6689]
theorem subChecked103_6 : checkSteps target certificate.alias 6683 subOps103_6=true := by core033_kernel_decide
theorem subLength103_6 : subOps103_6.length=8 := by decide
def subOps103_7 : List Op := [.badd 6690 6607,.rotr 6503 7,.rotr 6503 18,.bxor 6692 6693,.shr 6503 3,.bxor 6694 6695,.badd 6691 6696,.badd 6697 6490]
theorem subChecked103_7 : checkSteps target certificate.alias 6691 subOps103_7=true := by core033_kernel_decide
theorem subLength103_7 : subOps103_7.length=8 := by decide
theorem checked103 : checkSteps target certificate.alias 6635 QuotedFrameHashControllerIR.operations103=true := by
  have partition : QuotedFrameHashControllerIR.operations103=(subOps103_0++(subOps103_1++(subOps103_2++(subOps103_3++(subOps103_4++(subOps103_5++(subOps103_6++subOps103_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked103_0,subLength103_0]
  rw [check_steps_append,subChecked103_1,subLength103_1]
  rw [check_steps_append,subChecked103_2,subLength103_2]
  rw [check_steps_append,subChecked103_3,subLength103_3]
  rw [check_steps_append,subChecked103_4,subLength103_4]
  rw [check_steps_append,subChecked103_5,subLength103_5]
  rw [check_steps_append,subChecked103_6,subLength103_6]
  exact subChecked103_7
theorem length103 : QuotedFrameHashControllerIR.operations103.length=64 := by decide
end SegmentedFrameSharing
