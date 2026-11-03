import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData95
import FrameHashControllerInstructionMatrixData96
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6123 : actualRows6123=WordField.canonicalRows actualModulus 6123 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6123 : actualRows6123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6123=2892 := by core033_kernel_decide
theorem rows6124 : actualRows6124=WordField.canonicalRows actualModulus 6124 (.bxor 6122 6123) := by core033_kernel_decide
theorem stats6124 : actualRows6124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6124=7428 := by core033_kernel_decide
theorem rows6125 : actualRows6125=WordField.canonicalRows actualModulus 6125 (.shr 4371 8) := by core033_kernel_decide
theorem stats6125 : actualRows6125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6125=4548 := by core033_kernel_decide
theorem rows6126 : actualRows6126=WordField.canonicalRows actualModulus 6126 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6126 : actualRows6126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6126=2820 := by core033_kernel_decide
theorem rows6127 : actualRows6127=WordField.canonicalRows actualModulus 6127 (.bnot 6126) := by core033_kernel_decide
theorem stats6127 : actualRows6127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6127=6276 := by core033_kernel_decide
theorem rows6128 : actualRows6128=WordField.canonicalRows actualModulus 6128 (.band 6125 6127) := by core033_kernel_decide
theorem stats6128 : actualRows6128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6128=5124 := by core033_kernel_decide
theorem rows6129 : actualRows6129=WordField.canonicalRows actualModulus 6129 (.shr 4371 8) := by core033_kernel_decide
theorem stats6129 : actualRows6129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6129=4548 := by core033_kernel_decide
theorem rows6130 : actualRows6130=WordField.canonicalRows actualModulus 6130 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6130 : actualRows6130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6130=2820 := by core033_kernel_decide
theorem rows6131 : actualRows6131=WordField.canonicalRows actualModulus 6131 (.bnot 6130) := by core033_kernel_decide
theorem stats6131 : actualRows6131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6131=6276 := by core033_kernel_decide
theorem rows6132 : actualRows6132=WordField.canonicalRows actualModulus 6132 (.bxor 6129 6131) := by core033_kernel_decide
theorem stats6132 : actualRows6132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6132=7428 := by core033_kernel_decide
theorem rows6133 : actualRows6133=WordField.canonicalRows actualModulus 6133 (.shr 4371 8) := by core033_kernel_decide
theorem stats6133 : actualRows6133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6133=4548 := by core033_kernel_decide
theorem rows6134 : actualRows6134=WordField.canonicalRows actualModulus 6134 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6134 : actualRows6134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6134=2820 := by core033_kernel_decide
theorem rows6135 : actualRows6135=WordField.canonicalRows actualModulus 6135 (.bnot 6134) := by core033_kernel_decide
theorem stats6135 : actualRows6135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6135=6276 := by core033_kernel_decide
theorem rows6136 : actualRows6136=WordField.canonicalRows actualModulus 6136 (.badd 6133 6135) := by core033_kernel_decide
theorem stats6136 : actualRows6136.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6136=5388 := by core033_kernel_decide
theorem rows6137 : actualRows6137=WordField.canonicalRows actualModulus 6137 (.bnot 6136) := by core033_kernel_decide
theorem stats6137 : actualRows6137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6137=6276 := by core033_kernel_decide
theorem rows6138 : actualRows6138=WordField.canonicalRows actualModulus 6138 (.band 6132 6137) := by core033_kernel_decide
theorem stats6138 : actualRows6138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6138=5124 := by core033_kernel_decide
theorem rows6139 : actualRows6139=WordField.canonicalRows actualModulus 6139 (.bxor 6128 6138) := by core033_kernel_decide
theorem stats6139 : actualRows6139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6139=7428 := by core033_kernel_decide
theorem rows6140 : actualRows6140=WordField.canonicalRows actualModulus 6140 (.shr 6139 31) := by core033_kernel_decide
theorem stats6140 : actualRows6140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6140=2892 := by core033_kernel_decide
theorem rows6141 : actualRows6141=WordField.canonicalRows actualModulus 6141 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6141 : actualRows6141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6141=2892 := by core033_kernel_decide
theorem rows6142 : actualRows6142=WordField.canonicalRows actualModulus 6142 (.bxor 6140 6141) := by core033_kernel_decide
theorem stats6142 : actualRows6142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6142=7428 := by core033_kernel_decide
theorem rows6143 : actualRows6143=WordField.canonicalRows actualModulus 6143 (.shr 4423 8) := by core033_kernel_decide
theorem stats6143 : actualRows6143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6143=4548 := by core033_kernel_decide
theorem rows6144 : actualRows6144=WordField.canonicalRows actualModulus 6144 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6144 : actualRows6144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6144=2820 := by core033_kernel_decide
theorem rows6145 : actualRows6145=WordField.canonicalRows actualModulus 6145 (.bnot 6144) := by core033_kernel_decide
theorem stats6145 : actualRows6145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6145=6276 := by core033_kernel_decide
theorem rows6146 : actualRows6146=WordField.canonicalRows actualModulus 6146 (.band 6143 6145) := by core033_kernel_decide
theorem stats6146 : actualRows6146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6146=5124 := by core033_kernel_decide
theorem rows6147 : actualRows6147=WordField.canonicalRows actualModulus 6147 (.shr 4423 8) := by core033_kernel_decide
theorem stats6147 : actualRows6147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6147=4548 := by core033_kernel_decide
theorem rows6148 : actualRows6148=WordField.canonicalRows actualModulus 6148 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6148 : actualRows6148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6148=2820 := by core033_kernel_decide
theorem rows6149 : actualRows6149=WordField.canonicalRows actualModulus 6149 (.bnot 6148) := by core033_kernel_decide
theorem stats6149 : actualRows6149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6149=6276 := by core033_kernel_decide
theorem rows6150 : actualRows6150=WordField.canonicalRows actualModulus 6150 (.bxor 6147 6149) := by core033_kernel_decide
theorem stats6150 : actualRows6150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6150=7428 := by core033_kernel_decide
theorem rows6151 : actualRows6151=WordField.canonicalRows actualModulus 6151 (.shr 4423 8) := by core033_kernel_decide
theorem stats6151 : actualRows6151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6151=4548 := by core033_kernel_decide
theorem rows6152 : actualRows6152=WordField.canonicalRows actualModulus 6152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6152 : actualRows6152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6152=2820 := by core033_kernel_decide
theorem rows6153 : actualRows6153=WordField.canonicalRows actualModulus 6153 (.bnot 6152) := by core033_kernel_decide
theorem stats6153 : actualRows6153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6153=6276 := by core033_kernel_decide
theorem rows6154 : actualRows6154=WordField.canonicalRows actualModulus 6154 (.badd 6151 6153) := by core033_kernel_decide
theorem stats6154 : actualRows6154.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6154=5388 := by core033_kernel_decide
theorem rows6155 : actualRows6155=WordField.canonicalRows actualModulus 6155 (.bnot 6154) := by core033_kernel_decide
theorem stats6155 : actualRows6155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6155=6276 := by core033_kernel_decide
theorem rows6156 : actualRows6156=WordField.canonicalRows actualModulus 6156 (.band 6150 6155) := by core033_kernel_decide
theorem stats6156 : actualRows6156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6156=5124 := by core033_kernel_decide
theorem rows6157 : actualRows6157=WordField.canonicalRows actualModulus 6157 (.bxor 6146 6156) := by core033_kernel_decide
theorem stats6157 : actualRows6157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6157=7428 := by core033_kernel_decide
theorem rows6158 : actualRows6158=WordField.canonicalRows actualModulus 6158 (.shr 6157 31) := by core033_kernel_decide
theorem stats6158 : actualRows6158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6158=2892 := by core033_kernel_decide
theorem rows6159 : actualRows6159=WordField.canonicalRows actualModulus 6159 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6159 : actualRows6159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6159=2892 := by core033_kernel_decide
theorem rows6160 : actualRows6160=WordField.canonicalRows actualModulus 6160 (.bxor 6158 6159) := by core033_kernel_decide
theorem stats6160 : actualRows6160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6160=7428 := by core033_kernel_decide
theorem rows6161 : actualRows6161=WordField.canonicalRows actualModulus 6161 (.shr 4475 8) := by core033_kernel_decide
theorem stats6161 : actualRows6161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6161=4548 := by core033_kernel_decide
theorem rows6162 : actualRows6162=WordField.canonicalRows actualModulus 6162 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6162 : actualRows6162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6162=2820 := by core033_kernel_decide
theorem rows6163 : actualRows6163=WordField.canonicalRows actualModulus 6163 (.bnot 6162) := by core033_kernel_decide
theorem stats6163 : actualRows6163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6163=6276 := by core033_kernel_decide
theorem rows6164 : actualRows6164=WordField.canonicalRows actualModulus 6164 (.band 6161 6163) := by core033_kernel_decide
theorem stats6164 : actualRows6164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6164=5124 := by core033_kernel_decide
theorem rows6165 : actualRows6165=WordField.canonicalRows actualModulus 6165 (.shr 4475 8) := by core033_kernel_decide
theorem stats6165 : actualRows6165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6165=4548 := by core033_kernel_decide
theorem rows6166 : actualRows6166=WordField.canonicalRows actualModulus 6166 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6166 : actualRows6166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6166=2820 := by core033_kernel_decide
theorem rows6167 : actualRows6167=WordField.canonicalRows actualModulus 6167 (.bnot 6166) := by core033_kernel_decide
theorem stats6167 : actualRows6167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6167=6276 := by core033_kernel_decide
theorem rows6168 : actualRows6168=WordField.canonicalRows actualModulus 6168 (.bxor 6165 6167) := by core033_kernel_decide
theorem stats6168 : actualRows6168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6168=7428 := by core033_kernel_decide
theorem rows6169 : actualRows6169=WordField.canonicalRows actualModulus 6169 (.shr 4475 8) := by core033_kernel_decide
theorem stats6169 : actualRows6169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6169=4548 := by core033_kernel_decide
theorem rows6170 : actualRows6170=WordField.canonicalRows actualModulus 6170 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6170 : actualRows6170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6170=2820 := by core033_kernel_decide
theorem rows6171 : actualRows6171=WordField.canonicalRows actualModulus 6171 (.bnot 6170) := by core033_kernel_decide
theorem stats6171 : actualRows6171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6171=6276 := by core033_kernel_decide
theorem rows6172 : actualRows6172=WordField.canonicalRows actualModulus 6172 (.badd 6169 6171) := by core033_kernel_decide
theorem stats6172 : actualRows6172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6172=5388 := by core033_kernel_decide
theorem rows6173 : actualRows6173=WordField.canonicalRows actualModulus 6173 (.bnot 6172) := by core033_kernel_decide
theorem stats6173 : actualRows6173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6173=6276 := by core033_kernel_decide
theorem rows6174 : actualRows6174=WordField.canonicalRows actualModulus 6174 (.band 6168 6173) := by core033_kernel_decide
theorem stats6174 : actualRows6174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6174=5124 := by core033_kernel_decide
theorem rows6175 : actualRows6175=WordField.canonicalRows actualModulus 6175 (.bxor 6164 6174) := by core033_kernel_decide
theorem stats6175 : actualRows6175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6175=7428 := by core033_kernel_decide
theorem rows6176 : actualRows6176=WordField.canonicalRows actualModulus 6176 (.shr 6175 31) := by core033_kernel_decide
theorem stats6176 : actualRows6176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6176=2892 := by core033_kernel_decide
theorem rows6177 : actualRows6177=WordField.canonicalRows actualModulus 6177 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6177 : actualRows6177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6177=2892 := by core033_kernel_decide
theorem rows6178 : actualRows6178=WordField.canonicalRows actualModulus 6178 (.bxor 6176 6177) := by core033_kernel_decide
theorem stats6178 : actualRows6178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6178=7428 := by core033_kernel_decide
theorem rows6179 : actualRows6179=WordField.canonicalRows actualModulus 6179 (.shr 4528 8) := by core033_kernel_decide
theorem stats6179 : actualRows6179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6179=4548 := by core033_kernel_decide
theorem rows6180 : actualRows6180=WordField.canonicalRows actualModulus 6180 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6180 : actualRows6180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6180=2820 := by core033_kernel_decide
theorem rows6181 : actualRows6181=WordField.canonicalRows actualModulus 6181 (.bnot 6180) := by core033_kernel_decide
theorem stats6181 : actualRows6181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6181=6276 := by core033_kernel_decide
theorem rows6182 : actualRows6182=WordField.canonicalRows actualModulus 6182 (.band 6179 6181) := by core033_kernel_decide
theorem stats6182 : actualRows6182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6182=5124 := by core033_kernel_decide
theorem rows6183 : actualRows6183=WordField.canonicalRows actualModulus 6183 (.shr 4528 8) := by core033_kernel_decide
theorem stats6183 : actualRows6183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6183=4548 := by core033_kernel_decide
theorem rows6184 : actualRows6184=WordField.canonicalRows actualModulus 6184 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6184 : actualRows6184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6184=2820 := by core033_kernel_decide
theorem rows6185 : actualRows6185=WordField.canonicalRows actualModulus 6185 (.bnot 6184) := by core033_kernel_decide
theorem stats6185 : actualRows6185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6185=6276 := by core033_kernel_decide
theorem rows6186 : actualRows6186=WordField.canonicalRows actualModulus 6186 (.bxor 6183 6185) := by core033_kernel_decide
theorem stats6186 : actualRows6186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6186=7428 := by core033_kernel_decide
def partRows95 : List R1CS.Row := actualRows6123++actualRows6124++actualRows6125++actualRows6126++actualRows6127++actualRows6128++actualRows6129++actualRows6130++actualRows6131++actualRows6132++actualRows6133++actualRows6134++actualRows6135++actualRows6136++actualRows6137++actualRows6138++actualRows6139++actualRows6140++actualRows6141++actualRows6142++actualRows6143++actualRows6144++actualRows6145++actualRows6146++actualRows6147++actualRows6148++actualRows6149++actualRows6150++actualRows6151++actualRows6152++actualRows6153++actualRows6154++actualRows6155++actualRows6156++actualRows6157++actualRows6158++actualRows6159++actualRows6160++actualRows6161++actualRows6162++actualRows6163++actualRows6164++actualRows6165++actualRows6166++actualRows6167++actualRows6168++actualRows6169++actualRows6170++actualRows6171++actualRows6172++actualRows6173++actualRows6174++actualRows6175++actualRows6176++actualRows6177++actualRows6178++actualRows6179++actualRows6180++actualRows6181++actualRows6182++actualRows6183++actualRows6184++actualRows6185++actualRows6186
def partOps95 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 6122 6123,.shr 4371 8,.literal (BitVec.ofNat 32 0),.bnot 6126,.band 6125 6127,.shr 4371 8,.literal (BitVec.ofNat 32 0),.bnot 6130,.bxor 6129 6131,.shr 4371 8,.literal (BitVec.ofNat 32 0),.bnot 6134,.badd 6133 6135,.bnot 6136,.band 6132 6137,.bxor 6128 6138,.shr 6139 31,.literal (BitVec.ofNat 32 1),.bxor 6140 6141,.shr 4423 8,.literal (BitVec.ofNat 32 0),.bnot 6144,.band 6143 6145,.shr 4423 8,.literal (BitVec.ofNat 32 0),.bnot 6148,.bxor 6147 6149,.shr 4423 8,.literal (BitVec.ofNat 32 0),.bnot 6152,.badd 6151 6153,.bnot 6154,.band 6150 6155,.bxor 6146 6156,.shr 6157 31,.literal (BitVec.ofNat 32 1),.bxor 6158 6159,.shr 4475 8,.literal (BitVec.ofNat 32 0),.bnot 6162,.band 6161 6163,.shr 4475 8,.literal (BitVec.ofNat 32 0),.bnot 6166,.bxor 6165 6167,.shr 4475 8,.literal (BitVec.ofNat 32 0),.bnot 6170,.badd 6169 6171,.bnot 6172,.band 6168 6173,.bxor 6164 6174,.shr 6175 31,.literal (BitVec.ofNat 32 1),.bxor 6176 6177,.shr 4528 8,.literal (BitVec.ofNat 32 0),.bnot 6180,.band 6179 6181,.shr 4528 8,.literal (BitVec.ofNat 32 0),.bnot 6184,.bxor 6183 6185]
theorem partExact95 : partRows95=WordField.rows actualModulus 6123 partOps95 := by
  simp only [partRows95,partOps95,WordField.rows,rows6123,rows6124,rows6125,rows6126,rows6127,rows6128,rows6129,rows6130,rows6131,rows6132,rows6133,rows6134,rows6135,rows6136,rows6137,rows6138,rows6139,rows6140,rows6141,rows6142,rows6143,rows6144,rows6145,rows6146,rows6147,rows6148,rows6149,rows6150,rows6151,rows6152,rows6153,rows6154,rows6155,rows6156,rows6157,rows6158,rows6159,rows6160,rows6161,rows6162,rows6163,rows6164,rows6165,rows6166,rows6167,rows6168,rows6169,rows6170,rows6171,rows6172,rows6173,rows6174,rows6175,rows6176,rows6177,rows6178,rows6179,rows6180,rows6181,rows6182,rows6183,rows6184,rows6185,rows6186,List.append_assoc,List.append_nil]
theorem partLength95 : partOps95.length=64 := by decide
theorem partStats95 : partRows95.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows95=322896 := by
  simp only [partRows95,List.length_append,MatrixRowBlocks.rows_weight_append,stats6123.1,stats6123.2,stats6124.1,stats6124.2,stats6125.1,stats6125.2,stats6126.1,stats6126.2,stats6127.1,stats6127.2,stats6128.1,stats6128.2,stats6129.1,stats6129.2,stats6130.1,stats6130.2,stats6131.1,stats6131.2,stats6132.1,stats6132.2,stats6133.1,stats6133.2,stats6134.1,stats6134.2,stats6135.1,stats6135.2,stats6136.1,stats6136.2,stats6137.1,stats6137.2,stats6138.1,stats6138.2,stats6139.1,stats6139.2,stats6140.1,stats6140.2,stats6141.1,stats6141.2,stats6142.1,stats6142.2,stats6143.1,stats6143.2,stats6144.1,stats6144.2,stats6145.1,stats6145.2,stats6146.1,stats6146.2,stats6147.1,stats6147.2,stats6148.1,stats6148.2,stats6149.1,stats6149.2,stats6150.1,stats6150.2,stats6151.1,stats6151.2,stats6152.1,stats6152.2,stats6153.1,stats6153.2,stats6154.1,stats6154.2,stats6155.1,stats6155.2,stats6156.1,stats6156.2,stats6157.1,stats6157.2,stats6158.1,stats6158.2,stats6159.1,stats6159.2,stats6160.1,stats6160.2,stats6161.1,stats6161.2,stats6162.1,stats6162.2,stats6163.1,stats6163.2,stats6164.1,stats6164.2,stats6165.1,stats6165.2,stats6166.1,stats6166.2,stats6167.1,stats6167.2,stats6168.1,stats6168.2,stats6169.1,stats6169.2,stats6170.1,stats6170.2,stats6171.1,stats6171.2,stats6172.1,stats6172.2,stats6173.1,stats6173.2,stats6174.1,stats6174.2,stats6175.1,stats6175.2,stats6176.1,stats6176.2,stats6177.1,stats6177.2,stats6178.1,stats6178.2,stats6179.1,stats6179.2,stats6180.1,stats6180.2,stats6181.1,stats6181.2,stats6182.1,stats6182.2,stats6183.1,stats6183.2,stats6184.1,stats6184.2,stats6185.1,stats6185.2,stats6186.1,stats6186.2]
  decide
end FrameHashControllerCheckedRows
