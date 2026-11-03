import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData2
import ParentBranchInstructionMatrixData3
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows154 : actualRows154=WordField.canonicalRows actualModulus 154 (.band 148 153) := by core033_kernel_decide
theorem stats154 : actualRows154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows154=5124 := by core033_kernel_decide
theorem rows155 : actualRows155=WordField.canonicalRows actualModulus 155 (.bxor 144 154) := by core033_kernel_decide
theorem stats155 : actualRows155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows155=7428 := by core033_kernel_decide
theorem rows156 : actualRows156=WordField.canonicalRows actualModulus 156 (.shr 155 31) := by core033_kernel_decide
theorem stats156 : actualRows156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows156=2892 := by core033_kernel_decide
theorem rows157 : actualRows157=WordField.canonicalRows actualModulus 157 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats157 : actualRows157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows157=2892 := by core033_kernel_decide
theorem rows158 : actualRows158=WordField.canonicalRows actualModulus 158 (.bxor 156 157) := by core033_kernel_decide
theorem stats158 : actualRows158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows158=7428 := by core033_kernel_decide
theorem rows159 : actualRows159=WordField.canonicalRows actualModulus 159 (.band 140 158) := by core033_kernel_decide
theorem stats159 : actualRows159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows159=5124 := by core033_kernel_decide
theorem rows160 : actualRows160=WordField.canonicalRows actualModulus 160 (.band 98 159) := by core033_kernel_decide
theorem stats160 : actualRows160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows160=5124 := by core033_kernel_decide
theorem rows161 : actualRows161=WordField.canonicalRows actualModulus 161 (.band 22 23) := by core033_kernel_decide
theorem stats161 : actualRows161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows161=5124 := by core033_kernel_decide
theorem rows162 : actualRows162=WordField.canonicalRows actualModulus 162 (.band 24 25) := by core033_kernel_decide
theorem stats162 : actualRows162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows162=5124 := by core033_kernel_decide
theorem rows163 : actualRows163=WordField.canonicalRows actualModulus 163 (.shr 22 1) := by core033_kernel_decide
theorem stats163 : actualRows163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows163=5052 := by core033_kernel_decide
theorem rows164 : actualRows164=WordField.canonicalRows actualModulus 164 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats164 : actualRows164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows164=2820 := by core033_kernel_decide
theorem rows165 : actualRows165=WordField.canonicalRows actualModulus 165 (.bnot 164) := by core033_kernel_decide
theorem stats165 : actualRows165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows165=6276 := by core033_kernel_decide
theorem rows166 : actualRows166=WordField.canonicalRows actualModulus 166 (.band 163 165) := by core033_kernel_decide
theorem stats166 : actualRows166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows166=5124 := by core033_kernel_decide
theorem rows167 : actualRows167=WordField.canonicalRows actualModulus 167 (.shr 22 1) := by core033_kernel_decide
theorem stats167 : actualRows167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows167=5052 := by core033_kernel_decide
theorem rows168 : actualRows168=WordField.canonicalRows actualModulus 168 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats168 : actualRows168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows168=2820 := by core033_kernel_decide
theorem rows169 : actualRows169=WordField.canonicalRows actualModulus 169 (.bnot 168) := by core033_kernel_decide
theorem stats169 : actualRows169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows169=6276 := by core033_kernel_decide
theorem rows170 : actualRows170=WordField.canonicalRows actualModulus 170 (.bxor 167 169) := by core033_kernel_decide
theorem stats170 : actualRows170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows170=7428 := by core033_kernel_decide
theorem rows171 : actualRows171=WordField.canonicalRows actualModulus 171 (.shr 22 1) := by core033_kernel_decide
theorem stats171 : actualRows171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows171=5052 := by core033_kernel_decide
theorem rows172 : actualRows172=WordField.canonicalRows actualModulus 172 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats172 : actualRows172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows172=2820 := by core033_kernel_decide
theorem rows173 : actualRows173=WordField.canonicalRows actualModulus 173 (.bnot 172) := by core033_kernel_decide
theorem stats173 : actualRows173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows173=6276 := by core033_kernel_decide
theorem rows174 : actualRows174=WordField.canonicalRows actualModulus 174 (.badd 171 173) := by core033_kernel_decide
theorem stats174 : actualRows174.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows174=5388 := by core033_kernel_decide
theorem rows175 : actualRows175=WordField.canonicalRows actualModulus 175 (.bnot 174) := by core033_kernel_decide
theorem stats175 : actualRows175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows175=6276 := by core033_kernel_decide
theorem rows176 : actualRows176=WordField.canonicalRows actualModulus 176 (.band 170 175) := by core033_kernel_decide
theorem stats176 : actualRows176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows176=5124 := by core033_kernel_decide
theorem rows177 : actualRows177=WordField.canonicalRows actualModulus 177 (.bxor 166 176) := by core033_kernel_decide
theorem stats177 : actualRows177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows177=7428 := by core033_kernel_decide
theorem rows178 : actualRows178=WordField.canonicalRows actualModulus 178 (.shr 177 31) := by core033_kernel_decide
theorem stats178 : actualRows178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows178=2892 := by core033_kernel_decide
theorem rows179 : actualRows179=WordField.canonicalRows actualModulus 179 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats179 : actualRows179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows179=2892 := by core033_kernel_decide
theorem rows180 : actualRows180=WordField.canonicalRows actualModulus 180 (.bxor 178 179) := by core033_kernel_decide
theorem stats180 : actualRows180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows180=7428 := by core033_kernel_decide
theorem rows181 : actualRows181=WordField.canonicalRows actualModulus 181 (.shr 23 1) := by core033_kernel_decide
theorem stats181 : actualRows181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows181=5052 := by core033_kernel_decide
theorem rows182 : actualRows182=WordField.canonicalRows actualModulus 182 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats182 : actualRows182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows182=2820 := by core033_kernel_decide
theorem rows183 : actualRows183=WordField.canonicalRows actualModulus 183 (.bnot 182) := by core033_kernel_decide
theorem stats183 : actualRows183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows183=6276 := by core033_kernel_decide
theorem rows184 : actualRows184=WordField.canonicalRows actualModulus 184 (.band 181 183) := by core033_kernel_decide
theorem stats184 : actualRows184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows184=5124 := by core033_kernel_decide
theorem rows185 : actualRows185=WordField.canonicalRows actualModulus 185 (.shr 23 1) := by core033_kernel_decide
theorem stats185 : actualRows185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows185=5052 := by core033_kernel_decide
theorem rows186 : actualRows186=WordField.canonicalRows actualModulus 186 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats186 : actualRows186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows186=2820 := by core033_kernel_decide
theorem rows187 : actualRows187=WordField.canonicalRows actualModulus 187 (.bnot 186) := by core033_kernel_decide
theorem stats187 : actualRows187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows187=6276 := by core033_kernel_decide
theorem rows188 : actualRows188=WordField.canonicalRows actualModulus 188 (.bxor 185 187) := by core033_kernel_decide
theorem stats188 : actualRows188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows188=7428 := by core033_kernel_decide
theorem rows189 : actualRows189=WordField.canonicalRows actualModulus 189 (.shr 23 1) := by core033_kernel_decide
theorem stats189 : actualRows189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows189=5052 := by core033_kernel_decide
theorem rows190 : actualRows190=WordField.canonicalRows actualModulus 190 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats190 : actualRows190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows190=2820 := by core033_kernel_decide
theorem rows191 : actualRows191=WordField.canonicalRows actualModulus 191 (.bnot 190) := by core033_kernel_decide
theorem stats191 : actualRows191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows191=6276 := by core033_kernel_decide
theorem rows192 : actualRows192=WordField.canonicalRows actualModulus 192 (.badd 189 191) := by core033_kernel_decide
theorem stats192 : actualRows192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows192=5388 := by core033_kernel_decide
theorem rows193 : actualRows193=WordField.canonicalRows actualModulus 193 (.bnot 192) := by core033_kernel_decide
theorem stats193 : actualRows193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows193=6276 := by core033_kernel_decide
theorem rows194 : actualRows194=WordField.canonicalRows actualModulus 194 (.band 188 193) := by core033_kernel_decide
theorem stats194 : actualRows194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows194=5124 := by core033_kernel_decide
theorem rows195 : actualRows195=WordField.canonicalRows actualModulus 195 (.bxor 184 194) := by core033_kernel_decide
theorem stats195 : actualRows195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows195=7428 := by core033_kernel_decide
theorem rows196 : actualRows196=WordField.canonicalRows actualModulus 196 (.shr 195 31) := by core033_kernel_decide
theorem stats196 : actualRows196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows196=2892 := by core033_kernel_decide
theorem rows197 : actualRows197=WordField.canonicalRows actualModulus 197 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats197 : actualRows197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows197=2892 := by core033_kernel_decide
theorem rows198 : actualRows198=WordField.canonicalRows actualModulus 198 (.bxor 196 197) := by core033_kernel_decide
theorem stats198 : actualRows198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows198=7428 := by core033_kernel_decide
theorem rows199 : actualRows199=WordField.canonicalRows actualModulus 199 (.shr 24 1) := by core033_kernel_decide
theorem stats199 : actualRows199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows199=5052 := by core033_kernel_decide
theorem rows200 : actualRows200=WordField.canonicalRows actualModulus 200 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats200 : actualRows200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows200=2820 := by core033_kernel_decide
theorem rows201 : actualRows201=WordField.canonicalRows actualModulus 201 (.bnot 200) := by core033_kernel_decide
theorem stats201 : actualRows201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows201=6276 := by core033_kernel_decide
theorem rows202 : actualRows202=WordField.canonicalRows actualModulus 202 (.band 199 201) := by core033_kernel_decide
theorem stats202 : actualRows202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows202=5124 := by core033_kernel_decide
theorem rows203 : actualRows203=WordField.canonicalRows actualModulus 203 (.shr 24 1) := by core033_kernel_decide
theorem stats203 : actualRows203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows203=5052 := by core033_kernel_decide
theorem rows204 : actualRows204=WordField.canonicalRows actualModulus 204 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats204 : actualRows204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows204=2820 := by core033_kernel_decide
theorem rows205 : actualRows205=WordField.canonicalRows actualModulus 205 (.bnot 204) := by core033_kernel_decide
theorem stats205 : actualRows205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows205=6276 := by core033_kernel_decide
theorem rows206 : actualRows206=WordField.canonicalRows actualModulus 206 (.bxor 203 205) := by core033_kernel_decide
theorem stats206 : actualRows206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows206=7428 := by core033_kernel_decide
theorem rows207 : actualRows207=WordField.canonicalRows actualModulus 207 (.shr 24 1) := by core033_kernel_decide
theorem stats207 : actualRows207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows207=5052 := by core033_kernel_decide
theorem rows208 : actualRows208=WordField.canonicalRows actualModulus 208 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats208 : actualRows208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows208=2820 := by core033_kernel_decide
theorem rows209 : actualRows209=WordField.canonicalRows actualModulus 209 (.bnot 208) := by core033_kernel_decide
theorem stats209 : actualRows209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows209=6276 := by core033_kernel_decide
theorem rows210 : actualRows210=WordField.canonicalRows actualModulus 210 (.badd 207 209) := by core033_kernel_decide
theorem stats210 : actualRows210.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows210=5388 := by core033_kernel_decide
theorem rows211 : actualRows211=WordField.canonicalRows actualModulus 211 (.bnot 210) := by core033_kernel_decide
theorem stats211 : actualRows211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows211=6276 := by core033_kernel_decide
theorem rows212 : actualRows212=WordField.canonicalRows actualModulus 212 (.band 206 211) := by core033_kernel_decide
theorem stats212 : actualRows212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows212=5124 := by core033_kernel_decide
theorem rows213 : actualRows213=WordField.canonicalRows actualModulus 213 (.bxor 202 212) := by core033_kernel_decide
theorem stats213 : actualRows213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows213=7428 := by core033_kernel_decide
theorem rows214 : actualRows214=WordField.canonicalRows actualModulus 214 (.shr 213 31) := by core033_kernel_decide
theorem stats214 : actualRows214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows214=2892 := by core033_kernel_decide
theorem rows215 : actualRows215=WordField.canonicalRows actualModulus 215 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats215 : actualRows215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows215=2892 := by core033_kernel_decide
theorem rows216 : actualRows216=WordField.canonicalRows actualModulus 216 (.bxor 214 215) := by core033_kernel_decide
theorem stats216 : actualRows216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows216=7428 := by core033_kernel_decide
theorem rows217 : actualRows217=WordField.canonicalRows actualModulus 217 (.shr 25 1) := by core033_kernel_decide
theorem stats217 : actualRows217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows217=5052 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows154++actualRows155++actualRows156++actualRows157++actualRows158++actualRows159++actualRows160++actualRows161++actualRows162++actualRows163++actualRows164++actualRows165++actualRows166++actualRows167++actualRows168++actualRows169++actualRows170++actualRows171++actualRows172++actualRows173++actualRows174++actualRows175++actualRows176++actualRows177++actualRows178++actualRows179++actualRows180++actualRows181++actualRows182++actualRows183++actualRows184++actualRows185++actualRows186++actualRows187++actualRows188++actualRows189++actualRows190++actualRows191++actualRows192++actualRows193++actualRows194++actualRows195++actualRows196++actualRows197++actualRows198++actualRows199++actualRows200++actualRows201++actualRows202++actualRows203++actualRows204++actualRows205++actualRows206++actualRows207++actualRows208++actualRows209++actualRows210++actualRows211++actualRows212++actualRows213++actualRows214++actualRows215++actualRows216++actualRows217
def partOps2 : List WordIR.Op := [.band 148 153,.bxor 144 154,.shr 155 31,.literal (BitVec.ofNat 32 1),.bxor 156 157,.band 140 158,.band 98 159,.band 22 23,.band 24 25,.shr 22 1,.literal (BitVec.ofNat 32 0),.bnot 164,.band 163 165,.shr 22 1,.literal (BitVec.ofNat 32 0),.bnot 168,.bxor 167 169,.shr 22 1,.literal (BitVec.ofNat 32 0),.bnot 172,.badd 171 173,.bnot 174,.band 170 175,.bxor 166 176,.shr 177 31,.literal (BitVec.ofNat 32 1),.bxor 178 179,.shr 23 1,.literal (BitVec.ofNat 32 0),.bnot 182,.band 181 183,.shr 23 1,.literal (BitVec.ofNat 32 0),.bnot 186,.bxor 185 187,.shr 23 1,.literal (BitVec.ofNat 32 0),.bnot 190,.badd 189 191,.bnot 192,.band 188 193,.bxor 184 194,.shr 195 31,.literal (BitVec.ofNat 32 1),.bxor 196 197,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 200,.band 199 201,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 204,.bxor 203 205,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 208,.badd 207 209,.bnot 210,.band 206 211,.bxor 202 212,.shr 213 31,.literal (BitVec.ofNat 32 1),.bxor 214 215,.shr 25 1]
theorem partExact2 : partRows2=WordField.rows actualModulus 154 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows154,rows155,rows156,rows157,rows158,rows159,rows160,rows161,rows162,rows163,rows164,rows165,rows166,rows167,rows168,rows169,rows170,rows171,rows172,rows173,rows174,rows175,rows176,rows177,rows178,rows179,rows180,rows181,rows182,rows183,rows184,rows185,rows186,rows187,rows188,rows189,rows190,rows191,rows192,rows193,rows194,rows195,rows196,rows197,rows198,rows199,rows200,rows201,rows202,rows203,rows204,rows205,rows206,rows207,rows208,rows209,rows210,rows211,rows212,rows213,rows214,rows215,rows216,rows217,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=64 := by decide
theorem partStats2 : partRows2.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows2=328584 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats154.1,stats154.2,stats155.1,stats155.2,stats156.1,stats156.2,stats157.1,stats157.2,stats158.1,stats158.2,stats159.1,stats159.2,stats160.1,stats160.2,stats161.1,stats161.2,stats162.1,stats162.2,stats163.1,stats163.2,stats164.1,stats164.2,stats165.1,stats165.2,stats166.1,stats166.2,stats167.1,stats167.2,stats168.1,stats168.2,stats169.1,stats169.2,stats170.1,stats170.2,stats171.1,stats171.2,stats172.1,stats172.2,stats173.1,stats173.2,stats174.1,stats174.2,stats175.1,stats175.2,stats176.1,stats176.2,stats177.1,stats177.2,stats178.1,stats178.2,stats179.1,stats179.2,stats180.1,stats180.2,stats181.1,stats181.2,stats182.1,stats182.2,stats183.1,stats183.2,stats184.1,stats184.2,stats185.1,stats185.2,stats186.1,stats186.2,stats187.1,stats187.2,stats188.1,stats188.2,stats189.1,stats189.2,stats190.1,stats190.2,stats191.1,stats191.2,stats192.1,stats192.2,stats193.1,stats193.2,stats194.1,stats194.2,stats195.1,stats195.2,stats196.1,stats196.2,stats197.1,stats197.2,stats198.1,stats198.2,stats199.1,stats199.2,stats200.1,stats200.2,stats201.1,stats201.2,stats202.1,stats202.2,stats203.1,stats203.2,stats204.1,stats204.2,stats205.1,stats205.2,stats206.1,stats206.2,stats207.1,stats207.2,stats208.1,stats208.2,stats209.1,stats209.2,stats210.1,stats210.2,stats211.1,stats211.2,stats212.1,stats212.2,stats213.1,stats213.2,stats214.1,stats214.2,stats215.1,stats215.2,stats216.1,stats216.2,stats217.1,stats217.2]
  decide
end ParentBranchCheckedRows
