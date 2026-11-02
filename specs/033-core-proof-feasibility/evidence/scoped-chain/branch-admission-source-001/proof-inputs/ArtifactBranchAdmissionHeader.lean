import Core033.SourceParameters
import Core033.KernelDecide
namespace ArtifactBranchAdmissionHeader
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def line0 : Bytes := ("    r00000000: u32,\n" : String).toByteArray.data.toList
theorem lineChecked0 : line0=parameterBytes 0 1 ∧ line0.length=20 := by core033_kernel_decide
def line1 : Bytes := ("    r00000001: u32,\n" : String).toByteArray.data.toList
theorem lineChecked1 : line1=parameterBytes 1 1 ∧ line1.length=20 := by core033_kernel_decide
def line2 : Bytes := ("    r00000002: u32,\n" : String).toByteArray.data.toList
theorem lineChecked2 : line2=parameterBytes 2 1 ∧ line2.length=20 := by core033_kernel_decide
def line3 : Bytes := ("    r00000003: u32,\n" : String).toByteArray.data.toList
theorem lineChecked3 : line3=parameterBytes 3 1 ∧ line3.length=20 := by core033_kernel_decide
def line4 : Bytes := ("    r00000004: u32,\n" : String).toByteArray.data.toList
theorem lineChecked4 : line4=parameterBytes 4 1 ∧ line4.length=20 := by core033_kernel_decide
def line5 : Bytes := ("    r00000005: u32,\n" : String).toByteArray.data.toList
theorem lineChecked5 : line5=parameterBytes 5 1 ∧ line5.length=20 := by core033_kernel_decide
def line6 : Bytes := ("    r00000006: u32,\n" : String).toByteArray.data.toList
theorem lineChecked6 : line6=parameterBytes 6 1 ∧ line6.length=20 := by core033_kernel_decide
def line7 : Bytes := ("    r00000007: u32,\n" : String).toByteArray.data.toList
theorem lineChecked7 : line7=parameterBytes 7 1 ∧ line7.length=20 := by core033_kernel_decide
def line8 : Bytes := ("    r00000008: u32,\n" : String).toByteArray.data.toList
theorem lineChecked8 : line8=parameterBytes 8 1 ∧ line8.length=20 := by core033_kernel_decide
def line9 : Bytes := ("    r00000009: u32,\n" : String).toByteArray.data.toList
theorem lineChecked9 : line9=parameterBytes 9 1 ∧ line9.length=20 := by core033_kernel_decide
def line10 : Bytes := ("    r0000000a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked10 : line10=parameterBytes 10 1 ∧ line10.length=20 := by core033_kernel_decide
def line11 : Bytes := ("    r0000000b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked11 : line11=parameterBytes 11 1 ∧ line11.length=20 := by core033_kernel_decide
def line12 : Bytes := ("    r0000000c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked12 : line12=parameterBytes 12 1 ∧ line12.length=20 := by core033_kernel_decide
def line13 : Bytes := ("    r0000000d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked13 : line13=parameterBytes 13 1 ∧ line13.length=20 := by core033_kernel_decide
def line14 : Bytes := ("    r0000000e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked14 : line14=parameterBytes 14 1 ∧ line14.length=20 := by core033_kernel_decide
def line15 : Bytes := ("    r0000000f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked15 : line15=parameterBytes 15 1 ∧ line15.length=20 := by core033_kernel_decide
def line16 : Bytes := ("    r00000010: u32,\n" : String).toByteArray.data.toList
theorem lineChecked16 : line16=parameterBytes 16 1 ∧ line16.length=20 := by core033_kernel_decide
def line17 : Bytes := ("    r00000011: u32,\n" : String).toByteArray.data.toList
theorem lineChecked17 : line17=parameterBytes 17 1 ∧ line17.length=20 := by core033_kernel_decide
def line18 : Bytes := ("    r00000012: u32,\n" : String).toByteArray.data.toList
theorem lineChecked18 : line18=parameterBytes 18 1 ∧ line18.length=20 := by core033_kernel_decide
def line19 : Bytes := ("    r00000013: u32,\n" : String).toByteArray.data.toList
theorem lineChecked19 : line19=parameterBytes 19 1 ∧ line19.length=20 := by core033_kernel_decide
def line20 : Bytes := ("    r00000014: u32,\n" : String).toByteArray.data.toList
theorem lineChecked20 : line20=parameterBytes 20 1 ∧ line20.length=20 := by core033_kernel_decide
def line21 : Bytes := ("    r00000015: u32,\n" : String).toByteArray.data.toList
theorem lineChecked21 : line21=parameterBytes 21 1 ∧ line21.length=20 := by core033_kernel_decide
def line22 : Bytes := ("    r00000016: u32,\n" : String).toByteArray.data.toList
theorem lineChecked22 : line22=parameterBytes 22 1 ∧ line22.length=20 := by core033_kernel_decide
def line23 : Bytes := ("    r00000017: u32,\n" : String).toByteArray.data.toList
theorem lineChecked23 : line23=parameterBytes 23 1 ∧ line23.length=20 := by core033_kernel_decide
def line24 : Bytes := ("    r00000018: u32,\n" : String).toByteArray.data.toList
theorem lineChecked24 : line24=parameterBytes 24 1 ∧ line24.length=20 := by core033_kernel_decide
def line25 : Bytes := ("    r00000019: u32,\n" : String).toByteArray.data.toList
theorem lineChecked25 : line25=parameterBytes 25 1 ∧ line25.length=20 := by core033_kernel_decide
def parameters : List Bytes := [line0,line1,line2,line3,line4,line5,line6,line7,line8,line9,line10,line11,line12,line13,line14,line15,line16,line17,line18,line19,line20,line21,line22,line23,line24,line25]
def preamble : Bytes := ("pub fn checker_step(\n" : String).toByteArray.data.toList
def ending : Bytes := (") -> [u32; 0x00000007_usize] {\n" : String).toByteArray.data.toList
def actualHeader : Bytes := preamble++parameters.flatten++ending
theorem preambleChecked : preamble=Codec.textBytes "pub fn checker_step(\n" ∧ preamble.length=21 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes ") -> [u32; 0x"++hexDigits 8 7++Codec.textBytes "_usize] {\n" ∧ ending.length=31 := by core033_kernel_decide
theorem parameterChain : SourceParameters.Chain 0 parameters := by
  unfold parameters
  exact (.cons _ _ _ lineChecked0.1 (.cons _ _ _ lineChecked1.1 (.cons _ _ _ lineChecked2.1 (.cons _ _ _ lineChecked3.1 (.cons _ _ _ lineChecked4.1 (.cons _ _ _ lineChecked5.1 (.cons _ _ _ lineChecked6.1 (.cons _ _ _ lineChecked7.1 (.cons _ _ _ lineChecked8.1 (.cons _ _ _ lineChecked9.1 (.cons _ _ _ lineChecked10.1 (.cons _ _ _ lineChecked11.1 (.cons _ _ _ lineChecked12.1 (.cons _ _ _ lineChecked13.1 (.cons _ _ _ lineChecked14.1 (.cons _ _ _ lineChecked15.1 (.cons _ _ _ lineChecked16.1 (.cons _ _ _ lineChecked17.1 (.cons _ _ _ lineChecked18.1 (.cons _ _ _ lineChecked19.1 (.cons _ _ _ lineChecked20.1 (.cons _ _ _ lineChecked21.1 (.cons _ _ _ lineChecked22.1 (.cons _ _ _ lineChecked23.1 (.cons _ _ _ lineChecked24.1 (.cons _ _ _ lineChecked25.1 (.empty _)))))))))))))))))))))))))))
theorem checked : actualHeader=headerBytes 26 7 ∧ actualHeader.length=572 := by
  constructor
  · unfold actualHeader headerBytes
    rw [preambleChecked.1,SourceParameters.chain_exact parameterChain,endingChecked.1]
    rfl
  · simp only [actualHeader,List.length_append,WordSource.chunk_sizes_exact,parameters,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,preambleChecked.2,endingChecked.2,lineChecked0.2,lineChecked1.2,lineChecked2.2,lineChecked3.2,lineChecked4.2,lineChecked5.2,lineChecked6.2,lineChecked7.2,lineChecked8.2,lineChecked9.2,lineChecked10.2,lineChecked11.2,lineChecked12.2,lineChecked13.2,lineChecked14.2,lineChecked15.2,lineChecked16.2,lineChecked17.2,lineChecked18.2,lineChecked19.2,lineChecked20.2,lineChecked21.2,lineChecked22.2,lineChecked23.2,lineChecked24.2,lineChecked25.2]
    decide
end ArtifactBranchAdmissionHeader
