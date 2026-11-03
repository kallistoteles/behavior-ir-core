import Core033.SourceParameters
import Core033.KernelDecide
namespace ArtifactDigestVectorHeader
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
def parameters : List Bytes := [line0,line1,line2,line3,line4,line5,line6,line7,line8,line9,line10,line11,line12,line13,line14,line15]
def preamble : Bytes := ("pub fn checker_step(\n" : String).toByteArray.data.toList
def ending : Bytes := (") -> [u32; 0x00000001_usize] {\n" : String).toByteArray.data.toList
def actualHeader : Bytes := preamble++parameters.flatten++ending
theorem preambleChecked : preamble=Codec.textBytes "pub fn checker_step(\n" ∧ preamble.length=21 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes ") -> [u32; 0x"++hexDigits 8 1++Codec.textBytes "_usize] {\n" ∧ ending.length=31 := by core033_kernel_decide
theorem parameterChain : SourceParameters.Chain 0 parameters := by
  unfold parameters
  exact (.cons _ _ _ lineChecked0.1 (.cons _ _ _ lineChecked1.1 (.cons _ _ _ lineChecked2.1 (.cons _ _ _ lineChecked3.1 (.cons _ _ _ lineChecked4.1 (.cons _ _ _ lineChecked5.1 (.cons _ _ _ lineChecked6.1 (.cons _ _ _ lineChecked7.1 (.cons _ _ _ lineChecked8.1 (.cons _ _ _ lineChecked9.1 (.cons _ _ _ lineChecked10.1 (.cons _ _ _ lineChecked11.1 (.cons _ _ _ lineChecked12.1 (.cons _ _ _ lineChecked13.1 (.cons _ _ _ lineChecked14.1 (.cons _ _ _ lineChecked15.1 (.empty _)))))))))))))))))
theorem checked : actualHeader=headerBytes 16 1 ∧ actualHeader.length=372 := by
  constructor
  · unfold actualHeader headerBytes
    rw [preambleChecked.1,SourceParameters.chain_exact parameterChain,endingChecked.1]
    rfl
  · simp only [actualHeader,List.length_append,WordSource.chunk_sizes_exact,parameters,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,preambleChecked.2,endingChecked.2,lineChecked0.2,lineChecked1.2,lineChecked2.2,lineChecked3.2,lineChecked4.2,lineChecked5.2,lineChecked6.2,lineChecked7.2,lineChecked8.2,lineChecked9.2,lineChecked10.2,lineChecked11.2,lineChecked12.2,lineChecked13.2,lineChecked14.2,lineChecked15.2]
    decide
end ArtifactDigestVectorHeader
