import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup172
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11008 : List WordIR.Op := [.bnot 11103]
def bytes11008 : Bytes := ("    let r00002b60: u32 = !r00002b5f;\n" : String).toByteArray.data.toList
theorem checked11008 : bytes11008=statementBytes 11104 (op11008.map lower) ∧ bytes11008.length=37 := by core033_kernel_decide
def op11009 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11009 : Bytes := ("    let r00002b61: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11009 : bytes11009=statementBytes 11105 (op11009.map lower) ∧ bytes11009.length=41 := by core033_kernel_decide
def op11010 : List WordIR.Op := [.badd 11104 11105]
def bytes11010 : Bytes := ("    let r00002b62: u32 = r00002b60.wrapping_add(r00002b61);\n" : String).toByteArray.data.toList
theorem checked11010 : bytes11010=statementBytes 11106 (op11010.map lower) ∧ bytes11010.length=60 := by core033_kernel_decide
def op11011 : List WordIR.Op := [.bnot 11106]
def bytes11011 : Bytes := ("    let r00002b63: u32 = !r00002b62;\n" : String).toByteArray.data.toList
theorem checked11011 : bytes11011=statementBytes 11107 (op11011.map lower) ∧ bytes11011.length=37 := by core033_kernel_decide
def op11012 : List WordIR.Op := [.band 11107 682]
def bytes11012 : Bytes := ("    let r00002b64: u32 = r00002b63 & r000002aa;\n" : String).toByteArray.data.toList
theorem checked11012 : bytes11012=statementBytes 11108 (op11012.map lower) ∧ bytes11012.length=48 := by core033_kernel_decide
def op11013 : List WordIR.Op := [.bxor 11082 11108]
def bytes11013 : Bytes := ("    let r00002b65: u32 = r00002b4a ^ r00002b64;\n" : String).toByteArray.data.toList
theorem checked11013 : bytes11013=statementBytes 11109 (op11013.map lower) ∧ bytes11013.length=48 := by core033_kernel_decide
def op11014 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11014 : Bytes := ("    let r00002b66: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11014 : bytes11014=statementBytes 11110 (op11014.map lower) ∧ bytes11014.length=41 := by core033_kernel_decide
def op11015 : List WordIR.Op := [.bxor 442 11110]
def bytes11015 : Bytes := ("    let r00002b67: u32 = r000001ba ^ r00002b66;\n" : String).toByteArray.data.toList
theorem checked11015 : bytes11015=statementBytes 11111 (op11015.map lower) ∧ bytes11015.length=48 := by core033_kernel_decide
def op11016 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11016 : Bytes := ("    let r00002b68: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11016 : bytes11016=statementBytes 11112 (op11016.map lower) ∧ bytes11016.length=41 := by core033_kernel_decide
def op11017 : List WordIR.Op := [.bnot 11112]
def bytes11017 : Bytes := ("    let r00002b69: u32 = !r00002b68;\n" : String).toByteArray.data.toList
theorem checked11017 : bytes11017=statementBytes 11113 (op11017.map lower) ∧ bytes11017.length=37 := by core033_kernel_decide
def op11018 : List WordIR.Op := [.band 11111 11113]
def bytes11018 : Bytes := ("    let r00002b6a: u32 = r00002b67 & r00002b69;\n" : String).toByteArray.data.toList
theorem checked11018 : bytes11018=statementBytes 11114 (op11018.map lower) ∧ bytes11018.length=48 := by core033_kernel_decide
def op11019 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11019 : Bytes := ("    let r00002b6b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11019 : bytes11019=statementBytes 11115 (op11019.map lower) ∧ bytes11019.length=41 := by core033_kernel_decide
def op11020 : List WordIR.Op := [.bxor 442 11115]
def bytes11020 : Bytes := ("    let r00002b6c: u32 = r000001ba ^ r00002b6b;\n" : String).toByteArray.data.toList
theorem checked11020 : bytes11020=statementBytes 11116 (op11020.map lower) ∧ bytes11020.length=48 := by core033_kernel_decide
def op11021 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11021 : Bytes := ("    let r00002b6d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11021 : bytes11021=statementBytes 11117 (op11021.map lower) ∧ bytes11021.length=41 := by core033_kernel_decide
def op11022 : List WordIR.Op := [.bnot 11117]
def bytes11022 : Bytes := ("    let r00002b6e: u32 = !r00002b6d;\n" : String).toByteArray.data.toList
theorem checked11022 : bytes11022=statementBytes 11118 (op11022.map lower) ∧ bytes11022.length=37 := by core033_kernel_decide
def op11023 : List WordIR.Op := [.bxor 11116 11118]
def bytes11023 : Bytes := ("    let r00002b6f: u32 = r00002b6c ^ r00002b6e;\n" : String).toByteArray.data.toList
theorem checked11023 : bytes11023=statementBytes 11119 (op11023.map lower) ∧ bytes11023.length=48 := by core033_kernel_decide
def op11024 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11024 : Bytes := ("    let r00002b70: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11024 : bytes11024=statementBytes 11120 (op11024.map lower) ∧ bytes11024.length=41 := by core033_kernel_decide
def op11025 : List WordIR.Op := [.bxor 442 11120]
def bytes11025 : Bytes := ("    let r00002b71: u32 = r000001ba ^ r00002b70;\n" : String).toByteArray.data.toList
theorem checked11025 : bytes11025=statementBytes 11121 (op11025.map lower) ∧ bytes11025.length=48 := by core033_kernel_decide
def op11026 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11026 : Bytes := ("    let r00002b72: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11026 : bytes11026=statementBytes 11122 (op11026.map lower) ∧ bytes11026.length=41 := by core033_kernel_decide
def op11027 : List WordIR.Op := [.bnot 11122]
def bytes11027 : Bytes := ("    let r00002b73: u32 = !r00002b72;\n" : String).toByteArray.data.toList
theorem checked11027 : bytes11027=statementBytes 11123 (op11027.map lower) ∧ bytes11027.length=37 := by core033_kernel_decide
def op11028 : List WordIR.Op := [.badd 11121 11123]
def bytes11028 : Bytes := ("    let r00002b74: u32 = r00002b71.wrapping_add(r00002b73);\n" : String).toByteArray.data.toList
theorem checked11028 : bytes11028=statementBytes 11124 (op11028.map lower) ∧ bytes11028.length=60 := by core033_kernel_decide
def op11029 : List WordIR.Op := [.bnot 11124]
def bytes11029 : Bytes := ("    let r00002b75: u32 = !r00002b74;\n" : String).toByteArray.data.toList
theorem checked11029 : bytes11029=statementBytes 11125 (op11029.map lower) ∧ bytes11029.length=37 := by core033_kernel_decide
def op11030 : List WordIR.Op := [.band 11119 11125]
def bytes11030 : Bytes := ("    let r00002b76: u32 = r00002b6f & r00002b75;\n" : String).toByteArray.data.toList
theorem checked11030 : bytes11030=statementBytes 11126 (op11030.map lower) ∧ bytes11030.length=48 := by core033_kernel_decide
def op11031 : List WordIR.Op := [.bxor 11114 11126]
def bytes11031 : Bytes := ("    let r00002b77: u32 = r00002b6a ^ r00002b76;\n" : String).toByteArray.data.toList
theorem checked11031 : bytes11031=statementBytes 11127 (op11031.map lower) ∧ bytes11031.length=48 := by core033_kernel_decide
def op11032 : List WordIR.Op := [.shr 11127 31]
def bytes11032 : Bytes := ("    let r00002b78: u32 = r00002b77 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11032 : bytes11032=statementBytes 11128 (op11032.map lower) ∧ bytes11032.length=54 := by core033_kernel_decide
def op11033 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11033 : Bytes := ("    let r00002b79: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11033 : bytes11033=statementBytes 11129 (op11033.map lower) ∧ bytes11033.length=41 := by core033_kernel_decide
def op11034 : List WordIR.Op := [.bxor 11128 11129]
def bytes11034 : Bytes := ("    let r00002b7a: u32 = r00002b78 ^ r00002b79;\n" : String).toByteArray.data.toList
theorem checked11034 : bytes11034=statementBytes 11130 (op11034.map lower) ∧ bytes11034.length=48 := by core033_kernel_decide
def op11035 : List WordIR.Op := [.bnot 11130]
def bytes11035 : Bytes := ("    let r00002b7b: u32 = !r00002b7a;\n" : String).toByteArray.data.toList
theorem checked11035 : bytes11035=statementBytes 11131 (op11035.map lower) ∧ bytes11035.length=37 := by core033_kernel_decide
def op11036 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11036 : Bytes := ("    let r00002b7c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11036 : bytes11036=statementBytes 11132 (op11036.map lower) ∧ bytes11036.length=41 := by core033_kernel_decide
def op11037 : List WordIR.Op := [.badd 11131 11132]
def bytes11037 : Bytes := ("    let r00002b7d: u32 = r00002b7b.wrapping_add(r00002b7c);\n" : String).toByteArray.data.toList
theorem checked11037 : bytes11037=statementBytes 11133 (op11037.map lower) ∧ bytes11037.length=60 := by core033_kernel_decide
def op11038 : List WordIR.Op := [.band 11133 10014]
def bytes11038 : Bytes := ("    let r00002b7e: u32 = r00002b7d & r0000271e;\n" : String).toByteArray.data.toList
theorem checked11038 : bytes11038=statementBytes 11134 (op11038.map lower) ∧ bytes11038.length=48 := by core033_kernel_decide
def op11039 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11039 : Bytes := ("    let r00002b7f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11039 : bytes11039=statementBytes 11135 (op11039.map lower) ∧ bytes11039.length=41 := by core033_kernel_decide
def op11040 : List WordIR.Op := [.bxor 442 11135]
def bytes11040 : Bytes := ("    let r00002b80: u32 = r000001ba ^ r00002b7f;\n" : String).toByteArray.data.toList
theorem checked11040 : bytes11040=statementBytes 11136 (op11040.map lower) ∧ bytes11040.length=48 := by core033_kernel_decide
def op11041 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11041 : Bytes := ("    let r00002b81: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11041 : bytes11041=statementBytes 11137 (op11041.map lower) ∧ bytes11041.length=41 := by core033_kernel_decide
def op11042 : List WordIR.Op := [.bnot 11137]
def bytes11042 : Bytes := ("    let r00002b82: u32 = !r00002b81;\n" : String).toByteArray.data.toList
theorem checked11042 : bytes11042=statementBytes 11138 (op11042.map lower) ∧ bytes11042.length=37 := by core033_kernel_decide
def op11043 : List WordIR.Op := [.band 11136 11138]
def bytes11043 : Bytes := ("    let r00002b83: u32 = r00002b80 & r00002b82;\n" : String).toByteArray.data.toList
theorem checked11043 : bytes11043=statementBytes 11139 (op11043.map lower) ∧ bytes11043.length=48 := by core033_kernel_decide
def op11044 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11044 : Bytes := ("    let r00002b84: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11044 : bytes11044=statementBytes 11140 (op11044.map lower) ∧ bytes11044.length=41 := by core033_kernel_decide
def op11045 : List WordIR.Op := [.bxor 442 11140]
def bytes11045 : Bytes := ("    let r00002b85: u32 = r000001ba ^ r00002b84;\n" : String).toByteArray.data.toList
theorem checked11045 : bytes11045=statementBytes 11141 (op11045.map lower) ∧ bytes11045.length=48 := by core033_kernel_decide
def op11046 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11046 : Bytes := ("    let r00002b86: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11046 : bytes11046=statementBytes 11142 (op11046.map lower) ∧ bytes11046.length=41 := by core033_kernel_decide
def op11047 : List WordIR.Op := [.bnot 11142]
def bytes11047 : Bytes := ("    let r00002b87: u32 = !r00002b86;\n" : String).toByteArray.data.toList
theorem checked11047 : bytes11047=statementBytes 11143 (op11047.map lower) ∧ bytes11047.length=37 := by core033_kernel_decide
def op11048 : List WordIR.Op := [.bxor 11141 11143]
def bytes11048 : Bytes := ("    let r00002b88: u32 = r00002b85 ^ r00002b87;\n" : String).toByteArray.data.toList
theorem checked11048 : bytes11048=statementBytes 11144 (op11048.map lower) ∧ bytes11048.length=48 := by core033_kernel_decide
def op11049 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11049 : Bytes := ("    let r00002b89: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11049 : bytes11049=statementBytes 11145 (op11049.map lower) ∧ bytes11049.length=41 := by core033_kernel_decide
def op11050 : List WordIR.Op := [.bxor 442 11145]
def bytes11050 : Bytes := ("    let r00002b8a: u32 = r000001ba ^ r00002b89;\n" : String).toByteArray.data.toList
theorem checked11050 : bytes11050=statementBytes 11146 (op11050.map lower) ∧ bytes11050.length=48 := by core033_kernel_decide
def op11051 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11051 : Bytes := ("    let r00002b8b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11051 : bytes11051=statementBytes 11147 (op11051.map lower) ∧ bytes11051.length=41 := by core033_kernel_decide
def op11052 : List WordIR.Op := [.bnot 11147]
def bytes11052 : Bytes := ("    let r00002b8c: u32 = !r00002b8b;\n" : String).toByteArray.data.toList
theorem checked11052 : bytes11052=statementBytes 11148 (op11052.map lower) ∧ bytes11052.length=37 := by core033_kernel_decide
def op11053 : List WordIR.Op := [.badd 11146 11148]
def bytes11053 : Bytes := ("    let r00002b8d: u32 = r00002b8a.wrapping_add(r00002b8c);\n" : String).toByteArray.data.toList
theorem checked11053 : bytes11053=statementBytes 11149 (op11053.map lower) ∧ bytes11053.length=60 := by core033_kernel_decide
def op11054 : List WordIR.Op := [.bnot 11149]
def bytes11054 : Bytes := ("    let r00002b8e: u32 = !r00002b8d;\n" : String).toByteArray.data.toList
theorem checked11054 : bytes11054=statementBytes 11150 (op11054.map lower) ∧ bytes11054.length=37 := by core033_kernel_decide
def op11055 : List WordIR.Op := [.band 11144 11150]
def bytes11055 : Bytes := ("    let r00002b8f: u32 = r00002b88 & r00002b8e;\n" : String).toByteArray.data.toList
theorem checked11055 : bytes11055=statementBytes 11151 (op11055.map lower) ∧ bytes11055.length=48 := by core033_kernel_decide
def op11056 : List WordIR.Op := [.bxor 11139 11151]
def bytes11056 : Bytes := ("    let r00002b90: u32 = r00002b83 ^ r00002b8f;\n" : String).toByteArray.data.toList
theorem checked11056 : bytes11056=statementBytes 11152 (op11056.map lower) ∧ bytes11056.length=48 := by core033_kernel_decide
def op11057 : List WordIR.Op := [.shr 11152 31]
def bytes11057 : Bytes := ("    let r00002b91: u32 = r00002b90 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11057 : bytes11057=statementBytes 11153 (op11057.map lower) ∧ bytes11057.length=54 := by core033_kernel_decide
def op11058 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11058 : Bytes := ("    let r00002b92: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11058 : bytes11058=statementBytes 11154 (op11058.map lower) ∧ bytes11058.length=41 := by core033_kernel_decide
def op11059 : List WordIR.Op := [.bxor 11153 11154]
def bytes11059 : Bytes := ("    let r00002b93: u32 = r00002b91 ^ r00002b92;\n" : String).toByteArray.data.toList
theorem checked11059 : bytes11059=statementBytes 11155 (op11059.map lower) ∧ bytes11059.length=48 := by core033_kernel_decide
def op11060 : List WordIR.Op := [.bnot 11155]
def bytes11060 : Bytes := ("    let r00002b94: u32 = !r00002b93;\n" : String).toByteArray.data.toList
theorem checked11060 : bytes11060=statementBytes 11156 (op11060.map lower) ∧ bytes11060.length=37 := by core033_kernel_decide
def op11061 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11061 : Bytes := ("    let r00002b95: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11061 : bytes11061=statementBytes 11157 (op11061.map lower) ∧ bytes11061.length=41 := by core033_kernel_decide
def op11062 : List WordIR.Op := [.badd 11156 11157]
def bytes11062 : Bytes := ("    let r00002b96: u32 = r00002b94.wrapping_add(r00002b95);\n" : String).toByteArray.data.toList
theorem checked11062 : bytes11062=statementBytes 11158 (op11062.map lower) ∧ bytes11062.length=60 := by core033_kernel_decide
def op11063 : List WordIR.Op := [.bnot 11158]
def bytes11063 : Bytes := ("    let r00002b97: u32 = !r00002b96;\n" : String).toByteArray.data.toList
theorem checked11063 : bytes11063=statementBytes 11159 (op11063.map lower) ∧ bytes11063.length=37 := by core033_kernel_decide
def op11064 : List WordIR.Op := [.band 11159 693]
def bytes11064 : Bytes := ("    let r00002b98: u32 = r00002b97 & r000002b5;\n" : String).toByteArray.data.toList
theorem checked11064 : bytes11064=statementBytes 11160 (op11064.map lower) ∧ bytes11064.length=48 := by core033_kernel_decide
def op11065 : List WordIR.Op := [.bxor 11134 11160]
def bytes11065 : Bytes := ("    let r00002b99: u32 = r00002b7e ^ r00002b98;\n" : String).toByteArray.data.toList
theorem checked11065 : bytes11065=statementBytes 11161 (op11065.map lower) ∧ bytes11065.length=48 := by core033_kernel_decide
def op11066 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11066 : Bytes := ("    let r00002b9a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11066 : bytes11066=statementBytes 11162 (op11066.map lower) ∧ bytes11066.length=41 := by core033_kernel_decide
def op11067 : List WordIR.Op := [.bxor 442 11162]
def bytes11067 : Bytes := ("    let r00002b9b: u32 = r000001ba ^ r00002b9a;\n" : String).toByteArray.data.toList
theorem checked11067 : bytes11067=statementBytes 11163 (op11067.map lower) ∧ bytes11067.length=48 := by core033_kernel_decide
def op11068 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11068 : Bytes := ("    let r00002b9c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11068 : bytes11068=statementBytes 11164 (op11068.map lower) ∧ bytes11068.length=41 := by core033_kernel_decide
def op11069 : List WordIR.Op := [.bnot 11164]
def bytes11069 : Bytes := ("    let r00002b9d: u32 = !r00002b9c;\n" : String).toByteArray.data.toList
theorem checked11069 : bytes11069=statementBytes 11165 (op11069.map lower) ∧ bytes11069.length=37 := by core033_kernel_decide
def op11070 : List WordIR.Op := [.band 11163 11165]
def bytes11070 : Bytes := ("    let r00002b9e: u32 = r00002b9b & r00002b9d;\n" : String).toByteArray.data.toList
theorem checked11070 : bytes11070=statementBytes 11166 (op11070.map lower) ∧ bytes11070.length=48 := by core033_kernel_decide
def op11071 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11071 : Bytes := ("    let r00002b9f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11071 : bytes11071=statementBytes 11167 (op11071.map lower) ∧ bytes11071.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11008,op11009,op11010,op11011,op11012,op11013,op11014,op11015,op11016,op11017,op11018,op11019,op11020,op11021,op11022,op11023,op11024,op11025,op11026,op11027,op11028,op11029,op11030,op11031,op11032,op11033,op11034,op11035,op11036,op11037,op11038,op11039,op11040,op11041,op11042,op11043,op11044,op11045,op11046,op11047,op11048,op11049,op11050,op11051,op11052,op11053,op11054,op11055,op11056,op11057,op11058,op11059,op11060,op11061,op11062,op11063,op11064,op11065,op11066,op11067,op11068,op11069,op11070,op11071]
def chunks : List Bytes := [bytes11008,bytes11009,bytes11010,bytes11011,bytes11012,bytes11013,bytes11014,bytes11015,bytes11016,bytes11017,bytes11018,bytes11019,bytes11020,bytes11021,bytes11022,bytes11023,bytes11024,bytes11025,bytes11026,bytes11027,bytes11028,bytes11029,bytes11030,bytes11031,bytes11032,bytes11033,bytes11034,bytes11035,bytes11036,bytes11037,bytes11038,bytes11039,bytes11040,bytes11041,bytes11042,bytes11043,bytes11044,bytes11045,bytes11046,bytes11047,bytes11048,bytes11049,bytes11050,bytes11051,bytes11052,bytes11053,bytes11054,bytes11055,bytes11056,bytes11057,bytes11058,bytes11059,bytes11060,bytes11061,bytes11062,bytes11063,bytes11064,bytes11065,bytes11066,bytes11067,bytes11068,bytes11069,bytes11070,bytes11071]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11104 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11008.1 (.cons _ _ _ _ _ checked11009.1 (.cons _ _ _ _ _ checked11010.1 (.cons _ _ _ _ _ checked11011.1 (.cons _ _ _ _ _ checked11012.1 (.cons _ _ _ _ _ checked11013.1 (.cons _ _ _ _ _ checked11014.1 (.cons _ _ _ _ _ checked11015.1 (.cons _ _ _ _ _ checked11016.1 (.cons _ _ _ _ _ checked11017.1 (.cons _ _ _ _ _ checked11018.1 (.cons _ _ _ _ _ checked11019.1 (.cons _ _ _ _ _ checked11020.1 (.cons _ _ _ _ _ checked11021.1 (.cons _ _ _ _ _ checked11022.1 (.cons _ _ _ _ _ checked11023.1 (.cons _ _ _ _ _ checked11024.1 (.cons _ _ _ _ _ checked11025.1 (.cons _ _ _ _ _ checked11026.1 (.cons _ _ _ _ _ checked11027.1 (.cons _ _ _ _ _ checked11028.1 (.cons _ _ _ _ _ checked11029.1 (.cons _ _ _ _ _ checked11030.1 (.cons _ _ _ _ _ checked11031.1 (.cons _ _ _ _ _ checked11032.1 (.cons _ _ _ _ _ checked11033.1 (.cons _ _ _ _ _ checked11034.1 (.cons _ _ _ _ _ checked11035.1 (.cons _ _ _ _ _ checked11036.1 (.cons _ _ _ _ _ checked11037.1 (.cons _ _ _ _ _ checked11038.1 (.cons _ _ _ _ _ checked11039.1 (.cons _ _ _ _ _ checked11040.1 (.cons _ _ _ _ _ checked11041.1 (.cons _ _ _ _ _ checked11042.1 (.cons _ _ _ _ _ checked11043.1 (.cons _ _ _ _ _ checked11044.1 (.cons _ _ _ _ _ checked11045.1 (.cons _ _ _ _ _ checked11046.1 (.cons _ _ _ _ _ checked11047.1 (.cons _ _ _ _ _ checked11048.1 (.cons _ _ _ _ _ checked11049.1 (.cons _ _ _ _ _ checked11050.1 (.cons _ _ _ _ _ checked11051.1 (.cons _ _ _ _ _ checked11052.1 (.cons _ _ _ _ _ checked11053.1 (.cons _ _ _ _ _ checked11054.1 (.cons _ _ _ _ _ checked11055.1 (.cons _ _ _ _ _ checked11056.1 (.cons _ _ _ _ _ checked11057.1 (.cons _ _ _ _ _ checked11058.1 (.cons _ _ _ _ _ checked11059.1 (.cons _ _ _ _ _ checked11060.1 (.cons _ _ _ _ _ checked11061.1 (.cons _ _ _ _ _ checked11062.1 (.cons _ _ _ _ _ checked11063.1 (.cons _ _ _ _ _ checked11064.1 (.cons _ _ _ _ _ checked11065.1 (.cons _ _ _ _ _ checked11066.1 (.cons _ _ _ _ _ checked11067.1 (.cons _ _ _ _ _ checked11068.1 (.cons _ _ _ _ _ checked11069.1 (.cons _ _ _ _ _ checked11070.1 (.cons _ _ _ _ _ checked11071.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11104 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11008.2,checked11009.2,checked11010.2,checked11011.2,checked11012.2,checked11013.2,checked11014.2,checked11015.2,checked11016.2,checked11017.2,checked11018.2,checked11019.2,checked11020.2,checked11021.2,checked11022.2,checked11023.2,checked11024.2,checked11025.2,checked11026.2,checked11027.2,checked11028.2,checked11029.2,checked11030.2,checked11031.2,checked11032.2,checked11033.2,checked11034.2,checked11035.2,checked11036.2,checked11037.2,checked11038.2,checked11039.2,checked11040.2,checked11041.2,checked11042.2,checked11043.2,checked11044.2,checked11045.2,checked11046.2,checked11047.2,checked11048.2,checked11049.2,checked11050.2,checked11051.2,checked11052.2,checked11053.2,checked11054.2,checked11055.2,checked11056.2,checked11057.2,checked11058.2,checked11059.2,checked11060.2,checked11061.2,checked11062.2,checked11063.2,checked11064.2,checked11065.2,checked11066.2,checked11067.2,checked11068.2,checked11069.2,checked11070.2,checked11071.2]
  decide
end ArtifactPairedPathRoundGroup172
