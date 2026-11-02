import ActualCounterIR
import ActualCounterBytes
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CounterInstructionMatrixData2
import CounterInstructionMatrixData3
namespace CounterCheckedRows
open Core033 CounterInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows132 : actualRows132=WordField.canonicalRows actualModulus 132 (.bxor 3 131) := by core033_kernel_decide
theorem stats132 : actualRows132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows132=7428 := by core033_kernel_decide
theorem rows133 : actualRows133=WordField.canonicalRows actualModulus 133 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats133 : actualRows133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows133=2820 := by core033_kernel_decide
theorem rows134 : actualRows134=WordField.canonicalRows actualModulus 134 (.bnot 133) := by core033_kernel_decide
theorem stats134 : actualRows134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows134=6276 := by core033_kernel_decide
theorem rows135 : actualRows135=WordField.canonicalRows actualModulus 135 (.badd 3 134) := by core033_kernel_decide
theorem stats135 : actualRows135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows135=5388 := by core033_kernel_decide
theorem rows136 : actualRows136=WordField.canonicalRows actualModulus 136 (.bnot 135) := by core033_kernel_decide
theorem stats136 : actualRows136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows136=6276 := by core033_kernel_decide
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.band 132 136) := by core033_kernel_decide
theorem stats137 : actualRows137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows137=5124 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.bxor 129 137) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=7428 := by core033_kernel_decide
theorem rows139 : actualRows139=WordField.canonicalRows actualModulus 139 (.shr 138 31) := by core033_kernel_decide
theorem stats139 : actualRows139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows139=2892 := by core033_kernel_decide
theorem rows140 : actualRows140=WordField.canonicalRows actualModulus 140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats140 : actualRows140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows140=2892 := by core033_kernel_decide
theorem rows141 : actualRows141=WordField.canonicalRows actualModulus 141 (.bxor 139 140) := by core033_kernel_decide
theorem stats141 : actualRows141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows141=7428 := by core033_kernel_decide
theorem rows142 : actualRows142=WordField.canonicalRows actualModulus 142 (.band 126 141) := by core033_kernel_decide
theorem stats142 : actualRows142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows142=5124 := by core033_kernel_decide
theorem rows143 : actualRows143=WordField.canonicalRows actualModulus 143 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats143 : actualRows143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows143=2892 := by core033_kernel_decide
theorem rows144 : actualRows144=WordField.canonicalRows actualModulus 144 (.bxor 142 143) := by core033_kernel_decide
theorem stats144 : actualRows144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows144=7428 := by core033_kernel_decide
theorem rows145 : actualRows145=WordField.canonicalRows actualModulus 145 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats145 : actualRows145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows145=5124 := by core033_kernel_decide
theorem rows146 : actualRows146=WordField.canonicalRows actualModulus 146 (.badd 2 145) := by core033_kernel_decide
theorem stats146 : actualRows146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows146=5388 := by core033_kernel_decide
theorem rows147 : actualRows147=WordField.canonicalRows actualModulus 147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats147 : actualRows147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows147=2820 := by core033_kernel_decide
theorem rows148 : actualRows148=WordField.canonicalRows actualModulus 148 (.bnot 147) := by core033_kernel_decide
theorem stats148 : actualRows148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows148=6276 := by core033_kernel_decide
theorem rows149 : actualRows149=WordField.canonicalRows actualModulus 149 (.band 146 148) := by core033_kernel_decide
theorem stats149 : actualRows149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows149=5124 := by core033_kernel_decide
theorem rows150 : actualRows150=WordField.canonicalRows actualModulus 150 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats150 : actualRows150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows150=5124 := by core033_kernel_decide
theorem rows151 : actualRows151=WordField.canonicalRows actualModulus 151 (.badd 2 150) := by core033_kernel_decide
theorem stats151 : actualRows151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows151=5388 := by core033_kernel_decide
theorem rows152 : actualRows152=WordField.canonicalRows actualModulus 152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats152 : actualRows152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows152=2820 := by core033_kernel_decide
theorem rows153 : actualRows153=WordField.canonicalRows actualModulus 153 (.bnot 152) := by core033_kernel_decide
theorem stats153 : actualRows153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows153=6276 := by core033_kernel_decide
theorem rows154 : actualRows154=WordField.canonicalRows actualModulus 154 (.bxor 151 153) := by core033_kernel_decide
theorem stats154 : actualRows154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows154=7428 := by core033_kernel_decide
theorem rows155 : actualRows155=WordField.canonicalRows actualModulus 155 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats155 : actualRows155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows155=5124 := by core033_kernel_decide
theorem rows156 : actualRows156=WordField.canonicalRows actualModulus 156 (.badd 2 155) := by core033_kernel_decide
theorem stats156 : actualRows156.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows156=5388 := by core033_kernel_decide
theorem rows157 : actualRows157=WordField.canonicalRows actualModulus 157 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats157 : actualRows157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows157=2820 := by core033_kernel_decide
theorem rows158 : actualRows158=WordField.canonicalRows actualModulus 158 (.bnot 157) := by core033_kernel_decide
theorem stats158 : actualRows158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows158=6276 := by core033_kernel_decide
theorem rows159 : actualRows159=WordField.canonicalRows actualModulus 159 (.badd 156 158) := by core033_kernel_decide
theorem stats159 : actualRows159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows159=5388 := by core033_kernel_decide
theorem rows160 : actualRows160=WordField.canonicalRows actualModulus 160 (.bnot 159) := by core033_kernel_decide
theorem stats160 : actualRows160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows160=6276 := by core033_kernel_decide
theorem rows161 : actualRows161=WordField.canonicalRows actualModulus 161 (.band 154 160) := by core033_kernel_decide
theorem stats161 : actualRows161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows161=5124 := by core033_kernel_decide
theorem rows162 : actualRows162=WordField.canonicalRows actualModulus 162 (.bxor 149 161) := by core033_kernel_decide
theorem stats162 : actualRows162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows162=7428 := by core033_kernel_decide
theorem rows163 : actualRows163=WordField.canonicalRows actualModulus 163 (.shr 162 31) := by core033_kernel_decide
theorem stats163 : actualRows163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows163=2892 := by core033_kernel_decide
theorem rows164 : actualRows164=WordField.canonicalRows actualModulus 164 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats164 : actualRows164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows164=2892 := by core033_kernel_decide
theorem rows165 : actualRows165=WordField.canonicalRows actualModulus 165 (.bxor 163 164) := by core033_kernel_decide
theorem stats165 : actualRows165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows165=7428 := by core033_kernel_decide
theorem rows166 : actualRows166=WordField.canonicalRows actualModulus 166 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats166 : actualRows166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows166=5124 := by core033_kernel_decide
theorem rows167 : actualRows167=WordField.canonicalRows actualModulus 167 (.badd 3 166) := by core033_kernel_decide
theorem stats167 : actualRows167.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows167=5388 := by core033_kernel_decide
theorem rows168 : actualRows168=WordField.canonicalRows actualModulus 168 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats168 : actualRows168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows168=5124 := by core033_kernel_decide
theorem rows169 : actualRows169=WordField.canonicalRows actualModulus 169 (.band 2 168) := by core033_kernel_decide
theorem stats169 : actualRows169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows169=5124 := by core033_kernel_decide
theorem rows170 : actualRows170=WordField.canonicalRows actualModulus 170 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats170 : actualRows170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows170=5124 := by core033_kernel_decide
theorem rows171 : actualRows171=WordField.canonicalRows actualModulus 171 (.bxor 2 170) := by core033_kernel_decide
theorem stats171 : actualRows171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows171=7428 := by core033_kernel_decide
theorem rows172 : actualRows172=WordField.canonicalRows actualModulus 172 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats172 : actualRows172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows172=5124 := by core033_kernel_decide
theorem rows173 : actualRows173=WordField.canonicalRows actualModulus 173 (.badd 2 172) := by core033_kernel_decide
theorem stats173 : actualRows173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows173=5388 := by core033_kernel_decide
theorem rows174 : actualRows174=WordField.canonicalRows actualModulus 174 (.bnot 173) := by core033_kernel_decide
theorem stats174 : actualRows174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows174=6276 := by core033_kernel_decide
theorem rows175 : actualRows175=WordField.canonicalRows actualModulus 175 (.band 171 174) := by core033_kernel_decide
theorem stats175 : actualRows175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows175=5124 := by core033_kernel_decide
theorem rows176 : actualRows176=WordField.canonicalRows actualModulus 176 (.bxor 169 175) := by core033_kernel_decide
theorem stats176 : actualRows176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows176=7428 := by core033_kernel_decide
theorem rows177 : actualRows177=WordField.canonicalRows actualModulus 177 (.shr 176 31) := by core033_kernel_decide
theorem stats177 : actualRows177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows177=2892 := by core033_kernel_decide
theorem rows178 : actualRows178=WordField.canonicalRows actualModulus 178 (.badd 167 177) := by core033_kernel_decide
theorem stats178 : actualRows178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows178=5388 := by core033_kernel_decide
theorem rows179 : actualRows179=WordField.canonicalRows actualModulus 179 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats179 : actualRows179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows179=2820 := by core033_kernel_decide
theorem rows180 : actualRows180=WordField.canonicalRows actualModulus 180 (.bnot 179) := by core033_kernel_decide
theorem stats180 : actualRows180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows180=6276 := by core033_kernel_decide
theorem rows181 : actualRows181=WordField.canonicalRows actualModulus 181 (.band 178 180) := by core033_kernel_decide
theorem stats181 : actualRows181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows181=5124 := by core033_kernel_decide
theorem rows182 : actualRows182=WordField.canonicalRows actualModulus 182 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats182 : actualRows182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows182=5124 := by core033_kernel_decide
theorem rows183 : actualRows183=WordField.canonicalRows actualModulus 183 (.badd 3 182) := by core033_kernel_decide
theorem stats183 : actualRows183.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows183=5388 := by core033_kernel_decide
theorem rows184 : actualRows184=WordField.canonicalRows actualModulus 184 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats184 : actualRows184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows184=5124 := by core033_kernel_decide
theorem rows185 : actualRows185=WordField.canonicalRows actualModulus 185 (.band 2 184) := by core033_kernel_decide
theorem stats185 : actualRows185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows185=5124 := by core033_kernel_decide
theorem rows186 : actualRows186=WordField.canonicalRows actualModulus 186 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats186 : actualRows186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows186=5124 := by core033_kernel_decide
theorem rows187 : actualRows187=WordField.canonicalRows actualModulus 187 (.bxor 2 186) := by core033_kernel_decide
theorem stats187 : actualRows187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows187=7428 := by core033_kernel_decide
theorem rows188 : actualRows188=WordField.canonicalRows actualModulus 188 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats188 : actualRows188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows188=5124 := by core033_kernel_decide
theorem rows189 : actualRows189=WordField.canonicalRows actualModulus 189 (.badd 2 188) := by core033_kernel_decide
theorem stats189 : actualRows189.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows189=5388 := by core033_kernel_decide
theorem rows190 : actualRows190=WordField.canonicalRows actualModulus 190 (.bnot 189) := by core033_kernel_decide
theorem stats190 : actualRows190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows190=6276 := by core033_kernel_decide
theorem rows191 : actualRows191=WordField.canonicalRows actualModulus 191 (.band 187 190) := by core033_kernel_decide
theorem stats191 : actualRows191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows191=5124 := by core033_kernel_decide
theorem rows192 : actualRows192=WordField.canonicalRows actualModulus 192 (.bxor 185 191) := by core033_kernel_decide
theorem stats192 : actualRows192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows192=7428 := by core033_kernel_decide
theorem rows193 : actualRows193=WordField.canonicalRows actualModulus 193 (.shr 192 31) := by core033_kernel_decide
theorem stats193 : actualRows193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows193=2892 := by core033_kernel_decide
theorem rows194 : actualRows194=WordField.canonicalRows actualModulus 194 (.badd 183 193) := by core033_kernel_decide
theorem stats194 : actualRows194.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows194=5388 := by core033_kernel_decide
theorem rows195 : actualRows195=WordField.canonicalRows actualModulus 195 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats195 : actualRows195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows195=2820 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows132++actualRows133++actualRows134++actualRows135++actualRows136++actualRows137++actualRows138++actualRows139++actualRows140++actualRows141++actualRows142++actualRows143++actualRows144++actualRows145++actualRows146++actualRows147++actualRows148++actualRows149++actualRows150++actualRows151++actualRows152++actualRows153++actualRows154++actualRows155++actualRows156++actualRows157++actualRows158++actualRows159++actualRows160++actualRows161++actualRows162++actualRows163++actualRows164++actualRows165++actualRows166++actualRows167++actualRows168++actualRows169++actualRows170++actualRows171++actualRows172++actualRows173++actualRows174++actualRows175++actualRows176++actualRows177++actualRows178++actualRows179++actualRows180++actualRows181++actualRows182++actualRows183++actualRows184++actualRows185++actualRows186++actualRows187++actualRows188++actualRows189++actualRows190++actualRows191++actualRows192++actualRows193++actualRows194++actualRows195
def partOps2 : List WordIR.Op := [.bxor 3 131,.literal (BitVec.ofNat 32 0),.bnot 133,.badd 3 134,.bnot 135,.band 132 136,.bxor 129 137,.shr 138 31,.literal (BitVec.ofNat 32 1),.bxor 139 140,.band 126 141,.literal (BitVec.ofNat 32 1),.bxor 142 143,.literal (BitVec.ofNat 32 4294967295),.badd 2 145,.literal (BitVec.ofNat 32 0),.bnot 147,.band 146 148,.literal (BitVec.ofNat 32 4294967295),.badd 2 150,.literal (BitVec.ofNat 32 0),.bnot 152,.bxor 151 153,.literal (BitVec.ofNat 32 4294967295),.badd 2 155,.literal (BitVec.ofNat 32 0),.bnot 157,.badd 156 158,.bnot 159,.band 154 160,.bxor 149 161,.shr 162 31,.literal (BitVec.ofNat 32 1),.bxor 163 164,.literal (BitVec.ofNat 32 4294967295),.badd 3 166,.literal (BitVec.ofNat 32 4294967295),.band 2 168,.literal (BitVec.ofNat 32 4294967295),.bxor 2 170,.literal (BitVec.ofNat 32 4294967295),.badd 2 172,.bnot 173,.band 171 174,.bxor 169 175,.shr 176 31,.badd 167 177,.literal (BitVec.ofNat 32 0),.bnot 179,.band 178 180,.literal (BitVec.ofNat 32 4294967295),.badd 3 182,.literal (BitVec.ofNat 32 4294967295),.band 2 184,.literal (BitVec.ofNat 32 4294967295),.bxor 2 186,.literal (BitVec.ofNat 32 4294967295),.badd 2 188,.bnot 189,.band 187 190,.bxor 185 191,.shr 192 31,.badd 183 193,.literal (BitVec.ofNat 32 0)]
theorem partExact2 : partRows2=WordField.rows actualModulus 132 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows132,rows133,rows134,rows135,rows136,rows137,rows138,rows139,rows140,rows141,rows142,rows143,rows144,rows145,rows146,rows147,rows148,rows149,rows150,rows151,rows152,rows153,rows154,rows155,rows156,rows157,rows158,rows159,rows160,rows161,rows162,rows163,rows164,rows165,rows166,rows167,rows168,rows169,rows170,rows171,rows172,rows173,rows174,rows175,rows176,rows177,rows178,rows179,rows180,rows181,rows182,rows183,rows184,rows185,rows186,rows187,rows188,rows189,rows190,rows191,rows192,rows193,rows194,rows195,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=64 := by decide
theorem partStats2 : partRows2.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows2=337104 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats132.1,stats132.2,stats133.1,stats133.2,stats134.1,stats134.2,stats135.1,stats135.2,stats136.1,stats136.2,stats137.1,stats137.2,stats138.1,stats138.2,stats139.1,stats139.2,stats140.1,stats140.2,stats141.1,stats141.2,stats142.1,stats142.2,stats143.1,stats143.2,stats144.1,stats144.2,stats145.1,stats145.2,stats146.1,stats146.2,stats147.1,stats147.2,stats148.1,stats148.2,stats149.1,stats149.2,stats150.1,stats150.2,stats151.1,stats151.2,stats152.1,stats152.2,stats153.1,stats153.2,stats154.1,stats154.2,stats155.1,stats155.2,stats156.1,stats156.2,stats157.1,stats157.2,stats158.1,stats158.2,stats159.1,stats159.2,stats160.1,stats160.2,stats161.1,stats161.2,stats162.1,stats162.2,stats163.1,stats163.2,stats164.1,stats164.2,stats165.1,stats165.2,stats166.1,stats166.2,stats167.1,stats167.2,stats168.1,stats168.2,stats169.1,stats169.2,stats170.1,stats170.2,stats171.1,stats171.2,stats172.1,stats172.2,stats173.1,stats173.2,stats174.1,stats174.2,stats175.1,stats175.2,stats176.1,stats176.2,stats177.1,stats177.2,stats178.1,stats178.2,stats179.1,stats179.2,stats180.1,stats180.2,stats181.1,stats181.2,stats182.1,stats182.2,stats183.1,stats183.2,stats184.1,stats184.2,stats185.1,stats185.2,stats186.1,stats186.2,stats187.1,stats187.2,stats188.1,stats188.2,stats189.1,stats189.2,stats190.1,stats190.2,stats191.1,stats191.2,stats192.1,stats192.2,stats193.1,stats193.2,stats194.1,stats194.2,stats195.1,stats195.2]
  decide
end CounterCheckedRows
