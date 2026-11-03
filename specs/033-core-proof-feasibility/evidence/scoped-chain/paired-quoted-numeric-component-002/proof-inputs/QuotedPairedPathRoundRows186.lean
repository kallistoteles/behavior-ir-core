import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData187
import PairedPathRoundInstructionMatrixData188
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12000 : actualRows12000=WordField.canonicalRows actualModulus 12000 (.bxor 442 11999) := by core033_kernel_decide
theorem stats12000 : actualRows12000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12000=7428 := by core033_kernel_decide
theorem rows12001 : actualRows12001=WordField.canonicalRows actualModulus 12001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12001 : actualRows12001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12001=2820 := by core033_kernel_decide
theorem rows12002 : actualRows12002=WordField.canonicalRows actualModulus 12002 (.bnot 12001) := by core033_kernel_decide
theorem stats12002 : actualRows12002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12002=6276 := by core033_kernel_decide
theorem rows12003 : actualRows12003=WordField.canonicalRows actualModulus 12003 (.bxor 12000 12002) := by core033_kernel_decide
theorem stats12003 : actualRows12003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12003=7428 := by core033_kernel_decide
theorem rows12004 : actualRows12004=WordField.canonicalRows actualModulus 12004 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12004 : actualRows12004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12004=2964 := by core033_kernel_decide
theorem rows12005 : actualRows12005=WordField.canonicalRows actualModulus 12005 (.bxor 442 12004) := by core033_kernel_decide
theorem stats12005 : actualRows12005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12005=7428 := by core033_kernel_decide
theorem rows12006 : actualRows12006=WordField.canonicalRows actualModulus 12006 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12006 : actualRows12006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12006=2820 := by core033_kernel_decide
theorem rows12007 : actualRows12007=WordField.canonicalRows actualModulus 12007 (.bnot 12006) := by core033_kernel_decide
theorem stats12007 : actualRows12007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12007=6276 := by core033_kernel_decide
theorem rows12008 : actualRows12008=WordField.canonicalRows actualModulus 12008 (.badd 12005 12007) := by core033_kernel_decide
theorem stats12008 : actualRows12008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12008=5388 := by core033_kernel_decide
theorem rows12009 : actualRows12009=WordField.canonicalRows actualModulus 12009 (.bnot 12008) := by core033_kernel_decide
theorem stats12009 : actualRows12009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12009=6276 := by core033_kernel_decide
theorem rows12010 : actualRows12010=WordField.canonicalRows actualModulus 12010 (.band 12003 12009) := by core033_kernel_decide
theorem stats12010 : actualRows12010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12010=5124 := by core033_kernel_decide
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
theorem rows12018 : actualRows12018=WordField.canonicalRows actualModulus 12018 (.band 12017 10201) := by core033_kernel_decide
theorem stats12018 : actualRows12018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12018=5124 := by core033_kernel_decide
theorem rows12019 : actualRows12019=WordField.canonicalRows actualModulus 12019 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12019 : actualRows12019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12019=2964 := by core033_kernel_decide
theorem rows12020 : actualRows12020=WordField.canonicalRows actualModulus 12020 (.bxor 442 12019) := by core033_kernel_decide
theorem stats12020 : actualRows12020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12020=7428 := by core033_kernel_decide
theorem rows12021 : actualRows12021=WordField.canonicalRows actualModulus 12021 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12021 : actualRows12021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12021=2820 := by core033_kernel_decide
theorem rows12022 : actualRows12022=WordField.canonicalRows actualModulus 12022 (.bnot 12021) := by core033_kernel_decide
theorem stats12022 : actualRows12022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12022=6276 := by core033_kernel_decide
theorem rows12023 : actualRows12023=WordField.canonicalRows actualModulus 12023 (.band 12020 12022) := by core033_kernel_decide
theorem stats12023 : actualRows12023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12023=5124 := by core033_kernel_decide
theorem rows12024 : actualRows12024=WordField.canonicalRows actualModulus 12024 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12024 : actualRows12024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12024=2964 := by core033_kernel_decide
theorem rows12025 : actualRows12025=WordField.canonicalRows actualModulus 12025 (.bxor 442 12024) := by core033_kernel_decide
theorem stats12025 : actualRows12025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12025=7428 := by core033_kernel_decide
theorem rows12026 : actualRows12026=WordField.canonicalRows actualModulus 12026 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12026 : actualRows12026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12026=2820 := by core033_kernel_decide
theorem rows12027 : actualRows12027=WordField.canonicalRows actualModulus 12027 (.bnot 12026) := by core033_kernel_decide
theorem stats12027 : actualRows12027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12027=6276 := by core033_kernel_decide
theorem rows12028 : actualRows12028=WordField.canonicalRows actualModulus 12028 (.bxor 12025 12027) := by core033_kernel_decide
theorem stats12028 : actualRows12028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12028=7428 := by core033_kernel_decide
theorem rows12029 : actualRows12029=WordField.canonicalRows actualModulus 12029 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12029 : actualRows12029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12029=2964 := by core033_kernel_decide
theorem rows12030 : actualRows12030=WordField.canonicalRows actualModulus 12030 (.bxor 442 12029) := by core033_kernel_decide
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
theorem rows12044 : actualRows12044=WordField.canonicalRows actualModulus 12044 (.band 12043 880) := by core033_kernel_decide
theorem stats12044 : actualRows12044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12044=5124 := by core033_kernel_decide
theorem rows12045 : actualRows12045=WordField.canonicalRows actualModulus 12045 (.bxor 12018 12044) := by core033_kernel_decide
theorem stats12045 : actualRows12045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12045=7428 := by core033_kernel_decide
theorem rows12046 : actualRows12046=WordField.canonicalRows actualModulus 12046 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12046 : actualRows12046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12046=2964 := by core033_kernel_decide
theorem rows12047 : actualRows12047=WordField.canonicalRows actualModulus 12047 (.bxor 442 12046) := by core033_kernel_decide
theorem stats12047 : actualRows12047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12047=7428 := by core033_kernel_decide
theorem rows12048 : actualRows12048=WordField.canonicalRows actualModulus 12048 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12048 : actualRows12048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12048=2820 := by core033_kernel_decide
theorem rows12049 : actualRows12049=WordField.canonicalRows actualModulus 12049 (.bnot 12048) := by core033_kernel_decide
theorem stats12049 : actualRows12049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12049=6276 := by core033_kernel_decide
theorem rows12050 : actualRows12050=WordField.canonicalRows actualModulus 12050 (.band 12047 12049) := by core033_kernel_decide
theorem stats12050 : actualRows12050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12050=5124 := by core033_kernel_decide
theorem rows12051 : actualRows12051=WordField.canonicalRows actualModulus 12051 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12051 : actualRows12051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12051=2964 := by core033_kernel_decide
theorem rows12052 : actualRows12052=WordField.canonicalRows actualModulus 12052 (.bxor 442 12051) := by core033_kernel_decide
theorem stats12052 : actualRows12052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12052=7428 := by core033_kernel_decide
theorem rows12053 : actualRows12053=WordField.canonicalRows actualModulus 12053 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12053 : actualRows12053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12053=2820 := by core033_kernel_decide
theorem rows12054 : actualRows12054=WordField.canonicalRows actualModulus 12054 (.bnot 12053) := by core033_kernel_decide
theorem stats12054 : actualRows12054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12054=6276 := by core033_kernel_decide
theorem rows12055 : actualRows12055=WordField.canonicalRows actualModulus 12055 (.bxor 12052 12054) := by core033_kernel_decide
theorem stats12055 : actualRows12055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12055=7428 := by core033_kernel_decide
theorem rows12056 : actualRows12056=WordField.canonicalRows actualModulus 12056 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12056 : actualRows12056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12056=2964 := by core033_kernel_decide
theorem rows12057 : actualRows12057=WordField.canonicalRows actualModulus 12057 (.bxor 442 12056) := by core033_kernel_decide
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
def partRows186 : List R1CS.Row := actualRows12000++actualRows12001++actualRows12002++actualRows12003++actualRows12004++actualRows12005++actualRows12006++actualRows12007++actualRows12008++actualRows12009++actualRows12010++actualRows12011++actualRows12012++actualRows12013++actualRows12014++actualRows12015++actualRows12016++actualRows12017++actualRows12018++actualRows12019++actualRows12020++actualRows12021++actualRows12022++actualRows12023++actualRows12024++actualRows12025++actualRows12026++actualRows12027++actualRows12028++actualRows12029++actualRows12030++actualRows12031++actualRows12032++actualRows12033++actualRows12034++actualRows12035++actualRows12036++actualRows12037++actualRows12038++actualRows12039++actualRows12040++actualRows12041++actualRows12042++actualRows12043++actualRows12044++actualRows12045++actualRows12046++actualRows12047++actualRows12048++actualRows12049++actualRows12050++actualRows12051++actualRows12052++actualRows12053++actualRows12054++actualRows12055++actualRows12056++actualRows12057++actualRows12058++actualRows12059++actualRows12060++actualRows12061++actualRows12062++actualRows12063
def partOps186 : List WordIR.Op := [.bxor 442 11999,.literal (BitVec.ofNat 32 0),.bnot 12001,.bxor 12000 12002,.literal (BitVec.ofNat 32 3),.bxor 442 12004,.literal (BitVec.ofNat 32 0),.bnot 12006,.badd 12005 12007,.bnot 12008,.band 12003 12009,.bxor 11998 12010,.shr 12011 31,.literal (BitVec.ofNat 32 1),.bxor 12012 12013,.bnot 12014,.literal (BitVec.ofNat 32 1),.badd 12015 12016,.band 12017 10201,.literal (BitVec.ofNat 32 3),.bxor 442 12019,.literal (BitVec.ofNat 32 0),.bnot 12021,.band 12020 12022,.literal (BitVec.ofNat 32 3),.bxor 442 12024,.literal (BitVec.ofNat 32 0),.bnot 12026,.bxor 12025 12027,.literal (BitVec.ofNat 32 3),.bxor 442 12029,.literal (BitVec.ofNat 32 0),.bnot 12031,.badd 12030 12032,.bnot 12033,.band 12028 12034,.bxor 12023 12035,.shr 12036 31,.literal (BitVec.ofNat 32 1),.bxor 12037 12038,.bnot 12039,.literal (BitVec.ofNat 32 1),.badd 12040 12041,.bnot 12042,.band 12043 880,.bxor 12018 12044,.literal (BitVec.ofNat 32 3),.bxor 442 12046,.literal (BitVec.ofNat 32 0),.bnot 12048,.band 12047 12049,.literal (BitVec.ofNat 32 3),.bxor 442 12051,.literal (BitVec.ofNat 32 0),.bnot 12053,.bxor 12052 12054,.literal (BitVec.ofNat 32 3),.bxor 442 12056,.literal (BitVec.ofNat 32 0),.bnot 12058,.badd 12057 12059,.bnot 12060,.band 12055 12061,.bxor 12050 12062]
theorem partExact186 : partRows186=WordField.rows actualModulus 12000 partOps186 := by
  simp only [partRows186,partOps186,WordField.rows,rows12000,rows12001,rows12002,rows12003,rows12004,rows12005,rows12006,rows12007,rows12008,rows12009,rows12010,rows12011,rows12012,rows12013,rows12014,rows12015,rows12016,rows12017,rows12018,rows12019,rows12020,rows12021,rows12022,rows12023,rows12024,rows12025,rows12026,rows12027,rows12028,rows12029,rows12030,rows12031,rows12032,rows12033,rows12034,rows12035,rows12036,rows12037,rows12038,rows12039,rows12040,rows12041,rows12042,rows12043,rows12044,rows12045,rows12046,rows12047,rows12048,rows12049,rows12050,rows12051,rows12052,rows12053,rows12054,rows12055,rows12056,rows12057,rows12058,rows12059,rows12060,rows12061,rows12062,rows12063,List.append_assoc,List.append_nil]
theorem partLength186 : partOps186.length=64 := by decide
theorem partStats186 : partRows186.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows186=337608 := by
  simp only [partRows186,List.length_append,MatrixRowBlocks.rows_weight_append,stats12000.1,stats12000.2,stats12001.1,stats12001.2,stats12002.1,stats12002.2,stats12003.1,stats12003.2,stats12004.1,stats12004.2,stats12005.1,stats12005.2,stats12006.1,stats12006.2,stats12007.1,stats12007.2,stats12008.1,stats12008.2,stats12009.1,stats12009.2,stats12010.1,stats12010.2,stats12011.1,stats12011.2,stats12012.1,stats12012.2,stats12013.1,stats12013.2,stats12014.1,stats12014.2,stats12015.1,stats12015.2,stats12016.1,stats12016.2,stats12017.1,stats12017.2,stats12018.1,stats12018.2,stats12019.1,stats12019.2,stats12020.1,stats12020.2,stats12021.1,stats12021.2,stats12022.1,stats12022.2,stats12023.1,stats12023.2,stats12024.1,stats12024.2,stats12025.1,stats12025.2,stats12026.1,stats12026.2,stats12027.1,stats12027.2,stats12028.1,stats12028.2,stats12029.1,stats12029.2,stats12030.1,stats12030.2,stats12031.1,stats12031.2,stats12032.1,stats12032.2,stats12033.1,stats12033.2,stats12034.1,stats12034.2,stats12035.1,stats12035.2,stats12036.1,stats12036.2,stats12037.1,stats12037.2,stats12038.1,stats12038.2,stats12039.1,stats12039.2,stats12040.1,stats12040.2,stats12041.1,stats12041.2,stats12042.1,stats12042.2,stats12043.1,stats12043.2,stats12044.1,stats12044.2,stats12045.1,stats12045.2,stats12046.1,stats12046.2,stats12047.1,stats12047.2,stats12048.1,stats12048.2,stats12049.1,stats12049.2,stats12050.1,stats12050.2,stats12051.1,stats12051.2,stats12052.1,stats12052.2,stats12053.1,stats12053.2,stats12054.1,stats12054.2,stats12055.1,stats12055.2,stats12056.1,stats12056.2,stats12057.1,stats12057.2,stats12058.1,stats12058.2,stats12059.1,stats12059.2,stats12060.1,stats12060.2,stats12061.1,stats12061.2,stats12062.1,stats12062.2,stats12063.1,stats12063.2]
  decide
end QuotedPairedPathRoundCheckedRows
