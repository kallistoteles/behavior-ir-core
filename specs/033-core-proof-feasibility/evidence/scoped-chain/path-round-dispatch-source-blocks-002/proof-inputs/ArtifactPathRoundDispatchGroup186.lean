import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup186
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11904 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11904 : Bytes := ("    let r00002eab: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11904 : bytes11904=statementBytes 11947 (op11904.map lower) ∧ bytes11904.length=41 := by core033_kernel_decide
def op11905 : List WordIR.Op := [.bxor 0 11947]
def bytes11905 : Bytes := ("    let r00002eac: u32 = r00000000 ^ r00002eab;\n" : String).toByteArray.data.toList
theorem checked11905 : bytes11905=statementBytes 11948 (op11905.map lower) ∧ bytes11905.length=48 := by core033_kernel_decide
def op11906 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11906 : Bytes := ("    let r00002ead: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11906 : bytes11906=statementBytes 11949 (op11906.map lower) ∧ bytes11906.length=41 := by core033_kernel_decide
def op11907 : List WordIR.Op := [.bnot 11949]
def bytes11907 : Bytes := ("    let r00002eae: u32 = !r00002ead;\n" : String).toByteArray.data.toList
theorem checked11907 : bytes11907=statementBytes 11950 (op11907.map lower) ∧ bytes11907.length=37 := by core033_kernel_decide
def op11908 : List WordIR.Op := [.bxor 11948 11950]
def bytes11908 : Bytes := ("    let r00002eaf: u32 = r00002eac ^ r00002eae;\n" : String).toByteArray.data.toList
theorem checked11908 : bytes11908=statementBytes 11951 (op11908.map lower) ∧ bytes11908.length=48 := by core033_kernel_decide
def op11909 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11909 : Bytes := ("    let r00002eb0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11909 : bytes11909=statementBytes 11952 (op11909.map lower) ∧ bytes11909.length=41 := by core033_kernel_decide
def op11910 : List WordIR.Op := [.bxor 0 11952]
def bytes11910 : Bytes := ("    let r00002eb1: u32 = r00000000 ^ r00002eb0;\n" : String).toByteArray.data.toList
theorem checked11910 : bytes11910=statementBytes 11953 (op11910.map lower) ∧ bytes11910.length=48 := by core033_kernel_decide
def op11911 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11911 : Bytes := ("    let r00002eb2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11911 : bytes11911=statementBytes 11954 (op11911.map lower) ∧ bytes11911.length=41 := by core033_kernel_decide
def op11912 : List WordIR.Op := [.bnot 11954]
def bytes11912 : Bytes := ("    let r00002eb3: u32 = !r00002eb2;\n" : String).toByteArray.data.toList
theorem checked11912 : bytes11912=statementBytes 11955 (op11912.map lower) ∧ bytes11912.length=37 := by core033_kernel_decide
def op11913 : List WordIR.Op := [.badd 11953 11955]
def bytes11913 : Bytes := ("    let r00002eb4: u32 = r00002eb1.wrapping_add(r00002eb3);\n" : String).toByteArray.data.toList
theorem checked11913 : bytes11913=statementBytes 11956 (op11913.map lower) ∧ bytes11913.length=60 := by core033_kernel_decide
def op11914 : List WordIR.Op := [.bnot 11956]
def bytes11914 : Bytes := ("    let r00002eb5: u32 = !r00002eb4;\n" : String).toByteArray.data.toList
theorem checked11914 : bytes11914=statementBytes 11957 (op11914.map lower) ∧ bytes11914.length=37 := by core033_kernel_decide
def op11915 : List WordIR.Op := [.band 11951 11957]
def bytes11915 : Bytes := ("    let r00002eb6: u32 = r00002eaf & r00002eb5;\n" : String).toByteArray.data.toList
theorem checked11915 : bytes11915=statementBytes 11958 (op11915.map lower) ∧ bytes11915.length=48 := by core033_kernel_decide
def op11916 : List WordIR.Op := [.bxor 11946 11958]
def bytes11916 : Bytes := ("    let r00002eb7: u32 = r00002eaa ^ r00002eb6;\n" : String).toByteArray.data.toList
theorem checked11916 : bytes11916=statementBytes 11959 (op11916.map lower) ∧ bytes11916.length=48 := by core033_kernel_decide
def op11917 : List WordIR.Op := [.shr 11959 31]
def bytes11917 : Bytes := ("    let r00002eb8: u32 = r00002eb7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11917 : bytes11917=statementBytes 11960 (op11917.map lower) ∧ bytes11917.length=54 := by core033_kernel_decide
def op11918 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11918 : Bytes := ("    let r00002eb9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11918 : bytes11918=statementBytes 11961 (op11918.map lower) ∧ bytes11918.length=41 := by core033_kernel_decide
def op11919 : List WordIR.Op := [.bxor 11960 11961]
def bytes11919 : Bytes := ("    let r00002eba: u32 = r00002eb8 ^ r00002eb9;\n" : String).toByteArray.data.toList
theorem checked11919 : bytes11919=statementBytes 11962 (op11919.map lower) ∧ bytes11919.length=48 := by core033_kernel_decide
def op11920 : List WordIR.Op := [.bnot 11962]
def bytes11920 : Bytes := ("    let r00002ebb: u32 = !r00002eba;\n" : String).toByteArray.data.toList
theorem checked11920 : bytes11920=statementBytes 11963 (op11920.map lower) ∧ bytes11920.length=37 := by core033_kernel_decide
def op11921 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11921 : Bytes := ("    let r00002ebc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11921 : bytes11921=statementBytes 11964 (op11921.map lower) ∧ bytes11921.length=41 := by core033_kernel_decide
def op11922 : List WordIR.Op := [.badd 11963 11964]
def bytes11922 : Bytes := ("    let r00002ebd: u32 = r00002ebb.wrapping_add(r00002ebc);\n" : String).toByteArray.data.toList
theorem checked11922 : bytes11922=statementBytes 11965 (op11922.map lower) ∧ bytes11922.length=60 := by core033_kernel_decide
def op11923 : List WordIR.Op := [.band 11965 10072]
def bytes11923 : Bytes := ("    let r00002ebe: u32 = r00002ebd & r00002758;\n" : String).toByteArray.data.toList
theorem checked11923 : bytes11923=statementBytes 11966 (op11923.map lower) ∧ bytes11923.length=48 := by core033_kernel_decide
def op11924 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11924 : Bytes := ("    let r00002ebf: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11924 : bytes11924=statementBytes 11967 (op11924.map lower) ∧ bytes11924.length=41 := by core033_kernel_decide
def op11925 : List WordIR.Op := [.bxor 0 11967]
def bytes11925 : Bytes := ("    let r00002ec0: u32 = r00000000 ^ r00002ebf;\n" : String).toByteArray.data.toList
theorem checked11925 : bytes11925=statementBytes 11968 (op11925.map lower) ∧ bytes11925.length=48 := by core033_kernel_decide
def op11926 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11926 : Bytes := ("    let r00002ec1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11926 : bytes11926=statementBytes 11969 (op11926.map lower) ∧ bytes11926.length=41 := by core033_kernel_decide
def op11927 : List WordIR.Op := [.bnot 11969]
def bytes11927 : Bytes := ("    let r00002ec2: u32 = !r00002ec1;\n" : String).toByteArray.data.toList
theorem checked11927 : bytes11927=statementBytes 11970 (op11927.map lower) ∧ bytes11927.length=37 := by core033_kernel_decide
def op11928 : List WordIR.Op := [.band 11968 11970]
def bytes11928 : Bytes := ("    let r00002ec3: u32 = r00002ec0 & r00002ec2;\n" : String).toByteArray.data.toList
theorem checked11928 : bytes11928=statementBytes 11971 (op11928.map lower) ∧ bytes11928.length=48 := by core033_kernel_decide
def op11929 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11929 : Bytes := ("    let r00002ec4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11929 : bytes11929=statementBytes 11972 (op11929.map lower) ∧ bytes11929.length=41 := by core033_kernel_decide
def op11930 : List WordIR.Op := [.bxor 0 11972]
def bytes11930 : Bytes := ("    let r00002ec5: u32 = r00000000 ^ r00002ec4;\n" : String).toByteArray.data.toList
theorem checked11930 : bytes11930=statementBytes 11973 (op11930.map lower) ∧ bytes11930.length=48 := by core033_kernel_decide
def op11931 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11931 : Bytes := ("    let r00002ec6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11931 : bytes11931=statementBytes 11974 (op11931.map lower) ∧ bytes11931.length=41 := by core033_kernel_decide
def op11932 : List WordIR.Op := [.bnot 11974]
def bytes11932 : Bytes := ("    let r00002ec7: u32 = !r00002ec6;\n" : String).toByteArray.data.toList
theorem checked11932 : bytes11932=statementBytes 11975 (op11932.map lower) ∧ bytes11932.length=37 := by core033_kernel_decide
def op11933 : List WordIR.Op := [.bxor 11973 11975]
def bytes11933 : Bytes := ("    let r00002ec8: u32 = r00002ec5 ^ r00002ec7;\n" : String).toByteArray.data.toList
theorem checked11933 : bytes11933=statementBytes 11976 (op11933.map lower) ∧ bytes11933.length=48 := by core033_kernel_decide
def op11934 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11934 : Bytes := ("    let r00002ec9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11934 : bytes11934=statementBytes 11977 (op11934.map lower) ∧ bytes11934.length=41 := by core033_kernel_decide
def op11935 : List WordIR.Op := [.bxor 0 11977]
def bytes11935 : Bytes := ("    let r00002eca: u32 = r00000000 ^ r00002ec9;\n" : String).toByteArray.data.toList
theorem checked11935 : bytes11935=statementBytes 11978 (op11935.map lower) ∧ bytes11935.length=48 := by core033_kernel_decide
def op11936 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11936 : Bytes := ("    let r00002ecb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11936 : bytes11936=statementBytes 11979 (op11936.map lower) ∧ bytes11936.length=41 := by core033_kernel_decide
def op11937 : List WordIR.Op := [.bnot 11979]
def bytes11937 : Bytes := ("    let r00002ecc: u32 = !r00002ecb;\n" : String).toByteArray.data.toList
theorem checked11937 : bytes11937=statementBytes 11980 (op11937.map lower) ∧ bytes11937.length=37 := by core033_kernel_decide
def op11938 : List WordIR.Op := [.badd 11978 11980]
def bytes11938 : Bytes := ("    let r00002ecd: u32 = r00002eca.wrapping_add(r00002ecc);\n" : String).toByteArray.data.toList
theorem checked11938 : bytes11938=statementBytes 11981 (op11938.map lower) ∧ bytes11938.length=60 := by core033_kernel_decide
def op11939 : List WordIR.Op := [.bnot 11981]
def bytes11939 : Bytes := ("    let r00002ece: u32 = !r00002ecd;\n" : String).toByteArray.data.toList
theorem checked11939 : bytes11939=statementBytes 11982 (op11939.map lower) ∧ bytes11939.length=37 := by core033_kernel_decide
def op11940 : List WordIR.Op := [.band 11976 11982]
def bytes11940 : Bytes := ("    let r00002ecf: u32 = r00002ec8 & r00002ece;\n" : String).toByteArray.data.toList
theorem checked11940 : bytes11940=statementBytes 11983 (op11940.map lower) ∧ bytes11940.length=48 := by core033_kernel_decide
def op11941 : List WordIR.Op := [.bxor 11971 11983]
def bytes11941 : Bytes := ("    let r00002ed0: u32 = r00002ec3 ^ r00002ecf;\n" : String).toByteArray.data.toList
theorem checked11941 : bytes11941=statementBytes 11984 (op11941.map lower) ∧ bytes11941.length=48 := by core033_kernel_decide
def op11942 : List WordIR.Op := [.shr 11984 31]
def bytes11942 : Bytes := ("    let r00002ed1: u32 = r00002ed0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11942 : bytes11942=statementBytes 11985 (op11942.map lower) ∧ bytes11942.length=54 := by core033_kernel_decide
def op11943 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11943 : Bytes := ("    let r00002ed2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11943 : bytes11943=statementBytes 11986 (op11943.map lower) ∧ bytes11943.length=41 := by core033_kernel_decide
def op11944 : List WordIR.Op := [.bxor 11985 11986]
def bytes11944 : Bytes := ("    let r00002ed3: u32 = r00002ed1 ^ r00002ed2;\n" : String).toByteArray.data.toList
theorem checked11944 : bytes11944=statementBytes 11987 (op11944.map lower) ∧ bytes11944.length=48 := by core033_kernel_decide
def op11945 : List WordIR.Op := [.bnot 11987]
def bytes11945 : Bytes := ("    let r00002ed4: u32 = !r00002ed3;\n" : String).toByteArray.data.toList
theorem checked11945 : bytes11945=statementBytes 11988 (op11945.map lower) ∧ bytes11945.length=37 := by core033_kernel_decide
def op11946 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11946 : Bytes := ("    let r00002ed5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11946 : bytes11946=statementBytes 11989 (op11946.map lower) ∧ bytes11946.length=41 := by core033_kernel_decide
def op11947 : List WordIR.Op := [.badd 11988 11989]
def bytes11947 : Bytes := ("    let r00002ed6: u32 = r00002ed4.wrapping_add(r00002ed5);\n" : String).toByteArray.data.toList
theorem checked11947 : bytes11947=statementBytes 11990 (op11947.map lower) ∧ bytes11947.length=60 := by core033_kernel_decide
def op11948 : List WordIR.Op := [.bnot 11990]
def bytes11948 : Bytes := ("    let r00002ed7: u32 = !r00002ed6;\n" : String).toByteArray.data.toList
theorem checked11948 : bytes11948=statementBytes 11991 (op11948.map lower) ∧ bytes11948.length=37 := by core033_kernel_decide
def op11949 : List WordIR.Op := [.band 11991 459]
def bytes11949 : Bytes := ("    let r00002ed8: u32 = r00002ed7 & r000001cb;\n" : String).toByteArray.data.toList
theorem checked11949 : bytes11949=statementBytes 11992 (op11949.map lower) ∧ bytes11949.length=48 := by core033_kernel_decide
def op11950 : List WordIR.Op := [.bxor 11966 11992]
def bytes11950 : Bytes := ("    let r00002ed9: u32 = r00002ebe ^ r00002ed8;\n" : String).toByteArray.data.toList
theorem checked11950 : bytes11950=statementBytes 11993 (op11950.map lower) ∧ bytes11950.length=48 := by core033_kernel_decide
def op11951 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11951 : Bytes := ("    let r00002eda: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11951 : bytes11951=statementBytes 11994 (op11951.map lower) ∧ bytes11951.length=41 := by core033_kernel_decide
def op11952 : List WordIR.Op := [.bxor 0 11994]
def bytes11952 : Bytes := ("    let r00002edb: u32 = r00000000 ^ r00002eda;\n" : String).toByteArray.data.toList
theorem checked11952 : bytes11952=statementBytes 11995 (op11952.map lower) ∧ bytes11952.length=48 := by core033_kernel_decide
def op11953 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11953 : Bytes := ("    let r00002edc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11953 : bytes11953=statementBytes 11996 (op11953.map lower) ∧ bytes11953.length=41 := by core033_kernel_decide
def op11954 : List WordIR.Op := [.bnot 11996]
def bytes11954 : Bytes := ("    let r00002edd: u32 = !r00002edc;\n" : String).toByteArray.data.toList
theorem checked11954 : bytes11954=statementBytes 11997 (op11954.map lower) ∧ bytes11954.length=37 := by core033_kernel_decide
def op11955 : List WordIR.Op := [.band 11995 11997]
def bytes11955 : Bytes := ("    let r00002ede: u32 = r00002edb & r00002edd;\n" : String).toByteArray.data.toList
theorem checked11955 : bytes11955=statementBytes 11998 (op11955.map lower) ∧ bytes11955.length=48 := by core033_kernel_decide
def op11956 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11956 : Bytes := ("    let r00002edf: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11956 : bytes11956=statementBytes 11999 (op11956.map lower) ∧ bytes11956.length=41 := by core033_kernel_decide
def op11957 : List WordIR.Op := [.bxor 0 11999]
def bytes11957 : Bytes := ("    let r00002ee0: u32 = r00000000 ^ r00002edf;\n" : String).toByteArray.data.toList
theorem checked11957 : bytes11957=statementBytes 12000 (op11957.map lower) ∧ bytes11957.length=48 := by core033_kernel_decide
def op11958 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11958 : Bytes := ("    let r00002ee1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11958 : bytes11958=statementBytes 12001 (op11958.map lower) ∧ bytes11958.length=41 := by core033_kernel_decide
def op11959 : List WordIR.Op := [.bnot 12001]
def bytes11959 : Bytes := ("    let r00002ee2: u32 = !r00002ee1;\n" : String).toByteArray.data.toList
theorem checked11959 : bytes11959=statementBytes 12002 (op11959.map lower) ∧ bytes11959.length=37 := by core033_kernel_decide
def op11960 : List WordIR.Op := [.bxor 12000 12002]
def bytes11960 : Bytes := ("    let r00002ee3: u32 = r00002ee0 ^ r00002ee2;\n" : String).toByteArray.data.toList
theorem checked11960 : bytes11960=statementBytes 12003 (op11960.map lower) ∧ bytes11960.length=48 := by core033_kernel_decide
def op11961 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11961 : Bytes := ("    let r00002ee4: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11961 : bytes11961=statementBytes 12004 (op11961.map lower) ∧ bytes11961.length=41 := by core033_kernel_decide
def op11962 : List WordIR.Op := [.bxor 0 12004]
def bytes11962 : Bytes := ("    let r00002ee5: u32 = r00000000 ^ r00002ee4;\n" : String).toByteArray.data.toList
theorem checked11962 : bytes11962=statementBytes 12005 (op11962.map lower) ∧ bytes11962.length=48 := by core033_kernel_decide
def op11963 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11963 : Bytes := ("    let r00002ee6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11963 : bytes11963=statementBytes 12006 (op11963.map lower) ∧ bytes11963.length=41 := by core033_kernel_decide
def op11964 : List WordIR.Op := [.bnot 12006]
def bytes11964 : Bytes := ("    let r00002ee7: u32 = !r00002ee6;\n" : String).toByteArray.data.toList
theorem checked11964 : bytes11964=statementBytes 12007 (op11964.map lower) ∧ bytes11964.length=37 := by core033_kernel_decide
def op11965 : List WordIR.Op := [.badd 12005 12007]
def bytes11965 : Bytes := ("    let r00002ee8: u32 = r00002ee5.wrapping_add(r00002ee7);\n" : String).toByteArray.data.toList
theorem checked11965 : bytes11965=statementBytes 12008 (op11965.map lower) ∧ bytes11965.length=60 := by core033_kernel_decide
def op11966 : List WordIR.Op := [.bnot 12008]
def bytes11966 : Bytes := ("    let r00002ee9: u32 = !r00002ee8;\n" : String).toByteArray.data.toList
theorem checked11966 : bytes11966=statementBytes 12009 (op11966.map lower) ∧ bytes11966.length=37 := by core033_kernel_decide
def op11967 : List WordIR.Op := [.band 12003 12009]
def bytes11967 : Bytes := ("    let r00002eea: u32 = r00002ee3 & r00002ee9;\n" : String).toByteArray.data.toList
theorem checked11967 : bytes11967=statementBytes 12010 (op11967.map lower) ∧ bytes11967.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11904,op11905,op11906,op11907,op11908,op11909,op11910,op11911,op11912,op11913,op11914,op11915,op11916,op11917,op11918,op11919,op11920,op11921,op11922,op11923,op11924,op11925,op11926,op11927,op11928,op11929,op11930,op11931,op11932,op11933,op11934,op11935,op11936,op11937,op11938,op11939,op11940,op11941,op11942,op11943,op11944,op11945,op11946,op11947,op11948,op11949,op11950,op11951,op11952,op11953,op11954,op11955,op11956,op11957,op11958,op11959,op11960,op11961,op11962,op11963,op11964,op11965,op11966,op11967]
def chunks : List Bytes := [bytes11904,bytes11905,bytes11906,bytes11907,bytes11908,bytes11909,bytes11910,bytes11911,bytes11912,bytes11913,bytes11914,bytes11915,bytes11916,bytes11917,bytes11918,bytes11919,bytes11920,bytes11921,bytes11922,bytes11923,bytes11924,bytes11925,bytes11926,bytes11927,bytes11928,bytes11929,bytes11930,bytes11931,bytes11932,bytes11933,bytes11934,bytes11935,bytes11936,bytes11937,bytes11938,bytes11939,bytes11940,bytes11941,bytes11942,bytes11943,bytes11944,bytes11945,bytes11946,bytes11947,bytes11948,bytes11949,bytes11950,bytes11951,bytes11952,bytes11953,bytes11954,bytes11955,bytes11956,bytes11957,bytes11958,bytes11959,bytes11960,bytes11961,bytes11962,bytes11963,bytes11964,bytes11965,bytes11966,bytes11967]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11947 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11904.1 (.cons _ _ _ _ _ checked11905.1 (.cons _ _ _ _ _ checked11906.1 (.cons _ _ _ _ _ checked11907.1 (.cons _ _ _ _ _ checked11908.1 (.cons _ _ _ _ _ checked11909.1 (.cons _ _ _ _ _ checked11910.1 (.cons _ _ _ _ _ checked11911.1 (.cons _ _ _ _ _ checked11912.1 (.cons _ _ _ _ _ checked11913.1 (.cons _ _ _ _ _ checked11914.1 (.cons _ _ _ _ _ checked11915.1 (.cons _ _ _ _ _ checked11916.1 (.cons _ _ _ _ _ checked11917.1 (.cons _ _ _ _ _ checked11918.1 (.cons _ _ _ _ _ checked11919.1 (.cons _ _ _ _ _ checked11920.1 (.cons _ _ _ _ _ checked11921.1 (.cons _ _ _ _ _ checked11922.1 (.cons _ _ _ _ _ checked11923.1 (.cons _ _ _ _ _ checked11924.1 (.cons _ _ _ _ _ checked11925.1 (.cons _ _ _ _ _ checked11926.1 (.cons _ _ _ _ _ checked11927.1 (.cons _ _ _ _ _ checked11928.1 (.cons _ _ _ _ _ checked11929.1 (.cons _ _ _ _ _ checked11930.1 (.cons _ _ _ _ _ checked11931.1 (.cons _ _ _ _ _ checked11932.1 (.cons _ _ _ _ _ checked11933.1 (.cons _ _ _ _ _ checked11934.1 (.cons _ _ _ _ _ checked11935.1 (.cons _ _ _ _ _ checked11936.1 (.cons _ _ _ _ _ checked11937.1 (.cons _ _ _ _ _ checked11938.1 (.cons _ _ _ _ _ checked11939.1 (.cons _ _ _ _ _ checked11940.1 (.cons _ _ _ _ _ checked11941.1 (.cons _ _ _ _ _ checked11942.1 (.cons _ _ _ _ _ checked11943.1 (.cons _ _ _ _ _ checked11944.1 (.cons _ _ _ _ _ checked11945.1 (.cons _ _ _ _ _ checked11946.1 (.cons _ _ _ _ _ checked11947.1 (.cons _ _ _ _ _ checked11948.1 (.cons _ _ _ _ _ checked11949.1 (.cons _ _ _ _ _ checked11950.1 (.cons _ _ _ _ _ checked11951.1 (.cons _ _ _ _ _ checked11952.1 (.cons _ _ _ _ _ checked11953.1 (.cons _ _ _ _ _ checked11954.1 (.cons _ _ _ _ _ checked11955.1 (.cons _ _ _ _ _ checked11956.1 (.cons _ _ _ _ _ checked11957.1 (.cons _ _ _ _ _ checked11958.1 (.cons _ _ _ _ _ checked11959.1 (.cons _ _ _ _ _ checked11960.1 (.cons _ _ _ _ _ checked11961.1 (.cons _ _ _ _ _ checked11962.1 (.cons _ _ _ _ _ checked11963.1 (.cons _ _ _ _ _ checked11964.1 (.cons _ _ _ _ _ checked11965.1 (.cons _ _ _ _ _ checked11966.1 (.cons _ _ _ _ _ checked11967.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11947 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11904.2,checked11905.2,checked11906.2,checked11907.2,checked11908.2,checked11909.2,checked11910.2,checked11911.2,checked11912.2,checked11913.2,checked11914.2,checked11915.2,checked11916.2,checked11917.2,checked11918.2,checked11919.2,checked11920.2,checked11921.2,checked11922.2,checked11923.2,checked11924.2,checked11925.2,checked11926.2,checked11927.2,checked11928.2,checked11929.2,checked11930.2,checked11931.2,checked11932.2,checked11933.2,checked11934.2,checked11935.2,checked11936.2,checked11937.2,checked11938.2,checked11939.2,checked11940.2,checked11941.2,checked11942.2,checked11943.2,checked11944.2,checked11945.2,checked11946.2,checked11947.2,checked11948.2,checked11949.2,checked11950.2,checked11951.2,checked11952.2,checked11953.2,checked11954.2,checked11955.2,checked11956.2,checked11957.2,checked11958.2,checked11959.2,checked11960.2,checked11961.2,checked11962.2,checked11963.2,checked11964.2,checked11965.2,checked11966.2,checked11967.2]
  decide
end ArtifactPathRoundDispatchGroup186
