import ActualPathRoundDispatchIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [10277,10329,10381,10433,10485,10537,10589,10641,10693,10745,10797,10849,10901,10953,11005,11057]
def chunk0 : Bytes := ("r00002825, r00002859, r0000288d, r000028c1, r000028f5, r00002929, r0000295d, r00002991, r000029c5, r000029f9, r00002a2d, r00002a61, r00002a95, r00002ac9, r00002afd, r00002b31, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [11109,11161,11213,11265,11317,11369,11421,11473,11525,11577,11629,11681,11733,11785,11837,11889]
def chunk1 : Bytes := ("r00002b65, r00002b99, r00002bcd, r00002c01, r00002c35, r00002c69, r00002c9d, r00002cd1, r00002d05, r00002d39, r00002d6d, r00002da1, r00002dd5, r00002e09, r00002e3d, r00002e71, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [11941,11993,12045,12097,12149,12201,12253,12305,12357,12409,12461,1670,1688,1706,1724,1745]
def chunk2 : Bytes := ("r00002ea5, r00002ed9, r00002f0d, r00002f41, r00002f75, r00002fa9, r00002fdd, r00003011, r00003045, r00003079, r000030ad, r00000686, r00000698, r000006aa, r000006bc, r000006d1, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [1790,1915,1268,1288,1306,1324,1342,581,639,769,872,1133,5794,5812,5830,5848]
def chunk3 : Bytes := ("r000006fe, r0000077b, r000004f4, r00000508, r0000051a, r0000052c, r0000053e, r00000245, r0000027f, r00000301, r00000368, r0000046d, r000016a2, r000016b4, r000016c6, r000016d8, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [5866,5884,5902,5920,5938,5956,5974,5992,6010,6028,6046,6064,6082,6100,6118,6136]
def chunk4 : Bytes := ("r000016ea, r000016fc, r0000170e, r00001720, r00001732, r00001744, r00001756, r00001768, r0000177a, r0000178c, r0000179e, r000017b0, r000017c2, r000017d4, r000017e6, r000017f8, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [6154,6172,6190,6208,6226,6244,6262,6280,6298,6316,6334,6352,6370,6388,6406,6424]
def chunk5 : Bytes := ("r0000180a, r0000181c, r0000182e, r00001840, r00001852, r00001864, r00001876, r00001888, r0000189a, r000018ac, r000018be, r000018d0, r000018e2, r000018f4, r00001906, r00001918, " : String).toByteArray.data.toList
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [6442,6460,6478,6496,6514,6532,6550,6568,6586,6604,6622,6640,6658,6676,6694,6712]
def chunk6 : Bytes := ("r0000192a, r0000193c, r0000194e, r00001960, r00001972, r00001984, r00001996, r000019a8, r000019ba, r000019cc, r000019de, r000019f0, r00001a02, r00001a14, r00001a26, r00001a38, " : String).toByteArray.data.toList
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [6730,6748,6766,6784,6802,6820,6838,6856,6874,6892,6910,6928,9385,10070,10090,10108]
def chunk7 : Bytes := ("r00001a4a, r00001a5c, r00001a6e, r00001a80, r00001a92, r00001aa4, r00001ab6, r00001ac8, r00001ada, r00001aec, r00001afe, r00001b10, r000024a9, r00002756, r0000276a, r0000277c, " : String).toByteArray.data.toList
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=176 := by core033_kernel_decide
def indices8 : List Nat := [10126,10144,10167,10225]
def chunk8 : Bytes := ("r0000278e, r000027a0, r000027b7, r000027f1, " : String).toByteArray.data.toList
theorem checked8 : chunk8=namePrefix indices8 ∧ chunk8.length=44 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7,indices8]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7,chunk8]
def before : List Nat := parts.flatten
def lastIndex : Nat := 12526
def lastBytes : Bytes := ("r000030ee" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualPathRoundDispatchIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1,checked8.1]
theorem checked : actualFooter=suffix ActualPathRoundDispatchIR.program.outputs ∧ actualFooter.length=1470 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2]
    decide
end ArtifactPathRoundDispatchFooter
