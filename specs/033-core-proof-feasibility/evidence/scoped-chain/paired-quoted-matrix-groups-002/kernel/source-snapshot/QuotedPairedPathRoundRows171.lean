import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData172
import PairedPathRoundInstructionMatrixData173
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11040 : actualRows11040=WordField.canonicalRows actualModulus 11040 (.bxor 11037 11039) := by core033_kernel_decide
theorem stats11040 : actualRows11040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11040=7428 := by core033_kernel_decide
theorem rows11041 : actualRows11041=WordField.canonicalRows actualModulus 11041 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11041 : actualRows11041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11041=2964 := by core033_kernel_decide
theorem rows11042 : actualRows11042=WordField.canonicalRows actualModulus 11042 (.bxor 442 11041) := by core033_kernel_decide
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
theorem rows11051 : actualRows11051=WordField.canonicalRows actualModulus 11051 (.bxor 11049 11050) := by core033_kernel_decide
theorem stats11051 : actualRows11051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11051=7428 := by core033_kernel_decide
theorem rows11052 : actualRows11052=WordField.canonicalRows actualModulus 11052 (.bnot 11051) := by core033_kernel_decide
theorem stats11052 : actualRows11052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11052=6276 := by core033_kernel_decide
theorem rows11053 : actualRows11053=WordField.canonicalRows actualModulus 11053 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11053 : actualRows11053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11053=2892 := by core033_kernel_decide
theorem rows11054 : actualRows11054=WordField.canonicalRows actualModulus 11054 (.badd 11052 11053) := by core033_kernel_decide
theorem stats11054 : actualRows11054.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11054=5388 := by core033_kernel_decide
theorem rows11055 : actualRows11055=WordField.canonicalRows actualModulus 11055 (.bnot 11054) := by core033_kernel_decide
theorem stats11055 : actualRows11055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11055=6276 := by core033_kernel_decide
theorem rows11056 : actualRows11056=WordField.canonicalRows actualModulus 11056 (.band 11055 671) := by core033_kernel_decide
theorem stats11056 : actualRows11056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11056=5124 := by core033_kernel_decide
theorem rows11057 : actualRows11057=WordField.canonicalRows actualModulus 11057 (.bxor 11030 11056) := by core033_kernel_decide
theorem stats11057 : actualRows11057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11057=7428 := by core033_kernel_decide
theorem rows11058 : actualRows11058=WordField.canonicalRows actualModulus 11058 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11058 : actualRows11058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11058=2964 := by core033_kernel_decide
theorem rows11059 : actualRows11059=WordField.canonicalRows actualModulus 11059 (.bxor 442 11058) := by core033_kernel_decide
theorem stats11059 : actualRows11059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11059=7428 := by core033_kernel_decide
theorem rows11060 : actualRows11060=WordField.canonicalRows actualModulus 11060 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11060 : actualRows11060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11060=2820 := by core033_kernel_decide
theorem rows11061 : actualRows11061=WordField.canonicalRows actualModulus 11061 (.bnot 11060) := by core033_kernel_decide
theorem stats11061 : actualRows11061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11061=6276 := by core033_kernel_decide
theorem rows11062 : actualRows11062=WordField.canonicalRows actualModulus 11062 (.band 11059 11061) := by core033_kernel_decide
theorem stats11062 : actualRows11062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11062=5124 := by core033_kernel_decide
theorem rows11063 : actualRows11063=WordField.canonicalRows actualModulus 11063 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11063 : actualRows11063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11063=2964 := by core033_kernel_decide
theorem rows11064 : actualRows11064=WordField.canonicalRows actualModulus 11064 (.bxor 442 11063) := by core033_kernel_decide
theorem stats11064 : actualRows11064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11064=7428 := by core033_kernel_decide
theorem rows11065 : actualRows11065=WordField.canonicalRows actualModulus 11065 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11065 : actualRows11065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11065=2820 := by core033_kernel_decide
theorem rows11066 : actualRows11066=WordField.canonicalRows actualModulus 11066 (.bnot 11065) := by core033_kernel_decide
theorem stats11066 : actualRows11066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11066=6276 := by core033_kernel_decide
theorem rows11067 : actualRows11067=WordField.canonicalRows actualModulus 11067 (.bxor 11064 11066) := by core033_kernel_decide
theorem stats11067 : actualRows11067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11067=7428 := by core033_kernel_decide
theorem rows11068 : actualRows11068=WordField.canonicalRows actualModulus 11068 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11068 : actualRows11068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11068=2964 := by core033_kernel_decide
theorem rows11069 : actualRows11069=WordField.canonicalRows actualModulus 11069 (.bxor 442 11068) := by core033_kernel_decide
theorem stats11069 : actualRows11069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11069=7428 := by core033_kernel_decide
theorem rows11070 : actualRows11070=WordField.canonicalRows actualModulus 11070 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11070 : actualRows11070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11070=2820 := by core033_kernel_decide
theorem rows11071 : actualRows11071=WordField.canonicalRows actualModulus 11071 (.bnot 11070) := by core033_kernel_decide
theorem stats11071 : actualRows11071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11071=6276 := by core033_kernel_decide
theorem rows11072 : actualRows11072=WordField.canonicalRows actualModulus 11072 (.badd 11069 11071) := by core033_kernel_decide
theorem stats11072 : actualRows11072.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11072=5388 := by core033_kernel_decide
theorem rows11073 : actualRows11073=WordField.canonicalRows actualModulus 11073 (.bnot 11072) := by core033_kernel_decide
theorem stats11073 : actualRows11073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11073=6276 := by core033_kernel_decide
theorem rows11074 : actualRows11074=WordField.canonicalRows actualModulus 11074 (.band 11067 11073) := by core033_kernel_decide
theorem stats11074 : actualRows11074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11074=5124 := by core033_kernel_decide
theorem rows11075 : actualRows11075=WordField.canonicalRows actualModulus 11075 (.bxor 11062 11074) := by core033_kernel_decide
theorem stats11075 : actualRows11075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11075=7428 := by core033_kernel_decide
theorem rows11076 : actualRows11076=WordField.canonicalRows actualModulus 11076 (.shr 11075 31) := by core033_kernel_decide
theorem stats11076 : actualRows11076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11076=2892 := by core033_kernel_decide
theorem rows11077 : actualRows11077=WordField.canonicalRows actualModulus 11077 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11077 : actualRows11077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11077=2892 := by core033_kernel_decide
theorem rows11078 : actualRows11078=WordField.canonicalRows actualModulus 11078 (.bxor 11076 11077) := by core033_kernel_decide
theorem stats11078 : actualRows11078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11078=7428 := by core033_kernel_decide
theorem rows11079 : actualRows11079=WordField.canonicalRows actualModulus 11079 (.bnot 11078) := by core033_kernel_decide
theorem stats11079 : actualRows11079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11079=6276 := by core033_kernel_decide
theorem rows11080 : actualRows11080=WordField.canonicalRows actualModulus 11080 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11080 : actualRows11080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11080=2892 := by core033_kernel_decide
theorem rows11081 : actualRows11081=WordField.canonicalRows actualModulus 11081 (.badd 11079 11080) := by core033_kernel_decide
theorem stats11081 : actualRows11081.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11081=5388 := by core033_kernel_decide
theorem rows11082 : actualRows11082=WordField.canonicalRows actualModulus 11082 (.band 11081 10003) := by core033_kernel_decide
theorem stats11082 : actualRows11082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11082=5124 := by core033_kernel_decide
theorem rows11083 : actualRows11083=WordField.canonicalRows actualModulus 11083 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11083 : actualRows11083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11083=2964 := by core033_kernel_decide
theorem rows11084 : actualRows11084=WordField.canonicalRows actualModulus 11084 (.bxor 442 11083) := by core033_kernel_decide
theorem stats11084 : actualRows11084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11084=7428 := by core033_kernel_decide
theorem rows11085 : actualRows11085=WordField.canonicalRows actualModulus 11085 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11085 : actualRows11085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11085=2820 := by core033_kernel_decide
theorem rows11086 : actualRows11086=WordField.canonicalRows actualModulus 11086 (.bnot 11085) := by core033_kernel_decide
theorem stats11086 : actualRows11086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11086=6276 := by core033_kernel_decide
theorem rows11087 : actualRows11087=WordField.canonicalRows actualModulus 11087 (.band 11084 11086) := by core033_kernel_decide
theorem stats11087 : actualRows11087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11087=5124 := by core033_kernel_decide
theorem rows11088 : actualRows11088=WordField.canonicalRows actualModulus 11088 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11088 : actualRows11088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11088=2964 := by core033_kernel_decide
theorem rows11089 : actualRows11089=WordField.canonicalRows actualModulus 11089 (.bxor 442 11088) := by core033_kernel_decide
theorem stats11089 : actualRows11089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11089=7428 := by core033_kernel_decide
theorem rows11090 : actualRows11090=WordField.canonicalRows actualModulus 11090 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11090 : actualRows11090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11090=2820 := by core033_kernel_decide
theorem rows11091 : actualRows11091=WordField.canonicalRows actualModulus 11091 (.bnot 11090) := by core033_kernel_decide
theorem stats11091 : actualRows11091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11091=6276 := by core033_kernel_decide
theorem rows11092 : actualRows11092=WordField.canonicalRows actualModulus 11092 (.bxor 11089 11091) := by core033_kernel_decide
theorem stats11092 : actualRows11092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11092=7428 := by core033_kernel_decide
theorem rows11093 : actualRows11093=WordField.canonicalRows actualModulus 11093 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11093 : actualRows11093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11093=2964 := by core033_kernel_decide
theorem rows11094 : actualRows11094=WordField.canonicalRows actualModulus 11094 (.bxor 442 11093) := by core033_kernel_decide
theorem stats11094 : actualRows11094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11094=7428 := by core033_kernel_decide
theorem rows11095 : actualRows11095=WordField.canonicalRows actualModulus 11095 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11095 : actualRows11095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11095=2820 := by core033_kernel_decide
theorem rows11096 : actualRows11096=WordField.canonicalRows actualModulus 11096 (.bnot 11095) := by core033_kernel_decide
theorem stats11096 : actualRows11096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11096=6276 := by core033_kernel_decide
theorem rows11097 : actualRows11097=WordField.canonicalRows actualModulus 11097 (.badd 11094 11096) := by core033_kernel_decide
theorem stats11097 : actualRows11097.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11097=5388 := by core033_kernel_decide
theorem rows11098 : actualRows11098=WordField.canonicalRows actualModulus 11098 (.bnot 11097) := by core033_kernel_decide
theorem stats11098 : actualRows11098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11098=6276 := by core033_kernel_decide
theorem rows11099 : actualRows11099=WordField.canonicalRows actualModulus 11099 (.band 11092 11098) := by core033_kernel_decide
theorem stats11099 : actualRows11099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11099=5124 := by core033_kernel_decide
theorem rows11100 : actualRows11100=WordField.canonicalRows actualModulus 11100 (.bxor 11087 11099) := by core033_kernel_decide
theorem stats11100 : actualRows11100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11100=7428 := by core033_kernel_decide
theorem rows11101 : actualRows11101=WordField.canonicalRows actualModulus 11101 (.shr 11100 31) := by core033_kernel_decide
theorem stats11101 : actualRows11101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11101=2892 := by core033_kernel_decide
theorem rows11102 : actualRows11102=WordField.canonicalRows actualModulus 11102 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11102 : actualRows11102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11102=2892 := by core033_kernel_decide
theorem rows11103 : actualRows11103=WordField.canonicalRows actualModulus 11103 (.bxor 11101 11102) := by core033_kernel_decide
theorem stats11103 : actualRows11103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11103=7428 := by core033_kernel_decide
def partRows171 : List R1CS.Row := actualRows11040++actualRows11041++actualRows11042++actualRows11043++actualRows11044++actualRows11045++actualRows11046++actualRows11047++actualRows11048++actualRows11049++actualRows11050++actualRows11051++actualRows11052++actualRows11053++actualRows11054++actualRows11055++actualRows11056++actualRows11057++actualRows11058++actualRows11059++actualRows11060++actualRows11061++actualRows11062++actualRows11063++actualRows11064++actualRows11065++actualRows11066++actualRows11067++actualRows11068++actualRows11069++actualRows11070++actualRows11071++actualRows11072++actualRows11073++actualRows11074++actualRows11075++actualRows11076++actualRows11077++actualRows11078++actualRows11079++actualRows11080++actualRows11081++actualRows11082++actualRows11083++actualRows11084++actualRows11085++actualRows11086++actualRows11087++actualRows11088++actualRows11089++actualRows11090++actualRows11091++actualRows11092++actualRows11093++actualRows11094++actualRows11095++actualRows11096++actualRows11097++actualRows11098++actualRows11099++actualRows11100++actualRows11101++actualRows11102++actualRows11103
def partOps171 : List WordIR.Op := [.bxor 11037 11039,.literal (BitVec.ofNat 32 3),.bxor 442 11041,.literal (BitVec.ofNat 32 0),.bnot 11043,.badd 11042 11044,.bnot 11045,.band 11040 11046,.bxor 11035 11047,.shr 11048 31,.literal (BitVec.ofNat 32 1),.bxor 11049 11050,.bnot 11051,.literal (BitVec.ofNat 32 1),.badd 11052 11053,.bnot 11054,.band 11055 671,.bxor 11030 11056,.literal (BitVec.ofNat 32 3),.bxor 442 11058,.literal (BitVec.ofNat 32 0),.bnot 11060,.band 11059 11061,.literal (BitVec.ofNat 32 3),.bxor 442 11063,.literal (BitVec.ofNat 32 0),.bnot 11065,.bxor 11064 11066,.literal (BitVec.ofNat 32 3),.bxor 442 11068,.literal (BitVec.ofNat 32 0),.bnot 11070,.badd 11069 11071,.bnot 11072,.band 11067 11073,.bxor 11062 11074,.shr 11075 31,.literal (BitVec.ofNat 32 1),.bxor 11076 11077,.bnot 11078,.literal (BitVec.ofNat 32 1),.badd 11079 11080,.band 11081 10003,.literal (BitVec.ofNat 32 3),.bxor 442 11083,.literal (BitVec.ofNat 32 0),.bnot 11085,.band 11084 11086,.literal (BitVec.ofNat 32 3),.bxor 442 11088,.literal (BitVec.ofNat 32 0),.bnot 11090,.bxor 11089 11091,.literal (BitVec.ofNat 32 3),.bxor 442 11093,.literal (BitVec.ofNat 32 0),.bnot 11095,.badd 11094 11096,.bnot 11097,.band 11092 11098,.bxor 11087 11099,.shr 11100 31,.literal (BitVec.ofNat 32 1),.bxor 11101 11102]
theorem partExact171 : partRows171=WordField.rows actualModulus 11040 partOps171 := by
  simp only [partRows171,partOps171,WordField.rows,rows11040,rows11041,rows11042,rows11043,rows11044,rows11045,rows11046,rows11047,rows11048,rows11049,rows11050,rows11051,rows11052,rows11053,rows11054,rows11055,rows11056,rows11057,rows11058,rows11059,rows11060,rows11061,rows11062,rows11063,rows11064,rows11065,rows11066,rows11067,rows11068,rows11069,rows11070,rows11071,rows11072,rows11073,rows11074,rows11075,rows11076,rows11077,rows11078,rows11079,rows11080,rows11081,rows11082,rows11083,rows11084,rows11085,rows11086,rows11087,rows11088,rows11089,rows11090,rows11091,rows11092,rows11093,rows11094,rows11095,rows11096,rows11097,rows11098,rows11099,rows11100,rows11101,rows11102,rows11103,List.append_assoc,List.append_nil]
theorem partLength171 : partOps171.length=64 := by decide
theorem partStats171 : partRows171.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows171=334296 := by
  simp only [partRows171,List.length_append,MatrixRowBlocks.rows_weight_append,stats11040.1,stats11040.2,stats11041.1,stats11041.2,stats11042.1,stats11042.2,stats11043.1,stats11043.2,stats11044.1,stats11044.2,stats11045.1,stats11045.2,stats11046.1,stats11046.2,stats11047.1,stats11047.2,stats11048.1,stats11048.2,stats11049.1,stats11049.2,stats11050.1,stats11050.2,stats11051.1,stats11051.2,stats11052.1,stats11052.2,stats11053.1,stats11053.2,stats11054.1,stats11054.2,stats11055.1,stats11055.2,stats11056.1,stats11056.2,stats11057.1,stats11057.2,stats11058.1,stats11058.2,stats11059.1,stats11059.2,stats11060.1,stats11060.2,stats11061.1,stats11061.2,stats11062.1,stats11062.2,stats11063.1,stats11063.2,stats11064.1,stats11064.2,stats11065.1,stats11065.2,stats11066.1,stats11066.2,stats11067.1,stats11067.2,stats11068.1,stats11068.2,stats11069.1,stats11069.2,stats11070.1,stats11070.2,stats11071.1,stats11071.2,stats11072.1,stats11072.2,stats11073.1,stats11073.2,stats11074.1,stats11074.2,stats11075.1,stats11075.2,stats11076.1,stats11076.2,stats11077.1,stats11077.2,stats11078.1,stats11078.2,stats11079.1,stats11079.2,stats11080.1,stats11080.2,stats11081.1,stats11081.2,stats11082.1,stats11082.2,stats11083.1,stats11083.2,stats11084.1,stats11084.2,stats11085.1,stats11085.2,stats11086.1,stats11086.2,stats11087.1,stats11087.2,stats11088.1,stats11088.2,stats11089.1,stats11089.2,stats11090.1,stats11090.2,stats11091.1,stats11091.2,stats11092.1,stats11092.2,stats11093.1,stats11093.2,stats11094.1,stats11094.2,stats11095.1,stats11095.2,stats11096.1,stats11096.2,stats11097.1,stats11097.2,stats11098.1,stats11098.2,stats11099.1,stats11099.2,stats11100.1,stats11100.2,stats11101.1,stats11101.2,stats11102.1,stats11102.2,stats11103.1,stats11103.2]
  decide
end QuotedPairedPathRoundCheckedRows
