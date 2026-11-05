import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.SourceReturns
import Core033.KernelDecide
namespace ArtifactSharedFrameFooter
open Core033 WordSource WordSourceBlocks SourceReturns
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def indices0 : List Nat := [3827,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
def chunk0 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000ef3, r00000001, r00000002, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r0000000b, r0000000c, r0000000d, r0000000e, r0000000f, " : String)
theorem checked0 : chunk0=namePrefix indices0 ∧ chunk0.length=176 := by core033_kernel_decide
def indices1 : List Nat := [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
def chunk1 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000010, r00000011, r00000012, r00000013, r00000014, r00000015, r00000016, r00000017, r00000018, r00000019, r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, " : String)
theorem checked1 : chunk1=namePrefix indices1 ∧ chunk1.length=176 := by core033_kernel_decide
def indices2 : List Nat := [32,33,34,3818,3819,3820,3821,3822,3823,3824,3825,595,90,604,613,622]
def chunk2 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000020, r00000021, r00000022, r00000eea, r00000eeb, r00000eec, r00000eed, r00000eee, r00000eef, r00000ef0, r00000ef1, r00000253, r0000005a, r0000025c, r00000265, r0000026e, " : String)
theorem checked2 : chunk2=namePrefix indices2 ∧ chunk2.length=176 := by core033_kernel_decide
def indices3 : List Nat := [631,339,339,350,359,368,377,58,90,135,189,275,961,970,979,988]
def chunk3 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000277, r00000153, r00000153, r0000015e, r00000167, r00000170, r00000179, r0000003a, r0000005a, r00000087, r000000bd, r00000113, r000003c1, r000003ca, r000003d3, r000003dc, " : String)
theorem checked3 : chunk3=namePrefix indices3 ∧ chunk3.length=176 := by core033_kernel_decide
def indices4 : List Nat := [997,1006,1015,1024,1033,1042,1051,1060,1069,1078,1087,1096,1105,1114,1123,1132]
def chunk4 : Bytes := Core033.SourceLiteralBytes.quoted ("r000003e5, r000003ee, r000003f7, r00000400, r00000409, r00000412, r0000041b, r00000424, r0000042d, r00000436, r0000043f, r00000448, r00000451, r0000045a, r00000463, r0000046c, " : String)
theorem checked4 : chunk4=namePrefix indices4 ∧ chunk4.length=176 := by core033_kernel_decide
def indices5 : List Nat := [1141,1150,1159,1168,1177,1186,1195,1204,1213,1222,1231,1240,1249,1258,1267,1276]
def chunk5 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000475, r0000047e, r00000487, r00000490, r00000499, r000004a2, r000004ab, r000004b4, r000004bd, r000004c6, r000004cf, r000004d8, r000004e1, r000004ea, r000004f3, r000004fc, " : String)
theorem checked5 : chunk5=namePrefix indices5 ∧ chunk5.length=176 := by core033_kernel_decide
def indices6 : List Nat := [1285,1294,1303,1312,1321,1330,1339,1348,1357,1366,1375,1384,1393,1402,1411,1420]
def chunk6 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000505, r0000050e, r00000517, r00000520, r00000529, r00000532, r0000053b, r00000544, r0000054d, r00000556, r0000055f, r00000568, r00000571, r0000057a, r00000583, r0000058c, " : String)
theorem checked6 : chunk6=namePrefix indices6 ∧ chunk6.length=176 := by core033_kernel_decide
def indices7 : List Nat := [1429,1438,1447,1456,1465,1474,1483,1492,1501,1510,1519,1528]
def chunk7 : Bytes := Core033.SourceLiteralBytes.quoted ("r00000595, r0000059e, r000005a7, r000005b0, r000005b9, r000005c2, r000005cb, r000005d4, r000005dd, r000005e6, r000005ef, r000005f8, " : String)
theorem checked7 : chunk7=namePrefix indices7 ∧ chunk7.length=132 := by core033_kernel_decide
def parts : List (List Nat) := [indices0,indices1,indices2,indices3,indices4,indices5,indices6,indices7]
def chunks : List Bytes := [chunk0,chunk1,chunk2,chunk3,chunk4,chunk5,chunk6,chunk7]
def before : List Nat := parts.flatten
def lastIndex : Nat := 3837
def lastBytes : Bytes := Core033.SourceLiteralBytes.quoted ("r00000efd" : String)
def opening : Bytes := Core033.SourceLiteralBytes.quoted ("    [" : String)
def ending : Bytes := Core033.SourceLiteralBytes.quoted ("]\n}\n" : String)
def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending
theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length=9 := by core033_kernel_decide
theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes "]\n}\n" ∧ ending.length=4 := by core033_kernel_decide
theorem outputPartition : SharedFrameProgram.program.outputs=before++[lastIndex] := rfl
theorem prefixExact : chunks.flatten=namePrefix before := by
  rw [before,namePrefix_flatten]
  simp only [chunks,parts,List.map_cons,List.map_nil,checked0.1,checked1.1,checked2.1,checked3.1,checked4.1,checked5.1,checked6.1,checked7.1]
theorem checked : actualFooter=suffix SharedFrameProgram.program.outputs ∧ actualFooter.length=1382 := by
  constructor
  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]
  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2]
    decide
end ArtifactSharedFrameFooter
