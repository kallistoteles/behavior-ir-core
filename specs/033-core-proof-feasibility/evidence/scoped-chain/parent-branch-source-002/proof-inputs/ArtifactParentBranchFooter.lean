import ActualParentBranchIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactParentBranchFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250]
def chunk0 : Bytes := ("r000000eb, r000000ec, r000000ed, r000000ee, r000000ef, r000000f0, r000000f1, r000000f2, r000000f3, r000000f4, r000000f5, r000000f6, r000000f7, r000000f8, r000000f9, r000000fa, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [251,252,253,254,255,256,259,262,265,268,271,274,277,280,283,286]
def chunk1 : Bytes := ("r000000fb, r000000fc, r000000fd, r000000fe, r000000ff, r00000100, r00000103, r00000106, r00000109, r0000010c, r0000010f, r00000112, r00000115, r00000118, r0000011b, r0000011e, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [289,292,295,298,301,304,307,310,313,316,319,322,325,328,331,334]
def chunk2 : Bytes := ("r00000121, r00000124, r00000127, r0000012a, r0000012d, r00000130, r00000133, r00000136, r00000139, r0000013c, r0000013f, r00000142, r00000145, r00000148, r0000014b, r0000014e, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [337,340,343,346,349,352,355,358,361,364,367,370,373,376,379,382]
def chunk3 : Bytes := ("r00000151, r00000154, r00000157, r0000015a, r0000015d, r00000160, r00000163, r00000166, r00000169, r0000016c, r0000016f, r00000172, r00000175, r00000178, r0000017b, r0000017e, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [385,388,391,394,397,400,403,406,409,412,415,418,421,424,427,430]
def chunk4 : Bytes := ("r00000181, r00000184, r00000187, r0000018a, r0000018d, r00000190, r00000193, r00000196, r00000199, r0000019c, r0000019f, r000001a2, r000001a5, r000001a8, r000001ab, r000001ae, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [433,436,439,442,445,448,451,454,457,460,463,466,469,472,475,478]
def chunk5 : Bytes := ("r000001b1, r000001b4, r000001b7, r000001ba, r000001bd, r000001c0, r000001c3, r000001c6, r000001c9, r000001cc, r000001cf, r000001d2, r000001d5, r000001d8, r000001db, r000001de, " : String).toByteArray.data.toList
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [481,484,487,490,493,496,499,502,505,508,511,514,517,520,523,526]
def chunk6 : Bytes := ("r000001e1, r000001e4, r000001e7, r000001ea, r000001ed, r000001f0, r000001f3, r000001f6, r000001f9, r000001fc, r000001ff, r00000202, r00000205, r00000208, r0000020b, r0000020e, " : String).toByteArray.data.toList
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [529,532,535,562,580,598,616,637,682,807,160,180,198,216]
def chunk7 : Bytes := ("r00000211, r00000214, r00000217, r00000232, r00000244, r00000256, r00000268, r0000027d, r000002aa, r00000327, r000000a0, r000000b4, r000000c6, r000000d8, " : String).toByteArray.data.toList
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=154 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7]
def before : List Nat := parts.flatten
def lastIndex : Nat := 234
def lastBytes : Bytes := ("r000000ea" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualParentBranchIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1]
theorem checked : actualFooter=suffix ActualParentBranchIR.program.outputs ∧ actualFooter.length=1404 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2]
    decide
end ArtifactParentBranchFooter
