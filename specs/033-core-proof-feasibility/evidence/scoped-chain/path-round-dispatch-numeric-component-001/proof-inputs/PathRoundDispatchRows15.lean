import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData15
import PathRoundDispatchInstructionMatrixData16
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1003 : actualRows1003=WordField.canonicalRows actualModulus 1003 (.bnot 1002) := by core033_kernel_decide
theorem stats1003 : actualRows1003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1003=6276 := by core033_kernel_decide
theorem rows1004 : actualRows1004=WordField.canonicalRows actualModulus 1004 (.band 1003 305) := by core033_kernel_decide
theorem stats1004 : actualRows1004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1004=5124 := by core033_kernel_decide
theorem rows1005 : actualRows1005=WordField.canonicalRows actualModulus 1005 (.bxor 999 1004) := by core033_kernel_decide
theorem stats1005 : actualRows1005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1005=7428 := by core033_kernel_decide
theorem rows1006 : actualRows1006=WordField.canonicalRows actualModulus 1006 (.bnot 875) := by core033_kernel_decide
theorem stats1006 : actualRows1006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1006=6276 := by core033_kernel_decide
theorem rows1007 : actualRows1007=WordField.canonicalRows actualModulus 1007 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1007 : actualRows1007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1007=2892 := by core033_kernel_decide
theorem rows1008 : actualRows1008=WordField.canonicalRows actualModulus 1008 (.badd 1006 1007) := by core033_kernel_decide
theorem stats1008 : actualRows1008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1008=5388 := by core033_kernel_decide
theorem rows1009 : actualRows1009=WordField.canonicalRows actualModulus 1009 (.band 1008 228) := by core033_kernel_decide
theorem stats1009 : actualRows1009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1009=5124 := by core033_kernel_decide
theorem rows1010 : actualRows1010=WordField.canonicalRows actualModulus 1010 (.bnot 875) := by core033_kernel_decide
theorem stats1010 : actualRows1010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1010=6276 := by core033_kernel_decide
theorem rows1011 : actualRows1011=WordField.canonicalRows actualModulus 1011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1011 : actualRows1011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1011=2892 := by core033_kernel_decide
theorem rows1012 : actualRows1012=WordField.canonicalRows actualModulus 1012 (.badd 1010 1011) := by core033_kernel_decide
theorem stats1012 : actualRows1012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1012=5388 := by core033_kernel_decide
theorem rows1013 : actualRows1013=WordField.canonicalRows actualModulus 1013 (.bnot 1012) := by core033_kernel_decide
theorem stats1013 : actualRows1013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1013=6276 := by core033_kernel_decide
theorem rows1014 : actualRows1014=WordField.canonicalRows actualModulus 1014 (.band 1013 316) := by core033_kernel_decide
theorem stats1014 : actualRows1014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1014=5124 := by core033_kernel_decide
theorem rows1015 : actualRows1015=WordField.canonicalRows actualModulus 1015 (.bxor 1009 1014) := by core033_kernel_decide
theorem stats1015 : actualRows1015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1015=7428 := by core033_kernel_decide
theorem rows1016 : actualRows1016=WordField.canonicalRows actualModulus 1016 (.bnot 875) := by core033_kernel_decide
theorem stats1016 : actualRows1016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1016=6276 := by core033_kernel_decide
theorem rows1017 : actualRows1017=WordField.canonicalRows actualModulus 1017 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1017 : actualRows1017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1017=2892 := by core033_kernel_decide
theorem rows1018 : actualRows1018=WordField.canonicalRows actualModulus 1018 (.badd 1016 1017) := by core033_kernel_decide
theorem stats1018 : actualRows1018.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1018=5388 := by core033_kernel_decide
theorem rows1019 : actualRows1019=WordField.canonicalRows actualModulus 1019 (.band 1018 239) := by core033_kernel_decide
theorem stats1019 : actualRows1019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1019=5124 := by core033_kernel_decide
theorem rows1020 : actualRows1020=WordField.canonicalRows actualModulus 1020 (.bnot 875) := by core033_kernel_decide
theorem stats1020 : actualRows1020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1020=6276 := by core033_kernel_decide
theorem rows1021 : actualRows1021=WordField.canonicalRows actualModulus 1021 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1021 : actualRows1021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1021=2892 := by core033_kernel_decide
theorem rows1022 : actualRows1022=WordField.canonicalRows actualModulus 1022 (.badd 1020 1021) := by core033_kernel_decide
theorem stats1022 : actualRows1022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1022=5388 := by core033_kernel_decide
theorem rows1023 : actualRows1023=WordField.canonicalRows actualModulus 1023 (.bnot 1022) := by core033_kernel_decide
theorem stats1023 : actualRows1023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1023=6276 := by core033_kernel_decide
theorem rows1024 : actualRows1024=WordField.canonicalRows actualModulus 1024 (.band 1023 327) := by core033_kernel_decide
theorem stats1024 : actualRows1024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1024=5124 := by core033_kernel_decide
theorem rows1025 : actualRows1025=WordField.canonicalRows actualModulus 1025 (.bxor 1019 1024) := by core033_kernel_decide
theorem stats1025 : actualRows1025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1025=7428 := by core033_kernel_decide
theorem rows1026 : actualRows1026=WordField.canonicalRows actualModulus 1026 (.bnot 875) := by core033_kernel_decide
theorem stats1026 : actualRows1026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1026=6276 := by core033_kernel_decide
theorem rows1027 : actualRows1027=WordField.canonicalRows actualModulus 1027 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1027 : actualRows1027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1027=2892 := by core033_kernel_decide
theorem rows1028 : actualRows1028=WordField.canonicalRows actualModulus 1028 (.badd 1026 1027) := by core033_kernel_decide
theorem stats1028 : actualRows1028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1028=5388 := by core033_kernel_decide
theorem rows1029 : actualRows1029=WordField.canonicalRows actualModulus 1029 (.band 1028 250) := by core033_kernel_decide
theorem stats1029 : actualRows1029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1029=5124 := by core033_kernel_decide
theorem rows1030 : actualRows1030=WordField.canonicalRows actualModulus 1030 (.bnot 875) := by core033_kernel_decide
theorem stats1030 : actualRows1030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1030=6276 := by core033_kernel_decide
theorem rows1031 : actualRows1031=WordField.canonicalRows actualModulus 1031 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1031 : actualRows1031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1031=2892 := by core033_kernel_decide
theorem rows1032 : actualRows1032=WordField.canonicalRows actualModulus 1032 (.badd 1030 1031) := by core033_kernel_decide
theorem stats1032 : actualRows1032.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1032=5388 := by core033_kernel_decide
theorem rows1033 : actualRows1033=WordField.canonicalRows actualModulus 1033 (.bnot 1032) := by core033_kernel_decide
theorem stats1033 : actualRows1033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1033=6276 := by core033_kernel_decide
theorem rows1034 : actualRows1034=WordField.canonicalRows actualModulus 1034 (.band 1033 338) := by core033_kernel_decide
theorem stats1034 : actualRows1034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1034=5124 := by core033_kernel_decide
theorem rows1035 : actualRows1035=WordField.canonicalRows actualModulus 1035 (.bxor 1029 1034) := by core033_kernel_decide
theorem stats1035 : actualRows1035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1035=7428 := by core033_kernel_decide
theorem rows1036 : actualRows1036=WordField.canonicalRows actualModulus 1036 (.bnot 875) := by core033_kernel_decide
theorem stats1036 : actualRows1036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1036=6276 := by core033_kernel_decide
theorem rows1037 : actualRows1037=WordField.canonicalRows actualModulus 1037 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1037 : actualRows1037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1037=2892 := by core033_kernel_decide
theorem rows1038 : actualRows1038=WordField.canonicalRows actualModulus 1038 (.badd 1036 1037) := by core033_kernel_decide
theorem stats1038 : actualRows1038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1038=5388 := by core033_kernel_decide
theorem rows1039 : actualRows1039=WordField.canonicalRows actualModulus 1039 (.band 1038 261) := by core033_kernel_decide
theorem stats1039 : actualRows1039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1039=5124 := by core033_kernel_decide
theorem rows1040 : actualRows1040=WordField.canonicalRows actualModulus 1040 (.bnot 875) := by core033_kernel_decide
theorem stats1040 : actualRows1040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1040=6276 := by core033_kernel_decide
theorem rows1041 : actualRows1041=WordField.canonicalRows actualModulus 1041 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1041 : actualRows1041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1041=2892 := by core033_kernel_decide
theorem rows1042 : actualRows1042=WordField.canonicalRows actualModulus 1042 (.badd 1040 1041) := by core033_kernel_decide
theorem stats1042 : actualRows1042.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1042=5388 := by core033_kernel_decide
theorem rows1043 : actualRows1043=WordField.canonicalRows actualModulus 1043 (.bnot 1042) := by core033_kernel_decide
theorem stats1043 : actualRows1043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1043=6276 := by core033_kernel_decide
theorem rows1044 : actualRows1044=WordField.canonicalRows actualModulus 1044 (.band 1043 349) := by core033_kernel_decide
theorem stats1044 : actualRows1044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1044=5124 := by core033_kernel_decide
theorem rows1045 : actualRows1045=WordField.canonicalRows actualModulus 1045 (.bxor 1039 1044) := by core033_kernel_decide
theorem stats1045 : actualRows1045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1045=7428 := by core033_kernel_decide
theorem rows1046 : actualRows1046=WordField.canonicalRows actualModulus 1046 (.bnot 875) := by core033_kernel_decide
theorem stats1046 : actualRows1046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1046=6276 := by core033_kernel_decide
theorem rows1047 : actualRows1047=WordField.canonicalRows actualModulus 1047 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1047 : actualRows1047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1047=2892 := by core033_kernel_decide
theorem rows1048 : actualRows1048=WordField.canonicalRows actualModulus 1048 (.badd 1046 1047) := by core033_kernel_decide
theorem stats1048 : actualRows1048.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1048=5388 := by core033_kernel_decide
theorem rows1049 : actualRows1049=WordField.canonicalRows actualModulus 1049 (.band 1048 272) := by core033_kernel_decide
theorem stats1049 : actualRows1049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1049=5124 := by core033_kernel_decide
theorem rows1050 : actualRows1050=WordField.canonicalRows actualModulus 1050 (.bnot 875) := by core033_kernel_decide
theorem stats1050 : actualRows1050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1050=6276 := by core033_kernel_decide
theorem rows1051 : actualRows1051=WordField.canonicalRows actualModulus 1051 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1051 : actualRows1051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1051=2892 := by core033_kernel_decide
theorem rows1052 : actualRows1052=WordField.canonicalRows actualModulus 1052 (.badd 1050 1051) := by core033_kernel_decide
theorem stats1052 : actualRows1052.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1052=5388 := by core033_kernel_decide
theorem rows1053 : actualRows1053=WordField.canonicalRows actualModulus 1053 (.bnot 1052) := by core033_kernel_decide
theorem stats1053 : actualRows1053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1053=6276 := by core033_kernel_decide
theorem rows1054 : actualRows1054=WordField.canonicalRows actualModulus 1054 (.band 1053 360) := by core033_kernel_decide
theorem stats1054 : actualRows1054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1054=5124 := by core033_kernel_decide
theorem rows1055 : actualRows1055=WordField.canonicalRows actualModulus 1055 (.bxor 1049 1054) := by core033_kernel_decide
theorem stats1055 : actualRows1055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1055=7428 := by core033_kernel_decide
theorem rows1056 : actualRows1056=WordField.canonicalRows actualModulus 1056 (.bnot 875) := by core033_kernel_decide
theorem stats1056 : actualRows1056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1056=6276 := by core033_kernel_decide
theorem rows1057 : actualRows1057=WordField.canonicalRows actualModulus 1057 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1057 : actualRows1057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1057=2892 := by core033_kernel_decide
theorem rows1058 : actualRows1058=WordField.canonicalRows actualModulus 1058 (.badd 1056 1057) := by core033_kernel_decide
theorem stats1058 : actualRows1058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1058=5388 := by core033_kernel_decide
theorem rows1059 : actualRows1059=WordField.canonicalRows actualModulus 1059 (.band 1058 283) := by core033_kernel_decide
theorem stats1059 : actualRows1059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1059=5124 := by core033_kernel_decide
theorem rows1060 : actualRows1060=WordField.canonicalRows actualModulus 1060 (.bnot 875) := by core033_kernel_decide
theorem stats1060 : actualRows1060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1060=6276 := by core033_kernel_decide
theorem rows1061 : actualRows1061=WordField.canonicalRows actualModulus 1061 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1061 : actualRows1061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1061=2892 := by core033_kernel_decide
theorem rows1062 : actualRows1062=WordField.canonicalRows actualModulus 1062 (.badd 1060 1061) := by core033_kernel_decide
theorem stats1062 : actualRows1062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1062=5388 := by core033_kernel_decide
theorem rows1063 : actualRows1063=WordField.canonicalRows actualModulus 1063 (.bnot 1062) := by core033_kernel_decide
theorem stats1063 : actualRows1063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1063=6276 := by core033_kernel_decide
theorem rows1064 : actualRows1064=WordField.canonicalRows actualModulus 1064 (.band 1063 371) := by core033_kernel_decide
theorem stats1064 : actualRows1064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1064=5124 := by core033_kernel_decide
theorem rows1065 : actualRows1065=WordField.canonicalRows actualModulus 1065 (.bxor 1059 1064) := by core033_kernel_decide
theorem stats1065 : actualRows1065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1065=7428 := by core033_kernel_decide
theorem rows1066 : actualRows1066=WordField.canonicalRows actualModulus 1066 (.bnot 875) := by core033_kernel_decide
theorem stats1066 : actualRows1066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1066=6276 := by core033_kernel_decide
def partRows15 : List R1CS.Row := actualRows1003++actualRows1004++actualRows1005++actualRows1006++actualRows1007++actualRows1008++actualRows1009++actualRows1010++actualRows1011++actualRows1012++actualRows1013++actualRows1014++actualRows1015++actualRows1016++actualRows1017++actualRows1018++actualRows1019++actualRows1020++actualRows1021++actualRows1022++actualRows1023++actualRows1024++actualRows1025++actualRows1026++actualRows1027++actualRows1028++actualRows1029++actualRows1030++actualRows1031++actualRows1032++actualRows1033++actualRows1034++actualRows1035++actualRows1036++actualRows1037++actualRows1038++actualRows1039++actualRows1040++actualRows1041++actualRows1042++actualRows1043++actualRows1044++actualRows1045++actualRows1046++actualRows1047++actualRows1048++actualRows1049++actualRows1050++actualRows1051++actualRows1052++actualRows1053++actualRows1054++actualRows1055++actualRows1056++actualRows1057++actualRows1058++actualRows1059++actualRows1060++actualRows1061++actualRows1062++actualRows1063++actualRows1064++actualRows1065++actualRows1066
def partOps15 : List WordIR.Op := [.bnot 1002,.band 1003 305,.bxor 999 1004,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1006 1007,.band 1008 228,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1010 1011,.bnot 1012,.band 1013 316,.bxor 1009 1014,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1016 1017,.band 1018 239,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1020 1021,.bnot 1022,.band 1023 327,.bxor 1019 1024,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1026 1027,.band 1028 250,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1030 1031,.bnot 1032,.band 1033 338,.bxor 1029 1034,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1036 1037,.band 1038 261,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1040 1041,.bnot 1042,.band 1043 349,.bxor 1039 1044,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1046 1047,.band 1048 272,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1050 1051,.bnot 1052,.band 1053 360,.bxor 1049 1054,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1056 1057,.band 1058 283,.bnot 875,.literal (BitVec.ofNat 32 1),.badd 1060 1061,.bnot 1062,.band 1063 371,.bxor 1059 1064,.bnot 875]
theorem partExact15 : partRows15=WordField.rows actualModulus 1003 partOps15 := by
  simp only [partRows15,partOps15,WordField.rows,rows1003,rows1004,rows1005,rows1006,rows1007,rows1008,rows1009,rows1010,rows1011,rows1012,rows1013,rows1014,rows1015,rows1016,rows1017,rows1018,rows1019,rows1020,rows1021,rows1022,rows1023,rows1024,rows1025,rows1026,rows1027,rows1028,rows1029,rows1030,rows1031,rows1032,rows1033,rows1034,rows1035,rows1036,rows1037,rows1038,rows1039,rows1040,rows1041,rows1042,rows1043,rows1044,rows1045,rows1046,rows1047,rows1048,rows1049,rows1050,rows1051,rows1052,rows1053,rows1054,rows1055,rows1056,rows1057,rows1058,rows1059,rows1060,rows1061,rows1062,rows1063,rows1064,rows1065,rows1066,List.append_assoc,List.append_nil]
theorem partLength15 : partOps15.length=64 := by decide
theorem partStats15 : partRows15.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows15=343488 := by
  simp only [partRows15,List.length_append,MatrixRowBlocks.rows_weight_append,stats1003.1,stats1003.2,stats1004.1,stats1004.2,stats1005.1,stats1005.2,stats1006.1,stats1006.2,stats1007.1,stats1007.2,stats1008.1,stats1008.2,stats1009.1,stats1009.2,stats1010.1,stats1010.2,stats1011.1,stats1011.2,stats1012.1,stats1012.2,stats1013.1,stats1013.2,stats1014.1,stats1014.2,stats1015.1,stats1015.2,stats1016.1,stats1016.2,stats1017.1,stats1017.2,stats1018.1,stats1018.2,stats1019.1,stats1019.2,stats1020.1,stats1020.2,stats1021.1,stats1021.2,stats1022.1,stats1022.2,stats1023.1,stats1023.2,stats1024.1,stats1024.2,stats1025.1,stats1025.2,stats1026.1,stats1026.2,stats1027.1,stats1027.2,stats1028.1,stats1028.2,stats1029.1,stats1029.2,stats1030.1,stats1030.2,stats1031.1,stats1031.2,stats1032.1,stats1032.2,stats1033.1,stats1033.2,stats1034.1,stats1034.2,stats1035.1,stats1035.2,stats1036.1,stats1036.2,stats1037.1,stats1037.2,stats1038.1,stats1038.2,stats1039.1,stats1039.2,stats1040.1,stats1040.2,stats1041.1,stats1041.2,stats1042.1,stats1042.2,stats1043.1,stats1043.2,stats1044.1,stats1044.2,stats1045.1,stats1045.2,stats1046.1,stats1046.2,stats1047.1,stats1047.2,stats1048.1,stats1048.2,stats1049.1,stats1049.2,stats1050.1,stats1050.2,stats1051.1,stats1051.2,stats1052.1,stats1052.2,stats1053.1,stats1053.2,stats1054.1,stats1054.2,stats1055.1,stats1055.2,stats1056.1,stats1056.2,stats1057.1,stats1057.2,stats1058.1,stats1058.2,stats1059.1,stats1059.2,stats1060.1,stats1060.2,stats1061.1,stats1061.2,stats1062.1,stats1062.2,stats1063.1,stats1063.2,stats1064.1,stats1064.2,stats1065.1,stats1065.2,stats1066.1,stats1066.2]
  decide
end PathRoundDispatchCheckedRows
