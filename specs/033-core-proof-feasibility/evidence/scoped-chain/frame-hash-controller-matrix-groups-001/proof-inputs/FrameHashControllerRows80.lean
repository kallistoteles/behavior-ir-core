import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData80
import FrameHashControllerInstructionMatrixData81
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5163 : actualRows5163=WordField.canonicalRows actualModulus 5163 (.band 5162 974) := by core033_kernel_decide
theorem stats5163 : actualRows5163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5163=5124 := by core033_kernel_decide
theorem rows5164 : actualRows5164=WordField.canonicalRows actualModulus 5164 (.bxor 5137 5163) := by core033_kernel_decide
theorem stats5164 : actualRows5164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5164=7428 := by core033_kernel_decide
theorem rows5165 : actualRows5165=WordField.canonicalRows actualModulus 5165 (.rotr 1875 8) := by core033_kernel_decide
theorem stats5165 : actualRows5165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5165=5124 := by core033_kernel_decide
theorem rows5166 : actualRows5166=WordField.canonicalRows actualModulus 5166 (.rotr 1927 16) := by core033_kernel_decide
theorem stats5166 : actualRows5166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5166=5124 := by core033_kernel_decide
theorem rows5167 : actualRows5167=WordField.canonicalRows actualModulus 5167 (.badd 5165 5166) := by core033_kernel_decide
theorem stats5167 : actualRows5167.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5167=5388 := by core033_kernel_decide
theorem rows5168 : actualRows5168=WordField.canonicalRows actualModulus 5168 (.rotr 1979 24) := by core033_kernel_decide
theorem stats5168 : actualRows5168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5168=5124 := by core033_kernel_decide
theorem rows5169 : actualRows5169=WordField.canonicalRows actualModulus 5169 (.badd 5167 5168) := by core033_kernel_decide
theorem stats5169 : actualRows5169.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5169=5388 := by core033_kernel_decide
theorem rows5170 : actualRows5170=WordField.canonicalRows actualModulus 5170 (.badd 5169 2031) := by core033_kernel_decide
theorem stats5170 : actualRows5170.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5170=5388 := by core033_kernel_decide
theorem rows5171 : actualRows5171=WordField.canonicalRows actualModulus 5171 (.rotr 2083 8) := by core033_kernel_decide
theorem stats5171 : actualRows5171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5171=5124 := by core033_kernel_decide
theorem rows5172 : actualRows5172=WordField.canonicalRows actualModulus 5172 (.rotr 2135 16) := by core033_kernel_decide
theorem stats5172 : actualRows5172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5172=5124 := by core033_kernel_decide
theorem rows5173 : actualRows5173=WordField.canonicalRows actualModulus 5173 (.badd 5171 5172) := by core033_kernel_decide
theorem stats5173 : actualRows5173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5173=5388 := by core033_kernel_decide
theorem rows5174 : actualRows5174=WordField.canonicalRows actualModulus 5174 (.rotr 2187 24) := by core033_kernel_decide
theorem stats5174 : actualRows5174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5174=5124 := by core033_kernel_decide
theorem rows5175 : actualRows5175=WordField.canonicalRows actualModulus 5175 (.badd 5173 5174) := by core033_kernel_decide
theorem stats5175 : actualRows5175.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5175=5388 := by core033_kernel_decide
theorem rows5176 : actualRows5176=WordField.canonicalRows actualModulus 5176 (.badd 5175 2239) := by core033_kernel_decide
theorem stats5176 : actualRows5176.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5176=5388 := by core033_kernel_decide
theorem rows5177 : actualRows5177=WordField.canonicalRows actualModulus 5177 (.rotr 2291 8) := by core033_kernel_decide
theorem stats5177 : actualRows5177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5177=5124 := by core033_kernel_decide
theorem rows5178 : actualRows5178=WordField.canonicalRows actualModulus 5178 (.rotr 2343 16) := by core033_kernel_decide
theorem stats5178 : actualRows5178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5178=5124 := by core033_kernel_decide
theorem rows5179 : actualRows5179=WordField.canonicalRows actualModulus 5179 (.badd 5177 5178) := by core033_kernel_decide
theorem stats5179 : actualRows5179.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5179=5388 := by core033_kernel_decide
theorem rows5180 : actualRows5180=WordField.canonicalRows actualModulus 5180 (.rotr 2395 24) := by core033_kernel_decide
theorem stats5180 : actualRows5180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5180=5124 := by core033_kernel_decide
theorem rows5181 : actualRows5181=WordField.canonicalRows actualModulus 5181 (.badd 5179 5180) := by core033_kernel_decide
theorem stats5181 : actualRows5181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5181=5388 := by core033_kernel_decide
theorem rows5182 : actualRows5182=WordField.canonicalRows actualModulus 5182 (.badd 5181 2447) := by core033_kernel_decide
theorem stats5182 : actualRows5182.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5182=5388 := by core033_kernel_decide
theorem rows5183 : actualRows5183=WordField.canonicalRows actualModulus 5183 (.rotr 2499 8) := by core033_kernel_decide
theorem stats5183 : actualRows5183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5183=5124 := by core033_kernel_decide
theorem rows5184 : actualRows5184=WordField.canonicalRows actualModulus 5184 (.rotr 2551 16) := by core033_kernel_decide
theorem stats5184 : actualRows5184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5184=5124 := by core033_kernel_decide
theorem rows5185 : actualRows5185=WordField.canonicalRows actualModulus 5185 (.badd 5183 5184) := by core033_kernel_decide
theorem stats5185 : actualRows5185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5185=5388 := by core033_kernel_decide
theorem rows5186 : actualRows5186=WordField.canonicalRows actualModulus 5186 (.rotr 2603 24) := by core033_kernel_decide
theorem stats5186 : actualRows5186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5186=5124 := by core033_kernel_decide
theorem rows5187 : actualRows5187=WordField.canonicalRows actualModulus 5187 (.badd 5185 5186) := by core033_kernel_decide
theorem stats5187 : actualRows5187.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5187=5388 := by core033_kernel_decide
theorem rows5188 : actualRows5188=WordField.canonicalRows actualModulus 5188 (.badd 5187 2655) := by core033_kernel_decide
theorem stats5188 : actualRows5188.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5188=5388 := by core033_kernel_decide
theorem rows5189 : actualRows5189=WordField.canonicalRows actualModulus 5189 (.rotr 2707 8) := by core033_kernel_decide
theorem stats5189 : actualRows5189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5189=5124 := by core033_kernel_decide
theorem rows5190 : actualRows5190=WordField.canonicalRows actualModulus 5190 (.rotr 2759 16) := by core033_kernel_decide
theorem stats5190 : actualRows5190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5190=5124 := by core033_kernel_decide
theorem rows5191 : actualRows5191=WordField.canonicalRows actualModulus 5191 (.badd 5189 5190) := by core033_kernel_decide
theorem stats5191 : actualRows5191.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5191=5388 := by core033_kernel_decide
theorem rows5192 : actualRows5192=WordField.canonicalRows actualModulus 5192 (.rotr 2811 24) := by core033_kernel_decide
theorem stats5192 : actualRows5192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5192=5124 := by core033_kernel_decide
theorem rows5193 : actualRows5193=WordField.canonicalRows actualModulus 5193 (.badd 5191 5192) := by core033_kernel_decide
theorem stats5193 : actualRows5193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5193=5388 := by core033_kernel_decide
theorem rows5194 : actualRows5194=WordField.canonicalRows actualModulus 5194 (.badd 5193 2863) := by core033_kernel_decide
theorem stats5194 : actualRows5194.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5194=5388 := by core033_kernel_decide
theorem rows5195 : actualRows5195=WordField.canonicalRows actualModulus 5195 (.rotr 2915 8) := by core033_kernel_decide
theorem stats5195 : actualRows5195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5195=5124 := by core033_kernel_decide
theorem rows5196 : actualRows5196=WordField.canonicalRows actualModulus 5196 (.rotr 2967 16) := by core033_kernel_decide
theorem stats5196 : actualRows5196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5196=5124 := by core033_kernel_decide
theorem rows5197 : actualRows5197=WordField.canonicalRows actualModulus 5197 (.badd 5195 5196) := by core033_kernel_decide
theorem stats5197 : actualRows5197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5197=5388 := by core033_kernel_decide
theorem rows5198 : actualRows5198=WordField.canonicalRows actualModulus 5198 (.rotr 3019 24) := by core033_kernel_decide
theorem stats5198 : actualRows5198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5198=5124 := by core033_kernel_decide
theorem rows5199 : actualRows5199=WordField.canonicalRows actualModulus 5199 (.badd 5197 5198) := by core033_kernel_decide
theorem stats5199 : actualRows5199.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5199=5388 := by core033_kernel_decide
theorem rows5200 : actualRows5200=WordField.canonicalRows actualModulus 5200 (.badd 5199 3071) := by core033_kernel_decide
theorem stats5200 : actualRows5200.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5200=5388 := by core033_kernel_decide
theorem rows5201 : actualRows5201=WordField.canonicalRows actualModulus 5201 (.rotr 3123 8) := by core033_kernel_decide
theorem stats5201 : actualRows5201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5201=5124 := by core033_kernel_decide
theorem rows5202 : actualRows5202=WordField.canonicalRows actualModulus 5202 (.rotr 3175 16) := by core033_kernel_decide
theorem stats5202 : actualRows5202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5202=5124 := by core033_kernel_decide
theorem rows5203 : actualRows5203=WordField.canonicalRows actualModulus 5203 (.badd 5201 5202) := by core033_kernel_decide
theorem stats5203 : actualRows5203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5203=5388 := by core033_kernel_decide
theorem rows5204 : actualRows5204=WordField.canonicalRows actualModulus 5204 (.rotr 3227 24) := by core033_kernel_decide
theorem stats5204 : actualRows5204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5204=5124 := by core033_kernel_decide
theorem rows5205 : actualRows5205=WordField.canonicalRows actualModulus 5205 (.badd 5203 5204) := by core033_kernel_decide
theorem stats5205 : actualRows5205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5205=5388 := by core033_kernel_decide
theorem rows5206 : actualRows5206=WordField.canonicalRows actualModulus 5206 (.badd 5205 3279) := by core033_kernel_decide
theorem stats5206 : actualRows5206.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5206=5388 := by core033_kernel_decide
theorem rows5207 : actualRows5207=WordField.canonicalRows actualModulus 5207 (.rotr 3331 8) := by core033_kernel_decide
theorem stats5207 : actualRows5207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5207=5124 := by core033_kernel_decide
theorem rows5208 : actualRows5208=WordField.canonicalRows actualModulus 5208 (.rotr 3383 16) := by core033_kernel_decide
theorem stats5208 : actualRows5208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5208=5124 := by core033_kernel_decide
theorem rows5209 : actualRows5209=WordField.canonicalRows actualModulus 5209 (.badd 5207 5208) := by core033_kernel_decide
theorem stats5209 : actualRows5209.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5209=5388 := by core033_kernel_decide
theorem rows5210 : actualRows5210=WordField.canonicalRows actualModulus 5210 (.rotr 3435 24) := by core033_kernel_decide
theorem stats5210 : actualRows5210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5210=5124 := by core033_kernel_decide
theorem rows5211 : actualRows5211=WordField.canonicalRows actualModulus 5211 (.badd 5209 5210) := by core033_kernel_decide
theorem stats5211 : actualRows5211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5211=5388 := by core033_kernel_decide
theorem rows5212 : actualRows5212=WordField.canonicalRows actualModulus 5212 (.badd 5211 3487) := by core033_kernel_decide
theorem stats5212 : actualRows5212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5212=5388 := by core033_kernel_decide
theorem rows5213 : actualRows5213=WordField.canonicalRows actualModulus 5213 (.rotr 3539 8) := by core033_kernel_decide
theorem stats5213 : actualRows5213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5213=5124 := by core033_kernel_decide
theorem rows5214 : actualRows5214=WordField.canonicalRows actualModulus 5214 (.rotr 3591 16) := by core033_kernel_decide
theorem stats5214 : actualRows5214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5214=5124 := by core033_kernel_decide
theorem rows5215 : actualRows5215=WordField.canonicalRows actualModulus 5215 (.badd 5213 5214) := by core033_kernel_decide
theorem stats5215 : actualRows5215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5215=5388 := by core033_kernel_decide
theorem rows5216 : actualRows5216=WordField.canonicalRows actualModulus 5216 (.rotr 3643 24) := by core033_kernel_decide
theorem stats5216 : actualRows5216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5216=5124 := by core033_kernel_decide
theorem rows5217 : actualRows5217=WordField.canonicalRows actualModulus 5217 (.badd 5215 5216) := by core033_kernel_decide
theorem stats5217 : actualRows5217.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5217=5388 := by core033_kernel_decide
theorem rows5218 : actualRows5218=WordField.canonicalRows actualModulus 5218 (.badd 5217 3695) := by core033_kernel_decide
theorem stats5218 : actualRows5218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5218=5388 := by core033_kernel_decide
theorem rows5219 : actualRows5219=WordField.canonicalRows actualModulus 5219 (.rotr 3747 8) := by core033_kernel_decide
theorem stats5219 : actualRows5219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5219=5124 := by core033_kernel_decide
theorem rows5220 : actualRows5220=WordField.canonicalRows actualModulus 5220 (.rotr 3799 16) := by core033_kernel_decide
theorem stats5220 : actualRows5220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5220=5124 := by core033_kernel_decide
theorem rows5221 : actualRows5221=WordField.canonicalRows actualModulus 5221 (.badd 5219 5220) := by core033_kernel_decide
theorem stats5221 : actualRows5221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5221=5388 := by core033_kernel_decide
theorem rows5222 : actualRows5222=WordField.canonicalRows actualModulus 5222 (.rotr 3851 24) := by core033_kernel_decide
theorem stats5222 : actualRows5222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5222=5124 := by core033_kernel_decide
theorem rows5223 : actualRows5223=WordField.canonicalRows actualModulus 5223 (.badd 5221 5222) := by core033_kernel_decide
theorem stats5223 : actualRows5223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5223=5388 := by core033_kernel_decide
theorem rows5224 : actualRows5224=WordField.canonicalRows actualModulus 5224 (.badd 5223 3903) := by core033_kernel_decide
theorem stats5224 : actualRows5224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5224=5388 := by core033_kernel_decide
theorem rows5225 : actualRows5225=WordField.canonicalRows actualModulus 5225 (.rotr 3955 8) := by core033_kernel_decide
theorem stats5225 : actualRows5225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5225=5124 := by core033_kernel_decide
theorem rows5226 : actualRows5226=WordField.canonicalRows actualModulus 5226 (.rotr 4007 16) := by core033_kernel_decide
theorem stats5226 : actualRows5226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5226=5124 := by core033_kernel_decide
def partRows80 : List R1CS.Row := actualRows5163++actualRows5164++actualRows5165++actualRows5166++actualRows5167++actualRows5168++actualRows5169++actualRows5170++actualRows5171++actualRows5172++actualRows5173++actualRows5174++actualRows5175++actualRows5176++actualRows5177++actualRows5178++actualRows5179++actualRows5180++actualRows5181++actualRows5182++actualRows5183++actualRows5184++actualRows5185++actualRows5186++actualRows5187++actualRows5188++actualRows5189++actualRows5190++actualRows5191++actualRows5192++actualRows5193++actualRows5194++actualRows5195++actualRows5196++actualRows5197++actualRows5198++actualRows5199++actualRows5200++actualRows5201++actualRows5202++actualRows5203++actualRows5204++actualRows5205++actualRows5206++actualRows5207++actualRows5208++actualRows5209++actualRows5210++actualRows5211++actualRows5212++actualRows5213++actualRows5214++actualRows5215++actualRows5216++actualRows5217++actualRows5218++actualRows5219++actualRows5220++actualRows5221++actualRows5222++actualRows5223++actualRows5224++actualRows5225++actualRows5226
def partOps80 : List WordIR.Op := [.band 5162 974,.bxor 5137 5163,.rotr 1875 8,.rotr 1927 16,.badd 5165 5166,.rotr 1979 24,.badd 5167 5168,.badd 5169 2031,.rotr 2083 8,.rotr 2135 16,.badd 5171 5172,.rotr 2187 24,.badd 5173 5174,.badd 5175 2239,.rotr 2291 8,.rotr 2343 16,.badd 5177 5178,.rotr 2395 24,.badd 5179 5180,.badd 5181 2447,.rotr 2499 8,.rotr 2551 16,.badd 5183 5184,.rotr 2603 24,.badd 5185 5186,.badd 5187 2655,.rotr 2707 8,.rotr 2759 16,.badd 5189 5190,.rotr 2811 24,.badd 5191 5192,.badd 5193 2863,.rotr 2915 8,.rotr 2967 16,.badd 5195 5196,.rotr 3019 24,.badd 5197 5198,.badd 5199 3071,.rotr 3123 8,.rotr 3175 16,.badd 5201 5202,.rotr 3227 24,.badd 5203 5204,.badd 5205 3279,.rotr 3331 8,.rotr 3383 16,.badd 5207 5208,.rotr 3435 24,.badd 5209 5210,.badd 5211 3487,.rotr 3539 8,.rotr 3591 16,.badd 5213 5214,.rotr 3643 24,.badd 5215 5216,.badd 5217 3695,.rotr 3747 8,.rotr 3799 16,.badd 5219 5220,.rotr 3851 24,.badd 5221 5222,.badd 5223 3903,.rotr 3955 8,.rotr 4007 16]
theorem partExact80 : partRows80=WordField.rows actualModulus 5163 partOps80 := by
  simp only [partRows80,partOps80,WordField.rows,rows5163,rows5164,rows5165,rows5166,rows5167,rows5168,rows5169,rows5170,rows5171,rows5172,rows5173,rows5174,rows5175,rows5176,rows5177,rows5178,rows5179,rows5180,rows5181,rows5182,rows5183,rows5184,rows5185,rows5186,rows5187,rows5188,rows5189,rows5190,rows5191,rows5192,rows5193,rows5194,rows5195,rows5196,rows5197,rows5198,rows5199,rows5200,rows5201,rows5202,rows5203,rows5204,rows5205,rows5206,rows5207,rows5208,rows5209,rows5210,rows5211,rows5212,rows5213,rows5214,rows5215,rows5216,rows5217,rows5218,rows5219,rows5220,rows5221,rows5222,rows5223,rows5224,rows5225,rows5226,List.append_assoc,List.append_nil]
theorem partLength80 : partOps80.length=64 := by decide
theorem partStats80 : partRows80.length=2206 ∧ MatrixRowBlocks.rowsWeight partRows80=338160 := by
  simp only [partRows80,List.length_append,MatrixRowBlocks.rows_weight_append,stats5163.1,stats5163.2,stats5164.1,stats5164.2,stats5165.1,stats5165.2,stats5166.1,stats5166.2,stats5167.1,stats5167.2,stats5168.1,stats5168.2,stats5169.1,stats5169.2,stats5170.1,stats5170.2,stats5171.1,stats5171.2,stats5172.1,stats5172.2,stats5173.1,stats5173.2,stats5174.1,stats5174.2,stats5175.1,stats5175.2,stats5176.1,stats5176.2,stats5177.1,stats5177.2,stats5178.1,stats5178.2,stats5179.1,stats5179.2,stats5180.1,stats5180.2,stats5181.1,stats5181.2,stats5182.1,stats5182.2,stats5183.1,stats5183.2,stats5184.1,stats5184.2,stats5185.1,stats5185.2,stats5186.1,stats5186.2,stats5187.1,stats5187.2,stats5188.1,stats5188.2,stats5189.1,stats5189.2,stats5190.1,stats5190.2,stats5191.1,stats5191.2,stats5192.1,stats5192.2,stats5193.1,stats5193.2,stats5194.1,stats5194.2,stats5195.1,stats5195.2,stats5196.1,stats5196.2,stats5197.1,stats5197.2,stats5198.1,stats5198.2,stats5199.1,stats5199.2,stats5200.1,stats5200.2,stats5201.1,stats5201.2,stats5202.1,stats5202.2,stats5203.1,stats5203.2,stats5204.1,stats5204.2,stats5205.1,stats5205.2,stats5206.1,stats5206.2,stats5207.1,stats5207.2,stats5208.1,stats5208.2,stats5209.1,stats5209.2,stats5210.1,stats5210.2,stats5211.1,stats5211.2,stats5212.1,stats5212.2,stats5213.1,stats5213.2,stats5214.1,stats5214.2,stats5215.1,stats5215.2,stats5216.1,stats5216.2,stats5217.1,stats5217.2,stats5218.1,stats5218.2,stats5219.1,stats5219.2,stats5220.1,stats5220.2,stats5221.1,stats5221.2,stats5222.1,stats5222.2,stats5223.1,stats5223.2,stats5224.1,stats5224.2,stats5225.1,stats5225.2,stats5226.1,stats5226.2]
  decide
end FrameHashControllerCheckedRows
