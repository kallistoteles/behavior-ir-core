import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData172
import AuthenticatedBranchRoundInstructionMatrixData173
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11062 : actualRows11062=WordField.canonicalRows actualModulus 11062 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11062 : actualRows11062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11062=2892 := by core033_kernel_decide
theorem rows11063 : actualRows11063=WordField.canonicalRows actualModulus 11063 (.badd 11061 11062) := by core033_kernel_decide
theorem stats11063 : actualRows11063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11063=5388 := by core033_kernel_decide
theorem rows11064 : actualRows11064=WordField.canonicalRows actualModulus 11064 (.band 11063 1235) := by core033_kernel_decide
theorem stats11064 : actualRows11064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11064=5124 := by core033_kernel_decide
theorem rows11065 : actualRows11065=WordField.canonicalRows actualModulus 11065 (.bnot 10609) := by core033_kernel_decide
theorem stats11065 : actualRows11065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11065=6276 := by core033_kernel_decide
theorem rows11066 : actualRows11066=WordField.canonicalRows actualModulus 11066 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11066 : actualRows11066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11066=2892 := by core033_kernel_decide
theorem rows11067 : actualRows11067=WordField.canonicalRows actualModulus 11067 (.badd 11065 11066) := by core033_kernel_decide
theorem stats11067 : actualRows11067.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11067=5388 := by core033_kernel_decide
theorem rows11068 : actualRows11068=WordField.canonicalRows actualModulus 11068 (.bnot 11067) := by core033_kernel_decide
theorem stats11068 : actualRows11068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11068=6276 := by core033_kernel_decide
theorem rows11069 : actualRows11069=WordField.canonicalRows actualModulus 11069 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11069 : actualRows11069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11069=2820 := by core033_kernel_decide
theorem rows11070 : actualRows11070=WordField.canonicalRows actualModulus 11070 (.band 11068 11069) := by core033_kernel_decide
theorem stats11070 : actualRows11070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11070=5124 := by core033_kernel_decide
theorem rows11071 : actualRows11071=WordField.canonicalRows actualModulus 11071 (.bxor 11064 11070) := by core033_kernel_decide
theorem stats11071 : actualRows11071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11071=7428 := by core033_kernel_decide
theorem rows11072 : actualRows11072=WordField.canonicalRows actualModulus 11072 (.bnot 10609) := by core033_kernel_decide
theorem stats11072 : actualRows11072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11072=6276 := by core033_kernel_decide
theorem rows11073 : actualRows11073=WordField.canonicalRows actualModulus 11073 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11073 : actualRows11073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11073=2892 := by core033_kernel_decide
theorem rows11074 : actualRows11074=WordField.canonicalRows actualModulus 11074 (.badd 11072 11073) := by core033_kernel_decide
theorem stats11074 : actualRows11074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11074=5388 := by core033_kernel_decide
theorem rows11075 : actualRows11075=WordField.canonicalRows actualModulus 11075 (.band 11074 1245) := by core033_kernel_decide
theorem stats11075 : actualRows11075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11075=5124 := by core033_kernel_decide
theorem rows11076 : actualRows11076=WordField.canonicalRows actualModulus 11076 (.bnot 10609) := by core033_kernel_decide
theorem stats11076 : actualRows11076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11076=6276 := by core033_kernel_decide
theorem rows11077 : actualRows11077=WordField.canonicalRows actualModulus 11077 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11077 : actualRows11077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11077=2892 := by core033_kernel_decide
theorem rows11078 : actualRows11078=WordField.canonicalRows actualModulus 11078 (.badd 11076 11077) := by core033_kernel_decide
theorem stats11078 : actualRows11078.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11078=5388 := by core033_kernel_decide
theorem rows11079 : actualRows11079=WordField.canonicalRows actualModulus 11079 (.bnot 11078) := by core033_kernel_decide
theorem stats11079 : actualRows11079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11079=6276 := by core033_kernel_decide
theorem rows11080 : actualRows11080=WordField.canonicalRows actualModulus 11080 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11080 : actualRows11080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11080=2820 := by core033_kernel_decide
theorem rows11081 : actualRows11081=WordField.canonicalRows actualModulus 11081 (.band 11079 11080) := by core033_kernel_decide
theorem stats11081 : actualRows11081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11081=5124 := by core033_kernel_decide
theorem rows11082 : actualRows11082=WordField.canonicalRows actualModulus 11082 (.bxor 11075 11081) := by core033_kernel_decide
theorem stats11082 : actualRows11082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11082=7428 := by core033_kernel_decide
theorem rows11083 : actualRows11083=WordField.canonicalRows actualModulus 11083 (.rotr 11005 24) := by core033_kernel_decide
theorem stats11083 : actualRows11083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11083=5124 := by core033_kernel_decide
theorem rows11084 : actualRows11084=WordField.canonicalRows actualModulus 11084 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11084 : actualRows11084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11084=3972 := by core033_kernel_decide
theorem rows11085 : actualRows11085=WordField.canonicalRows actualModulus 11085 (.band 11083 11084) := by core033_kernel_decide
theorem stats11085 : actualRows11085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11085=5124 := by core033_kernel_decide
theorem rows11086 : actualRows11086=WordField.canonicalRows actualModulus 11086 (.rotr 11005 8) := by core033_kernel_decide
theorem stats11086 : actualRows11086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11086=5124 := by core033_kernel_decide
theorem rows11087 : actualRows11087=WordField.canonicalRows actualModulus 11087 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11087 : actualRows11087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11087=3972 := by core033_kernel_decide
theorem rows11088 : actualRows11088=WordField.canonicalRows actualModulus 11088 (.band 11086 11087) := by core033_kernel_decide
theorem stats11088 : actualRows11088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11088=5124 := by core033_kernel_decide
theorem rows11089 : actualRows11089=WordField.canonicalRows actualModulus 11089 (.bxor 11085 11088) := by core033_kernel_decide
theorem stats11089 : actualRows11089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11089=7428 := by core033_kernel_decide
theorem rows11090 : actualRows11090=WordField.canonicalRows actualModulus 11090 (.rotr 11016 24) := by core033_kernel_decide
theorem stats11090 : actualRows11090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11090=5124 := by core033_kernel_decide
theorem rows11091 : actualRows11091=WordField.canonicalRows actualModulus 11091 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11091 : actualRows11091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11091=3972 := by core033_kernel_decide
theorem rows11092 : actualRows11092=WordField.canonicalRows actualModulus 11092 (.band 11090 11091) := by core033_kernel_decide
theorem stats11092 : actualRows11092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11092=5124 := by core033_kernel_decide
theorem rows11093 : actualRows11093=WordField.canonicalRows actualModulus 11093 (.rotr 11016 8) := by core033_kernel_decide
theorem stats11093 : actualRows11093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11093=5124 := by core033_kernel_decide
theorem rows11094 : actualRows11094=WordField.canonicalRows actualModulus 11094 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11094 : actualRows11094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11094=3972 := by core033_kernel_decide
theorem rows11095 : actualRows11095=WordField.canonicalRows actualModulus 11095 (.band 11093 11094) := by core033_kernel_decide
theorem stats11095 : actualRows11095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11095=5124 := by core033_kernel_decide
theorem rows11096 : actualRows11096=WordField.canonicalRows actualModulus 11096 (.bxor 11092 11095) := by core033_kernel_decide
theorem stats11096 : actualRows11096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11096=7428 := by core033_kernel_decide
theorem rows11097 : actualRows11097=WordField.canonicalRows actualModulus 11097 (.rotr 11027 24) := by core033_kernel_decide
theorem stats11097 : actualRows11097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11097=5124 := by core033_kernel_decide
theorem rows11098 : actualRows11098=WordField.canonicalRows actualModulus 11098 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11098 : actualRows11098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11098=3972 := by core033_kernel_decide
theorem rows11099 : actualRows11099=WordField.canonicalRows actualModulus 11099 (.band 11097 11098) := by core033_kernel_decide
theorem stats11099 : actualRows11099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11099=5124 := by core033_kernel_decide
theorem rows11100 : actualRows11100=WordField.canonicalRows actualModulus 11100 (.rotr 11027 8) := by core033_kernel_decide
theorem stats11100 : actualRows11100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11100=5124 := by core033_kernel_decide
theorem rows11101 : actualRows11101=WordField.canonicalRows actualModulus 11101 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11101 : actualRows11101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11101=3972 := by core033_kernel_decide
theorem rows11102 : actualRows11102=WordField.canonicalRows actualModulus 11102 (.band 11100 11101) := by core033_kernel_decide
theorem stats11102 : actualRows11102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11102=5124 := by core033_kernel_decide
theorem rows11103 : actualRows11103=WordField.canonicalRows actualModulus 11103 (.bxor 11099 11102) := by core033_kernel_decide
theorem stats11103 : actualRows11103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11103=7428 := by core033_kernel_decide
theorem rows11104 : actualRows11104=WordField.canonicalRows actualModulus 11104 (.rotr 11038 24) := by core033_kernel_decide
theorem stats11104 : actualRows11104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11104=5124 := by core033_kernel_decide
theorem rows11105 : actualRows11105=WordField.canonicalRows actualModulus 11105 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11105 : actualRows11105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11105=3972 := by core033_kernel_decide
theorem rows11106 : actualRows11106=WordField.canonicalRows actualModulus 11106 (.band 11104 11105) := by core033_kernel_decide
theorem stats11106 : actualRows11106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11106=5124 := by core033_kernel_decide
theorem rows11107 : actualRows11107=WordField.canonicalRows actualModulus 11107 (.rotr 11038 8) := by core033_kernel_decide
theorem stats11107 : actualRows11107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11107=5124 := by core033_kernel_decide
theorem rows11108 : actualRows11108=WordField.canonicalRows actualModulus 11108 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11108 : actualRows11108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11108=3972 := by core033_kernel_decide
theorem rows11109 : actualRows11109=WordField.canonicalRows actualModulus 11109 (.band 11107 11108) := by core033_kernel_decide
theorem stats11109 : actualRows11109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11109=5124 := by core033_kernel_decide
theorem rows11110 : actualRows11110=WordField.canonicalRows actualModulus 11110 (.bxor 11106 11109) := by core033_kernel_decide
theorem stats11110 : actualRows11110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11110=7428 := by core033_kernel_decide
theorem rows11111 : actualRows11111=WordField.canonicalRows actualModulus 11111 (.rotr 11049 24) := by core033_kernel_decide
theorem stats11111 : actualRows11111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11111=5124 := by core033_kernel_decide
theorem rows11112 : actualRows11112=WordField.canonicalRows actualModulus 11112 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11112 : actualRows11112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11112=3972 := by core033_kernel_decide
theorem rows11113 : actualRows11113=WordField.canonicalRows actualModulus 11113 (.band 11111 11112) := by core033_kernel_decide
theorem stats11113 : actualRows11113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11113=5124 := by core033_kernel_decide
theorem rows11114 : actualRows11114=WordField.canonicalRows actualModulus 11114 (.rotr 11049 8) := by core033_kernel_decide
theorem stats11114 : actualRows11114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11114=5124 := by core033_kernel_decide
theorem rows11115 : actualRows11115=WordField.canonicalRows actualModulus 11115 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11115 : actualRows11115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11115=3972 := by core033_kernel_decide
theorem rows11116 : actualRows11116=WordField.canonicalRows actualModulus 11116 (.band 11114 11115) := by core033_kernel_decide
theorem stats11116 : actualRows11116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11116=5124 := by core033_kernel_decide
theorem rows11117 : actualRows11117=WordField.canonicalRows actualModulus 11117 (.bxor 11113 11116) := by core033_kernel_decide
theorem stats11117 : actualRows11117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11117=7428 := by core033_kernel_decide
theorem rows11118 : actualRows11118=WordField.canonicalRows actualModulus 11118 (.rotr 11060 24) := by core033_kernel_decide
theorem stats11118 : actualRows11118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11118=5124 := by core033_kernel_decide
theorem rows11119 : actualRows11119=WordField.canonicalRows actualModulus 11119 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11119 : actualRows11119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11119=3972 := by core033_kernel_decide
theorem rows11120 : actualRows11120=WordField.canonicalRows actualModulus 11120 (.band 11118 11119) := by core033_kernel_decide
theorem stats11120 : actualRows11120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11120=5124 := by core033_kernel_decide
theorem rows11121 : actualRows11121=WordField.canonicalRows actualModulus 11121 (.rotr 11060 8) := by core033_kernel_decide
theorem stats11121 : actualRows11121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11121=5124 := by core033_kernel_decide
theorem rows11122 : actualRows11122=WordField.canonicalRows actualModulus 11122 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11122 : actualRows11122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11122=3972 := by core033_kernel_decide
theorem rows11123 : actualRows11123=WordField.canonicalRows actualModulus 11123 (.band 11121 11122) := by core033_kernel_decide
theorem stats11123 : actualRows11123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11123=5124 := by core033_kernel_decide
theorem rows11124 : actualRows11124=WordField.canonicalRows actualModulus 11124 (.bxor 11120 11123) := by core033_kernel_decide
theorem stats11124 : actualRows11124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11124=7428 := by core033_kernel_decide
theorem rows11125 : actualRows11125=WordField.canonicalRows actualModulus 11125 (.rotr 11071 24) := by core033_kernel_decide
theorem stats11125 : actualRows11125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11125=5124 := by core033_kernel_decide
def partRows171 : List R1CS.Row := actualRows11062++actualRows11063++actualRows11064++actualRows11065++actualRows11066++actualRows11067++actualRows11068++actualRows11069++actualRows11070++actualRows11071++actualRows11072++actualRows11073++actualRows11074++actualRows11075++actualRows11076++actualRows11077++actualRows11078++actualRows11079++actualRows11080++actualRows11081++actualRows11082++actualRows11083++actualRows11084++actualRows11085++actualRows11086++actualRows11087++actualRows11088++actualRows11089++actualRows11090++actualRows11091++actualRows11092++actualRows11093++actualRows11094++actualRows11095++actualRows11096++actualRows11097++actualRows11098++actualRows11099++actualRows11100++actualRows11101++actualRows11102++actualRows11103++actualRows11104++actualRows11105++actualRows11106++actualRows11107++actualRows11108++actualRows11109++actualRows11110++actualRows11111++actualRows11112++actualRows11113++actualRows11114++actualRows11115++actualRows11116++actualRows11117++actualRows11118++actualRows11119++actualRows11120++actualRows11121++actualRows11122++actualRows11123++actualRows11124++actualRows11125
def partOps171 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 11061 11062,.band 11063 1235,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11065 11066,.bnot 11067,.literal (BitVec.ofNat 32 0),.band 11068 11069,.bxor 11064 11070,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11072 11073,.band 11074 1245,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 11076 11077,.bnot 11078,.literal (BitVec.ofNat 32 0),.band 11079 11080,.bxor 11075 11081,.rotr 11005 24,.literal (BitVec.ofNat 32 16711935),.band 11083 11084,.rotr 11005 8,.literal (BitVec.ofNat 32 4278255360),.band 11086 11087,.bxor 11085 11088,.rotr 11016 24,.literal (BitVec.ofNat 32 16711935),.band 11090 11091,.rotr 11016 8,.literal (BitVec.ofNat 32 4278255360),.band 11093 11094,.bxor 11092 11095,.rotr 11027 24,.literal (BitVec.ofNat 32 16711935),.band 11097 11098,.rotr 11027 8,.literal (BitVec.ofNat 32 4278255360),.band 11100 11101,.bxor 11099 11102,.rotr 11038 24,.literal (BitVec.ofNat 32 16711935),.band 11104 11105,.rotr 11038 8,.literal (BitVec.ofNat 32 4278255360),.band 11107 11108,.bxor 11106 11109,.rotr 11049 24,.literal (BitVec.ofNat 32 16711935),.band 11111 11112,.rotr 11049 8,.literal (BitVec.ofNat 32 4278255360),.band 11114 11115,.bxor 11113 11116,.rotr 11060 24,.literal (BitVec.ofNat 32 16711935),.band 11118 11119,.rotr 11060 8,.literal (BitVec.ofNat 32 4278255360),.band 11121 11122,.bxor 11120 11123,.rotr 11071 24]
theorem partExact171 : partRows171=WordField.rows actualModulus 11062 partOps171 := by
  simp only [partRows171,partOps171,WordField.rows,rows11062,rows11063,rows11064,rows11065,rows11066,rows11067,rows11068,rows11069,rows11070,rows11071,rows11072,rows11073,rows11074,rows11075,rows11076,rows11077,rows11078,rows11079,rows11080,rows11081,rows11082,rows11083,rows11084,rows11085,rows11086,rows11087,rows11088,rows11089,rows11090,rows11091,rows11092,rows11093,rows11094,rows11095,rows11096,rows11097,rows11098,rows11099,rows11100,rows11101,rows11102,rows11103,rows11104,rows11105,rows11106,rows11107,rows11108,rows11109,rows11110,rows11111,rows11112,rows11113,rows11114,rows11115,rows11116,rows11117,rows11118,rows11119,rows11120,rows11121,rows11122,rows11123,rows11124,rows11125,List.append_assoc,List.append_nil]
theorem partLength171 : partOps171.length=64 := by decide
theorem partStats171 : partRows171.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows171=325824 := by
  simp only [partRows171,List.length_append,MatrixRowBlocks.rows_weight_append,stats11062.1,stats11062.2,stats11063.1,stats11063.2,stats11064.1,stats11064.2,stats11065.1,stats11065.2,stats11066.1,stats11066.2,stats11067.1,stats11067.2,stats11068.1,stats11068.2,stats11069.1,stats11069.2,stats11070.1,stats11070.2,stats11071.1,stats11071.2,stats11072.1,stats11072.2,stats11073.1,stats11073.2,stats11074.1,stats11074.2,stats11075.1,stats11075.2,stats11076.1,stats11076.2,stats11077.1,stats11077.2,stats11078.1,stats11078.2,stats11079.1,stats11079.2,stats11080.1,stats11080.2,stats11081.1,stats11081.2,stats11082.1,stats11082.2,stats11083.1,stats11083.2,stats11084.1,stats11084.2,stats11085.1,stats11085.2,stats11086.1,stats11086.2,stats11087.1,stats11087.2,stats11088.1,stats11088.2,stats11089.1,stats11089.2,stats11090.1,stats11090.2,stats11091.1,stats11091.2,stats11092.1,stats11092.2,stats11093.1,stats11093.2,stats11094.1,stats11094.2,stats11095.1,stats11095.2,stats11096.1,stats11096.2,stats11097.1,stats11097.2,stats11098.1,stats11098.2,stats11099.1,stats11099.2,stats11100.1,stats11100.2,stats11101.1,stats11101.2,stats11102.1,stats11102.2,stats11103.1,stats11103.2,stats11104.1,stats11104.2,stats11105.1,stats11105.2,stats11106.1,stats11106.2,stats11107.1,stats11107.2,stats11108.1,stats11108.2,stats11109.1,stats11109.2,stats11110.1,stats11110.2,stats11111.1,stats11111.2,stats11112.1,stats11112.2,stats11113.1,stats11113.2,stats11114.1,stats11114.2,stats11115.1,stats11115.2,stats11116.1,stats11116.2,stats11117.1,stats11117.2,stats11118.1,stats11118.2,stats11119.1,stats11119.2,stats11120.1,stats11120.2,stats11121.1,stats11121.2,stats11122.1,stats11122.2,stats11123.1,stats11123.2,stats11124.1,stats11124.2,stats11125.1,stats11125.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
