import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup32
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2048 : List WordIR.Op := [.band 2084 2090]
def bytes2048 : Bytes := ("    let r0000082b: u32 = r00000824 & r0000082a;\n" : String).toByteArray.data.toList
theorem checked2048 : bytes2048=statementBytes 2091 (op2048.map lower) ∧ bytes2048.length=48 := by core033_kernel_decide
def op2049 : List WordIR.Op := [.bxor 2079 2091]
def bytes2049 : Bytes := ("    let r0000082c: u32 = r0000081f ^ r0000082b;\n" : String).toByteArray.data.toList
theorem checked2049 : bytes2049=statementBytes 2092 (op2049.map lower) ∧ bytes2049.length=48 := by core033_kernel_decide
def op2050 : List WordIR.Op := [.shr 2092 31]
def bytes2050 : Bytes := ("    let r0000082d: u32 = r0000082c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2050 : bytes2050=statementBytes 2093 (op2050.map lower) ∧ bytes2050.length=54 := by core033_kernel_decide
def op2051 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2051 : Bytes := ("    let r0000082e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2051 : bytes2051=statementBytes 2094 (op2051.map lower) ∧ bytes2051.length=41 := by core033_kernel_decide
def op2052 : List WordIR.Op := [.bxor 2093 2094]
def bytes2052 : Bytes := ("    let r0000082f: u32 = r0000082d ^ r0000082e;\n" : String).toByteArray.data.toList
theorem checked2052 : bytes2052=statementBytes 2095 (op2052.map lower) ∧ bytes2052.length=48 := by core033_kernel_decide
def op2053 : List WordIR.Op := [.bnot 2095]
def bytes2053 : Bytes := ("    let r00000830: u32 = !r0000082f;\n" : String).toByteArray.data.toList
theorem checked2053 : bytes2053=statementBytes 2096 (op2053.map lower) ∧ bytes2053.length=37 := by core033_kernel_decide
def op2054 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2054 : Bytes := ("    let r00000831: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2054 : bytes2054=statementBytes 2097 (op2054.map lower) ∧ bytes2054.length=41 := by core033_kernel_decide
def op2055 : List WordIR.Op := [.badd 2096 2097]
def bytes2055 : Bytes := ("    let r00000832: u32 = r00000830.wrapping_add(r00000831);\n" : String).toByteArray.data.toList
theorem checked2055 : bytes2055=statementBytes 2098 (op2055.map lower) ∧ bytes2055.length=60 := by core033_kernel_decide
def op2056 : List WordIR.Op := [.band 2098 514]
def bytes2056 : Bytes := ("    let r00000833: u32 = r00000832 & r00000202;\n" : String).toByteArray.data.toList
theorem checked2056 : bytes2056=statementBytes 2099 (op2056.map lower) ∧ bytes2056.length=48 := by core033_kernel_decide
def op2057 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2057 : Bytes := ("    let r00000834: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2057 : bytes2057=statementBytes 2100 (op2057.map lower) ∧ bytes2057.length=41 := by core033_kernel_decide
def op2058 : List WordIR.Op := [.bxor 96 2100]
def bytes2058 : Bytes := ("    let r00000835: u32 = r00000060 ^ r00000834;\n" : String).toByteArray.data.toList
theorem checked2058 : bytes2058=statementBytes 2101 (op2058.map lower) ∧ bytes2058.length=48 := by core033_kernel_decide
def op2059 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2059 : Bytes := ("    let r00000836: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2059 : bytes2059=statementBytes 2102 (op2059.map lower) ∧ bytes2059.length=41 := by core033_kernel_decide
def op2060 : List WordIR.Op := [.bnot 2102]
def bytes2060 : Bytes := ("    let r00000837: u32 = !r00000836;\n" : String).toByteArray.data.toList
theorem checked2060 : bytes2060=statementBytes 2103 (op2060.map lower) ∧ bytes2060.length=37 := by core033_kernel_decide
def op2061 : List WordIR.Op := [.band 2101 2103]
def bytes2061 : Bytes := ("    let r00000838: u32 = r00000835 & r00000837;\n" : String).toByteArray.data.toList
theorem checked2061 : bytes2061=statementBytes 2104 (op2061.map lower) ∧ bytes2061.length=48 := by core033_kernel_decide
def op2062 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2062 : Bytes := ("    let r00000839: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2062 : bytes2062=statementBytes 2105 (op2062.map lower) ∧ bytes2062.length=41 := by core033_kernel_decide
def op2063 : List WordIR.Op := [.bxor 96 2105]
def bytes2063 : Bytes := ("    let r0000083a: u32 = r00000060 ^ r00000839;\n" : String).toByteArray.data.toList
theorem checked2063 : bytes2063=statementBytes 2106 (op2063.map lower) ∧ bytes2063.length=48 := by core033_kernel_decide
def op2064 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2064 : Bytes := ("    let r0000083b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2064 : bytes2064=statementBytes 2107 (op2064.map lower) ∧ bytes2064.length=41 := by core033_kernel_decide
def op2065 : List WordIR.Op := [.bnot 2107]
def bytes2065 : Bytes := ("    let r0000083c: u32 = !r0000083b;\n" : String).toByteArray.data.toList
theorem checked2065 : bytes2065=statementBytes 2108 (op2065.map lower) ∧ bytes2065.length=37 := by core033_kernel_decide
def op2066 : List WordIR.Op := [.bxor 2106 2108]
def bytes2066 : Bytes := ("    let r0000083d: u32 = r0000083a ^ r0000083c;\n" : String).toByteArray.data.toList
theorem checked2066 : bytes2066=statementBytes 2109 (op2066.map lower) ∧ bytes2066.length=48 := by core033_kernel_decide
def op2067 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2067 : Bytes := ("    let r0000083e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2067 : bytes2067=statementBytes 2110 (op2067.map lower) ∧ bytes2067.length=41 := by core033_kernel_decide
def op2068 : List WordIR.Op := [.bxor 96 2110]
def bytes2068 : Bytes := ("    let r0000083f: u32 = r00000060 ^ r0000083e;\n" : String).toByteArray.data.toList
theorem checked2068 : bytes2068=statementBytes 2111 (op2068.map lower) ∧ bytes2068.length=48 := by core033_kernel_decide
def op2069 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2069 : Bytes := ("    let r00000840: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2069 : bytes2069=statementBytes 2112 (op2069.map lower) ∧ bytes2069.length=41 := by core033_kernel_decide
def op2070 : List WordIR.Op := [.bnot 2112]
def bytes2070 : Bytes := ("    let r00000841: u32 = !r00000840;\n" : String).toByteArray.data.toList
theorem checked2070 : bytes2070=statementBytes 2113 (op2070.map lower) ∧ bytes2070.length=37 := by core033_kernel_decide
def op2071 : List WordIR.Op := [.badd 2111 2113]
def bytes2071 : Bytes := ("    let r00000842: u32 = r0000083f.wrapping_add(r00000841);\n" : String).toByteArray.data.toList
theorem checked2071 : bytes2071=statementBytes 2114 (op2071.map lower) ∧ bytes2071.length=60 := by core033_kernel_decide
def op2072 : List WordIR.Op := [.bnot 2114]
def bytes2072 : Bytes := ("    let r00000843: u32 = !r00000842;\n" : String).toByteArray.data.toList
theorem checked2072 : bytes2072=statementBytes 2115 (op2072.map lower) ∧ bytes2072.length=37 := by core033_kernel_decide
def op2073 : List WordIR.Op := [.band 2109 2115]
def bytes2073 : Bytes := ("    let r00000844: u32 = r0000083d & r00000843;\n" : String).toByteArray.data.toList
theorem checked2073 : bytes2073=statementBytes 2116 (op2073.map lower) ∧ bytes2073.length=48 := by core033_kernel_decide
def op2074 : List WordIR.Op := [.bxor 2104 2116]
def bytes2074 : Bytes := ("    let r00000845: u32 = r00000838 ^ r00000844;\n" : String).toByteArray.data.toList
theorem checked2074 : bytes2074=statementBytes 2117 (op2074.map lower) ∧ bytes2074.length=48 := by core033_kernel_decide
def op2075 : List WordIR.Op := [.shr 2117 31]
def bytes2075 : Bytes := ("    let r00000846: u32 = r00000845 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2075 : bytes2075=statementBytes 2118 (op2075.map lower) ∧ bytes2075.length=54 := by core033_kernel_decide
def op2076 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2076 : Bytes := ("    let r00000847: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2076 : bytes2076=statementBytes 2119 (op2076.map lower) ∧ bytes2076.length=41 := by core033_kernel_decide
def op2077 : List WordIR.Op := [.bxor 2118 2119]
def bytes2077 : Bytes := ("    let r00000848: u32 = r00000846 ^ r00000847;\n" : String).toByteArray.data.toList
theorem checked2077 : bytes2077=statementBytes 2120 (op2077.map lower) ∧ bytes2077.length=48 := by core033_kernel_decide
def op2078 : List WordIR.Op := [.bnot 2120]
def bytes2078 : Bytes := ("    let r00000849: u32 = !r00000848;\n" : String).toByteArray.data.toList
theorem checked2078 : bytes2078=statementBytes 2121 (op2078.map lower) ∧ bytes2078.length=37 := by core033_kernel_decide
def op2079 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2079 : Bytes := ("    let r0000084a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2079 : bytes2079=statementBytes 2122 (op2079.map lower) ∧ bytes2079.length=41 := by core033_kernel_decide
def op2080 : List WordIR.Op := [.badd 2121 2122]
def bytes2080 : Bytes := ("    let r0000084b: u32 = r00000849.wrapping_add(r0000084a);\n" : String).toByteArray.data.toList
theorem checked2080 : bytes2080=statementBytes 2123 (op2080.map lower) ∧ bytes2080.length=60 := by core033_kernel_decide
def op2081 : List WordIR.Op := [.bnot 2123]
def bytes2081 : Bytes := ("    let r0000084c: u32 = !r0000084b;\n" : String).toByteArray.data.toList
theorem checked2081 : bytes2081=statementBytes 2124 (op2081.map lower) ∧ bytes2081.length=37 := by core033_kernel_decide
def op2082 : List WordIR.Op := [.literal (BitVec.ofNat 32 2773480762)]
def bytes2082 : Bytes := ("    let r0000084d: u32 = 0xa54ff53a_u32;\n" : String).toByteArray.data.toList
theorem checked2082 : bytes2082=statementBytes 2125 (op2082.map lower) ∧ bytes2082.length=41 := by core033_kernel_decide
def op2083 : List WordIR.Op := [.band 2124 2125]
def bytes2083 : Bytes := ("    let r0000084e: u32 = r0000084c & r0000084d;\n" : String).toByteArray.data.toList
theorem checked2083 : bytes2083=statementBytes 2126 (op2083.map lower) ∧ bytes2083.length=48 := by core033_kernel_decide
def op2084 : List WordIR.Op := [.bxor 2099 2126]
def bytes2084 : Bytes := ("    let r0000084f: u32 = r00000833 ^ r0000084e;\n" : String).toByteArray.data.toList
theorem checked2084 : bytes2084=statementBytes 2127 (op2084.map lower) ∧ bytes2084.length=48 := by core033_kernel_decide
def op2085 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2085 : Bytes := ("    let r00000850: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2085 : bytes2085=statementBytes 2128 (op2085.map lower) ∧ bytes2085.length=41 := by core033_kernel_decide
def op2086 : List WordIR.Op := [.bxor 96 2128]
def bytes2086 : Bytes := ("    let r00000851: u32 = r00000060 ^ r00000850;\n" : String).toByteArray.data.toList
theorem checked2086 : bytes2086=statementBytes 2129 (op2086.map lower) ∧ bytes2086.length=48 := by core033_kernel_decide
def op2087 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2087 : Bytes := ("    let r00000852: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2087 : bytes2087=statementBytes 2130 (op2087.map lower) ∧ bytes2087.length=41 := by core033_kernel_decide
def op2088 : List WordIR.Op := [.bnot 2130]
def bytes2088 : Bytes := ("    let r00000853: u32 = !r00000852;\n" : String).toByteArray.data.toList
theorem checked2088 : bytes2088=statementBytes 2131 (op2088.map lower) ∧ bytes2088.length=37 := by core033_kernel_decide
def op2089 : List WordIR.Op := [.band 2129 2131]
def bytes2089 : Bytes := ("    let r00000854: u32 = r00000851 & r00000853;\n" : String).toByteArray.data.toList
theorem checked2089 : bytes2089=statementBytes 2132 (op2089.map lower) ∧ bytes2089.length=48 := by core033_kernel_decide
def op2090 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2090 : Bytes := ("    let r00000855: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2090 : bytes2090=statementBytes 2133 (op2090.map lower) ∧ bytes2090.length=41 := by core033_kernel_decide
def op2091 : List WordIR.Op := [.bxor 96 2133]
def bytes2091 : Bytes := ("    let r00000856: u32 = r00000060 ^ r00000855;\n" : String).toByteArray.data.toList
theorem checked2091 : bytes2091=statementBytes 2134 (op2091.map lower) ∧ bytes2091.length=48 := by core033_kernel_decide
def op2092 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2092 : Bytes := ("    let r00000857: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2092 : bytes2092=statementBytes 2135 (op2092.map lower) ∧ bytes2092.length=41 := by core033_kernel_decide
def op2093 : List WordIR.Op := [.bnot 2135]
def bytes2093 : Bytes := ("    let r00000858: u32 = !r00000857;\n" : String).toByteArray.data.toList
theorem checked2093 : bytes2093=statementBytes 2136 (op2093.map lower) ∧ bytes2093.length=37 := by core033_kernel_decide
def op2094 : List WordIR.Op := [.bxor 2134 2136]
def bytes2094 : Bytes := ("    let r00000859: u32 = r00000856 ^ r00000858;\n" : String).toByteArray.data.toList
theorem checked2094 : bytes2094=statementBytes 2137 (op2094.map lower) ∧ bytes2094.length=48 := by core033_kernel_decide
def op2095 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2095 : Bytes := ("    let r0000085a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2095 : bytes2095=statementBytes 2138 (op2095.map lower) ∧ bytes2095.length=41 := by core033_kernel_decide
def op2096 : List WordIR.Op := [.bxor 96 2138]
def bytes2096 : Bytes := ("    let r0000085b: u32 = r00000060 ^ r0000085a;\n" : String).toByteArray.data.toList
theorem checked2096 : bytes2096=statementBytes 2139 (op2096.map lower) ∧ bytes2096.length=48 := by core033_kernel_decide
def op2097 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2097 : Bytes := ("    let r0000085c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2097 : bytes2097=statementBytes 2140 (op2097.map lower) ∧ bytes2097.length=41 := by core033_kernel_decide
def op2098 : List WordIR.Op := [.bnot 2140]
def bytes2098 : Bytes := ("    let r0000085d: u32 = !r0000085c;\n" : String).toByteArray.data.toList
theorem checked2098 : bytes2098=statementBytes 2141 (op2098.map lower) ∧ bytes2098.length=37 := by core033_kernel_decide
def op2099 : List WordIR.Op := [.badd 2139 2141]
def bytes2099 : Bytes := ("    let r0000085e: u32 = r0000085b.wrapping_add(r0000085d);\n" : String).toByteArray.data.toList
theorem checked2099 : bytes2099=statementBytes 2142 (op2099.map lower) ∧ bytes2099.length=60 := by core033_kernel_decide
def op2100 : List WordIR.Op := [.bnot 2142]
def bytes2100 : Bytes := ("    let r0000085f: u32 = !r0000085e;\n" : String).toByteArray.data.toList
theorem checked2100 : bytes2100=statementBytes 2143 (op2100.map lower) ∧ bytes2100.length=37 := by core033_kernel_decide
def op2101 : List WordIR.Op := [.band 2137 2143]
def bytes2101 : Bytes := ("    let r00000860: u32 = r00000859 & r0000085f;\n" : String).toByteArray.data.toList
theorem checked2101 : bytes2101=statementBytes 2144 (op2101.map lower) ∧ bytes2101.length=48 := by core033_kernel_decide
def op2102 : List WordIR.Op := [.bxor 2132 2144]
def bytes2102 : Bytes := ("    let r00000861: u32 = r00000854 ^ r00000860;\n" : String).toByteArray.data.toList
theorem checked2102 : bytes2102=statementBytes 2145 (op2102.map lower) ∧ bytes2102.length=48 := by core033_kernel_decide
def op2103 : List WordIR.Op := [.shr 2145 31]
def bytes2103 : Bytes := ("    let r00000862: u32 = r00000861 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2103 : bytes2103=statementBytes 2146 (op2103.map lower) ∧ bytes2103.length=54 := by core033_kernel_decide
def op2104 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2104 : Bytes := ("    let r00000863: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2104 : bytes2104=statementBytes 2147 (op2104.map lower) ∧ bytes2104.length=41 := by core033_kernel_decide
def op2105 : List WordIR.Op := [.bxor 2146 2147]
def bytes2105 : Bytes := ("    let r00000864: u32 = r00000862 ^ r00000863;\n" : String).toByteArray.data.toList
theorem checked2105 : bytes2105=statementBytes 2148 (op2105.map lower) ∧ bytes2105.length=48 := by core033_kernel_decide
def op2106 : List WordIR.Op := [.bnot 2148]
def bytes2106 : Bytes := ("    let r00000865: u32 = !r00000864;\n" : String).toByteArray.data.toList
theorem checked2106 : bytes2106=statementBytes 2149 (op2106.map lower) ∧ bytes2106.length=37 := by core033_kernel_decide
def op2107 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2107 : Bytes := ("    let r00000866: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2107 : bytes2107=statementBytes 2150 (op2107.map lower) ∧ bytes2107.length=41 := by core033_kernel_decide
def op2108 : List WordIR.Op := [.badd 2149 2150]
def bytes2108 : Bytes := ("    let r00000867: u32 = r00000865.wrapping_add(r00000866);\n" : String).toByteArray.data.toList
theorem checked2108 : bytes2108=statementBytes 2151 (op2108.map lower) ∧ bytes2108.length=60 := by core033_kernel_decide
def op2109 : List WordIR.Op := [.band 2151 525]
def bytes2109 : Bytes := ("    let r00000868: u32 = r00000867 & r0000020d;\n" : String).toByteArray.data.toList
theorem checked2109 : bytes2109=statementBytes 2152 (op2109.map lower) ∧ bytes2109.length=48 := by core033_kernel_decide
def op2110 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2110 : Bytes := ("    let r00000869: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2110 : bytes2110=statementBytes 2153 (op2110.map lower) ∧ bytes2110.length=41 := by core033_kernel_decide
def op2111 : List WordIR.Op := [.bxor 96 2153]
def bytes2111 : Bytes := ("    let r0000086a: u32 = r00000060 ^ r00000869;\n" : String).toByteArray.data.toList
theorem checked2111 : bytes2111=statementBytes 2154 (op2111.map lower) ∧ bytes2111.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2048,op2049,op2050,op2051,op2052,op2053,op2054,op2055,op2056,op2057,op2058,op2059,op2060,op2061,op2062,op2063,op2064,op2065,op2066,op2067,op2068,op2069,op2070,op2071,op2072,op2073,op2074,op2075,op2076,op2077,op2078,op2079,op2080,op2081,op2082,op2083,op2084,op2085,op2086,op2087,op2088,op2089,op2090,op2091,op2092,op2093,op2094,op2095,op2096,op2097,op2098,op2099,op2100,op2101,op2102,op2103,op2104,op2105,op2106,op2107,op2108,op2109,op2110,op2111]
def chunks : List Bytes := [bytes2048,bytes2049,bytes2050,bytes2051,bytes2052,bytes2053,bytes2054,bytes2055,bytes2056,bytes2057,bytes2058,bytes2059,bytes2060,bytes2061,bytes2062,bytes2063,bytes2064,bytes2065,bytes2066,bytes2067,bytes2068,bytes2069,bytes2070,bytes2071,bytes2072,bytes2073,bytes2074,bytes2075,bytes2076,bytes2077,bytes2078,bytes2079,bytes2080,bytes2081,bytes2082,bytes2083,bytes2084,bytes2085,bytes2086,bytes2087,bytes2088,bytes2089,bytes2090,bytes2091,bytes2092,bytes2093,bytes2094,bytes2095,bytes2096,bytes2097,bytes2098,bytes2099,bytes2100,bytes2101,bytes2102,bytes2103,bytes2104,bytes2105,bytes2106,bytes2107,bytes2108,bytes2109,bytes2110,bytes2111]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2091 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2048.1 (.cons _ _ _ _ _ checked2049.1 (.cons _ _ _ _ _ checked2050.1 (.cons _ _ _ _ _ checked2051.1 (.cons _ _ _ _ _ checked2052.1 (.cons _ _ _ _ _ checked2053.1 (.cons _ _ _ _ _ checked2054.1 (.cons _ _ _ _ _ checked2055.1 (.cons _ _ _ _ _ checked2056.1 (.cons _ _ _ _ _ checked2057.1 (.cons _ _ _ _ _ checked2058.1 (.cons _ _ _ _ _ checked2059.1 (.cons _ _ _ _ _ checked2060.1 (.cons _ _ _ _ _ checked2061.1 (.cons _ _ _ _ _ checked2062.1 (.cons _ _ _ _ _ checked2063.1 (.cons _ _ _ _ _ checked2064.1 (.cons _ _ _ _ _ checked2065.1 (.cons _ _ _ _ _ checked2066.1 (.cons _ _ _ _ _ checked2067.1 (.cons _ _ _ _ _ checked2068.1 (.cons _ _ _ _ _ checked2069.1 (.cons _ _ _ _ _ checked2070.1 (.cons _ _ _ _ _ checked2071.1 (.cons _ _ _ _ _ checked2072.1 (.cons _ _ _ _ _ checked2073.1 (.cons _ _ _ _ _ checked2074.1 (.cons _ _ _ _ _ checked2075.1 (.cons _ _ _ _ _ checked2076.1 (.cons _ _ _ _ _ checked2077.1 (.cons _ _ _ _ _ checked2078.1 (.cons _ _ _ _ _ checked2079.1 (.cons _ _ _ _ _ checked2080.1 (.cons _ _ _ _ _ checked2081.1 (.cons _ _ _ _ _ checked2082.1 (.cons _ _ _ _ _ checked2083.1 (.cons _ _ _ _ _ checked2084.1 (.cons _ _ _ _ _ checked2085.1 (.cons _ _ _ _ _ checked2086.1 (.cons _ _ _ _ _ checked2087.1 (.cons _ _ _ _ _ checked2088.1 (.cons _ _ _ _ _ checked2089.1 (.cons _ _ _ _ _ checked2090.1 (.cons _ _ _ _ _ checked2091.1 (.cons _ _ _ _ _ checked2092.1 (.cons _ _ _ _ _ checked2093.1 (.cons _ _ _ _ _ checked2094.1 (.cons _ _ _ _ _ checked2095.1 (.cons _ _ _ _ _ checked2096.1 (.cons _ _ _ _ _ checked2097.1 (.cons _ _ _ _ _ checked2098.1 (.cons _ _ _ _ _ checked2099.1 (.cons _ _ _ _ _ checked2100.1 (.cons _ _ _ _ _ checked2101.1 (.cons _ _ _ _ _ checked2102.1 (.cons _ _ _ _ _ checked2103.1 (.cons _ _ _ _ _ checked2104.1 (.cons _ _ _ _ _ checked2105.1 (.cons _ _ _ _ _ checked2106.1 (.cons _ _ _ _ _ checked2107.1 (.cons _ _ _ _ _ checked2108.1 (.cons _ _ _ _ _ checked2109.1 (.cons _ _ _ _ _ checked2110.1 (.cons _ _ _ _ _ checked2111.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2091 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2878 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2048.2,checked2049.2,checked2050.2,checked2051.2,checked2052.2,checked2053.2,checked2054.2,checked2055.2,checked2056.2,checked2057.2,checked2058.2,checked2059.2,checked2060.2,checked2061.2,checked2062.2,checked2063.2,checked2064.2,checked2065.2,checked2066.2,checked2067.2,checked2068.2,checked2069.2,checked2070.2,checked2071.2,checked2072.2,checked2073.2,checked2074.2,checked2075.2,checked2076.2,checked2077.2,checked2078.2,checked2079.2,checked2080.2,checked2081.2,checked2082.2,checked2083.2,checked2084.2,checked2085.2,checked2086.2,checked2087.2,checked2088.2,checked2089.2,checked2090.2,checked2091.2,checked2092.2,checked2093.2,checked2094.2,checked2095.2,checked2096.2,checked2097.2,checked2098.2,checked2099.2,checked2100.2,checked2101.2,checked2102.2,checked2103.2,checked2104.2,checked2105.2,checked2106.2,checked2107.2,checked2108.2,checked2109.2,checked2110.2,checked2111.2]
  decide
end ArtifactPathRoundDispatchGroup32
