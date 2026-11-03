import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData15
import AuthenticatedBranchRoundInstructionMatrixData16
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1014 : actualRows1014=WordField.canonicalRows actualModulus 1014 (.bnot 182) := by core033_kernel_decide
theorem stats1014 : actualRows1014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1014=6276 := by core033_kernel_decide
theorem rows1015 : actualRows1015=WordField.canonicalRows actualModulus 1015 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1015 : actualRows1015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1015=2892 := by core033_kernel_decide
theorem rows1016 : actualRows1016=WordField.canonicalRows actualModulus 1016 (.badd 1014 1015) := by core033_kernel_decide
theorem stats1016 : actualRows1016.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1016=5388 := by core033_kernel_decide
theorem rows1017 : actualRows1017=WordField.canonicalRows actualModulus 1017 (.band 1016 109) := by core033_kernel_decide
theorem stats1017 : actualRows1017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1017=5124 := by core033_kernel_decide
theorem rows1018 : actualRows1018=WordField.canonicalRows actualModulus 1018 (.bnot 182) := by core033_kernel_decide
theorem stats1018 : actualRows1018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1018=6276 := by core033_kernel_decide
theorem rows1019 : actualRows1019=WordField.canonicalRows actualModulus 1019 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1019 : actualRows1019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1019=2892 := by core033_kernel_decide
theorem rows1020 : actualRows1020=WordField.canonicalRows actualModulus 1020 (.badd 1018 1019) := by core033_kernel_decide
theorem stats1020 : actualRows1020.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1020=5388 := by core033_kernel_decide
theorem rows1021 : actualRows1021=WordField.canonicalRows actualModulus 1021 (.bnot 1020) := by core033_kernel_decide
theorem stats1021 : actualRows1021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1021=6276 := by core033_kernel_decide
theorem rows1022 : actualRows1022=WordField.canonicalRows actualModulus 1022 (.band 1021 40) := by core033_kernel_decide
theorem stats1022 : actualRows1022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1022=5124 := by core033_kernel_decide
theorem rows1023 : actualRows1023=WordField.canonicalRows actualModulus 1023 (.bxor 1017 1022) := by core033_kernel_decide
theorem stats1023 : actualRows1023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1023=7428 := by core033_kernel_decide
theorem rows1024 : actualRows1024=WordField.canonicalRows actualModulus 1024 (.bnot 182) := by core033_kernel_decide
theorem stats1024 : actualRows1024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1024=6276 := by core033_kernel_decide
theorem rows1025 : actualRows1025=WordField.canonicalRows actualModulus 1025 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1025 : actualRows1025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1025=2892 := by core033_kernel_decide
theorem rows1026 : actualRows1026=WordField.canonicalRows actualModulus 1026 (.badd 1024 1025) := by core033_kernel_decide
theorem stats1026 : actualRows1026.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1026=5388 := by core033_kernel_decide
theorem rows1027 : actualRows1027=WordField.canonicalRows actualModulus 1027 (.band 1026 110) := by core033_kernel_decide
theorem stats1027 : actualRows1027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1027=5124 := by core033_kernel_decide
theorem rows1028 : actualRows1028=WordField.canonicalRows actualModulus 1028 (.bnot 182) := by core033_kernel_decide
theorem stats1028 : actualRows1028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1028=6276 := by core033_kernel_decide
theorem rows1029 : actualRows1029=WordField.canonicalRows actualModulus 1029 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1029 : actualRows1029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1029=2892 := by core033_kernel_decide
theorem rows1030 : actualRows1030=WordField.canonicalRows actualModulus 1030 (.badd 1028 1029) := by core033_kernel_decide
theorem stats1030 : actualRows1030.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1030=5388 := by core033_kernel_decide
theorem rows1031 : actualRows1031=WordField.canonicalRows actualModulus 1031 (.bnot 1030) := by core033_kernel_decide
theorem stats1031 : actualRows1031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1031=6276 := by core033_kernel_decide
theorem rows1032 : actualRows1032=WordField.canonicalRows actualModulus 1032 (.band 1031 41) := by core033_kernel_decide
theorem stats1032 : actualRows1032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1032=5124 := by core033_kernel_decide
theorem rows1033 : actualRows1033=WordField.canonicalRows actualModulus 1033 (.bxor 1027 1032) := by core033_kernel_decide
theorem stats1033 : actualRows1033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1033=7428 := by core033_kernel_decide
theorem rows1034 : actualRows1034=WordField.canonicalRows actualModulus 1034 (.bnot 182) := by core033_kernel_decide
theorem stats1034 : actualRows1034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1034=6276 := by core033_kernel_decide
theorem rows1035 : actualRows1035=WordField.canonicalRows actualModulus 1035 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1035 : actualRows1035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1035=2892 := by core033_kernel_decide
theorem rows1036 : actualRows1036=WordField.canonicalRows actualModulus 1036 (.badd 1034 1035) := by core033_kernel_decide
theorem stats1036 : actualRows1036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1036=5388 := by core033_kernel_decide
theorem rows1037 : actualRows1037=WordField.canonicalRows actualModulus 1037 (.band 1036 111) := by core033_kernel_decide
theorem stats1037 : actualRows1037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1037=5124 := by core033_kernel_decide
theorem rows1038 : actualRows1038=WordField.canonicalRows actualModulus 1038 (.bnot 182) := by core033_kernel_decide
theorem stats1038 : actualRows1038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1038=6276 := by core033_kernel_decide
theorem rows1039 : actualRows1039=WordField.canonicalRows actualModulus 1039 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1039 : actualRows1039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1039=2892 := by core033_kernel_decide
theorem rows1040 : actualRows1040=WordField.canonicalRows actualModulus 1040 (.badd 1038 1039) := by core033_kernel_decide
theorem stats1040 : actualRows1040.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1040=5388 := by core033_kernel_decide
theorem rows1041 : actualRows1041=WordField.canonicalRows actualModulus 1041 (.bnot 1040) := by core033_kernel_decide
theorem stats1041 : actualRows1041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1041=6276 := by core033_kernel_decide
theorem rows1042 : actualRows1042=WordField.canonicalRows actualModulus 1042 (.band 1041 42) := by core033_kernel_decide
theorem stats1042 : actualRows1042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1042=5124 := by core033_kernel_decide
theorem rows1043 : actualRows1043=WordField.canonicalRows actualModulus 1043 (.bxor 1037 1042) := by core033_kernel_decide
theorem stats1043 : actualRows1043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1043=7428 := by core033_kernel_decide
theorem rows1044 : actualRows1044=WordField.canonicalRows actualModulus 1044 (.bnot 182) := by core033_kernel_decide
theorem stats1044 : actualRows1044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1044=6276 := by core033_kernel_decide
theorem rows1045 : actualRows1045=WordField.canonicalRows actualModulus 1045 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1045 : actualRows1045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1045=2892 := by core033_kernel_decide
theorem rows1046 : actualRows1046=WordField.canonicalRows actualModulus 1046 (.badd 1044 1045) := by core033_kernel_decide
theorem stats1046 : actualRows1046.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1046=5388 := by core033_kernel_decide
theorem rows1047 : actualRows1047=WordField.canonicalRows actualModulus 1047 (.band 1046 112) := by core033_kernel_decide
theorem stats1047 : actualRows1047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1047=5124 := by core033_kernel_decide
theorem rows1048 : actualRows1048=WordField.canonicalRows actualModulus 1048 (.bnot 182) := by core033_kernel_decide
theorem stats1048 : actualRows1048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1048=6276 := by core033_kernel_decide
theorem rows1049 : actualRows1049=WordField.canonicalRows actualModulus 1049 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1049 : actualRows1049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1049=2892 := by core033_kernel_decide
theorem rows1050 : actualRows1050=WordField.canonicalRows actualModulus 1050 (.badd 1048 1049) := by core033_kernel_decide
theorem stats1050 : actualRows1050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1050=5388 := by core033_kernel_decide
theorem rows1051 : actualRows1051=WordField.canonicalRows actualModulus 1051 (.bnot 1050) := by core033_kernel_decide
theorem stats1051 : actualRows1051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1051=6276 := by core033_kernel_decide
theorem rows1052 : actualRows1052=WordField.canonicalRows actualModulus 1052 (.bnot 247) := by core033_kernel_decide
theorem stats1052 : actualRows1052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1052=6276 := by core033_kernel_decide
theorem rows1053 : actualRows1053=WordField.canonicalRows actualModulus 1053 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1053 : actualRows1053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1053=2892 := by core033_kernel_decide
theorem rows1054 : actualRows1054=WordField.canonicalRows actualModulus 1054 (.badd 1052 1053) := by core033_kernel_decide
theorem stats1054 : actualRows1054.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1054=5388 := by core033_kernel_decide
theorem rows1055 : actualRows1055=WordField.canonicalRows actualModulus 1055 (.band 1054 31) := by core033_kernel_decide
theorem stats1055 : actualRows1055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1055=5124 := by core033_kernel_decide
theorem rows1056 : actualRows1056=WordField.canonicalRows actualModulus 1056 (.bnot 247) := by core033_kernel_decide
theorem stats1056 : actualRows1056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1056=6276 := by core033_kernel_decide
theorem rows1057 : actualRows1057=WordField.canonicalRows actualModulus 1057 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1057 : actualRows1057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1057=2892 := by core033_kernel_decide
theorem rows1058 : actualRows1058=WordField.canonicalRows actualModulus 1058 (.badd 1056 1057) := by core033_kernel_decide
theorem stats1058 : actualRows1058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1058=5388 := by core033_kernel_decide
theorem rows1059 : actualRows1059=WordField.canonicalRows actualModulus 1059 (.bnot 1058) := by core033_kernel_decide
theorem stats1059 : actualRows1059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1059=6276 := by core033_kernel_decide
theorem rows1060 : actualRows1060=WordField.canonicalRows actualModulus 1060 (.band 1059 19) := by core033_kernel_decide
theorem stats1060 : actualRows1060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1060=5124 := by core033_kernel_decide
theorem rows1061 : actualRows1061=WordField.canonicalRows actualModulus 1061 (.bxor 1055 1060) := by core033_kernel_decide
theorem stats1061 : actualRows1061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1061=7428 := by core033_kernel_decide
theorem rows1062 : actualRows1062=WordField.canonicalRows actualModulus 1062 (.band 1051 1061) := by core033_kernel_decide
theorem stats1062 : actualRows1062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1062=5124 := by core033_kernel_decide
theorem rows1063 : actualRows1063=WordField.canonicalRows actualModulus 1063 (.bxor 1047 1062) := by core033_kernel_decide
theorem stats1063 : actualRows1063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1063=7428 := by core033_kernel_decide
theorem rows1064 : actualRows1064=WordField.canonicalRows actualModulus 1064 (.bnot 182) := by core033_kernel_decide
theorem stats1064 : actualRows1064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1064=6276 := by core033_kernel_decide
theorem rows1065 : actualRows1065=WordField.canonicalRows actualModulus 1065 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1065 : actualRows1065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1065=2892 := by core033_kernel_decide
theorem rows1066 : actualRows1066=WordField.canonicalRows actualModulus 1066 (.badd 1064 1065) := by core033_kernel_decide
theorem stats1066 : actualRows1066.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1066=5388 := by core033_kernel_decide
theorem rows1067 : actualRows1067=WordField.canonicalRows actualModulus 1067 (.band 1066 113) := by core033_kernel_decide
theorem stats1067 : actualRows1067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1067=5124 := by core033_kernel_decide
theorem rows1068 : actualRows1068=WordField.canonicalRows actualModulus 1068 (.bnot 182) := by core033_kernel_decide
theorem stats1068 : actualRows1068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1068=6276 := by core033_kernel_decide
theorem rows1069 : actualRows1069=WordField.canonicalRows actualModulus 1069 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1069 : actualRows1069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1069=2892 := by core033_kernel_decide
theorem rows1070 : actualRows1070=WordField.canonicalRows actualModulus 1070 (.badd 1068 1069) := by core033_kernel_decide
theorem stats1070 : actualRows1070.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1070=5388 := by core033_kernel_decide
theorem rows1071 : actualRows1071=WordField.canonicalRows actualModulus 1071 (.bnot 1070) := by core033_kernel_decide
theorem stats1071 : actualRows1071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1071=6276 := by core033_kernel_decide
theorem rows1072 : actualRows1072=WordField.canonicalRows actualModulus 1072 (.bnot 247) := by core033_kernel_decide
theorem stats1072 : actualRows1072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1072=6276 := by core033_kernel_decide
theorem rows1073 : actualRows1073=WordField.canonicalRows actualModulus 1073 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1073 : actualRows1073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1073=2892 := by core033_kernel_decide
theorem rows1074 : actualRows1074=WordField.canonicalRows actualModulus 1074 (.badd 1072 1073) := by core033_kernel_decide
theorem stats1074 : actualRows1074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1074=5388 := by core033_kernel_decide
theorem rows1075 : actualRows1075=WordField.canonicalRows actualModulus 1075 (.band 1074 32) := by core033_kernel_decide
theorem stats1075 : actualRows1075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1075=5124 := by core033_kernel_decide
theorem rows1076 : actualRows1076=WordField.canonicalRows actualModulus 1076 (.bnot 247) := by core033_kernel_decide
theorem stats1076 : actualRows1076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1076=6276 := by core033_kernel_decide
theorem rows1077 : actualRows1077=WordField.canonicalRows actualModulus 1077 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1077 : actualRows1077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1077=2892 := by core033_kernel_decide
def partRows14 : List R1CS.Row := actualRows1014++actualRows1015++actualRows1016++actualRows1017++actualRows1018++actualRows1019++actualRows1020++actualRows1021++actualRows1022++actualRows1023++actualRows1024++actualRows1025++actualRows1026++actualRows1027++actualRows1028++actualRows1029++actualRows1030++actualRows1031++actualRows1032++actualRows1033++actualRows1034++actualRows1035++actualRows1036++actualRows1037++actualRows1038++actualRows1039++actualRows1040++actualRows1041++actualRows1042++actualRows1043++actualRows1044++actualRows1045++actualRows1046++actualRows1047++actualRows1048++actualRows1049++actualRows1050++actualRows1051++actualRows1052++actualRows1053++actualRows1054++actualRows1055++actualRows1056++actualRows1057++actualRows1058++actualRows1059++actualRows1060++actualRows1061++actualRows1062++actualRows1063++actualRows1064++actualRows1065++actualRows1066++actualRows1067++actualRows1068++actualRows1069++actualRows1070++actualRows1071++actualRows1072++actualRows1073++actualRows1074++actualRows1075++actualRows1076++actualRows1077
def partOps14 : List WordIR.Op := [.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1014 1015,.band 1016 109,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1018 1019,.bnot 1020,.band 1021 40,.bxor 1017 1022,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1024 1025,.band 1026 110,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1028 1029,.bnot 1030,.band 1031 41,.bxor 1027 1032,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1034 1035,.band 1036 111,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1038 1039,.bnot 1040,.band 1041 42,.bxor 1037 1042,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1044 1045,.band 1046 112,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1048 1049,.bnot 1050,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 1052 1053,.band 1054 31,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 1056 1057,.bnot 1058,.band 1059 19,.bxor 1055 1060,.band 1051 1061,.bxor 1047 1062,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1064 1065,.band 1066 113,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1068 1069,.bnot 1070,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 1072 1073,.band 1074 32,.bnot 247,.literal (BitVec.ofNat 32 1)]
theorem partExact14 : partRows14=WordField.rows actualModulus 1014 partOps14 := by
  simp only [partRows14,partOps14,WordField.rows,rows1014,rows1015,rows1016,rows1017,rows1018,rows1019,rows1020,rows1021,rows1022,rows1023,rows1024,rows1025,rows1026,rows1027,rows1028,rows1029,rows1030,rows1031,rows1032,rows1033,rows1034,rows1035,rows1036,rows1037,rows1038,rows1039,rows1040,rows1041,rows1042,rows1043,rows1044,rows1045,rows1046,rows1047,rows1048,rows1049,rows1050,rows1051,rows1052,rows1053,rows1054,rows1055,rows1056,rows1057,rows1058,rows1059,rows1060,rows1061,rows1062,rows1063,rows1064,rows1065,rows1066,rows1067,rows1068,rows1069,rows1070,rows1071,rows1072,rows1073,rows1074,rows1075,rows1076,rows1077,List.append_assoc,List.append_nil]
theorem partLength14 : partOps14.length=64 := by decide
theorem partStats14 : partRows14.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows14=334680 := by
  simp only [partRows14,List.length_append,MatrixRowBlocks.rows_weight_append,stats1014.1,stats1014.2,stats1015.1,stats1015.2,stats1016.1,stats1016.2,stats1017.1,stats1017.2,stats1018.1,stats1018.2,stats1019.1,stats1019.2,stats1020.1,stats1020.2,stats1021.1,stats1021.2,stats1022.1,stats1022.2,stats1023.1,stats1023.2,stats1024.1,stats1024.2,stats1025.1,stats1025.2,stats1026.1,stats1026.2,stats1027.1,stats1027.2,stats1028.1,stats1028.2,stats1029.1,stats1029.2,stats1030.1,stats1030.2,stats1031.1,stats1031.2,stats1032.1,stats1032.2,stats1033.1,stats1033.2,stats1034.1,stats1034.2,stats1035.1,stats1035.2,stats1036.1,stats1036.2,stats1037.1,stats1037.2,stats1038.1,stats1038.2,stats1039.1,stats1039.2,stats1040.1,stats1040.2,stats1041.1,stats1041.2,stats1042.1,stats1042.2,stats1043.1,stats1043.2,stats1044.1,stats1044.2,stats1045.1,stats1045.2,stats1046.1,stats1046.2,stats1047.1,stats1047.2,stats1048.1,stats1048.2,stats1049.1,stats1049.2,stats1050.1,stats1050.2,stats1051.1,stats1051.2,stats1052.1,stats1052.2,stats1053.1,stats1053.2,stats1054.1,stats1054.2,stats1055.1,stats1055.2,stats1056.1,stats1056.2,stats1057.1,stats1057.2,stats1058.1,stats1058.2,stats1059.1,stats1059.2,stats1060.1,stats1060.2,stats1061.1,stats1061.2,stats1062.1,stats1062.2,stats1063.1,stats1063.2,stats1064.1,stats1064.2,stats1065.1,stats1065.2,stats1066.1,stats1066.2,stats1067.1,stats1067.2,stats1068.1,stats1068.2,stats1069.1,stats1069.2,stats1070.1,stats1070.2,stats1071.1,stats1071.2,stats1072.1,stats1072.2,stats1073.1,stats1073.2,stats1074.1,stats1074.2,stats1075.1,stats1075.2,stats1076.1,stats1076.2,stats1077.1,stats1077.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
