import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData95
import PairedPathRoundInstructionMatrixData96
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6112 : actualRows6112=WordField.canonicalRows actualModulus 6112 (.bxor 6099 6111) := by core033_kernel_decide
theorem stats6112 : actualRows6112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6112=7428 := by core033_kernel_decide
theorem rows6113 : actualRows6113=WordField.canonicalRows actualModulus 6113 (.shr 6112 31) := by core033_kernel_decide
theorem stats6113 : actualRows6113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6113=2892 := by core033_kernel_decide
theorem rows6114 : actualRows6114=WordField.canonicalRows actualModulus 6114 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6114 : actualRows6114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6114=2892 := by core033_kernel_decide
theorem rows6115 : actualRows6115=WordField.canonicalRows actualModulus 6115 (.bxor 6113 6114) := by core033_kernel_decide
theorem stats6115 : actualRows6115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6115=7428 := by core033_kernel_decide
theorem rows6116 : actualRows6116=WordField.canonicalRows actualModulus 6116 (.bnot 6115) := by core033_kernel_decide
theorem stats6116 : actualRows6116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6116=6276 := by core033_kernel_decide
theorem rows6117 : actualRows6117=WordField.canonicalRows actualModulus 6117 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6117 : actualRows6117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6117=2892 := by core033_kernel_decide
theorem rows6118 : actualRows6118=WordField.canonicalRows actualModulus 6118 (.badd 6116 6117) := by core033_kernel_decide
theorem stats6118 : actualRows6118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6118=5388 := by core033_kernel_decide
theorem rows6119 : actualRows6119=WordField.canonicalRows actualModulus 6119 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats6119 : actualRows6119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6119=2964 := by core033_kernel_decide
theorem rows6120 : actualRows6120=WordField.canonicalRows actualModulus 6120 (.band 6118 6119) := by core033_kernel_decide
theorem stats6120 : actualRows6120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6120=5124 := by core033_kernel_decide
theorem rows6121 : actualRows6121=WordField.canonicalRows actualModulus 6121 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6121 : actualRows6121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6121=2892 := by core033_kernel_decide
theorem rows6122 : actualRows6122=WordField.canonicalRows actualModulus 6122 (.bxor 616 6121) := by core033_kernel_decide
theorem stats6122 : actualRows6122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6122=7428 := by core033_kernel_decide
theorem rows6123 : actualRows6123=WordField.canonicalRows actualModulus 6123 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6123 : actualRows6123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6123=2820 := by core033_kernel_decide
theorem rows6124 : actualRows6124=WordField.canonicalRows actualModulus 6124 (.bnot 6123) := by core033_kernel_decide
theorem stats6124 : actualRows6124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6124=6276 := by core033_kernel_decide
theorem rows6125 : actualRows6125=WordField.canonicalRows actualModulus 6125 (.band 6122 6124) := by core033_kernel_decide
theorem stats6125 : actualRows6125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6125=5124 := by core033_kernel_decide
theorem rows6126 : actualRows6126=WordField.canonicalRows actualModulus 6126 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6126 : actualRows6126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6126=2892 := by core033_kernel_decide
theorem rows6127 : actualRows6127=WordField.canonicalRows actualModulus 6127 (.bxor 616 6126) := by core033_kernel_decide
theorem stats6127 : actualRows6127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6127=7428 := by core033_kernel_decide
theorem rows6128 : actualRows6128=WordField.canonicalRows actualModulus 6128 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6128 : actualRows6128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6128=2820 := by core033_kernel_decide
theorem rows6129 : actualRows6129=WordField.canonicalRows actualModulus 6129 (.bnot 6128) := by core033_kernel_decide
theorem stats6129 : actualRows6129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6129=6276 := by core033_kernel_decide
theorem rows6130 : actualRows6130=WordField.canonicalRows actualModulus 6130 (.bxor 6127 6129) := by core033_kernel_decide
theorem stats6130 : actualRows6130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6130=7428 := by core033_kernel_decide
theorem rows6131 : actualRows6131=WordField.canonicalRows actualModulus 6131 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6131 : actualRows6131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6131=2892 := by core033_kernel_decide
theorem rows6132 : actualRows6132=WordField.canonicalRows actualModulus 6132 (.bxor 616 6131) := by core033_kernel_decide
theorem stats6132 : actualRows6132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6132=7428 := by core033_kernel_decide
theorem rows6133 : actualRows6133=WordField.canonicalRows actualModulus 6133 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6133 : actualRows6133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6133=2820 := by core033_kernel_decide
theorem rows6134 : actualRows6134=WordField.canonicalRows actualModulus 6134 (.bnot 6133) := by core033_kernel_decide
theorem stats6134 : actualRows6134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6134=6276 := by core033_kernel_decide
theorem rows6135 : actualRows6135=WordField.canonicalRows actualModulus 6135 (.badd 6132 6134) := by core033_kernel_decide
theorem stats6135 : actualRows6135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6135=5388 := by core033_kernel_decide
theorem rows6136 : actualRows6136=WordField.canonicalRows actualModulus 6136 (.bnot 6135) := by core033_kernel_decide
theorem stats6136 : actualRows6136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6136=6276 := by core033_kernel_decide
theorem rows6137 : actualRows6137=WordField.canonicalRows actualModulus 6137 (.band 6130 6136) := by core033_kernel_decide
theorem stats6137 : actualRows6137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6137=5124 := by core033_kernel_decide
theorem rows6138 : actualRows6138=WordField.canonicalRows actualModulus 6138 (.bxor 6125 6137) := by core033_kernel_decide
theorem stats6138 : actualRows6138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6138=7428 := by core033_kernel_decide
theorem rows6139 : actualRows6139=WordField.canonicalRows actualModulus 6139 (.shr 6138 31) := by core033_kernel_decide
theorem stats6139 : actualRows6139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6139=2892 := by core033_kernel_decide
theorem rows6140 : actualRows6140=WordField.canonicalRows actualModulus 6140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6140 : actualRows6140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6140=2892 := by core033_kernel_decide
theorem rows6141 : actualRows6141=WordField.canonicalRows actualModulus 6141 (.bxor 6139 6140) := by core033_kernel_decide
theorem stats6141 : actualRows6141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6141=7428 := by core033_kernel_decide
theorem rows6142 : actualRows6142=WordField.canonicalRows actualModulus 6142 (.bnot 6141) := by core033_kernel_decide
theorem stats6142 : actualRows6142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6142=6276 := by core033_kernel_decide
theorem rows6143 : actualRows6143=WordField.canonicalRows actualModulus 6143 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6143 : actualRows6143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6143=2892 := by core033_kernel_decide
theorem rows6144 : actualRows6144=WordField.canonicalRows actualModulus 6144 (.badd 6142 6143) := by core033_kernel_decide
theorem stats6144 : actualRows6144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6144=5388 := by core033_kernel_decide
theorem rows6145 : actualRows6145=WordField.canonicalRows actualModulus 6145 (.bnot 6144) := by core033_kernel_decide
theorem stats6145 : actualRows6145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6145=6276 := by core033_kernel_decide
theorem rows6146 : actualRows6146=WordField.canonicalRows actualModulus 6146 (.band 6145 2007) := by core033_kernel_decide
theorem stats6146 : actualRows6146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6146=5124 := by core033_kernel_decide
theorem rows6147 : actualRows6147=WordField.canonicalRows actualModulus 6147 (.bxor 6120 6146) := by core033_kernel_decide
theorem stats6147 : actualRows6147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6147=7428 := by core033_kernel_decide
theorem rows6148 : actualRows6148=WordField.canonicalRows actualModulus 6148 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6148 : actualRows6148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6148=2892 := by core033_kernel_decide
theorem rows6149 : actualRows6149=WordField.canonicalRows actualModulus 6149 (.bxor 616 6148) := by core033_kernel_decide
theorem stats6149 : actualRows6149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6149=7428 := by core033_kernel_decide
theorem rows6150 : actualRows6150=WordField.canonicalRows actualModulus 6150 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6150 : actualRows6150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6150=2820 := by core033_kernel_decide
theorem rows6151 : actualRows6151=WordField.canonicalRows actualModulus 6151 (.bnot 6150) := by core033_kernel_decide
theorem stats6151 : actualRows6151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6151=6276 := by core033_kernel_decide
theorem rows6152 : actualRows6152=WordField.canonicalRows actualModulus 6152 (.band 6149 6151) := by core033_kernel_decide
theorem stats6152 : actualRows6152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6152=5124 := by core033_kernel_decide
theorem rows6153 : actualRows6153=WordField.canonicalRows actualModulus 6153 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6153 : actualRows6153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6153=2892 := by core033_kernel_decide
theorem rows6154 : actualRows6154=WordField.canonicalRows actualModulus 6154 (.bxor 616 6153) := by core033_kernel_decide
theorem stats6154 : actualRows6154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6154=7428 := by core033_kernel_decide
theorem rows6155 : actualRows6155=WordField.canonicalRows actualModulus 6155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6155 : actualRows6155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6155=2820 := by core033_kernel_decide
theorem rows6156 : actualRows6156=WordField.canonicalRows actualModulus 6156 (.bnot 6155) := by core033_kernel_decide
theorem stats6156 : actualRows6156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6156=6276 := by core033_kernel_decide
theorem rows6157 : actualRows6157=WordField.canonicalRows actualModulus 6157 (.bxor 6154 6156) := by core033_kernel_decide
theorem stats6157 : actualRows6157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6157=7428 := by core033_kernel_decide
theorem rows6158 : actualRows6158=WordField.canonicalRows actualModulus 6158 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6158 : actualRows6158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6158=2892 := by core033_kernel_decide
theorem rows6159 : actualRows6159=WordField.canonicalRows actualModulus 6159 (.bxor 616 6158) := by core033_kernel_decide
theorem stats6159 : actualRows6159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6159=7428 := by core033_kernel_decide
theorem rows6160 : actualRows6160=WordField.canonicalRows actualModulus 6160 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6160 : actualRows6160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6160=2820 := by core033_kernel_decide
theorem rows6161 : actualRows6161=WordField.canonicalRows actualModulus 6161 (.bnot 6160) := by core033_kernel_decide
theorem stats6161 : actualRows6161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6161=6276 := by core033_kernel_decide
theorem rows6162 : actualRows6162=WordField.canonicalRows actualModulus 6162 (.badd 6159 6161) := by core033_kernel_decide
theorem stats6162 : actualRows6162.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6162=5388 := by core033_kernel_decide
theorem rows6163 : actualRows6163=WordField.canonicalRows actualModulus 6163 (.bnot 6162) := by core033_kernel_decide
theorem stats6163 : actualRows6163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6163=6276 := by core033_kernel_decide
theorem rows6164 : actualRows6164=WordField.canonicalRows actualModulus 6164 (.band 6157 6163) := by core033_kernel_decide
theorem stats6164 : actualRows6164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6164=5124 := by core033_kernel_decide
theorem rows6165 : actualRows6165=WordField.canonicalRows actualModulus 6165 (.bxor 6152 6164) := by core033_kernel_decide
theorem stats6165 : actualRows6165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6165=7428 := by core033_kernel_decide
theorem rows6166 : actualRows6166=WordField.canonicalRows actualModulus 6166 (.shr 6165 31) := by core033_kernel_decide
theorem stats6166 : actualRows6166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6166=2892 := by core033_kernel_decide
theorem rows6167 : actualRows6167=WordField.canonicalRows actualModulus 6167 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6167 : actualRows6167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6167=2892 := by core033_kernel_decide
theorem rows6168 : actualRows6168=WordField.canonicalRows actualModulus 6168 (.bxor 6166 6167) := by core033_kernel_decide
theorem stats6168 : actualRows6168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6168=7428 := by core033_kernel_decide
theorem rows6169 : actualRows6169=WordField.canonicalRows actualModulus 6169 (.bnot 6168) := by core033_kernel_decide
theorem stats6169 : actualRows6169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6169=6276 := by core033_kernel_decide
theorem rows6170 : actualRows6170=WordField.canonicalRows actualModulus 6170 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6170 : actualRows6170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6170=2892 := by core033_kernel_decide
theorem rows6171 : actualRows6171=WordField.canonicalRows actualModulus 6171 (.badd 6169 6170) := by core033_kernel_decide
theorem stats6171 : actualRows6171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6171=5388 := by core033_kernel_decide
theorem rows6172 : actualRows6172=WordField.canonicalRows actualModulus 6172 (.literal (BitVec.ofNat 32 152)) := by core033_kernel_decide
theorem stats6172 : actualRows6172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6172=3036 := by core033_kernel_decide
theorem rows6173 : actualRows6173=WordField.canonicalRows actualModulus 6173 (.band 6171 6172) := by core033_kernel_decide
theorem stats6173 : actualRows6173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6173=5124 := by core033_kernel_decide
theorem rows6174 : actualRows6174=WordField.canonicalRows actualModulus 6174 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6174 : actualRows6174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6174=2892 := by core033_kernel_decide
theorem rows6175 : actualRows6175=WordField.canonicalRows actualModulus 6175 (.bxor 616 6174) := by core033_kernel_decide
theorem stats6175 : actualRows6175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6175=7428 := by core033_kernel_decide
def partRows94 : List R1CS.Row := actualRows6112++actualRows6113++actualRows6114++actualRows6115++actualRows6116++actualRows6117++actualRows6118++actualRows6119++actualRows6120++actualRows6121++actualRows6122++actualRows6123++actualRows6124++actualRows6125++actualRows6126++actualRows6127++actualRows6128++actualRows6129++actualRows6130++actualRows6131++actualRows6132++actualRows6133++actualRows6134++actualRows6135++actualRows6136++actualRows6137++actualRows6138++actualRows6139++actualRows6140++actualRows6141++actualRows6142++actualRows6143++actualRows6144++actualRows6145++actualRows6146++actualRows6147++actualRows6148++actualRows6149++actualRows6150++actualRows6151++actualRows6152++actualRows6153++actualRows6154++actualRows6155++actualRows6156++actualRows6157++actualRows6158++actualRows6159++actualRows6160++actualRows6161++actualRows6162++actualRows6163++actualRows6164++actualRows6165++actualRows6166++actualRows6167++actualRows6168++actualRows6169++actualRows6170++actualRows6171++actualRows6172++actualRows6173++actualRows6174++actualRows6175
def partOps94 : List WordIR.Op := [.bxor 6099 6111,.shr 6112 31,.literal (BitVec.ofNat 32 1),.bxor 6113 6114,.bnot 6115,.literal (BitVec.ofNat 32 1),.badd 6116 6117,.literal (BitVec.ofNat 32 3),.band 6118 6119,.literal (BitVec.ofNat 32 2),.bxor 616 6121,.literal (BitVec.ofNat 32 0),.bnot 6123,.band 6122 6124,.literal (BitVec.ofNat 32 2),.bxor 616 6126,.literal (BitVec.ofNat 32 0),.bnot 6128,.bxor 6127 6129,.literal (BitVec.ofNat 32 2),.bxor 616 6131,.literal (BitVec.ofNat 32 0),.bnot 6133,.badd 6132 6134,.bnot 6135,.band 6130 6136,.bxor 6125 6137,.shr 6138 31,.literal (BitVec.ofNat 32 1),.bxor 6139 6140,.bnot 6141,.literal (BitVec.ofNat 32 1),.badd 6142 6143,.bnot 6144,.band 6145 2007,.bxor 6120 6146,.literal (BitVec.ofNat 32 2),.bxor 616 6148,.literal (BitVec.ofNat 32 0),.bnot 6150,.band 6149 6151,.literal (BitVec.ofNat 32 2),.bxor 616 6153,.literal (BitVec.ofNat 32 0),.bnot 6155,.bxor 6154 6156,.literal (BitVec.ofNat 32 2),.bxor 616 6158,.literal (BitVec.ofNat 32 0),.bnot 6160,.badd 6159 6161,.bnot 6162,.band 6157 6163,.bxor 6152 6164,.shr 6165 31,.literal (BitVec.ofNat 32 1),.bxor 6166 6167,.bnot 6168,.literal (BitVec.ofNat 32 1),.badd 6169 6170,.literal (BitVec.ofNat 32 152),.band 6171 6172,.literal (BitVec.ofNat 32 2),.bxor 616 6174]
theorem partExact94 : partRows94=WordField.rows actualModulus 6112 partOps94 := by
  simp only [partRows94,partOps94,WordField.rows,rows6112,rows6113,rows6114,rows6115,rows6116,rows6117,rows6118,rows6119,rows6120,rows6121,rows6122,rows6123,rows6124,rows6125,rows6126,rows6127,rows6128,rows6129,rows6130,rows6131,rows6132,rows6133,rows6134,rows6135,rows6136,rows6137,rows6138,rows6139,rows6140,rows6141,rows6142,rows6143,rows6144,rows6145,rows6146,rows6147,rows6148,rows6149,rows6150,rows6151,rows6152,rows6153,rows6154,rows6155,rows6156,rows6157,rows6158,rows6159,rows6160,rows6161,rows6162,rows6163,rows6164,rows6165,rows6166,rows6167,rows6168,rows6169,rows6170,rows6171,rows6172,rows6173,rows6174,rows6175,List.append_assoc,List.append_nil]
theorem partLength94 : partOps94.length=64 := by decide
theorem partStats94 : partRows94.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows94=326160 := by
  simp only [partRows94,List.length_append,MatrixRowBlocks.rows_weight_append,stats6112.1,stats6112.2,stats6113.1,stats6113.2,stats6114.1,stats6114.2,stats6115.1,stats6115.2,stats6116.1,stats6116.2,stats6117.1,stats6117.2,stats6118.1,stats6118.2,stats6119.1,stats6119.2,stats6120.1,stats6120.2,stats6121.1,stats6121.2,stats6122.1,stats6122.2,stats6123.1,stats6123.2,stats6124.1,stats6124.2,stats6125.1,stats6125.2,stats6126.1,stats6126.2,stats6127.1,stats6127.2,stats6128.1,stats6128.2,stats6129.1,stats6129.2,stats6130.1,stats6130.2,stats6131.1,stats6131.2,stats6132.1,stats6132.2,stats6133.1,stats6133.2,stats6134.1,stats6134.2,stats6135.1,stats6135.2,stats6136.1,stats6136.2,stats6137.1,stats6137.2,stats6138.1,stats6138.2,stats6139.1,stats6139.2,stats6140.1,stats6140.2,stats6141.1,stats6141.2,stats6142.1,stats6142.2,stats6143.1,stats6143.2,stats6144.1,stats6144.2,stats6145.1,stats6145.2,stats6146.1,stats6146.2,stats6147.1,stats6147.2,stats6148.1,stats6148.2,stats6149.1,stats6149.2,stats6150.1,stats6150.2,stats6151.1,stats6151.2,stats6152.1,stats6152.2,stats6153.1,stats6153.2,stats6154.1,stats6154.2,stats6155.1,stats6155.2,stats6156.1,stats6156.2,stats6157.1,stats6157.2,stats6158.1,stats6158.2,stats6159.1,stats6159.2,stats6160.1,stats6160.2,stats6161.1,stats6161.2,stats6162.1,stats6162.2,stats6163.1,stats6163.2,stats6164.1,stats6164.2,stats6165.1,stats6165.2,stats6166.1,stats6166.2,stats6167.1,stats6167.2,stats6168.1,stats6168.2,stats6169.1,stats6169.2,stats6170.1,stats6170.2,stats6171.1,stats6171.2,stats6172.1,stats6172.2,stats6173.1,stats6173.2,stats6174.1,stats6174.2,stats6175.1,stats6175.2]
  decide
end QuotedPairedPathRoundCheckedRows
