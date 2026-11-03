import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData80
import PairedPathRoundInstructionMatrixData81
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5152 : actualRows5152=WordField.canonicalRows actualModulus 5152 (.band 5149 5151) := by core033_kernel_decide
theorem stats5152 : actualRows5152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5152=5124 := by core033_kernel_decide
theorem rows5153 : actualRows5153=WordField.canonicalRows actualModulus 5153 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5153 : actualRows5153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5153=2892 := by core033_kernel_decide
theorem rows5154 : actualRows5154=WordField.canonicalRows actualModulus 5154 (.bxor 616 5153) := by core033_kernel_decide
theorem stats5154 : actualRows5154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5154=7428 := by core033_kernel_decide
theorem rows5155 : actualRows5155=WordField.canonicalRows actualModulus 5155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5155 : actualRows5155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5155=2820 := by core033_kernel_decide
theorem rows5156 : actualRows5156=WordField.canonicalRows actualModulus 5156 (.bnot 5155) := by core033_kernel_decide
theorem stats5156 : actualRows5156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5156=6276 := by core033_kernel_decide
theorem rows5157 : actualRows5157=WordField.canonicalRows actualModulus 5157 (.bxor 5154 5156) := by core033_kernel_decide
theorem stats5157 : actualRows5157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5157=7428 := by core033_kernel_decide
theorem rows5158 : actualRows5158=WordField.canonicalRows actualModulus 5158 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5158 : actualRows5158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5158=2892 := by core033_kernel_decide
theorem rows5159 : actualRows5159=WordField.canonicalRows actualModulus 5159 (.bxor 616 5158) := by core033_kernel_decide
theorem stats5159 : actualRows5159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5159=7428 := by core033_kernel_decide
theorem rows5160 : actualRows5160=WordField.canonicalRows actualModulus 5160 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5160 : actualRows5160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5160=2820 := by core033_kernel_decide
theorem rows5161 : actualRows5161=WordField.canonicalRows actualModulus 5161 (.bnot 5160) := by core033_kernel_decide
theorem stats5161 : actualRows5161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5161=6276 := by core033_kernel_decide
theorem rows5162 : actualRows5162=WordField.canonicalRows actualModulus 5162 (.badd 5159 5161) := by core033_kernel_decide
theorem stats5162 : actualRows5162.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5162=5388 := by core033_kernel_decide
theorem rows5163 : actualRows5163=WordField.canonicalRows actualModulus 5163 (.bnot 5162) := by core033_kernel_decide
theorem stats5163 : actualRows5163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5163=6276 := by core033_kernel_decide
theorem rows5164 : actualRows5164=WordField.canonicalRows actualModulus 5164 (.band 5157 5163) := by core033_kernel_decide
theorem stats5164 : actualRows5164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5164=5124 := by core033_kernel_decide
theorem rows5165 : actualRows5165=WordField.canonicalRows actualModulus 5165 (.bxor 5152 5164) := by core033_kernel_decide
theorem stats5165 : actualRows5165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5165=7428 := by core033_kernel_decide
theorem rows5166 : actualRows5166=WordField.canonicalRows actualModulus 5166 (.shr 5165 31) := by core033_kernel_decide
theorem stats5166 : actualRows5166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5166=2892 := by core033_kernel_decide
theorem rows5167 : actualRows5167=WordField.canonicalRows actualModulus 5167 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5167 : actualRows5167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5167=2892 := by core033_kernel_decide
theorem rows5168 : actualRows5168=WordField.canonicalRows actualModulus 5168 (.bxor 5166 5167) := by core033_kernel_decide
theorem stats5168 : actualRows5168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5168=7428 := by core033_kernel_decide
theorem rows5169 : actualRows5169=WordField.canonicalRows actualModulus 5169 (.bnot 5168) := by core033_kernel_decide
theorem stats5169 : actualRows5169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5169=6276 := by core033_kernel_decide
theorem rows5170 : actualRows5170=WordField.canonicalRows actualModulus 5170 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5170 : actualRows5170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5170=2892 := by core033_kernel_decide
theorem rows5171 : actualRows5171=WordField.canonicalRows actualModulus 5171 (.badd 5169 5170) := by core033_kernel_decide
theorem stats5171 : actualRows5171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5171=5388 := by core033_kernel_decide
theorem rows5172 : actualRows5172=WordField.canonicalRows actualModulus 5172 (.band 5171 2145) := by core033_kernel_decide
theorem stats5172 : actualRows5172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5172=5124 := by core033_kernel_decide
theorem rows5173 : actualRows5173=WordField.canonicalRows actualModulus 5173 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5173 : actualRows5173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5173=2892 := by core033_kernel_decide
theorem rows5174 : actualRows5174=WordField.canonicalRows actualModulus 5174 (.bxor 616 5173) := by core033_kernel_decide
theorem stats5174 : actualRows5174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5174=7428 := by core033_kernel_decide
theorem rows5175 : actualRows5175=WordField.canonicalRows actualModulus 5175 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5175 : actualRows5175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5175=2820 := by core033_kernel_decide
theorem rows5176 : actualRows5176=WordField.canonicalRows actualModulus 5176 (.bnot 5175) := by core033_kernel_decide
theorem stats5176 : actualRows5176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5176=6276 := by core033_kernel_decide
theorem rows5177 : actualRows5177=WordField.canonicalRows actualModulus 5177 (.band 5174 5176) := by core033_kernel_decide
theorem stats5177 : actualRows5177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5177=5124 := by core033_kernel_decide
theorem rows5178 : actualRows5178=WordField.canonicalRows actualModulus 5178 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5178 : actualRows5178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5178=2892 := by core033_kernel_decide
theorem rows5179 : actualRows5179=WordField.canonicalRows actualModulus 5179 (.bxor 616 5178) := by core033_kernel_decide
theorem stats5179 : actualRows5179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5179=7428 := by core033_kernel_decide
theorem rows5180 : actualRows5180=WordField.canonicalRows actualModulus 5180 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5180 : actualRows5180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5180=2820 := by core033_kernel_decide
theorem rows5181 : actualRows5181=WordField.canonicalRows actualModulus 5181 (.bnot 5180) := by core033_kernel_decide
theorem stats5181 : actualRows5181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5181=6276 := by core033_kernel_decide
theorem rows5182 : actualRows5182=WordField.canonicalRows actualModulus 5182 (.bxor 5179 5181) := by core033_kernel_decide
theorem stats5182 : actualRows5182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5182=7428 := by core033_kernel_decide
theorem rows5183 : actualRows5183=WordField.canonicalRows actualModulus 5183 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5183 : actualRows5183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5183=2892 := by core033_kernel_decide
theorem rows5184 : actualRows5184=WordField.canonicalRows actualModulus 5184 (.bxor 616 5183) := by core033_kernel_decide
theorem stats5184 : actualRows5184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5184=7428 := by core033_kernel_decide
theorem rows5185 : actualRows5185=WordField.canonicalRows actualModulus 5185 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5185 : actualRows5185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5185=2820 := by core033_kernel_decide
theorem rows5186 : actualRows5186=WordField.canonicalRows actualModulus 5186 (.bnot 5185) := by core033_kernel_decide
theorem stats5186 : actualRows5186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5186=6276 := by core033_kernel_decide
theorem rows5187 : actualRows5187=WordField.canonicalRows actualModulus 5187 (.badd 5184 5186) := by core033_kernel_decide
theorem stats5187 : actualRows5187.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5187=5388 := by core033_kernel_decide
theorem rows5188 : actualRows5188=WordField.canonicalRows actualModulus 5188 (.bnot 5187) := by core033_kernel_decide
theorem stats5188 : actualRows5188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5188=6276 := by core033_kernel_decide
theorem rows5189 : actualRows5189=WordField.canonicalRows actualModulus 5189 (.band 5182 5188) := by core033_kernel_decide
theorem stats5189 : actualRows5189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5189=5124 := by core033_kernel_decide
theorem rows5190 : actualRows5190=WordField.canonicalRows actualModulus 5190 (.bxor 5177 5189) := by core033_kernel_decide
theorem stats5190 : actualRows5190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5190=7428 := by core033_kernel_decide
theorem rows5191 : actualRows5191=WordField.canonicalRows actualModulus 5191 (.shr 5190 31) := by core033_kernel_decide
theorem stats5191 : actualRows5191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5191=2892 := by core033_kernel_decide
theorem rows5192 : actualRows5192=WordField.canonicalRows actualModulus 5192 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5192 : actualRows5192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5192=2892 := by core033_kernel_decide
theorem rows5193 : actualRows5193=WordField.canonicalRows actualModulus 5193 (.bxor 5191 5192) := by core033_kernel_decide
theorem stats5193 : actualRows5193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5193=7428 := by core033_kernel_decide
theorem rows5194 : actualRows5194=WordField.canonicalRows actualModulus 5194 (.bnot 5193) := by core033_kernel_decide
theorem stats5194 : actualRows5194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5194=6276 := by core033_kernel_decide
theorem rows5195 : actualRows5195=WordField.canonicalRows actualModulus 5195 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5195 : actualRows5195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5195=2892 := by core033_kernel_decide
theorem rows5196 : actualRows5196=WordField.canonicalRows actualModulus 5196 (.badd 5194 5195) := by core033_kernel_decide
theorem stats5196 : actualRows5196.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5196=5388 := by core033_kernel_decide
theorem rows5197 : actualRows5197=WordField.canonicalRows actualModulus 5197 (.bnot 5196) := by core033_kernel_decide
theorem stats5197 : actualRows5197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5197=6276 := by core033_kernel_decide
theorem rows5198 : actualRows5198=WordField.canonicalRows actualModulus 5198 (.band 5197 1953) := by core033_kernel_decide
theorem stats5198 : actualRows5198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5198=5124 := by core033_kernel_decide
theorem rows5199 : actualRows5199=WordField.canonicalRows actualModulus 5199 (.bxor 5172 5198) := by core033_kernel_decide
theorem stats5199 : actualRows5199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5199=7428 := by core033_kernel_decide
theorem rows5200 : actualRows5200=WordField.canonicalRows actualModulus 5200 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5200 : actualRows5200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5200=2892 := by core033_kernel_decide
theorem rows5201 : actualRows5201=WordField.canonicalRows actualModulus 5201 (.bxor 616 5200) := by core033_kernel_decide
theorem stats5201 : actualRows5201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5201=7428 := by core033_kernel_decide
theorem rows5202 : actualRows5202=WordField.canonicalRows actualModulus 5202 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5202 : actualRows5202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5202=2820 := by core033_kernel_decide
theorem rows5203 : actualRows5203=WordField.canonicalRows actualModulus 5203 (.bnot 5202) := by core033_kernel_decide
theorem stats5203 : actualRows5203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5203=6276 := by core033_kernel_decide
theorem rows5204 : actualRows5204=WordField.canonicalRows actualModulus 5204 (.band 5201 5203) := by core033_kernel_decide
theorem stats5204 : actualRows5204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5204=5124 := by core033_kernel_decide
theorem rows5205 : actualRows5205=WordField.canonicalRows actualModulus 5205 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5205 : actualRows5205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5205=2892 := by core033_kernel_decide
theorem rows5206 : actualRows5206=WordField.canonicalRows actualModulus 5206 (.bxor 616 5205) := by core033_kernel_decide
theorem stats5206 : actualRows5206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5206=7428 := by core033_kernel_decide
theorem rows5207 : actualRows5207=WordField.canonicalRows actualModulus 5207 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5207 : actualRows5207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5207=2820 := by core033_kernel_decide
theorem rows5208 : actualRows5208=WordField.canonicalRows actualModulus 5208 (.bnot 5207) := by core033_kernel_decide
theorem stats5208 : actualRows5208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5208=6276 := by core033_kernel_decide
theorem rows5209 : actualRows5209=WordField.canonicalRows actualModulus 5209 (.bxor 5206 5208) := by core033_kernel_decide
theorem stats5209 : actualRows5209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5209=7428 := by core033_kernel_decide
theorem rows5210 : actualRows5210=WordField.canonicalRows actualModulus 5210 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5210 : actualRows5210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5210=2892 := by core033_kernel_decide
theorem rows5211 : actualRows5211=WordField.canonicalRows actualModulus 5211 (.bxor 616 5210) := by core033_kernel_decide
theorem stats5211 : actualRows5211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5211=7428 := by core033_kernel_decide
theorem rows5212 : actualRows5212=WordField.canonicalRows actualModulus 5212 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5212 : actualRows5212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5212=2820 := by core033_kernel_decide
theorem rows5213 : actualRows5213=WordField.canonicalRows actualModulus 5213 (.bnot 5212) := by core033_kernel_decide
theorem stats5213 : actualRows5213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5213=6276 := by core033_kernel_decide
theorem rows5214 : actualRows5214=WordField.canonicalRows actualModulus 5214 (.badd 5211 5213) := by core033_kernel_decide
theorem stats5214 : actualRows5214.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5214=5388 := by core033_kernel_decide
theorem rows5215 : actualRows5215=WordField.canonicalRows actualModulus 5215 (.bnot 5214) := by core033_kernel_decide
theorem stats5215 : actualRows5215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5215=6276 := by core033_kernel_decide
def partRows79 : List R1CS.Row := actualRows5152++actualRows5153++actualRows5154++actualRows5155++actualRows5156++actualRows5157++actualRows5158++actualRows5159++actualRows5160++actualRows5161++actualRows5162++actualRows5163++actualRows5164++actualRows5165++actualRows5166++actualRows5167++actualRows5168++actualRows5169++actualRows5170++actualRows5171++actualRows5172++actualRows5173++actualRows5174++actualRows5175++actualRows5176++actualRows5177++actualRows5178++actualRows5179++actualRows5180++actualRows5181++actualRows5182++actualRows5183++actualRows5184++actualRows5185++actualRows5186++actualRows5187++actualRows5188++actualRows5189++actualRows5190++actualRows5191++actualRows5192++actualRows5193++actualRows5194++actualRows5195++actualRows5196++actualRows5197++actualRows5198++actualRows5199++actualRows5200++actualRows5201++actualRows5202++actualRows5203++actualRows5204++actualRows5205++actualRows5206++actualRows5207++actualRows5208++actualRows5209++actualRows5210++actualRows5211++actualRows5212++actualRows5213++actualRows5214++actualRows5215
def partOps79 : List WordIR.Op := [.band 5149 5151,.literal (BitVec.ofNat 32 2),.bxor 616 5153,.literal (BitVec.ofNat 32 0),.bnot 5155,.bxor 5154 5156,.literal (BitVec.ofNat 32 2),.bxor 616 5158,.literal (BitVec.ofNat 32 0),.bnot 5160,.badd 5159 5161,.bnot 5162,.band 5157 5163,.bxor 5152 5164,.shr 5165 31,.literal (BitVec.ofNat 32 1),.bxor 5166 5167,.bnot 5168,.literal (BitVec.ofNat 32 1),.badd 5169 5170,.band 5171 2145,.literal (BitVec.ofNat 32 2),.bxor 616 5173,.literal (BitVec.ofNat 32 0),.bnot 5175,.band 5174 5176,.literal (BitVec.ofNat 32 2),.bxor 616 5178,.literal (BitVec.ofNat 32 0),.bnot 5180,.bxor 5179 5181,.literal (BitVec.ofNat 32 2),.bxor 616 5183,.literal (BitVec.ofNat 32 0),.bnot 5185,.badd 5184 5186,.bnot 5187,.band 5182 5188,.bxor 5177 5189,.shr 5190 31,.literal (BitVec.ofNat 32 1),.bxor 5191 5192,.bnot 5193,.literal (BitVec.ofNat 32 1),.badd 5194 5195,.bnot 5196,.band 5197 1953,.bxor 5172 5198,.literal (BitVec.ofNat 32 2),.bxor 616 5200,.literal (BitVec.ofNat 32 0),.bnot 5202,.band 5201 5203,.literal (BitVec.ofNat 32 2),.bxor 616 5205,.literal (BitVec.ofNat 32 0),.bnot 5207,.bxor 5206 5208,.literal (BitVec.ofNat 32 2),.bxor 616 5210,.literal (BitVec.ofNat 32 0),.bnot 5212,.badd 5211 5213,.bnot 5214]
theorem partExact79 : partRows79=WordField.rows actualModulus 5152 partOps79 := by
  simp only [partRows79,partOps79,WordField.rows,rows5152,rows5153,rows5154,rows5155,rows5156,rows5157,rows5158,rows5159,rows5160,rows5161,rows5162,rows5163,rows5164,rows5165,rows5166,rows5167,rows5168,rows5169,rows5170,rows5171,rows5172,rows5173,rows5174,rows5175,rows5176,rows5177,rows5178,rows5179,rows5180,rows5181,rows5182,rows5183,rows5184,rows5185,rows5186,rows5187,rows5188,rows5189,rows5190,rows5191,rows5192,rows5193,rows5194,rows5195,rows5196,rows5197,rows5198,rows5199,rows5200,rows5201,rows5202,rows5203,rows5204,rows5205,rows5206,rows5207,rows5208,rows5209,rows5210,rows5211,rows5212,rows5213,rows5214,rows5215,List.append_assoc,List.append_nil]
theorem partLength79 : partOps79.length=64 := by decide
theorem partStats79 : partRows79.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows79=332568 := by
  simp only [partRows79,List.length_append,MatrixRowBlocks.rows_weight_append,stats5152.1,stats5152.2,stats5153.1,stats5153.2,stats5154.1,stats5154.2,stats5155.1,stats5155.2,stats5156.1,stats5156.2,stats5157.1,stats5157.2,stats5158.1,stats5158.2,stats5159.1,stats5159.2,stats5160.1,stats5160.2,stats5161.1,stats5161.2,stats5162.1,stats5162.2,stats5163.1,stats5163.2,stats5164.1,stats5164.2,stats5165.1,stats5165.2,stats5166.1,stats5166.2,stats5167.1,stats5167.2,stats5168.1,stats5168.2,stats5169.1,stats5169.2,stats5170.1,stats5170.2,stats5171.1,stats5171.2,stats5172.1,stats5172.2,stats5173.1,stats5173.2,stats5174.1,stats5174.2,stats5175.1,stats5175.2,stats5176.1,stats5176.2,stats5177.1,stats5177.2,stats5178.1,stats5178.2,stats5179.1,stats5179.2,stats5180.1,stats5180.2,stats5181.1,stats5181.2,stats5182.1,stats5182.2,stats5183.1,stats5183.2,stats5184.1,stats5184.2,stats5185.1,stats5185.2,stats5186.1,stats5186.2,stats5187.1,stats5187.2,stats5188.1,stats5188.2,stats5189.1,stats5189.2,stats5190.1,stats5190.2,stats5191.1,stats5191.2,stats5192.1,stats5192.2,stats5193.1,stats5193.2,stats5194.1,stats5194.2,stats5195.1,stats5195.2,stats5196.1,stats5196.2,stats5197.1,stats5197.2,stats5198.1,stats5198.2,stats5199.1,stats5199.2,stats5200.1,stats5200.2,stats5201.1,stats5201.2,stats5202.1,stats5202.2,stats5203.1,stats5203.2,stats5204.1,stats5204.2,stats5205.1,stats5205.2,stats5206.1,stats5206.2,stats5207.1,stats5207.2,stats5208.1,stats5208.2,stats5209.1,stats5209.2,stats5210.1,stats5210.2,stats5211.1,stats5211.2,stats5212.1,stats5212.2,stats5213.1,stats5213.2,stats5214.1,stats5214.2,stats5215.1,stats5215.2]
  decide
end QuotedPairedPathRoundCheckedRows
