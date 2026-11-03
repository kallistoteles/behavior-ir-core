import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData33
import PairedPathRoundInstructionMatrixData34
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2144 : actualRows2144=WordField.canonicalRows actualModulus 2144 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2144 : actualRows2144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2144=3396 := by core033_kernel_decide
theorem rows2145 : actualRows2145=WordField.canonicalRows actualModulus 2145 (.band 2143 2144) := by core033_kernel_decide
theorem stats2145 : actualRows2145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2145=5124 := by core033_kernel_decide
theorem rows2146 : actualRows2146=WordField.canonicalRows actualModulus 2146 (.shr 1663 0) := by core033_kernel_decide
theorem stats2146 : actualRows2146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2146=5124 := by core033_kernel_decide
theorem rows2147 : actualRows2147=WordField.canonicalRows actualModulus 2147 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2147 : actualRows2147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2147=3396 := by core033_kernel_decide
theorem rows2148 : actualRows2148=WordField.canonicalRows actualModulus 2148 (.band 2146 2147) := by core033_kernel_decide
theorem stats2148 : actualRows2148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2148=5124 := by core033_kernel_decide
theorem rows2149 : actualRows2149=WordField.canonicalRows actualModulus 2149 (.shr 1663 8) := by core033_kernel_decide
theorem stats2149 : actualRows2149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2149=4548 := by core033_kernel_decide
theorem rows2150 : actualRows2150=WordField.canonicalRows actualModulus 2150 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2150 : actualRows2150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2150=3396 := by core033_kernel_decide
theorem rows2151 : actualRows2151=WordField.canonicalRows actualModulus 2151 (.band 2149 2150) := by core033_kernel_decide
theorem stats2151 : actualRows2151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2151=5124 := by core033_kernel_decide
theorem rows2152 : actualRows2152=WordField.canonicalRows actualModulus 2152 (.shr 1663 16) := by core033_kernel_decide
theorem stats2152 : actualRows2152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2152=3972 := by core033_kernel_decide
theorem rows2153 : actualRows2153=WordField.canonicalRows actualModulus 2153 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2153 : actualRows2153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2153=3396 := by core033_kernel_decide
theorem rows2154 : actualRows2154=WordField.canonicalRows actualModulus 2154 (.band 2152 2153) := by core033_kernel_decide
theorem stats2154 : actualRows2154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2154=5124 := by core033_kernel_decide
theorem rows2155 : actualRows2155=WordField.canonicalRows actualModulus 2155 (.shr 1663 24) := by core033_kernel_decide
theorem stats2155 : actualRows2155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2155=3396 := by core033_kernel_decide
theorem rows2156 : actualRows2156=WordField.canonicalRows actualModulus 2156 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2156 : actualRows2156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2156=3396 := by core033_kernel_decide
theorem rows2157 : actualRows2157=WordField.canonicalRows actualModulus 2157 (.band 2155 2156) := by core033_kernel_decide
theorem stats2157 : actualRows2157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2157=5124 := by core033_kernel_decide
theorem rows2158 : actualRows2158=WordField.canonicalRows actualModulus 2158 (.shr 1789 0) := by core033_kernel_decide
theorem stats2158 : actualRows2158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2158=5124 := by core033_kernel_decide
theorem rows2159 : actualRows2159=WordField.canonicalRows actualModulus 2159 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2159 : actualRows2159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2159=3396 := by core033_kernel_decide
theorem rows2160 : actualRows2160=WordField.canonicalRows actualModulus 2160 (.band 2158 2159) := by core033_kernel_decide
theorem stats2160 : actualRows2160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2160=5124 := by core033_kernel_decide
theorem rows2161 : actualRows2161=WordField.canonicalRows actualModulus 2161 (.shr 1790 0) := by core033_kernel_decide
theorem stats2161 : actualRows2161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2161=5124 := by core033_kernel_decide
theorem rows2162 : actualRows2162=WordField.canonicalRows actualModulus 2162 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2162 : actualRows2162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2162=3396 := by core033_kernel_decide
theorem rows2163 : actualRows2163=WordField.canonicalRows actualModulus 2163 (.band 2161 2162) := by core033_kernel_decide
theorem stats2163 : actualRows2163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2163=5124 := by core033_kernel_decide
theorem rows2164 : actualRows2164=WordField.canonicalRows actualModulus 2164 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2164 : actualRows2164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2164=2820 := by core033_kernel_decide
theorem rows2165 : actualRows2165=WordField.canonicalRows actualModulus 2165 (.bnot 2164) := by core033_kernel_decide
theorem stats2165 : actualRows2165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2165=6276 := by core033_kernel_decide
theorem rows2166 : actualRows2166=WordField.canonicalRows actualModulus 2166 (.band 627 2165) := by core033_kernel_decide
theorem stats2166 : actualRows2166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2166=5124 := by core033_kernel_decide
theorem rows2167 : actualRows2167=WordField.canonicalRows actualModulus 2167 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2167 : actualRows2167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2167=2820 := by core033_kernel_decide
theorem rows2168 : actualRows2168=WordField.canonicalRows actualModulus 2168 (.bnot 2167) := by core033_kernel_decide
theorem stats2168 : actualRows2168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2168=6276 := by core033_kernel_decide
theorem rows2169 : actualRows2169=WordField.canonicalRows actualModulus 2169 (.bxor 627 2168) := by core033_kernel_decide
theorem stats2169 : actualRows2169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2169=7428 := by core033_kernel_decide
theorem rows2170 : actualRows2170=WordField.canonicalRows actualModulus 2170 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2170 : actualRows2170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2170=2820 := by core033_kernel_decide
theorem rows2171 : actualRows2171=WordField.canonicalRows actualModulus 2171 (.bnot 2170) := by core033_kernel_decide
theorem stats2171 : actualRows2171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2171=6276 := by core033_kernel_decide
theorem rows2172 : actualRows2172=WordField.canonicalRows actualModulus 2172 (.badd 627 2171) := by core033_kernel_decide
theorem stats2172 : actualRows2172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2172=5388 := by core033_kernel_decide
theorem rows2173 : actualRows2173=WordField.canonicalRows actualModulus 2173 (.bnot 2172) := by core033_kernel_decide
theorem stats2173 : actualRows2173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2173=6276 := by core033_kernel_decide
theorem rows2174 : actualRows2174=WordField.canonicalRows actualModulus 2174 (.band 2169 2173) := by core033_kernel_decide
theorem stats2174 : actualRows2174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2174=5124 := by core033_kernel_decide
theorem rows2175 : actualRows2175=WordField.canonicalRows actualModulus 2175 (.bxor 2166 2174) := by core033_kernel_decide
theorem stats2175 : actualRows2175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2175=7428 := by core033_kernel_decide
theorem rows2176 : actualRows2176=WordField.canonicalRows actualModulus 2176 (.shr 2175 31) := by core033_kernel_decide
theorem stats2176 : actualRows2176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2176=2892 := by core033_kernel_decide
theorem rows2177 : actualRows2177=WordField.canonicalRows actualModulus 2177 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats2177 : actualRows2177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2177=2964 := by core033_kernel_decide
theorem rows2178 : actualRows2178=WordField.canonicalRows actualModulus 2178 (.bnot 627) := by core033_kernel_decide
theorem stats2178 : actualRows2178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2178=6276 := by core033_kernel_decide
theorem rows2179 : actualRows2179=WordField.canonicalRows actualModulus 2179 (.band 2177 2178) := by core033_kernel_decide
theorem stats2179 : actualRows2179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2179=5124 := by core033_kernel_decide
theorem rows2180 : actualRows2180=WordField.canonicalRows actualModulus 2180 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats2180 : actualRows2180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2180=2964 := by core033_kernel_decide
theorem rows2181 : actualRows2181=WordField.canonicalRows actualModulus 2181 (.bnot 627) := by core033_kernel_decide
theorem stats2181 : actualRows2181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2181=6276 := by core033_kernel_decide
theorem rows2182 : actualRows2182=WordField.canonicalRows actualModulus 2182 (.bxor 2180 2181) := by core033_kernel_decide
theorem stats2182 : actualRows2182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2182=7428 := by core033_kernel_decide
theorem rows2183 : actualRows2183=WordField.canonicalRows actualModulus 2183 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats2183 : actualRows2183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2183=2964 := by core033_kernel_decide
theorem rows2184 : actualRows2184=WordField.canonicalRows actualModulus 2184 (.bnot 627) := by core033_kernel_decide
theorem stats2184 : actualRows2184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2184=6276 := by core033_kernel_decide
theorem rows2185 : actualRows2185=WordField.canonicalRows actualModulus 2185 (.badd 2183 2184) := by core033_kernel_decide
theorem stats2185 : actualRows2185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2185=5388 := by core033_kernel_decide
theorem rows2186 : actualRows2186=WordField.canonicalRows actualModulus 2186 (.bnot 2185) := by core033_kernel_decide
theorem stats2186 : actualRows2186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2186=6276 := by core033_kernel_decide
theorem rows2187 : actualRows2187=WordField.canonicalRows actualModulus 2187 (.band 2182 2186) := by core033_kernel_decide
theorem stats2187 : actualRows2187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2187=5124 := by core033_kernel_decide
theorem rows2188 : actualRows2188=WordField.canonicalRows actualModulus 2188 (.bxor 2179 2187) := by core033_kernel_decide
theorem stats2188 : actualRows2188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2188=7428 := by core033_kernel_decide
theorem rows2189 : actualRows2189=WordField.canonicalRows actualModulus 2189 (.shr 2188 31) := by core033_kernel_decide
theorem stats2189 : actualRows2189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2189=2892 := by core033_kernel_decide
theorem rows2190 : actualRows2190=WordField.canonicalRows actualModulus 2190 (.band 2176 2189) := by core033_kernel_decide
theorem stats2190 : actualRows2190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2190=5124 := by core033_kernel_decide
theorem rows2191 : actualRows2191=WordField.canonicalRows actualModulus 2191 (.shr 1083 8) := by core033_kernel_decide
theorem stats2191 : actualRows2191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2191=4548 := by core033_kernel_decide
theorem rows2192 : actualRows2192=WordField.canonicalRows actualModulus 2192 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2192 : actualRows2192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2192=2820 := by core033_kernel_decide
theorem rows2193 : actualRows2193=WordField.canonicalRows actualModulus 2193 (.bnot 2192) := by core033_kernel_decide
theorem stats2193 : actualRows2193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2193=6276 := by core033_kernel_decide
theorem rows2194 : actualRows2194=WordField.canonicalRows actualModulus 2194 (.band 2191 2193) := by core033_kernel_decide
theorem stats2194 : actualRows2194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2194=5124 := by core033_kernel_decide
theorem rows2195 : actualRows2195=WordField.canonicalRows actualModulus 2195 (.shr 1083 8) := by core033_kernel_decide
theorem stats2195 : actualRows2195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2195=4548 := by core033_kernel_decide
theorem rows2196 : actualRows2196=WordField.canonicalRows actualModulus 2196 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2196 : actualRows2196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2196=2820 := by core033_kernel_decide
theorem rows2197 : actualRows2197=WordField.canonicalRows actualModulus 2197 (.bnot 2196) := by core033_kernel_decide
theorem stats2197 : actualRows2197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2197=6276 := by core033_kernel_decide
theorem rows2198 : actualRows2198=WordField.canonicalRows actualModulus 2198 (.bxor 2195 2197) := by core033_kernel_decide
theorem stats2198 : actualRows2198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2198=7428 := by core033_kernel_decide
theorem rows2199 : actualRows2199=WordField.canonicalRows actualModulus 2199 (.shr 1083 8) := by core033_kernel_decide
theorem stats2199 : actualRows2199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2199=4548 := by core033_kernel_decide
theorem rows2200 : actualRows2200=WordField.canonicalRows actualModulus 2200 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2200 : actualRows2200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2200=2820 := by core033_kernel_decide
theorem rows2201 : actualRows2201=WordField.canonicalRows actualModulus 2201 (.bnot 2200) := by core033_kernel_decide
theorem stats2201 : actualRows2201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2201=6276 := by core033_kernel_decide
theorem rows2202 : actualRows2202=WordField.canonicalRows actualModulus 2202 (.badd 2199 2201) := by core033_kernel_decide
theorem stats2202 : actualRows2202.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2202=5388 := by core033_kernel_decide
theorem rows2203 : actualRows2203=WordField.canonicalRows actualModulus 2203 (.bnot 2202) := by core033_kernel_decide
theorem stats2203 : actualRows2203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2203=6276 := by core033_kernel_decide
theorem rows2204 : actualRows2204=WordField.canonicalRows actualModulus 2204 (.band 2198 2203) := by core033_kernel_decide
theorem stats2204 : actualRows2204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2204=5124 := by core033_kernel_decide
theorem rows2205 : actualRows2205=WordField.canonicalRows actualModulus 2205 (.bxor 2194 2204) := by core033_kernel_decide
theorem stats2205 : actualRows2205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2205=7428 := by core033_kernel_decide
theorem rows2206 : actualRows2206=WordField.canonicalRows actualModulus 2206 (.shr 2205 31) := by core033_kernel_decide
theorem stats2206 : actualRows2206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2206=2892 := by core033_kernel_decide
theorem rows2207 : actualRows2207=WordField.canonicalRows actualModulus 2207 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2207 : actualRows2207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2207=2892 := by core033_kernel_decide
def partRows32 : List R1CS.Row := actualRows2144++actualRows2145++actualRows2146++actualRows2147++actualRows2148++actualRows2149++actualRows2150++actualRows2151++actualRows2152++actualRows2153++actualRows2154++actualRows2155++actualRows2156++actualRows2157++actualRows2158++actualRows2159++actualRows2160++actualRows2161++actualRows2162++actualRows2163++actualRows2164++actualRows2165++actualRows2166++actualRows2167++actualRows2168++actualRows2169++actualRows2170++actualRows2171++actualRows2172++actualRows2173++actualRows2174++actualRows2175++actualRows2176++actualRows2177++actualRows2178++actualRows2179++actualRows2180++actualRows2181++actualRows2182++actualRows2183++actualRows2184++actualRows2185++actualRows2186++actualRows2187++actualRows2188++actualRows2189++actualRows2190++actualRows2191++actualRows2192++actualRows2193++actualRows2194++actualRows2195++actualRows2196++actualRows2197++actualRows2198++actualRows2199++actualRows2200++actualRows2201++actualRows2202++actualRows2203++actualRows2204++actualRows2205++actualRows2206++actualRows2207
def partOps32 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 2143 2144,.shr 1663 0,.literal (BitVec.ofNat 32 255),.band 2146 2147,.shr 1663 8,.literal (BitVec.ofNat 32 255),.band 2149 2150,.shr 1663 16,.literal (BitVec.ofNat 32 255),.band 2152 2153,.shr 1663 24,.literal (BitVec.ofNat 32 255),.band 2155 2156,.shr 1789 0,.literal (BitVec.ofNat 32 255),.band 2158 2159,.shr 1790 0,.literal (BitVec.ofNat 32 255),.band 2161 2162,.literal (BitVec.ofNat 32 0),.bnot 2164,.band 627 2165,.literal (BitVec.ofNat 32 0),.bnot 2167,.bxor 627 2168,.literal (BitVec.ofNat 32 0),.bnot 2170,.badd 627 2171,.bnot 2172,.band 2169 2173,.bxor 2166 2174,.shr 2175 31,.literal (BitVec.ofNat 32 3),.bnot 627,.band 2177 2178,.literal (BitVec.ofNat 32 3),.bnot 627,.bxor 2180 2181,.literal (BitVec.ofNat 32 3),.bnot 627,.badd 2183 2184,.bnot 2185,.band 2182 2186,.bxor 2179 2187,.shr 2188 31,.band 2176 2189,.shr 1083 8,.literal (BitVec.ofNat 32 0),.bnot 2192,.band 2191 2193,.shr 1083 8,.literal (BitVec.ofNat 32 0),.bnot 2196,.bxor 2195 2197,.shr 1083 8,.literal (BitVec.ofNat 32 0),.bnot 2200,.badd 2199 2201,.bnot 2202,.band 2198 2203,.bxor 2194 2204,.shr 2205 31,.literal (BitVec.ofNat 32 1)]
theorem partExact32 : partRows32=WordField.rows actualModulus 2144 partOps32 := by
  simp only [partRows32,partOps32,WordField.rows,rows2144,rows2145,rows2146,rows2147,rows2148,rows2149,rows2150,rows2151,rows2152,rows2153,rows2154,rows2155,rows2156,rows2157,rows2158,rows2159,rows2160,rows2161,rows2162,rows2163,rows2164,rows2165,rows2166,rows2167,rows2168,rows2169,rows2170,rows2171,rows2172,rows2173,rows2174,rows2175,rows2176,rows2177,rows2178,rows2179,rows2180,rows2181,rows2182,rows2183,rows2184,rows2185,rows2186,rows2187,rows2188,rows2189,rows2190,rows2191,rows2192,rows2193,rows2194,rows2195,rows2196,rows2197,rows2198,rows2199,rows2200,rows2201,rows2202,rows2203,rows2204,rows2205,rows2206,rows2207,List.append_assoc,List.append_nil]
theorem partLength32 : partOps32.length=64 := by decide
theorem partStats32 : partRows32.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows32=309864 := by
  simp only [partRows32,List.length_append,MatrixRowBlocks.rows_weight_append,stats2144.1,stats2144.2,stats2145.1,stats2145.2,stats2146.1,stats2146.2,stats2147.1,stats2147.2,stats2148.1,stats2148.2,stats2149.1,stats2149.2,stats2150.1,stats2150.2,stats2151.1,stats2151.2,stats2152.1,stats2152.2,stats2153.1,stats2153.2,stats2154.1,stats2154.2,stats2155.1,stats2155.2,stats2156.1,stats2156.2,stats2157.1,stats2157.2,stats2158.1,stats2158.2,stats2159.1,stats2159.2,stats2160.1,stats2160.2,stats2161.1,stats2161.2,stats2162.1,stats2162.2,stats2163.1,stats2163.2,stats2164.1,stats2164.2,stats2165.1,stats2165.2,stats2166.1,stats2166.2,stats2167.1,stats2167.2,stats2168.1,stats2168.2,stats2169.1,stats2169.2,stats2170.1,stats2170.2,stats2171.1,stats2171.2,stats2172.1,stats2172.2,stats2173.1,stats2173.2,stats2174.1,stats2174.2,stats2175.1,stats2175.2,stats2176.1,stats2176.2,stats2177.1,stats2177.2,stats2178.1,stats2178.2,stats2179.1,stats2179.2,stats2180.1,stats2180.2,stats2181.1,stats2181.2,stats2182.1,stats2182.2,stats2183.1,stats2183.2,stats2184.1,stats2184.2,stats2185.1,stats2185.2,stats2186.1,stats2186.2,stats2187.1,stats2187.2,stats2188.1,stats2188.2,stats2189.1,stats2189.2,stats2190.1,stats2190.2,stats2191.1,stats2191.2,stats2192.1,stats2192.2,stats2193.1,stats2193.2,stats2194.1,stats2194.2,stats2195.1,stats2195.2,stats2196.1,stats2196.2,stats2197.1,stats2197.2,stats2198.1,stats2198.2,stats2199.1,stats2199.2,stats2200.1,stats2200.2,stats2201.1,stats2201.2,stats2202.1,stats2202.2,stats2203.1,stats2203.2,stats2204.1,stats2204.2,stats2205.1,stats2205.2,stats2206.1,stats2206.2,stats2207.1,stats2207.2]
  decide
end QuotedPairedPathRoundCheckedRows
