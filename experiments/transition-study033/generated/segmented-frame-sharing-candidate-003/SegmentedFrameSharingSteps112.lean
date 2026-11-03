import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps112_0 : List Op := [.badd 7209 7210,.badd 7211 5206,.rotr 7197 2,.rotr 7197 13,.bxor 7213 7214,.rotr 7197 22,.bxor 7215 7216,.band 7197 7170]
theorem subChecked112_0 : checkSteps target certificate.alias 7211 subOps112_0=true := by core033_kernel_decide
theorem subLength112_0 : subOps112_0.length=8 := by decide
def subOps112_1 : List Op := [.band 7197 7143,.bxor 7218 7219,.band 7170 7143,.bxor 7220 7221,.badd 7217 7222,.badd 7212 7223,.badd 7116 7212,.rotr 7225 6]
theorem subChecked112_1 : checkSteps target certificate.alias 7219 subOps112_1=true := by core033_kernel_decide
theorem subLength112_1 : subOps112_1.length=8 := by decide
def subOps112_2 : List Op := [.rotr 7225 11,.bxor 7226 7227,.rotr 7225 25,.bxor 7228 7229,.badd 7144 7230,.band 7225 7198,.bnot 7225,.band 7233 7171]
theorem subChecked112_2 : checkSteps target certificate.alias 7227 subOps112_2=true := by core033_kernel_decide
theorem subLength112_2 : subOps112_2.length=8 := by decide
def subOps112_3 : List Op := [.bxor 7232 7234,.badd 7231 7235,.literal (BitVec.ofNat 32 2870763221),.badd 7236 7237,.badd 7238 5212,.rotr 7224 2,.rotr 7224 13,.bxor 7240 7241]
theorem subChecked112_3 : checkSteps target certificate.alias 7235 subOps112_3=true := by core033_kernel_decide
theorem subLength112_3 : subOps112_3.length=8 := by decide
def subOps112_4 : List Op := [.rotr 7224 22,.bxor 7242 7243,.band 7224 7197,.band 7224 7170,.bxor 7245 7246,.band 7197 7170,.bxor 7247 7248,.badd 7244 7249]
theorem subChecked112_4 : checkSteps target certificate.alias 7243 subOps112_4=true := by core033_kernel_decide
theorem subLength112_4 : subOps112_4.length=8 := by decide
def subOps112_5 : List Op := [.badd 7239 7250,.badd 7143 7239,.rotr 7252 6,.rotr 7252 11,.bxor 7253 7254,.rotr 7252 25,.bxor 7255 7256,.badd 7171 7257]
theorem subChecked112_5 : checkSteps target certificate.alias 7251 subOps112_5=true := by core033_kernel_decide
theorem subLength112_5 : subOps112_5.length=8 := by decide
def subOps112_6 : List Op := [.band 7252 7225,.bnot 7252,.band 7260 7198,.bxor 7259 7261,.badd 7258 7262,.literal (BitVec.ofNat 32 3624381080),.badd 7263 7264,.badd 7265 5218]
theorem subChecked112_6 : checkSteps target certificate.alias 7259 subOps112_6=true := by core033_kernel_decide
theorem subLength112_6 : subOps112_6.length=8 := by decide
def subOps112_7 : List Op := [.rotr 7251 2,.rotr 7251 13,.bxor 7267 7268,.rotr 7251 22,.bxor 7269 7270,.band 7251 7224,.band 7251 7197,.bxor 7272 7273]
theorem subChecked112_7 : checkSteps target certificate.alias 7267 subOps112_7=true := by core033_kernel_decide
theorem subLength112_7 : subOps112_7.length=8 := by decide
theorem checked112 : checkSteps target certificate.alias 7211 QuotedFrameHashControllerIR.operations112=true := by
  have partition : QuotedFrameHashControllerIR.operations112=(subOps112_0++(subOps112_1++(subOps112_2++(subOps112_3++(subOps112_4++(subOps112_5++(subOps112_6++subOps112_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked112_0,subLength112_0]
  rw [check_steps_append,subChecked112_1,subLength112_1]
  rw [check_steps_append,subChecked112_2,subLength112_2]
  rw [check_steps_append,subChecked112_3,subLength112_3]
  rw [check_steps_append,subChecked112_4,subLength112_4]
  rw [check_steps_append,subChecked112_5,subLength112_5]
  rw [check_steps_append,subChecked112_6,subLength112_6]
  exact subChecked112_7
theorem length112 : QuotedFrameHashControllerIR.operations112.length=64 := by decide
end SegmentedFrameSharing
