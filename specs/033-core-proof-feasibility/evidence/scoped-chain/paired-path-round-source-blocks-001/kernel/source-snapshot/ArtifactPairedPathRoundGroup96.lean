import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup96
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6144 : List WordIR.Op := [.rotr 4263 24]
def bytes6144 : Bytes := ("    let r00001860: u32 = r000010a7.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6144 : bytes6144=statementBytes 6240 (op6144.map lower) ∧ bytes6144.length=65 := by core033_kernel_decide
def op6145 : List WordIR.Op := [.badd 6239 6240]
def bytes6145 : Bytes := ("    let r00001861: u32 = r0000185f.wrapping_add(r00001860);\n" : String).toByteArray.data.toList
theorem checked6145 : bytes6145=statementBytes 6241 (op6145.map lower) ∧ bytes6145.length=60 := by core033_kernel_decide
def op6146 : List WordIR.Op := [.badd 6241 4315]
def bytes6146 : Bytes := ("    let r00001862: u32 = r00001861.wrapping_add(r000010db);\n" : String).toByteArray.data.toList
theorem checked6146 : bytes6146=statementBytes 6242 (op6146.map lower) ∧ bytes6146.length=60 := by core033_kernel_decide
def op6147 : List WordIR.Op := [.rotr 4367 8]
def bytes6147 : Bytes := ("    let r00001863: u32 = r0000110f.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6147 : bytes6147=statementBytes 6243 (op6147.map lower) ∧ bytes6147.length=65 := by core033_kernel_decide
def op6148 : List WordIR.Op := [.rotr 4419 16]
def bytes6148 : Bytes := ("    let r00001864: u32 = r00001143.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6148 : bytes6148=statementBytes 6244 (op6148.map lower) ∧ bytes6148.length=65 := by core033_kernel_decide
def op6149 : List WordIR.Op := [.badd 6243 6244]
def bytes6149 : Bytes := ("    let r00001865: u32 = r00001863.wrapping_add(r00001864);\n" : String).toByteArray.data.toList
theorem checked6149 : bytes6149=statementBytes 6245 (op6149.map lower) ∧ bytes6149.length=60 := by core033_kernel_decide
def op6150 : List WordIR.Op := [.rotr 4471 24]
def bytes6150 : Bytes := ("    let r00001866: u32 = r00001177.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6150 : bytes6150=statementBytes 6246 (op6150.map lower) ∧ bytes6150.length=65 := by core033_kernel_decide
def op6151 : List WordIR.Op := [.badd 6245 6246]
def bytes6151 : Bytes := ("    let r00001867: u32 = r00001865.wrapping_add(r00001866);\n" : String).toByteArray.data.toList
theorem checked6151 : bytes6151=statementBytes 6247 (op6151.map lower) ∧ bytes6151.length=60 := by core033_kernel_decide
def op6152 : List WordIR.Op := [.badd 6247 4523]
def bytes6152 : Bytes := ("    let r00001868: u32 = r00001867.wrapping_add(r000011ab);\n" : String).toByteArray.data.toList
theorem checked6152 : bytes6152=statementBytes 6248 (op6152.map lower) ∧ bytes6152.length=60 := by core033_kernel_decide
def op6153 : List WordIR.Op := [.rotr 4575 8]
def bytes6153 : Bytes := ("    let r00001869: u32 = r000011df.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6153 : bytes6153=statementBytes 6249 (op6153.map lower) ∧ bytes6153.length=65 := by core033_kernel_decide
def op6154 : List WordIR.Op := [.rotr 4627 16]
def bytes6154 : Bytes := ("    let r0000186a: u32 = r00001213.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6154 : bytes6154=statementBytes 6250 (op6154.map lower) ∧ bytes6154.length=65 := by core033_kernel_decide
def op6155 : List WordIR.Op := [.badd 6249 6250]
def bytes6155 : Bytes := ("    let r0000186b: u32 = r00001869.wrapping_add(r0000186a);\n" : String).toByteArray.data.toList
theorem checked6155 : bytes6155=statementBytes 6251 (op6155.map lower) ∧ bytes6155.length=60 := by core033_kernel_decide
def op6156 : List WordIR.Op := [.rotr 4679 24]
def bytes6156 : Bytes := ("    let r0000186c: u32 = r00001247.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6156 : bytes6156=statementBytes 6252 (op6156.map lower) ∧ bytes6156.length=65 := by core033_kernel_decide
def op6157 : List WordIR.Op := [.badd 6251 6252]
def bytes6157 : Bytes := ("    let r0000186d: u32 = r0000186b.wrapping_add(r0000186c);\n" : String).toByteArray.data.toList
theorem checked6157 : bytes6157=statementBytes 6253 (op6157.map lower) ∧ bytes6157.length=60 := by core033_kernel_decide
def op6158 : List WordIR.Op := [.badd 6253 4731]
def bytes6158 : Bytes := ("    let r0000186e: u32 = r0000186d.wrapping_add(r0000127b);\n" : String).toByteArray.data.toList
theorem checked6158 : bytes6158=statementBytes 6254 (op6158.map lower) ∧ bytes6158.length=60 := by core033_kernel_decide
def op6159 : List WordIR.Op := [.rotr 4783 8]
def bytes6159 : Bytes := ("    let r0000186f: u32 = r000012af.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6159 : bytes6159=statementBytes 6255 (op6159.map lower) ∧ bytes6159.length=65 := by core033_kernel_decide
def op6160 : List WordIR.Op := [.rotr 4835 16]
def bytes6160 : Bytes := ("    let r00001870: u32 = r000012e3.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6160 : bytes6160=statementBytes 6256 (op6160.map lower) ∧ bytes6160.length=65 := by core033_kernel_decide
def op6161 : List WordIR.Op := [.badd 6255 6256]
def bytes6161 : Bytes := ("    let r00001871: u32 = r0000186f.wrapping_add(r00001870);\n" : String).toByteArray.data.toList
theorem checked6161 : bytes6161=statementBytes 6257 (op6161.map lower) ∧ bytes6161.length=60 := by core033_kernel_decide
def op6162 : List WordIR.Op := [.rotr 4887 24]
def bytes6162 : Bytes := ("    let r00001872: u32 = r00001317.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6162 : bytes6162=statementBytes 6258 (op6162.map lower) ∧ bytes6162.length=65 := by core033_kernel_decide
def op6163 : List WordIR.Op := [.badd 6257 6258]
def bytes6163 : Bytes := ("    let r00001873: u32 = r00001871.wrapping_add(r00001872);\n" : String).toByteArray.data.toList
theorem checked6163 : bytes6163=statementBytes 6259 (op6163.map lower) ∧ bytes6163.length=60 := by core033_kernel_decide
def op6164 : List WordIR.Op := [.badd 6259 4939]
def bytes6164 : Bytes := ("    let r00001874: u32 = r00001873.wrapping_add(r0000134b);\n" : String).toByteArray.data.toList
theorem checked6164 : bytes6164=statementBytes 6260 (op6164.map lower) ∧ bytes6164.length=60 := by core033_kernel_decide
def op6165 : List WordIR.Op := [.rotr 4991 8]
def bytes6165 : Bytes := ("    let r00001875: u32 = r0000137f.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6165 : bytes6165=statementBytes 6261 (op6165.map lower) ∧ bytes6165.length=65 := by core033_kernel_decide
def op6166 : List WordIR.Op := [.rotr 5043 16]
def bytes6166 : Bytes := ("    let r00001876: u32 = r000013b3.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6166 : bytes6166=statementBytes 6262 (op6166.map lower) ∧ bytes6166.length=65 := by core033_kernel_decide
def op6167 : List WordIR.Op := [.badd 6261 6262]
def bytes6167 : Bytes := ("    let r00001877: u32 = r00001875.wrapping_add(r00001876);\n" : String).toByteArray.data.toList
theorem checked6167 : bytes6167=statementBytes 6263 (op6167.map lower) ∧ bytes6167.length=60 := by core033_kernel_decide
def op6168 : List WordIR.Op := [.rotr 5095 24]
def bytes6168 : Bytes := ("    let r00001878: u32 = r000013e7.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6168 : bytes6168=statementBytes 6264 (op6168.map lower) ∧ bytes6168.length=65 := by core033_kernel_decide
def op6169 : List WordIR.Op := [.badd 6263 6264]
def bytes6169 : Bytes := ("    let r00001879: u32 = r00001877.wrapping_add(r00001878);\n" : String).toByteArray.data.toList
theorem checked6169 : bytes6169=statementBytes 6265 (op6169.map lower) ∧ bytes6169.length=60 := by core033_kernel_decide
def op6170 : List WordIR.Op := [.badd 6265 5147]
def bytes6170 : Bytes := ("    let r0000187a: u32 = r00001879.wrapping_add(r0000141b);\n" : String).toByteArray.data.toList
theorem checked6170 : bytes6170=statementBytes 6266 (op6170.map lower) ∧ bytes6170.length=60 := by core033_kernel_decide
def op6171 : List WordIR.Op := [.rotr 5199 8]
def bytes6171 : Bytes := ("    let r0000187b: u32 = r0000144f.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6171 : bytes6171=statementBytes 6267 (op6171.map lower) ∧ bytes6171.length=65 := by core033_kernel_decide
def op6172 : List WordIR.Op := [.rotr 5251 16]
def bytes6172 : Bytes := ("    let r0000187c: u32 = r00001483.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6172 : bytes6172=statementBytes 6268 (op6172.map lower) ∧ bytes6172.length=65 := by core033_kernel_decide
def op6173 : List WordIR.Op := [.badd 6267 6268]
def bytes6173 : Bytes := ("    let r0000187d: u32 = r0000187b.wrapping_add(r0000187c);\n" : String).toByteArray.data.toList
theorem checked6173 : bytes6173=statementBytes 6269 (op6173.map lower) ∧ bytes6173.length=60 := by core033_kernel_decide
def op6174 : List WordIR.Op := [.rotr 5303 24]
def bytes6174 : Bytes := ("    let r0000187e: u32 = r000014b7.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6174 : bytes6174=statementBytes 6270 (op6174.map lower) ∧ bytes6174.length=65 := by core033_kernel_decide
def op6175 : List WordIR.Op := [.badd 6269 6270]
def bytes6175 : Bytes := ("    let r0000187f: u32 = r0000187d.wrapping_add(r0000187e);\n" : String).toByteArray.data.toList
theorem checked6175 : bytes6175=statementBytes 6271 (op6175.map lower) ∧ bytes6175.length=60 := by core033_kernel_decide
def op6176 : List WordIR.Op := [.badd 6271 5355]
def bytes6176 : Bytes := ("    let r00001880: u32 = r0000187f.wrapping_add(r000014eb);\n" : String).toByteArray.data.toList
theorem checked6176 : bytes6176=statementBytes 6272 (op6176.map lower) ∧ bytes6176.length=60 := by core033_kernel_decide
def op6177 : List WordIR.Op := [.rotr 5407 8]
def bytes6177 : Bytes := ("    let r00001881: u32 = r0000151f.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6177 : bytes6177=statementBytes 6273 (op6177.map lower) ∧ bytes6177.length=65 := by core033_kernel_decide
def op6178 : List WordIR.Op := [.rotr 5459 16]
def bytes6178 : Bytes := ("    let r00001882: u32 = r00001553.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6178 : bytes6178=statementBytes 6274 (op6178.map lower) ∧ bytes6178.length=65 := by core033_kernel_decide
def op6179 : List WordIR.Op := [.badd 6273 6274]
def bytes6179 : Bytes := ("    let r00001883: u32 = r00001881.wrapping_add(r00001882);\n" : String).toByteArray.data.toList
theorem checked6179 : bytes6179=statementBytes 6275 (op6179.map lower) ∧ bytes6179.length=60 := by core033_kernel_decide
def op6180 : List WordIR.Op := [.rotr 5511 24]
def bytes6180 : Bytes := ("    let r00001884: u32 = r00001587.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6180 : bytes6180=statementBytes 6276 (op6180.map lower) ∧ bytes6180.length=65 := by core033_kernel_decide
def op6181 : List WordIR.Op := [.badd 6275 6276]
def bytes6181 : Bytes := ("    let r00001885: u32 = r00001883.wrapping_add(r00001884);\n" : String).toByteArray.data.toList
theorem checked6181 : bytes6181=statementBytes 6277 (op6181.map lower) ∧ bytes6181.length=60 := by core033_kernel_decide
def op6182 : List WordIR.Op := [.badd 6277 5564]
def bytes6182 : Bytes := ("    let r00001886: u32 = r00001885.wrapping_add(r000015bc);\n" : String).toByteArray.data.toList
theorem checked6182 : bytes6182=statementBytes 6278 (op6182.map lower) ∧ bytes6182.length=60 := by core033_kernel_decide
def op6183 : List WordIR.Op := [.rotr 5617 8]
def bytes6183 : Bytes := ("    let r00001887: u32 = r000015f1.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6183 : bytes6183=statementBytes 6279 (op6183.map lower) ∧ bytes6183.length=65 := by core033_kernel_decide
def op6184 : List WordIR.Op := [.rotr 5670 16]
def bytes6184 : Bytes := ("    let r00001888: u32 = r00001626.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6184 : bytes6184=statementBytes 6280 (op6184.map lower) ∧ bytes6184.length=65 := by core033_kernel_decide
def op6185 : List WordIR.Op := [.badd 6279 6280]
def bytes6185 : Bytes := ("    let r00001889: u32 = r00001887.wrapping_add(r00001888);\n" : String).toByteArray.data.toList
theorem checked6185 : bytes6185=statementBytes 6281 (op6185.map lower) ∧ bytes6185.length=60 := by core033_kernel_decide
def op6186 : List WordIR.Op := [.rotr 5723 24]
def bytes6186 : Bytes := ("    let r0000188a: u32 = r0000165b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6186 : bytes6186=statementBytes 6282 (op6186.map lower) ∧ bytes6186.length=65 := by core033_kernel_decide
def op6187 : List WordIR.Op := [.badd 6281 6282]
def bytes6187 : Bytes := ("    let r0000188b: u32 = r00001889.wrapping_add(r0000188a);\n" : String).toByteArray.data.toList
theorem checked6187 : bytes6187=statementBytes 6283 (op6187.map lower) ∧ bytes6187.length=60 := by core033_kernel_decide
def op6188 : List WordIR.Op := [.badd 6283 5776]
def bytes6188 : Bytes := ("    let r0000188c: u32 = r0000188b.wrapping_add(r00001690);\n" : String).toByteArray.data.toList
theorem checked6188 : bytes6188=statementBytes 6284 (op6188.map lower) ∧ bytes6188.length=60 := by core033_kernel_decide
def op6189 : List WordIR.Op := [.rotr 5829 8]
def bytes6189 : Bytes := ("    let r0000188d: u32 = r000016c5.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6189 : bytes6189=statementBytes 6285 (op6189.map lower) ∧ bytes6189.length=65 := by core033_kernel_decide
def op6190 : List WordIR.Op := [.rotr 5882 16]
def bytes6190 : Bytes := ("    let r0000188e: u32 = r000016fa.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6190 : bytes6190=statementBytes 6286 (op6190.map lower) ∧ bytes6190.length=65 := by core033_kernel_decide
def op6191 : List WordIR.Op := [.badd 6285 6286]
def bytes6191 : Bytes := ("    let r0000188f: u32 = r0000188d.wrapping_add(r0000188e);\n" : String).toByteArray.data.toList
theorem checked6191 : bytes6191=statementBytes 6287 (op6191.map lower) ∧ bytes6191.length=60 := by core033_kernel_decide
def op6192 : List WordIR.Op := [.rotr 5935 24]
def bytes6192 : Bytes := ("    let r00001890: u32 = r0000172f.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6192 : bytes6192=statementBytes 6288 (op6192.map lower) ∧ bytes6192.length=65 := by core033_kernel_decide
def op6193 : List WordIR.Op := [.badd 6287 6288]
def bytes6193 : Bytes := ("    let r00001891: u32 = r0000188f.wrapping_add(r00001890);\n" : String).toByteArray.data.toList
theorem checked6193 : bytes6193=statementBytes 6289 (op6193.map lower) ∧ bytes6193.length=60 := by core033_kernel_decide
def op6194 : List WordIR.Op := [.badd 6289 5988]
def bytes6194 : Bytes := ("    let r00001892: u32 = r00001891.wrapping_add(r00001764);\n" : String).toByteArray.data.toList
theorem checked6194 : bytes6194=statementBytes 6290 (op6194.map lower) ∧ bytes6194.length=60 := by core033_kernel_decide
def op6195 : List WordIR.Op := [.rotr 6041 8]
def bytes6195 : Bytes := ("    let r00001893: u32 = r00001799.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked6195 : bytes6195=statementBytes 6291 (op6195.map lower) ∧ bytes6195.length=65 := by core033_kernel_decide
def op6196 : List WordIR.Op := [.rotr 6094 16]
def bytes6196 : Bytes := ("    let r00001894: u32 = r000017ce.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked6196 : bytes6196=statementBytes 6292 (op6196.map lower) ∧ bytes6196.length=65 := by core033_kernel_decide
def op6197 : List WordIR.Op := [.badd 6291 6292]
def bytes6197 : Bytes := ("    let r00001895: u32 = r00001893.wrapping_add(r00001894);\n" : String).toByteArray.data.toList
theorem checked6197 : bytes6197=statementBytes 6293 (op6197.map lower) ∧ bytes6197.length=60 := by core033_kernel_decide
def op6198 : List WordIR.Op := [.rotr 6147 24]
def bytes6198 : Bytes := ("    let r00001896: u32 = r00001803.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked6198 : bytes6198=statementBytes 6294 (op6198.map lower) ∧ bytes6198.length=65 := by core033_kernel_decide
def op6199 : List WordIR.Op := [.badd 6293 6294]
def bytes6199 : Bytes := ("    let r00001897: u32 = r00001895.wrapping_add(r00001896);\n" : String).toByteArray.data.toList
theorem checked6199 : bytes6199=statementBytes 6295 (op6199.map lower) ∧ bytes6199.length=60 := by core033_kernel_decide
def op6200 : List WordIR.Op := [.badd 6295 6200]
def bytes6200 : Bytes := ("    let r00001898: u32 = r00001897.wrapping_add(r00001838);\n" : String).toByteArray.data.toList
theorem checked6200 : bytes6200=statementBytes 6296 (op6200.map lower) ∧ bytes6200.length=60 := by core033_kernel_decide
def op6201 : List WordIR.Op := [.shr 2911 8]
def bytes6201 : Bytes := ("    let r00001899: u32 = r00000b5f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6201 : bytes6201=statementBytes 6297 (op6201.map lower) ∧ bytes6201.length=54 := by core033_kernel_decide
def op6202 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6202 : Bytes := ("    let r0000189a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6202 : bytes6202=statementBytes 6298 (op6202.map lower) ∧ bytes6202.length=41 := by core033_kernel_decide
def op6203 : List WordIR.Op := [.bnot 6298]
def bytes6203 : Bytes := ("    let r0000189b: u32 = !r0000189a;\n" : String).toByteArray.data.toList
theorem checked6203 : bytes6203=statementBytes 6299 (op6203.map lower) ∧ bytes6203.length=37 := by core033_kernel_decide
def op6204 : List WordIR.Op := [.band 6297 6299]
def bytes6204 : Bytes := ("    let r0000189c: u32 = r00001899 & r0000189b;\n" : String).toByteArray.data.toList
theorem checked6204 : bytes6204=statementBytes 6300 (op6204.map lower) ∧ bytes6204.length=48 := by core033_kernel_decide
def op6205 : List WordIR.Op := [.shr 2911 8]
def bytes6205 : Bytes := ("    let r0000189d: u32 = r00000b5f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6205 : bytes6205=statementBytes 6301 (op6205.map lower) ∧ bytes6205.length=54 := by core033_kernel_decide
def op6206 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6206 : Bytes := ("    let r0000189e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6206 : bytes6206=statementBytes 6302 (op6206.map lower) ∧ bytes6206.length=41 := by core033_kernel_decide
def op6207 : List WordIR.Op := [.bnot 6302]
def bytes6207 : Bytes := ("    let r0000189f: u32 = !r0000189e;\n" : String).toByteArray.data.toList
theorem checked6207 : bytes6207=statementBytes 6303 (op6207.map lower) ∧ bytes6207.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6144,op6145,op6146,op6147,op6148,op6149,op6150,op6151,op6152,op6153,op6154,op6155,op6156,op6157,op6158,op6159,op6160,op6161,op6162,op6163,op6164,op6165,op6166,op6167,op6168,op6169,op6170,op6171,op6172,op6173,op6174,op6175,op6176,op6177,op6178,op6179,op6180,op6181,op6182,op6183,op6184,op6185,op6186,op6187,op6188,op6189,op6190,op6191,op6192,op6193,op6194,op6195,op6196,op6197,op6198,op6199,op6200,op6201,op6202,op6203,op6204,op6205,op6206,op6207]
def chunks : List Bytes := [bytes6144,bytes6145,bytes6146,bytes6147,bytes6148,bytes6149,bytes6150,bytes6151,bytes6152,bytes6153,bytes6154,bytes6155,bytes6156,bytes6157,bytes6158,bytes6159,bytes6160,bytes6161,bytes6162,bytes6163,bytes6164,bytes6165,bytes6166,bytes6167,bytes6168,bytes6169,bytes6170,bytes6171,bytes6172,bytes6173,bytes6174,bytes6175,bytes6176,bytes6177,bytes6178,bytes6179,bytes6180,bytes6181,bytes6182,bytes6183,bytes6184,bytes6185,bytes6186,bytes6187,bytes6188,bytes6189,bytes6190,bytes6191,bytes6192,bytes6193,bytes6194,bytes6195,bytes6196,bytes6197,bytes6198,bytes6199,bytes6200,bytes6201,bytes6202,bytes6203,bytes6204,bytes6205,bytes6206,bytes6207]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6240 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6144.1 (.cons _ _ _ _ _ checked6145.1 (.cons _ _ _ _ _ checked6146.1 (.cons _ _ _ _ _ checked6147.1 (.cons _ _ _ _ _ checked6148.1 (.cons _ _ _ _ _ checked6149.1 (.cons _ _ _ _ _ checked6150.1 (.cons _ _ _ _ _ checked6151.1 (.cons _ _ _ _ _ checked6152.1 (.cons _ _ _ _ _ checked6153.1 (.cons _ _ _ _ _ checked6154.1 (.cons _ _ _ _ _ checked6155.1 (.cons _ _ _ _ _ checked6156.1 (.cons _ _ _ _ _ checked6157.1 (.cons _ _ _ _ _ checked6158.1 (.cons _ _ _ _ _ checked6159.1 (.cons _ _ _ _ _ checked6160.1 (.cons _ _ _ _ _ checked6161.1 (.cons _ _ _ _ _ checked6162.1 (.cons _ _ _ _ _ checked6163.1 (.cons _ _ _ _ _ checked6164.1 (.cons _ _ _ _ _ checked6165.1 (.cons _ _ _ _ _ checked6166.1 (.cons _ _ _ _ _ checked6167.1 (.cons _ _ _ _ _ checked6168.1 (.cons _ _ _ _ _ checked6169.1 (.cons _ _ _ _ _ checked6170.1 (.cons _ _ _ _ _ checked6171.1 (.cons _ _ _ _ _ checked6172.1 (.cons _ _ _ _ _ checked6173.1 (.cons _ _ _ _ _ checked6174.1 (.cons _ _ _ _ _ checked6175.1 (.cons _ _ _ _ _ checked6176.1 (.cons _ _ _ _ _ checked6177.1 (.cons _ _ _ _ _ checked6178.1 (.cons _ _ _ _ _ checked6179.1 (.cons _ _ _ _ _ checked6180.1 (.cons _ _ _ _ _ checked6181.1 (.cons _ _ _ _ _ checked6182.1 (.cons _ _ _ _ _ checked6183.1 (.cons _ _ _ _ _ checked6184.1 (.cons _ _ _ _ _ checked6185.1 (.cons _ _ _ _ _ checked6186.1 (.cons _ _ _ _ _ checked6187.1 (.cons _ _ _ _ _ checked6188.1 (.cons _ _ _ _ _ checked6189.1 (.cons _ _ _ _ _ checked6190.1 (.cons _ _ _ _ _ checked6191.1 (.cons _ _ _ _ _ checked6192.1 (.cons _ _ _ _ _ checked6193.1 (.cons _ _ _ _ _ checked6194.1 (.cons _ _ _ _ _ checked6195.1 (.cons _ _ _ _ _ checked6196.1 (.cons _ _ _ _ _ checked6197.1 (.cons _ _ _ _ _ checked6198.1 (.cons _ _ _ _ _ checked6199.1 (.cons _ _ _ _ _ checked6200.1 (.cons _ _ _ _ _ checked6201.1 (.cons _ _ _ _ _ checked6202.1 (.cons _ _ _ _ _ checked6203.1 (.cons _ _ _ _ _ checked6204.1 (.cons _ _ _ _ _ checked6205.1 (.cons _ _ _ _ _ checked6206.1 (.cons _ _ _ _ _ checked6207.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6240 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3872 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6144.2,checked6145.2,checked6146.2,checked6147.2,checked6148.2,checked6149.2,checked6150.2,checked6151.2,checked6152.2,checked6153.2,checked6154.2,checked6155.2,checked6156.2,checked6157.2,checked6158.2,checked6159.2,checked6160.2,checked6161.2,checked6162.2,checked6163.2,checked6164.2,checked6165.2,checked6166.2,checked6167.2,checked6168.2,checked6169.2,checked6170.2,checked6171.2,checked6172.2,checked6173.2,checked6174.2,checked6175.2,checked6176.2,checked6177.2,checked6178.2,checked6179.2,checked6180.2,checked6181.2,checked6182.2,checked6183.2,checked6184.2,checked6185.2,checked6186.2,checked6187.2,checked6188.2,checked6189.2,checked6190.2,checked6191.2,checked6192.2,checked6193.2,checked6194.2,checked6195.2,checked6196.2,checked6197.2,checked6198.2,checked6199.2,checked6200.2,checked6201.2,checked6202.2,checked6203.2,checked6204.2,checked6205.2,checked6206.2,checked6207.2]
  decide
end ArtifactPairedPathRoundGroup96
