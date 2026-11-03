import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup203
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12992 : List WordIR.Op := [.bxor 13097 13109]
def bytes12992 : Bytes := ("    let r00003336: u32 = r00003329 ^ r00003335;\n" : String).toByteArray.data.toList
theorem checked12992 : bytes12992=statementBytes 13110 (op12992.map lower) ∧ bytes12992.length=48 := by core033_kernel_decide
def op12993 : List WordIR.Op := [.shr 13110 31]
def bytes12993 : Bytes := ("    let r00003337: u32 = r00003336 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12993 : bytes12993=statementBytes 13111 (op12993.map lower) ∧ bytes12993.length=54 := by core033_kernel_decide
def op12994 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12994 : Bytes := ("    let r00003338: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12994 : bytes12994=statementBytes 13112 (op12994.map lower) ∧ bytes12994.length=41 := by core033_kernel_decide
def op12995 : List WordIR.Op := [.bxor 13111 13112]
def bytes12995 : Bytes := ("    let r00003339: u32 = r00003337 ^ r00003338;\n" : String).toByteArray.data.toList
theorem checked12995 : bytes12995=statementBytes 13113 (op12995.map lower) ∧ bytes12995.length=48 := by core033_kernel_decide
def op12996 : List WordIR.Op := [.bnot 13113]
def bytes12996 : Bytes := ("    let r0000333a: u32 = !r00003339;\n" : String).toByteArray.data.toList
theorem checked12996 : bytes12996=statementBytes 13114 (op12996.map lower) ∧ bytes12996.length=37 := by core033_kernel_decide
def op12997 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12997 : Bytes := ("    let r0000333b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12997 : bytes12997=statementBytes 13115 (op12997.map lower) ∧ bytes12997.length=41 := by core033_kernel_decide
def op12998 : List WordIR.Op := [.badd 13114 13115]
def bytes12998 : Bytes := ("    let r0000333c: u32 = r0000333a.wrapping_add(r0000333b);\n" : String).toByteArray.data.toList
theorem checked12998 : bytes12998=statementBytes 13116 (op12998.map lower) ∧ bytes12998.length=60 := by core033_kernel_decide
def op12999 : List WordIR.Op := [.band 13116 10972]
def bytes12999 : Bytes := ("    let r0000333d: u32 = r0000333c & r00002adc;\n" : String).toByteArray.data.toList
theorem checked12999 : bytes12999=statementBytes 13117 (op12999.map lower) ∧ bytes12999.length=48 := by core033_kernel_decide
def op13000 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13000 : Bytes := ("    let r0000333e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13000 : bytes13000=statementBytes 13118 (op13000.map lower) ∧ bytes13000.length=41 := by core033_kernel_decide
def op13001 : List WordIR.Op := [.bxor 693 13118]
def bytes13001 : Bytes := ("    let r0000333f: u32 = r000002b5 ^ r0000333e;\n" : String).toByteArray.data.toList
theorem checked13001 : bytes13001=statementBytes 13119 (op13001.map lower) ∧ bytes13001.length=48 := by core033_kernel_decide
def op13002 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13002 : Bytes := ("    let r00003340: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13002 : bytes13002=statementBytes 13120 (op13002.map lower) ∧ bytes13002.length=41 := by core033_kernel_decide
def op13003 : List WordIR.Op := [.bnot 13120]
def bytes13003 : Bytes := ("    let r00003341: u32 = !r00003340;\n" : String).toByteArray.data.toList
theorem checked13003 : bytes13003=statementBytes 13121 (op13003.map lower) ∧ bytes13003.length=37 := by core033_kernel_decide
def op13004 : List WordIR.Op := [.band 13119 13121]
def bytes13004 : Bytes := ("    let r00003342: u32 = r0000333f & r00003341;\n" : String).toByteArray.data.toList
theorem checked13004 : bytes13004=statementBytes 13122 (op13004.map lower) ∧ bytes13004.length=48 := by core033_kernel_decide
def op13005 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13005 : Bytes := ("    let r00003343: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13005 : bytes13005=statementBytes 13123 (op13005.map lower) ∧ bytes13005.length=41 := by core033_kernel_decide
def op13006 : List WordIR.Op := [.bxor 693 13123]
def bytes13006 : Bytes := ("    let r00003344: u32 = r000002b5 ^ r00003343;\n" : String).toByteArray.data.toList
theorem checked13006 : bytes13006=statementBytes 13124 (op13006.map lower) ∧ bytes13006.length=48 := by core033_kernel_decide
def op13007 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13007 : Bytes := ("    let r00003345: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13007 : bytes13007=statementBytes 13125 (op13007.map lower) ∧ bytes13007.length=41 := by core033_kernel_decide
def op13008 : List WordIR.Op := [.bnot 13125]
def bytes13008 : Bytes := ("    let r00003346: u32 = !r00003345;\n" : String).toByteArray.data.toList
theorem checked13008 : bytes13008=statementBytes 13126 (op13008.map lower) ∧ bytes13008.length=37 := by core033_kernel_decide
def op13009 : List WordIR.Op := [.bxor 13124 13126]
def bytes13009 : Bytes := ("    let r00003347: u32 = r00003344 ^ r00003346;\n" : String).toByteArray.data.toList
theorem checked13009 : bytes13009=statementBytes 13127 (op13009.map lower) ∧ bytes13009.length=48 := by core033_kernel_decide
def op13010 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13010 : Bytes := ("    let r00003348: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13010 : bytes13010=statementBytes 13128 (op13010.map lower) ∧ bytes13010.length=41 := by core033_kernel_decide
def op13011 : List WordIR.Op := [.bxor 693 13128]
def bytes13011 : Bytes := ("    let r00003349: u32 = r000002b5 ^ r00003348;\n" : String).toByteArray.data.toList
theorem checked13011 : bytes13011=statementBytes 13129 (op13011.map lower) ∧ bytes13011.length=48 := by core033_kernel_decide
def op13012 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13012 : Bytes := ("    let r0000334a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13012 : bytes13012=statementBytes 13130 (op13012.map lower) ∧ bytes13012.length=41 := by core033_kernel_decide
def op13013 : List WordIR.Op := [.bnot 13130]
def bytes13013 : Bytes := ("    let r0000334b: u32 = !r0000334a;\n" : String).toByteArray.data.toList
theorem checked13013 : bytes13013=statementBytes 13131 (op13013.map lower) ∧ bytes13013.length=37 := by core033_kernel_decide
def op13014 : List WordIR.Op := [.badd 13129 13131]
def bytes13014 : Bytes := ("    let r0000334c: u32 = r00003349.wrapping_add(r0000334b);\n" : String).toByteArray.data.toList
theorem checked13014 : bytes13014=statementBytes 13132 (op13014.map lower) ∧ bytes13014.length=60 := by core033_kernel_decide
def op13015 : List WordIR.Op := [.bnot 13132]
def bytes13015 : Bytes := ("    let r0000334d: u32 = !r0000334c;\n" : String).toByteArray.data.toList
theorem checked13015 : bytes13015=statementBytes 13133 (op13015.map lower) ∧ bytes13015.length=37 := by core033_kernel_decide
def op13016 : List WordIR.Op := [.band 13127 13133]
def bytes13016 : Bytes := ("    let r0000334e: u32 = r00003347 & r0000334d;\n" : String).toByteArray.data.toList
theorem checked13016 : bytes13016=statementBytes 13134 (op13016.map lower) ∧ bytes13016.length=48 := by core033_kernel_decide
def op13017 : List WordIR.Op := [.bxor 13122 13134]
def bytes13017 : Bytes := ("    let r0000334f: u32 = r00003342 ^ r0000334e;\n" : String).toByteArray.data.toList
theorem checked13017 : bytes13017=statementBytes 13135 (op13017.map lower) ∧ bytes13017.length=48 := by core033_kernel_decide
def op13018 : List WordIR.Op := [.shr 13135 31]
def bytes13018 : Bytes := ("    let r00003350: u32 = r0000334f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13018 : bytes13018=statementBytes 13136 (op13018.map lower) ∧ bytes13018.length=54 := by core033_kernel_decide
def op13019 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13019 : Bytes := ("    let r00003351: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13019 : bytes13019=statementBytes 13137 (op13019.map lower) ∧ bytes13019.length=41 := by core033_kernel_decide
def op13020 : List WordIR.Op := [.bxor 13136 13137]
def bytes13020 : Bytes := ("    let r00003352: u32 = r00003350 ^ r00003351;\n" : String).toByteArray.data.toList
theorem checked13020 : bytes13020=statementBytes 13138 (op13020.map lower) ∧ bytes13020.length=48 := by core033_kernel_decide
def op13021 : List WordIR.Op := [.bnot 13138]
def bytes13021 : Bytes := ("    let r00003353: u32 = !r00003352;\n" : String).toByteArray.data.toList
theorem checked13021 : bytes13021=statementBytes 13139 (op13021.map lower) ∧ bytes13021.length=37 := by core033_kernel_decide
def op13022 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13022 : Bytes := ("    let r00003354: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13022 : bytes13022=statementBytes 13140 (op13022.map lower) ∧ bytes13022.length=41 := by core033_kernel_decide
def op13023 : List WordIR.Op := [.badd 13139 13140]
def bytes13023 : Bytes := ("    let r00003355: u32 = r00003353.wrapping_add(r00003354);\n" : String).toByteArray.data.toList
theorem checked13023 : bytes13023=statementBytes 13141 (op13023.map lower) ∧ bytes13023.length=60 := by core033_kernel_decide
def op13024 : List WordIR.Op := [.bnot 13141]
def bytes13024 : Bytes := ("    let r00003356: u32 = !r00003355;\n" : String).toByteArray.data.toList
theorem checked13024 : bytes13024=statementBytes 13142 (op13024.map lower) ∧ bytes13024.length=37 := by core033_kernel_decide
def op13025 : List WordIR.Op := [.band 13142 1651]
def bytes13025 : Bytes := ("    let r00003357: u32 = r00003356 & r00000673;\n" : String).toByteArray.data.toList
theorem checked13025 : bytes13025=statementBytes 13143 (op13025.map lower) ∧ bytes13025.length=48 := by core033_kernel_decide
def op13026 : List WordIR.Op := [.bxor 13117 13143]
def bytes13026 : Bytes := ("    let r00003358: u32 = r0000333d ^ r00003357;\n" : String).toByteArray.data.toList
theorem checked13026 : bytes13026=statementBytes 13144 (op13026.map lower) ∧ bytes13026.length=48 := by core033_kernel_decide
def op13027 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13027 : Bytes := ("    let r00003359: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13027 : bytes13027=statementBytes 13145 (op13027.map lower) ∧ bytes13027.length=41 := by core033_kernel_decide
def op13028 : List WordIR.Op := [.bxor 693 13145]
def bytes13028 : Bytes := ("    let r0000335a: u32 = r000002b5 ^ r00003359;\n" : String).toByteArray.data.toList
theorem checked13028 : bytes13028=statementBytes 13146 (op13028.map lower) ∧ bytes13028.length=48 := by core033_kernel_decide
def op13029 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13029 : Bytes := ("    let r0000335b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13029 : bytes13029=statementBytes 13147 (op13029.map lower) ∧ bytes13029.length=41 := by core033_kernel_decide
def op13030 : List WordIR.Op := [.bnot 13147]
def bytes13030 : Bytes := ("    let r0000335c: u32 = !r0000335b;\n" : String).toByteArray.data.toList
theorem checked13030 : bytes13030=statementBytes 13148 (op13030.map lower) ∧ bytes13030.length=37 := by core033_kernel_decide
def op13031 : List WordIR.Op := [.band 13146 13148]
def bytes13031 : Bytes := ("    let r0000335d: u32 = r0000335a & r0000335c;\n" : String).toByteArray.data.toList
theorem checked13031 : bytes13031=statementBytes 13149 (op13031.map lower) ∧ bytes13031.length=48 := by core033_kernel_decide
def op13032 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13032 : Bytes := ("    let r0000335e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13032 : bytes13032=statementBytes 13150 (op13032.map lower) ∧ bytes13032.length=41 := by core033_kernel_decide
def op13033 : List WordIR.Op := [.bxor 693 13150]
def bytes13033 : Bytes := ("    let r0000335f: u32 = r000002b5 ^ r0000335e;\n" : String).toByteArray.data.toList
theorem checked13033 : bytes13033=statementBytes 13151 (op13033.map lower) ∧ bytes13033.length=48 := by core033_kernel_decide
def op13034 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13034 : Bytes := ("    let r00003360: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13034 : bytes13034=statementBytes 13152 (op13034.map lower) ∧ bytes13034.length=41 := by core033_kernel_decide
def op13035 : List WordIR.Op := [.bnot 13152]
def bytes13035 : Bytes := ("    let r00003361: u32 = !r00003360;\n" : String).toByteArray.data.toList
theorem checked13035 : bytes13035=statementBytes 13153 (op13035.map lower) ∧ bytes13035.length=37 := by core033_kernel_decide
def op13036 : List WordIR.Op := [.bxor 13151 13153]
def bytes13036 : Bytes := ("    let r00003362: u32 = r0000335f ^ r00003361;\n" : String).toByteArray.data.toList
theorem checked13036 : bytes13036=statementBytes 13154 (op13036.map lower) ∧ bytes13036.length=48 := by core033_kernel_decide
def op13037 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13037 : Bytes := ("    let r00003363: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13037 : bytes13037=statementBytes 13155 (op13037.map lower) ∧ bytes13037.length=41 := by core033_kernel_decide
def op13038 : List WordIR.Op := [.bxor 693 13155]
def bytes13038 : Bytes := ("    let r00003364: u32 = r000002b5 ^ r00003363;\n" : String).toByteArray.data.toList
theorem checked13038 : bytes13038=statementBytes 13156 (op13038.map lower) ∧ bytes13038.length=48 := by core033_kernel_decide
def op13039 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13039 : Bytes := ("    let r00003365: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13039 : bytes13039=statementBytes 13157 (op13039.map lower) ∧ bytes13039.length=41 := by core033_kernel_decide
def op13040 : List WordIR.Op := [.bnot 13157]
def bytes13040 : Bytes := ("    let r00003366: u32 = !r00003365;\n" : String).toByteArray.data.toList
theorem checked13040 : bytes13040=statementBytes 13158 (op13040.map lower) ∧ bytes13040.length=37 := by core033_kernel_decide
def op13041 : List WordIR.Op := [.badd 13156 13158]
def bytes13041 : Bytes := ("    let r00003367: u32 = r00003364.wrapping_add(r00003366);\n" : String).toByteArray.data.toList
theorem checked13041 : bytes13041=statementBytes 13159 (op13041.map lower) ∧ bytes13041.length=60 := by core033_kernel_decide
def op13042 : List WordIR.Op := [.bnot 13159]
def bytes13042 : Bytes := ("    let r00003368: u32 = !r00003367;\n" : String).toByteArray.data.toList
theorem checked13042 : bytes13042=statementBytes 13160 (op13042.map lower) ∧ bytes13042.length=37 := by core033_kernel_decide
def op13043 : List WordIR.Op := [.band 13154 13160]
def bytes13043 : Bytes := ("    let r00003369: u32 = r00003362 & r00003368;\n" : String).toByteArray.data.toList
theorem checked13043 : bytes13043=statementBytes 13161 (op13043.map lower) ∧ bytes13043.length=48 := by core033_kernel_decide
def op13044 : List WordIR.Op := [.bxor 13149 13161]
def bytes13044 : Bytes := ("    let r0000336a: u32 = r0000335d ^ r00003369;\n" : String).toByteArray.data.toList
theorem checked13044 : bytes13044=statementBytes 13162 (op13044.map lower) ∧ bytes13044.length=48 := by core033_kernel_decide
def op13045 : List WordIR.Op := [.shr 13162 31]
def bytes13045 : Bytes := ("    let r0000336b: u32 = r0000336a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13045 : bytes13045=statementBytes 13163 (op13045.map lower) ∧ bytes13045.length=54 := by core033_kernel_decide
def op13046 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13046 : Bytes := ("    let r0000336c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13046 : bytes13046=statementBytes 13164 (op13046.map lower) ∧ bytes13046.length=41 := by core033_kernel_decide
def op13047 : List WordIR.Op := [.bxor 13163 13164]
def bytes13047 : Bytes := ("    let r0000336d: u32 = r0000336b ^ r0000336c;\n" : String).toByteArray.data.toList
theorem checked13047 : bytes13047=statementBytes 13165 (op13047.map lower) ∧ bytes13047.length=48 := by core033_kernel_decide
def op13048 : List WordIR.Op := [.bnot 13165]
def bytes13048 : Bytes := ("    let r0000336e: u32 = !r0000336d;\n" : String).toByteArray.data.toList
theorem checked13048 : bytes13048=statementBytes 13166 (op13048.map lower) ∧ bytes13048.length=37 := by core033_kernel_decide
def op13049 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13049 : Bytes := ("    let r0000336f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13049 : bytes13049=statementBytes 13167 (op13049.map lower) ∧ bytes13049.length=41 := by core033_kernel_decide
def op13050 : List WordIR.Op := [.badd 13166 13167]
def bytes13050 : Bytes := ("    let r00003370: u32 = r0000336e.wrapping_add(r0000336f);\n" : String).toByteArray.data.toList
theorem checked13050 : bytes13050=statementBytes 13168 (op13050.map lower) ∧ bytes13050.length=60 := by core033_kernel_decide
def op13051 : List WordIR.Op := [.band 13168 11275]
def bytes13051 : Bytes := ("    let r00003371: u32 = r00003370 & r00002c0b;\n" : String).toByteArray.data.toList
theorem checked13051 : bytes13051=statementBytes 13169 (op13051.map lower) ∧ bytes13051.length=48 := by core033_kernel_decide
def op13052 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13052 : Bytes := ("    let r00003372: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13052 : bytes13052=statementBytes 13170 (op13052.map lower) ∧ bytes13052.length=41 := by core033_kernel_decide
def op13053 : List WordIR.Op := [.bxor 693 13170]
def bytes13053 : Bytes := ("    let r00003373: u32 = r000002b5 ^ r00003372;\n" : String).toByteArray.data.toList
theorem checked13053 : bytes13053=statementBytes 13171 (op13053.map lower) ∧ bytes13053.length=48 := by core033_kernel_decide
def op13054 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13054 : Bytes := ("    let r00003374: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13054 : bytes13054=statementBytes 13172 (op13054.map lower) ∧ bytes13054.length=41 := by core033_kernel_decide
def op13055 : List WordIR.Op := [.bnot 13172]
def bytes13055 : Bytes := ("    let r00003375: u32 = !r00003374;\n" : String).toByteArray.data.toList
theorem checked13055 : bytes13055=statementBytes 13173 (op13055.map lower) ∧ bytes13055.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12992,op12993,op12994,op12995,op12996,op12997,op12998,op12999,op13000,op13001,op13002,op13003,op13004,op13005,op13006,op13007,op13008,op13009,op13010,op13011,op13012,op13013,op13014,op13015,op13016,op13017,op13018,op13019,op13020,op13021,op13022,op13023,op13024,op13025,op13026,op13027,op13028,op13029,op13030,op13031,op13032,op13033,op13034,op13035,op13036,op13037,op13038,op13039,op13040,op13041,op13042,op13043,op13044,op13045,op13046,op13047,op13048,op13049,op13050,op13051,op13052,op13053,op13054,op13055]
def chunks : List Bytes := [bytes12992,bytes12993,bytes12994,bytes12995,bytes12996,bytes12997,bytes12998,bytes12999,bytes13000,bytes13001,bytes13002,bytes13003,bytes13004,bytes13005,bytes13006,bytes13007,bytes13008,bytes13009,bytes13010,bytes13011,bytes13012,bytes13013,bytes13014,bytes13015,bytes13016,bytes13017,bytes13018,bytes13019,bytes13020,bytes13021,bytes13022,bytes13023,bytes13024,bytes13025,bytes13026,bytes13027,bytes13028,bytes13029,bytes13030,bytes13031,bytes13032,bytes13033,bytes13034,bytes13035,bytes13036,bytes13037,bytes13038,bytes13039,bytes13040,bytes13041,bytes13042,bytes13043,bytes13044,bytes13045,bytes13046,bytes13047,bytes13048,bytes13049,bytes13050,bytes13051,bytes13052,bytes13053,bytes13054,bytes13055]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13110 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12992.1 (.cons _ _ _ _ _ checked12993.1 (.cons _ _ _ _ _ checked12994.1 (.cons _ _ _ _ _ checked12995.1 (.cons _ _ _ _ _ checked12996.1 (.cons _ _ _ _ _ checked12997.1 (.cons _ _ _ _ _ checked12998.1 (.cons _ _ _ _ _ checked12999.1 (.cons _ _ _ _ _ checked13000.1 (.cons _ _ _ _ _ checked13001.1 (.cons _ _ _ _ _ checked13002.1 (.cons _ _ _ _ _ checked13003.1 (.cons _ _ _ _ _ checked13004.1 (.cons _ _ _ _ _ checked13005.1 (.cons _ _ _ _ _ checked13006.1 (.cons _ _ _ _ _ checked13007.1 (.cons _ _ _ _ _ checked13008.1 (.cons _ _ _ _ _ checked13009.1 (.cons _ _ _ _ _ checked13010.1 (.cons _ _ _ _ _ checked13011.1 (.cons _ _ _ _ _ checked13012.1 (.cons _ _ _ _ _ checked13013.1 (.cons _ _ _ _ _ checked13014.1 (.cons _ _ _ _ _ checked13015.1 (.cons _ _ _ _ _ checked13016.1 (.cons _ _ _ _ _ checked13017.1 (.cons _ _ _ _ _ checked13018.1 (.cons _ _ _ _ _ checked13019.1 (.cons _ _ _ _ _ checked13020.1 (.cons _ _ _ _ _ checked13021.1 (.cons _ _ _ _ _ checked13022.1 (.cons _ _ _ _ _ checked13023.1 (.cons _ _ _ _ _ checked13024.1 (.cons _ _ _ _ _ checked13025.1 (.cons _ _ _ _ _ checked13026.1 (.cons _ _ _ _ _ checked13027.1 (.cons _ _ _ _ _ checked13028.1 (.cons _ _ _ _ _ checked13029.1 (.cons _ _ _ _ _ checked13030.1 (.cons _ _ _ _ _ checked13031.1 (.cons _ _ _ _ _ checked13032.1 (.cons _ _ _ _ _ checked13033.1 (.cons _ _ _ _ _ checked13034.1 (.cons _ _ _ _ _ checked13035.1 (.cons _ _ _ _ _ checked13036.1 (.cons _ _ _ _ _ checked13037.1 (.cons _ _ _ _ _ checked13038.1 (.cons _ _ _ _ _ checked13039.1 (.cons _ _ _ _ _ checked13040.1 (.cons _ _ _ _ _ checked13041.1 (.cons _ _ _ _ _ checked13042.1 (.cons _ _ _ _ _ checked13043.1 (.cons _ _ _ _ _ checked13044.1 (.cons _ _ _ _ _ checked13045.1 (.cons _ _ _ _ _ checked13046.1 (.cons _ _ _ _ _ checked13047.1 (.cons _ _ _ _ _ checked13048.1 (.cons _ _ _ _ _ checked13049.1 (.cons _ _ _ _ _ checked13050.1 (.cons _ _ _ _ _ checked13051.1 (.cons _ _ _ _ _ checked13052.1 (.cons _ _ _ _ _ checked13053.1 (.cons _ _ _ _ _ checked13054.1 (.cons _ _ _ _ _ checked13055.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13110 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12992.2,checked12993.2,checked12994.2,checked12995.2,checked12996.2,checked12997.2,checked12998.2,checked12999.2,checked13000.2,checked13001.2,checked13002.2,checked13003.2,checked13004.2,checked13005.2,checked13006.2,checked13007.2,checked13008.2,checked13009.2,checked13010.2,checked13011.2,checked13012.2,checked13013.2,checked13014.2,checked13015.2,checked13016.2,checked13017.2,checked13018.2,checked13019.2,checked13020.2,checked13021.2,checked13022.2,checked13023.2,checked13024.2,checked13025.2,checked13026.2,checked13027.2,checked13028.2,checked13029.2,checked13030.2,checked13031.2,checked13032.2,checked13033.2,checked13034.2,checked13035.2,checked13036.2,checked13037.2,checked13038.2,checked13039.2,checked13040.2,checked13041.2,checked13042.2,checked13043.2,checked13044.2,checked13045.2,checked13046.2,checked13047.2,checked13048.2,checked13049.2,checked13050.2,checked13051.2,checked13052.2,checked13053.2,checked13054.2,checked13055.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup203
