import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup80
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5120 : List WordIR.Op := [.band 5162 974]
def bytes5120 : Bytes := ("    let r0000142b: u32 = r0000142a & r000003ce;\n" : String).toByteArray.data.toList
theorem checked5120 : bytes5120=statementBytes 5163 (op5120.map lower) ∧ bytes5120.length=48 := by core033_kernel_decide
def op5121 : List WordIR.Op := [.bxor 5137 5163]
def bytes5121 : Bytes := ("    let r0000142c: u32 = r00001411 ^ r0000142b;\n" : String).toByteArray.data.toList
theorem checked5121 : bytes5121=statementBytes 5164 (op5121.map lower) ∧ bytes5121.length=48 := by core033_kernel_decide
def op5122 : List WordIR.Op := [.rotr 1875 8]
def bytes5122 : Bytes := ("    let r0000142d: u32 = r00000753.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5122 : bytes5122=statementBytes 5165 (op5122.map lower) ∧ bytes5122.length=65 := by core033_kernel_decide
def op5123 : List WordIR.Op := [.rotr 1927 16]
def bytes5123 : Bytes := ("    let r0000142e: u32 = r00000787.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5123 : bytes5123=statementBytes 5166 (op5123.map lower) ∧ bytes5123.length=65 := by core033_kernel_decide
def op5124 : List WordIR.Op := [.badd 5165 5166]
def bytes5124 : Bytes := ("    let r0000142f: u32 = r0000142d.wrapping_add(r0000142e);\n" : String).toByteArray.data.toList
theorem checked5124 : bytes5124=statementBytes 5167 (op5124.map lower) ∧ bytes5124.length=60 := by core033_kernel_decide
def op5125 : List WordIR.Op := [.rotr 1979 24]
def bytes5125 : Bytes := ("    let r00001430: u32 = r000007bb.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5125 : bytes5125=statementBytes 5168 (op5125.map lower) ∧ bytes5125.length=65 := by core033_kernel_decide
def op5126 : List WordIR.Op := [.badd 5167 5168]
def bytes5126 : Bytes := ("    let r00001431: u32 = r0000142f.wrapping_add(r00001430);\n" : String).toByteArray.data.toList
theorem checked5126 : bytes5126=statementBytes 5169 (op5126.map lower) ∧ bytes5126.length=60 := by core033_kernel_decide
def op5127 : List WordIR.Op := [.badd 5169 2031]
def bytes5127 : Bytes := ("    let r00001432: u32 = r00001431.wrapping_add(r000007ef);\n" : String).toByteArray.data.toList
theorem checked5127 : bytes5127=statementBytes 5170 (op5127.map lower) ∧ bytes5127.length=60 := by core033_kernel_decide
def op5128 : List WordIR.Op := [.rotr 2083 8]
def bytes5128 : Bytes := ("    let r00001433: u32 = r00000823.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5128 : bytes5128=statementBytes 5171 (op5128.map lower) ∧ bytes5128.length=65 := by core033_kernel_decide
def op5129 : List WordIR.Op := [.rotr 2135 16]
def bytes5129 : Bytes := ("    let r00001434: u32 = r00000857.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5129 : bytes5129=statementBytes 5172 (op5129.map lower) ∧ bytes5129.length=65 := by core033_kernel_decide
def op5130 : List WordIR.Op := [.badd 5171 5172]
def bytes5130 : Bytes := ("    let r00001435: u32 = r00001433.wrapping_add(r00001434);\n" : String).toByteArray.data.toList
theorem checked5130 : bytes5130=statementBytes 5173 (op5130.map lower) ∧ bytes5130.length=60 := by core033_kernel_decide
def op5131 : List WordIR.Op := [.rotr 2187 24]
def bytes5131 : Bytes := ("    let r00001436: u32 = r0000088b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5131 : bytes5131=statementBytes 5174 (op5131.map lower) ∧ bytes5131.length=65 := by core033_kernel_decide
def op5132 : List WordIR.Op := [.badd 5173 5174]
def bytes5132 : Bytes := ("    let r00001437: u32 = r00001435.wrapping_add(r00001436);\n" : String).toByteArray.data.toList
theorem checked5132 : bytes5132=statementBytes 5175 (op5132.map lower) ∧ bytes5132.length=60 := by core033_kernel_decide
def op5133 : List WordIR.Op := [.badd 5175 2239]
def bytes5133 : Bytes := ("    let r00001438: u32 = r00001437.wrapping_add(r000008bf);\n" : String).toByteArray.data.toList
theorem checked5133 : bytes5133=statementBytes 5176 (op5133.map lower) ∧ bytes5133.length=60 := by core033_kernel_decide
def op5134 : List WordIR.Op := [.rotr 2291 8]
def bytes5134 : Bytes := ("    let r00001439: u32 = r000008f3.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5134 : bytes5134=statementBytes 5177 (op5134.map lower) ∧ bytes5134.length=65 := by core033_kernel_decide
def op5135 : List WordIR.Op := [.rotr 2343 16]
def bytes5135 : Bytes := ("    let r0000143a: u32 = r00000927.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5135 : bytes5135=statementBytes 5178 (op5135.map lower) ∧ bytes5135.length=65 := by core033_kernel_decide
def op5136 : List WordIR.Op := [.badd 5177 5178]
def bytes5136 : Bytes := ("    let r0000143b: u32 = r00001439.wrapping_add(r0000143a);\n" : String).toByteArray.data.toList
theorem checked5136 : bytes5136=statementBytes 5179 (op5136.map lower) ∧ bytes5136.length=60 := by core033_kernel_decide
def op5137 : List WordIR.Op := [.rotr 2395 24]
def bytes5137 : Bytes := ("    let r0000143c: u32 = r0000095b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5137 : bytes5137=statementBytes 5180 (op5137.map lower) ∧ bytes5137.length=65 := by core033_kernel_decide
def op5138 : List WordIR.Op := [.badd 5179 5180]
def bytes5138 : Bytes := ("    let r0000143d: u32 = r0000143b.wrapping_add(r0000143c);\n" : String).toByteArray.data.toList
theorem checked5138 : bytes5138=statementBytes 5181 (op5138.map lower) ∧ bytes5138.length=60 := by core033_kernel_decide
def op5139 : List WordIR.Op := [.badd 5181 2447]
def bytes5139 : Bytes := ("    let r0000143e: u32 = r0000143d.wrapping_add(r0000098f);\n" : String).toByteArray.data.toList
theorem checked5139 : bytes5139=statementBytes 5182 (op5139.map lower) ∧ bytes5139.length=60 := by core033_kernel_decide
def op5140 : List WordIR.Op := [.rotr 2499 8]
def bytes5140 : Bytes := ("    let r0000143f: u32 = r000009c3.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5140 : bytes5140=statementBytes 5183 (op5140.map lower) ∧ bytes5140.length=65 := by core033_kernel_decide
def op5141 : List WordIR.Op := [.rotr 2551 16]
def bytes5141 : Bytes := ("    let r00001440: u32 = r000009f7.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5141 : bytes5141=statementBytes 5184 (op5141.map lower) ∧ bytes5141.length=65 := by core033_kernel_decide
def op5142 : List WordIR.Op := [.badd 5183 5184]
def bytes5142 : Bytes := ("    let r00001441: u32 = r0000143f.wrapping_add(r00001440);\n" : String).toByteArray.data.toList
theorem checked5142 : bytes5142=statementBytes 5185 (op5142.map lower) ∧ bytes5142.length=60 := by core033_kernel_decide
def op5143 : List WordIR.Op := [.rotr 2603 24]
def bytes5143 : Bytes := ("    let r00001442: u32 = r00000a2b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5143 : bytes5143=statementBytes 5186 (op5143.map lower) ∧ bytes5143.length=65 := by core033_kernel_decide
def op5144 : List WordIR.Op := [.badd 5185 5186]
def bytes5144 : Bytes := ("    let r00001443: u32 = r00001441.wrapping_add(r00001442);\n" : String).toByteArray.data.toList
theorem checked5144 : bytes5144=statementBytes 5187 (op5144.map lower) ∧ bytes5144.length=60 := by core033_kernel_decide
def op5145 : List WordIR.Op := [.badd 5187 2655]
def bytes5145 : Bytes := ("    let r00001444: u32 = r00001443.wrapping_add(r00000a5f);\n" : String).toByteArray.data.toList
theorem checked5145 : bytes5145=statementBytes 5188 (op5145.map lower) ∧ bytes5145.length=60 := by core033_kernel_decide
def op5146 : List WordIR.Op := [.rotr 2707 8]
def bytes5146 : Bytes := ("    let r00001445: u32 = r00000a93.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5146 : bytes5146=statementBytes 5189 (op5146.map lower) ∧ bytes5146.length=65 := by core033_kernel_decide
def op5147 : List WordIR.Op := [.rotr 2759 16]
def bytes5147 : Bytes := ("    let r00001446: u32 = r00000ac7.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5147 : bytes5147=statementBytes 5190 (op5147.map lower) ∧ bytes5147.length=65 := by core033_kernel_decide
def op5148 : List WordIR.Op := [.badd 5189 5190]
def bytes5148 : Bytes := ("    let r00001447: u32 = r00001445.wrapping_add(r00001446);\n" : String).toByteArray.data.toList
theorem checked5148 : bytes5148=statementBytes 5191 (op5148.map lower) ∧ bytes5148.length=60 := by core033_kernel_decide
def op5149 : List WordIR.Op := [.rotr 2811 24]
def bytes5149 : Bytes := ("    let r00001448: u32 = r00000afb.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5149 : bytes5149=statementBytes 5192 (op5149.map lower) ∧ bytes5149.length=65 := by core033_kernel_decide
def op5150 : List WordIR.Op := [.badd 5191 5192]
def bytes5150 : Bytes := ("    let r00001449: u32 = r00001447.wrapping_add(r00001448);\n" : String).toByteArray.data.toList
theorem checked5150 : bytes5150=statementBytes 5193 (op5150.map lower) ∧ bytes5150.length=60 := by core033_kernel_decide
def op5151 : List WordIR.Op := [.badd 5193 2863]
def bytes5151 : Bytes := ("    let r0000144a: u32 = r00001449.wrapping_add(r00000b2f);\n" : String).toByteArray.data.toList
theorem checked5151 : bytes5151=statementBytes 5194 (op5151.map lower) ∧ bytes5151.length=60 := by core033_kernel_decide
def op5152 : List WordIR.Op := [.rotr 2915 8]
def bytes5152 : Bytes := ("    let r0000144b: u32 = r00000b63.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5152 : bytes5152=statementBytes 5195 (op5152.map lower) ∧ bytes5152.length=65 := by core033_kernel_decide
def op5153 : List WordIR.Op := [.rotr 2967 16]
def bytes5153 : Bytes := ("    let r0000144c: u32 = r00000b97.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5153 : bytes5153=statementBytes 5196 (op5153.map lower) ∧ bytes5153.length=65 := by core033_kernel_decide
def op5154 : List WordIR.Op := [.badd 5195 5196]
def bytes5154 : Bytes := ("    let r0000144d: u32 = r0000144b.wrapping_add(r0000144c);\n" : String).toByteArray.data.toList
theorem checked5154 : bytes5154=statementBytes 5197 (op5154.map lower) ∧ bytes5154.length=60 := by core033_kernel_decide
def op5155 : List WordIR.Op := [.rotr 3019 24]
def bytes5155 : Bytes := ("    let r0000144e: u32 = r00000bcb.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5155 : bytes5155=statementBytes 5198 (op5155.map lower) ∧ bytes5155.length=65 := by core033_kernel_decide
def op5156 : List WordIR.Op := [.badd 5197 5198]
def bytes5156 : Bytes := ("    let r0000144f: u32 = r0000144d.wrapping_add(r0000144e);\n" : String).toByteArray.data.toList
theorem checked5156 : bytes5156=statementBytes 5199 (op5156.map lower) ∧ bytes5156.length=60 := by core033_kernel_decide
def op5157 : List WordIR.Op := [.badd 5199 3071]
def bytes5157 : Bytes := ("    let r00001450: u32 = r0000144f.wrapping_add(r00000bff);\n" : String).toByteArray.data.toList
theorem checked5157 : bytes5157=statementBytes 5200 (op5157.map lower) ∧ bytes5157.length=60 := by core033_kernel_decide
def op5158 : List WordIR.Op := [.rotr 3123 8]
def bytes5158 : Bytes := ("    let r00001451: u32 = r00000c33.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5158 : bytes5158=statementBytes 5201 (op5158.map lower) ∧ bytes5158.length=65 := by core033_kernel_decide
def op5159 : List WordIR.Op := [.rotr 3175 16]
def bytes5159 : Bytes := ("    let r00001452: u32 = r00000c67.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5159 : bytes5159=statementBytes 5202 (op5159.map lower) ∧ bytes5159.length=65 := by core033_kernel_decide
def op5160 : List WordIR.Op := [.badd 5201 5202]
def bytes5160 : Bytes := ("    let r00001453: u32 = r00001451.wrapping_add(r00001452);\n" : String).toByteArray.data.toList
theorem checked5160 : bytes5160=statementBytes 5203 (op5160.map lower) ∧ bytes5160.length=60 := by core033_kernel_decide
def op5161 : List WordIR.Op := [.rotr 3227 24]
def bytes5161 : Bytes := ("    let r00001454: u32 = r00000c9b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5161 : bytes5161=statementBytes 5204 (op5161.map lower) ∧ bytes5161.length=65 := by core033_kernel_decide
def op5162 : List WordIR.Op := [.badd 5203 5204]
def bytes5162 : Bytes := ("    let r00001455: u32 = r00001453.wrapping_add(r00001454);\n" : String).toByteArray.data.toList
theorem checked5162 : bytes5162=statementBytes 5205 (op5162.map lower) ∧ bytes5162.length=60 := by core033_kernel_decide
def op5163 : List WordIR.Op := [.badd 5205 3279]
def bytes5163 : Bytes := ("    let r00001456: u32 = r00001455.wrapping_add(r00000ccf);\n" : String).toByteArray.data.toList
theorem checked5163 : bytes5163=statementBytes 5206 (op5163.map lower) ∧ bytes5163.length=60 := by core033_kernel_decide
def op5164 : List WordIR.Op := [.rotr 3331 8]
def bytes5164 : Bytes := ("    let r00001457: u32 = r00000d03.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5164 : bytes5164=statementBytes 5207 (op5164.map lower) ∧ bytes5164.length=65 := by core033_kernel_decide
def op5165 : List WordIR.Op := [.rotr 3383 16]
def bytes5165 : Bytes := ("    let r00001458: u32 = r00000d37.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5165 : bytes5165=statementBytes 5208 (op5165.map lower) ∧ bytes5165.length=65 := by core033_kernel_decide
def op5166 : List WordIR.Op := [.badd 5207 5208]
def bytes5166 : Bytes := ("    let r00001459: u32 = r00001457.wrapping_add(r00001458);\n" : String).toByteArray.data.toList
theorem checked5166 : bytes5166=statementBytes 5209 (op5166.map lower) ∧ bytes5166.length=60 := by core033_kernel_decide
def op5167 : List WordIR.Op := [.rotr 3435 24]
def bytes5167 : Bytes := ("    let r0000145a: u32 = r00000d6b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5167 : bytes5167=statementBytes 5210 (op5167.map lower) ∧ bytes5167.length=65 := by core033_kernel_decide
def op5168 : List WordIR.Op := [.badd 5209 5210]
def bytes5168 : Bytes := ("    let r0000145b: u32 = r00001459.wrapping_add(r0000145a);\n" : String).toByteArray.data.toList
theorem checked5168 : bytes5168=statementBytes 5211 (op5168.map lower) ∧ bytes5168.length=60 := by core033_kernel_decide
def op5169 : List WordIR.Op := [.badd 5211 3487]
def bytes5169 : Bytes := ("    let r0000145c: u32 = r0000145b.wrapping_add(r00000d9f);\n" : String).toByteArray.data.toList
theorem checked5169 : bytes5169=statementBytes 5212 (op5169.map lower) ∧ bytes5169.length=60 := by core033_kernel_decide
def op5170 : List WordIR.Op := [.rotr 3539 8]
def bytes5170 : Bytes := ("    let r0000145d: u32 = r00000dd3.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5170 : bytes5170=statementBytes 5213 (op5170.map lower) ∧ bytes5170.length=65 := by core033_kernel_decide
def op5171 : List WordIR.Op := [.rotr 3591 16]
def bytes5171 : Bytes := ("    let r0000145e: u32 = r00000e07.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5171 : bytes5171=statementBytes 5214 (op5171.map lower) ∧ bytes5171.length=65 := by core033_kernel_decide
def op5172 : List WordIR.Op := [.badd 5213 5214]
def bytes5172 : Bytes := ("    let r0000145f: u32 = r0000145d.wrapping_add(r0000145e);\n" : String).toByteArray.data.toList
theorem checked5172 : bytes5172=statementBytes 5215 (op5172.map lower) ∧ bytes5172.length=60 := by core033_kernel_decide
def op5173 : List WordIR.Op := [.rotr 3643 24]
def bytes5173 : Bytes := ("    let r00001460: u32 = r00000e3b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5173 : bytes5173=statementBytes 5216 (op5173.map lower) ∧ bytes5173.length=65 := by core033_kernel_decide
def op5174 : List WordIR.Op := [.badd 5215 5216]
def bytes5174 : Bytes := ("    let r00001461: u32 = r0000145f.wrapping_add(r00001460);\n" : String).toByteArray.data.toList
theorem checked5174 : bytes5174=statementBytes 5217 (op5174.map lower) ∧ bytes5174.length=60 := by core033_kernel_decide
def op5175 : List WordIR.Op := [.badd 5217 3695]
def bytes5175 : Bytes := ("    let r00001462: u32 = r00001461.wrapping_add(r00000e6f);\n" : String).toByteArray.data.toList
theorem checked5175 : bytes5175=statementBytes 5218 (op5175.map lower) ∧ bytes5175.length=60 := by core033_kernel_decide
def op5176 : List WordIR.Op := [.rotr 3747 8]
def bytes5176 : Bytes := ("    let r00001463: u32 = r00000ea3.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5176 : bytes5176=statementBytes 5219 (op5176.map lower) ∧ bytes5176.length=65 := by core033_kernel_decide
def op5177 : List WordIR.Op := [.rotr 3799 16]
def bytes5177 : Bytes := ("    let r00001464: u32 = r00000ed7.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5177 : bytes5177=statementBytes 5220 (op5177.map lower) ∧ bytes5177.length=65 := by core033_kernel_decide
def op5178 : List WordIR.Op := [.badd 5219 5220]
def bytes5178 : Bytes := ("    let r00001465: u32 = r00001463.wrapping_add(r00001464);\n" : String).toByteArray.data.toList
theorem checked5178 : bytes5178=statementBytes 5221 (op5178.map lower) ∧ bytes5178.length=60 := by core033_kernel_decide
def op5179 : List WordIR.Op := [.rotr 3851 24]
def bytes5179 : Bytes := ("    let r00001466: u32 = r00000f0b.rotate_right(0x00000018_u32);\n" : String).toByteArray.data.toList
theorem checked5179 : bytes5179=statementBytes 5222 (op5179.map lower) ∧ bytes5179.length=65 := by core033_kernel_decide
def op5180 : List WordIR.Op := [.badd 5221 5222]
def bytes5180 : Bytes := ("    let r00001467: u32 = r00001465.wrapping_add(r00001466);\n" : String).toByteArray.data.toList
theorem checked5180 : bytes5180=statementBytes 5223 (op5180.map lower) ∧ bytes5180.length=60 := by core033_kernel_decide
def op5181 : List WordIR.Op := [.badd 5223 3903]
def bytes5181 : Bytes := ("    let r00001468: u32 = r00001467.wrapping_add(r00000f3f);\n" : String).toByteArray.data.toList
theorem checked5181 : bytes5181=statementBytes 5224 (op5181.map lower) ∧ bytes5181.length=60 := by core033_kernel_decide
def op5182 : List WordIR.Op := [.rotr 3955 8]
def bytes5182 : Bytes := ("    let r00001469: u32 = r00000f73.rotate_right(0x00000008_u32);\n" : String).toByteArray.data.toList
theorem checked5182 : bytes5182=statementBytes 5225 (op5182.map lower) ∧ bytes5182.length=65 := by core033_kernel_decide
def op5183 : List WordIR.Op := [.rotr 4007 16]
def bytes5183 : Bytes := ("    let r0000146a: u32 = r00000fa7.rotate_right(0x00000010_u32);\n" : String).toByteArray.data.toList
theorem checked5183 : bytes5183=statementBytes 5226 (op5183.map lower) ∧ bytes5183.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5120,op5121,op5122,op5123,op5124,op5125,op5126,op5127,op5128,op5129,op5130,op5131,op5132,op5133,op5134,op5135,op5136,op5137,op5138,op5139,op5140,op5141,op5142,op5143,op5144,op5145,op5146,op5147,op5148,op5149,op5150,op5151,op5152,op5153,op5154,op5155,op5156,op5157,op5158,op5159,op5160,op5161,op5162,op5163,op5164,op5165,op5166,op5167,op5168,op5169,op5170,op5171,op5172,op5173,op5174,op5175,op5176,op5177,op5178,op5179,op5180,op5181,op5182,op5183]
def chunks : List Bytes := [bytes5120,bytes5121,bytes5122,bytes5123,bytes5124,bytes5125,bytes5126,bytes5127,bytes5128,bytes5129,bytes5130,bytes5131,bytes5132,bytes5133,bytes5134,bytes5135,bytes5136,bytes5137,bytes5138,bytes5139,bytes5140,bytes5141,bytes5142,bytes5143,bytes5144,bytes5145,bytes5146,bytes5147,bytes5148,bytes5149,bytes5150,bytes5151,bytes5152,bytes5153,bytes5154,bytes5155,bytes5156,bytes5157,bytes5158,bytes5159,bytes5160,bytes5161,bytes5162,bytes5163,bytes5164,bytes5165,bytes5166,bytes5167,bytes5168,bytes5169,bytes5170,bytes5171,bytes5172,bytes5173,bytes5174,bytes5175,bytes5176,bytes5177,bytes5178,bytes5179,bytes5180,bytes5181,bytes5182,bytes5183]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5163 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5120.1 (.cons _ _ _ _ _ checked5121.1 (.cons _ _ _ _ _ checked5122.1 (.cons _ _ _ _ _ checked5123.1 (.cons _ _ _ _ _ checked5124.1 (.cons _ _ _ _ _ checked5125.1 (.cons _ _ _ _ _ checked5126.1 (.cons _ _ _ _ _ checked5127.1 (.cons _ _ _ _ _ checked5128.1 (.cons _ _ _ _ _ checked5129.1 (.cons _ _ _ _ _ checked5130.1 (.cons _ _ _ _ _ checked5131.1 (.cons _ _ _ _ _ checked5132.1 (.cons _ _ _ _ _ checked5133.1 (.cons _ _ _ _ _ checked5134.1 (.cons _ _ _ _ _ checked5135.1 (.cons _ _ _ _ _ checked5136.1 (.cons _ _ _ _ _ checked5137.1 (.cons _ _ _ _ _ checked5138.1 (.cons _ _ _ _ _ checked5139.1 (.cons _ _ _ _ _ checked5140.1 (.cons _ _ _ _ _ checked5141.1 (.cons _ _ _ _ _ checked5142.1 (.cons _ _ _ _ _ checked5143.1 (.cons _ _ _ _ _ checked5144.1 (.cons _ _ _ _ _ checked5145.1 (.cons _ _ _ _ _ checked5146.1 (.cons _ _ _ _ _ checked5147.1 (.cons _ _ _ _ _ checked5148.1 (.cons _ _ _ _ _ checked5149.1 (.cons _ _ _ _ _ checked5150.1 (.cons _ _ _ _ _ checked5151.1 (.cons _ _ _ _ _ checked5152.1 (.cons _ _ _ _ _ checked5153.1 (.cons _ _ _ _ _ checked5154.1 (.cons _ _ _ _ _ checked5155.1 (.cons _ _ _ _ _ checked5156.1 (.cons _ _ _ _ _ checked5157.1 (.cons _ _ _ _ _ checked5158.1 (.cons _ _ _ _ _ checked5159.1 (.cons _ _ _ _ _ checked5160.1 (.cons _ _ _ _ _ checked5161.1 (.cons _ _ _ _ _ checked5162.1 (.cons _ _ _ _ _ checked5163.1 (.cons _ _ _ _ _ checked5164.1 (.cons _ _ _ _ _ checked5165.1 (.cons _ _ _ _ _ checked5166.1 (.cons _ _ _ _ _ checked5167.1 (.cons _ _ _ _ _ checked5168.1 (.cons _ _ _ _ _ checked5169.1 (.cons _ _ _ _ _ checked5170.1 (.cons _ _ _ _ _ checked5171.1 (.cons _ _ _ _ _ checked5172.1 (.cons _ _ _ _ _ checked5173.1 (.cons _ _ _ _ _ checked5174.1 (.cons _ _ _ _ _ checked5175.1 (.cons _ _ _ _ _ checked5176.1 (.cons _ _ _ _ _ checked5177.1 (.cons _ _ _ _ _ checked5178.1 (.cons _ _ _ _ _ checked5179.1 (.cons _ _ _ _ _ checked5180.1 (.cons _ _ _ _ _ checked5181.1 (.cons _ _ _ _ _ checked5182.1 (.cons _ _ _ _ _ checked5183.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5163 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3976 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5120.2,checked5121.2,checked5122.2,checked5123.2,checked5124.2,checked5125.2,checked5126.2,checked5127.2,checked5128.2,checked5129.2,checked5130.2,checked5131.2,checked5132.2,checked5133.2,checked5134.2,checked5135.2,checked5136.2,checked5137.2,checked5138.2,checked5139.2,checked5140.2,checked5141.2,checked5142.2,checked5143.2,checked5144.2,checked5145.2,checked5146.2,checked5147.2,checked5148.2,checked5149.2,checked5150.2,checked5151.2,checked5152.2,checked5153.2,checked5154.2,checked5155.2,checked5156.2,checked5157.2,checked5158.2,checked5159.2,checked5160.2,checked5161.2,checked5162.2,checked5163.2,checked5164.2,checked5165.2,checked5166.2,checked5167.2,checked5168.2,checked5169.2,checked5170.2,checked5171.2,checked5172.2,checked5173.2,checked5174.2,checked5175.2,checked5176.2,checked5177.2,checked5178.2,checked5179.2,checked5180.2,checked5181.2,checked5182.2,checked5183.2]
  decide
end ArtifactFrameHashControllerGroup80
