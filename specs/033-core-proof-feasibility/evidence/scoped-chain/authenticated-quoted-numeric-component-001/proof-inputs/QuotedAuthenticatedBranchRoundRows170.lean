import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData171
import AuthenticatedBranchRoundInstructionMatrixData172
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10998 : actualRows10998=WordField.canonicalRows actualModulus 10998 (.band 10997 1175) := by core033_kernel_decide
theorem stats10998 : actualRows10998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10998=5124 := by core033_kernel_decide
theorem rows10999 : actualRows10999=WordField.canonicalRows actualModulus 10999 (.bnot 10609) := by core033_kernel_decide
theorem stats10999 : actualRows10999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10999=6276 := by core033_kernel_decide
theorem rows11000 : actualRows11000=WordField.canonicalRows actualModulus 11000 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11000 : actualRows11000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11000=2892 := by core033_kernel_decide
theorem rows11001 : actualRows11001=WordField.canonicalRows actualModulus 11001 (.badd 10999 11000) := by core033_kernel_decide
theorem stats11001 : actualRows11001.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11001=5388 := by core033_kernel_decide
theorem rows11002 : actualRows11002=WordField.canonicalRows actualModulus 11002 (.bnot 11001) := by core033_kernel_decide
theorem stats11002 : actualRows11002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11002=6276 := by core033_kernel_decide
theorem rows11003 : actualRows11003=WordField.canonicalRows actualModulus 11003 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11003 : actualRows11003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11003=2820 := by core033_kernel_decide
theorem rows11004 : actualRows11004=WordField.canonicalRows actualModulus 11004 (.band 11002 11003) := by core033_kernel_decide
theorem stats11004 : actualRows11004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11004=5124 := by core033_kernel_decide
theorem rows11005 : actualRows11005=WordField.canonicalRows actualModulus 11005 (.bxor 10998 11004) := by core033_kernel_decide
theorem stats11005 : actualRows11005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11005=7428 := by core033_kernel_decide
theorem rows11006 : actualRows11006=WordField.canonicalRows actualModulus 11006 (.bnot 10609) := by core033_kernel_decide
theorem stats11006 : actualRows11006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11006=6276 := by core033_kernel_decide
theorem rows11007 : actualRows11007=WordField.canonicalRows actualModulus 11007 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11007 : actualRows11007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11007=2892 := by core033_kernel_decide
theorem rows11008 : actualRows11008=WordField.canonicalRows actualModulus 11008 (.badd 11006 11007) := by core033_kernel_decide
theorem stats11008 : actualRows11008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11008=5388 := by core033_kernel_decide
theorem rows11009 : actualRows11009=WordField.canonicalRows actualModulus 11009 (.band 11008 1185) := by core033_kernel_decide
theorem stats11009 : actualRows11009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11009=5124 := by core033_kernel_decide
theorem rows11010 : actualRows11010=WordField.canonicalRows actualModulus 11010 (.bnot 10609) := by core033_kernel_decide
theorem stats11010 : actualRows11010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11010=6276 := by core033_kernel_decide
theorem rows11011 : actualRows11011=WordField.canonicalRows actualModulus 11011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11011 : actualRows11011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11011=2892 := by core033_kernel_decide
theorem rows11012 : actualRows11012=WordField.canonicalRows actualModulus 11012 (.badd 11010 11011) := by core033_kernel_decide
theorem stats11012 : actualRows11012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11012=5388 := by core033_kernel_decide
theorem rows11013 : actualRows11013=WordField.canonicalRows actualModulus 11013 (.bnot 11012) := by core033_kernel_decide
theorem stats11013 : actualRows11013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11013=6276 := by core033_kernel_decide
theorem rows11014 : actualRows11014=WordField.canonicalRows actualModulus 11014 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11014 : actualRows11014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11014=2820 := by core033_kernel_decide
theorem rows11015 : actualRows11015=WordField.canonicalRows actualModulus 11015 (.band 11013 11014) := by core033_kernel_decide
theorem stats11015 : actualRows11015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11015=5124 := by core033_kernel_decide
theorem rows11016 : actualRows11016=WordField.canonicalRows actualModulus 11016 (.bxor 11009 11015) := by core033_kernel_decide
theorem stats11016 : actualRows11016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11016=7428 := by core033_kernel_decide
theorem rows11017 : actualRows11017=WordField.canonicalRows actualModulus 11017 (.bnot 10609) := by core033_kernel_decide
theorem stats11017 : actualRows11017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11017=6276 := by core033_kernel_decide
theorem rows11018 : actualRows11018=WordField.canonicalRows actualModulus 11018 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11018 : actualRows11018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11018=2892 := by core033_kernel_decide
theorem rows11019 : actualRows11019=WordField.canonicalRows actualModulus 11019 (.badd 11017 11018) := by core033_kernel_decide
theorem stats11019 : actualRows11019.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11019=5388 := by core033_kernel_decide
theorem rows11020 : actualRows11020=WordField.canonicalRows actualModulus 11020 (.band 11019 1195) := by core033_kernel_decide
theorem stats11020 : actualRows11020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11020=5124 := by core033_kernel_decide
theorem rows11021 : actualRows11021=WordField.canonicalRows actualModulus 11021 (.bnot 10609) := by core033_kernel_decide
theorem stats11021 : actualRows11021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11021=6276 := by core033_kernel_decide
theorem rows11022 : actualRows11022=WordField.canonicalRows actualModulus 11022 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11022 : actualRows11022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11022=2892 := by core033_kernel_decide
theorem rows11023 : actualRows11023=WordField.canonicalRows actualModulus 11023 (.badd 11021 11022) := by core033_kernel_decide
theorem stats11023 : actualRows11023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11023=5388 := by core033_kernel_decide
theorem rows11024 : actualRows11024=WordField.canonicalRows actualModulus 11024 (.bnot 11023) := by core033_kernel_decide
theorem stats11024 : actualRows11024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11024=6276 := by core033_kernel_decide
theorem rows11025 : actualRows11025=WordField.canonicalRows actualModulus 11025 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11025 : actualRows11025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11025=2820 := by core033_kernel_decide
theorem rows11026 : actualRows11026=WordField.canonicalRows actualModulus 11026 (.band 11024 11025) := by core033_kernel_decide
theorem stats11026 : actualRows11026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11026=5124 := by core033_kernel_decide
theorem rows11027 : actualRows11027=WordField.canonicalRows actualModulus 11027 (.bxor 11020 11026) := by core033_kernel_decide
theorem stats11027 : actualRows11027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11027=7428 := by core033_kernel_decide
theorem rows11028 : actualRows11028=WordField.canonicalRows actualModulus 11028 (.bnot 10609) := by core033_kernel_decide
theorem stats11028 : actualRows11028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11028=6276 := by core033_kernel_decide
theorem rows11029 : actualRows11029=WordField.canonicalRows actualModulus 11029 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11029 : actualRows11029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11029=2892 := by core033_kernel_decide
theorem rows11030 : actualRows11030=WordField.canonicalRows actualModulus 11030 (.badd 11028 11029) := by core033_kernel_decide
theorem stats11030 : actualRows11030.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11030=5388 := by core033_kernel_decide
theorem rows11031 : actualRows11031=WordField.canonicalRows actualModulus 11031 (.band 11030 1205) := by core033_kernel_decide
theorem stats11031 : actualRows11031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11031=5124 := by core033_kernel_decide
theorem rows11032 : actualRows11032=WordField.canonicalRows actualModulus 11032 (.bnot 10609) := by core033_kernel_decide
theorem stats11032 : actualRows11032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11032=6276 := by core033_kernel_decide
theorem rows11033 : actualRows11033=WordField.canonicalRows actualModulus 11033 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11033 : actualRows11033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11033=2892 := by core033_kernel_decide
theorem rows11034 : actualRows11034=WordField.canonicalRows actualModulus 11034 (.badd 11032 11033) := by core033_kernel_decide
theorem stats11034 : actualRows11034.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11034=5388 := by core033_kernel_decide
theorem rows11035 : actualRows11035=WordField.canonicalRows actualModulus 11035 (.bnot 11034) := by core033_kernel_decide
theorem stats11035 : actualRows11035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11035=6276 := by core033_kernel_decide
theorem rows11036 : actualRows11036=WordField.canonicalRows actualModulus 11036 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11036 : actualRows11036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11036=2820 := by core033_kernel_decide
theorem rows11037 : actualRows11037=WordField.canonicalRows actualModulus 11037 (.band 11035 11036) := by core033_kernel_decide
theorem stats11037 : actualRows11037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11037=5124 := by core033_kernel_decide
theorem rows11038 : actualRows11038=WordField.canonicalRows actualModulus 11038 (.bxor 11031 11037) := by core033_kernel_decide
theorem stats11038 : actualRows11038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11038=7428 := by core033_kernel_decide
theorem rows11039 : actualRows11039=WordField.canonicalRows actualModulus 11039 (.bnot 10609) := by core033_kernel_decide
theorem stats11039 : actualRows11039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11039=6276 := by core033_kernel_decide
theorem rows11040 : actualRows11040=WordField.canonicalRows actualModulus 11040 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11040 : actualRows11040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11040=2892 := by core033_kernel_decide
theorem rows11041 : actualRows11041=WordField.canonicalRows actualModulus 11041 (.badd 11039 11040) := by core033_kernel_decide
theorem stats11041 : actualRows11041.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11041=5388 := by core033_kernel_decide
theorem rows11042 : actualRows11042=WordField.canonicalRows actualModulus 11042 (.band 11041 1215) := by core033_kernel_decide
theorem stats11042 : actualRows11042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11042=5124 := by core033_kernel_decide
theorem rows11043 : actualRows11043=WordField.canonicalRows actualModulus 11043 (.bnot 10609) := by core033_kernel_decide
theorem stats11043 : actualRows11043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11043=6276 := by core033_kernel_decide
theorem rows11044 : actualRows11044=WordField.canonicalRows actualModulus 11044 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11044 : actualRows11044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11044=2892 := by core033_kernel_decide
theorem rows11045 : actualRows11045=WordField.canonicalRows actualModulus 11045 (.badd 11043 11044) := by core033_kernel_decide
theorem stats11045 : actualRows11045.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11045=5388 := by core033_kernel_decide
theorem rows11046 : actualRows11046=WordField.canonicalRows actualModulus 11046 (.bnot 11045) := by core033_kernel_decide
theorem stats11046 : actualRows11046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11046=6276 := by core033_kernel_decide
theorem rows11047 : actualRows11047=WordField.canonicalRows actualModulus 11047 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11047 : actualRows11047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11047=2820 := by core033_kernel_decide
theorem rows11048 : actualRows11048=WordField.canonicalRows actualModulus 11048 (.band 11046 11047) := by core033_kernel_decide
theorem stats11048 : actualRows11048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11048=5124 := by core033_kernel_decide
theorem rows11049 : actualRows11049=WordField.canonicalRows actualModulus 11049 (.bxor 11042 11048) := by core033_kernel_decide
theorem stats11049 : actualRows11049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11049=7428 := by core033_kernel_decide
theorem rows11050 : actualRows11050=WordField.canonicalRows actualModulus 11050 (.bnot 10609) := by core033_kernel_decide
theorem stats11050 : actualRows11050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11050=6276 := by core033_kernel_decide
theorem rows11051 : actualRows11051=WordField.canonicalRows actualModulus 11051 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11051 : actualRows11051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11051=2892 := by core033_kernel_decide
theorem rows11052 : actualRows11052=WordField.canonicalRows actualModulus 11052 (.badd 11050 11051) := by core033_kernel_decide
theorem stats11052 : actualRows11052.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11052=5388 := by core033_kernel_decide
theorem rows11053 : actualRows11053=WordField.canonicalRows actualModulus 11053 (.band 11052 1225) := by core033_kernel_decide
theorem stats11053 : actualRows11053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11053=5124 := by core033_kernel_decide
theorem rows11054 : actualRows11054=WordField.canonicalRows actualModulus 11054 (.bnot 10609) := by core033_kernel_decide
theorem stats11054 : actualRows11054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11054=6276 := by core033_kernel_decide
theorem rows11055 : actualRows11055=WordField.canonicalRows actualModulus 11055 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11055 : actualRows11055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11055=2892 := by core033_kernel_decide
theorem rows11056 : actualRows11056=WordField.canonicalRows actualModulus 11056 (.badd 11054 11055) := by core033_kernel_decide
theorem stats11056 : actualRows11056.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11056=5388 := by core033_kernel_decide
theorem rows11057 : actualRows11057=WordField.canonicalRows actualModulus 11057 (.bnot 11056) := by core033_kernel_decide
theorem stats11057 : actualRows11057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11057=6276 := by core033_kernel_decide
theorem rows11058 : actualRows11058=WordField.canonicalRows actualModulus 11058 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11058 : actualRows11058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11058=2820 := by core033_kernel_decide
theorem rows11059 : actualRows11059=WordField.canonicalRows actualModulus 11059 (.band 11057 11058) := by core033_kernel_decide
theorem stats11059 : actualRows11059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11059=5124 := by core033_kernel_decide
theorem rows11060 : actualRows11060=WordField.canonicalRows actualModulus 11060 (.bxor 11053 11059) := by core033_kernel_decide
theorem stats11060 : actualRows11060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11060=7428 := by core033_kernel_decide
theorem rows11061 : actualRows11061=WordField.canonicalRows actualModulus 11061 (.bnot 10609) := by core033_kernel_decide
theorem stats11061 : actualRows11061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11061=6276 := by core033_kernel_decide
def partRows170 : List R1CS.Row := actualRows10998++actualRows10999++actualRows11000++actualRows11001++actualRows11002++actualRows11003++actualRows11004++actualRows11005++actualRows11006++actualRows11007++actualRows11008++actualRows11009++actualRows11010++actualRows11011++actualRows11012++actualRows11013++actualRows11014++actualRows11015++actualRows11016++actualRows11017++actualRows11018++actualRows11019++actualRows11020++actualRows11021++actualRows11022++actualRows11023++actualRows11024++actualRows11025++actualRows11026++actualRows11027++actualRows11028++actualRows11029++actualRows11030++actualRows11031++actualRows11032++actualRows11033++actualRows11034++actualRows11035++actualRows11036++actualRows11037++actualRows11038++actualRows11039++actualRows11040++actualRows11041++actualRows11042++actualRows11043++actualRows11044++actualRows11045++actualRows11046++actualRows11047++actualRows11048++actualRows11049++actualRows11050++actualRows11051++actualRows11052++actualRows11053++actualRows11054++actualRows11055++actualRows11056++actualRows11057++actualRows11058++actualRows11059++actualRows11060++actualRows11061
def partOps170 : List WordIR.Op := [.band 10997 1175,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10999 11000,.bnot 11001,.literal (BitVec.ofNat 32 0),.band 11002 11003,.bxor 10998 11004,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11006 11007,.band 11008 1185,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11010 11011,.bnot 11012,.literal (BitVec.ofNat 32 0),.band 11013 11014,.bxor 11009 11015,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11017 11018,.band 11019 1195,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11021 11022,.bnot 11023,.literal (BitVec.ofNat 32 0),.band 11024 11025,.bxor 11020 11026,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11028 11029,.band 11030 1205,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11032 11033,.bnot 11034,.literal (BitVec.ofNat 32 0),.band 11035 11036,.bxor 11031 11037,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11039 11040,.band 11041 1215,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11043 11044,.bnot 11045,.literal (BitVec.ofNat 32 0),.band 11046 11047,.bxor 11042 11048,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11050 11051,.band 11052 1225,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11054 11055,.bnot 11056,.literal (BitVec.ofNat 32 0),.band 11057 11058,.bxor 11053 11059,.bnot 10609]
theorem partExact170 : partRows170=WordField.rows actualModulus 10998 partOps170 := by
  simp only [partRows170,partOps170,WordField.rows,rows10998,rows10999,rows11000,rows11001,rows11002,rows11003,rows11004,rows11005,rows11006,rows11007,rows11008,rows11009,rows11010,rows11011,rows11012,rows11013,rows11014,rows11015,rows11016,rows11017,rows11018,rows11019,rows11020,rows11021,rows11022,rows11023,rows11024,rows11025,rows11026,rows11027,rows11028,rows11029,rows11030,rows11031,rows11032,rows11033,rows11034,rows11035,rows11036,rows11037,rows11038,rows11039,rows11040,rows11041,rows11042,rows11043,rows11044,rows11045,rows11046,rows11047,rows11048,rows11049,rows11050,rows11051,rows11052,rows11053,rows11054,rows11055,rows11056,rows11057,rows11058,rows11059,rows11060,rows11061,List.append_assoc,List.append_nil]
theorem partLength170 : partOps170.length=64 := by decide
theorem partStats170 : partRows170.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows170=327024 := by
  simp only [partRows170,List.length_append,MatrixRowBlocks.rows_weight_append,stats10998.1,stats10998.2,stats10999.1,stats10999.2,stats11000.1,stats11000.2,stats11001.1,stats11001.2,stats11002.1,stats11002.2,stats11003.1,stats11003.2,stats11004.1,stats11004.2,stats11005.1,stats11005.2,stats11006.1,stats11006.2,stats11007.1,stats11007.2,stats11008.1,stats11008.2,stats11009.1,stats11009.2,stats11010.1,stats11010.2,stats11011.1,stats11011.2,stats11012.1,stats11012.2,stats11013.1,stats11013.2,stats11014.1,stats11014.2,stats11015.1,stats11015.2,stats11016.1,stats11016.2,stats11017.1,stats11017.2,stats11018.1,stats11018.2,stats11019.1,stats11019.2,stats11020.1,stats11020.2,stats11021.1,stats11021.2,stats11022.1,stats11022.2,stats11023.1,stats11023.2,stats11024.1,stats11024.2,stats11025.1,stats11025.2,stats11026.1,stats11026.2,stats11027.1,stats11027.2,stats11028.1,stats11028.2,stats11029.1,stats11029.2,stats11030.1,stats11030.2,stats11031.1,stats11031.2,stats11032.1,stats11032.2,stats11033.1,stats11033.2,stats11034.1,stats11034.2,stats11035.1,stats11035.2,stats11036.1,stats11036.2,stats11037.1,stats11037.2,stats11038.1,stats11038.2,stats11039.1,stats11039.2,stats11040.1,stats11040.2,stats11041.1,stats11041.2,stats11042.1,stats11042.2,stats11043.1,stats11043.2,stats11044.1,stats11044.2,stats11045.1,stats11045.2,stats11046.1,stats11046.2,stats11047.1,stats11047.2,stats11048.1,stats11048.2,stats11049.1,stats11049.2,stats11050.1,stats11050.2,stats11051.1,stats11051.2,stats11052.1,stats11052.2,stats11053.1,stats11053.2,stats11054.1,stats11054.2,stats11055.1,stats11055.2,stats11056.1,stats11056.2,stats11057.1,stats11057.2,stats11058.1,stats11058.2,stats11059.1,stats11059.2,stats11060.1,stats11060.2,stats11061.1,stats11061.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
