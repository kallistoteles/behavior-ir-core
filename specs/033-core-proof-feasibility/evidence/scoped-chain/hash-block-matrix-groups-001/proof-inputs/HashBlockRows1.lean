import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData2
import HashBlockInstructionMatrixData3
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows136 : actualRows136=WordField.canonicalRows actualModulus 136 (.badd 134 135) := by core033_kernel_decide
theorem stats136 : actualRows136.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows136=5388 := by core033_kernel_decide
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.badd 136 51) := by core033_kernel_decide
theorem stats137 : actualRows137.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows137=5388 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.rotr 52 8) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=5124 := by core033_kernel_decide
theorem rows139 : actualRows139=WordField.canonicalRows actualModulus 139 (.rotr 53 16) := by core033_kernel_decide
theorem stats139 : actualRows139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows139=5124 := by core033_kernel_decide
theorem rows140 : actualRows140=WordField.canonicalRows actualModulus 140 (.badd 138 139) := by core033_kernel_decide
theorem stats140 : actualRows140.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows140=5388 := by core033_kernel_decide
theorem rows141 : actualRows141=WordField.canonicalRows actualModulus 141 (.rotr 54 24) := by core033_kernel_decide
theorem stats141 : actualRows141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows141=5124 := by core033_kernel_decide
theorem rows142 : actualRows142=WordField.canonicalRows actualModulus 142 (.badd 140 141) := by core033_kernel_decide
theorem stats142 : actualRows142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows142=5388 := by core033_kernel_decide
theorem rows143 : actualRows143=WordField.canonicalRows actualModulus 143 (.badd 142 55) := by core033_kernel_decide
theorem stats143 : actualRows143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows143=5388 := by core033_kernel_decide
theorem rows144 : actualRows144=WordField.canonicalRows actualModulus 144 (.rotr 56 8) := by core033_kernel_decide
theorem stats144 : actualRows144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows144=5124 := by core033_kernel_decide
theorem rows145 : actualRows145=WordField.canonicalRows actualModulus 145 (.rotr 57 16) := by core033_kernel_decide
theorem stats145 : actualRows145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows145=5124 := by core033_kernel_decide
theorem rows146 : actualRows146=WordField.canonicalRows actualModulus 146 (.badd 144 145) := by core033_kernel_decide
theorem stats146 : actualRows146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows146=5388 := by core033_kernel_decide
theorem rows147 : actualRows147=WordField.canonicalRows actualModulus 147 (.rotr 58 24) := by core033_kernel_decide
theorem stats147 : actualRows147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows147=5124 := by core033_kernel_decide
theorem rows148 : actualRows148=WordField.canonicalRows actualModulus 148 (.badd 146 147) := by core033_kernel_decide
theorem stats148 : actualRows148.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows148=5388 := by core033_kernel_decide
theorem rows149 : actualRows149=WordField.canonicalRows actualModulus 149 (.badd 148 59) := by core033_kernel_decide
theorem stats149 : actualRows149.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows149=5388 := by core033_kernel_decide
theorem rows150 : actualRows150=WordField.canonicalRows actualModulus 150 (.rotr 60 8) := by core033_kernel_decide
theorem stats150 : actualRows150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows150=5124 := by core033_kernel_decide
theorem rows151 : actualRows151=WordField.canonicalRows actualModulus 151 (.rotr 61 16) := by core033_kernel_decide
theorem stats151 : actualRows151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows151=5124 := by core033_kernel_decide
theorem rows152 : actualRows152=WordField.canonicalRows actualModulus 152 (.badd 150 151) := by core033_kernel_decide
theorem stats152 : actualRows152.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows152=5388 := by core033_kernel_decide
theorem rows153 : actualRows153=WordField.canonicalRows actualModulus 153 (.rotr 62 24) := by core033_kernel_decide
theorem stats153 : actualRows153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows153=5124 := by core033_kernel_decide
theorem rows154 : actualRows154=WordField.canonicalRows actualModulus 154 (.badd 152 153) := by core033_kernel_decide
theorem stats154 : actualRows154.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows154=5388 := by core033_kernel_decide
theorem rows155 : actualRows155=WordField.canonicalRows actualModulus 155 (.badd 154 63) := by core033_kernel_decide
theorem stats155 : actualRows155.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows155=5388 := by core033_kernel_decide
theorem rows156 : actualRows156=WordField.canonicalRows actualModulus 156 (.rotr 64 8) := by core033_kernel_decide
theorem stats156 : actualRows156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows156=5124 := by core033_kernel_decide
theorem rows157 : actualRows157=WordField.canonicalRows actualModulus 157 (.rotr 65 16) := by core033_kernel_decide
theorem stats157 : actualRows157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows157=5124 := by core033_kernel_decide
theorem rows158 : actualRows158=WordField.canonicalRows actualModulus 158 (.badd 156 157) := by core033_kernel_decide
theorem stats158 : actualRows158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows158=5388 := by core033_kernel_decide
theorem rows159 : actualRows159=WordField.canonicalRows actualModulus 159 (.rotr 66 24) := by core033_kernel_decide
theorem stats159 : actualRows159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows159=5124 := by core033_kernel_decide
theorem rows160 : actualRows160=WordField.canonicalRows actualModulus 160 (.badd 158 159) := by core033_kernel_decide
theorem stats160 : actualRows160.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows160=5388 := by core033_kernel_decide
theorem rows161 : actualRows161=WordField.canonicalRows actualModulus 161 (.badd 160 67) := by core033_kernel_decide
theorem stats161 : actualRows161.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows161=5388 := by core033_kernel_decide
theorem rows162 : actualRows162=WordField.canonicalRows actualModulus 162 (.rotr 68 8) := by core033_kernel_decide
theorem stats162 : actualRows162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows162=5124 := by core033_kernel_decide
theorem rows163 : actualRows163=WordField.canonicalRows actualModulus 163 (.rotr 69 16) := by core033_kernel_decide
theorem stats163 : actualRows163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows163=5124 := by core033_kernel_decide
theorem rows164 : actualRows164=WordField.canonicalRows actualModulus 164 (.badd 162 163) := by core033_kernel_decide
theorem stats164 : actualRows164.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows164=5388 := by core033_kernel_decide
theorem rows165 : actualRows165=WordField.canonicalRows actualModulus 165 (.rotr 70 24) := by core033_kernel_decide
theorem stats165 : actualRows165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows165=5124 := by core033_kernel_decide
theorem rows166 : actualRows166=WordField.canonicalRows actualModulus 166 (.badd 164 165) := by core033_kernel_decide
theorem stats166 : actualRows166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows166=5388 := by core033_kernel_decide
theorem rows167 : actualRows167=WordField.canonicalRows actualModulus 167 (.badd 166 71) := by core033_kernel_decide
theorem stats167 : actualRows167.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows167=5388 := by core033_kernel_decide
theorem rows168 : actualRows168=WordField.canonicalRows actualModulus 168 (.shr 8 8) := by core033_kernel_decide
theorem stats168 : actualRows168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows168=4548 := by core033_kernel_decide
theorem rows169 : actualRows169=WordField.canonicalRows actualModulus 169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats169 : actualRows169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows169=2820 := by core033_kernel_decide
theorem rows170 : actualRows170=WordField.canonicalRows actualModulus 170 (.bnot 169) := by core033_kernel_decide
theorem stats170 : actualRows170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows170=6276 := by core033_kernel_decide
theorem rows171 : actualRows171=WordField.canonicalRows actualModulus 171 (.band 168 170) := by core033_kernel_decide
theorem stats171 : actualRows171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows171=5124 := by core033_kernel_decide
theorem rows172 : actualRows172=WordField.canonicalRows actualModulus 172 (.shr 8 8) := by core033_kernel_decide
theorem stats172 : actualRows172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows172=4548 := by core033_kernel_decide
theorem rows173 : actualRows173=WordField.canonicalRows actualModulus 173 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats173 : actualRows173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows173=2820 := by core033_kernel_decide
theorem rows174 : actualRows174=WordField.canonicalRows actualModulus 174 (.bnot 173) := by core033_kernel_decide
theorem stats174 : actualRows174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows174=6276 := by core033_kernel_decide
theorem rows175 : actualRows175=WordField.canonicalRows actualModulus 175 (.bxor 172 174) := by core033_kernel_decide
theorem stats175 : actualRows175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows175=7428 := by core033_kernel_decide
theorem rows176 : actualRows176=WordField.canonicalRows actualModulus 176 (.shr 8 8) := by core033_kernel_decide
theorem stats176 : actualRows176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows176=4548 := by core033_kernel_decide
theorem rows177 : actualRows177=WordField.canonicalRows actualModulus 177 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats177 : actualRows177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows177=2820 := by core033_kernel_decide
theorem rows178 : actualRows178=WordField.canonicalRows actualModulus 178 (.bnot 177) := by core033_kernel_decide
theorem stats178 : actualRows178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows178=6276 := by core033_kernel_decide
theorem rows179 : actualRows179=WordField.canonicalRows actualModulus 179 (.badd 176 178) := by core033_kernel_decide
theorem stats179 : actualRows179.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows179=5388 := by core033_kernel_decide
theorem rows180 : actualRows180=WordField.canonicalRows actualModulus 180 (.bnot 179) := by core033_kernel_decide
theorem stats180 : actualRows180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows180=6276 := by core033_kernel_decide
theorem rows181 : actualRows181=WordField.canonicalRows actualModulus 181 (.band 175 180) := by core033_kernel_decide
theorem stats181 : actualRows181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows181=5124 := by core033_kernel_decide
theorem rows182 : actualRows182=WordField.canonicalRows actualModulus 182 (.bxor 171 181) := by core033_kernel_decide
theorem stats182 : actualRows182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows182=7428 := by core033_kernel_decide
theorem rows183 : actualRows183=WordField.canonicalRows actualModulus 183 (.shr 182 31) := by core033_kernel_decide
theorem stats183 : actualRows183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows183=2892 := by core033_kernel_decide
theorem rows184 : actualRows184=WordField.canonicalRows actualModulus 184 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats184 : actualRows184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows184=2892 := by core033_kernel_decide
theorem rows185 : actualRows185=WordField.canonicalRows actualModulus 185 (.bxor 183 184) := by core033_kernel_decide
theorem stats185 : actualRows185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows185=7428 := by core033_kernel_decide
theorem rows186 : actualRows186=WordField.canonicalRows actualModulus 186 (.shr 9 8) := by core033_kernel_decide
theorem stats186 : actualRows186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows186=4548 := by core033_kernel_decide
theorem rows187 : actualRows187=WordField.canonicalRows actualModulus 187 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats187 : actualRows187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows187=2820 := by core033_kernel_decide
theorem rows188 : actualRows188=WordField.canonicalRows actualModulus 188 (.bnot 187) := by core033_kernel_decide
theorem stats188 : actualRows188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows188=6276 := by core033_kernel_decide
theorem rows189 : actualRows189=WordField.canonicalRows actualModulus 189 (.band 186 188) := by core033_kernel_decide
theorem stats189 : actualRows189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows189=5124 := by core033_kernel_decide
theorem rows190 : actualRows190=WordField.canonicalRows actualModulus 190 (.shr 9 8) := by core033_kernel_decide
theorem stats190 : actualRows190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows190=4548 := by core033_kernel_decide
theorem rows191 : actualRows191=WordField.canonicalRows actualModulus 191 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats191 : actualRows191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows191=2820 := by core033_kernel_decide
theorem rows192 : actualRows192=WordField.canonicalRows actualModulus 192 (.bnot 191) := by core033_kernel_decide
theorem stats192 : actualRows192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows192=6276 := by core033_kernel_decide
theorem rows193 : actualRows193=WordField.canonicalRows actualModulus 193 (.bxor 190 192) := by core033_kernel_decide
theorem stats193 : actualRows193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows193=7428 := by core033_kernel_decide
theorem rows194 : actualRows194=WordField.canonicalRows actualModulus 194 (.shr 9 8) := by core033_kernel_decide
theorem stats194 : actualRows194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows194=4548 := by core033_kernel_decide
theorem rows195 : actualRows195=WordField.canonicalRows actualModulus 195 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats195 : actualRows195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows195=2820 := by core033_kernel_decide
theorem rows196 : actualRows196=WordField.canonicalRows actualModulus 196 (.bnot 195) := by core033_kernel_decide
theorem stats196 : actualRows196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows196=6276 := by core033_kernel_decide
theorem rows197 : actualRows197=WordField.canonicalRows actualModulus 197 (.badd 194 196) := by core033_kernel_decide
theorem stats197 : actualRows197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows197=5388 := by core033_kernel_decide
theorem rows198 : actualRows198=WordField.canonicalRows actualModulus 198 (.bnot 197) := by core033_kernel_decide
theorem stats198 : actualRows198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows198=6276 := by core033_kernel_decide
theorem rows199 : actualRows199=WordField.canonicalRows actualModulus 199 (.band 193 198) := by core033_kernel_decide
theorem stats199 : actualRows199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows199=5124 := by core033_kernel_decide
def partRows1 : List R1CS.Row := actualRows136++actualRows137++actualRows138++actualRows139++actualRows140++actualRows141++actualRows142++actualRows143++actualRows144++actualRows145++actualRows146++actualRows147++actualRows148++actualRows149++actualRows150++actualRows151++actualRows152++actualRows153++actualRows154++actualRows155++actualRows156++actualRows157++actualRows158++actualRows159++actualRows160++actualRows161++actualRows162++actualRows163++actualRows164++actualRows165++actualRows166++actualRows167++actualRows168++actualRows169++actualRows170++actualRows171++actualRows172++actualRows173++actualRows174++actualRows175++actualRows176++actualRows177++actualRows178++actualRows179++actualRows180++actualRows181++actualRows182++actualRows183++actualRows184++actualRows185++actualRows186++actualRows187++actualRows188++actualRows189++actualRows190++actualRows191++actualRows192++actualRows193++actualRows194++actualRows195++actualRows196++actualRows197++actualRows198++actualRows199
def partOps1 : List WordIR.Op := [.badd 134 135,.badd 136 51,.rotr 52 8,.rotr 53 16,.badd 138 139,.rotr 54 24,.badd 140 141,.badd 142 55,.rotr 56 8,.rotr 57 16,.badd 144 145,.rotr 58 24,.badd 146 147,.badd 148 59,.rotr 60 8,.rotr 61 16,.badd 150 151,.rotr 62 24,.badd 152 153,.badd 154 63,.rotr 64 8,.rotr 65 16,.badd 156 157,.rotr 66 24,.badd 158 159,.badd 160 67,.rotr 68 8,.rotr 69 16,.badd 162 163,.rotr 70 24,.badd 164 165,.badd 166 71,.shr 8 8,.literal (BitVec.ofNat 32 0),.bnot 169,.band 168 170,.shr 8 8,.literal (BitVec.ofNat 32 0),.bnot 173,.bxor 172 174,.shr 8 8,.literal (BitVec.ofNat 32 0),.bnot 177,.badd 176 178,.bnot 179,.band 175 180,.bxor 171 181,.shr 182 31,.literal (BitVec.ofNat 32 1),.bxor 183 184,.shr 9 8,.literal (BitVec.ofNat 32 0),.bnot 187,.band 186 188,.shr 9 8,.literal (BitVec.ofNat 32 0),.bnot 191,.bxor 190 192,.shr 9 8,.literal (BitVec.ofNat 32 0),.bnot 195,.badd 194 196,.bnot 197,.band 193 198]
theorem partExact1 : partRows1=WordField.rows actualModulus 136 partOps1 := by
  simp only [partRows1,partOps1,WordField.rows,rows136,rows137,rows138,rows139,rows140,rows141,rows142,rows143,rows144,rows145,rows146,rows147,rows148,rows149,rows150,rows151,rows152,rows153,rows154,rows155,rows156,rows157,rows158,rows159,rows160,rows161,rows162,rows163,rows164,rows165,rows166,rows167,rows168,rows169,rows170,rows171,rows172,rows173,rows174,rows175,rows176,rows177,rows178,rows179,rows180,rows181,rows182,rows183,rows184,rows185,rows186,rows187,rows188,rows189,rows190,rows191,rows192,rows193,rows194,rows195,rows196,rows197,rows198,rows199,List.append_assoc,List.append_nil]
theorem partLength1 : partOps1.length=64 := by decide
theorem partStats1 : partRows1.length=2195 ∧ MatrixRowBlocks.rowsWeight partRows1=329640 := by
  simp only [partRows1,List.length_append,MatrixRowBlocks.rows_weight_append,stats136.1,stats136.2,stats137.1,stats137.2,stats138.1,stats138.2,stats139.1,stats139.2,stats140.1,stats140.2,stats141.1,stats141.2,stats142.1,stats142.2,stats143.1,stats143.2,stats144.1,stats144.2,stats145.1,stats145.2,stats146.1,stats146.2,stats147.1,stats147.2,stats148.1,stats148.2,stats149.1,stats149.2,stats150.1,stats150.2,stats151.1,stats151.2,stats152.1,stats152.2,stats153.1,stats153.2,stats154.1,stats154.2,stats155.1,stats155.2,stats156.1,stats156.2,stats157.1,stats157.2,stats158.1,stats158.2,stats159.1,stats159.2,stats160.1,stats160.2,stats161.1,stats161.2,stats162.1,stats162.2,stats163.1,stats163.2,stats164.1,stats164.2,stats165.1,stats165.2,stats166.1,stats166.2,stats167.1,stats167.2,stats168.1,stats168.2,stats169.1,stats169.2,stats170.1,stats170.2,stats171.1,stats171.2,stats172.1,stats172.2,stats173.1,stats173.2,stats174.1,stats174.2,stats175.1,stats175.2,stats176.1,stats176.2,stats177.1,stats177.2,stats178.1,stats178.2,stats179.1,stats179.2,stats180.1,stats180.2,stats181.1,stats181.2,stats182.1,stats182.2,stats183.1,stats183.2,stats184.1,stats184.2,stats185.1,stats185.2,stats186.1,stats186.2,stats187.1,stats187.2,stats188.1,stats188.2,stats189.1,stats189.2,stats190.1,stats190.2,stats191.1,stats191.2,stats192.1,stats192.2,stats193.1,stats193.2,stats194.1,stats194.2,stats195.1,stats195.2,stats196.1,stats196.2,stats197.1,stats197.2,stats198.1,stats198.2,stats199.1,stats199.2]
  decide
end HashBlockCheckedRows
