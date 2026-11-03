import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData111
import PathRoundDispatchInstructionMatrixData112
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7147 : actualRows7147=WordField.canonicalRows actualModulus 7147 (.bxor 7145 7146) := by core033_kernel_decide
theorem stats7147 : actualRows7147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7147=7428 := by core033_kernel_decide
theorem rows7148 : actualRows7148=WordField.canonicalRows actualModulus 7148 (.badd 7142 7147) := by core033_kernel_decide
theorem stats7148 : actualRows7148.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7148=5388 := by core033_kernel_decide
theorem rows7149 : actualRows7149=WordField.canonicalRows actualModulus 7149 (.badd 7148 6941) := by core033_kernel_decide
theorem stats7149 : actualRows7149.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7149=5388 := by core033_kernel_decide
theorem rows7150 : actualRows7150=WordField.canonicalRows actualModulus 7150 (.rotr 7136 17) := by core033_kernel_decide
theorem stats7150 : actualRows7150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7150=5124 := by core033_kernel_decide
theorem rows7151 : actualRows7151=WordField.canonicalRows actualModulus 7151 (.rotr 7136 19) := by core033_kernel_decide
theorem stats7151 : actualRows7151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7151=5124 := by core033_kernel_decide
theorem rows7152 : actualRows7152=WordField.canonicalRows actualModulus 7152 (.bxor 7150 7151) := by core033_kernel_decide
theorem stats7152 : actualRows7152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7152=7428 := by core033_kernel_decide
theorem rows7153 : actualRows7153=WordField.canonicalRows actualModulus 7153 (.shr 7136 10) := by core033_kernel_decide
theorem stats7153 : actualRows7153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7153=4404 := by core033_kernel_decide
theorem rows7154 : actualRows7154=WordField.canonicalRows actualModulus 7154 (.bxor 7152 7153) := by core033_kernel_decide
theorem stats7154 : actualRows7154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7154=7428 := by core033_kernel_decide
theorem rows7155 : actualRows7155=WordField.canonicalRows actualModulus 7155 (.badd 7154 7071) := by core033_kernel_decide
theorem stats7155 : actualRows7155.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7155=5388 := by core033_kernel_decide
theorem rows7156 : actualRows7156=WordField.canonicalRows actualModulus 7156 (.rotr 6967 7) := by core033_kernel_decide
theorem stats7156 : actualRows7156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7156=5124 := by core033_kernel_decide
theorem rows7157 : actualRows7157=WordField.canonicalRows actualModulus 7157 (.rotr 6967 18) := by core033_kernel_decide
theorem stats7157 : actualRows7157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7157=5124 := by core033_kernel_decide
theorem rows7158 : actualRows7158=WordField.canonicalRows actualModulus 7158 (.bxor 7156 7157) := by core033_kernel_decide
theorem stats7158 : actualRows7158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7158=7428 := by core033_kernel_decide
theorem rows7159 : actualRows7159=WordField.canonicalRows actualModulus 7159 (.shr 6967 3) := by core033_kernel_decide
theorem stats7159 : actualRows7159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7159=4908 := by core033_kernel_decide
theorem rows7160 : actualRows7160=WordField.canonicalRows actualModulus 7160 (.bxor 7158 7159) := by core033_kernel_decide
theorem stats7160 : actualRows7160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7160=7428 := by core033_kernel_decide
theorem rows7161 : actualRows7161=WordField.canonicalRows actualModulus 7161 (.badd 7155 7160) := by core033_kernel_decide
theorem stats7161 : actualRows7161.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7161=5388 := by core033_kernel_decide
theorem rows7162 : actualRows7162=WordField.canonicalRows actualModulus 7162 (.badd 7161 6954) := by core033_kernel_decide
theorem stats7162 : actualRows7162.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7162=5388 := by core033_kernel_decide
theorem rows7163 : actualRows7163=WordField.canonicalRows actualModulus 7163 (.rotr 7149 17) := by core033_kernel_decide
theorem stats7163 : actualRows7163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7163=5124 := by core033_kernel_decide
theorem rows7164 : actualRows7164=WordField.canonicalRows actualModulus 7164 (.rotr 7149 19) := by core033_kernel_decide
theorem stats7164 : actualRows7164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7164=5124 := by core033_kernel_decide
theorem rows7165 : actualRows7165=WordField.canonicalRows actualModulus 7165 (.bxor 7163 7164) := by core033_kernel_decide
theorem stats7165 : actualRows7165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7165=7428 := by core033_kernel_decide
theorem rows7166 : actualRows7166=WordField.canonicalRows actualModulus 7166 (.shr 7149 10) := by core033_kernel_decide
theorem stats7166 : actualRows7166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7166=4404 := by core033_kernel_decide
theorem rows7167 : actualRows7167=WordField.canonicalRows actualModulus 7167 (.bxor 7165 7166) := by core033_kernel_decide
theorem stats7167 : actualRows7167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7167=7428 := by core033_kernel_decide
theorem rows7168 : actualRows7168=WordField.canonicalRows actualModulus 7168 (.badd 7167 7084) := by core033_kernel_decide
theorem stats7168 : actualRows7168.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7168=5388 := by core033_kernel_decide
theorem rows7169 : actualRows7169=WordField.canonicalRows actualModulus 7169 (.rotr 6980 7) := by core033_kernel_decide
theorem stats7169 : actualRows7169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7169=5124 := by core033_kernel_decide
theorem rows7170 : actualRows7170=WordField.canonicalRows actualModulus 7170 (.rotr 6980 18) := by core033_kernel_decide
theorem stats7170 : actualRows7170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7170=5124 := by core033_kernel_decide
theorem rows7171 : actualRows7171=WordField.canonicalRows actualModulus 7171 (.bxor 7169 7170) := by core033_kernel_decide
theorem stats7171 : actualRows7171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7171=7428 := by core033_kernel_decide
theorem rows7172 : actualRows7172=WordField.canonicalRows actualModulus 7172 (.shr 6980 3) := by core033_kernel_decide
theorem stats7172 : actualRows7172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7172=4908 := by core033_kernel_decide
theorem rows7173 : actualRows7173=WordField.canonicalRows actualModulus 7173 (.bxor 7171 7172) := by core033_kernel_decide
theorem stats7173 : actualRows7173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7173=7428 := by core033_kernel_decide
theorem rows7174 : actualRows7174=WordField.canonicalRows actualModulus 7174 (.badd 7168 7173) := by core033_kernel_decide
theorem stats7174 : actualRows7174.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7174=5388 := by core033_kernel_decide
theorem rows7175 : actualRows7175=WordField.canonicalRows actualModulus 7175 (.badd 7174 6967) := by core033_kernel_decide
theorem stats7175 : actualRows7175.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7175=5388 := by core033_kernel_decide
theorem rows7176 : actualRows7176=WordField.canonicalRows actualModulus 7176 (.rotr 7162 17) := by core033_kernel_decide
theorem stats7176 : actualRows7176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7176=5124 := by core033_kernel_decide
theorem rows7177 : actualRows7177=WordField.canonicalRows actualModulus 7177 (.rotr 7162 19) := by core033_kernel_decide
theorem stats7177 : actualRows7177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7177=5124 := by core033_kernel_decide
theorem rows7178 : actualRows7178=WordField.canonicalRows actualModulus 7178 (.bxor 7176 7177) := by core033_kernel_decide
theorem stats7178 : actualRows7178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7178=7428 := by core033_kernel_decide
theorem rows7179 : actualRows7179=WordField.canonicalRows actualModulus 7179 (.shr 7162 10) := by core033_kernel_decide
theorem stats7179 : actualRows7179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7179=4404 := by core033_kernel_decide
theorem rows7180 : actualRows7180=WordField.canonicalRows actualModulus 7180 (.bxor 7178 7179) := by core033_kernel_decide
theorem stats7180 : actualRows7180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7180=7428 := by core033_kernel_decide
theorem rows7181 : actualRows7181=WordField.canonicalRows actualModulus 7181 (.badd 7180 7097) := by core033_kernel_decide
theorem stats7181 : actualRows7181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7181=5388 := by core033_kernel_decide
theorem rows7182 : actualRows7182=WordField.canonicalRows actualModulus 7182 (.rotr 6993 7) := by core033_kernel_decide
theorem stats7182 : actualRows7182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7182=5124 := by core033_kernel_decide
theorem rows7183 : actualRows7183=WordField.canonicalRows actualModulus 7183 (.rotr 6993 18) := by core033_kernel_decide
theorem stats7183 : actualRows7183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7183=5124 := by core033_kernel_decide
theorem rows7184 : actualRows7184=WordField.canonicalRows actualModulus 7184 (.bxor 7182 7183) := by core033_kernel_decide
theorem stats7184 : actualRows7184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7184=7428 := by core033_kernel_decide
theorem rows7185 : actualRows7185=WordField.canonicalRows actualModulus 7185 (.shr 6993 3) := by core033_kernel_decide
theorem stats7185 : actualRows7185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7185=4908 := by core033_kernel_decide
theorem rows7186 : actualRows7186=WordField.canonicalRows actualModulus 7186 (.bxor 7184 7185) := by core033_kernel_decide
theorem stats7186 : actualRows7186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7186=7428 := by core033_kernel_decide
theorem rows7187 : actualRows7187=WordField.canonicalRows actualModulus 7187 (.badd 7181 7186) := by core033_kernel_decide
theorem stats7187 : actualRows7187.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7187=5388 := by core033_kernel_decide
theorem rows7188 : actualRows7188=WordField.canonicalRows actualModulus 7188 (.badd 7187 6980) := by core033_kernel_decide
theorem stats7188 : actualRows7188.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7188=5388 := by core033_kernel_decide
theorem rows7189 : actualRows7189=WordField.canonicalRows actualModulus 7189 (.rotr 7175 17) := by core033_kernel_decide
theorem stats7189 : actualRows7189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7189=5124 := by core033_kernel_decide
theorem rows7190 : actualRows7190=WordField.canonicalRows actualModulus 7190 (.rotr 7175 19) := by core033_kernel_decide
theorem stats7190 : actualRows7190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7190=5124 := by core033_kernel_decide
theorem rows7191 : actualRows7191=WordField.canonicalRows actualModulus 7191 (.bxor 7189 7190) := by core033_kernel_decide
theorem stats7191 : actualRows7191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7191=7428 := by core033_kernel_decide
theorem rows7192 : actualRows7192=WordField.canonicalRows actualModulus 7192 (.shr 7175 10) := by core033_kernel_decide
theorem stats7192 : actualRows7192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7192=4404 := by core033_kernel_decide
theorem rows7193 : actualRows7193=WordField.canonicalRows actualModulus 7193 (.bxor 7191 7192) := by core033_kernel_decide
theorem stats7193 : actualRows7193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7193=7428 := by core033_kernel_decide
theorem rows7194 : actualRows7194=WordField.canonicalRows actualModulus 7194 (.badd 7193 7110) := by core033_kernel_decide
theorem stats7194 : actualRows7194.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7194=5388 := by core033_kernel_decide
theorem rows7195 : actualRows7195=WordField.canonicalRows actualModulus 7195 (.rotr 7006 7) := by core033_kernel_decide
theorem stats7195 : actualRows7195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7195=5124 := by core033_kernel_decide
theorem rows7196 : actualRows7196=WordField.canonicalRows actualModulus 7196 (.rotr 7006 18) := by core033_kernel_decide
theorem stats7196 : actualRows7196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7196=5124 := by core033_kernel_decide
theorem rows7197 : actualRows7197=WordField.canonicalRows actualModulus 7197 (.bxor 7195 7196) := by core033_kernel_decide
theorem stats7197 : actualRows7197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7197=7428 := by core033_kernel_decide
theorem rows7198 : actualRows7198=WordField.canonicalRows actualModulus 7198 (.shr 7006 3) := by core033_kernel_decide
theorem stats7198 : actualRows7198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7198=4908 := by core033_kernel_decide
theorem rows7199 : actualRows7199=WordField.canonicalRows actualModulus 7199 (.bxor 7197 7198) := by core033_kernel_decide
theorem stats7199 : actualRows7199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7199=7428 := by core033_kernel_decide
theorem rows7200 : actualRows7200=WordField.canonicalRows actualModulus 7200 (.badd 7194 7199) := by core033_kernel_decide
theorem stats7200 : actualRows7200.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7200=5388 := by core033_kernel_decide
theorem rows7201 : actualRows7201=WordField.canonicalRows actualModulus 7201 (.badd 7200 6993) := by core033_kernel_decide
theorem stats7201 : actualRows7201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7201=5388 := by core033_kernel_decide
theorem rows7202 : actualRows7202=WordField.canonicalRows actualModulus 7202 (.rotr 7188 17) := by core033_kernel_decide
theorem stats7202 : actualRows7202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7202=5124 := by core033_kernel_decide
theorem rows7203 : actualRows7203=WordField.canonicalRows actualModulus 7203 (.rotr 7188 19) := by core033_kernel_decide
theorem stats7203 : actualRows7203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7203=5124 := by core033_kernel_decide
theorem rows7204 : actualRows7204=WordField.canonicalRows actualModulus 7204 (.bxor 7202 7203) := by core033_kernel_decide
theorem stats7204 : actualRows7204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7204=7428 := by core033_kernel_decide
theorem rows7205 : actualRows7205=WordField.canonicalRows actualModulus 7205 (.shr 7188 10) := by core033_kernel_decide
theorem stats7205 : actualRows7205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7205=4404 := by core033_kernel_decide
theorem rows7206 : actualRows7206=WordField.canonicalRows actualModulus 7206 (.bxor 7204 7205) := by core033_kernel_decide
theorem stats7206 : actualRows7206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7206=7428 := by core033_kernel_decide
theorem rows7207 : actualRows7207=WordField.canonicalRows actualModulus 7207 (.badd 7206 7123) := by core033_kernel_decide
theorem stats7207 : actualRows7207.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7207=5388 := by core033_kernel_decide
theorem rows7208 : actualRows7208=WordField.canonicalRows actualModulus 7208 (.rotr 7019 7) := by core033_kernel_decide
theorem stats7208 : actualRows7208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7208=5124 := by core033_kernel_decide
theorem rows7209 : actualRows7209=WordField.canonicalRows actualModulus 7209 (.rotr 7019 18) := by core033_kernel_decide
theorem stats7209 : actualRows7209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7209=5124 := by core033_kernel_decide
theorem rows7210 : actualRows7210=WordField.canonicalRows actualModulus 7210 (.bxor 7208 7209) := by core033_kernel_decide
theorem stats7210 : actualRows7210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7210=7428 := by core033_kernel_decide
def partRows111 : List R1CS.Row := actualRows7147++actualRows7148++actualRows7149++actualRows7150++actualRows7151++actualRows7152++actualRows7153++actualRows7154++actualRows7155++actualRows7156++actualRows7157++actualRows7158++actualRows7159++actualRows7160++actualRows7161++actualRows7162++actualRows7163++actualRows7164++actualRows7165++actualRows7166++actualRows7167++actualRows7168++actualRows7169++actualRows7170++actualRows7171++actualRows7172++actualRows7173++actualRows7174++actualRows7175++actualRows7176++actualRows7177++actualRows7178++actualRows7179++actualRows7180++actualRows7181++actualRows7182++actualRows7183++actualRows7184++actualRows7185++actualRows7186++actualRows7187++actualRows7188++actualRows7189++actualRows7190++actualRows7191++actualRows7192++actualRows7193++actualRows7194++actualRows7195++actualRows7196++actualRows7197++actualRows7198++actualRows7199++actualRows7200++actualRows7201++actualRows7202++actualRows7203++actualRows7204++actualRows7205++actualRows7206++actualRows7207++actualRows7208++actualRows7209++actualRows7210
def partOps111 : List WordIR.Op := [.bxor 7145 7146,.badd 7142 7147,.badd 7148 6941,.rotr 7136 17,.rotr 7136 19,.bxor 7150 7151,.shr 7136 10,.bxor 7152 7153,.badd 7154 7071,.rotr 6967 7,.rotr 6967 18,.bxor 7156 7157,.shr 6967 3,.bxor 7158 7159,.badd 7155 7160,.badd 7161 6954,.rotr 7149 17,.rotr 7149 19,.bxor 7163 7164,.shr 7149 10,.bxor 7165 7166,.badd 7167 7084,.rotr 6980 7,.rotr 6980 18,.bxor 7169 7170,.shr 6980 3,.bxor 7171 7172,.badd 7168 7173,.badd 7174 6967,.rotr 7162 17,.rotr 7162 19,.bxor 7176 7177,.shr 7162 10,.bxor 7178 7179,.badd 7180 7097,.rotr 6993 7,.rotr 6993 18,.bxor 7182 7183,.shr 6993 3,.bxor 7184 7185,.badd 7181 7186,.badd 7187 6980,.rotr 7175 17,.rotr 7175 19,.bxor 7189 7190,.shr 7175 10,.bxor 7191 7192,.badd 7193 7110,.rotr 7006 7,.rotr 7006 18,.bxor 7195 7196,.shr 7006 3,.bxor 7197 7198,.badd 7194 7199,.badd 7200 6993,.rotr 7188 17,.rotr 7188 19,.bxor 7202 7203,.shr 7188 10,.bxor 7204 7205,.badd 7206 7123,.rotr 7019 7,.rotr 7019 18,.bxor 7208 7209]
theorem partExact111 : partRows111=WordField.rows actualModulus 7147 partOps111 := by
  simp only [partRows111,partOps111,WordField.rows,rows7147,rows7148,rows7149,rows7150,rows7151,rows7152,rows7153,rows7154,rows7155,rows7156,rows7157,rows7158,rows7159,rows7160,rows7161,rows7162,rows7163,rows7164,rows7165,rows7166,rows7167,rows7168,rows7169,rows7170,rows7171,rows7172,rows7173,rows7174,rows7175,rows7176,rows7177,rows7178,rows7179,rows7180,rows7181,rows7182,rows7183,rows7184,rows7185,rows7186,rows7187,rows7188,rows7189,rows7190,rows7191,rows7192,rows7193,rows7194,rows7195,rows7196,rows7197,rows7198,rows7199,rows7200,rows7201,rows7202,rows7203,rows7204,rows7205,rows7206,rows7207,rows7208,rows7209,rows7210,List.append_assoc,List.append_nil]
theorem partLength111 : partOps111.length=64 := by decide
theorem partStats111 : partRows111.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows111=373512 := by
  simp only [partRows111,List.length_append,MatrixRowBlocks.rows_weight_append,stats7147.1,stats7147.2,stats7148.1,stats7148.2,stats7149.1,stats7149.2,stats7150.1,stats7150.2,stats7151.1,stats7151.2,stats7152.1,stats7152.2,stats7153.1,stats7153.2,stats7154.1,stats7154.2,stats7155.1,stats7155.2,stats7156.1,stats7156.2,stats7157.1,stats7157.2,stats7158.1,stats7158.2,stats7159.1,stats7159.2,stats7160.1,stats7160.2,stats7161.1,stats7161.2,stats7162.1,stats7162.2,stats7163.1,stats7163.2,stats7164.1,stats7164.2,stats7165.1,stats7165.2,stats7166.1,stats7166.2,stats7167.1,stats7167.2,stats7168.1,stats7168.2,stats7169.1,stats7169.2,stats7170.1,stats7170.2,stats7171.1,stats7171.2,stats7172.1,stats7172.2,stats7173.1,stats7173.2,stats7174.1,stats7174.2,stats7175.1,stats7175.2,stats7176.1,stats7176.2,stats7177.1,stats7177.2,stats7178.1,stats7178.2,stats7179.1,stats7179.2,stats7180.1,stats7180.2,stats7181.1,stats7181.2,stats7182.1,stats7182.2,stats7183.1,stats7183.2,stats7184.1,stats7184.2,stats7185.1,stats7185.2,stats7186.1,stats7186.2,stats7187.1,stats7187.2,stats7188.1,stats7188.2,stats7189.1,stats7189.2,stats7190.1,stats7190.2,stats7191.1,stats7191.2,stats7192.1,stats7192.2,stats7193.1,stats7193.2,stats7194.1,stats7194.2,stats7195.1,stats7195.2,stats7196.1,stats7196.2,stats7197.1,stats7197.2,stats7198.1,stats7198.2,stats7199.1,stats7199.2,stats7200.1,stats7200.2,stats7201.1,stats7201.2,stats7202.1,stats7202.2,stats7203.1,stats7203.2,stats7204.1,stats7204.2,stats7205.1,stats7205.2,stats7206.1,stats7206.2,stats7207.1,stats7207.2,stats7208.1,stats7208.2,stats7209.1,stats7209.2,stats7210.1,stats7210.2]
  decide
end PathRoundDispatchCheckedRows
