import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData158
import PathRoundDispatchInstructionMatrixData159
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10155 : actualRows10155=WordField.canonicalRows actualModulus 10155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10155 : actualRows10155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10155=2820 := by core033_kernel_decide
theorem rows10156 : actualRows10156=WordField.canonicalRows actualModulus 10156 (.bnot 10155) := by core033_kernel_decide
theorem stats10156 : actualRows10156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10156=6276 := by core033_kernel_decide
theorem rows10157 : actualRows10157=WordField.canonicalRows actualModulus 10157 (.bxor 10154 10156) := by core033_kernel_decide
theorem stats10157 : actualRows10157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10157=7428 := by core033_kernel_decide
theorem rows10158 : actualRows10158=WordField.canonicalRows actualModulus 10158 (.shr 9439 8) := by core033_kernel_decide
theorem stats10158 : actualRows10158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10158=4548 := by core033_kernel_decide
theorem rows10159 : actualRows10159=WordField.canonicalRows actualModulus 10159 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10159 : actualRows10159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10159=2820 := by core033_kernel_decide
theorem rows10160 : actualRows10160=WordField.canonicalRows actualModulus 10160 (.bnot 10159) := by core033_kernel_decide
theorem stats10160 : actualRows10160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10160=6276 := by core033_kernel_decide
theorem rows10161 : actualRows10161=WordField.canonicalRows actualModulus 10161 (.badd 10158 10160) := by core033_kernel_decide
theorem stats10161 : actualRows10161.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10161=5388 := by core033_kernel_decide
theorem rows10162 : actualRows10162=WordField.canonicalRows actualModulus 10162 (.bnot 10161) := by core033_kernel_decide
theorem stats10162 : actualRows10162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10162=6276 := by core033_kernel_decide
theorem rows10163 : actualRows10163=WordField.canonicalRows actualModulus 10163 (.band 10157 10162) := by core033_kernel_decide
theorem stats10163 : actualRows10163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10163=5124 := by core033_kernel_decide
theorem rows10164 : actualRows10164=WordField.canonicalRows actualModulus 10164 (.bxor 10153 10163) := by core033_kernel_decide
theorem stats10164 : actualRows10164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10164=7428 := by core033_kernel_decide
theorem rows10165 : actualRows10165=WordField.canonicalRows actualModulus 10165 (.shr 10164 31) := by core033_kernel_decide
theorem stats10165 : actualRows10165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10165=2892 := by core033_kernel_decide
theorem rows10166 : actualRows10166=WordField.canonicalRows actualModulus 10166 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10166 : actualRows10166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10166=2892 := by core033_kernel_decide
theorem rows10167 : actualRows10167=WordField.canonicalRows actualModulus 10167 (.bxor 10165 10166) := by core033_kernel_decide
theorem stats10167 : actualRows10167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10167=7428 := by core033_kernel_decide
theorem rows10168 : actualRows10168=WordField.canonicalRows actualModulus 10168 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10168 : actualRows10168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10168=2892 := by core033_kernel_decide
theorem rows10169 : actualRows10169=WordField.canonicalRows actualModulus 10169 (.bxor 9439 10168) := by core033_kernel_decide
theorem stats10169 : actualRows10169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10169=7428 := by core033_kernel_decide
theorem rows10170 : actualRows10170=WordField.canonicalRows actualModulus 10170 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10170 : actualRows10170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10170=2820 := by core033_kernel_decide
theorem rows10171 : actualRows10171=WordField.canonicalRows actualModulus 10171 (.bnot 10170) := by core033_kernel_decide
theorem stats10171 : actualRows10171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10171=6276 := by core033_kernel_decide
theorem rows10172 : actualRows10172=WordField.canonicalRows actualModulus 10172 (.band 10169 10171) := by core033_kernel_decide
theorem stats10172 : actualRows10172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10172=5124 := by core033_kernel_decide
theorem rows10173 : actualRows10173=WordField.canonicalRows actualModulus 10173 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10173 : actualRows10173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10173=2892 := by core033_kernel_decide
theorem rows10174 : actualRows10174=WordField.canonicalRows actualModulus 10174 (.bxor 9439 10173) := by core033_kernel_decide
theorem stats10174 : actualRows10174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10174=7428 := by core033_kernel_decide
theorem rows10175 : actualRows10175=WordField.canonicalRows actualModulus 10175 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10175 : actualRows10175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10175=2820 := by core033_kernel_decide
theorem rows10176 : actualRows10176=WordField.canonicalRows actualModulus 10176 (.bnot 10175) := by core033_kernel_decide
theorem stats10176 : actualRows10176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10176=6276 := by core033_kernel_decide
theorem rows10177 : actualRows10177=WordField.canonicalRows actualModulus 10177 (.bxor 10174 10176) := by core033_kernel_decide
theorem stats10177 : actualRows10177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10177=7428 := by core033_kernel_decide
theorem rows10178 : actualRows10178=WordField.canonicalRows actualModulus 10178 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10178 : actualRows10178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10178=2892 := by core033_kernel_decide
theorem rows10179 : actualRows10179=WordField.canonicalRows actualModulus 10179 (.bxor 9439 10178) := by core033_kernel_decide
theorem stats10179 : actualRows10179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10179=7428 := by core033_kernel_decide
theorem rows10180 : actualRows10180=WordField.canonicalRows actualModulus 10180 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10180 : actualRows10180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10180=2820 := by core033_kernel_decide
theorem rows10181 : actualRows10181=WordField.canonicalRows actualModulus 10181 (.bnot 10180) := by core033_kernel_decide
theorem stats10181 : actualRows10181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10181=6276 := by core033_kernel_decide
theorem rows10182 : actualRows10182=WordField.canonicalRows actualModulus 10182 (.badd 10179 10181) := by core033_kernel_decide
theorem stats10182 : actualRows10182.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10182=5388 := by core033_kernel_decide
theorem rows10183 : actualRows10183=WordField.canonicalRows actualModulus 10183 (.bnot 10182) := by core033_kernel_decide
theorem stats10183 : actualRows10183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10183=6276 := by core033_kernel_decide
theorem rows10184 : actualRows10184=WordField.canonicalRows actualModulus 10184 (.band 10177 10183) := by core033_kernel_decide
theorem stats10184 : actualRows10184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10184=5124 := by core033_kernel_decide
theorem rows10185 : actualRows10185=WordField.canonicalRows actualModulus 10185 (.bxor 10172 10184) := by core033_kernel_decide
theorem stats10185 : actualRows10185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10185=7428 := by core033_kernel_decide
theorem rows10186 : actualRows10186=WordField.canonicalRows actualModulus 10186 (.shr 10185 31) := by core033_kernel_decide
theorem stats10186 : actualRows10186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10186=2892 := by core033_kernel_decide
theorem rows10187 : actualRows10187=WordField.canonicalRows actualModulus 10187 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10187 : actualRows10187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10187=2892 := by core033_kernel_decide
theorem rows10188 : actualRows10188=WordField.canonicalRows actualModulus 10188 (.bxor 10186 10187) := by core033_kernel_decide
theorem stats10188 : actualRows10188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10188=7428 := by core033_kernel_decide
theorem rows10189 : actualRows10189=WordField.canonicalRows actualModulus 10189 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10189 : actualRows10189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10189=2892 := by core033_kernel_decide
theorem rows10190 : actualRows10190=WordField.canonicalRows actualModulus 10190 (.bnot 10189) := by core033_kernel_decide
theorem stats10190 : actualRows10190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10190=6276 := by core033_kernel_decide
theorem rows10191 : actualRows10191=WordField.canonicalRows actualModulus 10191 (.band 9439 10190) := by core033_kernel_decide
theorem stats10191 : actualRows10191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10191=5124 := by core033_kernel_decide
theorem rows10192 : actualRows10192=WordField.canonicalRows actualModulus 10192 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10192 : actualRows10192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10192=2892 := by core033_kernel_decide
theorem rows10193 : actualRows10193=WordField.canonicalRows actualModulus 10193 (.bnot 10192) := by core033_kernel_decide
theorem stats10193 : actualRows10193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10193=6276 := by core033_kernel_decide
theorem rows10194 : actualRows10194=WordField.canonicalRows actualModulus 10194 (.bxor 9439 10193) := by core033_kernel_decide
theorem stats10194 : actualRows10194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10194=7428 := by core033_kernel_decide
theorem rows10195 : actualRows10195=WordField.canonicalRows actualModulus 10195 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10195 : actualRows10195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10195=2892 := by core033_kernel_decide
theorem rows10196 : actualRows10196=WordField.canonicalRows actualModulus 10196 (.bnot 10195) := by core033_kernel_decide
theorem stats10196 : actualRows10196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10196=6276 := by core033_kernel_decide
theorem rows10197 : actualRows10197=WordField.canonicalRows actualModulus 10197 (.badd 9439 10196) := by core033_kernel_decide
theorem stats10197 : actualRows10197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10197=5388 := by core033_kernel_decide
theorem rows10198 : actualRows10198=WordField.canonicalRows actualModulus 10198 (.bnot 10197) := by core033_kernel_decide
theorem stats10198 : actualRows10198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10198=6276 := by core033_kernel_decide
theorem rows10199 : actualRows10199=WordField.canonicalRows actualModulus 10199 (.band 10194 10198) := by core033_kernel_decide
theorem stats10199 : actualRows10199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10199=5124 := by core033_kernel_decide
theorem rows10200 : actualRows10200=WordField.canonicalRows actualModulus 10200 (.bxor 10191 10199) := by core033_kernel_decide
theorem stats10200 : actualRows10200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10200=7428 := by core033_kernel_decide
theorem rows10201 : actualRows10201=WordField.canonicalRows actualModulus 10201 (.shr 10200 31) := by core033_kernel_decide
theorem stats10201 : actualRows10201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10201=2892 := by core033_kernel_decide
theorem rows10202 : actualRows10202=WordField.canonicalRows actualModulus 10202 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10202 : actualRows10202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10202=2892 := by core033_kernel_decide
theorem rows10203 : actualRows10203=WordField.canonicalRows actualModulus 10203 (.bxor 10201 10202) := by core033_kernel_decide
theorem stats10203 : actualRows10203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10203=7428 := by core033_kernel_decide
theorem rows10204 : actualRows10204=WordField.canonicalRows actualModulus 10204 (.literal (BitVec.ofNat 32 4)) := by core033_kernel_decide
theorem stats10204 : actualRows10204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10204=2892 := by core033_kernel_decide
theorem rows10205 : actualRows10205=WordField.canonicalRows actualModulus 10205 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10205 : actualRows10205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10205=2964 := by core033_kernel_decide
theorem rows10206 : actualRows10206=WordField.canonicalRows actualModulus 10206 (.bxor 9417 10205) := by core033_kernel_decide
theorem stats10206 : actualRows10206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10206=7428 := by core033_kernel_decide
theorem rows10207 : actualRows10207=WordField.canonicalRows actualModulus 10207 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10207 : actualRows10207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10207=2820 := by core033_kernel_decide
theorem rows10208 : actualRows10208=WordField.canonicalRows actualModulus 10208 (.bnot 10207) := by core033_kernel_decide
theorem stats10208 : actualRows10208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10208=6276 := by core033_kernel_decide
theorem rows10209 : actualRows10209=WordField.canonicalRows actualModulus 10209 (.band 10206 10208) := by core033_kernel_decide
theorem stats10209 : actualRows10209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10209=5124 := by core033_kernel_decide
theorem rows10210 : actualRows10210=WordField.canonicalRows actualModulus 10210 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10210 : actualRows10210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10210=2964 := by core033_kernel_decide
theorem rows10211 : actualRows10211=WordField.canonicalRows actualModulus 10211 (.bxor 9417 10210) := by core033_kernel_decide
theorem stats10211 : actualRows10211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10211=7428 := by core033_kernel_decide
theorem rows10212 : actualRows10212=WordField.canonicalRows actualModulus 10212 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10212 : actualRows10212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10212=2820 := by core033_kernel_decide
theorem rows10213 : actualRows10213=WordField.canonicalRows actualModulus 10213 (.bnot 10212) := by core033_kernel_decide
theorem stats10213 : actualRows10213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10213=6276 := by core033_kernel_decide
theorem rows10214 : actualRows10214=WordField.canonicalRows actualModulus 10214 (.bxor 10211 10213) := by core033_kernel_decide
theorem stats10214 : actualRows10214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10214=7428 := by core033_kernel_decide
theorem rows10215 : actualRows10215=WordField.canonicalRows actualModulus 10215 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10215 : actualRows10215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10215=2964 := by core033_kernel_decide
theorem rows10216 : actualRows10216=WordField.canonicalRows actualModulus 10216 (.bxor 9417 10215) := by core033_kernel_decide
theorem stats10216 : actualRows10216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10216=7428 := by core033_kernel_decide
theorem rows10217 : actualRows10217=WordField.canonicalRows actualModulus 10217 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10217 : actualRows10217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10217=2820 := by core033_kernel_decide
theorem rows10218 : actualRows10218=WordField.canonicalRows actualModulus 10218 (.bnot 10217) := by core033_kernel_decide
theorem stats10218 : actualRows10218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10218=6276 := by core033_kernel_decide
def partRows158 : List R1CS.Row := actualRows10155++actualRows10156++actualRows10157++actualRows10158++actualRows10159++actualRows10160++actualRows10161++actualRows10162++actualRows10163++actualRows10164++actualRows10165++actualRows10166++actualRows10167++actualRows10168++actualRows10169++actualRows10170++actualRows10171++actualRows10172++actualRows10173++actualRows10174++actualRows10175++actualRows10176++actualRows10177++actualRows10178++actualRows10179++actualRows10180++actualRows10181++actualRows10182++actualRows10183++actualRows10184++actualRows10185++actualRows10186++actualRows10187++actualRows10188++actualRows10189++actualRows10190++actualRows10191++actualRows10192++actualRows10193++actualRows10194++actualRows10195++actualRows10196++actualRows10197++actualRows10198++actualRows10199++actualRows10200++actualRows10201++actualRows10202++actualRows10203++actualRows10204++actualRows10205++actualRows10206++actualRows10207++actualRows10208++actualRows10209++actualRows10210++actualRows10211++actualRows10212++actualRows10213++actualRows10214++actualRows10215++actualRows10216++actualRows10217++actualRows10218
def partOps158 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 10155,.bxor 10154 10156,.shr 9439 8,.literal (BitVec.ofNat 32 0),.bnot 10159,.badd 10158 10160,.bnot 10161,.band 10157 10162,.bxor 10153 10163,.shr 10164 31,.literal (BitVec.ofNat 32 1),.bxor 10165 10166,.literal (BitVec.ofNat 32 256),.bxor 9439 10168,.literal (BitVec.ofNat 32 0),.bnot 10170,.band 10169 10171,.literal (BitVec.ofNat 32 256),.bxor 9439 10173,.literal (BitVec.ofNat 32 0),.bnot 10175,.bxor 10174 10176,.literal (BitVec.ofNat 32 256),.bxor 9439 10178,.literal (BitVec.ofNat 32 0),.bnot 10180,.badd 10179 10181,.bnot 10182,.band 10177 10183,.bxor 10172 10184,.shr 10185 31,.literal (BitVec.ofNat 32 1),.bxor 10186 10187,.literal (BitVec.ofNat 32 256),.bnot 10189,.band 9439 10190,.literal (BitVec.ofNat 32 256),.bnot 10192,.bxor 9439 10193,.literal (BitVec.ofNat 32 256),.bnot 10195,.badd 9439 10196,.bnot 10197,.band 10194 10198,.bxor 10191 10199,.shr 10200 31,.literal (BitVec.ofNat 32 1),.bxor 10201 10202,.literal (BitVec.ofNat 32 4),.literal (BitVec.ofNat 32 3),.bxor 9417 10205,.literal (BitVec.ofNat 32 0),.bnot 10207,.band 10206 10208,.literal (BitVec.ofNat 32 3),.bxor 9417 10210,.literal (BitVec.ofNat 32 0),.bnot 10212,.bxor 10211 10213,.literal (BitVec.ofNat 32 3),.bxor 9417 10215,.literal (BitVec.ofNat 32 0),.bnot 10217]
theorem partExact158 : partRows158=WordField.rows actualModulus 10155 partOps158 := by
  simp only [partRows158,partOps158,WordField.rows,rows10155,rows10156,rows10157,rows10158,rows10159,rows10160,rows10161,rows10162,rows10163,rows10164,rows10165,rows10166,rows10167,rows10168,rows10169,rows10170,rows10171,rows10172,rows10173,rows10174,rows10175,rows10176,rows10177,rows10178,rows10179,rows10180,rows10181,rows10182,rows10183,rows10184,rows10185,rows10186,rows10187,rows10188,rows10189,rows10190,rows10191,rows10192,rows10193,rows10194,rows10195,rows10196,rows10197,rows10198,rows10199,rows10200,rows10201,rows10202,rows10203,rows10204,rows10205,rows10206,rows10207,rows10208,rows10209,rows10210,rows10211,rows10212,rows10213,rows10214,rows10215,rows10216,rows10217,rows10218,List.append_assoc,List.append_nil]
theorem partLength158 : partOps158.length=64 := by decide
theorem partStats158 : partRows158.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows158=327216 := by
  simp only [partRows158,List.length_append,MatrixRowBlocks.rows_weight_append,stats10155.1,stats10155.2,stats10156.1,stats10156.2,stats10157.1,stats10157.2,stats10158.1,stats10158.2,stats10159.1,stats10159.2,stats10160.1,stats10160.2,stats10161.1,stats10161.2,stats10162.1,stats10162.2,stats10163.1,stats10163.2,stats10164.1,stats10164.2,stats10165.1,stats10165.2,stats10166.1,stats10166.2,stats10167.1,stats10167.2,stats10168.1,stats10168.2,stats10169.1,stats10169.2,stats10170.1,stats10170.2,stats10171.1,stats10171.2,stats10172.1,stats10172.2,stats10173.1,stats10173.2,stats10174.1,stats10174.2,stats10175.1,stats10175.2,stats10176.1,stats10176.2,stats10177.1,stats10177.2,stats10178.1,stats10178.2,stats10179.1,stats10179.2,stats10180.1,stats10180.2,stats10181.1,stats10181.2,stats10182.1,stats10182.2,stats10183.1,stats10183.2,stats10184.1,stats10184.2,stats10185.1,stats10185.2,stats10186.1,stats10186.2,stats10187.1,stats10187.2,stats10188.1,stats10188.2,stats10189.1,stats10189.2,stats10190.1,stats10190.2,stats10191.1,stats10191.2,stats10192.1,stats10192.2,stats10193.1,stats10193.2,stats10194.1,stats10194.2,stats10195.1,stats10195.2,stats10196.1,stats10196.2,stats10197.1,stats10197.2,stats10198.1,stats10198.2,stats10199.1,stats10199.2,stats10200.1,stats10200.2,stats10201.1,stats10201.2,stats10202.1,stats10202.2,stats10203.1,stats10203.2,stats10204.1,stats10204.2,stats10205.1,stats10205.2,stats10206.1,stats10206.2,stats10207.1,stats10207.2,stats10208.1,stats10208.2,stats10209.1,stats10209.2,stats10210.1,stats10210.2,stats10211.1,stats10211.2,stats10212.1,stats10212.2,stats10213.1,stats10213.2,stats10214.1,stats10214.2,stats10215.1,stats10215.2,stats10216.1,stats10216.2,stats10217.1,stats10217.2,stats10218.1,stats10218.2]
  decide
end PathRoundDispatchCheckedRows
