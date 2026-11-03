import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData15
import PathFrameInstructionMatrixData16
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows994 : actualRows994=WordField.canonicalRows actualModulus 994 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats994 : actualRows994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows994=3396 := by core033_kernel_decide
theorem rows995 : actualRows995=WordField.canonicalRows actualModulus 995 (.band 993 994) := by core033_kernel_decide
theorem stats995 : actualRows995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows995=5124 := by core033_kernel_decide
theorem rows996 : actualRows996=WordField.canonicalRows actualModulus 996 (.shr 520 8) := by core033_kernel_decide
theorem stats996 : actualRows996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows996=4548 := by core033_kernel_decide
theorem rows997 : actualRows997=WordField.canonicalRows actualModulus 997 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats997 : actualRows997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows997=3396 := by core033_kernel_decide
theorem rows998 : actualRows998=WordField.canonicalRows actualModulus 998 (.band 996 997) := by core033_kernel_decide
theorem stats998 : actualRows998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows998=5124 := by core033_kernel_decide
theorem rows999 : actualRows999=WordField.canonicalRows actualModulus 999 (.shr 520 16) := by core033_kernel_decide
theorem stats999 : actualRows999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows999=3972 := by core033_kernel_decide
theorem rows1000 : actualRows1000=WordField.canonicalRows actualModulus 1000 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1000 : actualRows1000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1000=3396 := by core033_kernel_decide
theorem rows1001 : actualRows1001=WordField.canonicalRows actualModulus 1001 (.band 999 1000) := by core033_kernel_decide
theorem stats1001 : actualRows1001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1001=5124 := by core033_kernel_decide
theorem rows1002 : actualRows1002=WordField.canonicalRows actualModulus 1002 (.shr 520 24) := by core033_kernel_decide
theorem stats1002 : actualRows1002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1002=3396 := by core033_kernel_decide
theorem rows1003 : actualRows1003=WordField.canonicalRows actualModulus 1003 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1003 : actualRows1003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1003=3396 := by core033_kernel_decide
theorem rows1004 : actualRows1004=WordField.canonicalRows actualModulus 1004 (.band 1002 1003) := by core033_kernel_decide
theorem stats1004 : actualRows1004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1004=5124 := by core033_kernel_decide
theorem rows1005 : actualRows1005=WordField.canonicalRows actualModulus 1005 (.shr 530 0) := by core033_kernel_decide
theorem stats1005 : actualRows1005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1005=5124 := by core033_kernel_decide
theorem rows1006 : actualRows1006=WordField.canonicalRows actualModulus 1006 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1006 : actualRows1006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1006=3396 := by core033_kernel_decide
theorem rows1007 : actualRows1007=WordField.canonicalRows actualModulus 1007 (.band 1005 1006) := by core033_kernel_decide
theorem stats1007 : actualRows1007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1007=5124 := by core033_kernel_decide
theorem rows1008 : actualRows1008=WordField.canonicalRows actualModulus 1008 (.shr 530 8) := by core033_kernel_decide
theorem stats1008 : actualRows1008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1008=4548 := by core033_kernel_decide
theorem rows1009 : actualRows1009=WordField.canonicalRows actualModulus 1009 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1009 : actualRows1009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1009=3396 := by core033_kernel_decide
theorem rows1010 : actualRows1010=WordField.canonicalRows actualModulus 1010 (.band 1008 1009) := by core033_kernel_decide
theorem stats1010 : actualRows1010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1010=5124 := by core033_kernel_decide
theorem rows1011 : actualRows1011=WordField.canonicalRows actualModulus 1011 (.shr 530 16) := by core033_kernel_decide
theorem stats1011 : actualRows1011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1011=3972 := by core033_kernel_decide
theorem rows1012 : actualRows1012=WordField.canonicalRows actualModulus 1012 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1012 : actualRows1012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1012=3396 := by core033_kernel_decide
theorem rows1013 : actualRows1013=WordField.canonicalRows actualModulus 1013 (.band 1011 1012) := by core033_kernel_decide
theorem stats1013 : actualRows1013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1013=5124 := by core033_kernel_decide
theorem rows1014 : actualRows1014=WordField.canonicalRows actualModulus 1014 (.shr 530 24) := by core033_kernel_decide
theorem stats1014 : actualRows1014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1014=3396 := by core033_kernel_decide
theorem rows1015 : actualRows1015=WordField.canonicalRows actualModulus 1015 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1015 : actualRows1015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1015=3396 := by core033_kernel_decide
theorem rows1016 : actualRows1016=WordField.canonicalRows actualModulus 1016 (.band 1014 1015) := by core033_kernel_decide
theorem stats1016 : actualRows1016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1016=5124 := by core033_kernel_decide
theorem rows1017 : actualRows1017=WordField.canonicalRows actualModulus 1017 (.shr 540 0) := by core033_kernel_decide
theorem stats1017 : actualRows1017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1017=5124 := by core033_kernel_decide
theorem rows1018 : actualRows1018=WordField.canonicalRows actualModulus 1018 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1018 : actualRows1018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1018=3396 := by core033_kernel_decide
theorem rows1019 : actualRows1019=WordField.canonicalRows actualModulus 1019 (.band 1017 1018) := by core033_kernel_decide
theorem stats1019 : actualRows1019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1019=5124 := by core033_kernel_decide
theorem rows1020 : actualRows1020=WordField.canonicalRows actualModulus 1020 (.shr 540 8) := by core033_kernel_decide
theorem stats1020 : actualRows1020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1020=4548 := by core033_kernel_decide
theorem rows1021 : actualRows1021=WordField.canonicalRows actualModulus 1021 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1021 : actualRows1021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1021=3396 := by core033_kernel_decide
theorem rows1022 : actualRows1022=WordField.canonicalRows actualModulus 1022 (.band 1020 1021) := by core033_kernel_decide
theorem stats1022 : actualRows1022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1022=5124 := by core033_kernel_decide
theorem rows1023 : actualRows1023=WordField.canonicalRows actualModulus 1023 (.shr 540 16) := by core033_kernel_decide
theorem stats1023 : actualRows1023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1023=3972 := by core033_kernel_decide
theorem rows1024 : actualRows1024=WordField.canonicalRows actualModulus 1024 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1024 : actualRows1024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1024=3396 := by core033_kernel_decide
theorem rows1025 : actualRows1025=WordField.canonicalRows actualModulus 1025 (.band 1023 1024) := by core033_kernel_decide
theorem stats1025 : actualRows1025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1025=5124 := by core033_kernel_decide
theorem rows1026 : actualRows1026=WordField.canonicalRows actualModulus 1026 (.shr 540 24) := by core033_kernel_decide
theorem stats1026 : actualRows1026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1026=3396 := by core033_kernel_decide
theorem rows1027 : actualRows1027=WordField.canonicalRows actualModulus 1027 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1027 : actualRows1027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1027=3396 := by core033_kernel_decide
theorem rows1028 : actualRows1028=WordField.canonicalRows actualModulus 1028 (.band 1026 1027) := by core033_kernel_decide
theorem stats1028 : actualRows1028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1028=5124 := by core033_kernel_decide
theorem rows1029 : actualRows1029=WordField.canonicalRows actualModulus 1029 (.shr 550 0) := by core033_kernel_decide
theorem stats1029 : actualRows1029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1029=5124 := by core033_kernel_decide
theorem rows1030 : actualRows1030=WordField.canonicalRows actualModulus 1030 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1030 : actualRows1030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1030=3396 := by core033_kernel_decide
theorem rows1031 : actualRows1031=WordField.canonicalRows actualModulus 1031 (.band 1029 1030) := by core033_kernel_decide
theorem stats1031 : actualRows1031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1031=5124 := by core033_kernel_decide
theorem rows1032 : actualRows1032=WordField.canonicalRows actualModulus 1032 (.shr 550 8) := by core033_kernel_decide
theorem stats1032 : actualRows1032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1032=4548 := by core033_kernel_decide
theorem rows1033 : actualRows1033=WordField.canonicalRows actualModulus 1033 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1033 : actualRows1033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1033=3396 := by core033_kernel_decide
theorem rows1034 : actualRows1034=WordField.canonicalRows actualModulus 1034 (.band 1032 1033) := by core033_kernel_decide
theorem stats1034 : actualRows1034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1034=5124 := by core033_kernel_decide
theorem rows1035 : actualRows1035=WordField.canonicalRows actualModulus 1035 (.shr 550 16) := by core033_kernel_decide
theorem stats1035 : actualRows1035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1035=3972 := by core033_kernel_decide
theorem rows1036 : actualRows1036=WordField.canonicalRows actualModulus 1036 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1036 : actualRows1036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1036=3396 := by core033_kernel_decide
theorem rows1037 : actualRows1037=WordField.canonicalRows actualModulus 1037 (.band 1035 1036) := by core033_kernel_decide
theorem stats1037 : actualRows1037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1037=5124 := by core033_kernel_decide
theorem rows1038 : actualRows1038=WordField.canonicalRows actualModulus 1038 (.shr 550 24) := by core033_kernel_decide
theorem stats1038 : actualRows1038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1038=3396 := by core033_kernel_decide
theorem rows1039 : actualRows1039=WordField.canonicalRows actualModulus 1039 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1039 : actualRows1039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1039=3396 := by core033_kernel_decide
theorem rows1040 : actualRows1040=WordField.canonicalRows actualModulus 1040 (.band 1038 1039) := by core033_kernel_decide
theorem stats1040 : actualRows1040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1040=5124 := by core033_kernel_decide
theorem rows1041 : actualRows1041=WordField.canonicalRows actualModulus 1041 (.shr 440 0) := by core033_kernel_decide
theorem stats1041 : actualRows1041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1041=5124 := by core033_kernel_decide
theorem rows1042 : actualRows1042=WordField.canonicalRows actualModulus 1042 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1042 : actualRows1042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1042=3396 := by core033_kernel_decide
theorem rows1043 : actualRows1043=WordField.canonicalRows actualModulus 1043 (.band 1041 1042) := by core033_kernel_decide
theorem stats1043 : actualRows1043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1043=5124 := by core033_kernel_decide
theorem rows1044 : actualRows1044=WordField.canonicalRows actualModulus 1044 (.shr 440 8) := by core033_kernel_decide
theorem stats1044 : actualRows1044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1044=4548 := by core033_kernel_decide
theorem rows1045 : actualRows1045=WordField.canonicalRows actualModulus 1045 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1045 : actualRows1045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1045=3396 := by core033_kernel_decide
theorem rows1046 : actualRows1046=WordField.canonicalRows actualModulus 1046 (.band 1044 1045) := by core033_kernel_decide
theorem stats1046 : actualRows1046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1046=5124 := by core033_kernel_decide
theorem rows1047 : actualRows1047=WordField.canonicalRows actualModulus 1047 (.shr 440 16) := by core033_kernel_decide
theorem stats1047 : actualRows1047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1047=3972 := by core033_kernel_decide
theorem rows1048 : actualRows1048=WordField.canonicalRows actualModulus 1048 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1048 : actualRows1048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1048=3396 := by core033_kernel_decide
theorem rows1049 : actualRows1049=WordField.canonicalRows actualModulus 1049 (.band 1047 1048) := by core033_kernel_decide
theorem stats1049 : actualRows1049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1049=5124 := by core033_kernel_decide
theorem rows1050 : actualRows1050=WordField.canonicalRows actualModulus 1050 (.shr 440 24) := by core033_kernel_decide
theorem stats1050 : actualRows1050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1050=3396 := by core033_kernel_decide
theorem rows1051 : actualRows1051=WordField.canonicalRows actualModulus 1051 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1051 : actualRows1051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1051=3396 := by core033_kernel_decide
theorem rows1052 : actualRows1052=WordField.canonicalRows actualModulus 1052 (.band 1050 1051) := by core033_kernel_decide
theorem stats1052 : actualRows1052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1052=5124 := by core033_kernel_decide
theorem rows1053 : actualRows1053=WordField.canonicalRows actualModulus 1053 (.shr 450 0) := by core033_kernel_decide
theorem stats1053 : actualRows1053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1053=5124 := by core033_kernel_decide
theorem rows1054 : actualRows1054=WordField.canonicalRows actualModulus 1054 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1054 : actualRows1054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1054=3396 := by core033_kernel_decide
theorem rows1055 : actualRows1055=WordField.canonicalRows actualModulus 1055 (.band 1053 1054) := by core033_kernel_decide
theorem stats1055 : actualRows1055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1055=5124 := by core033_kernel_decide
theorem rows1056 : actualRows1056=WordField.canonicalRows actualModulus 1056 (.shr 450 8) := by core033_kernel_decide
theorem stats1056 : actualRows1056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1056=4548 := by core033_kernel_decide
theorem rows1057 : actualRows1057=WordField.canonicalRows actualModulus 1057 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1057 : actualRows1057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1057=3396 := by core033_kernel_decide
def partRows15 : List R1CS.Row := actualRows994++actualRows995++actualRows996++actualRows997++actualRows998++actualRows999++actualRows1000++actualRows1001++actualRows1002++actualRows1003++actualRows1004++actualRows1005++actualRows1006++actualRows1007++actualRows1008++actualRows1009++actualRows1010++actualRows1011++actualRows1012++actualRows1013++actualRows1014++actualRows1015++actualRows1016++actualRows1017++actualRows1018++actualRows1019++actualRows1020++actualRows1021++actualRows1022++actualRows1023++actualRows1024++actualRows1025++actualRows1026++actualRows1027++actualRows1028++actualRows1029++actualRows1030++actualRows1031++actualRows1032++actualRows1033++actualRows1034++actualRows1035++actualRows1036++actualRows1037++actualRows1038++actualRows1039++actualRows1040++actualRows1041++actualRows1042++actualRows1043++actualRows1044++actualRows1045++actualRows1046++actualRows1047++actualRows1048++actualRows1049++actualRows1050++actualRows1051++actualRows1052++actualRows1053++actualRows1054++actualRows1055++actualRows1056++actualRows1057
def partOps15 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 993 994,.shr 520 8,.literal (BitVec.ofNat 32 255),.band 996 997,.shr 520 16,.literal (BitVec.ofNat 32 255),.band 999 1000,.shr 520 24,.literal (BitVec.ofNat 32 255),.band 1002 1003,.shr 530 0,.literal (BitVec.ofNat 32 255),.band 1005 1006,.shr 530 8,.literal (BitVec.ofNat 32 255),.band 1008 1009,.shr 530 16,.literal (BitVec.ofNat 32 255),.band 1011 1012,.shr 530 24,.literal (BitVec.ofNat 32 255),.band 1014 1015,.shr 540 0,.literal (BitVec.ofNat 32 255),.band 1017 1018,.shr 540 8,.literal (BitVec.ofNat 32 255),.band 1020 1021,.shr 540 16,.literal (BitVec.ofNat 32 255),.band 1023 1024,.shr 540 24,.literal (BitVec.ofNat 32 255),.band 1026 1027,.shr 550 0,.literal (BitVec.ofNat 32 255),.band 1029 1030,.shr 550 8,.literal (BitVec.ofNat 32 255),.band 1032 1033,.shr 550 16,.literal (BitVec.ofNat 32 255),.band 1035 1036,.shr 550 24,.literal (BitVec.ofNat 32 255),.band 1038 1039,.shr 440 0,.literal (BitVec.ofNat 32 255),.band 1041 1042,.shr 440 8,.literal (BitVec.ofNat 32 255),.band 1044 1045,.shr 440 16,.literal (BitVec.ofNat 32 255),.band 1047 1048,.shr 440 24,.literal (BitVec.ofNat 32 255),.band 1050 1051,.shr 450 0,.literal (BitVec.ofNat 32 255),.band 1053 1054,.shr 450 8,.literal (BitVec.ofNat 32 255)]
theorem partExact15 : partRows15=WordField.rows actualModulus 994 partOps15 := by
  simp only [partRows15,partOps15,WordField.rows,rows994,rows995,rows996,rows997,rows998,rows999,rows1000,rows1001,rows1002,rows1003,rows1004,rows1005,rows1006,rows1007,rows1008,rows1009,rows1010,rows1011,rows1012,rows1013,rows1014,rows1015,rows1016,rows1017,rows1018,rows1019,rows1020,rows1021,rows1022,rows1023,rows1024,rows1025,rows1026,rows1027,rows1028,rows1029,rows1030,rows1031,rows1032,rows1033,rows1034,rows1035,rows1036,rows1037,rows1038,rows1039,rows1040,rows1041,rows1042,rows1043,rows1044,rows1045,rows1046,rows1047,rows1048,rows1049,rows1050,rows1051,rows1052,rows1053,rows1054,rows1055,rows1056,rows1057,List.append_assoc,List.append_nil]
theorem partLength15 : partOps15.length=64 := by decide
theorem partStats15 : partRows15.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows15=272064 := by
  simp only [partRows15,List.length_append,MatrixRowBlocks.rows_weight_append,stats994.1,stats994.2,stats995.1,stats995.2,stats996.1,stats996.2,stats997.1,stats997.2,stats998.1,stats998.2,stats999.1,stats999.2,stats1000.1,stats1000.2,stats1001.1,stats1001.2,stats1002.1,stats1002.2,stats1003.1,stats1003.2,stats1004.1,stats1004.2,stats1005.1,stats1005.2,stats1006.1,stats1006.2,stats1007.1,stats1007.2,stats1008.1,stats1008.2,stats1009.1,stats1009.2,stats1010.1,stats1010.2,stats1011.1,stats1011.2,stats1012.1,stats1012.2,stats1013.1,stats1013.2,stats1014.1,stats1014.2,stats1015.1,stats1015.2,stats1016.1,stats1016.2,stats1017.1,stats1017.2,stats1018.1,stats1018.2,stats1019.1,stats1019.2,stats1020.1,stats1020.2,stats1021.1,stats1021.2,stats1022.1,stats1022.2,stats1023.1,stats1023.2,stats1024.1,stats1024.2,stats1025.1,stats1025.2,stats1026.1,stats1026.2,stats1027.1,stats1027.2,stats1028.1,stats1028.2,stats1029.1,stats1029.2,stats1030.1,stats1030.2,stats1031.1,stats1031.2,stats1032.1,stats1032.2,stats1033.1,stats1033.2,stats1034.1,stats1034.2,stats1035.1,stats1035.2,stats1036.1,stats1036.2,stats1037.1,stats1037.2,stats1038.1,stats1038.2,stats1039.1,stats1039.2,stats1040.1,stats1040.2,stats1041.1,stats1041.2,stats1042.1,stats1042.2,stats1043.1,stats1043.2,stats1044.1,stats1044.2,stats1045.1,stats1045.2,stats1046.1,stats1046.2,stats1047.1,stats1047.2,stats1048.1,stats1048.2,stats1049.1,stats1049.2,stats1050.1,stats1050.2,stats1051.1,stats1051.2,stats1052.1,stats1052.2,stats1053.1,stats1053.2,stats1054.1,stats1054.2,stats1055.1,stats1055.2,stats1056.1,stats1056.2,stats1057.1,stats1057.2]
  decide
end PathFrameCheckedRows
