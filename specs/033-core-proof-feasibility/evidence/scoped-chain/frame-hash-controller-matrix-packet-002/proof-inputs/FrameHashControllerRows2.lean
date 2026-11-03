import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData2
import FrameHashControllerInstructionMatrixData3
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows171 : actualRows171=WordField.canonicalRows actualModulus 171 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats171 : actualRows171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows171=2892 := by core033_kernel_decide
theorem rows172 : actualRows172=WordField.canonicalRows actualModulus 172 (.badd 170 171) := by core033_kernel_decide
theorem stats172 : actualRows172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows172=5388 := by core033_kernel_decide
theorem rows173 : actualRows173=WordField.canonicalRows actualModulus 173 (.bnot 172) := by core033_kernel_decide
theorem stats173 : actualRows173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows173=6276 := by core033_kernel_decide
theorem rows174 : actualRows174=WordField.canonicalRows actualModulus 174 (.band 173 7) := by core033_kernel_decide
theorem stats174 : actualRows174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows174=5124 := by core033_kernel_decide
theorem rows175 : actualRows175=WordField.canonicalRows actualModulus 175 (.bxor 166 174) := by core033_kernel_decide
theorem stats175 : actualRows175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows175=7428 := by core033_kernel_decide
theorem rows176 : actualRows176=WordField.canonicalRows actualModulus 176 (.band 159 175) := by core033_kernel_decide
theorem stats176 : actualRows176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows176=5124 := by core033_kernel_decide
theorem rows177 : actualRows177=WordField.canonicalRows actualModulus 177 (.bxor 152 176) := by core033_kernel_decide
theorem stats177 : actualRows177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows177=7428 := by core033_kernel_decide
theorem rows178 : actualRows178=WordField.canonicalRows actualModulus 178 (.band 129 177) := by core033_kernel_decide
theorem stats178 : actualRows178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows178=5124 := by core033_kernel_decide
theorem rows179 : actualRows179=WordField.canonicalRows actualModulus 179 (.shr 102 2) := by core033_kernel_decide
theorem stats179 : actualRows179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows179=4980 := by core033_kernel_decide
theorem rows180 : actualRows180=WordField.canonicalRows actualModulus 180 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats180 : actualRows180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows180=2892 := by core033_kernel_decide
theorem rows181 : actualRows181=WordField.canonicalRows actualModulus 181 (.band 179 180) := by core033_kernel_decide
theorem stats181 : actualRows181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows181=5124 := by core033_kernel_decide
theorem rows182 : actualRows182=WordField.canonicalRows actualModulus 182 (.bnot 181) := by core033_kernel_decide
theorem stats182 : actualRows182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows182=6276 := by core033_kernel_decide
theorem rows183 : actualRows183=WordField.canonicalRows actualModulus 183 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats183 : actualRows183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows183=2892 := by core033_kernel_decide
theorem rows184 : actualRows184=WordField.canonicalRows actualModulus 184 (.badd 182 183) := by core033_kernel_decide
theorem stats184 : actualRows184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows184=5388 := by core033_kernel_decide
theorem rows185 : actualRows185=WordField.canonicalRows actualModulus 185 (.bnot 184) := by core033_kernel_decide
theorem stats185 : actualRows185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows185=6276 := by core033_kernel_decide
theorem rows186 : actualRows186=WordField.canonicalRows actualModulus 186 (.shr 102 1) := by core033_kernel_decide
theorem stats186 : actualRows186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows186=5052 := by core033_kernel_decide
theorem rows187 : actualRows187=WordField.canonicalRows actualModulus 187 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats187 : actualRows187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows187=2892 := by core033_kernel_decide
theorem rows188 : actualRows188=WordField.canonicalRows actualModulus 188 (.band 186 187) := by core033_kernel_decide
theorem stats188 : actualRows188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows188=5124 := by core033_kernel_decide
theorem rows189 : actualRows189=WordField.canonicalRows actualModulus 189 (.bnot 188) := by core033_kernel_decide
theorem stats189 : actualRows189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows189=6276 := by core033_kernel_decide
theorem rows190 : actualRows190=WordField.canonicalRows actualModulus 190 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats190 : actualRows190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows190=2892 := by core033_kernel_decide
theorem rows191 : actualRows191=WordField.canonicalRows actualModulus 191 (.badd 189 190) := by core033_kernel_decide
theorem stats191 : actualRows191.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows191=5388 := by core033_kernel_decide
theorem rows192 : actualRows192=WordField.canonicalRows actualModulus 192 (.shr 102 0) := by core033_kernel_decide
theorem stats192 : actualRows192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows192=5124 := by core033_kernel_decide
theorem rows193 : actualRows193=WordField.canonicalRows actualModulus 193 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats193 : actualRows193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows193=2892 := by core033_kernel_decide
theorem rows194 : actualRows194=WordField.canonicalRows actualModulus 194 (.band 192 193) := by core033_kernel_decide
theorem stats194 : actualRows194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows194=5124 := by core033_kernel_decide
theorem rows195 : actualRows195=WordField.canonicalRows actualModulus 195 (.bnot 194) := by core033_kernel_decide
theorem stats195 : actualRows195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows195=6276 := by core033_kernel_decide
theorem rows196 : actualRows196=WordField.canonicalRows actualModulus 196 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats196 : actualRows196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows196=2892 := by core033_kernel_decide
theorem rows197 : actualRows197=WordField.canonicalRows actualModulus 197 (.badd 195 196) := by core033_kernel_decide
theorem stats197 : actualRows197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows197=5388 := by core033_kernel_decide
theorem rows198 : actualRows198=WordField.canonicalRows actualModulus 198 (.band 197 6) := by core033_kernel_decide
theorem stats198 : actualRows198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows198=5124 := by core033_kernel_decide
theorem rows199 : actualRows199=WordField.canonicalRows actualModulus 199 (.shr 102 0) := by core033_kernel_decide
theorem stats199 : actualRows199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows199=5124 := by core033_kernel_decide
theorem rows200 : actualRows200=WordField.canonicalRows actualModulus 200 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats200 : actualRows200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows200=2892 := by core033_kernel_decide
theorem rows201 : actualRows201=WordField.canonicalRows actualModulus 201 (.band 199 200) := by core033_kernel_decide
theorem stats201 : actualRows201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows201=5124 := by core033_kernel_decide
theorem rows202 : actualRows202=WordField.canonicalRows actualModulus 202 (.bnot 201) := by core033_kernel_decide
theorem stats202 : actualRows202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows202=6276 := by core033_kernel_decide
theorem rows203 : actualRows203=WordField.canonicalRows actualModulus 203 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats203 : actualRows203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows203=2892 := by core033_kernel_decide
theorem rows204 : actualRows204=WordField.canonicalRows actualModulus 204 (.badd 202 203) := by core033_kernel_decide
theorem stats204 : actualRows204.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows204=5388 := by core033_kernel_decide
theorem rows205 : actualRows205=WordField.canonicalRows actualModulus 205 (.bnot 204) := by core033_kernel_decide
theorem stats205 : actualRows205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows205=6276 := by core033_kernel_decide
theorem rows206 : actualRows206=WordField.canonicalRows actualModulus 206 (.band 205 5) := by core033_kernel_decide
theorem stats206 : actualRows206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows206=5124 := by core033_kernel_decide
theorem rows207 : actualRows207=WordField.canonicalRows actualModulus 207 (.bxor 198 206) := by core033_kernel_decide
theorem stats207 : actualRows207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows207=7428 := by core033_kernel_decide
theorem rows208 : actualRows208=WordField.canonicalRows actualModulus 208 (.band 191 207) := by core033_kernel_decide
theorem stats208 : actualRows208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows208=5124 := by core033_kernel_decide
theorem rows209 : actualRows209=WordField.canonicalRows actualModulus 209 (.shr 102 1) := by core033_kernel_decide
theorem stats209 : actualRows209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows209=5052 := by core033_kernel_decide
theorem rows210 : actualRows210=WordField.canonicalRows actualModulus 210 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats210 : actualRows210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows210=2892 := by core033_kernel_decide
theorem rows211 : actualRows211=WordField.canonicalRows actualModulus 211 (.band 209 210) := by core033_kernel_decide
theorem stats211 : actualRows211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows211=5124 := by core033_kernel_decide
theorem rows212 : actualRows212=WordField.canonicalRows actualModulus 212 (.bnot 211) := by core033_kernel_decide
theorem stats212 : actualRows212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows212=6276 := by core033_kernel_decide
theorem rows213 : actualRows213=WordField.canonicalRows actualModulus 213 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats213 : actualRows213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows213=2892 := by core033_kernel_decide
theorem rows214 : actualRows214=WordField.canonicalRows actualModulus 214 (.badd 212 213) := by core033_kernel_decide
theorem stats214 : actualRows214.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows214=5388 := by core033_kernel_decide
theorem rows215 : actualRows215=WordField.canonicalRows actualModulus 215 (.bnot 214) := by core033_kernel_decide
theorem stats215 : actualRows215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows215=6276 := by core033_kernel_decide
theorem rows216 : actualRows216=WordField.canonicalRows actualModulus 216 (.shr 102 0) := by core033_kernel_decide
theorem stats216 : actualRows216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows216=5124 := by core033_kernel_decide
theorem rows217 : actualRows217=WordField.canonicalRows actualModulus 217 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats217 : actualRows217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows217=2892 := by core033_kernel_decide
theorem rows218 : actualRows218=WordField.canonicalRows actualModulus 218 (.band 216 217) := by core033_kernel_decide
theorem stats218 : actualRows218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows218=5124 := by core033_kernel_decide
theorem rows219 : actualRows219=WordField.canonicalRows actualModulus 219 (.bnot 218) := by core033_kernel_decide
theorem stats219 : actualRows219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows219=6276 := by core033_kernel_decide
theorem rows220 : actualRows220=WordField.canonicalRows actualModulus 220 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats220 : actualRows220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows220=2892 := by core033_kernel_decide
theorem rows221 : actualRows221=WordField.canonicalRows actualModulus 221 (.badd 219 220) := by core033_kernel_decide
theorem stats221 : actualRows221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows221=5388 := by core033_kernel_decide
theorem rows222 : actualRows222=WordField.canonicalRows actualModulus 222 (.band 221 4) := by core033_kernel_decide
theorem stats222 : actualRows222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows222=5124 := by core033_kernel_decide
theorem rows223 : actualRows223=WordField.canonicalRows actualModulus 223 (.shr 102 0) := by core033_kernel_decide
theorem stats223 : actualRows223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows223=5124 := by core033_kernel_decide
theorem rows224 : actualRows224=WordField.canonicalRows actualModulus 224 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats224 : actualRows224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows224=2892 := by core033_kernel_decide
theorem rows225 : actualRows225=WordField.canonicalRows actualModulus 225 (.band 223 224) := by core033_kernel_decide
theorem stats225 : actualRows225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows225=5124 := by core033_kernel_decide
theorem rows226 : actualRows226=WordField.canonicalRows actualModulus 226 (.bnot 225) := by core033_kernel_decide
theorem stats226 : actualRows226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows226=6276 := by core033_kernel_decide
theorem rows227 : actualRows227=WordField.canonicalRows actualModulus 227 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats227 : actualRows227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows227=2892 := by core033_kernel_decide
theorem rows228 : actualRows228=WordField.canonicalRows actualModulus 228 (.badd 226 227) := by core033_kernel_decide
theorem stats228 : actualRows228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows228=5388 := by core033_kernel_decide
theorem rows229 : actualRows229=WordField.canonicalRows actualModulus 229 (.bnot 228) := by core033_kernel_decide
theorem stats229 : actualRows229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows229=6276 := by core033_kernel_decide
theorem rows230 : actualRows230=WordField.canonicalRows actualModulus 230 (.band 229 3) := by core033_kernel_decide
theorem stats230 : actualRows230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows230=5124 := by core033_kernel_decide
theorem rows231 : actualRows231=WordField.canonicalRows actualModulus 231 (.bxor 222 230) := by core033_kernel_decide
theorem stats231 : actualRows231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows231=7428 := by core033_kernel_decide
theorem rows232 : actualRows232=WordField.canonicalRows actualModulus 232 (.band 215 231) := by core033_kernel_decide
theorem stats232 : actualRows232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows232=5124 := by core033_kernel_decide
theorem rows233 : actualRows233=WordField.canonicalRows actualModulus 233 (.bxor 208 232) := by core033_kernel_decide
theorem stats233 : actualRows233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows233=7428 := by core033_kernel_decide
theorem rows234 : actualRows234=WordField.canonicalRows actualModulus 234 (.band 185 233) := by core033_kernel_decide
theorem stats234 : actualRows234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows234=5124 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows171++actualRows172++actualRows173++actualRows174++actualRows175++actualRows176++actualRows177++actualRows178++actualRows179++actualRows180++actualRows181++actualRows182++actualRows183++actualRows184++actualRows185++actualRows186++actualRows187++actualRows188++actualRows189++actualRows190++actualRows191++actualRows192++actualRows193++actualRows194++actualRows195++actualRows196++actualRows197++actualRows198++actualRows199++actualRows200++actualRows201++actualRows202++actualRows203++actualRows204++actualRows205++actualRows206++actualRows207++actualRows208++actualRows209++actualRows210++actualRows211++actualRows212++actualRows213++actualRows214++actualRows215++actualRows216++actualRows217++actualRows218++actualRows219++actualRows220++actualRows221++actualRows222++actualRows223++actualRows224++actualRows225++actualRows226++actualRows227++actualRows228++actualRows229++actualRows230++actualRows231++actualRows232++actualRows233++actualRows234
def partOps2 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 170 171,.bnot 172,.band 173 7,.bxor 166 174,.band 159 175,.bxor 152 176,.band 129 177,.shr 102 2,.literal (BitVec.ofNat 32 1),.band 179 180,.bnot 181,.literal (BitVec.ofNat 32 1),.badd 182 183,.bnot 184,.shr 102 1,.literal (BitVec.ofNat 32 1),.band 186 187,.bnot 188,.literal (BitVec.ofNat 32 1),.badd 189 190,.shr 102 0,.literal (BitVec.ofNat 32 1),.band 192 193,.bnot 194,.literal (BitVec.ofNat 32 1),.badd 195 196,.band 197 6,.shr 102 0,.literal (BitVec.ofNat 32 1),.band 199 200,.bnot 201,.literal (BitVec.ofNat 32 1),.badd 202 203,.bnot 204,.band 205 5,.bxor 198 206,.band 191 207,.shr 102 1,.literal (BitVec.ofNat 32 1),.band 209 210,.bnot 211,.literal (BitVec.ofNat 32 1),.badd 212 213,.bnot 214,.shr 102 0,.literal (BitVec.ofNat 32 1),.band 216 217,.bnot 218,.literal (BitVec.ofNat 32 1),.badd 219 220,.band 221 4,.shr 102 0,.literal (BitVec.ofNat 32 1),.band 223 224,.bnot 225,.literal (BitVec.ofNat 32 1),.badd 226 227,.bnot 228,.band 229 3,.bxor 222 230,.band 215 231,.bxor 208 232,.band 185 233]
theorem partExact2 : partRows2=WordField.rows actualModulus 171 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows171,rows172,rows173,rows174,rows175,rows176,rows177,rows178,rows179,rows180,rows181,rows182,rows183,rows184,rows185,rows186,rows187,rows188,rows189,rows190,rows191,rows192,rows193,rows194,rows195,rows196,rows197,rows198,rows199,rows200,rows201,rows202,rows203,rows204,rows205,rows206,rows207,rows208,rows209,rows210,rows211,rows212,rows213,rows214,rows215,rows216,rows217,rows218,rows219,rows220,rows221,rows222,rows223,rows224,rows225,rows226,rows227,rows228,rows229,rows230,rows231,rows232,rows233,rows234,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=64 := by decide
theorem partStats2 : partRows2.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows2=321624 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats171.1,stats171.2,stats172.1,stats172.2,stats173.1,stats173.2,stats174.1,stats174.2,stats175.1,stats175.2,stats176.1,stats176.2,stats177.1,stats177.2,stats178.1,stats178.2,stats179.1,stats179.2,stats180.1,stats180.2,stats181.1,stats181.2,stats182.1,stats182.2,stats183.1,stats183.2,stats184.1,stats184.2,stats185.1,stats185.2,stats186.1,stats186.2,stats187.1,stats187.2,stats188.1,stats188.2,stats189.1,stats189.2,stats190.1,stats190.2,stats191.1,stats191.2,stats192.1,stats192.2,stats193.1,stats193.2,stats194.1,stats194.2,stats195.1,stats195.2,stats196.1,stats196.2,stats197.1,stats197.2,stats198.1,stats198.2,stats199.1,stats199.2,stats200.1,stats200.2,stats201.1,stats201.2,stats202.1,stats202.2,stats203.1,stats203.2,stats204.1,stats204.2,stats205.1,stats205.2,stats206.1,stats206.2,stats207.1,stats207.2,stats208.1,stats208.2,stats209.1,stats209.2,stats210.1,stats210.2,stats211.1,stats211.2,stats212.1,stats212.2,stats213.1,stats213.2,stats214.1,stats214.2,stats215.1,stats215.2,stats216.1,stats216.2,stats217.1,stats217.2,stats218.1,stats218.2,stats219.1,stats219.2,stats220.1,stats220.2,stats221.1,stats221.2,stats222.1,stats222.2,stats223.1,stats223.2,stats224.1,stats224.2,stats225.1,stats225.2,stats226.1,stats226.2,stats227.1,stats227.2,stats228.1,stats228.2,stats229.1,stats229.2,stats230.1,stats230.2,stats231.1,stats231.2,stats232.1,stats232.2,stats233.1,stats233.2,stats234.1,stats234.2]
  decide
end FrameHashControllerCheckedRows
