import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps126_0 : List Op := [.rotr 8088 22,.bxor 8106 8107,.band 8088 8061,.band 8088 8034,.bxor 8109 8110,.band 8061 8034,.bxor 8111 8112,.badd 8108 8113]
theorem subChecked126_0 : checkSteps target certificate.alias 8107 subOps126_0=true := by core033_kernel_decide
theorem subLength126_0 : subOps126_0.length=8 := by decide
def subOps126_1 : List Op := [.badd 8103 8114,.badd 8007 8103,.rotr 8116 6,.rotr 8116 11,.bxor 8117 8118,.rotr 8116 25,.bxor 8119 8120,.badd 8035 8121]
theorem subChecked126_1 : checkSteps target certificate.alias 8115 subOps126_1=true := by core033_kernel_decide
theorem subLength126_1 : subOps126_1.length=8 := by decide
def subOps126_2 : List Op := [.band 8116 8089,.bnot 8116,.band 8124 8062,.bxor 8123 8125,.badd 8122 8126,.literal (BitVec.ofNat 32 2730485921),.badd 8127 8128,.badd 8129 6737]
theorem subChecked126_2 : checkSteps target certificate.alias 8123 subOps126_2=true := by core033_kernel_decide
theorem subLength126_2 : subOps126_2.length=8 := by decide
def subOps126_3 : List Op := [.rotr 8115 2,.rotr 8115 13,.bxor 8131 8132,.rotr 8115 22,.bxor 8133 8134,.band 8115 8088,.band 8115 8061,.bxor 8136 8137]
theorem subChecked126_3 : checkSteps target certificate.alias 8131 subOps126_3=true := by core033_kernel_decide
theorem subLength126_3 : subOps126_3.length=8 := by decide
def subOps126_4 : List Op := [.band 8088 8061,.bxor 8138 8139,.badd 8135 8140,.badd 8130 8141,.badd 8034 8130,.rotr 8143 6,.rotr 8143 11,.bxor 8144 8145]
theorem subChecked126_4 : checkSteps target certificate.alias 8139 subOps126_4=true := by core033_kernel_decide
theorem subLength126_4 : subOps126_4.length=8 := by decide
def subOps126_5 : List Op := [.rotr 8143 25,.bxor 8146 8147,.badd 8062 8148,.band 8143 8116,.bnot 8143,.band 8151 8089,.bxor 8150 8152,.badd 8149 8153]
theorem subChecked126_5 : checkSteps target certificate.alias 8147 subOps126_5=true := by core033_kernel_decide
theorem subLength126_5 : subOps126_5.length=8 := by decide
def subOps126_6 : List Op := [.literal (BitVec.ofNat 32 2820302411),.badd 8154 8155,.badd 8156 6750,.rotr 8142 2,.rotr 8142 13,.bxor 8158 8159,.rotr 8142 22,.bxor 8160 8161]
theorem subChecked126_6 : checkSteps target certificate.alias 8155 subOps126_6=true := by core033_kernel_decide
theorem subLength126_6 : subOps126_6.length=8 := by decide
def subOps126_7 : List Op := [.band 8142 8115,.band 8142 8088,.bxor 8163 8164,.band 8115 8088,.bxor 8165 8166,.badd 8162 8167,.badd 8157 8168,.badd 8061 8157]
theorem subChecked126_7 : checkSteps target certificate.alias 8163 subOps126_7=true := by core033_kernel_decide
theorem subLength126_7 : subOps126_7.length=8 := by decide
theorem checked126 : checkSteps target certificate.alias 8107 QuotedFrameHashControllerIR.operations126=true := by
  have partition : QuotedFrameHashControllerIR.operations126=subOps126_0++subOps126_1++subOps126_2++subOps126_3++subOps126_4++subOps126_5++subOps126_6++subOps126_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked126_0,subLength126_0]
  rw [check_steps_append,subChecked126_1,subLength126_1]
  rw [check_steps_append,subChecked126_2,subLength126_2]
  rw [check_steps_append,subChecked126_3,subLength126_3]
  rw [check_steps_append,subChecked126_4,subLength126_4]
  rw [check_steps_append,subChecked126_5,subLength126_5]
  rw [check_steps_append,subChecked126_6,subLength126_6]
  exact subChecked126_7
theorem length126 : QuotedFrameHashControllerIR.operations126.length=64 := by decide
end SegmentedFrameSharing
