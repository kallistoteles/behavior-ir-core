import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData34
import ActualMatrixData35
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2200 : actualRows2200=WordField.canonicalRows actualModulus 2200 (.badd 2199 569) := by core033_kernel_decide
theorem stats2200 : actualRows2200.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2200=5388 := by core033_kernel_decide
theorem rows2201 : actualRows2201=WordField.canonicalRows actualModulus 2201 (.rotr 2185 2) := by core033_kernel_decide
theorem stats2201 : actualRows2201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2201=5124 := by core033_kernel_decide
theorem rows2202 : actualRows2202=WordField.canonicalRows actualModulus 2202 (.rotr 2185 13) := by core033_kernel_decide
theorem stats2202 : actualRows2202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2202=5124 := by core033_kernel_decide
theorem rows2203 : actualRows2203=WordField.canonicalRows actualModulus 2203 (.bxor 2201 2202) := by core033_kernel_decide
theorem stats2203 : actualRows2203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2203=7428 := by core033_kernel_decide
theorem rows2204 : actualRows2204=WordField.canonicalRows actualModulus 2204 (.rotr 2185 22) := by core033_kernel_decide
theorem stats2204 : actualRows2204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2204=5124 := by core033_kernel_decide
theorem rows2205 : actualRows2205=WordField.canonicalRows actualModulus 2205 (.bxor 2203 2204) := by core033_kernel_decide
theorem stats2205 : actualRows2205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2205=7428 := by core033_kernel_decide
theorem rows2206 : actualRows2206=WordField.canonicalRows actualModulus 2206 (.band 2185 2158) := by core033_kernel_decide
theorem stats2206 : actualRows2206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2206=5124 := by core033_kernel_decide
theorem rows2207 : actualRows2207=WordField.canonicalRows actualModulus 2207 (.band 2185 2131) := by core033_kernel_decide
theorem stats2207 : actualRows2207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2207=5124 := by core033_kernel_decide
theorem rows2208 : actualRows2208=WordField.canonicalRows actualModulus 2208 (.bxor 2206 2207) := by core033_kernel_decide
theorem stats2208 : actualRows2208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2208=7428 := by core033_kernel_decide
theorem rows2209 : actualRows2209=WordField.canonicalRows actualModulus 2209 (.band 2158 2131) := by core033_kernel_decide
theorem stats2209 : actualRows2209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2209=5124 := by core033_kernel_decide
theorem rows2210 : actualRows2210=WordField.canonicalRows actualModulus 2210 (.bxor 2208 2209) := by core033_kernel_decide
theorem stats2210 : actualRows2210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2210=7428 := by core033_kernel_decide
theorem rows2211 : actualRows2211=WordField.canonicalRows actualModulus 2211 (.badd 2205 2210) := by core033_kernel_decide
theorem stats2211 : actualRows2211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2211=5388 := by core033_kernel_decide
theorem rows2212 : actualRows2212=WordField.canonicalRows actualModulus 2212 (.badd 2200 2211) := by core033_kernel_decide
theorem stats2212 : actualRows2212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2212=5388 := by core033_kernel_decide
theorem rows2213 : actualRows2213=WordField.canonicalRows actualModulus 2213 (.badd 2104 2200) := by core033_kernel_decide
theorem stats2213 : actualRows2213.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2213=5388 := by core033_kernel_decide
theorem rows2214 : actualRows2214=WordField.canonicalRows actualModulus 2214 (.rotr 2213 6) := by core033_kernel_decide
theorem stats2214 : actualRows2214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2214=5124 := by core033_kernel_decide
theorem rows2215 : actualRows2215=WordField.canonicalRows actualModulus 2215 (.rotr 2213 11) := by core033_kernel_decide
theorem stats2215 : actualRows2215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2215=5124 := by core033_kernel_decide
theorem rows2216 : actualRows2216=WordField.canonicalRows actualModulus 2216 (.bxor 2214 2215) := by core033_kernel_decide
theorem stats2216 : actualRows2216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2216=7428 := by core033_kernel_decide
theorem rows2217 : actualRows2217=WordField.canonicalRows actualModulus 2217 (.rotr 2213 25) := by core033_kernel_decide
theorem stats2217 : actualRows2217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2217=5124 := by core033_kernel_decide
theorem rows2218 : actualRows2218=WordField.canonicalRows actualModulus 2218 (.bxor 2216 2217) := by core033_kernel_decide
theorem stats2218 : actualRows2218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2218=7428 := by core033_kernel_decide
theorem rows2219 : actualRows2219=WordField.canonicalRows actualModulus 2219 (.badd 2132 2218) := by core033_kernel_decide
theorem stats2219 : actualRows2219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2219=5388 := by core033_kernel_decide
theorem rows2220 : actualRows2220=WordField.canonicalRows actualModulus 2220 (.band 2213 2186) := by core033_kernel_decide
theorem stats2220 : actualRows2220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2220=5124 := by core033_kernel_decide
theorem rows2221 : actualRows2221=WordField.canonicalRows actualModulus 2221 (.bnot 2213) := by core033_kernel_decide
theorem stats2221 : actualRows2221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2221=6276 := by core033_kernel_decide
theorem rows2222 : actualRows2222=WordField.canonicalRows actualModulus 2222 (.band 2221 2159) := by core033_kernel_decide
theorem stats2222 : actualRows2222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2222=5124 := by core033_kernel_decide
theorem rows2223 : actualRows2223=WordField.canonicalRows actualModulus 2223 (.bxor 2220 2222) := by core033_kernel_decide
theorem stats2223 : actualRows2223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2223=7428 := by core033_kernel_decide
theorem rows2224 : actualRows2224=WordField.canonicalRows actualModulus 2224 (.badd 2219 2223) := by core033_kernel_decide
theorem stats2224 : actualRows2224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2224=5388 := by core033_kernel_decide
theorem rows2225 : actualRows2225=WordField.canonicalRows actualModulus 2225 (.literal (BitVec.ofNat 32 2227730452)) := by core033_kernel_decide
theorem stats2225 : actualRows2225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2225=3612 := by core033_kernel_decide
theorem rows2226 : actualRows2226=WordField.canonicalRows actualModulus 2226 (.badd 2224 2225) := by core033_kernel_decide
theorem stats2226 : actualRows2226.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2226=5388 := by core033_kernel_decide
theorem rows2227 : actualRows2227=WordField.canonicalRows actualModulus 2227 (.badd 2226 582) := by core033_kernel_decide
theorem stats2227 : actualRows2227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2227=5388 := by core033_kernel_decide
theorem rows2228 : actualRows2228=WordField.canonicalRows actualModulus 2228 (.rotr 2212 2) := by core033_kernel_decide
theorem stats2228 : actualRows2228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2228=5124 := by core033_kernel_decide
theorem rows2229 : actualRows2229=WordField.canonicalRows actualModulus 2229 (.rotr 2212 13) := by core033_kernel_decide
theorem stats2229 : actualRows2229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2229=5124 := by core033_kernel_decide
theorem rows2230 : actualRows2230=WordField.canonicalRows actualModulus 2230 (.bxor 2228 2229) := by core033_kernel_decide
theorem stats2230 : actualRows2230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2230=7428 := by core033_kernel_decide
theorem rows2231 : actualRows2231=WordField.canonicalRows actualModulus 2231 (.rotr 2212 22) := by core033_kernel_decide
theorem stats2231 : actualRows2231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2231=5124 := by core033_kernel_decide
theorem rows2232 : actualRows2232=WordField.canonicalRows actualModulus 2232 (.bxor 2230 2231) := by core033_kernel_decide
theorem stats2232 : actualRows2232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2232=7428 := by core033_kernel_decide
theorem rows2233 : actualRows2233=WordField.canonicalRows actualModulus 2233 (.band 2212 2185) := by core033_kernel_decide
theorem stats2233 : actualRows2233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2233=5124 := by core033_kernel_decide
theorem rows2234 : actualRows2234=WordField.canonicalRows actualModulus 2234 (.band 2212 2158) := by core033_kernel_decide
theorem stats2234 : actualRows2234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2234=5124 := by core033_kernel_decide
theorem rows2235 : actualRows2235=WordField.canonicalRows actualModulus 2235 (.bxor 2233 2234) := by core033_kernel_decide
theorem stats2235 : actualRows2235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2235=7428 := by core033_kernel_decide
theorem rows2236 : actualRows2236=WordField.canonicalRows actualModulus 2236 (.band 2185 2158) := by core033_kernel_decide
theorem stats2236 : actualRows2236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2236=5124 := by core033_kernel_decide
theorem rows2237 : actualRows2237=WordField.canonicalRows actualModulus 2237 (.bxor 2235 2236) := by core033_kernel_decide
theorem stats2237 : actualRows2237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2237=7428 := by core033_kernel_decide
theorem rows2238 : actualRows2238=WordField.canonicalRows actualModulus 2238 (.badd 2232 2237) := by core033_kernel_decide
theorem stats2238 : actualRows2238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2238=5388 := by core033_kernel_decide
theorem rows2239 : actualRows2239=WordField.canonicalRows actualModulus 2239 (.badd 2227 2238) := by core033_kernel_decide
theorem stats2239 : actualRows2239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2239=5388 := by core033_kernel_decide
theorem rows2240 : actualRows2240=WordField.canonicalRows actualModulus 2240 (.badd 2131 2227) := by core033_kernel_decide
theorem stats2240 : actualRows2240.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2240=5388 := by core033_kernel_decide
theorem rows2241 : actualRows2241=WordField.canonicalRows actualModulus 2241 (.rotr 2240 6) := by core033_kernel_decide
theorem stats2241 : actualRows2241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2241=5124 := by core033_kernel_decide
theorem rows2242 : actualRows2242=WordField.canonicalRows actualModulus 2242 (.rotr 2240 11) := by core033_kernel_decide
theorem stats2242 : actualRows2242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2242=5124 := by core033_kernel_decide
theorem rows2243 : actualRows2243=WordField.canonicalRows actualModulus 2243 (.bxor 2241 2242) := by core033_kernel_decide
theorem stats2243 : actualRows2243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2243=7428 := by core033_kernel_decide
theorem rows2244 : actualRows2244=WordField.canonicalRows actualModulus 2244 (.rotr 2240 25) := by core033_kernel_decide
theorem stats2244 : actualRows2244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2244=5124 := by core033_kernel_decide
theorem rows2245 : actualRows2245=WordField.canonicalRows actualModulus 2245 (.bxor 2243 2244) := by core033_kernel_decide
theorem stats2245 : actualRows2245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2245=7428 := by core033_kernel_decide
theorem rows2246 : actualRows2246=WordField.canonicalRows actualModulus 2246 (.badd 2159 2245) := by core033_kernel_decide
theorem stats2246 : actualRows2246.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2246=5388 := by core033_kernel_decide
theorem rows2247 : actualRows2247=WordField.canonicalRows actualModulus 2247 (.band 2240 2213) := by core033_kernel_decide
theorem stats2247 : actualRows2247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2247=5124 := by core033_kernel_decide
theorem rows2248 : actualRows2248=WordField.canonicalRows actualModulus 2248 (.bnot 2240) := by core033_kernel_decide
theorem stats2248 : actualRows2248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2248=6276 := by core033_kernel_decide
theorem rows2249 : actualRows2249=WordField.canonicalRows actualModulus 2249 (.band 2248 2186) := by core033_kernel_decide
theorem stats2249 : actualRows2249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2249=5124 := by core033_kernel_decide
theorem rows2250 : actualRows2250=WordField.canonicalRows actualModulus 2250 (.bxor 2247 2249) := by core033_kernel_decide
theorem stats2250 : actualRows2250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2250=7428 := by core033_kernel_decide
theorem rows2251 : actualRows2251=WordField.canonicalRows actualModulus 2251 (.badd 2246 2250) := by core033_kernel_decide
theorem stats2251 : actualRows2251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2251=5388 := by core033_kernel_decide
theorem rows2252 : actualRows2252=WordField.canonicalRows actualModulus 2252 (.literal (BitVec.ofNat 32 2361852424)) := by core033_kernel_decide
theorem stats2252 : actualRows2252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2252=3540 := by core033_kernel_decide
theorem rows2253 : actualRows2253=WordField.canonicalRows actualModulus 2253 (.badd 2251 2252) := by core033_kernel_decide
theorem stats2253 : actualRows2253.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2253=5388 := by core033_kernel_decide
theorem rows2254 : actualRows2254=WordField.canonicalRows actualModulus 2254 (.badd 2253 595) := by core033_kernel_decide
theorem stats2254 : actualRows2254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2254=5388 := by core033_kernel_decide
theorem rows2255 : actualRows2255=WordField.canonicalRows actualModulus 2255 (.rotr 2239 2) := by core033_kernel_decide
theorem stats2255 : actualRows2255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2255=5124 := by core033_kernel_decide
theorem rows2256 : actualRows2256=WordField.canonicalRows actualModulus 2256 (.rotr 2239 13) := by core033_kernel_decide
theorem stats2256 : actualRows2256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2256=5124 := by core033_kernel_decide
theorem rows2257 : actualRows2257=WordField.canonicalRows actualModulus 2257 (.bxor 2255 2256) := by core033_kernel_decide
theorem stats2257 : actualRows2257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2257=7428 := by core033_kernel_decide
theorem rows2258 : actualRows2258=WordField.canonicalRows actualModulus 2258 (.rotr 2239 22) := by core033_kernel_decide
theorem stats2258 : actualRows2258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2258=5124 := by core033_kernel_decide
theorem rows2259 : actualRows2259=WordField.canonicalRows actualModulus 2259 (.bxor 2257 2258) := by core033_kernel_decide
theorem stats2259 : actualRows2259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2259=7428 := by core033_kernel_decide
theorem rows2260 : actualRows2260=WordField.canonicalRows actualModulus 2260 (.band 2239 2212) := by core033_kernel_decide
theorem stats2260 : actualRows2260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2260=5124 := by core033_kernel_decide
theorem rows2261 : actualRows2261=WordField.canonicalRows actualModulus 2261 (.band 2239 2185) := by core033_kernel_decide
theorem stats2261 : actualRows2261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2261=5124 := by core033_kernel_decide
theorem rows2262 : actualRows2262=WordField.canonicalRows actualModulus 2262 (.bxor 2260 2261) := by core033_kernel_decide
theorem stats2262 : actualRows2262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2262=7428 := by core033_kernel_decide
theorem rows2263 : actualRows2263=WordField.canonicalRows actualModulus 2263 (.band 2212 2185) := by core033_kernel_decide
theorem stats2263 : actualRows2263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2263=5124 := by core033_kernel_decide
def partRows34 : List R1CS.Row := actualRows2200++actualRows2201++actualRows2202++actualRows2203++actualRows2204++actualRows2205++actualRows2206++actualRows2207++actualRows2208++actualRows2209++actualRows2210++actualRows2211++actualRows2212++actualRows2213++actualRows2214++actualRows2215++actualRows2216++actualRows2217++actualRows2218++actualRows2219++actualRows2220++actualRows2221++actualRows2222++actualRows2223++actualRows2224++actualRows2225++actualRows2226++actualRows2227++actualRows2228++actualRows2229++actualRows2230++actualRows2231++actualRows2232++actualRows2233++actualRows2234++actualRows2235++actualRows2236++actualRows2237++actualRows2238++actualRows2239++actualRows2240++actualRows2241++actualRows2242++actualRows2243++actualRows2244++actualRows2245++actualRows2246++actualRows2247++actualRows2248++actualRows2249++actualRows2250++actualRows2251++actualRows2252++actualRows2253++actualRows2254++actualRows2255++actualRows2256++actualRows2257++actualRows2258++actualRows2259++actualRows2260++actualRows2261++actualRows2262++actualRows2263
def partOps34 : List WordIR.Op := [.badd 2199 569,.rotr 2185 2,.rotr 2185 13,.bxor 2201 2202,.rotr 2185 22,.bxor 2203 2204,.band 2185 2158,.band 2185 2131,.bxor 2206 2207,.band 2158 2131,.bxor 2208 2209,.badd 2205 2210,.badd 2200 2211,.badd 2104 2200,.rotr 2213 6,.rotr 2213 11,.bxor 2214 2215,.rotr 2213 25,.bxor 2216 2217,.badd 2132 2218,.band 2213 2186,.bnot 2213,.band 2221 2159,.bxor 2220 2222,.badd 2219 2223,.literal (BitVec.ofNat 32 2227730452),.badd 2224 2225,.badd 2226 582,.rotr 2212 2,.rotr 2212 13,.bxor 2228 2229,.rotr 2212 22,.bxor 2230 2231,.band 2212 2185,.band 2212 2158,.bxor 2233 2234,.band 2185 2158,.bxor 2235 2236,.badd 2232 2237,.badd 2227 2238,.badd 2131 2227,.rotr 2240 6,.rotr 2240 11,.bxor 2241 2242,.rotr 2240 25,.bxor 2243 2244,.badd 2159 2245,.band 2240 2213,.bnot 2240,.band 2248 2186,.bxor 2247 2249,.badd 2246 2250,.literal (BitVec.ofNat 32 2361852424),.badd 2251 2252,.badd 2253 595,.rotr 2239 2,.rotr 2239 13,.bxor 2255 2256,.rotr 2239 22,.bxor 2257 2258,.band 2239 2212,.band 2239 2185,.bxor 2260 2261,.band 2212 2185]
theorem partRowsExact34 : partRows34=WordField.rows actualModulus 2200 partOps34 := by
  simp only [partRows34,partOps34,WordField.rows,rows2200,rows2201,rows2202,rows2203,rows2204,rows2205,rows2206,rows2207,rows2208,rows2209,rows2210,rows2211,rows2212,rows2213,rows2214,rows2215,rows2216,rows2217,rows2218,rows2219,rows2220,rows2221,rows2222,rows2223,rows2224,rows2225,rows2226,rows2227,rows2228,rows2229,rows2230,rows2231,rows2232,rows2233,rows2234,rows2235,rows2236,rows2237,rows2238,rows2239,rows2240,rows2241,rows2242,rows2243,rows2244,rows2245,rows2246,rows2247,rows2248,rows2249,rows2250,rows2251,rows2252,rows2253,rows2254,rows2255,rows2256,rows2257,rows2258,rows2259,rows2260,rows2261,rows2262,rows2263,List.append_assoc,List.append_nil]
theorem partOpsLength34 : partOps34.length=64 := by decide
theorem partStats34 : partRows34.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows34=370272 := by
  simp only [partRows34,List.length_append,MatrixRowBlocks.rows_weight_append,stats2200.1,stats2200.2,stats2201.1,stats2201.2,stats2202.1,stats2202.2,stats2203.1,stats2203.2,stats2204.1,stats2204.2,stats2205.1,stats2205.2,stats2206.1,stats2206.2,stats2207.1,stats2207.2,stats2208.1,stats2208.2,stats2209.1,stats2209.2,stats2210.1,stats2210.2,stats2211.1,stats2211.2,stats2212.1,stats2212.2,stats2213.1,stats2213.2,stats2214.1,stats2214.2,stats2215.1,stats2215.2,stats2216.1,stats2216.2,stats2217.1,stats2217.2,stats2218.1,stats2218.2,stats2219.1,stats2219.2,stats2220.1,stats2220.2,stats2221.1,stats2221.2,stats2222.1,stats2222.2,stats2223.1,stats2223.2,stats2224.1,stats2224.2,stats2225.1,stats2225.2,stats2226.1,stats2226.2,stats2227.1,stats2227.2,stats2228.1,stats2228.2,stats2229.1,stats2229.2,stats2230.1,stats2230.2,stats2231.1,stats2231.2,stats2232.1,stats2232.2,stats2233.1,stats2233.2,stats2234.1,stats2234.2,stats2235.1,stats2235.2,stats2236.1,stats2236.2,stats2237.1,stats2237.2,stats2238.1,stats2238.2,stats2239.1,stats2239.2,stats2240.1,stats2240.2,stats2241.1,stats2241.2,stats2242.1,stats2242.2,stats2243.1,stats2243.2,stats2244.1,stats2244.2,stats2245.1,stats2245.2,stats2246.1,stats2246.2,stats2247.1,stats2247.2,stats2248.1,stats2248.2,stats2249.1,stats2249.2,stats2250.1,stats2250.2,stats2251.1,stats2251.2,stats2252.1,stats2252.2,stats2253.1,stats2253.2,stats2254.1,stats2254.2,stats2255.1,stats2255.2,stats2256.1,stats2256.2,stats2257.1,stats2257.2,stats2258.1,stats2258.2,stats2259.1,stats2259.2,stats2260.1,stats2260.2,stats2261.1,stats2261.2,stats2262.1,stats2262.2,stats2263.1,stats2263.2]
  decide
end ActualSHAMatrixRows
