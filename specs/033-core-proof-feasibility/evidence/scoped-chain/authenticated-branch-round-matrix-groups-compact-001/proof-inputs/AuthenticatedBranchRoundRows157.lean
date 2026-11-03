import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData158
import AuthenticatedBranchRoundInstructionMatrixData159
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10166 : actualRows10166=WordField.canonicalRows actualModulus 10166 (.band 10159 10132) := by core033_kernel_decide
theorem stats10166 : actualRows10166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10166=5124 := by core033_kernel_decide
theorem rows10167 : actualRows10167=WordField.canonicalRows actualModulus 10167 (.bnot 10159) := by core033_kernel_decide
theorem stats10167 : actualRows10167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10167=6276 := by core033_kernel_decide
theorem rows10168 : actualRows10168=WordField.canonicalRows actualModulus 10168 (.band 10167 10105) := by core033_kernel_decide
theorem stats10168 : actualRows10168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10168=5124 := by core033_kernel_decide
theorem rows10169 : actualRows10169=WordField.canonicalRows actualModulus 10169 (.bxor 10166 10168) := by core033_kernel_decide
theorem stats10169 : actualRows10169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10169=7428 := by core033_kernel_decide
theorem rows10170 : actualRows10170=WordField.canonicalRows actualModulus 10170 (.badd 10165 10169) := by core033_kernel_decide
theorem stats10170 : actualRows10170.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10170=5388 := by core033_kernel_decide
theorem rows10171 : actualRows10171=WordField.canonicalRows actualModulus 10171 (.literal (BitVec.ofNat 32 958139571)) := by core033_kernel_decide
theorem stats10171 : actualRows10171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10171=3828 := by core033_kernel_decide
theorem rows10172 : actualRows10172=WordField.canonicalRows actualModulus 10172 (.badd 10170 10171) := by core033_kernel_decide
theorem stats10172 : actualRows10172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10172=5388 := by core033_kernel_decide
theorem rows10173 : actualRows10173=WordField.canonicalRows actualModulus 10173 (.badd 10172 8612) := by core033_kernel_decide
theorem stats10173 : actualRows10173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10173=5388 := by core033_kernel_decide
theorem rows10174 : actualRows10174=WordField.canonicalRows actualModulus 10174 (.rotr 10158 2) := by core033_kernel_decide
theorem stats10174 : actualRows10174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10174=5124 := by core033_kernel_decide
theorem rows10175 : actualRows10175=WordField.canonicalRows actualModulus 10175 (.rotr 10158 13) := by core033_kernel_decide
theorem stats10175 : actualRows10175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10175=5124 := by core033_kernel_decide
theorem rows10176 : actualRows10176=WordField.canonicalRows actualModulus 10176 (.bxor 10174 10175) := by core033_kernel_decide
theorem stats10176 : actualRows10176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10176=7428 := by core033_kernel_decide
theorem rows10177 : actualRows10177=WordField.canonicalRows actualModulus 10177 (.rotr 10158 22) := by core033_kernel_decide
theorem stats10177 : actualRows10177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10177=5124 := by core033_kernel_decide
theorem rows10178 : actualRows10178=WordField.canonicalRows actualModulus 10178 (.bxor 10176 10177) := by core033_kernel_decide
theorem stats10178 : actualRows10178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10178=7428 := by core033_kernel_decide
theorem rows10179 : actualRows10179=WordField.canonicalRows actualModulus 10179 (.band 10158 10131) := by core033_kernel_decide
theorem stats10179 : actualRows10179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10179=5124 := by core033_kernel_decide
theorem rows10180 : actualRows10180=WordField.canonicalRows actualModulus 10180 (.band 10158 10104) := by core033_kernel_decide
theorem stats10180 : actualRows10180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10180=5124 := by core033_kernel_decide
theorem rows10181 : actualRows10181=WordField.canonicalRows actualModulus 10181 (.bxor 10179 10180) := by core033_kernel_decide
theorem stats10181 : actualRows10181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10181=7428 := by core033_kernel_decide
theorem rows10182 : actualRows10182=WordField.canonicalRows actualModulus 10182 (.band 10131 10104) := by core033_kernel_decide
theorem stats10182 : actualRows10182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10182=5124 := by core033_kernel_decide
theorem rows10183 : actualRows10183=WordField.canonicalRows actualModulus 10183 (.bxor 10181 10182) := by core033_kernel_decide
theorem stats10183 : actualRows10183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10183=7428 := by core033_kernel_decide
theorem rows10184 : actualRows10184=WordField.canonicalRows actualModulus 10184 (.badd 10178 10183) := by core033_kernel_decide
theorem stats10184 : actualRows10184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10184=5388 := by core033_kernel_decide
theorem rows10185 : actualRows10185=WordField.canonicalRows actualModulus 10185 (.badd 10173 10184) := by core033_kernel_decide
theorem stats10185 : actualRows10185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10185=5388 := by core033_kernel_decide
theorem rows10186 : actualRows10186=WordField.canonicalRows actualModulus 10186 (.badd 10077 10173) := by core033_kernel_decide
theorem stats10186 : actualRows10186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10186=5388 := by core033_kernel_decide
theorem rows10187 : actualRows10187=WordField.canonicalRows actualModulus 10187 (.rotr 10186 6) := by core033_kernel_decide
theorem stats10187 : actualRows10187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10187=5124 := by core033_kernel_decide
theorem rows10188 : actualRows10188=WordField.canonicalRows actualModulus 10188 (.rotr 10186 11) := by core033_kernel_decide
theorem stats10188 : actualRows10188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10188=5124 := by core033_kernel_decide
theorem rows10189 : actualRows10189=WordField.canonicalRows actualModulus 10189 (.bxor 10187 10188) := by core033_kernel_decide
theorem stats10189 : actualRows10189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10189=7428 := by core033_kernel_decide
theorem rows10190 : actualRows10190=WordField.canonicalRows actualModulus 10190 (.rotr 10186 25) := by core033_kernel_decide
theorem stats10190 : actualRows10190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10190=5124 := by core033_kernel_decide
theorem rows10191 : actualRows10191=WordField.canonicalRows actualModulus 10191 (.bxor 10189 10190) := by core033_kernel_decide
theorem stats10191 : actualRows10191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10191=7428 := by core033_kernel_decide
theorem rows10192 : actualRows10192=WordField.canonicalRows actualModulus 10192 (.badd 10105 10191) := by core033_kernel_decide
theorem stats10192 : actualRows10192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10192=5388 := by core033_kernel_decide
theorem rows10193 : actualRows10193=WordField.canonicalRows actualModulus 10193 (.band 10186 10159) := by core033_kernel_decide
theorem stats10193 : actualRows10193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10193=5124 := by core033_kernel_decide
theorem rows10194 : actualRows10194=WordField.canonicalRows actualModulus 10194 (.bnot 10186) := by core033_kernel_decide
theorem stats10194 : actualRows10194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10194=6276 := by core033_kernel_decide
theorem rows10195 : actualRows10195=WordField.canonicalRows actualModulus 10195 (.band 10194 10132) := by core033_kernel_decide
theorem stats10195 : actualRows10195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10195=5124 := by core033_kernel_decide
theorem rows10196 : actualRows10196=WordField.canonicalRows actualModulus 10196 (.bxor 10193 10195) := by core033_kernel_decide
theorem stats10196 : actualRows10196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10196=7428 := by core033_kernel_decide
theorem rows10197 : actualRows10197=WordField.canonicalRows actualModulus 10197 (.badd 10192 10196) := by core033_kernel_decide
theorem stats10197 : actualRows10197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10197=5388 := by core033_kernel_decide
theorem rows10198 : actualRows10198=WordField.canonicalRows actualModulus 10198 (.literal (BitVec.ofNat 32 1322822218)) := by core033_kernel_decide
theorem stats10198 : actualRows10198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10198=3900 := by core033_kernel_decide
theorem rows10199 : actualRows10199=WordField.canonicalRows actualModulus 10199 (.badd 10197 10198) := by core033_kernel_decide
theorem stats10199 : actualRows10199.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10199=5388 := by core033_kernel_decide
theorem rows10200 : actualRows10200=WordField.canonicalRows actualModulus 10200 (.badd 10199 8625) := by core033_kernel_decide
theorem stats10200 : actualRows10200.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10200=5388 := by core033_kernel_decide
theorem rows10201 : actualRows10201=WordField.canonicalRows actualModulus 10201 (.rotr 10185 2) := by core033_kernel_decide
theorem stats10201 : actualRows10201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10201=5124 := by core033_kernel_decide
theorem rows10202 : actualRows10202=WordField.canonicalRows actualModulus 10202 (.rotr 10185 13) := by core033_kernel_decide
theorem stats10202 : actualRows10202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10202=5124 := by core033_kernel_decide
theorem rows10203 : actualRows10203=WordField.canonicalRows actualModulus 10203 (.bxor 10201 10202) := by core033_kernel_decide
theorem stats10203 : actualRows10203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10203=7428 := by core033_kernel_decide
theorem rows10204 : actualRows10204=WordField.canonicalRows actualModulus 10204 (.rotr 10185 22) := by core033_kernel_decide
theorem stats10204 : actualRows10204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10204=5124 := by core033_kernel_decide
theorem rows10205 : actualRows10205=WordField.canonicalRows actualModulus 10205 (.bxor 10203 10204) := by core033_kernel_decide
theorem stats10205 : actualRows10205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10205=7428 := by core033_kernel_decide
theorem rows10206 : actualRows10206=WordField.canonicalRows actualModulus 10206 (.band 10185 10158) := by core033_kernel_decide
theorem stats10206 : actualRows10206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10206=5124 := by core033_kernel_decide
theorem rows10207 : actualRows10207=WordField.canonicalRows actualModulus 10207 (.band 10185 10131) := by core033_kernel_decide
theorem stats10207 : actualRows10207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10207=5124 := by core033_kernel_decide
theorem rows10208 : actualRows10208=WordField.canonicalRows actualModulus 10208 (.bxor 10206 10207) := by core033_kernel_decide
theorem stats10208 : actualRows10208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10208=7428 := by core033_kernel_decide
theorem rows10209 : actualRows10209=WordField.canonicalRows actualModulus 10209 (.band 10158 10131) := by core033_kernel_decide
theorem stats10209 : actualRows10209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10209=5124 := by core033_kernel_decide
theorem rows10210 : actualRows10210=WordField.canonicalRows actualModulus 10210 (.bxor 10208 10209) := by core033_kernel_decide
theorem stats10210 : actualRows10210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10210=7428 := by core033_kernel_decide
theorem rows10211 : actualRows10211=WordField.canonicalRows actualModulus 10211 (.badd 10205 10210) := by core033_kernel_decide
theorem stats10211 : actualRows10211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10211=5388 := by core033_kernel_decide
theorem rows10212 : actualRows10212=WordField.canonicalRows actualModulus 10212 (.badd 10200 10211) := by core033_kernel_decide
theorem stats10212 : actualRows10212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10212=5388 := by core033_kernel_decide
theorem rows10213 : actualRows10213=WordField.canonicalRows actualModulus 10213 (.badd 10104 10200) := by core033_kernel_decide
theorem stats10213 : actualRows10213.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10213=5388 := by core033_kernel_decide
theorem rows10214 : actualRows10214=WordField.canonicalRows actualModulus 10214 (.rotr 10213 6) := by core033_kernel_decide
theorem stats10214 : actualRows10214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10214=5124 := by core033_kernel_decide
theorem rows10215 : actualRows10215=WordField.canonicalRows actualModulus 10215 (.rotr 10213 11) := by core033_kernel_decide
theorem stats10215 : actualRows10215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10215=5124 := by core033_kernel_decide
theorem rows10216 : actualRows10216=WordField.canonicalRows actualModulus 10216 (.bxor 10214 10215) := by core033_kernel_decide
theorem stats10216 : actualRows10216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10216=7428 := by core033_kernel_decide
theorem rows10217 : actualRows10217=WordField.canonicalRows actualModulus 10217 (.rotr 10213 25) := by core033_kernel_decide
theorem stats10217 : actualRows10217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10217=5124 := by core033_kernel_decide
theorem rows10218 : actualRows10218=WordField.canonicalRows actualModulus 10218 (.bxor 10216 10217) := by core033_kernel_decide
theorem stats10218 : actualRows10218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10218=7428 := by core033_kernel_decide
theorem rows10219 : actualRows10219=WordField.canonicalRows actualModulus 10219 (.badd 10132 10218) := by core033_kernel_decide
theorem stats10219 : actualRows10219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10219=5388 := by core033_kernel_decide
theorem rows10220 : actualRows10220=WordField.canonicalRows actualModulus 10220 (.band 10213 10186) := by core033_kernel_decide
theorem stats10220 : actualRows10220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10220=5124 := by core033_kernel_decide
theorem rows10221 : actualRows10221=WordField.canonicalRows actualModulus 10221 (.bnot 10213) := by core033_kernel_decide
theorem stats10221 : actualRows10221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10221=6276 := by core033_kernel_decide
theorem rows10222 : actualRows10222=WordField.canonicalRows actualModulus 10222 (.band 10221 10159) := by core033_kernel_decide
theorem stats10222 : actualRows10222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10222=5124 := by core033_kernel_decide
theorem rows10223 : actualRows10223=WordField.canonicalRows actualModulus 10223 (.bxor 10220 10222) := by core033_kernel_decide
theorem stats10223 : actualRows10223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10223=7428 := by core033_kernel_decide
theorem rows10224 : actualRows10224=WordField.canonicalRows actualModulus 10224 (.badd 10219 10223) := by core033_kernel_decide
theorem stats10224 : actualRows10224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10224=5388 := by core033_kernel_decide
theorem rows10225 : actualRows10225=WordField.canonicalRows actualModulus 10225 (.literal (BitVec.ofNat 32 1537002063)) := by core033_kernel_decide
theorem stats10225 : actualRows10225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10225=4116 := by core033_kernel_decide
theorem rows10226 : actualRows10226=WordField.canonicalRows actualModulus 10226 (.badd 10224 10225) := by core033_kernel_decide
theorem stats10226 : actualRows10226.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10226=5388 := by core033_kernel_decide
theorem rows10227 : actualRows10227=WordField.canonicalRows actualModulus 10227 (.badd 10226 8638) := by core033_kernel_decide
theorem stats10227 : actualRows10227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10227=5388 := by core033_kernel_decide
theorem rows10228 : actualRows10228=WordField.canonicalRows actualModulus 10228 (.rotr 10212 2) := by core033_kernel_decide
theorem stats10228 : actualRows10228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10228=5124 := by core033_kernel_decide
theorem rows10229 : actualRows10229=WordField.canonicalRows actualModulus 10229 (.rotr 10212 13) := by core033_kernel_decide
theorem stats10229 : actualRows10229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10229=5124 := by core033_kernel_decide
def partRows157 : List R1CS.Row := actualRows10166++actualRows10167++actualRows10168++actualRows10169++actualRows10170++actualRows10171++actualRows10172++actualRows10173++actualRows10174++actualRows10175++actualRows10176++actualRows10177++actualRows10178++actualRows10179++actualRows10180++actualRows10181++actualRows10182++actualRows10183++actualRows10184++actualRows10185++actualRows10186++actualRows10187++actualRows10188++actualRows10189++actualRows10190++actualRows10191++actualRows10192++actualRows10193++actualRows10194++actualRows10195++actualRows10196++actualRows10197++actualRows10198++actualRows10199++actualRows10200++actualRows10201++actualRows10202++actualRows10203++actualRows10204++actualRows10205++actualRows10206++actualRows10207++actualRows10208++actualRows10209++actualRows10210++actualRows10211++actualRows10212++actualRows10213++actualRows10214++actualRows10215++actualRows10216++actualRows10217++actualRows10218++actualRows10219++actualRows10220++actualRows10221++actualRows10222++actualRows10223++actualRows10224++actualRows10225++actualRows10226++actualRows10227++actualRows10228++actualRows10229
def partOps157 : List WordIR.Op := [.band 10159 10132,.bnot 10159,.band 10167 10105,.bxor 10166 10168,.badd 10165 10169,.literal (BitVec.ofNat 32 958139571),.badd 10170 10171,.badd 10172 8612,.rotr 10158 2,.rotr 10158 13,.bxor 10174 10175,.rotr 10158 22,.bxor 10176 10177,.band 10158 10131,.band 10158 10104,.bxor 10179 10180,.band 10131 10104,.bxor 10181 10182,.badd 10178 10183,.badd 10173 10184,.badd 10077 10173,.rotr 10186 6,.rotr 10186 11,.bxor 10187 10188,.rotr 10186 25,.bxor 10189 10190,.badd 10105 10191,.band 10186 10159,.bnot 10186,.band 10194 10132,.bxor 10193 10195,.badd 10192 10196,.literal (BitVec.ofNat 32 1322822218),.badd 10197 10198,.badd 10199 8625,.rotr 10185 2,.rotr 10185 13,.bxor 10201 10202,.rotr 10185 22,.bxor 10203 10204,.band 10185 10158,.band 10185 10131,.bxor 10206 10207,.band 10158 10131,.bxor 10208 10209,.badd 10205 10210,.badd 10200 10211,.badd 10104 10200,.rotr 10213 6,.rotr 10213 11,.bxor 10214 10215,.rotr 10213 25,.bxor 10216 10217,.badd 10132 10218,.band 10213 10186,.bnot 10213,.band 10221 10159,.bxor 10220 10222,.badd 10219 10223,.literal (BitVec.ofNat 32 1537002063),.badd 10224 10225,.badd 10226 8638,.rotr 10212 2,.rotr 10212 13]
theorem partExact157 : partRows157=WordField.rows actualModulus 10166 partOps157 := by
  simp only [partRows157,partOps157,WordField.rows,rows10166,rows10167,rows10168,rows10169,rows10170,rows10171,rows10172,rows10173,rows10174,rows10175,rows10176,rows10177,rows10178,rows10179,rows10180,rows10181,rows10182,rows10183,rows10184,rows10185,rows10186,rows10187,rows10188,rows10189,rows10190,rows10191,rows10192,rows10193,rows10194,rows10195,rows10196,rows10197,rows10198,rows10199,rows10200,rows10201,rows10202,rows10203,rows10204,rows10205,rows10206,rows10207,rows10208,rows10209,rows10210,rows10211,rows10212,rows10213,rows10214,rows10215,rows10216,rows10217,rows10218,rows10219,rows10220,rows10221,rows10222,rows10223,rows10224,rows10225,rows10226,rows10227,rows10228,rows10229,List.append_assoc,List.append_nil]
theorem partLength157 : partOps157.length=64 := by decide
theorem partStats157 : partRows157.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows157=366912 := by
  simp only [partRows157,List.length_append,MatrixRowBlocks.rows_weight_append,stats10166.1,stats10166.2,stats10167.1,stats10167.2,stats10168.1,stats10168.2,stats10169.1,stats10169.2,stats10170.1,stats10170.2,stats10171.1,stats10171.2,stats10172.1,stats10172.2,stats10173.1,stats10173.2,stats10174.1,stats10174.2,stats10175.1,stats10175.2,stats10176.1,stats10176.2,stats10177.1,stats10177.2,stats10178.1,stats10178.2,stats10179.1,stats10179.2,stats10180.1,stats10180.2,stats10181.1,stats10181.2,stats10182.1,stats10182.2,stats10183.1,stats10183.2,stats10184.1,stats10184.2,stats10185.1,stats10185.2,stats10186.1,stats10186.2,stats10187.1,stats10187.2,stats10188.1,stats10188.2,stats10189.1,stats10189.2,stats10190.1,stats10190.2,stats10191.1,stats10191.2,stats10192.1,stats10192.2,stats10193.1,stats10193.2,stats10194.1,stats10194.2,stats10195.1,stats10195.2,stats10196.1,stats10196.2,stats10197.1,stats10197.2,stats10198.1,stats10198.2,stats10199.1,stats10199.2,stats10200.1,stats10200.2,stats10201.1,stats10201.2,stats10202.1,stats10202.2,stats10203.1,stats10203.2,stats10204.1,stats10204.2,stats10205.1,stats10205.2,stats10206.1,stats10206.2,stats10207.1,stats10207.2,stats10208.1,stats10208.2,stats10209.1,stats10209.2,stats10210.1,stats10210.2,stats10211.1,stats10211.2,stats10212.1,stats10212.2,stats10213.1,stats10213.2,stats10214.1,stats10214.2,stats10215.1,stats10215.2,stats10216.1,stats10216.2,stats10217.1,stats10217.2,stats10218.1,stats10218.2,stats10219.1,stats10219.2,stats10220.1,stats10220.2,stats10221.1,stats10221.2,stats10222.1,stats10222.2,stats10223.1,stats10223.2,stats10224.1,stats10224.2,stats10225.1,stats10225.2,stats10226.1,stats10226.2,stats10227.1,stats10227.2,stats10228.1,stats10228.2,stats10229.1,stats10229.2]
  decide
end AuthenticatedBranchRoundCheckedRows
