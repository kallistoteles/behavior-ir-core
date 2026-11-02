import ActualBranchIR
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactBranchFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41]
def chunk0 : Bytes := ("r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, r00000020, r00000021, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, " : String).toByteArray.data.toList
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [42,43,44,45,46,47,50,53,56,59,62,65,68,71,74,77]
def chunk1 : Bytes := ("r0000002a, r0000002b, r0000002c, r0000002d, r0000002e, r0000002f, r00000032, r00000035, r00000038, r0000003b, r0000003e, r00000041, r00000044, r00000047, r0000004a, r0000004d, " : String).toByteArray.data.toList
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [80,83,86,89,92,95,98,101,104,107,110,113,116,119,122,125]
def chunk2 : Bytes := ("r00000050, r00000053, r00000056, r00000059, r0000005c, r0000005f, r00000062, r00000065, r00000068, r0000006b, r0000006e, r00000071, r00000074, r00000077, r0000007a, r0000007d, " : String).toByteArray.data.toList
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [128,131,134,137,140,143,146,149,152,155,158,161,164,167,170,173]
def chunk3 : Bytes := ("r00000080, r00000083, r00000086, r00000089, r0000008c, r0000008f, r00000092, r00000095, r00000098, r0000009b, r0000009e, r000000a1, r000000a4, r000000a7, r000000aa, r000000ad, " : String).toByteArray.data.toList
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [176,179,182,185,188,191,194,197,200,203,206,209,212,215,218,221]
def chunk4 : Bytes := ("r000000b0, r000000b3, r000000b6, r000000b9, r000000bc, r000000bf, r000000c2, r000000c5, r000000c8, r000000cb, r000000ce, r000000d1, r000000d4, r000000d7, r000000da, r000000dd, " : String).toByteArray.data.toList
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [224,227,230,233,236,239,242,245,248,251,254,257,260,263,266,269]
def chunk5 : Bytes := ("r000000e0, r000000e3, r000000e6, r000000e9, r000000ec, r000000ef, r000000f2, r000000f5, r000000f8, r000000fb, r000000fe, r00000101, r00000104, r00000107, r0000010a, r0000010d, " : String).toByteArray.data.toList
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [272,275,278,281,284,287,290,293,296,299,302,305,308,311,314,317]
def chunk6 : Bytes := ("r00000110, r00000113, r00000116, r00000119, r0000011c, r0000011f, r00000122, r00000125, r00000128, r0000012b, r0000012e, r00000131, r00000134, r00000137, r0000013a, r0000013d, " : String).toByteArray.data.toList
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [320,323]
def chunk7 : Bytes := ("r00000140, r00000143, " : String).toByteArray.data.toList
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=22 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7]
def before : List Nat := parts.flatten
def lastIndex : Nat := 326
def lastBytes : Bytes := ("r00000146" : String).toByteArray.data.toList
def opening : Bytes := ("    [" : String).toByteArray.data.toList
def ending : Bytes := ("]\n}\n" : String).toByteArray.data.toList
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : ActualBranchIR.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1]
theorem checked : actualFooter=suffix ActualBranchIR.program.outputs ∧ actualFooter.length=1272 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2]
    decide
end ArtifactBranchFooter
