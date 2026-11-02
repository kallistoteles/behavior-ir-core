import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData33
import ActualMatrixData34
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2136 : actualRows2136=WordField.canonicalRows actualModulus 2136 (.rotr 2132 25) := by core033_kernel_decide
theorem stats2136 : actualRows2136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2136=5124 := by core033_kernel_decide
theorem rows2137 : actualRows2137=WordField.canonicalRows actualModulus 2137 (.bxor 2135 2136) := by core033_kernel_decide
theorem stats2137 : actualRows2137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2137=7428 := by core033_kernel_decide
theorem rows2138 : actualRows2138=WordField.canonicalRows actualModulus 2138 (.badd 2051 2137) := by core033_kernel_decide
theorem stats2138 : actualRows2138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2138=5388 := by core033_kernel_decide
theorem rows2139 : actualRows2139=WordField.canonicalRows actualModulus 2139 (.band 2132 2105) := by core033_kernel_decide
theorem stats2139 : actualRows2139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2139=5124 := by core033_kernel_decide
theorem rows2140 : actualRows2140=WordField.canonicalRows actualModulus 2140 (.bnot 2132) := by core033_kernel_decide
theorem stats2140 : actualRows2140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2140=6276 := by core033_kernel_decide
theorem rows2141 : actualRows2141=WordField.canonicalRows actualModulus 2141 (.band 2140 2078) := by core033_kernel_decide
theorem stats2141 : actualRows2141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2141=5124 := by core033_kernel_decide
theorem rows2142 : actualRows2142=WordField.canonicalRows actualModulus 2142 (.bxor 2139 2141) := by core033_kernel_decide
theorem stats2142 : actualRows2142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2142=7428 := by core033_kernel_decide
theorem rows2143 : actualRows2143=WordField.canonicalRows actualModulus 2143 (.badd 2138 2142) := by core033_kernel_decide
theorem stats2143 : actualRows2143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2143=5388 := by core033_kernel_decide
theorem rows2144 : actualRows2144=WordField.canonicalRows actualModulus 2144 (.literal (BitVec.ofNat 32 1747873779)) := by core033_kernel_decide
theorem stats2144 : actualRows2144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2144=4188 := by core033_kernel_decide
theorem rows2145 : actualRows2145=WordField.canonicalRows actualModulus 2145 (.badd 2143 2144) := by core033_kernel_decide
theorem stats2145 : actualRows2145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2145=5388 := by core033_kernel_decide
theorem rows2146 : actualRows2146=WordField.canonicalRows actualModulus 2146 (.badd 2145 543) := by core033_kernel_decide
theorem stats2146 : actualRows2146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2146=5388 := by core033_kernel_decide
theorem rows2147 : actualRows2147=WordField.canonicalRows actualModulus 2147 (.rotr 2131 2) := by core033_kernel_decide
theorem stats2147 : actualRows2147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2147=5124 := by core033_kernel_decide
theorem rows2148 : actualRows2148=WordField.canonicalRows actualModulus 2148 (.rotr 2131 13) := by core033_kernel_decide
theorem stats2148 : actualRows2148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2148=5124 := by core033_kernel_decide
theorem rows2149 : actualRows2149=WordField.canonicalRows actualModulus 2149 (.bxor 2147 2148) := by core033_kernel_decide
theorem stats2149 : actualRows2149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2149=7428 := by core033_kernel_decide
theorem rows2150 : actualRows2150=WordField.canonicalRows actualModulus 2150 (.rotr 2131 22) := by core033_kernel_decide
theorem stats2150 : actualRows2150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2150=5124 := by core033_kernel_decide
theorem rows2151 : actualRows2151=WordField.canonicalRows actualModulus 2151 (.bxor 2149 2150) := by core033_kernel_decide
theorem stats2151 : actualRows2151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2151=7428 := by core033_kernel_decide
theorem rows2152 : actualRows2152=WordField.canonicalRows actualModulus 2152 (.band 2131 2104) := by core033_kernel_decide
theorem stats2152 : actualRows2152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2152=5124 := by core033_kernel_decide
theorem rows2153 : actualRows2153=WordField.canonicalRows actualModulus 2153 (.band 2131 2077) := by core033_kernel_decide
theorem stats2153 : actualRows2153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2153=5124 := by core033_kernel_decide
theorem rows2154 : actualRows2154=WordField.canonicalRows actualModulus 2154 (.bxor 2152 2153) := by core033_kernel_decide
theorem stats2154 : actualRows2154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2154=7428 := by core033_kernel_decide
theorem rows2155 : actualRows2155=WordField.canonicalRows actualModulus 2155 (.band 2104 2077) := by core033_kernel_decide
theorem stats2155 : actualRows2155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2155=5124 := by core033_kernel_decide
theorem rows2156 : actualRows2156=WordField.canonicalRows actualModulus 2156 (.bxor 2154 2155) := by core033_kernel_decide
theorem stats2156 : actualRows2156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2156=7428 := by core033_kernel_decide
theorem rows2157 : actualRows2157=WordField.canonicalRows actualModulus 2157 (.badd 2151 2156) := by core033_kernel_decide
theorem stats2157 : actualRows2157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2157=5388 := by core033_kernel_decide
theorem rows2158 : actualRows2158=WordField.canonicalRows actualModulus 2158 (.badd 2146 2157) := by core033_kernel_decide
theorem stats2158 : actualRows2158.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2158=5388 := by core033_kernel_decide
theorem rows2159 : actualRows2159=WordField.canonicalRows actualModulus 2159 (.badd 2050 2146) := by core033_kernel_decide
theorem stats2159 : actualRows2159.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2159=5388 := by core033_kernel_decide
theorem rows2160 : actualRows2160=WordField.canonicalRows actualModulus 2160 (.rotr 2159 6) := by core033_kernel_decide
theorem stats2160 : actualRows2160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2160=5124 := by core033_kernel_decide
theorem rows2161 : actualRows2161=WordField.canonicalRows actualModulus 2161 (.rotr 2159 11) := by core033_kernel_decide
theorem stats2161 : actualRows2161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2161=5124 := by core033_kernel_decide
theorem rows2162 : actualRows2162=WordField.canonicalRows actualModulus 2162 (.bxor 2160 2161) := by core033_kernel_decide
theorem stats2162 : actualRows2162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2162=7428 := by core033_kernel_decide
theorem rows2163 : actualRows2163=WordField.canonicalRows actualModulus 2163 (.rotr 2159 25) := by core033_kernel_decide
theorem stats2163 : actualRows2163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2163=5124 := by core033_kernel_decide
theorem rows2164 : actualRows2164=WordField.canonicalRows actualModulus 2164 (.bxor 2162 2163) := by core033_kernel_decide
theorem stats2164 : actualRows2164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2164=7428 := by core033_kernel_decide
theorem rows2165 : actualRows2165=WordField.canonicalRows actualModulus 2165 (.badd 2078 2164) := by core033_kernel_decide
theorem stats2165 : actualRows2165.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2165=5388 := by core033_kernel_decide
theorem rows2166 : actualRows2166=WordField.canonicalRows actualModulus 2166 (.band 2159 2132) := by core033_kernel_decide
theorem stats2166 : actualRows2166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2166=5124 := by core033_kernel_decide
theorem rows2167 : actualRows2167=WordField.canonicalRows actualModulus 2167 (.bnot 2159) := by core033_kernel_decide
theorem stats2167 : actualRows2167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2167=6276 := by core033_kernel_decide
theorem rows2168 : actualRows2168=WordField.canonicalRows actualModulus 2168 (.band 2167 2105) := by core033_kernel_decide
theorem stats2168 : actualRows2168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2168=5124 := by core033_kernel_decide
theorem rows2169 : actualRows2169=WordField.canonicalRows actualModulus 2169 (.bxor 2166 2168) := by core033_kernel_decide
theorem stats2169 : actualRows2169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2169=7428 := by core033_kernel_decide
theorem rows2170 : actualRows2170=WordField.canonicalRows actualModulus 2170 (.badd 2165 2169) := by core033_kernel_decide
theorem stats2170 : actualRows2170.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2170=5388 := by core033_kernel_decide
theorem rows2171 : actualRows2171=WordField.canonicalRows actualModulus 2171 (.literal (BitVec.ofNat 32 1955562222)) := by core033_kernel_decide
theorem stats2171 : actualRows2171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2171=4044 := by core033_kernel_decide
theorem rows2172 : actualRows2172=WordField.canonicalRows actualModulus 2172 (.badd 2170 2171) := by core033_kernel_decide
theorem stats2172 : actualRows2172.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2172=5388 := by core033_kernel_decide
theorem rows2173 : actualRows2173=WordField.canonicalRows actualModulus 2173 (.badd 2172 556) := by core033_kernel_decide
theorem stats2173 : actualRows2173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2173=5388 := by core033_kernel_decide
theorem rows2174 : actualRows2174=WordField.canonicalRows actualModulus 2174 (.rotr 2158 2) := by core033_kernel_decide
theorem stats2174 : actualRows2174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2174=5124 := by core033_kernel_decide
theorem rows2175 : actualRows2175=WordField.canonicalRows actualModulus 2175 (.rotr 2158 13) := by core033_kernel_decide
theorem stats2175 : actualRows2175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2175=5124 := by core033_kernel_decide
theorem rows2176 : actualRows2176=WordField.canonicalRows actualModulus 2176 (.bxor 2174 2175) := by core033_kernel_decide
theorem stats2176 : actualRows2176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2176=7428 := by core033_kernel_decide
theorem rows2177 : actualRows2177=WordField.canonicalRows actualModulus 2177 (.rotr 2158 22) := by core033_kernel_decide
theorem stats2177 : actualRows2177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2177=5124 := by core033_kernel_decide
theorem rows2178 : actualRows2178=WordField.canonicalRows actualModulus 2178 (.bxor 2176 2177) := by core033_kernel_decide
theorem stats2178 : actualRows2178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2178=7428 := by core033_kernel_decide
theorem rows2179 : actualRows2179=WordField.canonicalRows actualModulus 2179 (.band 2158 2131) := by core033_kernel_decide
theorem stats2179 : actualRows2179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2179=5124 := by core033_kernel_decide
theorem rows2180 : actualRows2180=WordField.canonicalRows actualModulus 2180 (.band 2158 2104) := by core033_kernel_decide
theorem stats2180 : actualRows2180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2180=5124 := by core033_kernel_decide
theorem rows2181 : actualRows2181=WordField.canonicalRows actualModulus 2181 (.bxor 2179 2180) := by core033_kernel_decide
theorem stats2181 : actualRows2181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2181=7428 := by core033_kernel_decide
theorem rows2182 : actualRows2182=WordField.canonicalRows actualModulus 2182 (.band 2131 2104) := by core033_kernel_decide
theorem stats2182 : actualRows2182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2182=5124 := by core033_kernel_decide
theorem rows2183 : actualRows2183=WordField.canonicalRows actualModulus 2183 (.bxor 2181 2182) := by core033_kernel_decide
theorem stats2183 : actualRows2183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2183=7428 := by core033_kernel_decide
theorem rows2184 : actualRows2184=WordField.canonicalRows actualModulus 2184 (.badd 2178 2183) := by core033_kernel_decide
theorem stats2184 : actualRows2184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2184=5388 := by core033_kernel_decide
theorem rows2185 : actualRows2185=WordField.canonicalRows actualModulus 2185 (.badd 2173 2184) := by core033_kernel_decide
theorem stats2185 : actualRows2185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2185=5388 := by core033_kernel_decide
theorem rows2186 : actualRows2186=WordField.canonicalRows actualModulus 2186 (.badd 2077 2173) := by core033_kernel_decide
theorem stats2186 : actualRows2186.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2186=5388 := by core033_kernel_decide
theorem rows2187 : actualRows2187=WordField.canonicalRows actualModulus 2187 (.rotr 2186 6) := by core033_kernel_decide
theorem stats2187 : actualRows2187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2187=5124 := by core033_kernel_decide
theorem rows2188 : actualRows2188=WordField.canonicalRows actualModulus 2188 (.rotr 2186 11) := by core033_kernel_decide
theorem stats2188 : actualRows2188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2188=5124 := by core033_kernel_decide
theorem rows2189 : actualRows2189=WordField.canonicalRows actualModulus 2189 (.bxor 2187 2188) := by core033_kernel_decide
theorem stats2189 : actualRows2189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2189=7428 := by core033_kernel_decide
theorem rows2190 : actualRows2190=WordField.canonicalRows actualModulus 2190 (.rotr 2186 25) := by core033_kernel_decide
theorem stats2190 : actualRows2190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2190=5124 := by core033_kernel_decide
theorem rows2191 : actualRows2191=WordField.canonicalRows actualModulus 2191 (.bxor 2189 2190) := by core033_kernel_decide
theorem stats2191 : actualRows2191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2191=7428 := by core033_kernel_decide
theorem rows2192 : actualRows2192=WordField.canonicalRows actualModulus 2192 (.badd 2105 2191) := by core033_kernel_decide
theorem stats2192 : actualRows2192.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2192=5388 := by core033_kernel_decide
theorem rows2193 : actualRows2193=WordField.canonicalRows actualModulus 2193 (.band 2186 2159) := by core033_kernel_decide
theorem stats2193 : actualRows2193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2193=5124 := by core033_kernel_decide
theorem rows2194 : actualRows2194=WordField.canonicalRows actualModulus 2194 (.bnot 2186) := by core033_kernel_decide
theorem stats2194 : actualRows2194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2194=6276 := by core033_kernel_decide
theorem rows2195 : actualRows2195=WordField.canonicalRows actualModulus 2195 (.band 2194 2132) := by core033_kernel_decide
theorem stats2195 : actualRows2195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2195=5124 := by core033_kernel_decide
theorem rows2196 : actualRows2196=WordField.canonicalRows actualModulus 2196 (.bxor 2193 2195) := by core033_kernel_decide
theorem stats2196 : actualRows2196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2196=7428 := by core033_kernel_decide
theorem rows2197 : actualRows2197=WordField.canonicalRows actualModulus 2197 (.badd 2192 2196) := by core033_kernel_decide
theorem stats2197 : actualRows2197.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2197=5388 := by core033_kernel_decide
theorem rows2198 : actualRows2198=WordField.canonicalRows actualModulus 2198 (.literal (BitVec.ofNat 32 2024104815)) := by core033_kernel_decide
theorem stats2198 : actualRows2198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2198=4116 := by core033_kernel_decide
theorem rows2199 : actualRows2199=WordField.canonicalRows actualModulus 2199 (.badd 2197 2198) := by core033_kernel_decide
theorem stats2199 : actualRows2199.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2199=5388 := by core033_kernel_decide
def partRows33 : List R1CS.Row := actualRows2136++actualRows2137++actualRows2138++actualRows2139++actualRows2140++actualRows2141++actualRows2142++actualRows2143++actualRows2144++actualRows2145++actualRows2146++actualRows2147++actualRows2148++actualRows2149++actualRows2150++actualRows2151++actualRows2152++actualRows2153++actualRows2154++actualRows2155++actualRows2156++actualRows2157++actualRows2158++actualRows2159++actualRows2160++actualRows2161++actualRows2162++actualRows2163++actualRows2164++actualRows2165++actualRows2166++actualRows2167++actualRows2168++actualRows2169++actualRows2170++actualRows2171++actualRows2172++actualRows2173++actualRows2174++actualRows2175++actualRows2176++actualRows2177++actualRows2178++actualRows2179++actualRows2180++actualRows2181++actualRows2182++actualRows2183++actualRows2184++actualRows2185++actualRows2186++actualRows2187++actualRows2188++actualRows2189++actualRows2190++actualRows2191++actualRows2192++actualRows2193++actualRows2194++actualRows2195++actualRows2196++actualRows2197++actualRows2198++actualRows2199
def partOps33 : List WordIR.Op := [.rotr 2132 25,.bxor 2135 2136,.badd 2051 2137,.band 2132 2105,.bnot 2132,.band 2140 2078,.bxor 2139 2141,.badd 2138 2142,.literal (BitVec.ofNat 32 1747873779),.badd 2143 2144,.badd 2145 543,.rotr 2131 2,.rotr 2131 13,.bxor 2147 2148,.rotr 2131 22,.bxor 2149 2150,.band 2131 2104,.band 2131 2077,.bxor 2152 2153,.band 2104 2077,.bxor 2154 2155,.badd 2151 2156,.badd 2146 2157,.badd 2050 2146,.rotr 2159 6,.rotr 2159 11,.bxor 2160 2161,.rotr 2159 25,.bxor 2162 2163,.badd 2078 2164,.band 2159 2132,.bnot 2159,.band 2167 2105,.bxor 2166 2168,.badd 2165 2169,.literal (BitVec.ofNat 32 1955562222),.badd 2170 2171,.badd 2172 556,.rotr 2158 2,.rotr 2158 13,.bxor 2174 2175,.rotr 2158 22,.bxor 2176 2177,.band 2158 2131,.band 2158 2104,.bxor 2179 2180,.band 2131 2104,.bxor 2181 2182,.badd 2178 2183,.badd 2173 2184,.badd 2077 2173,.rotr 2186 6,.rotr 2186 11,.bxor 2187 2188,.rotr 2186 25,.bxor 2189 2190,.badd 2105 2191,.band 2186 2159,.bnot 2186,.band 2194 2132,.bxor 2193 2195,.badd 2192 2196,.literal (BitVec.ofNat 32 2024104815),.badd 2197 2198]
theorem partRowsExact33 : partRows33=WordField.rows actualModulus 2136 partOps33 := by
  simp only [partRows33,partOps33,WordField.rows,rows2136,rows2137,rows2138,rows2139,rows2140,rows2141,rows2142,rows2143,rows2144,rows2145,rows2146,rows2147,rows2148,rows2149,rows2150,rows2151,rows2152,rows2153,rows2154,rows2155,rows2156,rows2157,rows2158,rows2159,rows2160,rows2161,rows2162,rows2163,rows2164,rows2165,rows2166,rows2167,rows2168,rows2169,rows2170,rows2171,rows2172,rows2173,rows2174,rows2175,rows2176,rows2177,rows2178,rows2179,rows2180,rows2181,rows2182,rows2183,rows2184,rows2185,rows2186,rows2187,rows2188,rows2189,rows2190,rows2191,rows2192,rows2193,rows2194,rows2195,rows2196,rows2197,rows2198,rows2199,List.append_assoc,List.append_nil]
theorem partOpsLength33 : partOps33.length=64 := by decide
theorem partStats33 : partRows33.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows33=369720 := by
  simp only [partRows33,List.length_append,MatrixRowBlocks.rows_weight_append,stats2136.1,stats2136.2,stats2137.1,stats2137.2,stats2138.1,stats2138.2,stats2139.1,stats2139.2,stats2140.1,stats2140.2,stats2141.1,stats2141.2,stats2142.1,stats2142.2,stats2143.1,stats2143.2,stats2144.1,stats2144.2,stats2145.1,stats2145.2,stats2146.1,stats2146.2,stats2147.1,stats2147.2,stats2148.1,stats2148.2,stats2149.1,stats2149.2,stats2150.1,stats2150.2,stats2151.1,stats2151.2,stats2152.1,stats2152.2,stats2153.1,stats2153.2,stats2154.1,stats2154.2,stats2155.1,stats2155.2,stats2156.1,stats2156.2,stats2157.1,stats2157.2,stats2158.1,stats2158.2,stats2159.1,stats2159.2,stats2160.1,stats2160.2,stats2161.1,stats2161.2,stats2162.1,stats2162.2,stats2163.1,stats2163.2,stats2164.1,stats2164.2,stats2165.1,stats2165.2,stats2166.1,stats2166.2,stats2167.1,stats2167.2,stats2168.1,stats2168.2,stats2169.1,stats2169.2,stats2170.1,stats2170.2,stats2171.1,stats2171.2,stats2172.1,stats2172.2,stats2173.1,stats2173.2,stats2174.1,stats2174.2,stats2175.1,stats2175.2,stats2176.1,stats2176.2,stats2177.1,stats2177.2,stats2178.1,stats2178.2,stats2179.1,stats2179.2,stats2180.1,stats2180.2,stats2181.1,stats2181.2,stats2182.1,stats2182.2,stats2183.1,stats2183.2,stats2184.1,stats2184.2,stats2185.1,stats2185.2,stats2186.1,stats2186.2,stats2187.1,stats2187.2,stats2188.1,stats2188.2,stats2189.1,stats2189.2,stats2190.1,stats2190.2,stats2191.1,stats2191.2,stats2192.1,stats2192.2,stats2193.1,stats2193.2,stats2194.1,stats2194.2,stats2195.1,stats2195.2,stats2196.1,stats2196.2,stats2197.1,stats2197.2,stats2198.1,stats2198.2,stats2199.1,stats2199.2]
  decide
end ActualSHAMatrixRows
