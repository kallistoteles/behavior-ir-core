import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup172
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11008 : List WordIR.Op := [.bxor 11049 11050]
def bytes11008 : Bytes := ("    let r00002b2b: u32 = r00002b29 ^ r00002b2a;\n" : String).toByteArray.data.toList
theorem checked11008 : bytes11008=statementBytes 11051 (op11008.map lower) ∧ bytes11008.length=48 := by core033_kernel_decide
def op11009 : List WordIR.Op := [.bnot 11051]
def bytes11009 : Bytes := ("    let r00002b2c: u32 = !r00002b2b;\n" : String).toByteArray.data.toList
theorem checked11009 : bytes11009=statementBytes 11052 (op11009.map lower) ∧ bytes11009.length=37 := by core033_kernel_decide
def op11010 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11010 : Bytes := ("    let r00002b2d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11010 : bytes11010=statementBytes 11053 (op11010.map lower) ∧ bytes11010.length=41 := by core033_kernel_decide
def op11011 : List WordIR.Op := [.badd 11052 11053]
def bytes11011 : Bytes := ("    let r00002b2e: u32 = r00002b2c.wrapping_add(r00002b2d);\n" : String).toByteArray.data.toList
theorem checked11011 : bytes11011=statementBytes 11054 (op11011.map lower) ∧ bytes11011.length=60 := by core033_kernel_decide
def op11012 : List WordIR.Op := [.bnot 11054]
def bytes11012 : Bytes := ("    let r00002b2f: u32 = !r00002b2e;\n" : String).toByteArray.data.toList
theorem checked11012 : bytes11012=statementBytes 11055 (op11012.map lower) ∧ bytes11012.length=37 := by core033_kernel_decide
def op11013 : List WordIR.Op := [.band 11055 261]
def bytes11013 : Bytes := ("    let r00002b30: u32 = r00002b2f & r00000105;\n" : String).toByteArray.data.toList
theorem checked11013 : bytes11013=statementBytes 11056 (op11013.map lower) ∧ bytes11013.length=48 := by core033_kernel_decide
def op11014 : List WordIR.Op := [.bxor 11030 11056]
def bytes11014 : Bytes := ("    let r00002b31: u32 = r00002b16 ^ r00002b30;\n" : String).toByteArray.data.toList
theorem checked11014 : bytes11014=statementBytes 11057 (op11014.map lower) ∧ bytes11014.length=48 := by core033_kernel_decide
def op11015 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11015 : Bytes := ("    let r00002b32: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11015 : bytes11015=statementBytes 11058 (op11015.map lower) ∧ bytes11015.length=41 := by core033_kernel_decide
def op11016 : List WordIR.Op := [.bxor 0 11058]
def bytes11016 : Bytes := ("    let r00002b33: u32 = r00000000 ^ r00002b32;\n" : String).toByteArray.data.toList
theorem checked11016 : bytes11016=statementBytes 11059 (op11016.map lower) ∧ bytes11016.length=48 := by core033_kernel_decide
def op11017 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11017 : Bytes := ("    let r00002b34: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11017 : bytes11017=statementBytes 11060 (op11017.map lower) ∧ bytes11017.length=41 := by core033_kernel_decide
def op11018 : List WordIR.Op := [.bnot 11060]
def bytes11018 : Bytes := ("    let r00002b35: u32 = !r00002b34;\n" : String).toByteArray.data.toList
theorem checked11018 : bytes11018=statementBytes 11061 (op11018.map lower) ∧ bytes11018.length=37 := by core033_kernel_decide
def op11019 : List WordIR.Op := [.band 11059 11061]
def bytes11019 : Bytes := ("    let r00002b36: u32 = r00002b33 & r00002b35;\n" : String).toByteArray.data.toList
theorem checked11019 : bytes11019=statementBytes 11062 (op11019.map lower) ∧ bytes11019.length=48 := by core033_kernel_decide
def op11020 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11020 : Bytes := ("    let r00002b37: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11020 : bytes11020=statementBytes 11063 (op11020.map lower) ∧ bytes11020.length=41 := by core033_kernel_decide
def op11021 : List WordIR.Op := [.bxor 0 11063]
def bytes11021 : Bytes := ("    let r00002b38: u32 = r00000000 ^ r00002b37;\n" : String).toByteArray.data.toList
theorem checked11021 : bytes11021=statementBytes 11064 (op11021.map lower) ∧ bytes11021.length=48 := by core033_kernel_decide
def op11022 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11022 : Bytes := ("    let r00002b39: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11022 : bytes11022=statementBytes 11065 (op11022.map lower) ∧ bytes11022.length=41 := by core033_kernel_decide
def op11023 : List WordIR.Op := [.bnot 11065]
def bytes11023 : Bytes := ("    let r00002b3a: u32 = !r00002b39;\n" : String).toByteArray.data.toList
theorem checked11023 : bytes11023=statementBytes 11066 (op11023.map lower) ∧ bytes11023.length=37 := by core033_kernel_decide
def op11024 : List WordIR.Op := [.bxor 11064 11066]
def bytes11024 : Bytes := ("    let r00002b3b: u32 = r00002b38 ^ r00002b3a;\n" : String).toByteArray.data.toList
theorem checked11024 : bytes11024=statementBytes 11067 (op11024.map lower) ∧ bytes11024.length=48 := by core033_kernel_decide
def op11025 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11025 : Bytes := ("    let r00002b3c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11025 : bytes11025=statementBytes 11068 (op11025.map lower) ∧ bytes11025.length=41 := by core033_kernel_decide
def op11026 : List WordIR.Op := [.bxor 0 11068]
def bytes11026 : Bytes := ("    let r00002b3d: u32 = r00000000 ^ r00002b3c;\n" : String).toByteArray.data.toList
theorem checked11026 : bytes11026=statementBytes 11069 (op11026.map lower) ∧ bytes11026.length=48 := by core033_kernel_decide
def op11027 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11027 : Bytes := ("    let r00002b3e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11027 : bytes11027=statementBytes 11070 (op11027.map lower) ∧ bytes11027.length=41 := by core033_kernel_decide
def op11028 : List WordIR.Op := [.bnot 11070]
def bytes11028 : Bytes := ("    let r00002b3f: u32 = !r00002b3e;\n" : String).toByteArray.data.toList
theorem checked11028 : bytes11028=statementBytes 11071 (op11028.map lower) ∧ bytes11028.length=37 := by core033_kernel_decide
def op11029 : List WordIR.Op := [.badd 11069 11071]
def bytes11029 : Bytes := ("    let r00002b40: u32 = r00002b3d.wrapping_add(r00002b3f);\n" : String).toByteArray.data.toList
theorem checked11029 : bytes11029=statementBytes 11072 (op11029.map lower) ∧ bytes11029.length=60 := by core033_kernel_decide
def op11030 : List WordIR.Op := [.bnot 11072]
def bytes11030 : Bytes := ("    let r00002b41: u32 = !r00002b40;\n" : String).toByteArray.data.toList
theorem checked11030 : bytes11030=statementBytes 11073 (op11030.map lower) ∧ bytes11030.length=37 := by core033_kernel_decide
def op11031 : List WordIR.Op := [.band 11067 11073]
def bytes11031 : Bytes := ("    let r00002b42: u32 = r00002b3b & r00002b41;\n" : String).toByteArray.data.toList
theorem checked11031 : bytes11031=statementBytes 11074 (op11031.map lower) ∧ bytes11031.length=48 := by core033_kernel_decide
def op11032 : List WordIR.Op := [.bxor 11062 11074]
def bytes11032 : Bytes := ("    let r00002b43: u32 = r00002b36 ^ r00002b42;\n" : String).toByteArray.data.toList
theorem checked11032 : bytes11032=statementBytes 11075 (op11032.map lower) ∧ bytes11032.length=48 := by core033_kernel_decide
def op11033 : List WordIR.Op := [.shr 11075 31]
def bytes11033 : Bytes := ("    let r00002b44: u32 = r00002b43 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11033 : bytes11033=statementBytes 11076 (op11033.map lower) ∧ bytes11033.length=54 := by core033_kernel_decide
def op11034 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11034 : Bytes := ("    let r00002b45: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11034 : bytes11034=statementBytes 11077 (op11034.map lower) ∧ bytes11034.length=41 := by core033_kernel_decide
def op11035 : List WordIR.Op := [.bxor 11076 11077]
def bytes11035 : Bytes := ("    let r00002b46: u32 = r00002b44 ^ r00002b45;\n" : String).toByteArray.data.toList
theorem checked11035 : bytes11035=statementBytes 11078 (op11035.map lower) ∧ bytes11035.length=48 := by core033_kernel_decide
def op11036 : List WordIR.Op := [.bnot 11078]
def bytes11036 : Bytes := ("    let r00002b47: u32 = !r00002b46;\n" : String).toByteArray.data.toList
theorem checked11036 : bytes11036=statementBytes 11079 (op11036.map lower) ∧ bytes11036.length=37 := by core033_kernel_decide
def op11037 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11037 : Bytes := ("    let r00002b48: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11037 : bytes11037=statementBytes 11080 (op11037.map lower) ∧ bytes11037.length=41 := by core033_kernel_decide
def op11038 : List WordIR.Op := [.badd 11079 11080]
def bytes11038 : Bytes := ("    let r00002b49: u32 = r00002b47.wrapping_add(r00002b48);\n" : String).toByteArray.data.toList
theorem checked11038 : bytes11038=statementBytes 11081 (op11038.map lower) ∧ bytes11038.length=60 := by core033_kernel_decide
def op11039 : List WordIR.Op := [.band 11081 9921]
def bytes11039 : Bytes := ("    let r00002b4a: u32 = r00002b49 & r000026c1;\n" : String).toByteArray.data.toList
theorem checked11039 : bytes11039=statementBytes 11082 (op11039.map lower) ∧ bytes11039.length=48 := by core033_kernel_decide
def op11040 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11040 : Bytes := ("    let r00002b4b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11040 : bytes11040=statementBytes 11083 (op11040.map lower) ∧ bytes11040.length=41 := by core033_kernel_decide
def op11041 : List WordIR.Op := [.bxor 0 11083]
def bytes11041 : Bytes := ("    let r00002b4c: u32 = r00000000 ^ r00002b4b;\n" : String).toByteArray.data.toList
theorem checked11041 : bytes11041=statementBytes 11084 (op11041.map lower) ∧ bytes11041.length=48 := by core033_kernel_decide
def op11042 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11042 : Bytes := ("    let r00002b4d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11042 : bytes11042=statementBytes 11085 (op11042.map lower) ∧ bytes11042.length=41 := by core033_kernel_decide
def op11043 : List WordIR.Op := [.bnot 11085]
def bytes11043 : Bytes := ("    let r00002b4e: u32 = !r00002b4d;\n" : String).toByteArray.data.toList
theorem checked11043 : bytes11043=statementBytes 11086 (op11043.map lower) ∧ bytes11043.length=37 := by core033_kernel_decide
def op11044 : List WordIR.Op := [.band 11084 11086]
def bytes11044 : Bytes := ("    let r00002b4f: u32 = r00002b4c & r00002b4e;\n" : String).toByteArray.data.toList
theorem checked11044 : bytes11044=statementBytes 11087 (op11044.map lower) ∧ bytes11044.length=48 := by core033_kernel_decide
def op11045 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11045 : Bytes := ("    let r00002b50: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11045 : bytes11045=statementBytes 11088 (op11045.map lower) ∧ bytes11045.length=41 := by core033_kernel_decide
def op11046 : List WordIR.Op := [.bxor 0 11088]
def bytes11046 : Bytes := ("    let r00002b51: u32 = r00000000 ^ r00002b50;\n" : String).toByteArray.data.toList
theorem checked11046 : bytes11046=statementBytes 11089 (op11046.map lower) ∧ bytes11046.length=48 := by core033_kernel_decide
def op11047 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11047 : Bytes := ("    let r00002b52: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11047 : bytes11047=statementBytes 11090 (op11047.map lower) ∧ bytes11047.length=41 := by core033_kernel_decide
def op11048 : List WordIR.Op := [.bnot 11090]
def bytes11048 : Bytes := ("    let r00002b53: u32 = !r00002b52;\n" : String).toByteArray.data.toList
theorem checked11048 : bytes11048=statementBytes 11091 (op11048.map lower) ∧ bytes11048.length=37 := by core033_kernel_decide
def op11049 : List WordIR.Op := [.bxor 11089 11091]
def bytes11049 : Bytes := ("    let r00002b54: u32 = r00002b51 ^ r00002b53;\n" : String).toByteArray.data.toList
theorem checked11049 : bytes11049=statementBytes 11092 (op11049.map lower) ∧ bytes11049.length=48 := by core033_kernel_decide
def op11050 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11050 : Bytes := ("    let r00002b55: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11050 : bytes11050=statementBytes 11093 (op11050.map lower) ∧ bytes11050.length=41 := by core033_kernel_decide
def op11051 : List WordIR.Op := [.bxor 0 11093]
def bytes11051 : Bytes := ("    let r00002b56: u32 = r00000000 ^ r00002b55;\n" : String).toByteArray.data.toList
theorem checked11051 : bytes11051=statementBytes 11094 (op11051.map lower) ∧ bytes11051.length=48 := by core033_kernel_decide
def op11052 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11052 : Bytes := ("    let r00002b57: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11052 : bytes11052=statementBytes 11095 (op11052.map lower) ∧ bytes11052.length=41 := by core033_kernel_decide
def op11053 : List WordIR.Op := [.bnot 11095]
def bytes11053 : Bytes := ("    let r00002b58: u32 = !r00002b57;\n" : String).toByteArray.data.toList
theorem checked11053 : bytes11053=statementBytes 11096 (op11053.map lower) ∧ bytes11053.length=37 := by core033_kernel_decide
def op11054 : List WordIR.Op := [.badd 11094 11096]
def bytes11054 : Bytes := ("    let r00002b59: u32 = r00002b56.wrapping_add(r00002b58);\n" : String).toByteArray.data.toList
theorem checked11054 : bytes11054=statementBytes 11097 (op11054.map lower) ∧ bytes11054.length=60 := by core033_kernel_decide
def op11055 : List WordIR.Op := [.bnot 11097]
def bytes11055 : Bytes := ("    let r00002b5a: u32 = !r00002b59;\n" : String).toByteArray.data.toList
theorem checked11055 : bytes11055=statementBytes 11098 (op11055.map lower) ∧ bytes11055.length=37 := by core033_kernel_decide
def op11056 : List WordIR.Op := [.band 11092 11098]
def bytes11056 : Bytes := ("    let r00002b5b: u32 = r00002b54 & r00002b5a;\n" : String).toByteArray.data.toList
theorem checked11056 : bytes11056=statementBytes 11099 (op11056.map lower) ∧ bytes11056.length=48 := by core033_kernel_decide
def op11057 : List WordIR.Op := [.bxor 11087 11099]
def bytes11057 : Bytes := ("    let r00002b5c: u32 = r00002b4f ^ r00002b5b;\n" : String).toByteArray.data.toList
theorem checked11057 : bytes11057=statementBytes 11100 (op11057.map lower) ∧ bytes11057.length=48 := by core033_kernel_decide
def op11058 : List WordIR.Op := [.shr 11100 31]
def bytes11058 : Bytes := ("    let r00002b5d: u32 = r00002b5c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11058 : bytes11058=statementBytes 11101 (op11058.map lower) ∧ bytes11058.length=54 := by core033_kernel_decide
def op11059 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11059 : Bytes := ("    let r00002b5e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11059 : bytes11059=statementBytes 11102 (op11059.map lower) ∧ bytes11059.length=41 := by core033_kernel_decide
def op11060 : List WordIR.Op := [.bxor 11101 11102]
def bytes11060 : Bytes := ("    let r00002b5f: u32 = r00002b5d ^ r00002b5e;\n" : String).toByteArray.data.toList
theorem checked11060 : bytes11060=statementBytes 11103 (op11060.map lower) ∧ bytes11060.length=48 := by core033_kernel_decide
def op11061 : List WordIR.Op := [.bnot 11103]
def bytes11061 : Bytes := ("    let r00002b60: u32 = !r00002b5f;\n" : String).toByteArray.data.toList
theorem checked11061 : bytes11061=statementBytes 11104 (op11061.map lower) ∧ bytes11061.length=37 := by core033_kernel_decide
def op11062 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11062 : Bytes := ("    let r00002b61: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11062 : bytes11062=statementBytes 11105 (op11062.map lower) ∧ bytes11062.length=41 := by core033_kernel_decide
def op11063 : List WordIR.Op := [.badd 11104 11105]
def bytes11063 : Bytes := ("    let r00002b62: u32 = r00002b60.wrapping_add(r00002b61);\n" : String).toByteArray.data.toList
theorem checked11063 : bytes11063=statementBytes 11106 (op11063.map lower) ∧ bytes11063.length=60 := by core033_kernel_decide
def op11064 : List WordIR.Op := [.bnot 11106]
def bytes11064 : Bytes := ("    let r00002b63: u32 = !r00002b62;\n" : String).toByteArray.data.toList
theorem checked11064 : bytes11064=statementBytes 11107 (op11064.map lower) ∧ bytes11064.length=37 := by core033_kernel_decide
def op11065 : List WordIR.Op := [.band 11107 272]
def bytes11065 : Bytes := ("    let r00002b64: u32 = r00002b63 & r00000110;\n" : String).toByteArray.data.toList
theorem checked11065 : bytes11065=statementBytes 11108 (op11065.map lower) ∧ bytes11065.length=48 := by core033_kernel_decide
def op11066 : List WordIR.Op := [.bxor 11082 11108]
def bytes11066 : Bytes := ("    let r00002b65: u32 = r00002b4a ^ r00002b64;\n" : String).toByteArray.data.toList
theorem checked11066 : bytes11066=statementBytes 11109 (op11066.map lower) ∧ bytes11066.length=48 := by core033_kernel_decide
def op11067 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11067 : Bytes := ("    let r00002b66: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11067 : bytes11067=statementBytes 11110 (op11067.map lower) ∧ bytes11067.length=41 := by core033_kernel_decide
def op11068 : List WordIR.Op := [.bxor 0 11110]
def bytes11068 : Bytes := ("    let r00002b67: u32 = r00000000 ^ r00002b66;\n" : String).toByteArray.data.toList
theorem checked11068 : bytes11068=statementBytes 11111 (op11068.map lower) ∧ bytes11068.length=48 := by core033_kernel_decide
def op11069 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11069 : Bytes := ("    let r00002b68: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11069 : bytes11069=statementBytes 11112 (op11069.map lower) ∧ bytes11069.length=41 := by core033_kernel_decide
def op11070 : List WordIR.Op := [.bnot 11112]
def bytes11070 : Bytes := ("    let r00002b69: u32 = !r00002b68;\n" : String).toByteArray.data.toList
theorem checked11070 : bytes11070=statementBytes 11113 (op11070.map lower) ∧ bytes11070.length=37 := by core033_kernel_decide
def op11071 : List WordIR.Op := [.band 11111 11113]
def bytes11071 : Bytes := ("    let r00002b6a: u32 = r00002b67 & r00002b69;\n" : String).toByteArray.data.toList
theorem checked11071 : bytes11071=statementBytes 11114 (op11071.map lower) ∧ bytes11071.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11008,op11009,op11010,op11011,op11012,op11013,op11014,op11015,op11016,op11017,op11018,op11019,op11020,op11021,op11022,op11023,op11024,op11025,op11026,op11027,op11028,op11029,op11030,op11031,op11032,op11033,op11034,op11035,op11036,op11037,op11038,op11039,op11040,op11041,op11042,op11043,op11044,op11045,op11046,op11047,op11048,op11049,op11050,op11051,op11052,op11053,op11054,op11055,op11056,op11057,op11058,op11059,op11060,op11061,op11062,op11063,op11064,op11065,op11066,op11067,op11068,op11069,op11070,op11071]
def chunks : List Bytes := [bytes11008,bytes11009,bytes11010,bytes11011,bytes11012,bytes11013,bytes11014,bytes11015,bytes11016,bytes11017,bytes11018,bytes11019,bytes11020,bytes11021,bytes11022,bytes11023,bytes11024,bytes11025,bytes11026,bytes11027,bytes11028,bytes11029,bytes11030,bytes11031,bytes11032,bytes11033,bytes11034,bytes11035,bytes11036,bytes11037,bytes11038,bytes11039,bytes11040,bytes11041,bytes11042,bytes11043,bytes11044,bytes11045,bytes11046,bytes11047,bytes11048,bytes11049,bytes11050,bytes11051,bytes11052,bytes11053,bytes11054,bytes11055,bytes11056,bytes11057,bytes11058,bytes11059,bytes11060,bytes11061,bytes11062,bytes11063,bytes11064,bytes11065,bytes11066,bytes11067,bytes11068,bytes11069,bytes11070,bytes11071]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11051 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11008.1 (.cons _ _ _ _ _ checked11009.1 (.cons _ _ _ _ _ checked11010.1 (.cons _ _ _ _ _ checked11011.1 (.cons _ _ _ _ _ checked11012.1 (.cons _ _ _ _ _ checked11013.1 (.cons _ _ _ _ _ checked11014.1 (.cons _ _ _ _ _ checked11015.1 (.cons _ _ _ _ _ checked11016.1 (.cons _ _ _ _ _ checked11017.1 (.cons _ _ _ _ _ checked11018.1 (.cons _ _ _ _ _ checked11019.1 (.cons _ _ _ _ _ checked11020.1 (.cons _ _ _ _ _ checked11021.1 (.cons _ _ _ _ _ checked11022.1 (.cons _ _ _ _ _ checked11023.1 (.cons _ _ _ _ _ checked11024.1 (.cons _ _ _ _ _ checked11025.1 (.cons _ _ _ _ _ checked11026.1 (.cons _ _ _ _ _ checked11027.1 (.cons _ _ _ _ _ checked11028.1 (.cons _ _ _ _ _ checked11029.1 (.cons _ _ _ _ _ checked11030.1 (.cons _ _ _ _ _ checked11031.1 (.cons _ _ _ _ _ checked11032.1 (.cons _ _ _ _ _ checked11033.1 (.cons _ _ _ _ _ checked11034.1 (.cons _ _ _ _ _ checked11035.1 (.cons _ _ _ _ _ checked11036.1 (.cons _ _ _ _ _ checked11037.1 (.cons _ _ _ _ _ checked11038.1 (.cons _ _ _ _ _ checked11039.1 (.cons _ _ _ _ _ checked11040.1 (.cons _ _ _ _ _ checked11041.1 (.cons _ _ _ _ _ checked11042.1 (.cons _ _ _ _ _ checked11043.1 (.cons _ _ _ _ _ checked11044.1 (.cons _ _ _ _ _ checked11045.1 (.cons _ _ _ _ _ checked11046.1 (.cons _ _ _ _ _ checked11047.1 (.cons _ _ _ _ _ checked11048.1 (.cons _ _ _ _ _ checked11049.1 (.cons _ _ _ _ _ checked11050.1 (.cons _ _ _ _ _ checked11051.1 (.cons _ _ _ _ _ checked11052.1 (.cons _ _ _ _ _ checked11053.1 (.cons _ _ _ _ _ checked11054.1 (.cons _ _ _ _ _ checked11055.1 (.cons _ _ _ _ _ checked11056.1 (.cons _ _ _ _ _ checked11057.1 (.cons _ _ _ _ _ checked11058.1 (.cons _ _ _ _ _ checked11059.1 (.cons _ _ _ _ _ checked11060.1 (.cons _ _ _ _ _ checked11061.1 (.cons _ _ _ _ _ checked11062.1 (.cons _ _ _ _ _ checked11063.1 (.cons _ _ _ _ _ checked11064.1 (.cons _ _ _ _ _ checked11065.1 (.cons _ _ _ _ _ checked11066.1 (.cons _ _ _ _ _ checked11067.1 (.cons _ _ _ _ _ checked11068.1 (.cons _ _ _ _ _ checked11069.1 (.cons _ _ _ _ _ checked11070.1 (.cons _ _ _ _ _ checked11071.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11051 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2857 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11008.2,checked11009.2,checked11010.2,checked11011.2,checked11012.2,checked11013.2,checked11014.2,checked11015.2,checked11016.2,checked11017.2,checked11018.2,checked11019.2,checked11020.2,checked11021.2,checked11022.2,checked11023.2,checked11024.2,checked11025.2,checked11026.2,checked11027.2,checked11028.2,checked11029.2,checked11030.2,checked11031.2,checked11032.2,checked11033.2,checked11034.2,checked11035.2,checked11036.2,checked11037.2,checked11038.2,checked11039.2,checked11040.2,checked11041.2,checked11042.2,checked11043.2,checked11044.2,checked11045.2,checked11046.2,checked11047.2,checked11048.2,checked11049.2,checked11050.2,checked11051.2,checked11052.2,checked11053.2,checked11054.2,checked11055.2,checked11056.2,checked11057.2,checked11058.2,checked11059.2,checked11060.2,checked11061.2,checked11062.2,checked11063.2,checked11064.2,checked11065.2,checked11066.2,checked11067.2,checked11068.2,checked11069.2,checked11070.2,checked11071.2]
  decide
end ArtifactPathRoundDispatchGroup172
