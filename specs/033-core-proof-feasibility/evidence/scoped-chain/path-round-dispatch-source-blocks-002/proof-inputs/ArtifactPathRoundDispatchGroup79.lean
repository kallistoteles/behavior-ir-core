import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup79
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5056 : List WordIR.Op := [.bxor 96 5098]
def bytes5056 : Bytes := ("    let r000013eb: u32 = r00000060 ^ r000013ea;\n" : String).toByteArray.data.toList
theorem checked5056 : bytes5056=statementBytes 5099 (op5056.map lower) ∧ bytes5056.length=48 := by core033_kernel_decide
def op5057 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5057 : Bytes := ("    let r000013ec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5057 : bytes5057=statementBytes 5100 (op5057.map lower) ∧ bytes5057.length=41 := by core033_kernel_decide
def op5058 : List WordIR.Op := [.bnot 5100]
def bytes5058 : Bytes := ("    let r000013ed: u32 = !r000013ec;\n" : String).toByteArray.data.toList
theorem checked5058 : bytes5058=statementBytes 5101 (op5058.map lower) ∧ bytes5058.length=37 := by core033_kernel_decide
def op5059 : List WordIR.Op := [.band 5099 5101]
def bytes5059 : Bytes := ("    let r000013ee: u32 = r000013eb & r000013ed;\n" : String).toByteArray.data.toList
theorem checked5059 : bytes5059=statementBytes 5102 (op5059.map lower) ∧ bytes5059.length=48 := by core033_kernel_decide
def op5060 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5060 : Bytes := ("    let r000013ef: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5060 : bytes5060=statementBytes 5103 (op5060.map lower) ∧ bytes5060.length=41 := by core033_kernel_decide
def op5061 : List WordIR.Op := [.bxor 96 5103]
def bytes5061 : Bytes := ("    let r000013f0: u32 = r00000060 ^ r000013ef;\n" : String).toByteArray.data.toList
theorem checked5061 : bytes5061=statementBytes 5104 (op5061.map lower) ∧ bytes5061.length=48 := by core033_kernel_decide
def op5062 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5062 : Bytes := ("    let r000013f1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5062 : bytes5062=statementBytes 5105 (op5062.map lower) ∧ bytes5062.length=41 := by core033_kernel_decide
def op5063 : List WordIR.Op := [.bnot 5105]
def bytes5063 : Bytes := ("    let r000013f2: u32 = !r000013f1;\n" : String).toByteArray.data.toList
theorem checked5063 : bytes5063=statementBytes 5106 (op5063.map lower) ∧ bytes5063.length=37 := by core033_kernel_decide
def op5064 : List WordIR.Op := [.bxor 5104 5106]
def bytes5064 : Bytes := ("    let r000013f3: u32 = r000013f0 ^ r000013f2;\n" : String).toByteArray.data.toList
theorem checked5064 : bytes5064=statementBytes 5107 (op5064.map lower) ∧ bytes5064.length=48 := by core033_kernel_decide
def op5065 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5065 : Bytes := ("    let r000013f4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5065 : bytes5065=statementBytes 5108 (op5065.map lower) ∧ bytes5065.length=41 := by core033_kernel_decide
def op5066 : List WordIR.Op := [.bxor 96 5108]
def bytes5066 : Bytes := ("    let r000013f5: u32 = r00000060 ^ r000013f4;\n" : String).toByteArray.data.toList
theorem checked5066 : bytes5066=statementBytes 5109 (op5066.map lower) ∧ bytes5066.length=48 := by core033_kernel_decide
def op5067 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5067 : Bytes := ("    let r000013f6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5067 : bytes5067=statementBytes 5110 (op5067.map lower) ∧ bytes5067.length=41 := by core033_kernel_decide
def op5068 : List WordIR.Op := [.bnot 5110]
def bytes5068 : Bytes := ("    let r000013f7: u32 = !r000013f6;\n" : String).toByteArray.data.toList
theorem checked5068 : bytes5068=statementBytes 5111 (op5068.map lower) ∧ bytes5068.length=37 := by core033_kernel_decide
def op5069 : List WordIR.Op := [.badd 5109 5111]
def bytes5069 : Bytes := ("    let r000013f8: u32 = r000013f5.wrapping_add(r000013f7);\n" : String).toByteArray.data.toList
theorem checked5069 : bytes5069=statementBytes 5112 (op5069.map lower) ∧ bytes5069.length=60 := by core033_kernel_decide
def op5070 : List WordIR.Op := [.bnot 5112]
def bytes5070 : Bytes := ("    let r000013f9: u32 = !r000013f8;\n" : String).toByteArray.data.toList
theorem checked5070 : bytes5070=statementBytes 5113 (op5070.map lower) ∧ bytes5070.length=37 := by core033_kernel_decide
def op5071 : List WordIR.Op := [.band 5107 5113]
def bytes5071 : Bytes := ("    let r000013fa: u32 = r000013f3 & r000013f9;\n" : String).toByteArray.data.toList
theorem checked5071 : bytes5071=statementBytes 5114 (op5071.map lower) ∧ bytes5071.length=48 := by core033_kernel_decide
def op5072 : List WordIR.Op := [.bxor 5102 5114]
def bytes5072 : Bytes := ("    let r000013fb: u32 = r000013ee ^ r000013fa;\n" : String).toByteArray.data.toList
theorem checked5072 : bytes5072=statementBytes 5115 (op5072.map lower) ∧ bytes5072.length=48 := by core033_kernel_decide
def op5073 : List WordIR.Op := [.shr 5115 31]
def bytes5073 : Bytes := ("    let r000013fc: u32 = r000013fb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5073 : bytes5073=statementBytes 5116 (op5073.map lower) ∧ bytes5073.length=54 := by core033_kernel_decide
def op5074 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5074 : Bytes := ("    let r000013fd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5074 : bytes5074=statementBytes 5117 (op5074.map lower) ∧ bytes5074.length=41 := by core033_kernel_decide
def op5075 : List WordIR.Op := [.bxor 5116 5117]
def bytes5075 : Bytes := ("    let r000013fe: u32 = r000013fc ^ r000013fd;\n" : String).toByteArray.data.toList
theorem checked5075 : bytes5075=statementBytes 5118 (op5075.map lower) ∧ bytes5075.length=48 := by core033_kernel_decide
def op5076 : List WordIR.Op := [.bnot 5118]
def bytes5076 : Bytes := ("    let r000013ff: u32 = !r000013fe;\n" : String).toByteArray.data.toList
theorem checked5076 : bytes5076=statementBytes 5119 (op5076.map lower) ∧ bytes5076.length=37 := by core033_kernel_decide
def op5077 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5077 : Bytes := ("    let r00001400: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5077 : bytes5077=statementBytes 5120 (op5077.map lower) ∧ bytes5077.length=41 := by core033_kernel_decide
def op5078 : List WordIR.Op := [.badd 5119 5120]
def bytes5078 : Bytes := ("    let r00001401: u32 = r000013ff.wrapping_add(r00001400);\n" : String).toByteArray.data.toList
theorem checked5078 : bytes5078=statementBytes 5121 (op5078.map lower) ∧ bytes5078.length=60 := by core033_kernel_decide
def op5079 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5079 : Bytes := ("    let r00001402: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5079 : bytes5079=statementBytes 5122 (op5079.map lower) ∧ bytes5079.length=41 := by core033_kernel_decide
def op5080 : List WordIR.Op := [.band 5121 5122]
def bytes5080 : Bytes := ("    let r00001403: u32 = r00001401 & r00001402;\n" : String).toByteArray.data.toList
theorem checked5080 : bytes5080=statementBytes 5123 (op5080.map lower) ∧ bytes5080.length=48 := by core033_kernel_decide
def op5081 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5081 : Bytes := ("    let r00001404: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5081 : bytes5081=statementBytes 5124 (op5081.map lower) ∧ bytes5081.length=41 := by core033_kernel_decide
def op5082 : List WordIR.Op := [.bxor 96 5124]
def bytes5082 : Bytes := ("    let r00001405: u32 = r00000060 ^ r00001404;\n" : String).toByteArray.data.toList
theorem checked5082 : bytes5082=statementBytes 5125 (op5082.map lower) ∧ bytes5082.length=48 := by core033_kernel_decide
def op5083 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5083 : Bytes := ("    let r00001406: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5083 : bytes5083=statementBytes 5126 (op5083.map lower) ∧ bytes5083.length=41 := by core033_kernel_decide
def op5084 : List WordIR.Op := [.bnot 5126]
def bytes5084 : Bytes := ("    let r00001407: u32 = !r00001406;\n" : String).toByteArray.data.toList
theorem checked5084 : bytes5084=statementBytes 5127 (op5084.map lower) ∧ bytes5084.length=37 := by core033_kernel_decide
def op5085 : List WordIR.Op := [.band 5125 5127]
def bytes5085 : Bytes := ("    let r00001408: u32 = r00001405 & r00001407;\n" : String).toByteArray.data.toList
theorem checked5085 : bytes5085=statementBytes 5128 (op5085.map lower) ∧ bytes5085.length=48 := by core033_kernel_decide
def op5086 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5086 : Bytes := ("    let r00001409: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5086 : bytes5086=statementBytes 5129 (op5086.map lower) ∧ bytes5086.length=41 := by core033_kernel_decide
def op5087 : List WordIR.Op := [.bxor 96 5129]
def bytes5087 : Bytes := ("    let r0000140a: u32 = r00000060 ^ r00001409;\n" : String).toByteArray.data.toList
theorem checked5087 : bytes5087=statementBytes 5130 (op5087.map lower) ∧ bytes5087.length=48 := by core033_kernel_decide
def op5088 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5088 : Bytes := ("    let r0000140b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5088 : bytes5088=statementBytes 5131 (op5088.map lower) ∧ bytes5088.length=41 := by core033_kernel_decide
def op5089 : List WordIR.Op := [.bnot 5131]
def bytes5089 : Bytes := ("    let r0000140c: u32 = !r0000140b;\n" : String).toByteArray.data.toList
theorem checked5089 : bytes5089=statementBytes 5132 (op5089.map lower) ∧ bytes5089.length=37 := by core033_kernel_decide
def op5090 : List WordIR.Op := [.bxor 5130 5132]
def bytes5090 : Bytes := ("    let r0000140d: u32 = r0000140a ^ r0000140c;\n" : String).toByteArray.data.toList
theorem checked5090 : bytes5090=statementBytes 5133 (op5090.map lower) ∧ bytes5090.length=48 := by core033_kernel_decide
def op5091 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5091 : Bytes := ("    let r0000140e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5091 : bytes5091=statementBytes 5134 (op5091.map lower) ∧ bytes5091.length=41 := by core033_kernel_decide
def op5092 : List WordIR.Op := [.bxor 96 5134]
def bytes5092 : Bytes := ("    let r0000140f: u32 = r00000060 ^ r0000140e;\n" : String).toByteArray.data.toList
theorem checked5092 : bytes5092=statementBytes 5135 (op5092.map lower) ∧ bytes5092.length=48 := by core033_kernel_decide
def op5093 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5093 : Bytes := ("    let r00001410: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5093 : bytes5093=statementBytes 5136 (op5093.map lower) ∧ bytes5093.length=41 := by core033_kernel_decide
def op5094 : List WordIR.Op := [.bnot 5136]
def bytes5094 : Bytes := ("    let r00001411: u32 = !r00001410;\n" : String).toByteArray.data.toList
theorem checked5094 : bytes5094=statementBytes 5137 (op5094.map lower) ∧ bytes5094.length=37 := by core033_kernel_decide
def op5095 : List WordIR.Op := [.badd 5135 5137]
def bytes5095 : Bytes := ("    let r00001412: u32 = r0000140f.wrapping_add(r00001411);\n" : String).toByteArray.data.toList
theorem checked5095 : bytes5095=statementBytes 5138 (op5095.map lower) ∧ bytes5095.length=60 := by core033_kernel_decide
def op5096 : List WordIR.Op := [.bnot 5138]
def bytes5096 : Bytes := ("    let r00001413: u32 = !r00001412;\n" : String).toByteArray.data.toList
theorem checked5096 : bytes5096=statementBytes 5139 (op5096.map lower) ∧ bytes5096.length=37 := by core033_kernel_decide
def op5097 : List WordIR.Op := [.band 5133 5139]
def bytes5097 : Bytes := ("    let r00001414: u32 = r0000140d & r00001413;\n" : String).toByteArray.data.toList
theorem checked5097 : bytes5097=statementBytes 5140 (op5097.map lower) ∧ bytes5097.length=48 := by core033_kernel_decide
def op5098 : List WordIR.Op := [.bxor 5128 5140]
def bytes5098 : Bytes := ("    let r00001415: u32 = r00001408 ^ r00001414;\n" : String).toByteArray.data.toList
theorem checked5098 : bytes5098=statementBytes 5141 (op5098.map lower) ∧ bytes5098.length=48 := by core033_kernel_decide
def op5099 : List WordIR.Op := [.shr 5141 31]
def bytes5099 : Bytes := ("    let r00001416: u32 = r00001415 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5099 : bytes5099=statementBytes 5142 (op5099.map lower) ∧ bytes5099.length=54 := by core033_kernel_decide
def op5100 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5100 : Bytes := ("    let r00001417: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5100 : bytes5100=statementBytes 5143 (op5100.map lower) ∧ bytes5100.length=41 := by core033_kernel_decide
def op5101 : List WordIR.Op := [.bxor 5142 5143]
def bytes5101 : Bytes := ("    let r00001418: u32 = r00001416 ^ r00001417;\n" : String).toByteArray.data.toList
theorem checked5101 : bytes5101=statementBytes 5144 (op5101.map lower) ∧ bytes5101.length=48 := by core033_kernel_decide
def op5102 : List WordIR.Op := [.bnot 5144]
def bytes5102 : Bytes := ("    let r00001419: u32 = !r00001418;\n" : String).toByteArray.data.toList
theorem checked5102 : bytes5102=statementBytes 5145 (op5102.map lower) ∧ bytes5102.length=37 := by core033_kernel_decide
def op5103 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5103 : Bytes := ("    let r0000141a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5103 : bytes5103=statementBytes 5146 (op5103.map lower) ∧ bytes5103.length=41 := by core033_kernel_decide
def op5104 : List WordIR.Op := [.badd 5145 5146]
def bytes5104 : Bytes := ("    let r0000141b: u32 = r00001419.wrapping_add(r0000141a);\n" : String).toByteArray.data.toList
theorem checked5104 : bytes5104=statementBytes 5147 (op5104.map lower) ∧ bytes5104.length=60 := by core033_kernel_decide
def op5105 : List WordIR.Op := [.bnot 5147]
def bytes5105 : Bytes := ("    let r0000141c: u32 = !r0000141b;\n" : String).toByteArray.data.toList
theorem checked5105 : bytes5105=statementBytes 5148 (op5105.map lower) ∧ bytes5105.length=37 := by core033_kernel_decide
def op5106 : List WordIR.Op := [.band 5148 1460]
def bytes5106 : Bytes := ("    let r0000141d: u32 = r0000141c & r000005b4;\n" : String).toByteArray.data.toList
theorem checked5106 : bytes5106=statementBytes 5149 (op5106.map lower) ∧ bytes5106.length=48 := by core033_kernel_decide
def op5107 : List WordIR.Op := [.bxor 5123 5149]
def bytes5107 : Bytes := ("    let r0000141e: u32 = r00001403 ^ r0000141d;\n" : String).toByteArray.data.toList
theorem checked5107 : bytes5107=statementBytes 5150 (op5107.map lower) ∧ bytes5107.length=48 := by core033_kernel_decide
def op5108 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5108 : Bytes := ("    let r0000141f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5108 : bytes5108=statementBytes 5151 (op5108.map lower) ∧ bytes5108.length=41 := by core033_kernel_decide
def op5109 : List WordIR.Op := [.bxor 96 5151]
def bytes5109 : Bytes := ("    let r00001420: u32 = r00000060 ^ r0000141f;\n" : String).toByteArray.data.toList
theorem checked5109 : bytes5109=statementBytes 5152 (op5109.map lower) ∧ bytes5109.length=48 := by core033_kernel_decide
def op5110 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5110 : Bytes := ("    let r00001421: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5110 : bytes5110=statementBytes 5153 (op5110.map lower) ∧ bytes5110.length=41 := by core033_kernel_decide
def op5111 : List WordIR.Op := [.bnot 5153]
def bytes5111 : Bytes := ("    let r00001422: u32 = !r00001421;\n" : String).toByteArray.data.toList
theorem checked5111 : bytes5111=statementBytes 5154 (op5111.map lower) ∧ bytes5111.length=37 := by core033_kernel_decide
def op5112 : List WordIR.Op := [.band 5152 5154]
def bytes5112 : Bytes := ("    let r00001423: u32 = r00001420 & r00001422;\n" : String).toByteArray.data.toList
theorem checked5112 : bytes5112=statementBytes 5155 (op5112.map lower) ∧ bytes5112.length=48 := by core033_kernel_decide
def op5113 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5113 : Bytes := ("    let r00001424: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5113 : bytes5113=statementBytes 5156 (op5113.map lower) ∧ bytes5113.length=41 := by core033_kernel_decide
def op5114 : List WordIR.Op := [.bxor 96 5156]
def bytes5114 : Bytes := ("    let r00001425: u32 = r00000060 ^ r00001424;\n" : String).toByteArray.data.toList
theorem checked5114 : bytes5114=statementBytes 5157 (op5114.map lower) ∧ bytes5114.length=48 := by core033_kernel_decide
def op5115 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5115 : Bytes := ("    let r00001426: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5115 : bytes5115=statementBytes 5158 (op5115.map lower) ∧ bytes5115.length=41 := by core033_kernel_decide
def op5116 : List WordIR.Op := [.bnot 5158]
def bytes5116 : Bytes := ("    let r00001427: u32 = !r00001426;\n" : String).toByteArray.data.toList
theorem checked5116 : bytes5116=statementBytes 5159 (op5116.map lower) ∧ bytes5116.length=37 := by core033_kernel_decide
def op5117 : List WordIR.Op := [.bxor 5157 5159]
def bytes5117 : Bytes := ("    let r00001428: u32 = r00001425 ^ r00001427;\n" : String).toByteArray.data.toList
theorem checked5117 : bytes5117=statementBytes 5160 (op5117.map lower) ∧ bytes5117.length=48 := by core033_kernel_decide
def op5118 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5118 : Bytes := ("    let r00001429: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5118 : bytes5118=statementBytes 5161 (op5118.map lower) ∧ bytes5118.length=41 := by core033_kernel_decide
def op5119 : List WordIR.Op := [.bxor 96 5161]
def bytes5119 : Bytes := ("    let r0000142a: u32 = r00000060 ^ r00001429;\n" : String).toByteArray.data.toList
theorem checked5119 : bytes5119=statementBytes 5162 (op5119.map lower) ∧ bytes5119.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5056,op5057,op5058,op5059,op5060,op5061,op5062,op5063,op5064,op5065,op5066,op5067,op5068,op5069,op5070,op5071,op5072,op5073,op5074,op5075,op5076,op5077,op5078,op5079,op5080,op5081,op5082,op5083,op5084,op5085,op5086,op5087,op5088,op5089,op5090,op5091,op5092,op5093,op5094,op5095,op5096,op5097,op5098,op5099,op5100,op5101,op5102,op5103,op5104,op5105,op5106,op5107,op5108,op5109,op5110,op5111,op5112,op5113,op5114,op5115,op5116,op5117,op5118,op5119]
def chunks : List Bytes := [bytes5056,bytes5057,bytes5058,bytes5059,bytes5060,bytes5061,bytes5062,bytes5063,bytes5064,bytes5065,bytes5066,bytes5067,bytes5068,bytes5069,bytes5070,bytes5071,bytes5072,bytes5073,bytes5074,bytes5075,bytes5076,bytes5077,bytes5078,bytes5079,bytes5080,bytes5081,bytes5082,bytes5083,bytes5084,bytes5085,bytes5086,bytes5087,bytes5088,bytes5089,bytes5090,bytes5091,bytes5092,bytes5093,bytes5094,bytes5095,bytes5096,bytes5097,bytes5098,bytes5099,bytes5100,bytes5101,bytes5102,bytes5103,bytes5104,bytes5105,bytes5106,bytes5107,bytes5108,bytes5109,bytes5110,bytes5111,bytes5112,bytes5113,bytes5114,bytes5115,bytes5116,bytes5117,bytes5118,bytes5119]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5099 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5056.1 (.cons _ _ _ _ _ checked5057.1 (.cons _ _ _ _ _ checked5058.1 (.cons _ _ _ _ _ checked5059.1 (.cons _ _ _ _ _ checked5060.1 (.cons _ _ _ _ _ checked5061.1 (.cons _ _ _ _ _ checked5062.1 (.cons _ _ _ _ _ checked5063.1 (.cons _ _ _ _ _ checked5064.1 (.cons _ _ _ _ _ checked5065.1 (.cons _ _ _ _ _ checked5066.1 (.cons _ _ _ _ _ checked5067.1 (.cons _ _ _ _ _ checked5068.1 (.cons _ _ _ _ _ checked5069.1 (.cons _ _ _ _ _ checked5070.1 (.cons _ _ _ _ _ checked5071.1 (.cons _ _ _ _ _ checked5072.1 (.cons _ _ _ _ _ checked5073.1 (.cons _ _ _ _ _ checked5074.1 (.cons _ _ _ _ _ checked5075.1 (.cons _ _ _ _ _ checked5076.1 (.cons _ _ _ _ _ checked5077.1 (.cons _ _ _ _ _ checked5078.1 (.cons _ _ _ _ _ checked5079.1 (.cons _ _ _ _ _ checked5080.1 (.cons _ _ _ _ _ checked5081.1 (.cons _ _ _ _ _ checked5082.1 (.cons _ _ _ _ _ checked5083.1 (.cons _ _ _ _ _ checked5084.1 (.cons _ _ _ _ _ checked5085.1 (.cons _ _ _ _ _ checked5086.1 (.cons _ _ _ _ _ checked5087.1 (.cons _ _ _ _ _ checked5088.1 (.cons _ _ _ _ _ checked5089.1 (.cons _ _ _ _ _ checked5090.1 (.cons _ _ _ _ _ checked5091.1 (.cons _ _ _ _ _ checked5092.1 (.cons _ _ _ _ _ checked5093.1 (.cons _ _ _ _ _ checked5094.1 (.cons _ _ _ _ _ checked5095.1 (.cons _ _ _ _ _ checked5096.1 (.cons _ _ _ _ _ checked5097.1 (.cons _ _ _ _ _ checked5098.1 (.cons _ _ _ _ _ checked5099.1 (.cons _ _ _ _ _ checked5100.1 (.cons _ _ _ _ _ checked5101.1 (.cons _ _ _ _ _ checked5102.1 (.cons _ _ _ _ _ checked5103.1 (.cons _ _ _ _ _ checked5104.1 (.cons _ _ _ _ _ checked5105.1 (.cons _ _ _ _ _ checked5106.1 (.cons _ _ _ _ _ checked5107.1 (.cons _ _ _ _ _ checked5108.1 (.cons _ _ _ _ _ checked5109.1 (.cons _ _ _ _ _ checked5110.1 (.cons _ _ _ _ _ checked5111.1 (.cons _ _ _ _ _ checked5112.1 (.cons _ _ _ _ _ checked5113.1 (.cons _ _ _ _ _ checked5114.1 (.cons _ _ _ _ _ checked5115.1 (.cons _ _ _ _ _ checked5116.1 (.cons _ _ _ _ _ checked5117.1 (.cons _ _ _ _ _ checked5118.1 (.cons _ _ _ _ _ checked5119.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5099 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5056.2,checked5057.2,checked5058.2,checked5059.2,checked5060.2,checked5061.2,checked5062.2,checked5063.2,checked5064.2,checked5065.2,checked5066.2,checked5067.2,checked5068.2,checked5069.2,checked5070.2,checked5071.2,checked5072.2,checked5073.2,checked5074.2,checked5075.2,checked5076.2,checked5077.2,checked5078.2,checked5079.2,checked5080.2,checked5081.2,checked5082.2,checked5083.2,checked5084.2,checked5085.2,checked5086.2,checked5087.2,checked5088.2,checked5089.2,checked5090.2,checked5091.2,checked5092.2,checked5093.2,checked5094.2,checked5095.2,checked5096.2,checked5097.2,checked5098.2,checked5099.2,checked5100.2,checked5101.2,checked5102.2,checked5103.2,checked5104.2,checked5105.2,checked5106.2,checked5107.2,checked5108.2,checked5109.2,checked5110.2,checked5111.2,checked5112.2,checked5113.2,checked5114.2,checked5115.2,checked5116.2,checked5117.2,checked5118.2,checked5119.2]
  decide
end ArtifactPathRoundDispatchGroup79
