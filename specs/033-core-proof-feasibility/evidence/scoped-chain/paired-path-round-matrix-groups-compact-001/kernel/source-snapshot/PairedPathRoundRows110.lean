import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData111
import PairedPathRoundInstructionMatrixData112
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7136 : actualRows7136=WordField.canonicalRows actualModulus 7136 (.badd 7133 7135) := by core033_kernel_decide
theorem stats7136 : actualRows7136.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7136=5388 := by core033_kernel_decide
theorem rows7137 : actualRows7137=WordField.canonicalRows actualModulus 7137 (.bnot 7136) := by core033_kernel_decide
theorem stats7137 : actualRows7137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7137=6276 := by core033_kernel_decide
theorem rows7138 : actualRows7138=WordField.canonicalRows actualModulus 7138 (.band 7132 7137) := by core033_kernel_decide
theorem stats7138 : actualRows7138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7138=5124 := by core033_kernel_decide
theorem rows7139 : actualRows7139=WordField.canonicalRows actualModulus 7139 (.bxor 7128 7138) := by core033_kernel_decide
theorem stats7139 : actualRows7139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7139=7428 := by core033_kernel_decide
theorem rows7140 : actualRows7140=WordField.canonicalRows actualModulus 7140 (.shr 7139 31) := by core033_kernel_decide
theorem stats7140 : actualRows7140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7140=2892 := by core033_kernel_decide
theorem rows7141 : actualRows7141=WordField.canonicalRows actualModulus 7141 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7141 : actualRows7141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7141=2892 := by core033_kernel_decide
theorem rows7142 : actualRows7142=WordField.canonicalRows actualModulus 7142 (.bxor 7140 7141) := by core033_kernel_decide
theorem stats7142 : actualRows7142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7142=7428 := by core033_kernel_decide
theorem rows7143 : actualRows7143=WordField.canonicalRows actualModulus 7143 (.shr 5355 8) := by core033_kernel_decide
theorem stats7143 : actualRows7143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7143=4548 := by core033_kernel_decide
theorem rows7144 : actualRows7144=WordField.canonicalRows actualModulus 7144 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7144 : actualRows7144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7144=2820 := by core033_kernel_decide
theorem rows7145 : actualRows7145=WordField.canonicalRows actualModulus 7145 (.bnot 7144) := by core033_kernel_decide
theorem stats7145 : actualRows7145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7145=6276 := by core033_kernel_decide
theorem rows7146 : actualRows7146=WordField.canonicalRows actualModulus 7146 (.band 7143 7145) := by core033_kernel_decide
theorem stats7146 : actualRows7146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7146=5124 := by core033_kernel_decide
theorem rows7147 : actualRows7147=WordField.canonicalRows actualModulus 7147 (.shr 5355 8) := by core033_kernel_decide
theorem stats7147 : actualRows7147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7147=4548 := by core033_kernel_decide
theorem rows7148 : actualRows7148=WordField.canonicalRows actualModulus 7148 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7148 : actualRows7148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7148=2820 := by core033_kernel_decide
theorem rows7149 : actualRows7149=WordField.canonicalRows actualModulus 7149 (.bnot 7148) := by core033_kernel_decide
theorem stats7149 : actualRows7149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7149=6276 := by core033_kernel_decide
theorem rows7150 : actualRows7150=WordField.canonicalRows actualModulus 7150 (.bxor 7147 7149) := by core033_kernel_decide
theorem stats7150 : actualRows7150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7150=7428 := by core033_kernel_decide
theorem rows7151 : actualRows7151=WordField.canonicalRows actualModulus 7151 (.shr 5355 8) := by core033_kernel_decide
theorem stats7151 : actualRows7151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7151=4548 := by core033_kernel_decide
theorem rows7152 : actualRows7152=WordField.canonicalRows actualModulus 7152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7152 : actualRows7152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7152=2820 := by core033_kernel_decide
theorem rows7153 : actualRows7153=WordField.canonicalRows actualModulus 7153 (.bnot 7152) := by core033_kernel_decide
theorem stats7153 : actualRows7153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7153=6276 := by core033_kernel_decide
theorem rows7154 : actualRows7154=WordField.canonicalRows actualModulus 7154 (.badd 7151 7153) := by core033_kernel_decide
theorem stats7154 : actualRows7154.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7154=5388 := by core033_kernel_decide
theorem rows7155 : actualRows7155=WordField.canonicalRows actualModulus 7155 (.bnot 7154) := by core033_kernel_decide
theorem stats7155 : actualRows7155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7155=6276 := by core033_kernel_decide
theorem rows7156 : actualRows7156=WordField.canonicalRows actualModulus 7156 (.band 7150 7155) := by core033_kernel_decide
theorem stats7156 : actualRows7156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7156=5124 := by core033_kernel_decide
theorem rows7157 : actualRows7157=WordField.canonicalRows actualModulus 7157 (.bxor 7146 7156) := by core033_kernel_decide
theorem stats7157 : actualRows7157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7157=7428 := by core033_kernel_decide
theorem rows7158 : actualRows7158=WordField.canonicalRows actualModulus 7158 (.shr 7157 31) := by core033_kernel_decide
theorem stats7158 : actualRows7158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7158=2892 := by core033_kernel_decide
theorem rows7159 : actualRows7159=WordField.canonicalRows actualModulus 7159 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7159 : actualRows7159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7159=2892 := by core033_kernel_decide
theorem rows7160 : actualRows7160=WordField.canonicalRows actualModulus 7160 (.bxor 7158 7159) := by core033_kernel_decide
theorem stats7160 : actualRows7160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7160=7428 := by core033_kernel_decide
theorem rows7161 : actualRows7161=WordField.canonicalRows actualModulus 7161 (.shr 5407 8) := by core033_kernel_decide
theorem stats7161 : actualRows7161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7161=4548 := by core033_kernel_decide
theorem rows7162 : actualRows7162=WordField.canonicalRows actualModulus 7162 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7162 : actualRows7162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7162=2820 := by core033_kernel_decide
theorem rows7163 : actualRows7163=WordField.canonicalRows actualModulus 7163 (.bnot 7162) := by core033_kernel_decide
theorem stats7163 : actualRows7163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7163=6276 := by core033_kernel_decide
theorem rows7164 : actualRows7164=WordField.canonicalRows actualModulus 7164 (.band 7161 7163) := by core033_kernel_decide
theorem stats7164 : actualRows7164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7164=5124 := by core033_kernel_decide
theorem rows7165 : actualRows7165=WordField.canonicalRows actualModulus 7165 (.shr 5407 8) := by core033_kernel_decide
theorem stats7165 : actualRows7165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7165=4548 := by core033_kernel_decide
theorem rows7166 : actualRows7166=WordField.canonicalRows actualModulus 7166 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7166 : actualRows7166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7166=2820 := by core033_kernel_decide
theorem rows7167 : actualRows7167=WordField.canonicalRows actualModulus 7167 (.bnot 7166) := by core033_kernel_decide
theorem stats7167 : actualRows7167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7167=6276 := by core033_kernel_decide
theorem rows7168 : actualRows7168=WordField.canonicalRows actualModulus 7168 (.bxor 7165 7167) := by core033_kernel_decide
theorem stats7168 : actualRows7168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7168=7428 := by core033_kernel_decide
theorem rows7169 : actualRows7169=WordField.canonicalRows actualModulus 7169 (.shr 5407 8) := by core033_kernel_decide
theorem stats7169 : actualRows7169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7169=4548 := by core033_kernel_decide
theorem rows7170 : actualRows7170=WordField.canonicalRows actualModulus 7170 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7170 : actualRows7170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7170=2820 := by core033_kernel_decide
theorem rows7171 : actualRows7171=WordField.canonicalRows actualModulus 7171 (.bnot 7170) := by core033_kernel_decide
theorem stats7171 : actualRows7171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7171=6276 := by core033_kernel_decide
theorem rows7172 : actualRows7172=WordField.canonicalRows actualModulus 7172 (.badd 7169 7171) := by core033_kernel_decide
theorem stats7172 : actualRows7172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7172=5388 := by core033_kernel_decide
theorem rows7173 : actualRows7173=WordField.canonicalRows actualModulus 7173 (.bnot 7172) := by core033_kernel_decide
theorem stats7173 : actualRows7173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7173=6276 := by core033_kernel_decide
theorem rows7174 : actualRows7174=WordField.canonicalRows actualModulus 7174 (.band 7168 7173) := by core033_kernel_decide
theorem stats7174 : actualRows7174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7174=5124 := by core033_kernel_decide
theorem rows7175 : actualRows7175=WordField.canonicalRows actualModulus 7175 (.bxor 7164 7174) := by core033_kernel_decide
theorem stats7175 : actualRows7175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7175=7428 := by core033_kernel_decide
theorem rows7176 : actualRows7176=WordField.canonicalRows actualModulus 7176 (.shr 7175 31) := by core033_kernel_decide
theorem stats7176 : actualRows7176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7176=2892 := by core033_kernel_decide
theorem rows7177 : actualRows7177=WordField.canonicalRows actualModulus 7177 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7177 : actualRows7177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7177=2892 := by core033_kernel_decide
theorem rows7178 : actualRows7178=WordField.canonicalRows actualModulus 7178 (.bxor 7176 7177) := by core033_kernel_decide
theorem stats7178 : actualRows7178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7178=7428 := by core033_kernel_decide
theorem rows7179 : actualRows7179=WordField.canonicalRows actualModulus 7179 (.shr 5459 8) := by core033_kernel_decide
theorem stats7179 : actualRows7179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7179=4548 := by core033_kernel_decide
theorem rows7180 : actualRows7180=WordField.canonicalRows actualModulus 7180 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7180 : actualRows7180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7180=2820 := by core033_kernel_decide
theorem rows7181 : actualRows7181=WordField.canonicalRows actualModulus 7181 (.bnot 7180) := by core033_kernel_decide
theorem stats7181 : actualRows7181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7181=6276 := by core033_kernel_decide
theorem rows7182 : actualRows7182=WordField.canonicalRows actualModulus 7182 (.band 7179 7181) := by core033_kernel_decide
theorem stats7182 : actualRows7182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7182=5124 := by core033_kernel_decide
theorem rows7183 : actualRows7183=WordField.canonicalRows actualModulus 7183 (.shr 5459 8) := by core033_kernel_decide
theorem stats7183 : actualRows7183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7183=4548 := by core033_kernel_decide
theorem rows7184 : actualRows7184=WordField.canonicalRows actualModulus 7184 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7184 : actualRows7184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7184=2820 := by core033_kernel_decide
theorem rows7185 : actualRows7185=WordField.canonicalRows actualModulus 7185 (.bnot 7184) := by core033_kernel_decide
theorem stats7185 : actualRows7185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7185=6276 := by core033_kernel_decide
theorem rows7186 : actualRows7186=WordField.canonicalRows actualModulus 7186 (.bxor 7183 7185) := by core033_kernel_decide
theorem stats7186 : actualRows7186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7186=7428 := by core033_kernel_decide
theorem rows7187 : actualRows7187=WordField.canonicalRows actualModulus 7187 (.shr 5459 8) := by core033_kernel_decide
theorem stats7187 : actualRows7187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7187=4548 := by core033_kernel_decide
theorem rows7188 : actualRows7188=WordField.canonicalRows actualModulus 7188 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7188 : actualRows7188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7188=2820 := by core033_kernel_decide
theorem rows7189 : actualRows7189=WordField.canonicalRows actualModulus 7189 (.bnot 7188) := by core033_kernel_decide
theorem stats7189 : actualRows7189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7189=6276 := by core033_kernel_decide
theorem rows7190 : actualRows7190=WordField.canonicalRows actualModulus 7190 (.badd 7187 7189) := by core033_kernel_decide
theorem stats7190 : actualRows7190.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7190=5388 := by core033_kernel_decide
theorem rows7191 : actualRows7191=WordField.canonicalRows actualModulus 7191 (.bnot 7190) := by core033_kernel_decide
theorem stats7191 : actualRows7191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7191=6276 := by core033_kernel_decide
theorem rows7192 : actualRows7192=WordField.canonicalRows actualModulus 7192 (.band 7186 7191) := by core033_kernel_decide
theorem stats7192 : actualRows7192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7192=5124 := by core033_kernel_decide
theorem rows7193 : actualRows7193=WordField.canonicalRows actualModulus 7193 (.bxor 7182 7192) := by core033_kernel_decide
theorem stats7193 : actualRows7193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7193=7428 := by core033_kernel_decide
theorem rows7194 : actualRows7194=WordField.canonicalRows actualModulus 7194 (.shr 7193 31) := by core033_kernel_decide
theorem stats7194 : actualRows7194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7194=2892 := by core033_kernel_decide
theorem rows7195 : actualRows7195=WordField.canonicalRows actualModulus 7195 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7195 : actualRows7195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7195=2892 := by core033_kernel_decide
theorem rows7196 : actualRows7196=WordField.canonicalRows actualModulus 7196 (.bxor 7194 7195) := by core033_kernel_decide
theorem stats7196 : actualRows7196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7196=7428 := by core033_kernel_decide
theorem rows7197 : actualRows7197=WordField.canonicalRows actualModulus 7197 (.shr 5511 8) := by core033_kernel_decide
theorem stats7197 : actualRows7197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7197=4548 := by core033_kernel_decide
theorem rows7198 : actualRows7198=WordField.canonicalRows actualModulus 7198 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7198 : actualRows7198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7198=2820 := by core033_kernel_decide
theorem rows7199 : actualRows7199=WordField.canonicalRows actualModulus 7199 (.bnot 7198) := by core033_kernel_decide
theorem stats7199 : actualRows7199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7199=6276 := by core033_kernel_decide
def partRows110 : List R1CS.Row := actualRows7136++actualRows7137++actualRows7138++actualRows7139++actualRows7140++actualRows7141++actualRows7142++actualRows7143++actualRows7144++actualRows7145++actualRows7146++actualRows7147++actualRows7148++actualRows7149++actualRows7150++actualRows7151++actualRows7152++actualRows7153++actualRows7154++actualRows7155++actualRows7156++actualRows7157++actualRows7158++actualRows7159++actualRows7160++actualRows7161++actualRows7162++actualRows7163++actualRows7164++actualRows7165++actualRows7166++actualRows7167++actualRows7168++actualRows7169++actualRows7170++actualRows7171++actualRows7172++actualRows7173++actualRows7174++actualRows7175++actualRows7176++actualRows7177++actualRows7178++actualRows7179++actualRows7180++actualRows7181++actualRows7182++actualRows7183++actualRows7184++actualRows7185++actualRows7186++actualRows7187++actualRows7188++actualRows7189++actualRows7190++actualRows7191++actualRows7192++actualRows7193++actualRows7194++actualRows7195++actualRows7196++actualRows7197++actualRows7198++actualRows7199
def partOps110 : List WordIR.Op := [.badd 7133 7135,.bnot 7136,.band 7132 7137,.bxor 7128 7138,.shr 7139 31,.literal (BitVec.ofNat 32 1),.bxor 7140 7141,.shr 5355 8,.literal (BitVec.ofNat 32 0),.bnot 7144,.band 7143 7145,.shr 5355 8,.literal (BitVec.ofNat 32 0),.bnot 7148,.bxor 7147 7149,.shr 5355 8,.literal (BitVec.ofNat 32 0),.bnot 7152,.badd 7151 7153,.bnot 7154,.band 7150 7155,.bxor 7146 7156,.shr 7157 31,.literal (BitVec.ofNat 32 1),.bxor 7158 7159,.shr 5407 8,.literal (BitVec.ofNat 32 0),.bnot 7162,.band 7161 7163,.shr 5407 8,.literal (BitVec.ofNat 32 0),.bnot 7166,.bxor 7165 7167,.shr 5407 8,.literal (BitVec.ofNat 32 0),.bnot 7170,.badd 7169 7171,.bnot 7172,.band 7168 7173,.bxor 7164 7174,.shr 7175 31,.literal (BitVec.ofNat 32 1),.bxor 7176 7177,.shr 5459 8,.literal (BitVec.ofNat 32 0),.bnot 7180,.band 7179 7181,.shr 5459 8,.literal (BitVec.ofNat 32 0),.bnot 7184,.bxor 7183 7185,.shr 5459 8,.literal (BitVec.ofNat 32 0),.bnot 7188,.badd 7187 7189,.bnot 7190,.band 7186 7191,.bxor 7182 7192,.shr 7193 31,.literal (BitVec.ofNat 32 1),.bxor 7194 7195,.shr 5511 8,.literal (BitVec.ofNat 32 0),.bnot 7198]
theorem partExact110 : partRows110=WordField.rows actualModulus 7136 partOps110 := by
  simp only [partRows110,partOps110,WordField.rows,rows7136,rows7137,rows7138,rows7139,rows7140,rows7141,rows7142,rows7143,rows7144,rows7145,rows7146,rows7147,rows7148,rows7149,rows7150,rows7151,rows7152,rows7153,rows7154,rows7155,rows7156,rows7157,rows7158,rows7159,rows7160,rows7161,rows7162,rows7163,rows7164,rows7165,rows7166,rows7167,rows7168,rows7169,rows7170,rows7171,rows7172,rows7173,rows7174,rows7175,rows7176,rows7177,rows7178,rows7179,rows7180,rows7181,rows7182,rows7183,rows7184,rows7185,rows7186,rows7187,rows7188,rows7189,rows7190,rows7191,rows7192,rows7193,rows7194,rows7195,rows7196,rows7197,rows7198,rows7199,List.append_assoc,List.append_nil]
theorem partLength110 : partOps110.length=64 := by decide
theorem partStats110 : partRows110.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows110=323808 := by
  simp only [partRows110,List.length_append,MatrixRowBlocks.rows_weight_append,stats7136.1,stats7136.2,stats7137.1,stats7137.2,stats7138.1,stats7138.2,stats7139.1,stats7139.2,stats7140.1,stats7140.2,stats7141.1,stats7141.2,stats7142.1,stats7142.2,stats7143.1,stats7143.2,stats7144.1,stats7144.2,stats7145.1,stats7145.2,stats7146.1,stats7146.2,stats7147.1,stats7147.2,stats7148.1,stats7148.2,stats7149.1,stats7149.2,stats7150.1,stats7150.2,stats7151.1,stats7151.2,stats7152.1,stats7152.2,stats7153.1,stats7153.2,stats7154.1,stats7154.2,stats7155.1,stats7155.2,stats7156.1,stats7156.2,stats7157.1,stats7157.2,stats7158.1,stats7158.2,stats7159.1,stats7159.2,stats7160.1,stats7160.2,stats7161.1,stats7161.2,stats7162.1,stats7162.2,stats7163.1,stats7163.2,stats7164.1,stats7164.2,stats7165.1,stats7165.2,stats7166.1,stats7166.2,stats7167.1,stats7167.2,stats7168.1,stats7168.2,stats7169.1,stats7169.2,stats7170.1,stats7170.2,stats7171.1,stats7171.2,stats7172.1,stats7172.2,stats7173.1,stats7173.2,stats7174.1,stats7174.2,stats7175.1,stats7175.2,stats7176.1,stats7176.2,stats7177.1,stats7177.2,stats7178.1,stats7178.2,stats7179.1,stats7179.2,stats7180.1,stats7180.2,stats7181.1,stats7181.2,stats7182.1,stats7182.2,stats7183.1,stats7183.2,stats7184.1,stats7184.2,stats7185.1,stats7185.2,stats7186.1,stats7186.2,stats7187.1,stats7187.2,stats7188.1,stats7188.2,stats7189.1,stats7189.2,stats7190.1,stats7190.2,stats7191.1,stats7191.2,stats7192.1,stats7192.2,stats7193.1,stats7193.2,stats7194.1,stats7194.2,stats7195.1,stats7195.2,stats7196.1,stats7196.2,stats7197.1,stats7197.2,stats7198.1,stats7198.2,stats7199.1,stats7199.2]
  decide
end PairedPathRoundCheckedRows
