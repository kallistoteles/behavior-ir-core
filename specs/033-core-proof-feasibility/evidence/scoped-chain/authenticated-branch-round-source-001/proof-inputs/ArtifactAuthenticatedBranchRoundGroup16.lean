import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup16
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1024 : List WordIR.Op := [.bnot 1141]
def bytes1024 : Bytes := ("    let r00000476: u32 = !r00000475;\n" : String).toByteArray.data.toList
theorem checked1024 : bytes1024=statementBytes 1142 (op1024.map lower) ∧ bytes1024.length=37 := by core033_kernel_decide
def op1025 : List WordIR.Op := [.bnot 247]
def bytes1025 : Bytes := ("    let r00000477: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked1025 : bytes1025=statementBytes 1143 (op1025.map lower) ∧ bytes1025.length=37 := by core033_kernel_decide
def op1026 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1026 : Bytes := ("    let r00000478: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1026 : bytes1026=statementBytes 1144 (op1026.map lower) ∧ bytes1026.length=41 := by core033_kernel_decide
def op1027 : List WordIR.Op := [.badd 1143 1144]
def bytes1027 : Bytes := ("    let r00000479: u32 = r00000477.wrapping_add(r00000478);\n" : String).toByteArray.data.toList
theorem checked1027 : bytes1027=statementBytes 1145 (op1027.map lower) ∧ bytes1027.length=60 := by core033_kernel_decide
def op1028 : List WordIR.Op := [.band 1145 34]
def bytes1028 : Bytes := ("    let r0000047a: u32 = r00000479 & r00000022;\n" : String).toByteArray.data.toList
theorem checked1028 : bytes1028=statementBytes 1146 (op1028.map lower) ∧ bytes1028.length=48 := by core033_kernel_decide
def op1029 : List WordIR.Op := [.bnot 247]
def bytes1029 : Bytes := ("    let r0000047b: u32 = !r000000f7;\n" : String).toByteArray.data.toList
theorem checked1029 : bytes1029=statementBytes 1147 (op1029.map lower) ∧ bytes1029.length=37 := by core033_kernel_decide
def op1030 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1030 : Bytes := ("    let r0000047c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1030 : bytes1030=statementBytes 1148 (op1030.map lower) ∧ bytes1030.length=41 := by core033_kernel_decide
def op1031 : List WordIR.Op := [.badd 1147 1148]
def bytes1031 : Bytes := ("    let r0000047d: u32 = r0000047b.wrapping_add(r0000047c);\n" : String).toByteArray.data.toList
theorem checked1031 : bytes1031=statementBytes 1149 (op1031.map lower) ∧ bytes1031.length=60 := by core033_kernel_decide
def op1032 : List WordIR.Op := [.bnot 1149]
def bytes1032 : Bytes := ("    let r0000047e: u32 = !r0000047d;\n" : String).toByteArray.data.toList
theorem checked1032 : bytes1032=statementBytes 1150 (op1032.map lower) ∧ bytes1032.length=37 := by core033_kernel_decide
def op1033 : List WordIR.Op := [.band 1150 22]
def bytes1033 : Bytes := ("    let r0000047f: u32 = r0000047e & r00000016;\n" : String).toByteArray.data.toList
theorem checked1033 : bytes1033=statementBytes 1151 (op1033.map lower) ∧ bytes1033.length=48 := by core033_kernel_decide
def op1034 : List WordIR.Op := [.bxor 1146 1151]
def bytes1034 : Bytes := ("    let r00000480: u32 = r0000047a ^ r0000047f;\n" : String).toByteArray.data.toList
theorem checked1034 : bytes1034=statementBytes 1152 (op1034.map lower) ∧ bytes1034.length=48 := by core033_kernel_decide
def op1035 : List WordIR.Op := [.band 1142 1152]
def bytes1035 : Bytes := ("    let r00000481: u32 = r00000476 & r00000480;\n" : String).toByteArray.data.toList
theorem checked1035 : bytes1035=statementBytes 1153 (op1035.map lower) ∧ bytes1035.length=48 := by core033_kernel_decide
def op1036 : List WordIR.Op := [.bxor 1138 1153]
def bytes1036 : Bytes := ("    let r00000482: u32 = r00000472 ^ r00000481;\n" : String).toByteArray.data.toList
theorem checked1036 : bytes1036=statementBytes 1154 (op1036.map lower) ∧ bytes1036.length=48 := by core033_kernel_decide
def op1037 : List WordIR.Op := [.bnot 182]
def bytes1037 : Bytes := ("    let r00000483: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1037 : bytes1037=statementBytes 1155 (op1037.map lower) ∧ bytes1037.length=37 := by core033_kernel_decide
def op1038 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1038 : Bytes := ("    let r00000484: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1038 : bytes1038=statementBytes 1156 (op1038.map lower) ∧ bytes1038.length=41 := by core033_kernel_decide
def op1039 : List WordIR.Op := [.badd 1155 1156]
def bytes1039 : Bytes := ("    let r00000485: u32 = r00000483.wrapping_add(r00000484);\n" : String).toByteArray.data.toList
theorem checked1039 : bytes1039=statementBytes 1157 (op1039.map lower) ∧ bytes1039.length=60 := by core033_kernel_decide
def op1040 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1040 : Bytes := ("    let r00000486: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1040 : bytes1040=statementBytes 1158 (op1040.map lower) ∧ bytes1040.length=41 := by core033_kernel_decide
def op1041 : List WordIR.Op := [.band 1157 1158]
def bytes1041 : Bytes := ("    let r00000487: u32 = r00000485 & r00000486;\n" : String).toByteArray.data.toList
theorem checked1041 : bytes1041=statementBytes 1159 (op1041.map lower) ∧ bytes1041.length=48 := by core033_kernel_decide
def op1042 : List WordIR.Op := [.bnot 182]
def bytes1042 : Bytes := ("    let r00000488: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1042 : bytes1042=statementBytes 1160 (op1042.map lower) ∧ bytes1042.length=37 := by core033_kernel_decide
def op1043 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1043 : Bytes := ("    let r00000489: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1043 : bytes1043=statementBytes 1161 (op1043.map lower) ∧ bytes1043.length=41 := by core033_kernel_decide
def op1044 : List WordIR.Op := [.badd 1160 1161]
def bytes1044 : Bytes := ("    let r0000048a: u32 = r00000488.wrapping_add(r00000489);\n" : String).toByteArray.data.toList
theorem checked1044 : bytes1044=statementBytes 1162 (op1044.map lower) ∧ bytes1044.length=60 := by core033_kernel_decide
def op1045 : List WordIR.Op := [.bnot 1162]
def bytes1045 : Bytes := ("    let r0000048b: u32 = !r0000048a;\n" : String).toByteArray.data.toList
theorem checked1045 : bytes1045=statementBytes 1163 (op1045.map lower) ∧ bytes1045.length=37 := by core033_kernel_decide
def op1046 : List WordIR.Op := [.band 1163 46]
def bytes1046 : Bytes := ("    let r0000048c: u32 = r0000048b & r0000002e;\n" : String).toByteArray.data.toList
theorem checked1046 : bytes1046=statementBytes 1164 (op1046.map lower) ∧ bytes1046.length=48 := by core033_kernel_decide
def op1047 : List WordIR.Op := [.bxor 1159 1164]
def bytes1047 : Bytes := ("    let r0000048d: u32 = r00000487 ^ r0000048c;\n" : String).toByteArray.data.toList
theorem checked1047 : bytes1047=statementBytes 1165 (op1047.map lower) ∧ bytes1047.length=48 := by core033_kernel_decide
def op1048 : List WordIR.Op := [.bnot 182]
def bytes1048 : Bytes := ("    let r0000048e: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1048 : bytes1048=statementBytes 1166 (op1048.map lower) ∧ bytes1048.length=37 := by core033_kernel_decide
def op1049 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1049 : Bytes := ("    let r0000048f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1049 : bytes1049=statementBytes 1167 (op1049.map lower) ∧ bytes1049.length=41 := by core033_kernel_decide
def op1050 : List WordIR.Op := [.badd 1166 1167]
def bytes1050 : Bytes := ("    let r00000490: u32 = r0000048e.wrapping_add(r0000048f);\n" : String).toByteArray.data.toList
theorem checked1050 : bytes1050=statementBytes 1168 (op1050.map lower) ∧ bytes1050.length=60 := by core033_kernel_decide
def op1051 : List WordIR.Op := [.band 1168 47]
def bytes1051 : Bytes := ("    let r00000491: u32 = r00000490 & r0000002f;\n" : String).toByteArray.data.toList
theorem checked1051 : bytes1051=statementBytes 1169 (op1051.map lower) ∧ bytes1051.length=48 := by core033_kernel_decide
def op1052 : List WordIR.Op := [.bnot 182]
def bytes1052 : Bytes := ("    let r00000492: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1052 : bytes1052=statementBytes 1170 (op1052.map lower) ∧ bytes1052.length=37 := by core033_kernel_decide
def op1053 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1053 : Bytes := ("    let r00000493: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1053 : bytes1053=statementBytes 1171 (op1053.map lower) ∧ bytes1053.length=41 := by core033_kernel_decide
def op1054 : List WordIR.Op := [.badd 1170 1171]
def bytes1054 : Bytes := ("    let r00000494: u32 = r00000492.wrapping_add(r00000493);\n" : String).toByteArray.data.toList
theorem checked1054 : bytes1054=statementBytes 1172 (op1054.map lower) ∧ bytes1054.length=60 := by core033_kernel_decide
def op1055 : List WordIR.Op := [.bnot 1172]
def bytes1055 : Bytes := ("    let r00000495: u32 = !r00000494;\n" : String).toByteArray.data.toList
theorem checked1055 : bytes1055=statementBytes 1173 (op1055.map lower) ∧ bytes1055.length=37 := by core033_kernel_decide
def op1056 : List WordIR.Op := [.band 1173 47]
def bytes1056 : Bytes := ("    let r00000496: u32 = r00000495 & r0000002f;\n" : String).toByteArray.data.toList
theorem checked1056 : bytes1056=statementBytes 1174 (op1056.map lower) ∧ bytes1056.length=48 := by core033_kernel_decide
def op1057 : List WordIR.Op := [.bxor 1169 1174]
def bytes1057 : Bytes := ("    let r00000497: u32 = r00000491 ^ r00000496;\n" : String).toByteArray.data.toList
theorem checked1057 : bytes1057=statementBytes 1175 (op1057.map lower) ∧ bytes1057.length=48 := by core033_kernel_decide
def op1058 : List WordIR.Op := [.bnot 182]
def bytes1058 : Bytes := ("    let r00000498: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1058 : bytes1058=statementBytes 1176 (op1058.map lower) ∧ bytes1058.length=37 := by core033_kernel_decide
def op1059 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1059 : Bytes := ("    let r00000499: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1059 : bytes1059=statementBytes 1177 (op1059.map lower) ∧ bytes1059.length=41 := by core033_kernel_decide
def op1060 : List WordIR.Op := [.badd 1176 1177]
def bytes1060 : Bytes := ("    let r0000049a: u32 = r00000498.wrapping_add(r00000499);\n" : String).toByteArray.data.toList
theorem checked1060 : bytes1060=statementBytes 1178 (op1060.map lower) ∧ bytes1060.length=60 := by core033_kernel_decide
def op1061 : List WordIR.Op := [.band 1178 48]
def bytes1061 : Bytes := ("    let r0000049b: u32 = r0000049a & r00000030;\n" : String).toByteArray.data.toList
theorem checked1061 : bytes1061=statementBytes 1179 (op1061.map lower) ∧ bytes1061.length=48 := by core033_kernel_decide
def op1062 : List WordIR.Op := [.bnot 182]
def bytes1062 : Bytes := ("    let r0000049c: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1062 : bytes1062=statementBytes 1180 (op1062.map lower) ∧ bytes1062.length=37 := by core033_kernel_decide
def op1063 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1063 : Bytes := ("    let r0000049d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1063 : bytes1063=statementBytes 1181 (op1063.map lower) ∧ bytes1063.length=41 := by core033_kernel_decide
def op1064 : List WordIR.Op := [.badd 1180 1181]
def bytes1064 : Bytes := ("    let r0000049e: u32 = r0000049c.wrapping_add(r0000049d);\n" : String).toByteArray.data.toList
theorem checked1064 : bytes1064=statementBytes 1182 (op1064.map lower) ∧ bytes1064.length=60 := by core033_kernel_decide
def op1065 : List WordIR.Op := [.bnot 1182]
def bytes1065 : Bytes := ("    let r0000049f: u32 = !r0000049e;\n" : String).toByteArray.data.toList
theorem checked1065 : bytes1065=statementBytes 1183 (op1065.map lower) ∧ bytes1065.length=37 := by core033_kernel_decide
def op1066 : List WordIR.Op := [.band 1183 48]
def bytes1066 : Bytes := ("    let r000004a0: u32 = r0000049f & r00000030;\n" : String).toByteArray.data.toList
theorem checked1066 : bytes1066=statementBytes 1184 (op1066.map lower) ∧ bytes1066.length=48 := by core033_kernel_decide
def op1067 : List WordIR.Op := [.bxor 1179 1184]
def bytes1067 : Bytes := ("    let r000004a1: u32 = r0000049b ^ r000004a0;\n" : String).toByteArray.data.toList
theorem checked1067 : bytes1067=statementBytes 1185 (op1067.map lower) ∧ bytes1067.length=48 := by core033_kernel_decide
def op1068 : List WordIR.Op := [.bnot 182]
def bytes1068 : Bytes := ("    let r000004a2: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1068 : bytes1068=statementBytes 1186 (op1068.map lower) ∧ bytes1068.length=37 := by core033_kernel_decide
def op1069 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1069 : Bytes := ("    let r000004a3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1069 : bytes1069=statementBytes 1187 (op1069.map lower) ∧ bytes1069.length=41 := by core033_kernel_decide
def op1070 : List WordIR.Op := [.badd 1186 1187]
def bytes1070 : Bytes := ("    let r000004a4: u32 = r000004a2.wrapping_add(r000004a3);\n" : String).toByteArray.data.toList
theorem checked1070 : bytes1070=statementBytes 1188 (op1070.map lower) ∧ bytes1070.length=60 := by core033_kernel_decide
def op1071 : List WordIR.Op := [.band 1188 49]
def bytes1071 : Bytes := ("    let r000004a5: u32 = r000004a4 & r00000031;\n" : String).toByteArray.data.toList
theorem checked1071 : bytes1071=statementBytes 1189 (op1071.map lower) ∧ bytes1071.length=48 := by core033_kernel_decide
def op1072 : List WordIR.Op := [.bnot 182]
def bytes1072 : Bytes := ("    let r000004a6: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1072 : bytes1072=statementBytes 1190 (op1072.map lower) ∧ bytes1072.length=37 := by core033_kernel_decide
def op1073 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1073 : Bytes := ("    let r000004a7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1073 : bytes1073=statementBytes 1191 (op1073.map lower) ∧ bytes1073.length=41 := by core033_kernel_decide
def op1074 : List WordIR.Op := [.badd 1190 1191]
def bytes1074 : Bytes := ("    let r000004a8: u32 = r000004a6.wrapping_add(r000004a7);\n" : String).toByteArray.data.toList
theorem checked1074 : bytes1074=statementBytes 1192 (op1074.map lower) ∧ bytes1074.length=60 := by core033_kernel_decide
def op1075 : List WordIR.Op := [.bnot 1192]
def bytes1075 : Bytes := ("    let r000004a9: u32 = !r000004a8;\n" : String).toByteArray.data.toList
theorem checked1075 : bytes1075=statementBytes 1193 (op1075.map lower) ∧ bytes1075.length=37 := by core033_kernel_decide
def op1076 : List WordIR.Op := [.band 1193 49]
def bytes1076 : Bytes := ("    let r000004aa: u32 = r000004a9 & r00000031;\n" : String).toByteArray.data.toList
theorem checked1076 : bytes1076=statementBytes 1194 (op1076.map lower) ∧ bytes1076.length=48 := by core033_kernel_decide
def op1077 : List WordIR.Op := [.bxor 1189 1194]
def bytes1077 : Bytes := ("    let r000004ab: u32 = r000004a5 ^ r000004aa;\n" : String).toByteArray.data.toList
theorem checked1077 : bytes1077=statementBytes 1195 (op1077.map lower) ∧ bytes1077.length=48 := by core033_kernel_decide
def op1078 : List WordIR.Op := [.bnot 182]
def bytes1078 : Bytes := ("    let r000004ac: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1078 : bytes1078=statementBytes 1196 (op1078.map lower) ∧ bytes1078.length=37 := by core033_kernel_decide
def op1079 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1079 : Bytes := ("    let r000004ad: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1079 : bytes1079=statementBytes 1197 (op1079.map lower) ∧ bytes1079.length=41 := by core033_kernel_decide
def op1080 : List WordIR.Op := [.badd 1196 1197]
def bytes1080 : Bytes := ("    let r000004ae: u32 = r000004ac.wrapping_add(r000004ad);\n" : String).toByteArray.data.toList
theorem checked1080 : bytes1080=statementBytes 1198 (op1080.map lower) ∧ bytes1080.length=60 := by core033_kernel_decide
def op1081 : List WordIR.Op := [.band 1198 50]
def bytes1081 : Bytes := ("    let r000004af: u32 = r000004ae & r00000032;\n" : String).toByteArray.data.toList
theorem checked1081 : bytes1081=statementBytes 1199 (op1081.map lower) ∧ bytes1081.length=48 := by core033_kernel_decide
def op1082 : List WordIR.Op := [.bnot 182]
def bytes1082 : Bytes := ("    let r000004b0: u32 = !r000000b6;\n" : String).toByteArray.data.toList
theorem checked1082 : bytes1082=statementBytes 1200 (op1082.map lower) ∧ bytes1082.length=37 := by core033_kernel_decide
def op1083 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1083 : Bytes := ("    let r000004b1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1083 : bytes1083=statementBytes 1201 (op1083.map lower) ∧ bytes1083.length=41 := by core033_kernel_decide
def op1084 : List WordIR.Op := [.badd 1200 1201]
def bytes1084 : Bytes := ("    let r000004b2: u32 = r000004b0.wrapping_add(r000004b1);\n" : String).toByteArray.data.toList
theorem checked1084 : bytes1084=statementBytes 1202 (op1084.map lower) ∧ bytes1084.length=60 := by core033_kernel_decide
def op1085 : List WordIR.Op := [.bnot 1202]
def bytes1085 : Bytes := ("    let r000004b3: u32 = !r000004b2;\n" : String).toByteArray.data.toList
theorem checked1085 : bytes1085=statementBytes 1203 (op1085.map lower) ∧ bytes1085.length=37 := by core033_kernel_decide
def op1086 : List WordIR.Op := [.band 1203 50]
def bytes1086 : Bytes := ("    let r000004b4: u32 = r000004b3 & r00000032;\n" : String).toByteArray.data.toList
theorem checked1086 : bytes1086=statementBytes 1204 (op1086.map lower) ∧ bytes1086.length=48 := by core033_kernel_decide
def op1087 : List WordIR.Op := [.bxor 1199 1204]
def bytes1087 : Bytes := ("    let r000004b5: u32 = r000004af ^ r000004b4;\n" : String).toByteArray.data.toList
theorem checked1087 : bytes1087=statementBytes 1205 (op1087.map lower) ∧ bytes1087.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1024,op1025,op1026,op1027,op1028,op1029,op1030,op1031,op1032,op1033,op1034,op1035,op1036,op1037,op1038,op1039,op1040,op1041,op1042,op1043,op1044,op1045,op1046,op1047,op1048,op1049,op1050,op1051,op1052,op1053,op1054,op1055,op1056,op1057,op1058,op1059,op1060,op1061,op1062,op1063,op1064,op1065,op1066,op1067,op1068,op1069,op1070,op1071,op1072,op1073,op1074,op1075,op1076,op1077,op1078,op1079,op1080,op1081,op1082,op1083,op1084,op1085,op1086,op1087]
def chunks : List Bytes := [bytes1024,bytes1025,bytes1026,bytes1027,bytes1028,bytes1029,bytes1030,bytes1031,bytes1032,bytes1033,bytes1034,bytes1035,bytes1036,bytes1037,bytes1038,bytes1039,bytes1040,bytes1041,bytes1042,bytes1043,bytes1044,bytes1045,bytes1046,bytes1047,bytes1048,bytes1049,bytes1050,bytes1051,bytes1052,bytes1053,bytes1054,bytes1055,bytes1056,bytes1057,bytes1058,bytes1059,bytes1060,bytes1061,bytes1062,bytes1063,bytes1064,bytes1065,bytes1066,bytes1067,bytes1068,bytes1069,bytes1070,bytes1071,bytes1072,bytes1073,bytes1074,bytes1075,bytes1076,bytes1077,bytes1078,bytes1079,bytes1080,bytes1081,bytes1082,bytes1083,bytes1084,bytes1085,bytes1086,bytes1087]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1142 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1024.1 (.cons _ _ _ _ _ checked1025.1 (.cons _ _ _ _ _ checked1026.1 (.cons _ _ _ _ _ checked1027.1 (.cons _ _ _ _ _ checked1028.1 (.cons _ _ _ _ _ checked1029.1 (.cons _ _ _ _ _ checked1030.1 (.cons _ _ _ _ _ checked1031.1 (.cons _ _ _ _ _ checked1032.1 (.cons _ _ _ _ _ checked1033.1 (.cons _ _ _ _ _ checked1034.1 (.cons _ _ _ _ _ checked1035.1 (.cons _ _ _ _ _ checked1036.1 (.cons _ _ _ _ _ checked1037.1 (.cons _ _ _ _ _ checked1038.1 (.cons _ _ _ _ _ checked1039.1 (.cons _ _ _ _ _ checked1040.1 (.cons _ _ _ _ _ checked1041.1 (.cons _ _ _ _ _ checked1042.1 (.cons _ _ _ _ _ checked1043.1 (.cons _ _ _ _ _ checked1044.1 (.cons _ _ _ _ _ checked1045.1 (.cons _ _ _ _ _ checked1046.1 (.cons _ _ _ _ _ checked1047.1 (.cons _ _ _ _ _ checked1048.1 (.cons _ _ _ _ _ checked1049.1 (.cons _ _ _ _ _ checked1050.1 (.cons _ _ _ _ _ checked1051.1 (.cons _ _ _ _ _ checked1052.1 (.cons _ _ _ _ _ checked1053.1 (.cons _ _ _ _ _ checked1054.1 (.cons _ _ _ _ _ checked1055.1 (.cons _ _ _ _ _ checked1056.1 (.cons _ _ _ _ _ checked1057.1 (.cons _ _ _ _ _ checked1058.1 (.cons _ _ _ _ _ checked1059.1 (.cons _ _ _ _ _ checked1060.1 (.cons _ _ _ _ _ checked1061.1 (.cons _ _ _ _ _ checked1062.1 (.cons _ _ _ _ _ checked1063.1 (.cons _ _ _ _ _ checked1064.1 (.cons _ _ _ _ _ checked1065.1 (.cons _ _ _ _ _ checked1066.1 (.cons _ _ _ _ _ checked1067.1 (.cons _ _ _ _ _ checked1068.1 (.cons _ _ _ _ _ checked1069.1 (.cons _ _ _ _ _ checked1070.1 (.cons _ _ _ _ _ checked1071.1 (.cons _ _ _ _ _ checked1072.1 (.cons _ _ _ _ _ checked1073.1 (.cons _ _ _ _ _ checked1074.1 (.cons _ _ _ _ _ checked1075.1 (.cons _ _ _ _ _ checked1076.1 (.cons _ _ _ _ _ checked1077.1 (.cons _ _ _ _ _ checked1078.1 (.cons _ _ _ _ _ checked1079.1 (.cons _ _ _ _ _ checked1080.1 (.cons _ _ _ _ _ checked1081.1 (.cons _ _ _ _ _ checked1082.1 (.cons _ _ _ _ _ checked1083.1 (.cons _ _ _ _ _ checked1084.1 (.cons _ _ _ _ _ checked1085.1 (.cons _ _ _ _ _ checked1086.1 (.cons _ _ _ _ _ checked1087.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1142 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2916 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1024.2,checked1025.2,checked1026.2,checked1027.2,checked1028.2,checked1029.2,checked1030.2,checked1031.2,checked1032.2,checked1033.2,checked1034.2,checked1035.2,checked1036.2,checked1037.2,checked1038.2,checked1039.2,checked1040.2,checked1041.2,checked1042.2,checked1043.2,checked1044.2,checked1045.2,checked1046.2,checked1047.2,checked1048.2,checked1049.2,checked1050.2,checked1051.2,checked1052.2,checked1053.2,checked1054.2,checked1055.2,checked1056.2,checked1057.2,checked1058.2,checked1059.2,checked1060.2,checked1061.2,checked1062.2,checked1063.2,checked1064.2,checked1065.2,checked1066.2,checked1067.2,checked1068.2,checked1069.2,checked1070.2,checked1071.2,checked1072.2,checked1073.2,checked1074.2,checked1075.2,checked1076.2,checked1077.2,checked1078.2,checked1079.2,checked1080.2,checked1081.2,checked1082.2,checked1083.2,checked1084.2,checked1085.2,checked1086.2,checked1087.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup16
