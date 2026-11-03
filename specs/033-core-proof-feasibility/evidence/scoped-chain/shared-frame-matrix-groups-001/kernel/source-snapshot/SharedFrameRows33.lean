import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData33
import SharedFrameInstructionMatrixData34
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2155 : actualRows2155=WordField.canonicalRows actualModulus 2155 (.bxor 2153 2154) := by core033_kernel_decide
theorem stats2155 : actualRows2155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2155=7428 := by core033_kernel_decide
theorem rows2156 : actualRows2156=WordField.canonicalRows actualModulus 2156 (.rotr 664 25) := by core033_kernel_decide
theorem stats2156 : actualRows2156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2156=5124 := by core033_kernel_decide
theorem rows2157 : actualRows2157=WordField.canonicalRows actualModulus 2157 (.bxor 2155 2156) := by core033_kernel_decide
theorem stats2157 : actualRows2157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2157=7428 := by core033_kernel_decide
theorem rows2158 : actualRows2158=WordField.canonicalRows actualModulus 2158 (.badd 676 2157) := by core033_kernel_decide
theorem stats2158 : actualRows2158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2158=5388 := by core033_kernel_decide
theorem rows2159 : actualRows2159=WordField.canonicalRows actualModulus 2159 (.band 664 668) := by core033_kernel_decide
theorem stats2159 : actualRows2159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2159=5124 := by core033_kernel_decide
theorem rows2160 : actualRows2160=WordField.canonicalRows actualModulus 2160 (.bnot 664) := by core033_kernel_decide
theorem stats2160 : actualRows2160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2160=6276 := by core033_kernel_decide
theorem rows2161 : actualRows2161=WordField.canonicalRows actualModulus 2161 (.band 2160 672) := by core033_kernel_decide
theorem stats2161 : actualRows2161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2161=5124 := by core033_kernel_decide
theorem rows2162 : actualRows2162=WordField.canonicalRows actualModulus 2162 (.bxor 2159 2161) := by core033_kernel_decide
theorem stats2162 : actualRows2162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2162=7428 := by core033_kernel_decide
theorem rows2163 : actualRows2163=WordField.canonicalRows actualModulus 2163 (.badd 2158 2162) := by core033_kernel_decide
theorem stats2163 : actualRows2163.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2163=5388 := by core033_kernel_decide
theorem rows2164 : actualRows2164=WordField.canonicalRows actualModulus 2164 (.literal (BitVec.ofNat 32 1116352408)) := by core033_kernel_decide
theorem stats2164 : actualRows2164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2164=3756 := by core033_kernel_decide
theorem rows2165 : actualRows2165=WordField.canonicalRows actualModulus 2165 (.badd 2163 2164) := by core033_kernel_decide
theorem stats2165 : actualRows2165.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2165=5388 := by core033_kernel_decide
theorem rows2166 : actualRows2166=WordField.canonicalRows actualModulus 2166 (.badd 2165 862) := by core033_kernel_decide
theorem stats2166 : actualRows2166.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2166=5388 := by core033_kernel_decide
theorem rows2167 : actualRows2167=WordField.canonicalRows actualModulus 2167 (.rotr 648 2) := by core033_kernel_decide
theorem stats2167 : actualRows2167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2167=5124 := by core033_kernel_decide
theorem rows2168 : actualRows2168=WordField.canonicalRows actualModulus 2168 (.rotr 648 13) := by core033_kernel_decide
theorem stats2168 : actualRows2168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2168=5124 := by core033_kernel_decide
theorem rows2169 : actualRows2169=WordField.canonicalRows actualModulus 2169 (.bxor 2167 2168) := by core033_kernel_decide
theorem stats2169 : actualRows2169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2169=7428 := by core033_kernel_decide
theorem rows2170 : actualRows2170=WordField.canonicalRows actualModulus 2170 (.rotr 648 22) := by core033_kernel_decide
theorem stats2170 : actualRows2170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2170=5124 := by core033_kernel_decide
theorem rows2171 : actualRows2171=WordField.canonicalRows actualModulus 2171 (.bxor 2169 2170) := by core033_kernel_decide
theorem stats2171 : actualRows2171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2171=7428 := by core033_kernel_decide
theorem rows2172 : actualRows2172=WordField.canonicalRows actualModulus 2172 (.band 648 652) := by core033_kernel_decide
theorem stats2172 : actualRows2172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2172=5124 := by core033_kernel_decide
theorem rows2173 : actualRows2173=WordField.canonicalRows actualModulus 2173 (.band 648 656) := by core033_kernel_decide
theorem stats2173 : actualRows2173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2173=5124 := by core033_kernel_decide
theorem rows2174 : actualRows2174=WordField.canonicalRows actualModulus 2174 (.bxor 2172 2173) := by core033_kernel_decide
theorem stats2174 : actualRows2174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2174=7428 := by core033_kernel_decide
theorem rows2175 : actualRows2175=WordField.canonicalRows actualModulus 2175 (.band 652 656) := by core033_kernel_decide
theorem stats2175 : actualRows2175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2175=5124 := by core033_kernel_decide
theorem rows2176 : actualRows2176=WordField.canonicalRows actualModulus 2176 (.bxor 2174 2175) := by core033_kernel_decide
theorem stats2176 : actualRows2176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2176=7428 := by core033_kernel_decide
theorem rows2177 : actualRows2177=WordField.canonicalRows actualModulus 2177 (.badd 2171 2176) := by core033_kernel_decide
theorem stats2177 : actualRows2177.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2177=5388 := by core033_kernel_decide
theorem rows2178 : actualRows2178=WordField.canonicalRows actualModulus 2178 (.badd 2166 2177) := by core033_kernel_decide
theorem stats2178 : actualRows2178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2178=5388 := by core033_kernel_decide
theorem rows2179 : actualRows2179=WordField.canonicalRows actualModulus 2179 (.badd 660 2166) := by core033_kernel_decide
theorem stats2179 : actualRows2179.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2179=5388 := by core033_kernel_decide
theorem rows2180 : actualRows2180=WordField.canonicalRows actualModulus 2180 (.rotr 2179 6) := by core033_kernel_decide
theorem stats2180 : actualRows2180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2180=5124 := by core033_kernel_decide
theorem rows2181 : actualRows2181=WordField.canonicalRows actualModulus 2181 (.rotr 2179 11) := by core033_kernel_decide
theorem stats2181 : actualRows2181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2181=5124 := by core033_kernel_decide
theorem rows2182 : actualRows2182=WordField.canonicalRows actualModulus 2182 (.bxor 2180 2181) := by core033_kernel_decide
theorem stats2182 : actualRows2182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2182=7428 := by core033_kernel_decide
theorem rows2183 : actualRows2183=WordField.canonicalRows actualModulus 2183 (.rotr 2179 25) := by core033_kernel_decide
theorem stats2183 : actualRows2183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2183=5124 := by core033_kernel_decide
theorem rows2184 : actualRows2184=WordField.canonicalRows actualModulus 2184 (.bxor 2182 2183) := by core033_kernel_decide
theorem stats2184 : actualRows2184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2184=7428 := by core033_kernel_decide
theorem rows2185 : actualRows2185=WordField.canonicalRows actualModulus 2185 (.badd 672 2184) := by core033_kernel_decide
theorem stats2185 : actualRows2185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2185=5388 := by core033_kernel_decide
theorem rows2186 : actualRows2186=WordField.canonicalRows actualModulus 2186 (.band 2179 664) := by core033_kernel_decide
theorem stats2186 : actualRows2186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2186=5124 := by core033_kernel_decide
theorem rows2187 : actualRows2187=WordField.canonicalRows actualModulus 2187 (.bnot 2179) := by core033_kernel_decide
theorem stats2187 : actualRows2187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2187=6276 := by core033_kernel_decide
theorem rows2188 : actualRows2188=WordField.canonicalRows actualModulus 2188 (.band 2187 668) := by core033_kernel_decide
theorem stats2188 : actualRows2188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2188=5124 := by core033_kernel_decide
theorem rows2189 : actualRows2189=WordField.canonicalRows actualModulus 2189 (.bxor 2186 2188) := by core033_kernel_decide
theorem stats2189 : actualRows2189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2189=7428 := by core033_kernel_decide
theorem rows2190 : actualRows2190=WordField.canonicalRows actualModulus 2190 (.badd 2185 2189) := by core033_kernel_decide
theorem stats2190 : actualRows2190.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2190=5388 := by core033_kernel_decide
theorem rows2191 : actualRows2191=WordField.canonicalRows actualModulus 2191 (.literal (BitVec.ofNat 32 1899447441)) := by core033_kernel_decide
theorem stats2191 : actualRows2191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2191=3828 := by core033_kernel_decide
theorem rows2192 : actualRows2192=WordField.canonicalRows actualModulus 2192 (.badd 2190 2191) := by core033_kernel_decide
theorem stats2192 : actualRows2192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2192=5388 := by core033_kernel_decide
theorem rows2193 : actualRows2193=WordField.canonicalRows actualModulus 2193 (.badd 2192 868) := by core033_kernel_decide
theorem stats2193 : actualRows2193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2193=5388 := by core033_kernel_decide
theorem rows2194 : actualRows2194=WordField.canonicalRows actualModulus 2194 (.rotr 2178 2) := by core033_kernel_decide
theorem stats2194 : actualRows2194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2194=5124 := by core033_kernel_decide
theorem rows2195 : actualRows2195=WordField.canonicalRows actualModulus 2195 (.rotr 2178 13) := by core033_kernel_decide
theorem stats2195 : actualRows2195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2195=5124 := by core033_kernel_decide
theorem rows2196 : actualRows2196=WordField.canonicalRows actualModulus 2196 (.bxor 2194 2195) := by core033_kernel_decide
theorem stats2196 : actualRows2196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2196=7428 := by core033_kernel_decide
theorem rows2197 : actualRows2197=WordField.canonicalRows actualModulus 2197 (.rotr 2178 22) := by core033_kernel_decide
theorem stats2197 : actualRows2197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2197=5124 := by core033_kernel_decide
theorem rows2198 : actualRows2198=WordField.canonicalRows actualModulus 2198 (.bxor 2196 2197) := by core033_kernel_decide
theorem stats2198 : actualRows2198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2198=7428 := by core033_kernel_decide
theorem rows2199 : actualRows2199=WordField.canonicalRows actualModulus 2199 (.band 2178 648) := by core033_kernel_decide
theorem stats2199 : actualRows2199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2199=5124 := by core033_kernel_decide
theorem rows2200 : actualRows2200=WordField.canonicalRows actualModulus 2200 (.band 2178 652) := by core033_kernel_decide
theorem stats2200 : actualRows2200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2200=5124 := by core033_kernel_decide
theorem rows2201 : actualRows2201=WordField.canonicalRows actualModulus 2201 (.bxor 2199 2200) := by core033_kernel_decide
theorem stats2201 : actualRows2201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2201=7428 := by core033_kernel_decide
theorem rows2202 : actualRows2202=WordField.canonicalRows actualModulus 2202 (.bxor 2201 2172) := by core033_kernel_decide
theorem stats2202 : actualRows2202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2202=7428 := by core033_kernel_decide
theorem rows2203 : actualRows2203=WordField.canonicalRows actualModulus 2203 (.badd 2198 2202) := by core033_kernel_decide
theorem stats2203 : actualRows2203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2203=5388 := by core033_kernel_decide
theorem rows2204 : actualRows2204=WordField.canonicalRows actualModulus 2204 (.badd 2193 2203) := by core033_kernel_decide
theorem stats2204 : actualRows2204.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2204=5388 := by core033_kernel_decide
theorem rows2205 : actualRows2205=WordField.canonicalRows actualModulus 2205 (.badd 656 2193) := by core033_kernel_decide
theorem stats2205 : actualRows2205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2205=5388 := by core033_kernel_decide
theorem rows2206 : actualRows2206=WordField.canonicalRows actualModulus 2206 (.rotr 2205 6) := by core033_kernel_decide
theorem stats2206 : actualRows2206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2206=5124 := by core033_kernel_decide
theorem rows2207 : actualRows2207=WordField.canonicalRows actualModulus 2207 (.rotr 2205 11) := by core033_kernel_decide
theorem stats2207 : actualRows2207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2207=5124 := by core033_kernel_decide
theorem rows2208 : actualRows2208=WordField.canonicalRows actualModulus 2208 (.bxor 2206 2207) := by core033_kernel_decide
theorem stats2208 : actualRows2208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2208=7428 := by core033_kernel_decide
theorem rows2209 : actualRows2209=WordField.canonicalRows actualModulus 2209 (.rotr 2205 25) := by core033_kernel_decide
theorem stats2209 : actualRows2209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2209=5124 := by core033_kernel_decide
theorem rows2210 : actualRows2210=WordField.canonicalRows actualModulus 2210 (.bxor 2208 2209) := by core033_kernel_decide
theorem stats2210 : actualRows2210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2210=7428 := by core033_kernel_decide
theorem rows2211 : actualRows2211=WordField.canonicalRows actualModulus 2211 (.badd 668 2210) := by core033_kernel_decide
theorem stats2211 : actualRows2211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2211=5388 := by core033_kernel_decide
theorem rows2212 : actualRows2212=WordField.canonicalRows actualModulus 2212 (.band 2205 2179) := by core033_kernel_decide
theorem stats2212 : actualRows2212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2212=5124 := by core033_kernel_decide
theorem rows2213 : actualRows2213=WordField.canonicalRows actualModulus 2213 (.bnot 2205) := by core033_kernel_decide
theorem stats2213 : actualRows2213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2213=6276 := by core033_kernel_decide
theorem rows2214 : actualRows2214=WordField.canonicalRows actualModulus 2214 (.band 2213 664) := by core033_kernel_decide
theorem stats2214 : actualRows2214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2214=5124 := by core033_kernel_decide
theorem rows2215 : actualRows2215=WordField.canonicalRows actualModulus 2215 (.bxor 2212 2214) := by core033_kernel_decide
theorem stats2215 : actualRows2215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2215=7428 := by core033_kernel_decide
theorem rows2216 : actualRows2216=WordField.canonicalRows actualModulus 2216 (.badd 2211 2215) := by core033_kernel_decide
theorem stats2216 : actualRows2216.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2216=5388 := by core033_kernel_decide
theorem rows2217 : actualRows2217=WordField.canonicalRows actualModulus 2217 (.literal (BitVec.ofNat 32 3049323471)) := by core033_kernel_decide
theorem stats2217 : actualRows2217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2217=4260 := by core033_kernel_decide
theorem rows2218 : actualRows2218=WordField.canonicalRows actualModulus 2218 (.badd 2216 2217) := by core033_kernel_decide
theorem stats2218 : actualRows2218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2218=5388 := by core033_kernel_decide
def partRows33 : List R1CS.Row := actualRows2155++actualRows2156++actualRows2157++actualRows2158++actualRows2159++actualRows2160++actualRows2161++actualRows2162++actualRows2163++actualRows2164++actualRows2165++actualRows2166++actualRows2167++actualRows2168++actualRows2169++actualRows2170++actualRows2171++actualRows2172++actualRows2173++actualRows2174++actualRows2175++actualRows2176++actualRows2177++actualRows2178++actualRows2179++actualRows2180++actualRows2181++actualRows2182++actualRows2183++actualRows2184++actualRows2185++actualRows2186++actualRows2187++actualRows2188++actualRows2189++actualRows2190++actualRows2191++actualRows2192++actualRows2193++actualRows2194++actualRows2195++actualRows2196++actualRows2197++actualRows2198++actualRows2199++actualRows2200++actualRows2201++actualRows2202++actualRows2203++actualRows2204++actualRows2205++actualRows2206++actualRows2207++actualRows2208++actualRows2209++actualRows2210++actualRows2211++actualRows2212++actualRows2213++actualRows2214++actualRows2215++actualRows2216++actualRows2217++actualRows2218
def partOps33 : List WordIR.Op := [.bxor 2153 2154,.rotr 664 25,.bxor 2155 2156,.badd 676 2157,.band 664 668,.bnot 664,.band 2160 672,.bxor 2159 2161,.badd 2158 2162,.literal (BitVec.ofNat 32 1116352408),.badd 2163 2164,.badd 2165 862,.rotr 648 2,.rotr 648 13,.bxor 2167 2168,.rotr 648 22,.bxor 2169 2170,.band 648 652,.band 648 656,.bxor 2172 2173,.band 652 656,.bxor 2174 2175,.badd 2171 2176,.badd 2166 2177,.badd 660 2166,.rotr 2179 6,.rotr 2179 11,.bxor 2180 2181,.rotr 2179 25,.bxor 2182 2183,.badd 672 2184,.band 2179 664,.bnot 2179,.band 2187 668,.bxor 2186 2188,.badd 2185 2189,.literal (BitVec.ofNat 32 1899447441),.badd 2190 2191,.badd 2192 868,.rotr 2178 2,.rotr 2178 13,.bxor 2194 2195,.rotr 2178 22,.bxor 2196 2197,.band 2178 648,.band 2178 652,.bxor 2199 2200,.bxor 2201 2172,.badd 2198 2202,.badd 2193 2203,.badd 656 2193,.rotr 2205 6,.rotr 2205 11,.bxor 2206 2207,.rotr 2205 25,.bxor 2208 2209,.badd 668 2210,.band 2205 2179,.bnot 2205,.band 2213 664,.bxor 2212 2214,.badd 2211 2215,.literal (BitVec.ofNat 32 3049323471),.badd 2216 2217]
theorem partExact33 : partRows33=WordField.rows actualModulus 2155 partOps33 := by
  simp only [partRows33,partOps33,WordField.rows,rows2155,rows2156,rows2157,rows2158,rows2159,rows2160,rows2161,rows2162,rows2163,rows2164,rows2165,rows2166,rows2167,rows2168,rows2169,rows2170,rows2171,rows2172,rows2173,rows2174,rows2175,rows2176,rows2177,rows2178,rows2179,rows2180,rows2181,rows2182,rows2183,rows2184,rows2185,rows2186,rows2187,rows2188,rows2189,rows2190,rows2191,rows2192,rows2193,rows2194,rows2195,rows2196,rows2197,rows2198,rows2199,rows2200,rows2201,rows2202,rows2203,rows2204,rows2205,rows2206,rows2207,rows2208,rows2209,rows2210,rows2211,rows2212,rows2213,rows2214,rows2215,rows2216,rows2217,rows2218,List.append_assoc,List.append_nil]
theorem partLength33 : partOps33.length=64 := by decide
theorem partStats33 : partRows33.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows33=371520 := by
  simp only [partRows33,List.length_append,MatrixRowBlocks.rows_weight_append,stats2155.1,stats2155.2,stats2156.1,stats2156.2,stats2157.1,stats2157.2,stats2158.1,stats2158.2,stats2159.1,stats2159.2,stats2160.1,stats2160.2,stats2161.1,stats2161.2,stats2162.1,stats2162.2,stats2163.1,stats2163.2,stats2164.1,stats2164.2,stats2165.1,stats2165.2,stats2166.1,stats2166.2,stats2167.1,stats2167.2,stats2168.1,stats2168.2,stats2169.1,stats2169.2,stats2170.1,stats2170.2,stats2171.1,stats2171.2,stats2172.1,stats2172.2,stats2173.1,stats2173.2,stats2174.1,stats2174.2,stats2175.1,stats2175.2,stats2176.1,stats2176.2,stats2177.1,stats2177.2,stats2178.1,stats2178.2,stats2179.1,stats2179.2,stats2180.1,stats2180.2,stats2181.1,stats2181.2,stats2182.1,stats2182.2,stats2183.1,stats2183.2,stats2184.1,stats2184.2,stats2185.1,stats2185.2,stats2186.1,stats2186.2,stats2187.1,stats2187.2,stats2188.1,stats2188.2,stats2189.1,stats2189.2,stats2190.1,stats2190.2,stats2191.1,stats2191.2,stats2192.1,stats2192.2,stats2193.1,stats2193.2,stats2194.1,stats2194.2,stats2195.1,stats2195.2,stats2196.1,stats2196.2,stats2197.1,stats2197.2,stats2198.1,stats2198.2,stats2199.1,stats2199.2,stats2200.1,stats2200.2,stats2201.1,stats2201.2,stats2202.1,stats2202.2,stats2203.1,stats2203.2,stats2204.1,stats2204.2,stats2205.1,stats2205.2,stats2206.1,stats2206.2,stats2207.1,stats2207.2,stats2208.1,stats2208.2,stats2209.1,stats2209.2,stats2210.1,stats2210.2,stats2211.1,stats2211.2,stats2212.1,stats2212.2,stats2213.1,stats2213.2,stats2214.1,stats2214.2,stats2215.1,stats2215.2,stats2216.1,stats2216.2,stats2217.1,stats2217.2,stats2218.1,stats2218.2]
  decide
end SharedFrameCheckedRows
