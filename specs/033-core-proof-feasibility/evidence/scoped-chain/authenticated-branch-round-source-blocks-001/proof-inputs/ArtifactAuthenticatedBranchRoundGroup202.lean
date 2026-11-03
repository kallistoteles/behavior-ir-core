import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup202
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12928 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12928 : Bytes := ("    let r000032f6: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12928 : bytes12928=statementBytes 13046 (op12928.map lower) ∧ bytes12928.length=41 := by core033_kernel_decide
def op12929 : List WordIR.Op := [.bxor 693 13046]
def bytes12929 : Bytes := ("    let r000032f7: u32 = r000002b5 ^ r000032f6;\n" : String).toByteArray.data.toList
theorem checked12929 : bytes12929=statementBytes 13047 (op12929.map lower) ∧ bytes12929.length=48 := by core033_kernel_decide
def op12930 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12930 : Bytes := ("    let r000032f8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12930 : bytes12930=statementBytes 13048 (op12930.map lower) ∧ bytes12930.length=41 := by core033_kernel_decide
def op12931 : List WordIR.Op := [.bnot 13048]
def bytes12931 : Bytes := ("    let r000032f9: u32 = !r000032f8;\n" : String).toByteArray.data.toList
theorem checked12931 : bytes12931=statementBytes 13049 (op12931.map lower) ∧ bytes12931.length=37 := by core033_kernel_decide
def op12932 : List WordIR.Op := [.bxor 13047 13049]
def bytes12932 : Bytes := ("    let r000032fa: u32 = r000032f7 ^ r000032f9;\n" : String).toByteArray.data.toList
theorem checked12932 : bytes12932=statementBytes 13050 (op12932.map lower) ∧ bytes12932.length=48 := by core033_kernel_decide
def op12933 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12933 : Bytes := ("    let r000032fb: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12933 : bytes12933=statementBytes 13051 (op12933.map lower) ∧ bytes12933.length=41 := by core033_kernel_decide
def op12934 : List WordIR.Op := [.bxor 693 13051]
def bytes12934 : Bytes := ("    let r000032fc: u32 = r000002b5 ^ r000032fb;\n" : String).toByteArray.data.toList
theorem checked12934 : bytes12934=statementBytes 13052 (op12934.map lower) ∧ bytes12934.length=48 := by core033_kernel_decide
def op12935 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12935 : Bytes := ("    let r000032fd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12935 : bytes12935=statementBytes 13053 (op12935.map lower) ∧ bytes12935.length=41 := by core033_kernel_decide
def op12936 : List WordIR.Op := [.bnot 13053]
def bytes12936 : Bytes := ("    let r000032fe: u32 = !r000032fd;\n" : String).toByteArray.data.toList
theorem checked12936 : bytes12936=statementBytes 13054 (op12936.map lower) ∧ bytes12936.length=37 := by core033_kernel_decide
def op12937 : List WordIR.Op := [.badd 13052 13054]
def bytes12937 : Bytes := ("    let r000032ff: u32 = r000032fc.wrapping_add(r000032fe);\n" : String).toByteArray.data.toList
theorem checked12937 : bytes12937=statementBytes 13055 (op12937.map lower) ∧ bytes12937.length=60 := by core033_kernel_decide
def op12938 : List WordIR.Op := [.bnot 13055]
def bytes12938 : Bytes := ("    let r00003300: u32 = !r000032ff;\n" : String).toByteArray.data.toList
theorem checked12938 : bytes12938=statementBytes 13056 (op12938.map lower) ∧ bytes12938.length=37 := by core033_kernel_decide
def op12939 : List WordIR.Op := [.band 13050 13056]
def bytes12939 : Bytes := ("    let r00003301: u32 = r000032fa & r00003300;\n" : String).toByteArray.data.toList
theorem checked12939 : bytes12939=statementBytes 13057 (op12939.map lower) ∧ bytes12939.length=48 := by core033_kernel_decide
def op12940 : List WordIR.Op := [.bxor 13045 13057]
def bytes12940 : Bytes := ("    let r00003302: u32 = r000032f5 ^ r00003301;\n" : String).toByteArray.data.toList
theorem checked12940 : bytes12940=statementBytes 13058 (op12940.map lower) ∧ bytes12940.length=48 := by core033_kernel_decide
def op12941 : List WordIR.Op := [.shr 13058 31]
def bytes12941 : Bytes := ("    let r00003303: u32 = r00003302 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12941 : bytes12941=statementBytes 13059 (op12941.map lower) ∧ bytes12941.length=54 := by core033_kernel_decide
def op12942 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12942 : Bytes := ("    let r00003304: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12942 : bytes12942=statementBytes 13060 (op12942.map lower) ∧ bytes12942.length=41 := by core033_kernel_decide
def op12943 : List WordIR.Op := [.bxor 13059 13060]
def bytes12943 : Bytes := ("    let r00003305: u32 = r00003303 ^ r00003304;\n" : String).toByteArray.data.toList
theorem checked12943 : bytes12943=statementBytes 13061 (op12943.map lower) ∧ bytes12943.length=48 := by core033_kernel_decide
def op12944 : List WordIR.Op := [.bnot 13061]
def bytes12944 : Bytes := ("    let r00003306: u32 = !r00003305;\n" : String).toByteArray.data.toList
theorem checked12944 : bytes12944=statementBytes 13062 (op12944.map lower) ∧ bytes12944.length=37 := by core033_kernel_decide
def op12945 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12945 : Bytes := ("    let r00003307: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12945 : bytes12945=statementBytes 13063 (op12945.map lower) ∧ bytes12945.length=41 := by core033_kernel_decide
def op12946 : List WordIR.Op := [.badd 13062 13063]
def bytes12946 : Bytes := ("    let r00003308: u32 = r00003306.wrapping_add(r00003307);\n" : String).toByteArray.data.toList
theorem checked12946 : bytes12946=statementBytes 13064 (op12946.map lower) ∧ bytes12946.length=60 := by core033_kernel_decide
def op12947 : List WordIR.Op := [.band 13064 11274]
def bytes12947 : Bytes := ("    let r00003309: u32 = r00003308 & r00002c0a;\n" : String).toByteArray.data.toList
theorem checked12947 : bytes12947=statementBytes 13065 (op12947.map lower) ∧ bytes12947.length=48 := by core033_kernel_decide
def op12948 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12948 : Bytes := ("    let r0000330a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12948 : bytes12948=statementBytes 13066 (op12948.map lower) ∧ bytes12948.length=41 := by core033_kernel_decide
def op12949 : List WordIR.Op := [.bxor 693 13066]
def bytes12949 : Bytes := ("    let r0000330b: u32 = r000002b5 ^ r0000330a;\n" : String).toByteArray.data.toList
theorem checked12949 : bytes12949=statementBytes 13067 (op12949.map lower) ∧ bytes12949.length=48 := by core033_kernel_decide
def op12950 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12950 : Bytes := ("    let r0000330c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12950 : bytes12950=statementBytes 13068 (op12950.map lower) ∧ bytes12950.length=41 := by core033_kernel_decide
def op12951 : List WordIR.Op := [.bnot 13068]
def bytes12951 : Bytes := ("    let r0000330d: u32 = !r0000330c;\n" : String).toByteArray.data.toList
theorem checked12951 : bytes12951=statementBytes 13069 (op12951.map lower) ∧ bytes12951.length=37 := by core033_kernel_decide
def op12952 : List WordIR.Op := [.band 13067 13069]
def bytes12952 : Bytes := ("    let r0000330e: u32 = r0000330b & r0000330d;\n" : String).toByteArray.data.toList
theorem checked12952 : bytes12952=statementBytes 13070 (op12952.map lower) ∧ bytes12952.length=48 := by core033_kernel_decide
def op12953 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12953 : Bytes := ("    let r0000330f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12953 : bytes12953=statementBytes 13071 (op12953.map lower) ∧ bytes12953.length=41 := by core033_kernel_decide
def op12954 : List WordIR.Op := [.bxor 693 13071]
def bytes12954 : Bytes := ("    let r00003310: u32 = r000002b5 ^ r0000330f;\n" : String).toByteArray.data.toList
theorem checked12954 : bytes12954=statementBytes 13072 (op12954.map lower) ∧ bytes12954.length=48 := by core033_kernel_decide
def op12955 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12955 : Bytes := ("    let r00003311: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12955 : bytes12955=statementBytes 13073 (op12955.map lower) ∧ bytes12955.length=41 := by core033_kernel_decide
def op12956 : List WordIR.Op := [.bnot 13073]
def bytes12956 : Bytes := ("    let r00003312: u32 = !r00003311;\n" : String).toByteArray.data.toList
theorem checked12956 : bytes12956=statementBytes 13074 (op12956.map lower) ∧ bytes12956.length=37 := by core033_kernel_decide
def op12957 : List WordIR.Op := [.bxor 13072 13074]
def bytes12957 : Bytes := ("    let r00003313: u32 = r00003310 ^ r00003312;\n" : String).toByteArray.data.toList
theorem checked12957 : bytes12957=statementBytes 13075 (op12957.map lower) ∧ bytes12957.length=48 := by core033_kernel_decide
def op12958 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12958 : Bytes := ("    let r00003314: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12958 : bytes12958=statementBytes 13076 (op12958.map lower) ∧ bytes12958.length=41 := by core033_kernel_decide
def op12959 : List WordIR.Op := [.bxor 693 13076]
def bytes12959 : Bytes := ("    let r00003315: u32 = r000002b5 ^ r00003314;\n" : String).toByteArray.data.toList
theorem checked12959 : bytes12959=statementBytes 13077 (op12959.map lower) ∧ bytes12959.length=48 := by core033_kernel_decide
def op12960 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12960 : Bytes := ("    let r00003316: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12960 : bytes12960=statementBytes 13078 (op12960.map lower) ∧ bytes12960.length=41 := by core033_kernel_decide
def op12961 : List WordIR.Op := [.bnot 13078]
def bytes12961 : Bytes := ("    let r00003317: u32 = !r00003316;\n" : String).toByteArray.data.toList
theorem checked12961 : bytes12961=statementBytes 13079 (op12961.map lower) ∧ bytes12961.length=37 := by core033_kernel_decide
def op12962 : List WordIR.Op := [.badd 13077 13079]
def bytes12962 : Bytes := ("    let r00003318: u32 = r00003315.wrapping_add(r00003317);\n" : String).toByteArray.data.toList
theorem checked12962 : bytes12962=statementBytes 13080 (op12962.map lower) ∧ bytes12962.length=60 := by core033_kernel_decide
def op12963 : List WordIR.Op := [.bnot 13080]
def bytes12963 : Bytes := ("    let r00003319: u32 = !r00003318;\n" : String).toByteArray.data.toList
theorem checked12963 : bytes12963=statementBytes 13081 (op12963.map lower) ∧ bytes12963.length=37 := by core033_kernel_decide
def op12964 : List WordIR.Op := [.band 13075 13081]
def bytes12964 : Bytes := ("    let r0000331a: u32 = r00003313 & r00003319;\n" : String).toByteArray.data.toList
theorem checked12964 : bytes12964=statementBytes 13082 (op12964.map lower) ∧ bytes12964.length=48 := by core033_kernel_decide
def op12965 : List WordIR.Op := [.bxor 13070 13082]
def bytes12965 : Bytes := ("    let r0000331b: u32 = r0000330e ^ r0000331a;\n" : String).toByteArray.data.toList
theorem checked12965 : bytes12965=statementBytes 13083 (op12965.map lower) ∧ bytes12965.length=48 := by core033_kernel_decide
def op12966 : List WordIR.Op := [.shr 13083 31]
def bytes12966 : Bytes := ("    let r0000331c: u32 = r0000331b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12966 : bytes12966=statementBytes 13084 (op12966.map lower) ∧ bytes12966.length=54 := by core033_kernel_decide
def op12967 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12967 : Bytes := ("    let r0000331d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12967 : bytes12967=statementBytes 13085 (op12967.map lower) ∧ bytes12967.length=41 := by core033_kernel_decide
def op12968 : List WordIR.Op := [.bxor 13084 13085]
def bytes12968 : Bytes := ("    let r0000331e: u32 = r0000331c ^ r0000331d;\n" : String).toByteArray.data.toList
theorem checked12968 : bytes12968=statementBytes 13086 (op12968.map lower) ∧ bytes12968.length=48 := by core033_kernel_decide
def op12969 : List WordIR.Op := [.bnot 13086]
def bytes12969 : Bytes := ("    let r0000331f: u32 = !r0000331e;\n" : String).toByteArray.data.toList
theorem checked12969 : bytes12969=statementBytes 13087 (op12969.map lower) ∧ bytes12969.length=37 := by core033_kernel_decide
def op12970 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12970 : Bytes := ("    let r00003320: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12970 : bytes12970=statementBytes 13088 (op12970.map lower) ∧ bytes12970.length=41 := by core033_kernel_decide
def op12971 : List WordIR.Op := [.badd 13087 13088]
def bytes12971 : Bytes := ("    let r00003321: u32 = r0000331f.wrapping_add(r00003320);\n" : String).toByteArray.data.toList
theorem checked12971 : bytes12971=statementBytes 13089 (op12971.map lower) ∧ bytes12971.length=60 := by core033_kernel_decide
def op12972 : List WordIR.Op := [.bnot 13089]
def bytes12972 : Bytes := ("    let r00003322: u32 = !r00003321;\n" : String).toByteArray.data.toList
theorem checked12972 : bytes12972=statementBytes 13090 (op12972.map lower) ∧ bytes12972.length=37 := by core033_kernel_decide
def op12973 : List WordIR.Op := [.band 13090 1640]
def bytes12973 : Bytes := ("    let r00003323: u32 = r00003322 & r00000668;\n" : String).toByteArray.data.toList
theorem checked12973 : bytes12973=statementBytes 13091 (op12973.map lower) ∧ bytes12973.length=48 := by core033_kernel_decide
def op12974 : List WordIR.Op := [.bxor 13065 13091]
def bytes12974 : Bytes := ("    let r00003324: u32 = r00003309 ^ r00003323;\n" : String).toByteArray.data.toList
theorem checked12974 : bytes12974=statementBytes 13092 (op12974.map lower) ∧ bytes12974.length=48 := by core033_kernel_decide
def op12975 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12975 : Bytes := ("    let r00003325: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12975 : bytes12975=statementBytes 13093 (op12975.map lower) ∧ bytes12975.length=41 := by core033_kernel_decide
def op12976 : List WordIR.Op := [.bxor 693 13093]
def bytes12976 : Bytes := ("    let r00003326: u32 = r000002b5 ^ r00003325;\n" : String).toByteArray.data.toList
theorem checked12976 : bytes12976=statementBytes 13094 (op12976.map lower) ∧ bytes12976.length=48 := by core033_kernel_decide
def op12977 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12977 : Bytes := ("    let r00003327: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12977 : bytes12977=statementBytes 13095 (op12977.map lower) ∧ bytes12977.length=41 := by core033_kernel_decide
def op12978 : List WordIR.Op := [.bnot 13095]
def bytes12978 : Bytes := ("    let r00003328: u32 = !r00003327;\n" : String).toByteArray.data.toList
theorem checked12978 : bytes12978=statementBytes 13096 (op12978.map lower) ∧ bytes12978.length=37 := by core033_kernel_decide
def op12979 : List WordIR.Op := [.band 13094 13096]
def bytes12979 : Bytes := ("    let r00003329: u32 = r00003326 & r00003328;\n" : String).toByteArray.data.toList
theorem checked12979 : bytes12979=statementBytes 13097 (op12979.map lower) ∧ bytes12979.length=48 := by core033_kernel_decide
def op12980 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12980 : Bytes := ("    let r0000332a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12980 : bytes12980=statementBytes 13098 (op12980.map lower) ∧ bytes12980.length=41 := by core033_kernel_decide
def op12981 : List WordIR.Op := [.bxor 693 13098]
def bytes12981 : Bytes := ("    let r0000332b: u32 = r000002b5 ^ r0000332a;\n" : String).toByteArray.data.toList
theorem checked12981 : bytes12981=statementBytes 13099 (op12981.map lower) ∧ bytes12981.length=48 := by core033_kernel_decide
def op12982 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12982 : Bytes := ("    let r0000332c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12982 : bytes12982=statementBytes 13100 (op12982.map lower) ∧ bytes12982.length=41 := by core033_kernel_decide
def op12983 : List WordIR.Op := [.bnot 13100]
def bytes12983 : Bytes := ("    let r0000332d: u32 = !r0000332c;\n" : String).toByteArray.data.toList
theorem checked12983 : bytes12983=statementBytes 13101 (op12983.map lower) ∧ bytes12983.length=37 := by core033_kernel_decide
def op12984 : List WordIR.Op := [.bxor 13099 13101]
def bytes12984 : Bytes := ("    let r0000332e: u32 = r0000332b ^ r0000332d;\n" : String).toByteArray.data.toList
theorem checked12984 : bytes12984=statementBytes 13102 (op12984.map lower) ∧ bytes12984.length=48 := by core033_kernel_decide
def op12985 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12985 : Bytes := ("    let r0000332f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12985 : bytes12985=statementBytes 13103 (op12985.map lower) ∧ bytes12985.length=41 := by core033_kernel_decide
def op12986 : List WordIR.Op := [.bxor 693 13103]
def bytes12986 : Bytes := ("    let r00003330: u32 = r000002b5 ^ r0000332f;\n" : String).toByteArray.data.toList
theorem checked12986 : bytes12986=statementBytes 13104 (op12986.map lower) ∧ bytes12986.length=48 := by core033_kernel_decide
def op12987 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12987 : Bytes := ("    let r00003331: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12987 : bytes12987=statementBytes 13105 (op12987.map lower) ∧ bytes12987.length=41 := by core033_kernel_decide
def op12988 : List WordIR.Op := [.bnot 13105]
def bytes12988 : Bytes := ("    let r00003332: u32 = !r00003331;\n" : String).toByteArray.data.toList
theorem checked12988 : bytes12988=statementBytes 13106 (op12988.map lower) ∧ bytes12988.length=37 := by core033_kernel_decide
def op12989 : List WordIR.Op := [.badd 13104 13106]
def bytes12989 : Bytes := ("    let r00003333: u32 = r00003330.wrapping_add(r00003332);\n" : String).toByteArray.data.toList
theorem checked12989 : bytes12989=statementBytes 13107 (op12989.map lower) ∧ bytes12989.length=60 := by core033_kernel_decide
def op12990 : List WordIR.Op := [.bnot 13107]
def bytes12990 : Bytes := ("    let r00003334: u32 = !r00003333;\n" : String).toByteArray.data.toList
theorem checked12990 : bytes12990=statementBytes 13108 (op12990.map lower) ∧ bytes12990.length=37 := by core033_kernel_decide
def op12991 : List WordIR.Op := [.band 13102 13108]
def bytes12991 : Bytes := ("    let r00003335: u32 = r0000332e & r00003334;\n" : String).toByteArray.data.toList
theorem checked12991 : bytes12991=statementBytes 13109 (op12991.map lower) ∧ bytes12991.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12928,op12929,op12930,op12931,op12932,op12933,op12934,op12935,op12936,op12937,op12938,op12939,op12940,op12941,op12942,op12943,op12944,op12945,op12946,op12947,op12948,op12949,op12950,op12951,op12952,op12953,op12954,op12955,op12956,op12957,op12958,op12959,op12960,op12961,op12962,op12963,op12964,op12965,op12966,op12967,op12968,op12969,op12970,op12971,op12972,op12973,op12974,op12975,op12976,op12977,op12978,op12979,op12980,op12981,op12982,op12983,op12984,op12985,op12986,op12987,op12988,op12989,op12990,op12991]
def chunks : List Bytes := [bytes12928,bytes12929,bytes12930,bytes12931,bytes12932,bytes12933,bytes12934,bytes12935,bytes12936,bytes12937,bytes12938,bytes12939,bytes12940,bytes12941,bytes12942,bytes12943,bytes12944,bytes12945,bytes12946,bytes12947,bytes12948,bytes12949,bytes12950,bytes12951,bytes12952,bytes12953,bytes12954,bytes12955,bytes12956,bytes12957,bytes12958,bytes12959,bytes12960,bytes12961,bytes12962,bytes12963,bytes12964,bytes12965,bytes12966,bytes12967,bytes12968,bytes12969,bytes12970,bytes12971,bytes12972,bytes12973,bytes12974,bytes12975,bytes12976,bytes12977,bytes12978,bytes12979,bytes12980,bytes12981,bytes12982,bytes12983,bytes12984,bytes12985,bytes12986,bytes12987,bytes12988,bytes12989,bytes12990,bytes12991]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13046 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12928.1 (.cons _ _ _ _ _ checked12929.1 (.cons _ _ _ _ _ checked12930.1 (.cons _ _ _ _ _ checked12931.1 (.cons _ _ _ _ _ checked12932.1 (.cons _ _ _ _ _ checked12933.1 (.cons _ _ _ _ _ checked12934.1 (.cons _ _ _ _ _ checked12935.1 (.cons _ _ _ _ _ checked12936.1 (.cons _ _ _ _ _ checked12937.1 (.cons _ _ _ _ _ checked12938.1 (.cons _ _ _ _ _ checked12939.1 (.cons _ _ _ _ _ checked12940.1 (.cons _ _ _ _ _ checked12941.1 (.cons _ _ _ _ _ checked12942.1 (.cons _ _ _ _ _ checked12943.1 (.cons _ _ _ _ _ checked12944.1 (.cons _ _ _ _ _ checked12945.1 (.cons _ _ _ _ _ checked12946.1 (.cons _ _ _ _ _ checked12947.1 (.cons _ _ _ _ _ checked12948.1 (.cons _ _ _ _ _ checked12949.1 (.cons _ _ _ _ _ checked12950.1 (.cons _ _ _ _ _ checked12951.1 (.cons _ _ _ _ _ checked12952.1 (.cons _ _ _ _ _ checked12953.1 (.cons _ _ _ _ _ checked12954.1 (.cons _ _ _ _ _ checked12955.1 (.cons _ _ _ _ _ checked12956.1 (.cons _ _ _ _ _ checked12957.1 (.cons _ _ _ _ _ checked12958.1 (.cons _ _ _ _ _ checked12959.1 (.cons _ _ _ _ _ checked12960.1 (.cons _ _ _ _ _ checked12961.1 (.cons _ _ _ _ _ checked12962.1 (.cons _ _ _ _ _ checked12963.1 (.cons _ _ _ _ _ checked12964.1 (.cons _ _ _ _ _ checked12965.1 (.cons _ _ _ _ _ checked12966.1 (.cons _ _ _ _ _ checked12967.1 (.cons _ _ _ _ _ checked12968.1 (.cons _ _ _ _ _ checked12969.1 (.cons _ _ _ _ _ checked12970.1 (.cons _ _ _ _ _ checked12971.1 (.cons _ _ _ _ _ checked12972.1 (.cons _ _ _ _ _ checked12973.1 (.cons _ _ _ _ _ checked12974.1 (.cons _ _ _ _ _ checked12975.1 (.cons _ _ _ _ _ checked12976.1 (.cons _ _ _ _ _ checked12977.1 (.cons _ _ _ _ _ checked12978.1 (.cons _ _ _ _ _ checked12979.1 (.cons _ _ _ _ _ checked12980.1 (.cons _ _ _ _ _ checked12981.1 (.cons _ _ _ _ _ checked12982.1 (.cons _ _ _ _ _ checked12983.1 (.cons _ _ _ _ _ checked12984.1 (.cons _ _ _ _ _ checked12985.1 (.cons _ _ _ _ _ checked12986.1 (.cons _ _ _ _ _ checked12987.1 (.cons _ _ _ _ _ checked12988.1 (.cons _ _ _ _ _ checked12989.1 (.cons _ _ _ _ _ checked12990.1 (.cons _ _ _ _ _ checked12991.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13046 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12928.2,checked12929.2,checked12930.2,checked12931.2,checked12932.2,checked12933.2,checked12934.2,checked12935.2,checked12936.2,checked12937.2,checked12938.2,checked12939.2,checked12940.2,checked12941.2,checked12942.2,checked12943.2,checked12944.2,checked12945.2,checked12946.2,checked12947.2,checked12948.2,checked12949.2,checked12950.2,checked12951.2,checked12952.2,checked12953.2,checked12954.2,checked12955.2,checked12956.2,checked12957.2,checked12958.2,checked12959.2,checked12960.2,checked12961.2,checked12962.2,checked12963.2,checked12964.2,checked12965.2,checked12966.2,checked12967.2,checked12968.2,checked12969.2,checked12970.2,checked12971.2,checked12972.2,checked12973.2,checked12974.2,checked12975.2,checked12976.2,checked12977.2,checked12978.2,checked12979.2,checked12980.2,checked12981.2,checked12982.2,checked12983.2,checked12984.2,checked12985.2,checked12986.2,checked12987.2,checked12988.2,checked12989.2,checked12990.2,checked12991.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup202
