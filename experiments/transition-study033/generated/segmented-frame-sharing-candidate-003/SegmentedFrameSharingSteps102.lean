import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps102_0 : List Op := [.bxor 6569 6570,.shr 6555 10,.bxor 6571 6572,.badd 6573 6490,.rotr 5248 7,.rotr 5248 18,.bxor 6575 6576,.shr 5248 3]
theorem subChecked102_0 : checkSteps target certificate.alias 6571 subOps102_0=true := by core033_kernel_decide
theorem subLength102_0 : subOps102_0.length=8 := by decide
def subOps102_1 : List Op := [.bxor 6577 6578,.badd 6574 6579,.badd 6580 5242,.rotr 6568 17,.rotr 6568 19,.bxor 6582 6583,.shr 6568 10,.bxor 6584 6585]
theorem subChecked102_1 : checkSteps target certificate.alias 6579 subOps102_1=true := by core033_kernel_decide
theorem subLength102_1 : subOps102_1.length=8 := by decide
def subOps102_2 : List Op := [.badd 6586 6503,.rotr 5254 7,.rotr 5254 18,.bxor 6588 6589,.shr 5254 3,.bxor 6590 6591,.badd 6587 6592,.badd 6593 5248]
theorem subChecked102_2 : checkSteps target certificate.alias 6587 subOps102_2=true := by core033_kernel_decide
theorem subLength102_2 : subOps102_2.length=8 := by decide
def subOps102_3 : List Op := [.rotr 6581 17,.rotr 6581 19,.bxor 6595 6596,.shr 6581 10,.bxor 6597 6598,.badd 6599 6516,.rotr 5260 7,.rotr 5260 18]
theorem subChecked102_3 : checkSteps target certificate.alias 6595 subOps102_3=true := by core033_kernel_decide
theorem subLength102_3 : subOps102_3.length=8 := by decide
def subOps102_4 : List Op := [.bxor 6601 6602,.shr 5260 3,.bxor 6603 6604,.badd 6600 6605,.badd 6606 5254,.rotr 6594 17,.rotr 6594 19,.bxor 6608 6609]
theorem subChecked102_4 : checkSteps target certificate.alias 6603 subOps102_4=true := by core033_kernel_decide
theorem subLength102_4 : subOps102_4.length=8 := by decide
def subOps102_5 : List Op := [.shr 6594 10,.bxor 6610 6611,.badd 6612 6529,.rotr 6425 7,.rotr 6425 18,.bxor 6614 6615,.shr 6425 3,.bxor 6616 6617]
theorem subChecked102_5 : checkSteps target certificate.alias 6611 subOps102_5=true := by core033_kernel_decide
theorem subLength102_5 : subOps102_5.length=8 := by decide
def subOps102_6 : List Op := [.badd 6613 6618,.badd 6619 5260,.rotr 6607 17,.rotr 6607 19,.bxor 6621 6622,.shr 6607 10,.bxor 6623 6624,.badd 6625 6542]
theorem subChecked102_6 : checkSteps target certificate.alias 6619 subOps102_6=true := by core033_kernel_decide
theorem subLength102_6 : subOps102_6.length=8 := by decide
def subOps102_7 : List Op := [.rotr 6438 7,.rotr 6438 18,.bxor 6627 6628,.shr 6438 3,.bxor 6629 6630,.badd 6626 6631,.badd 6632 6425,.rotr 6620 17]
theorem subChecked102_7 : checkSteps target certificate.alias 6627 subOps102_7=true := by core033_kernel_decide
theorem subLength102_7 : subOps102_7.length=8 := by decide
theorem checked102 : checkSteps target certificate.alias 6571 QuotedFrameHashControllerIR.operations102=true := by
  have partition : QuotedFrameHashControllerIR.operations102=(subOps102_0++(subOps102_1++(subOps102_2++(subOps102_3++(subOps102_4++(subOps102_5++(subOps102_6++subOps102_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked102_0,subLength102_0]
  rw [check_steps_append,subChecked102_1,subLength102_1]
  rw [check_steps_append,subChecked102_2,subLength102_2]
  rw [check_steps_append,subChecked102_3,subLength102_3]
  rw [check_steps_append,subChecked102_4,subLength102_4]
  rw [check_steps_append,subChecked102_5,subLength102_5]
  rw [check_steps_append,subChecked102_6,subLength102_6]
  exact subChecked102_7
theorem length102 : QuotedFrameHashControllerIR.operations102.length=64 := by decide
end SegmentedFrameSharing
