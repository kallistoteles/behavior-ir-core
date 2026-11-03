import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData187
import PathRoundDispatchInstructionMatrixData188
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12011 : actualRows12011=WordField.canonicalRows actualModulus 12011 (.bxor 11998 12010) := by core033_kernel_decide
theorem stats12011 : actualRows12011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12011=7428 := by core033_kernel_decide
theorem rows12012 : actualRows12012=WordField.canonicalRows actualModulus 12012 (.shr 12011 31) := by core033_kernel_decide
theorem stats12012 : actualRows12012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12012=2892 := by core033_kernel_decide
theorem rows12013 : actualRows12013=WordField.canonicalRows actualModulus 12013 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12013 : actualRows12013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12013=2892 := by core033_kernel_decide
theorem rows12014 : actualRows12014=WordField.canonicalRows actualModulus 12014 (.bxor 12012 12013) := by core033_kernel_decide
theorem stats12014 : actualRows12014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12014=7428 := by core033_kernel_decide
theorem rows12015 : actualRows12015=WordField.canonicalRows actualModulus 12015 (.bnot 12014) := by core033_kernel_decide
theorem stats12015 : actualRows12015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12015=6276 := by core033_kernel_decide
theorem rows12016 : actualRows12016=WordField.canonicalRows actualModulus 12016 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12016 : actualRows12016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12016=2892 := by core033_kernel_decide
theorem rows12017 : actualRows12017=WordField.canonicalRows actualModulus 12017 (.badd 12015 12016) := by core033_kernel_decide
theorem stats12017 : actualRows12017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12017=5388 := by core033_kernel_decide
theorem rows12018 : actualRows12018=WordField.canonicalRows actualModulus 12018 (.band 12017 9791) := by core033_kernel_decide
theorem stats12018 : actualRows12018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12018=5124 := by core033_kernel_decide
theorem rows12019 : actualRows12019=WordField.canonicalRows actualModulus 12019 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12019 : actualRows12019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12019=2964 := by core033_kernel_decide
theorem rows12020 : actualRows12020=WordField.canonicalRows actualModulus 12020 (.bxor 0 12019) := by core033_kernel_decide
theorem stats12020 : actualRows12020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12020=7428 := by core033_kernel_decide
theorem rows12021 : actualRows12021=WordField.canonicalRows actualModulus 12021 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12021 : actualRows12021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12021=2820 := by core033_kernel_decide
theorem rows12022 : actualRows12022=WordField.canonicalRows actualModulus 12022 (.bnot 12021) := by core033_kernel_decide
theorem stats12022 : actualRows12022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12022=6276 := by core033_kernel_decide
theorem rows12023 : actualRows12023=WordField.canonicalRows actualModulus 12023 (.band 12020 12022) := by core033_kernel_decide
theorem stats12023 : actualRows12023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12023=5124 := by core033_kernel_decide
theorem rows12024 : actualRows12024=WordField.canonicalRows actualModulus 12024 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12024 : actualRows12024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12024=2964 := by core033_kernel_decide
theorem rows12025 : actualRows12025=WordField.canonicalRows actualModulus 12025 (.bxor 0 12024) := by core033_kernel_decide
theorem stats12025 : actualRows12025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12025=7428 := by core033_kernel_decide
theorem rows12026 : actualRows12026=WordField.canonicalRows actualModulus 12026 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12026 : actualRows12026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12026=2820 := by core033_kernel_decide
theorem rows12027 : actualRows12027=WordField.canonicalRows actualModulus 12027 (.bnot 12026) := by core033_kernel_decide
theorem stats12027 : actualRows12027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12027=6276 := by core033_kernel_decide
theorem rows12028 : actualRows12028=WordField.canonicalRows actualModulus 12028 (.bxor 12025 12027) := by core033_kernel_decide
theorem stats12028 : actualRows12028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12028=7428 := by core033_kernel_decide
theorem rows12029 : actualRows12029=WordField.canonicalRows actualModulus 12029 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12029 : actualRows12029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12029=2964 := by core033_kernel_decide
theorem rows12030 : actualRows12030=WordField.canonicalRows actualModulus 12030 (.bxor 0 12029) := by core033_kernel_decide
theorem stats12030 : actualRows12030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12030=7428 := by core033_kernel_decide
theorem rows12031 : actualRows12031=WordField.canonicalRows actualModulus 12031 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12031 : actualRows12031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12031=2820 := by core033_kernel_decide
theorem rows12032 : actualRows12032=WordField.canonicalRows actualModulus 12032 (.bnot 12031) := by core033_kernel_decide
theorem stats12032 : actualRows12032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12032=6276 := by core033_kernel_decide
theorem rows12033 : actualRows12033=WordField.canonicalRows actualModulus 12033 (.badd 12030 12032) := by core033_kernel_decide
theorem stats12033 : actualRows12033.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12033=5388 := by core033_kernel_decide
theorem rows12034 : actualRows12034=WordField.canonicalRows actualModulus 12034 (.bnot 12033) := by core033_kernel_decide
theorem stats12034 : actualRows12034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12034=6276 := by core033_kernel_decide
theorem rows12035 : actualRows12035=WordField.canonicalRows actualModulus 12035 (.band 12028 12034) := by core033_kernel_decide
theorem stats12035 : actualRows12035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12035=5124 := by core033_kernel_decide
theorem rows12036 : actualRows12036=WordField.canonicalRows actualModulus 12036 (.bxor 12023 12035) := by core033_kernel_decide
theorem stats12036 : actualRows12036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12036=7428 := by core033_kernel_decide
theorem rows12037 : actualRows12037=WordField.canonicalRows actualModulus 12037 (.shr 12036 31) := by core033_kernel_decide
theorem stats12037 : actualRows12037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12037=2892 := by core033_kernel_decide
theorem rows12038 : actualRows12038=WordField.canonicalRows actualModulus 12038 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12038 : actualRows12038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12038=2892 := by core033_kernel_decide
theorem rows12039 : actualRows12039=WordField.canonicalRows actualModulus 12039 (.bxor 12037 12038) := by core033_kernel_decide
theorem stats12039 : actualRows12039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12039=7428 := by core033_kernel_decide
theorem rows12040 : actualRows12040=WordField.canonicalRows actualModulus 12040 (.bnot 12039) := by core033_kernel_decide
theorem stats12040 : actualRows12040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12040=6276 := by core033_kernel_decide
theorem rows12041 : actualRows12041=WordField.canonicalRows actualModulus 12041 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12041 : actualRows12041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12041=2892 := by core033_kernel_decide
theorem rows12042 : actualRows12042=WordField.canonicalRows actualModulus 12042 (.badd 12040 12041) := by core033_kernel_decide
theorem stats12042 : actualRows12042.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12042=5388 := by core033_kernel_decide
theorem rows12043 : actualRows12043=WordField.canonicalRows actualModulus 12043 (.bnot 12042) := by core033_kernel_decide
theorem stats12043 : actualRows12043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12043=6276 := by core033_kernel_decide
theorem rows12044 : actualRows12044=WordField.canonicalRows actualModulus 12044 (.band 12043 470) := by core033_kernel_decide
theorem stats12044 : actualRows12044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12044=5124 := by core033_kernel_decide
theorem rows12045 : actualRows12045=WordField.canonicalRows actualModulus 12045 (.bxor 12018 12044) := by core033_kernel_decide
theorem stats12045 : actualRows12045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12045=7428 := by core033_kernel_decide
theorem rows12046 : actualRows12046=WordField.canonicalRows actualModulus 12046 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12046 : actualRows12046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12046=2964 := by core033_kernel_decide
theorem rows12047 : actualRows12047=WordField.canonicalRows actualModulus 12047 (.bxor 0 12046) := by core033_kernel_decide
theorem stats12047 : actualRows12047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12047=7428 := by core033_kernel_decide
theorem rows12048 : actualRows12048=WordField.canonicalRows actualModulus 12048 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12048 : actualRows12048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12048=2820 := by core033_kernel_decide
theorem rows12049 : actualRows12049=WordField.canonicalRows actualModulus 12049 (.bnot 12048) := by core033_kernel_decide
theorem stats12049 : actualRows12049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12049=6276 := by core033_kernel_decide
theorem rows12050 : actualRows12050=WordField.canonicalRows actualModulus 12050 (.band 12047 12049) := by core033_kernel_decide
theorem stats12050 : actualRows12050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12050=5124 := by core033_kernel_decide
theorem rows12051 : actualRows12051=WordField.canonicalRows actualModulus 12051 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12051 : actualRows12051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12051=2964 := by core033_kernel_decide
theorem rows12052 : actualRows12052=WordField.canonicalRows actualModulus 12052 (.bxor 0 12051) := by core033_kernel_decide
theorem stats12052 : actualRows12052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12052=7428 := by core033_kernel_decide
theorem rows12053 : actualRows12053=WordField.canonicalRows actualModulus 12053 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12053 : actualRows12053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12053=2820 := by core033_kernel_decide
theorem rows12054 : actualRows12054=WordField.canonicalRows actualModulus 12054 (.bnot 12053) := by core033_kernel_decide
theorem stats12054 : actualRows12054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12054=6276 := by core033_kernel_decide
theorem rows12055 : actualRows12055=WordField.canonicalRows actualModulus 12055 (.bxor 12052 12054) := by core033_kernel_decide
theorem stats12055 : actualRows12055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12055=7428 := by core033_kernel_decide
theorem rows12056 : actualRows12056=WordField.canonicalRows actualModulus 12056 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12056 : actualRows12056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12056=2964 := by core033_kernel_decide
theorem rows12057 : actualRows12057=WordField.canonicalRows actualModulus 12057 (.bxor 0 12056) := by core033_kernel_decide
theorem stats12057 : actualRows12057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12057=7428 := by core033_kernel_decide
theorem rows12058 : actualRows12058=WordField.canonicalRows actualModulus 12058 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12058 : actualRows12058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12058=2820 := by core033_kernel_decide
theorem rows12059 : actualRows12059=WordField.canonicalRows actualModulus 12059 (.bnot 12058) := by core033_kernel_decide
theorem stats12059 : actualRows12059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12059=6276 := by core033_kernel_decide
theorem rows12060 : actualRows12060=WordField.canonicalRows actualModulus 12060 (.badd 12057 12059) := by core033_kernel_decide
theorem stats12060 : actualRows12060.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12060=5388 := by core033_kernel_decide
theorem rows12061 : actualRows12061=WordField.canonicalRows actualModulus 12061 (.bnot 12060) := by core033_kernel_decide
theorem stats12061 : actualRows12061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12061=6276 := by core033_kernel_decide
theorem rows12062 : actualRows12062=WordField.canonicalRows actualModulus 12062 (.band 12055 12061) := by core033_kernel_decide
theorem stats12062 : actualRows12062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12062=5124 := by core033_kernel_decide
theorem rows12063 : actualRows12063=WordField.canonicalRows actualModulus 12063 (.bxor 12050 12062) := by core033_kernel_decide
theorem stats12063 : actualRows12063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12063=7428 := by core033_kernel_decide
theorem rows12064 : actualRows12064=WordField.canonicalRows actualModulus 12064 (.shr 12063 31) := by core033_kernel_decide
theorem stats12064 : actualRows12064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12064=2892 := by core033_kernel_decide
theorem rows12065 : actualRows12065=WordField.canonicalRows actualModulus 12065 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12065 : actualRows12065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12065=2892 := by core033_kernel_decide
theorem rows12066 : actualRows12066=WordField.canonicalRows actualModulus 12066 (.bxor 12064 12065) := by core033_kernel_decide
theorem stats12066 : actualRows12066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12066=7428 := by core033_kernel_decide
theorem rows12067 : actualRows12067=WordField.canonicalRows actualModulus 12067 (.bnot 12066) := by core033_kernel_decide
theorem stats12067 : actualRows12067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12067=6276 := by core033_kernel_decide
theorem rows12068 : actualRows12068=WordField.canonicalRows actualModulus 12068 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12068 : actualRows12068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12068=2892 := by core033_kernel_decide
theorem rows12069 : actualRows12069=WordField.canonicalRows actualModulus 12069 (.badd 12067 12068) := by core033_kernel_decide
theorem stats12069 : actualRows12069.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12069=5388 := by core033_kernel_decide
theorem rows12070 : actualRows12070=WordField.canonicalRows actualModulus 12070 (.band 12069 9802) := by core033_kernel_decide
theorem stats12070 : actualRows12070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12070=5124 := by core033_kernel_decide
theorem rows12071 : actualRows12071=WordField.canonicalRows actualModulus 12071 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12071 : actualRows12071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12071=2964 := by core033_kernel_decide
theorem rows12072 : actualRows12072=WordField.canonicalRows actualModulus 12072 (.bxor 0 12071) := by core033_kernel_decide
theorem stats12072 : actualRows12072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12072=7428 := by core033_kernel_decide
theorem rows12073 : actualRows12073=WordField.canonicalRows actualModulus 12073 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12073 : actualRows12073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12073=2820 := by core033_kernel_decide
theorem rows12074 : actualRows12074=WordField.canonicalRows actualModulus 12074 (.bnot 12073) := by core033_kernel_decide
theorem stats12074 : actualRows12074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12074=6276 := by core033_kernel_decide
def partRows187 : List R1CS.Row := actualRows12011++actualRows12012++actualRows12013++actualRows12014++actualRows12015++actualRows12016++actualRows12017++actualRows12018++actualRows12019++actualRows12020++actualRows12021++actualRows12022++actualRows12023++actualRows12024++actualRows12025++actualRows12026++actualRows12027++actualRows12028++actualRows12029++actualRows12030++actualRows12031++actualRows12032++actualRows12033++actualRows12034++actualRows12035++actualRows12036++actualRows12037++actualRows12038++actualRows12039++actualRows12040++actualRows12041++actualRows12042++actualRows12043++actualRows12044++actualRows12045++actualRows12046++actualRows12047++actualRows12048++actualRows12049++actualRows12050++actualRows12051++actualRows12052++actualRows12053++actualRows12054++actualRows12055++actualRows12056++actualRows12057++actualRows12058++actualRows12059++actualRows12060++actualRows12061++actualRows12062++actualRows12063++actualRows12064++actualRows12065++actualRows12066++actualRows12067++actualRows12068++actualRows12069++actualRows12070++actualRows12071++actualRows12072++actualRows12073++actualRows12074
def partOps187 : List WordIR.Op := [.bxor 11998 12010,.shr 12011 31,.literal (BitVec.ofNat 32 1),.bxor 12012 12013,.bnot 12014,.literal (BitVec.ofNat 32 1),.badd 12015 12016,.band 12017 9791,.literal (BitVec.ofNat 32 3),.bxor 0 12019,.literal (BitVec.ofNat 32 0),.bnot 12021,.band 12020 12022,.literal (BitVec.ofNat 32 3),.bxor 0 12024,.literal (BitVec.ofNat 32 0),.bnot 12026,.bxor 12025 12027,.literal (BitVec.ofNat 32 3),.bxor 0 12029,.literal (BitVec.ofNat 32 0),.bnot 12031,.badd 12030 12032,.bnot 12033,.band 12028 12034,.bxor 12023 12035,.shr 12036 31,.literal (BitVec.ofNat 32 1),.bxor 12037 12038,.bnot 12039,.literal (BitVec.ofNat 32 1),.badd 12040 12041,.bnot 12042,.band 12043 470,.bxor 12018 12044,.literal (BitVec.ofNat 32 3),.bxor 0 12046,.literal (BitVec.ofNat 32 0),.bnot 12048,.band 12047 12049,.literal (BitVec.ofNat 32 3),.bxor 0 12051,.literal (BitVec.ofNat 32 0),.bnot 12053,.bxor 12052 12054,.literal (BitVec.ofNat 32 3),.bxor 0 12056,.literal (BitVec.ofNat 32 0),.bnot 12058,.badd 12057 12059,.bnot 12060,.band 12055 12061,.bxor 12050 12062,.shr 12063 31,.literal (BitVec.ofNat 32 1),.bxor 12064 12065,.bnot 12066,.literal (BitVec.ofNat 32 1),.badd 12067 12068,.band 12069 9802,.literal (BitVec.ofNat 32 3),.bxor 0 12071,.literal (BitVec.ofNat 32 0),.bnot 12073]
theorem partExact187 : partRows187=WordField.rows actualModulus 12011 partOps187 := by
  simp only [partRows187,partOps187,WordField.rows,rows12011,rows12012,rows12013,rows12014,rows12015,rows12016,rows12017,rows12018,rows12019,rows12020,rows12021,rows12022,rows12023,rows12024,rows12025,rows12026,rows12027,rows12028,rows12029,rows12030,rows12031,rows12032,rows12033,rows12034,rows12035,rows12036,rows12037,rows12038,rows12039,rows12040,rows12041,rows12042,rows12043,rows12044,rows12045,rows12046,rows12047,rows12048,rows12049,rows12050,rows12051,rows12052,rows12053,rows12054,rows12055,rows12056,rows12057,rows12058,rows12059,rows12060,rows12061,rows12062,rows12063,rows12064,rows12065,rows12066,rows12067,rows12068,rows12069,rows12070,rows12071,rows12072,rows12073,rows12074,List.append_assoc,List.append_nil]
theorem partLength187 : partOps187.length=64 := by decide
theorem partStats187 : partRows187.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows187=329760 := by
  simp only [partRows187,List.length_append,MatrixRowBlocks.rows_weight_append,stats12011.1,stats12011.2,stats12012.1,stats12012.2,stats12013.1,stats12013.2,stats12014.1,stats12014.2,stats12015.1,stats12015.2,stats12016.1,stats12016.2,stats12017.1,stats12017.2,stats12018.1,stats12018.2,stats12019.1,stats12019.2,stats12020.1,stats12020.2,stats12021.1,stats12021.2,stats12022.1,stats12022.2,stats12023.1,stats12023.2,stats12024.1,stats12024.2,stats12025.1,stats12025.2,stats12026.1,stats12026.2,stats12027.1,stats12027.2,stats12028.1,stats12028.2,stats12029.1,stats12029.2,stats12030.1,stats12030.2,stats12031.1,stats12031.2,stats12032.1,stats12032.2,stats12033.1,stats12033.2,stats12034.1,stats12034.2,stats12035.1,stats12035.2,stats12036.1,stats12036.2,stats12037.1,stats12037.2,stats12038.1,stats12038.2,stats12039.1,stats12039.2,stats12040.1,stats12040.2,stats12041.1,stats12041.2,stats12042.1,stats12042.2,stats12043.1,stats12043.2,stats12044.1,stats12044.2,stats12045.1,stats12045.2,stats12046.1,stats12046.2,stats12047.1,stats12047.2,stats12048.1,stats12048.2,stats12049.1,stats12049.2,stats12050.1,stats12050.2,stats12051.1,stats12051.2,stats12052.1,stats12052.2,stats12053.1,stats12053.2,stats12054.1,stats12054.2,stats12055.1,stats12055.2,stats12056.1,stats12056.2,stats12057.1,stats12057.2,stats12058.1,stats12058.2,stats12059.1,stats12059.2,stats12060.1,stats12060.2,stats12061.1,stats12061.2,stats12062.1,stats12062.2,stats12063.1,stats12063.2,stats12064.1,stats12064.2,stats12065.1,stats12065.2,stats12066.1,stats12066.2,stats12067.1,stats12067.2,stats12068.1,stats12068.2,stats12069.1,stats12069.2,stats12070.1,stats12070.2,stats12071.1,stats12071.2,stats12072.1,stats12072.2,stats12073.1,stats12073.2,stats12074.1,stats12074.2]
  decide
end PathRoundDispatchCheckedRows
