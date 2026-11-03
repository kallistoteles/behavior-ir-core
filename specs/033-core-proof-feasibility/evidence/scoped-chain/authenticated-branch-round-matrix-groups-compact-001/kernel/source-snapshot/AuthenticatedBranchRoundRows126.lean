import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData127
import AuthenticatedBranchRoundInstructionMatrixData128
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8182 : actualRows8182=WordField.canonicalRows actualModulus 8182 (.badd 8176 8181) := by core033_kernel_decide
theorem stats8182 : actualRows8182.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8182=5388 := by core033_kernel_decide
theorem rows8183 : actualRows8183=WordField.canonicalRows actualModulus 8183 (.badd 8182 6907) := by core033_kernel_decide
theorem stats8183 : actualRows8183.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8183=5388 := by core033_kernel_decide
theorem rows8184 : actualRows8184=WordField.canonicalRows actualModulus 8184 (.rotr 8170 17) := by core033_kernel_decide
theorem stats8184 : actualRows8184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8184=5124 := by core033_kernel_decide
theorem rows8185 : actualRows8185=WordField.canonicalRows actualModulus 8185 (.rotr 8170 19) := by core033_kernel_decide
theorem stats8185 : actualRows8185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8185=5124 := by core033_kernel_decide
theorem rows8186 : actualRows8186=WordField.canonicalRows actualModulus 8186 (.bxor 8184 8185) := by core033_kernel_decide
theorem stats8186 : actualRows8186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8186=7428 := by core033_kernel_decide
theorem rows8187 : actualRows8187=WordField.canonicalRows actualModulus 8187 (.shr 8170 10) := by core033_kernel_decide
theorem stats8187 : actualRows8187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8187=4404 := by core033_kernel_decide
theorem rows8188 : actualRows8188=WordField.canonicalRows actualModulus 8188 (.bxor 8186 8187) := by core033_kernel_decide
theorem stats8188 : actualRows8188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8188=7428 := by core033_kernel_decide
theorem rows8189 : actualRows8189=WordField.canonicalRows actualModulus 8189 (.badd 8188 6967) := by core033_kernel_decide
theorem stats8189 : actualRows8189.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8189=5388 := by core033_kernel_decide
theorem rows8190 : actualRows8190=WordField.canonicalRows actualModulus 8190 (.rotr 6919 7) := by core033_kernel_decide
theorem stats8190 : actualRows8190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8190=5124 := by core033_kernel_decide
theorem rows8191 : actualRows8191=WordField.canonicalRows actualModulus 8191 (.rotr 6919 18) := by core033_kernel_decide
theorem stats8191 : actualRows8191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8191=5124 := by core033_kernel_decide
theorem rows8192 : actualRows8192=WordField.canonicalRows actualModulus 8192 (.bxor 8190 8191) := by core033_kernel_decide
theorem stats8192 : actualRows8192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8192=7428 := by core033_kernel_decide
theorem rows8193 : actualRows8193=WordField.canonicalRows actualModulus 8193 (.shr 6919 3) := by core033_kernel_decide
theorem stats8193 : actualRows8193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8193=4908 := by core033_kernel_decide
theorem rows8194 : actualRows8194=WordField.canonicalRows actualModulus 8194 (.bxor 8192 8193) := by core033_kernel_decide
theorem stats8194 : actualRows8194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8194=7428 := by core033_kernel_decide
theorem rows8195 : actualRows8195=WordField.canonicalRows actualModulus 8195 (.badd 8189 8194) := by core033_kernel_decide
theorem stats8195 : actualRows8195.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8195=5388 := by core033_kernel_decide
theorem rows8196 : actualRows8196=WordField.canonicalRows actualModulus 8196 (.badd 8195 6913) := by core033_kernel_decide
theorem stats8196 : actualRows8196.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8196=5388 := by core033_kernel_decide
theorem rows8197 : actualRows8197=WordField.canonicalRows actualModulus 8197 (.rotr 8183 17) := by core033_kernel_decide
theorem stats8197 : actualRows8197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8197=5124 := by core033_kernel_decide
theorem rows8198 : actualRows8198=WordField.canonicalRows actualModulus 8198 (.rotr 8183 19) := by core033_kernel_decide
theorem stats8198 : actualRows8198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8198=5124 := by core033_kernel_decide
theorem rows8199 : actualRows8199=WordField.canonicalRows actualModulus 8199 (.bxor 8197 8198) := by core033_kernel_decide
theorem stats8199 : actualRows8199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8199=7428 := by core033_kernel_decide
theorem rows8200 : actualRows8200=WordField.canonicalRows actualModulus 8200 (.shr 8183 10) := by core033_kernel_decide
theorem stats8200 : actualRows8200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8200=4404 := by core033_kernel_decide
theorem rows8201 : actualRows8201=WordField.canonicalRows actualModulus 8201 (.bxor 8199 8200) := by core033_kernel_decide
theorem stats8201 : actualRows8201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8201=7428 := by core033_kernel_decide
theorem rows8202 : actualRows8202=WordField.canonicalRows actualModulus 8202 (.badd 8201 6973) := by core033_kernel_decide
theorem stats8202 : actualRows8202.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8202=5388 := by core033_kernel_decide
theorem rows8203 : actualRows8203=WordField.canonicalRows actualModulus 8203 (.rotr 6925 7) := by core033_kernel_decide
theorem stats8203 : actualRows8203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8203=5124 := by core033_kernel_decide
theorem rows8204 : actualRows8204=WordField.canonicalRows actualModulus 8204 (.rotr 6925 18) := by core033_kernel_decide
theorem stats8204 : actualRows8204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8204=5124 := by core033_kernel_decide
theorem rows8205 : actualRows8205=WordField.canonicalRows actualModulus 8205 (.bxor 8203 8204) := by core033_kernel_decide
theorem stats8205 : actualRows8205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8205=7428 := by core033_kernel_decide
theorem rows8206 : actualRows8206=WordField.canonicalRows actualModulus 8206 (.shr 6925 3) := by core033_kernel_decide
theorem stats8206 : actualRows8206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8206=4908 := by core033_kernel_decide
theorem rows8207 : actualRows8207=WordField.canonicalRows actualModulus 8207 (.bxor 8205 8206) := by core033_kernel_decide
theorem stats8207 : actualRows8207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8207=7428 := by core033_kernel_decide
theorem rows8208 : actualRows8208=WordField.canonicalRows actualModulus 8208 (.badd 8202 8207) := by core033_kernel_decide
theorem stats8208 : actualRows8208.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8208=5388 := by core033_kernel_decide
theorem rows8209 : actualRows8209=WordField.canonicalRows actualModulus 8209 (.badd 8208 6919) := by core033_kernel_decide
theorem stats8209 : actualRows8209.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8209=5388 := by core033_kernel_decide
theorem rows8210 : actualRows8210=WordField.canonicalRows actualModulus 8210 (.rotr 8196 17) := by core033_kernel_decide
theorem stats8210 : actualRows8210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8210=5124 := by core033_kernel_decide
theorem rows8211 : actualRows8211=WordField.canonicalRows actualModulus 8211 (.rotr 8196 19) := by core033_kernel_decide
theorem stats8211 : actualRows8211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8211=5124 := by core033_kernel_decide
theorem rows8212 : actualRows8212=WordField.canonicalRows actualModulus 8212 (.bxor 8210 8211) := by core033_kernel_decide
theorem stats8212 : actualRows8212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8212=7428 := by core033_kernel_decide
theorem rows8213 : actualRows8213=WordField.canonicalRows actualModulus 8213 (.shr 8196 10) := by core033_kernel_decide
theorem stats8213 : actualRows8213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8213=4404 := by core033_kernel_decide
theorem rows8214 : actualRows8214=WordField.canonicalRows actualModulus 8214 (.bxor 8212 8213) := by core033_kernel_decide
theorem stats8214 : actualRows8214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8214=7428 := by core033_kernel_decide
theorem rows8215 : actualRows8215=WordField.canonicalRows actualModulus 8215 (.badd 8214 6979) := by core033_kernel_decide
theorem stats8215 : actualRows8215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8215=5388 := by core033_kernel_decide
theorem rows8216 : actualRows8216=WordField.canonicalRows actualModulus 8216 (.rotr 6931 7) := by core033_kernel_decide
theorem stats8216 : actualRows8216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8216=5124 := by core033_kernel_decide
theorem rows8217 : actualRows8217=WordField.canonicalRows actualModulus 8217 (.rotr 6931 18) := by core033_kernel_decide
theorem stats8217 : actualRows8217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8217=5124 := by core033_kernel_decide
theorem rows8218 : actualRows8218=WordField.canonicalRows actualModulus 8218 (.bxor 8216 8217) := by core033_kernel_decide
theorem stats8218 : actualRows8218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8218=7428 := by core033_kernel_decide
theorem rows8219 : actualRows8219=WordField.canonicalRows actualModulus 8219 (.shr 6931 3) := by core033_kernel_decide
theorem stats8219 : actualRows8219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8219=4908 := by core033_kernel_decide
theorem rows8220 : actualRows8220=WordField.canonicalRows actualModulus 8220 (.bxor 8218 8219) := by core033_kernel_decide
theorem stats8220 : actualRows8220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8220=7428 := by core033_kernel_decide
theorem rows8221 : actualRows8221=WordField.canonicalRows actualModulus 8221 (.badd 8215 8220) := by core033_kernel_decide
theorem stats8221 : actualRows8221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8221=5388 := by core033_kernel_decide
theorem rows8222 : actualRows8222=WordField.canonicalRows actualModulus 8222 (.badd 8221 6925) := by core033_kernel_decide
theorem stats8222 : actualRows8222.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8222=5388 := by core033_kernel_decide
theorem rows8223 : actualRows8223=WordField.canonicalRows actualModulus 8223 (.rotr 8209 17) := by core033_kernel_decide
theorem stats8223 : actualRows8223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8223=5124 := by core033_kernel_decide
theorem rows8224 : actualRows8224=WordField.canonicalRows actualModulus 8224 (.rotr 8209 19) := by core033_kernel_decide
theorem stats8224 : actualRows8224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8224=5124 := by core033_kernel_decide
theorem rows8225 : actualRows8225=WordField.canonicalRows actualModulus 8225 (.bxor 8223 8224) := by core033_kernel_decide
theorem stats8225 : actualRows8225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8225=7428 := by core033_kernel_decide
theorem rows8226 : actualRows8226=WordField.canonicalRows actualModulus 8226 (.shr 8209 10) := by core033_kernel_decide
theorem stats8226 : actualRows8226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8226=4404 := by core033_kernel_decide
theorem rows8227 : actualRows8227=WordField.canonicalRows actualModulus 8227 (.bxor 8225 8226) := by core033_kernel_decide
theorem stats8227 : actualRows8227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8227=7428 := by core033_kernel_decide
theorem rows8228 : actualRows8228=WordField.canonicalRows actualModulus 8228 (.badd 8227 8144) := by core033_kernel_decide
theorem stats8228 : actualRows8228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8228=5388 := by core033_kernel_decide
theorem rows8229 : actualRows8229=WordField.canonicalRows actualModulus 8229 (.rotr 6937 7) := by core033_kernel_decide
theorem stats8229 : actualRows8229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8229=5124 := by core033_kernel_decide
theorem rows8230 : actualRows8230=WordField.canonicalRows actualModulus 8230 (.rotr 6937 18) := by core033_kernel_decide
theorem stats8230 : actualRows8230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8230=5124 := by core033_kernel_decide
theorem rows8231 : actualRows8231=WordField.canonicalRows actualModulus 8231 (.bxor 8229 8230) := by core033_kernel_decide
theorem stats8231 : actualRows8231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8231=7428 := by core033_kernel_decide
theorem rows8232 : actualRows8232=WordField.canonicalRows actualModulus 8232 (.shr 6937 3) := by core033_kernel_decide
theorem stats8232 : actualRows8232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8232=4908 := by core033_kernel_decide
theorem rows8233 : actualRows8233=WordField.canonicalRows actualModulus 8233 (.bxor 8231 8232) := by core033_kernel_decide
theorem stats8233 : actualRows8233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8233=7428 := by core033_kernel_decide
theorem rows8234 : actualRows8234=WordField.canonicalRows actualModulus 8234 (.badd 8228 8233) := by core033_kernel_decide
theorem stats8234 : actualRows8234.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8234=5388 := by core033_kernel_decide
theorem rows8235 : actualRows8235=WordField.canonicalRows actualModulus 8235 (.badd 8234 6931) := by core033_kernel_decide
theorem stats8235 : actualRows8235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8235=5388 := by core033_kernel_decide
theorem rows8236 : actualRows8236=WordField.canonicalRows actualModulus 8236 (.rotr 8222 17) := by core033_kernel_decide
theorem stats8236 : actualRows8236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8236=5124 := by core033_kernel_decide
theorem rows8237 : actualRows8237=WordField.canonicalRows actualModulus 8237 (.rotr 8222 19) := by core033_kernel_decide
theorem stats8237 : actualRows8237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8237=5124 := by core033_kernel_decide
theorem rows8238 : actualRows8238=WordField.canonicalRows actualModulus 8238 (.bxor 8236 8237) := by core033_kernel_decide
theorem stats8238 : actualRows8238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8238=7428 := by core033_kernel_decide
theorem rows8239 : actualRows8239=WordField.canonicalRows actualModulus 8239 (.shr 8222 10) := by core033_kernel_decide
theorem stats8239 : actualRows8239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8239=4404 := by core033_kernel_decide
theorem rows8240 : actualRows8240=WordField.canonicalRows actualModulus 8240 (.bxor 8238 8239) := by core033_kernel_decide
theorem stats8240 : actualRows8240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8240=7428 := by core033_kernel_decide
theorem rows8241 : actualRows8241=WordField.canonicalRows actualModulus 8241 (.badd 8240 8157) := by core033_kernel_decide
theorem stats8241 : actualRows8241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8241=5388 := by core033_kernel_decide
theorem rows8242 : actualRows8242=WordField.canonicalRows actualModulus 8242 (.rotr 6943 7) := by core033_kernel_decide
theorem stats8242 : actualRows8242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8242=5124 := by core033_kernel_decide
theorem rows8243 : actualRows8243=WordField.canonicalRows actualModulus 8243 (.rotr 6943 18) := by core033_kernel_decide
theorem stats8243 : actualRows8243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8243=5124 := by core033_kernel_decide
theorem rows8244 : actualRows8244=WordField.canonicalRows actualModulus 8244 (.bxor 8242 8243) := by core033_kernel_decide
theorem stats8244 : actualRows8244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8244=7428 := by core033_kernel_decide
theorem rows8245 : actualRows8245=WordField.canonicalRows actualModulus 8245 (.shr 6943 3) := by core033_kernel_decide
theorem stats8245 : actualRows8245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8245=4908 := by core033_kernel_decide
def partRows126 : List R1CS.Row := actualRows8182++actualRows8183++actualRows8184++actualRows8185++actualRows8186++actualRows8187++actualRows8188++actualRows8189++actualRows8190++actualRows8191++actualRows8192++actualRows8193++actualRows8194++actualRows8195++actualRows8196++actualRows8197++actualRows8198++actualRows8199++actualRows8200++actualRows8201++actualRows8202++actualRows8203++actualRows8204++actualRows8205++actualRows8206++actualRows8207++actualRows8208++actualRows8209++actualRows8210++actualRows8211++actualRows8212++actualRows8213++actualRows8214++actualRows8215++actualRows8216++actualRows8217++actualRows8218++actualRows8219++actualRows8220++actualRows8221++actualRows8222++actualRows8223++actualRows8224++actualRows8225++actualRows8226++actualRows8227++actualRows8228++actualRows8229++actualRows8230++actualRows8231++actualRows8232++actualRows8233++actualRows8234++actualRows8235++actualRows8236++actualRows8237++actualRows8238++actualRows8239++actualRows8240++actualRows8241++actualRows8242++actualRows8243++actualRows8244++actualRows8245
def partOps126 : List WordIR.Op := [.badd 8176 8181,.badd 8182 6907,.rotr 8170 17,.rotr 8170 19,.bxor 8184 8185,.shr 8170 10,.bxor 8186 8187,.badd 8188 6967,.rotr 6919 7,.rotr 6919 18,.bxor 8190 8191,.shr 6919 3,.bxor 8192 8193,.badd 8189 8194,.badd 8195 6913,.rotr 8183 17,.rotr 8183 19,.bxor 8197 8198,.shr 8183 10,.bxor 8199 8200,.badd 8201 6973,.rotr 6925 7,.rotr 6925 18,.bxor 8203 8204,.shr 6925 3,.bxor 8205 8206,.badd 8202 8207,.badd 8208 6919,.rotr 8196 17,.rotr 8196 19,.bxor 8210 8211,.shr 8196 10,.bxor 8212 8213,.badd 8214 6979,.rotr 6931 7,.rotr 6931 18,.bxor 8216 8217,.shr 6931 3,.bxor 8218 8219,.badd 8215 8220,.badd 8221 6925,.rotr 8209 17,.rotr 8209 19,.bxor 8223 8224,.shr 8209 10,.bxor 8225 8226,.badd 8227 8144,.rotr 6937 7,.rotr 6937 18,.bxor 8229 8230,.shr 6937 3,.bxor 8231 8232,.badd 8228 8233,.badd 8234 6931,.rotr 8222 17,.rotr 8222 19,.bxor 8236 8237,.shr 8222 10,.bxor 8238 8239,.badd 8240 8157,.rotr 6943 7,.rotr 6943 18,.bxor 8242 8243,.shr 6943 3]
theorem partExact126 : partRows126=WordField.rows actualModulus 8182 partOps126 := by
  simp only [partRows126,partOps126,WordField.rows,rows8182,rows8183,rows8184,rows8185,rows8186,rows8187,rows8188,rows8189,rows8190,rows8191,rows8192,rows8193,rows8194,rows8195,rows8196,rows8197,rows8198,rows8199,rows8200,rows8201,rows8202,rows8203,rows8204,rows8205,rows8206,rows8207,rows8208,rows8209,rows8210,rows8211,rows8212,rows8213,rows8214,rows8215,rows8216,rows8217,rows8218,rows8219,rows8220,rows8221,rows8222,rows8223,rows8224,rows8225,rows8226,rows8227,rows8228,rows8229,rows8230,rows8231,rows8232,rows8233,rows8234,rows8235,rows8236,rows8237,rows8238,rows8239,rows8240,rows8241,rows8242,rows8243,rows8244,rows8245,List.append_assoc,List.append_nil]
theorem partLength126 : partOps126.length=64 := by decide
theorem partStats126 : partRows126.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows126=370992 := by
  simp only [partRows126,List.length_append,MatrixRowBlocks.rows_weight_append,stats8182.1,stats8182.2,stats8183.1,stats8183.2,stats8184.1,stats8184.2,stats8185.1,stats8185.2,stats8186.1,stats8186.2,stats8187.1,stats8187.2,stats8188.1,stats8188.2,stats8189.1,stats8189.2,stats8190.1,stats8190.2,stats8191.1,stats8191.2,stats8192.1,stats8192.2,stats8193.1,stats8193.2,stats8194.1,stats8194.2,stats8195.1,stats8195.2,stats8196.1,stats8196.2,stats8197.1,stats8197.2,stats8198.1,stats8198.2,stats8199.1,stats8199.2,stats8200.1,stats8200.2,stats8201.1,stats8201.2,stats8202.1,stats8202.2,stats8203.1,stats8203.2,stats8204.1,stats8204.2,stats8205.1,stats8205.2,stats8206.1,stats8206.2,stats8207.1,stats8207.2,stats8208.1,stats8208.2,stats8209.1,stats8209.2,stats8210.1,stats8210.2,stats8211.1,stats8211.2,stats8212.1,stats8212.2,stats8213.1,stats8213.2,stats8214.1,stats8214.2,stats8215.1,stats8215.2,stats8216.1,stats8216.2,stats8217.1,stats8217.2,stats8218.1,stats8218.2,stats8219.1,stats8219.2,stats8220.1,stats8220.2,stats8221.1,stats8221.2,stats8222.1,stats8222.2,stats8223.1,stats8223.2,stats8224.1,stats8224.2,stats8225.1,stats8225.2,stats8226.1,stats8226.2,stats8227.1,stats8227.2,stats8228.1,stats8228.2,stats8229.1,stats8229.2,stats8230.1,stats8230.2,stats8231.1,stats8231.2,stats8232.1,stats8232.2,stats8233.1,stats8233.2,stats8234.1,stats8234.2,stats8235.1,stats8235.2,stats8236.1,stats8236.2,stats8237.1,stats8237.2,stats8238.1,stats8238.2,stats8239.1,stats8239.2,stats8240.1,stats8240.2,stats8241.1,stats8241.2,stats8242.1,stats8242.2,stats8243.1,stats8243.2,stats8244.1,stats8244.2,stats8245.1,stats8245.2]
  decide
end AuthenticatedBranchRoundCheckedRows
