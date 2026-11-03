import ActualFrameHashControllerIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactFrameHashControllerFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [8826,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
def chunk0 : Bytes := ("r0000227a, r00000001, r00000002, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r0000000b, r0000000c, r0000000d, r0000000e, r0000000f, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
def chunk1 : Bytes := ("r00000010, r00000011, r00000012, r00000013, r00000014, r00000015, r00000016, r00000017, r00000018, r00000019, r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [32,33,34,8765,8766,8767,8768,8769,8770,8771,8772,1154,1172,1190,1208,1229]
def chunk2 : Bytes := ("r00000020, r00000021, r00000022, r0000223d, r0000223e, r0000223f, r00002240, r00002241, r00002242, r00002243, r00002244, r00000482, r00000494, r000004a6, r000004b8, r000004cd, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [1274,1399,752,772,790,808,826,65,123,253,356,617,5278,5296,5314,5332]
def chunk3 : Bytes := ("r000004fa, r00000577, r000002f0, r00000304, r00000316, r00000328, r0000033a, r00000041, r0000007b, r000000fd, r00000164, r00000269, r0000149e, r000014b0, r000014c2, r000014d4, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [5350,5368,5386,5404,5422,5440,5458,5476,5494,5512,5530,5548,5566,5584,5602,5620]
def chunk4 : Bytes := ("r000014e6, r000014f8, r0000150a, r0000151c, r0000152e, r00001540, r00001552, r00001564, r00001576, r00001588, r0000159a, r000015ac, r000015be, r000015d0, r000015e2, r000015f4, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [5638,5656,5674,5692,5710,5728,5746,5764,5782,5800,5818,5836,5854,5872,5890,5908]
def chunk5 : Bytes := ("r00001606, r00001618, r0000162a, r0000163c, r0000164e, r00001660, r00001672, r00001684, r00001696, r000016a8, r000016ba, r000016cc, r000016de, r000016f0, r00001702, r00001714, " : String).toByteArray.data.toList
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [5926,5944,5962,5980,5998,6016,6034,6052,6070,6088,6106,6124,6142,6160,6178,6196]
def chunk6 : Bytes := ("r00001726, r00001738, r0000174a, r0000175c, r0000176e, r00001780, r00001792, r000017a4, r000017b6, r000017c8, r000017da, r000017ec, r000017fe, r00001810, r00001822, r00001834, " : String).toByteArray.data.toList
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [6214,6232,6250,6268,6286,6304,6322,6340,6358,6376,6394,6412]
def chunk7 : Bytes := ("r00001846, r00001858, r0000186a, r0000187c, r0000188e, r000018a0, r000018b2, r000018c4, r000018d6, r000018e8, r000018fa, r0000190c, " : String).toByteArray.data.toList
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=132 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7]
def before : List Nat := parts.flatten
def lastIndex : Nat := 8869
def lastBytes : Bytes := ("r000022a5" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualFrameHashControllerIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1]
theorem checked : actualFooter=suffix ActualFrameHashControllerIR.program.outputs ∧ actualFooter.length=1382 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2]
    decide
end ArtifactFrameHashControllerFooter
