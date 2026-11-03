import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps136_0 : List Op := [.bxor 8744 8746,.badd 8743 8747,.literal (BitVec.ofNat 32 3329325298),.badd 8748 8749,.badd 8750 7036,.rotr 8736 2,.rotr 8736 13,.bxor 8752 8753]
theorem subChecked136_0 : checkSteps target certificate.alias 8747 subOps136_0=true := by core033_kernel_decide
theorem subLength136_0 : subOps136_0.length=8 := by decide
def subOps136_1 : List Op := [.rotr 8736 22,.bxor 8754 8755,.band 8736 8709,.band 8736 8682,.bxor 8757 8758,.band 8709 8682,.bxor 8759 8760,.badd 8756 8761]
theorem subChecked136_1 : checkSteps target certificate.alias 8755 subOps136_1=true := by core033_kernel_decide
theorem subLength136_1 : subOps136_1.length=8 := by decide
def subOps136_2 : List Op := [.badd 8751 8762,.badd 8655 8751,.badd 1452 8763,.badd 1505 8736,.badd 1558 8709,.badd 1611 8682,.badd 1664 8764,.badd 1717 8737]
theorem subChecked136_2 : checkSteps target certificate.alias 8763 subOps136_2=true := by core033_kernel_decide
theorem subLength136_2 : subOps136_2.length=8 := by decide
def subOps136_3 : List Op := [.badd 1770 8710,.badd 1823 8683,.literal (BitVec.ofNat 32 2),.bxor 0 8773,.literal (BitVec.ofNat 32 0),.bnot 8775,.band 8774 8776,.literal (BitVec.ofNat 32 2)]
theorem subChecked136_3 : checkSteps target certificate.alias 8771 subOps136_3=true := by core033_kernel_decide
theorem subLength136_3 : subOps136_3.length=8 := by decide
def subOps136_4 : List Op := [.bxor 0 8778,.literal (BitVec.ofNat 32 0),.bnot 8780,.bxor 8779 8781,.literal (BitVec.ofNat 32 2),.bxor 0 8783,.literal (BitVec.ofNat 32 0),.bnot 8785]
theorem subChecked136_4 : checkSteps target certificate.alias 8779 subOps136_4=true := by core033_kernel_decide
theorem subLength136_4 : subOps136_4.length=8 := by decide
def subOps136_5 : List Op := [.badd 8784 8786,.bnot 8787,.band 8782 8788,.bxor 8777 8789,.shr 8790 31,.literal (BitVec.ofNat 32 1),.bxor 8791 8792,.bnot 8793]
theorem subChecked136_5 : checkSteps target certificate.alias 8787 subOps136_5=true := by core033_kernel_decide
theorem subLength136_5 : subOps136_5.length=8 := by decide
def subOps136_6 : List Op := [.literal (BitVec.ofNat 32 1),.badd 8794 8795,.literal (BitVec.ofNat 32 3),.band 8796 8797,.literal (BitVec.ofNat 32 2),.bxor 0 8799,.literal (BitVec.ofNat 32 0),.bnot 8801]
theorem subChecked136_6 : checkSteps target certificate.alias 8795 subOps136_6=true := by core033_kernel_decide
theorem subLength136_6 : subOps136_6.length=8 := by decide
def subOps136_7 : List Op := [.band 8800 8802,.literal (BitVec.ofNat 32 2),.bxor 0 8804,.literal (BitVec.ofNat 32 0),.bnot 8806,.bxor 8805 8807,.literal (BitVec.ofNat 32 2),.bxor 0 8809]
theorem subChecked136_7 : checkSteps target certificate.alias 8803 subOps136_7=true := by core033_kernel_decide
theorem subLength136_7 : subOps136_7.length=8 := by decide
theorem checked136 : checkSteps target certificate.alias 8747 QuotedFrameHashControllerIR.operations136=true := by
  have partition : QuotedFrameHashControllerIR.operations136=subOps136_0++subOps136_1++subOps136_2++subOps136_3++subOps136_4++subOps136_5++subOps136_6++subOps136_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked136_0,subLength136_0]
  rw [check_steps_append,subChecked136_1,subLength136_1]
  rw [check_steps_append,subChecked136_2,subLength136_2]
  rw [check_steps_append,subChecked136_3,subLength136_3]
  rw [check_steps_append,subChecked136_4,subLength136_4]
  rw [check_steps_append,subChecked136_5,subLength136_5]
  rw [check_steps_append,subChecked136_6,subLength136_6]
  exact subChecked136_7
theorem length136 : QuotedFrameHashControllerIR.operations136.length=64 := by decide
end SegmentedFrameSharing
