import ActualOwnBranchRoutingIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactOwnBranchRoutingFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [24,1,34,35,36,37,38,39,40,41,42,2,3,4,5,6]
def chunk0 : Bytes := ("r00000018, r00000001, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r00000002, r00000003, r00000004, r00000005, r00000006, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]
def chunk1 : Bytes := ("r00000007, r00000008, r00000009, r0000000a, r0000000b, r0000000c, r0000000d, r0000000e, r0000000f, r00000010, r00000011, r00000012, r00000013, r00000014, r00000015, r00000016, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [43,23,44,25,26,27,28,29,30,31,32,57]
def chunk2 : Bytes := ("r0000002b, r00000017, r0000002c, r00000019, r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, r00000020, r00000039, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=132 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2]
def chunks : List Bytes := [chunk0,chunk1,chunk2]
def before : List Nat := parts.flatten
def lastIndex : Nat := 75
def lastBytes : Bytes := ("r0000004b" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualOwnBranchRoutingIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1]
theorem checked : actualFooter=suffix ActualOwnBranchRoutingIR.program.outputs ∧ actualFooter.length=502 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2]
    decide
end ArtifactOwnBranchRoutingFooter
