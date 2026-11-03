import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData16
import PairedPathRoundInstructionMatrixData17
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1056 : actualRows1056=WordField.canonicalRows actualModulus 1056 (.bxor 1049 1055) := by core033_kernel_decide
theorem stats1056 : actualRows1056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1056=7428 := by core033_kernel_decide
theorem rows1057 : actualRows1057=WordField.canonicalRows actualModulus 1057 (.bnot 605) := by core033_kernel_decide
theorem stats1057 : actualRows1057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1057=6276 := by core033_kernel_decide
theorem rows1058 : actualRows1058=WordField.canonicalRows actualModulus 1058 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1058 : actualRows1058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1058=2892 := by core033_kernel_decide
theorem rows1059 : actualRows1059=WordField.canonicalRows actualModulus 1059 (.badd 1057 1058) := by core033_kernel_decide
theorem stats1059 : actualRows1059.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1059=5388 := by core033_kernel_decide
theorem rows1060 : actualRows1060=WordField.canonicalRows actualModulus 1060 (.band 1059 53) := by core033_kernel_decide
theorem stats1060 : actualRows1060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1060=5124 := by core033_kernel_decide
theorem rows1061 : actualRows1061=WordField.canonicalRows actualModulus 1061 (.bnot 605) := by core033_kernel_decide
theorem stats1061 : actualRows1061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1061=6276 := by core033_kernel_decide
theorem rows1062 : actualRows1062=WordField.canonicalRows actualModulus 1062 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1062 : actualRows1062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1062=2892 := by core033_kernel_decide
theorem rows1063 : actualRows1063=WordField.canonicalRows actualModulus 1063 (.badd 1061 1062) := by core033_kernel_decide
theorem stats1063 : actualRows1063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1063=5388 := by core033_kernel_decide
theorem rows1064 : actualRows1064=WordField.canonicalRows actualModulus 1064 (.bnot 1063) := by core033_kernel_decide
theorem stats1064 : actualRows1064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1064=6276 := by core033_kernel_decide
theorem rows1065 : actualRows1065=WordField.canonicalRows actualModulus 1065 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1065 : actualRows1065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1065=2820 := by core033_kernel_decide
theorem rows1066 : actualRows1066=WordField.canonicalRows actualModulus 1066 (.band 1064 1065) := by core033_kernel_decide
theorem stats1066 : actualRows1066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1066=5124 := by core033_kernel_decide
theorem rows1067 : actualRows1067=WordField.canonicalRows actualModulus 1067 (.bxor 1060 1066) := by core033_kernel_decide
theorem stats1067 : actualRows1067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1067=7428 := by core033_kernel_decide
theorem rows1068 : actualRows1068=WordField.canonicalRows actualModulus 1068 (.bnot 605) := by core033_kernel_decide
theorem stats1068 : actualRows1068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1068=6276 := by core033_kernel_decide
theorem rows1069 : actualRows1069=WordField.canonicalRows actualModulus 1069 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1069 : actualRows1069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1069=2892 := by core033_kernel_decide
theorem rows1070 : actualRows1070=WordField.canonicalRows actualModulus 1070 (.badd 1068 1069) := by core033_kernel_decide
theorem stats1070 : actualRows1070.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1070=5388 := by core033_kernel_decide
theorem rows1071 : actualRows1071=WordField.canonicalRows actualModulus 1071 (.band 1070 54) := by core033_kernel_decide
theorem stats1071 : actualRows1071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1071=5124 := by core033_kernel_decide
theorem rows1072 : actualRows1072=WordField.canonicalRows actualModulus 1072 (.bnot 605) := by core033_kernel_decide
theorem stats1072 : actualRows1072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1072=6276 := by core033_kernel_decide
theorem rows1073 : actualRows1073=WordField.canonicalRows actualModulus 1073 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1073 : actualRows1073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1073=2892 := by core033_kernel_decide
theorem rows1074 : actualRows1074=WordField.canonicalRows actualModulus 1074 (.badd 1072 1073) := by core033_kernel_decide
theorem stats1074 : actualRows1074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1074=5388 := by core033_kernel_decide
theorem rows1075 : actualRows1075=WordField.canonicalRows actualModulus 1075 (.bnot 1074) := by core033_kernel_decide
theorem stats1075 : actualRows1075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1075=6276 := by core033_kernel_decide
theorem rows1076 : actualRows1076=WordField.canonicalRows actualModulus 1076 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1076 : actualRows1076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1076=2820 := by core033_kernel_decide
theorem rows1077 : actualRows1077=WordField.canonicalRows actualModulus 1077 (.band 1075 1076) := by core033_kernel_decide
theorem stats1077 : actualRows1077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1077=5124 := by core033_kernel_decide
theorem rows1078 : actualRows1078=WordField.canonicalRows actualModulus 1078 (.bxor 1071 1077) := by core033_kernel_decide
theorem stats1078 : actualRows1078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1078=7428 := by core033_kernel_decide
theorem rows1079 : actualRows1079=WordField.canonicalRows actualModulus 1079 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1079 : actualRows1079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1079=2892 := by core033_kernel_decide
theorem rows1080 : actualRows1080=WordField.canonicalRows actualModulus 1080 (.badd 638 1079) := by core033_kernel_decide
theorem stats1080 : actualRows1080.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1080=5388 := by core033_kernel_decide
theorem rows1081 : actualRows1081=WordField.canonicalRows actualModulus 1081 (.bnot 638) := by core033_kernel_decide
theorem stats1081 : actualRows1081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1081=6276 := by core033_kernel_decide
theorem rows1082 : actualRows1082=WordField.canonicalRows actualModulus 1082 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1082 : actualRows1082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1082=3396 := by core033_kernel_decide
theorem rows1083 : actualRows1083=WordField.canonicalRows actualModulus 1083 (.band 1081 1082) := by core033_kernel_decide
theorem stats1083 : actualRows1083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1083=5124 := by core033_kernel_decide
theorem rows1084 : actualRows1084=WordField.canonicalRows actualModulus 1084 (.shr 638 8) := by core033_kernel_decide
theorem stats1084 : actualRows1084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1084=4548 := by core033_kernel_decide
theorem rows1085 : actualRows1085=WordField.canonicalRows actualModulus 1085 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1085 : actualRows1085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1085=2820 := by core033_kernel_decide
theorem rows1086 : actualRows1086=WordField.canonicalRows actualModulus 1086 (.bnot 1085) := by core033_kernel_decide
theorem stats1086 : actualRows1086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1086=6276 := by core033_kernel_decide
theorem rows1087 : actualRows1087=WordField.canonicalRows actualModulus 1087 (.band 1084 1086) := by core033_kernel_decide
theorem stats1087 : actualRows1087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1087=5124 := by core033_kernel_decide
theorem rows1088 : actualRows1088=WordField.canonicalRows actualModulus 1088 (.shr 638 8) := by core033_kernel_decide
theorem stats1088 : actualRows1088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1088=4548 := by core033_kernel_decide
theorem rows1089 : actualRows1089=WordField.canonicalRows actualModulus 1089 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1089 : actualRows1089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1089=2820 := by core033_kernel_decide
theorem rows1090 : actualRows1090=WordField.canonicalRows actualModulus 1090 (.bnot 1089) := by core033_kernel_decide
theorem stats1090 : actualRows1090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1090=6276 := by core033_kernel_decide
theorem rows1091 : actualRows1091=WordField.canonicalRows actualModulus 1091 (.bxor 1088 1090) := by core033_kernel_decide
theorem stats1091 : actualRows1091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1091=7428 := by core033_kernel_decide
theorem rows1092 : actualRows1092=WordField.canonicalRows actualModulus 1092 (.shr 638 8) := by core033_kernel_decide
theorem stats1092 : actualRows1092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1092=4548 := by core033_kernel_decide
theorem rows1093 : actualRows1093=WordField.canonicalRows actualModulus 1093 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1093 : actualRows1093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1093=2820 := by core033_kernel_decide
theorem rows1094 : actualRows1094=WordField.canonicalRows actualModulus 1094 (.bnot 1093) := by core033_kernel_decide
theorem stats1094 : actualRows1094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1094=6276 := by core033_kernel_decide
theorem rows1095 : actualRows1095=WordField.canonicalRows actualModulus 1095 (.badd 1092 1094) := by core033_kernel_decide
theorem stats1095 : actualRows1095.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1095=5388 := by core033_kernel_decide
theorem rows1096 : actualRows1096=WordField.canonicalRows actualModulus 1096 (.bnot 1095) := by core033_kernel_decide
theorem stats1096 : actualRows1096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1096=6276 := by core033_kernel_decide
theorem rows1097 : actualRows1097=WordField.canonicalRows actualModulus 1097 (.band 1091 1096) := by core033_kernel_decide
theorem stats1097 : actualRows1097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1097=5124 := by core033_kernel_decide
theorem rows1098 : actualRows1098=WordField.canonicalRows actualModulus 1098 (.bxor 1087 1097) := by core033_kernel_decide
theorem stats1098 : actualRows1098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1098=7428 := by core033_kernel_decide
theorem rows1099 : actualRows1099=WordField.canonicalRows actualModulus 1099 (.shr 1098 31) := by core033_kernel_decide
theorem stats1099 : actualRows1099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1099=2892 := by core033_kernel_decide
theorem rows1100 : actualRows1100=WordField.canonicalRows actualModulus 1100 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1100 : actualRows1100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1100=2892 := by core033_kernel_decide
theorem rows1101 : actualRows1101=WordField.canonicalRows actualModulus 1101 (.bxor 1099 1100) := by core033_kernel_decide
theorem stats1101 : actualRows1101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1101=7428 := by core033_kernel_decide
theorem rows1102 : actualRows1102=WordField.canonicalRows actualModulus 1102 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1102 : actualRows1102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1102=2892 := by core033_kernel_decide
theorem rows1103 : actualRows1103=WordField.canonicalRows actualModulus 1103 (.bxor 638 1102) := by core033_kernel_decide
theorem stats1103 : actualRows1103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1103=7428 := by core033_kernel_decide
theorem rows1104 : actualRows1104=WordField.canonicalRows actualModulus 1104 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1104 : actualRows1104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1104=2820 := by core033_kernel_decide
theorem rows1105 : actualRows1105=WordField.canonicalRows actualModulus 1105 (.bnot 1104) := by core033_kernel_decide
theorem stats1105 : actualRows1105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1105=6276 := by core033_kernel_decide
theorem rows1106 : actualRows1106=WordField.canonicalRows actualModulus 1106 (.band 1103 1105) := by core033_kernel_decide
theorem stats1106 : actualRows1106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1106=5124 := by core033_kernel_decide
theorem rows1107 : actualRows1107=WordField.canonicalRows actualModulus 1107 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1107 : actualRows1107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1107=2892 := by core033_kernel_decide
theorem rows1108 : actualRows1108=WordField.canonicalRows actualModulus 1108 (.bxor 638 1107) := by core033_kernel_decide
theorem stats1108 : actualRows1108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1108=7428 := by core033_kernel_decide
theorem rows1109 : actualRows1109=WordField.canonicalRows actualModulus 1109 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1109 : actualRows1109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1109=2820 := by core033_kernel_decide
theorem rows1110 : actualRows1110=WordField.canonicalRows actualModulus 1110 (.bnot 1109) := by core033_kernel_decide
theorem stats1110 : actualRows1110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1110=6276 := by core033_kernel_decide
theorem rows1111 : actualRows1111=WordField.canonicalRows actualModulus 1111 (.bxor 1108 1110) := by core033_kernel_decide
theorem stats1111 : actualRows1111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1111=7428 := by core033_kernel_decide
theorem rows1112 : actualRows1112=WordField.canonicalRows actualModulus 1112 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats1112 : actualRows1112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1112=2892 := by core033_kernel_decide
theorem rows1113 : actualRows1113=WordField.canonicalRows actualModulus 1113 (.bxor 638 1112) := by core033_kernel_decide
theorem stats1113 : actualRows1113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1113=7428 := by core033_kernel_decide
theorem rows1114 : actualRows1114=WordField.canonicalRows actualModulus 1114 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1114 : actualRows1114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1114=2820 := by core033_kernel_decide
theorem rows1115 : actualRows1115=WordField.canonicalRows actualModulus 1115 (.bnot 1114) := by core033_kernel_decide
theorem stats1115 : actualRows1115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1115=6276 := by core033_kernel_decide
theorem rows1116 : actualRows1116=WordField.canonicalRows actualModulus 1116 (.badd 1113 1115) := by core033_kernel_decide
theorem stats1116 : actualRows1116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1116=5388 := by core033_kernel_decide
theorem rows1117 : actualRows1117=WordField.canonicalRows actualModulus 1117 (.bnot 1116) := by core033_kernel_decide
theorem stats1117 : actualRows1117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1117=6276 := by core033_kernel_decide
theorem rows1118 : actualRows1118=WordField.canonicalRows actualModulus 1118 (.band 1111 1117) := by core033_kernel_decide
theorem stats1118 : actualRows1118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1118=5124 := by core033_kernel_decide
theorem rows1119 : actualRows1119=WordField.canonicalRows actualModulus 1119 (.bxor 1106 1118) := by core033_kernel_decide
theorem stats1119 : actualRows1119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1119=7428 := by core033_kernel_decide
def partRows15 : List R1CS.Row := actualRows1056++actualRows1057++actualRows1058++actualRows1059++actualRows1060++actualRows1061++actualRows1062++actualRows1063++actualRows1064++actualRows1065++actualRows1066++actualRows1067++actualRows1068++actualRows1069++actualRows1070++actualRows1071++actualRows1072++actualRows1073++actualRows1074++actualRows1075++actualRows1076++actualRows1077++actualRows1078++actualRows1079++actualRows1080++actualRows1081++actualRows1082++actualRows1083++actualRows1084++actualRows1085++actualRows1086++actualRows1087++actualRows1088++actualRows1089++actualRows1090++actualRows1091++actualRows1092++actualRows1093++actualRows1094++actualRows1095++actualRows1096++actualRows1097++actualRows1098++actualRows1099++actualRows1100++actualRows1101++actualRows1102++actualRows1103++actualRows1104++actualRows1105++actualRows1106++actualRows1107++actualRows1108++actualRows1109++actualRows1110++actualRows1111++actualRows1112++actualRows1113++actualRows1114++actualRows1115++actualRows1116++actualRows1117++actualRows1118++actualRows1119
def partOps15 : List WordIR.Op := [.bxor 1049 1055,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 1057 1058,.band 1059 53,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 1061 1062,.bnot 1063,.literal (BitVec.ofNat 32 0),.band 1064 1065,.bxor 1060 1066,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 1068 1069,.band 1070 54,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 1072 1073,.bnot 1074,.literal (BitVec.ofNat 32 0),.band 1075 1076,.bxor 1071 1077,.literal (BitVec.ofNat 32 1),.badd 638 1079,.bnot 638,.literal (BitVec.ofNat 32 255),.band 1081 1082,.shr 638 8,.literal (BitVec.ofNat 32 0),.bnot 1085,.band 1084 1086,.shr 638 8,.literal (BitVec.ofNat 32 0),.bnot 1089,.bxor 1088 1090,.shr 638 8,.literal (BitVec.ofNat 32 0),.bnot 1093,.badd 1092 1094,.bnot 1095,.band 1091 1096,.bxor 1087 1097,.shr 1098 31,.literal (BitVec.ofNat 32 1),.bxor 1099 1100,.literal (BitVec.ofNat 32 256),.bxor 638 1102,.literal (BitVec.ofNat 32 0),.bnot 1104,.band 1103 1105,.literal (BitVec.ofNat 32 256),.bxor 638 1107,.literal (BitVec.ofNat 32 0),.bnot 1109,.bxor 1108 1110,.literal (BitVec.ofNat 32 256),.bxor 638 1112,.literal (BitVec.ofNat 32 0),.bnot 1114,.badd 1113 1115,.bnot 1116,.band 1111 1117,.bxor 1106 1118]
theorem partExact15 : partRows15=WordField.rows actualModulus 1056 partOps15 := by
  simp only [partRows15,partOps15,WordField.rows,rows1056,rows1057,rows1058,rows1059,rows1060,rows1061,rows1062,rows1063,rows1064,rows1065,rows1066,rows1067,rows1068,rows1069,rows1070,rows1071,rows1072,rows1073,rows1074,rows1075,rows1076,rows1077,rows1078,rows1079,rows1080,rows1081,rows1082,rows1083,rows1084,rows1085,rows1086,rows1087,rows1088,rows1089,rows1090,rows1091,rows1092,rows1093,rows1094,rows1095,rows1096,rows1097,rows1098,rows1099,rows1100,rows1101,rows1102,rows1103,rows1104,rows1105,rows1106,rows1107,rows1108,rows1109,rows1110,rows1111,rows1112,rows1113,rows1114,rows1115,rows1116,rows1117,rows1118,rows1119,List.append_assoc,List.append_nil]
theorem partLength15 : partOps15.length=64 := by decide
theorem partStats15 : partRows15.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows15=328200 := by
  simp only [partRows15,List.length_append,MatrixRowBlocks.rows_weight_append,stats1056.1,stats1056.2,stats1057.1,stats1057.2,stats1058.1,stats1058.2,stats1059.1,stats1059.2,stats1060.1,stats1060.2,stats1061.1,stats1061.2,stats1062.1,stats1062.2,stats1063.1,stats1063.2,stats1064.1,stats1064.2,stats1065.1,stats1065.2,stats1066.1,stats1066.2,stats1067.1,stats1067.2,stats1068.1,stats1068.2,stats1069.1,stats1069.2,stats1070.1,stats1070.2,stats1071.1,stats1071.2,stats1072.1,stats1072.2,stats1073.1,stats1073.2,stats1074.1,stats1074.2,stats1075.1,stats1075.2,stats1076.1,stats1076.2,stats1077.1,stats1077.2,stats1078.1,stats1078.2,stats1079.1,stats1079.2,stats1080.1,stats1080.2,stats1081.1,stats1081.2,stats1082.1,stats1082.2,stats1083.1,stats1083.2,stats1084.1,stats1084.2,stats1085.1,stats1085.2,stats1086.1,stats1086.2,stats1087.1,stats1087.2,stats1088.1,stats1088.2,stats1089.1,stats1089.2,stats1090.1,stats1090.2,stats1091.1,stats1091.2,stats1092.1,stats1092.2,stats1093.1,stats1093.2,stats1094.1,stats1094.2,stats1095.1,stats1095.2,stats1096.1,stats1096.2,stats1097.1,stats1097.2,stats1098.1,stats1098.2,stats1099.1,stats1099.2,stats1100.1,stats1100.2,stats1101.1,stats1101.2,stats1102.1,stats1102.2,stats1103.1,stats1103.2,stats1104.1,stats1104.2,stats1105.1,stats1105.2,stats1106.1,stats1106.2,stats1107.1,stats1107.2,stats1108.1,stats1108.2,stats1109.1,stats1109.2,stats1110.1,stats1110.2,stats1111.1,stats1111.2,stats1112.1,stats1112.2,stats1113.1,stats1113.2,stats1114.1,stats1114.2,stats1115.1,stats1115.2,stats1116.1,stats1116.2,stats1117.1,stats1117.2,stats1118.1,stats1118.2,stats1119.1,stats1119.2]
  decide
end QuotedPairedPathRoundCheckedRows
