import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData48
import FrameHashControllerInstructionMatrixData49
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3115 : actualRows3115=WordField.canonicalRows actualModulus 3115 (.shr 3114 31) := by core033_kernel_decide
theorem stats3115 : actualRows3115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3115=2892 := by core033_kernel_decide
theorem rows3116 : actualRows3116=WordField.canonicalRows actualModulus 3116 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3116 : actualRows3116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3116=2892 := by core033_kernel_decide
theorem rows3117 : actualRows3117=WordField.canonicalRows actualModulus 3117 (.bxor 3115 3116) := by core033_kernel_decide
theorem stats3117 : actualRows3117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3117=7428 := by core033_kernel_decide
theorem rows3118 : actualRows3118=WordField.canonicalRows actualModulus 3118 (.bnot 3117) := by core033_kernel_decide
theorem stats3118 : actualRows3118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3118=6276 := by core033_kernel_decide
theorem rows3119 : actualRows3119=WordField.canonicalRows actualModulus 3119 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3119 : actualRows3119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3119=2892 := by core033_kernel_decide
theorem rows3120 : actualRows3120=WordField.canonicalRows actualModulus 3120 (.badd 3118 3119) := by core033_kernel_decide
theorem stats3120 : actualRows3120.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3120=5388 := by core033_kernel_decide
theorem rows3121 : actualRows3121=WordField.canonicalRows actualModulus 3121 (.bnot 3120) := by core033_kernel_decide
theorem stats3121 : actualRows3121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3121=6276 := by core033_kernel_decide
theorem rows3122 : actualRows3122=WordField.canonicalRows actualModulus 3122 (.band 3121 857) := by core033_kernel_decide
theorem stats3122 : actualRows3122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3122=5124 := by core033_kernel_decide
theorem rows3123 : actualRows3123=WordField.canonicalRows actualModulus 3123 (.bxor 3096 3122) := by core033_kernel_decide
theorem stats3123 : actualRows3123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3123=7428 := by core033_kernel_decide
theorem rows3124 : actualRows3124=WordField.canonicalRows actualModulus 3124 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3124 : actualRows3124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3124=2892 := by core033_kernel_decide
theorem rows3125 : actualRows3125=WordField.canonicalRows actualModulus 3125 (.bxor 0 3124) := by core033_kernel_decide
theorem stats3125 : actualRows3125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3125=7428 := by core033_kernel_decide
theorem rows3126 : actualRows3126=WordField.canonicalRows actualModulus 3126 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3126 : actualRows3126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3126=2820 := by core033_kernel_decide
theorem rows3127 : actualRows3127=WordField.canonicalRows actualModulus 3127 (.bnot 3126) := by core033_kernel_decide
theorem stats3127 : actualRows3127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3127=6276 := by core033_kernel_decide
theorem rows3128 : actualRows3128=WordField.canonicalRows actualModulus 3128 (.band 3125 3127) := by core033_kernel_decide
theorem stats3128 : actualRows3128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3128=5124 := by core033_kernel_decide
theorem rows3129 : actualRows3129=WordField.canonicalRows actualModulus 3129 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3129 : actualRows3129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3129=2892 := by core033_kernel_decide
theorem rows3130 : actualRows3130=WordField.canonicalRows actualModulus 3130 (.bxor 0 3129) := by core033_kernel_decide
theorem stats3130 : actualRows3130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3130=7428 := by core033_kernel_decide
theorem rows3131 : actualRows3131=WordField.canonicalRows actualModulus 3131 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3131 : actualRows3131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3131=2820 := by core033_kernel_decide
theorem rows3132 : actualRows3132=WordField.canonicalRows actualModulus 3132 (.bnot 3131) := by core033_kernel_decide
theorem stats3132 : actualRows3132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3132=6276 := by core033_kernel_decide
theorem rows3133 : actualRows3133=WordField.canonicalRows actualModulus 3133 (.bxor 3130 3132) := by core033_kernel_decide
theorem stats3133 : actualRows3133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3133=7428 := by core033_kernel_decide
theorem rows3134 : actualRows3134=WordField.canonicalRows actualModulus 3134 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3134 : actualRows3134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3134=2892 := by core033_kernel_decide
theorem rows3135 : actualRows3135=WordField.canonicalRows actualModulus 3135 (.bxor 0 3134) := by core033_kernel_decide
theorem stats3135 : actualRows3135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3135=7428 := by core033_kernel_decide
theorem rows3136 : actualRows3136=WordField.canonicalRows actualModulus 3136 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3136 : actualRows3136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3136=2820 := by core033_kernel_decide
theorem rows3137 : actualRows3137=WordField.canonicalRows actualModulus 3137 (.bnot 3136) := by core033_kernel_decide
theorem stats3137 : actualRows3137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3137=6276 := by core033_kernel_decide
theorem rows3138 : actualRows3138=WordField.canonicalRows actualModulus 3138 (.badd 3135 3137) := by core033_kernel_decide
theorem stats3138 : actualRows3138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3138=5388 := by core033_kernel_decide
theorem rows3139 : actualRows3139=WordField.canonicalRows actualModulus 3139 (.bnot 3138) := by core033_kernel_decide
theorem stats3139 : actualRows3139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3139=6276 := by core033_kernel_decide
theorem rows3140 : actualRows3140=WordField.canonicalRows actualModulus 3140 (.band 3133 3139) := by core033_kernel_decide
theorem stats3140 : actualRows3140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3140=5124 := by core033_kernel_decide
theorem rows3141 : actualRows3141=WordField.canonicalRows actualModulus 3141 (.bxor 3128 3140) := by core033_kernel_decide
theorem stats3141 : actualRows3141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3141=7428 := by core033_kernel_decide
theorem rows3142 : actualRows3142=WordField.canonicalRows actualModulus 3142 (.shr 3141 31) := by core033_kernel_decide
theorem stats3142 : actualRows3142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3142=2892 := by core033_kernel_decide
theorem rows3143 : actualRows3143=WordField.canonicalRows actualModulus 3143 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3143 : actualRows3143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3143=2892 := by core033_kernel_decide
theorem rows3144 : actualRows3144=WordField.canonicalRows actualModulus 3144 (.bxor 3142 3143) := by core033_kernel_decide
theorem stats3144 : actualRows3144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3144=7428 := by core033_kernel_decide
theorem rows3145 : actualRows3145=WordField.canonicalRows actualModulus 3145 (.bnot 3144) := by core033_kernel_decide
theorem stats3145 : actualRows3145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3145=6276 := by core033_kernel_decide
theorem rows3146 : actualRows3146=WordField.canonicalRows actualModulus 3146 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3146 : actualRows3146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3146=2892 := by core033_kernel_decide
theorem rows3147 : actualRows3147=WordField.canonicalRows actualModulus 3147 (.badd 3145 3146) := by core033_kernel_decide
theorem stats3147 : actualRows3147.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3147=5388 := by core033_kernel_decide
theorem rows3148 : actualRows3148=WordField.canonicalRows actualModulus 3148 (.band 3147 1052) := by core033_kernel_decide
theorem stats3148 : actualRows3148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3148=5124 := by core033_kernel_decide
theorem rows3149 : actualRows3149=WordField.canonicalRows actualModulus 3149 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3149 : actualRows3149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3149=2892 := by core033_kernel_decide
theorem rows3150 : actualRows3150=WordField.canonicalRows actualModulus 3150 (.bxor 0 3149) := by core033_kernel_decide
theorem stats3150 : actualRows3150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3150=7428 := by core033_kernel_decide
theorem rows3151 : actualRows3151=WordField.canonicalRows actualModulus 3151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3151 : actualRows3151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3151=2820 := by core033_kernel_decide
theorem rows3152 : actualRows3152=WordField.canonicalRows actualModulus 3152 (.bnot 3151) := by core033_kernel_decide
theorem stats3152 : actualRows3152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3152=6276 := by core033_kernel_decide
theorem rows3153 : actualRows3153=WordField.canonicalRows actualModulus 3153 (.band 3150 3152) := by core033_kernel_decide
theorem stats3153 : actualRows3153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3153=5124 := by core033_kernel_decide
theorem rows3154 : actualRows3154=WordField.canonicalRows actualModulus 3154 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3154 : actualRows3154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3154=2892 := by core033_kernel_decide
theorem rows3155 : actualRows3155=WordField.canonicalRows actualModulus 3155 (.bxor 0 3154) := by core033_kernel_decide
theorem stats3155 : actualRows3155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3155=7428 := by core033_kernel_decide
theorem rows3156 : actualRows3156=WordField.canonicalRows actualModulus 3156 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3156 : actualRows3156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3156=2820 := by core033_kernel_decide
theorem rows3157 : actualRows3157=WordField.canonicalRows actualModulus 3157 (.bnot 3156) := by core033_kernel_decide
theorem stats3157 : actualRows3157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3157=6276 := by core033_kernel_decide
theorem rows3158 : actualRows3158=WordField.canonicalRows actualModulus 3158 (.bxor 3155 3157) := by core033_kernel_decide
theorem stats3158 : actualRows3158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3158=7428 := by core033_kernel_decide
theorem rows3159 : actualRows3159=WordField.canonicalRows actualModulus 3159 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3159 : actualRows3159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3159=2892 := by core033_kernel_decide
theorem rows3160 : actualRows3160=WordField.canonicalRows actualModulus 3160 (.bxor 0 3159) := by core033_kernel_decide
theorem stats3160 : actualRows3160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3160=7428 := by core033_kernel_decide
theorem rows3161 : actualRows3161=WordField.canonicalRows actualModulus 3161 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3161 : actualRows3161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3161=2820 := by core033_kernel_decide
theorem rows3162 : actualRows3162=WordField.canonicalRows actualModulus 3162 (.bnot 3161) := by core033_kernel_decide
theorem stats3162 : actualRows3162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3162=6276 := by core033_kernel_decide
theorem rows3163 : actualRows3163=WordField.canonicalRows actualModulus 3163 (.badd 3160 3162) := by core033_kernel_decide
theorem stats3163 : actualRows3163.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3163=5388 := by core033_kernel_decide
theorem rows3164 : actualRows3164=WordField.canonicalRows actualModulus 3164 (.bnot 3163) := by core033_kernel_decide
theorem stats3164 : actualRows3164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3164=6276 := by core033_kernel_decide
theorem rows3165 : actualRows3165=WordField.canonicalRows actualModulus 3165 (.band 3158 3164) := by core033_kernel_decide
theorem stats3165 : actualRows3165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3165=5124 := by core033_kernel_decide
theorem rows3166 : actualRows3166=WordField.canonicalRows actualModulus 3166 (.bxor 3153 3165) := by core033_kernel_decide
theorem stats3166 : actualRows3166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3166=7428 := by core033_kernel_decide
theorem rows3167 : actualRows3167=WordField.canonicalRows actualModulus 3167 (.shr 3166 31) := by core033_kernel_decide
theorem stats3167 : actualRows3167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3167=2892 := by core033_kernel_decide
theorem rows3168 : actualRows3168=WordField.canonicalRows actualModulus 3168 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3168 : actualRows3168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3168=2892 := by core033_kernel_decide
theorem rows3169 : actualRows3169=WordField.canonicalRows actualModulus 3169 (.bxor 3167 3168) := by core033_kernel_decide
theorem stats3169 : actualRows3169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3169=7428 := by core033_kernel_decide
theorem rows3170 : actualRows3170=WordField.canonicalRows actualModulus 3170 (.bnot 3169) := by core033_kernel_decide
theorem stats3170 : actualRows3170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3170=6276 := by core033_kernel_decide
theorem rows3171 : actualRows3171=WordField.canonicalRows actualModulus 3171 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3171 : actualRows3171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3171=2892 := by core033_kernel_decide
theorem rows3172 : actualRows3172=WordField.canonicalRows actualModulus 3172 (.badd 3170 3171) := by core033_kernel_decide
theorem stats3172 : actualRows3172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3172=5388 := by core033_kernel_decide
theorem rows3173 : actualRows3173=WordField.canonicalRows actualModulus 3173 (.bnot 3172) := by core033_kernel_decide
theorem stats3173 : actualRows3173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3173=6276 := by core033_kernel_decide
theorem rows3174 : actualRows3174=WordField.canonicalRows actualModulus 3174 (.band 3173 860) := by core033_kernel_decide
theorem stats3174 : actualRows3174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3174=5124 := by core033_kernel_decide
theorem rows3175 : actualRows3175=WordField.canonicalRows actualModulus 3175 (.bxor 3148 3174) := by core033_kernel_decide
theorem stats3175 : actualRows3175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3175=7428 := by core033_kernel_decide
theorem rows3176 : actualRows3176=WordField.canonicalRows actualModulus 3176 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3176 : actualRows3176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3176=2892 := by core033_kernel_decide
theorem rows3177 : actualRows3177=WordField.canonicalRows actualModulus 3177 (.bxor 0 3176) := by core033_kernel_decide
theorem stats3177 : actualRows3177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3177=7428 := by core033_kernel_decide
theorem rows3178 : actualRows3178=WordField.canonicalRows actualModulus 3178 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3178 : actualRows3178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3178=2820 := by core033_kernel_decide
def partRows48 : List R1CS.Row := actualRows3115++actualRows3116++actualRows3117++actualRows3118++actualRows3119++actualRows3120++actualRows3121++actualRows3122++actualRows3123++actualRows3124++actualRows3125++actualRows3126++actualRows3127++actualRows3128++actualRows3129++actualRows3130++actualRows3131++actualRows3132++actualRows3133++actualRows3134++actualRows3135++actualRows3136++actualRows3137++actualRows3138++actualRows3139++actualRows3140++actualRows3141++actualRows3142++actualRows3143++actualRows3144++actualRows3145++actualRows3146++actualRows3147++actualRows3148++actualRows3149++actualRows3150++actualRows3151++actualRows3152++actualRows3153++actualRows3154++actualRows3155++actualRows3156++actualRows3157++actualRows3158++actualRows3159++actualRows3160++actualRows3161++actualRows3162++actualRows3163++actualRows3164++actualRows3165++actualRows3166++actualRows3167++actualRows3168++actualRows3169++actualRows3170++actualRows3171++actualRows3172++actualRows3173++actualRows3174++actualRows3175++actualRows3176++actualRows3177++actualRows3178
def partOps48 : List WordIR.Op := [.shr 3114 31,.literal (BitVec.ofNat 32 1),.bxor 3115 3116,.bnot 3117,.literal (BitVec.ofNat 32 1),.badd 3118 3119,.bnot 3120,.band 3121 857,.bxor 3096 3122,.literal (BitVec.ofNat 32 2),.bxor 0 3124,.literal (BitVec.ofNat 32 0),.bnot 3126,.band 3125 3127,.literal (BitVec.ofNat 32 2),.bxor 0 3129,.literal (BitVec.ofNat 32 0),.bnot 3131,.bxor 3130 3132,.literal (BitVec.ofNat 32 2),.bxor 0 3134,.literal (BitVec.ofNat 32 0),.bnot 3136,.badd 3135 3137,.bnot 3138,.band 3133 3139,.bxor 3128 3140,.shr 3141 31,.literal (BitVec.ofNat 32 1),.bxor 3142 3143,.bnot 3144,.literal (BitVec.ofNat 32 1),.badd 3145 3146,.band 3147 1052,.literal (BitVec.ofNat 32 2),.bxor 0 3149,.literal (BitVec.ofNat 32 0),.bnot 3151,.band 3150 3152,.literal (BitVec.ofNat 32 2),.bxor 0 3154,.literal (BitVec.ofNat 32 0),.bnot 3156,.bxor 3155 3157,.literal (BitVec.ofNat 32 2),.bxor 0 3159,.literal (BitVec.ofNat 32 0),.bnot 3161,.badd 3160 3162,.bnot 3163,.band 3158 3164,.bxor 3153 3165,.shr 3166 31,.literal (BitVec.ofNat 32 1),.bxor 3167 3168,.bnot 3169,.literal (BitVec.ofNat 32 1),.badd 3170 3171,.bnot 3172,.band 3173 860,.bxor 3148 3174,.literal (BitVec.ofNat 32 2),.bxor 0 3176,.literal (BitVec.ofNat 32 0)]
theorem partExact48 : partRows48=WordField.rows actualModulus 3115 partOps48 := by
  simp only [partRows48,partOps48,WordField.rows,rows3115,rows3116,rows3117,rows3118,rows3119,rows3120,rows3121,rows3122,rows3123,rows3124,rows3125,rows3126,rows3127,rows3128,rows3129,rows3130,rows3131,rows3132,rows3133,rows3134,rows3135,rows3136,rows3137,rows3138,rows3139,rows3140,rows3141,rows3142,rows3143,rows3144,rows3145,rows3146,rows3147,rows3148,rows3149,rows3150,rows3151,rows3152,rows3153,rows3154,rows3155,rows3156,rows3157,rows3158,rows3159,rows3160,rows3161,rows3162,rows3163,rows3164,rows3165,rows3166,rows3167,rows3168,rows3169,rows3170,rows3171,rows3172,rows3173,rows3174,rows3175,rows3176,rows3177,rows3178,List.append_assoc,List.append_nil]
theorem partLength48 : partOps48.length=64 := by decide
theorem partStats48 : partRows48.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows48=329256 := by
  simp only [partRows48,List.length_append,MatrixRowBlocks.rows_weight_append,stats3115.1,stats3115.2,stats3116.1,stats3116.2,stats3117.1,stats3117.2,stats3118.1,stats3118.2,stats3119.1,stats3119.2,stats3120.1,stats3120.2,stats3121.1,stats3121.2,stats3122.1,stats3122.2,stats3123.1,stats3123.2,stats3124.1,stats3124.2,stats3125.1,stats3125.2,stats3126.1,stats3126.2,stats3127.1,stats3127.2,stats3128.1,stats3128.2,stats3129.1,stats3129.2,stats3130.1,stats3130.2,stats3131.1,stats3131.2,stats3132.1,stats3132.2,stats3133.1,stats3133.2,stats3134.1,stats3134.2,stats3135.1,stats3135.2,stats3136.1,stats3136.2,stats3137.1,stats3137.2,stats3138.1,stats3138.2,stats3139.1,stats3139.2,stats3140.1,stats3140.2,stats3141.1,stats3141.2,stats3142.1,stats3142.2,stats3143.1,stats3143.2,stats3144.1,stats3144.2,stats3145.1,stats3145.2,stats3146.1,stats3146.2,stats3147.1,stats3147.2,stats3148.1,stats3148.2,stats3149.1,stats3149.2,stats3150.1,stats3150.2,stats3151.1,stats3151.2,stats3152.1,stats3152.2,stats3153.1,stats3153.2,stats3154.1,stats3154.2,stats3155.1,stats3155.2,stats3156.1,stats3156.2,stats3157.1,stats3157.2,stats3158.1,stats3158.2,stats3159.1,stats3159.2,stats3160.1,stats3160.2,stats3161.1,stats3161.2,stats3162.1,stats3162.2,stats3163.1,stats3163.2,stats3164.1,stats3164.2,stats3165.1,stats3165.2,stats3166.1,stats3166.2,stats3167.1,stats3167.2,stats3168.1,stats3168.2,stats3169.1,stats3169.2,stats3170.1,stats3170.2,stats3171.1,stats3171.2,stats3172.1,stats3172.2,stats3173.1,stats3173.2,stats3174.1,stats3174.2,stats3175.1,stats3175.2,stats3176.1,stats3176.2,stats3177.1,stats3177.2,stats3178.1,stats3178.2]
  decide
end FrameHashControllerCheckedRows
