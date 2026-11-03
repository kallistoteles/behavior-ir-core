import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData140
import PairedPathRoundInstructionMatrixData141
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8992 : actualRows8992=WordField.canonicalRows actualModulus 8992 (.rotr 8990 11) := by core033_kernel_decide
theorem stats8992 : actualRows8992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8992=5124 := by core033_kernel_decide
theorem rows8993 : actualRows8993=WordField.canonicalRows actualModulus 8993 (.bxor 8991 8992) := by core033_kernel_decide
theorem stats8993 : actualRows8993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8993=7428 := by core033_kernel_decide
theorem rows8994 : actualRows8994=WordField.canonicalRows actualModulus 8994 (.rotr 8990 25) := by core033_kernel_decide
theorem stats8994 : actualRows8994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8994=5124 := by core033_kernel_decide
theorem rows8995 : actualRows8995=WordField.canonicalRows actualModulus 8995 (.bxor 8993 8994) := by core033_kernel_decide
theorem stats8995 : actualRows8995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8995=7428 := by core033_kernel_decide
theorem rows8996 : actualRows8996=WordField.canonicalRows actualModulus 8996 (.badd 8909 8995) := by core033_kernel_decide
theorem stats8996 : actualRows8996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8996=5388 := by core033_kernel_decide
theorem rows8997 : actualRows8997=WordField.canonicalRows actualModulus 8997 (.band 8990 8963) := by core033_kernel_decide
theorem stats8997 : actualRows8997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8997=5124 := by core033_kernel_decide
theorem rows8998 : actualRows8998=WordField.canonicalRows actualModulus 8998 (.bnot 8990) := by core033_kernel_decide
theorem stats8998 : actualRows8998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8998=6276 := by core033_kernel_decide
theorem rows8999 : actualRows8999=WordField.canonicalRows actualModulus 8999 (.band 8998 8936) := by core033_kernel_decide
theorem stats8999 : actualRows8999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8999=5124 := by core033_kernel_decide
theorem rows9000 : actualRows9000=WordField.canonicalRows actualModulus 9000 (.bxor 8997 8999) := by core033_kernel_decide
theorem stats9000 : actualRows9000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9000=7428 := by core033_kernel_decide
theorem rows9001 : actualRows9001=WordField.canonicalRows actualModulus 9001 (.badd 8996 9000) := by core033_kernel_decide
theorem stats9001 : actualRows9001.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9001=5388 := by core033_kernel_decide
theorem rows9002 : actualRows9002=WordField.canonicalRows actualModulus 9002 (.literal (BitVec.ofNat 32 1294757372)) := by core033_kernel_decide
theorem stats9002 : actualRows9002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9002=4116 := by core033_kernel_decide
theorem rows9003 : actualRows9003=WordField.canonicalRows actualModulus 9003 (.badd 9001 9002) := by core033_kernel_decide
theorem stats9003 : actualRows9003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9003=5388 := by core033_kernel_decide
theorem rows9004 : actualRows9004=WordField.canonicalRows actualModulus 9004 (.badd 9003 7695) := by core033_kernel_decide
theorem stats9004 : actualRows9004.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9004=5388 := by core033_kernel_decide
theorem rows9005 : actualRows9005=WordField.canonicalRows actualModulus 9005 (.rotr 8989 2) := by core033_kernel_decide
theorem stats9005 : actualRows9005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9005=5124 := by core033_kernel_decide
theorem rows9006 : actualRows9006=WordField.canonicalRows actualModulus 9006 (.rotr 8989 13) := by core033_kernel_decide
theorem stats9006 : actualRows9006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9006=5124 := by core033_kernel_decide
theorem rows9007 : actualRows9007=WordField.canonicalRows actualModulus 9007 (.bxor 9005 9006) := by core033_kernel_decide
theorem stats9007 : actualRows9007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9007=7428 := by core033_kernel_decide
theorem rows9008 : actualRows9008=WordField.canonicalRows actualModulus 9008 (.rotr 8989 22) := by core033_kernel_decide
theorem stats9008 : actualRows9008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9008=5124 := by core033_kernel_decide
theorem rows9009 : actualRows9009=WordField.canonicalRows actualModulus 9009 (.bxor 9007 9008) := by core033_kernel_decide
theorem stats9009 : actualRows9009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9009=7428 := by core033_kernel_decide
theorem rows9010 : actualRows9010=WordField.canonicalRows actualModulus 9010 (.band 8989 8962) := by core033_kernel_decide
theorem stats9010 : actualRows9010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9010=5124 := by core033_kernel_decide
theorem rows9011 : actualRows9011=WordField.canonicalRows actualModulus 9011 (.band 8989 8935) := by core033_kernel_decide
theorem stats9011 : actualRows9011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9011=5124 := by core033_kernel_decide
theorem rows9012 : actualRows9012=WordField.canonicalRows actualModulus 9012 (.bxor 9010 9011) := by core033_kernel_decide
theorem stats9012 : actualRows9012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9012=7428 := by core033_kernel_decide
theorem rows9013 : actualRows9013=WordField.canonicalRows actualModulus 9013 (.band 8962 8935) := by core033_kernel_decide
theorem stats9013 : actualRows9013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9013=5124 := by core033_kernel_decide
theorem rows9014 : actualRows9014=WordField.canonicalRows actualModulus 9014 (.bxor 9012 9013) := by core033_kernel_decide
theorem stats9014 : actualRows9014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9014=7428 := by core033_kernel_decide
theorem rows9015 : actualRows9015=WordField.canonicalRows actualModulus 9015 (.badd 9009 9014) := by core033_kernel_decide
theorem stats9015 : actualRows9015.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9015=5388 := by core033_kernel_decide
theorem rows9016 : actualRows9016=WordField.canonicalRows actualModulus 9016 (.badd 9004 9015) := by core033_kernel_decide
theorem stats9016 : actualRows9016.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9016=5388 := by core033_kernel_decide
theorem rows9017 : actualRows9017=WordField.canonicalRows actualModulus 9017 (.badd 8908 9004) := by core033_kernel_decide
theorem stats9017 : actualRows9017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9017=5388 := by core033_kernel_decide
theorem rows9018 : actualRows9018=WordField.canonicalRows actualModulus 9018 (.rotr 9017 6) := by core033_kernel_decide
theorem stats9018 : actualRows9018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9018=5124 := by core033_kernel_decide
theorem rows9019 : actualRows9019=WordField.canonicalRows actualModulus 9019 (.rotr 9017 11) := by core033_kernel_decide
theorem stats9019 : actualRows9019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9019=5124 := by core033_kernel_decide
theorem rows9020 : actualRows9020=WordField.canonicalRows actualModulus 9020 (.bxor 9018 9019) := by core033_kernel_decide
theorem stats9020 : actualRows9020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9020=7428 := by core033_kernel_decide
theorem rows9021 : actualRows9021=WordField.canonicalRows actualModulus 9021 (.rotr 9017 25) := by core033_kernel_decide
theorem stats9021 : actualRows9021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9021=5124 := by core033_kernel_decide
theorem rows9022 : actualRows9022=WordField.canonicalRows actualModulus 9022 (.bxor 9020 9021) := by core033_kernel_decide
theorem stats9022 : actualRows9022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9022=7428 := by core033_kernel_decide
theorem rows9023 : actualRows9023=WordField.canonicalRows actualModulus 9023 (.badd 8936 9022) := by core033_kernel_decide
theorem stats9023 : actualRows9023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9023=5388 := by core033_kernel_decide
theorem rows9024 : actualRows9024=WordField.canonicalRows actualModulus 9024 (.band 9017 8990) := by core033_kernel_decide
theorem stats9024 : actualRows9024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9024=5124 := by core033_kernel_decide
theorem rows9025 : actualRows9025=WordField.canonicalRows actualModulus 9025 (.bnot 9017) := by core033_kernel_decide
theorem stats9025 : actualRows9025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9025=6276 := by core033_kernel_decide
theorem rows9026 : actualRows9026=WordField.canonicalRows actualModulus 9026 (.band 9025 8963) := by core033_kernel_decide
theorem stats9026 : actualRows9026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9026=5124 := by core033_kernel_decide
theorem rows9027 : actualRows9027=WordField.canonicalRows actualModulus 9027 (.bxor 9024 9026) := by core033_kernel_decide
theorem stats9027 : actualRows9027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9027=7428 := by core033_kernel_decide
theorem rows9028 : actualRows9028=WordField.canonicalRows actualModulus 9028 (.badd 9023 9027) := by core033_kernel_decide
theorem stats9028 : actualRows9028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9028=5388 := by core033_kernel_decide
theorem rows9029 : actualRows9029=WordField.canonicalRows actualModulus 9029 (.literal (BitVec.ofNat 32 1396182291)) := by core033_kernel_decide
theorem stats9029 : actualRows9029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9029=3756 := by core033_kernel_decide
theorem rows9030 : actualRows9030=WordField.canonicalRows actualModulus 9030 (.badd 9028 9029) := by core033_kernel_decide
theorem stats9030 : actualRows9030.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9030=5388 := by core033_kernel_decide
theorem rows9031 : actualRows9031=WordField.canonicalRows actualModulus 9031 (.badd 9030 7708) := by core033_kernel_decide
theorem stats9031 : actualRows9031.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9031=5388 := by core033_kernel_decide
theorem rows9032 : actualRows9032=WordField.canonicalRows actualModulus 9032 (.rotr 9016 2) := by core033_kernel_decide
theorem stats9032 : actualRows9032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9032=5124 := by core033_kernel_decide
theorem rows9033 : actualRows9033=WordField.canonicalRows actualModulus 9033 (.rotr 9016 13) := by core033_kernel_decide
theorem stats9033 : actualRows9033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9033=5124 := by core033_kernel_decide
theorem rows9034 : actualRows9034=WordField.canonicalRows actualModulus 9034 (.bxor 9032 9033) := by core033_kernel_decide
theorem stats9034 : actualRows9034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9034=7428 := by core033_kernel_decide
theorem rows9035 : actualRows9035=WordField.canonicalRows actualModulus 9035 (.rotr 9016 22) := by core033_kernel_decide
theorem stats9035 : actualRows9035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9035=5124 := by core033_kernel_decide
theorem rows9036 : actualRows9036=WordField.canonicalRows actualModulus 9036 (.bxor 9034 9035) := by core033_kernel_decide
theorem stats9036 : actualRows9036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9036=7428 := by core033_kernel_decide
theorem rows9037 : actualRows9037=WordField.canonicalRows actualModulus 9037 (.band 9016 8989) := by core033_kernel_decide
theorem stats9037 : actualRows9037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9037=5124 := by core033_kernel_decide
theorem rows9038 : actualRows9038=WordField.canonicalRows actualModulus 9038 (.band 9016 8962) := by core033_kernel_decide
theorem stats9038 : actualRows9038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9038=5124 := by core033_kernel_decide
theorem rows9039 : actualRows9039=WordField.canonicalRows actualModulus 9039 (.bxor 9037 9038) := by core033_kernel_decide
theorem stats9039 : actualRows9039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9039=7428 := by core033_kernel_decide
theorem rows9040 : actualRows9040=WordField.canonicalRows actualModulus 9040 (.band 8989 8962) := by core033_kernel_decide
theorem stats9040 : actualRows9040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9040=5124 := by core033_kernel_decide
theorem rows9041 : actualRows9041=WordField.canonicalRows actualModulus 9041 (.bxor 9039 9040) := by core033_kernel_decide
theorem stats9041 : actualRows9041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9041=7428 := by core033_kernel_decide
theorem rows9042 : actualRows9042=WordField.canonicalRows actualModulus 9042 (.badd 9036 9041) := by core033_kernel_decide
theorem stats9042 : actualRows9042.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9042=5388 := by core033_kernel_decide
theorem rows9043 : actualRows9043=WordField.canonicalRows actualModulus 9043 (.badd 9031 9042) := by core033_kernel_decide
theorem stats9043 : actualRows9043.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9043=5388 := by core033_kernel_decide
theorem rows9044 : actualRows9044=WordField.canonicalRows actualModulus 9044 (.badd 8935 9031) := by core033_kernel_decide
theorem stats9044 : actualRows9044.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9044=5388 := by core033_kernel_decide
theorem rows9045 : actualRows9045=WordField.canonicalRows actualModulus 9045 (.rotr 9044 6) := by core033_kernel_decide
theorem stats9045 : actualRows9045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9045=5124 := by core033_kernel_decide
theorem rows9046 : actualRows9046=WordField.canonicalRows actualModulus 9046 (.rotr 9044 11) := by core033_kernel_decide
theorem stats9046 : actualRows9046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9046=5124 := by core033_kernel_decide
theorem rows9047 : actualRows9047=WordField.canonicalRows actualModulus 9047 (.bxor 9045 9046) := by core033_kernel_decide
theorem stats9047 : actualRows9047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9047=7428 := by core033_kernel_decide
theorem rows9048 : actualRows9048=WordField.canonicalRows actualModulus 9048 (.rotr 9044 25) := by core033_kernel_decide
theorem stats9048 : actualRows9048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9048=5124 := by core033_kernel_decide
theorem rows9049 : actualRows9049=WordField.canonicalRows actualModulus 9049 (.bxor 9047 9048) := by core033_kernel_decide
theorem stats9049 : actualRows9049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9049=7428 := by core033_kernel_decide
theorem rows9050 : actualRows9050=WordField.canonicalRows actualModulus 9050 (.badd 8963 9049) := by core033_kernel_decide
theorem stats9050 : actualRows9050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9050=5388 := by core033_kernel_decide
theorem rows9051 : actualRows9051=WordField.canonicalRows actualModulus 9051 (.band 9044 9017) := by core033_kernel_decide
theorem stats9051 : actualRows9051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9051=5124 := by core033_kernel_decide
theorem rows9052 : actualRows9052=WordField.canonicalRows actualModulus 9052 (.bnot 9044) := by core033_kernel_decide
theorem stats9052 : actualRows9052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9052=6276 := by core033_kernel_decide
theorem rows9053 : actualRows9053=WordField.canonicalRows actualModulus 9053 (.band 9052 8990) := by core033_kernel_decide
theorem stats9053 : actualRows9053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9053=5124 := by core033_kernel_decide
theorem rows9054 : actualRows9054=WordField.canonicalRows actualModulus 9054 (.bxor 9051 9053) := by core033_kernel_decide
theorem stats9054 : actualRows9054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9054=7428 := by core033_kernel_decide
theorem rows9055 : actualRows9055=WordField.canonicalRows actualModulus 9055 (.badd 9050 9054) := by core033_kernel_decide
theorem stats9055 : actualRows9055.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9055=5388 := by core033_kernel_decide
def partRows139 : List R1CS.Row := actualRows8992++actualRows8993++actualRows8994++actualRows8995++actualRows8996++actualRows8997++actualRows8998++actualRows8999++actualRows9000++actualRows9001++actualRows9002++actualRows9003++actualRows9004++actualRows9005++actualRows9006++actualRows9007++actualRows9008++actualRows9009++actualRows9010++actualRows9011++actualRows9012++actualRows9013++actualRows9014++actualRows9015++actualRows9016++actualRows9017++actualRows9018++actualRows9019++actualRows9020++actualRows9021++actualRows9022++actualRows9023++actualRows9024++actualRows9025++actualRows9026++actualRows9027++actualRows9028++actualRows9029++actualRows9030++actualRows9031++actualRows9032++actualRows9033++actualRows9034++actualRows9035++actualRows9036++actualRows9037++actualRows9038++actualRows9039++actualRows9040++actualRows9041++actualRows9042++actualRows9043++actualRows9044++actualRows9045++actualRows9046++actualRows9047++actualRows9048++actualRows9049++actualRows9050++actualRows9051++actualRows9052++actualRows9053++actualRows9054++actualRows9055
def partOps139 : List WordIR.Op := [.rotr 8990 11,.bxor 8991 8992,.rotr 8990 25,.bxor 8993 8994,.badd 8909 8995,.band 8990 8963,.bnot 8990,.band 8998 8936,.bxor 8997 8999,.badd 8996 9000,.literal (BitVec.ofNat 32 1294757372),.badd 9001 9002,.badd 9003 7695,.rotr 8989 2,.rotr 8989 13,.bxor 9005 9006,.rotr 8989 22,.bxor 9007 9008,.band 8989 8962,.band 8989 8935,.bxor 9010 9011,.band 8962 8935,.bxor 9012 9013,.badd 9009 9014,.badd 9004 9015,.badd 8908 9004,.rotr 9017 6,.rotr 9017 11,.bxor 9018 9019,.rotr 9017 25,.bxor 9020 9021,.badd 8936 9022,.band 9017 8990,.bnot 9017,.band 9025 8963,.bxor 9024 9026,.badd 9023 9027,.literal (BitVec.ofNat 32 1396182291),.badd 9028 9029,.badd 9030 7708,.rotr 9016 2,.rotr 9016 13,.bxor 9032 9033,.rotr 9016 22,.bxor 9034 9035,.band 9016 8989,.band 9016 8962,.bxor 9037 9038,.band 8989 8962,.bxor 9039 9040,.badd 9036 9041,.badd 9031 9042,.badd 8935 9031,.rotr 9044 6,.rotr 9044 11,.bxor 9045 9046,.rotr 9044 25,.bxor 9047 9048,.badd 8963 9049,.band 9044 9017,.bnot 9044,.band 9052 8990,.bxor 9051 9053,.badd 9050 9054]
theorem partExact139 : partRows139=WordField.rows actualModulus 8992 partOps139 := by
  simp only [partRows139,partOps139,WordField.rows,rows8992,rows8993,rows8994,rows8995,rows8996,rows8997,rows8998,rows8999,rows9000,rows9001,rows9002,rows9003,rows9004,rows9005,rows9006,rows9007,rows9008,rows9009,rows9010,rows9011,rows9012,rows9013,rows9014,rows9015,rows9016,rows9017,rows9018,rows9019,rows9020,rows9021,rows9022,rows9023,rows9024,rows9025,rows9026,rows9027,rows9028,rows9029,rows9030,rows9031,rows9032,rows9033,rows9034,rows9035,rows9036,rows9037,rows9038,rows9039,rows9040,rows9041,rows9042,rows9043,rows9044,rows9045,rows9046,rows9047,rows9048,rows9049,rows9050,rows9051,rows9052,rows9053,rows9054,rows9055,List.append_assoc,List.append_nil]
theorem partLength139 : partOps139.length=64 := by decide
theorem partStats139 : partRows139.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows139=372408 := by
  simp only [partRows139,List.length_append,MatrixRowBlocks.rows_weight_append,stats8992.1,stats8992.2,stats8993.1,stats8993.2,stats8994.1,stats8994.2,stats8995.1,stats8995.2,stats8996.1,stats8996.2,stats8997.1,stats8997.2,stats8998.1,stats8998.2,stats8999.1,stats8999.2,stats9000.1,stats9000.2,stats9001.1,stats9001.2,stats9002.1,stats9002.2,stats9003.1,stats9003.2,stats9004.1,stats9004.2,stats9005.1,stats9005.2,stats9006.1,stats9006.2,stats9007.1,stats9007.2,stats9008.1,stats9008.2,stats9009.1,stats9009.2,stats9010.1,stats9010.2,stats9011.1,stats9011.2,stats9012.1,stats9012.2,stats9013.1,stats9013.2,stats9014.1,stats9014.2,stats9015.1,stats9015.2,stats9016.1,stats9016.2,stats9017.1,stats9017.2,stats9018.1,stats9018.2,stats9019.1,stats9019.2,stats9020.1,stats9020.2,stats9021.1,stats9021.2,stats9022.1,stats9022.2,stats9023.1,stats9023.2,stats9024.1,stats9024.2,stats9025.1,stats9025.2,stats9026.1,stats9026.2,stats9027.1,stats9027.2,stats9028.1,stats9028.2,stats9029.1,stats9029.2,stats9030.1,stats9030.2,stats9031.1,stats9031.2,stats9032.1,stats9032.2,stats9033.1,stats9033.2,stats9034.1,stats9034.2,stats9035.1,stats9035.2,stats9036.1,stats9036.2,stats9037.1,stats9037.2,stats9038.1,stats9038.2,stats9039.1,stats9039.2,stats9040.1,stats9040.2,stats9041.1,stats9041.2,stats9042.1,stats9042.2,stats9043.1,stats9043.2,stats9044.1,stats9044.2,stats9045.1,stats9045.2,stats9046.1,stats9046.2,stats9047.1,stats9047.2,stats9048.1,stats9048.2,stats9049.1,stats9049.2,stats9050.1,stats9050.2,stats9051.1,stats9051.2,stats9052.1,stats9052.2,stats9053.1,stats9053.2,stats9054.1,stats9054.2,stats9055.1,stats9055.2]
  decide
end PairedPathRoundCheckedRows
