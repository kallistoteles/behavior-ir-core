import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData173
import PathRoundDispatchInstructionMatrixData174
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11115 : actualRows11115=WordField.canonicalRows actualModulus 11115 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11115 : actualRows11115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11115=2964 := by core033_kernel_decide
theorem rows11116 : actualRows11116=WordField.canonicalRows actualModulus 11116 (.bxor 0 11115) := by core033_kernel_decide
theorem stats11116 : actualRows11116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11116=7428 := by core033_kernel_decide
theorem rows11117 : actualRows11117=WordField.canonicalRows actualModulus 11117 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11117 : actualRows11117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11117=2820 := by core033_kernel_decide
theorem rows11118 : actualRows11118=WordField.canonicalRows actualModulus 11118 (.bnot 11117) := by core033_kernel_decide
theorem stats11118 : actualRows11118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11118=6276 := by core033_kernel_decide
theorem rows11119 : actualRows11119=WordField.canonicalRows actualModulus 11119 (.bxor 11116 11118) := by core033_kernel_decide
theorem stats11119 : actualRows11119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11119=7428 := by core033_kernel_decide
theorem rows11120 : actualRows11120=WordField.canonicalRows actualModulus 11120 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11120 : actualRows11120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11120=2964 := by core033_kernel_decide
theorem rows11121 : actualRows11121=WordField.canonicalRows actualModulus 11121 (.bxor 0 11120) := by core033_kernel_decide
theorem stats11121 : actualRows11121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11121=7428 := by core033_kernel_decide
theorem rows11122 : actualRows11122=WordField.canonicalRows actualModulus 11122 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11122 : actualRows11122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11122=2820 := by core033_kernel_decide
theorem rows11123 : actualRows11123=WordField.canonicalRows actualModulus 11123 (.bnot 11122) := by core033_kernel_decide
theorem stats11123 : actualRows11123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11123=6276 := by core033_kernel_decide
theorem rows11124 : actualRows11124=WordField.canonicalRows actualModulus 11124 (.badd 11121 11123) := by core033_kernel_decide
theorem stats11124 : actualRows11124.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11124=5388 := by core033_kernel_decide
theorem rows11125 : actualRows11125=WordField.canonicalRows actualModulus 11125 (.bnot 11124) := by core033_kernel_decide
theorem stats11125 : actualRows11125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11125=6276 := by core033_kernel_decide
theorem rows11126 : actualRows11126=WordField.canonicalRows actualModulus 11126 (.band 11119 11125) := by core033_kernel_decide
theorem stats11126 : actualRows11126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11126=5124 := by core033_kernel_decide
theorem rows11127 : actualRows11127=WordField.canonicalRows actualModulus 11127 (.bxor 11114 11126) := by core033_kernel_decide
theorem stats11127 : actualRows11127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11127=7428 := by core033_kernel_decide
theorem rows11128 : actualRows11128=WordField.canonicalRows actualModulus 11128 (.shr 11127 31) := by core033_kernel_decide
theorem stats11128 : actualRows11128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11128=2892 := by core033_kernel_decide
theorem rows11129 : actualRows11129=WordField.canonicalRows actualModulus 11129 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11129 : actualRows11129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11129=2892 := by core033_kernel_decide
theorem rows11130 : actualRows11130=WordField.canonicalRows actualModulus 11130 (.bxor 11128 11129) := by core033_kernel_decide
theorem stats11130 : actualRows11130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11130=7428 := by core033_kernel_decide
theorem rows11131 : actualRows11131=WordField.canonicalRows actualModulus 11131 (.bnot 11130) := by core033_kernel_decide
theorem stats11131 : actualRows11131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11131=6276 := by core033_kernel_decide
theorem rows11132 : actualRows11132=WordField.canonicalRows actualModulus 11132 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11132 : actualRows11132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11132=2892 := by core033_kernel_decide
theorem rows11133 : actualRows11133=WordField.canonicalRows actualModulus 11133 (.badd 11131 11132) := by core033_kernel_decide
theorem stats11133 : actualRows11133.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11133=5388 := by core033_kernel_decide
theorem rows11134 : actualRows11134=WordField.canonicalRows actualModulus 11134 (.band 11133 9928) := by core033_kernel_decide
theorem stats11134 : actualRows11134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11134=5124 := by core033_kernel_decide
theorem rows11135 : actualRows11135=WordField.canonicalRows actualModulus 11135 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11135 : actualRows11135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11135=2964 := by core033_kernel_decide
theorem rows11136 : actualRows11136=WordField.canonicalRows actualModulus 11136 (.bxor 0 11135) := by core033_kernel_decide
theorem stats11136 : actualRows11136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11136=7428 := by core033_kernel_decide
theorem rows11137 : actualRows11137=WordField.canonicalRows actualModulus 11137 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11137 : actualRows11137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11137=2820 := by core033_kernel_decide
theorem rows11138 : actualRows11138=WordField.canonicalRows actualModulus 11138 (.bnot 11137) := by core033_kernel_decide
theorem stats11138 : actualRows11138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11138=6276 := by core033_kernel_decide
theorem rows11139 : actualRows11139=WordField.canonicalRows actualModulus 11139 (.band 11136 11138) := by core033_kernel_decide
theorem stats11139 : actualRows11139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11139=5124 := by core033_kernel_decide
theorem rows11140 : actualRows11140=WordField.canonicalRows actualModulus 11140 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11140 : actualRows11140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11140=2964 := by core033_kernel_decide
theorem rows11141 : actualRows11141=WordField.canonicalRows actualModulus 11141 (.bxor 0 11140) := by core033_kernel_decide
theorem stats11141 : actualRows11141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11141=7428 := by core033_kernel_decide
theorem rows11142 : actualRows11142=WordField.canonicalRows actualModulus 11142 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11142 : actualRows11142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11142=2820 := by core033_kernel_decide
theorem rows11143 : actualRows11143=WordField.canonicalRows actualModulus 11143 (.bnot 11142) := by core033_kernel_decide
theorem stats11143 : actualRows11143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11143=6276 := by core033_kernel_decide
theorem rows11144 : actualRows11144=WordField.canonicalRows actualModulus 11144 (.bxor 11141 11143) := by core033_kernel_decide
theorem stats11144 : actualRows11144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11144=7428 := by core033_kernel_decide
theorem rows11145 : actualRows11145=WordField.canonicalRows actualModulus 11145 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11145 : actualRows11145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11145=2964 := by core033_kernel_decide
theorem rows11146 : actualRows11146=WordField.canonicalRows actualModulus 11146 (.bxor 0 11145) := by core033_kernel_decide
theorem stats11146 : actualRows11146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11146=7428 := by core033_kernel_decide
theorem rows11147 : actualRows11147=WordField.canonicalRows actualModulus 11147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11147 : actualRows11147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11147=2820 := by core033_kernel_decide
theorem rows11148 : actualRows11148=WordField.canonicalRows actualModulus 11148 (.bnot 11147) := by core033_kernel_decide
theorem stats11148 : actualRows11148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11148=6276 := by core033_kernel_decide
theorem rows11149 : actualRows11149=WordField.canonicalRows actualModulus 11149 (.badd 11146 11148) := by core033_kernel_decide
theorem stats11149 : actualRows11149.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11149=5388 := by core033_kernel_decide
theorem rows11150 : actualRows11150=WordField.canonicalRows actualModulus 11150 (.bnot 11149) := by core033_kernel_decide
theorem stats11150 : actualRows11150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11150=6276 := by core033_kernel_decide
theorem rows11151 : actualRows11151=WordField.canonicalRows actualModulus 11151 (.band 11144 11150) := by core033_kernel_decide
theorem stats11151 : actualRows11151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11151=5124 := by core033_kernel_decide
theorem rows11152 : actualRows11152=WordField.canonicalRows actualModulus 11152 (.bxor 11139 11151) := by core033_kernel_decide
theorem stats11152 : actualRows11152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11152=7428 := by core033_kernel_decide
theorem rows11153 : actualRows11153=WordField.canonicalRows actualModulus 11153 (.shr 11152 31) := by core033_kernel_decide
theorem stats11153 : actualRows11153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11153=2892 := by core033_kernel_decide
theorem rows11154 : actualRows11154=WordField.canonicalRows actualModulus 11154 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11154 : actualRows11154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11154=2892 := by core033_kernel_decide
theorem rows11155 : actualRows11155=WordField.canonicalRows actualModulus 11155 (.bxor 11153 11154) := by core033_kernel_decide
theorem stats11155 : actualRows11155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11155=7428 := by core033_kernel_decide
theorem rows11156 : actualRows11156=WordField.canonicalRows actualModulus 11156 (.bnot 11155) := by core033_kernel_decide
theorem stats11156 : actualRows11156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11156=6276 := by core033_kernel_decide
theorem rows11157 : actualRows11157=WordField.canonicalRows actualModulus 11157 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11157 : actualRows11157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11157=2892 := by core033_kernel_decide
theorem rows11158 : actualRows11158=WordField.canonicalRows actualModulus 11158 (.badd 11156 11157) := by core033_kernel_decide
theorem stats11158 : actualRows11158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11158=5388 := by core033_kernel_decide
theorem rows11159 : actualRows11159=WordField.canonicalRows actualModulus 11159 (.bnot 11158) := by core033_kernel_decide
theorem stats11159 : actualRows11159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11159=6276 := by core033_kernel_decide
theorem rows11160 : actualRows11160=WordField.canonicalRows actualModulus 11160 (.band 11159 283) := by core033_kernel_decide
theorem stats11160 : actualRows11160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11160=5124 := by core033_kernel_decide
theorem rows11161 : actualRows11161=WordField.canonicalRows actualModulus 11161 (.bxor 11134 11160) := by core033_kernel_decide
theorem stats11161 : actualRows11161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11161=7428 := by core033_kernel_decide
theorem rows11162 : actualRows11162=WordField.canonicalRows actualModulus 11162 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11162 : actualRows11162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11162=2964 := by core033_kernel_decide
theorem rows11163 : actualRows11163=WordField.canonicalRows actualModulus 11163 (.bxor 0 11162) := by core033_kernel_decide
theorem stats11163 : actualRows11163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11163=7428 := by core033_kernel_decide
theorem rows11164 : actualRows11164=WordField.canonicalRows actualModulus 11164 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11164 : actualRows11164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11164=2820 := by core033_kernel_decide
theorem rows11165 : actualRows11165=WordField.canonicalRows actualModulus 11165 (.bnot 11164) := by core033_kernel_decide
theorem stats11165 : actualRows11165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11165=6276 := by core033_kernel_decide
theorem rows11166 : actualRows11166=WordField.canonicalRows actualModulus 11166 (.band 11163 11165) := by core033_kernel_decide
theorem stats11166 : actualRows11166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11166=5124 := by core033_kernel_decide
theorem rows11167 : actualRows11167=WordField.canonicalRows actualModulus 11167 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11167 : actualRows11167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11167=2964 := by core033_kernel_decide
theorem rows11168 : actualRows11168=WordField.canonicalRows actualModulus 11168 (.bxor 0 11167) := by core033_kernel_decide
theorem stats11168 : actualRows11168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11168=7428 := by core033_kernel_decide
theorem rows11169 : actualRows11169=WordField.canonicalRows actualModulus 11169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11169 : actualRows11169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11169=2820 := by core033_kernel_decide
theorem rows11170 : actualRows11170=WordField.canonicalRows actualModulus 11170 (.bnot 11169) := by core033_kernel_decide
theorem stats11170 : actualRows11170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11170=6276 := by core033_kernel_decide
theorem rows11171 : actualRows11171=WordField.canonicalRows actualModulus 11171 (.bxor 11168 11170) := by core033_kernel_decide
theorem stats11171 : actualRows11171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11171=7428 := by core033_kernel_decide
theorem rows11172 : actualRows11172=WordField.canonicalRows actualModulus 11172 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11172 : actualRows11172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11172=2964 := by core033_kernel_decide
theorem rows11173 : actualRows11173=WordField.canonicalRows actualModulus 11173 (.bxor 0 11172) := by core033_kernel_decide
theorem stats11173 : actualRows11173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11173=7428 := by core033_kernel_decide
theorem rows11174 : actualRows11174=WordField.canonicalRows actualModulus 11174 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11174 : actualRows11174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11174=2820 := by core033_kernel_decide
theorem rows11175 : actualRows11175=WordField.canonicalRows actualModulus 11175 (.bnot 11174) := by core033_kernel_decide
theorem stats11175 : actualRows11175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11175=6276 := by core033_kernel_decide
theorem rows11176 : actualRows11176=WordField.canonicalRows actualModulus 11176 (.badd 11173 11175) := by core033_kernel_decide
theorem stats11176 : actualRows11176.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11176=5388 := by core033_kernel_decide
theorem rows11177 : actualRows11177=WordField.canonicalRows actualModulus 11177 (.bnot 11176) := by core033_kernel_decide
theorem stats11177 : actualRows11177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11177=6276 := by core033_kernel_decide
theorem rows11178 : actualRows11178=WordField.canonicalRows actualModulus 11178 (.band 11171 11177) := by core033_kernel_decide
theorem stats11178 : actualRows11178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11178=5124 := by core033_kernel_decide
def partRows173 : List R1CS.Row := actualRows11115++actualRows11116++actualRows11117++actualRows11118++actualRows11119++actualRows11120++actualRows11121++actualRows11122++actualRows11123++actualRows11124++actualRows11125++actualRows11126++actualRows11127++actualRows11128++actualRows11129++actualRows11130++actualRows11131++actualRows11132++actualRows11133++actualRows11134++actualRows11135++actualRows11136++actualRows11137++actualRows11138++actualRows11139++actualRows11140++actualRows11141++actualRows11142++actualRows11143++actualRows11144++actualRows11145++actualRows11146++actualRows11147++actualRows11148++actualRows11149++actualRows11150++actualRows11151++actualRows11152++actualRows11153++actualRows11154++actualRows11155++actualRows11156++actualRows11157++actualRows11158++actualRows11159++actualRows11160++actualRows11161++actualRows11162++actualRows11163++actualRows11164++actualRows11165++actualRows11166++actualRows11167++actualRows11168++actualRows11169++actualRows11170++actualRows11171++actualRows11172++actualRows11173++actualRows11174++actualRows11175++actualRows11176++actualRows11177++actualRows11178
def partOps173 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 0 11115,.literal (BitVec.ofNat 32 0),.bnot 11117,.bxor 11116 11118,.literal (BitVec.ofNat 32 3),.bxor 0 11120,.literal (BitVec.ofNat 32 0),.bnot 11122,.badd 11121 11123,.bnot 11124,.band 11119 11125,.bxor 11114 11126,.shr 11127 31,.literal (BitVec.ofNat 32 1),.bxor 11128 11129,.bnot 11130,.literal (BitVec.ofNat 32 1),.badd 11131 11132,.band 11133 9928,.literal (BitVec.ofNat 32 3),.bxor 0 11135,.literal (BitVec.ofNat 32 0),.bnot 11137,.band 11136 11138,.literal (BitVec.ofNat 32 3),.bxor 0 11140,.literal (BitVec.ofNat 32 0),.bnot 11142,.bxor 11141 11143,.literal (BitVec.ofNat 32 3),.bxor 0 11145,.literal (BitVec.ofNat 32 0),.bnot 11147,.badd 11146 11148,.bnot 11149,.band 11144 11150,.bxor 11139 11151,.shr 11152 31,.literal (BitVec.ofNat 32 1),.bxor 11153 11154,.bnot 11155,.literal (BitVec.ofNat 32 1),.badd 11156 11157,.bnot 11158,.band 11159 283,.bxor 11134 11160,.literal (BitVec.ofNat 32 3),.bxor 0 11162,.literal (BitVec.ofNat 32 0),.bnot 11164,.band 11163 11165,.literal (BitVec.ofNat 32 3),.bxor 0 11167,.literal (BitVec.ofNat 32 0),.bnot 11169,.bxor 11168 11170,.literal (BitVec.ofNat 32 3),.bxor 0 11172,.literal (BitVec.ofNat 32 0),.bnot 11174,.badd 11173 11175,.bnot 11176,.band 11171 11177]
theorem partExact173 : partRows173=WordField.rows actualModulus 11115 partOps173 := by
  simp only [partRows173,partOps173,WordField.rows,rows11115,rows11116,rows11117,rows11118,rows11119,rows11120,rows11121,rows11122,rows11123,rows11124,rows11125,rows11126,rows11127,rows11128,rows11129,rows11130,rows11131,rows11132,rows11133,rows11134,rows11135,rows11136,rows11137,rows11138,rows11139,rows11140,rows11141,rows11142,rows11143,rows11144,rows11145,rows11146,rows11147,rows11148,rows11149,rows11150,rows11151,rows11152,rows11153,rows11154,rows11155,rows11156,rows11157,rows11158,rows11159,rows11160,rows11161,rows11162,rows11163,rows11164,rows11165,rows11166,rows11167,rows11168,rows11169,rows11170,rows11171,rows11172,rows11173,rows11174,rows11175,rows11176,rows11177,rows11178,List.append_assoc,List.append_nil]
theorem partLength173 : partOps173.length=64 := by decide
theorem partStats173 : partRows173.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows173=333144 := by
  simp only [partRows173,List.length_append,MatrixRowBlocks.rows_weight_append,stats11115.1,stats11115.2,stats11116.1,stats11116.2,stats11117.1,stats11117.2,stats11118.1,stats11118.2,stats11119.1,stats11119.2,stats11120.1,stats11120.2,stats11121.1,stats11121.2,stats11122.1,stats11122.2,stats11123.1,stats11123.2,stats11124.1,stats11124.2,stats11125.1,stats11125.2,stats11126.1,stats11126.2,stats11127.1,stats11127.2,stats11128.1,stats11128.2,stats11129.1,stats11129.2,stats11130.1,stats11130.2,stats11131.1,stats11131.2,stats11132.1,stats11132.2,stats11133.1,stats11133.2,stats11134.1,stats11134.2,stats11135.1,stats11135.2,stats11136.1,stats11136.2,stats11137.1,stats11137.2,stats11138.1,stats11138.2,stats11139.1,stats11139.2,stats11140.1,stats11140.2,stats11141.1,stats11141.2,stats11142.1,stats11142.2,stats11143.1,stats11143.2,stats11144.1,stats11144.2,stats11145.1,stats11145.2,stats11146.1,stats11146.2,stats11147.1,stats11147.2,stats11148.1,stats11148.2,stats11149.1,stats11149.2,stats11150.1,stats11150.2,stats11151.1,stats11151.2,stats11152.1,stats11152.2,stats11153.1,stats11153.2,stats11154.1,stats11154.2,stats11155.1,stats11155.2,stats11156.1,stats11156.2,stats11157.1,stats11157.2,stats11158.1,stats11158.2,stats11159.1,stats11159.2,stats11160.1,stats11160.2,stats11161.1,stats11161.2,stats11162.1,stats11162.2,stats11163.1,stats11163.2,stats11164.1,stats11164.2,stats11165.1,stats11165.2,stats11166.1,stats11166.2,stats11167.1,stats11167.2,stats11168.1,stats11168.2,stats11169.1,stats11169.2,stats11170.1,stats11170.2,stats11171.1,stats11171.2,stats11172.1,stats11172.2,stats11173.1,stats11173.2,stats11174.1,stats11174.2,stats11175.1,stats11175.2,stats11176.1,stats11176.2,stats11177.1,stats11177.2,stats11178.1,stats11178.2]
  decide
end PathRoundDispatchCheckedRows
