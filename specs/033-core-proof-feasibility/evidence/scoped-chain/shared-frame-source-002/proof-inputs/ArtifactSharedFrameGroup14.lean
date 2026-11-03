import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup14
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op896 : List WordIR.Op := [.badd 937 938]
def bytes896 : Bytes := ("    let r000003ab: u32 = r000003a9.wrapping_add(r000003aa);\n" : String).toByteArray.data.toList
theorem checked896 : bytes896=statementBytes 939 (op896.map lower) ∧ bytes896.length=60 := by core033_kernel_decide
def op897 : List WordIR.Op := [.badd 939 837]
def bytes897 : Bytes := ("    let r000003ac: u32 = r000003ab.wrapping_add(r00000345);\n" : String).toByteArray.data.toList
theorem checked897 : bytes897=statementBytes 940 (op897.map lower) ∧ bytes897.length=60 := by core033_kernel_decide
def op898 : List WordIR.Op := [.rotr 839 8]
def bytes898 : Bytes := ("    let r000003ad: u32 = r00000347.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked898 : bytes898=statementBytes 941 (op898.map lower) ∧ bytes898.length=65 := by core033_kernel_decide
def op899 : List WordIR.Op := [.rotr 841 16]
def bytes899 : Bytes := ("    let r000003ae: u32 = r00000349.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked899 : bytes899=statementBytes 942 (op899.map lower) ∧ bytes899.length=65 := by core033_kernel_decide
def op900 : List WordIR.Op := [.badd 941 942]
def bytes900 : Bytes := ("    let r000003af: u32 = r000003ad.wrapping_add(r000003ae);\n" : String).toByteArray.data.toList
theorem checked900 : bytes900=statementBytes 943 (op900.map lower) ∧ bytes900.length=60 := by core033_kernel_decide
def op901 : List WordIR.Op := [.rotr 843 24]
def bytes901 : Bytes := ("    let r000003b0: u32 = r0000034b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked901 : bytes901=statementBytes 944 (op901.map lower) ∧ bytes901.length=65 := by core033_kernel_decide
def op902 : List WordIR.Op := [.badd 943 944]
def bytes902 : Bytes := ("    let r000003b1: u32 = r000003af.wrapping_add(r000003b0);\n" : String).toByteArray.data.toList
theorem checked902 : bytes902=statementBytes 945 (op902.map lower) ∧ bytes902.length=60 := by core033_kernel_decide
def op903 : List WordIR.Op := [.badd 945 845]
def bytes903 : Bytes := ("    let r000003b2: u32 = r000003b1.wrapping_add(r0000034d);\n" : String).toByteArray.data.toList
theorem checked903 : bytes903=statementBytes 946 (op903.map lower) ∧ bytes903.length=60 := by core033_kernel_decide
def op904 : List WordIR.Op := [.rotr 847 8]
def bytes904 : Bytes := ("    let r000003b3: u32 = r0000034f.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked904 : bytes904=statementBytes 947 (op904.map lower) ∧ bytes904.length=65 := by core033_kernel_decide
def op905 : List WordIR.Op := [.rotr 849 16]
def bytes905 : Bytes := ("    let r000003b4: u32 = r00000351.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked905 : bytes905=statementBytes 948 (op905.map lower) ∧ bytes905.length=65 := by core033_kernel_decide
def op906 : List WordIR.Op := [.badd 947 948]
def bytes906 : Bytes := ("    let r000003b5: u32 = r000003b3.wrapping_add(r000003b4);\n" : String).toByteArray.data.toList
theorem checked906 : bytes906=statementBytes 949 (op906.map lower) ∧ bytes906.length=60 := by core033_kernel_decide
def op907 : List WordIR.Op := [.rotr 852 24]
def bytes907 : Bytes := ("    let r000003b6: u32 = r00000354.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked907 : bytes907=statementBytes 950 (op907.map lower) ∧ bytes907.length=65 := by core033_kernel_decide
def op908 : List WordIR.Op := [.badd 949 950]
def bytes908 : Bytes := ("    let r000003b7: u32 = r000003b5.wrapping_add(r000003b6);\n" : String).toByteArray.data.toList
theorem checked908 : bytes908=statementBytes 951 (op908.map lower) ∧ bytes908.length=60 := by core033_kernel_decide
def op909 : List WordIR.Op := [.badd 951 856]
def bytes909 : Bytes := ("    let r000003b8: u32 = r000003b7.wrapping_add(r00000358);\n" : String).toByteArray.data.toList
theorem checked909 : bytes909=statementBytes 952 (op909.map lower) ∧ bytes909.length=60 := by core033_kernel_decide
def op910 : List WordIR.Op := [.shr 679 8]
def bytes910 : Bytes := ("    let r000003b9: u32 = r000002a7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked910 : bytes910=statementBytes 953 (op910.map lower) ∧ bytes910.length=54 := by core033_kernel_decide
def op911 : List WordIR.Op := [.band 953 50]
def bytes911 : Bytes := ("    let r000003ba: u32 = r000003b9 & r00000032;\n" : String).toByteArray.data.toList
theorem checked911 : bytes911=statementBytes 954 (op911.map lower) ∧ bytes911.length=48 := by core033_kernel_decide
def op912 : List WordIR.Op := [.bxor 953 50]
def bytes912 : Bytes := ("    let r000003bb: u32 = r000003b9 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked912 : bytes912=statementBytes 955 (op912.map lower) ∧ bytes912.length=48 := by core033_kernel_decide
def op913 : List WordIR.Op := [.badd 953 50]
def bytes913 : Bytes := ("    let r000003bc: u32 = r000003b9.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked913 : bytes913=statementBytes 956 (op913.map lower) ∧ bytes913.length=60 := by core033_kernel_decide
def op914 : List WordIR.Op := [.bnot 956]
def bytes914 : Bytes := ("    let r000003bd: u32 = !r000003bc;\n" : String).toByteArray.data.toList
theorem checked914 : bytes914=statementBytes 957 (op914.map lower) ∧ bytes914.length=37 := by core033_kernel_decide
def op915 : List WordIR.Op := [.band 955 957]
def bytes915 : Bytes := ("    let r000003be: u32 = r000003bb & r000003bd;\n" : String).toByteArray.data.toList
theorem checked915 : bytes915=statementBytes 958 (op915.map lower) ∧ bytes915.length=48 := by core033_kernel_decide
def op916 : List WordIR.Op := [.bxor 954 958]
def bytes916 : Bytes := ("    let r000003bf: u32 = r000003ba ^ r000003be;\n" : String).toByteArray.data.toList
theorem checked916 : bytes916=statementBytes 959 (op916.map lower) ∧ bytes916.length=48 := by core033_kernel_decide
def op917 : List WordIR.Op := [.shr 959 31]
def bytes917 : Bytes := ("    let r000003c0: u32 = r000003bf >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked917 : bytes917=statementBytes 960 (op917.map lower) ∧ bytes917.length=54 := by core033_kernel_decide
def op918 : List WordIR.Op := [.bxor 960 43]
def bytes918 : Bytes := ("    let r000003c1: u32 = r000003c0 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked918 : bytes918=statementBytes 961 (op918.map lower) ∧ bytes918.length=48 := by core033_kernel_decide
def op919 : List WordIR.Op := [.shr 682 8]
def bytes919 : Bytes := ("    let r000003c2: u32 = r000002aa >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked919 : bytes919=statementBytes 962 (op919.map lower) ∧ bytes919.length=54 := by core033_kernel_decide
def op920 : List WordIR.Op := [.band 962 50]
def bytes920 : Bytes := ("    let r000003c3: u32 = r000003c2 & r00000032;\n" : String).toByteArray.data.toList
theorem checked920 : bytes920=statementBytes 963 (op920.map lower) ∧ bytes920.length=48 := by core033_kernel_decide
def op921 : List WordIR.Op := [.bxor 962 50]
def bytes921 : Bytes := ("    let r000003c4: u32 = r000003c2 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked921 : bytes921=statementBytes 964 (op921.map lower) ∧ bytes921.length=48 := by core033_kernel_decide
def op922 : List WordIR.Op := [.badd 962 50]
def bytes922 : Bytes := ("    let r000003c5: u32 = r000003c2.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked922 : bytes922=statementBytes 965 (op922.map lower) ∧ bytes922.length=60 := by core033_kernel_decide
def op923 : List WordIR.Op := [.bnot 965]
def bytes923 : Bytes := ("    let r000003c6: u32 = !r000003c5;\n" : String).toByteArray.data.toList
theorem checked923 : bytes923=statementBytes 966 (op923.map lower) ∧ bytes923.length=37 := by core033_kernel_decide
def op924 : List WordIR.Op := [.band 964 966]
def bytes924 : Bytes := ("    let r000003c7: u32 = r000003c4 & r000003c6;\n" : String).toByteArray.data.toList
theorem checked924 : bytes924=statementBytes 967 (op924.map lower) ∧ bytes924.length=48 := by core033_kernel_decide
def op925 : List WordIR.Op := [.bxor 963 967]
def bytes925 : Bytes := ("    let r000003c8: u32 = r000003c3 ^ r000003c7;\n" : String).toByteArray.data.toList
theorem checked925 : bytes925=statementBytes 968 (op925.map lower) ∧ bytes925.length=48 := by core033_kernel_decide
def op926 : List WordIR.Op := [.shr 968 31]
def bytes926 : Bytes := ("    let r000003c9: u32 = r000003c8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked926 : bytes926=statementBytes 969 (op926.map lower) ∧ bytes926.length=54 := by core033_kernel_decide
def op927 : List WordIR.Op := [.bxor 969 43]
def bytes927 : Bytes := ("    let r000003ca: u32 = r000003c9 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked927 : bytes927=statementBytes 970 (op927.map lower) ∧ bytes927.length=48 := by core033_kernel_decide
def op928 : List WordIR.Op := [.shr 685 8]
def bytes928 : Bytes := ("    let r000003cb: u32 = r000002ad >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked928 : bytes928=statementBytes 971 (op928.map lower) ∧ bytes928.length=54 := by core033_kernel_decide
def op929 : List WordIR.Op := [.band 971 50]
def bytes929 : Bytes := ("    let r000003cc: u32 = r000003cb & r00000032;\n" : String).toByteArray.data.toList
theorem checked929 : bytes929=statementBytes 972 (op929.map lower) ∧ bytes929.length=48 := by core033_kernel_decide
def op930 : List WordIR.Op := [.bxor 971 50]
def bytes930 : Bytes := ("    let r000003cd: u32 = r000003cb ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked930 : bytes930=statementBytes 973 (op930.map lower) ∧ bytes930.length=48 := by core033_kernel_decide
def op931 : List WordIR.Op := [.badd 971 50]
def bytes931 : Bytes := ("    let r000003ce: u32 = r000003cb.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked931 : bytes931=statementBytes 974 (op931.map lower) ∧ bytes931.length=60 := by core033_kernel_decide
def op932 : List WordIR.Op := [.bnot 974]
def bytes932 : Bytes := ("    let r000003cf: u32 = !r000003ce;\n" : String).toByteArray.data.toList
theorem checked932 : bytes932=statementBytes 975 (op932.map lower) ∧ bytes932.length=37 := by core033_kernel_decide
def op933 : List WordIR.Op := [.band 973 975]
def bytes933 : Bytes := ("    let r000003d0: u32 = r000003cd & r000003cf;\n" : String).toByteArray.data.toList
theorem checked933 : bytes933=statementBytes 976 (op933.map lower) ∧ bytes933.length=48 := by core033_kernel_decide
def op934 : List WordIR.Op := [.bxor 972 976]
def bytes934 : Bytes := ("    let r000003d1: u32 = r000003cc ^ r000003d0;\n" : String).toByteArray.data.toList
theorem checked934 : bytes934=statementBytes 977 (op934.map lower) ∧ bytes934.length=48 := by core033_kernel_decide
def op935 : List WordIR.Op := [.shr 977 31]
def bytes935 : Bytes := ("    let r000003d2: u32 = r000003d1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked935 : bytes935=statementBytes 978 (op935.map lower) ∧ bytes935.length=54 := by core033_kernel_decide
def op936 : List WordIR.Op := [.bxor 978 43]
def bytes936 : Bytes := ("    let r000003d3: u32 = r000003d2 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked936 : bytes936=statementBytes 979 (op936.map lower) ∧ bytes936.length=48 := by core033_kernel_decide
def op937 : List WordIR.Op := [.shr 688 8]
def bytes937 : Bytes := ("    let r000003d4: u32 = r000002b0 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked937 : bytes937=statementBytes 980 (op937.map lower) ∧ bytes937.length=54 := by core033_kernel_decide
def op938 : List WordIR.Op := [.band 980 50]
def bytes938 : Bytes := ("    let r000003d5: u32 = r000003d4 & r00000032;\n" : String).toByteArray.data.toList
theorem checked938 : bytes938=statementBytes 981 (op938.map lower) ∧ bytes938.length=48 := by core033_kernel_decide
def op939 : List WordIR.Op := [.bxor 980 50]
def bytes939 : Bytes := ("    let r000003d6: u32 = r000003d4 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked939 : bytes939=statementBytes 982 (op939.map lower) ∧ bytes939.length=48 := by core033_kernel_decide
def op940 : List WordIR.Op := [.badd 980 50]
def bytes940 : Bytes := ("    let r000003d7: u32 = r000003d4.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked940 : bytes940=statementBytes 983 (op940.map lower) ∧ bytes940.length=60 := by core033_kernel_decide
def op941 : List WordIR.Op := [.bnot 983]
def bytes941 : Bytes := ("    let r000003d8: u32 = !r000003d7;\n" : String).toByteArray.data.toList
theorem checked941 : bytes941=statementBytes 984 (op941.map lower) ∧ bytes941.length=37 := by core033_kernel_decide
def op942 : List WordIR.Op := [.band 982 984]
def bytes942 : Bytes := ("    let r000003d9: u32 = r000003d6 & r000003d8;\n" : String).toByteArray.data.toList
theorem checked942 : bytes942=statementBytes 985 (op942.map lower) ∧ bytes942.length=48 := by core033_kernel_decide
def op943 : List WordIR.Op := [.bxor 981 985]
def bytes943 : Bytes := ("    let r000003da: u32 = r000003d5 ^ r000003d9;\n" : String).toByteArray.data.toList
theorem checked943 : bytes943=statementBytes 986 (op943.map lower) ∧ bytes943.length=48 := by core033_kernel_decide
def op944 : List WordIR.Op := [.shr 986 31]
def bytes944 : Bytes := ("    let r000003db: u32 = r000003da >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked944 : bytes944=statementBytes 987 (op944.map lower) ∧ bytes944.length=54 := by core033_kernel_decide
def op945 : List WordIR.Op := [.bxor 987 43]
def bytes945 : Bytes := ("    let r000003dc: u32 = r000003db ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked945 : bytes945=statementBytes 988 (op945.map lower) ∧ bytes945.length=48 := by core033_kernel_decide
def op946 : List WordIR.Op := [.shr 691 8]
def bytes946 : Bytes := ("    let r000003dd: u32 = r000002b3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked946 : bytes946=statementBytes 989 (op946.map lower) ∧ bytes946.length=54 := by core033_kernel_decide
def op947 : List WordIR.Op := [.band 989 50]
def bytes947 : Bytes := ("    let r000003de: u32 = r000003dd & r00000032;\n" : String).toByteArray.data.toList
theorem checked947 : bytes947=statementBytes 990 (op947.map lower) ∧ bytes947.length=48 := by core033_kernel_decide
def op948 : List WordIR.Op := [.bxor 989 50]
def bytes948 : Bytes := ("    let r000003df: u32 = r000003dd ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked948 : bytes948=statementBytes 991 (op948.map lower) ∧ bytes948.length=48 := by core033_kernel_decide
def op949 : List WordIR.Op := [.badd 989 50]
def bytes949 : Bytes := ("    let r000003e0: u32 = r000003dd.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked949 : bytes949=statementBytes 992 (op949.map lower) ∧ bytes949.length=60 := by core033_kernel_decide
def op950 : List WordIR.Op := [.bnot 992]
def bytes950 : Bytes := ("    let r000003e1: u32 = !r000003e0;\n" : String).toByteArray.data.toList
theorem checked950 : bytes950=statementBytes 993 (op950.map lower) ∧ bytes950.length=37 := by core033_kernel_decide
def op951 : List WordIR.Op := [.band 991 993]
def bytes951 : Bytes := ("    let r000003e2: u32 = r000003df & r000003e1;\n" : String).toByteArray.data.toList
theorem checked951 : bytes951=statementBytes 994 (op951.map lower) ∧ bytes951.length=48 := by core033_kernel_decide
def op952 : List WordIR.Op := [.bxor 990 994]
def bytes952 : Bytes := ("    let r000003e3: u32 = r000003de ^ r000003e2;\n" : String).toByteArray.data.toList
theorem checked952 : bytes952=statementBytes 995 (op952.map lower) ∧ bytes952.length=48 := by core033_kernel_decide
def op953 : List WordIR.Op := [.shr 995 31]
def bytes953 : Bytes := ("    let r000003e4: u32 = r000003e3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked953 : bytes953=statementBytes 996 (op953.map lower) ∧ bytes953.length=54 := by core033_kernel_decide
def op954 : List WordIR.Op := [.bxor 996 43]
def bytes954 : Bytes := ("    let r000003e5: u32 = r000003e4 ^ r0000002b;\n" : String).toByteArray.data.toList
theorem checked954 : bytes954=statementBytes 997 (op954.map lower) ∧ bytes954.length=48 := by core033_kernel_decide
def op955 : List WordIR.Op := [.shr 694 8]
def bytes955 : Bytes := ("    let r000003e6: u32 = r000002b6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked955 : bytes955=statementBytes 998 (op955.map lower) ∧ bytes955.length=54 := by core033_kernel_decide
def op956 : List WordIR.Op := [.band 998 50]
def bytes956 : Bytes := ("    let r000003e7: u32 = r000003e6 & r00000032;\n" : String).toByteArray.data.toList
theorem checked956 : bytes956=statementBytes 999 (op956.map lower) ∧ bytes956.length=48 := by core033_kernel_decide
def op957 : List WordIR.Op := [.bxor 998 50]
def bytes957 : Bytes := ("    let r000003e8: u32 = r000003e6 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked957 : bytes957=statementBytes 1000 (op957.map lower) ∧ bytes957.length=48 := by core033_kernel_decide
def op958 : List WordIR.Op := [.badd 998 50]
def bytes958 : Bytes := ("    let r000003e9: u32 = r000003e6.wrapping_add(r00000032);\n" : String).toByteArray.data.toList
theorem checked958 : bytes958=statementBytes 1001 (op958.map lower) ∧ bytes958.length=60 := by core033_kernel_decide
def op959 : List WordIR.Op := [.bnot 1001]
def bytes959 : Bytes := ("    let r000003ea: u32 = !r000003e9;\n" : String).toByteArray.data.toList
theorem checked959 : bytes959=statementBytes 1002 (op959.map lower) ∧ bytes959.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op896,op897,op898,op899,op900,op901,op902,op903,op904,op905,op906,op907,op908,op909,op910,op911,op912,op913,op914,op915,op916,op917,op918,op919,op920,op921,op922,op923,op924,op925,op926,op927,op928,op929,op930,op931,op932,op933,op934,op935,op936,op937,op938,op939,op940,op941,op942,op943,op944,op945,op946,op947,op948,op949,op950,op951,op952,op953,op954,op955,op956,op957,op958,op959]
def chunks : List Bytes := [bytes896,bytes897,bytes898,bytes899,bytes900,bytes901,bytes902,bytes903,bytes904,bytes905,bytes906,bytes907,bytes908,bytes909,bytes910,bytes911,bytes912,bytes913,bytes914,bytes915,bytes916,bytes917,bytes918,bytes919,bytes920,bytes921,bytes922,bytes923,bytes924,bytes925,bytes926,bytes927,bytes928,bytes929,bytes930,bytes931,bytes932,bytes933,bytes934,bytes935,bytes936,bytes937,bytes938,bytes939,bytes940,bytes941,bytes942,bytes943,bytes944,bytes945,bytes946,bytes947,bytes948,bytes949,bytes950,bytes951,bytes952,bytes953,bytes954,bytes955,bytes956,bytes957,bytes958,bytes959]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 939 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked896.1 (.cons _ _ _ _ _ checked897.1 (.cons _ _ _ _ _ checked898.1 (.cons _ _ _ _ _ checked899.1 (.cons _ _ _ _ _ checked900.1 (.cons _ _ _ _ _ checked901.1 (.cons _ _ _ _ _ checked902.1 (.cons _ _ _ _ _ checked903.1 (.cons _ _ _ _ _ checked904.1 (.cons _ _ _ _ _ checked905.1 (.cons _ _ _ _ _ checked906.1 (.cons _ _ _ _ _ checked907.1 (.cons _ _ _ _ _ checked908.1 (.cons _ _ _ _ _ checked909.1 (.cons _ _ _ _ _ checked910.1 (.cons _ _ _ _ _ checked911.1 (.cons _ _ _ _ _ checked912.1 (.cons _ _ _ _ _ checked913.1 (.cons _ _ _ _ _ checked914.1 (.cons _ _ _ _ _ checked915.1 (.cons _ _ _ _ _ checked916.1 (.cons _ _ _ _ _ checked917.1 (.cons _ _ _ _ _ checked918.1 (.cons _ _ _ _ _ checked919.1 (.cons _ _ _ _ _ checked920.1 (.cons _ _ _ _ _ checked921.1 (.cons _ _ _ _ _ checked922.1 (.cons _ _ _ _ _ checked923.1 (.cons _ _ _ _ _ checked924.1 (.cons _ _ _ _ _ checked925.1 (.cons _ _ _ _ _ checked926.1 (.cons _ _ _ _ _ checked927.1 (.cons _ _ _ _ _ checked928.1 (.cons _ _ _ _ _ checked929.1 (.cons _ _ _ _ _ checked930.1 (.cons _ _ _ _ _ checked931.1 (.cons _ _ _ _ _ checked932.1 (.cons _ _ _ _ _ checked933.1 (.cons _ _ _ _ _ checked934.1 (.cons _ _ _ _ _ checked935.1 (.cons _ _ _ _ _ checked936.1 (.cons _ _ _ _ _ checked937.1 (.cons _ _ _ _ _ checked938.1 (.cons _ _ _ _ _ checked939.1 (.cons _ _ _ _ _ checked940.1 (.cons _ _ _ _ _ checked941.1 (.cons _ _ _ _ _ checked942.1 (.cons _ _ _ _ _ checked943.1 (.cons _ _ _ _ _ checked944.1 (.cons _ _ _ _ _ checked945.1 (.cons _ _ _ _ _ checked946.1 (.cons _ _ _ _ _ checked947.1 (.cons _ _ _ _ _ checked948.1 (.cons _ _ _ _ _ checked949.1 (.cons _ _ _ _ _ checked950.1 (.cons _ _ _ _ _ checked951.1 (.cons _ _ _ _ _ checked952.1 (.cons _ _ _ _ _ checked953.1 (.cons _ _ _ _ _ checked954.1 (.cons _ _ _ _ _ checked955.1 (.cons _ _ _ _ _ checked956.1 (.cons _ _ _ _ _ checked957.1 (.cons _ _ _ _ _ checked958.1 (.cons _ _ _ _ _ checked959.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 939 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3342 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked896.2,checked897.2,checked898.2,checked899.2,checked900.2,checked901.2,checked902.2,checked903.2,checked904.2,checked905.2,checked906.2,checked907.2,checked908.2,checked909.2,checked910.2,checked911.2,checked912.2,checked913.2,checked914.2,checked915.2,checked916.2,checked917.2,checked918.2,checked919.2,checked920.2,checked921.2,checked922.2,checked923.2,checked924.2,checked925.2,checked926.2,checked927.2,checked928.2,checked929.2,checked930.2,checked931.2,checked932.2,checked933.2,checked934.2,checked935.2,checked936.2,checked937.2,checked938.2,checked939.2,checked940.2,checked941.2,checked942.2,checked943.2,checked944.2,checked945.2,checked946.2,checked947.2,checked948.2,checked949.2,checked950.2,checked951.2,checked952.2,checked953.2,checked954.2,checked955.2,checked956.2,checked957.2,checked958.2,checked959.2]
  decide
end ArtifactSharedFrameGroup14
