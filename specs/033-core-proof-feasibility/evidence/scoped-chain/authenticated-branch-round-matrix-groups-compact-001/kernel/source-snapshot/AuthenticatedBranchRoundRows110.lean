import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData111
import AuthenticatedBranchRoundInstructionMatrixData112
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7158 : actualRows7158=WordField.canonicalRows actualModulus 7158 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7158 : actualRows7158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7158=2892 := by core033_kernel_decide
theorem rows7159 : actualRows7159=WordField.canonicalRows actualModulus 7159 (.bxor 7157 7158) := by core033_kernel_decide
theorem stats7159 : actualRows7159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7159=7428 := by core033_kernel_decide
theorem rows7160 : actualRows7160=WordField.canonicalRows actualModulus 7160 (.shr 4114 8) := by core033_kernel_decide
theorem stats7160 : actualRows7160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7160=4548 := by core033_kernel_decide
theorem rows7161 : actualRows7161=WordField.canonicalRows actualModulus 7161 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7161 : actualRows7161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7161=2820 := by core033_kernel_decide
theorem rows7162 : actualRows7162=WordField.canonicalRows actualModulus 7162 (.bnot 7161) := by core033_kernel_decide
theorem stats7162 : actualRows7162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7162=6276 := by core033_kernel_decide
theorem rows7163 : actualRows7163=WordField.canonicalRows actualModulus 7163 (.band 7160 7162) := by core033_kernel_decide
theorem stats7163 : actualRows7163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7163=5124 := by core033_kernel_decide
theorem rows7164 : actualRows7164=WordField.canonicalRows actualModulus 7164 (.shr 4114 8) := by core033_kernel_decide
theorem stats7164 : actualRows7164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7164=4548 := by core033_kernel_decide
theorem rows7165 : actualRows7165=WordField.canonicalRows actualModulus 7165 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7165 : actualRows7165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7165=2820 := by core033_kernel_decide
theorem rows7166 : actualRows7166=WordField.canonicalRows actualModulus 7166 (.bnot 7165) := by core033_kernel_decide
theorem stats7166 : actualRows7166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7166=6276 := by core033_kernel_decide
theorem rows7167 : actualRows7167=WordField.canonicalRows actualModulus 7167 (.bxor 7164 7166) := by core033_kernel_decide
theorem stats7167 : actualRows7167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7167=7428 := by core033_kernel_decide
theorem rows7168 : actualRows7168=WordField.canonicalRows actualModulus 7168 (.shr 4114 8) := by core033_kernel_decide
theorem stats7168 : actualRows7168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7168=4548 := by core033_kernel_decide
theorem rows7169 : actualRows7169=WordField.canonicalRows actualModulus 7169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7169 : actualRows7169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7169=2820 := by core033_kernel_decide
theorem rows7170 : actualRows7170=WordField.canonicalRows actualModulus 7170 (.bnot 7169) := by core033_kernel_decide
theorem stats7170 : actualRows7170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7170=6276 := by core033_kernel_decide
theorem rows7171 : actualRows7171=WordField.canonicalRows actualModulus 7171 (.badd 7168 7170) := by core033_kernel_decide
theorem stats7171 : actualRows7171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7171=5388 := by core033_kernel_decide
theorem rows7172 : actualRows7172=WordField.canonicalRows actualModulus 7172 (.bnot 7171) := by core033_kernel_decide
theorem stats7172 : actualRows7172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7172=6276 := by core033_kernel_decide
theorem rows7173 : actualRows7173=WordField.canonicalRows actualModulus 7173 (.band 7167 7172) := by core033_kernel_decide
theorem stats7173 : actualRows7173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7173=5124 := by core033_kernel_decide
theorem rows7174 : actualRows7174=WordField.canonicalRows actualModulus 7174 (.bxor 7163 7173) := by core033_kernel_decide
theorem stats7174 : actualRows7174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7174=7428 := by core033_kernel_decide
theorem rows7175 : actualRows7175=WordField.canonicalRows actualModulus 7175 (.shr 7174 31) := by core033_kernel_decide
theorem stats7175 : actualRows7175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7175=2892 := by core033_kernel_decide
theorem rows7176 : actualRows7176=WordField.canonicalRows actualModulus 7176 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7176 : actualRows7176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7176=2892 := by core033_kernel_decide
theorem rows7177 : actualRows7177=WordField.canonicalRows actualModulus 7177 (.bxor 7175 7176) := by core033_kernel_decide
theorem stats7177 : actualRows7177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7177=7428 := by core033_kernel_decide
theorem rows7178 : actualRows7178=WordField.canonicalRows actualModulus 7178 (.shr 4166 8) := by core033_kernel_decide
theorem stats7178 : actualRows7178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7178=4548 := by core033_kernel_decide
theorem rows7179 : actualRows7179=WordField.canonicalRows actualModulus 7179 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7179 : actualRows7179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7179=2820 := by core033_kernel_decide
theorem rows7180 : actualRows7180=WordField.canonicalRows actualModulus 7180 (.bnot 7179) := by core033_kernel_decide
theorem stats7180 : actualRows7180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7180=6276 := by core033_kernel_decide
theorem rows7181 : actualRows7181=WordField.canonicalRows actualModulus 7181 (.band 7178 7180) := by core033_kernel_decide
theorem stats7181 : actualRows7181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7181=5124 := by core033_kernel_decide
theorem rows7182 : actualRows7182=WordField.canonicalRows actualModulus 7182 (.shr 4166 8) := by core033_kernel_decide
theorem stats7182 : actualRows7182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7182=4548 := by core033_kernel_decide
theorem rows7183 : actualRows7183=WordField.canonicalRows actualModulus 7183 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7183 : actualRows7183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7183=2820 := by core033_kernel_decide
theorem rows7184 : actualRows7184=WordField.canonicalRows actualModulus 7184 (.bnot 7183) := by core033_kernel_decide
theorem stats7184 : actualRows7184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7184=6276 := by core033_kernel_decide
theorem rows7185 : actualRows7185=WordField.canonicalRows actualModulus 7185 (.bxor 7182 7184) := by core033_kernel_decide
theorem stats7185 : actualRows7185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7185=7428 := by core033_kernel_decide
theorem rows7186 : actualRows7186=WordField.canonicalRows actualModulus 7186 (.shr 4166 8) := by core033_kernel_decide
theorem stats7186 : actualRows7186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7186=4548 := by core033_kernel_decide
theorem rows7187 : actualRows7187=WordField.canonicalRows actualModulus 7187 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7187 : actualRows7187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7187=2820 := by core033_kernel_decide
theorem rows7188 : actualRows7188=WordField.canonicalRows actualModulus 7188 (.bnot 7187) := by core033_kernel_decide
theorem stats7188 : actualRows7188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7188=6276 := by core033_kernel_decide
theorem rows7189 : actualRows7189=WordField.canonicalRows actualModulus 7189 (.badd 7186 7188) := by core033_kernel_decide
theorem stats7189 : actualRows7189.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7189=5388 := by core033_kernel_decide
theorem rows7190 : actualRows7190=WordField.canonicalRows actualModulus 7190 (.bnot 7189) := by core033_kernel_decide
theorem stats7190 : actualRows7190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7190=6276 := by core033_kernel_decide
theorem rows7191 : actualRows7191=WordField.canonicalRows actualModulus 7191 (.band 7185 7190) := by core033_kernel_decide
theorem stats7191 : actualRows7191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7191=5124 := by core033_kernel_decide
theorem rows7192 : actualRows7192=WordField.canonicalRows actualModulus 7192 (.bxor 7181 7191) := by core033_kernel_decide
theorem stats7192 : actualRows7192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7192=7428 := by core033_kernel_decide
theorem rows7193 : actualRows7193=WordField.canonicalRows actualModulus 7193 (.shr 7192 31) := by core033_kernel_decide
theorem stats7193 : actualRows7193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7193=2892 := by core033_kernel_decide
theorem rows7194 : actualRows7194=WordField.canonicalRows actualModulus 7194 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7194 : actualRows7194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7194=2892 := by core033_kernel_decide
theorem rows7195 : actualRows7195=WordField.canonicalRows actualModulus 7195 (.bxor 7193 7194) := by core033_kernel_decide
theorem stats7195 : actualRows7195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7195=7428 := by core033_kernel_decide
theorem rows7196 : actualRows7196=WordField.canonicalRows actualModulus 7196 (.shr 4218 8) := by core033_kernel_decide
theorem stats7196 : actualRows7196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7196=4548 := by core033_kernel_decide
theorem rows7197 : actualRows7197=WordField.canonicalRows actualModulus 7197 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7197 : actualRows7197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7197=2820 := by core033_kernel_decide
theorem rows7198 : actualRows7198=WordField.canonicalRows actualModulus 7198 (.bnot 7197) := by core033_kernel_decide
theorem stats7198 : actualRows7198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7198=6276 := by core033_kernel_decide
theorem rows7199 : actualRows7199=WordField.canonicalRows actualModulus 7199 (.band 7196 7198) := by core033_kernel_decide
theorem stats7199 : actualRows7199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7199=5124 := by core033_kernel_decide
theorem rows7200 : actualRows7200=WordField.canonicalRows actualModulus 7200 (.shr 4218 8) := by core033_kernel_decide
theorem stats7200 : actualRows7200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7200=4548 := by core033_kernel_decide
theorem rows7201 : actualRows7201=WordField.canonicalRows actualModulus 7201 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7201 : actualRows7201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7201=2820 := by core033_kernel_decide
theorem rows7202 : actualRows7202=WordField.canonicalRows actualModulus 7202 (.bnot 7201) := by core033_kernel_decide
theorem stats7202 : actualRows7202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7202=6276 := by core033_kernel_decide
theorem rows7203 : actualRows7203=WordField.canonicalRows actualModulus 7203 (.bxor 7200 7202) := by core033_kernel_decide
theorem stats7203 : actualRows7203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7203=7428 := by core033_kernel_decide
theorem rows7204 : actualRows7204=WordField.canonicalRows actualModulus 7204 (.shr 4218 8) := by core033_kernel_decide
theorem stats7204 : actualRows7204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7204=4548 := by core033_kernel_decide
theorem rows7205 : actualRows7205=WordField.canonicalRows actualModulus 7205 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7205 : actualRows7205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7205=2820 := by core033_kernel_decide
theorem rows7206 : actualRows7206=WordField.canonicalRows actualModulus 7206 (.bnot 7205) := by core033_kernel_decide
theorem stats7206 : actualRows7206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7206=6276 := by core033_kernel_decide
theorem rows7207 : actualRows7207=WordField.canonicalRows actualModulus 7207 (.badd 7204 7206) := by core033_kernel_decide
theorem stats7207 : actualRows7207.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7207=5388 := by core033_kernel_decide
theorem rows7208 : actualRows7208=WordField.canonicalRows actualModulus 7208 (.bnot 7207) := by core033_kernel_decide
theorem stats7208 : actualRows7208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7208=6276 := by core033_kernel_decide
theorem rows7209 : actualRows7209=WordField.canonicalRows actualModulus 7209 (.band 7203 7208) := by core033_kernel_decide
theorem stats7209 : actualRows7209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7209=5124 := by core033_kernel_decide
theorem rows7210 : actualRows7210=WordField.canonicalRows actualModulus 7210 (.bxor 7199 7209) := by core033_kernel_decide
theorem stats7210 : actualRows7210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7210=7428 := by core033_kernel_decide
theorem rows7211 : actualRows7211=WordField.canonicalRows actualModulus 7211 (.shr 7210 31) := by core033_kernel_decide
theorem stats7211 : actualRows7211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7211=2892 := by core033_kernel_decide
theorem rows7212 : actualRows7212=WordField.canonicalRows actualModulus 7212 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7212 : actualRows7212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7212=2892 := by core033_kernel_decide
theorem rows7213 : actualRows7213=WordField.canonicalRows actualModulus 7213 (.bxor 7211 7212) := by core033_kernel_decide
theorem stats7213 : actualRows7213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7213=7428 := by core033_kernel_decide
theorem rows7214 : actualRows7214=WordField.canonicalRows actualModulus 7214 (.shr 4270 8) := by core033_kernel_decide
theorem stats7214 : actualRows7214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7214=4548 := by core033_kernel_decide
theorem rows7215 : actualRows7215=WordField.canonicalRows actualModulus 7215 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7215 : actualRows7215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7215=2820 := by core033_kernel_decide
theorem rows7216 : actualRows7216=WordField.canonicalRows actualModulus 7216 (.bnot 7215) := by core033_kernel_decide
theorem stats7216 : actualRows7216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7216=6276 := by core033_kernel_decide
theorem rows7217 : actualRows7217=WordField.canonicalRows actualModulus 7217 (.band 7214 7216) := by core033_kernel_decide
theorem stats7217 : actualRows7217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7217=5124 := by core033_kernel_decide
theorem rows7218 : actualRows7218=WordField.canonicalRows actualModulus 7218 (.shr 4270 8) := by core033_kernel_decide
theorem stats7218 : actualRows7218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7218=4548 := by core033_kernel_decide
theorem rows7219 : actualRows7219=WordField.canonicalRows actualModulus 7219 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7219 : actualRows7219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7219=2820 := by core033_kernel_decide
theorem rows7220 : actualRows7220=WordField.canonicalRows actualModulus 7220 (.bnot 7219) := by core033_kernel_decide
theorem stats7220 : actualRows7220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7220=6276 := by core033_kernel_decide
theorem rows7221 : actualRows7221=WordField.canonicalRows actualModulus 7221 (.bxor 7218 7220) := by core033_kernel_decide
theorem stats7221 : actualRows7221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7221=7428 := by core033_kernel_decide
def partRows110 : List R1CS.Row := actualRows7158++actualRows7159++actualRows7160++actualRows7161++actualRows7162++actualRows7163++actualRows7164++actualRows7165++actualRows7166++actualRows7167++actualRows7168++actualRows7169++actualRows7170++actualRows7171++actualRows7172++actualRows7173++actualRows7174++actualRows7175++actualRows7176++actualRows7177++actualRows7178++actualRows7179++actualRows7180++actualRows7181++actualRows7182++actualRows7183++actualRows7184++actualRows7185++actualRows7186++actualRows7187++actualRows7188++actualRows7189++actualRows7190++actualRows7191++actualRows7192++actualRows7193++actualRows7194++actualRows7195++actualRows7196++actualRows7197++actualRows7198++actualRows7199++actualRows7200++actualRows7201++actualRows7202++actualRows7203++actualRows7204++actualRows7205++actualRows7206++actualRows7207++actualRows7208++actualRows7209++actualRows7210++actualRows7211++actualRows7212++actualRows7213++actualRows7214++actualRows7215++actualRows7216++actualRows7217++actualRows7218++actualRows7219++actualRows7220++actualRows7221
def partOps110 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 7157 7158,.shr 4114 8,.literal (BitVec.ofNat 32 0),.bnot 7161,.band 7160 7162,.shr 4114 8,.literal (BitVec.ofNat 32 0),.bnot 7165,.bxor 7164 7166,.shr 4114 8,.literal (BitVec.ofNat 32 0),.bnot 7169,.badd 7168 7170,.bnot 7171,.band 7167 7172,.bxor 7163 7173,.shr 7174 31,.literal (BitVec.ofNat 32 1),.bxor 7175 7176,.shr 4166 8,.literal (BitVec.ofNat 32 0),.bnot 7179,.band 7178 7180,.shr 4166 8,.literal (BitVec.ofNat 32 0),.bnot 7183,.bxor 7182 7184,.shr 4166 8,.literal (BitVec.ofNat 32 0),.bnot 7187,.badd 7186 7188,.bnot 7189,.band 7185 7190,.bxor 7181 7191,.shr 7192 31,.literal (BitVec.ofNat 32 1),.bxor 7193 7194,.shr 4218 8,.literal (BitVec.ofNat 32 0),.bnot 7197,.band 7196 7198,.shr 4218 8,.literal (BitVec.ofNat 32 0),.bnot 7201,.bxor 7200 7202,.shr 4218 8,.literal (BitVec.ofNat 32 0),.bnot 7205,.badd 7204 7206,.bnot 7207,.band 7203 7208,.bxor 7199 7209,.shr 7210 31,.literal (BitVec.ofNat 32 1),.bxor 7211 7212,.shr 4270 8,.literal (BitVec.ofNat 32 0),.bnot 7215,.band 7214 7216,.shr 4270 8,.literal (BitVec.ofNat 32 0),.bnot 7219,.bxor 7218 7220]
theorem partExact110 : partRows110=WordField.rows actualModulus 7158 partOps110 := by
  simp only [partRows110,partOps110,WordField.rows,rows7158,rows7159,rows7160,rows7161,rows7162,rows7163,rows7164,rows7165,rows7166,rows7167,rows7168,rows7169,rows7170,rows7171,rows7172,rows7173,rows7174,rows7175,rows7176,rows7177,rows7178,rows7179,rows7180,rows7181,rows7182,rows7183,rows7184,rows7185,rows7186,rows7187,rows7188,rows7189,rows7190,rows7191,rows7192,rows7193,rows7194,rows7195,rows7196,rows7197,rows7198,rows7199,rows7200,rows7201,rows7202,rows7203,rows7204,rows7205,rows7206,rows7207,rows7208,rows7209,rows7210,rows7211,rows7212,rows7213,rows7214,rows7215,rows7216,rows7217,rows7218,rows7219,rows7220,rows7221,List.append_assoc,List.append_nil]
theorem partLength110 : partOps110.length=64 := by decide
theorem partStats110 : partRows110.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows110=322896 := by
  simp only [partRows110,List.length_append,MatrixRowBlocks.rows_weight_append,stats7158.1,stats7158.2,stats7159.1,stats7159.2,stats7160.1,stats7160.2,stats7161.1,stats7161.2,stats7162.1,stats7162.2,stats7163.1,stats7163.2,stats7164.1,stats7164.2,stats7165.1,stats7165.2,stats7166.1,stats7166.2,stats7167.1,stats7167.2,stats7168.1,stats7168.2,stats7169.1,stats7169.2,stats7170.1,stats7170.2,stats7171.1,stats7171.2,stats7172.1,stats7172.2,stats7173.1,stats7173.2,stats7174.1,stats7174.2,stats7175.1,stats7175.2,stats7176.1,stats7176.2,stats7177.1,stats7177.2,stats7178.1,stats7178.2,stats7179.1,stats7179.2,stats7180.1,stats7180.2,stats7181.1,stats7181.2,stats7182.1,stats7182.2,stats7183.1,stats7183.2,stats7184.1,stats7184.2,stats7185.1,stats7185.2,stats7186.1,stats7186.2,stats7187.1,stats7187.2,stats7188.1,stats7188.2,stats7189.1,stats7189.2,stats7190.1,stats7190.2,stats7191.1,stats7191.2,stats7192.1,stats7192.2,stats7193.1,stats7193.2,stats7194.1,stats7194.2,stats7195.1,stats7195.2,stats7196.1,stats7196.2,stats7197.1,stats7197.2,stats7198.1,stats7198.2,stats7199.1,stats7199.2,stats7200.1,stats7200.2,stats7201.1,stats7201.2,stats7202.1,stats7202.2,stats7203.1,stats7203.2,stats7204.1,stats7204.2,stats7205.1,stats7205.2,stats7206.1,stats7206.2,stats7207.1,stats7207.2,stats7208.1,stats7208.2,stats7209.1,stats7209.2,stats7210.1,stats7210.2,stats7211.1,stats7211.2,stats7212.1,stats7212.2,stats7213.1,stats7213.2,stats7214.1,stats7214.2,stats7215.1,stats7215.2,stats7216.1,stats7216.2,stats7217.1,stats7217.2,stats7218.1,stats7218.2,stats7219.1,stats7219.2,stats7220.1,stats7220.2,stats7221.1,stats7221.2]
  decide
end AuthenticatedBranchRoundCheckedRows
