import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData188
import PairedPathRoundInstructionMatrixData189
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
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
theorem rows12070 : actualRows12070=WordField.canonicalRows actualModulus 12070 (.band 12069 10212) := by core033_kernel_decide
theorem stats12070 : actualRows12070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12070=5124 := by core033_kernel_decide
theorem rows12071 : actualRows12071=WordField.canonicalRows actualModulus 12071 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12071 : actualRows12071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12071=2964 := by core033_kernel_decide
theorem rows12072 : actualRows12072=WordField.canonicalRows actualModulus 12072 (.bxor 442 12071) := by core033_kernel_decide
theorem stats12072 : actualRows12072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12072=7428 := by core033_kernel_decide
theorem rows12073 : actualRows12073=WordField.canonicalRows actualModulus 12073 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12073 : actualRows12073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12073=2820 := by core033_kernel_decide
theorem rows12074 : actualRows12074=WordField.canonicalRows actualModulus 12074 (.bnot 12073) := by core033_kernel_decide
theorem stats12074 : actualRows12074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12074=6276 := by core033_kernel_decide
theorem rows12075 : actualRows12075=WordField.canonicalRows actualModulus 12075 (.band 12072 12074) := by core033_kernel_decide
theorem stats12075 : actualRows12075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12075=5124 := by core033_kernel_decide
theorem rows12076 : actualRows12076=WordField.canonicalRows actualModulus 12076 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12076 : actualRows12076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12076=2964 := by core033_kernel_decide
theorem rows12077 : actualRows12077=WordField.canonicalRows actualModulus 12077 (.bxor 442 12076) := by core033_kernel_decide
theorem stats12077 : actualRows12077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12077=7428 := by core033_kernel_decide
theorem rows12078 : actualRows12078=WordField.canonicalRows actualModulus 12078 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12078 : actualRows12078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12078=2820 := by core033_kernel_decide
theorem rows12079 : actualRows12079=WordField.canonicalRows actualModulus 12079 (.bnot 12078) := by core033_kernel_decide
theorem stats12079 : actualRows12079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12079=6276 := by core033_kernel_decide
theorem rows12080 : actualRows12080=WordField.canonicalRows actualModulus 12080 (.bxor 12077 12079) := by core033_kernel_decide
theorem stats12080 : actualRows12080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12080=7428 := by core033_kernel_decide
theorem rows12081 : actualRows12081=WordField.canonicalRows actualModulus 12081 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12081 : actualRows12081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12081=2964 := by core033_kernel_decide
theorem rows12082 : actualRows12082=WordField.canonicalRows actualModulus 12082 (.bxor 442 12081) := by core033_kernel_decide
theorem stats12082 : actualRows12082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12082=7428 := by core033_kernel_decide
theorem rows12083 : actualRows12083=WordField.canonicalRows actualModulus 12083 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12083 : actualRows12083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12083=2820 := by core033_kernel_decide
theorem rows12084 : actualRows12084=WordField.canonicalRows actualModulus 12084 (.bnot 12083) := by core033_kernel_decide
theorem stats12084 : actualRows12084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12084=6276 := by core033_kernel_decide
theorem rows12085 : actualRows12085=WordField.canonicalRows actualModulus 12085 (.badd 12082 12084) := by core033_kernel_decide
theorem stats12085 : actualRows12085.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12085=5388 := by core033_kernel_decide
theorem rows12086 : actualRows12086=WordField.canonicalRows actualModulus 12086 (.bnot 12085) := by core033_kernel_decide
theorem stats12086 : actualRows12086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12086=6276 := by core033_kernel_decide
theorem rows12087 : actualRows12087=WordField.canonicalRows actualModulus 12087 (.band 12080 12086) := by core033_kernel_decide
theorem stats12087 : actualRows12087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12087=5124 := by core033_kernel_decide
theorem rows12088 : actualRows12088=WordField.canonicalRows actualModulus 12088 (.bxor 12075 12087) := by core033_kernel_decide
theorem stats12088 : actualRows12088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12088=7428 := by core033_kernel_decide
theorem rows12089 : actualRows12089=WordField.canonicalRows actualModulus 12089 (.shr 12088 31) := by core033_kernel_decide
theorem stats12089 : actualRows12089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12089=2892 := by core033_kernel_decide
theorem rows12090 : actualRows12090=WordField.canonicalRows actualModulus 12090 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12090 : actualRows12090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12090=2892 := by core033_kernel_decide
theorem rows12091 : actualRows12091=WordField.canonicalRows actualModulus 12091 (.bxor 12089 12090) := by core033_kernel_decide
theorem stats12091 : actualRows12091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12091=7428 := by core033_kernel_decide
theorem rows12092 : actualRows12092=WordField.canonicalRows actualModulus 12092 (.bnot 12091) := by core033_kernel_decide
theorem stats12092 : actualRows12092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12092=6276 := by core033_kernel_decide
theorem rows12093 : actualRows12093=WordField.canonicalRows actualModulus 12093 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12093 : actualRows12093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12093=2892 := by core033_kernel_decide
theorem rows12094 : actualRows12094=WordField.canonicalRows actualModulus 12094 (.badd 12092 12093) := by core033_kernel_decide
theorem stats12094 : actualRows12094.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12094=5388 := by core033_kernel_decide
theorem rows12095 : actualRows12095=WordField.canonicalRows actualModulus 12095 (.bnot 12094) := by core033_kernel_decide
theorem stats12095 : actualRows12095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12095=6276 := by core033_kernel_decide
theorem rows12096 : actualRows12096=WordField.canonicalRows actualModulus 12096 (.band 12095 891) := by core033_kernel_decide
theorem stats12096 : actualRows12096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12096=5124 := by core033_kernel_decide
theorem rows12097 : actualRows12097=WordField.canonicalRows actualModulus 12097 (.bxor 12070 12096) := by core033_kernel_decide
theorem stats12097 : actualRows12097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12097=7428 := by core033_kernel_decide
theorem rows12098 : actualRows12098=WordField.canonicalRows actualModulus 12098 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12098 : actualRows12098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12098=2964 := by core033_kernel_decide
theorem rows12099 : actualRows12099=WordField.canonicalRows actualModulus 12099 (.bxor 442 12098) := by core033_kernel_decide
theorem stats12099 : actualRows12099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12099=7428 := by core033_kernel_decide
theorem rows12100 : actualRows12100=WordField.canonicalRows actualModulus 12100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12100 : actualRows12100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12100=2820 := by core033_kernel_decide
theorem rows12101 : actualRows12101=WordField.canonicalRows actualModulus 12101 (.bnot 12100) := by core033_kernel_decide
theorem stats12101 : actualRows12101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12101=6276 := by core033_kernel_decide
theorem rows12102 : actualRows12102=WordField.canonicalRows actualModulus 12102 (.band 12099 12101) := by core033_kernel_decide
theorem stats12102 : actualRows12102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12102=5124 := by core033_kernel_decide
theorem rows12103 : actualRows12103=WordField.canonicalRows actualModulus 12103 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12103 : actualRows12103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12103=2964 := by core033_kernel_decide
theorem rows12104 : actualRows12104=WordField.canonicalRows actualModulus 12104 (.bxor 442 12103) := by core033_kernel_decide
theorem stats12104 : actualRows12104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12104=7428 := by core033_kernel_decide
theorem rows12105 : actualRows12105=WordField.canonicalRows actualModulus 12105 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12105 : actualRows12105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12105=2820 := by core033_kernel_decide
theorem rows12106 : actualRows12106=WordField.canonicalRows actualModulus 12106 (.bnot 12105) := by core033_kernel_decide
theorem stats12106 : actualRows12106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12106=6276 := by core033_kernel_decide
theorem rows12107 : actualRows12107=WordField.canonicalRows actualModulus 12107 (.bxor 12104 12106) := by core033_kernel_decide
theorem stats12107 : actualRows12107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12107=7428 := by core033_kernel_decide
theorem rows12108 : actualRows12108=WordField.canonicalRows actualModulus 12108 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12108 : actualRows12108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12108=2964 := by core033_kernel_decide
theorem rows12109 : actualRows12109=WordField.canonicalRows actualModulus 12109 (.bxor 442 12108) := by core033_kernel_decide
theorem stats12109 : actualRows12109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12109=7428 := by core033_kernel_decide
theorem rows12110 : actualRows12110=WordField.canonicalRows actualModulus 12110 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12110 : actualRows12110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12110=2820 := by core033_kernel_decide
theorem rows12111 : actualRows12111=WordField.canonicalRows actualModulus 12111 (.bnot 12110) := by core033_kernel_decide
theorem stats12111 : actualRows12111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12111=6276 := by core033_kernel_decide
theorem rows12112 : actualRows12112=WordField.canonicalRows actualModulus 12112 (.badd 12109 12111) := by core033_kernel_decide
theorem stats12112 : actualRows12112.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12112=5388 := by core033_kernel_decide
theorem rows12113 : actualRows12113=WordField.canonicalRows actualModulus 12113 (.bnot 12112) := by core033_kernel_decide
theorem stats12113 : actualRows12113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12113=6276 := by core033_kernel_decide
theorem rows12114 : actualRows12114=WordField.canonicalRows actualModulus 12114 (.band 12107 12113) := by core033_kernel_decide
theorem stats12114 : actualRows12114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12114=5124 := by core033_kernel_decide
theorem rows12115 : actualRows12115=WordField.canonicalRows actualModulus 12115 (.bxor 12102 12114) := by core033_kernel_decide
theorem stats12115 : actualRows12115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12115=7428 := by core033_kernel_decide
theorem rows12116 : actualRows12116=WordField.canonicalRows actualModulus 12116 (.shr 12115 31) := by core033_kernel_decide
theorem stats12116 : actualRows12116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12116=2892 := by core033_kernel_decide
theorem rows12117 : actualRows12117=WordField.canonicalRows actualModulus 12117 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12117 : actualRows12117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12117=2892 := by core033_kernel_decide
theorem rows12118 : actualRows12118=WordField.canonicalRows actualModulus 12118 (.bxor 12116 12117) := by core033_kernel_decide
theorem stats12118 : actualRows12118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12118=7428 := by core033_kernel_decide
theorem rows12119 : actualRows12119=WordField.canonicalRows actualModulus 12119 (.bnot 12118) := by core033_kernel_decide
theorem stats12119 : actualRows12119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12119=6276 := by core033_kernel_decide
theorem rows12120 : actualRows12120=WordField.canonicalRows actualModulus 12120 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12120 : actualRows12120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12120=2892 := by core033_kernel_decide
theorem rows12121 : actualRows12121=WordField.canonicalRows actualModulus 12121 (.badd 12119 12120) := by core033_kernel_decide
theorem stats12121 : actualRows12121.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12121=5388 := by core033_kernel_decide
theorem rows12122 : actualRows12122=WordField.canonicalRows actualModulus 12122 (.band 12121 10223) := by core033_kernel_decide
theorem stats12122 : actualRows12122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12122=5124 := by core033_kernel_decide
theorem rows12123 : actualRows12123=WordField.canonicalRows actualModulus 12123 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12123 : actualRows12123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12123=2964 := by core033_kernel_decide
theorem rows12124 : actualRows12124=WordField.canonicalRows actualModulus 12124 (.bxor 442 12123) := by core033_kernel_decide
theorem stats12124 : actualRows12124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12124=7428 := by core033_kernel_decide
theorem rows12125 : actualRows12125=WordField.canonicalRows actualModulus 12125 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12125 : actualRows12125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12125=2820 := by core033_kernel_decide
theorem rows12126 : actualRows12126=WordField.canonicalRows actualModulus 12126 (.bnot 12125) := by core033_kernel_decide
theorem stats12126 : actualRows12126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12126=6276 := by core033_kernel_decide
theorem rows12127 : actualRows12127=WordField.canonicalRows actualModulus 12127 (.band 12124 12126) := by core033_kernel_decide
theorem stats12127 : actualRows12127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12127=5124 := by core033_kernel_decide
def partRows187 : List R1CS.Row := actualRows12064++actualRows12065++actualRows12066++actualRows12067++actualRows12068++actualRows12069++actualRows12070++actualRows12071++actualRows12072++actualRows12073++actualRows12074++actualRows12075++actualRows12076++actualRows12077++actualRows12078++actualRows12079++actualRows12080++actualRows12081++actualRows12082++actualRows12083++actualRows12084++actualRows12085++actualRows12086++actualRows12087++actualRows12088++actualRows12089++actualRows12090++actualRows12091++actualRows12092++actualRows12093++actualRows12094++actualRows12095++actualRows12096++actualRows12097++actualRows12098++actualRows12099++actualRows12100++actualRows12101++actualRows12102++actualRows12103++actualRows12104++actualRows12105++actualRows12106++actualRows12107++actualRows12108++actualRows12109++actualRows12110++actualRows12111++actualRows12112++actualRows12113++actualRows12114++actualRows12115++actualRows12116++actualRows12117++actualRows12118++actualRows12119++actualRows12120++actualRows12121++actualRows12122++actualRows12123++actualRows12124++actualRows12125++actualRows12126++actualRows12127
def partOps187 : List WordIR.Op := [.shr 12063 31,.literal (BitVec.ofNat 32 1),.bxor 12064 12065,.bnot 12066,.literal (BitVec.ofNat 32 1),.badd 12067 12068,.band 12069 10212,.literal (BitVec.ofNat 32 3),.bxor 442 12071,.literal (BitVec.ofNat 32 0),.bnot 12073,.band 12072 12074,.literal (BitVec.ofNat 32 3),.bxor 442 12076,.literal (BitVec.ofNat 32 0),.bnot 12078,.bxor 12077 12079,.literal (BitVec.ofNat 32 3),.bxor 442 12081,.literal (BitVec.ofNat 32 0),.bnot 12083,.badd 12082 12084,.bnot 12085,.band 12080 12086,.bxor 12075 12087,.shr 12088 31,.literal (BitVec.ofNat 32 1),.bxor 12089 12090,.bnot 12091,.literal (BitVec.ofNat 32 1),.badd 12092 12093,.bnot 12094,.band 12095 891,.bxor 12070 12096,.literal (BitVec.ofNat 32 3),.bxor 442 12098,.literal (BitVec.ofNat 32 0),.bnot 12100,.band 12099 12101,.literal (BitVec.ofNat 32 3),.bxor 442 12103,.literal (BitVec.ofNat 32 0),.bnot 12105,.bxor 12104 12106,.literal (BitVec.ofNat 32 3),.bxor 442 12108,.literal (BitVec.ofNat 32 0),.bnot 12110,.badd 12109 12111,.bnot 12112,.band 12107 12113,.bxor 12102 12114,.shr 12115 31,.literal (BitVec.ofNat 32 1),.bxor 12116 12117,.bnot 12118,.literal (BitVec.ofNat 32 1),.badd 12119 12120,.band 12121 10223,.literal (BitVec.ofNat 32 3),.bxor 442 12123,.literal (BitVec.ofNat 32 0),.bnot 12125,.band 12124 12126]
theorem partExact187 : partRows187=WordField.rows actualModulus 12064 partOps187 := by
  simp only [partRows187,partOps187,WordField.rows,rows12064,rows12065,rows12066,rows12067,rows12068,rows12069,rows12070,rows12071,rows12072,rows12073,rows12074,rows12075,rows12076,rows12077,rows12078,rows12079,rows12080,rows12081,rows12082,rows12083,rows12084,rows12085,rows12086,rows12087,rows12088,rows12089,rows12090,rows12091,rows12092,rows12093,rows12094,rows12095,rows12096,rows12097,rows12098,rows12099,rows12100,rows12101,rows12102,rows12103,rows12104,rows12105,rows12106,rows12107,rows12108,rows12109,rows12110,rows12111,rows12112,rows12113,rows12114,rows12115,rows12116,rows12117,rows12118,rows12119,rows12120,rows12121,rows12122,rows12123,rows12124,rows12125,rows12126,rows12127,List.append_assoc,List.append_nil]
theorem partLength187 : partOps187.length=64 := by decide
theorem partStats187 : partRows187.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows187=327456 := by
  simp only [partRows187,List.length_append,MatrixRowBlocks.rows_weight_append,stats12064.1,stats12064.2,stats12065.1,stats12065.2,stats12066.1,stats12066.2,stats12067.1,stats12067.2,stats12068.1,stats12068.2,stats12069.1,stats12069.2,stats12070.1,stats12070.2,stats12071.1,stats12071.2,stats12072.1,stats12072.2,stats12073.1,stats12073.2,stats12074.1,stats12074.2,stats12075.1,stats12075.2,stats12076.1,stats12076.2,stats12077.1,stats12077.2,stats12078.1,stats12078.2,stats12079.1,stats12079.2,stats12080.1,stats12080.2,stats12081.1,stats12081.2,stats12082.1,stats12082.2,stats12083.1,stats12083.2,stats12084.1,stats12084.2,stats12085.1,stats12085.2,stats12086.1,stats12086.2,stats12087.1,stats12087.2,stats12088.1,stats12088.2,stats12089.1,stats12089.2,stats12090.1,stats12090.2,stats12091.1,stats12091.2,stats12092.1,stats12092.2,stats12093.1,stats12093.2,stats12094.1,stats12094.2,stats12095.1,stats12095.2,stats12096.1,stats12096.2,stats12097.1,stats12097.2,stats12098.1,stats12098.2,stats12099.1,stats12099.2,stats12100.1,stats12100.2,stats12101.1,stats12101.2,stats12102.1,stats12102.2,stats12103.1,stats12103.2,stats12104.1,stats12104.2,stats12105.1,stats12105.2,stats12106.1,stats12106.2,stats12107.1,stats12107.2,stats12108.1,stats12108.2,stats12109.1,stats12109.2,stats12110.1,stats12110.2,stats12111.1,stats12111.2,stats12112.1,stats12112.2,stats12113.1,stats12113.2,stats12114.1,stats12114.2,stats12115.1,stats12115.2,stats12116.1,stats12116.2,stats12117.1,stats12117.2,stats12118.1,stats12118.2,stats12119.1,stats12119.2,stats12120.1,stats12120.2,stats12121.1,stats12121.2,stats12122.1,stats12122.2,stats12123.1,stats12123.2,stats12124.1,stats12124.2,stats12125.1,stats12125.2,stats12126.1,stats12126.2,stats12127.1,stats12127.2]
  decide
end PairedPathRoundCheckedRows
