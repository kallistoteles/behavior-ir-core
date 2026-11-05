import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps129_0 : List Op := [.band 8277 8223,.bxor 8298 8299,.band 8250 8223,.bxor 8300 8301,.badd 8297 8302,.badd 8292 8303,.badd 8196 8292,.rotr 8305 6]
theorem subChecked129_0 : checkSteps target certificate.alias 8299 subOps129_0=true := by core033_kernel_decide
theorem subLength129_0 : subOps129_0.length=8 := by decide
def subOps129_1 : List Op := [.rotr 8305 11,.bxor 8306 8307,.rotr 8305 25,.bxor 8308 8309,.badd 8224 8310,.band 8305 8278,.bnot 8305,.band 8313 8251]
theorem subChecked129_1 : checkSteps target certificate.alias 8307 subOps129_1=true := by core033_kernel_decide
theorem subLength129_1 : subOps129_1.length=8 := by decide
def subOps129_2 : List Op := [.bxor 8312 8314,.badd 8311 8315,.literal (BitVec.ofNat 32 275423344),.badd 8316 8317,.badd 8318 6828,.rotr 8304 2,.rotr 8304 13,.bxor 8320 8321]
theorem subChecked129_2 : checkSteps target certificate.alias 8315 subOps129_2=true := by core033_kernel_decide
theorem subLength129_2 : subOps129_2.length=8 := by decide
def subOps129_3 : List Op := [.rotr 8304 22,.bxor 8322 8323,.band 8304 8277,.band 8304 8250,.bxor 8325 8326,.band 8277 8250,.bxor 8327 8328,.badd 8324 8329]
theorem subChecked129_3 : checkSteps target certificate.alias 8323 subOps129_3=true := by core033_kernel_decide
theorem subLength129_3 : subOps129_3.length=8 := by decide
def subOps129_4 : List Op := [.badd 8319 8330,.badd 8223 8319,.rotr 8332 6,.rotr 8332 11,.bxor 8333 8334,.rotr 8332 25,.bxor 8335 8336,.badd 8251 8337]
theorem subChecked129_4 : checkSteps target certificate.alias 8331 subOps129_4=true := by core033_kernel_decide
theorem subLength129_4 : subOps129_4.length=8 := by decide
def subOps129_5 : List Op := [.band 8332 8305,.bnot 8332,.band 8340 8278,.bxor 8339 8341,.badd 8338 8342,.literal (BitVec.ofNat 32 430227734),.badd 8343 8344,.badd 8345 6841]
theorem subChecked129_5 : checkSteps target certificate.alias 8339 subOps129_5=true := by core033_kernel_decide
theorem subLength129_5 : subOps129_5.length=8 := by decide
def subOps129_6 : List Op := [.rotr 8331 2,.rotr 8331 13,.bxor 8347 8348,.rotr 8331 22,.bxor 8349 8350,.band 8331 8304,.band 8331 8277,.bxor 8352 8353]
theorem subChecked129_6 : checkSteps target certificate.alias 8347 subOps129_6=true := by core033_kernel_decide
theorem subLength129_6 : subOps129_6.length=8 := by decide
def subOps129_7 : List Op := [.band 8304 8277,.bxor 8354 8355,.badd 8351 8356,.badd 8346 8357,.badd 8250 8346,.rotr 8359 6,.rotr 8359 11,.bxor 8360 8361]
theorem subChecked129_7 : checkSteps target certificate.alias 8355 subOps129_7=true := by core033_kernel_decide
theorem subLength129_7 : subOps129_7.length=8 := by decide
theorem checked129 : checkSteps target certificate.alias 8299 QuotedFrameHashControllerIR.operations129=true := by
  have partition : QuotedFrameHashControllerIR.operations129=(subOps129_0++(subOps129_1++(subOps129_2++(subOps129_3++(subOps129_4++(subOps129_5++(subOps129_6++subOps129_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked129_0,subLength129_0]
  rw [check_steps_append,subChecked129_1,subLength129_1]
  rw [check_steps_append,subChecked129_2,subLength129_2]
  rw [check_steps_append,subChecked129_3,subLength129_3]
  rw [check_steps_append,subChecked129_4,subLength129_4]
  rw [check_steps_append,subChecked129_5,subLength129_5]
  rw [check_steps_append,subChecked129_6,subLength129_6]
  exact subChecked129_7
theorem length129 : QuotedFrameHashControllerIR.operations129.length=64 := by decide
end SegmentedFrameSharing
