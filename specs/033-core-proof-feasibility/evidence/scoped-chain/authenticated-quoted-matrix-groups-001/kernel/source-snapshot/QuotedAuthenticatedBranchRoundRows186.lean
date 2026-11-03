import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData187
import AuthenticatedBranchRoundInstructionMatrixData188
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12022 : actualRows12022=WordField.canonicalRows actualModulus 12022 (.bnot 12021) := by core033_kernel_decide
theorem stats12022 : actualRows12022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12022=6276 := by core033_kernel_decide
theorem rows12023 : actualRows12023=WordField.canonicalRows actualModulus 12023 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12023 : actualRows12023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12023=2892 := by core033_kernel_decide
theorem rows12024 : actualRows12024=WordField.canonicalRows actualModulus 12024 (.badd 12022 12023) := by core033_kernel_decide
theorem stats12024 : actualRows12024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12024=5388 := by core033_kernel_decide
theorem rows12025 : actualRows12025=WordField.canonicalRows actualModulus 12025 (.band 12024 11089) := by core033_kernel_decide
theorem stats12025 : actualRows12025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12025=5124 := by core033_kernel_decide
theorem rows12026 : actualRows12026=WordField.canonicalRows actualModulus 12026 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12026 : actualRows12026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12026=2964 := by core033_kernel_decide
theorem rows12027 : actualRows12027=WordField.canonicalRows actualModulus 12027 (.bxor 693 12026) := by core033_kernel_decide
theorem stats12027 : actualRows12027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12027=7428 := by core033_kernel_decide
theorem rows12028 : actualRows12028=WordField.canonicalRows actualModulus 12028 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12028 : actualRows12028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12028=2820 := by core033_kernel_decide
theorem rows12029 : actualRows12029=WordField.canonicalRows actualModulus 12029 (.bnot 12028) := by core033_kernel_decide
theorem stats12029 : actualRows12029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12029=6276 := by core033_kernel_decide
theorem rows12030 : actualRows12030=WordField.canonicalRows actualModulus 12030 (.band 12027 12029) := by core033_kernel_decide
theorem stats12030 : actualRows12030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12030=5124 := by core033_kernel_decide
theorem rows12031 : actualRows12031=WordField.canonicalRows actualModulus 12031 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12031 : actualRows12031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12031=2964 := by core033_kernel_decide
theorem rows12032 : actualRows12032=WordField.canonicalRows actualModulus 12032 (.bxor 693 12031) := by core033_kernel_decide
theorem stats12032 : actualRows12032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12032=7428 := by core033_kernel_decide
theorem rows12033 : actualRows12033=WordField.canonicalRows actualModulus 12033 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12033 : actualRows12033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12033=2820 := by core033_kernel_decide
theorem rows12034 : actualRows12034=WordField.canonicalRows actualModulus 12034 (.bnot 12033) := by core033_kernel_decide
theorem stats12034 : actualRows12034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12034=6276 := by core033_kernel_decide
theorem rows12035 : actualRows12035=WordField.canonicalRows actualModulus 12035 (.bxor 12032 12034) := by core033_kernel_decide
theorem stats12035 : actualRows12035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12035=7428 := by core033_kernel_decide
theorem rows12036 : actualRows12036=WordField.canonicalRows actualModulus 12036 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12036 : actualRows12036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12036=2964 := by core033_kernel_decide
theorem rows12037 : actualRows12037=WordField.canonicalRows actualModulus 12037 (.bxor 693 12036) := by core033_kernel_decide
theorem stats12037 : actualRows12037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12037=7428 := by core033_kernel_decide
theorem rows12038 : actualRows12038=WordField.canonicalRows actualModulus 12038 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12038 : actualRows12038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12038=2820 := by core033_kernel_decide
theorem rows12039 : actualRows12039=WordField.canonicalRows actualModulus 12039 (.bnot 12038) := by core033_kernel_decide
theorem stats12039 : actualRows12039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12039=6276 := by core033_kernel_decide
theorem rows12040 : actualRows12040=WordField.canonicalRows actualModulus 12040 (.badd 12037 12039) := by core033_kernel_decide
theorem stats12040 : actualRows12040.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12040=5388 := by core033_kernel_decide
theorem rows12041 : actualRows12041=WordField.canonicalRows actualModulus 12041 (.bnot 12040) := by core033_kernel_decide
theorem stats12041 : actualRows12041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12041=6276 := by core033_kernel_decide
theorem rows12042 : actualRows12042=WordField.canonicalRows actualModulus 12042 (.band 12035 12041) := by core033_kernel_decide
theorem stats12042 : actualRows12042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12042=5124 := by core033_kernel_decide
theorem rows12043 : actualRows12043=WordField.canonicalRows actualModulus 12043 (.bxor 12030 12042) := by core033_kernel_decide
theorem stats12043 : actualRows12043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12043=7428 := by core033_kernel_decide
theorem rows12044 : actualRows12044=WordField.canonicalRows actualModulus 12044 (.shr 12043 31) := by core033_kernel_decide
theorem stats12044 : actualRows12044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12044=2892 := by core033_kernel_decide
theorem rows12045 : actualRows12045=WordField.canonicalRows actualModulus 12045 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12045 : actualRows12045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12045=2892 := by core033_kernel_decide
theorem rows12046 : actualRows12046=WordField.canonicalRows actualModulus 12046 (.bxor 12044 12045) := by core033_kernel_decide
theorem stats12046 : actualRows12046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12046=7428 := by core033_kernel_decide
theorem rows12047 : actualRows12047=WordField.canonicalRows actualModulus 12047 (.bnot 12046) := by core033_kernel_decide
theorem stats12047 : actualRows12047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12047=6276 := by core033_kernel_decide
theorem rows12048 : actualRows12048=WordField.canonicalRows actualModulus 12048 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12048 : actualRows12048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12048=2892 := by core033_kernel_decide
theorem rows12049 : actualRows12049=WordField.canonicalRows actualModulus 12049 (.badd 12047 12048) := by core033_kernel_decide
theorem stats12049 : actualRows12049.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12049=5388 := by core033_kernel_decide
theorem rows12050 : actualRows12050=WordField.canonicalRows actualModulus 12050 (.bnot 12049) := by core033_kernel_decide
theorem stats12050 : actualRows12050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12050=6276 := by core033_kernel_decide
theorem rows12051 : actualRows12051=WordField.canonicalRows actualModulus 12051 (.band 12050 1420) := by core033_kernel_decide
theorem stats12051 : actualRows12051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12051=5124 := by core033_kernel_decide
theorem rows12052 : actualRows12052=WordField.canonicalRows actualModulus 12052 (.bxor 12025 12051) := by core033_kernel_decide
theorem stats12052 : actualRows12052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12052=7428 := by core033_kernel_decide
theorem rows12053 : actualRows12053=WordField.canonicalRows actualModulus 12053 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12053 : actualRows12053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12053=2964 := by core033_kernel_decide
theorem rows12054 : actualRows12054=WordField.canonicalRows actualModulus 12054 (.bxor 693 12053) := by core033_kernel_decide
theorem stats12054 : actualRows12054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12054=7428 := by core033_kernel_decide
theorem rows12055 : actualRows12055=WordField.canonicalRows actualModulus 12055 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12055 : actualRows12055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12055=2820 := by core033_kernel_decide
theorem rows12056 : actualRows12056=WordField.canonicalRows actualModulus 12056 (.bnot 12055) := by core033_kernel_decide
theorem stats12056 : actualRows12056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12056=6276 := by core033_kernel_decide
theorem rows12057 : actualRows12057=WordField.canonicalRows actualModulus 12057 (.band 12054 12056) := by core033_kernel_decide
theorem stats12057 : actualRows12057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12057=5124 := by core033_kernel_decide
theorem rows12058 : actualRows12058=WordField.canonicalRows actualModulus 12058 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12058 : actualRows12058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12058=2964 := by core033_kernel_decide
theorem rows12059 : actualRows12059=WordField.canonicalRows actualModulus 12059 (.bxor 693 12058) := by core033_kernel_decide
theorem stats12059 : actualRows12059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12059=7428 := by core033_kernel_decide
theorem rows12060 : actualRows12060=WordField.canonicalRows actualModulus 12060 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12060 : actualRows12060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12060=2820 := by core033_kernel_decide
theorem rows12061 : actualRows12061=WordField.canonicalRows actualModulus 12061 (.bnot 12060) := by core033_kernel_decide
theorem stats12061 : actualRows12061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12061=6276 := by core033_kernel_decide
theorem rows12062 : actualRows12062=WordField.canonicalRows actualModulus 12062 (.bxor 12059 12061) := by core033_kernel_decide
theorem stats12062 : actualRows12062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12062=7428 := by core033_kernel_decide
theorem rows12063 : actualRows12063=WordField.canonicalRows actualModulus 12063 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12063 : actualRows12063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12063=2964 := by core033_kernel_decide
theorem rows12064 : actualRows12064=WordField.canonicalRows actualModulus 12064 (.bxor 693 12063) := by core033_kernel_decide
theorem stats12064 : actualRows12064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12064=7428 := by core033_kernel_decide
theorem rows12065 : actualRows12065=WordField.canonicalRows actualModulus 12065 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12065 : actualRows12065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12065=2820 := by core033_kernel_decide
theorem rows12066 : actualRows12066=WordField.canonicalRows actualModulus 12066 (.bnot 12065) := by core033_kernel_decide
theorem stats12066 : actualRows12066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12066=6276 := by core033_kernel_decide
theorem rows12067 : actualRows12067=WordField.canonicalRows actualModulus 12067 (.badd 12064 12066) := by core033_kernel_decide
theorem stats12067 : actualRows12067.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12067=5388 := by core033_kernel_decide
theorem rows12068 : actualRows12068=WordField.canonicalRows actualModulus 12068 (.bnot 12067) := by core033_kernel_decide
theorem stats12068 : actualRows12068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12068=6276 := by core033_kernel_decide
theorem rows12069 : actualRows12069=WordField.canonicalRows actualModulus 12069 (.band 12062 12068) := by core033_kernel_decide
theorem stats12069 : actualRows12069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12069=5124 := by core033_kernel_decide
theorem rows12070 : actualRows12070=WordField.canonicalRows actualModulus 12070 (.bxor 12057 12069) := by core033_kernel_decide
theorem stats12070 : actualRows12070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12070=7428 := by core033_kernel_decide
theorem rows12071 : actualRows12071=WordField.canonicalRows actualModulus 12071 (.shr 12070 31) := by core033_kernel_decide
theorem stats12071 : actualRows12071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12071=2892 := by core033_kernel_decide
theorem rows12072 : actualRows12072=WordField.canonicalRows actualModulus 12072 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12072 : actualRows12072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12072=2892 := by core033_kernel_decide
theorem rows12073 : actualRows12073=WordField.canonicalRows actualModulus 12073 (.bxor 12071 12072) := by core033_kernel_decide
theorem stats12073 : actualRows12073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12073=7428 := by core033_kernel_decide
theorem rows12074 : actualRows12074=WordField.canonicalRows actualModulus 12074 (.bnot 12073) := by core033_kernel_decide
theorem stats12074 : actualRows12074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12074=6276 := by core033_kernel_decide
theorem rows12075 : actualRows12075=WordField.canonicalRows actualModulus 12075 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12075 : actualRows12075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12075=2892 := by core033_kernel_decide
theorem rows12076 : actualRows12076=WordField.canonicalRows actualModulus 12076 (.badd 12074 12075) := by core033_kernel_decide
theorem stats12076 : actualRows12076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12076=5388 := by core033_kernel_decide
theorem rows12077 : actualRows12077=WordField.canonicalRows actualModulus 12077 (.band 12076 11096) := by core033_kernel_decide
theorem stats12077 : actualRows12077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12077=5124 := by core033_kernel_decide
theorem rows12078 : actualRows12078=WordField.canonicalRows actualModulus 12078 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12078 : actualRows12078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12078=2964 := by core033_kernel_decide
theorem rows12079 : actualRows12079=WordField.canonicalRows actualModulus 12079 (.bxor 693 12078) := by core033_kernel_decide
theorem stats12079 : actualRows12079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12079=7428 := by core033_kernel_decide
theorem rows12080 : actualRows12080=WordField.canonicalRows actualModulus 12080 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12080 : actualRows12080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12080=2820 := by core033_kernel_decide
theorem rows12081 : actualRows12081=WordField.canonicalRows actualModulus 12081 (.bnot 12080) := by core033_kernel_decide
theorem stats12081 : actualRows12081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12081=6276 := by core033_kernel_decide
theorem rows12082 : actualRows12082=WordField.canonicalRows actualModulus 12082 (.band 12079 12081) := by core033_kernel_decide
theorem stats12082 : actualRows12082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12082=5124 := by core033_kernel_decide
theorem rows12083 : actualRows12083=WordField.canonicalRows actualModulus 12083 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12083 : actualRows12083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12083=2964 := by core033_kernel_decide
theorem rows12084 : actualRows12084=WordField.canonicalRows actualModulus 12084 (.bxor 693 12083) := by core033_kernel_decide
theorem stats12084 : actualRows12084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12084=7428 := by core033_kernel_decide
theorem rows12085 : actualRows12085=WordField.canonicalRows actualModulus 12085 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12085 : actualRows12085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12085=2820 := by core033_kernel_decide
def partRows186 : List R1CS.Row := actualRows12022++actualRows12023++actualRows12024++actualRows12025++actualRows12026++actualRows12027++actualRows12028++actualRows12029++actualRows12030++actualRows12031++actualRows12032++actualRows12033++actualRows12034++actualRows12035++actualRows12036++actualRows12037++actualRows12038++actualRows12039++actualRows12040++actualRows12041++actualRows12042++actualRows12043++actualRows12044++actualRows12045++actualRows12046++actualRows12047++actualRows12048++actualRows12049++actualRows12050++actualRows12051++actualRows12052++actualRows12053++actualRows12054++actualRows12055++actualRows12056++actualRows12057++actualRows12058++actualRows12059++actualRows12060++actualRows12061++actualRows12062++actualRows12063++actualRows12064++actualRows12065++actualRows12066++actualRows12067++actualRows12068++actualRows12069++actualRows12070++actualRows12071++actualRows12072++actualRows12073++actualRows12074++actualRows12075++actualRows12076++actualRows12077++actualRows12078++actualRows12079++actualRows12080++actualRows12081++actualRows12082++actualRows12083++actualRows12084++actualRows12085
def partOps186 : List WordIR.Op := [.bnot 12021,.literal (BitVec.ofNat 32 1),.badd 12022 12023,.band 12024 11089,.literal (BitVec.ofNat 32 3),.bxor 693 12026,.literal (BitVec.ofNat 32 0),.bnot 12028,.band 12027 12029,.literal (BitVec.ofNat 32 3),.bxor 693 12031,.literal (BitVec.ofNat 32 0),.bnot 12033,.bxor 12032 12034,.literal (BitVec.ofNat 32 3),.bxor 693 12036,.literal (BitVec.ofNat 32 0),.bnot 12038,.badd 12037 12039,.bnot 12040,.band 12035 12041,.bxor 12030 12042,.shr 12043 31,.literal (BitVec.ofNat 32 1),.bxor 12044 12045,.bnot 12046,.literal (BitVec.ofNat 32 1),.badd 12047 12048,.bnot 12049,.band 12050 1420,.bxor 12025 12051,.literal (BitVec.ofNat 32 3),.bxor 693 12053,.literal (BitVec.ofNat 32 0),.bnot 12055,.band 12054 12056,.literal (BitVec.ofNat 32 3),.bxor 693 12058,.literal (BitVec.ofNat 32 0),.bnot 12060,.bxor 12059 12061,.literal (BitVec.ofNat 32 3),.bxor 693 12063,.literal (BitVec.ofNat 32 0),.bnot 12065,.badd 12064 12066,.bnot 12067,.band 12062 12068,.bxor 12057 12069,.shr 12070 31,.literal (BitVec.ofNat 32 1),.bxor 12071 12072,.bnot 12073,.literal (BitVec.ofNat 32 1),.badd 12074 12075,.band 12076 11096,.literal (BitVec.ofNat 32 3),.bxor 693 12078,.literal (BitVec.ofNat 32 0),.bnot 12080,.band 12079 12081,.literal (BitVec.ofNat 32 3),.bxor 693 12083,.literal (BitVec.ofNat 32 0)]
theorem partExact186 : partRows186=WordField.rows actualModulus 12022 partOps186 := by
  simp only [partRows186,partOps186,WordField.rows,rows12022,rows12023,rows12024,rows12025,rows12026,rows12027,rows12028,rows12029,rows12030,rows12031,rows12032,rows12033,rows12034,rows12035,rows12036,rows12037,rows12038,rows12039,rows12040,rows12041,rows12042,rows12043,rows12044,rows12045,rows12046,rows12047,rows12048,rows12049,rows12050,rows12051,rows12052,rows12053,rows12054,rows12055,rows12056,rows12057,rows12058,rows12059,rows12060,rows12061,rows12062,rows12063,rows12064,rows12065,rows12066,rows12067,rows12068,rows12069,rows12070,rows12071,rows12072,rows12073,rows12074,rows12075,rows12076,rows12077,rows12078,rows12079,rows12080,rows12081,rows12082,rows12083,rows12084,rows12085,List.append_assoc,List.append_nil]
theorem partLength186 : partOps186.length=64 := by decide
theorem partStats186 : partRows186.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows186=327456 := by
  simp only [partRows186,List.length_append,MatrixRowBlocks.rows_weight_append,stats12022.1,stats12022.2,stats12023.1,stats12023.2,stats12024.1,stats12024.2,stats12025.1,stats12025.2,stats12026.1,stats12026.2,stats12027.1,stats12027.2,stats12028.1,stats12028.2,stats12029.1,stats12029.2,stats12030.1,stats12030.2,stats12031.1,stats12031.2,stats12032.1,stats12032.2,stats12033.1,stats12033.2,stats12034.1,stats12034.2,stats12035.1,stats12035.2,stats12036.1,stats12036.2,stats12037.1,stats12037.2,stats12038.1,stats12038.2,stats12039.1,stats12039.2,stats12040.1,stats12040.2,stats12041.1,stats12041.2,stats12042.1,stats12042.2,stats12043.1,stats12043.2,stats12044.1,stats12044.2,stats12045.1,stats12045.2,stats12046.1,stats12046.2,stats12047.1,stats12047.2,stats12048.1,stats12048.2,stats12049.1,stats12049.2,stats12050.1,stats12050.2,stats12051.1,stats12051.2,stats12052.1,stats12052.2,stats12053.1,stats12053.2,stats12054.1,stats12054.2,stats12055.1,stats12055.2,stats12056.1,stats12056.2,stats12057.1,stats12057.2,stats12058.1,stats12058.2,stats12059.1,stats12059.2,stats12060.1,stats12060.2,stats12061.1,stats12061.2,stats12062.1,stats12062.2,stats12063.1,stats12063.2,stats12064.1,stats12064.2,stats12065.1,stats12065.2,stats12066.1,stats12066.2,stats12067.1,stats12067.2,stats12068.1,stats12068.2,stats12069.1,stats12069.2,stats12070.1,stats12070.2,stats12071.1,stats12071.2,stats12072.1,stats12072.2,stats12073.1,stats12073.2,stats12074.1,stats12074.2,stats12075.1,stats12075.2,stats12076.1,stats12076.2,stats12077.1,stats12077.2,stats12078.1,stats12078.2,stats12079.1,stats12079.2,stats12080.1,stats12080.2,stats12081.1,stats12081.2,stats12082.1,stats12082.2,stats12083.1,stats12083.2,stats12084.1,stats12084.2,stats12085.1,stats12085.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
