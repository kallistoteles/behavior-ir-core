import ActualPairedPathFinalizeIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
import Core033.SourceReturns
namespace ArtifactPairedPathFinalizeSourceFooter
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
open SourceReturns
def indices0 : List Nat := [96,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
def chunk0 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000060, r00000001, r00000002, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r0000000b, r0000000c, r0000000d, r0000000e, r0000000f, " : String)
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
def chunk1 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000010, r00000011, r00000012, r00000013, r00000014, r00000015, r00000016, r00000017, r00000018, r00000019, r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, " : String)
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
def chunk2 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000020, r00000021, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r0000002b, r0000002c, r0000002d, r0000002e, r0000002f, " : String)
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
def chunk3 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000030, r00000031, r00000032, r00000033, r00000034, r00000035, r00000036, r00000037, r00000038, r00000039, r0000003a, r0000003b, r0000003c, r0000003d, r0000003e, r0000003f, " : String)
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
def chunk4 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000040, r00000041, r00000042, r00000043, r00000044, r00000045, r00000046, r00000047, r00000048, r00000049, r0000004a, r0000004b, r0000004c, r0000004d, r0000004e, r0000004f, " : String)
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
def chunk5 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000050, r00000051, r00000052, r00000053, r00000054, r00000055, r00000056, r00000057, r00000058, r00000059, r0000005a, r0000005b, r0000005c, r0000005d, r0000005e, r0000005f, " : String)
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [117,138,156,174,192,210,228,246,264,282,300,318,339,360,381]
def chunk6 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000075, r0000008a, r0000009c, r000000ae, r000000c0, r000000d2, r000000e4, r000000f6, r00000108, r0000011a, r0000012c, r0000013e, r00000153, r00000168, r0000017d, " : String)
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=165 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6]
def before : List Nat := parts.flatten
def lastIndex : Nat := 402
def lastBytes : Bytes := Core033.SourceLiteralBytes.quoted ("r00000192" : String)
def opening : Bytes := Core033.SourceLiteralBytes.quoted ("    [" : String)
def ending : Bytes := Core033.SourceLiteralBytes.quoted ("]\n}\n" : String)
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualPairedPathFinalizeIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1]
theorem checked : actualFooter=suffix ActualPairedPathFinalizeIR.program.outputs ∧ actualFooter.length=1239 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2]
    decide
end ArtifactPairedPathFinalizeSourceFooter
