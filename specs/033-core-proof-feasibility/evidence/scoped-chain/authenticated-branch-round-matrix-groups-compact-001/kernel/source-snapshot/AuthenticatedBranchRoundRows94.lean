import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData95
import AuthenticatedBranchRoundInstructionMatrixData96
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6134 : actualRows6134=WordField.canonicalRows actualModulus 6134 (.shr 6133 31) := by core033_kernel_decide
theorem stats6134 : actualRows6134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6134=2892 := by core033_kernel_decide
theorem rows6135 : actualRows6135=WordField.canonicalRows actualModulus 6135 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6135 : actualRows6135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6135=2892 := by core033_kernel_decide
theorem rows6136 : actualRows6136=WordField.canonicalRows actualModulus 6136 (.bxor 6134 6135) := by core033_kernel_decide
theorem stats6136 : actualRows6136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6136=7428 := by core033_kernel_decide
theorem rows6137 : actualRows6137=WordField.canonicalRows actualModulus 6137 (.bnot 6136) := by core033_kernel_decide
theorem stats6137 : actualRows6137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6137=6276 := by core033_kernel_decide
theorem rows6138 : actualRows6138=WordField.canonicalRows actualModulus 6138 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6138 : actualRows6138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6138=2892 := by core033_kernel_decide
theorem rows6139 : actualRows6139=WordField.canonicalRows actualModulus 6139 (.badd 6137 6138) := by core033_kernel_decide
theorem stats6139 : actualRows6139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6139=5388 := by core033_kernel_decide
theorem rows6140 : actualRows6140=WordField.canonicalRows actualModulus 6140 (.bnot 6139) := by core033_kernel_decide
theorem stats6140 : actualRows6140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6140=6276 := by core033_kernel_decide
theorem rows6141 : actualRows6141=WordField.canonicalRows actualModulus 6141 (.band 6140 2651) := by core033_kernel_decide
theorem stats6141 : actualRows6141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6141=5124 := by core033_kernel_decide
theorem rows6142 : actualRows6142=WordField.canonicalRows actualModulus 6142 (.bxor 6115 6141) := by core033_kernel_decide
theorem stats6142 : actualRows6142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6142=7428 := by core033_kernel_decide
theorem rows6143 : actualRows6143=WordField.canonicalRows actualModulus 6143 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6143 : actualRows6143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6143=2892 := by core033_kernel_decide
theorem rows6144 : actualRows6144=WordField.canonicalRows actualModulus 6144 (.bxor 1299 6143) := by core033_kernel_decide
theorem stats6144 : actualRows6144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6144=7428 := by core033_kernel_decide
theorem rows6145 : actualRows6145=WordField.canonicalRows actualModulus 6145 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6145 : actualRows6145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6145=2820 := by core033_kernel_decide
theorem rows6146 : actualRows6146=WordField.canonicalRows actualModulus 6146 (.bnot 6145) := by core033_kernel_decide
theorem stats6146 : actualRows6146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6146=6276 := by core033_kernel_decide
theorem rows6147 : actualRows6147=WordField.canonicalRows actualModulus 6147 (.band 6144 6146) := by core033_kernel_decide
theorem stats6147 : actualRows6147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6147=5124 := by core033_kernel_decide
theorem rows6148 : actualRows6148=WordField.canonicalRows actualModulus 6148 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6148 : actualRows6148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6148=2892 := by core033_kernel_decide
theorem rows6149 : actualRows6149=WordField.canonicalRows actualModulus 6149 (.bxor 1299 6148) := by core033_kernel_decide
theorem stats6149 : actualRows6149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6149=7428 := by core033_kernel_decide
theorem rows6150 : actualRows6150=WordField.canonicalRows actualModulus 6150 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6150 : actualRows6150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6150=2820 := by core033_kernel_decide
theorem rows6151 : actualRows6151=WordField.canonicalRows actualModulus 6151 (.bnot 6150) := by core033_kernel_decide
theorem stats6151 : actualRows6151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6151=6276 := by core033_kernel_decide
theorem rows6152 : actualRows6152=WordField.canonicalRows actualModulus 6152 (.bxor 6149 6151) := by core033_kernel_decide
theorem stats6152 : actualRows6152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6152=7428 := by core033_kernel_decide
theorem rows6153 : actualRows6153=WordField.canonicalRows actualModulus 6153 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6153 : actualRows6153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6153=2892 := by core033_kernel_decide
theorem rows6154 : actualRows6154=WordField.canonicalRows actualModulus 6154 (.bxor 1299 6153) := by core033_kernel_decide
theorem stats6154 : actualRows6154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6154=7428 := by core033_kernel_decide
theorem rows6155 : actualRows6155=WordField.canonicalRows actualModulus 6155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6155 : actualRows6155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6155=2820 := by core033_kernel_decide
theorem rows6156 : actualRows6156=WordField.canonicalRows actualModulus 6156 (.bnot 6155) := by core033_kernel_decide
theorem stats6156 : actualRows6156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6156=6276 := by core033_kernel_decide
theorem rows6157 : actualRows6157=WordField.canonicalRows actualModulus 6157 (.badd 6154 6156) := by core033_kernel_decide
theorem stats6157 : actualRows6157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6157=5388 := by core033_kernel_decide
theorem rows6158 : actualRows6158=WordField.canonicalRows actualModulus 6158 (.bnot 6157) := by core033_kernel_decide
theorem stats6158 : actualRows6158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6158=6276 := by core033_kernel_decide
theorem rows6159 : actualRows6159=WordField.canonicalRows actualModulus 6159 (.band 6152 6158) := by core033_kernel_decide
theorem stats6159 : actualRows6159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6159=5124 := by core033_kernel_decide
theorem rows6160 : actualRows6160=WordField.canonicalRows actualModulus 6160 (.bxor 6147 6159) := by core033_kernel_decide
theorem stats6160 : actualRows6160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6160=7428 := by core033_kernel_decide
theorem rows6161 : actualRows6161=WordField.canonicalRows actualModulus 6161 (.shr 6160 31) := by core033_kernel_decide
theorem stats6161 : actualRows6161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6161=2892 := by core033_kernel_decide
theorem rows6162 : actualRows6162=WordField.canonicalRows actualModulus 6162 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6162 : actualRows6162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6162=2892 := by core033_kernel_decide
theorem rows6163 : actualRows6163=WordField.canonicalRows actualModulus 6163 (.bxor 6161 6162) := by core033_kernel_decide
theorem stats6163 : actualRows6163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6163=7428 := by core033_kernel_decide
theorem rows6164 : actualRows6164=WordField.canonicalRows actualModulus 6164 (.bnot 6163) := by core033_kernel_decide
theorem stats6164 : actualRows6164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6164=6276 := by core033_kernel_decide
theorem rows6165 : actualRows6165=WordField.canonicalRows actualModulus 6165 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6165 : actualRows6165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6165=2892 := by core033_kernel_decide
theorem rows6166 : actualRows6166=WordField.canonicalRows actualModulus 6166 (.badd 6164 6165) := by core033_kernel_decide
theorem stats6166 : actualRows6166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6166=5388 := by core033_kernel_decide
theorem rows6167 : actualRows6167=WordField.canonicalRows actualModulus 6167 (.band 6166 2846) := by core033_kernel_decide
theorem stats6167 : actualRows6167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6167=5124 := by core033_kernel_decide
theorem rows6168 : actualRows6168=WordField.canonicalRows actualModulus 6168 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6168 : actualRows6168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6168=2892 := by core033_kernel_decide
theorem rows6169 : actualRows6169=WordField.canonicalRows actualModulus 6169 (.bxor 1299 6168) := by core033_kernel_decide
theorem stats6169 : actualRows6169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6169=7428 := by core033_kernel_decide
theorem rows6170 : actualRows6170=WordField.canonicalRows actualModulus 6170 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6170 : actualRows6170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6170=2820 := by core033_kernel_decide
theorem rows6171 : actualRows6171=WordField.canonicalRows actualModulus 6171 (.bnot 6170) := by core033_kernel_decide
theorem stats6171 : actualRows6171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6171=6276 := by core033_kernel_decide
theorem rows6172 : actualRows6172=WordField.canonicalRows actualModulus 6172 (.band 6169 6171) := by core033_kernel_decide
theorem stats6172 : actualRows6172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6172=5124 := by core033_kernel_decide
theorem rows6173 : actualRows6173=WordField.canonicalRows actualModulus 6173 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6173 : actualRows6173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6173=2892 := by core033_kernel_decide
theorem rows6174 : actualRows6174=WordField.canonicalRows actualModulus 6174 (.bxor 1299 6173) := by core033_kernel_decide
theorem stats6174 : actualRows6174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6174=7428 := by core033_kernel_decide
theorem rows6175 : actualRows6175=WordField.canonicalRows actualModulus 6175 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6175 : actualRows6175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6175=2820 := by core033_kernel_decide
theorem rows6176 : actualRows6176=WordField.canonicalRows actualModulus 6176 (.bnot 6175) := by core033_kernel_decide
theorem stats6176 : actualRows6176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6176=6276 := by core033_kernel_decide
theorem rows6177 : actualRows6177=WordField.canonicalRows actualModulus 6177 (.bxor 6174 6176) := by core033_kernel_decide
theorem stats6177 : actualRows6177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6177=7428 := by core033_kernel_decide
theorem rows6178 : actualRows6178=WordField.canonicalRows actualModulus 6178 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6178 : actualRows6178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6178=2892 := by core033_kernel_decide
theorem rows6179 : actualRows6179=WordField.canonicalRows actualModulus 6179 (.bxor 1299 6178) := by core033_kernel_decide
theorem stats6179 : actualRows6179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6179=7428 := by core033_kernel_decide
theorem rows6180 : actualRows6180=WordField.canonicalRows actualModulus 6180 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6180 : actualRows6180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6180=2820 := by core033_kernel_decide
theorem rows6181 : actualRows6181=WordField.canonicalRows actualModulus 6181 (.bnot 6180) := by core033_kernel_decide
theorem stats6181 : actualRows6181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6181=6276 := by core033_kernel_decide
theorem rows6182 : actualRows6182=WordField.canonicalRows actualModulus 6182 (.badd 6179 6181) := by core033_kernel_decide
theorem stats6182 : actualRows6182.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6182=5388 := by core033_kernel_decide
theorem rows6183 : actualRows6183=WordField.canonicalRows actualModulus 6183 (.bnot 6182) := by core033_kernel_decide
theorem stats6183 : actualRows6183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6183=6276 := by core033_kernel_decide
theorem rows6184 : actualRows6184=WordField.canonicalRows actualModulus 6184 (.band 6177 6183) := by core033_kernel_decide
theorem stats6184 : actualRows6184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6184=5124 := by core033_kernel_decide
theorem rows6185 : actualRows6185=WordField.canonicalRows actualModulus 6185 (.bxor 6172 6184) := by core033_kernel_decide
theorem stats6185 : actualRows6185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6185=7428 := by core033_kernel_decide
theorem rows6186 : actualRows6186=WordField.canonicalRows actualModulus 6186 (.shr 6185 31) := by core033_kernel_decide
theorem stats6186 : actualRows6186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6186=2892 := by core033_kernel_decide
theorem rows6187 : actualRows6187=WordField.canonicalRows actualModulus 6187 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6187 : actualRows6187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6187=2892 := by core033_kernel_decide
theorem rows6188 : actualRows6188=WordField.canonicalRows actualModulus 6188 (.bxor 6186 6187) := by core033_kernel_decide
theorem stats6188 : actualRows6188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6188=7428 := by core033_kernel_decide
theorem rows6189 : actualRows6189=WordField.canonicalRows actualModulus 6189 (.bnot 6188) := by core033_kernel_decide
theorem stats6189 : actualRows6189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6189=6276 := by core033_kernel_decide
theorem rows6190 : actualRows6190=WordField.canonicalRows actualModulus 6190 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6190 : actualRows6190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6190=2892 := by core033_kernel_decide
theorem rows6191 : actualRows6191=WordField.canonicalRows actualModulus 6191 (.badd 6189 6190) := by core033_kernel_decide
theorem stats6191 : actualRows6191.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6191=5388 := by core033_kernel_decide
theorem rows6192 : actualRows6192=WordField.canonicalRows actualModulus 6192 (.bnot 6191) := by core033_kernel_decide
theorem stats6192 : actualRows6192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6192=6276 := by core033_kernel_decide
theorem rows6193 : actualRows6193=WordField.canonicalRows actualModulus 6193 (.band 6192 2654) := by core033_kernel_decide
theorem stats6193 : actualRows6193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6193=5124 := by core033_kernel_decide
theorem rows6194 : actualRows6194=WordField.canonicalRows actualModulus 6194 (.bxor 6167 6193) := by core033_kernel_decide
theorem stats6194 : actualRows6194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6194=7428 := by core033_kernel_decide
theorem rows6195 : actualRows6195=WordField.canonicalRows actualModulus 6195 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats6195 : actualRows6195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6195=2892 := by core033_kernel_decide
theorem rows6196 : actualRows6196=WordField.canonicalRows actualModulus 6196 (.bxor 1299 6195) := by core033_kernel_decide
theorem stats6196 : actualRows6196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6196=7428 := by core033_kernel_decide
theorem rows6197 : actualRows6197=WordField.canonicalRows actualModulus 6197 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6197 : actualRows6197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6197=2820 := by core033_kernel_decide
def partRows94 : List R1CS.Row := actualRows6134++actualRows6135++actualRows6136++actualRows6137++actualRows6138++actualRows6139++actualRows6140++actualRows6141++actualRows6142++actualRows6143++actualRows6144++actualRows6145++actualRows6146++actualRows6147++actualRows6148++actualRows6149++actualRows6150++actualRows6151++actualRows6152++actualRows6153++actualRows6154++actualRows6155++actualRows6156++actualRows6157++actualRows6158++actualRows6159++actualRows6160++actualRows6161++actualRows6162++actualRows6163++actualRows6164++actualRows6165++actualRows6166++actualRows6167++actualRows6168++actualRows6169++actualRows6170++actualRows6171++actualRows6172++actualRows6173++actualRows6174++actualRows6175++actualRows6176++actualRows6177++actualRows6178++actualRows6179++actualRows6180++actualRows6181++actualRows6182++actualRows6183++actualRows6184++actualRows6185++actualRows6186++actualRows6187++actualRows6188++actualRows6189++actualRows6190++actualRows6191++actualRows6192++actualRows6193++actualRows6194++actualRows6195++actualRows6196++actualRows6197
def partOps94 : List WordIR.Op := [.shr 6133 31,.literal (BitVec.ofNat 32 1),.bxor 6134 6135,.bnot 6136,.literal (BitVec.ofNat 32 1),.badd 6137 6138,.bnot 6139,.band 6140 2651,.bxor 6115 6141,.literal (BitVec.ofNat 32 2),.bxor 1299 6143,.literal (BitVec.ofNat 32 0),.bnot 6145,.band 6144 6146,.literal (BitVec.ofNat 32 2),.bxor 1299 6148,.literal (BitVec.ofNat 32 0),.bnot 6150,.bxor 6149 6151,.literal (BitVec.ofNat 32 2),.bxor 1299 6153,.literal (BitVec.ofNat 32 0),.bnot 6155,.badd 6154 6156,.bnot 6157,.band 6152 6158,.bxor 6147 6159,.shr 6160 31,.literal (BitVec.ofNat 32 1),.bxor 6161 6162,.bnot 6163,.literal (BitVec.ofNat 32 1),.badd 6164 6165,.band 6166 2846,.literal (BitVec.ofNat 32 2),.bxor 1299 6168,.literal (BitVec.ofNat 32 0),.bnot 6170,.band 6169 6171,.literal (BitVec.ofNat 32 2),.bxor 1299 6173,.literal (BitVec.ofNat 32 0),.bnot 6175,.bxor 6174 6176,.literal (BitVec.ofNat 32 2),.bxor 1299 6178,.literal (BitVec.ofNat 32 0),.bnot 6180,.badd 6179 6181,.bnot 6182,.band 6177 6183,.bxor 6172 6184,.shr 6185 31,.literal (BitVec.ofNat 32 1),.bxor 6186 6187,.bnot 6188,.literal (BitVec.ofNat 32 1),.badd 6189 6190,.bnot 6191,.band 6192 2654,.bxor 6167 6193,.literal (BitVec.ofNat 32 2),.bxor 1299 6195,.literal (BitVec.ofNat 32 0)]
theorem partExact94 : partRows94=WordField.rows actualModulus 6134 partOps94 := by
  simp only [partRows94,partOps94,WordField.rows,rows6134,rows6135,rows6136,rows6137,rows6138,rows6139,rows6140,rows6141,rows6142,rows6143,rows6144,rows6145,rows6146,rows6147,rows6148,rows6149,rows6150,rows6151,rows6152,rows6153,rows6154,rows6155,rows6156,rows6157,rows6158,rows6159,rows6160,rows6161,rows6162,rows6163,rows6164,rows6165,rows6166,rows6167,rows6168,rows6169,rows6170,rows6171,rows6172,rows6173,rows6174,rows6175,rows6176,rows6177,rows6178,rows6179,rows6180,rows6181,rows6182,rows6183,rows6184,rows6185,rows6186,rows6187,rows6188,rows6189,rows6190,rows6191,rows6192,rows6193,rows6194,rows6195,rows6196,rows6197,List.append_assoc,List.append_nil]
theorem partLength94 : partOps94.length=64 := by decide
theorem partStats94 : partRows94.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows94=329256 := by
  simp only [partRows94,List.length_append,MatrixRowBlocks.rows_weight_append,stats6134.1,stats6134.2,stats6135.1,stats6135.2,stats6136.1,stats6136.2,stats6137.1,stats6137.2,stats6138.1,stats6138.2,stats6139.1,stats6139.2,stats6140.1,stats6140.2,stats6141.1,stats6141.2,stats6142.1,stats6142.2,stats6143.1,stats6143.2,stats6144.1,stats6144.2,stats6145.1,stats6145.2,stats6146.1,stats6146.2,stats6147.1,stats6147.2,stats6148.1,stats6148.2,stats6149.1,stats6149.2,stats6150.1,stats6150.2,stats6151.1,stats6151.2,stats6152.1,stats6152.2,stats6153.1,stats6153.2,stats6154.1,stats6154.2,stats6155.1,stats6155.2,stats6156.1,stats6156.2,stats6157.1,stats6157.2,stats6158.1,stats6158.2,stats6159.1,stats6159.2,stats6160.1,stats6160.2,stats6161.1,stats6161.2,stats6162.1,stats6162.2,stats6163.1,stats6163.2,stats6164.1,stats6164.2,stats6165.1,stats6165.2,stats6166.1,stats6166.2,stats6167.1,stats6167.2,stats6168.1,stats6168.2,stats6169.1,stats6169.2,stats6170.1,stats6170.2,stats6171.1,stats6171.2,stats6172.1,stats6172.2,stats6173.1,stats6173.2,stats6174.1,stats6174.2,stats6175.1,stats6175.2,stats6176.1,stats6176.2,stats6177.1,stats6177.2,stats6178.1,stats6178.2,stats6179.1,stats6179.2,stats6180.1,stats6180.2,stats6181.1,stats6181.2,stats6182.1,stats6182.2,stats6183.1,stats6183.2,stats6184.1,stats6184.2,stats6185.1,stats6185.2,stats6186.1,stats6186.2,stats6187.1,stats6187.2,stats6188.1,stats6188.2,stats6189.1,stats6189.2,stats6190.1,stats6190.2,stats6191.1,stats6191.2,stats6192.1,stats6192.2,stats6193.1,stats6193.2,stats6194.1,stats6194.2,stats6195.1,stats6195.2,stats6196.1,stats6196.2,stats6197.1,stats6197.2]
  decide
end AuthenticatedBranchRoundCheckedRows
