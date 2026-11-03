import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData33
import AuthenticatedBranchRoundInstructionMatrixData34
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2166 : actualRows2166=WordField.canonicalRows actualModulus 2166 (.bnot 2165) := by core033_kernel_decide
theorem stats2166 : actualRows2166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2166=6276 := by core033_kernel_decide
theorem rows2167 : actualRows2167=WordField.canonicalRows actualModulus 2167 (.band 2166 1596) := by core033_kernel_decide
theorem stats2167 : actualRows2167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2167=5124 := by core033_kernel_decide
theorem rows2168 : actualRows2168=WordField.canonicalRows actualModulus 2168 (.bxor 2162 2167) := by core033_kernel_decide
theorem stats2168 : actualRows2168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2168=7428 := by core033_kernel_decide
theorem rows2169 : actualRows2169=WordField.canonicalRows actualModulus 2169 (.bnot 2078) := by core033_kernel_decide
theorem stats2169 : actualRows2169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2169=6276 := by core033_kernel_decide
theorem rows2170 : actualRows2170=WordField.canonicalRows actualModulus 2170 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2170 : actualRows2170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2170=2892 := by core033_kernel_decide
theorem rows2171 : actualRows2171=WordField.canonicalRows actualModulus 2171 (.badd 2169 2170) := by core033_kernel_decide
theorem stats2171 : actualRows2171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2171=5388 := by core033_kernel_decide
theorem rows2172 : actualRows2172=WordField.canonicalRows actualModulus 2172 (.band 2171 1629) := by core033_kernel_decide
theorem stats2172 : actualRows2172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2172=5124 := by core033_kernel_decide
theorem rows2173 : actualRows2173=WordField.canonicalRows actualModulus 2173 (.bnot 2078) := by core033_kernel_decide
theorem stats2173 : actualRows2173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2173=6276 := by core033_kernel_decide
theorem rows2174 : actualRows2174=WordField.canonicalRows actualModulus 2174 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2174 : actualRows2174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2174=2892 := by core033_kernel_decide
theorem rows2175 : actualRows2175=WordField.canonicalRows actualModulus 2175 (.badd 2173 2174) := by core033_kernel_decide
theorem stats2175 : actualRows2175.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2175=5388 := by core033_kernel_decide
theorem rows2176 : actualRows2176=WordField.canonicalRows actualModulus 2176 (.bnot 2175) := by core033_kernel_decide
theorem stats2176 : actualRows2176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2176=6276 := by core033_kernel_decide
theorem rows2177 : actualRows2177=WordField.canonicalRows actualModulus 2177 (.band 2176 1607) := by core033_kernel_decide
theorem stats2177 : actualRows2177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2177=5124 := by core033_kernel_decide
theorem rows2178 : actualRows2178=WordField.canonicalRows actualModulus 2178 (.bxor 2172 2177) := by core033_kernel_decide
theorem stats2178 : actualRows2178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2178=7428 := by core033_kernel_decide
theorem rows2179 : actualRows2179=WordField.canonicalRows actualModulus 2179 (.bnot 2078) := by core033_kernel_decide
theorem stats2179 : actualRows2179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2179=6276 := by core033_kernel_decide
theorem rows2180 : actualRows2180=WordField.canonicalRows actualModulus 2180 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2180 : actualRows2180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2180=2892 := by core033_kernel_decide
theorem rows2181 : actualRows2181=WordField.canonicalRows actualModulus 2181 (.badd 2179 2180) := by core033_kernel_decide
theorem stats2181 : actualRows2181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2181=5388 := by core033_kernel_decide
theorem rows2182 : actualRows2182=WordField.canonicalRows actualModulus 2182 (.band 2181 1651) := by core033_kernel_decide
theorem stats2182 : actualRows2182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2182=5124 := by core033_kernel_decide
theorem rows2183 : actualRows2183=WordField.canonicalRows actualModulus 2183 (.bnot 2078) := by core033_kernel_decide
theorem stats2183 : actualRows2183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2183=6276 := by core033_kernel_decide
theorem rows2184 : actualRows2184=WordField.canonicalRows actualModulus 2184 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2184 : actualRows2184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2184=2892 := by core033_kernel_decide
theorem rows2185 : actualRows2185=WordField.canonicalRows actualModulus 2185 (.badd 2183 2184) := by core033_kernel_decide
theorem stats2185 : actualRows2185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2185=5388 := by core033_kernel_decide
theorem rows2186 : actualRows2186=WordField.canonicalRows actualModulus 2186 (.bnot 2185) := by core033_kernel_decide
theorem stats2186 : actualRows2186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2186=6276 := by core033_kernel_decide
theorem rows2187 : actualRows2187=WordField.canonicalRows actualModulus 2187 (.band 2186 1640) := by core033_kernel_decide
theorem stats2187 : actualRows2187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2187=5124 := by core033_kernel_decide
theorem rows2188 : actualRows2188=WordField.canonicalRows actualModulus 2188 (.bxor 2182 2187) := by core033_kernel_decide
theorem stats2188 : actualRows2188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2188=7428 := by core033_kernel_decide
theorem rows2189 : actualRows2189=WordField.canonicalRows actualModulus 2189 (.bnot 2078) := by core033_kernel_decide
theorem stats2189 : actualRows2189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2189=6276 := by core033_kernel_decide
theorem rows2190 : actualRows2190=WordField.canonicalRows actualModulus 2190 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2190 : actualRows2190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2190=2892 := by core033_kernel_decide
theorem rows2191 : actualRows2191=WordField.canonicalRows actualModulus 2191 (.badd 2189 2190) := by core033_kernel_decide
theorem stats2191 : actualRows2191.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2191=5388 := by core033_kernel_decide
theorem rows2192 : actualRows2192=WordField.canonicalRows actualModulus 2192 (.band 2191 1673) := by core033_kernel_decide
theorem stats2192 : actualRows2192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2192=5124 := by core033_kernel_decide
theorem rows2193 : actualRows2193=WordField.canonicalRows actualModulus 2193 (.bnot 2078) := by core033_kernel_decide
theorem stats2193 : actualRows2193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2193=6276 := by core033_kernel_decide
theorem rows2194 : actualRows2194=WordField.canonicalRows actualModulus 2194 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2194 : actualRows2194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2194=2892 := by core033_kernel_decide
theorem rows2195 : actualRows2195=WordField.canonicalRows actualModulus 2195 (.badd 2193 2194) := by core033_kernel_decide
theorem stats2195 : actualRows2195.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2195=5388 := by core033_kernel_decide
theorem rows2196 : actualRows2196=WordField.canonicalRows actualModulus 2196 (.bnot 2195) := by core033_kernel_decide
theorem stats2196 : actualRows2196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2196=6276 := by core033_kernel_decide
theorem rows2197 : actualRows2197=WordField.canonicalRows actualModulus 2197 (.band 2196 1662) := by core033_kernel_decide
theorem stats2197 : actualRows2197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2197=5124 := by core033_kernel_decide
theorem rows2198 : actualRows2198=WordField.canonicalRows actualModulus 2198 (.bxor 2192 2197) := by core033_kernel_decide
theorem stats2198 : actualRows2198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2198=7428 := by core033_kernel_decide
theorem rows2199 : actualRows2199=WordField.canonicalRows actualModulus 2199 (.bnot 2078) := by core033_kernel_decide
theorem stats2199 : actualRows2199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2199=6276 := by core033_kernel_decide
theorem rows2200 : actualRows2200=WordField.canonicalRows actualModulus 2200 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2200 : actualRows2200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2200=2892 := by core033_kernel_decide
theorem rows2201 : actualRows2201=WordField.canonicalRows actualModulus 2201 (.badd 2199 2200) := by core033_kernel_decide
theorem stats2201 : actualRows2201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2201=5388 := by core033_kernel_decide
theorem rows2202 : actualRows2202=WordField.canonicalRows actualModulus 2202 (.band 2201 1420) := by core033_kernel_decide
theorem stats2202 : actualRows2202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2202=5124 := by core033_kernel_decide
theorem rows2203 : actualRows2203=WordField.canonicalRows actualModulus 2203 (.bnot 2078) := by core033_kernel_decide
theorem stats2203 : actualRows2203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2203=6276 := by core033_kernel_decide
theorem rows2204 : actualRows2204=WordField.canonicalRows actualModulus 2204 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2204 : actualRows2204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2204=2892 := by core033_kernel_decide
theorem rows2205 : actualRows2205=WordField.canonicalRows actualModulus 2205 (.badd 2203 2204) := by core033_kernel_decide
theorem stats2205 : actualRows2205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2205=5388 := by core033_kernel_decide
theorem rows2206 : actualRows2206=WordField.canonicalRows actualModulus 2206 (.bnot 2205) := by core033_kernel_decide
theorem stats2206 : actualRows2206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2206=6276 := by core033_kernel_decide
theorem rows2207 : actualRows2207=WordField.canonicalRows actualModulus 2207 (.band 2206 1508) := by core033_kernel_decide
theorem stats2207 : actualRows2207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2207=5124 := by core033_kernel_decide
theorem rows2208 : actualRows2208=WordField.canonicalRows actualModulus 2208 (.bxor 2202 2207) := by core033_kernel_decide
theorem stats2208 : actualRows2208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2208=7428 := by core033_kernel_decide
theorem rows2209 : actualRows2209=WordField.canonicalRows actualModulus 2209 (.bnot 2078) := by core033_kernel_decide
theorem stats2209 : actualRows2209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2209=6276 := by core033_kernel_decide
theorem rows2210 : actualRows2210=WordField.canonicalRows actualModulus 2210 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2210 : actualRows2210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2210=2892 := by core033_kernel_decide
theorem rows2211 : actualRows2211=WordField.canonicalRows actualModulus 2211 (.badd 2209 2210) := by core033_kernel_decide
theorem stats2211 : actualRows2211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2211=5388 := by core033_kernel_decide
theorem rows2212 : actualRows2212=WordField.canonicalRows actualModulus 2212 (.band 2211 1431) := by core033_kernel_decide
theorem stats2212 : actualRows2212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2212=5124 := by core033_kernel_decide
theorem rows2213 : actualRows2213=WordField.canonicalRows actualModulus 2213 (.bnot 2078) := by core033_kernel_decide
theorem stats2213 : actualRows2213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2213=6276 := by core033_kernel_decide
theorem rows2214 : actualRows2214=WordField.canonicalRows actualModulus 2214 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2214 : actualRows2214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2214=2892 := by core033_kernel_decide
theorem rows2215 : actualRows2215=WordField.canonicalRows actualModulus 2215 (.badd 2213 2214) := by core033_kernel_decide
theorem stats2215 : actualRows2215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2215=5388 := by core033_kernel_decide
theorem rows2216 : actualRows2216=WordField.canonicalRows actualModulus 2216 (.bnot 2215) := by core033_kernel_decide
theorem stats2216 : actualRows2216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2216=6276 := by core033_kernel_decide
theorem rows2217 : actualRows2217=WordField.canonicalRows actualModulus 2217 (.band 2216 1519) := by core033_kernel_decide
theorem stats2217 : actualRows2217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2217=5124 := by core033_kernel_decide
theorem rows2218 : actualRows2218=WordField.canonicalRows actualModulus 2218 (.bxor 2212 2217) := by core033_kernel_decide
theorem stats2218 : actualRows2218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2218=7428 := by core033_kernel_decide
theorem rows2219 : actualRows2219=WordField.canonicalRows actualModulus 2219 (.bnot 2078) := by core033_kernel_decide
theorem stats2219 : actualRows2219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2219=6276 := by core033_kernel_decide
theorem rows2220 : actualRows2220=WordField.canonicalRows actualModulus 2220 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2220 : actualRows2220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2220=2892 := by core033_kernel_decide
theorem rows2221 : actualRows2221=WordField.canonicalRows actualModulus 2221 (.badd 2219 2220) := by core033_kernel_decide
theorem stats2221 : actualRows2221.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2221=5388 := by core033_kernel_decide
theorem rows2222 : actualRows2222=WordField.canonicalRows actualModulus 2222 (.band 2221 1442) := by core033_kernel_decide
theorem stats2222 : actualRows2222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2222=5124 := by core033_kernel_decide
theorem rows2223 : actualRows2223=WordField.canonicalRows actualModulus 2223 (.bnot 2078) := by core033_kernel_decide
theorem stats2223 : actualRows2223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2223=6276 := by core033_kernel_decide
theorem rows2224 : actualRows2224=WordField.canonicalRows actualModulus 2224 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2224 : actualRows2224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2224=2892 := by core033_kernel_decide
theorem rows2225 : actualRows2225=WordField.canonicalRows actualModulus 2225 (.badd 2223 2224) := by core033_kernel_decide
theorem stats2225 : actualRows2225.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2225=5388 := by core033_kernel_decide
theorem rows2226 : actualRows2226=WordField.canonicalRows actualModulus 2226 (.bnot 2225) := by core033_kernel_decide
theorem stats2226 : actualRows2226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2226=6276 := by core033_kernel_decide
theorem rows2227 : actualRows2227=WordField.canonicalRows actualModulus 2227 (.band 2226 1530) := by core033_kernel_decide
theorem stats2227 : actualRows2227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2227=5124 := by core033_kernel_decide
theorem rows2228 : actualRows2228=WordField.canonicalRows actualModulus 2228 (.bxor 2222 2227) := by core033_kernel_decide
theorem stats2228 : actualRows2228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2228=7428 := by core033_kernel_decide
theorem rows2229 : actualRows2229=WordField.canonicalRows actualModulus 2229 (.bnot 2078) := by core033_kernel_decide
theorem stats2229 : actualRows2229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2229=6276 := by core033_kernel_decide
def partRows32 : List R1CS.Row := actualRows2166++actualRows2167++actualRows2168++actualRows2169++actualRows2170++actualRows2171++actualRows2172++actualRows2173++actualRows2174++actualRows2175++actualRows2176++actualRows2177++actualRows2178++actualRows2179++actualRows2180++actualRows2181++actualRows2182++actualRows2183++actualRows2184++actualRows2185++actualRows2186++actualRows2187++actualRows2188++actualRows2189++actualRows2190++actualRows2191++actualRows2192++actualRows2193++actualRows2194++actualRows2195++actualRows2196++actualRows2197++actualRows2198++actualRows2199++actualRows2200++actualRows2201++actualRows2202++actualRows2203++actualRows2204++actualRows2205++actualRows2206++actualRows2207++actualRows2208++actualRows2209++actualRows2210++actualRows2211++actualRows2212++actualRows2213++actualRows2214++actualRows2215++actualRows2216++actualRows2217++actualRows2218++actualRows2219++actualRows2220++actualRows2221++actualRows2222++actualRows2223++actualRows2224++actualRows2225++actualRows2226++actualRows2227++actualRows2228++actualRows2229
def partOps32 : List WordIR.Op := [.bnot 2165,.band 2166 1596,.bxor 2162 2167,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2169 2170,.band 2171 1629,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2173 2174,.bnot 2175,.band 2176 1607,.bxor 2172 2177,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2179 2180,.band 2181 1651,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2183 2184,.bnot 2185,.band 2186 1640,.bxor 2182 2187,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2189 2190,.band 2191 1673,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2193 2194,.bnot 2195,.band 2196 1662,.bxor 2192 2197,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2199 2200,.band 2201 1420,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2203 2204,.bnot 2205,.band 2206 1508,.bxor 2202 2207,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2209 2210,.band 2211 1431,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2213 2214,.bnot 2215,.band 2216 1519,.bxor 2212 2217,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2219 2220,.band 2221 1442,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2223 2224,.bnot 2225,.band 2226 1530,.bxor 2222 2227,.bnot 2078]
theorem partExact32 : partRows32=WordField.rows actualModulus 2166 partOps32 := by
  simp only [partRows32,partOps32,WordField.rows,rows2166,rows2167,rows2168,rows2169,rows2170,rows2171,rows2172,rows2173,rows2174,rows2175,rows2176,rows2177,rows2178,rows2179,rows2180,rows2181,rows2182,rows2183,rows2184,rows2185,rows2186,rows2187,rows2188,rows2189,rows2190,rows2191,rows2192,rows2193,rows2194,rows2195,rows2196,rows2197,rows2198,rows2199,rows2200,rows2201,rows2202,rows2203,rows2204,rows2205,rows2206,rows2207,rows2208,rows2209,rows2210,rows2211,rows2212,rows2213,rows2214,rows2215,rows2216,rows2217,rows2218,rows2219,rows2220,rows2221,rows2222,rows2223,rows2224,rows2225,rows2226,rows2227,rows2228,rows2229,List.append_assoc,List.append_nil]
theorem partLength32 : partOps32.length=64 := by decide
theorem partStats32 : partRows32.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows32=343488 := by
  simp only [partRows32,List.length_append,MatrixRowBlocks.rows_weight_append,stats2166.1,stats2166.2,stats2167.1,stats2167.2,stats2168.1,stats2168.2,stats2169.1,stats2169.2,stats2170.1,stats2170.2,stats2171.1,stats2171.2,stats2172.1,stats2172.2,stats2173.1,stats2173.2,stats2174.1,stats2174.2,stats2175.1,stats2175.2,stats2176.1,stats2176.2,stats2177.1,stats2177.2,stats2178.1,stats2178.2,stats2179.1,stats2179.2,stats2180.1,stats2180.2,stats2181.1,stats2181.2,stats2182.1,stats2182.2,stats2183.1,stats2183.2,stats2184.1,stats2184.2,stats2185.1,stats2185.2,stats2186.1,stats2186.2,stats2187.1,stats2187.2,stats2188.1,stats2188.2,stats2189.1,stats2189.2,stats2190.1,stats2190.2,stats2191.1,stats2191.2,stats2192.1,stats2192.2,stats2193.1,stats2193.2,stats2194.1,stats2194.2,stats2195.1,stats2195.2,stats2196.1,stats2196.2,stats2197.1,stats2197.2,stats2198.1,stats2198.2,stats2199.1,stats2199.2,stats2200.1,stats2200.2,stats2201.1,stats2201.2,stats2202.1,stats2202.2,stats2203.1,stats2203.2,stats2204.1,stats2204.2,stats2205.1,stats2205.2,stats2206.1,stats2206.2,stats2207.1,stats2207.2,stats2208.1,stats2208.2,stats2209.1,stats2209.2,stats2210.1,stats2210.2,stats2211.1,stats2211.2,stats2212.1,stats2212.2,stats2213.1,stats2213.2,stats2214.1,stats2214.2,stats2215.1,stats2215.2,stats2216.1,stats2216.2,stats2217.1,stats2217.2,stats2218.1,stats2218.2,stats2219.1,stats2219.2,stats2220.1,stats2220.2,stats2221.1,stats2221.2,stats2222.1,stats2222.2,stats2223.1,stats2223.2,stats2224.1,stats2224.2,stats2225.1,stats2225.2,stats2226.1,stats2226.2,stats2227.1,stats2227.2,stats2228.1,stats2228.2,stats2229.1,stats2229.2]
  decide
end AuthenticatedBranchRoundCheckedRows
