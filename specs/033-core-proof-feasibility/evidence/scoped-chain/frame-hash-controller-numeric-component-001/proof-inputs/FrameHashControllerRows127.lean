import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData127
import FrameHashControllerInstructionMatrixData128
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8171 : actualRows8171=WordField.canonicalRows actualModulus 8171 (.rotr 8170 6) := by core033_kernel_decide
theorem stats8171 : actualRows8171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8171=5124 := by core033_kernel_decide
theorem rows8172 : actualRows8172=WordField.canonicalRows actualModulus 8172 (.rotr 8170 11) := by core033_kernel_decide
theorem stats8172 : actualRows8172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8172=5124 := by core033_kernel_decide
theorem rows8173 : actualRows8173=WordField.canonicalRows actualModulus 8173 (.bxor 8171 8172) := by core033_kernel_decide
theorem stats8173 : actualRows8173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8173=7428 := by core033_kernel_decide
theorem rows8174 : actualRows8174=WordField.canonicalRows actualModulus 8174 (.rotr 8170 25) := by core033_kernel_decide
theorem stats8174 : actualRows8174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8174=5124 := by core033_kernel_decide
theorem rows8175 : actualRows8175=WordField.canonicalRows actualModulus 8175 (.bxor 8173 8174) := by core033_kernel_decide
theorem stats8175 : actualRows8175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8175=7428 := by core033_kernel_decide
theorem rows8176 : actualRows8176=WordField.canonicalRows actualModulus 8176 (.badd 8089 8175) := by core033_kernel_decide
theorem stats8176 : actualRows8176.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8176=5388 := by core033_kernel_decide
theorem rows8177 : actualRows8177=WordField.canonicalRows actualModulus 8177 (.band 8170 8143) := by core033_kernel_decide
theorem stats8177 : actualRows8177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8177=5124 := by core033_kernel_decide
theorem rows8178 : actualRows8178=WordField.canonicalRows actualModulus 8178 (.bnot 8170) := by core033_kernel_decide
theorem stats8178 : actualRows8178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8178=6276 := by core033_kernel_decide
theorem rows8179 : actualRows8179=WordField.canonicalRows actualModulus 8179 (.band 8178 8116) := by core033_kernel_decide
theorem stats8179 : actualRows8179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8179=5124 := by core033_kernel_decide
theorem rows8180 : actualRows8180=WordField.canonicalRows actualModulus 8180 (.bxor 8177 8179) := by core033_kernel_decide
theorem stats8180 : actualRows8180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8180=7428 := by core033_kernel_decide
theorem rows8181 : actualRows8181=WordField.canonicalRows actualModulus 8181 (.badd 8176 8180) := by core033_kernel_decide
theorem stats8181 : actualRows8181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8181=5388 := by core033_kernel_decide
theorem rows8182 : actualRows8182=WordField.canonicalRows actualModulus 8182 (.literal (BitVec.ofNat 32 3259730800)) := by core033_kernel_decide
theorem stats8182 : actualRows8182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8182=3828 := by core033_kernel_decide
theorem rows8183 : actualRows8183=WordField.canonicalRows actualModulus 8183 (.badd 8181 8182) := by core033_kernel_decide
theorem stats8183 : actualRows8183.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8183=5388 := by core033_kernel_decide
theorem rows8184 : actualRows8184=WordField.canonicalRows actualModulus 8184 (.badd 8183 6763) := by core033_kernel_decide
theorem stats8184 : actualRows8184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8184=5388 := by core033_kernel_decide
theorem rows8185 : actualRows8185=WordField.canonicalRows actualModulus 8185 (.rotr 8169 2) := by core033_kernel_decide
theorem stats8185 : actualRows8185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8185=5124 := by core033_kernel_decide
theorem rows8186 : actualRows8186=WordField.canonicalRows actualModulus 8186 (.rotr 8169 13) := by core033_kernel_decide
theorem stats8186 : actualRows8186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8186=5124 := by core033_kernel_decide
theorem rows8187 : actualRows8187=WordField.canonicalRows actualModulus 8187 (.bxor 8185 8186) := by core033_kernel_decide
theorem stats8187 : actualRows8187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8187=7428 := by core033_kernel_decide
theorem rows8188 : actualRows8188=WordField.canonicalRows actualModulus 8188 (.rotr 8169 22) := by core033_kernel_decide
theorem stats8188 : actualRows8188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8188=5124 := by core033_kernel_decide
theorem rows8189 : actualRows8189=WordField.canonicalRows actualModulus 8189 (.bxor 8187 8188) := by core033_kernel_decide
theorem stats8189 : actualRows8189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8189=7428 := by core033_kernel_decide
theorem rows8190 : actualRows8190=WordField.canonicalRows actualModulus 8190 (.band 8169 8142) := by core033_kernel_decide
theorem stats8190 : actualRows8190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8190=5124 := by core033_kernel_decide
theorem rows8191 : actualRows8191=WordField.canonicalRows actualModulus 8191 (.band 8169 8115) := by core033_kernel_decide
theorem stats8191 : actualRows8191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8191=5124 := by core033_kernel_decide
theorem rows8192 : actualRows8192=WordField.canonicalRows actualModulus 8192 (.bxor 8190 8191) := by core033_kernel_decide
theorem stats8192 : actualRows8192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8192=7428 := by core033_kernel_decide
theorem rows8193 : actualRows8193=WordField.canonicalRows actualModulus 8193 (.band 8142 8115) := by core033_kernel_decide
theorem stats8193 : actualRows8193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8193=5124 := by core033_kernel_decide
theorem rows8194 : actualRows8194=WordField.canonicalRows actualModulus 8194 (.bxor 8192 8193) := by core033_kernel_decide
theorem stats8194 : actualRows8194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8194=7428 := by core033_kernel_decide
theorem rows8195 : actualRows8195=WordField.canonicalRows actualModulus 8195 (.badd 8189 8194) := by core033_kernel_decide
theorem stats8195 : actualRows8195.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8195=5388 := by core033_kernel_decide
theorem rows8196 : actualRows8196=WordField.canonicalRows actualModulus 8196 (.badd 8184 8195) := by core033_kernel_decide
theorem stats8196 : actualRows8196.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8196=5388 := by core033_kernel_decide
theorem rows8197 : actualRows8197=WordField.canonicalRows actualModulus 8197 (.badd 8088 8184) := by core033_kernel_decide
theorem stats8197 : actualRows8197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8197=5388 := by core033_kernel_decide
theorem rows8198 : actualRows8198=WordField.canonicalRows actualModulus 8198 (.rotr 8197 6) := by core033_kernel_decide
theorem stats8198 : actualRows8198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8198=5124 := by core033_kernel_decide
theorem rows8199 : actualRows8199=WordField.canonicalRows actualModulus 8199 (.rotr 8197 11) := by core033_kernel_decide
theorem stats8199 : actualRows8199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8199=5124 := by core033_kernel_decide
theorem rows8200 : actualRows8200=WordField.canonicalRows actualModulus 8200 (.bxor 8198 8199) := by core033_kernel_decide
theorem stats8200 : actualRows8200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8200=7428 := by core033_kernel_decide
theorem rows8201 : actualRows8201=WordField.canonicalRows actualModulus 8201 (.rotr 8197 25) := by core033_kernel_decide
theorem stats8201 : actualRows8201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8201=5124 := by core033_kernel_decide
theorem rows8202 : actualRows8202=WordField.canonicalRows actualModulus 8202 (.bxor 8200 8201) := by core033_kernel_decide
theorem stats8202 : actualRows8202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8202=7428 := by core033_kernel_decide
theorem rows8203 : actualRows8203=WordField.canonicalRows actualModulus 8203 (.badd 8116 8202) := by core033_kernel_decide
theorem stats8203 : actualRows8203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8203=5388 := by core033_kernel_decide
theorem rows8204 : actualRows8204=WordField.canonicalRows actualModulus 8204 (.band 8197 8170) := by core033_kernel_decide
theorem stats8204 : actualRows8204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8204=5124 := by core033_kernel_decide
theorem rows8205 : actualRows8205=WordField.canonicalRows actualModulus 8205 (.bnot 8197) := by core033_kernel_decide
theorem stats8205 : actualRows8205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8205=6276 := by core033_kernel_decide
theorem rows8206 : actualRows8206=WordField.canonicalRows actualModulus 8206 (.band 8205 8143) := by core033_kernel_decide
theorem stats8206 : actualRows8206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8206=5124 := by core033_kernel_decide
theorem rows8207 : actualRows8207=WordField.canonicalRows actualModulus 8207 (.bxor 8204 8206) := by core033_kernel_decide
theorem stats8207 : actualRows8207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8207=7428 := by core033_kernel_decide
theorem rows8208 : actualRows8208=WordField.canonicalRows actualModulus 8208 (.badd 8203 8207) := by core033_kernel_decide
theorem stats8208 : actualRows8208.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8208=5388 := by core033_kernel_decide
theorem rows8209 : actualRows8209=WordField.canonicalRows actualModulus 8209 (.literal (BitVec.ofNat 32 3345764771)) := by core033_kernel_decide
theorem stats8209 : actualRows8209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8209=3972 := by core033_kernel_decide
theorem rows8210 : actualRows8210=WordField.canonicalRows actualModulus 8210 (.badd 8208 8209) := by core033_kernel_decide
theorem stats8210 : actualRows8210.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8210=5388 := by core033_kernel_decide
theorem rows8211 : actualRows8211=WordField.canonicalRows actualModulus 8211 (.badd 8210 6776) := by core033_kernel_decide
theorem stats8211 : actualRows8211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8211=5388 := by core033_kernel_decide
theorem rows8212 : actualRows8212=WordField.canonicalRows actualModulus 8212 (.rotr 8196 2) := by core033_kernel_decide
theorem stats8212 : actualRows8212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8212=5124 := by core033_kernel_decide
theorem rows8213 : actualRows8213=WordField.canonicalRows actualModulus 8213 (.rotr 8196 13) := by core033_kernel_decide
theorem stats8213 : actualRows8213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8213=5124 := by core033_kernel_decide
theorem rows8214 : actualRows8214=WordField.canonicalRows actualModulus 8214 (.bxor 8212 8213) := by core033_kernel_decide
theorem stats8214 : actualRows8214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8214=7428 := by core033_kernel_decide
theorem rows8215 : actualRows8215=WordField.canonicalRows actualModulus 8215 (.rotr 8196 22) := by core033_kernel_decide
theorem stats8215 : actualRows8215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8215=5124 := by core033_kernel_decide
theorem rows8216 : actualRows8216=WordField.canonicalRows actualModulus 8216 (.bxor 8214 8215) := by core033_kernel_decide
theorem stats8216 : actualRows8216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8216=7428 := by core033_kernel_decide
theorem rows8217 : actualRows8217=WordField.canonicalRows actualModulus 8217 (.band 8196 8169) := by core033_kernel_decide
theorem stats8217 : actualRows8217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8217=5124 := by core033_kernel_decide
theorem rows8218 : actualRows8218=WordField.canonicalRows actualModulus 8218 (.band 8196 8142) := by core033_kernel_decide
theorem stats8218 : actualRows8218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8218=5124 := by core033_kernel_decide
theorem rows8219 : actualRows8219=WordField.canonicalRows actualModulus 8219 (.bxor 8217 8218) := by core033_kernel_decide
theorem stats8219 : actualRows8219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8219=7428 := by core033_kernel_decide
theorem rows8220 : actualRows8220=WordField.canonicalRows actualModulus 8220 (.band 8169 8142) := by core033_kernel_decide
theorem stats8220 : actualRows8220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8220=5124 := by core033_kernel_decide
theorem rows8221 : actualRows8221=WordField.canonicalRows actualModulus 8221 (.bxor 8219 8220) := by core033_kernel_decide
theorem stats8221 : actualRows8221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8221=7428 := by core033_kernel_decide
theorem rows8222 : actualRows8222=WordField.canonicalRows actualModulus 8222 (.badd 8216 8221) := by core033_kernel_decide
theorem stats8222 : actualRows8222.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8222=5388 := by core033_kernel_decide
theorem rows8223 : actualRows8223=WordField.canonicalRows actualModulus 8223 (.badd 8211 8222) := by core033_kernel_decide
theorem stats8223 : actualRows8223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8223=5388 := by core033_kernel_decide
theorem rows8224 : actualRows8224=WordField.canonicalRows actualModulus 8224 (.badd 8115 8211) := by core033_kernel_decide
theorem stats8224 : actualRows8224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8224=5388 := by core033_kernel_decide
theorem rows8225 : actualRows8225=WordField.canonicalRows actualModulus 8225 (.rotr 8224 6) := by core033_kernel_decide
theorem stats8225 : actualRows8225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8225=5124 := by core033_kernel_decide
theorem rows8226 : actualRows8226=WordField.canonicalRows actualModulus 8226 (.rotr 8224 11) := by core033_kernel_decide
theorem stats8226 : actualRows8226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8226=5124 := by core033_kernel_decide
theorem rows8227 : actualRows8227=WordField.canonicalRows actualModulus 8227 (.bxor 8225 8226) := by core033_kernel_decide
theorem stats8227 : actualRows8227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8227=7428 := by core033_kernel_decide
theorem rows8228 : actualRows8228=WordField.canonicalRows actualModulus 8228 (.rotr 8224 25) := by core033_kernel_decide
theorem stats8228 : actualRows8228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8228=5124 := by core033_kernel_decide
theorem rows8229 : actualRows8229=WordField.canonicalRows actualModulus 8229 (.bxor 8227 8228) := by core033_kernel_decide
theorem stats8229 : actualRows8229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8229=7428 := by core033_kernel_decide
theorem rows8230 : actualRows8230=WordField.canonicalRows actualModulus 8230 (.badd 8143 8229) := by core033_kernel_decide
theorem stats8230 : actualRows8230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8230=5388 := by core033_kernel_decide
theorem rows8231 : actualRows8231=WordField.canonicalRows actualModulus 8231 (.band 8224 8197) := by core033_kernel_decide
theorem stats8231 : actualRows8231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8231=5124 := by core033_kernel_decide
theorem rows8232 : actualRows8232=WordField.canonicalRows actualModulus 8232 (.bnot 8224) := by core033_kernel_decide
theorem stats8232 : actualRows8232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8232=6276 := by core033_kernel_decide
theorem rows8233 : actualRows8233=WordField.canonicalRows actualModulus 8233 (.band 8232 8170) := by core033_kernel_decide
theorem stats8233 : actualRows8233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8233=5124 := by core033_kernel_decide
theorem rows8234 : actualRows8234=WordField.canonicalRows actualModulus 8234 (.bxor 8231 8233) := by core033_kernel_decide
theorem stats8234 : actualRows8234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8234=7428 := by core033_kernel_decide
def partRows127 : List R1CS.Row := actualRows8171++actualRows8172++actualRows8173++actualRows8174++actualRows8175++actualRows8176++actualRows8177++actualRows8178++actualRows8179++actualRows8180++actualRows8181++actualRows8182++actualRows8183++actualRows8184++actualRows8185++actualRows8186++actualRows8187++actualRows8188++actualRows8189++actualRows8190++actualRows8191++actualRows8192++actualRows8193++actualRows8194++actualRows8195++actualRows8196++actualRows8197++actualRows8198++actualRows8199++actualRows8200++actualRows8201++actualRows8202++actualRows8203++actualRows8204++actualRows8205++actualRows8206++actualRows8207++actualRows8208++actualRows8209++actualRows8210++actualRows8211++actualRows8212++actualRows8213++actualRows8214++actualRows8215++actualRows8216++actualRows8217++actualRows8218++actualRows8219++actualRows8220++actualRows8221++actualRows8222++actualRows8223++actualRows8224++actualRows8225++actualRows8226++actualRows8227++actualRows8228++actualRows8229++actualRows8230++actualRows8231++actualRows8232++actualRows8233++actualRows8234
def partOps127 : List WordIR.Op := [.rotr 8170 6,.rotr 8170 11,.bxor 8171 8172,.rotr 8170 25,.bxor 8173 8174,.badd 8089 8175,.band 8170 8143,.bnot 8170,.band 8178 8116,.bxor 8177 8179,.badd 8176 8180,.literal (BitVec.ofNat 32 3259730800),.badd 8181 8182,.badd 8183 6763,.rotr 8169 2,.rotr 8169 13,.bxor 8185 8186,.rotr 8169 22,.bxor 8187 8188,.band 8169 8142,.band 8169 8115,.bxor 8190 8191,.band 8142 8115,.bxor 8192 8193,.badd 8189 8194,.badd 8184 8195,.badd 8088 8184,.rotr 8197 6,.rotr 8197 11,.bxor 8198 8199,.rotr 8197 25,.bxor 8200 8201,.badd 8116 8202,.band 8197 8170,.bnot 8197,.band 8205 8143,.bxor 8204 8206,.badd 8203 8207,.literal (BitVec.ofNat 32 3345764771),.badd 8208 8209,.badd 8210 6776,.rotr 8196 2,.rotr 8196 13,.bxor 8212 8213,.rotr 8196 22,.bxor 8214 8215,.band 8196 8169,.band 8196 8142,.bxor 8217 8218,.band 8169 8142,.bxor 8219 8220,.badd 8216 8221,.badd 8211 8222,.badd 8115 8211,.rotr 8224 6,.rotr 8224 11,.bxor 8225 8226,.rotr 8224 25,.bxor 8227 8228,.badd 8143 8229,.band 8224 8197,.bnot 8224,.band 8232 8170,.bxor 8231 8233]
theorem partExact127 : partRows127=WordField.rows actualModulus 8171 partOps127 := by
  simp only [partRows127,partOps127,WordField.rows,rows8171,rows8172,rows8173,rows8174,rows8175,rows8176,rows8177,rows8178,rows8179,rows8180,rows8181,rows8182,rows8183,rows8184,rows8185,rows8186,rows8187,rows8188,rows8189,rows8190,rows8191,rows8192,rows8193,rows8194,rows8195,rows8196,rows8197,rows8198,rows8199,rows8200,rows8201,rows8202,rows8203,rows8204,rows8205,rows8206,rows8207,rows8208,rows8209,rows8210,rows8211,rows8212,rows8213,rows8214,rows8215,rows8216,rows8217,rows8218,rows8219,rows8220,rows8221,rows8222,rows8223,rows8224,rows8225,rows8226,rows8227,rows8228,rows8229,rows8230,rows8231,rows8232,rows8233,rows8234,List.append_assoc,List.append_nil]
theorem partLength127 : partOps127.length=64 := by decide
theorem partStats127 : partRows127.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows127=372072 := by
  simp only [partRows127,List.length_append,MatrixRowBlocks.rows_weight_append,stats8171.1,stats8171.2,stats8172.1,stats8172.2,stats8173.1,stats8173.2,stats8174.1,stats8174.2,stats8175.1,stats8175.2,stats8176.1,stats8176.2,stats8177.1,stats8177.2,stats8178.1,stats8178.2,stats8179.1,stats8179.2,stats8180.1,stats8180.2,stats8181.1,stats8181.2,stats8182.1,stats8182.2,stats8183.1,stats8183.2,stats8184.1,stats8184.2,stats8185.1,stats8185.2,stats8186.1,stats8186.2,stats8187.1,stats8187.2,stats8188.1,stats8188.2,stats8189.1,stats8189.2,stats8190.1,stats8190.2,stats8191.1,stats8191.2,stats8192.1,stats8192.2,stats8193.1,stats8193.2,stats8194.1,stats8194.2,stats8195.1,stats8195.2,stats8196.1,stats8196.2,stats8197.1,stats8197.2,stats8198.1,stats8198.2,stats8199.1,stats8199.2,stats8200.1,stats8200.2,stats8201.1,stats8201.2,stats8202.1,stats8202.2,stats8203.1,stats8203.2,stats8204.1,stats8204.2,stats8205.1,stats8205.2,stats8206.1,stats8206.2,stats8207.1,stats8207.2,stats8208.1,stats8208.2,stats8209.1,stats8209.2,stats8210.1,stats8210.2,stats8211.1,stats8211.2,stats8212.1,stats8212.2,stats8213.1,stats8213.2,stats8214.1,stats8214.2,stats8215.1,stats8215.2,stats8216.1,stats8216.2,stats8217.1,stats8217.2,stats8218.1,stats8218.2,stats8219.1,stats8219.2,stats8220.1,stats8220.2,stats8221.1,stats8221.2,stats8222.1,stats8222.2,stats8223.1,stats8223.2,stats8224.1,stats8224.2,stats8225.1,stats8225.2,stats8226.1,stats8226.2,stats8227.1,stats8227.2,stats8228.1,stats8228.2,stats8229.1,stats8229.2,stats8230.1,stats8230.2,stats8231.1,stats8231.2,stats8232.1,stats8232.2,stats8233.1,stats8233.2,stats8234.1,stats8234.2]
  decide
end FrameHashControllerCheckedRows
