import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup155
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9920 : List WordIR.Op := [.badd 10037 8547]
def bytes9920 : Bytes := ("    let r00002736: u32 = r00002735.wrapping_add(r00002163);\n" : String).toByteArray.data.toList
theorem checked9920 : bytes9920=statementBytes 10038 (op9920.map lower) ∧ bytes9920.length=60 := by core033_kernel_decide
def op9921 : List WordIR.Op := [.rotr 10023 2]
def bytes9921 : Bytes := ("    let r00002737: u32 = r00002727.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9921 : bytes9921=statementBytes 10039 (op9921.map lower) ∧ bytes9921.length=65 := by core033_kernel_decide
def op9922 : List WordIR.Op := [.rotr 10023 13]
def bytes9922 : Bytes := ("    let r00002738: u32 = r00002727.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9922 : bytes9922=statementBytes 10040 (op9922.map lower) ∧ bytes9922.length=65 := by core033_kernel_decide
def op9923 : List WordIR.Op := [.bxor 10039 10040]
def bytes9923 : Bytes := ("    let r00002739: u32 = r00002737 ^ r00002738;\n" : String).toByteArray.data.toList
theorem checked9923 : bytes9923=statementBytes 10041 (op9923.map lower) ∧ bytes9923.length=48 := by core033_kernel_decide
def op9924 : List WordIR.Op := [.rotr 10023 22]
def bytes9924 : Bytes := ("    let r0000273a: u32 = r00002727.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9924 : bytes9924=statementBytes 10042 (op9924.map lower) ∧ bytes9924.length=65 := by core033_kernel_decide
def op9925 : List WordIR.Op := [.bxor 10041 10042]
def bytes9925 : Bytes := ("    let r0000273b: u32 = r00002739 ^ r0000273a;\n" : String).toByteArray.data.toList
theorem checked9925 : bytes9925=statementBytes 10043 (op9925.map lower) ∧ bytes9925.length=48 := by core033_kernel_decide
def op9926 : List WordIR.Op := [.band 10023 9996]
def bytes9926 : Bytes := ("    let r0000273c: u32 = r00002727 & r0000270c;\n" : String).toByteArray.data.toList
theorem checked9926 : bytes9926=statementBytes 10044 (op9926.map lower) ∧ bytes9926.length=48 := by core033_kernel_decide
def op9927 : List WordIR.Op := [.band 10023 9969]
def bytes9927 : Bytes := ("    let r0000273d: u32 = r00002727 & r000026f1;\n" : String).toByteArray.data.toList
theorem checked9927 : bytes9927=statementBytes 10045 (op9927.map lower) ∧ bytes9927.length=48 := by core033_kernel_decide
def op9928 : List WordIR.Op := [.bxor 10044 10045]
def bytes9928 : Bytes := ("    let r0000273e: u32 = r0000273c ^ r0000273d;\n" : String).toByteArray.data.toList
theorem checked9928 : bytes9928=statementBytes 10046 (op9928.map lower) ∧ bytes9928.length=48 := by core033_kernel_decide
def op9929 : List WordIR.Op := [.band 9996 9969]
def bytes9929 : Bytes := ("    let r0000273f: u32 = r0000270c & r000026f1;\n" : String).toByteArray.data.toList
theorem checked9929 : bytes9929=statementBytes 10047 (op9929.map lower) ∧ bytes9929.length=48 := by core033_kernel_decide
def op9930 : List WordIR.Op := [.bxor 10046 10047]
def bytes9930 : Bytes := ("    let r00002740: u32 = r0000273e ^ r0000273f;\n" : String).toByteArray.data.toList
theorem checked9930 : bytes9930=statementBytes 10048 (op9930.map lower) ∧ bytes9930.length=48 := by core033_kernel_decide
def op9931 : List WordIR.Op := [.badd 10043 10048]
def bytes9931 : Bytes := ("    let r00002741: u32 = r0000273b.wrapping_add(r00002740);\n" : String).toByteArray.data.toList
theorem checked9931 : bytes9931=statementBytes 10049 (op9931.map lower) ∧ bytes9931.length=60 := by core033_kernel_decide
def op9932 : List WordIR.Op := [.badd 10038 10049]
def bytes9932 : Bytes := ("    let r00002742: u32 = r00002736.wrapping_add(r00002741);\n" : String).toByteArray.data.toList
theorem checked9932 : bytes9932=statementBytes 10050 (op9932.map lower) ∧ bytes9932.length=60 := by core033_kernel_decide
def op9933 : List WordIR.Op := [.badd 9942 10038]
def bytes9933 : Bytes := ("    let r00002743: u32 = r000026d6.wrapping_add(r00002736);\n" : String).toByteArray.data.toList
theorem checked9933 : bytes9933=statementBytes 10051 (op9933.map lower) ∧ bytes9933.length=60 := by core033_kernel_decide
def op9934 : List WordIR.Op := [.rotr 10051 6]
def bytes9934 : Bytes := ("    let r00002744: u32 = r00002743.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9934 : bytes9934=statementBytes 10052 (op9934.map lower) ∧ bytes9934.length=65 := by core033_kernel_decide
def op9935 : List WordIR.Op := [.rotr 10051 11]
def bytes9935 : Bytes := ("    let r00002745: u32 = r00002743.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9935 : bytes9935=statementBytes 10053 (op9935.map lower) ∧ bytes9935.length=65 := by core033_kernel_decide
def op9936 : List WordIR.Op := [.bxor 10052 10053]
def bytes9936 : Bytes := ("    let r00002746: u32 = r00002744 ^ r00002745;\n" : String).toByteArray.data.toList
theorem checked9936 : bytes9936=statementBytes 10054 (op9936.map lower) ∧ bytes9936.length=48 := by core033_kernel_decide
def op9937 : List WordIR.Op := [.rotr 10051 25]
def bytes9937 : Bytes := ("    let r00002747: u32 = r00002743.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9937 : bytes9937=statementBytes 10055 (op9937.map lower) ∧ bytes9937.length=65 := by core033_kernel_decide
def op9938 : List WordIR.Op := [.bxor 10054 10055]
def bytes9938 : Bytes := ("    let r00002748: u32 = r00002746 ^ r00002747;\n" : String).toByteArray.data.toList
theorem checked9938 : bytes9938=statementBytes 10056 (op9938.map lower) ∧ bytes9938.length=48 := by core033_kernel_decide
def op9939 : List WordIR.Op := [.badd 9970 10056]
def bytes9939 : Bytes := ("    let r00002749: u32 = r000026f2.wrapping_add(r00002748);\n" : String).toByteArray.data.toList
theorem checked9939 : bytes9939=statementBytes 10057 (op9939.map lower) ∧ bytes9939.length=60 := by core033_kernel_decide
def op9940 : List WordIR.Op := [.band 10051 10024]
def bytes9940 : Bytes := ("    let r0000274a: u32 = r00002743 & r00002728;\n" : String).toByteArray.data.toList
theorem checked9940 : bytes9940=statementBytes 10058 (op9940.map lower) ∧ bytes9940.length=48 := by core033_kernel_decide
def op9941 : List WordIR.Op := [.bnot 10051]
def bytes9941 : Bytes := ("    let r0000274b: u32 = !r00002743;\n" : String).toByteArray.data.toList
theorem checked9941 : bytes9941=statementBytes 10059 (op9941.map lower) ∧ bytes9941.length=37 := by core033_kernel_decide
def op9942 : List WordIR.Op := [.band 10059 9997]
def bytes9942 : Bytes := ("    let r0000274c: u32 = r0000274b & r0000270d;\n" : String).toByteArray.data.toList
theorem checked9942 : bytes9942=statementBytes 10060 (op9942.map lower) ∧ bytes9942.length=48 := by core033_kernel_decide
def op9943 : List WordIR.Op := [.bxor 10058 10060]
def bytes9943 : Bytes := ("    let r0000274d: u32 = r0000274a ^ r0000274c;\n" : String).toByteArray.data.toList
theorem checked9943 : bytes9943=statementBytes 10061 (op9943.map lower) ∧ bytes9943.length=48 := by core033_kernel_decide
def op9944 : List WordIR.Op := [.badd 10057 10061]
def bytes9944 : Bytes := ("    let r0000274e: u32 = r00002749.wrapping_add(r0000274d);\n" : String).toByteArray.data.toList
theorem checked9944 : bytes9944=statementBytes 10062 (op9944.map lower) ∧ bytes9944.length=60 := by core033_kernel_decide
def op9945 : List WordIR.Op := [.literal (BitVec.ofNat 32 430227734)]
def bytes9945 : Bytes := ("    let r0000274f: u32 = 0x19a4c116_u32;\n" : String).toByteArray.data.toList
theorem checked9945 : bytes9945=statementBytes 10063 (op9945.map lower) ∧ bytes9945.length=41 := by core033_kernel_decide
def op9946 : List WordIR.Op := [.badd 10062 10063]
def bytes9946 : Bytes := ("    let r00002750: u32 = r0000274e.wrapping_add(r0000274f);\n" : String).toByteArray.data.toList
theorem checked9946 : bytes9946=statementBytes 10064 (op9946.map lower) ∧ bytes9946.length=60 := by core033_kernel_decide
def op9947 : List WordIR.Op := [.badd 10064 8560]
def bytes9947 : Bytes := ("    let r00002751: u32 = r00002750.wrapping_add(r00002170);\n" : String).toByteArray.data.toList
theorem checked9947 : bytes9947=statementBytes 10065 (op9947.map lower) ∧ bytes9947.length=60 := by core033_kernel_decide
def op9948 : List WordIR.Op := [.rotr 10050 2]
def bytes9948 : Bytes := ("    let r00002752: u32 = r00002742.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9948 : bytes9948=statementBytes 10066 (op9948.map lower) ∧ bytes9948.length=65 := by core033_kernel_decide
def op9949 : List WordIR.Op := [.rotr 10050 13]
def bytes9949 : Bytes := ("    let r00002753: u32 = r00002742.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9949 : bytes9949=statementBytes 10067 (op9949.map lower) ∧ bytes9949.length=65 := by core033_kernel_decide
def op9950 : List WordIR.Op := [.bxor 10066 10067]
def bytes9950 : Bytes := ("    let r00002754: u32 = r00002752 ^ r00002753;\n" : String).toByteArray.data.toList
theorem checked9950 : bytes9950=statementBytes 10068 (op9950.map lower) ∧ bytes9950.length=48 := by core033_kernel_decide
def op9951 : List WordIR.Op := [.rotr 10050 22]
def bytes9951 : Bytes := ("    let r00002755: u32 = r00002742.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9951 : bytes9951=statementBytes 10069 (op9951.map lower) ∧ bytes9951.length=65 := by core033_kernel_decide
def op9952 : List WordIR.Op := [.bxor 10068 10069]
def bytes9952 : Bytes := ("    let r00002756: u32 = r00002754 ^ r00002755;\n" : String).toByteArray.data.toList
theorem checked9952 : bytes9952=statementBytes 10070 (op9952.map lower) ∧ bytes9952.length=48 := by core033_kernel_decide
def op9953 : List WordIR.Op := [.band 10050 10023]
def bytes9953 : Bytes := ("    let r00002757: u32 = r00002742 & r00002727;\n" : String).toByteArray.data.toList
theorem checked9953 : bytes9953=statementBytes 10071 (op9953.map lower) ∧ bytes9953.length=48 := by core033_kernel_decide
def op9954 : List WordIR.Op := [.band 10050 9996]
def bytes9954 : Bytes := ("    let r00002758: u32 = r00002742 & r0000270c;\n" : String).toByteArray.data.toList
theorem checked9954 : bytes9954=statementBytes 10072 (op9954.map lower) ∧ bytes9954.length=48 := by core033_kernel_decide
def op9955 : List WordIR.Op := [.bxor 10071 10072]
def bytes9955 : Bytes := ("    let r00002759: u32 = r00002757 ^ r00002758;\n" : String).toByteArray.data.toList
theorem checked9955 : bytes9955=statementBytes 10073 (op9955.map lower) ∧ bytes9955.length=48 := by core033_kernel_decide
def op9956 : List WordIR.Op := [.band 10023 9996]
def bytes9956 : Bytes := ("    let r0000275a: u32 = r00002727 & r0000270c;\n" : String).toByteArray.data.toList
theorem checked9956 : bytes9956=statementBytes 10074 (op9956.map lower) ∧ bytes9956.length=48 := by core033_kernel_decide
def op9957 : List WordIR.Op := [.bxor 10073 10074]
def bytes9957 : Bytes := ("    let r0000275b: u32 = r00002759 ^ r0000275a;\n" : String).toByteArray.data.toList
theorem checked9957 : bytes9957=statementBytes 10075 (op9957.map lower) ∧ bytes9957.length=48 := by core033_kernel_decide
def op9958 : List WordIR.Op := [.badd 10070 10075]
def bytes9958 : Bytes := ("    let r0000275c: u32 = r00002756.wrapping_add(r0000275b);\n" : String).toByteArray.data.toList
theorem checked9958 : bytes9958=statementBytes 10076 (op9958.map lower) ∧ bytes9958.length=60 := by core033_kernel_decide
def op9959 : List WordIR.Op := [.badd 10065 10076]
def bytes9959 : Bytes := ("    let r0000275d: u32 = r00002751.wrapping_add(r0000275c);\n" : String).toByteArray.data.toList
theorem checked9959 : bytes9959=statementBytes 10077 (op9959.map lower) ∧ bytes9959.length=60 := by core033_kernel_decide
def op9960 : List WordIR.Op := [.badd 9969 10065]
def bytes9960 : Bytes := ("    let r0000275e: u32 = r000026f1.wrapping_add(r00002751);\n" : String).toByteArray.data.toList
theorem checked9960 : bytes9960=statementBytes 10078 (op9960.map lower) ∧ bytes9960.length=60 := by core033_kernel_decide
def op9961 : List WordIR.Op := [.rotr 10078 6]
def bytes9961 : Bytes := ("    let r0000275f: u32 = r0000275e.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9961 : bytes9961=statementBytes 10079 (op9961.map lower) ∧ bytes9961.length=65 := by core033_kernel_decide
def op9962 : List WordIR.Op := [.rotr 10078 11]
def bytes9962 : Bytes := ("    let r00002760: u32 = r0000275e.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9962 : bytes9962=statementBytes 10080 (op9962.map lower) ∧ bytes9962.length=65 := by core033_kernel_decide
def op9963 : List WordIR.Op := [.bxor 10079 10080]
def bytes9963 : Bytes := ("    let r00002761: u32 = r0000275f ^ r00002760;\n" : String).toByteArray.data.toList
theorem checked9963 : bytes9963=statementBytes 10081 (op9963.map lower) ∧ bytes9963.length=48 := by core033_kernel_decide
def op9964 : List WordIR.Op := [.rotr 10078 25]
def bytes9964 : Bytes := ("    let r00002762: u32 = r0000275e.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9964 : bytes9964=statementBytes 10082 (op9964.map lower) ∧ bytes9964.length=65 := by core033_kernel_decide
def op9965 : List WordIR.Op := [.bxor 10081 10082]
def bytes9965 : Bytes := ("    let r00002763: u32 = r00002761 ^ r00002762;\n" : String).toByteArray.data.toList
theorem checked9965 : bytes9965=statementBytes 10083 (op9965.map lower) ∧ bytes9965.length=48 := by core033_kernel_decide
def op9966 : List WordIR.Op := [.badd 9997 10083]
def bytes9966 : Bytes := ("    let r00002764: u32 = r0000270d.wrapping_add(r00002763);\n" : String).toByteArray.data.toList
theorem checked9966 : bytes9966=statementBytes 10084 (op9966.map lower) ∧ bytes9966.length=60 := by core033_kernel_decide
def op9967 : List WordIR.Op := [.band 10078 10051]
def bytes9967 : Bytes := ("    let r00002765: u32 = r0000275e & r00002743;\n" : String).toByteArray.data.toList
theorem checked9967 : bytes9967=statementBytes 10085 (op9967.map lower) ∧ bytes9967.length=48 := by core033_kernel_decide
def op9968 : List WordIR.Op := [.bnot 10078]
def bytes9968 : Bytes := ("    let r00002766: u32 = !r0000275e;\n" : String).toByteArray.data.toList
theorem checked9968 : bytes9968=statementBytes 10086 (op9968.map lower) ∧ bytes9968.length=37 := by core033_kernel_decide
def op9969 : List WordIR.Op := [.band 10086 10024]
def bytes9969 : Bytes := ("    let r00002767: u32 = r00002766 & r00002728;\n" : String).toByteArray.data.toList
theorem checked9969 : bytes9969=statementBytes 10087 (op9969.map lower) ∧ bytes9969.length=48 := by core033_kernel_decide
def op9970 : List WordIR.Op := [.bxor 10085 10087]
def bytes9970 : Bytes := ("    let r00002768: u32 = r00002765 ^ r00002767;\n" : String).toByteArray.data.toList
theorem checked9970 : bytes9970=statementBytes 10088 (op9970.map lower) ∧ bytes9970.length=48 := by core033_kernel_decide
def op9971 : List WordIR.Op := [.badd 10084 10088]
def bytes9971 : Bytes := ("    let r00002769: u32 = r00002764.wrapping_add(r00002768);\n" : String).toByteArray.data.toList
theorem checked9971 : bytes9971=statementBytes 10089 (op9971.map lower) ∧ bytes9971.length=60 := by core033_kernel_decide
def op9972 : List WordIR.Op := [.literal (BitVec.ofNat 32 506948616)]
def bytes9972 : Bytes := ("    let r0000276a: u32 = 0x1e376c08_u32;\n" : String).toByteArray.data.toList
theorem checked9972 : bytes9972=statementBytes 10090 (op9972.map lower) ∧ bytes9972.length=41 := by core033_kernel_decide
def op9973 : List WordIR.Op := [.badd 10089 10090]
def bytes9973 : Bytes := ("    let r0000276b: u32 = r00002769.wrapping_add(r0000276a);\n" : String).toByteArray.data.toList
theorem checked9973 : bytes9973=statementBytes 10091 (op9973.map lower) ∧ bytes9973.length=60 := by core033_kernel_decide
def op9974 : List WordIR.Op := [.badd 10091 8573]
def bytes9974 : Bytes := ("    let r0000276c: u32 = r0000276b.wrapping_add(r0000217d);\n" : String).toByteArray.data.toList
theorem checked9974 : bytes9974=statementBytes 10092 (op9974.map lower) ∧ bytes9974.length=60 := by core033_kernel_decide
def op9975 : List WordIR.Op := [.rotr 10077 2]
def bytes9975 : Bytes := ("    let r0000276d: u32 = r0000275d.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9975 : bytes9975=statementBytes 10093 (op9975.map lower) ∧ bytes9975.length=65 := by core033_kernel_decide
def op9976 : List WordIR.Op := [.rotr 10077 13]
def bytes9976 : Bytes := ("    let r0000276e: u32 = r0000275d.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9976 : bytes9976=statementBytes 10094 (op9976.map lower) ∧ bytes9976.length=65 := by core033_kernel_decide
def op9977 : List WordIR.Op := [.bxor 10093 10094]
def bytes9977 : Bytes := ("    let r0000276f: u32 = r0000276d ^ r0000276e;\n" : String).toByteArray.data.toList
theorem checked9977 : bytes9977=statementBytes 10095 (op9977.map lower) ∧ bytes9977.length=48 := by core033_kernel_decide
def op9978 : List WordIR.Op := [.rotr 10077 22]
def bytes9978 : Bytes := ("    let r00002770: u32 = r0000275d.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9978 : bytes9978=statementBytes 10096 (op9978.map lower) ∧ bytes9978.length=65 := by core033_kernel_decide
def op9979 : List WordIR.Op := [.bxor 10095 10096]
def bytes9979 : Bytes := ("    let r00002771: u32 = r0000276f ^ r00002770;\n" : String).toByteArray.data.toList
theorem checked9979 : bytes9979=statementBytes 10097 (op9979.map lower) ∧ bytes9979.length=48 := by core033_kernel_decide
def op9980 : List WordIR.Op := [.band 10077 10050]
def bytes9980 : Bytes := ("    let r00002772: u32 = r0000275d & r00002742;\n" : String).toByteArray.data.toList
theorem checked9980 : bytes9980=statementBytes 10098 (op9980.map lower) ∧ bytes9980.length=48 := by core033_kernel_decide
def op9981 : List WordIR.Op := [.band 10077 10023]
def bytes9981 : Bytes := ("    let r00002773: u32 = r0000275d & r00002727;\n" : String).toByteArray.data.toList
theorem checked9981 : bytes9981=statementBytes 10099 (op9981.map lower) ∧ bytes9981.length=48 := by core033_kernel_decide
def op9982 : List WordIR.Op := [.bxor 10098 10099]
def bytes9982 : Bytes := ("    let r00002774: u32 = r00002772 ^ r00002773;\n" : String).toByteArray.data.toList
theorem checked9982 : bytes9982=statementBytes 10100 (op9982.map lower) ∧ bytes9982.length=48 := by core033_kernel_decide
def op9983 : List WordIR.Op := [.band 10050 10023]
def bytes9983 : Bytes := ("    let r00002775: u32 = r00002742 & r00002727;\n" : String).toByteArray.data.toList
theorem checked9983 : bytes9983=statementBytes 10101 (op9983.map lower) ∧ bytes9983.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9920,op9921,op9922,op9923,op9924,op9925,op9926,op9927,op9928,op9929,op9930,op9931,op9932,op9933,op9934,op9935,op9936,op9937,op9938,op9939,op9940,op9941,op9942,op9943,op9944,op9945,op9946,op9947,op9948,op9949,op9950,op9951,op9952,op9953,op9954,op9955,op9956,op9957,op9958,op9959,op9960,op9961,op9962,op9963,op9964,op9965,op9966,op9967,op9968,op9969,op9970,op9971,op9972,op9973,op9974,op9975,op9976,op9977,op9978,op9979,op9980,op9981,op9982,op9983]
def chunks : List Bytes := [bytes9920,bytes9921,bytes9922,bytes9923,bytes9924,bytes9925,bytes9926,bytes9927,bytes9928,bytes9929,bytes9930,bytes9931,bytes9932,bytes9933,bytes9934,bytes9935,bytes9936,bytes9937,bytes9938,bytes9939,bytes9940,bytes9941,bytes9942,bytes9943,bytes9944,bytes9945,bytes9946,bytes9947,bytes9948,bytes9949,bytes9950,bytes9951,bytes9952,bytes9953,bytes9954,bytes9955,bytes9956,bytes9957,bytes9958,bytes9959,bytes9960,bytes9961,bytes9962,bytes9963,bytes9964,bytes9965,bytes9966,bytes9967,bytes9968,bytes9969,bytes9970,bytes9971,bytes9972,bytes9973,bytes9974,bytes9975,bytes9976,bytes9977,bytes9978,bytes9979,bytes9980,bytes9981,bytes9982,bytes9983]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10038 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9920.1 (.cons _ _ _ _ _ checked9921.1 (.cons _ _ _ _ _ checked9922.1 (.cons _ _ _ _ _ checked9923.1 (.cons _ _ _ _ _ checked9924.1 (.cons _ _ _ _ _ checked9925.1 (.cons _ _ _ _ _ checked9926.1 (.cons _ _ _ _ _ checked9927.1 (.cons _ _ _ _ _ checked9928.1 (.cons _ _ _ _ _ checked9929.1 (.cons _ _ _ _ _ checked9930.1 (.cons _ _ _ _ _ checked9931.1 (.cons _ _ _ _ _ checked9932.1 (.cons _ _ _ _ _ checked9933.1 (.cons _ _ _ _ _ checked9934.1 (.cons _ _ _ _ _ checked9935.1 (.cons _ _ _ _ _ checked9936.1 (.cons _ _ _ _ _ checked9937.1 (.cons _ _ _ _ _ checked9938.1 (.cons _ _ _ _ _ checked9939.1 (.cons _ _ _ _ _ checked9940.1 (.cons _ _ _ _ _ checked9941.1 (.cons _ _ _ _ _ checked9942.1 (.cons _ _ _ _ _ checked9943.1 (.cons _ _ _ _ _ checked9944.1 (.cons _ _ _ _ _ checked9945.1 (.cons _ _ _ _ _ checked9946.1 (.cons _ _ _ _ _ checked9947.1 (.cons _ _ _ _ _ checked9948.1 (.cons _ _ _ _ _ checked9949.1 (.cons _ _ _ _ _ checked9950.1 (.cons _ _ _ _ _ checked9951.1 (.cons _ _ _ _ _ checked9952.1 (.cons _ _ _ _ _ checked9953.1 (.cons _ _ _ _ _ checked9954.1 (.cons _ _ _ _ _ checked9955.1 (.cons _ _ _ _ _ checked9956.1 (.cons _ _ _ _ _ checked9957.1 (.cons _ _ _ _ _ checked9958.1 (.cons _ _ _ _ _ checked9959.1 (.cons _ _ _ _ _ checked9960.1 (.cons _ _ _ _ _ checked9961.1 (.cons _ _ _ _ _ checked9962.1 (.cons _ _ _ _ _ checked9963.1 (.cons _ _ _ _ _ checked9964.1 (.cons _ _ _ _ _ checked9965.1 (.cons _ _ _ _ _ checked9966.1 (.cons _ _ _ _ _ checked9967.1 (.cons _ _ _ _ _ checked9968.1 (.cons _ _ _ _ _ checked9969.1 (.cons _ _ _ _ _ checked9970.1 (.cons _ _ _ _ _ checked9971.1 (.cons _ _ _ _ _ checked9972.1 (.cons _ _ _ _ _ checked9973.1 (.cons _ _ _ _ _ checked9974.1 (.cons _ _ _ _ _ checked9975.1 (.cons _ _ _ _ _ checked9976.1 (.cons _ _ _ _ _ checked9977.1 (.cons _ _ _ _ _ checked9978.1 (.cons _ _ _ _ _ checked9979.1 (.cons _ _ _ _ _ checked9980.1 (.cons _ _ _ _ _ checked9981.1 (.cons _ _ _ _ _ checked9982.1 (.cons _ _ _ _ _ checked9983.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10038 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3471 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9920.2,checked9921.2,checked9922.2,checked9923.2,checked9924.2,checked9925.2,checked9926.2,checked9927.2,checked9928.2,checked9929.2,checked9930.2,checked9931.2,checked9932.2,checked9933.2,checked9934.2,checked9935.2,checked9936.2,checked9937.2,checked9938.2,checked9939.2,checked9940.2,checked9941.2,checked9942.2,checked9943.2,checked9944.2,checked9945.2,checked9946.2,checked9947.2,checked9948.2,checked9949.2,checked9950.2,checked9951.2,checked9952.2,checked9953.2,checked9954.2,checked9955.2,checked9956.2,checked9957.2,checked9958.2,checked9959.2,checked9960.2,checked9961.2,checked9962.2,checked9963.2,checked9964.2,checked9965.2,checked9966.2,checked9967.2,checked9968.2,checked9969.2,checked9970.2,checked9971.2,checked9972.2,checked9973.2,checked9974.2,checked9975.2,checked9976.2,checked9977.2,checked9978.2,checked9979.2,checked9980.2,checked9981.2,checked9982.2,checked9983.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup155
