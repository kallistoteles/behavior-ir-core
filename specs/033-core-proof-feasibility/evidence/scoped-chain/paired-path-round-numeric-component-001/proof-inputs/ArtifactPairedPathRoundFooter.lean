import ActualPairedPathRoundIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactPairedPathRoundFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [13048,1,13058,3,4,5,6,7,8,9,10,11,12,13,14,15]
def chunk0 : Bytes := ("r000032f8, r00000001, r00003302, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r0000000b, r0000000c, r0000000d, r0000000e, r0000000f, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
def chunk1 : Bytes := ("r00000010, r00000011, r00000012, r00000013, r00000014, r00000015, r00000016, r00000017, r00000018, r00000019, r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,12617]
def chunk2 : Bytes := ("r00000020, r00000021, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r0000002b, r0000002c, r0000002d, r0000002e, r00003149, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [12669,12721,12773,12825,12877,12929,12981,13068,13078,13088,13098,13108,13118,13128,13138,13148]
def chunk3 : Bytes := ("r0000317d, r000031b1, r000031e5, r00003219, r0000324d, r00003281, r000032b5, r0000330c, r00003316, r00003320, r0000332a, r00003334, r0000333e, r00003348, r00003352, r0000335c, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [13158,13168,13178,13188,13198,13208,13218,13228,13238,13248,13258,13268,13278,13288,13298,79]
def chunk4 : Bytes := ("r00003366, r00003370, r0000337a, r00003384, r0000338e, r00003398, r000033a2, r000033ac, r000033b6, r000033c0, r000033ca, r000033d4, r000033de, r000033e8, r000033f2, r0000004f, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
def chunk5 : Bytes := ("r00000050, r00000051, r00000052, r00000053, r00000054, r00000055, r00000056, r00000057, r00000058, r00000059, r0000005a, r0000005b, r0000005c, r0000005d, r0000005e, r0000005f, " : String).toByteArray.data.toList
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [2190,2208,2226,2244,2265,2310,2435,1788,1808,1826,1844,1862,1101,1159,1289,1392]
def chunk6 : Bytes := ("r0000088e, r000008a0, r000008b2, r000008c4, r000008d9, r00000906, r00000983, r000006fc, r00000710, r00000722, r00000734, r00000746, r0000044d, r00000487, r00000509, r00000570, " : String).toByteArray.data.toList
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [1653,6314,6332,6350,6368,6386,6404,6422,6440,6458,6476,6494,6512,6530,6548,6566]
def chunk7 : Bytes := ("r00000675, r000018aa, r000018bc, r000018ce, r000018e0, r000018f2, r00001904, r00001916, r00001928, r0000193a, r0000194c, r0000195e, r00001970, r00001982, r00001994, r000019a6, " : String).toByteArray.data.toList
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=176 := by core033_kernel_decide
def indices8 : List Nat := [6584,6602,6620,6638,6656,6674,6692,6710,6728,6746,6764,6782,6800,6818,6836,6854]
def chunk8 : Bytes := ("r000019b8, r000019ca, r000019dc, r000019ee, r00001a00, r00001a12, r00001a24, r00001a36, r00001a48, r00001a5a, r00001a6c, r00001a7e, r00001a90, r00001aa2, r00001ab4, r00001ac6, " : String).toByteArray.data.toList
theorem checked8 : chunk8=namePrefix indices8 ∧ chunk8.length=176 := by core033_kernel_decide
def indices9 : List Nat := [6872,6890,6908,6926,6944,6962,6980,6998,7016,7034,7052,7070,7088,7106,7124,7142]
def chunk9 : Bytes := ("r00001ad8, r00001aea, r00001afc, r00001b0e, r00001b20, r00001b32, r00001b44, r00001b56, r00001b68, r00001b7a, r00001b8c, r00001b9e, r00001bb0, r00001bc2, r00001bd4, r00001be6, " : String).toByteArray.data.toList
theorem checked9 : chunk9=namePrefix indices9 ∧ chunk9.length=176 := by core033_kernel_decide
def indices10 : List Nat := [7160,7178,7196,7214,7232,7250,7268,7286,7304,7322,7340,7358,7376,7394,7412,7430]
def chunk10 : Bytes := ("r00001bf8, r00001c0a, r00001c1c, r00001c2e, r00001c40, r00001c52, r00001c64, r00001c76, r00001c88, r00001c9a, r00001cac, r00001cbe, r00001cd0, r00001ce2, r00001cf4, r00001d06, " : String).toByteArray.data.toList
theorem checked10 : chunk10=namePrefix indices10 ∧ chunk10.length=176 := by core033_kernel_decide
def indices11 : List Nat := [7448,9905,10590,10610,10628,10646,10664,10687,10745,13046]
def chunk11 : Bytes := ("r00001d18, r000026b1, r0000295e, r00002972, r00002984, r00002996, r000029a8, r000029bf, r000029f9, r000032f6, " : String).toByteArray.data.toList
theorem checked11 : chunk11=namePrefix indices11 ∧ chunk11.length=110 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7,indices8,indices9,indices10,indices11]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7,chunk8,chunk9,chunk10,chunk11]
def before : List Nat := parts.flatten
def lastIndex : Nat := 419
def lastBytes : Bytes := ("r000001a3" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualPairedPathRoundIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1,checked8.1,checked9.1,checked10.1,checked11.1]
theorem checked : actualFooter=suffix ActualPairedPathRoundIR.program.outputs ∧ actualFooter.length=2064 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2]
    decide
end ArtifactPairedPathRoundFooter
