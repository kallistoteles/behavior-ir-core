import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps127_0 : List Op := [.rotr 8170 6,.rotr 8170 11,.bxor 8171 8172,.rotr 8170 25,.bxor 8173 8174,.badd 8089 8175,.band 8170 8143,.bnot 8170]
theorem subChecked127_0 : checkSteps target certificate.alias 8171 subOps127_0=true := by core033_kernel_decide
theorem subLength127_0 : subOps127_0.length=8 := by decide
def subOps127_1 : List Op := [.band 8178 8116,.bxor 8177 8179,.badd 8176 8180,.literal (BitVec.ofNat 32 3259730800),.badd 8181 8182,.badd 8183 6763,.rotr 8169 2,.rotr 8169 13]
theorem subChecked127_1 : checkSteps target certificate.alias 8179 subOps127_1=true := by core033_kernel_decide
theorem subLength127_1 : subOps127_1.length=8 := by decide
def subOps127_2 : List Op := [.bxor 8185 8186,.rotr 8169 22,.bxor 8187 8188,.band 8169 8142,.band 8169 8115,.bxor 8190 8191,.band 8142 8115,.bxor 8192 8193]
theorem subChecked127_2 : checkSteps target certificate.alias 8187 subOps127_2=true := by core033_kernel_decide
theorem subLength127_2 : subOps127_2.length=8 := by decide
def subOps127_3 : List Op := [.badd 8189 8194,.badd 8184 8195,.badd 8088 8184,.rotr 8197 6,.rotr 8197 11,.bxor 8198 8199,.rotr 8197 25,.bxor 8200 8201]
theorem subChecked127_3 : checkSteps target certificate.alias 8195 subOps127_3=true := by core033_kernel_decide
theorem subLength127_3 : subOps127_3.length=8 := by decide
def subOps127_4 : List Op := [.badd 8116 8202,.band 8197 8170,.bnot 8197,.band 8205 8143,.bxor 8204 8206,.badd 8203 8207,.literal (BitVec.ofNat 32 3345764771),.badd 8208 8209]
theorem subChecked127_4 : checkSteps target certificate.alias 8203 subOps127_4=true := by core033_kernel_decide
theorem subLength127_4 : subOps127_4.length=8 := by decide
def subOps127_5 : List Op := [.badd 8210 6776,.rotr 8196 2,.rotr 8196 13,.bxor 8212 8213,.rotr 8196 22,.bxor 8214 8215,.band 8196 8169,.band 8196 8142]
theorem subChecked127_5 : checkSteps target certificate.alias 8211 subOps127_5=true := by core033_kernel_decide
theorem subLength127_5 : subOps127_5.length=8 := by decide
def subOps127_6 : List Op := [.bxor 8217 8218,.band 8169 8142,.bxor 8219 8220,.badd 8216 8221,.badd 8211 8222,.badd 8115 8211,.rotr 8224 6,.rotr 8224 11]
theorem subChecked127_6 : checkSteps target certificate.alias 8219 subOps127_6=true := by core033_kernel_decide
theorem subLength127_6 : subOps127_6.length=8 := by decide
def subOps127_7 : List Op := [.bxor 8225 8226,.rotr 8224 25,.bxor 8227 8228,.badd 8143 8229,.band 8224 8197,.bnot 8224,.band 8232 8170,.bxor 8231 8233]
theorem subChecked127_7 : checkSteps target certificate.alias 8227 subOps127_7=true := by core033_kernel_decide
theorem subLength127_7 : subOps127_7.length=8 := by decide
theorem checked127 : checkSteps target certificate.alias 8171 QuotedFrameHashControllerIR.operations127=true := by
  have partition : QuotedFrameHashControllerIR.operations127=(subOps127_0++(subOps127_1++(subOps127_2++(subOps127_3++(subOps127_4++(subOps127_5++(subOps127_6++subOps127_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked127_0,subLength127_0]
  rw [check_steps_append,subChecked127_1,subLength127_1]
  rw [check_steps_append,subChecked127_2,subLength127_2]
  rw [check_steps_append,subChecked127_3,subLength127_3]
  rw [check_steps_append,subChecked127_4,subLength127_4]
  rw [check_steps_append,subChecked127_5,subLength127_5]
  rw [check_steps_append,subChecked127_6,subLength127_6]
  exact subChecked127_7
theorem length127 : QuotedFrameHashControllerIR.operations127.length=64 := by decide
end SegmentedFrameSharing
