import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData171
import PathRoundDispatchInstructionMatrixData172
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10987 : actualRows10987=WordField.canonicalRows actualModulus 10987 (.bnot 10986) := by core033_kernel_decide
theorem stats10987 : actualRows10987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10987=6276 := by core033_kernel_decide
theorem rows10988 : actualRows10988=WordField.canonicalRows actualModulus 10988 (.bxor 10985 10987) := by core033_kernel_decide
theorem stats10988 : actualRows10988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10988=7428 := by core033_kernel_decide
theorem rows10989 : actualRows10989=WordField.canonicalRows actualModulus 10989 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10989 : actualRows10989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10989=2964 := by core033_kernel_decide
theorem rows10990 : actualRows10990=WordField.canonicalRows actualModulus 10990 (.bxor 0 10989) := by core033_kernel_decide
theorem stats10990 : actualRows10990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10990=7428 := by core033_kernel_decide
theorem rows10991 : actualRows10991=WordField.canonicalRows actualModulus 10991 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10991 : actualRows10991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10991=2820 := by core033_kernel_decide
theorem rows10992 : actualRows10992=WordField.canonicalRows actualModulus 10992 (.bnot 10991) := by core033_kernel_decide
theorem stats10992 : actualRows10992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10992=6276 := by core033_kernel_decide
theorem rows10993 : actualRows10993=WordField.canonicalRows actualModulus 10993 (.badd 10990 10992) := by core033_kernel_decide
theorem stats10993 : actualRows10993.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10993=5388 := by core033_kernel_decide
theorem rows10994 : actualRows10994=WordField.canonicalRows actualModulus 10994 (.bnot 10993) := by core033_kernel_decide
theorem stats10994 : actualRows10994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10994=6276 := by core033_kernel_decide
theorem rows10995 : actualRows10995=WordField.canonicalRows actualModulus 10995 (.band 10988 10994) := by core033_kernel_decide
theorem stats10995 : actualRows10995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10995=5124 := by core033_kernel_decide
theorem rows10996 : actualRows10996=WordField.canonicalRows actualModulus 10996 (.bxor 10983 10995) := by core033_kernel_decide
theorem stats10996 : actualRows10996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10996=7428 := by core033_kernel_decide
theorem rows10997 : actualRows10997=WordField.canonicalRows actualModulus 10997 (.shr 10996 31) := by core033_kernel_decide
theorem stats10997 : actualRows10997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10997=2892 := by core033_kernel_decide
theorem rows10998 : actualRows10998=WordField.canonicalRows actualModulus 10998 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10998 : actualRows10998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10998=2892 := by core033_kernel_decide
theorem rows10999 : actualRows10999=WordField.canonicalRows actualModulus 10999 (.bxor 10997 10998) := by core033_kernel_decide
theorem stats10999 : actualRows10999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10999=7428 := by core033_kernel_decide
theorem rows11000 : actualRows11000=WordField.canonicalRows actualModulus 11000 (.bnot 10999) := by core033_kernel_decide
theorem stats11000 : actualRows11000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11000=6276 := by core033_kernel_decide
theorem rows11001 : actualRows11001=WordField.canonicalRows actualModulus 11001 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11001 : actualRows11001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11001=2892 := by core033_kernel_decide
theorem rows11002 : actualRows11002=WordField.canonicalRows actualModulus 11002 (.badd 11000 11001) := by core033_kernel_decide
theorem stats11002 : actualRows11002.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11002=5388 := by core033_kernel_decide
theorem rows11003 : actualRows11003=WordField.canonicalRows actualModulus 11003 (.bnot 11002) := by core033_kernel_decide
theorem stats11003 : actualRows11003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11003=6276 := by core033_kernel_decide
theorem rows11004 : actualRows11004=WordField.canonicalRows actualModulus 11004 (.band 11003 250) := by core033_kernel_decide
theorem stats11004 : actualRows11004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11004=5124 := by core033_kernel_decide
theorem rows11005 : actualRows11005=WordField.canonicalRows actualModulus 11005 (.bxor 10978 11004) := by core033_kernel_decide
theorem stats11005 : actualRows11005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11005=7428 := by core033_kernel_decide
theorem rows11006 : actualRows11006=WordField.canonicalRows actualModulus 11006 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11006 : actualRows11006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11006=2964 := by core033_kernel_decide
theorem rows11007 : actualRows11007=WordField.canonicalRows actualModulus 11007 (.bxor 0 11006) := by core033_kernel_decide
theorem stats11007 : actualRows11007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11007=7428 := by core033_kernel_decide
theorem rows11008 : actualRows11008=WordField.canonicalRows actualModulus 11008 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11008 : actualRows11008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11008=2820 := by core033_kernel_decide
theorem rows11009 : actualRows11009=WordField.canonicalRows actualModulus 11009 (.bnot 11008) := by core033_kernel_decide
theorem stats11009 : actualRows11009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11009=6276 := by core033_kernel_decide
theorem rows11010 : actualRows11010=WordField.canonicalRows actualModulus 11010 (.band 11007 11009) := by core033_kernel_decide
theorem stats11010 : actualRows11010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11010=5124 := by core033_kernel_decide
theorem rows11011 : actualRows11011=WordField.canonicalRows actualModulus 11011 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11011 : actualRows11011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11011=2964 := by core033_kernel_decide
theorem rows11012 : actualRows11012=WordField.canonicalRows actualModulus 11012 (.bxor 0 11011) := by core033_kernel_decide
theorem stats11012 : actualRows11012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11012=7428 := by core033_kernel_decide
theorem rows11013 : actualRows11013=WordField.canonicalRows actualModulus 11013 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11013 : actualRows11013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11013=2820 := by core033_kernel_decide
theorem rows11014 : actualRows11014=WordField.canonicalRows actualModulus 11014 (.bnot 11013) := by core033_kernel_decide
theorem stats11014 : actualRows11014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11014=6276 := by core033_kernel_decide
theorem rows11015 : actualRows11015=WordField.canonicalRows actualModulus 11015 (.bxor 11012 11014) := by core033_kernel_decide
theorem stats11015 : actualRows11015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11015=7428 := by core033_kernel_decide
theorem rows11016 : actualRows11016=WordField.canonicalRows actualModulus 11016 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11016 : actualRows11016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11016=2964 := by core033_kernel_decide
theorem rows11017 : actualRows11017=WordField.canonicalRows actualModulus 11017 (.bxor 0 11016) := by core033_kernel_decide
theorem stats11017 : actualRows11017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11017=7428 := by core033_kernel_decide
theorem rows11018 : actualRows11018=WordField.canonicalRows actualModulus 11018 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11018 : actualRows11018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11018=2820 := by core033_kernel_decide
theorem rows11019 : actualRows11019=WordField.canonicalRows actualModulus 11019 (.bnot 11018) := by core033_kernel_decide
theorem stats11019 : actualRows11019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11019=6276 := by core033_kernel_decide
theorem rows11020 : actualRows11020=WordField.canonicalRows actualModulus 11020 (.badd 11017 11019) := by core033_kernel_decide
theorem stats11020 : actualRows11020.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11020=5388 := by core033_kernel_decide
theorem rows11021 : actualRows11021=WordField.canonicalRows actualModulus 11021 (.bnot 11020) := by core033_kernel_decide
theorem stats11021 : actualRows11021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11021=6276 := by core033_kernel_decide
theorem rows11022 : actualRows11022=WordField.canonicalRows actualModulus 11022 (.band 11015 11021) := by core033_kernel_decide
theorem stats11022 : actualRows11022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11022=5124 := by core033_kernel_decide
theorem rows11023 : actualRows11023=WordField.canonicalRows actualModulus 11023 (.bxor 11010 11022) := by core033_kernel_decide
theorem stats11023 : actualRows11023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11023=7428 := by core033_kernel_decide
theorem rows11024 : actualRows11024=WordField.canonicalRows actualModulus 11024 (.shr 11023 31) := by core033_kernel_decide
theorem stats11024 : actualRows11024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11024=2892 := by core033_kernel_decide
theorem rows11025 : actualRows11025=WordField.canonicalRows actualModulus 11025 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11025 : actualRows11025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11025=2892 := by core033_kernel_decide
theorem rows11026 : actualRows11026=WordField.canonicalRows actualModulus 11026 (.bxor 11024 11025) := by core033_kernel_decide
theorem stats11026 : actualRows11026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11026=7428 := by core033_kernel_decide
theorem rows11027 : actualRows11027=WordField.canonicalRows actualModulus 11027 (.bnot 11026) := by core033_kernel_decide
theorem stats11027 : actualRows11027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11027=6276 := by core033_kernel_decide
theorem rows11028 : actualRows11028=WordField.canonicalRows actualModulus 11028 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11028 : actualRows11028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11028=2892 := by core033_kernel_decide
theorem rows11029 : actualRows11029=WordField.canonicalRows actualModulus 11029 (.badd 11027 11028) := by core033_kernel_decide
theorem stats11029 : actualRows11029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11029=5388 := by core033_kernel_decide
theorem rows11030 : actualRows11030=WordField.canonicalRows actualModulus 11030 (.band 11029 9914) := by core033_kernel_decide
theorem stats11030 : actualRows11030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11030=5124 := by core033_kernel_decide
theorem rows11031 : actualRows11031=WordField.canonicalRows actualModulus 11031 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11031 : actualRows11031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11031=2964 := by core033_kernel_decide
theorem rows11032 : actualRows11032=WordField.canonicalRows actualModulus 11032 (.bxor 0 11031) := by core033_kernel_decide
theorem stats11032 : actualRows11032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11032=7428 := by core033_kernel_decide
theorem rows11033 : actualRows11033=WordField.canonicalRows actualModulus 11033 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11033 : actualRows11033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11033=2820 := by core033_kernel_decide
theorem rows11034 : actualRows11034=WordField.canonicalRows actualModulus 11034 (.bnot 11033) := by core033_kernel_decide
theorem stats11034 : actualRows11034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11034=6276 := by core033_kernel_decide
theorem rows11035 : actualRows11035=WordField.canonicalRows actualModulus 11035 (.band 11032 11034) := by core033_kernel_decide
theorem stats11035 : actualRows11035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11035=5124 := by core033_kernel_decide
theorem rows11036 : actualRows11036=WordField.canonicalRows actualModulus 11036 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11036 : actualRows11036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11036=2964 := by core033_kernel_decide
theorem rows11037 : actualRows11037=WordField.canonicalRows actualModulus 11037 (.bxor 0 11036) := by core033_kernel_decide
theorem stats11037 : actualRows11037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11037=7428 := by core033_kernel_decide
theorem rows11038 : actualRows11038=WordField.canonicalRows actualModulus 11038 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11038 : actualRows11038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11038=2820 := by core033_kernel_decide
theorem rows11039 : actualRows11039=WordField.canonicalRows actualModulus 11039 (.bnot 11038) := by core033_kernel_decide
theorem stats11039 : actualRows11039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11039=6276 := by core033_kernel_decide
theorem rows11040 : actualRows11040=WordField.canonicalRows actualModulus 11040 (.bxor 11037 11039) := by core033_kernel_decide
theorem stats11040 : actualRows11040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11040=7428 := by core033_kernel_decide
theorem rows11041 : actualRows11041=WordField.canonicalRows actualModulus 11041 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11041 : actualRows11041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11041=2964 := by core033_kernel_decide
theorem rows11042 : actualRows11042=WordField.canonicalRows actualModulus 11042 (.bxor 0 11041) := by core033_kernel_decide
theorem stats11042 : actualRows11042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11042=7428 := by core033_kernel_decide
theorem rows11043 : actualRows11043=WordField.canonicalRows actualModulus 11043 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11043 : actualRows11043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11043=2820 := by core033_kernel_decide
theorem rows11044 : actualRows11044=WordField.canonicalRows actualModulus 11044 (.bnot 11043) := by core033_kernel_decide
theorem stats11044 : actualRows11044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11044=6276 := by core033_kernel_decide
theorem rows11045 : actualRows11045=WordField.canonicalRows actualModulus 11045 (.badd 11042 11044) := by core033_kernel_decide
theorem stats11045 : actualRows11045.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11045=5388 := by core033_kernel_decide
theorem rows11046 : actualRows11046=WordField.canonicalRows actualModulus 11046 (.bnot 11045) := by core033_kernel_decide
theorem stats11046 : actualRows11046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11046=6276 := by core033_kernel_decide
theorem rows11047 : actualRows11047=WordField.canonicalRows actualModulus 11047 (.band 11040 11046) := by core033_kernel_decide
theorem stats11047 : actualRows11047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11047=5124 := by core033_kernel_decide
theorem rows11048 : actualRows11048=WordField.canonicalRows actualModulus 11048 (.bxor 11035 11047) := by core033_kernel_decide
theorem stats11048 : actualRows11048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11048=7428 := by core033_kernel_decide
theorem rows11049 : actualRows11049=WordField.canonicalRows actualModulus 11049 (.shr 11048 31) := by core033_kernel_decide
theorem stats11049 : actualRows11049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11049=2892 := by core033_kernel_decide
theorem rows11050 : actualRows11050=WordField.canonicalRows actualModulus 11050 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11050 : actualRows11050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11050=2892 := by core033_kernel_decide
def partRows171 : List R1CS.Row := actualRows10987++actualRows10988++actualRows10989++actualRows10990++actualRows10991++actualRows10992++actualRows10993++actualRows10994++actualRows10995++actualRows10996++actualRows10997++actualRows10998++actualRows10999++actualRows11000++actualRows11001++actualRows11002++actualRows11003++actualRows11004++actualRows11005++actualRows11006++actualRows11007++actualRows11008++actualRows11009++actualRows11010++actualRows11011++actualRows11012++actualRows11013++actualRows11014++actualRows11015++actualRows11016++actualRows11017++actualRows11018++actualRows11019++actualRows11020++actualRows11021++actualRows11022++actualRows11023++actualRows11024++actualRows11025++actualRows11026++actualRows11027++actualRows11028++actualRows11029++actualRows11030++actualRows11031++actualRows11032++actualRows11033++actualRows11034++actualRows11035++actualRows11036++actualRows11037++actualRows11038++actualRows11039++actualRows11040++actualRows11041++actualRows11042++actualRows11043++actualRows11044++actualRows11045++actualRows11046++actualRows11047++actualRows11048++actualRows11049++actualRows11050
def partOps171 : List WordIR.Op := [.bnot 10986,.bxor 10985 10987,.literal (BitVec.ofNat 32 3),.bxor 0 10989,.literal (BitVec.ofNat 32 0),.bnot 10991,.badd 10990 10992,.bnot 10993,.band 10988 10994,.bxor 10983 10995,.shr 10996 31,.literal (BitVec.ofNat 32 1),.bxor 10997 10998,.bnot 10999,.literal (BitVec.ofNat 32 1),.badd 11000 11001,.bnot 11002,.band 11003 250,.bxor 10978 11004,.literal (BitVec.ofNat 32 3),.bxor 0 11006,.literal (BitVec.ofNat 32 0),.bnot 11008,.band 11007 11009,.literal (BitVec.ofNat 32 3),.bxor 0 11011,.literal (BitVec.ofNat 32 0),.bnot 11013,.bxor 11012 11014,.literal (BitVec.ofNat 32 3),.bxor 0 11016,.literal (BitVec.ofNat 32 0),.bnot 11018,.badd 11017 11019,.bnot 11020,.band 11015 11021,.bxor 11010 11022,.shr 11023 31,.literal (BitVec.ofNat 32 1),.bxor 11024 11025,.bnot 11026,.literal (BitVec.ofNat 32 1),.badd 11027 11028,.band 11029 9914,.literal (BitVec.ofNat 32 3),.bxor 0 11031,.literal (BitVec.ofNat 32 0),.bnot 11033,.band 11032 11034,.literal (BitVec.ofNat 32 3),.bxor 0 11036,.literal (BitVec.ofNat 32 0),.bnot 11038,.bxor 11037 11039,.literal (BitVec.ofNat 32 3),.bxor 0 11041,.literal (BitVec.ofNat 32 0),.bnot 11043,.badd 11042 11044,.bnot 11045,.band 11040 11046,.bxor 11035 11047,.shr 11048 31,.literal (BitVec.ofNat 32 1)]
theorem partExact171 : partRows171=WordField.rows actualModulus 10987 partOps171 := by
  simp only [partRows171,partOps171,WordField.rows,rows10987,rows10988,rows10989,rows10990,rows10991,rows10992,rows10993,rows10994,rows10995,rows10996,rows10997,rows10998,rows10999,rows11000,rows11001,rows11002,rows11003,rows11004,rows11005,rows11006,rows11007,rows11008,rows11009,rows11010,rows11011,rows11012,rows11013,rows11014,rows11015,rows11016,rows11017,rows11018,rows11019,rows11020,rows11021,rows11022,rows11023,rows11024,rows11025,rows11026,rows11027,rows11028,rows11029,rows11030,rows11031,rows11032,rows11033,rows11034,rows11035,rows11036,rows11037,rows11038,rows11039,rows11040,rows11041,rows11042,rows11043,rows11044,rows11045,rows11046,rows11047,rows11048,rows11049,rows11050,List.append_assoc,List.append_nil]
theorem partLength171 : partOps171.length=64 := by decide
theorem partStats171 : partRows171.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows171=333144 := by
  simp only [partRows171,List.length_append,MatrixRowBlocks.rows_weight_append,stats10987.1,stats10987.2,stats10988.1,stats10988.2,stats10989.1,stats10989.2,stats10990.1,stats10990.2,stats10991.1,stats10991.2,stats10992.1,stats10992.2,stats10993.1,stats10993.2,stats10994.1,stats10994.2,stats10995.1,stats10995.2,stats10996.1,stats10996.2,stats10997.1,stats10997.2,stats10998.1,stats10998.2,stats10999.1,stats10999.2,stats11000.1,stats11000.2,stats11001.1,stats11001.2,stats11002.1,stats11002.2,stats11003.1,stats11003.2,stats11004.1,stats11004.2,stats11005.1,stats11005.2,stats11006.1,stats11006.2,stats11007.1,stats11007.2,stats11008.1,stats11008.2,stats11009.1,stats11009.2,stats11010.1,stats11010.2,stats11011.1,stats11011.2,stats11012.1,stats11012.2,stats11013.1,stats11013.2,stats11014.1,stats11014.2,stats11015.1,stats11015.2,stats11016.1,stats11016.2,stats11017.1,stats11017.2,stats11018.1,stats11018.2,stats11019.1,stats11019.2,stats11020.1,stats11020.2,stats11021.1,stats11021.2,stats11022.1,stats11022.2,stats11023.1,stats11023.2,stats11024.1,stats11024.2,stats11025.1,stats11025.2,stats11026.1,stats11026.2,stats11027.1,stats11027.2,stats11028.1,stats11028.2,stats11029.1,stats11029.2,stats11030.1,stats11030.2,stats11031.1,stats11031.2,stats11032.1,stats11032.2,stats11033.1,stats11033.2,stats11034.1,stats11034.2,stats11035.1,stats11035.2,stats11036.1,stats11036.2,stats11037.1,stats11037.2,stats11038.1,stats11038.2,stats11039.1,stats11039.2,stats11040.1,stats11040.2,stats11041.1,stats11041.2,stats11042.1,stats11042.2,stats11043.1,stats11043.2,stats11044.1,stats11044.2,stats11045.1,stats11045.2,stats11046.1,stats11046.2,stats11047.1,stats11047.2,stats11048.1,stats11048.2,stats11049.1,stats11049.2,stats11050.1,stats11050.2]
  decide
end PathRoundDispatchCheckedRows
