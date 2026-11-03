import ActualHashBlockIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactHashBlockFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [3672,3673,3674,3675,3676,3677,3678,3679,185,203,221,239,257,275,293,311]
def chunk0 : Bytes := ("r00000e58, r00000e59, r00000e5a, r00000e5b, r00000e5c, r00000e5d, r00000e5e, r00000e5f, r000000b9, r000000cb, r000000dd, r000000ef, r00000101, r00000113, r00000125, r00000137, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [329,347,365,383,401,419,437,455,473,491,509,527,545,563,581,599]
def chunk1 : Bytes := ("r00000149, r0000015b, r0000016d, r0000017f, r00000191, r000001a3, r000001b5, r000001c7, r000001d9, r000001eb, r000001fd, r0000020f, r00000221, r00000233, r00000245, r00000257, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [617,635,653,671,689,707,725,743,761,779,797,815,833,851,869,887]
def chunk2 : Bytes := ("r00000269, r0000027b, r0000028d, r0000029f, r000002b1, r000002c3, r000002d5, r000002e7, r000002f9, r0000030b, r0000031d, r0000032f, r00000341, r00000353, r00000365, r00000377, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [905,923,941,959,977,995,1013,1031,1049,1067,1085,1103,1121,1139,1157,1175]
def chunk3 : Bytes := ("r00000389, r0000039b, r000003ad, r000003bf, r000003d1, r000003e3, r000003f5, r00000407, r00000419, r0000042b, r0000043d, r0000044f, r00000461, r00000473, r00000485, r00000497, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [1193,1211,1229,1247,1265,1283,1301]
def chunk4 : Bytes := ("r000004a9, r000004bb, r000004cd, r000004df, r000004f1, r00000503, r00000515, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=77 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4]
def before : List Nat := parts.flatten
def lastIndex : Nat := 1319
def lastBytes : Bytes := ("r00000527" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualHashBlockIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1]
theorem checked : actualFooter=suffix ActualHashBlockIR.program.outputs ∧ actualFooter.length=799 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2]
    decide
end ArtifactHashBlockFooter
