import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup202
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12928 : List WordIR.Op := [.bxor 13002 13023]
def bytes12928 : Bytes := ("    let r000032e0: u32 = r000032ca ^ r000032df;\n" : String).toByteArray.data.toList
theorem checked12928 : bytes12928=statementBytes 13024 (op12928.map lower) ∧ bytes12928.length=48 := by core033_kernel_decide
def op12929 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12929 : Bytes := ("    let r000032e1: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12929 : bytes12929=statementBytes 13025 (op12929.map lower) ∧ bytes12929.length=41 := by core033_kernel_decide
def op12930 : List WordIR.Op := [.bxor 442 13025]
def bytes12930 : Bytes := ("    let r000032e2: u32 = r000001ba ^ r000032e1;\n" : String).toByteArray.data.toList
theorem checked12930 : bytes12930=statementBytes 13026 (op12930.map lower) ∧ bytes12930.length=48 := by core033_kernel_decide
def op12931 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12931 : Bytes := ("    let r000032e3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12931 : bytes12931=statementBytes 13027 (op12931.map lower) ∧ bytes12931.length=41 := by core033_kernel_decide
def op12932 : List WordIR.Op := [.bnot 13027]
def bytes12932 : Bytes := ("    let r000032e4: u32 = !r000032e3;\n" : String).toByteArray.data.toList
theorem checked12932 : bytes12932=statementBytes 13028 (op12932.map lower) ∧ bytes12932.length=37 := by core033_kernel_decide
def op12933 : List WordIR.Op := [.band 13026 13028]
def bytes12933 : Bytes := ("    let r000032e5: u32 = r000032e2 & r000032e4;\n" : String).toByteArray.data.toList
theorem checked12933 : bytes12933=statementBytes 13029 (op12933.map lower) ∧ bytes12933.length=48 := by core033_kernel_decide
def op12934 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12934 : Bytes := ("    let r000032e6: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12934 : bytes12934=statementBytes 13030 (op12934.map lower) ∧ bytes12934.length=41 := by core033_kernel_decide
def op12935 : List WordIR.Op := [.bxor 442 13030]
def bytes12935 : Bytes := ("    let r000032e7: u32 = r000001ba ^ r000032e6;\n" : String).toByteArray.data.toList
theorem checked12935 : bytes12935=statementBytes 13031 (op12935.map lower) ∧ bytes12935.length=48 := by core033_kernel_decide
def op12936 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12936 : Bytes := ("    let r000032e8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12936 : bytes12936=statementBytes 13032 (op12936.map lower) ∧ bytes12936.length=41 := by core033_kernel_decide
def op12937 : List WordIR.Op := [.bnot 13032]
def bytes12937 : Bytes := ("    let r000032e9: u32 = !r000032e8;\n" : String).toByteArray.data.toList
theorem checked12937 : bytes12937=statementBytes 13033 (op12937.map lower) ∧ bytes12937.length=37 := by core033_kernel_decide
def op12938 : List WordIR.Op := [.bxor 13031 13033]
def bytes12938 : Bytes := ("    let r000032ea: u32 = r000032e7 ^ r000032e9;\n" : String).toByteArray.data.toList
theorem checked12938 : bytes12938=statementBytes 13034 (op12938.map lower) ∧ bytes12938.length=48 := by core033_kernel_decide
def op12939 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12939 : Bytes := ("    let r000032eb: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12939 : bytes12939=statementBytes 13035 (op12939.map lower) ∧ bytes12939.length=41 := by core033_kernel_decide
def op12940 : List WordIR.Op := [.bxor 442 13035]
def bytes12940 : Bytes := ("    let r000032ec: u32 = r000001ba ^ r000032eb;\n" : String).toByteArray.data.toList
theorem checked12940 : bytes12940=statementBytes 13036 (op12940.map lower) ∧ bytes12940.length=48 := by core033_kernel_decide
def op12941 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12941 : Bytes := ("    let r000032ed: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12941 : bytes12941=statementBytes 13037 (op12941.map lower) ∧ bytes12941.length=41 := by core033_kernel_decide
def op12942 : List WordIR.Op := [.bnot 13037]
def bytes12942 : Bytes := ("    let r000032ee: u32 = !r000032ed;\n" : String).toByteArray.data.toList
theorem checked12942 : bytes12942=statementBytes 13038 (op12942.map lower) ∧ bytes12942.length=37 := by core033_kernel_decide
def op12943 : List WordIR.Op := [.badd 13036 13038]
def bytes12943 : Bytes := ("    let r000032ef: u32 = r000032ec.wrapping_add(r000032ee);\n" : String).toByteArray.data.toList
theorem checked12943 : bytes12943=statementBytes 13039 (op12943.map lower) ∧ bytes12943.length=60 := by core033_kernel_decide
def op12944 : List WordIR.Op := [.bnot 13039]
def bytes12944 : Bytes := ("    let r000032f0: u32 = !r000032ef;\n" : String).toByteArray.data.toList
theorem checked12944 : bytes12944=statementBytes 13040 (op12944.map lower) ∧ bytes12944.length=37 := by core033_kernel_decide
def op12945 : List WordIR.Op := [.band 13034 13040]
def bytes12945 : Bytes := ("    let r000032f1: u32 = r000032ea & r000032f0;\n" : String).toByteArray.data.toList
theorem checked12945 : bytes12945=statementBytes 13041 (op12945.map lower) ∧ bytes12945.length=48 := by core033_kernel_decide
def op12946 : List WordIR.Op := [.bxor 13029 13041]
def bytes12946 : Bytes := ("    let r000032f2: u32 = r000032e5 ^ r000032f1;\n" : String).toByteArray.data.toList
theorem checked12946 : bytes12946=statementBytes 13042 (op12946.map lower) ∧ bytes12946.length=48 := by core033_kernel_decide
def op12947 : List WordIR.Op := [.shr 13042 31]
def bytes12947 : Bytes := ("    let r000032f3: u32 = r000032f2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12947 : bytes12947=statementBytes 13043 (op12947.map lower) ∧ bytes12947.length=54 := by core033_kernel_decide
def op12948 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12948 : Bytes := ("    let r000032f4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12948 : bytes12948=statementBytes 13044 (op12948.map lower) ∧ bytes12948.length=41 := by core033_kernel_decide
def op12949 : List WordIR.Op := [.bxor 13043 13044]
def bytes12949 : Bytes := ("    let r000032f5: u32 = r000032f3 ^ r000032f4;\n" : String).toByteArray.data.toList
theorem checked12949 : bytes12949=statementBytes 13045 (op12949.map lower) ∧ bytes12949.length=48 := by core033_kernel_decide
def op12950 : List WordIR.Op := [.bxor 13024 13045]
def bytes12950 : Bytes := ("    let r000032f6: u32 = r000032e0 ^ r000032f5;\n" : String).toByteArray.data.toList
theorem checked12950 : bytes12950=statementBytes 13046 (op12950.map lower) ∧ bytes12950.length=48 := by core033_kernel_decide
def op12951 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12951 : Bytes := ("    let r000032f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12951 : bytes12951=statementBytes 13047 (op12951.map lower) ∧ bytes12951.length=41 := by core033_kernel_decide
def op12952 : List WordIR.Op := [.badd 0 13047]
def bytes12952 : Bytes := ("    let r000032f8: u32 = r00000000.wrapping_add(r000032f7);\n" : String).toByteArray.data.toList
theorem checked12952 : bytes12952=statementBytes 13048 (op12952.map lower) ∧ bytes12952.length=60 := by core033_kernel_decide
def op12953 : List WordIR.Op := [.bnot 288]
def bytes12953 : Bytes := ("    let r000032f9: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked12953 : bytes12953=statementBytes 13049 (op12953.map lower) ∧ bytes12953.length=37 := by core033_kernel_decide
def op12954 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12954 : Bytes := ("    let r000032fa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12954 : bytes12954=statementBytes 13050 (op12954.map lower) ∧ bytes12954.length=41 := by core033_kernel_decide
def op12955 : List WordIR.Op := [.badd 13049 13050]
def bytes12955 : Bytes := ("    let r000032fb: u32 = r000032f9.wrapping_add(r000032fa);\n" : String).toByteArray.data.toList
theorem checked12955 : bytes12955=statementBytes 13051 (op12955.map lower) ∧ bytes12955.length=60 := by core033_kernel_decide
def op12956 : List WordIR.Op := [.band 13051 10901]
def bytes12956 : Bytes := ("    let r000032fc: u32 = r000032fb & r00002a95;\n" : String).toByteArray.data.toList
theorem checked12956 : bytes12956=statementBytes 13052 (op12956.map lower) ∧ bytes12956.length=48 := by core033_kernel_decide
def op12957 : List WordIR.Op := [.bnot 288]
def bytes12957 : Bytes := ("    let r000032fd: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked12957 : bytes12957=statementBytes 13053 (op12957.map lower) ∧ bytes12957.length=37 := by core033_kernel_decide
def op12958 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12958 : Bytes := ("    let r000032fe: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12958 : bytes12958=statementBytes 13054 (op12958.map lower) ∧ bytes12958.length=41 := by core033_kernel_decide
def op12959 : List WordIR.Op := [.badd 13053 13054]
def bytes12959 : Bytes := ("    let r000032ff: u32 = r000032fd.wrapping_add(r000032fe);\n" : String).toByteArray.data.toList
theorem checked12959 : bytes12959=statementBytes 13055 (op12959.map lower) ∧ bytes12959.length=60 := by core033_kernel_decide
def op12960 : List WordIR.Op := [.bnot 13055]
def bytes12960 : Bytes := ("    let r00003300: u32 = !r000032ff;\n" : String).toByteArray.data.toList
theorem checked12960 : bytes12960=statementBytes 13056 (op12960.map lower) ∧ bytes12960.length=37 := by core033_kernel_decide
def op12961 : List WordIR.Op := [.band 13056 2]
def bytes12961 : Bytes := ("    let r00003301: u32 = r00003300 & r00000002;\n" : String).toByteArray.data.toList
theorem checked12961 : bytes12961=statementBytes 13057 (op12961.map lower) ∧ bytes12961.length=48 := by core033_kernel_decide
def op12962 : List WordIR.Op := [.bxor 13052 13057]
def bytes12962 : Bytes := ("    let r00003302: u32 = r000032fc ^ r00003301;\n" : String).toByteArray.data.toList
theorem checked12962 : bytes12962=statementBytes 13058 (op12962.map lower) ∧ bytes12962.length=48 := by core033_kernel_decide
def op12963 : List WordIR.Op := [.bnot 267]
def bytes12963 : Bytes := ("    let r00003303: u32 = !r0000010b;\n" : String).toByteArray.data.toList
theorem checked12963 : bytes12963=statementBytes 13059 (op12963.map lower) ∧ bytes12963.length=37 := by core033_kernel_decide
def op12964 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12964 : Bytes := ("    let r00003304: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12964 : bytes12964=statementBytes 13060 (op12964.map lower) ∧ bytes12964.length=41 := by core033_kernel_decide
def op12965 : List WordIR.Op := [.badd 13059 13060]
def bytes12965 : Bytes := ("    let r00003305: u32 = r00003303.wrapping_add(r00003304);\n" : String).toByteArray.data.toList
theorem checked12965 : bytes12965=statementBytes 13061 (op12965.map lower) ∧ bytes12965.length=60 := by core033_kernel_decide
def op12966 : List WordIR.Op := [.band 13061 11369]
def bytes12966 : Bytes := ("    let r00003306: u32 = r00003305 & r00002c69;\n" : String).toByteArray.data.toList
theorem checked12966 : bytes12966=statementBytes 13062 (op12966.map lower) ∧ bytes12966.length=48 := by core033_kernel_decide
def op12967 : List WordIR.Op := [.bnot 267]
def bytes12967 : Bytes := ("    let r00003307: u32 = !r0000010b;\n" : String).toByteArray.data.toList
theorem checked12967 : bytes12967=statementBytes 13063 (op12967.map lower) ∧ bytes12967.length=37 := by core033_kernel_decide
def op12968 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12968 : Bytes := ("    let r00003308: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12968 : bytes12968=statementBytes 13064 (op12968.map lower) ∧ bytes12968.length=41 := by core033_kernel_decide
def op12969 : List WordIR.Op := [.badd 13063 13064]
def bytes12969 : Bytes := ("    let r00003309: u32 = r00003307.wrapping_add(r00003308);\n" : String).toByteArray.data.toList
theorem checked12969 : bytes12969=statementBytes 13065 (op12969.map lower) ∧ bytes12969.length=60 := by core033_kernel_decide
def op12970 : List WordIR.Op := [.bnot 13065]
def bytes12970 : Bytes := ("    let r0000330a: u32 = !r00003309;\n" : String).toByteArray.data.toList
theorem checked12970 : bytes12970=statementBytes 13066 (op12970.map lower) ∧ bytes12970.length=37 := by core033_kernel_decide
def op12971 : List WordIR.Op := [.band 13066 55]
def bytes12971 : Bytes := ("    let r0000330b: u32 = r0000330a & r00000037;\n" : String).toByteArray.data.toList
theorem checked12971 : bytes12971=statementBytes 13067 (op12971.map lower) ∧ bytes12971.length=48 := by core033_kernel_decide
def op12972 : List WordIR.Op := [.bxor 13062 13067]
def bytes12972 : Bytes := ("    let r0000330c: u32 = r00003306 ^ r0000330b;\n" : String).toByteArray.data.toList
theorem checked12972 : bytes12972=statementBytes 13068 (op12972.map lower) ∧ bytes12972.length=48 := by core033_kernel_decide
def op12973 : List WordIR.Op := [.bnot 267]
def bytes12973 : Bytes := ("    let r0000330d: u32 = !r0000010b;\n" : String).toByteArray.data.toList
theorem checked12973 : bytes12973=statementBytes 13069 (op12973.map lower) ∧ bytes12973.length=37 := by core033_kernel_decide
def op12974 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12974 : Bytes := ("    let r0000330e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12974 : bytes12974=statementBytes 13070 (op12974.map lower) ∧ bytes12974.length=41 := by core033_kernel_decide
def op12975 : List WordIR.Op := [.badd 13069 13070]
def bytes12975 : Bytes := ("    let r0000330f: u32 = r0000330d.wrapping_add(r0000330e);\n" : String).toByteArray.data.toList
theorem checked12975 : bytes12975=statementBytes 13071 (op12975.map lower) ∧ bytes12975.length=60 := by core033_kernel_decide
def op12976 : List WordIR.Op := [.band 13071 11421]
def bytes12976 : Bytes := ("    let r00003310: u32 = r0000330f & r00002c9d;\n" : String).toByteArray.data.toList
theorem checked12976 : bytes12976=statementBytes 13072 (op12976.map lower) ∧ bytes12976.length=48 := by core033_kernel_decide
def op12977 : List WordIR.Op := [.bnot 267]
def bytes12977 : Bytes := ("    let r00003311: u32 = !r0000010b;\n" : String).toByteArray.data.toList
theorem checked12977 : bytes12977=statementBytes 13073 (op12977.map lower) ∧ bytes12977.length=37 := by core033_kernel_decide
def op12978 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12978 : Bytes := ("    let r00003312: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12978 : bytes12978=statementBytes 13074 (op12978.map lower) ∧ bytes12978.length=41 := by core033_kernel_decide
def op12979 : List WordIR.Op := [.badd 13073 13074]
def bytes12979 : Bytes := ("    let r00003313: u32 = r00003311.wrapping_add(r00003312);\n" : String).toByteArray.data.toList
theorem checked12979 : bytes12979=statementBytes 13075 (op12979.map lower) ∧ bytes12979.length=60 := by core033_kernel_decide
def op12980 : List WordIR.Op := [.bnot 13075]
def bytes12980 : Bytes := ("    let r00003314: u32 = !r00003313;\n" : String).toByteArray.data.toList
theorem checked12980 : bytes12980=statementBytes 13076 (op12980.map lower) ∧ bytes12980.length=37 := by core033_kernel_decide
def op12981 : List WordIR.Op := [.band 13076 56]
def bytes12981 : Bytes := ("    let r00003315: u32 = r00003314 & r00000038;\n" : String).toByteArray.data.toList
theorem checked12981 : bytes12981=statementBytes 13077 (op12981.map lower) ∧ bytes12981.length=48 := by core033_kernel_decide
def op12982 : List WordIR.Op := [.bxor 13072 13077]
def bytes12982 : Bytes := ("    let r00003316: u32 = r00003310 ^ r00003315;\n" : String).toByteArray.data.toList
theorem checked12982 : bytes12982=statementBytes 13078 (op12982.map lower) ∧ bytes12982.length=48 := by core033_kernel_decide
def op12983 : List WordIR.Op := [.bnot 267]
def bytes12983 : Bytes := ("    let r00003317: u32 = !r0000010b;\n" : String).toByteArray.data.toList
theorem checked12983 : bytes12983=statementBytes 13079 (op12983.map lower) ∧ bytes12983.length=37 := by core033_kernel_decide
def op12984 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12984 : Bytes := ("    let r00003318: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12984 : bytes12984=statementBytes 13080 (op12984.map lower) ∧ bytes12984.length=41 := by core033_kernel_decide
def op12985 : List WordIR.Op := [.badd 13079 13080]
def bytes12985 : Bytes := ("    let r00003319: u32 = r00003317.wrapping_add(r00003318);\n" : String).toByteArray.data.toList
theorem checked12985 : bytes12985=statementBytes 13081 (op12985.map lower) ∧ bytes12985.length=60 := by core033_kernel_decide
def op12986 : List WordIR.Op := [.band 13081 11473]
def bytes12986 : Bytes := ("    let r0000331a: u32 = r00003319 & r00002cd1;\n" : String).toByteArray.data.toList
theorem checked12986 : bytes12986=statementBytes 13082 (op12986.map lower) ∧ bytes12986.length=48 := by core033_kernel_decide
def op12987 : List WordIR.Op := [.bnot 267]
def bytes12987 : Bytes := ("    let r0000331b: u32 = !r0000010b;\n" : String).toByteArray.data.toList
theorem checked12987 : bytes12987=statementBytes 13083 (op12987.map lower) ∧ bytes12987.length=37 := by core033_kernel_decide
def op12988 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12988 : Bytes := ("    let r0000331c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12988 : bytes12988=statementBytes 13084 (op12988.map lower) ∧ bytes12988.length=41 := by core033_kernel_decide
def op12989 : List WordIR.Op := [.badd 13083 13084]
def bytes12989 : Bytes := ("    let r0000331d: u32 = r0000331b.wrapping_add(r0000331c);\n" : String).toByteArray.data.toList
theorem checked12989 : bytes12989=statementBytes 13085 (op12989.map lower) ∧ bytes12989.length=60 := by core033_kernel_decide
def op12990 : List WordIR.Op := [.bnot 13085]
def bytes12990 : Bytes := ("    let r0000331e: u32 = !r0000331d;\n" : String).toByteArray.data.toList
theorem checked12990 : bytes12990=statementBytes 13086 (op12990.map lower) ∧ bytes12990.length=37 := by core033_kernel_decide
def op12991 : List WordIR.Op := [.band 13086 57]
def bytes12991 : Bytes := ("    let r0000331f: u32 = r0000331e & r00000039;\n" : String).toByteArray.data.toList
theorem checked12991 : bytes12991=statementBytes 13087 (op12991.map lower) ∧ bytes12991.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12928,op12929,op12930,op12931,op12932,op12933,op12934,op12935,op12936,op12937,op12938,op12939,op12940,op12941,op12942,op12943,op12944,op12945,op12946,op12947,op12948,op12949,op12950,op12951,op12952,op12953,op12954,op12955,op12956,op12957,op12958,op12959,op12960,op12961,op12962,op12963,op12964,op12965,op12966,op12967,op12968,op12969,op12970,op12971,op12972,op12973,op12974,op12975,op12976,op12977,op12978,op12979,op12980,op12981,op12982,op12983,op12984,op12985,op12986,op12987,op12988,op12989,op12990,op12991]
def chunks : List Bytes := [bytes12928,bytes12929,bytes12930,bytes12931,bytes12932,bytes12933,bytes12934,bytes12935,bytes12936,bytes12937,bytes12938,bytes12939,bytes12940,bytes12941,bytes12942,bytes12943,bytes12944,bytes12945,bytes12946,bytes12947,bytes12948,bytes12949,bytes12950,bytes12951,bytes12952,bytes12953,bytes12954,bytes12955,bytes12956,bytes12957,bytes12958,bytes12959,bytes12960,bytes12961,bytes12962,bytes12963,bytes12964,bytes12965,bytes12966,bytes12967,bytes12968,bytes12969,bytes12970,bytes12971,bytes12972,bytes12973,bytes12974,bytes12975,bytes12976,bytes12977,bytes12978,bytes12979,bytes12980,bytes12981,bytes12982,bytes12983,bytes12984,bytes12985,bytes12986,bytes12987,bytes12988,bytes12989,bytes12990,bytes12991]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13024 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12928.1 (.cons _ _ _ _ _ checked12929.1 (.cons _ _ _ _ _ checked12930.1 (.cons _ _ _ _ _ checked12931.1 (.cons _ _ _ _ _ checked12932.1 (.cons _ _ _ _ _ checked12933.1 (.cons _ _ _ _ _ checked12934.1 (.cons _ _ _ _ _ checked12935.1 (.cons _ _ _ _ _ checked12936.1 (.cons _ _ _ _ _ checked12937.1 (.cons _ _ _ _ _ checked12938.1 (.cons _ _ _ _ _ checked12939.1 (.cons _ _ _ _ _ checked12940.1 (.cons _ _ _ _ _ checked12941.1 (.cons _ _ _ _ _ checked12942.1 (.cons _ _ _ _ _ checked12943.1 (.cons _ _ _ _ _ checked12944.1 (.cons _ _ _ _ _ checked12945.1 (.cons _ _ _ _ _ checked12946.1 (.cons _ _ _ _ _ checked12947.1 (.cons _ _ _ _ _ checked12948.1 (.cons _ _ _ _ _ checked12949.1 (.cons _ _ _ _ _ checked12950.1 (.cons _ _ _ _ _ checked12951.1 (.cons _ _ _ _ _ checked12952.1 (.cons _ _ _ _ _ checked12953.1 (.cons _ _ _ _ _ checked12954.1 (.cons _ _ _ _ _ checked12955.1 (.cons _ _ _ _ _ checked12956.1 (.cons _ _ _ _ _ checked12957.1 (.cons _ _ _ _ _ checked12958.1 (.cons _ _ _ _ _ checked12959.1 (.cons _ _ _ _ _ checked12960.1 (.cons _ _ _ _ _ checked12961.1 (.cons _ _ _ _ _ checked12962.1 (.cons _ _ _ _ _ checked12963.1 (.cons _ _ _ _ _ checked12964.1 (.cons _ _ _ _ _ checked12965.1 (.cons _ _ _ _ _ checked12966.1 (.cons _ _ _ _ _ checked12967.1 (.cons _ _ _ _ _ checked12968.1 (.cons _ _ _ _ _ checked12969.1 (.cons _ _ _ _ _ checked12970.1 (.cons _ _ _ _ _ checked12971.1 (.cons _ _ _ _ _ checked12972.1 (.cons _ _ _ _ _ checked12973.1 (.cons _ _ _ _ _ checked12974.1 (.cons _ _ _ _ _ checked12975.1 (.cons _ _ _ _ _ checked12976.1 (.cons _ _ _ _ _ checked12977.1 (.cons _ _ _ _ _ checked12978.1 (.cons _ _ _ _ _ checked12979.1 (.cons _ _ _ _ _ checked12980.1 (.cons _ _ _ _ _ checked12981.1 (.cons _ _ _ _ _ checked12982.1 (.cons _ _ _ _ _ checked12983.1 (.cons _ _ _ _ _ checked12984.1 (.cons _ _ _ _ _ checked12985.1 (.cons _ _ _ _ _ checked12986.1 (.cons _ _ _ _ _ checked12987.1 (.cons _ _ _ _ _ checked12988.1 (.cons _ _ _ _ _ checked12989.1 (.cons _ _ _ _ _ checked12990.1 (.cons _ _ _ _ _ checked12991.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13024 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2910 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12928.2,checked12929.2,checked12930.2,checked12931.2,checked12932.2,checked12933.2,checked12934.2,checked12935.2,checked12936.2,checked12937.2,checked12938.2,checked12939.2,checked12940.2,checked12941.2,checked12942.2,checked12943.2,checked12944.2,checked12945.2,checked12946.2,checked12947.2,checked12948.2,checked12949.2,checked12950.2,checked12951.2,checked12952.2,checked12953.2,checked12954.2,checked12955.2,checked12956.2,checked12957.2,checked12958.2,checked12959.2,checked12960.2,checked12961.2,checked12962.2,checked12963.2,checked12964.2,checked12965.2,checked12966.2,checked12967.2,checked12968.2,checked12969.2,checked12970.2,checked12971.2,checked12972.2,checked12973.2,checked12974.2,checked12975.2,checked12976.2,checked12977.2,checked12978.2,checked12979.2,checked12980.2,checked12981.2,checked12982.2,checked12983.2,checked12984.2,checked12985.2,checked12986.2,checked12987.2,checked12988.2,checked12989.2,checked12990.2,checked12991.2]
  decide
end ArtifactPairedPathRoundGroup202
