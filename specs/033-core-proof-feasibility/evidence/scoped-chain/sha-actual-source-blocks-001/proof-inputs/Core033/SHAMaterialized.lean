import Core033.SHA256Compiled
namespace Core033.SHAMaterialized
open WordIR WordStage
set_option Elab.async false
set_option maxHeartbeats 4000000
def ops0 : List WordIR.Op := []
attribute [irreducible] ops0
theorem len0 : ops0.length=0 := by unfold ops0;rfl
def b0 : Builder := ⟨24,ops0⟩
def w0 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
def ops1 : List WordIR.Op := [.badd 35 8,.badd 29 34,.bxor 32 33,.shr 9 3,.bxor 30 31,.rotr 9 18,.rotr 9 7,.badd 28 17,.bxor 26 27,.shr 22 10,.bxor 24 25,.rotr 22 19,.rotr 22 17]++ops0
attribute [irreducible] ops1
theorem len1 : ops1.length=13 := by simp only [ops1,List.length_append,List.length_cons,List.length_nil,len0]
def b1 : Builder := ⟨24,ops1⟩
def w1 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36]
theorem step1 : SHA256Schedule.extend b0 w0 = (w1,b1) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w0,b0,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len0]
  unfold w1 b1 ops1
  rfl
def ops2 : List WordIR.Op := [.badd 48 9,.badd 42 47,.bxor 45 46,.shr 10 3,.bxor 43 44,.rotr 10 18,.rotr 10 7,.badd 41 18,.bxor 39 40,.shr 23 10,.bxor 37 38,.rotr 23 19,.rotr 23 17]++ops1
attribute [irreducible] ops2
theorem len2 : ops2.length=26 := by simp only [ops2,List.length_append,List.length_cons,List.length_nil,len1]
def b2 : Builder := ⟨24,ops2⟩
def w2 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49]
theorem step2 : SHA256Schedule.extend b1 w1 = (w2,b2) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w1,b1,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len1]
  unfold w2 b2 ops2
  rfl
def ops3 : List WordIR.Op := [.badd 61 10,.badd 55 60,.bxor 58 59,.shr 11 3,.bxor 56 57,.rotr 11 18,.rotr 11 7,.badd 54 19,.bxor 52 53,.shr 36 10,.bxor 50 51,.rotr 36 19,.rotr 36 17]++ops2
attribute [irreducible] ops3
theorem len3 : ops3.length=39 := by simp only [ops3,List.length_append,List.length_cons,List.length_nil,len2]
def b3 : Builder := ⟨24,ops3⟩
def w3 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62]
theorem step3 : SHA256Schedule.extend b2 w2 = (w3,b3) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w2,b2,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len2]
  unfold w3 b3 ops3
  rfl
def ops4 : List WordIR.Op := [.badd 74 11,.badd 68 73,.bxor 71 72,.shr 12 3,.bxor 69 70,.rotr 12 18,.rotr 12 7,.badd 67 20,.bxor 65 66,.shr 49 10,.bxor 63 64,.rotr 49 19,.rotr 49 17]++ops3
attribute [irreducible] ops4
theorem len4 : ops4.length=52 := by simp only [ops4,List.length_append,List.length_cons,List.length_nil,len3]
def b4 : Builder := ⟨24,ops4⟩
def w4 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75]
theorem step4 : SHA256Schedule.extend b3 w3 = (w4,b4) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w3,b3,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len3]
  unfold w4 b4 ops4
  rfl
def ops5 : List WordIR.Op := [.badd 87 12,.badd 81 86,.bxor 84 85,.shr 13 3,.bxor 82 83,.rotr 13 18,.rotr 13 7,.badd 80 21,.bxor 78 79,.shr 62 10,.bxor 76 77,.rotr 62 19,.rotr 62 17]++ops4
attribute [irreducible] ops5
theorem len5 : ops5.length=65 := by simp only [ops5,List.length_append,List.length_cons,List.length_nil,len4]
def b5 : Builder := ⟨24,ops5⟩
def w5 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88]
theorem step5 : SHA256Schedule.extend b4 w4 = (w5,b5) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w4,b4,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len4]
  unfold w5 b5 ops5
  rfl
def ops6 : List WordIR.Op := [.badd 100 13,.badd 94 99,.bxor 97 98,.shr 14 3,.bxor 95 96,.rotr 14 18,.rotr 14 7,.badd 93 22,.bxor 91 92,.shr 75 10,.bxor 89 90,.rotr 75 19,.rotr 75 17]++ops5
attribute [irreducible] ops6
theorem len6 : ops6.length=78 := by simp only [ops6,List.length_append,List.length_cons,List.length_nil,len5]
def b6 : Builder := ⟨24,ops6⟩
def w6 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101]
theorem step6 : SHA256Schedule.extend b5 w5 = (w6,b6) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w5,b5,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len5]
  unfold w6 b6 ops6
  rfl
def ops7 : List WordIR.Op := [.badd 113 14,.badd 107 112,.bxor 110 111,.shr 15 3,.bxor 108 109,.rotr 15 18,.rotr 15 7,.badd 106 23,.bxor 104 105,.shr 88 10,.bxor 102 103,.rotr 88 19,.rotr 88 17]++ops6
attribute [irreducible] ops7
theorem len7 : ops7.length=91 := by simp only [ops7,List.length_append,List.length_cons,List.length_nil,len6]
def b7 : Builder := ⟨24,ops7⟩
def w7 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114]
theorem step7 : SHA256Schedule.extend b6 w6 = (w7,b7) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w6,b6,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len6]
  unfold w7 b7 ops7
  rfl
def ops8 : List WordIR.Op := [.badd 126 15,.badd 120 125,.bxor 123 124,.shr 16 3,.bxor 121 122,.rotr 16 18,.rotr 16 7,.badd 119 36,.bxor 117 118,.shr 101 10,.bxor 115 116,.rotr 101 19,.rotr 101 17]++ops7
attribute [irreducible] ops8
theorem len8 : ops8.length=104 := by simp only [ops8,List.length_append,List.length_cons,List.length_nil,len7]
def b8 : Builder := ⟨24,ops8⟩
def w8 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127]
theorem step8 : SHA256Schedule.extend b7 w7 = (w8,b8) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w7,b7,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len7]
  unfold w8 b8 ops8
  rfl
def ops9 : List WordIR.Op := [.badd 139 16,.badd 133 138,.bxor 136 137,.shr 17 3,.bxor 134 135,.rotr 17 18,.rotr 17 7,.badd 132 49,.bxor 130 131,.shr 114 10,.bxor 128 129,.rotr 114 19,.rotr 114 17]++ops8
attribute [irreducible] ops9
theorem len9 : ops9.length=117 := by simp only [ops9,List.length_append,List.length_cons,List.length_nil,len8]
def b9 : Builder := ⟨24,ops9⟩
def w9 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140]
theorem step9 : SHA256Schedule.extend b8 w8 = (w9,b9) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w8,b8,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len8]
  unfold w9 b9 ops9
  rfl
def ops10 : List WordIR.Op := [.badd 152 17,.badd 146 151,.bxor 149 150,.shr 18 3,.bxor 147 148,.rotr 18 18,.rotr 18 7,.badd 145 62,.bxor 143 144,.shr 127 10,.bxor 141 142,.rotr 127 19,.rotr 127 17]++ops9
attribute [irreducible] ops10
theorem len10 : ops10.length=130 := by simp only [ops10,List.length_append,List.length_cons,List.length_nil,len9]
def b10 : Builder := ⟨24,ops10⟩
def w10 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153]
theorem step10 : SHA256Schedule.extend b9 w9 = (w10,b10) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w9,b9,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len9]
  unfold w10 b10 ops10
  rfl
def ops11 : List WordIR.Op := [.badd 165 18,.badd 159 164,.bxor 162 163,.shr 19 3,.bxor 160 161,.rotr 19 18,.rotr 19 7,.badd 158 75,.bxor 156 157,.shr 140 10,.bxor 154 155,.rotr 140 19,.rotr 140 17]++ops10
attribute [irreducible] ops11
theorem len11 : ops11.length=143 := by simp only [ops11,List.length_append,List.length_cons,List.length_nil,len10]
def b11 : Builder := ⟨24,ops11⟩
def w11 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166]
theorem step11 : SHA256Schedule.extend b10 w10 = (w11,b11) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w10,b10,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len10]
  unfold w11 b11 ops11
  rfl
def ops12 : List WordIR.Op := [.badd 178 19,.badd 172 177,.bxor 175 176,.shr 20 3,.bxor 173 174,.rotr 20 18,.rotr 20 7,.badd 171 88,.bxor 169 170,.shr 153 10,.bxor 167 168,.rotr 153 19,.rotr 153 17]++ops11
attribute [irreducible] ops12
theorem len12 : ops12.length=156 := by simp only [ops12,List.length_append,List.length_cons,List.length_nil,len11]
def b12 : Builder := ⟨24,ops12⟩
def w12 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179]
theorem step12 : SHA256Schedule.extend b11 w11 = (w12,b12) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w11,b11,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len11]
  unfold w12 b12 ops12
  rfl
def ops13 : List WordIR.Op := [.badd 191 20,.badd 185 190,.bxor 188 189,.shr 21 3,.bxor 186 187,.rotr 21 18,.rotr 21 7,.badd 184 101,.bxor 182 183,.shr 166 10,.bxor 180 181,.rotr 166 19,.rotr 166 17]++ops12
attribute [irreducible] ops13
theorem len13 : ops13.length=169 := by simp only [ops13,List.length_append,List.length_cons,List.length_nil,len12]
def b13 : Builder := ⟨24,ops13⟩
def w13 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192]
theorem step13 : SHA256Schedule.extend b12 w12 = (w13,b13) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w12,b12,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len12]
  unfold w13 b13 ops13
  rfl
def ops14 : List WordIR.Op := [.badd 204 21,.badd 198 203,.bxor 201 202,.shr 22 3,.bxor 199 200,.rotr 22 18,.rotr 22 7,.badd 197 114,.bxor 195 196,.shr 179 10,.bxor 193 194,.rotr 179 19,.rotr 179 17]++ops13
attribute [irreducible] ops14
theorem len14 : ops14.length=182 := by simp only [ops14,List.length_append,List.length_cons,List.length_nil,len13]
def b14 : Builder := ⟨24,ops14⟩
def w14 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205]
theorem step14 : SHA256Schedule.extend b13 w13 = (w14,b14) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w13,b13,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len13]
  unfold w14 b14 ops14
  rfl
def ops15 : List WordIR.Op := [.badd 217 22,.badd 211 216,.bxor 214 215,.shr 23 3,.bxor 212 213,.rotr 23 18,.rotr 23 7,.badd 210 127,.bxor 208 209,.shr 192 10,.bxor 206 207,.rotr 192 19,.rotr 192 17]++ops14
attribute [irreducible] ops15
theorem len15 : ops15.length=195 := by simp only [ops15,List.length_append,List.length_cons,List.length_nil,len14]
def b15 : Builder := ⟨24,ops15⟩
def w15 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218]
theorem step15 : SHA256Schedule.extend b14 w14 = (w15,b15) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w14,b14,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len14]
  unfold w15 b15 ops15
  rfl
def ops16 : List WordIR.Op := [.badd 230 23,.badd 224 229,.bxor 227 228,.shr 36 3,.bxor 225 226,.rotr 36 18,.rotr 36 7,.badd 223 140,.bxor 221 222,.shr 205 10,.bxor 219 220,.rotr 205 19,.rotr 205 17]++ops15
attribute [irreducible] ops16
theorem len16 : ops16.length=208 := by simp only [ops16,List.length_append,List.length_cons,List.length_nil,len15]
def b16 : Builder := ⟨24,ops16⟩
def w16 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231]
theorem step16 : SHA256Schedule.extend b15 w15 = (w16,b16) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w15,b15,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len15]
  unfold w16 b16 ops16
  rfl
def ops17 : List WordIR.Op := [.badd 243 36,.badd 237 242,.bxor 240 241,.shr 49 3,.bxor 238 239,.rotr 49 18,.rotr 49 7,.badd 236 153,.bxor 234 235,.shr 218 10,.bxor 232 233,.rotr 218 19,.rotr 218 17]++ops16
attribute [irreducible] ops17
theorem len17 : ops17.length=221 := by simp only [ops17,List.length_append,List.length_cons,List.length_nil,len16]
def b17 : Builder := ⟨24,ops17⟩
def w17 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244]
theorem step17 : SHA256Schedule.extend b16 w16 = (w17,b17) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w16,b16,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len16]
  unfold w17 b17 ops17
  rfl
def ops18 : List WordIR.Op := [.badd 256 49,.badd 250 255,.bxor 253 254,.shr 62 3,.bxor 251 252,.rotr 62 18,.rotr 62 7,.badd 249 166,.bxor 247 248,.shr 231 10,.bxor 245 246,.rotr 231 19,.rotr 231 17]++ops17
attribute [irreducible] ops18
theorem len18 : ops18.length=234 := by simp only [ops18,List.length_append,List.length_cons,List.length_nil,len17]
def b18 : Builder := ⟨24,ops18⟩
def w18 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257]
theorem step18 : SHA256Schedule.extend b17 w17 = (w18,b18) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w17,b17,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len17]
  unfold w18 b18 ops18
  rfl
def ops19 : List WordIR.Op := [.badd 269 62,.badd 263 268,.bxor 266 267,.shr 75 3,.bxor 264 265,.rotr 75 18,.rotr 75 7,.badd 262 179,.bxor 260 261,.shr 244 10,.bxor 258 259,.rotr 244 19,.rotr 244 17]++ops18
attribute [irreducible] ops19
theorem len19 : ops19.length=247 := by simp only [ops19,List.length_append,List.length_cons,List.length_nil,len18]
def b19 : Builder := ⟨24,ops19⟩
def w19 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270]
theorem step19 : SHA256Schedule.extend b18 w18 = (w19,b19) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w18,b18,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len18]
  unfold w19 b19 ops19
  rfl
def ops20 : List WordIR.Op := [.badd 282 75,.badd 276 281,.bxor 279 280,.shr 88 3,.bxor 277 278,.rotr 88 18,.rotr 88 7,.badd 275 192,.bxor 273 274,.shr 257 10,.bxor 271 272,.rotr 257 19,.rotr 257 17]++ops19
attribute [irreducible] ops20
theorem len20 : ops20.length=260 := by simp only [ops20,List.length_append,List.length_cons,List.length_nil,len19]
def b20 : Builder := ⟨24,ops20⟩
def w20 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283]
theorem step20 : SHA256Schedule.extend b19 w19 = (w20,b20) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w19,b19,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len19]
  unfold w20 b20 ops20
  rfl
def ops21 : List WordIR.Op := [.badd 295 88,.badd 289 294,.bxor 292 293,.shr 101 3,.bxor 290 291,.rotr 101 18,.rotr 101 7,.badd 288 205,.bxor 286 287,.shr 270 10,.bxor 284 285,.rotr 270 19,.rotr 270 17]++ops20
attribute [irreducible] ops21
theorem len21 : ops21.length=273 := by simp only [ops21,List.length_append,List.length_cons,List.length_nil,len20]
def b21 : Builder := ⟨24,ops21⟩
def w21 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296]
theorem step21 : SHA256Schedule.extend b20 w20 = (w21,b21) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w20,b20,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len20]
  unfold w21 b21 ops21
  rfl
def ops22 : List WordIR.Op := [.badd 308 101,.badd 302 307,.bxor 305 306,.shr 114 3,.bxor 303 304,.rotr 114 18,.rotr 114 7,.badd 301 218,.bxor 299 300,.shr 283 10,.bxor 297 298,.rotr 283 19,.rotr 283 17]++ops21
attribute [irreducible] ops22
theorem len22 : ops22.length=286 := by simp only [ops22,List.length_append,List.length_cons,List.length_nil,len21]
def b22 : Builder := ⟨24,ops22⟩
def w22 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309]
theorem step22 : SHA256Schedule.extend b21 w21 = (w22,b22) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w21,b21,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len21]
  unfold w22 b22 ops22
  rfl
def ops23 : List WordIR.Op := [.badd 321 114,.badd 315 320,.bxor 318 319,.shr 127 3,.bxor 316 317,.rotr 127 18,.rotr 127 7,.badd 314 231,.bxor 312 313,.shr 296 10,.bxor 310 311,.rotr 296 19,.rotr 296 17]++ops22
attribute [irreducible] ops23
theorem len23 : ops23.length=299 := by simp only [ops23,List.length_append,List.length_cons,List.length_nil,len22]
def b23 : Builder := ⟨24,ops23⟩
def w23 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322]
theorem step23 : SHA256Schedule.extend b22 w22 = (w23,b23) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w22,b22,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len22]
  unfold w23 b23 ops23
  rfl
def ops24 : List WordIR.Op := [.badd 334 127,.badd 328 333,.bxor 331 332,.shr 140 3,.bxor 329 330,.rotr 140 18,.rotr 140 7,.badd 327 244,.bxor 325 326,.shr 309 10,.bxor 323 324,.rotr 309 19,.rotr 309 17]++ops23
attribute [irreducible] ops24
theorem len24 : ops24.length=312 := by simp only [ops24,List.length_append,List.length_cons,List.length_nil,len23]
def b24 : Builder := ⟨24,ops24⟩
def w24 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335]
theorem step24 : SHA256Schedule.extend b23 w23 = (w24,b24) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w23,b23,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len23]
  unfold w24 b24 ops24
  rfl
def ops25 : List WordIR.Op := [.badd 347 140,.badd 341 346,.bxor 344 345,.shr 153 3,.bxor 342 343,.rotr 153 18,.rotr 153 7,.badd 340 257,.bxor 338 339,.shr 322 10,.bxor 336 337,.rotr 322 19,.rotr 322 17]++ops24
attribute [irreducible] ops25
theorem len25 : ops25.length=325 := by simp only [ops25,List.length_append,List.length_cons,List.length_nil,len24]
def b25 : Builder := ⟨24,ops25⟩
def w25 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348]
theorem step25 : SHA256Schedule.extend b24 w24 = (w25,b25) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w24,b24,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len24]
  unfold w25 b25 ops25
  rfl
def ops26 : List WordIR.Op := [.badd 360 153,.badd 354 359,.bxor 357 358,.shr 166 3,.bxor 355 356,.rotr 166 18,.rotr 166 7,.badd 353 270,.bxor 351 352,.shr 335 10,.bxor 349 350,.rotr 335 19,.rotr 335 17]++ops25
attribute [irreducible] ops26
theorem len26 : ops26.length=338 := by simp only [ops26,List.length_append,List.length_cons,List.length_nil,len25]
def b26 : Builder := ⟨24,ops26⟩
def w26 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361]
theorem step26 : SHA256Schedule.extend b25 w25 = (w26,b26) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w25,b25,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len25]
  unfold w26 b26 ops26
  rfl
def ops27 : List WordIR.Op := [.badd 373 166,.badd 367 372,.bxor 370 371,.shr 179 3,.bxor 368 369,.rotr 179 18,.rotr 179 7,.badd 366 283,.bxor 364 365,.shr 348 10,.bxor 362 363,.rotr 348 19,.rotr 348 17]++ops26
attribute [irreducible] ops27
theorem len27 : ops27.length=351 := by simp only [ops27,List.length_append,List.length_cons,List.length_nil,len26]
def b27 : Builder := ⟨24,ops27⟩
def w27 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374]
theorem step27 : SHA256Schedule.extend b26 w26 = (w27,b27) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w26,b26,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len26]
  unfold w27 b27 ops27
  rfl
def ops28 : List WordIR.Op := [.badd 386 179,.badd 380 385,.bxor 383 384,.shr 192 3,.bxor 381 382,.rotr 192 18,.rotr 192 7,.badd 379 296,.bxor 377 378,.shr 361 10,.bxor 375 376,.rotr 361 19,.rotr 361 17]++ops27
attribute [irreducible] ops28
theorem len28 : ops28.length=364 := by simp only [ops28,List.length_append,List.length_cons,List.length_nil,len27]
def b28 : Builder := ⟨24,ops28⟩
def w28 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387]
theorem step28 : SHA256Schedule.extend b27 w27 = (w28,b28) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w27,b27,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len27]
  unfold w28 b28 ops28
  rfl
def ops29 : List WordIR.Op := [.badd 399 192,.badd 393 398,.bxor 396 397,.shr 205 3,.bxor 394 395,.rotr 205 18,.rotr 205 7,.badd 392 309,.bxor 390 391,.shr 374 10,.bxor 388 389,.rotr 374 19,.rotr 374 17]++ops28
attribute [irreducible] ops29
theorem len29 : ops29.length=377 := by simp only [ops29,List.length_append,List.length_cons,List.length_nil,len28]
def b29 : Builder := ⟨24,ops29⟩
def w29 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400]
theorem step29 : SHA256Schedule.extend b28 w28 = (w29,b29) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w28,b28,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len28]
  unfold w29 b29 ops29
  rfl
def ops30 : List WordIR.Op := [.badd 412 205,.badd 406 411,.bxor 409 410,.shr 218 3,.bxor 407 408,.rotr 218 18,.rotr 218 7,.badd 405 322,.bxor 403 404,.shr 387 10,.bxor 401 402,.rotr 387 19,.rotr 387 17]++ops29
attribute [irreducible] ops30
theorem len30 : ops30.length=390 := by simp only [ops30,List.length_append,List.length_cons,List.length_nil,len29]
def b30 : Builder := ⟨24,ops30⟩
def w30 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413]
theorem step30 : SHA256Schedule.extend b29 w29 = (w30,b30) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w29,b29,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len29]
  unfold w30 b30 ops30
  rfl
def ops31 : List WordIR.Op := [.badd 425 218,.badd 419 424,.bxor 422 423,.shr 231 3,.bxor 420 421,.rotr 231 18,.rotr 231 7,.badd 418 335,.bxor 416 417,.shr 400 10,.bxor 414 415,.rotr 400 19,.rotr 400 17]++ops30
attribute [irreducible] ops31
theorem len31 : ops31.length=403 := by simp only [ops31,List.length_append,List.length_cons,List.length_nil,len30]
def b31 : Builder := ⟨24,ops31⟩
def w31 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426]
theorem step31 : SHA256Schedule.extend b30 w30 = (w31,b31) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w30,b30,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len30]
  unfold w31 b31 ops31
  rfl
def ops32 : List WordIR.Op := [.badd 438 231,.badd 432 437,.bxor 435 436,.shr 244 3,.bxor 433 434,.rotr 244 18,.rotr 244 7,.badd 431 348,.bxor 429 430,.shr 413 10,.bxor 427 428,.rotr 413 19,.rotr 413 17]++ops31
attribute [irreducible] ops32
theorem len32 : ops32.length=416 := by simp only [ops32,List.length_append,List.length_cons,List.length_nil,len31]
def b32 : Builder := ⟨24,ops32⟩
def w32 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439]
theorem step32 : SHA256Schedule.extend b31 w31 = (w32,b32) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w31,b31,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len31]
  unfold w32 b32 ops32
  rfl
def ops33 : List WordIR.Op := [.badd 451 244,.badd 445 450,.bxor 448 449,.shr 257 3,.bxor 446 447,.rotr 257 18,.rotr 257 7,.badd 444 361,.bxor 442 443,.shr 426 10,.bxor 440 441,.rotr 426 19,.rotr 426 17]++ops32
attribute [irreducible] ops33
theorem len33 : ops33.length=429 := by simp only [ops33,List.length_append,List.length_cons,List.length_nil,len32]
def b33 : Builder := ⟨24,ops33⟩
def w33 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452]
theorem step33 : SHA256Schedule.extend b32 w32 = (w33,b33) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w32,b32,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len32]
  unfold w33 b33 ops33
  rfl
def ops34 : List WordIR.Op := [.badd 464 257,.badd 458 463,.bxor 461 462,.shr 270 3,.bxor 459 460,.rotr 270 18,.rotr 270 7,.badd 457 374,.bxor 455 456,.shr 439 10,.bxor 453 454,.rotr 439 19,.rotr 439 17]++ops33
attribute [irreducible] ops34
theorem len34 : ops34.length=442 := by simp only [ops34,List.length_append,List.length_cons,List.length_nil,len33]
def b34 : Builder := ⟨24,ops34⟩
def w34 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465]
theorem step34 : SHA256Schedule.extend b33 w33 = (w34,b34) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w33,b33,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len33]
  unfold w34 b34 ops34
  rfl
def ops35 : List WordIR.Op := [.badd 477 270,.badd 471 476,.bxor 474 475,.shr 283 3,.bxor 472 473,.rotr 283 18,.rotr 283 7,.badd 470 387,.bxor 468 469,.shr 452 10,.bxor 466 467,.rotr 452 19,.rotr 452 17]++ops34
attribute [irreducible] ops35
theorem len35 : ops35.length=455 := by simp only [ops35,List.length_append,List.length_cons,List.length_nil,len34]
def b35 : Builder := ⟨24,ops35⟩
def w35 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478]
theorem step35 : SHA256Schedule.extend b34 w34 = (w35,b35) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w34,b34,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len34]
  unfold w35 b35 ops35
  rfl
def ops36 : List WordIR.Op := [.badd 490 283,.badd 484 489,.bxor 487 488,.shr 296 3,.bxor 485 486,.rotr 296 18,.rotr 296 7,.badd 483 400,.bxor 481 482,.shr 465 10,.bxor 479 480,.rotr 465 19,.rotr 465 17]++ops35
attribute [irreducible] ops36
theorem len36 : ops36.length=468 := by simp only [ops36,List.length_append,List.length_cons,List.length_nil,len35]
def b36 : Builder := ⟨24,ops36⟩
def w36 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491]
theorem step36 : SHA256Schedule.extend b35 w35 = (w36,b36) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w35,b35,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len35]
  unfold w36 b36 ops36
  rfl
def ops37 : List WordIR.Op := [.badd 503 296,.badd 497 502,.bxor 500 501,.shr 309 3,.bxor 498 499,.rotr 309 18,.rotr 309 7,.badd 496 413,.bxor 494 495,.shr 478 10,.bxor 492 493,.rotr 478 19,.rotr 478 17]++ops36
attribute [irreducible] ops37
theorem len37 : ops37.length=481 := by simp only [ops37,List.length_append,List.length_cons,List.length_nil,len36]
def b37 : Builder := ⟨24,ops37⟩
def w37 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504]
theorem step37 : SHA256Schedule.extend b36 w36 = (w37,b37) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w36,b36,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len36]
  unfold w37 b37 ops37
  rfl
def ops38 : List WordIR.Op := [.badd 516 309,.badd 510 515,.bxor 513 514,.shr 322 3,.bxor 511 512,.rotr 322 18,.rotr 322 7,.badd 509 426,.bxor 507 508,.shr 491 10,.bxor 505 506,.rotr 491 19,.rotr 491 17]++ops37
attribute [irreducible] ops38
theorem len38 : ops38.length=494 := by simp only [ops38,List.length_append,List.length_cons,List.length_nil,len37]
def b38 : Builder := ⟨24,ops38⟩
def w38 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517]
theorem step38 : SHA256Schedule.extend b37 w37 = (w38,b38) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w37,b37,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len37]
  unfold w38 b38 ops38
  rfl
def ops39 : List WordIR.Op := [.badd 529 322,.badd 523 528,.bxor 526 527,.shr 335 3,.bxor 524 525,.rotr 335 18,.rotr 335 7,.badd 522 439,.bxor 520 521,.shr 504 10,.bxor 518 519,.rotr 504 19,.rotr 504 17]++ops38
attribute [irreducible] ops39
theorem len39 : ops39.length=507 := by simp only [ops39,List.length_append,List.length_cons,List.length_nil,len38]
def b39 : Builder := ⟨24,ops39⟩
def w39 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530]
theorem step39 : SHA256Schedule.extend b38 w38 = (w39,b39) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w38,b38,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len38]
  unfold w39 b39 ops39
  rfl
def ops40 : List WordIR.Op := [.badd 542 335,.badd 536 541,.bxor 539 540,.shr 348 3,.bxor 537 538,.rotr 348 18,.rotr 348 7,.badd 535 452,.bxor 533 534,.shr 517 10,.bxor 531 532,.rotr 517 19,.rotr 517 17]++ops39
attribute [irreducible] ops40
theorem len40 : ops40.length=520 := by simp only [ops40,List.length_append,List.length_cons,List.length_nil,len39]
def b40 : Builder := ⟨24,ops40⟩
def w40 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543]
theorem step40 : SHA256Schedule.extend b39 w39 = (w40,b40) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w39,b39,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len39]
  unfold w40 b40 ops40
  rfl
def ops41 : List WordIR.Op := [.badd 555 348,.badd 549 554,.bxor 552 553,.shr 361 3,.bxor 550 551,.rotr 361 18,.rotr 361 7,.badd 548 465,.bxor 546 547,.shr 530 10,.bxor 544 545,.rotr 530 19,.rotr 530 17]++ops40
attribute [irreducible] ops41
theorem len41 : ops41.length=533 := by simp only [ops41,List.length_append,List.length_cons,List.length_nil,len40]
def b41 : Builder := ⟨24,ops41⟩
def w41 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556]
theorem step41 : SHA256Schedule.extend b40 w40 = (w41,b41) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w40,b40,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len40]
  unfold w41 b41 ops41
  rfl
def ops42 : List WordIR.Op := [.badd 568 361,.badd 562 567,.bxor 565 566,.shr 374 3,.bxor 563 564,.rotr 374 18,.rotr 374 7,.badd 561 478,.bxor 559 560,.shr 543 10,.bxor 557 558,.rotr 543 19,.rotr 543 17]++ops41
attribute [irreducible] ops42
theorem len42 : ops42.length=546 := by simp only [ops42,List.length_append,List.length_cons,List.length_nil,len41]
def b42 : Builder := ⟨24,ops42⟩
def w42 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569]
theorem step42 : SHA256Schedule.extend b41 w41 = (w42,b42) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w41,b41,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len41]
  unfold w42 b42 ops42
  rfl
def ops43 : List WordIR.Op := [.badd 581 374,.badd 575 580,.bxor 578 579,.shr 387 3,.bxor 576 577,.rotr 387 18,.rotr 387 7,.badd 574 491,.bxor 572 573,.shr 556 10,.bxor 570 571,.rotr 556 19,.rotr 556 17]++ops42
attribute [irreducible] ops43
theorem len43 : ops43.length=559 := by simp only [ops43,List.length_append,List.length_cons,List.length_nil,len42]
def b43 : Builder := ⟨24,ops43⟩
def w43 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569,582]
theorem step43 : SHA256Schedule.extend b42 w42 = (w43,b43) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w42,b42,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len42]
  unfold w43 b43 ops43
  rfl
def ops44 : List WordIR.Op := [.badd 594 387,.badd 588 593,.bxor 591 592,.shr 400 3,.bxor 589 590,.rotr 400 18,.rotr 400 7,.badd 587 504,.bxor 585 586,.shr 569 10,.bxor 583 584,.rotr 569 19,.rotr 569 17]++ops43
attribute [irreducible] ops44
theorem len44 : ops44.length=572 := by simp only [ops44,List.length_append,List.length_cons,List.length_nil,len43]
def b44 : Builder := ⟨24,ops44⟩
def w44 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569,582,595]
theorem step44 : SHA256Schedule.extend b43 w43 = (w44,b44) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w43,b43,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len43]
  unfold w44 b44 ops44
  rfl
def ops45 : List WordIR.Op := [.badd 607 400,.badd 601 606,.bxor 604 605,.shr 413 3,.bxor 602 603,.rotr 413 18,.rotr 413 7,.badd 600 517,.bxor 598 599,.shr 582 10,.bxor 596 597,.rotr 582 19,.rotr 582 17]++ops44
attribute [irreducible] ops45
theorem len45 : ops45.length=585 := by simp only [ops45,List.length_append,List.length_cons,List.length_nil,len44]
def b45 : Builder := ⟨24,ops45⟩
def w45 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569,582,595,608]
theorem step45 : SHA256Schedule.extend b44 w44 = (w45,b45) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w44,b44,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len44]
  unfold w45 b45 ops45
  rfl
def ops46 : List WordIR.Op := [.badd 620 413,.badd 614 619,.bxor 617 618,.shr 426 3,.bxor 615 616,.rotr 426 18,.rotr 426 7,.badd 613 530,.bxor 611 612,.shr 595 10,.bxor 609 610,.rotr 595 19,.rotr 595 17]++ops45
attribute [irreducible] ops46
theorem len46 : ops46.length=598 := by simp only [ops46,List.length_append,List.length_cons,List.length_nil,len45]
def b46 : Builder := ⟨24,ops46⟩
def w46 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569,582,595,608,621]
theorem step46 : SHA256Schedule.extend b45 w45 = (w46,b46) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w45,b45,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len45]
  unfold w46 b46 ops46
  rfl
def ops47 : List WordIR.Op := [.badd 633 426,.badd 627 632,.bxor 630 631,.shr 439 3,.bxor 628 629,.rotr 439 18,.rotr 439 7,.badd 626 543,.bxor 624 625,.shr 608 10,.bxor 622 623,.rotr 608 19,.rotr 608 17]++ops46
attribute [irreducible] ops47
theorem len47 : ops47.length=611 := by simp only [ops47,List.length_append,List.length_cons,List.length_nil,len46]
def b47 : Builder := ⟨24,ops47⟩
def w47 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569,582,595,608,621,634]
theorem step47 : SHA256Schedule.extend b46 w46 = (w47,b47) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w46,b46,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len46]
  unfold w47 b47 ops47
  rfl
def ops48 : List WordIR.Op := [.badd 646 439,.badd 640 645,.bxor 643 644,.shr 452 3,.bxor 641 642,.rotr 452 18,.rotr 452 7,.badd 639 556,.bxor 637 638,.shr 621 10,.bxor 635 636,.rotr 621 19,.rotr 621 17]++ops47
attribute [irreducible] ops48
theorem len48 : ops48.length=624 := by simp only [ops48,List.length_append,List.length_cons,List.length_nil,len47]
def b48 : Builder := ⟨24,ops48⟩
def w48 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36,49,62,75,88,101,114,127,140,153,166,179,192,205,218,231,244,257,270,283,296,309,322,335,348,361,374,387,400,413,426,439,452,465,478,491,504,517,530,543,556,569,582,595,608,621,634,647]
theorem step48 : SHA256Schedule.extend b47 w47 = (w48,b48) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w47,b47,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len47]
  unfold w48 b48 ops48
  rfl
def s48 : SHA256Stage.State := ⟨0,1,2,3,4,5,6,7⟩
def ops49 : List WordIR.Op := [.badd 3 661,.badd 661 672,.badd 666 671,.bxor 669 670,.band 1 2,.bxor 667 668,.band 0 2,.band 0 1,.bxor 664 665,.rotr 0 22,.bxor 662 663,.rotr 0 13,.rotr 0 2,.badd 660 8,.badd 658 659,.literal (BitVec.ofNat 32 1116352408),.badd 653 657,.bxor 654 656,.band 655 6,.bnot 4,.band 4 5,.badd 7 652,.bxor 650 651,.rotr 4 25,.bxor 648 649,.rotr 4 11,.rotr 4 6]++ops48
attribute [irreducible] ops49
theorem len49 : ops49.length=651 := by simp only [ops49,List.length_append,List.length_cons,List.length_nil,len48]
def b49 : Builder := ⟨24,ops49⟩
def s49 : SHA256Stage.State := ⟨673,0,1,2,674,4,5,6⟩
theorem step49 : SHA256Stage.round b48 s48 (BitVec.ofNat 32 1116352408) 8 = (s49,b49) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s48,b48,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len48]
  unfold s49 b49 ops49
  rfl
def ops50 : List WordIR.Op := [.badd 2 688,.badd 688 699,.badd 693 698,.bxor 696 697,.band 0 1,.bxor 694 695,.band 673 1,.band 673 0,.bxor 691 692,.rotr 673 22,.bxor 689 690,.rotr 673 13,.rotr 673 2,.badd 687 9,.badd 685 686,.literal (BitVec.ofNat 32 1899447441),.badd 680 684,.bxor 681 683,.band 682 5,.bnot 674,.band 674 4,.badd 6 679,.bxor 677 678,.rotr 674 25,.bxor 675 676,.rotr 674 11,.rotr 674 6]++ops49
attribute [irreducible] ops50
theorem len50 : ops50.length=678 := by simp only [ops50,List.length_append,List.length_cons,List.length_nil,len49]
def b50 : Builder := ⟨24,ops50⟩
def s50 : SHA256Stage.State := ⟨700,673,0,1,701,674,4,5⟩
theorem step50 : SHA256Stage.round b49 s49 (BitVec.ofNat 32 1899447441) 9 = (s50,b50) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s49,b49,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len49]
  unfold s50 b50 ops50
  rfl
def ops51 : List WordIR.Op := [.badd 1 715,.badd 715 726,.badd 720 725,.bxor 723 724,.band 673 0,.bxor 721 722,.band 700 0,.band 700 673,.bxor 718 719,.rotr 700 22,.bxor 716 717,.rotr 700 13,.rotr 700 2,.badd 714 10,.badd 712 713,.literal (BitVec.ofNat 32 3049323471),.badd 707 711,.bxor 708 710,.band 709 4,.bnot 701,.band 701 674,.badd 5 706,.bxor 704 705,.rotr 701 25,.bxor 702 703,.rotr 701 11,.rotr 701 6]++ops50
attribute [irreducible] ops51
theorem len51 : ops51.length=705 := by simp only [ops51,List.length_append,List.length_cons,List.length_nil,len50]
def b51 : Builder := ⟨24,ops51⟩
def s51 : SHA256Stage.State := ⟨727,700,673,0,728,701,674,4⟩
theorem step51 : SHA256Stage.round b50 s50 (BitVec.ofNat 32 3049323471) 10 = (s51,b51) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s50,b50,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len50]
  unfold s51 b51 ops51
  rfl
def ops52 : List WordIR.Op := [.badd 0 742,.badd 742 753,.badd 747 752,.bxor 750 751,.band 700 673,.bxor 748 749,.band 727 673,.band 727 700,.bxor 745 746,.rotr 727 22,.bxor 743 744,.rotr 727 13,.rotr 727 2,.badd 741 11,.badd 739 740,.literal (BitVec.ofNat 32 3921009573),.badd 734 738,.bxor 735 737,.band 736 674,.bnot 728,.band 728 701,.badd 4 733,.bxor 731 732,.rotr 728 25,.bxor 729 730,.rotr 728 11,.rotr 728 6]++ops51
attribute [irreducible] ops52
theorem len52 : ops52.length=732 := by simp only [ops52,List.length_append,List.length_cons,List.length_nil,len51]
def b52 : Builder := ⟨24,ops52⟩
def s52 : SHA256Stage.State := ⟨754,727,700,673,755,728,701,674⟩
theorem step52 : SHA256Stage.round b51 s51 (BitVec.ofNat 32 3921009573) 11 = (s52,b52) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s51,b51,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len51]
  unfold s52 b52 ops52
  rfl
def ops53 : List WordIR.Op := [.badd 673 769,.badd 769 780,.badd 774 779,.bxor 777 778,.band 727 700,.bxor 775 776,.band 754 700,.band 754 727,.bxor 772 773,.rotr 754 22,.bxor 770 771,.rotr 754 13,.rotr 754 2,.badd 768 12,.badd 766 767,.literal (BitVec.ofNat 32 961987163),.badd 761 765,.bxor 762 764,.band 763 701,.bnot 755,.band 755 728,.badd 674 760,.bxor 758 759,.rotr 755 25,.bxor 756 757,.rotr 755 11,.rotr 755 6]++ops52
attribute [irreducible] ops53
theorem len53 : ops53.length=759 := by simp only [ops53,List.length_append,List.length_cons,List.length_nil,len52]
def b53 : Builder := ⟨24,ops53⟩
def s53 : SHA256Stage.State := ⟨781,754,727,700,782,755,728,701⟩
theorem step53 : SHA256Stage.round b52 s52 (BitVec.ofNat 32 961987163) 12 = (s53,b53) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s52,b52,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len52]
  unfold s53 b53 ops53
  rfl
def ops54 : List WordIR.Op := [.badd 700 796,.badd 796 807,.badd 801 806,.bxor 804 805,.band 754 727,.bxor 802 803,.band 781 727,.band 781 754,.bxor 799 800,.rotr 781 22,.bxor 797 798,.rotr 781 13,.rotr 781 2,.badd 795 13,.badd 793 794,.literal (BitVec.ofNat 32 1508970993),.badd 788 792,.bxor 789 791,.band 790 728,.bnot 782,.band 782 755,.badd 701 787,.bxor 785 786,.rotr 782 25,.bxor 783 784,.rotr 782 11,.rotr 782 6]++ops53
attribute [irreducible] ops54
theorem len54 : ops54.length=786 := by simp only [ops54,List.length_append,List.length_cons,List.length_nil,len53]
def b54 : Builder := ⟨24,ops54⟩
def s54 : SHA256Stage.State := ⟨808,781,754,727,809,782,755,728⟩
theorem step54 : SHA256Stage.round b53 s53 (BitVec.ofNat 32 1508970993) 13 = (s54,b54) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s53,b53,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len53]
  unfold s54 b54 ops54
  rfl
def ops55 : List WordIR.Op := [.badd 727 823,.badd 823 834,.badd 828 833,.bxor 831 832,.band 781 754,.bxor 829 830,.band 808 754,.band 808 781,.bxor 826 827,.rotr 808 22,.bxor 824 825,.rotr 808 13,.rotr 808 2,.badd 822 14,.badd 820 821,.literal (BitVec.ofNat 32 2453635748),.badd 815 819,.bxor 816 818,.band 817 755,.bnot 809,.band 809 782,.badd 728 814,.bxor 812 813,.rotr 809 25,.bxor 810 811,.rotr 809 11,.rotr 809 6]++ops54
attribute [irreducible] ops55
theorem len55 : ops55.length=813 := by simp only [ops55,List.length_append,List.length_cons,List.length_nil,len54]
def b55 : Builder := ⟨24,ops55⟩
def s55 : SHA256Stage.State := ⟨835,808,781,754,836,809,782,755⟩
theorem step55 : SHA256Stage.round b54 s54 (BitVec.ofNat 32 2453635748) 14 = (s55,b55) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s54,b54,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len54]
  unfold s55 b55 ops55
  rfl
def ops56 : List WordIR.Op := [.badd 754 850,.badd 850 861,.badd 855 860,.bxor 858 859,.band 808 781,.bxor 856 857,.band 835 781,.band 835 808,.bxor 853 854,.rotr 835 22,.bxor 851 852,.rotr 835 13,.rotr 835 2,.badd 849 15,.badd 847 848,.literal (BitVec.ofNat 32 2870763221),.badd 842 846,.bxor 843 845,.band 844 782,.bnot 836,.band 836 809,.badd 755 841,.bxor 839 840,.rotr 836 25,.bxor 837 838,.rotr 836 11,.rotr 836 6]++ops55
attribute [irreducible] ops56
theorem len56 : ops56.length=840 := by simp only [ops56,List.length_append,List.length_cons,List.length_nil,len55]
def b56 : Builder := ⟨24,ops56⟩
def s56 : SHA256Stage.State := ⟨862,835,808,781,863,836,809,782⟩
theorem step56 : SHA256Stage.round b55 s55 (BitVec.ofNat 32 2870763221) 15 = (s56,b56) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s55,b55,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len55]
  unfold s56 b56 ops56
  rfl
def ops57 : List WordIR.Op := [.badd 781 877,.badd 877 888,.badd 882 887,.bxor 885 886,.band 835 808,.bxor 883 884,.band 862 808,.band 862 835,.bxor 880 881,.rotr 862 22,.bxor 878 879,.rotr 862 13,.rotr 862 2,.badd 876 16,.badd 874 875,.literal (BitVec.ofNat 32 3624381080),.badd 869 873,.bxor 870 872,.band 871 809,.bnot 863,.band 863 836,.badd 782 868,.bxor 866 867,.rotr 863 25,.bxor 864 865,.rotr 863 11,.rotr 863 6]++ops56
attribute [irreducible] ops57
theorem len57 : ops57.length=867 := by simp only [ops57,List.length_append,List.length_cons,List.length_nil,len56]
def b57 : Builder := ⟨24,ops57⟩
def s57 : SHA256Stage.State := ⟨889,862,835,808,890,863,836,809⟩
theorem step57 : SHA256Stage.round b56 s56 (BitVec.ofNat 32 3624381080) 16 = (s57,b57) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s56,b56,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len56]
  unfold s57 b57 ops57
  rfl
def ops58 : List WordIR.Op := [.badd 808 904,.badd 904 915,.badd 909 914,.bxor 912 913,.band 862 835,.bxor 910 911,.band 889 835,.band 889 862,.bxor 907 908,.rotr 889 22,.bxor 905 906,.rotr 889 13,.rotr 889 2,.badd 903 17,.badd 901 902,.literal (BitVec.ofNat 32 310598401),.badd 896 900,.bxor 897 899,.band 898 836,.bnot 890,.band 890 863,.badd 809 895,.bxor 893 894,.rotr 890 25,.bxor 891 892,.rotr 890 11,.rotr 890 6]++ops57
attribute [irreducible] ops58
theorem len58 : ops58.length=894 := by simp only [ops58,List.length_append,List.length_cons,List.length_nil,len57]
def b58 : Builder := ⟨24,ops58⟩
def s58 : SHA256Stage.State := ⟨916,889,862,835,917,890,863,836⟩
theorem step58 : SHA256Stage.round b57 s57 (BitVec.ofNat 32 310598401) 17 = (s58,b58) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s57,b57,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len57]
  unfold s58 b58 ops58
  rfl
def ops59 : List WordIR.Op := [.badd 835 931,.badd 931 942,.badd 936 941,.bxor 939 940,.band 889 862,.bxor 937 938,.band 916 862,.band 916 889,.bxor 934 935,.rotr 916 22,.bxor 932 933,.rotr 916 13,.rotr 916 2,.badd 930 18,.badd 928 929,.literal (BitVec.ofNat 32 607225278),.badd 923 927,.bxor 924 926,.band 925 863,.bnot 917,.band 917 890,.badd 836 922,.bxor 920 921,.rotr 917 25,.bxor 918 919,.rotr 917 11,.rotr 917 6]++ops58
attribute [irreducible] ops59
theorem len59 : ops59.length=921 := by simp only [ops59,List.length_append,List.length_cons,List.length_nil,len58]
def b59 : Builder := ⟨24,ops59⟩
def s59 : SHA256Stage.State := ⟨943,916,889,862,944,917,890,863⟩
theorem step59 : SHA256Stage.round b58 s58 (BitVec.ofNat 32 607225278) 18 = (s59,b59) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s58,b58,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len58]
  unfold s59 b59 ops59
  rfl
def ops60 : List WordIR.Op := [.badd 862 958,.badd 958 969,.badd 963 968,.bxor 966 967,.band 916 889,.bxor 964 965,.band 943 889,.band 943 916,.bxor 961 962,.rotr 943 22,.bxor 959 960,.rotr 943 13,.rotr 943 2,.badd 957 19,.badd 955 956,.literal (BitVec.ofNat 32 1426881987),.badd 950 954,.bxor 951 953,.band 952 890,.bnot 944,.band 944 917,.badd 863 949,.bxor 947 948,.rotr 944 25,.bxor 945 946,.rotr 944 11,.rotr 944 6]++ops59
attribute [irreducible] ops60
theorem len60 : ops60.length=948 := by simp only [ops60,List.length_append,List.length_cons,List.length_nil,len59]
def b60 : Builder := ⟨24,ops60⟩
def s60 : SHA256Stage.State := ⟨970,943,916,889,971,944,917,890⟩
theorem step60 : SHA256Stage.round b59 s59 (BitVec.ofNat 32 1426881987) 19 = (s60,b60) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s59,b59,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len59]
  unfold s60 b60 ops60
  rfl
def ops61 : List WordIR.Op := [.badd 889 985,.badd 985 996,.badd 990 995,.bxor 993 994,.band 943 916,.bxor 991 992,.band 970 916,.band 970 943,.bxor 988 989,.rotr 970 22,.bxor 986 987,.rotr 970 13,.rotr 970 2,.badd 984 20,.badd 982 983,.literal (BitVec.ofNat 32 1925078388),.badd 977 981,.bxor 978 980,.band 979 917,.bnot 971,.band 971 944,.badd 890 976,.bxor 974 975,.rotr 971 25,.bxor 972 973,.rotr 971 11,.rotr 971 6]++ops60
attribute [irreducible] ops61
theorem len61 : ops61.length=975 := by simp only [ops61,List.length_append,List.length_cons,List.length_nil,len60]
def b61 : Builder := ⟨24,ops61⟩
def s61 : SHA256Stage.State := ⟨997,970,943,916,998,971,944,917⟩
theorem step61 : SHA256Stage.round b60 s60 (BitVec.ofNat 32 1925078388) 20 = (s61,b61) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s60,b60,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len60]
  unfold s61 b61 ops61
  rfl
def ops62 : List WordIR.Op := [.badd 916 1012,.badd 1012 1023,.badd 1017 1022,.bxor 1020 1021,.band 970 943,.bxor 1018 1019,.band 997 943,.band 997 970,.bxor 1015 1016,.rotr 997 22,.bxor 1013 1014,.rotr 997 13,.rotr 997 2,.badd 1011 21,.badd 1009 1010,.literal (BitVec.ofNat 32 2162078206),.badd 1004 1008,.bxor 1005 1007,.band 1006 944,.bnot 998,.band 998 971,.badd 917 1003,.bxor 1001 1002,.rotr 998 25,.bxor 999 1000,.rotr 998 11,.rotr 998 6]++ops61
attribute [irreducible] ops62
theorem len62 : ops62.length=1002 := by simp only [ops62,List.length_append,List.length_cons,List.length_nil,len61]
def b62 : Builder := ⟨24,ops62⟩
def s62 : SHA256Stage.State := ⟨1024,997,970,943,1025,998,971,944⟩
theorem step62 : SHA256Stage.round b61 s61 (BitVec.ofNat 32 2162078206) 21 = (s62,b62) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s61,b61,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len61]
  unfold s62 b62 ops62
  rfl
def ops63 : List WordIR.Op := [.badd 943 1039,.badd 1039 1050,.badd 1044 1049,.bxor 1047 1048,.band 997 970,.bxor 1045 1046,.band 1024 970,.band 1024 997,.bxor 1042 1043,.rotr 1024 22,.bxor 1040 1041,.rotr 1024 13,.rotr 1024 2,.badd 1038 22,.badd 1036 1037,.literal (BitVec.ofNat 32 2614888103),.badd 1031 1035,.bxor 1032 1034,.band 1033 971,.bnot 1025,.band 1025 998,.badd 944 1030,.bxor 1028 1029,.rotr 1025 25,.bxor 1026 1027,.rotr 1025 11,.rotr 1025 6]++ops62
attribute [irreducible] ops63
theorem len63 : ops63.length=1029 := by simp only [ops63,List.length_append,List.length_cons,List.length_nil,len62]
def b63 : Builder := ⟨24,ops63⟩
def s63 : SHA256Stage.State := ⟨1051,1024,997,970,1052,1025,998,971⟩
theorem step63 : SHA256Stage.round b62 s62 (BitVec.ofNat 32 2614888103) 22 = (s63,b63) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s62,b62,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len62]
  unfold s63 b63 ops63
  rfl
def ops64 : List WordIR.Op := [.badd 970 1066,.badd 1066 1077,.badd 1071 1076,.bxor 1074 1075,.band 1024 997,.bxor 1072 1073,.band 1051 997,.band 1051 1024,.bxor 1069 1070,.rotr 1051 22,.bxor 1067 1068,.rotr 1051 13,.rotr 1051 2,.badd 1065 23,.badd 1063 1064,.literal (BitVec.ofNat 32 3248222580),.badd 1058 1062,.bxor 1059 1061,.band 1060 998,.bnot 1052,.band 1052 1025,.badd 971 1057,.bxor 1055 1056,.rotr 1052 25,.bxor 1053 1054,.rotr 1052 11,.rotr 1052 6]++ops63
attribute [irreducible] ops64
theorem len64 : ops64.length=1056 := by simp only [ops64,List.length_append,List.length_cons,List.length_nil,len63]
def b64 : Builder := ⟨24,ops64⟩
def s64 : SHA256Stage.State := ⟨1078,1051,1024,997,1079,1052,1025,998⟩
theorem step64 : SHA256Stage.round b63 s63 (BitVec.ofNat 32 3248222580) 23 = (s64,b64) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s63,b63,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len63]
  unfold s64 b64 ops64
  rfl
def ops65 : List WordIR.Op := [.badd 997 1093,.badd 1093 1104,.badd 1098 1103,.bxor 1101 1102,.band 1051 1024,.bxor 1099 1100,.band 1078 1024,.band 1078 1051,.bxor 1096 1097,.rotr 1078 22,.bxor 1094 1095,.rotr 1078 13,.rotr 1078 2,.badd 1092 36,.badd 1090 1091,.literal (BitVec.ofNat 32 3835390401),.badd 1085 1089,.bxor 1086 1088,.band 1087 1025,.bnot 1079,.band 1079 1052,.badd 998 1084,.bxor 1082 1083,.rotr 1079 25,.bxor 1080 1081,.rotr 1079 11,.rotr 1079 6]++ops64
attribute [irreducible] ops65
theorem len65 : ops65.length=1083 := by simp only [ops65,List.length_append,List.length_cons,List.length_nil,len64]
def b65 : Builder := ⟨24,ops65⟩
def s65 : SHA256Stage.State := ⟨1105,1078,1051,1024,1106,1079,1052,1025⟩
theorem step65 : SHA256Stage.round b64 s64 (BitVec.ofNat 32 3835390401) 36 = (s65,b65) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s64,b64,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len64]
  unfold s65 b65 ops65
  rfl
def ops66 : List WordIR.Op := [.badd 1024 1120,.badd 1120 1131,.badd 1125 1130,.bxor 1128 1129,.band 1078 1051,.bxor 1126 1127,.band 1105 1051,.band 1105 1078,.bxor 1123 1124,.rotr 1105 22,.bxor 1121 1122,.rotr 1105 13,.rotr 1105 2,.badd 1119 49,.badd 1117 1118,.literal (BitVec.ofNat 32 4022224774),.badd 1112 1116,.bxor 1113 1115,.band 1114 1052,.bnot 1106,.band 1106 1079,.badd 1025 1111,.bxor 1109 1110,.rotr 1106 25,.bxor 1107 1108,.rotr 1106 11,.rotr 1106 6]++ops65
attribute [irreducible] ops66
theorem len66 : ops66.length=1110 := by simp only [ops66,List.length_append,List.length_cons,List.length_nil,len65]
def b66 : Builder := ⟨24,ops66⟩
def s66 : SHA256Stage.State := ⟨1132,1105,1078,1051,1133,1106,1079,1052⟩
theorem step66 : SHA256Stage.round b65 s65 (BitVec.ofNat 32 4022224774) 49 = (s66,b66) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s65,b65,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len65]
  unfold s66 b66 ops66
  rfl
def ops67 : List WordIR.Op := [.badd 1051 1147,.badd 1147 1158,.badd 1152 1157,.bxor 1155 1156,.band 1105 1078,.bxor 1153 1154,.band 1132 1078,.band 1132 1105,.bxor 1150 1151,.rotr 1132 22,.bxor 1148 1149,.rotr 1132 13,.rotr 1132 2,.badd 1146 62,.badd 1144 1145,.literal (BitVec.ofNat 32 264347078),.badd 1139 1143,.bxor 1140 1142,.band 1141 1079,.bnot 1133,.band 1133 1106,.badd 1052 1138,.bxor 1136 1137,.rotr 1133 25,.bxor 1134 1135,.rotr 1133 11,.rotr 1133 6]++ops66
attribute [irreducible] ops67
theorem len67 : ops67.length=1137 := by simp only [ops67,List.length_append,List.length_cons,List.length_nil,len66]
def b67 : Builder := ⟨24,ops67⟩
def s67 : SHA256Stage.State := ⟨1159,1132,1105,1078,1160,1133,1106,1079⟩
theorem step67 : SHA256Stage.round b66 s66 (BitVec.ofNat 32 264347078) 62 = (s67,b67) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s66,b66,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len66]
  unfold s67 b67 ops67
  rfl
def ops68 : List WordIR.Op := [.badd 1078 1174,.badd 1174 1185,.badd 1179 1184,.bxor 1182 1183,.band 1132 1105,.bxor 1180 1181,.band 1159 1105,.band 1159 1132,.bxor 1177 1178,.rotr 1159 22,.bxor 1175 1176,.rotr 1159 13,.rotr 1159 2,.badd 1173 75,.badd 1171 1172,.literal (BitVec.ofNat 32 604807628),.badd 1166 1170,.bxor 1167 1169,.band 1168 1106,.bnot 1160,.band 1160 1133,.badd 1079 1165,.bxor 1163 1164,.rotr 1160 25,.bxor 1161 1162,.rotr 1160 11,.rotr 1160 6]++ops67
attribute [irreducible] ops68
theorem len68 : ops68.length=1164 := by simp only [ops68,List.length_append,List.length_cons,List.length_nil,len67]
def b68 : Builder := ⟨24,ops68⟩
def s68 : SHA256Stage.State := ⟨1186,1159,1132,1105,1187,1160,1133,1106⟩
theorem step68 : SHA256Stage.round b67 s67 (BitVec.ofNat 32 604807628) 75 = (s68,b68) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s67,b67,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len67]
  unfold s68 b68 ops68
  rfl
def ops69 : List WordIR.Op := [.badd 1105 1201,.badd 1201 1212,.badd 1206 1211,.bxor 1209 1210,.band 1159 1132,.bxor 1207 1208,.band 1186 1132,.band 1186 1159,.bxor 1204 1205,.rotr 1186 22,.bxor 1202 1203,.rotr 1186 13,.rotr 1186 2,.badd 1200 88,.badd 1198 1199,.literal (BitVec.ofNat 32 770255983),.badd 1193 1197,.bxor 1194 1196,.band 1195 1133,.bnot 1187,.band 1187 1160,.badd 1106 1192,.bxor 1190 1191,.rotr 1187 25,.bxor 1188 1189,.rotr 1187 11,.rotr 1187 6]++ops68
attribute [irreducible] ops69
theorem len69 : ops69.length=1191 := by simp only [ops69,List.length_append,List.length_cons,List.length_nil,len68]
def b69 : Builder := ⟨24,ops69⟩
def s69 : SHA256Stage.State := ⟨1213,1186,1159,1132,1214,1187,1160,1133⟩
theorem step69 : SHA256Stage.round b68 s68 (BitVec.ofNat 32 770255983) 88 = (s69,b69) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s68,b68,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len68]
  unfold s69 b69 ops69
  rfl
def ops70 : List WordIR.Op := [.badd 1132 1228,.badd 1228 1239,.badd 1233 1238,.bxor 1236 1237,.band 1186 1159,.bxor 1234 1235,.band 1213 1159,.band 1213 1186,.bxor 1231 1232,.rotr 1213 22,.bxor 1229 1230,.rotr 1213 13,.rotr 1213 2,.badd 1227 101,.badd 1225 1226,.literal (BitVec.ofNat 32 1249150122),.badd 1220 1224,.bxor 1221 1223,.band 1222 1160,.bnot 1214,.band 1214 1187,.badd 1133 1219,.bxor 1217 1218,.rotr 1214 25,.bxor 1215 1216,.rotr 1214 11,.rotr 1214 6]++ops69
attribute [irreducible] ops70
theorem len70 : ops70.length=1218 := by simp only [ops70,List.length_append,List.length_cons,List.length_nil,len69]
def b70 : Builder := ⟨24,ops70⟩
def s70 : SHA256Stage.State := ⟨1240,1213,1186,1159,1241,1214,1187,1160⟩
theorem step70 : SHA256Stage.round b69 s69 (BitVec.ofNat 32 1249150122) 101 = (s70,b70) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s69,b69,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len69]
  unfold s70 b70 ops70
  rfl
def ops71 : List WordIR.Op := [.badd 1159 1255,.badd 1255 1266,.badd 1260 1265,.bxor 1263 1264,.band 1213 1186,.bxor 1261 1262,.band 1240 1186,.band 1240 1213,.bxor 1258 1259,.rotr 1240 22,.bxor 1256 1257,.rotr 1240 13,.rotr 1240 2,.badd 1254 114,.badd 1252 1253,.literal (BitVec.ofNat 32 1555081692),.badd 1247 1251,.bxor 1248 1250,.band 1249 1187,.bnot 1241,.band 1241 1214,.badd 1160 1246,.bxor 1244 1245,.rotr 1241 25,.bxor 1242 1243,.rotr 1241 11,.rotr 1241 6]++ops70
attribute [irreducible] ops71
theorem len71 : ops71.length=1245 := by simp only [ops71,List.length_append,List.length_cons,List.length_nil,len70]
def b71 : Builder := ⟨24,ops71⟩
def s71 : SHA256Stage.State := ⟨1267,1240,1213,1186,1268,1241,1214,1187⟩
theorem step71 : SHA256Stage.round b70 s70 (BitVec.ofNat 32 1555081692) 114 = (s71,b71) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s70,b70,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len70]
  unfold s71 b71 ops71
  rfl
def ops72 : List WordIR.Op := [.badd 1186 1282,.badd 1282 1293,.badd 1287 1292,.bxor 1290 1291,.band 1240 1213,.bxor 1288 1289,.band 1267 1213,.band 1267 1240,.bxor 1285 1286,.rotr 1267 22,.bxor 1283 1284,.rotr 1267 13,.rotr 1267 2,.badd 1281 127,.badd 1279 1280,.literal (BitVec.ofNat 32 1996064986),.badd 1274 1278,.bxor 1275 1277,.band 1276 1214,.bnot 1268,.band 1268 1241,.badd 1187 1273,.bxor 1271 1272,.rotr 1268 25,.bxor 1269 1270,.rotr 1268 11,.rotr 1268 6]++ops71
attribute [irreducible] ops72
theorem len72 : ops72.length=1272 := by simp only [ops72,List.length_append,List.length_cons,List.length_nil,len71]
def b72 : Builder := ⟨24,ops72⟩
def s72 : SHA256Stage.State := ⟨1294,1267,1240,1213,1295,1268,1241,1214⟩
theorem step72 : SHA256Stage.round b71 s71 (BitVec.ofNat 32 1996064986) 127 = (s72,b72) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s71,b71,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len71]
  unfold s72 b72 ops72
  rfl
def ops73 : List WordIR.Op := [.badd 1213 1309,.badd 1309 1320,.badd 1314 1319,.bxor 1317 1318,.band 1267 1240,.bxor 1315 1316,.band 1294 1240,.band 1294 1267,.bxor 1312 1313,.rotr 1294 22,.bxor 1310 1311,.rotr 1294 13,.rotr 1294 2,.badd 1308 140,.badd 1306 1307,.literal (BitVec.ofNat 32 2554220882),.badd 1301 1305,.bxor 1302 1304,.band 1303 1241,.bnot 1295,.band 1295 1268,.badd 1214 1300,.bxor 1298 1299,.rotr 1295 25,.bxor 1296 1297,.rotr 1295 11,.rotr 1295 6]++ops72
attribute [irreducible] ops73
theorem len73 : ops73.length=1299 := by simp only [ops73,List.length_append,List.length_cons,List.length_nil,len72]
def b73 : Builder := ⟨24,ops73⟩
def s73 : SHA256Stage.State := ⟨1321,1294,1267,1240,1322,1295,1268,1241⟩
theorem step73 : SHA256Stage.round b72 s72 (BitVec.ofNat 32 2554220882) 140 = (s73,b73) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s72,b72,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len72]
  unfold s73 b73 ops73
  rfl
def ops74 : List WordIR.Op := [.badd 1240 1336,.badd 1336 1347,.badd 1341 1346,.bxor 1344 1345,.band 1294 1267,.bxor 1342 1343,.band 1321 1267,.band 1321 1294,.bxor 1339 1340,.rotr 1321 22,.bxor 1337 1338,.rotr 1321 13,.rotr 1321 2,.badd 1335 153,.badd 1333 1334,.literal (BitVec.ofNat 32 2821834349),.badd 1328 1332,.bxor 1329 1331,.band 1330 1268,.bnot 1322,.band 1322 1295,.badd 1241 1327,.bxor 1325 1326,.rotr 1322 25,.bxor 1323 1324,.rotr 1322 11,.rotr 1322 6]++ops73
attribute [irreducible] ops74
theorem len74 : ops74.length=1326 := by simp only [ops74,List.length_append,List.length_cons,List.length_nil,len73]
def b74 : Builder := ⟨24,ops74⟩
def s74 : SHA256Stage.State := ⟨1348,1321,1294,1267,1349,1322,1295,1268⟩
theorem step74 : SHA256Stage.round b73 s73 (BitVec.ofNat 32 2821834349) 153 = (s74,b74) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s73,b73,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len73]
  unfold s74 b74 ops74
  rfl
def ops75 : List WordIR.Op := [.badd 1267 1363,.badd 1363 1374,.badd 1368 1373,.bxor 1371 1372,.band 1321 1294,.bxor 1369 1370,.band 1348 1294,.band 1348 1321,.bxor 1366 1367,.rotr 1348 22,.bxor 1364 1365,.rotr 1348 13,.rotr 1348 2,.badd 1362 166,.badd 1360 1361,.literal (BitVec.ofNat 32 2952996808),.badd 1355 1359,.bxor 1356 1358,.band 1357 1295,.bnot 1349,.band 1349 1322,.badd 1268 1354,.bxor 1352 1353,.rotr 1349 25,.bxor 1350 1351,.rotr 1349 11,.rotr 1349 6]++ops74
attribute [irreducible] ops75
theorem len75 : ops75.length=1353 := by simp only [ops75,List.length_append,List.length_cons,List.length_nil,len74]
def b75 : Builder := ⟨24,ops75⟩
def s75 : SHA256Stage.State := ⟨1375,1348,1321,1294,1376,1349,1322,1295⟩
theorem step75 : SHA256Stage.round b74 s74 (BitVec.ofNat 32 2952996808) 166 = (s75,b75) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s74,b74,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len74]
  unfold s75 b75 ops75
  rfl
def ops76 : List WordIR.Op := [.badd 1294 1390,.badd 1390 1401,.badd 1395 1400,.bxor 1398 1399,.band 1348 1321,.bxor 1396 1397,.band 1375 1321,.band 1375 1348,.bxor 1393 1394,.rotr 1375 22,.bxor 1391 1392,.rotr 1375 13,.rotr 1375 2,.badd 1389 179,.badd 1387 1388,.literal (BitVec.ofNat 32 3210313671),.badd 1382 1386,.bxor 1383 1385,.band 1384 1322,.bnot 1376,.band 1376 1349,.badd 1295 1381,.bxor 1379 1380,.rotr 1376 25,.bxor 1377 1378,.rotr 1376 11,.rotr 1376 6]++ops75
attribute [irreducible] ops76
theorem len76 : ops76.length=1380 := by simp only [ops76,List.length_append,List.length_cons,List.length_nil,len75]
def b76 : Builder := ⟨24,ops76⟩
def s76 : SHA256Stage.State := ⟨1402,1375,1348,1321,1403,1376,1349,1322⟩
theorem step76 : SHA256Stage.round b75 s75 (BitVec.ofNat 32 3210313671) 179 = (s76,b76) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s75,b75,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len75]
  unfold s76 b76 ops76
  rfl
def ops77 : List WordIR.Op := [.badd 1321 1417,.badd 1417 1428,.badd 1422 1427,.bxor 1425 1426,.band 1375 1348,.bxor 1423 1424,.band 1402 1348,.band 1402 1375,.bxor 1420 1421,.rotr 1402 22,.bxor 1418 1419,.rotr 1402 13,.rotr 1402 2,.badd 1416 192,.badd 1414 1415,.literal (BitVec.ofNat 32 3336571891),.badd 1409 1413,.bxor 1410 1412,.band 1411 1349,.bnot 1403,.band 1403 1376,.badd 1322 1408,.bxor 1406 1407,.rotr 1403 25,.bxor 1404 1405,.rotr 1403 11,.rotr 1403 6]++ops76
attribute [irreducible] ops77
theorem len77 : ops77.length=1407 := by simp only [ops77,List.length_append,List.length_cons,List.length_nil,len76]
def b77 : Builder := ⟨24,ops77⟩
def s77 : SHA256Stage.State := ⟨1429,1402,1375,1348,1430,1403,1376,1349⟩
theorem step77 : SHA256Stage.round b76 s76 (BitVec.ofNat 32 3336571891) 192 = (s77,b77) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s76,b76,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len76]
  unfold s77 b77 ops77
  rfl
def ops78 : List WordIR.Op := [.badd 1348 1444,.badd 1444 1455,.badd 1449 1454,.bxor 1452 1453,.band 1402 1375,.bxor 1450 1451,.band 1429 1375,.band 1429 1402,.bxor 1447 1448,.rotr 1429 22,.bxor 1445 1446,.rotr 1429 13,.rotr 1429 2,.badd 1443 205,.badd 1441 1442,.literal (BitVec.ofNat 32 3584528711),.badd 1436 1440,.bxor 1437 1439,.band 1438 1376,.bnot 1430,.band 1430 1403,.badd 1349 1435,.bxor 1433 1434,.rotr 1430 25,.bxor 1431 1432,.rotr 1430 11,.rotr 1430 6]++ops77
attribute [irreducible] ops78
theorem len78 : ops78.length=1434 := by simp only [ops78,List.length_append,List.length_cons,List.length_nil,len77]
def b78 : Builder := ⟨24,ops78⟩
def s78 : SHA256Stage.State := ⟨1456,1429,1402,1375,1457,1430,1403,1376⟩
theorem step78 : SHA256Stage.round b77 s77 (BitVec.ofNat 32 3584528711) 205 = (s78,b78) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s77,b77,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len77]
  unfold s78 b78 ops78
  rfl
def ops79 : List WordIR.Op := [.badd 1375 1471,.badd 1471 1482,.badd 1476 1481,.bxor 1479 1480,.band 1429 1402,.bxor 1477 1478,.band 1456 1402,.band 1456 1429,.bxor 1474 1475,.rotr 1456 22,.bxor 1472 1473,.rotr 1456 13,.rotr 1456 2,.badd 1470 218,.badd 1468 1469,.literal (BitVec.ofNat 32 113926993),.badd 1463 1467,.bxor 1464 1466,.band 1465 1403,.bnot 1457,.band 1457 1430,.badd 1376 1462,.bxor 1460 1461,.rotr 1457 25,.bxor 1458 1459,.rotr 1457 11,.rotr 1457 6]++ops78
attribute [irreducible] ops79
theorem len79 : ops79.length=1461 := by simp only [ops79,List.length_append,List.length_cons,List.length_nil,len78]
def b79 : Builder := ⟨24,ops79⟩
def s79 : SHA256Stage.State := ⟨1483,1456,1429,1402,1484,1457,1430,1403⟩
theorem step79 : SHA256Stage.round b78 s78 (BitVec.ofNat 32 113926993) 218 = (s79,b79) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s78,b78,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len78]
  unfold s79 b79 ops79
  rfl
def ops80 : List WordIR.Op := [.badd 1402 1498,.badd 1498 1509,.badd 1503 1508,.bxor 1506 1507,.band 1456 1429,.bxor 1504 1505,.band 1483 1429,.band 1483 1456,.bxor 1501 1502,.rotr 1483 22,.bxor 1499 1500,.rotr 1483 13,.rotr 1483 2,.badd 1497 231,.badd 1495 1496,.literal (BitVec.ofNat 32 338241895),.badd 1490 1494,.bxor 1491 1493,.band 1492 1430,.bnot 1484,.band 1484 1457,.badd 1403 1489,.bxor 1487 1488,.rotr 1484 25,.bxor 1485 1486,.rotr 1484 11,.rotr 1484 6]++ops79
attribute [irreducible] ops80
theorem len80 : ops80.length=1488 := by simp only [ops80,List.length_append,List.length_cons,List.length_nil,len79]
def b80 : Builder := ⟨24,ops80⟩
def s80 : SHA256Stage.State := ⟨1510,1483,1456,1429,1511,1484,1457,1430⟩
theorem step80 : SHA256Stage.round b79 s79 (BitVec.ofNat 32 338241895) 231 = (s80,b80) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s79,b79,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len79]
  unfold s80 b80 ops80
  rfl
def ops81 : List WordIR.Op := [.badd 1429 1525,.badd 1525 1536,.badd 1530 1535,.bxor 1533 1534,.band 1483 1456,.bxor 1531 1532,.band 1510 1456,.band 1510 1483,.bxor 1528 1529,.rotr 1510 22,.bxor 1526 1527,.rotr 1510 13,.rotr 1510 2,.badd 1524 244,.badd 1522 1523,.literal (BitVec.ofNat 32 666307205),.badd 1517 1521,.bxor 1518 1520,.band 1519 1457,.bnot 1511,.band 1511 1484,.badd 1430 1516,.bxor 1514 1515,.rotr 1511 25,.bxor 1512 1513,.rotr 1511 11,.rotr 1511 6]++ops80
attribute [irreducible] ops81
theorem len81 : ops81.length=1515 := by simp only [ops81,List.length_append,List.length_cons,List.length_nil,len80]
def b81 : Builder := ⟨24,ops81⟩
def s81 : SHA256Stage.State := ⟨1537,1510,1483,1456,1538,1511,1484,1457⟩
theorem step81 : SHA256Stage.round b80 s80 (BitVec.ofNat 32 666307205) 244 = (s81,b81) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s80,b80,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len80]
  unfold s81 b81 ops81
  rfl
def ops82 : List WordIR.Op := [.badd 1456 1552,.badd 1552 1563,.badd 1557 1562,.bxor 1560 1561,.band 1510 1483,.bxor 1558 1559,.band 1537 1483,.band 1537 1510,.bxor 1555 1556,.rotr 1537 22,.bxor 1553 1554,.rotr 1537 13,.rotr 1537 2,.badd 1551 257,.badd 1549 1550,.literal (BitVec.ofNat 32 773529912),.badd 1544 1548,.bxor 1545 1547,.band 1546 1484,.bnot 1538,.band 1538 1511,.badd 1457 1543,.bxor 1541 1542,.rotr 1538 25,.bxor 1539 1540,.rotr 1538 11,.rotr 1538 6]++ops81
attribute [irreducible] ops82
theorem len82 : ops82.length=1542 := by simp only [ops82,List.length_append,List.length_cons,List.length_nil,len81]
def b82 : Builder := ⟨24,ops82⟩
def s82 : SHA256Stage.State := ⟨1564,1537,1510,1483,1565,1538,1511,1484⟩
theorem step82 : SHA256Stage.round b81 s81 (BitVec.ofNat 32 773529912) 257 = (s82,b82) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s81,b81,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len81]
  unfold s82 b82 ops82
  rfl
def ops83 : List WordIR.Op := [.badd 1483 1579,.badd 1579 1590,.badd 1584 1589,.bxor 1587 1588,.band 1537 1510,.bxor 1585 1586,.band 1564 1510,.band 1564 1537,.bxor 1582 1583,.rotr 1564 22,.bxor 1580 1581,.rotr 1564 13,.rotr 1564 2,.badd 1578 270,.badd 1576 1577,.literal (BitVec.ofNat 32 1294757372),.badd 1571 1575,.bxor 1572 1574,.band 1573 1511,.bnot 1565,.band 1565 1538,.badd 1484 1570,.bxor 1568 1569,.rotr 1565 25,.bxor 1566 1567,.rotr 1565 11,.rotr 1565 6]++ops82
attribute [irreducible] ops83
theorem len83 : ops83.length=1569 := by simp only [ops83,List.length_append,List.length_cons,List.length_nil,len82]
def b83 : Builder := ⟨24,ops83⟩
def s83 : SHA256Stage.State := ⟨1591,1564,1537,1510,1592,1565,1538,1511⟩
theorem step83 : SHA256Stage.round b82 s82 (BitVec.ofNat 32 1294757372) 270 = (s83,b83) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s82,b82,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len82]
  unfold s83 b83 ops83
  rfl
def ops84 : List WordIR.Op := [.badd 1510 1606,.badd 1606 1617,.badd 1611 1616,.bxor 1614 1615,.band 1564 1537,.bxor 1612 1613,.band 1591 1537,.band 1591 1564,.bxor 1609 1610,.rotr 1591 22,.bxor 1607 1608,.rotr 1591 13,.rotr 1591 2,.badd 1605 283,.badd 1603 1604,.literal (BitVec.ofNat 32 1396182291),.badd 1598 1602,.bxor 1599 1601,.band 1600 1538,.bnot 1592,.band 1592 1565,.badd 1511 1597,.bxor 1595 1596,.rotr 1592 25,.bxor 1593 1594,.rotr 1592 11,.rotr 1592 6]++ops83
attribute [irreducible] ops84
theorem len84 : ops84.length=1596 := by simp only [ops84,List.length_append,List.length_cons,List.length_nil,len83]
def b84 : Builder := ⟨24,ops84⟩
def s84 : SHA256Stage.State := ⟨1618,1591,1564,1537,1619,1592,1565,1538⟩
theorem step84 : SHA256Stage.round b83 s83 (BitVec.ofNat 32 1396182291) 283 = (s84,b84) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s83,b83,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len83]
  unfold s84 b84 ops84
  rfl
def ops85 : List WordIR.Op := [.badd 1537 1633,.badd 1633 1644,.badd 1638 1643,.bxor 1641 1642,.band 1591 1564,.bxor 1639 1640,.band 1618 1564,.band 1618 1591,.bxor 1636 1637,.rotr 1618 22,.bxor 1634 1635,.rotr 1618 13,.rotr 1618 2,.badd 1632 296,.badd 1630 1631,.literal (BitVec.ofNat 32 1695183700),.badd 1625 1629,.bxor 1626 1628,.band 1627 1565,.bnot 1619,.band 1619 1592,.badd 1538 1624,.bxor 1622 1623,.rotr 1619 25,.bxor 1620 1621,.rotr 1619 11,.rotr 1619 6]++ops84
attribute [irreducible] ops85
theorem len85 : ops85.length=1623 := by simp only [ops85,List.length_append,List.length_cons,List.length_nil,len84]
def b85 : Builder := ⟨24,ops85⟩
def s85 : SHA256Stage.State := ⟨1645,1618,1591,1564,1646,1619,1592,1565⟩
theorem step85 : SHA256Stage.round b84 s84 (BitVec.ofNat 32 1695183700) 296 = (s85,b85) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s84,b84,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len84]
  unfold s85 b85 ops85
  rfl
def ops86 : List WordIR.Op := [.badd 1564 1660,.badd 1660 1671,.badd 1665 1670,.bxor 1668 1669,.band 1618 1591,.bxor 1666 1667,.band 1645 1591,.band 1645 1618,.bxor 1663 1664,.rotr 1645 22,.bxor 1661 1662,.rotr 1645 13,.rotr 1645 2,.badd 1659 309,.badd 1657 1658,.literal (BitVec.ofNat 32 1986661051),.badd 1652 1656,.bxor 1653 1655,.band 1654 1592,.bnot 1646,.band 1646 1619,.badd 1565 1651,.bxor 1649 1650,.rotr 1646 25,.bxor 1647 1648,.rotr 1646 11,.rotr 1646 6]++ops85
attribute [irreducible] ops86
theorem len86 : ops86.length=1650 := by simp only [ops86,List.length_append,List.length_cons,List.length_nil,len85]
def b86 : Builder := ⟨24,ops86⟩
def s86 : SHA256Stage.State := ⟨1672,1645,1618,1591,1673,1646,1619,1592⟩
theorem step86 : SHA256Stage.round b85 s85 (BitVec.ofNat 32 1986661051) 309 = (s86,b86) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s85,b85,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len85]
  unfold s86 b86 ops86
  rfl
def ops87 : List WordIR.Op := [.badd 1591 1687,.badd 1687 1698,.badd 1692 1697,.bxor 1695 1696,.band 1645 1618,.bxor 1693 1694,.band 1672 1618,.band 1672 1645,.bxor 1690 1691,.rotr 1672 22,.bxor 1688 1689,.rotr 1672 13,.rotr 1672 2,.badd 1686 322,.badd 1684 1685,.literal (BitVec.ofNat 32 2177026350),.badd 1679 1683,.bxor 1680 1682,.band 1681 1619,.bnot 1673,.band 1673 1646,.badd 1592 1678,.bxor 1676 1677,.rotr 1673 25,.bxor 1674 1675,.rotr 1673 11,.rotr 1673 6]++ops86
attribute [irreducible] ops87
theorem len87 : ops87.length=1677 := by simp only [ops87,List.length_append,List.length_cons,List.length_nil,len86]
def b87 : Builder := ⟨24,ops87⟩
def s87 : SHA256Stage.State := ⟨1699,1672,1645,1618,1700,1673,1646,1619⟩
theorem step87 : SHA256Stage.round b86 s86 (BitVec.ofNat 32 2177026350) 322 = (s87,b87) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s86,b86,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len86]
  unfold s87 b87 ops87
  rfl
def ops88 : List WordIR.Op := [.badd 1618 1714,.badd 1714 1725,.badd 1719 1724,.bxor 1722 1723,.band 1672 1645,.bxor 1720 1721,.band 1699 1645,.band 1699 1672,.bxor 1717 1718,.rotr 1699 22,.bxor 1715 1716,.rotr 1699 13,.rotr 1699 2,.badd 1713 335,.badd 1711 1712,.literal (BitVec.ofNat 32 2456956037),.badd 1706 1710,.bxor 1707 1709,.band 1708 1646,.bnot 1700,.band 1700 1673,.badd 1619 1705,.bxor 1703 1704,.rotr 1700 25,.bxor 1701 1702,.rotr 1700 11,.rotr 1700 6]++ops87
attribute [irreducible] ops88
theorem len88 : ops88.length=1704 := by simp only [ops88,List.length_append,List.length_cons,List.length_nil,len87]
def b88 : Builder := ⟨24,ops88⟩
def s88 : SHA256Stage.State := ⟨1726,1699,1672,1645,1727,1700,1673,1646⟩
theorem step88 : SHA256Stage.round b87 s87 (BitVec.ofNat 32 2456956037) 335 = (s88,b88) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s87,b87,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len87]
  unfold s88 b88 ops88
  rfl
def ops89 : List WordIR.Op := [.badd 1645 1741,.badd 1741 1752,.badd 1746 1751,.bxor 1749 1750,.band 1699 1672,.bxor 1747 1748,.band 1726 1672,.band 1726 1699,.bxor 1744 1745,.rotr 1726 22,.bxor 1742 1743,.rotr 1726 13,.rotr 1726 2,.badd 1740 348,.badd 1738 1739,.literal (BitVec.ofNat 32 2730485921),.badd 1733 1737,.bxor 1734 1736,.band 1735 1673,.bnot 1727,.band 1727 1700,.badd 1646 1732,.bxor 1730 1731,.rotr 1727 25,.bxor 1728 1729,.rotr 1727 11,.rotr 1727 6]++ops88
attribute [irreducible] ops89
theorem len89 : ops89.length=1731 := by simp only [ops89,List.length_append,List.length_cons,List.length_nil,len88]
def b89 : Builder := ⟨24,ops89⟩
def s89 : SHA256Stage.State := ⟨1753,1726,1699,1672,1754,1727,1700,1673⟩
theorem step89 : SHA256Stage.round b88 s88 (BitVec.ofNat 32 2730485921) 348 = (s89,b89) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s88,b88,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len88]
  unfold s89 b89 ops89
  rfl
def ops90 : List WordIR.Op := [.badd 1672 1768,.badd 1768 1779,.badd 1773 1778,.bxor 1776 1777,.band 1726 1699,.bxor 1774 1775,.band 1753 1699,.band 1753 1726,.bxor 1771 1772,.rotr 1753 22,.bxor 1769 1770,.rotr 1753 13,.rotr 1753 2,.badd 1767 361,.badd 1765 1766,.literal (BitVec.ofNat 32 2820302411),.badd 1760 1764,.bxor 1761 1763,.band 1762 1700,.bnot 1754,.band 1754 1727,.badd 1673 1759,.bxor 1757 1758,.rotr 1754 25,.bxor 1755 1756,.rotr 1754 11,.rotr 1754 6]++ops89
attribute [irreducible] ops90
theorem len90 : ops90.length=1758 := by simp only [ops90,List.length_append,List.length_cons,List.length_nil,len89]
def b90 : Builder := ⟨24,ops90⟩
def s90 : SHA256Stage.State := ⟨1780,1753,1726,1699,1781,1754,1727,1700⟩
theorem step90 : SHA256Stage.round b89 s89 (BitVec.ofNat 32 2820302411) 361 = (s90,b90) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s89,b89,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len89]
  unfold s90 b90 ops90
  rfl
def ops91 : List WordIR.Op := [.badd 1699 1795,.badd 1795 1806,.badd 1800 1805,.bxor 1803 1804,.band 1753 1726,.bxor 1801 1802,.band 1780 1726,.band 1780 1753,.bxor 1798 1799,.rotr 1780 22,.bxor 1796 1797,.rotr 1780 13,.rotr 1780 2,.badd 1794 374,.badd 1792 1793,.literal (BitVec.ofNat 32 3259730800),.badd 1787 1791,.bxor 1788 1790,.band 1789 1727,.bnot 1781,.band 1781 1754,.badd 1700 1786,.bxor 1784 1785,.rotr 1781 25,.bxor 1782 1783,.rotr 1781 11,.rotr 1781 6]++ops90
attribute [irreducible] ops91
theorem len91 : ops91.length=1785 := by simp only [ops91,List.length_append,List.length_cons,List.length_nil,len90]
def b91 : Builder := ⟨24,ops91⟩
def s91 : SHA256Stage.State := ⟨1807,1780,1753,1726,1808,1781,1754,1727⟩
theorem step91 : SHA256Stage.round b90 s90 (BitVec.ofNat 32 3259730800) 374 = (s91,b91) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s90,b90,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len90]
  unfold s91 b91 ops91
  rfl
def ops92 : List WordIR.Op := [.badd 1726 1822,.badd 1822 1833,.badd 1827 1832,.bxor 1830 1831,.band 1780 1753,.bxor 1828 1829,.band 1807 1753,.band 1807 1780,.bxor 1825 1826,.rotr 1807 22,.bxor 1823 1824,.rotr 1807 13,.rotr 1807 2,.badd 1821 387,.badd 1819 1820,.literal (BitVec.ofNat 32 3345764771),.badd 1814 1818,.bxor 1815 1817,.band 1816 1754,.bnot 1808,.band 1808 1781,.badd 1727 1813,.bxor 1811 1812,.rotr 1808 25,.bxor 1809 1810,.rotr 1808 11,.rotr 1808 6]++ops91
attribute [irreducible] ops92
theorem len92 : ops92.length=1812 := by simp only [ops92,List.length_append,List.length_cons,List.length_nil,len91]
def b92 : Builder := ⟨24,ops92⟩
def s92 : SHA256Stage.State := ⟨1834,1807,1780,1753,1835,1808,1781,1754⟩
theorem step92 : SHA256Stage.round b91 s91 (BitVec.ofNat 32 3345764771) 387 = (s92,b92) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s91,b91,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len91]
  unfold s92 b92 ops92
  rfl
def ops93 : List WordIR.Op := [.badd 1753 1849,.badd 1849 1860,.badd 1854 1859,.bxor 1857 1858,.band 1807 1780,.bxor 1855 1856,.band 1834 1780,.band 1834 1807,.bxor 1852 1853,.rotr 1834 22,.bxor 1850 1851,.rotr 1834 13,.rotr 1834 2,.badd 1848 400,.badd 1846 1847,.literal (BitVec.ofNat 32 3516065817),.badd 1841 1845,.bxor 1842 1844,.band 1843 1781,.bnot 1835,.band 1835 1808,.badd 1754 1840,.bxor 1838 1839,.rotr 1835 25,.bxor 1836 1837,.rotr 1835 11,.rotr 1835 6]++ops92
attribute [irreducible] ops93
theorem len93 : ops93.length=1839 := by simp only [ops93,List.length_append,List.length_cons,List.length_nil,len92]
def b93 : Builder := ⟨24,ops93⟩
def s93 : SHA256Stage.State := ⟨1861,1834,1807,1780,1862,1835,1808,1781⟩
theorem step93 : SHA256Stage.round b92 s92 (BitVec.ofNat 32 3516065817) 400 = (s93,b93) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s92,b92,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len92]
  unfold s93 b93 ops93
  rfl
def ops94 : List WordIR.Op := [.badd 1780 1876,.badd 1876 1887,.badd 1881 1886,.bxor 1884 1885,.band 1834 1807,.bxor 1882 1883,.band 1861 1807,.band 1861 1834,.bxor 1879 1880,.rotr 1861 22,.bxor 1877 1878,.rotr 1861 13,.rotr 1861 2,.badd 1875 413,.badd 1873 1874,.literal (BitVec.ofNat 32 3600352804),.badd 1868 1872,.bxor 1869 1871,.band 1870 1808,.bnot 1862,.band 1862 1835,.badd 1781 1867,.bxor 1865 1866,.rotr 1862 25,.bxor 1863 1864,.rotr 1862 11,.rotr 1862 6]++ops93
attribute [irreducible] ops94
theorem len94 : ops94.length=1866 := by simp only [ops94,List.length_append,List.length_cons,List.length_nil,len93]
def b94 : Builder := ⟨24,ops94⟩
def s94 : SHA256Stage.State := ⟨1888,1861,1834,1807,1889,1862,1835,1808⟩
theorem step94 : SHA256Stage.round b93 s93 (BitVec.ofNat 32 3600352804) 413 = (s94,b94) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s93,b93,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len93]
  unfold s94 b94 ops94
  rfl
def ops95 : List WordIR.Op := [.badd 1807 1903,.badd 1903 1914,.badd 1908 1913,.bxor 1911 1912,.band 1861 1834,.bxor 1909 1910,.band 1888 1834,.band 1888 1861,.bxor 1906 1907,.rotr 1888 22,.bxor 1904 1905,.rotr 1888 13,.rotr 1888 2,.badd 1902 426,.badd 1900 1901,.literal (BitVec.ofNat 32 4094571909),.badd 1895 1899,.bxor 1896 1898,.band 1897 1835,.bnot 1889,.band 1889 1862,.badd 1808 1894,.bxor 1892 1893,.rotr 1889 25,.bxor 1890 1891,.rotr 1889 11,.rotr 1889 6]++ops94
attribute [irreducible] ops95
theorem len95 : ops95.length=1893 := by simp only [ops95,List.length_append,List.length_cons,List.length_nil,len94]
def b95 : Builder := ⟨24,ops95⟩
def s95 : SHA256Stage.State := ⟨1915,1888,1861,1834,1916,1889,1862,1835⟩
theorem step95 : SHA256Stage.round b94 s94 (BitVec.ofNat 32 4094571909) 426 = (s95,b95) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s94,b94,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len94]
  unfold s95 b95 ops95
  rfl
def ops96 : List WordIR.Op := [.badd 1834 1930,.badd 1930 1941,.badd 1935 1940,.bxor 1938 1939,.band 1888 1861,.bxor 1936 1937,.band 1915 1861,.band 1915 1888,.bxor 1933 1934,.rotr 1915 22,.bxor 1931 1932,.rotr 1915 13,.rotr 1915 2,.badd 1929 439,.badd 1927 1928,.literal (BitVec.ofNat 32 275423344),.badd 1922 1926,.bxor 1923 1925,.band 1924 1862,.bnot 1916,.band 1916 1889,.badd 1835 1921,.bxor 1919 1920,.rotr 1916 25,.bxor 1917 1918,.rotr 1916 11,.rotr 1916 6]++ops95
attribute [irreducible] ops96
theorem len96 : ops96.length=1920 := by simp only [ops96,List.length_append,List.length_cons,List.length_nil,len95]
def b96 : Builder := ⟨24,ops96⟩
def s96 : SHA256Stage.State := ⟨1942,1915,1888,1861,1943,1916,1889,1862⟩
theorem step96 : SHA256Stage.round b95 s95 (BitVec.ofNat 32 275423344) 439 = (s96,b96) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s95,b95,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len95]
  unfold s96 b96 ops96
  rfl
def ops97 : List WordIR.Op := [.badd 1861 1957,.badd 1957 1968,.badd 1962 1967,.bxor 1965 1966,.band 1915 1888,.bxor 1963 1964,.band 1942 1888,.band 1942 1915,.bxor 1960 1961,.rotr 1942 22,.bxor 1958 1959,.rotr 1942 13,.rotr 1942 2,.badd 1956 452,.badd 1954 1955,.literal (BitVec.ofNat 32 430227734),.badd 1949 1953,.bxor 1950 1952,.band 1951 1889,.bnot 1943,.band 1943 1916,.badd 1862 1948,.bxor 1946 1947,.rotr 1943 25,.bxor 1944 1945,.rotr 1943 11,.rotr 1943 6]++ops96
attribute [irreducible] ops97
theorem len97 : ops97.length=1947 := by simp only [ops97,List.length_append,List.length_cons,List.length_nil,len96]
def b97 : Builder := ⟨24,ops97⟩
def s97 : SHA256Stage.State := ⟨1969,1942,1915,1888,1970,1943,1916,1889⟩
theorem step97 : SHA256Stage.round b96 s96 (BitVec.ofNat 32 430227734) 452 = (s97,b97) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s96,b96,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len96]
  unfold s97 b97 ops97
  rfl
def ops98 : List WordIR.Op := [.badd 1888 1984,.badd 1984 1995,.badd 1989 1994,.bxor 1992 1993,.band 1942 1915,.bxor 1990 1991,.band 1969 1915,.band 1969 1942,.bxor 1987 1988,.rotr 1969 22,.bxor 1985 1986,.rotr 1969 13,.rotr 1969 2,.badd 1983 465,.badd 1981 1982,.literal (BitVec.ofNat 32 506948616),.badd 1976 1980,.bxor 1977 1979,.band 1978 1916,.bnot 1970,.band 1970 1943,.badd 1889 1975,.bxor 1973 1974,.rotr 1970 25,.bxor 1971 1972,.rotr 1970 11,.rotr 1970 6]++ops97
attribute [irreducible] ops98
theorem len98 : ops98.length=1974 := by simp only [ops98,List.length_append,List.length_cons,List.length_nil,len97]
def b98 : Builder := ⟨24,ops98⟩
def s98 : SHA256Stage.State := ⟨1996,1969,1942,1915,1997,1970,1943,1916⟩
theorem step98 : SHA256Stage.round b97 s97 (BitVec.ofNat 32 506948616) 465 = (s98,b98) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s97,b97,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len97]
  unfold s98 b98 ops98
  rfl
def ops99 : List WordIR.Op := [.badd 1915 2011,.badd 2011 2022,.badd 2016 2021,.bxor 2019 2020,.band 1969 1942,.bxor 2017 2018,.band 1996 1942,.band 1996 1969,.bxor 2014 2015,.rotr 1996 22,.bxor 2012 2013,.rotr 1996 13,.rotr 1996 2,.badd 2010 478,.badd 2008 2009,.literal (BitVec.ofNat 32 659060556),.badd 2003 2007,.bxor 2004 2006,.band 2005 1943,.bnot 1997,.band 1997 1970,.badd 1916 2002,.bxor 2000 2001,.rotr 1997 25,.bxor 1998 1999,.rotr 1997 11,.rotr 1997 6]++ops98
attribute [irreducible] ops99
theorem len99 : ops99.length=2001 := by simp only [ops99,List.length_append,List.length_cons,List.length_nil,len98]
def b99 : Builder := ⟨24,ops99⟩
def s99 : SHA256Stage.State := ⟨2023,1996,1969,1942,2024,1997,1970,1943⟩
theorem step99 : SHA256Stage.round b98 s98 (BitVec.ofNat 32 659060556) 478 = (s99,b99) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s98,b98,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len98]
  unfold s99 b99 ops99
  rfl
def ops100 : List WordIR.Op := [.badd 1942 2038,.badd 2038 2049,.badd 2043 2048,.bxor 2046 2047,.band 1996 1969,.bxor 2044 2045,.band 2023 1969,.band 2023 1996,.bxor 2041 2042,.rotr 2023 22,.bxor 2039 2040,.rotr 2023 13,.rotr 2023 2,.badd 2037 491,.badd 2035 2036,.literal (BitVec.ofNat 32 883997877),.badd 2030 2034,.bxor 2031 2033,.band 2032 1970,.bnot 2024,.band 2024 1997,.badd 1943 2029,.bxor 2027 2028,.rotr 2024 25,.bxor 2025 2026,.rotr 2024 11,.rotr 2024 6]++ops99
attribute [irreducible] ops100
theorem len100 : ops100.length=2028 := by simp only [ops100,List.length_append,List.length_cons,List.length_nil,len99]
def b100 : Builder := ⟨24,ops100⟩
def s100 : SHA256Stage.State := ⟨2050,2023,1996,1969,2051,2024,1997,1970⟩
theorem step100 : SHA256Stage.round b99 s99 (BitVec.ofNat 32 883997877) 491 = (s100,b100) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s99,b99,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len99]
  unfold s100 b100 ops100
  rfl
def ops101 : List WordIR.Op := [.badd 1969 2065,.badd 2065 2076,.badd 2070 2075,.bxor 2073 2074,.band 2023 1996,.bxor 2071 2072,.band 2050 1996,.band 2050 2023,.bxor 2068 2069,.rotr 2050 22,.bxor 2066 2067,.rotr 2050 13,.rotr 2050 2,.badd 2064 504,.badd 2062 2063,.literal (BitVec.ofNat 32 958139571),.badd 2057 2061,.bxor 2058 2060,.band 2059 1997,.bnot 2051,.band 2051 2024,.badd 1970 2056,.bxor 2054 2055,.rotr 2051 25,.bxor 2052 2053,.rotr 2051 11,.rotr 2051 6]++ops100
attribute [irreducible] ops101
theorem len101 : ops101.length=2055 := by simp only [ops101,List.length_append,List.length_cons,List.length_nil,len100]
def b101 : Builder := ⟨24,ops101⟩
def s101 : SHA256Stage.State := ⟨2077,2050,2023,1996,2078,2051,2024,1997⟩
theorem step101 : SHA256Stage.round b100 s100 (BitVec.ofNat 32 958139571) 504 = (s101,b101) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s100,b100,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len100]
  unfold s101 b101 ops101
  rfl
def ops102 : List WordIR.Op := [.badd 1996 2092,.badd 2092 2103,.badd 2097 2102,.bxor 2100 2101,.band 2050 2023,.bxor 2098 2099,.band 2077 2023,.band 2077 2050,.bxor 2095 2096,.rotr 2077 22,.bxor 2093 2094,.rotr 2077 13,.rotr 2077 2,.badd 2091 517,.badd 2089 2090,.literal (BitVec.ofNat 32 1322822218),.badd 2084 2088,.bxor 2085 2087,.band 2086 2024,.bnot 2078,.band 2078 2051,.badd 1997 2083,.bxor 2081 2082,.rotr 2078 25,.bxor 2079 2080,.rotr 2078 11,.rotr 2078 6]++ops101
attribute [irreducible] ops102
theorem len102 : ops102.length=2082 := by simp only [ops102,List.length_append,List.length_cons,List.length_nil,len101]
def b102 : Builder := ⟨24,ops102⟩
def s102 : SHA256Stage.State := ⟨2104,2077,2050,2023,2105,2078,2051,2024⟩
theorem step102 : SHA256Stage.round b101 s101 (BitVec.ofNat 32 1322822218) 517 = (s102,b102) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s101,b101,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len101]
  unfold s102 b102 ops102
  rfl
def ops103 : List WordIR.Op := [.badd 2023 2119,.badd 2119 2130,.badd 2124 2129,.bxor 2127 2128,.band 2077 2050,.bxor 2125 2126,.band 2104 2050,.band 2104 2077,.bxor 2122 2123,.rotr 2104 22,.bxor 2120 2121,.rotr 2104 13,.rotr 2104 2,.badd 2118 530,.badd 2116 2117,.literal (BitVec.ofNat 32 1537002063),.badd 2111 2115,.bxor 2112 2114,.band 2113 2051,.bnot 2105,.band 2105 2078,.badd 2024 2110,.bxor 2108 2109,.rotr 2105 25,.bxor 2106 2107,.rotr 2105 11,.rotr 2105 6]++ops102
attribute [irreducible] ops103
theorem len103 : ops103.length=2109 := by simp only [ops103,List.length_append,List.length_cons,List.length_nil,len102]
def b103 : Builder := ⟨24,ops103⟩
def s103 : SHA256Stage.State := ⟨2131,2104,2077,2050,2132,2105,2078,2051⟩
theorem step103 : SHA256Stage.round b102 s102 (BitVec.ofNat 32 1537002063) 530 = (s103,b103) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s102,b102,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len102]
  unfold s103 b103 ops103
  rfl
def ops104 : List WordIR.Op := [.badd 2050 2146,.badd 2146 2157,.badd 2151 2156,.bxor 2154 2155,.band 2104 2077,.bxor 2152 2153,.band 2131 2077,.band 2131 2104,.bxor 2149 2150,.rotr 2131 22,.bxor 2147 2148,.rotr 2131 13,.rotr 2131 2,.badd 2145 543,.badd 2143 2144,.literal (BitVec.ofNat 32 1747873779),.badd 2138 2142,.bxor 2139 2141,.band 2140 2078,.bnot 2132,.band 2132 2105,.badd 2051 2137,.bxor 2135 2136,.rotr 2132 25,.bxor 2133 2134,.rotr 2132 11,.rotr 2132 6]++ops103
attribute [irreducible] ops104
theorem len104 : ops104.length=2136 := by simp only [ops104,List.length_append,List.length_cons,List.length_nil,len103]
def b104 : Builder := ⟨24,ops104⟩
def s104 : SHA256Stage.State := ⟨2158,2131,2104,2077,2159,2132,2105,2078⟩
theorem step104 : SHA256Stage.round b103 s103 (BitVec.ofNat 32 1747873779) 543 = (s104,b104) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s103,b103,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len103]
  unfold s104 b104 ops104
  rfl
def ops105 : List WordIR.Op := [.badd 2077 2173,.badd 2173 2184,.badd 2178 2183,.bxor 2181 2182,.band 2131 2104,.bxor 2179 2180,.band 2158 2104,.band 2158 2131,.bxor 2176 2177,.rotr 2158 22,.bxor 2174 2175,.rotr 2158 13,.rotr 2158 2,.badd 2172 556,.badd 2170 2171,.literal (BitVec.ofNat 32 1955562222),.badd 2165 2169,.bxor 2166 2168,.band 2167 2105,.bnot 2159,.band 2159 2132,.badd 2078 2164,.bxor 2162 2163,.rotr 2159 25,.bxor 2160 2161,.rotr 2159 11,.rotr 2159 6]++ops104
attribute [irreducible] ops105
theorem len105 : ops105.length=2163 := by simp only [ops105,List.length_append,List.length_cons,List.length_nil,len104]
def b105 : Builder := ⟨24,ops105⟩
def s105 : SHA256Stage.State := ⟨2185,2158,2131,2104,2186,2159,2132,2105⟩
theorem step105 : SHA256Stage.round b104 s104 (BitVec.ofNat 32 1955562222) 556 = (s105,b105) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s104,b104,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len104]
  unfold s105 b105 ops105
  rfl
def ops106 : List WordIR.Op := [.badd 2104 2200,.badd 2200 2211,.badd 2205 2210,.bxor 2208 2209,.band 2158 2131,.bxor 2206 2207,.band 2185 2131,.band 2185 2158,.bxor 2203 2204,.rotr 2185 22,.bxor 2201 2202,.rotr 2185 13,.rotr 2185 2,.badd 2199 569,.badd 2197 2198,.literal (BitVec.ofNat 32 2024104815),.badd 2192 2196,.bxor 2193 2195,.band 2194 2132,.bnot 2186,.band 2186 2159,.badd 2105 2191,.bxor 2189 2190,.rotr 2186 25,.bxor 2187 2188,.rotr 2186 11,.rotr 2186 6]++ops105
attribute [irreducible] ops106
theorem len106 : ops106.length=2190 := by simp only [ops106,List.length_append,List.length_cons,List.length_nil,len105]
def b106 : Builder := ⟨24,ops106⟩
def s106 : SHA256Stage.State := ⟨2212,2185,2158,2131,2213,2186,2159,2132⟩
theorem step106 : SHA256Stage.round b105 s105 (BitVec.ofNat 32 2024104815) 569 = (s106,b106) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s105,b105,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len105]
  unfold s106 b106 ops106
  rfl
def ops107 : List WordIR.Op := [.badd 2131 2227,.badd 2227 2238,.badd 2232 2237,.bxor 2235 2236,.band 2185 2158,.bxor 2233 2234,.band 2212 2158,.band 2212 2185,.bxor 2230 2231,.rotr 2212 22,.bxor 2228 2229,.rotr 2212 13,.rotr 2212 2,.badd 2226 582,.badd 2224 2225,.literal (BitVec.ofNat 32 2227730452),.badd 2219 2223,.bxor 2220 2222,.band 2221 2159,.bnot 2213,.band 2213 2186,.badd 2132 2218,.bxor 2216 2217,.rotr 2213 25,.bxor 2214 2215,.rotr 2213 11,.rotr 2213 6]++ops106
attribute [irreducible] ops107
theorem len107 : ops107.length=2217 := by simp only [ops107,List.length_append,List.length_cons,List.length_nil,len106]
def b107 : Builder := ⟨24,ops107⟩
def s107 : SHA256Stage.State := ⟨2239,2212,2185,2158,2240,2213,2186,2159⟩
theorem step107 : SHA256Stage.round b106 s106 (BitVec.ofNat 32 2227730452) 582 = (s107,b107) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s106,b106,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len106]
  unfold s107 b107 ops107
  rfl
def ops108 : List WordIR.Op := [.badd 2158 2254,.badd 2254 2265,.badd 2259 2264,.bxor 2262 2263,.band 2212 2185,.bxor 2260 2261,.band 2239 2185,.band 2239 2212,.bxor 2257 2258,.rotr 2239 22,.bxor 2255 2256,.rotr 2239 13,.rotr 2239 2,.badd 2253 595,.badd 2251 2252,.literal (BitVec.ofNat 32 2361852424),.badd 2246 2250,.bxor 2247 2249,.band 2248 2186,.bnot 2240,.band 2240 2213,.badd 2159 2245,.bxor 2243 2244,.rotr 2240 25,.bxor 2241 2242,.rotr 2240 11,.rotr 2240 6]++ops107
attribute [irreducible] ops108
theorem len108 : ops108.length=2244 := by simp only [ops108,List.length_append,List.length_cons,List.length_nil,len107]
def b108 : Builder := ⟨24,ops108⟩
def s108 : SHA256Stage.State := ⟨2266,2239,2212,2185,2267,2240,2213,2186⟩
theorem step108 : SHA256Stage.round b107 s107 (BitVec.ofNat 32 2361852424) 595 = (s108,b108) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s107,b107,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len107]
  unfold s108 b108 ops108
  rfl
def ops109 : List WordIR.Op := [.badd 2185 2281,.badd 2281 2292,.badd 2286 2291,.bxor 2289 2290,.band 2239 2212,.bxor 2287 2288,.band 2266 2212,.band 2266 2239,.bxor 2284 2285,.rotr 2266 22,.bxor 2282 2283,.rotr 2266 13,.rotr 2266 2,.badd 2280 608,.badd 2278 2279,.literal (BitVec.ofNat 32 2428436474),.badd 2273 2277,.bxor 2274 2276,.band 2275 2213,.bnot 2267,.band 2267 2240,.badd 2186 2272,.bxor 2270 2271,.rotr 2267 25,.bxor 2268 2269,.rotr 2267 11,.rotr 2267 6]++ops108
attribute [irreducible] ops109
theorem len109 : ops109.length=2271 := by simp only [ops109,List.length_append,List.length_cons,List.length_nil,len108]
def b109 : Builder := ⟨24,ops109⟩
def s109 : SHA256Stage.State := ⟨2293,2266,2239,2212,2294,2267,2240,2213⟩
theorem step109 : SHA256Stage.round b108 s108 (BitVec.ofNat 32 2428436474) 608 = (s109,b109) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s108,b108,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len108]
  unfold s109 b109 ops109
  rfl
def ops110 : List WordIR.Op := [.badd 2212 2308,.badd 2308 2319,.badd 2313 2318,.bxor 2316 2317,.band 2266 2239,.bxor 2314 2315,.band 2293 2239,.band 2293 2266,.bxor 2311 2312,.rotr 2293 22,.bxor 2309 2310,.rotr 2293 13,.rotr 2293 2,.badd 2307 621,.badd 2305 2306,.literal (BitVec.ofNat 32 2756734187),.badd 2300 2304,.bxor 2301 2303,.band 2302 2240,.bnot 2294,.band 2294 2267,.badd 2213 2299,.bxor 2297 2298,.rotr 2294 25,.bxor 2295 2296,.rotr 2294 11,.rotr 2294 6]++ops109
attribute [irreducible] ops110
theorem len110 : ops110.length=2298 := by simp only [ops110,List.length_append,List.length_cons,List.length_nil,len109]
def b110 : Builder := ⟨24,ops110⟩
def s110 : SHA256Stage.State := ⟨2320,2293,2266,2239,2321,2294,2267,2240⟩
theorem step110 : SHA256Stage.round b109 s109 (BitVec.ofNat 32 2756734187) 621 = (s110,b110) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s109,b109,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len109]
  unfold s110 b110 ops110
  rfl
def ops111 : List WordIR.Op := [.badd 2239 2335,.badd 2335 2346,.badd 2340 2345,.bxor 2343 2344,.band 2293 2266,.bxor 2341 2342,.band 2320 2266,.band 2320 2293,.bxor 2338 2339,.rotr 2320 22,.bxor 2336 2337,.rotr 2320 13,.rotr 2320 2,.badd 2334 634,.badd 2332 2333,.literal (BitVec.ofNat 32 3204031479),.badd 2327 2331,.bxor 2328 2330,.band 2329 2267,.bnot 2321,.band 2321 2294,.badd 2240 2326,.bxor 2324 2325,.rotr 2321 25,.bxor 2322 2323,.rotr 2321 11,.rotr 2321 6]++ops110
attribute [irreducible] ops111
theorem len111 : ops111.length=2325 := by simp only [ops111,List.length_append,List.length_cons,List.length_nil,len110]
def b111 : Builder := ⟨24,ops111⟩
def s111 : SHA256Stage.State := ⟨2347,2320,2293,2266,2348,2321,2294,2267⟩
theorem step111 : SHA256Stage.round b110 s110 (BitVec.ofNat 32 3204031479) 634 = (s111,b111) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s110,b110,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len110]
  unfold s111 b111 ops111
  rfl
def ops112 : List WordIR.Op := [.badd 2266 2362,.badd 2362 2373,.badd 2367 2372,.bxor 2370 2371,.band 2320 2293,.bxor 2368 2369,.band 2347 2293,.band 2347 2320,.bxor 2365 2366,.rotr 2347 22,.bxor 2363 2364,.rotr 2347 13,.rotr 2347 2,.badd 2361 647,.badd 2359 2360,.literal (BitVec.ofNat 32 3329325298),.badd 2354 2358,.bxor 2355 2357,.band 2356 2294,.bnot 2348,.band 2348 2321,.badd 2267 2353,.bxor 2351 2352,.rotr 2348 25,.bxor 2349 2350,.rotr 2348 11,.rotr 2348 6]++ops111
attribute [irreducible] ops112
theorem len112 : ops112.length=2352 := by simp only [ops112,List.length_append,List.length_cons,List.length_nil,len111]
def b112 : Builder := ⟨24,ops112⟩
def s112 : SHA256Stage.State := ⟨2374,2347,2320,2293,2375,2348,2321,2294⟩
theorem step112 : SHA256Stage.round b111 s111 (BitVec.ofNat 32 3329325298) 647 = (s112,b112) := by
  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s111,b111,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len111]
  unfold s112 b112 ops112
  rfl
end Core033.SHAMaterialized
