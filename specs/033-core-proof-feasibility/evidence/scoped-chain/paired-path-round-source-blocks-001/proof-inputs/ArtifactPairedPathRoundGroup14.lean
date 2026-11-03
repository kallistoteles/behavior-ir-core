import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup14
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op896 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes896 : Bytes := ("    let r000003e0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked896 : bytes896=statementBytes 992 (op896.map lower) ∧ bytes896.length=41 := by core033_kernel_decide
def op897 : List WordIR.Op := [.badd 991 992]
def bytes897 : Bytes := ("    let r000003e1: u32 = r000003df.wrapping_add(r000003e0);\n" : String).toByteArray.data.toList
theorem checked897 : bytes897=statementBytes 993 (op897.map lower) ∧ bytes897.length=60 := by core033_kernel_decide
def op898 : List WordIR.Op := [.band 993 47]
def bytes898 : Bytes := ("    let r000003e2: u32 = r000003e1 & r0000002f;\n" : String).toByteArray.data.toList
theorem checked898 : bytes898=statementBytes 994 (op898.map lower) ∧ bytes898.length=48 := by core033_kernel_decide
def op899 : List WordIR.Op := [.bnot 605]
def bytes899 : Bytes := ("    let r000003e3: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked899 : bytes899=statementBytes 995 (op899.map lower) ∧ bytes899.length=37 := by core033_kernel_decide
def op900 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes900 : Bytes := ("    let r000003e4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked900 : bytes900=statementBytes 996 (op900.map lower) ∧ bytes900.length=41 := by core033_kernel_decide
def op901 : List WordIR.Op := [.badd 995 996]
def bytes901 : Bytes := ("    let r000003e5: u32 = r000003e3.wrapping_add(r000003e4);\n" : String).toByteArray.data.toList
theorem checked901 : bytes901=statementBytes 997 (op901.map lower) ∧ bytes901.length=60 := by core033_kernel_decide
def op902 : List WordIR.Op := [.bnot 997]
def bytes902 : Bytes := ("    let r000003e6: u32 = !r000003e5;\n" : String).toByteArray.data.toList
theorem checked902 : bytes902=statementBytes 998 (op902.map lower) ∧ bytes902.length=37 := by core033_kernel_decide
def op903 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes903 : Bytes := ("    let r000003e7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked903 : bytes903=statementBytes 999 (op903.map lower) ∧ bytes903.length=41 := by core033_kernel_decide
def op904 : List WordIR.Op := [.band 998 999]
def bytes904 : Bytes := ("    let r000003e8: u32 = r000003e6 & r000003e7;\n" : String).toByteArray.data.toList
theorem checked904 : bytes904=statementBytes 1000 (op904.map lower) ∧ bytes904.length=48 := by core033_kernel_decide
def op905 : List WordIR.Op := [.bxor 994 1000]
def bytes905 : Bytes := ("    let r000003e9: u32 = r000003e2 ^ r000003e8;\n" : String).toByteArray.data.toList
theorem checked905 : bytes905=statementBytes 1001 (op905.map lower) ∧ bytes905.length=48 := by core033_kernel_decide
def op906 : List WordIR.Op := [.bnot 605]
def bytes906 : Bytes := ("    let r000003ea: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked906 : bytes906=statementBytes 1002 (op906.map lower) ∧ bytes906.length=37 := by core033_kernel_decide
def op907 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes907 : Bytes := ("    let r000003eb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked907 : bytes907=statementBytes 1003 (op907.map lower) ∧ bytes907.length=41 := by core033_kernel_decide
def op908 : List WordIR.Op := [.badd 1002 1003]
def bytes908 : Bytes := ("    let r000003ec: u32 = r000003ea.wrapping_add(r000003eb);\n" : String).toByteArray.data.toList
theorem checked908 : bytes908=statementBytes 1004 (op908.map lower) ∧ bytes908.length=60 := by core033_kernel_decide
def op909 : List WordIR.Op := [.band 1004 48]
def bytes909 : Bytes := ("    let r000003ed: u32 = r000003ec & r00000030;\n" : String).toByteArray.data.toList
theorem checked909 : bytes909=statementBytes 1005 (op909.map lower) ∧ bytes909.length=48 := by core033_kernel_decide
def op910 : List WordIR.Op := [.bnot 605]
def bytes910 : Bytes := ("    let r000003ee: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked910 : bytes910=statementBytes 1006 (op910.map lower) ∧ bytes910.length=37 := by core033_kernel_decide
def op911 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes911 : Bytes := ("    let r000003ef: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked911 : bytes911=statementBytes 1007 (op911.map lower) ∧ bytes911.length=41 := by core033_kernel_decide
def op912 : List WordIR.Op := [.badd 1006 1007]
def bytes912 : Bytes := ("    let r000003f0: u32 = r000003ee.wrapping_add(r000003ef);\n" : String).toByteArray.data.toList
theorem checked912 : bytes912=statementBytes 1008 (op912.map lower) ∧ bytes912.length=60 := by core033_kernel_decide
def op913 : List WordIR.Op := [.bnot 1008]
def bytes913 : Bytes := ("    let r000003f1: u32 = !r000003f0;\n" : String).toByteArray.data.toList
theorem checked913 : bytes913=statementBytes 1009 (op913.map lower) ∧ bytes913.length=37 := by core033_kernel_decide
def op914 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes914 : Bytes := ("    let r000003f2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked914 : bytes914=statementBytes 1010 (op914.map lower) ∧ bytes914.length=41 := by core033_kernel_decide
def op915 : List WordIR.Op := [.band 1009 1010]
def bytes915 : Bytes := ("    let r000003f3: u32 = r000003f1 & r000003f2;\n" : String).toByteArray.data.toList
theorem checked915 : bytes915=statementBytes 1011 (op915.map lower) ∧ bytes915.length=48 := by core033_kernel_decide
def op916 : List WordIR.Op := [.bxor 1005 1011]
def bytes916 : Bytes := ("    let r000003f4: u32 = r000003ed ^ r000003f3;\n" : String).toByteArray.data.toList
theorem checked916 : bytes916=statementBytes 1012 (op916.map lower) ∧ bytes916.length=48 := by core033_kernel_decide
def op917 : List WordIR.Op := [.bnot 605]
def bytes917 : Bytes := ("    let r000003f5: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked917 : bytes917=statementBytes 1013 (op917.map lower) ∧ bytes917.length=37 := by core033_kernel_decide
def op918 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes918 : Bytes := ("    let r000003f6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked918 : bytes918=statementBytes 1014 (op918.map lower) ∧ bytes918.length=41 := by core033_kernel_decide
def op919 : List WordIR.Op := [.badd 1013 1014]
def bytes919 : Bytes := ("    let r000003f7: u32 = r000003f5.wrapping_add(r000003f6);\n" : String).toByteArray.data.toList
theorem checked919 : bytes919=statementBytes 1015 (op919.map lower) ∧ bytes919.length=60 := by core033_kernel_decide
def op920 : List WordIR.Op := [.band 1015 49]
def bytes920 : Bytes := ("    let r000003f8: u32 = r000003f7 & r00000031;\n" : String).toByteArray.data.toList
theorem checked920 : bytes920=statementBytes 1016 (op920.map lower) ∧ bytes920.length=48 := by core033_kernel_decide
def op921 : List WordIR.Op := [.bnot 605]
def bytes921 : Bytes := ("    let r000003f9: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked921 : bytes921=statementBytes 1017 (op921.map lower) ∧ bytes921.length=37 := by core033_kernel_decide
def op922 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes922 : Bytes := ("    let r000003fa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked922 : bytes922=statementBytes 1018 (op922.map lower) ∧ bytes922.length=41 := by core033_kernel_decide
def op923 : List WordIR.Op := [.badd 1017 1018]
def bytes923 : Bytes := ("    let r000003fb: u32 = r000003f9.wrapping_add(r000003fa);\n" : String).toByteArray.data.toList
theorem checked923 : bytes923=statementBytes 1019 (op923.map lower) ∧ bytes923.length=60 := by core033_kernel_decide
def op924 : List WordIR.Op := [.bnot 1019]
def bytes924 : Bytes := ("    let r000003fc: u32 = !r000003fb;\n" : String).toByteArray.data.toList
theorem checked924 : bytes924=statementBytes 1020 (op924.map lower) ∧ bytes924.length=37 := by core033_kernel_decide
def op925 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes925 : Bytes := ("    let r000003fd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked925 : bytes925=statementBytes 1021 (op925.map lower) ∧ bytes925.length=41 := by core033_kernel_decide
def op926 : List WordIR.Op := [.band 1020 1021]
def bytes926 : Bytes := ("    let r000003fe: u32 = r000003fc & r000003fd;\n" : String).toByteArray.data.toList
theorem checked926 : bytes926=statementBytes 1022 (op926.map lower) ∧ bytes926.length=48 := by core033_kernel_decide
def op927 : List WordIR.Op := [.bxor 1016 1022]
def bytes927 : Bytes := ("    let r000003ff: u32 = r000003f8 ^ r000003fe;\n" : String).toByteArray.data.toList
theorem checked927 : bytes927=statementBytes 1023 (op927.map lower) ∧ bytes927.length=48 := by core033_kernel_decide
def op928 : List WordIR.Op := [.bnot 605]
def bytes928 : Bytes := ("    let r00000400: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked928 : bytes928=statementBytes 1024 (op928.map lower) ∧ bytes928.length=37 := by core033_kernel_decide
def op929 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes929 : Bytes := ("    let r00000401: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked929 : bytes929=statementBytes 1025 (op929.map lower) ∧ bytes929.length=41 := by core033_kernel_decide
def op930 : List WordIR.Op := [.badd 1024 1025]
def bytes930 : Bytes := ("    let r00000402: u32 = r00000400.wrapping_add(r00000401);\n" : String).toByteArray.data.toList
theorem checked930 : bytes930=statementBytes 1026 (op930.map lower) ∧ bytes930.length=60 := by core033_kernel_decide
def op931 : List WordIR.Op := [.band 1026 50]
def bytes931 : Bytes := ("    let r00000403: u32 = r00000402 & r00000032;\n" : String).toByteArray.data.toList
theorem checked931 : bytes931=statementBytes 1027 (op931.map lower) ∧ bytes931.length=48 := by core033_kernel_decide
def op932 : List WordIR.Op := [.bnot 605]
def bytes932 : Bytes := ("    let r00000404: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked932 : bytes932=statementBytes 1028 (op932.map lower) ∧ bytes932.length=37 := by core033_kernel_decide
def op933 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes933 : Bytes := ("    let r00000405: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked933 : bytes933=statementBytes 1029 (op933.map lower) ∧ bytes933.length=41 := by core033_kernel_decide
def op934 : List WordIR.Op := [.badd 1028 1029]
def bytes934 : Bytes := ("    let r00000406: u32 = r00000404.wrapping_add(r00000405);\n" : String).toByteArray.data.toList
theorem checked934 : bytes934=statementBytes 1030 (op934.map lower) ∧ bytes934.length=60 := by core033_kernel_decide
def op935 : List WordIR.Op := [.bnot 1030]
def bytes935 : Bytes := ("    let r00000407: u32 = !r00000406;\n" : String).toByteArray.data.toList
theorem checked935 : bytes935=statementBytes 1031 (op935.map lower) ∧ bytes935.length=37 := by core033_kernel_decide
def op936 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes936 : Bytes := ("    let r00000408: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked936 : bytes936=statementBytes 1032 (op936.map lower) ∧ bytes936.length=41 := by core033_kernel_decide
def op937 : List WordIR.Op := [.band 1031 1032]
def bytes937 : Bytes := ("    let r00000409: u32 = r00000407 & r00000408;\n" : String).toByteArray.data.toList
theorem checked937 : bytes937=statementBytes 1033 (op937.map lower) ∧ bytes937.length=48 := by core033_kernel_decide
def op938 : List WordIR.Op := [.bxor 1027 1033]
def bytes938 : Bytes := ("    let r0000040a: u32 = r00000403 ^ r00000409;\n" : String).toByteArray.data.toList
theorem checked938 : bytes938=statementBytes 1034 (op938.map lower) ∧ bytes938.length=48 := by core033_kernel_decide
def op939 : List WordIR.Op := [.bnot 605]
def bytes939 : Bytes := ("    let r0000040b: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked939 : bytes939=statementBytes 1035 (op939.map lower) ∧ bytes939.length=37 := by core033_kernel_decide
def op940 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes940 : Bytes := ("    let r0000040c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked940 : bytes940=statementBytes 1036 (op940.map lower) ∧ bytes940.length=41 := by core033_kernel_decide
def op941 : List WordIR.Op := [.badd 1035 1036]
def bytes941 : Bytes := ("    let r0000040d: u32 = r0000040b.wrapping_add(r0000040c);\n" : String).toByteArray.data.toList
theorem checked941 : bytes941=statementBytes 1037 (op941.map lower) ∧ bytes941.length=60 := by core033_kernel_decide
def op942 : List WordIR.Op := [.band 1037 51]
def bytes942 : Bytes := ("    let r0000040e: u32 = r0000040d & r00000033;\n" : String).toByteArray.data.toList
theorem checked942 : bytes942=statementBytes 1038 (op942.map lower) ∧ bytes942.length=48 := by core033_kernel_decide
def op943 : List WordIR.Op := [.bnot 605]
def bytes943 : Bytes := ("    let r0000040f: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked943 : bytes943=statementBytes 1039 (op943.map lower) ∧ bytes943.length=37 := by core033_kernel_decide
def op944 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes944 : Bytes := ("    let r00000410: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked944 : bytes944=statementBytes 1040 (op944.map lower) ∧ bytes944.length=41 := by core033_kernel_decide
def op945 : List WordIR.Op := [.badd 1039 1040]
def bytes945 : Bytes := ("    let r00000411: u32 = r0000040f.wrapping_add(r00000410);\n" : String).toByteArray.data.toList
theorem checked945 : bytes945=statementBytes 1041 (op945.map lower) ∧ bytes945.length=60 := by core033_kernel_decide
def op946 : List WordIR.Op := [.bnot 1041]
def bytes946 : Bytes := ("    let r00000412: u32 = !r00000411;\n" : String).toByteArray.data.toList
theorem checked946 : bytes946=statementBytes 1042 (op946.map lower) ∧ bytes946.length=37 := by core033_kernel_decide
def op947 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes947 : Bytes := ("    let r00000413: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked947 : bytes947=statementBytes 1043 (op947.map lower) ∧ bytes947.length=41 := by core033_kernel_decide
def op948 : List WordIR.Op := [.band 1042 1043]
def bytes948 : Bytes := ("    let r00000414: u32 = r00000412 & r00000413;\n" : String).toByteArray.data.toList
theorem checked948 : bytes948=statementBytes 1044 (op948.map lower) ∧ bytes948.length=48 := by core033_kernel_decide
def op949 : List WordIR.Op := [.bxor 1038 1044]
def bytes949 : Bytes := ("    let r00000415: u32 = r0000040e ^ r00000414;\n" : String).toByteArray.data.toList
theorem checked949 : bytes949=statementBytes 1045 (op949.map lower) ∧ bytes949.length=48 := by core033_kernel_decide
def op950 : List WordIR.Op := [.bnot 605]
def bytes950 : Bytes := ("    let r00000416: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked950 : bytes950=statementBytes 1046 (op950.map lower) ∧ bytes950.length=37 := by core033_kernel_decide
def op951 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes951 : Bytes := ("    let r00000417: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked951 : bytes951=statementBytes 1047 (op951.map lower) ∧ bytes951.length=41 := by core033_kernel_decide
def op952 : List WordIR.Op := [.badd 1046 1047]
def bytes952 : Bytes := ("    let r00000418: u32 = r00000416.wrapping_add(r00000417);\n" : String).toByteArray.data.toList
theorem checked952 : bytes952=statementBytes 1048 (op952.map lower) ∧ bytes952.length=60 := by core033_kernel_decide
def op953 : List WordIR.Op := [.band 1048 52]
def bytes953 : Bytes := ("    let r00000419: u32 = r00000418 & r00000034;\n" : String).toByteArray.data.toList
theorem checked953 : bytes953=statementBytes 1049 (op953.map lower) ∧ bytes953.length=48 := by core033_kernel_decide
def op954 : List WordIR.Op := [.bnot 605]
def bytes954 : Bytes := ("    let r0000041a: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked954 : bytes954=statementBytes 1050 (op954.map lower) ∧ bytes954.length=37 := by core033_kernel_decide
def op955 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes955 : Bytes := ("    let r0000041b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked955 : bytes955=statementBytes 1051 (op955.map lower) ∧ bytes955.length=41 := by core033_kernel_decide
def op956 : List WordIR.Op := [.badd 1050 1051]
def bytes956 : Bytes := ("    let r0000041c: u32 = r0000041a.wrapping_add(r0000041b);\n" : String).toByteArray.data.toList
theorem checked956 : bytes956=statementBytes 1052 (op956.map lower) ∧ bytes956.length=60 := by core033_kernel_decide
def op957 : List WordIR.Op := [.bnot 1052]
def bytes957 : Bytes := ("    let r0000041d: u32 = !r0000041c;\n" : String).toByteArray.data.toList
theorem checked957 : bytes957=statementBytes 1053 (op957.map lower) ∧ bytes957.length=37 := by core033_kernel_decide
def op958 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes958 : Bytes := ("    let r0000041e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked958 : bytes958=statementBytes 1054 (op958.map lower) ∧ bytes958.length=41 := by core033_kernel_decide
def op959 : List WordIR.Op := [.band 1053 1054]
def bytes959 : Bytes := ("    let r0000041f: u32 = r0000041d & r0000041e;\n" : String).toByteArray.data.toList
theorem checked959 : bytes959=statementBytes 1055 (op959.map lower) ∧ bytes959.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op896,op897,op898,op899,op900,op901,op902,op903,op904,op905,op906,op907,op908,op909,op910,op911,op912,op913,op914,op915,op916,op917,op918,op919,op920,op921,op922,op923,op924,op925,op926,op927,op928,op929,op930,op931,op932,op933,op934,op935,op936,op937,op938,op939,op940,op941,op942,op943,op944,op945,op946,op947,op948,op949,op950,op951,op952,op953,op954,op955,op956,op957,op958,op959]
def chunks : List Bytes := [bytes896,bytes897,bytes898,bytes899,bytes900,bytes901,bytes902,bytes903,bytes904,bytes905,bytes906,bytes907,bytes908,bytes909,bytes910,bytes911,bytes912,bytes913,bytes914,bytes915,bytes916,bytes917,bytes918,bytes919,bytes920,bytes921,bytes922,bytes923,bytes924,bytes925,bytes926,bytes927,bytes928,bytes929,bytes930,bytes931,bytes932,bytes933,bytes934,bytes935,bytes936,bytes937,bytes938,bytes939,bytes940,bytes941,bytes942,bytes943,bytes944,bytes945,bytes946,bytes947,bytes948,bytes949,bytes950,bytes951,bytes952,bytes953,bytes954,bytes955,bytes956,bytes957,bytes958,bytes959]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 992 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked896.1 (.cons _ _ _ _ _ checked897.1 (.cons _ _ _ _ _ checked898.1 (.cons _ _ _ _ _ checked899.1 (.cons _ _ _ _ _ checked900.1 (.cons _ _ _ _ _ checked901.1 (.cons _ _ _ _ _ checked902.1 (.cons _ _ _ _ _ checked903.1 (.cons _ _ _ _ _ checked904.1 (.cons _ _ _ _ _ checked905.1 (.cons _ _ _ _ _ checked906.1 (.cons _ _ _ _ _ checked907.1 (.cons _ _ _ _ _ checked908.1 (.cons _ _ _ _ _ checked909.1 (.cons _ _ _ _ _ checked910.1 (.cons _ _ _ _ _ checked911.1 (.cons _ _ _ _ _ checked912.1 (.cons _ _ _ _ _ checked913.1 (.cons _ _ _ _ _ checked914.1 (.cons _ _ _ _ _ checked915.1 (.cons _ _ _ _ _ checked916.1 (.cons _ _ _ _ _ checked917.1 (.cons _ _ _ _ _ checked918.1 (.cons _ _ _ _ _ checked919.1 (.cons _ _ _ _ _ checked920.1 (.cons _ _ _ _ _ checked921.1 (.cons _ _ _ _ _ checked922.1 (.cons _ _ _ _ _ checked923.1 (.cons _ _ _ _ _ checked924.1 (.cons _ _ _ _ _ checked925.1 (.cons _ _ _ _ _ checked926.1 (.cons _ _ _ _ _ checked927.1 (.cons _ _ _ _ _ checked928.1 (.cons _ _ _ _ _ checked929.1 (.cons _ _ _ _ _ checked930.1 (.cons _ _ _ _ _ checked931.1 (.cons _ _ _ _ _ checked932.1 (.cons _ _ _ _ _ checked933.1 (.cons _ _ _ _ _ checked934.1 (.cons _ _ _ _ _ checked935.1 (.cons _ _ _ _ _ checked936.1 (.cons _ _ _ _ _ checked937.1 (.cons _ _ _ _ _ checked938.1 (.cons _ _ _ _ _ checked939.1 (.cons _ _ _ _ _ checked940.1 (.cons _ _ _ _ _ checked941.1 (.cons _ _ _ _ _ checked942.1 (.cons _ _ _ _ _ checked943.1 (.cons _ _ _ _ _ checked944.1 (.cons _ _ _ _ _ checked945.1 (.cons _ _ _ _ _ checked946.1 (.cons _ _ _ _ _ checked947.1 (.cons _ _ _ _ _ checked948.1 (.cons _ _ _ _ _ checked949.1 (.cons _ _ _ _ _ checked950.1 (.cons _ _ _ _ _ checked951.1 (.cons _ _ _ _ _ checked952.1 (.cons _ _ _ _ _ checked953.1 (.cons _ _ _ _ _ checked954.1 (.cons _ _ _ _ _ checked955.1 (.cons _ _ _ _ _ checked956.1 (.cons _ _ _ _ _ checked957.1 (.cons _ _ _ _ _ checked958.1 (.cons _ _ _ _ _ checked959.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 992 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2903 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked896.2,checked897.2,checked898.2,checked899.2,checked900.2,checked901.2,checked902.2,checked903.2,checked904.2,checked905.2,checked906.2,checked907.2,checked908.2,checked909.2,checked910.2,checked911.2,checked912.2,checked913.2,checked914.2,checked915.2,checked916.2,checked917.2,checked918.2,checked919.2,checked920.2,checked921.2,checked922.2,checked923.2,checked924.2,checked925.2,checked926.2,checked927.2,checked928.2,checked929.2,checked930.2,checked931.2,checked932.2,checked933.2,checked934.2,checked935.2,checked936.2,checked937.2,checked938.2,checked939.2,checked940.2,checked941.2,checked942.2,checked943.2,checked944.2,checked945.2,checked946.2,checked947.2,checked948.2,checked949.2,checked950.2,checked951.2,checked952.2,checked953.2,checked954.2,checked955.2,checked956.2,checked957.2,checked958.2,checked959.2]
  decide
end ArtifactPairedPathRoundGroup14
