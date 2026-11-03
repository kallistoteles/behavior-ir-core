import ActualPathFrameIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactPathFrameFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833]
def chunk0 : Bytes := ("r00000332, r00000333, r00000334, r00000335, r00000336, r00000337, r00000338, r00000339, r0000033a, r0000033b, r0000033c, r0000033d, r0000033e, r0000033f, r00000340, r00000341, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [834,835,836,837,838,839,842,845,848,851,854,857,860,863,866,869]
def chunk1 : Bytes := ("r00000342, r00000343, r00000344, r00000345, r00000346, r00000347, r0000034a, r0000034d, r00000350, r00000353, r00000356, r00000359, r0000035c, r0000035f, r00000362, r00000365, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [872,875,878,881,884,887,890,893,896,899,902,905,908,911,914,917]
def chunk2 : Bytes := ("r00000368, r0000036b, r0000036e, r00000371, r00000374, r00000377, r0000037a, r0000037d, r00000380, r00000383, r00000386, r00000389, r0000038c, r0000038f, r00000392, r00000395, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [920,923,926,929,932,935,938,941,944,947,950,953,956,959,962,965]
def chunk3 : Bytes := ("r00000398, r0000039b, r0000039e, r000003a1, r000003a4, r000003a7, r000003aa, r000003ad, r000003b0, r000003b3, r000003b6, r000003b9, r000003bc, r000003bf, r000003c2, r000003c5, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [968,971,974,977,980,983,986,989,992,995,998,1001,1004,1007,1010,1013]
def chunk4 : Bytes := ("r000003c8, r000003cb, r000003ce, r000003d1, r000003d4, r000003d7, r000003da, r000003dd, r000003e0, r000003e3, r000003e6, r000003e9, r000003ec, r000003ef, r000003f2, r000003f5, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [1016,1019,1022,1025,1028,1031,1034,1037,1040,1043,1046,1049,1052,1055,1058,1061]
def chunk5 : Bytes := ("r000003f8, r000003fb, r000003fe, r00000401, r00000404, r00000407, r0000040a, r0000040d, r00000410, r00000413, r00000416, r00000419, r0000041c, r0000041f, r00000422, r00000425, " : String).toByteArray.data.toList
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [1064,1067,1070,1073,1076,1079,1082,1085,1088,1091,1094,1097,1100,1103,1106,1109]
def chunk6 : Bytes := ("r00000428, r0000042b, r0000042e, r00000431, r00000434, r00000437, r0000043a, r0000043d, r00000440, r00000443, r00000446, r00000449, r0000044c, r0000044f, r00000452, r00000455, " : String).toByteArray.data.toList
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [1112,1115,1118,1145,1163,1181,1199,1220,1265,1390,743,763,781,799,817,56]
def chunk7 : Bytes := ("r00000458, r0000045b, r0000045e, r00000479, r0000048b, r0000049d, r000004af, r000004c4, r000004f1, r0000056e, r000002e7, r000002fb, r0000030d, r0000031f, r00000331, r00000038, " : String).toByteArray.data.toList
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=176 := by core033_kernel_decide
def indices8 : List Nat := [114,244,347,608]
def chunk8 : Bytes := ("r00000072, r000000f4, r0000015b, r00000260, " : String).toByteArray.data.toList
theorem checked8 : chunk8=namePrefix indices8 ∧ chunk8.length=44 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7,indices8]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7,chunk8]
def before : List Nat := parts.flatten
def lastIndex : Nat := 35
def lastBytes : Bytes := ("r00000023" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualPathFrameIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1,checked8.1]
theorem checked : actualFooter=suffix ActualPathFrameIR.program.outputs ∧ actualFooter.length=1470 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2]
    decide
end ArtifactPathFrameFooter
