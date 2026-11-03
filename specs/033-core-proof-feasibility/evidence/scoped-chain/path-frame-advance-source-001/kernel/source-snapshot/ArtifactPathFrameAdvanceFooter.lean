import ActualPathFrameAdvanceIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactPathFrameAdvanceFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [367,1,309,3,4,5,6,7,8,9,10,49,56,63,70,77]
def chunk0 : Bytes := ("r0000016f, r00000001, r00000135, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r00000031, r00000038, r0000003f, r00000046, r0000004d, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [84,91,98,19,20,21,22,23,24,25,26,99,108,29,30,234]
def chunk1 : Bytes := ("r00000054, r0000005b, r00000062, r00000013, r00000014, r00000015, r00000016, r00000017, r00000018, r00000019, r0000001a, r00000063, r0000006c, r0000001d, r0000001e, r000000ea, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [32,235,34,35,36,37,38,39,40,41,42,233,253,271,289,307]
def chunk2 : Bytes := ("r00000020, r000000eb, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r000000e9, r000000fd, r0000010f, r00000121, r00000133, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [330]
def chunk3 : Bytes := ("r0000014a, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=11 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3]
def before : List Nat := parts.flatten
def lastIndex : Nat := 388
def lastBytes : Bytes := ("r00000184" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualPathFrameAdvanceIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1]
theorem checked : actualFooter=suffix ActualPathFrameAdvanceIR.program.outputs ∧ actualFooter.length=557 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2]
    decide
end ArtifactPathFrameAdvanceFooter
