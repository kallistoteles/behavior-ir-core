import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData173
import AuthenticatedBranchRoundInstructionMatrixData174
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11126 : actualRows11126=WordField.canonicalRows actualModulus 11126 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11126 : actualRows11126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11126=3972 := by core033_kernel_decide
theorem rows11127 : actualRows11127=WordField.canonicalRows actualModulus 11127 (.band 11125 11126) := by core033_kernel_decide
theorem stats11127 : actualRows11127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11127=5124 := by core033_kernel_decide
theorem rows11128 : actualRows11128=WordField.canonicalRows actualModulus 11128 (.rotr 11071 8) := by core033_kernel_decide
theorem stats11128 : actualRows11128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11128=5124 := by core033_kernel_decide
theorem rows11129 : actualRows11129=WordField.canonicalRows actualModulus 11129 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11129 : actualRows11129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11129=3972 := by core033_kernel_decide
theorem rows11130 : actualRows11130=WordField.canonicalRows actualModulus 11130 (.band 11128 11129) := by core033_kernel_decide
theorem stats11130 : actualRows11130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11130=5124 := by core033_kernel_decide
theorem rows11131 : actualRows11131=WordField.canonicalRows actualModulus 11131 (.bxor 11127 11130) := by core033_kernel_decide
theorem stats11131 : actualRows11131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11131=7428 := by core033_kernel_decide
theorem rows11132 : actualRows11132=WordField.canonicalRows actualModulus 11132 (.rotr 11082 24) := by core033_kernel_decide
theorem stats11132 : actualRows11132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11132=5124 := by core033_kernel_decide
theorem rows11133 : actualRows11133=WordField.canonicalRows actualModulus 11133 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats11133 : actualRows11133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11133=3972 := by core033_kernel_decide
theorem rows11134 : actualRows11134=WordField.canonicalRows actualModulus 11134 (.band 11132 11133) := by core033_kernel_decide
theorem stats11134 : actualRows11134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11134=5124 := by core033_kernel_decide
theorem rows11135 : actualRows11135=WordField.canonicalRows actualModulus 11135 (.rotr 11082 8) := by core033_kernel_decide
theorem stats11135 : actualRows11135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11135=5124 := by core033_kernel_decide
theorem rows11136 : actualRows11136=WordField.canonicalRows actualModulus 11136 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats11136 : actualRows11136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11136=3972 := by core033_kernel_decide
theorem rows11137 : actualRows11137=WordField.canonicalRows actualModulus 11137 (.band 11135 11136) := by core033_kernel_decide
theorem stats11137 : actualRows11137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11137=5124 := by core033_kernel_decide
theorem rows11138 : actualRows11138=WordField.canonicalRows actualModulus 11138 (.bxor 11134 11137) := by core033_kernel_decide
theorem stats11138 : actualRows11138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11138=7428 := by core033_kernel_decide
theorem rows11139 : actualRows11139=WordField.canonicalRows actualModulus 11139 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11139 : actualRows11139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11139=5388 := by core033_kernel_decide
theorem rows11140 : actualRows11140=WordField.canonicalRows actualModulus 11140 (.badd 10928 10950) := by core033_kernel_decide
theorem stats11140 : actualRows11140.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11140=5388 := by core033_kernel_decide
theorem rows11141 : actualRows11141=WordField.canonicalRows actualModulus 11141 (.band 10917 10939) := by core033_kernel_decide
theorem stats11141 : actualRows11141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11141=5124 := by core033_kernel_decide
theorem rows11142 : actualRows11142=WordField.canonicalRows actualModulus 11142 (.bxor 10917 10939) := by core033_kernel_decide
theorem stats11142 : actualRows11142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11142=7428 := by core033_kernel_decide
theorem rows11143 : actualRows11143=WordField.canonicalRows actualModulus 11143 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11143 : actualRows11143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11143=5388 := by core033_kernel_decide
theorem rows11144 : actualRows11144=WordField.canonicalRows actualModulus 11144 (.bnot 11143) := by core033_kernel_decide
theorem stats11144 : actualRows11144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11144=6276 := by core033_kernel_decide
theorem rows11145 : actualRows11145=WordField.canonicalRows actualModulus 11145 (.band 11142 11144) := by core033_kernel_decide
theorem stats11145 : actualRows11145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11145=5124 := by core033_kernel_decide
theorem rows11146 : actualRows11146=WordField.canonicalRows actualModulus 11146 (.bxor 11141 11145) := by core033_kernel_decide
theorem stats11146 : actualRows11146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11146=7428 := by core033_kernel_decide
theorem rows11147 : actualRows11147=WordField.canonicalRows actualModulus 11147 (.shr 11146 31) := by core033_kernel_decide
theorem stats11147 : actualRows11147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11147=2892 := by core033_kernel_decide
theorem rows11148 : actualRows11148=WordField.canonicalRows actualModulus 11148 (.badd 11140 11147) := by core033_kernel_decide
theorem stats11148 : actualRows11148.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11148=5388 := by core033_kernel_decide
theorem rows11149 : actualRows11149=WordField.canonicalRows actualModulus 11149 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11149 : actualRows11149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11149=2820 := by core033_kernel_decide
theorem rows11150 : actualRows11150=WordField.canonicalRows actualModulus 11150 (.bnot 11149) := by core033_kernel_decide
theorem stats11150 : actualRows11150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11150=6276 := by core033_kernel_decide
theorem rows11151 : actualRows11151=WordField.canonicalRows actualModulus 11151 (.band 10928 11150) := by core033_kernel_decide
theorem stats11151 : actualRows11151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11151=5124 := by core033_kernel_decide
theorem rows11152 : actualRows11152=WordField.canonicalRows actualModulus 11152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11152 : actualRows11152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11152=2820 := by core033_kernel_decide
theorem rows11153 : actualRows11153=WordField.canonicalRows actualModulus 11153 (.bnot 11152) := by core033_kernel_decide
theorem stats11153 : actualRows11153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11153=6276 := by core033_kernel_decide
theorem rows11154 : actualRows11154=WordField.canonicalRows actualModulus 11154 (.bxor 10928 11153) := by core033_kernel_decide
theorem stats11154 : actualRows11154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11154=7428 := by core033_kernel_decide
theorem rows11155 : actualRows11155=WordField.canonicalRows actualModulus 11155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11155 : actualRows11155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11155=2820 := by core033_kernel_decide
theorem rows11156 : actualRows11156=WordField.canonicalRows actualModulus 11156 (.bnot 11155) := by core033_kernel_decide
theorem stats11156 : actualRows11156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11156=6276 := by core033_kernel_decide
theorem rows11157 : actualRows11157=WordField.canonicalRows actualModulus 11157 (.badd 10928 11156) := by core033_kernel_decide
theorem stats11157 : actualRows11157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11157=5388 := by core033_kernel_decide
theorem rows11158 : actualRows11158=WordField.canonicalRows actualModulus 11158 (.bnot 11157) := by core033_kernel_decide
theorem stats11158 : actualRows11158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11158=6276 := by core033_kernel_decide
theorem rows11159 : actualRows11159=WordField.canonicalRows actualModulus 11159 (.band 11154 11158) := by core033_kernel_decide
theorem stats11159 : actualRows11159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11159=5124 := by core033_kernel_decide
theorem rows11160 : actualRows11160=WordField.canonicalRows actualModulus 11160 (.bxor 11151 11159) := by core033_kernel_decide
theorem stats11160 : actualRows11160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11160=7428 := by core033_kernel_decide
theorem rows11161 : actualRows11161=WordField.canonicalRows actualModulus 11161 (.shr 11160 31) := by core033_kernel_decide
theorem stats11161 : actualRows11161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11161=2892 := by core033_kernel_decide
theorem rows11162 : actualRows11162=WordField.canonicalRows actualModulus 11162 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11162 : actualRows11162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11162=2892 := by core033_kernel_decide
theorem rows11163 : actualRows11163=WordField.canonicalRows actualModulus 11163 (.bxor 11161 11162) := by core033_kernel_decide
theorem stats11163 : actualRows11163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11163=7428 := by core033_kernel_decide
theorem rows11164 : actualRows11164=WordField.canonicalRows actualModulus 11164 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11164 : actualRows11164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11164=2892 := by core033_kernel_decide
theorem rows11165 : actualRows11165=WordField.canonicalRows actualModulus 11165 (.bnot 11164) := by core033_kernel_decide
theorem stats11165 : actualRows11165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11165=6276 := by core033_kernel_decide
theorem rows11166 : actualRows11166=WordField.canonicalRows actualModulus 11166 (.band 10917 11165) := by core033_kernel_decide
theorem stats11166 : actualRows11166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11166=5124 := by core033_kernel_decide
theorem rows11167 : actualRows11167=WordField.canonicalRows actualModulus 11167 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11167 : actualRows11167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11167=2892 := by core033_kernel_decide
theorem rows11168 : actualRows11168=WordField.canonicalRows actualModulus 11168 (.bnot 11167) := by core033_kernel_decide
theorem stats11168 : actualRows11168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11168=6276 := by core033_kernel_decide
theorem rows11169 : actualRows11169=WordField.canonicalRows actualModulus 11169 (.bxor 10917 11168) := by core033_kernel_decide
theorem stats11169 : actualRows11169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11169=7428 := by core033_kernel_decide
theorem rows11170 : actualRows11170=WordField.canonicalRows actualModulus 11170 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11170 : actualRows11170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11170=2892 := by core033_kernel_decide
theorem rows11171 : actualRows11171=WordField.canonicalRows actualModulus 11171 (.bnot 11170) := by core033_kernel_decide
theorem stats11171 : actualRows11171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11171=6276 := by core033_kernel_decide
theorem rows11172 : actualRows11172=WordField.canonicalRows actualModulus 11172 (.badd 10917 11171) := by core033_kernel_decide
theorem stats11172 : actualRows11172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11172=5388 := by core033_kernel_decide
theorem rows11173 : actualRows11173=WordField.canonicalRows actualModulus 11173 (.bnot 11172) := by core033_kernel_decide
theorem stats11173 : actualRows11173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11173=6276 := by core033_kernel_decide
theorem rows11174 : actualRows11174=WordField.canonicalRows actualModulus 11174 (.band 11169 11173) := by core033_kernel_decide
theorem stats11174 : actualRows11174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11174=5124 := by core033_kernel_decide
theorem rows11175 : actualRows11175=WordField.canonicalRows actualModulus 11175 (.bxor 11166 11174) := by core033_kernel_decide
theorem stats11175 : actualRows11175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11175=7428 := by core033_kernel_decide
theorem rows11176 : actualRows11176=WordField.canonicalRows actualModulus 11176 (.shr 11175 31) := by core033_kernel_decide
theorem stats11176 : actualRows11176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11176=2892 := by core033_kernel_decide
theorem rows11177 : actualRows11177=WordField.canonicalRows actualModulus 11177 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11177 : actualRows11177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11177=2892 := by core033_kernel_decide
theorem rows11178 : actualRows11178=WordField.canonicalRows actualModulus 11178 (.bxor 11176 11177) := by core033_kernel_decide
theorem stats11178 : actualRows11178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11178=7428 := by core033_kernel_decide
theorem rows11179 : actualRows11179=WordField.canonicalRows actualModulus 11179 (.band 11163 11178) := by core033_kernel_decide
theorem stats11179 : actualRows11179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11179=5124 := by core033_kernel_decide
theorem rows11180 : actualRows11180=WordField.canonicalRows actualModulus 11180 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11180 : actualRows11180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11180=2820 := by core033_kernel_decide
theorem rows11181 : actualRows11181=WordField.canonicalRows actualModulus 11181 (.bnot 11180) := by core033_kernel_decide
theorem stats11181 : actualRows11181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11181=6276 := by core033_kernel_decide
theorem rows11182 : actualRows11182=WordField.canonicalRows actualModulus 11182 (.band 10950 11181) := by core033_kernel_decide
theorem stats11182 : actualRows11182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11182=5124 := by core033_kernel_decide
theorem rows11183 : actualRows11183=WordField.canonicalRows actualModulus 11183 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11183 : actualRows11183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11183=2820 := by core033_kernel_decide
theorem rows11184 : actualRows11184=WordField.canonicalRows actualModulus 11184 (.bnot 11183) := by core033_kernel_decide
theorem stats11184 : actualRows11184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11184=6276 := by core033_kernel_decide
theorem rows11185 : actualRows11185=WordField.canonicalRows actualModulus 11185 (.bxor 10950 11184) := by core033_kernel_decide
theorem stats11185 : actualRows11185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11185=7428 := by core033_kernel_decide
theorem rows11186 : actualRows11186=WordField.canonicalRows actualModulus 11186 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11186 : actualRows11186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11186=2820 := by core033_kernel_decide
theorem rows11187 : actualRows11187=WordField.canonicalRows actualModulus 11187 (.bnot 11186) := by core033_kernel_decide
theorem stats11187 : actualRows11187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11187=6276 := by core033_kernel_decide
theorem rows11188 : actualRows11188=WordField.canonicalRows actualModulus 11188 (.badd 10950 11187) := by core033_kernel_decide
theorem stats11188 : actualRows11188.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11188=5388 := by core033_kernel_decide
theorem rows11189 : actualRows11189=WordField.canonicalRows actualModulus 11189 (.bnot 11188) := by core033_kernel_decide
theorem stats11189 : actualRows11189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11189=6276 := by core033_kernel_decide
def partRows172 : List R1CS.Row := actualRows11126++actualRows11127++actualRows11128++actualRows11129++actualRows11130++actualRows11131++actualRows11132++actualRows11133++actualRows11134++actualRows11135++actualRows11136++actualRows11137++actualRows11138++actualRows11139++actualRows11140++actualRows11141++actualRows11142++actualRows11143++actualRows11144++actualRows11145++actualRows11146++actualRows11147++actualRows11148++actualRows11149++actualRows11150++actualRows11151++actualRows11152++actualRows11153++actualRows11154++actualRows11155++actualRows11156++actualRows11157++actualRows11158++actualRows11159++actualRows11160++actualRows11161++actualRows11162++actualRows11163++actualRows11164++actualRows11165++actualRows11166++actualRows11167++actualRows11168++actualRows11169++actualRows11170++actualRows11171++actualRows11172++actualRows11173++actualRows11174++actualRows11175++actualRows11176++actualRows11177++actualRows11178++actualRows11179++actualRows11180++actualRows11181++actualRows11182++actualRows11183++actualRows11184++actualRows11185++actualRows11186++actualRows11187++actualRows11188++actualRows11189
def partOps172 : List WordIR.Op := [.literal (BitVec.ofNat 32 16711935),.band 11125 11126,.rotr 11071 8,.literal (BitVec.ofNat 32 4278255360),.band 11128 11129,.bxor 11127 11130,.rotr 11082 24,.literal (BitVec.ofNat 32 16711935),.band 11132 11133,.rotr 11082 8,.literal (BitVec.ofNat 32 4278255360),.band 11135 11136,.bxor 11134 11137,.badd 10917 10939,.badd 10928 10950,.band 10917 10939,.bxor 10917 10939,.badd 10917 10939,.bnot 11143,.band 11142 11144,.bxor 11141 11145,.shr 11146 31,.badd 11140 11147,.literal (BitVec.ofNat 32 0),.bnot 11149,.band 10928 11150,.literal (BitVec.ofNat 32 0),.bnot 11152,.bxor 10928 11153,.literal (BitVec.ofNat 32 0),.bnot 11155,.badd 10928 11156,.bnot 11157,.band 11154 11158,.bxor 11151 11159,.shr 11160 31,.literal (BitVec.ofNat 32 1),.bxor 11161 11162,.literal (BitVec.ofNat 32 1048576),.bnot 11164,.band 10917 11165,.literal (BitVec.ofNat 32 1048576),.bnot 11167,.bxor 10917 11168,.literal (BitVec.ofNat 32 1048576),.bnot 11170,.badd 10917 11171,.bnot 11172,.band 11169 11173,.bxor 11166 11174,.shr 11175 31,.literal (BitVec.ofNat 32 1),.bxor 11176 11177,.band 11163 11178,.literal (BitVec.ofNat 32 0),.bnot 11180,.band 10950 11181,.literal (BitVec.ofNat 32 0),.bnot 11183,.bxor 10950 11184,.literal (BitVec.ofNat 32 0),.bnot 11186,.badd 10950 11187,.bnot 11188]
theorem partExact172 : partRows172=WordField.rows actualModulus 11126 partOps172 := by
  simp only [partRows172,partOps172,WordField.rows,rows11126,rows11127,rows11128,rows11129,rows11130,rows11131,rows11132,rows11133,rows11134,rows11135,rows11136,rows11137,rows11138,rows11139,rows11140,rows11141,rows11142,rows11143,rows11144,rows11145,rows11146,rows11147,rows11148,rows11149,rows11150,rows11151,rows11152,rows11153,rows11154,rows11155,rows11156,rows11157,rows11158,rows11159,rows11160,rows11161,rows11162,rows11163,rows11164,rows11165,rows11166,rows11167,rows11168,rows11169,rows11170,rows11171,rows11172,rows11173,rows11174,rows11175,rows11176,rows11177,rows11178,rows11179,rows11180,rows11181,rows11182,rows11183,rows11184,rows11185,rows11186,rows11187,rows11188,rows11189,List.append_assoc,List.append_nil]
theorem partLength172 : partOps172.length=64 := by decide
theorem partStats172 : partRows172.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows172=333816 := by
  simp only [partRows172,List.length_append,MatrixRowBlocks.rows_weight_append,stats11126.1,stats11126.2,stats11127.1,stats11127.2,stats11128.1,stats11128.2,stats11129.1,stats11129.2,stats11130.1,stats11130.2,stats11131.1,stats11131.2,stats11132.1,stats11132.2,stats11133.1,stats11133.2,stats11134.1,stats11134.2,stats11135.1,stats11135.2,stats11136.1,stats11136.2,stats11137.1,stats11137.2,stats11138.1,stats11138.2,stats11139.1,stats11139.2,stats11140.1,stats11140.2,stats11141.1,stats11141.2,stats11142.1,stats11142.2,stats11143.1,stats11143.2,stats11144.1,stats11144.2,stats11145.1,stats11145.2,stats11146.1,stats11146.2,stats11147.1,stats11147.2,stats11148.1,stats11148.2,stats11149.1,stats11149.2,stats11150.1,stats11150.2,stats11151.1,stats11151.2,stats11152.1,stats11152.2,stats11153.1,stats11153.2,stats11154.1,stats11154.2,stats11155.1,stats11155.2,stats11156.1,stats11156.2,stats11157.1,stats11157.2,stats11158.1,stats11158.2,stats11159.1,stats11159.2,stats11160.1,stats11160.2,stats11161.1,stats11161.2,stats11162.1,stats11162.2,stats11163.1,stats11163.2,stats11164.1,stats11164.2,stats11165.1,stats11165.2,stats11166.1,stats11166.2,stats11167.1,stats11167.2,stats11168.1,stats11168.2,stats11169.1,stats11169.2,stats11170.1,stats11170.2,stats11171.1,stats11171.2,stats11172.1,stats11172.2,stats11173.1,stats11173.2,stats11174.1,stats11174.2,stats11175.1,stats11175.2,stats11176.1,stats11176.2,stats11177.1,stats11177.2,stats11178.1,stats11178.2,stats11179.1,stats11179.2,stats11180.1,stats11180.2,stats11181.1,stats11181.2,stats11182.1,stats11182.2,stats11183.1,stats11183.2,stats11184.1,stats11184.2,stats11185.1,stats11185.2,stats11186.1,stats11186.2,stats11187.1,stats11187.2,stats11188.1,stats11188.2,stats11189.1,stats11189.2]
  decide
end AuthenticatedBranchRoundCheckedRows
