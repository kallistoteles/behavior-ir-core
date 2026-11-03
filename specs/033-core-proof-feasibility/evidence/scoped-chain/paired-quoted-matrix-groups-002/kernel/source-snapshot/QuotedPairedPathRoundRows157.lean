import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData158
import PairedPathRoundInstructionMatrixData159
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10144 : actualRows10144=WordField.canonicalRows actualModulus 10144 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10144 : actualRows10144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10144=2820 := by core033_kernel_decide
theorem rows10145 : actualRows10145=WordField.canonicalRows actualModulus 10145 (.band 10143 10144) := by core033_kernel_decide
theorem stats10145 : actualRows10145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10145=5124 := by core033_kernel_decide
theorem rows10146 : actualRows10146=WordField.canonicalRows actualModulus 10146 (.bxor 10139 10145) := by core033_kernel_decide
theorem stats10146 : actualRows10146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10146=7428 := by core033_kernel_decide
theorem rows10147 : actualRows10147=WordField.canonicalRows actualModulus 10147 (.bnot 9926) := by core033_kernel_decide
theorem stats10147 : actualRows10147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10147=6276 := by core033_kernel_decide
theorem rows10148 : actualRows10148=WordField.canonicalRows actualModulus 10148 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10148 : actualRows10148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10148=2892 := by core033_kernel_decide
theorem rows10149 : actualRows10149=WordField.canonicalRows actualModulus 10149 (.badd 10147 10148) := by core033_kernel_decide
theorem stats10149 : actualRows10149.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10149=5388 := by core033_kernel_decide
theorem rows10150 : actualRows10150=WordField.canonicalRows actualModulus 10150 (.band 10149 36) := by core033_kernel_decide
theorem stats10150 : actualRows10150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10150=5124 := by core033_kernel_decide
theorem rows10151 : actualRows10151=WordField.canonicalRows actualModulus 10151 (.bnot 9926) := by core033_kernel_decide
theorem stats10151 : actualRows10151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10151=6276 := by core033_kernel_decide
theorem rows10152 : actualRows10152=WordField.canonicalRows actualModulus 10152 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10152 : actualRows10152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10152=2892 := by core033_kernel_decide
theorem rows10153 : actualRows10153=WordField.canonicalRows actualModulus 10153 (.badd 10151 10152) := by core033_kernel_decide
theorem stats10153 : actualRows10153.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10153=5388 := by core033_kernel_decide
theorem rows10154 : actualRows10154=WordField.canonicalRows actualModulus 10154 (.bnot 10153) := by core033_kernel_decide
theorem stats10154 : actualRows10154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10154=6276 := by core033_kernel_decide
theorem rows10155 : actualRows10155=WordField.canonicalRows actualModulus 10155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10155 : actualRows10155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10155=2820 := by core033_kernel_decide
theorem rows10156 : actualRows10156=WordField.canonicalRows actualModulus 10156 (.band 10154 10155) := by core033_kernel_decide
theorem stats10156 : actualRows10156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10156=5124 := by core033_kernel_decide
theorem rows10157 : actualRows10157=WordField.canonicalRows actualModulus 10157 (.bxor 10150 10156) := by core033_kernel_decide
theorem stats10157 : actualRows10157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10157=7428 := by core033_kernel_decide
theorem rows10158 : actualRows10158=WordField.canonicalRows actualModulus 10158 (.bnot 9926) := by core033_kernel_decide
theorem stats10158 : actualRows10158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10158=6276 := by core033_kernel_decide
theorem rows10159 : actualRows10159=WordField.canonicalRows actualModulus 10159 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10159 : actualRows10159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10159=2892 := by core033_kernel_decide
theorem rows10160 : actualRows10160=WordField.canonicalRows actualModulus 10160 (.badd 10158 10159) := by core033_kernel_decide
theorem stats10160 : actualRows10160.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10160=5388 := by core033_kernel_decide
theorem rows10161 : actualRows10161=WordField.canonicalRows actualModulus 10161 (.band 10160 37) := by core033_kernel_decide
theorem stats10161 : actualRows10161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10161=5124 := by core033_kernel_decide
theorem rows10162 : actualRows10162=WordField.canonicalRows actualModulus 10162 (.bnot 9926) := by core033_kernel_decide
theorem stats10162 : actualRows10162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10162=6276 := by core033_kernel_decide
theorem rows10163 : actualRows10163=WordField.canonicalRows actualModulus 10163 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10163 : actualRows10163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10163=2892 := by core033_kernel_decide
theorem rows10164 : actualRows10164=WordField.canonicalRows actualModulus 10164 (.badd 10162 10163) := by core033_kernel_decide
theorem stats10164 : actualRows10164.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10164=5388 := by core033_kernel_decide
theorem rows10165 : actualRows10165=WordField.canonicalRows actualModulus 10165 (.bnot 10164) := by core033_kernel_decide
theorem stats10165 : actualRows10165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10165=6276 := by core033_kernel_decide
theorem rows10166 : actualRows10166=WordField.canonicalRows actualModulus 10166 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10166 : actualRows10166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10166=2820 := by core033_kernel_decide
theorem rows10167 : actualRows10167=WordField.canonicalRows actualModulus 10167 (.band 10165 10166) := by core033_kernel_decide
theorem stats10167 : actualRows10167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10167=5124 := by core033_kernel_decide
theorem rows10168 : actualRows10168=WordField.canonicalRows actualModulus 10168 (.bxor 10161 10167) := by core033_kernel_decide
theorem stats10168 : actualRows10168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10168=7428 := by core033_kernel_decide
theorem rows10169 : actualRows10169=WordField.canonicalRows actualModulus 10169 (.bnot 9926) := by core033_kernel_decide
theorem stats10169 : actualRows10169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10169=6276 := by core033_kernel_decide
theorem rows10170 : actualRows10170=WordField.canonicalRows actualModulus 10170 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10170 : actualRows10170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10170=2892 := by core033_kernel_decide
theorem rows10171 : actualRows10171=WordField.canonicalRows actualModulus 10171 (.badd 10169 10170) := by core033_kernel_decide
theorem stats10171 : actualRows10171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10171=5388 := by core033_kernel_decide
theorem rows10172 : actualRows10172=WordField.canonicalRows actualModulus 10172 (.band 10171 38) := by core033_kernel_decide
theorem stats10172 : actualRows10172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10172=5124 := by core033_kernel_decide
theorem rows10173 : actualRows10173=WordField.canonicalRows actualModulus 10173 (.bnot 9926) := by core033_kernel_decide
theorem stats10173 : actualRows10173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10173=6276 := by core033_kernel_decide
theorem rows10174 : actualRows10174=WordField.canonicalRows actualModulus 10174 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10174 : actualRows10174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10174=2892 := by core033_kernel_decide
theorem rows10175 : actualRows10175=WordField.canonicalRows actualModulus 10175 (.badd 10173 10174) := by core033_kernel_decide
theorem stats10175 : actualRows10175.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10175=5388 := by core033_kernel_decide
theorem rows10176 : actualRows10176=WordField.canonicalRows actualModulus 10176 (.bnot 10175) := by core033_kernel_decide
theorem stats10176 : actualRows10176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10176=6276 := by core033_kernel_decide
theorem rows10177 : actualRows10177=WordField.canonicalRows actualModulus 10177 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10177 : actualRows10177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10177=2820 := by core033_kernel_decide
theorem rows10178 : actualRows10178=WordField.canonicalRows actualModulus 10178 (.band 10176 10177) := by core033_kernel_decide
theorem stats10178 : actualRows10178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10178=5124 := by core033_kernel_decide
theorem rows10179 : actualRows10179=WordField.canonicalRows actualModulus 10179 (.bxor 10172 10178) := by core033_kernel_decide
theorem stats10179 : actualRows10179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10179=7428 := by core033_kernel_decide
theorem rows10180 : actualRows10180=WordField.canonicalRows actualModulus 10180 (.bnot 9926) := by core033_kernel_decide
theorem stats10180 : actualRows10180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10180=6276 := by core033_kernel_decide
theorem rows10181 : actualRows10181=WordField.canonicalRows actualModulus 10181 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10181 : actualRows10181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10181=2892 := by core033_kernel_decide
theorem rows10182 : actualRows10182=WordField.canonicalRows actualModulus 10182 (.badd 10180 10181) := by core033_kernel_decide
theorem stats10182 : actualRows10182.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10182=5388 := by core033_kernel_decide
theorem rows10183 : actualRows10183=WordField.canonicalRows actualModulus 10183 (.band 10182 39) := by core033_kernel_decide
theorem stats10183 : actualRows10183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10183=5124 := by core033_kernel_decide
theorem rows10184 : actualRows10184=WordField.canonicalRows actualModulus 10184 (.bnot 9926) := by core033_kernel_decide
theorem stats10184 : actualRows10184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10184=6276 := by core033_kernel_decide
theorem rows10185 : actualRows10185=WordField.canonicalRows actualModulus 10185 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10185 : actualRows10185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10185=2892 := by core033_kernel_decide
theorem rows10186 : actualRows10186=WordField.canonicalRows actualModulus 10186 (.badd 10184 10185) := by core033_kernel_decide
theorem stats10186 : actualRows10186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10186=5388 := by core033_kernel_decide
theorem rows10187 : actualRows10187=WordField.canonicalRows actualModulus 10187 (.bnot 10186) := by core033_kernel_decide
theorem stats10187 : actualRows10187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10187=6276 := by core033_kernel_decide
theorem rows10188 : actualRows10188=WordField.canonicalRows actualModulus 10188 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10188 : actualRows10188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10188=2820 := by core033_kernel_decide
theorem rows10189 : actualRows10189=WordField.canonicalRows actualModulus 10189 (.band 10187 10188) := by core033_kernel_decide
theorem stats10189 : actualRows10189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10189=5124 := by core033_kernel_decide
theorem rows10190 : actualRows10190=WordField.canonicalRows actualModulus 10190 (.bxor 10183 10189) := by core033_kernel_decide
theorem stats10190 : actualRows10190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10190=7428 := by core033_kernel_decide
theorem rows10191 : actualRows10191=WordField.canonicalRows actualModulus 10191 (.bnot 9926) := by core033_kernel_decide
theorem stats10191 : actualRows10191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10191=6276 := by core033_kernel_decide
theorem rows10192 : actualRows10192=WordField.canonicalRows actualModulus 10192 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10192 : actualRows10192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10192=2892 := by core033_kernel_decide
theorem rows10193 : actualRows10193=WordField.canonicalRows actualModulus 10193 (.badd 10191 10192) := by core033_kernel_decide
theorem stats10193 : actualRows10193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10193=5388 := by core033_kernel_decide
theorem rows10194 : actualRows10194=WordField.canonicalRows actualModulus 10194 (.band 10193 40) := by core033_kernel_decide
theorem stats10194 : actualRows10194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10194=5124 := by core033_kernel_decide
theorem rows10195 : actualRows10195=WordField.canonicalRows actualModulus 10195 (.bnot 9926) := by core033_kernel_decide
theorem stats10195 : actualRows10195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10195=6276 := by core033_kernel_decide
theorem rows10196 : actualRows10196=WordField.canonicalRows actualModulus 10196 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10196 : actualRows10196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10196=2892 := by core033_kernel_decide
theorem rows10197 : actualRows10197=WordField.canonicalRows actualModulus 10197 (.badd 10195 10196) := by core033_kernel_decide
theorem stats10197 : actualRows10197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10197=5388 := by core033_kernel_decide
theorem rows10198 : actualRows10198=WordField.canonicalRows actualModulus 10198 (.bnot 10197) := by core033_kernel_decide
theorem stats10198 : actualRows10198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10198=6276 := by core033_kernel_decide
theorem rows10199 : actualRows10199=WordField.canonicalRows actualModulus 10199 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10199 : actualRows10199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10199=2820 := by core033_kernel_decide
theorem rows10200 : actualRows10200=WordField.canonicalRows actualModulus 10200 (.band 10198 10199) := by core033_kernel_decide
theorem stats10200 : actualRows10200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10200=5124 := by core033_kernel_decide
theorem rows10201 : actualRows10201=WordField.canonicalRows actualModulus 10201 (.bxor 10194 10200) := by core033_kernel_decide
theorem stats10201 : actualRows10201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10201=7428 := by core033_kernel_decide
theorem rows10202 : actualRows10202=WordField.canonicalRows actualModulus 10202 (.bnot 9926) := by core033_kernel_decide
theorem stats10202 : actualRows10202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10202=6276 := by core033_kernel_decide
theorem rows10203 : actualRows10203=WordField.canonicalRows actualModulus 10203 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10203 : actualRows10203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10203=2892 := by core033_kernel_decide
theorem rows10204 : actualRows10204=WordField.canonicalRows actualModulus 10204 (.badd 10202 10203) := by core033_kernel_decide
theorem stats10204 : actualRows10204.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10204=5388 := by core033_kernel_decide
theorem rows10205 : actualRows10205=WordField.canonicalRows actualModulus 10205 (.band 10204 41) := by core033_kernel_decide
theorem stats10205 : actualRows10205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10205=5124 := by core033_kernel_decide
theorem rows10206 : actualRows10206=WordField.canonicalRows actualModulus 10206 (.bnot 9926) := by core033_kernel_decide
theorem stats10206 : actualRows10206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10206=6276 := by core033_kernel_decide
theorem rows10207 : actualRows10207=WordField.canonicalRows actualModulus 10207 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10207 : actualRows10207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10207=2892 := by core033_kernel_decide
def partRows157 : List R1CS.Row := actualRows10144++actualRows10145++actualRows10146++actualRows10147++actualRows10148++actualRows10149++actualRows10150++actualRows10151++actualRows10152++actualRows10153++actualRows10154++actualRows10155++actualRows10156++actualRows10157++actualRows10158++actualRows10159++actualRows10160++actualRows10161++actualRows10162++actualRows10163++actualRows10164++actualRows10165++actualRows10166++actualRows10167++actualRows10168++actualRows10169++actualRows10170++actualRows10171++actualRows10172++actualRows10173++actualRows10174++actualRows10175++actualRows10176++actualRows10177++actualRows10178++actualRows10179++actualRows10180++actualRows10181++actualRows10182++actualRows10183++actualRows10184++actualRows10185++actualRows10186++actualRows10187++actualRows10188++actualRows10189++actualRows10190++actualRows10191++actualRows10192++actualRows10193++actualRows10194++actualRows10195++actualRows10196++actualRows10197++actualRows10198++actualRows10199++actualRows10200++actualRows10201++actualRows10202++actualRows10203++actualRows10204++actualRows10205++actualRows10206++actualRows10207
def partOps157 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.band 10143 10144,.bxor 10139 10145,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10147 10148,.band 10149 36,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10151 10152,.bnot 10153,.literal (BitVec.ofNat 32 0),.band 10154 10155,.bxor 10150 10156,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10158 10159,.band 10160 37,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10162 10163,.bnot 10164,.literal (BitVec.ofNat 32 0),.band 10165 10166,.bxor 10161 10167,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10169 10170,.band 10171 38,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10173 10174,.bnot 10175,.literal (BitVec.ofNat 32 0),.band 10176 10177,.bxor 10172 10178,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10180 10181,.band 10182 39,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10184 10185,.bnot 10186,.literal (BitVec.ofNat 32 0),.band 10187 10188,.bxor 10183 10189,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10191 10192,.band 10193 40,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10195 10196,.bnot 10197,.literal (BitVec.ofNat 32 0),.band 10198 10199,.bxor 10194 10200,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10202 10203,.band 10204 41,.bnot 9926,.literal (BitVec.ofNat 32 1)]
theorem partExact157 : partRows157=WordField.rows actualModulus 10144 partOps157 := by
  simp only [partRows157,partOps157,WordField.rows,rows10144,rows10145,rows10146,rows10147,rows10148,rows10149,rows10150,rows10151,rows10152,rows10153,rows10154,rows10155,rows10156,rows10157,rows10158,rows10159,rows10160,rows10161,rows10162,rows10163,rows10164,rows10165,rows10166,rows10167,rows10168,rows10169,rows10170,rows10171,rows10172,rows10173,rows10174,rows10175,rows10176,rows10177,rows10178,rows10179,rows10180,rows10181,rows10182,rows10183,rows10184,rows10185,rows10186,rows10187,rows10188,rows10189,rows10190,rows10191,rows10192,rows10193,rows10194,rows10195,rows10196,rows10197,rows10198,rows10199,rows10200,rows10201,rows10202,rows10203,rows10204,rows10205,rows10206,rows10207,List.append_assoc,List.append_nil]
theorem partLength157 : partOps157.length=64 := by decide
theorem partStats157 : partRows157.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows157=323640 := by
  simp only [partRows157,List.length_append,MatrixRowBlocks.rows_weight_append,stats10144.1,stats10144.2,stats10145.1,stats10145.2,stats10146.1,stats10146.2,stats10147.1,stats10147.2,stats10148.1,stats10148.2,stats10149.1,stats10149.2,stats10150.1,stats10150.2,stats10151.1,stats10151.2,stats10152.1,stats10152.2,stats10153.1,stats10153.2,stats10154.1,stats10154.2,stats10155.1,stats10155.2,stats10156.1,stats10156.2,stats10157.1,stats10157.2,stats10158.1,stats10158.2,stats10159.1,stats10159.2,stats10160.1,stats10160.2,stats10161.1,stats10161.2,stats10162.1,stats10162.2,stats10163.1,stats10163.2,stats10164.1,stats10164.2,stats10165.1,stats10165.2,stats10166.1,stats10166.2,stats10167.1,stats10167.2,stats10168.1,stats10168.2,stats10169.1,stats10169.2,stats10170.1,stats10170.2,stats10171.1,stats10171.2,stats10172.1,stats10172.2,stats10173.1,stats10173.2,stats10174.1,stats10174.2,stats10175.1,stats10175.2,stats10176.1,stats10176.2,stats10177.1,stats10177.2,stats10178.1,stats10178.2,stats10179.1,stats10179.2,stats10180.1,stats10180.2,stats10181.1,stats10181.2,stats10182.1,stats10182.2,stats10183.1,stats10183.2,stats10184.1,stats10184.2,stats10185.1,stats10185.2,stats10186.1,stats10186.2,stats10187.1,stats10187.2,stats10188.1,stats10188.2,stats10189.1,stats10189.2,stats10190.1,stats10190.2,stats10191.1,stats10191.2,stats10192.1,stats10192.2,stats10193.1,stats10193.2,stats10194.1,stats10194.2,stats10195.1,stats10195.2,stats10196.1,stats10196.2,stats10197.1,stats10197.2,stats10198.1,stats10198.2,stats10199.1,stats10199.2,stats10200.1,stats10200.2,stats10201.1,stats10201.2,stats10202.1,stats10202.2,stats10203.1,stats10203.2,stats10204.1,stats10204.2,stats10205.1,stats10205.2,stats10206.1,stats10206.2,stats10207.1,stats10207.2]
  decide
end QuotedPairedPathRoundCheckedRows
