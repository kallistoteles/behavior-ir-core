import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData16
import HashBlockInstructionMatrixData17
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1032 : actualRows1032=WordField.canonicalRows actualModulus 1032 (.shr 56 8) := by core033_kernel_decide
theorem stats1032 : actualRows1032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1032=4548 := by core033_kernel_decide
theorem rows1033 : actualRows1033=WordField.canonicalRows actualModulus 1033 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1033 : actualRows1033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1033=2820 := by core033_kernel_decide
theorem rows1034 : actualRows1034=WordField.canonicalRows actualModulus 1034 (.bnot 1033) := by core033_kernel_decide
theorem stats1034 : actualRows1034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1034=6276 := by core033_kernel_decide
theorem rows1035 : actualRows1035=WordField.canonicalRows actualModulus 1035 (.band 1032 1034) := by core033_kernel_decide
theorem stats1035 : actualRows1035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1035=5124 := by core033_kernel_decide
theorem rows1036 : actualRows1036=WordField.canonicalRows actualModulus 1036 (.shr 56 8) := by core033_kernel_decide
theorem stats1036 : actualRows1036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1036=4548 := by core033_kernel_decide
theorem rows1037 : actualRows1037=WordField.canonicalRows actualModulus 1037 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1037 : actualRows1037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1037=2820 := by core033_kernel_decide
theorem rows1038 : actualRows1038=WordField.canonicalRows actualModulus 1038 (.bnot 1037) := by core033_kernel_decide
theorem stats1038 : actualRows1038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1038=6276 := by core033_kernel_decide
theorem rows1039 : actualRows1039=WordField.canonicalRows actualModulus 1039 (.bxor 1036 1038) := by core033_kernel_decide
theorem stats1039 : actualRows1039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1039=7428 := by core033_kernel_decide
theorem rows1040 : actualRows1040=WordField.canonicalRows actualModulus 1040 (.shr 56 8) := by core033_kernel_decide
theorem stats1040 : actualRows1040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1040=4548 := by core033_kernel_decide
theorem rows1041 : actualRows1041=WordField.canonicalRows actualModulus 1041 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1041 : actualRows1041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1041=2820 := by core033_kernel_decide
theorem rows1042 : actualRows1042=WordField.canonicalRows actualModulus 1042 (.bnot 1041) := by core033_kernel_decide
theorem stats1042 : actualRows1042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1042=6276 := by core033_kernel_decide
theorem rows1043 : actualRows1043=WordField.canonicalRows actualModulus 1043 (.badd 1040 1042) := by core033_kernel_decide
theorem stats1043 : actualRows1043.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1043=5388 := by core033_kernel_decide
theorem rows1044 : actualRows1044=WordField.canonicalRows actualModulus 1044 (.bnot 1043) := by core033_kernel_decide
theorem stats1044 : actualRows1044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1044=6276 := by core033_kernel_decide
theorem rows1045 : actualRows1045=WordField.canonicalRows actualModulus 1045 (.band 1039 1044) := by core033_kernel_decide
theorem stats1045 : actualRows1045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1045=5124 := by core033_kernel_decide
theorem rows1046 : actualRows1046=WordField.canonicalRows actualModulus 1046 (.bxor 1035 1045) := by core033_kernel_decide
theorem stats1046 : actualRows1046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1046=7428 := by core033_kernel_decide
theorem rows1047 : actualRows1047=WordField.canonicalRows actualModulus 1047 (.shr 1046 31) := by core033_kernel_decide
theorem stats1047 : actualRows1047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1047=2892 := by core033_kernel_decide
theorem rows1048 : actualRows1048=WordField.canonicalRows actualModulus 1048 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1048 : actualRows1048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1048=2892 := by core033_kernel_decide
theorem rows1049 : actualRows1049=WordField.canonicalRows actualModulus 1049 (.bxor 1047 1048) := by core033_kernel_decide
theorem stats1049 : actualRows1049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1049=7428 := by core033_kernel_decide
theorem rows1050 : actualRows1050=WordField.canonicalRows actualModulus 1050 (.shr 57 8) := by core033_kernel_decide
theorem stats1050 : actualRows1050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1050=4548 := by core033_kernel_decide
theorem rows1051 : actualRows1051=WordField.canonicalRows actualModulus 1051 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1051 : actualRows1051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1051=2820 := by core033_kernel_decide
theorem rows1052 : actualRows1052=WordField.canonicalRows actualModulus 1052 (.bnot 1051) := by core033_kernel_decide
theorem stats1052 : actualRows1052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1052=6276 := by core033_kernel_decide
theorem rows1053 : actualRows1053=WordField.canonicalRows actualModulus 1053 (.band 1050 1052) := by core033_kernel_decide
theorem stats1053 : actualRows1053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1053=5124 := by core033_kernel_decide
theorem rows1054 : actualRows1054=WordField.canonicalRows actualModulus 1054 (.shr 57 8) := by core033_kernel_decide
theorem stats1054 : actualRows1054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1054=4548 := by core033_kernel_decide
theorem rows1055 : actualRows1055=WordField.canonicalRows actualModulus 1055 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1055 : actualRows1055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1055=2820 := by core033_kernel_decide
theorem rows1056 : actualRows1056=WordField.canonicalRows actualModulus 1056 (.bnot 1055) := by core033_kernel_decide
theorem stats1056 : actualRows1056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1056=6276 := by core033_kernel_decide
theorem rows1057 : actualRows1057=WordField.canonicalRows actualModulus 1057 (.bxor 1054 1056) := by core033_kernel_decide
theorem stats1057 : actualRows1057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1057=7428 := by core033_kernel_decide
theorem rows1058 : actualRows1058=WordField.canonicalRows actualModulus 1058 (.shr 57 8) := by core033_kernel_decide
theorem stats1058 : actualRows1058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1058=4548 := by core033_kernel_decide
theorem rows1059 : actualRows1059=WordField.canonicalRows actualModulus 1059 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1059 : actualRows1059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1059=2820 := by core033_kernel_decide
theorem rows1060 : actualRows1060=WordField.canonicalRows actualModulus 1060 (.bnot 1059) := by core033_kernel_decide
theorem stats1060 : actualRows1060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1060=6276 := by core033_kernel_decide
theorem rows1061 : actualRows1061=WordField.canonicalRows actualModulus 1061 (.badd 1058 1060) := by core033_kernel_decide
theorem stats1061 : actualRows1061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1061=5388 := by core033_kernel_decide
theorem rows1062 : actualRows1062=WordField.canonicalRows actualModulus 1062 (.bnot 1061) := by core033_kernel_decide
theorem stats1062 : actualRows1062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1062=6276 := by core033_kernel_decide
theorem rows1063 : actualRows1063=WordField.canonicalRows actualModulus 1063 (.band 1057 1062) := by core033_kernel_decide
theorem stats1063 : actualRows1063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1063=5124 := by core033_kernel_decide
theorem rows1064 : actualRows1064=WordField.canonicalRows actualModulus 1064 (.bxor 1053 1063) := by core033_kernel_decide
theorem stats1064 : actualRows1064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1064=7428 := by core033_kernel_decide
theorem rows1065 : actualRows1065=WordField.canonicalRows actualModulus 1065 (.shr 1064 31) := by core033_kernel_decide
theorem stats1065 : actualRows1065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1065=2892 := by core033_kernel_decide
theorem rows1066 : actualRows1066=WordField.canonicalRows actualModulus 1066 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1066 : actualRows1066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1066=2892 := by core033_kernel_decide
theorem rows1067 : actualRows1067=WordField.canonicalRows actualModulus 1067 (.bxor 1065 1066) := by core033_kernel_decide
theorem stats1067 : actualRows1067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1067=7428 := by core033_kernel_decide
theorem rows1068 : actualRows1068=WordField.canonicalRows actualModulus 1068 (.shr 58 8) := by core033_kernel_decide
theorem stats1068 : actualRows1068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1068=4548 := by core033_kernel_decide
theorem rows1069 : actualRows1069=WordField.canonicalRows actualModulus 1069 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1069 : actualRows1069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1069=2820 := by core033_kernel_decide
theorem rows1070 : actualRows1070=WordField.canonicalRows actualModulus 1070 (.bnot 1069) := by core033_kernel_decide
theorem stats1070 : actualRows1070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1070=6276 := by core033_kernel_decide
theorem rows1071 : actualRows1071=WordField.canonicalRows actualModulus 1071 (.band 1068 1070) := by core033_kernel_decide
theorem stats1071 : actualRows1071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1071=5124 := by core033_kernel_decide
theorem rows1072 : actualRows1072=WordField.canonicalRows actualModulus 1072 (.shr 58 8) := by core033_kernel_decide
theorem stats1072 : actualRows1072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1072=4548 := by core033_kernel_decide
theorem rows1073 : actualRows1073=WordField.canonicalRows actualModulus 1073 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1073 : actualRows1073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1073=2820 := by core033_kernel_decide
theorem rows1074 : actualRows1074=WordField.canonicalRows actualModulus 1074 (.bnot 1073) := by core033_kernel_decide
theorem stats1074 : actualRows1074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1074=6276 := by core033_kernel_decide
theorem rows1075 : actualRows1075=WordField.canonicalRows actualModulus 1075 (.bxor 1072 1074) := by core033_kernel_decide
theorem stats1075 : actualRows1075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1075=7428 := by core033_kernel_decide
theorem rows1076 : actualRows1076=WordField.canonicalRows actualModulus 1076 (.shr 58 8) := by core033_kernel_decide
theorem stats1076 : actualRows1076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1076=4548 := by core033_kernel_decide
theorem rows1077 : actualRows1077=WordField.canonicalRows actualModulus 1077 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1077 : actualRows1077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1077=2820 := by core033_kernel_decide
theorem rows1078 : actualRows1078=WordField.canonicalRows actualModulus 1078 (.bnot 1077) := by core033_kernel_decide
theorem stats1078 : actualRows1078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1078=6276 := by core033_kernel_decide
theorem rows1079 : actualRows1079=WordField.canonicalRows actualModulus 1079 (.badd 1076 1078) := by core033_kernel_decide
theorem stats1079 : actualRows1079.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1079=5388 := by core033_kernel_decide
theorem rows1080 : actualRows1080=WordField.canonicalRows actualModulus 1080 (.bnot 1079) := by core033_kernel_decide
theorem stats1080 : actualRows1080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1080=6276 := by core033_kernel_decide
theorem rows1081 : actualRows1081=WordField.canonicalRows actualModulus 1081 (.band 1075 1080) := by core033_kernel_decide
theorem stats1081 : actualRows1081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1081=5124 := by core033_kernel_decide
theorem rows1082 : actualRows1082=WordField.canonicalRows actualModulus 1082 (.bxor 1071 1081) := by core033_kernel_decide
theorem stats1082 : actualRows1082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1082=7428 := by core033_kernel_decide
theorem rows1083 : actualRows1083=WordField.canonicalRows actualModulus 1083 (.shr 1082 31) := by core033_kernel_decide
theorem stats1083 : actualRows1083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1083=2892 := by core033_kernel_decide
theorem rows1084 : actualRows1084=WordField.canonicalRows actualModulus 1084 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1084 : actualRows1084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1084=2892 := by core033_kernel_decide
theorem rows1085 : actualRows1085=WordField.canonicalRows actualModulus 1085 (.bxor 1083 1084) := by core033_kernel_decide
theorem stats1085 : actualRows1085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1085=7428 := by core033_kernel_decide
theorem rows1086 : actualRows1086=WordField.canonicalRows actualModulus 1086 (.shr 59 8) := by core033_kernel_decide
theorem stats1086 : actualRows1086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1086=4548 := by core033_kernel_decide
theorem rows1087 : actualRows1087=WordField.canonicalRows actualModulus 1087 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1087 : actualRows1087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1087=2820 := by core033_kernel_decide
theorem rows1088 : actualRows1088=WordField.canonicalRows actualModulus 1088 (.bnot 1087) := by core033_kernel_decide
theorem stats1088 : actualRows1088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1088=6276 := by core033_kernel_decide
theorem rows1089 : actualRows1089=WordField.canonicalRows actualModulus 1089 (.band 1086 1088) := by core033_kernel_decide
theorem stats1089 : actualRows1089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1089=5124 := by core033_kernel_decide
theorem rows1090 : actualRows1090=WordField.canonicalRows actualModulus 1090 (.shr 59 8) := by core033_kernel_decide
theorem stats1090 : actualRows1090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1090=4548 := by core033_kernel_decide
theorem rows1091 : actualRows1091=WordField.canonicalRows actualModulus 1091 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1091 : actualRows1091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1091=2820 := by core033_kernel_decide
theorem rows1092 : actualRows1092=WordField.canonicalRows actualModulus 1092 (.bnot 1091) := by core033_kernel_decide
theorem stats1092 : actualRows1092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1092=6276 := by core033_kernel_decide
theorem rows1093 : actualRows1093=WordField.canonicalRows actualModulus 1093 (.bxor 1090 1092) := by core033_kernel_decide
theorem stats1093 : actualRows1093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1093=7428 := by core033_kernel_decide
theorem rows1094 : actualRows1094=WordField.canonicalRows actualModulus 1094 (.shr 59 8) := by core033_kernel_decide
theorem stats1094 : actualRows1094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1094=4548 := by core033_kernel_decide
theorem rows1095 : actualRows1095=WordField.canonicalRows actualModulus 1095 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1095 : actualRows1095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1095=2820 := by core033_kernel_decide
def partRows15 : List R1CS.Row := actualRows1032++actualRows1033++actualRows1034++actualRows1035++actualRows1036++actualRows1037++actualRows1038++actualRows1039++actualRows1040++actualRows1041++actualRows1042++actualRows1043++actualRows1044++actualRows1045++actualRows1046++actualRows1047++actualRows1048++actualRows1049++actualRows1050++actualRows1051++actualRows1052++actualRows1053++actualRows1054++actualRows1055++actualRows1056++actualRows1057++actualRows1058++actualRows1059++actualRows1060++actualRows1061++actualRows1062++actualRows1063++actualRows1064++actualRows1065++actualRows1066++actualRows1067++actualRows1068++actualRows1069++actualRows1070++actualRows1071++actualRows1072++actualRows1073++actualRows1074++actualRows1075++actualRows1076++actualRows1077++actualRows1078++actualRows1079++actualRows1080++actualRows1081++actualRows1082++actualRows1083++actualRows1084++actualRows1085++actualRows1086++actualRows1087++actualRows1088++actualRows1089++actualRows1090++actualRows1091++actualRows1092++actualRows1093++actualRows1094++actualRows1095
def partOps15 : List WordIR.Op := [.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1033,.band 1032 1034,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1037,.bxor 1036 1038,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1041,.badd 1040 1042,.bnot 1043,.band 1039 1044,.bxor 1035 1045,.shr 1046 31,.literal (BitVec.ofNat 32 1),.bxor 1047 1048,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1051,.band 1050 1052,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1055,.bxor 1054 1056,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1059,.badd 1058 1060,.bnot 1061,.band 1057 1062,.bxor 1053 1063,.shr 1064 31,.literal (BitVec.ofNat 32 1),.bxor 1065 1066,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1069,.band 1068 1070,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1073,.bxor 1072 1074,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1077,.badd 1076 1078,.bnot 1079,.band 1075 1080,.bxor 1071 1081,.shr 1082 31,.literal (BitVec.ofNat 32 1),.bxor 1083 1084,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1087,.band 1086 1088,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1091,.bxor 1090 1092,.shr 59 8,.literal (BitVec.ofNat 32 0)]
theorem partExact15 : partRows15=WordField.rows actualModulus 1032 partOps15 := by
  simp only [partRows15,partOps15,WordField.rows,rows1032,rows1033,rows1034,rows1035,rows1036,rows1037,rows1038,rows1039,rows1040,rows1041,rows1042,rows1043,rows1044,rows1045,rows1046,rows1047,rows1048,rows1049,rows1050,rows1051,rows1052,rows1053,rows1054,rows1055,rows1056,rows1057,rows1058,rows1059,rows1060,rows1061,rows1062,rows1063,rows1064,rows1065,rows1066,rows1067,rows1068,rows1069,rows1070,rows1071,rows1072,rows1073,rows1074,rows1075,rows1076,rows1077,rows1078,rows1079,rows1080,rows1081,rows1082,rows1083,rows1084,rows1085,rows1086,rows1087,rows1088,rows1089,rows1090,rows1091,rows1092,rows1093,rows1094,rows1095,List.append_assoc,List.append_nil]
theorem partLength15 : partOps15.length=64 := by decide
theorem partStats15 : partRows15.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows15=319944 := by
  simp only [partRows15,List.length_append,MatrixRowBlocks.rows_weight_append,stats1032.1,stats1032.2,stats1033.1,stats1033.2,stats1034.1,stats1034.2,stats1035.1,stats1035.2,stats1036.1,stats1036.2,stats1037.1,stats1037.2,stats1038.1,stats1038.2,stats1039.1,stats1039.2,stats1040.1,stats1040.2,stats1041.1,stats1041.2,stats1042.1,stats1042.2,stats1043.1,stats1043.2,stats1044.1,stats1044.2,stats1045.1,stats1045.2,stats1046.1,stats1046.2,stats1047.1,stats1047.2,stats1048.1,stats1048.2,stats1049.1,stats1049.2,stats1050.1,stats1050.2,stats1051.1,stats1051.2,stats1052.1,stats1052.2,stats1053.1,stats1053.2,stats1054.1,stats1054.2,stats1055.1,stats1055.2,stats1056.1,stats1056.2,stats1057.1,stats1057.2,stats1058.1,stats1058.2,stats1059.1,stats1059.2,stats1060.1,stats1060.2,stats1061.1,stats1061.2,stats1062.1,stats1062.2,stats1063.1,stats1063.2,stats1064.1,stats1064.2,stats1065.1,stats1065.2,stats1066.1,stats1066.2,stats1067.1,stats1067.2,stats1068.1,stats1068.2,stats1069.1,stats1069.2,stats1070.1,stats1070.2,stats1071.1,stats1071.2,stats1072.1,stats1072.2,stats1073.1,stats1073.2,stats1074.1,stats1074.2,stats1075.1,stats1075.2,stats1076.1,stats1076.2,stats1077.1,stats1077.2,stats1078.1,stats1078.2,stats1079.1,stats1079.2,stats1080.1,stats1080.2,stats1081.1,stats1081.2,stats1082.1,stats1082.2,stats1083.1,stats1083.2,stats1084.1,stats1084.2,stats1085.1,stats1085.2,stats1086.1,stats1086.2,stats1087.1,stats1087.2,stats1088.1,stats1088.2,stats1089.1,stats1089.2,stats1090.1,stats1090.2,stats1091.1,stats1091.2,stats1092.1,stats1092.2,stats1093.1,stats1093.2,stats1094.1,stats1094.2,stats1095.1,stats1095.2]
  decide
end HashBlockCheckedRows
