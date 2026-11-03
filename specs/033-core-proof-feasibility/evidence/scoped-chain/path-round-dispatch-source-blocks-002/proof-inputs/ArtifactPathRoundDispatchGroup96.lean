import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup96
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6144 : List WordIR.Op := [.bxor 6176 6186]
def bytes6144 : Bytes := ("    let r0000182b: u32 = r00001820 ^ r0000182a;\n" : String).toByteArray.data.toList
theorem checked6144 : bytes6144=statementBytes 6187 (op6144.map lower) ∧ bytes6144.length=48 := by core033_kernel_decide
def op6145 : List WordIR.Op := [.shr 6187 31]
def bytes6145 : Bytes := ("    let r0000182c: u32 = r0000182b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6145 : bytes6145=statementBytes 6188 (op6145.map lower) ∧ bytes6145.length=54 := by core033_kernel_decide
def op6146 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6146 : Bytes := ("    let r0000182d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6146 : bytes6146=statementBytes 6189 (op6146.map lower) ∧ bytes6146.length=41 := by core033_kernel_decide
def op6147 : List WordIR.Op := [.bxor 6188 6189]
def bytes6147 : Bytes := ("    let r0000182e: u32 = r0000182c ^ r0000182d;\n" : String).toByteArray.data.toList
theorem checked6147 : bytes6147=statementBytes 6190 (op6147.map lower) ∧ bytes6147.length=48 := by core033_kernel_decide
def op6148 : List WordIR.Op := [.shr 3587 8]
def bytes6148 : Bytes := ("    let r0000182f: u32 = r00000e03 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6148 : bytes6148=statementBytes 6191 (op6148.map lower) ∧ bytes6148.length=54 := by core033_kernel_decide
def op6149 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6149 : Bytes := ("    let r00001830: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6149 : bytes6149=statementBytes 6192 (op6149.map lower) ∧ bytes6149.length=41 := by core033_kernel_decide
def op6150 : List WordIR.Op := [.bnot 6192]
def bytes6150 : Bytes := ("    let r00001831: u32 = !r00001830;\n" : String).toByteArray.data.toList
theorem checked6150 : bytes6150=statementBytes 6193 (op6150.map lower) ∧ bytes6150.length=37 := by core033_kernel_decide
def op6151 : List WordIR.Op := [.band 6191 6193]
def bytes6151 : Bytes := ("    let r00001832: u32 = r0000182f & r00001831;\n" : String).toByteArray.data.toList
theorem checked6151 : bytes6151=statementBytes 6194 (op6151.map lower) ∧ bytes6151.length=48 := by core033_kernel_decide
def op6152 : List WordIR.Op := [.shr 3587 8]
def bytes6152 : Bytes := ("    let r00001833: u32 = r00000e03 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6152 : bytes6152=statementBytes 6195 (op6152.map lower) ∧ bytes6152.length=54 := by core033_kernel_decide
def op6153 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6153 : Bytes := ("    let r00001834: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6153 : bytes6153=statementBytes 6196 (op6153.map lower) ∧ bytes6153.length=41 := by core033_kernel_decide
def op6154 : List WordIR.Op := [.bnot 6196]
def bytes6154 : Bytes := ("    let r00001835: u32 = !r00001834;\n" : String).toByteArray.data.toList
theorem checked6154 : bytes6154=statementBytes 6197 (op6154.map lower) ∧ bytes6154.length=37 := by core033_kernel_decide
def op6155 : List WordIR.Op := [.bxor 6195 6197]
def bytes6155 : Bytes := ("    let r00001836: u32 = r00001833 ^ r00001835;\n" : String).toByteArray.data.toList
theorem checked6155 : bytes6155=statementBytes 6198 (op6155.map lower) ∧ bytes6155.length=48 := by core033_kernel_decide
def op6156 : List WordIR.Op := [.shr 3587 8]
def bytes6156 : Bytes := ("    let r00001837: u32 = r00000e03 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6156 : bytes6156=statementBytes 6199 (op6156.map lower) ∧ bytes6156.length=54 := by core033_kernel_decide
def op6157 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6157 : Bytes := ("    let r00001838: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6157 : bytes6157=statementBytes 6200 (op6157.map lower) ∧ bytes6157.length=41 := by core033_kernel_decide
def op6158 : List WordIR.Op := [.bnot 6200]
def bytes6158 : Bytes := ("    let r00001839: u32 = !r00001838;\n" : String).toByteArray.data.toList
theorem checked6158 : bytes6158=statementBytes 6201 (op6158.map lower) ∧ bytes6158.length=37 := by core033_kernel_decide
def op6159 : List WordIR.Op := [.badd 6199 6201]
def bytes6159 : Bytes := ("    let r0000183a: u32 = r00001837.wrapping_add(r00001839);\n" : String).toByteArray.data.toList
theorem checked6159 : bytes6159=statementBytes 6202 (op6159.map lower) ∧ bytes6159.length=60 := by core033_kernel_decide
def op6160 : List WordIR.Op := [.bnot 6202]
def bytes6160 : Bytes := ("    let r0000183b: u32 = !r0000183a;\n" : String).toByteArray.data.toList
theorem checked6160 : bytes6160=statementBytes 6203 (op6160.map lower) ∧ bytes6160.length=37 := by core033_kernel_decide
def op6161 : List WordIR.Op := [.band 6198 6203]
def bytes6161 : Bytes := ("    let r0000183c: u32 = r00001836 & r0000183b;\n" : String).toByteArray.data.toList
theorem checked6161 : bytes6161=statementBytes 6204 (op6161.map lower) ∧ bytes6161.length=48 := by core033_kernel_decide
def op6162 : List WordIR.Op := [.bxor 6194 6204]
def bytes6162 : Bytes := ("    let r0000183d: u32 = r00001832 ^ r0000183c;\n" : String).toByteArray.data.toList
theorem checked6162 : bytes6162=statementBytes 6205 (op6162.map lower) ∧ bytes6162.length=48 := by core033_kernel_decide
def op6163 : List WordIR.Op := [.shr 6205 31]
def bytes6163 : Bytes := ("    let r0000183e: u32 = r0000183d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6163 : bytes6163=statementBytes 6206 (op6163.map lower) ∧ bytes6163.length=54 := by core033_kernel_decide
def op6164 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6164 : Bytes := ("    let r0000183f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6164 : bytes6164=statementBytes 6207 (op6164.map lower) ∧ bytes6164.length=41 := by core033_kernel_decide
def op6165 : List WordIR.Op := [.bxor 6206 6207]
def bytes6165 : Bytes := ("    let r00001840: u32 = r0000183e ^ r0000183f;\n" : String).toByteArray.data.toList
theorem checked6165 : bytes6165=statementBytes 6208 (op6165.map lower) ∧ bytes6165.length=48 := by core033_kernel_decide
def op6166 : List WordIR.Op := [.shr 3639 8]
def bytes6166 : Bytes := ("    let r00001841: u32 = r00000e37 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6166 : bytes6166=statementBytes 6209 (op6166.map lower) ∧ bytes6166.length=54 := by core033_kernel_decide
def op6167 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6167 : Bytes := ("    let r00001842: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6167 : bytes6167=statementBytes 6210 (op6167.map lower) ∧ bytes6167.length=41 := by core033_kernel_decide
def op6168 : List WordIR.Op := [.bnot 6210]
def bytes6168 : Bytes := ("    let r00001843: u32 = !r00001842;\n" : String).toByteArray.data.toList
theorem checked6168 : bytes6168=statementBytes 6211 (op6168.map lower) ∧ bytes6168.length=37 := by core033_kernel_decide
def op6169 : List WordIR.Op := [.band 6209 6211]
def bytes6169 : Bytes := ("    let r00001844: u32 = r00001841 & r00001843;\n" : String).toByteArray.data.toList
theorem checked6169 : bytes6169=statementBytes 6212 (op6169.map lower) ∧ bytes6169.length=48 := by core033_kernel_decide
def op6170 : List WordIR.Op := [.shr 3639 8]
def bytes6170 : Bytes := ("    let r00001845: u32 = r00000e37 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6170 : bytes6170=statementBytes 6213 (op6170.map lower) ∧ bytes6170.length=54 := by core033_kernel_decide
def op6171 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6171 : Bytes := ("    let r00001846: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6171 : bytes6171=statementBytes 6214 (op6171.map lower) ∧ bytes6171.length=41 := by core033_kernel_decide
def op6172 : List WordIR.Op := [.bnot 6214]
def bytes6172 : Bytes := ("    let r00001847: u32 = !r00001846;\n" : String).toByteArray.data.toList
theorem checked6172 : bytes6172=statementBytes 6215 (op6172.map lower) ∧ bytes6172.length=37 := by core033_kernel_decide
def op6173 : List WordIR.Op := [.bxor 6213 6215]
def bytes6173 : Bytes := ("    let r00001848: u32 = r00001845 ^ r00001847;\n" : String).toByteArray.data.toList
theorem checked6173 : bytes6173=statementBytes 6216 (op6173.map lower) ∧ bytes6173.length=48 := by core033_kernel_decide
def op6174 : List WordIR.Op := [.shr 3639 8]
def bytes6174 : Bytes := ("    let r00001849: u32 = r00000e37 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6174 : bytes6174=statementBytes 6217 (op6174.map lower) ∧ bytes6174.length=54 := by core033_kernel_decide
def op6175 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6175 : Bytes := ("    let r0000184a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6175 : bytes6175=statementBytes 6218 (op6175.map lower) ∧ bytes6175.length=41 := by core033_kernel_decide
def op6176 : List WordIR.Op := [.bnot 6218]
def bytes6176 : Bytes := ("    let r0000184b: u32 = !r0000184a;\n" : String).toByteArray.data.toList
theorem checked6176 : bytes6176=statementBytes 6219 (op6176.map lower) ∧ bytes6176.length=37 := by core033_kernel_decide
def op6177 : List WordIR.Op := [.badd 6217 6219]
def bytes6177 : Bytes := ("    let r0000184c: u32 = r00001849.wrapping_add(r0000184b);\n" : String).toByteArray.data.toList
theorem checked6177 : bytes6177=statementBytes 6220 (op6177.map lower) ∧ bytes6177.length=60 := by core033_kernel_decide
def op6178 : List WordIR.Op := [.bnot 6220]
def bytes6178 : Bytes := ("    let r0000184d: u32 = !r0000184c;\n" : String).toByteArray.data.toList
theorem checked6178 : bytes6178=statementBytes 6221 (op6178.map lower) ∧ bytes6178.length=37 := by core033_kernel_decide
def op6179 : List WordIR.Op := [.band 6216 6221]
def bytes6179 : Bytes := ("    let r0000184e: u32 = r00001848 & r0000184d;\n" : String).toByteArray.data.toList
theorem checked6179 : bytes6179=statementBytes 6222 (op6179.map lower) ∧ bytes6179.length=48 := by core033_kernel_decide
def op6180 : List WordIR.Op := [.bxor 6212 6222]
def bytes6180 : Bytes := ("    let r0000184f: u32 = r00001844 ^ r0000184e;\n" : String).toByteArray.data.toList
theorem checked6180 : bytes6180=statementBytes 6223 (op6180.map lower) ∧ bytes6180.length=48 := by core033_kernel_decide
def op6181 : List WordIR.Op := [.shr 6223 31]
def bytes6181 : Bytes := ("    let r00001850: u32 = r0000184f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6181 : bytes6181=statementBytes 6224 (op6181.map lower) ∧ bytes6181.length=54 := by core033_kernel_decide
def op6182 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6182 : Bytes := ("    let r00001851: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6182 : bytes6182=statementBytes 6225 (op6182.map lower) ∧ bytes6182.length=41 := by core033_kernel_decide
def op6183 : List WordIR.Op := [.bxor 6224 6225]
def bytes6183 : Bytes := ("    let r00001852: u32 = r00001850 ^ r00001851;\n" : String).toByteArray.data.toList
theorem checked6183 : bytes6183=statementBytes 6226 (op6183.map lower) ∧ bytes6183.length=48 := by core033_kernel_decide
def op6184 : List WordIR.Op := [.shr 3691 8]
def bytes6184 : Bytes := ("    let r00001853: u32 = r00000e6b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6184 : bytes6184=statementBytes 6227 (op6184.map lower) ∧ bytes6184.length=54 := by core033_kernel_decide
def op6185 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6185 : Bytes := ("    let r00001854: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6185 : bytes6185=statementBytes 6228 (op6185.map lower) ∧ bytes6185.length=41 := by core033_kernel_decide
def op6186 : List WordIR.Op := [.bnot 6228]
def bytes6186 : Bytes := ("    let r00001855: u32 = !r00001854;\n" : String).toByteArray.data.toList
theorem checked6186 : bytes6186=statementBytes 6229 (op6186.map lower) ∧ bytes6186.length=37 := by core033_kernel_decide
def op6187 : List WordIR.Op := [.band 6227 6229]
def bytes6187 : Bytes := ("    let r00001856: u32 = r00001853 & r00001855;\n" : String).toByteArray.data.toList
theorem checked6187 : bytes6187=statementBytes 6230 (op6187.map lower) ∧ bytes6187.length=48 := by core033_kernel_decide
def op6188 : List WordIR.Op := [.shr 3691 8]
def bytes6188 : Bytes := ("    let r00001857: u32 = r00000e6b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6188 : bytes6188=statementBytes 6231 (op6188.map lower) ∧ bytes6188.length=54 := by core033_kernel_decide
def op6189 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6189 : Bytes := ("    let r00001858: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6189 : bytes6189=statementBytes 6232 (op6189.map lower) ∧ bytes6189.length=41 := by core033_kernel_decide
def op6190 : List WordIR.Op := [.bnot 6232]
def bytes6190 : Bytes := ("    let r00001859: u32 = !r00001858;\n" : String).toByteArray.data.toList
theorem checked6190 : bytes6190=statementBytes 6233 (op6190.map lower) ∧ bytes6190.length=37 := by core033_kernel_decide
def op6191 : List WordIR.Op := [.bxor 6231 6233]
def bytes6191 : Bytes := ("    let r0000185a: u32 = r00001857 ^ r00001859;\n" : String).toByteArray.data.toList
theorem checked6191 : bytes6191=statementBytes 6234 (op6191.map lower) ∧ bytes6191.length=48 := by core033_kernel_decide
def op6192 : List WordIR.Op := [.shr 3691 8]
def bytes6192 : Bytes := ("    let r0000185b: u32 = r00000e6b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6192 : bytes6192=statementBytes 6235 (op6192.map lower) ∧ bytes6192.length=54 := by core033_kernel_decide
def op6193 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6193 : Bytes := ("    let r0000185c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6193 : bytes6193=statementBytes 6236 (op6193.map lower) ∧ bytes6193.length=41 := by core033_kernel_decide
def op6194 : List WordIR.Op := [.bnot 6236]
def bytes6194 : Bytes := ("    let r0000185d: u32 = !r0000185c;\n" : String).toByteArray.data.toList
theorem checked6194 : bytes6194=statementBytes 6237 (op6194.map lower) ∧ bytes6194.length=37 := by core033_kernel_decide
def op6195 : List WordIR.Op := [.badd 6235 6237]
def bytes6195 : Bytes := ("    let r0000185e: u32 = r0000185b.wrapping_add(r0000185d);\n" : String).toByteArray.data.toList
theorem checked6195 : bytes6195=statementBytes 6238 (op6195.map lower) ∧ bytes6195.length=60 := by core033_kernel_decide
def op6196 : List WordIR.Op := [.bnot 6238]
def bytes6196 : Bytes := ("    let r0000185f: u32 = !r0000185e;\n" : String).toByteArray.data.toList
theorem checked6196 : bytes6196=statementBytes 6239 (op6196.map lower) ∧ bytes6196.length=37 := by core033_kernel_decide
def op6197 : List WordIR.Op := [.band 6234 6239]
def bytes6197 : Bytes := ("    let r00001860: u32 = r0000185a & r0000185f;\n" : String).toByteArray.data.toList
theorem checked6197 : bytes6197=statementBytes 6240 (op6197.map lower) ∧ bytes6197.length=48 := by core033_kernel_decide
def op6198 : List WordIR.Op := [.bxor 6230 6240]
def bytes6198 : Bytes := ("    let r00001861: u32 = r00001856 ^ r00001860;\n" : String).toByteArray.data.toList
theorem checked6198 : bytes6198=statementBytes 6241 (op6198.map lower) ∧ bytes6198.length=48 := by core033_kernel_decide
def op6199 : List WordIR.Op := [.shr 6241 31]
def bytes6199 : Bytes := ("    let r00001862: u32 = r00001861 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6199 : bytes6199=statementBytes 6242 (op6199.map lower) ∧ bytes6199.length=54 := by core033_kernel_decide
def op6200 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6200 : Bytes := ("    let r00001863: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6200 : bytes6200=statementBytes 6243 (op6200.map lower) ∧ bytes6200.length=41 := by core033_kernel_decide
def op6201 : List WordIR.Op := [.bxor 6242 6243]
def bytes6201 : Bytes := ("    let r00001864: u32 = r00001862 ^ r00001863;\n" : String).toByteArray.data.toList
theorem checked6201 : bytes6201=statementBytes 6244 (op6201.map lower) ∧ bytes6201.length=48 := by core033_kernel_decide
def op6202 : List WordIR.Op := [.shr 3743 8]
def bytes6202 : Bytes := ("    let r00001865: u32 = r00000e9f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6202 : bytes6202=statementBytes 6245 (op6202.map lower) ∧ bytes6202.length=54 := by core033_kernel_decide
def op6203 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6203 : Bytes := ("    let r00001866: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6203 : bytes6203=statementBytes 6246 (op6203.map lower) ∧ bytes6203.length=41 := by core033_kernel_decide
def op6204 : List WordIR.Op := [.bnot 6246]
def bytes6204 : Bytes := ("    let r00001867: u32 = !r00001866;\n" : String).toByteArray.data.toList
theorem checked6204 : bytes6204=statementBytes 6247 (op6204.map lower) ∧ bytes6204.length=37 := by core033_kernel_decide
def op6205 : List WordIR.Op := [.band 6245 6247]
def bytes6205 : Bytes := ("    let r00001868: u32 = r00001865 & r00001867;\n" : String).toByteArray.data.toList
theorem checked6205 : bytes6205=statementBytes 6248 (op6205.map lower) ∧ bytes6205.length=48 := by core033_kernel_decide
def op6206 : List WordIR.Op := [.shr 3743 8]
def bytes6206 : Bytes := ("    let r00001869: u32 = r00000e9f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6206 : bytes6206=statementBytes 6249 (op6206.map lower) ∧ bytes6206.length=54 := by core033_kernel_decide
def op6207 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6207 : Bytes := ("    let r0000186a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6207 : bytes6207=statementBytes 6250 (op6207.map lower) ∧ bytes6207.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6144,op6145,op6146,op6147,op6148,op6149,op6150,op6151,op6152,op6153,op6154,op6155,op6156,op6157,op6158,op6159,op6160,op6161,op6162,op6163,op6164,op6165,op6166,op6167,op6168,op6169,op6170,op6171,op6172,op6173,op6174,op6175,op6176,op6177,op6178,op6179,op6180,op6181,op6182,op6183,op6184,op6185,op6186,op6187,op6188,op6189,op6190,op6191,op6192,op6193,op6194,op6195,op6196,op6197,op6198,op6199,op6200,op6201,op6202,op6203,op6204,op6205,op6206,op6207]
def chunks : List Bytes := [bytes6144,bytes6145,bytes6146,bytes6147,bytes6148,bytes6149,bytes6150,bytes6151,bytes6152,bytes6153,bytes6154,bytes6155,bytes6156,bytes6157,bytes6158,bytes6159,bytes6160,bytes6161,bytes6162,bytes6163,bytes6164,bytes6165,bytes6166,bytes6167,bytes6168,bytes6169,bytes6170,bytes6171,bytes6172,bytes6173,bytes6174,bytes6175,bytes6176,bytes6177,bytes6178,bytes6179,bytes6180,bytes6181,bytes6182,bytes6183,bytes6184,bytes6185,bytes6186,bytes6187,bytes6188,bytes6189,bytes6190,bytes6191,bytes6192,bytes6193,bytes6194,bytes6195,bytes6196,bytes6197,bytes6198,bytes6199,bytes6200,bytes6201,bytes6202,bytes6203,bytes6204,bytes6205,bytes6206,bytes6207]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6187 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6144.1 (.cons _ _ _ _ _ checked6145.1 (.cons _ _ _ _ _ checked6146.1 (.cons _ _ _ _ _ checked6147.1 (.cons _ _ _ _ _ checked6148.1 (.cons _ _ _ _ _ checked6149.1 (.cons _ _ _ _ _ checked6150.1 (.cons _ _ _ _ _ checked6151.1 (.cons _ _ _ _ _ checked6152.1 (.cons _ _ _ _ _ checked6153.1 (.cons _ _ _ _ _ checked6154.1 (.cons _ _ _ _ _ checked6155.1 (.cons _ _ _ _ _ checked6156.1 (.cons _ _ _ _ _ checked6157.1 (.cons _ _ _ _ _ checked6158.1 (.cons _ _ _ _ _ checked6159.1 (.cons _ _ _ _ _ checked6160.1 (.cons _ _ _ _ _ checked6161.1 (.cons _ _ _ _ _ checked6162.1 (.cons _ _ _ _ _ checked6163.1 (.cons _ _ _ _ _ checked6164.1 (.cons _ _ _ _ _ checked6165.1 (.cons _ _ _ _ _ checked6166.1 (.cons _ _ _ _ _ checked6167.1 (.cons _ _ _ _ _ checked6168.1 (.cons _ _ _ _ _ checked6169.1 (.cons _ _ _ _ _ checked6170.1 (.cons _ _ _ _ _ checked6171.1 (.cons _ _ _ _ _ checked6172.1 (.cons _ _ _ _ _ checked6173.1 (.cons _ _ _ _ _ checked6174.1 (.cons _ _ _ _ _ checked6175.1 (.cons _ _ _ _ _ checked6176.1 (.cons _ _ _ _ _ checked6177.1 (.cons _ _ _ _ _ checked6178.1 (.cons _ _ _ _ _ checked6179.1 (.cons _ _ _ _ _ checked6180.1 (.cons _ _ _ _ _ checked6181.1 (.cons _ _ _ _ _ checked6182.1 (.cons _ _ _ _ _ checked6183.1 (.cons _ _ _ _ _ checked6184.1 (.cons _ _ _ _ _ checked6185.1 (.cons _ _ _ _ _ checked6186.1 (.cons _ _ _ _ _ checked6187.1 (.cons _ _ _ _ _ checked6188.1 (.cons _ _ _ _ _ checked6189.1 (.cons _ _ _ _ _ checked6190.1 (.cons _ _ _ _ _ checked6191.1 (.cons _ _ _ _ _ checked6192.1 (.cons _ _ _ _ _ checked6193.1 (.cons _ _ _ _ _ checked6194.1 (.cons _ _ _ _ _ checked6195.1 (.cons _ _ _ _ _ checked6196.1 (.cons _ _ _ _ _ checked6197.1 (.cons _ _ _ _ _ checked6198.1 (.cons _ _ _ _ _ checked6199.1 (.cons _ _ _ _ _ checked6200.1 (.cons _ _ _ _ _ checked6201.1 (.cons _ _ _ _ _ checked6202.1 (.cons _ _ _ _ _ checked6203.1 (.cons _ _ _ _ _ checked6204.1 (.cons _ _ _ _ _ checked6205.1 (.cons _ _ _ _ _ checked6206.1 (.cons _ _ _ _ _ checked6207.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6187 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2950 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6144.2,checked6145.2,checked6146.2,checked6147.2,checked6148.2,checked6149.2,checked6150.2,checked6151.2,checked6152.2,checked6153.2,checked6154.2,checked6155.2,checked6156.2,checked6157.2,checked6158.2,checked6159.2,checked6160.2,checked6161.2,checked6162.2,checked6163.2,checked6164.2,checked6165.2,checked6166.2,checked6167.2,checked6168.2,checked6169.2,checked6170.2,checked6171.2,checked6172.2,checked6173.2,checked6174.2,checked6175.2,checked6176.2,checked6177.2,checked6178.2,checked6179.2,checked6180.2,checked6181.2,checked6182.2,checked6183.2,checked6184.2,checked6185.2,checked6186.2,checked6187.2,checked6188.2,checked6189.2,checked6190.2,checked6191.2,checked6192.2,checked6193.2,checked6194.2,checked6195.2,checked6196.2,checked6197.2,checked6198.2,checked6199.2,checked6200.2,checked6201.2,checked6202.2,checked6203.2,checked6204.2,checked6205.2,checked6206.2,checked6207.2]
  decide
end ArtifactPathRoundDispatchGroup96
