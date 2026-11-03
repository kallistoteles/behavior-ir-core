import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps137_0 : List Op := [.literal (BitVec.ofNat 32 0),.bnot 8811,.badd 8810 8812,.bnot 8813,.band 8808 8814,.bxor 8803 8815,.shr 8816 31,.literal (BitVec.ofNat 32 1)]
theorem subChecked137_0 : checkSteps target certificate.alias 8811 subOps137_0=true := by core033_kernel_decide
theorem subLength137_0 : subOps137_0.length=8 := by decide
def subOps137_1 : List Op := [.bxor 8817 8818,.bnot 8819,.literal (BitVec.ofNat 32 1),.badd 8820 8821,.bnot 8822,.literal (BitVec.ofNat 32 2),.band 8823 8824,.bxor 8798 8825]
theorem subChecked137_1 : checkSteps target certificate.alias 8819 subOps137_1=true := by core033_kernel_decide
theorem subLength137_1 : subOps137_1.length=8 := by decide
def subOps137_2 : List Op := [.literal (BitVec.ofNat 32 1),.bxor 0 8827,.literal (BitVec.ofNat 32 0),.bnot 8829,.band 8828 8830,.literal (BitVec.ofNat 32 1),.bxor 0 8832,.literal (BitVec.ofNat 32 0)]
theorem subChecked137_2 : checkSteps target certificate.alias 8827 subOps137_2=true := by core033_kernel_decide
theorem subLength137_2 : subOps137_2.length=8 := by decide
def subOps137_3 : List Op := [.bnot 8834,.bxor 8833 8835,.literal (BitVec.ofNat 32 1),.bxor 0 8837,.literal (BitVec.ofNat 32 0),.bnot 8839,.badd 8838 8840,.bnot 8841]
theorem subChecked137_3 : checkSteps target certificate.alias 8835 subOps137_3=true := by core033_kernel_decide
theorem subLength137_3 : subOps137_3.length=8 := by decide
def subOps137_4 : List Op := [.band 8836 8842,.bxor 8831 8843,.shr 8844 31,.literal (BitVec.ofNat 32 1),.bxor 8845 8846,.literal (BitVec.ofNat 32 2),.bxor 0 8848,.literal (BitVec.ofNat 32 0)]
theorem subChecked137_4 : checkSteps target certificate.alias 8843 subOps137_4=true := by core033_kernel_decide
theorem subLength137_4 : subOps137_4.length=8 := by decide
def subOps137_5 : List Op := [.bnot 8850,.band 8849 8851,.literal (BitVec.ofNat 32 2),.bxor 0 8853,.literal (BitVec.ofNat 32 0),.bnot 8855,.bxor 8854 8856,.literal (BitVec.ofNat 32 2)]
theorem subChecked137_5 : checkSteps target certificate.alias 8851 subOps137_5=true := by core033_kernel_decide
theorem subLength137_5 : subOps137_5.length=8 := by decide
def subOps137_6 : List Op := [.bxor 0 8858,.literal (BitVec.ofNat 32 0),.bnot 8860,.badd 8859 8861,.bnot 8862,.band 8857 8863,.bxor 8852 8864,.shr 8865 31]
theorem subChecked137_6 : checkSteps target certificate.alias 8859 subOps137_6=true := by core033_kernel_decide
theorem subLength137_6 : subOps137_6.length=8 := by decide
def subOps137_7 : List Op := [.literal (BitVec.ofNat 32 1),.bxor 8866 8867,.bxor 8847 8868]
theorem subChecked137_7 : checkSteps target certificate.alias 8867 subOps137_7=true := by core033_kernel_decide
theorem subLength137_7 : subOps137_7.length=3 := by decide
theorem checked137 : checkSteps target certificate.alias 8811 QuotedFrameHashControllerIR.operations137=true := by
  have partition : QuotedFrameHashControllerIR.operations137=subOps137_0++subOps137_1++subOps137_2++subOps137_3++subOps137_4++subOps137_5++subOps137_6++subOps137_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked137_0,subLength137_0]
  rw [check_steps_append,subChecked137_1,subLength137_1]
  rw [check_steps_append,subChecked137_2,subLength137_2]
  rw [check_steps_append,subChecked137_3,subLength137_3]
  rw [check_steps_append,subChecked137_4,subLength137_4]
  rw [check_steps_append,subChecked137_5,subLength137_5]
  rw [check_steps_append,subChecked137_6,subLength137_6]
  exact subChecked137_7
theorem length137 : QuotedFrameHashControllerIR.operations137.length=59 := by decide
end SegmentedFrameSharing
