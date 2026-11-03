import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup34
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2176 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2176 : Bytes := ("    let r000008f6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2176 : bytes2176=statementBytes 2294 (op2176.map lower) ∧ bytes2176.length=41 := by core033_kernel_decide
def op2177 : List WordIR.Op := [.badd 2293 2294]
def bytes2177 : Bytes := ("    let r000008f7: u32 = r000008f5.wrapping_add(r000008f6);\n" : String).toByteArray.data.toList
theorem checked2177 : bytes2177=statementBytes 2295 (op2177.map lower) ∧ bytes2177.length=60 := by core033_kernel_decide
def op2178 : List WordIR.Op := [.bnot 2295]
def bytes2178 : Bytes := ("    let r000008f8: u32 = !r000008f7;\n" : String).toByteArray.data.toList
theorem checked2178 : bytes2178=statementBytes 2296 (op2178.map lower) ∧ bytes2178.length=37 := by core033_kernel_decide
def op2179 : List WordIR.Op := [.band 2296 1629]
def bytes2179 : Bytes := ("    let r000008f9: u32 = r000008f8 & r0000065d;\n" : String).toByteArray.data.toList
theorem checked2179 : bytes2179=statementBytes 2297 (op2179.map lower) ∧ bytes2179.length=48 := by core033_kernel_decide
def op2180 : List WordIR.Op := [.bxor 2292 2297]
def bytes2180 : Bytes := ("    let r000008fa: u32 = r000008f4 ^ r000008f9;\n" : String).toByteArray.data.toList
theorem checked2180 : bytes2180=statementBytes 2298 (op2180.map lower) ∧ bytes2180.length=48 := by core033_kernel_decide
def op2181 : List WordIR.Op := [.bnot 2078]
def bytes2181 : Bytes := ("    let r000008fb: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2181 : bytes2181=statementBytes 2299 (op2181.map lower) ∧ bytes2181.length=37 := by core033_kernel_decide
def op2182 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2182 : Bytes := ("    let r000008fc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2182 : bytes2182=statementBytes 2300 (op2182.map lower) ∧ bytes2182.length=41 := by core033_kernel_decide
def op2183 : List WordIR.Op := [.badd 2299 2300]
def bytes2183 : Bytes := ("    let r000008fd: u32 = r000008fb.wrapping_add(r000008fc);\n" : String).toByteArray.data.toList
theorem checked2183 : bytes2183=statementBytes 2301 (op2183.map lower) ∧ bytes2183.length=60 := by core033_kernel_decide
def op2184 : List WordIR.Op := [.band 2301 1640]
def bytes2184 : Bytes := ("    let r000008fe: u32 = r000008fd & r00000668;\n" : String).toByteArray.data.toList
theorem checked2184 : bytes2184=statementBytes 2302 (op2184.map lower) ∧ bytes2184.length=48 := by core033_kernel_decide
def op2185 : List WordIR.Op := [.bnot 2078]
def bytes2185 : Bytes := ("    let r000008ff: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2185 : bytes2185=statementBytes 2303 (op2185.map lower) ∧ bytes2185.length=37 := by core033_kernel_decide
def op2186 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2186 : Bytes := ("    let r00000900: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2186 : bytes2186=statementBytes 2304 (op2186.map lower) ∧ bytes2186.length=41 := by core033_kernel_decide
def op2187 : List WordIR.Op := [.badd 2303 2304]
def bytes2187 : Bytes := ("    let r00000901: u32 = r000008ff.wrapping_add(r00000900);\n" : String).toByteArray.data.toList
theorem checked2187 : bytes2187=statementBytes 2305 (op2187.map lower) ∧ bytes2187.length=60 := by core033_kernel_decide
def op2188 : List WordIR.Op := [.bnot 2305]
def bytes2188 : Bytes := ("    let r00000902: u32 = !r00000901;\n" : String).toByteArray.data.toList
theorem checked2188 : bytes2188=statementBytes 2306 (op2188.map lower) ∧ bytes2188.length=37 := by core033_kernel_decide
def op2189 : List WordIR.Op := [.band 2306 1651]
def bytes2189 : Bytes := ("    let r00000903: u32 = r00000902 & r00000673;\n" : String).toByteArray.data.toList
theorem checked2189 : bytes2189=statementBytes 2307 (op2189.map lower) ∧ bytes2189.length=48 := by core033_kernel_decide
def op2190 : List WordIR.Op := [.bxor 2302 2307]
def bytes2190 : Bytes := ("    let r00000904: u32 = r000008fe ^ r00000903;\n" : String).toByteArray.data.toList
theorem checked2190 : bytes2190=statementBytes 2308 (op2190.map lower) ∧ bytes2190.length=48 := by core033_kernel_decide
def op2191 : List WordIR.Op := [.bnot 2078]
def bytes2191 : Bytes := ("    let r00000905: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2191 : bytes2191=statementBytes 2309 (op2191.map lower) ∧ bytes2191.length=37 := by core033_kernel_decide
def op2192 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2192 : Bytes := ("    let r00000906: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2192 : bytes2192=statementBytes 2310 (op2192.map lower) ∧ bytes2192.length=41 := by core033_kernel_decide
def op2193 : List WordIR.Op := [.badd 2309 2310]
def bytes2193 : Bytes := ("    let r00000907: u32 = r00000905.wrapping_add(r00000906);\n" : String).toByteArray.data.toList
theorem checked2193 : bytes2193=statementBytes 2311 (op2193.map lower) ∧ bytes2193.length=60 := by core033_kernel_decide
def op2194 : List WordIR.Op := [.band 2311 1662]
def bytes2194 : Bytes := ("    let r00000908: u32 = r00000907 & r0000067e;\n" : String).toByteArray.data.toList
theorem checked2194 : bytes2194=statementBytes 2312 (op2194.map lower) ∧ bytes2194.length=48 := by core033_kernel_decide
def op2195 : List WordIR.Op := [.bnot 2078]
def bytes2195 : Bytes := ("    let r00000909: u32 = !r0000081e;\n" : String).toByteArray.data.toList
theorem checked2195 : bytes2195=statementBytes 2313 (op2195.map lower) ∧ bytes2195.length=37 := by core033_kernel_decide
def op2196 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2196 : Bytes := ("    let r0000090a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2196 : bytes2196=statementBytes 2314 (op2196.map lower) ∧ bytes2196.length=41 := by core033_kernel_decide
def op2197 : List WordIR.Op := [.badd 2313 2314]
def bytes2197 : Bytes := ("    let r0000090b: u32 = r00000909.wrapping_add(r0000090a);\n" : String).toByteArray.data.toList
theorem checked2197 : bytes2197=statementBytes 2315 (op2197.map lower) ∧ bytes2197.length=60 := by core033_kernel_decide
def op2198 : List WordIR.Op := [.bnot 2315]
def bytes2198 : Bytes := ("    let r0000090c: u32 = !r0000090b;\n" : String).toByteArray.data.toList
theorem checked2198 : bytes2198=statementBytes 2316 (op2198.map lower) ∧ bytes2198.length=37 := by core033_kernel_decide
def op2199 : List WordIR.Op := [.band 2316 1673]
def bytes2199 : Bytes := ("    let r0000090d: u32 = r0000090c & r00000689;\n" : String).toByteArray.data.toList
theorem checked2199 : bytes2199=statementBytes 2317 (op2199.map lower) ∧ bytes2199.length=48 := by core033_kernel_decide
def op2200 : List WordIR.Op := [.bxor 2312 2317]
def bytes2200 : Bytes := ("    let r0000090e: u32 = r00000908 ^ r0000090d;\n" : String).toByteArray.data.toList
theorem checked2200 : bytes2200=statementBytes 2318 (op2200.map lower) ∧ bytes2200.length=48 := by core033_kernel_decide
def op2201 : List WordIR.Op := [.shr 2078 1]
def bytes2201 : Bytes := ("    let r0000090f: u32 = r0000081e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2201 : bytes2201=statementBytes 2319 (op2201.map lower) ∧ bytes2201.length=54 := by core033_kernel_decide
def op2202 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2202 : Bytes := ("    let r00000910: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2202 : bytes2202=statementBytes 2320 (op2202.map lower) ∧ bytes2202.length=41 := by core033_kernel_decide
def op2203 : List WordIR.Op := [.bnot 2320]
def bytes2203 : Bytes := ("    let r00000911: u32 = !r00000910;\n" : String).toByteArray.data.toList
theorem checked2203 : bytes2203=statementBytes 2321 (op2203.map lower) ∧ bytes2203.length=37 := by core033_kernel_decide
def op2204 : List WordIR.Op := [.band 2319 2321]
def bytes2204 : Bytes := ("    let r00000912: u32 = r0000090f & r00000911;\n" : String).toByteArray.data.toList
theorem checked2204 : bytes2204=statementBytes 2322 (op2204.map lower) ∧ bytes2204.length=48 := by core033_kernel_decide
def op2205 : List WordIR.Op := [.shr 2078 1]
def bytes2205 : Bytes := ("    let r00000913: u32 = r0000081e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2205 : bytes2205=statementBytes 2323 (op2205.map lower) ∧ bytes2205.length=54 := by core033_kernel_decide
def op2206 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2206 : Bytes := ("    let r00000914: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2206 : bytes2206=statementBytes 2324 (op2206.map lower) ∧ bytes2206.length=41 := by core033_kernel_decide
def op2207 : List WordIR.Op := [.bnot 2324]
def bytes2207 : Bytes := ("    let r00000915: u32 = !r00000914;\n" : String).toByteArray.data.toList
theorem checked2207 : bytes2207=statementBytes 2325 (op2207.map lower) ∧ bytes2207.length=37 := by core033_kernel_decide
def op2208 : List WordIR.Op := [.bxor 2323 2325]
def bytes2208 : Bytes := ("    let r00000916: u32 = r00000913 ^ r00000915;\n" : String).toByteArray.data.toList
theorem checked2208 : bytes2208=statementBytes 2326 (op2208.map lower) ∧ bytes2208.length=48 := by core033_kernel_decide
def op2209 : List WordIR.Op := [.shr 2078 1]
def bytes2209 : Bytes := ("    let r00000917: u32 = r0000081e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2209 : bytes2209=statementBytes 2327 (op2209.map lower) ∧ bytes2209.length=54 := by core033_kernel_decide
def op2210 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2210 : Bytes := ("    let r00000918: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2210 : bytes2210=statementBytes 2328 (op2210.map lower) ∧ bytes2210.length=41 := by core033_kernel_decide
def op2211 : List WordIR.Op := [.bnot 2328]
def bytes2211 : Bytes := ("    let r00000919: u32 = !r00000918;\n" : String).toByteArray.data.toList
theorem checked2211 : bytes2211=statementBytes 2329 (op2211.map lower) ∧ bytes2211.length=37 := by core033_kernel_decide
def op2212 : List WordIR.Op := [.badd 2327 2329]
def bytes2212 : Bytes := ("    let r0000091a: u32 = r00000917.wrapping_add(r00000919);\n" : String).toByteArray.data.toList
theorem checked2212 : bytes2212=statementBytes 2330 (op2212.map lower) ∧ bytes2212.length=60 := by core033_kernel_decide
def op2213 : List WordIR.Op := [.bnot 2330]
def bytes2213 : Bytes := ("    let r0000091b: u32 = !r0000091a;\n" : String).toByteArray.data.toList
theorem checked2213 : bytes2213=statementBytes 2331 (op2213.map lower) ∧ bytes2213.length=37 := by core033_kernel_decide
def op2214 : List WordIR.Op := [.band 2326 2331]
def bytes2214 : Bytes := ("    let r0000091c: u32 = r00000916 & r0000091b;\n" : String).toByteArray.data.toList
theorem checked2214 : bytes2214=statementBytes 2332 (op2214.map lower) ∧ bytes2214.length=48 := by core033_kernel_decide
def op2215 : List WordIR.Op := [.bxor 2322 2332]
def bytes2215 : Bytes := ("    let r0000091d: u32 = r00000912 ^ r0000091c;\n" : String).toByteArray.data.toList
theorem checked2215 : bytes2215=statementBytes 2333 (op2215.map lower) ∧ bytes2215.length=48 := by core033_kernel_decide
def op2216 : List WordIR.Op := [.shr 2333 31]
def bytes2216 : Bytes := ("    let r0000091e: u32 = r0000091d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2216 : bytes2216=statementBytes 2334 (op2216.map lower) ∧ bytes2216.length=54 := by core033_kernel_decide
def op2217 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2217 : Bytes := ("    let r0000091f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2217 : bytes2217=statementBytes 2335 (op2217.map lower) ∧ bytes2217.length=41 := by core033_kernel_decide
def op2218 : List WordIR.Op := [.bxor 2334 2335]
def bytes2218 : Bytes := ("    let r00000920: u32 = r0000091e ^ r0000091f;\n" : String).toByteArray.data.toList
theorem checked2218 : bytes2218=statementBytes 2336 (op2218.map lower) ∧ bytes2218.length=48 := by core033_kernel_decide
def op2219 : List WordIR.Op := [.badd 2168 2288]
def bytes2219 : Bytes := ("    let r00000921: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2219 : bytes2219=statementBytes 2337 (op2219.map lower) ∧ bytes2219.length=60 := by core033_kernel_decide
def op2220 : List WordIR.Op := [.badd 2178 2298]
def bytes2220 : Bytes := ("    let r00000922: u32 = r00000882.wrapping_add(r000008fa);\n" : String).toByteArray.data.toList
theorem checked2220 : bytes2220=statementBytes 2338 (op2220.map lower) ∧ bytes2220.length=60 := by core033_kernel_decide
def op2221 : List WordIR.Op := [.band 2168 2288]
def bytes2221 : Bytes := ("    let r00000923: u32 = r00000878 & r000008f0;\n" : String).toByteArray.data.toList
theorem checked2221 : bytes2221=statementBytes 2339 (op2221.map lower) ∧ bytes2221.length=48 := by core033_kernel_decide
def op2222 : List WordIR.Op := [.bxor 2168 2288]
def bytes2222 : Bytes := ("    let r00000924: u32 = r00000878 ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2222 : bytes2222=statementBytes 2340 (op2222.map lower) ∧ bytes2222.length=48 := by core033_kernel_decide
def op2223 : List WordIR.Op := [.badd 2168 2288]
def bytes2223 : Bytes := ("    let r00000925: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2223 : bytes2223=statementBytes 2341 (op2223.map lower) ∧ bytes2223.length=60 := by core033_kernel_decide
def op2224 : List WordIR.Op := [.bnot 2341]
def bytes2224 : Bytes := ("    let r00000926: u32 = !r00000925;\n" : String).toByteArray.data.toList
theorem checked2224 : bytes2224=statementBytes 2342 (op2224.map lower) ∧ bytes2224.length=37 := by core033_kernel_decide
def op2225 : List WordIR.Op := [.band 2340 2342]
def bytes2225 : Bytes := ("    let r00000927: u32 = r00000924 & r00000926;\n" : String).toByteArray.data.toList
theorem checked2225 : bytes2225=statementBytes 2343 (op2225.map lower) ∧ bytes2225.length=48 := by core033_kernel_decide
def op2226 : List WordIR.Op := [.bxor 2339 2343]
def bytes2226 : Bytes := ("    let r00000928: u32 = r00000923 ^ r00000927;\n" : String).toByteArray.data.toList
theorem checked2226 : bytes2226=statementBytes 2344 (op2226.map lower) ∧ bytes2226.length=48 := by core033_kernel_decide
def op2227 : List WordIR.Op := [.shr 2344 31]
def bytes2227 : Bytes := ("    let r00000929: u32 = r00000928 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2227 : bytes2227=statementBytes 2345 (op2227.map lower) ∧ bytes2227.length=54 := by core033_kernel_decide
def op2228 : List WordIR.Op := [.badd 2338 2345]
def bytes2228 : Bytes := ("    let r0000092a: u32 = r00000922.wrapping_add(r00000929);\n" : String).toByteArray.data.toList
theorem checked2228 : bytes2228=statementBytes 2346 (op2228.map lower) ∧ bytes2228.length=60 := by core033_kernel_decide
def op2229 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2229 : Bytes := ("    let r0000092b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2229 : bytes2229=statementBytes 2347 (op2229.map lower) ∧ bytes2229.length=41 := by core033_kernel_decide
def op2230 : List WordIR.Op := [.bnot 2347]
def bytes2230 : Bytes := ("    let r0000092c: u32 = !r0000092b;\n" : String).toByteArray.data.toList
theorem checked2230 : bytes2230=statementBytes 2348 (op2230.map lower) ∧ bytes2230.length=37 := by core033_kernel_decide
def op2231 : List WordIR.Op := [.band 2178 2348]
def bytes2231 : Bytes := ("    let r0000092d: u32 = r00000882 & r0000092c;\n" : String).toByteArray.data.toList
theorem checked2231 : bytes2231=statementBytes 2349 (op2231.map lower) ∧ bytes2231.length=48 := by core033_kernel_decide
def op2232 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2232 : Bytes := ("    let r0000092e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2232 : bytes2232=statementBytes 2350 (op2232.map lower) ∧ bytes2232.length=41 := by core033_kernel_decide
def op2233 : List WordIR.Op := [.bnot 2350]
def bytes2233 : Bytes := ("    let r0000092f: u32 = !r0000092e;\n" : String).toByteArray.data.toList
theorem checked2233 : bytes2233=statementBytes 2351 (op2233.map lower) ∧ bytes2233.length=37 := by core033_kernel_decide
def op2234 : List WordIR.Op := [.bxor 2178 2351]
def bytes2234 : Bytes := ("    let r00000930: u32 = r00000882 ^ r0000092f;\n" : String).toByteArray.data.toList
theorem checked2234 : bytes2234=statementBytes 2352 (op2234.map lower) ∧ bytes2234.length=48 := by core033_kernel_decide
def op2235 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2235 : Bytes := ("    let r00000931: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2235 : bytes2235=statementBytes 2353 (op2235.map lower) ∧ bytes2235.length=41 := by core033_kernel_decide
def op2236 : List WordIR.Op := [.bnot 2353]
def bytes2236 : Bytes := ("    let r00000932: u32 = !r00000931;\n" : String).toByteArray.data.toList
theorem checked2236 : bytes2236=statementBytes 2354 (op2236.map lower) ∧ bytes2236.length=37 := by core033_kernel_decide
def op2237 : List WordIR.Op := [.badd 2178 2354]
def bytes2237 : Bytes := ("    let r00000933: u32 = r00000882.wrapping_add(r00000932);\n" : String).toByteArray.data.toList
theorem checked2237 : bytes2237=statementBytes 2355 (op2237.map lower) ∧ bytes2237.length=60 := by core033_kernel_decide
def op2238 : List WordIR.Op := [.bnot 2355]
def bytes2238 : Bytes := ("    let r00000934: u32 = !r00000933;\n" : String).toByteArray.data.toList
theorem checked2238 : bytes2238=statementBytes 2356 (op2238.map lower) ∧ bytes2238.length=37 := by core033_kernel_decide
def op2239 : List WordIR.Op := [.band 2352 2356]
def bytes2239 : Bytes := ("    let r00000935: u32 = r00000930 & r00000934;\n" : String).toByteArray.data.toList
theorem checked2239 : bytes2239=statementBytes 2357 (op2239.map lower) ∧ bytes2239.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2176,op2177,op2178,op2179,op2180,op2181,op2182,op2183,op2184,op2185,op2186,op2187,op2188,op2189,op2190,op2191,op2192,op2193,op2194,op2195,op2196,op2197,op2198,op2199,op2200,op2201,op2202,op2203,op2204,op2205,op2206,op2207,op2208,op2209,op2210,op2211,op2212,op2213,op2214,op2215,op2216,op2217,op2218,op2219,op2220,op2221,op2222,op2223,op2224,op2225,op2226,op2227,op2228,op2229,op2230,op2231,op2232,op2233,op2234,op2235,op2236,op2237,op2238,op2239]
def chunks : List Bytes := [bytes2176,bytes2177,bytes2178,bytes2179,bytes2180,bytes2181,bytes2182,bytes2183,bytes2184,bytes2185,bytes2186,bytes2187,bytes2188,bytes2189,bytes2190,bytes2191,bytes2192,bytes2193,bytes2194,bytes2195,bytes2196,bytes2197,bytes2198,bytes2199,bytes2200,bytes2201,bytes2202,bytes2203,bytes2204,bytes2205,bytes2206,bytes2207,bytes2208,bytes2209,bytes2210,bytes2211,bytes2212,bytes2213,bytes2214,bytes2215,bytes2216,bytes2217,bytes2218,bytes2219,bytes2220,bytes2221,bytes2222,bytes2223,bytes2224,bytes2225,bytes2226,bytes2227,bytes2228,bytes2229,bytes2230,bytes2231,bytes2232,bytes2233,bytes2234,bytes2235,bytes2236,bytes2237,bytes2238,bytes2239]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2294 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2176.1 (.cons _ _ _ _ _ checked2177.1 (.cons _ _ _ _ _ checked2178.1 (.cons _ _ _ _ _ checked2179.1 (.cons _ _ _ _ _ checked2180.1 (.cons _ _ _ _ _ checked2181.1 (.cons _ _ _ _ _ checked2182.1 (.cons _ _ _ _ _ checked2183.1 (.cons _ _ _ _ _ checked2184.1 (.cons _ _ _ _ _ checked2185.1 (.cons _ _ _ _ _ checked2186.1 (.cons _ _ _ _ _ checked2187.1 (.cons _ _ _ _ _ checked2188.1 (.cons _ _ _ _ _ checked2189.1 (.cons _ _ _ _ _ checked2190.1 (.cons _ _ _ _ _ checked2191.1 (.cons _ _ _ _ _ checked2192.1 (.cons _ _ _ _ _ checked2193.1 (.cons _ _ _ _ _ checked2194.1 (.cons _ _ _ _ _ checked2195.1 (.cons _ _ _ _ _ checked2196.1 (.cons _ _ _ _ _ checked2197.1 (.cons _ _ _ _ _ checked2198.1 (.cons _ _ _ _ _ checked2199.1 (.cons _ _ _ _ _ checked2200.1 (.cons _ _ _ _ _ checked2201.1 (.cons _ _ _ _ _ checked2202.1 (.cons _ _ _ _ _ checked2203.1 (.cons _ _ _ _ _ checked2204.1 (.cons _ _ _ _ _ checked2205.1 (.cons _ _ _ _ _ checked2206.1 (.cons _ _ _ _ _ checked2207.1 (.cons _ _ _ _ _ checked2208.1 (.cons _ _ _ _ _ checked2209.1 (.cons _ _ _ _ _ checked2210.1 (.cons _ _ _ _ _ checked2211.1 (.cons _ _ _ _ _ checked2212.1 (.cons _ _ _ _ _ checked2213.1 (.cons _ _ _ _ _ checked2214.1 (.cons _ _ _ _ _ checked2215.1 (.cons _ _ _ _ _ checked2216.1 (.cons _ _ _ _ _ checked2217.1 (.cons _ _ _ _ _ checked2218.1 (.cons _ _ _ _ _ checked2219.1 (.cons _ _ _ _ _ checked2220.1 (.cons _ _ _ _ _ checked2221.1 (.cons _ _ _ _ _ checked2222.1 (.cons _ _ _ _ _ checked2223.1 (.cons _ _ _ _ _ checked2224.1 (.cons _ _ _ _ _ checked2225.1 (.cons _ _ _ _ _ checked2226.1 (.cons _ _ _ _ _ checked2227.1 (.cons _ _ _ _ _ checked2228.1 (.cons _ _ _ _ _ checked2229.1 (.cons _ _ _ _ _ checked2230.1 (.cons _ _ _ _ _ checked2231.1 (.cons _ _ _ _ _ checked2232.1 (.cons _ _ _ _ _ checked2233.1 (.cons _ _ _ _ _ checked2234.1 (.cons _ _ _ _ _ checked2235.1 (.cons _ _ _ _ _ checked2236.1 (.cons _ _ _ _ _ checked2237.1 (.cons _ _ _ _ _ checked2238.1 (.cons _ _ _ _ _ checked2239.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2294 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2974 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2176.2,checked2177.2,checked2178.2,checked2179.2,checked2180.2,checked2181.2,checked2182.2,checked2183.2,checked2184.2,checked2185.2,checked2186.2,checked2187.2,checked2188.2,checked2189.2,checked2190.2,checked2191.2,checked2192.2,checked2193.2,checked2194.2,checked2195.2,checked2196.2,checked2197.2,checked2198.2,checked2199.2,checked2200.2,checked2201.2,checked2202.2,checked2203.2,checked2204.2,checked2205.2,checked2206.2,checked2207.2,checked2208.2,checked2209.2,checked2210.2,checked2211.2,checked2212.2,checked2213.2,checked2214.2,checked2215.2,checked2216.2,checked2217.2,checked2218.2,checked2219.2,checked2220.2,checked2221.2,checked2222.2,checked2223.2,checked2224.2,checked2225.2,checked2226.2,checked2227.2,checked2228.2,checked2229.2,checked2230.2,checked2231.2,checked2232.2,checked2233.2,checked2234.2,checked2235.2,checked2236.2,checked2237.2,checked2238.2,checked2239.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup34
