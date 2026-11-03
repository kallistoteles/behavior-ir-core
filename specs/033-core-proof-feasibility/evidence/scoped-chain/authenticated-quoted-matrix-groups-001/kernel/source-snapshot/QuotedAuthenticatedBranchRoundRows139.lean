import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData140
import AuthenticatedBranchRoundInstructionMatrixData141
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9014 : actualRows9014=WordField.canonicalRows actualModulus 9014 (.rotr 8997 13) := by core033_kernel_decide
theorem stats9014 : actualRows9014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9014=5124 := by core033_kernel_decide
theorem rows9015 : actualRows9015=WordField.canonicalRows actualModulus 9015 (.bxor 9013 9014) := by core033_kernel_decide
theorem stats9015 : actualRows9015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9015=7428 := by core033_kernel_decide
theorem rows9016 : actualRows9016=WordField.canonicalRows actualModulus 9016 (.rotr 8997 22) := by core033_kernel_decide
theorem stats9016 : actualRows9016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9016=5124 := by core033_kernel_decide
theorem rows9017 : actualRows9017=WordField.canonicalRows actualModulus 9017 (.bxor 9015 9016) := by core033_kernel_decide
theorem stats9017 : actualRows9017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9017=7428 := by core033_kernel_decide
theorem rows9018 : actualRows9018=WordField.canonicalRows actualModulus 9018 (.band 8997 8970) := by core033_kernel_decide
theorem stats9018 : actualRows9018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9018=5124 := by core033_kernel_decide
theorem rows9019 : actualRows9019=WordField.canonicalRows actualModulus 9019 (.band 8997 8943) := by core033_kernel_decide
theorem stats9019 : actualRows9019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9019=5124 := by core033_kernel_decide
theorem rows9020 : actualRows9020=WordField.canonicalRows actualModulus 9020 (.bxor 9018 9019) := by core033_kernel_decide
theorem stats9020 : actualRows9020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9020=7428 := by core033_kernel_decide
theorem rows9021 : actualRows9021=WordField.canonicalRows actualModulus 9021 (.band 8970 8943) := by core033_kernel_decide
theorem stats9021 : actualRows9021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9021=5124 := by core033_kernel_decide
theorem rows9022 : actualRows9022=WordField.canonicalRows actualModulus 9022 (.bxor 9020 9021) := by core033_kernel_decide
theorem stats9022 : actualRows9022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9022=7428 := by core033_kernel_decide
theorem rows9023 : actualRows9023=WordField.canonicalRows actualModulus 9023 (.badd 9017 9022) := by core033_kernel_decide
theorem stats9023 : actualRows9023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9023=5388 := by core033_kernel_decide
theorem rows9024 : actualRows9024=WordField.canonicalRows actualModulus 9024 (.badd 9012 9023) := by core033_kernel_decide
theorem stats9024 : actualRows9024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9024=5388 := by core033_kernel_decide
theorem rows9025 : actualRows9025=WordField.canonicalRows actualModulus 9025 (.badd 8916 9012) := by core033_kernel_decide
theorem stats9025 : actualRows9025.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9025=5388 := by core033_kernel_decide
theorem rows9026 : actualRows9026=WordField.canonicalRows actualModulus 9026 (.rotr 9025 6) := by core033_kernel_decide
theorem stats9026 : actualRows9026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9026=5124 := by core033_kernel_decide
theorem rows9027 : actualRows9027=WordField.canonicalRows actualModulus 9027 (.rotr 9025 11) := by core033_kernel_decide
theorem stats9027 : actualRows9027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9027=5124 := by core033_kernel_decide
theorem rows9028 : actualRows9028=WordField.canonicalRows actualModulus 9028 (.bxor 9026 9027) := by core033_kernel_decide
theorem stats9028 : actualRows9028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9028=7428 := by core033_kernel_decide
theorem rows9029 : actualRows9029=WordField.canonicalRows actualModulus 9029 (.rotr 9025 25) := by core033_kernel_decide
theorem stats9029 : actualRows9029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9029=5124 := by core033_kernel_decide
theorem rows9030 : actualRows9030=WordField.canonicalRows actualModulus 9030 (.bxor 9028 9029) := by core033_kernel_decide
theorem stats9030 : actualRows9030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9030=7428 := by core033_kernel_decide
theorem rows9031 : actualRows9031=WordField.canonicalRows actualModulus 9031 (.badd 8944 9030) := by core033_kernel_decide
theorem stats9031 : actualRows9031.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9031=5388 := by core033_kernel_decide
theorem rows9032 : actualRows9032=WordField.canonicalRows actualModulus 9032 (.band 9025 8998) := by core033_kernel_decide
theorem stats9032 : actualRows9032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9032=5124 := by core033_kernel_decide
theorem rows9033 : actualRows9033=WordField.canonicalRows actualModulus 9033 (.bnot 9025) := by core033_kernel_decide
theorem stats9033 : actualRows9033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9033=6276 := by core033_kernel_decide
theorem rows9034 : actualRows9034=WordField.canonicalRows actualModulus 9034 (.band 9033 8971) := by core033_kernel_decide
theorem stats9034 : actualRows9034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9034=5124 := by core033_kernel_decide
theorem rows9035 : actualRows9035=WordField.canonicalRows actualModulus 9035 (.bxor 9032 9034) := by core033_kernel_decide
theorem stats9035 : actualRows9035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9035=7428 := by core033_kernel_decide
theorem rows9036 : actualRows9036=WordField.canonicalRows actualModulus 9036 (.badd 9031 9035) := by core033_kernel_decide
theorem stats9036 : actualRows9036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9036=5388 := by core033_kernel_decide
theorem rows9037 : actualRows9037=WordField.canonicalRows actualModulus 9037 (.literal (BitVec.ofNat 32 607225278)) := by core033_kernel_decide
theorem stats9037 : actualRows9037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9037=3828 := by core033_kernel_decide
theorem rows9038 : actualRows9038=WordField.canonicalRows actualModulus 9038 (.badd 9036 9037) := by core033_kernel_decide
theorem stats9038 : actualRows9038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9038=5388 := by core033_kernel_decide
theorem rows9039 : actualRows9039=WordField.canonicalRows actualModulus 9039 (.badd 9038 6949) := by core033_kernel_decide
theorem stats9039 : actualRows9039.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9039=5388 := by core033_kernel_decide
theorem rows9040 : actualRows9040=WordField.canonicalRows actualModulus 9040 (.rotr 9024 2) := by core033_kernel_decide
theorem stats9040 : actualRows9040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9040=5124 := by core033_kernel_decide
theorem rows9041 : actualRows9041=WordField.canonicalRows actualModulus 9041 (.rotr 9024 13) := by core033_kernel_decide
theorem stats9041 : actualRows9041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9041=5124 := by core033_kernel_decide
theorem rows9042 : actualRows9042=WordField.canonicalRows actualModulus 9042 (.bxor 9040 9041) := by core033_kernel_decide
theorem stats9042 : actualRows9042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9042=7428 := by core033_kernel_decide
theorem rows9043 : actualRows9043=WordField.canonicalRows actualModulus 9043 (.rotr 9024 22) := by core033_kernel_decide
theorem stats9043 : actualRows9043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9043=5124 := by core033_kernel_decide
theorem rows9044 : actualRows9044=WordField.canonicalRows actualModulus 9044 (.bxor 9042 9043) := by core033_kernel_decide
theorem stats9044 : actualRows9044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9044=7428 := by core033_kernel_decide
theorem rows9045 : actualRows9045=WordField.canonicalRows actualModulus 9045 (.band 9024 8997) := by core033_kernel_decide
theorem stats9045 : actualRows9045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9045=5124 := by core033_kernel_decide
theorem rows9046 : actualRows9046=WordField.canonicalRows actualModulus 9046 (.band 9024 8970) := by core033_kernel_decide
theorem stats9046 : actualRows9046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9046=5124 := by core033_kernel_decide
theorem rows9047 : actualRows9047=WordField.canonicalRows actualModulus 9047 (.bxor 9045 9046) := by core033_kernel_decide
theorem stats9047 : actualRows9047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9047=7428 := by core033_kernel_decide
theorem rows9048 : actualRows9048=WordField.canonicalRows actualModulus 9048 (.band 8997 8970) := by core033_kernel_decide
theorem stats9048 : actualRows9048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9048=5124 := by core033_kernel_decide
theorem rows9049 : actualRows9049=WordField.canonicalRows actualModulus 9049 (.bxor 9047 9048) := by core033_kernel_decide
theorem stats9049 : actualRows9049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9049=7428 := by core033_kernel_decide
theorem rows9050 : actualRows9050=WordField.canonicalRows actualModulus 9050 (.badd 9044 9049) := by core033_kernel_decide
theorem stats9050 : actualRows9050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9050=5388 := by core033_kernel_decide
theorem rows9051 : actualRows9051=WordField.canonicalRows actualModulus 9051 (.badd 9039 9050) := by core033_kernel_decide
theorem stats9051 : actualRows9051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9051=5388 := by core033_kernel_decide
theorem rows9052 : actualRows9052=WordField.canonicalRows actualModulus 9052 (.badd 8943 9039) := by core033_kernel_decide
theorem stats9052 : actualRows9052.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9052=5388 := by core033_kernel_decide
theorem rows9053 : actualRows9053=WordField.canonicalRows actualModulus 9053 (.rotr 9052 6) := by core033_kernel_decide
theorem stats9053 : actualRows9053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9053=5124 := by core033_kernel_decide
theorem rows9054 : actualRows9054=WordField.canonicalRows actualModulus 9054 (.rotr 9052 11) := by core033_kernel_decide
theorem stats9054 : actualRows9054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9054=5124 := by core033_kernel_decide
theorem rows9055 : actualRows9055=WordField.canonicalRows actualModulus 9055 (.bxor 9053 9054) := by core033_kernel_decide
theorem stats9055 : actualRows9055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9055=7428 := by core033_kernel_decide
theorem rows9056 : actualRows9056=WordField.canonicalRows actualModulus 9056 (.rotr 9052 25) := by core033_kernel_decide
theorem stats9056 : actualRows9056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9056=5124 := by core033_kernel_decide
theorem rows9057 : actualRows9057=WordField.canonicalRows actualModulus 9057 (.bxor 9055 9056) := by core033_kernel_decide
theorem stats9057 : actualRows9057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9057=7428 := by core033_kernel_decide
theorem rows9058 : actualRows9058=WordField.canonicalRows actualModulus 9058 (.badd 8971 9057) := by core033_kernel_decide
theorem stats9058 : actualRows9058.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9058=5388 := by core033_kernel_decide
theorem rows9059 : actualRows9059=WordField.canonicalRows actualModulus 9059 (.band 9052 9025) := by core033_kernel_decide
theorem stats9059 : actualRows9059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9059=5124 := by core033_kernel_decide
theorem rows9060 : actualRows9060=WordField.canonicalRows actualModulus 9060 (.bnot 9052) := by core033_kernel_decide
theorem stats9060 : actualRows9060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9060=6276 := by core033_kernel_decide
theorem rows9061 : actualRows9061=WordField.canonicalRows actualModulus 9061 (.band 9060 8998) := by core033_kernel_decide
theorem stats9061 : actualRows9061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9061=5124 := by core033_kernel_decide
theorem rows9062 : actualRows9062=WordField.canonicalRows actualModulus 9062 (.bxor 9059 9061) := by core033_kernel_decide
theorem stats9062 : actualRows9062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9062=7428 := by core033_kernel_decide
theorem rows9063 : actualRows9063=WordField.canonicalRows actualModulus 9063 (.badd 9058 9062) := by core033_kernel_decide
theorem stats9063 : actualRows9063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9063=5388 := by core033_kernel_decide
theorem rows9064 : actualRows9064=WordField.canonicalRows actualModulus 9064 (.literal (BitVec.ofNat 32 1426881987)) := by core033_kernel_decide
theorem stats9064 : actualRows9064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9064=3972 := by core033_kernel_decide
theorem rows9065 : actualRows9065=WordField.canonicalRows actualModulus 9065 (.badd 9063 9064) := by core033_kernel_decide
theorem stats9065 : actualRows9065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9065=5388 := by core033_kernel_decide
theorem rows9066 : actualRows9066=WordField.canonicalRows actualModulus 9066 (.badd 9065 6955) := by core033_kernel_decide
theorem stats9066 : actualRows9066.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9066=5388 := by core033_kernel_decide
theorem rows9067 : actualRows9067=WordField.canonicalRows actualModulus 9067 (.rotr 9051 2) := by core033_kernel_decide
theorem stats9067 : actualRows9067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9067=5124 := by core033_kernel_decide
theorem rows9068 : actualRows9068=WordField.canonicalRows actualModulus 9068 (.rotr 9051 13) := by core033_kernel_decide
theorem stats9068 : actualRows9068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9068=5124 := by core033_kernel_decide
theorem rows9069 : actualRows9069=WordField.canonicalRows actualModulus 9069 (.bxor 9067 9068) := by core033_kernel_decide
theorem stats9069 : actualRows9069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9069=7428 := by core033_kernel_decide
theorem rows9070 : actualRows9070=WordField.canonicalRows actualModulus 9070 (.rotr 9051 22) := by core033_kernel_decide
theorem stats9070 : actualRows9070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9070=5124 := by core033_kernel_decide
theorem rows9071 : actualRows9071=WordField.canonicalRows actualModulus 9071 (.bxor 9069 9070) := by core033_kernel_decide
theorem stats9071 : actualRows9071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9071=7428 := by core033_kernel_decide
theorem rows9072 : actualRows9072=WordField.canonicalRows actualModulus 9072 (.band 9051 9024) := by core033_kernel_decide
theorem stats9072 : actualRows9072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9072=5124 := by core033_kernel_decide
theorem rows9073 : actualRows9073=WordField.canonicalRows actualModulus 9073 (.band 9051 8997) := by core033_kernel_decide
theorem stats9073 : actualRows9073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9073=5124 := by core033_kernel_decide
theorem rows9074 : actualRows9074=WordField.canonicalRows actualModulus 9074 (.bxor 9072 9073) := by core033_kernel_decide
theorem stats9074 : actualRows9074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9074=7428 := by core033_kernel_decide
theorem rows9075 : actualRows9075=WordField.canonicalRows actualModulus 9075 (.band 9024 8997) := by core033_kernel_decide
theorem stats9075 : actualRows9075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9075=5124 := by core033_kernel_decide
theorem rows9076 : actualRows9076=WordField.canonicalRows actualModulus 9076 (.bxor 9074 9075) := by core033_kernel_decide
theorem stats9076 : actualRows9076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9076=7428 := by core033_kernel_decide
theorem rows9077 : actualRows9077=WordField.canonicalRows actualModulus 9077 (.badd 9071 9076) := by core033_kernel_decide
theorem stats9077 : actualRows9077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9077=5388 := by core033_kernel_decide
def partRows139 : List R1CS.Row := actualRows9014++actualRows9015++actualRows9016++actualRows9017++actualRows9018++actualRows9019++actualRows9020++actualRows9021++actualRows9022++actualRows9023++actualRows9024++actualRows9025++actualRows9026++actualRows9027++actualRows9028++actualRows9029++actualRows9030++actualRows9031++actualRows9032++actualRows9033++actualRows9034++actualRows9035++actualRows9036++actualRows9037++actualRows9038++actualRows9039++actualRows9040++actualRows9041++actualRows9042++actualRows9043++actualRows9044++actualRows9045++actualRows9046++actualRows9047++actualRows9048++actualRows9049++actualRows9050++actualRows9051++actualRows9052++actualRows9053++actualRows9054++actualRows9055++actualRows9056++actualRows9057++actualRows9058++actualRows9059++actualRows9060++actualRows9061++actualRows9062++actualRows9063++actualRows9064++actualRows9065++actualRows9066++actualRows9067++actualRows9068++actualRows9069++actualRows9070++actualRows9071++actualRows9072++actualRows9073++actualRows9074++actualRows9075++actualRows9076++actualRows9077
def partOps139 : List WordIR.Op := [.rotr 8997 13,.bxor 9013 9014,.rotr 8997 22,.bxor 9015 9016,.band 8997 8970,.band 8997 8943,.bxor 9018 9019,.band 8970 8943,.bxor 9020 9021,.badd 9017 9022,.badd 9012 9023,.badd 8916 9012,.rotr 9025 6,.rotr 9025 11,.bxor 9026 9027,.rotr 9025 25,.bxor 9028 9029,.badd 8944 9030,.band 9025 8998,.bnot 9025,.band 9033 8971,.bxor 9032 9034,.badd 9031 9035,.literal (BitVec.ofNat 32 607225278),.badd 9036 9037,.badd 9038 6949,.rotr 9024 2,.rotr 9024 13,.bxor 9040 9041,.rotr 9024 22,.bxor 9042 9043,.band 9024 8997,.band 9024 8970,.bxor 9045 9046,.band 8997 8970,.bxor 9047 9048,.badd 9044 9049,.badd 9039 9050,.badd 8943 9039,.rotr 9052 6,.rotr 9052 11,.bxor 9053 9054,.rotr 9052 25,.bxor 9055 9056,.badd 8971 9057,.band 9052 9025,.bnot 9052,.band 9060 8998,.bxor 9059 9061,.badd 9058 9062,.literal (BitVec.ofNat 32 1426881987),.badd 9063 9064,.badd 9065 6955,.rotr 9051 2,.rotr 9051 13,.bxor 9067 9068,.rotr 9051 22,.bxor 9069 9070,.band 9051 9024,.band 9051 8997,.bxor 9072 9073,.band 9024 8997,.bxor 9074 9075,.badd 9071 9076]
theorem partExact139 : partRows139=WordField.rows actualModulus 9014 partOps139 := by
  simp only [partRows139,partOps139,WordField.rows,rows9014,rows9015,rows9016,rows9017,rows9018,rows9019,rows9020,rows9021,rows9022,rows9023,rows9024,rows9025,rows9026,rows9027,rows9028,rows9029,rows9030,rows9031,rows9032,rows9033,rows9034,rows9035,rows9036,rows9037,rows9038,rows9039,rows9040,rows9041,rows9042,rows9043,rows9044,rows9045,rows9046,rows9047,rows9048,rows9049,rows9050,rows9051,rows9052,rows9053,rows9054,rows9055,rows9056,rows9057,rows9058,rows9059,rows9060,rows9061,rows9062,rows9063,rows9064,rows9065,rows9066,rows9067,rows9068,rows9069,rows9070,rows9071,rows9072,rows9073,rows9074,rows9075,rows9076,rows9077,List.append_assoc,List.append_nil]
theorem partLength139 : partOps139.length=64 := by decide
theorem partStats139 : partRows139.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows139=373224 := by
  simp only [partRows139,List.length_append,MatrixRowBlocks.rows_weight_append,stats9014.1,stats9014.2,stats9015.1,stats9015.2,stats9016.1,stats9016.2,stats9017.1,stats9017.2,stats9018.1,stats9018.2,stats9019.1,stats9019.2,stats9020.1,stats9020.2,stats9021.1,stats9021.2,stats9022.1,stats9022.2,stats9023.1,stats9023.2,stats9024.1,stats9024.2,stats9025.1,stats9025.2,stats9026.1,stats9026.2,stats9027.1,stats9027.2,stats9028.1,stats9028.2,stats9029.1,stats9029.2,stats9030.1,stats9030.2,stats9031.1,stats9031.2,stats9032.1,stats9032.2,stats9033.1,stats9033.2,stats9034.1,stats9034.2,stats9035.1,stats9035.2,stats9036.1,stats9036.2,stats9037.1,stats9037.2,stats9038.1,stats9038.2,stats9039.1,stats9039.2,stats9040.1,stats9040.2,stats9041.1,stats9041.2,stats9042.1,stats9042.2,stats9043.1,stats9043.2,stats9044.1,stats9044.2,stats9045.1,stats9045.2,stats9046.1,stats9046.2,stats9047.1,stats9047.2,stats9048.1,stats9048.2,stats9049.1,stats9049.2,stats9050.1,stats9050.2,stats9051.1,stats9051.2,stats9052.1,stats9052.2,stats9053.1,stats9053.2,stats9054.1,stats9054.2,stats9055.1,stats9055.2,stats9056.1,stats9056.2,stats9057.1,stats9057.2,stats9058.1,stats9058.2,stats9059.1,stats9059.2,stats9060.1,stats9060.2,stats9061.1,stats9061.2,stats9062.1,stats9062.2,stats9063.1,stats9063.2,stats9064.1,stats9064.2,stats9065.1,stats9065.2,stats9066.1,stats9066.2,stats9067.1,stats9067.2,stats9068.1,stats9068.2,stats9069.1,stats9069.2,stats9070.1,stats9070.2,stats9071.1,stats9071.2,stats9072.1,stats9072.2,stats9073.1,stats9073.2,stats9074.1,stats9074.2,stats9075.1,stats9075.2,stats9076.1,stats9076.2,stats9077.1,stats9077.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
