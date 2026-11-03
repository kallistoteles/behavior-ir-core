import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData95
import PathRoundDispatchInstructionMatrixData96
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6123 : actualRows6123=WordField.canonicalRows actualModulus 6123 (.shr 3379 8) := by core033_kernel_decide
theorem stats6123 : actualRows6123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6123=4548 := by core033_kernel_decide
theorem rows6124 : actualRows6124=WordField.canonicalRows actualModulus 6124 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6124 : actualRows6124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6124=2820 := by core033_kernel_decide
theorem rows6125 : actualRows6125=WordField.canonicalRows actualModulus 6125 (.bnot 6124) := by core033_kernel_decide
theorem stats6125 : actualRows6125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6125=6276 := by core033_kernel_decide
theorem rows6126 : actualRows6126=WordField.canonicalRows actualModulus 6126 (.bxor 6123 6125) := by core033_kernel_decide
theorem stats6126 : actualRows6126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6126=7428 := by core033_kernel_decide
theorem rows6127 : actualRows6127=WordField.canonicalRows actualModulus 6127 (.shr 3379 8) := by core033_kernel_decide
theorem stats6127 : actualRows6127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6127=4548 := by core033_kernel_decide
theorem rows6128 : actualRows6128=WordField.canonicalRows actualModulus 6128 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6128 : actualRows6128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6128=2820 := by core033_kernel_decide
theorem rows6129 : actualRows6129=WordField.canonicalRows actualModulus 6129 (.bnot 6128) := by core033_kernel_decide
theorem stats6129 : actualRows6129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6129=6276 := by core033_kernel_decide
theorem rows6130 : actualRows6130=WordField.canonicalRows actualModulus 6130 (.badd 6127 6129) := by core033_kernel_decide
theorem stats6130 : actualRows6130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6130=5388 := by core033_kernel_decide
theorem rows6131 : actualRows6131=WordField.canonicalRows actualModulus 6131 (.bnot 6130) := by core033_kernel_decide
theorem stats6131 : actualRows6131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6131=6276 := by core033_kernel_decide
theorem rows6132 : actualRows6132=WordField.canonicalRows actualModulus 6132 (.band 6126 6131) := by core033_kernel_decide
theorem stats6132 : actualRows6132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6132=5124 := by core033_kernel_decide
theorem rows6133 : actualRows6133=WordField.canonicalRows actualModulus 6133 (.bxor 6122 6132) := by core033_kernel_decide
theorem stats6133 : actualRows6133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6133=7428 := by core033_kernel_decide
theorem rows6134 : actualRows6134=WordField.canonicalRows actualModulus 6134 (.shr 6133 31) := by core033_kernel_decide
theorem stats6134 : actualRows6134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6134=2892 := by core033_kernel_decide
theorem rows6135 : actualRows6135=WordField.canonicalRows actualModulus 6135 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6135 : actualRows6135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6135=2892 := by core033_kernel_decide
theorem rows6136 : actualRows6136=WordField.canonicalRows actualModulus 6136 (.bxor 6134 6135) := by core033_kernel_decide
theorem stats6136 : actualRows6136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6136=7428 := by core033_kernel_decide
theorem rows6137 : actualRows6137=WordField.canonicalRows actualModulus 6137 (.shr 3431 8) := by core033_kernel_decide
theorem stats6137 : actualRows6137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6137=4548 := by core033_kernel_decide
theorem rows6138 : actualRows6138=WordField.canonicalRows actualModulus 6138 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6138 : actualRows6138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6138=2820 := by core033_kernel_decide
theorem rows6139 : actualRows6139=WordField.canonicalRows actualModulus 6139 (.bnot 6138) := by core033_kernel_decide
theorem stats6139 : actualRows6139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6139=6276 := by core033_kernel_decide
theorem rows6140 : actualRows6140=WordField.canonicalRows actualModulus 6140 (.band 6137 6139) := by core033_kernel_decide
theorem stats6140 : actualRows6140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6140=5124 := by core033_kernel_decide
theorem rows6141 : actualRows6141=WordField.canonicalRows actualModulus 6141 (.shr 3431 8) := by core033_kernel_decide
theorem stats6141 : actualRows6141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6141=4548 := by core033_kernel_decide
theorem rows6142 : actualRows6142=WordField.canonicalRows actualModulus 6142 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6142 : actualRows6142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6142=2820 := by core033_kernel_decide
theorem rows6143 : actualRows6143=WordField.canonicalRows actualModulus 6143 (.bnot 6142) := by core033_kernel_decide
theorem stats6143 : actualRows6143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6143=6276 := by core033_kernel_decide
theorem rows6144 : actualRows6144=WordField.canonicalRows actualModulus 6144 (.bxor 6141 6143) := by core033_kernel_decide
theorem stats6144 : actualRows6144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6144=7428 := by core033_kernel_decide
theorem rows6145 : actualRows6145=WordField.canonicalRows actualModulus 6145 (.shr 3431 8) := by core033_kernel_decide
theorem stats6145 : actualRows6145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6145=4548 := by core033_kernel_decide
theorem rows6146 : actualRows6146=WordField.canonicalRows actualModulus 6146 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6146 : actualRows6146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6146=2820 := by core033_kernel_decide
theorem rows6147 : actualRows6147=WordField.canonicalRows actualModulus 6147 (.bnot 6146) := by core033_kernel_decide
theorem stats6147 : actualRows6147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6147=6276 := by core033_kernel_decide
theorem rows6148 : actualRows6148=WordField.canonicalRows actualModulus 6148 (.badd 6145 6147) := by core033_kernel_decide
theorem stats6148 : actualRows6148.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6148=5388 := by core033_kernel_decide
theorem rows6149 : actualRows6149=WordField.canonicalRows actualModulus 6149 (.bnot 6148) := by core033_kernel_decide
theorem stats6149 : actualRows6149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6149=6276 := by core033_kernel_decide
theorem rows6150 : actualRows6150=WordField.canonicalRows actualModulus 6150 (.band 6144 6149) := by core033_kernel_decide
theorem stats6150 : actualRows6150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6150=5124 := by core033_kernel_decide
theorem rows6151 : actualRows6151=WordField.canonicalRows actualModulus 6151 (.bxor 6140 6150) := by core033_kernel_decide
theorem stats6151 : actualRows6151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6151=7428 := by core033_kernel_decide
theorem rows6152 : actualRows6152=WordField.canonicalRows actualModulus 6152 (.shr 6151 31) := by core033_kernel_decide
theorem stats6152 : actualRows6152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6152=2892 := by core033_kernel_decide
theorem rows6153 : actualRows6153=WordField.canonicalRows actualModulus 6153 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6153 : actualRows6153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6153=2892 := by core033_kernel_decide
theorem rows6154 : actualRows6154=WordField.canonicalRows actualModulus 6154 (.bxor 6152 6153) := by core033_kernel_decide
theorem stats6154 : actualRows6154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6154=7428 := by core033_kernel_decide
theorem rows6155 : actualRows6155=WordField.canonicalRows actualModulus 6155 (.shr 3483 8) := by core033_kernel_decide
theorem stats6155 : actualRows6155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6155=4548 := by core033_kernel_decide
theorem rows6156 : actualRows6156=WordField.canonicalRows actualModulus 6156 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6156 : actualRows6156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6156=2820 := by core033_kernel_decide
theorem rows6157 : actualRows6157=WordField.canonicalRows actualModulus 6157 (.bnot 6156) := by core033_kernel_decide
theorem stats6157 : actualRows6157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6157=6276 := by core033_kernel_decide
theorem rows6158 : actualRows6158=WordField.canonicalRows actualModulus 6158 (.band 6155 6157) := by core033_kernel_decide
theorem stats6158 : actualRows6158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6158=5124 := by core033_kernel_decide
theorem rows6159 : actualRows6159=WordField.canonicalRows actualModulus 6159 (.shr 3483 8) := by core033_kernel_decide
theorem stats6159 : actualRows6159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6159=4548 := by core033_kernel_decide
theorem rows6160 : actualRows6160=WordField.canonicalRows actualModulus 6160 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6160 : actualRows6160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6160=2820 := by core033_kernel_decide
theorem rows6161 : actualRows6161=WordField.canonicalRows actualModulus 6161 (.bnot 6160) := by core033_kernel_decide
theorem stats6161 : actualRows6161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6161=6276 := by core033_kernel_decide
theorem rows6162 : actualRows6162=WordField.canonicalRows actualModulus 6162 (.bxor 6159 6161) := by core033_kernel_decide
theorem stats6162 : actualRows6162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6162=7428 := by core033_kernel_decide
theorem rows6163 : actualRows6163=WordField.canonicalRows actualModulus 6163 (.shr 3483 8) := by core033_kernel_decide
theorem stats6163 : actualRows6163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6163=4548 := by core033_kernel_decide
theorem rows6164 : actualRows6164=WordField.canonicalRows actualModulus 6164 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6164 : actualRows6164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6164=2820 := by core033_kernel_decide
theorem rows6165 : actualRows6165=WordField.canonicalRows actualModulus 6165 (.bnot 6164) := by core033_kernel_decide
theorem stats6165 : actualRows6165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6165=6276 := by core033_kernel_decide
theorem rows6166 : actualRows6166=WordField.canonicalRows actualModulus 6166 (.badd 6163 6165) := by core033_kernel_decide
theorem stats6166 : actualRows6166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6166=5388 := by core033_kernel_decide
theorem rows6167 : actualRows6167=WordField.canonicalRows actualModulus 6167 (.bnot 6166) := by core033_kernel_decide
theorem stats6167 : actualRows6167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6167=6276 := by core033_kernel_decide
theorem rows6168 : actualRows6168=WordField.canonicalRows actualModulus 6168 (.band 6162 6167) := by core033_kernel_decide
theorem stats6168 : actualRows6168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6168=5124 := by core033_kernel_decide
theorem rows6169 : actualRows6169=WordField.canonicalRows actualModulus 6169 (.bxor 6158 6168) := by core033_kernel_decide
theorem stats6169 : actualRows6169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6169=7428 := by core033_kernel_decide
theorem rows6170 : actualRows6170=WordField.canonicalRows actualModulus 6170 (.shr 6169 31) := by core033_kernel_decide
theorem stats6170 : actualRows6170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6170=2892 := by core033_kernel_decide
theorem rows6171 : actualRows6171=WordField.canonicalRows actualModulus 6171 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6171 : actualRows6171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6171=2892 := by core033_kernel_decide
theorem rows6172 : actualRows6172=WordField.canonicalRows actualModulus 6172 (.bxor 6170 6171) := by core033_kernel_decide
theorem stats6172 : actualRows6172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6172=7428 := by core033_kernel_decide
theorem rows6173 : actualRows6173=WordField.canonicalRows actualModulus 6173 (.shr 3535 8) := by core033_kernel_decide
theorem stats6173 : actualRows6173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6173=4548 := by core033_kernel_decide
theorem rows6174 : actualRows6174=WordField.canonicalRows actualModulus 6174 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6174 : actualRows6174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6174=2820 := by core033_kernel_decide
theorem rows6175 : actualRows6175=WordField.canonicalRows actualModulus 6175 (.bnot 6174) := by core033_kernel_decide
theorem stats6175 : actualRows6175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6175=6276 := by core033_kernel_decide
theorem rows6176 : actualRows6176=WordField.canonicalRows actualModulus 6176 (.band 6173 6175) := by core033_kernel_decide
theorem stats6176 : actualRows6176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6176=5124 := by core033_kernel_decide
theorem rows6177 : actualRows6177=WordField.canonicalRows actualModulus 6177 (.shr 3535 8) := by core033_kernel_decide
theorem stats6177 : actualRows6177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6177=4548 := by core033_kernel_decide
theorem rows6178 : actualRows6178=WordField.canonicalRows actualModulus 6178 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6178 : actualRows6178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6178=2820 := by core033_kernel_decide
theorem rows6179 : actualRows6179=WordField.canonicalRows actualModulus 6179 (.bnot 6178) := by core033_kernel_decide
theorem stats6179 : actualRows6179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6179=6276 := by core033_kernel_decide
theorem rows6180 : actualRows6180=WordField.canonicalRows actualModulus 6180 (.bxor 6177 6179) := by core033_kernel_decide
theorem stats6180 : actualRows6180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6180=7428 := by core033_kernel_decide
theorem rows6181 : actualRows6181=WordField.canonicalRows actualModulus 6181 (.shr 3535 8) := by core033_kernel_decide
theorem stats6181 : actualRows6181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6181=4548 := by core033_kernel_decide
theorem rows6182 : actualRows6182=WordField.canonicalRows actualModulus 6182 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6182 : actualRows6182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6182=2820 := by core033_kernel_decide
theorem rows6183 : actualRows6183=WordField.canonicalRows actualModulus 6183 (.bnot 6182) := by core033_kernel_decide
theorem stats6183 : actualRows6183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6183=6276 := by core033_kernel_decide
theorem rows6184 : actualRows6184=WordField.canonicalRows actualModulus 6184 (.badd 6181 6183) := by core033_kernel_decide
theorem stats6184 : actualRows6184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6184=5388 := by core033_kernel_decide
theorem rows6185 : actualRows6185=WordField.canonicalRows actualModulus 6185 (.bnot 6184) := by core033_kernel_decide
theorem stats6185 : actualRows6185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6185=6276 := by core033_kernel_decide
theorem rows6186 : actualRows6186=WordField.canonicalRows actualModulus 6186 (.band 6180 6185) := by core033_kernel_decide
theorem stats6186 : actualRows6186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6186=5124 := by core033_kernel_decide
def partRows95 : List R1CS.Row := actualRows6123++actualRows6124++actualRows6125++actualRows6126++actualRows6127++actualRows6128++actualRows6129++actualRows6130++actualRows6131++actualRows6132++actualRows6133++actualRows6134++actualRows6135++actualRows6136++actualRows6137++actualRows6138++actualRows6139++actualRows6140++actualRows6141++actualRows6142++actualRows6143++actualRows6144++actualRows6145++actualRows6146++actualRows6147++actualRows6148++actualRows6149++actualRows6150++actualRows6151++actualRows6152++actualRows6153++actualRows6154++actualRows6155++actualRows6156++actualRows6157++actualRows6158++actualRows6159++actualRows6160++actualRows6161++actualRows6162++actualRows6163++actualRows6164++actualRows6165++actualRows6166++actualRows6167++actualRows6168++actualRows6169++actualRows6170++actualRows6171++actualRows6172++actualRows6173++actualRows6174++actualRows6175++actualRows6176++actualRows6177++actualRows6178++actualRows6179++actualRows6180++actualRows6181++actualRows6182++actualRows6183++actualRows6184++actualRows6185++actualRows6186
def partOps95 : List WordIR.Op := [.shr 3379 8,.literal (BitVec.ofNat 32 0),.bnot 6124,.bxor 6123 6125,.shr 3379 8,.literal (BitVec.ofNat 32 0),.bnot 6128,.badd 6127 6129,.bnot 6130,.band 6126 6131,.bxor 6122 6132,.shr 6133 31,.literal (BitVec.ofNat 32 1),.bxor 6134 6135,.shr 3431 8,.literal (BitVec.ofNat 32 0),.bnot 6138,.band 6137 6139,.shr 3431 8,.literal (BitVec.ofNat 32 0),.bnot 6142,.bxor 6141 6143,.shr 3431 8,.literal (BitVec.ofNat 32 0),.bnot 6146,.badd 6145 6147,.bnot 6148,.band 6144 6149,.bxor 6140 6150,.shr 6151 31,.literal (BitVec.ofNat 32 1),.bxor 6152 6153,.shr 3483 8,.literal (BitVec.ofNat 32 0),.bnot 6156,.band 6155 6157,.shr 3483 8,.literal (BitVec.ofNat 32 0),.bnot 6160,.bxor 6159 6161,.shr 3483 8,.literal (BitVec.ofNat 32 0),.bnot 6164,.badd 6163 6165,.bnot 6166,.band 6162 6167,.bxor 6158 6168,.shr 6169 31,.literal (BitVec.ofNat 32 1),.bxor 6170 6171,.shr 3535 8,.literal (BitVec.ofNat 32 0),.bnot 6174,.band 6173 6175,.shr 3535 8,.literal (BitVec.ofNat 32 0),.bnot 6178,.bxor 6177 6179,.shr 3535 8,.literal (BitVec.ofNat 32 0),.bnot 6182,.badd 6181 6183,.bnot 6184,.band 6180 6185]
theorem partExact95 : partRows95=WordField.rows actualModulus 6123 partOps95 := by
  simp only [partRows95,partOps95,WordField.rows,rows6123,rows6124,rows6125,rows6126,rows6127,rows6128,rows6129,rows6130,rows6131,rows6132,rows6133,rows6134,rows6135,rows6136,rows6137,rows6138,rows6139,rows6140,rows6141,rows6142,rows6143,rows6144,rows6145,rows6146,rows6147,rows6148,rows6149,rows6150,rows6151,rows6152,rows6153,rows6154,rows6155,rows6156,rows6157,rows6158,rows6159,rows6160,rows6161,rows6162,rows6163,rows6164,rows6165,rows6166,rows6167,rows6168,rows6169,rows6170,rows6171,rows6172,rows6173,rows6174,rows6175,rows6176,rows6177,rows6178,rows6179,rows6180,rows6181,rows6182,rows6183,rows6184,rows6185,rows6186,List.append_assoc,List.append_nil]
theorem partLength95 : partOps95.length=64 := by decide
theorem partStats95 : partRows95.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows95=324240 := by
  simp only [partRows95,List.length_append,MatrixRowBlocks.rows_weight_append,stats6123.1,stats6123.2,stats6124.1,stats6124.2,stats6125.1,stats6125.2,stats6126.1,stats6126.2,stats6127.1,stats6127.2,stats6128.1,stats6128.2,stats6129.1,stats6129.2,stats6130.1,stats6130.2,stats6131.1,stats6131.2,stats6132.1,stats6132.2,stats6133.1,stats6133.2,stats6134.1,stats6134.2,stats6135.1,stats6135.2,stats6136.1,stats6136.2,stats6137.1,stats6137.2,stats6138.1,stats6138.2,stats6139.1,stats6139.2,stats6140.1,stats6140.2,stats6141.1,stats6141.2,stats6142.1,stats6142.2,stats6143.1,stats6143.2,stats6144.1,stats6144.2,stats6145.1,stats6145.2,stats6146.1,stats6146.2,stats6147.1,stats6147.2,stats6148.1,stats6148.2,stats6149.1,stats6149.2,stats6150.1,stats6150.2,stats6151.1,stats6151.2,stats6152.1,stats6152.2,stats6153.1,stats6153.2,stats6154.1,stats6154.2,stats6155.1,stats6155.2,stats6156.1,stats6156.2,stats6157.1,stats6157.2,stats6158.1,stats6158.2,stats6159.1,stats6159.2,stats6160.1,stats6160.2,stats6161.1,stats6161.2,stats6162.1,stats6162.2,stats6163.1,stats6163.2,stats6164.1,stats6164.2,stats6165.1,stats6165.2,stats6166.1,stats6166.2,stats6167.1,stats6167.2,stats6168.1,stats6168.2,stats6169.1,stats6169.2,stats6170.1,stats6170.2,stats6171.1,stats6171.2,stats6172.1,stats6172.2,stats6173.1,stats6173.2,stats6174.1,stats6174.2,stats6175.1,stats6175.2,stats6176.1,stats6176.2,stats6177.1,stats6177.2,stats6178.1,stats6178.2,stats6179.1,stats6179.2,stats6180.1,stats6180.2,stats6181.1,stats6181.2,stats6182.1,stats6182.2,stats6183.1,stats6183.2,stats6184.1,stats6184.2,stats6185.1,stats6185.2,stats6186.1,stats6186.2]
  decide
end PathRoundDispatchCheckedRows
