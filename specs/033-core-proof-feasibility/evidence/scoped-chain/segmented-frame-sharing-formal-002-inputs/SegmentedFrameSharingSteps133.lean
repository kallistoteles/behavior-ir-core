import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps133_0 : List Op := [.band 8548 8521,.bnot 8548,.band 8556 8494,.bxor 8555 8557,.badd 8554 8558,.literal (BitVec.ofNat 32 1955562222),.badd 8559 8560,.badd 8561 6945]
theorem subChecked133_0 : checkSteps target certificate.alias 8555 subOps133_0=true := by core033_kernel_decide
theorem subLength133_0 : subOps133_0.length=8 := by decide
def subOps133_1 : List Op := [.rotr 8547 2,.rotr 8547 13,.bxor 8563 8564,.rotr 8547 22,.bxor 8565 8566,.band 8547 8520,.band 8547 8493,.bxor 8568 8569]
theorem subChecked133_1 : checkSteps target certificate.alias 8563 subOps133_1=true := by core033_kernel_decide
theorem subLength133_1 : subOps133_1.length=8 := by decide
def subOps133_2 : List Op := [.band 8520 8493,.bxor 8570 8571,.badd 8567 8572,.badd 8562 8573,.badd 8466 8562,.rotr 8575 6,.rotr 8575 11,.bxor 8576 8577]
theorem subChecked133_2 : checkSteps target certificate.alias 8571 subOps133_2=true := by core033_kernel_decide
theorem subLength133_2 : subOps133_2.length=8 := by decide
def subOps133_3 : List Op := [.rotr 8575 25,.bxor 8578 8579,.badd 8494 8580,.band 8575 8548,.bnot 8575,.band 8583 8521,.bxor 8582 8584,.badd 8581 8585]
theorem subChecked133_3 : checkSteps target certificate.alias 8579 subOps133_3=true := by core033_kernel_decide
theorem subLength133_3 : subOps133_3.length=8 := by decide
def subOps133_4 : List Op := [.literal (BitVec.ofNat 32 2024104815),.badd 8586 8587,.badd 8588 6958,.rotr 8574 2,.rotr 8574 13,.bxor 8590 8591,.rotr 8574 22,.bxor 8592 8593]
theorem subChecked133_4 : checkSteps target certificate.alias 8587 subOps133_4=true := by core033_kernel_decide
theorem subLength133_4 : subOps133_4.length=8 := by decide
def subOps133_5 : List Op := [.band 8574 8547,.band 8574 8520,.bxor 8595 8596,.band 8547 8520,.bxor 8597 8598,.badd 8594 8599,.badd 8589 8600,.badd 8493 8589]
theorem subChecked133_5 : checkSteps target certificate.alias 8595 subOps133_5=true := by core033_kernel_decide
theorem subLength133_5 : subOps133_5.length=8 := by decide
def subOps133_6 : List Op := [.rotr 8602 6,.rotr 8602 11,.bxor 8603 8604,.rotr 8602 25,.bxor 8605 8606,.badd 8521 8607,.band 8602 8575,.bnot 8602]
theorem subChecked133_6 : checkSteps target certificate.alias 8603 subOps133_6=true := by core033_kernel_decide
theorem subLength133_6 : subOps133_6.length=8 := by decide
def subOps133_7 : List Op := [.band 8610 8548,.bxor 8609 8611,.badd 8608 8612,.literal (BitVec.ofNat 32 2227730452),.badd 8613 8614,.badd 8615 6971,.rotr 8601 2,.rotr 8601 13]
theorem subChecked133_7 : checkSteps target certificate.alias 8611 subOps133_7=true := by core033_kernel_decide
theorem subLength133_7 : subOps133_7.length=8 := by decide
theorem checked133 : checkSteps target certificate.alias 8555 QuotedFrameHashControllerIR.operations133=true := by
  have partition : QuotedFrameHashControllerIR.operations133=subOps133_0++subOps133_1++subOps133_2++subOps133_3++subOps133_4++subOps133_5++subOps133_6++subOps133_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked133_0,subLength133_0]
  rw [check_steps_append,subChecked133_1,subLength133_1]
  rw [check_steps_append,subChecked133_2,subLength133_2]
  rw [check_steps_append,subChecked133_3,subLength133_3]
  rw [check_steps_append,subChecked133_4,subLength133_4]
  rw [check_steps_append,subChecked133_5,subLength133_5]
  rw [check_steps_append,subChecked133_6,subLength133_6]
  exact subChecked133_7
theorem length133 : QuotedFrameHashControllerIR.operations133.length=64 := by decide
end SegmentedFrameSharing
