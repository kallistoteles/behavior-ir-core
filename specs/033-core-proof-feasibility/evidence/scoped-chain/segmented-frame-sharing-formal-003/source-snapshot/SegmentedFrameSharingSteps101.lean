import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps101_0 : List Op := [.shr 6490 10,.bxor 6506 6507,.badd 6508 6425,.rotr 5218 7,.rotr 5218 18,.bxor 6510 6511,.shr 5218 3,.bxor 6512 6513]
theorem subChecked101_0 : checkSteps target certificate.alias 6507 subOps101_0=true := by core033_kernel_decide
theorem subLength101_0 : subOps101_0.length=8 := by decide
def subOps101_1 : List Op := [.badd 6509 6514,.badd 6515 5212,.rotr 6503 17,.rotr 6503 19,.bxor 6517 6518,.shr 6503 10,.bxor 6519 6520,.badd 6521 6438]
theorem subChecked101_1 : checkSteps target certificate.alias 6515 subOps101_1=true := by core033_kernel_decide
theorem subLength101_1 : subOps101_1.length=8 := by decide
def subOps101_2 : List Op := [.rotr 5224 7,.rotr 5224 18,.bxor 6523 6524,.shr 5224 3,.bxor 6525 6526,.badd 6522 6527,.badd 6528 5218,.rotr 6516 17]
theorem subChecked101_2 : checkSteps target certificate.alias 6523 subOps101_2=true := by core033_kernel_decide
theorem subLength101_2 : subOps101_2.length=8 := by decide
def subOps101_3 : List Op := [.rotr 6516 19,.bxor 6530 6531,.shr 6516 10,.bxor 6532 6533,.badd 6534 6451,.rotr 5230 7,.rotr 5230 18,.bxor 6536 6537]
theorem subChecked101_3 : checkSteps target certificate.alias 6531 subOps101_3=true := by core033_kernel_decide
theorem subLength101_3 : subOps101_3.length=8 := by decide
def subOps101_4 : List Op := [.shr 5230 3,.bxor 6538 6539,.badd 6535 6540,.badd 6541 5224,.rotr 6529 17,.rotr 6529 19,.bxor 6543 6544,.shr 6529 10]
theorem subChecked101_4 : checkSteps target certificate.alias 6539 subOps101_4=true := by core033_kernel_decide
theorem subLength101_4 : subOps101_4.length=8 := by decide
def subOps101_5 : List Op := [.bxor 6545 6546,.badd 6547 6464,.rotr 5236 7,.rotr 5236 18,.bxor 6549 6550,.shr 5236 3,.bxor 6551 6552,.badd 6548 6553]
theorem subChecked101_5 : checkSteps target certificate.alias 6547 subOps101_5=true := by core033_kernel_decide
theorem subLength101_5 : subOps101_5.length=8 := by decide
def subOps101_6 : List Op := [.badd 6554 5230,.rotr 6542 17,.rotr 6542 19,.bxor 6556 6557,.shr 6542 10,.bxor 6558 6559,.badd 6560 6477,.rotr 5242 7]
theorem subChecked101_6 : checkSteps target certificate.alias 6555 subOps101_6=true := by core033_kernel_decide
theorem subLength101_6 : subOps101_6.length=8 := by decide
def subOps101_7 : List Op := [.rotr 5242 18,.bxor 6562 6563,.shr 5242 3,.bxor 6564 6565,.badd 6561 6566,.badd 6567 5236,.rotr 6555 17,.rotr 6555 19]
theorem subChecked101_7 : checkSteps target certificate.alias 6563 subOps101_7=true := by core033_kernel_decide
theorem subLength101_7 : subOps101_7.length=8 := by decide
theorem checked101 : checkSteps target certificate.alias 6507 QuotedFrameHashControllerIR.operations101=true := by
  have partition : QuotedFrameHashControllerIR.operations101=(subOps101_0++(subOps101_1++(subOps101_2++(subOps101_3++(subOps101_4++(subOps101_5++(subOps101_6++subOps101_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked101_0,subLength101_0]
  rw [check_steps_append,subChecked101_1,subLength101_1]
  rw [check_steps_append,subChecked101_2,subLength101_2]
  rw [check_steps_append,subChecked101_3,subLength101_3]
  rw [check_steps_append,subChecked101_4,subLength101_4]
  rw [check_steps_append,subChecked101_5,subLength101_5]
  rw [check_steps_append,subChecked101_6,subLength101_6]
  exact subChecked101_7
theorem length101 : QuotedFrameHashControllerIR.operations101.length=64 := by decide
end SegmentedFrameSharing
