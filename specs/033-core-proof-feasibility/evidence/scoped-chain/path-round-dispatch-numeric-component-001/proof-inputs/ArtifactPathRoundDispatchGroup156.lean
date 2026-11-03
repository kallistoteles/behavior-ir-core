import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup156
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9984 : List WordIR.Op := [.bxor 10022 10026]
def bytes9984 : Bytes := ("    let r0000272b: u32 = r00002726 ^ r0000272a;\n" : String).toByteArray.data.toList
theorem checked9984 : bytes9984=statementBytes 10027 (op9984.map lower) ∧ bytes9984.length=48 := by core033_kernel_decide
def op9985 : List WordIR.Op := [.shr 10027 31]
def bytes9985 : Bytes := ("    let r0000272c: u32 = r0000272b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9985 : bytes9985=statementBytes 10028 (op9985.map lower) ∧ bytes9985.length=54 := by core033_kernel_decide
def op9986 : List WordIR.Op := [.badd 10021 10028]
def bytes9986 : Bytes := ("    let r0000272d: u32 = r00002725.wrapping_add(r0000272c);\n" : String).toByteArray.data.toList
theorem checked9986 : bytes9986=statementBytes 10029 (op9986.map lower) ∧ bytes9986.length=60 := by core033_kernel_decide
def op9987 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9987 : Bytes := ("    let r0000272e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9987 : bytes9987=statementBytes 10030 (op9987.map lower) ∧ bytes9987.length=41 := by core033_kernel_decide
def op9988 : List WordIR.Op := [.bnot 10030]
def bytes9988 : Bytes := ("    let r0000272f: u32 = !r0000272e;\n" : String).toByteArray.data.toList
theorem checked9988 : bytes9988=statementBytes 10031 (op9988.map lower) ∧ bytes9988.length=37 := by core033_kernel_decide
def op9989 : List WordIR.Op := [.bxor 10029 10031]
def bytes9989 : Bytes := ("    let r00002730: u32 = r0000272d ^ r0000272f;\n" : String).toByteArray.data.toList
theorem checked9989 : bytes9989=statementBytes 10032 (op9989.map lower) ∧ bytes9989.length=48 := by core033_kernel_decide
def op9990 : List WordIR.Op := [.badd 9725 9747]
def bytes9990 : Bytes := ("    let r00002731: u32 = r000025fd.wrapping_add(r00002613);\n" : String).toByteArray.data.toList
theorem checked9990 : bytes9990=statementBytes 10033 (op9990.map lower) ∧ bytes9990.length=60 := by core033_kernel_decide
def op9991 : List WordIR.Op := [.band 9714 9736]
def bytes9991 : Bytes := ("    let r00002732: u32 = r000025f2 & r00002608;\n" : String).toByteArray.data.toList
theorem checked9991 : bytes9991=statementBytes 10034 (op9991.map lower) ∧ bytes9991.length=48 := by core033_kernel_decide
def op9992 : List WordIR.Op := [.bxor 9714 9736]
def bytes9992 : Bytes := ("    let r00002733: u32 = r000025f2 ^ r00002608;\n" : String).toByteArray.data.toList
theorem checked9992 : bytes9992=statementBytes 10035 (op9992.map lower) ∧ bytes9992.length=48 := by core033_kernel_decide
def op9993 : List WordIR.Op := [.badd 9714 9736]
def bytes9993 : Bytes := ("    let r00002734: u32 = r000025f2.wrapping_add(r00002608);\n" : String).toByteArray.data.toList
theorem checked9993 : bytes9993=statementBytes 10036 (op9993.map lower) ∧ bytes9993.length=60 := by core033_kernel_decide
def op9994 : List WordIR.Op := [.bnot 10036]
def bytes9994 : Bytes := ("    let r00002735: u32 = !r00002734;\n" : String).toByteArray.data.toList
theorem checked9994 : bytes9994=statementBytes 10037 (op9994.map lower) ∧ bytes9994.length=37 := by core033_kernel_decide
def op9995 : List WordIR.Op := [.band 10035 10037]
def bytes9995 : Bytes := ("    let r00002736: u32 = r00002733 & r00002735;\n" : String).toByteArray.data.toList
theorem checked9995 : bytes9995=statementBytes 10038 (op9995.map lower) ∧ bytes9995.length=48 := by core033_kernel_decide
def op9996 : List WordIR.Op := [.bxor 10034 10038]
def bytes9996 : Bytes := ("    let r00002737: u32 = r00002732 ^ r00002736;\n" : String).toByteArray.data.toList
theorem checked9996 : bytes9996=statementBytes 10039 (op9996.map lower) ∧ bytes9996.length=48 := by core033_kernel_decide
def op9997 : List WordIR.Op := [.shr 10039 31]
def bytes9997 : Bytes := ("    let r00002738: u32 = r00002737 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked9997 : bytes9997=statementBytes 10040 (op9997.map lower) ∧ bytes9997.length=54 := by core033_kernel_decide
def op9998 : List WordIR.Op := [.badd 10033 10040]
def bytes9998 : Bytes := ("    let r00002739: u32 = r00002731.wrapping_add(r00002738);\n" : String).toByteArray.data.toList
theorem checked9998 : bytes9998=statementBytes 10041 (op9998.map lower) ∧ bytes9998.length=60 := by core033_kernel_decide
def op9999 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9999 : Bytes := ("    let r0000273a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9999 : bytes9999=statementBytes 10042 (op9999.map lower) ∧ bytes9999.length=41 := by core033_kernel_decide
def op10000 : List WordIR.Op := [.bnot 10042]
def bytes10000 : Bytes := ("    let r0000273b: u32 = !r0000273a;\n" : String).toByteArray.data.toList
theorem checked10000 : bytes10000=statementBytes 10043 (op10000.map lower) ∧ bytes10000.length=37 := by core033_kernel_decide
def op10001 : List WordIR.Op := [.badd 10041 10043]
def bytes10001 : Bytes := ("    let r0000273c: u32 = r00002739.wrapping_add(r0000273b);\n" : String).toByteArray.data.toList
theorem checked10001 : bytes10001=statementBytes 10044 (op10001.map lower) ∧ bytes10001.length=60 := by core033_kernel_decide
def op10002 : List WordIR.Op := [.bnot 10044]
def bytes10002 : Bytes := ("    let r0000273d: u32 = !r0000273c;\n" : String).toByteArray.data.toList
theorem checked10002 : bytes10002=statementBytes 10045 (op10002.map lower) ∧ bytes10002.length=37 := by core033_kernel_decide
def op10003 : List WordIR.Op := [.band 10032 10045]
def bytes10003 : Bytes := ("    let r0000273e: u32 = r00002730 & r0000273d;\n" : String).toByteArray.data.toList
theorem checked10003 : bytes10003=statementBytes 10046 (op10003.map lower) ∧ bytes10003.length=48 := by core033_kernel_decide
def op10004 : List WordIR.Op := [.bxor 10020 10046]
def bytes10004 : Bytes := ("    let r0000273f: u32 = r00002724 ^ r0000273e;\n" : String).toByteArray.data.toList
theorem checked10004 : bytes10004=statementBytes 10047 (op10004.map lower) ∧ bytes10004.length=48 := by core033_kernel_decide
def op10005 : List WordIR.Op := [.shr 10047 31]
def bytes10005 : Bytes := ("    let r00002740: u32 = r0000273f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10005 : bytes10005=statementBytes 10048 (op10005.map lower) ∧ bytes10005.length=54 := by core033_kernel_decide
def op10006 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10006 : Bytes := ("    let r00002741: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10006 : bytes10006=statementBytes 10049 (op10006.map lower) ∧ bytes10006.length=41 := by core033_kernel_decide
def op10007 : List WordIR.Op := [.bxor 10048 10049]
def bytes10007 : Bytes := ("    let r00002742: u32 = r00002740 ^ r00002741;\n" : String).toByteArray.data.toList
theorem checked10007 : bytes10007=statementBytes 10050 (op10007.map lower) ∧ bytes10007.length=48 := by core033_kernel_decide
def op10008 : List WordIR.Op := [.badd 9714 9736]
def bytes10008 : Bytes := ("    let r00002743: u32 = r000025f2.wrapping_add(r00002608);\n" : String).toByteArray.data.toList
theorem checked10008 : bytes10008=statementBytes 10051 (op10008.map lower) ∧ bytes10008.length=60 := by core033_kernel_decide
def op10009 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes10009 : Bytes := ("    let r00002744: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked10009 : bytes10009=statementBytes 10052 (op10009.map lower) ∧ bytes10009.length=41 := by core033_kernel_decide
def op10010 : List WordIR.Op := [.bnot 10052]
def bytes10010 : Bytes := ("    let r00002745: u32 = !r00002744;\n" : String).toByteArray.data.toList
theorem checked10010 : bytes10010=statementBytes 10053 (op10010.map lower) ∧ bytes10010.length=37 := by core033_kernel_decide
def op10011 : List WordIR.Op := [.band 10051 10053]
def bytes10011 : Bytes := ("    let r00002746: u32 = r00002743 & r00002745;\n" : String).toByteArray.data.toList
theorem checked10011 : bytes10011=statementBytes 10054 (op10011.map lower) ∧ bytes10011.length=48 := by core033_kernel_decide
def op10012 : List WordIR.Op := [.badd 9714 9736]
def bytes10012 : Bytes := ("    let r00002747: u32 = r000025f2.wrapping_add(r00002608);\n" : String).toByteArray.data.toList
theorem checked10012 : bytes10012=statementBytes 10055 (op10012.map lower) ∧ bytes10012.length=60 := by core033_kernel_decide
def op10013 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes10013 : Bytes := ("    let r00002748: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked10013 : bytes10013=statementBytes 10056 (op10013.map lower) ∧ bytes10013.length=41 := by core033_kernel_decide
def op10014 : List WordIR.Op := [.bnot 10056]
def bytes10014 : Bytes := ("    let r00002749: u32 = !r00002748;\n" : String).toByteArray.data.toList
theorem checked10014 : bytes10014=statementBytes 10057 (op10014.map lower) ∧ bytes10014.length=37 := by core033_kernel_decide
def op10015 : List WordIR.Op := [.bxor 10055 10057]
def bytes10015 : Bytes := ("    let r0000274a: u32 = r00002747 ^ r00002749;\n" : String).toByteArray.data.toList
theorem checked10015 : bytes10015=statementBytes 10058 (op10015.map lower) ∧ bytes10015.length=48 := by core033_kernel_decide
def op10016 : List WordIR.Op := [.badd 9714 9736]
def bytes10016 : Bytes := ("    let r0000274b: u32 = r000025f2.wrapping_add(r00002608);\n" : String).toByteArray.data.toList
theorem checked10016 : bytes10016=statementBytes 10059 (op10016.map lower) ∧ bytes10016.length=60 := by core033_kernel_decide
def op10017 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes10017 : Bytes := ("    let r0000274c: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked10017 : bytes10017=statementBytes 10060 (op10017.map lower) ∧ bytes10017.length=41 := by core033_kernel_decide
def op10018 : List WordIR.Op := [.bnot 10060]
def bytes10018 : Bytes := ("    let r0000274d: u32 = !r0000274c;\n" : String).toByteArray.data.toList
theorem checked10018 : bytes10018=statementBytes 10061 (op10018.map lower) ∧ bytes10018.length=37 := by core033_kernel_decide
def op10019 : List WordIR.Op := [.badd 10059 10061]
def bytes10019 : Bytes := ("    let r0000274e: u32 = r0000274b.wrapping_add(r0000274d);\n" : String).toByteArray.data.toList
theorem checked10019 : bytes10019=statementBytes 10062 (op10019.map lower) ∧ bytes10019.length=60 := by core033_kernel_decide
def op10020 : List WordIR.Op := [.bnot 10062]
def bytes10020 : Bytes := ("    let r0000274f: u32 = !r0000274e;\n" : String).toByteArray.data.toList
theorem checked10020 : bytes10020=statementBytes 10063 (op10020.map lower) ∧ bytes10020.length=37 := by core033_kernel_decide
def op10021 : List WordIR.Op := [.band 10058 10063]
def bytes10021 : Bytes := ("    let r00002750: u32 = r0000274a & r0000274f;\n" : String).toByteArray.data.toList
theorem checked10021 : bytes10021=statementBytes 10064 (op10021.map lower) ∧ bytes10021.length=48 := by core033_kernel_decide
def op10022 : List WordIR.Op := [.bxor 10054 10064]
def bytes10022 : Bytes := ("    let r00002751: u32 = r00002746 ^ r00002750;\n" : String).toByteArray.data.toList
theorem checked10022 : bytes10022=statementBytes 10065 (op10022.map lower) ∧ bytes10022.length=48 := by core033_kernel_decide
def op10023 : List WordIR.Op := [.shr 10065 31]
def bytes10023 : Bytes := ("    let r00002752: u32 = r00002751 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10023 : bytes10023=statementBytes 10066 (op10023.map lower) ∧ bytes10023.length=54 := by core033_kernel_decide
def op10024 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10024 : Bytes := ("    let r00002753: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10024 : bytes10024=statementBytes 10067 (op10024.map lower) ∧ bytes10024.length=41 := by core033_kernel_decide
def op10025 : List WordIR.Op := [.bxor 10066 10067]
def bytes10025 : Bytes := ("    let r00002754: u32 = r00002752 ^ r00002753;\n" : String).toByteArray.data.toList
theorem checked10025 : bytes10025=statementBytes 10068 (op10025.map lower) ∧ bytes10025.length=48 := by core033_kernel_decide
def op10026 : List WordIR.Op := [.band 10050 10068]
def bytes10026 : Bytes := ("    let r00002755: u32 = r00002742 & r00002754;\n" : String).toByteArray.data.toList
theorem checked10026 : bytes10026=statementBytes 10069 (op10026.map lower) ∧ bytes10026.length=48 := by core033_kernel_decide
def op10027 : List WordIR.Op := [.band 10008 10069]
def bytes10027 : Bytes := ("    let r00002756: u32 = r00002718 & r00002755;\n" : String).toByteArray.data.toList
theorem checked10027 : bytes10027=statementBytes 10070 (op10027.map lower) ∧ bytes10027.length=48 := by core033_kernel_decide
def op10028 : List WordIR.Op := [.band 9758 9769]
def bytes10028 : Bytes := ("    let r00002757: u32 = r0000261e & r00002629;\n" : String).toByteArray.data.toList
theorem checked10028 : bytes10028=statementBytes 10071 (op10028.map lower) ∧ bytes10028.length=48 := by core033_kernel_decide
def op10029 : List WordIR.Op := [.band 9780 9791]
def bytes10029 : Bytes := ("    let r00002758: u32 = r00002634 & r0000263f;\n" : String).toByteArray.data.toList
theorem checked10029 : bytes10029=statementBytes 10072 (op10029.map lower) ∧ bytes10029.length=48 := by core033_kernel_decide
def op10030 : List WordIR.Op := [.shr 9758 1]
def bytes10030 : Bytes := ("    let r00002759: u32 = r0000261e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10030 : bytes10030=statementBytes 10073 (op10030.map lower) ∧ bytes10030.length=54 := by core033_kernel_decide
def op10031 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10031 : Bytes := ("    let r0000275a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10031 : bytes10031=statementBytes 10074 (op10031.map lower) ∧ bytes10031.length=41 := by core033_kernel_decide
def op10032 : List WordIR.Op := [.bnot 10074]
def bytes10032 : Bytes := ("    let r0000275b: u32 = !r0000275a;\n" : String).toByteArray.data.toList
theorem checked10032 : bytes10032=statementBytes 10075 (op10032.map lower) ∧ bytes10032.length=37 := by core033_kernel_decide
def op10033 : List WordIR.Op := [.band 10073 10075]
def bytes10033 : Bytes := ("    let r0000275c: u32 = r00002759 & r0000275b;\n" : String).toByteArray.data.toList
theorem checked10033 : bytes10033=statementBytes 10076 (op10033.map lower) ∧ bytes10033.length=48 := by core033_kernel_decide
def op10034 : List WordIR.Op := [.shr 9758 1]
def bytes10034 : Bytes := ("    let r0000275d: u32 = r0000261e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10034 : bytes10034=statementBytes 10077 (op10034.map lower) ∧ bytes10034.length=54 := by core033_kernel_decide
def op10035 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10035 : Bytes := ("    let r0000275e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10035 : bytes10035=statementBytes 10078 (op10035.map lower) ∧ bytes10035.length=41 := by core033_kernel_decide
def op10036 : List WordIR.Op := [.bnot 10078]
def bytes10036 : Bytes := ("    let r0000275f: u32 = !r0000275e;\n" : String).toByteArray.data.toList
theorem checked10036 : bytes10036=statementBytes 10079 (op10036.map lower) ∧ bytes10036.length=37 := by core033_kernel_decide
def op10037 : List WordIR.Op := [.bxor 10077 10079]
def bytes10037 : Bytes := ("    let r00002760: u32 = r0000275d ^ r0000275f;\n" : String).toByteArray.data.toList
theorem checked10037 : bytes10037=statementBytes 10080 (op10037.map lower) ∧ bytes10037.length=48 := by core033_kernel_decide
def op10038 : List WordIR.Op := [.shr 9758 1]
def bytes10038 : Bytes := ("    let r00002761: u32 = r0000261e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10038 : bytes10038=statementBytes 10081 (op10038.map lower) ∧ bytes10038.length=54 := by core033_kernel_decide
def op10039 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10039 : Bytes := ("    let r00002762: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10039 : bytes10039=statementBytes 10082 (op10039.map lower) ∧ bytes10039.length=41 := by core033_kernel_decide
def op10040 : List WordIR.Op := [.bnot 10082]
def bytes10040 : Bytes := ("    let r00002763: u32 = !r00002762;\n" : String).toByteArray.data.toList
theorem checked10040 : bytes10040=statementBytes 10083 (op10040.map lower) ∧ bytes10040.length=37 := by core033_kernel_decide
def op10041 : List WordIR.Op := [.badd 10081 10083]
def bytes10041 : Bytes := ("    let r00002764: u32 = r00002761.wrapping_add(r00002763);\n" : String).toByteArray.data.toList
theorem checked10041 : bytes10041=statementBytes 10084 (op10041.map lower) ∧ bytes10041.length=60 := by core033_kernel_decide
def op10042 : List WordIR.Op := [.bnot 10084]
def bytes10042 : Bytes := ("    let r00002765: u32 = !r00002764;\n" : String).toByteArray.data.toList
theorem checked10042 : bytes10042=statementBytes 10085 (op10042.map lower) ∧ bytes10042.length=37 := by core033_kernel_decide
def op10043 : List WordIR.Op := [.band 10080 10085]
def bytes10043 : Bytes := ("    let r00002766: u32 = r00002760 & r00002765;\n" : String).toByteArray.data.toList
theorem checked10043 : bytes10043=statementBytes 10086 (op10043.map lower) ∧ bytes10043.length=48 := by core033_kernel_decide
def op10044 : List WordIR.Op := [.bxor 10076 10086]
def bytes10044 : Bytes := ("    let r00002767: u32 = r0000275c ^ r00002766;\n" : String).toByteArray.data.toList
theorem checked10044 : bytes10044=statementBytes 10087 (op10044.map lower) ∧ bytes10044.length=48 := by core033_kernel_decide
def op10045 : List WordIR.Op := [.shr 10087 31]
def bytes10045 : Bytes := ("    let r00002768: u32 = r00002767 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10045 : bytes10045=statementBytes 10088 (op10045.map lower) ∧ bytes10045.length=54 := by core033_kernel_decide
def op10046 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10046 : Bytes := ("    let r00002769: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10046 : bytes10046=statementBytes 10089 (op10046.map lower) ∧ bytes10046.length=41 := by core033_kernel_decide
def op10047 : List WordIR.Op := [.bxor 10088 10089]
def bytes10047 : Bytes := ("    let r0000276a: u32 = r00002768 ^ r00002769;\n" : String).toByteArray.data.toList
theorem checked10047 : bytes10047=statementBytes 10090 (op10047.map lower) ∧ bytes10047.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9984,op9985,op9986,op9987,op9988,op9989,op9990,op9991,op9992,op9993,op9994,op9995,op9996,op9997,op9998,op9999,op10000,op10001,op10002,op10003,op10004,op10005,op10006,op10007,op10008,op10009,op10010,op10011,op10012,op10013,op10014,op10015,op10016,op10017,op10018,op10019,op10020,op10021,op10022,op10023,op10024,op10025,op10026,op10027,op10028,op10029,op10030,op10031,op10032,op10033,op10034,op10035,op10036,op10037,op10038,op10039,op10040,op10041,op10042,op10043,op10044,op10045,op10046,op10047]
def chunks : List Bytes := [bytes9984,bytes9985,bytes9986,bytes9987,bytes9988,bytes9989,bytes9990,bytes9991,bytes9992,bytes9993,bytes9994,bytes9995,bytes9996,bytes9997,bytes9998,bytes9999,bytes10000,bytes10001,bytes10002,bytes10003,bytes10004,bytes10005,bytes10006,bytes10007,bytes10008,bytes10009,bytes10010,bytes10011,bytes10012,bytes10013,bytes10014,bytes10015,bytes10016,bytes10017,bytes10018,bytes10019,bytes10020,bytes10021,bytes10022,bytes10023,bytes10024,bytes10025,bytes10026,bytes10027,bytes10028,bytes10029,bytes10030,bytes10031,bytes10032,bytes10033,bytes10034,bytes10035,bytes10036,bytes10037,bytes10038,bytes10039,bytes10040,bytes10041,bytes10042,bytes10043,bytes10044,bytes10045,bytes10046,bytes10047]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10027 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9984.1 (.cons _ _ _ _ _ checked9985.1 (.cons _ _ _ _ _ checked9986.1 (.cons _ _ _ _ _ checked9987.1 (.cons _ _ _ _ _ checked9988.1 (.cons _ _ _ _ _ checked9989.1 (.cons _ _ _ _ _ checked9990.1 (.cons _ _ _ _ _ checked9991.1 (.cons _ _ _ _ _ checked9992.1 (.cons _ _ _ _ _ checked9993.1 (.cons _ _ _ _ _ checked9994.1 (.cons _ _ _ _ _ checked9995.1 (.cons _ _ _ _ _ checked9996.1 (.cons _ _ _ _ _ checked9997.1 (.cons _ _ _ _ _ checked9998.1 (.cons _ _ _ _ _ checked9999.1 (.cons _ _ _ _ _ checked10000.1 (.cons _ _ _ _ _ checked10001.1 (.cons _ _ _ _ _ checked10002.1 (.cons _ _ _ _ _ checked10003.1 (.cons _ _ _ _ _ checked10004.1 (.cons _ _ _ _ _ checked10005.1 (.cons _ _ _ _ _ checked10006.1 (.cons _ _ _ _ _ checked10007.1 (.cons _ _ _ _ _ checked10008.1 (.cons _ _ _ _ _ checked10009.1 (.cons _ _ _ _ _ checked10010.1 (.cons _ _ _ _ _ checked10011.1 (.cons _ _ _ _ _ checked10012.1 (.cons _ _ _ _ _ checked10013.1 (.cons _ _ _ _ _ checked10014.1 (.cons _ _ _ _ _ checked10015.1 (.cons _ _ _ _ _ checked10016.1 (.cons _ _ _ _ _ checked10017.1 (.cons _ _ _ _ _ checked10018.1 (.cons _ _ _ _ _ checked10019.1 (.cons _ _ _ _ _ checked10020.1 (.cons _ _ _ _ _ checked10021.1 (.cons _ _ _ _ _ checked10022.1 (.cons _ _ _ _ _ checked10023.1 (.cons _ _ _ _ _ checked10024.1 (.cons _ _ _ _ _ checked10025.1 (.cons _ _ _ _ _ checked10026.1 (.cons _ _ _ _ _ checked10027.1 (.cons _ _ _ _ _ checked10028.1 (.cons _ _ _ _ _ checked10029.1 (.cons _ _ _ _ _ checked10030.1 (.cons _ _ _ _ _ checked10031.1 (.cons _ _ _ _ _ checked10032.1 (.cons _ _ _ _ _ checked10033.1 (.cons _ _ _ _ _ checked10034.1 (.cons _ _ _ _ _ checked10035.1 (.cons _ _ _ _ _ checked10036.1 (.cons _ _ _ _ _ checked10037.1 (.cons _ _ _ _ _ checked10038.1 (.cons _ _ _ _ _ checked10039.1 (.cons _ _ _ _ _ checked10040.1 (.cons _ _ _ _ _ checked10041.1 (.cons _ _ _ _ _ checked10042.1 (.cons _ _ _ _ _ checked10043.1 (.cons _ _ _ _ _ checked10044.1 (.cons _ _ _ _ _ checked10045.1 (.cons _ _ _ _ _ checked10046.1 (.cons _ _ _ _ _ checked10047.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10027 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3031 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9984.2,checked9985.2,checked9986.2,checked9987.2,checked9988.2,checked9989.2,checked9990.2,checked9991.2,checked9992.2,checked9993.2,checked9994.2,checked9995.2,checked9996.2,checked9997.2,checked9998.2,checked9999.2,checked10000.2,checked10001.2,checked10002.2,checked10003.2,checked10004.2,checked10005.2,checked10006.2,checked10007.2,checked10008.2,checked10009.2,checked10010.2,checked10011.2,checked10012.2,checked10013.2,checked10014.2,checked10015.2,checked10016.2,checked10017.2,checked10018.2,checked10019.2,checked10020.2,checked10021.2,checked10022.2,checked10023.2,checked10024.2,checked10025.2,checked10026.2,checked10027.2,checked10028.2,checked10029.2,checked10030.2,checked10031.2,checked10032.2,checked10033.2,checked10034.2,checked10035.2,checked10036.2,checked10037.2,checked10038.2,checked10039.2,checked10040.2,checked10041.2,checked10042.2,checked10043.2,checked10044.2,checked10045.2,checked10046.2,checked10047.2]
  decide
end ArtifactPathRoundDispatchGroup156
