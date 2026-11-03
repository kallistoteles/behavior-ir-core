import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup157
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10048 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10048 : Bytes := ("    let r000027a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10048 : bytes10048=statementBytes 10144 (op10048.map lower) ∧ bytes10048.length=41 := by core033_kernel_decide
def op10049 : List WordIR.Op := [.band 10143 10144]
def bytes10049 : Bytes := ("    let r000027a1: u32 = r0000279f & r000027a0;\n" : String).toByteArray.data.toList
theorem checked10049 : bytes10049=statementBytes 10145 (op10049.map lower) ∧ bytes10049.length=48 := by core033_kernel_decide
def op10050 : List WordIR.Op := [.bxor 10139 10145]
def bytes10050 : Bytes := ("    let r000027a2: u32 = r0000279b ^ r000027a1;\n" : String).toByteArray.data.toList
theorem checked10050 : bytes10050=statementBytes 10146 (op10050.map lower) ∧ bytes10050.length=48 := by core033_kernel_decide
def op10051 : List WordIR.Op := [.bnot 9926]
def bytes10051 : Bytes := ("    let r000027a3: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10051 : bytes10051=statementBytes 10147 (op10051.map lower) ∧ bytes10051.length=37 := by core033_kernel_decide
def op10052 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10052 : Bytes := ("    let r000027a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10052 : bytes10052=statementBytes 10148 (op10052.map lower) ∧ bytes10052.length=41 := by core033_kernel_decide
def op10053 : List WordIR.Op := [.badd 10147 10148]
def bytes10053 : Bytes := ("    let r000027a5: u32 = r000027a3.wrapping_add(r000027a4);\n" : String).toByteArray.data.toList
theorem checked10053 : bytes10053=statementBytes 10149 (op10053.map lower) ∧ bytes10053.length=60 := by core033_kernel_decide
def op10054 : List WordIR.Op := [.band 10149 36]
def bytes10054 : Bytes := ("    let r000027a6: u32 = r000027a5 & r00000024;\n" : String).toByteArray.data.toList
theorem checked10054 : bytes10054=statementBytes 10150 (op10054.map lower) ∧ bytes10054.length=48 := by core033_kernel_decide
def op10055 : List WordIR.Op := [.bnot 9926]
def bytes10055 : Bytes := ("    let r000027a7: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10055 : bytes10055=statementBytes 10151 (op10055.map lower) ∧ bytes10055.length=37 := by core033_kernel_decide
def op10056 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10056 : Bytes := ("    let r000027a8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10056 : bytes10056=statementBytes 10152 (op10056.map lower) ∧ bytes10056.length=41 := by core033_kernel_decide
def op10057 : List WordIR.Op := [.badd 10151 10152]
def bytes10057 : Bytes := ("    let r000027a9: u32 = r000027a7.wrapping_add(r000027a8);\n" : String).toByteArray.data.toList
theorem checked10057 : bytes10057=statementBytes 10153 (op10057.map lower) ∧ bytes10057.length=60 := by core033_kernel_decide
def op10058 : List WordIR.Op := [.bnot 10153]
def bytes10058 : Bytes := ("    let r000027aa: u32 = !r000027a9;\n" : String).toByteArray.data.toList
theorem checked10058 : bytes10058=statementBytes 10154 (op10058.map lower) ∧ bytes10058.length=37 := by core033_kernel_decide
def op10059 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10059 : Bytes := ("    let r000027ab: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10059 : bytes10059=statementBytes 10155 (op10059.map lower) ∧ bytes10059.length=41 := by core033_kernel_decide
def op10060 : List WordIR.Op := [.band 10154 10155]
def bytes10060 : Bytes := ("    let r000027ac: u32 = r000027aa & r000027ab;\n" : String).toByteArray.data.toList
theorem checked10060 : bytes10060=statementBytes 10156 (op10060.map lower) ∧ bytes10060.length=48 := by core033_kernel_decide
def op10061 : List WordIR.Op := [.bxor 10150 10156]
def bytes10061 : Bytes := ("    let r000027ad: u32 = r000027a6 ^ r000027ac;\n" : String).toByteArray.data.toList
theorem checked10061 : bytes10061=statementBytes 10157 (op10061.map lower) ∧ bytes10061.length=48 := by core033_kernel_decide
def op10062 : List WordIR.Op := [.bnot 9926]
def bytes10062 : Bytes := ("    let r000027ae: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10062 : bytes10062=statementBytes 10158 (op10062.map lower) ∧ bytes10062.length=37 := by core033_kernel_decide
def op10063 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10063 : Bytes := ("    let r000027af: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10063 : bytes10063=statementBytes 10159 (op10063.map lower) ∧ bytes10063.length=41 := by core033_kernel_decide
def op10064 : List WordIR.Op := [.badd 10158 10159]
def bytes10064 : Bytes := ("    let r000027b0: u32 = r000027ae.wrapping_add(r000027af);\n" : String).toByteArray.data.toList
theorem checked10064 : bytes10064=statementBytes 10160 (op10064.map lower) ∧ bytes10064.length=60 := by core033_kernel_decide
def op10065 : List WordIR.Op := [.band 10160 37]
def bytes10065 : Bytes := ("    let r000027b1: u32 = r000027b0 & r00000025;\n" : String).toByteArray.data.toList
theorem checked10065 : bytes10065=statementBytes 10161 (op10065.map lower) ∧ bytes10065.length=48 := by core033_kernel_decide
def op10066 : List WordIR.Op := [.bnot 9926]
def bytes10066 : Bytes := ("    let r000027b2: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10066 : bytes10066=statementBytes 10162 (op10066.map lower) ∧ bytes10066.length=37 := by core033_kernel_decide
def op10067 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10067 : Bytes := ("    let r000027b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10067 : bytes10067=statementBytes 10163 (op10067.map lower) ∧ bytes10067.length=41 := by core033_kernel_decide
def op10068 : List WordIR.Op := [.badd 10162 10163]
def bytes10068 : Bytes := ("    let r000027b4: u32 = r000027b2.wrapping_add(r000027b3);\n" : String).toByteArray.data.toList
theorem checked10068 : bytes10068=statementBytes 10164 (op10068.map lower) ∧ bytes10068.length=60 := by core033_kernel_decide
def op10069 : List WordIR.Op := [.bnot 10164]
def bytes10069 : Bytes := ("    let r000027b5: u32 = !r000027b4;\n" : String).toByteArray.data.toList
theorem checked10069 : bytes10069=statementBytes 10165 (op10069.map lower) ∧ bytes10069.length=37 := by core033_kernel_decide
def op10070 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10070 : Bytes := ("    let r000027b6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10070 : bytes10070=statementBytes 10166 (op10070.map lower) ∧ bytes10070.length=41 := by core033_kernel_decide
def op10071 : List WordIR.Op := [.band 10165 10166]
def bytes10071 : Bytes := ("    let r000027b7: u32 = r000027b5 & r000027b6;\n" : String).toByteArray.data.toList
theorem checked10071 : bytes10071=statementBytes 10167 (op10071.map lower) ∧ bytes10071.length=48 := by core033_kernel_decide
def op10072 : List WordIR.Op := [.bxor 10161 10167]
def bytes10072 : Bytes := ("    let r000027b8: u32 = r000027b1 ^ r000027b7;\n" : String).toByteArray.data.toList
theorem checked10072 : bytes10072=statementBytes 10168 (op10072.map lower) ∧ bytes10072.length=48 := by core033_kernel_decide
def op10073 : List WordIR.Op := [.bnot 9926]
def bytes10073 : Bytes := ("    let r000027b9: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10073 : bytes10073=statementBytes 10169 (op10073.map lower) ∧ bytes10073.length=37 := by core033_kernel_decide
def op10074 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10074 : Bytes := ("    let r000027ba: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10074 : bytes10074=statementBytes 10170 (op10074.map lower) ∧ bytes10074.length=41 := by core033_kernel_decide
def op10075 : List WordIR.Op := [.badd 10169 10170]
def bytes10075 : Bytes := ("    let r000027bb: u32 = r000027b9.wrapping_add(r000027ba);\n" : String).toByteArray.data.toList
theorem checked10075 : bytes10075=statementBytes 10171 (op10075.map lower) ∧ bytes10075.length=60 := by core033_kernel_decide
def op10076 : List WordIR.Op := [.band 10171 38]
def bytes10076 : Bytes := ("    let r000027bc: u32 = r000027bb & r00000026;\n" : String).toByteArray.data.toList
theorem checked10076 : bytes10076=statementBytes 10172 (op10076.map lower) ∧ bytes10076.length=48 := by core033_kernel_decide
def op10077 : List WordIR.Op := [.bnot 9926]
def bytes10077 : Bytes := ("    let r000027bd: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10077 : bytes10077=statementBytes 10173 (op10077.map lower) ∧ bytes10077.length=37 := by core033_kernel_decide
def op10078 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10078 : Bytes := ("    let r000027be: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10078 : bytes10078=statementBytes 10174 (op10078.map lower) ∧ bytes10078.length=41 := by core033_kernel_decide
def op10079 : List WordIR.Op := [.badd 10173 10174]
def bytes10079 : Bytes := ("    let r000027bf: u32 = r000027bd.wrapping_add(r000027be);\n" : String).toByteArray.data.toList
theorem checked10079 : bytes10079=statementBytes 10175 (op10079.map lower) ∧ bytes10079.length=60 := by core033_kernel_decide
def op10080 : List WordIR.Op := [.bnot 10175]
def bytes10080 : Bytes := ("    let r000027c0: u32 = !r000027bf;\n" : String).toByteArray.data.toList
theorem checked10080 : bytes10080=statementBytes 10176 (op10080.map lower) ∧ bytes10080.length=37 := by core033_kernel_decide
def op10081 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10081 : Bytes := ("    let r000027c1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10081 : bytes10081=statementBytes 10177 (op10081.map lower) ∧ bytes10081.length=41 := by core033_kernel_decide
def op10082 : List WordIR.Op := [.band 10176 10177]
def bytes10082 : Bytes := ("    let r000027c2: u32 = r000027c0 & r000027c1;\n" : String).toByteArray.data.toList
theorem checked10082 : bytes10082=statementBytes 10178 (op10082.map lower) ∧ bytes10082.length=48 := by core033_kernel_decide
def op10083 : List WordIR.Op := [.bxor 10172 10178]
def bytes10083 : Bytes := ("    let r000027c3: u32 = r000027bc ^ r000027c2;\n" : String).toByteArray.data.toList
theorem checked10083 : bytes10083=statementBytes 10179 (op10083.map lower) ∧ bytes10083.length=48 := by core033_kernel_decide
def op10084 : List WordIR.Op := [.bnot 9926]
def bytes10084 : Bytes := ("    let r000027c4: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10084 : bytes10084=statementBytes 10180 (op10084.map lower) ∧ bytes10084.length=37 := by core033_kernel_decide
def op10085 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10085 : Bytes := ("    let r000027c5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10085 : bytes10085=statementBytes 10181 (op10085.map lower) ∧ bytes10085.length=41 := by core033_kernel_decide
def op10086 : List WordIR.Op := [.badd 10180 10181]
def bytes10086 : Bytes := ("    let r000027c6: u32 = r000027c4.wrapping_add(r000027c5);\n" : String).toByteArray.data.toList
theorem checked10086 : bytes10086=statementBytes 10182 (op10086.map lower) ∧ bytes10086.length=60 := by core033_kernel_decide
def op10087 : List WordIR.Op := [.band 10182 39]
def bytes10087 : Bytes := ("    let r000027c7: u32 = r000027c6 & r00000027;\n" : String).toByteArray.data.toList
theorem checked10087 : bytes10087=statementBytes 10183 (op10087.map lower) ∧ bytes10087.length=48 := by core033_kernel_decide
def op10088 : List WordIR.Op := [.bnot 9926]
def bytes10088 : Bytes := ("    let r000027c8: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10088 : bytes10088=statementBytes 10184 (op10088.map lower) ∧ bytes10088.length=37 := by core033_kernel_decide
def op10089 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10089 : Bytes := ("    let r000027c9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10089 : bytes10089=statementBytes 10185 (op10089.map lower) ∧ bytes10089.length=41 := by core033_kernel_decide
def op10090 : List WordIR.Op := [.badd 10184 10185]
def bytes10090 : Bytes := ("    let r000027ca: u32 = r000027c8.wrapping_add(r000027c9);\n" : String).toByteArray.data.toList
theorem checked10090 : bytes10090=statementBytes 10186 (op10090.map lower) ∧ bytes10090.length=60 := by core033_kernel_decide
def op10091 : List WordIR.Op := [.bnot 10186]
def bytes10091 : Bytes := ("    let r000027cb: u32 = !r000027ca;\n" : String).toByteArray.data.toList
theorem checked10091 : bytes10091=statementBytes 10187 (op10091.map lower) ∧ bytes10091.length=37 := by core033_kernel_decide
def op10092 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10092 : Bytes := ("    let r000027cc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10092 : bytes10092=statementBytes 10188 (op10092.map lower) ∧ bytes10092.length=41 := by core033_kernel_decide
def op10093 : List WordIR.Op := [.band 10187 10188]
def bytes10093 : Bytes := ("    let r000027cd: u32 = r000027cb & r000027cc;\n" : String).toByteArray.data.toList
theorem checked10093 : bytes10093=statementBytes 10189 (op10093.map lower) ∧ bytes10093.length=48 := by core033_kernel_decide
def op10094 : List WordIR.Op := [.bxor 10183 10189]
def bytes10094 : Bytes := ("    let r000027ce: u32 = r000027c7 ^ r000027cd;\n" : String).toByteArray.data.toList
theorem checked10094 : bytes10094=statementBytes 10190 (op10094.map lower) ∧ bytes10094.length=48 := by core033_kernel_decide
def op10095 : List WordIR.Op := [.bnot 9926]
def bytes10095 : Bytes := ("    let r000027cf: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10095 : bytes10095=statementBytes 10191 (op10095.map lower) ∧ bytes10095.length=37 := by core033_kernel_decide
def op10096 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10096 : Bytes := ("    let r000027d0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10096 : bytes10096=statementBytes 10192 (op10096.map lower) ∧ bytes10096.length=41 := by core033_kernel_decide
def op10097 : List WordIR.Op := [.badd 10191 10192]
def bytes10097 : Bytes := ("    let r000027d1: u32 = r000027cf.wrapping_add(r000027d0);\n" : String).toByteArray.data.toList
theorem checked10097 : bytes10097=statementBytes 10193 (op10097.map lower) ∧ bytes10097.length=60 := by core033_kernel_decide
def op10098 : List WordIR.Op := [.band 10193 40]
def bytes10098 : Bytes := ("    let r000027d2: u32 = r000027d1 & r00000028;\n" : String).toByteArray.data.toList
theorem checked10098 : bytes10098=statementBytes 10194 (op10098.map lower) ∧ bytes10098.length=48 := by core033_kernel_decide
def op10099 : List WordIR.Op := [.bnot 9926]
def bytes10099 : Bytes := ("    let r000027d3: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10099 : bytes10099=statementBytes 10195 (op10099.map lower) ∧ bytes10099.length=37 := by core033_kernel_decide
def op10100 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10100 : Bytes := ("    let r000027d4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10100 : bytes10100=statementBytes 10196 (op10100.map lower) ∧ bytes10100.length=41 := by core033_kernel_decide
def op10101 : List WordIR.Op := [.badd 10195 10196]
def bytes10101 : Bytes := ("    let r000027d5: u32 = r000027d3.wrapping_add(r000027d4);\n" : String).toByteArray.data.toList
theorem checked10101 : bytes10101=statementBytes 10197 (op10101.map lower) ∧ bytes10101.length=60 := by core033_kernel_decide
def op10102 : List WordIR.Op := [.bnot 10197]
def bytes10102 : Bytes := ("    let r000027d6: u32 = !r000027d5;\n" : String).toByteArray.data.toList
theorem checked10102 : bytes10102=statementBytes 10198 (op10102.map lower) ∧ bytes10102.length=37 := by core033_kernel_decide
def op10103 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10103 : Bytes := ("    let r000027d7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10103 : bytes10103=statementBytes 10199 (op10103.map lower) ∧ bytes10103.length=41 := by core033_kernel_decide
def op10104 : List WordIR.Op := [.band 10198 10199]
def bytes10104 : Bytes := ("    let r000027d8: u32 = r000027d6 & r000027d7;\n" : String).toByteArray.data.toList
theorem checked10104 : bytes10104=statementBytes 10200 (op10104.map lower) ∧ bytes10104.length=48 := by core033_kernel_decide
def op10105 : List WordIR.Op := [.bxor 10194 10200]
def bytes10105 : Bytes := ("    let r000027d9: u32 = r000027d2 ^ r000027d8;\n" : String).toByteArray.data.toList
theorem checked10105 : bytes10105=statementBytes 10201 (op10105.map lower) ∧ bytes10105.length=48 := by core033_kernel_decide
def op10106 : List WordIR.Op := [.bnot 9926]
def bytes10106 : Bytes := ("    let r000027da: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10106 : bytes10106=statementBytes 10202 (op10106.map lower) ∧ bytes10106.length=37 := by core033_kernel_decide
def op10107 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10107 : Bytes := ("    let r000027db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10107 : bytes10107=statementBytes 10203 (op10107.map lower) ∧ bytes10107.length=41 := by core033_kernel_decide
def op10108 : List WordIR.Op := [.badd 10202 10203]
def bytes10108 : Bytes := ("    let r000027dc: u32 = r000027da.wrapping_add(r000027db);\n" : String).toByteArray.data.toList
theorem checked10108 : bytes10108=statementBytes 10204 (op10108.map lower) ∧ bytes10108.length=60 := by core033_kernel_decide
def op10109 : List WordIR.Op := [.band 10204 41]
def bytes10109 : Bytes := ("    let r000027dd: u32 = r000027dc & r00000029;\n" : String).toByteArray.data.toList
theorem checked10109 : bytes10109=statementBytes 10205 (op10109.map lower) ∧ bytes10109.length=48 := by core033_kernel_decide
def op10110 : List WordIR.Op := [.bnot 9926]
def bytes10110 : Bytes := ("    let r000027de: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10110 : bytes10110=statementBytes 10206 (op10110.map lower) ∧ bytes10110.length=37 := by core033_kernel_decide
def op10111 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10111 : Bytes := ("    let r000027df: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10111 : bytes10111=statementBytes 10207 (op10111.map lower) ∧ bytes10111.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10048,op10049,op10050,op10051,op10052,op10053,op10054,op10055,op10056,op10057,op10058,op10059,op10060,op10061,op10062,op10063,op10064,op10065,op10066,op10067,op10068,op10069,op10070,op10071,op10072,op10073,op10074,op10075,op10076,op10077,op10078,op10079,op10080,op10081,op10082,op10083,op10084,op10085,op10086,op10087,op10088,op10089,op10090,op10091,op10092,op10093,op10094,op10095,op10096,op10097,op10098,op10099,op10100,op10101,op10102,op10103,op10104,op10105,op10106,op10107,op10108,op10109,op10110,op10111]
def chunks : List Bytes := [bytes10048,bytes10049,bytes10050,bytes10051,bytes10052,bytes10053,bytes10054,bytes10055,bytes10056,bytes10057,bytes10058,bytes10059,bytes10060,bytes10061,bytes10062,bytes10063,bytes10064,bytes10065,bytes10066,bytes10067,bytes10068,bytes10069,bytes10070,bytes10071,bytes10072,bytes10073,bytes10074,bytes10075,bytes10076,bytes10077,bytes10078,bytes10079,bytes10080,bytes10081,bytes10082,bytes10083,bytes10084,bytes10085,bytes10086,bytes10087,bytes10088,bytes10089,bytes10090,bytes10091,bytes10092,bytes10093,bytes10094,bytes10095,bytes10096,bytes10097,bytes10098,bytes10099,bytes10100,bytes10101,bytes10102,bytes10103,bytes10104,bytes10105,bytes10106,bytes10107,bytes10108,bytes10109,bytes10110,bytes10111]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10144 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10048.1 (.cons _ _ _ _ _ checked10049.1 (.cons _ _ _ _ _ checked10050.1 (.cons _ _ _ _ _ checked10051.1 (.cons _ _ _ _ _ checked10052.1 (.cons _ _ _ _ _ checked10053.1 (.cons _ _ _ _ _ checked10054.1 (.cons _ _ _ _ _ checked10055.1 (.cons _ _ _ _ _ checked10056.1 (.cons _ _ _ _ _ checked10057.1 (.cons _ _ _ _ _ checked10058.1 (.cons _ _ _ _ _ checked10059.1 (.cons _ _ _ _ _ checked10060.1 (.cons _ _ _ _ _ checked10061.1 (.cons _ _ _ _ _ checked10062.1 (.cons _ _ _ _ _ checked10063.1 (.cons _ _ _ _ _ checked10064.1 (.cons _ _ _ _ _ checked10065.1 (.cons _ _ _ _ _ checked10066.1 (.cons _ _ _ _ _ checked10067.1 (.cons _ _ _ _ _ checked10068.1 (.cons _ _ _ _ _ checked10069.1 (.cons _ _ _ _ _ checked10070.1 (.cons _ _ _ _ _ checked10071.1 (.cons _ _ _ _ _ checked10072.1 (.cons _ _ _ _ _ checked10073.1 (.cons _ _ _ _ _ checked10074.1 (.cons _ _ _ _ _ checked10075.1 (.cons _ _ _ _ _ checked10076.1 (.cons _ _ _ _ _ checked10077.1 (.cons _ _ _ _ _ checked10078.1 (.cons _ _ _ _ _ checked10079.1 (.cons _ _ _ _ _ checked10080.1 (.cons _ _ _ _ _ checked10081.1 (.cons _ _ _ _ _ checked10082.1 (.cons _ _ _ _ _ checked10083.1 (.cons _ _ _ _ _ checked10084.1 (.cons _ _ _ _ _ checked10085.1 (.cons _ _ _ _ _ checked10086.1 (.cons _ _ _ _ _ checked10087.1 (.cons _ _ _ _ _ checked10088.1 (.cons _ _ _ _ _ checked10089.1 (.cons _ _ _ _ _ checked10090.1 (.cons _ _ _ _ _ checked10091.1 (.cons _ _ _ _ _ checked10092.1 (.cons _ _ _ _ _ checked10093.1 (.cons _ _ _ _ _ checked10094.1 (.cons _ _ _ _ _ checked10095.1 (.cons _ _ _ _ _ checked10096.1 (.cons _ _ _ _ _ checked10097.1 (.cons _ _ _ _ _ checked10098.1 (.cons _ _ _ _ _ checked10099.1 (.cons _ _ _ _ _ checked10100.1 (.cons _ _ _ _ _ checked10101.1 (.cons _ _ _ _ _ checked10102.1 (.cons _ _ _ _ _ checked10103.1 (.cons _ _ _ _ _ checked10104.1 (.cons _ _ _ _ _ checked10105.1 (.cons _ _ _ _ _ checked10106.1 (.cons _ _ _ _ _ checked10107.1 (.cons _ _ _ _ _ checked10108.1 (.cons _ _ _ _ _ checked10109.1 (.cons _ _ _ _ _ checked10110.1 (.cons _ _ _ _ _ checked10111.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10144 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2891 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10048.2,checked10049.2,checked10050.2,checked10051.2,checked10052.2,checked10053.2,checked10054.2,checked10055.2,checked10056.2,checked10057.2,checked10058.2,checked10059.2,checked10060.2,checked10061.2,checked10062.2,checked10063.2,checked10064.2,checked10065.2,checked10066.2,checked10067.2,checked10068.2,checked10069.2,checked10070.2,checked10071.2,checked10072.2,checked10073.2,checked10074.2,checked10075.2,checked10076.2,checked10077.2,checked10078.2,checked10079.2,checked10080.2,checked10081.2,checked10082.2,checked10083.2,checked10084.2,checked10085.2,checked10086.2,checked10087.2,checked10088.2,checked10089.2,checked10090.2,checked10091.2,checked10092.2,checked10093.2,checked10094.2,checked10095.2,checked10096.2,checked10097.2,checked10098.2,checked10099.2,checked10100.2,checked10101.2,checked10102.2,checked10103.2,checked10104.2,checked10105.2,checked10106.2,checked10107.2,checked10108.2,checked10109.2,checked10110.2,checked10111.2]
  decide
end ArtifactPairedPathRoundGroup157
