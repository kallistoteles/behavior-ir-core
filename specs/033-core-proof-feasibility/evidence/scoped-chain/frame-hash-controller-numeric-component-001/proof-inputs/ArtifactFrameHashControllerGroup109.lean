import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup109
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6976 : List WordIR.Op := [.bxor 7017 7018]
def bytes6976 : Bytes := ("    let r00001b6b: u32 = r00001b69 ^ r00001b6a;\n" : String).toByteArray.data.toList
theorem checked6976 : bytes6976=statementBytes 7019 (op6976.map lower) ∧ bytes6976.length=48 := by core033_kernel_decide
def op6977 : List WordIR.Op := [.shr 6828 3]
def bytes6977 : Bytes := ("    let r00001b6c: u32 = r00001aac >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6977 : bytes6977=statementBytes 7020 (op6977.map lower) ∧ bytes6977.length=54 := by core033_kernel_decide
def op6978 : List WordIR.Op := [.bxor 7019 7020]
def bytes6978 : Bytes := ("    let r00001b6d: u32 = r00001b6b ^ r00001b6c;\n" : String).toByteArray.data.toList
theorem checked6978 : bytes6978=statementBytes 7021 (op6978.map lower) ∧ bytes6978.length=48 := by core033_kernel_decide
def op6979 : List WordIR.Op := [.badd 7016 7021]
def bytes6979 : Bytes := ("    let r00001b6e: u32 = r00001b68.wrapping_add(r00001b6d);\n" : String).toByteArray.data.toList
theorem checked6979 : bytes6979=statementBytes 7022 (op6979.map lower) ∧ bytes6979.length=60 := by core033_kernel_decide
def op6980 : List WordIR.Op := [.badd 7022 6815]
def bytes6980 : Bytes := ("    let r00001b6f: u32 = r00001b6e.wrapping_add(r00001a9f);\n" : String).toByteArray.data.toList
theorem checked6980 : bytes6980=statementBytes 7023 (op6980.map lower) ∧ bytes6980.length=60 := by core033_kernel_decide
def op6981 : List WordIR.Op := [.rotr 7010 17]
def bytes6981 : Bytes := ("    let r00001b70: u32 = r00001b62.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6981 : bytes6981=statementBytes 7024 (op6981.map lower) ∧ bytes6981.length=65 := by core033_kernel_decide
def op6982 : List WordIR.Op := [.rotr 7010 19]
def bytes6982 : Bytes := ("    let r00001b71: u32 = r00001b62.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6982 : bytes6982=statementBytes 7025 (op6982.map lower) ∧ bytes6982.length=65 := by core033_kernel_decide
def op6983 : List WordIR.Op := [.bxor 7024 7025]
def bytes6983 : Bytes := ("    let r00001b72: u32 = r00001b70 ^ r00001b71;\n" : String).toByteArray.data.toList
theorem checked6983 : bytes6983=statementBytes 7026 (op6983.map lower) ∧ bytes6983.length=48 := by core033_kernel_decide
def op6984 : List WordIR.Op := [.shr 7010 10]
def bytes6984 : Bytes := ("    let r00001b73: u32 = r00001b62 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6984 : bytes6984=statementBytes 7027 (op6984.map lower) ∧ bytes6984.length=54 := by core033_kernel_decide
def op6985 : List WordIR.Op := [.bxor 7026 7027]
def bytes6985 : Bytes := ("    let r00001b74: u32 = r00001b72 ^ r00001b73;\n" : String).toByteArray.data.toList
theorem checked6985 : bytes6985=statementBytes 7028 (op6985.map lower) ∧ bytes6985.length=48 := by core033_kernel_decide
def op6986 : List WordIR.Op := [.badd 7028 6945]
def bytes6986 : Bytes := ("    let r00001b75: u32 = r00001b74.wrapping_add(r00001b21);\n" : String).toByteArray.data.toList
theorem checked6986 : bytes6986=statementBytes 7029 (op6986.map lower) ∧ bytes6986.length=60 := by core033_kernel_decide
def op6987 : List WordIR.Op := [.rotr 6841 7]
def bytes6987 : Bytes := ("    let r00001b76: u32 = r00001ab9.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6987 : bytes6987=statementBytes 7030 (op6987.map lower) ∧ bytes6987.length=65 := by core033_kernel_decide
def op6988 : List WordIR.Op := [.rotr 6841 18]
def bytes6988 : Bytes := ("    let r00001b77: u32 = r00001ab9.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6988 : bytes6988=statementBytes 7031 (op6988.map lower) ∧ bytes6988.length=65 := by core033_kernel_decide
def op6989 : List WordIR.Op := [.bxor 7030 7031]
def bytes6989 : Bytes := ("    let r00001b78: u32 = r00001b76 ^ r00001b77;\n" : String).toByteArray.data.toList
theorem checked6989 : bytes6989=statementBytes 7032 (op6989.map lower) ∧ bytes6989.length=48 := by core033_kernel_decide
def op6990 : List WordIR.Op := [.shr 6841 3]
def bytes6990 : Bytes := ("    let r00001b79: u32 = r00001ab9 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6990 : bytes6990=statementBytes 7033 (op6990.map lower) ∧ bytes6990.length=54 := by core033_kernel_decide
def op6991 : List WordIR.Op := [.bxor 7032 7033]
def bytes6991 : Bytes := ("    let r00001b7a: u32 = r00001b78 ^ r00001b79;\n" : String).toByteArray.data.toList
theorem checked6991 : bytes6991=statementBytes 7034 (op6991.map lower) ∧ bytes6991.length=48 := by core033_kernel_decide
def op6992 : List WordIR.Op := [.badd 7029 7034]
def bytes6992 : Bytes := ("    let r00001b7b: u32 = r00001b75.wrapping_add(r00001b7a);\n" : String).toByteArray.data.toList
theorem checked6992 : bytes6992=statementBytes 7035 (op6992.map lower) ∧ bytes6992.length=60 := by core033_kernel_decide
def op6993 : List WordIR.Op := [.badd 7035 6828]
def bytes6993 : Bytes := ("    let r00001b7c: u32 = r00001b7b.wrapping_add(r00001aac);\n" : String).toByteArray.data.toList
theorem checked6993 : bytes6993=statementBytes 7036 (op6993.map lower) ∧ bytes6993.length=60 := by core033_kernel_decide
def op6994 : List WordIR.Op := [.rotr 1664 6]
def bytes6994 : Bytes := ("    let r00001b7d: u32 = r00000680.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked6994 : bytes6994=statementBytes 7037 (op6994.map lower) ∧ bytes6994.length=65 := by core033_kernel_decide
def op6995 : List WordIR.Op := [.rotr 1664 11]
def bytes6995 : Bytes := ("    let r00001b7e: u32 = r00000680.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked6995 : bytes6995=statementBytes 7038 (op6995.map lower) ∧ bytes6995.length=65 := by core033_kernel_decide
def op6996 : List WordIR.Op := [.bxor 7037 7038]
def bytes6996 : Bytes := ("    let r00001b7f: u32 = r00001b7d ^ r00001b7e;\n" : String).toByteArray.data.toList
theorem checked6996 : bytes6996=statementBytes 7039 (op6996.map lower) ∧ bytes6996.length=48 := by core033_kernel_decide
def op6997 : List WordIR.Op := [.rotr 1664 25]
def bytes6997 : Bytes := ("    let r00001b80: u32 = r00000680.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked6997 : bytes6997=statementBytes 7040 (op6997.map lower) ∧ bytes6997.length=65 := by core033_kernel_decide
def op6998 : List WordIR.Op := [.bxor 7039 7040]
def bytes6998 : Bytes := ("    let r00001b81: u32 = r00001b7f ^ r00001b80;\n" : String).toByteArray.data.toList
theorem checked6998 : bytes6998=statementBytes 7041 (op6998.map lower) ∧ bytes6998.length=48 := by core033_kernel_decide
def op6999 : List WordIR.Op := [.badd 1823 7041]
def bytes6999 : Bytes := ("    let r00001b82: u32 = r0000071f.wrapping_add(r00001b81);\n" : String).toByteArray.data.toList
theorem checked6999 : bytes6999=statementBytes 7042 (op6999.map lower) ∧ bytes6999.length=60 := by core033_kernel_decide
def op7000 : List WordIR.Op := [.band 1664 1717]
def bytes7000 : Bytes := ("    let r00001b83: u32 = r00000680 & r000006b5;\n" : String).toByteArray.data.toList
theorem checked7000 : bytes7000=statementBytes 7043 (op7000.map lower) ∧ bytes7000.length=48 := by core033_kernel_decide
def op7001 : List WordIR.Op := [.bnot 1664]
def bytes7001 : Bytes := ("    let r00001b84: u32 = !r00000680;\n" : String).toByteArray.data.toList
theorem checked7001 : bytes7001=statementBytes 7044 (op7001.map lower) ∧ bytes7001.length=37 := by core033_kernel_decide
def op7002 : List WordIR.Op := [.band 7044 1770]
def bytes7002 : Bytes := ("    let r00001b85: u32 = r00001b84 & r000006ea;\n" : String).toByteArray.data.toList
theorem checked7002 : bytes7002=statementBytes 7045 (op7002.map lower) ∧ bytes7002.length=48 := by core033_kernel_decide
def op7003 : List WordIR.Op := [.bxor 7043 7045]
def bytes7003 : Bytes := ("    let r00001b86: u32 = r00001b83 ^ r00001b85;\n" : String).toByteArray.data.toList
theorem checked7003 : bytes7003=statementBytes 7046 (op7003.map lower) ∧ bytes7003.length=48 := by core033_kernel_decide
def op7004 : List WordIR.Op := [.badd 7042 7046]
def bytes7004 : Bytes := ("    let r00001b87: u32 = r00001b82.wrapping_add(r00001b86);\n" : String).toByteArray.data.toList
theorem checked7004 : bytes7004=statementBytes 7047 (op7004.map lower) ∧ bytes7004.length=60 := by core033_kernel_decide
def op7005 : List WordIR.Op := [.literal (BitVec.ofNat 32 1116352408)]
def bytes7005 : Bytes := ("    let r00001b88: u32 = 0x428a2f98_u32;\n" : String).toByteArray.data.toList
theorem checked7005 : bytes7005=statementBytes 7048 (op7005.map lower) ∧ bytes7005.length=41 := by core033_kernel_decide
def op7006 : List WordIR.Op := [.badd 7047 7048]
def bytes7006 : Bytes := ("    let r00001b89: u32 = r00001b87.wrapping_add(r00001b88);\n" : String).toByteArray.data.toList
theorem checked7006 : bytes7006=statementBytes 7049 (op7006.map lower) ∧ bytes7006.length=60 := by core033_kernel_decide
def op7007 : List WordIR.Op := [.badd 7049 5170]
def bytes7007 : Bytes := ("    let r00001b8a: u32 = r00001b89.wrapping_add(r00001432);\n" : String).toByteArray.data.toList
theorem checked7007 : bytes7007=statementBytes 7050 (op7007.map lower) ∧ bytes7007.length=60 := by core033_kernel_decide
def op7008 : List WordIR.Op := [.rotr 1452 2]
def bytes7008 : Bytes := ("    let r00001b8b: u32 = r000005ac.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7008 : bytes7008=statementBytes 7051 (op7008.map lower) ∧ bytes7008.length=65 := by core033_kernel_decide
def op7009 : List WordIR.Op := [.rotr 1452 13]
def bytes7009 : Bytes := ("    let r00001b8c: u32 = r000005ac.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7009 : bytes7009=statementBytes 7052 (op7009.map lower) ∧ bytes7009.length=65 := by core033_kernel_decide
def op7010 : List WordIR.Op := [.bxor 7051 7052]
def bytes7010 : Bytes := ("    let r00001b8d: u32 = r00001b8b ^ r00001b8c;\n" : String).toByteArray.data.toList
theorem checked7010 : bytes7010=statementBytes 7053 (op7010.map lower) ∧ bytes7010.length=48 := by core033_kernel_decide
def op7011 : List WordIR.Op := [.rotr 1452 22]
def bytes7011 : Bytes := ("    let r00001b8e: u32 = r000005ac.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7011 : bytes7011=statementBytes 7054 (op7011.map lower) ∧ bytes7011.length=65 := by core033_kernel_decide
def op7012 : List WordIR.Op := [.bxor 7053 7054]
def bytes7012 : Bytes := ("    let r00001b8f: u32 = r00001b8d ^ r00001b8e;\n" : String).toByteArray.data.toList
theorem checked7012 : bytes7012=statementBytes 7055 (op7012.map lower) ∧ bytes7012.length=48 := by core033_kernel_decide
def op7013 : List WordIR.Op := [.band 1452 1505]
def bytes7013 : Bytes := ("    let r00001b90: u32 = r000005ac & r000005e1;\n" : String).toByteArray.data.toList
theorem checked7013 : bytes7013=statementBytes 7056 (op7013.map lower) ∧ bytes7013.length=48 := by core033_kernel_decide
def op7014 : List WordIR.Op := [.band 1452 1558]
def bytes7014 : Bytes := ("    let r00001b91: u32 = r000005ac & r00000616;\n" : String).toByteArray.data.toList
theorem checked7014 : bytes7014=statementBytes 7057 (op7014.map lower) ∧ bytes7014.length=48 := by core033_kernel_decide
def op7015 : List WordIR.Op := [.bxor 7056 7057]
def bytes7015 : Bytes := ("    let r00001b92: u32 = r00001b90 ^ r00001b91;\n" : String).toByteArray.data.toList
theorem checked7015 : bytes7015=statementBytes 7058 (op7015.map lower) ∧ bytes7015.length=48 := by core033_kernel_decide
def op7016 : List WordIR.Op := [.band 1505 1558]
def bytes7016 : Bytes := ("    let r00001b93: u32 = r000005e1 & r00000616;\n" : String).toByteArray.data.toList
theorem checked7016 : bytes7016=statementBytes 7059 (op7016.map lower) ∧ bytes7016.length=48 := by core033_kernel_decide
def op7017 : List WordIR.Op := [.bxor 7058 7059]
def bytes7017 : Bytes := ("    let r00001b94: u32 = r00001b92 ^ r00001b93;\n" : String).toByteArray.data.toList
theorem checked7017 : bytes7017=statementBytes 7060 (op7017.map lower) ∧ bytes7017.length=48 := by core033_kernel_decide
def op7018 : List WordIR.Op := [.badd 7055 7060]
def bytes7018 : Bytes := ("    let r00001b95: u32 = r00001b8f.wrapping_add(r00001b94);\n" : String).toByteArray.data.toList
theorem checked7018 : bytes7018=statementBytes 7061 (op7018.map lower) ∧ bytes7018.length=60 := by core033_kernel_decide
def op7019 : List WordIR.Op := [.badd 7050 7061]
def bytes7019 : Bytes := ("    let r00001b96: u32 = r00001b8a.wrapping_add(r00001b95);\n" : String).toByteArray.data.toList
theorem checked7019 : bytes7019=statementBytes 7062 (op7019.map lower) ∧ bytes7019.length=60 := by core033_kernel_decide
def op7020 : List WordIR.Op := [.badd 1611 7050]
def bytes7020 : Bytes := ("    let r00001b97: u32 = r0000064b.wrapping_add(r00001b8a);\n" : String).toByteArray.data.toList
theorem checked7020 : bytes7020=statementBytes 7063 (op7020.map lower) ∧ bytes7020.length=60 := by core033_kernel_decide
def op7021 : List WordIR.Op := [.rotr 7063 6]
def bytes7021 : Bytes := ("    let r00001b98: u32 = r00001b97.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7021 : bytes7021=statementBytes 7064 (op7021.map lower) ∧ bytes7021.length=65 := by core033_kernel_decide
def op7022 : List WordIR.Op := [.rotr 7063 11]
def bytes7022 : Bytes := ("    let r00001b99: u32 = r00001b97.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7022 : bytes7022=statementBytes 7065 (op7022.map lower) ∧ bytes7022.length=65 := by core033_kernel_decide
def op7023 : List WordIR.Op := [.bxor 7064 7065]
def bytes7023 : Bytes := ("    let r00001b9a: u32 = r00001b98 ^ r00001b99;\n" : String).toByteArray.data.toList
theorem checked7023 : bytes7023=statementBytes 7066 (op7023.map lower) ∧ bytes7023.length=48 := by core033_kernel_decide
def op7024 : List WordIR.Op := [.rotr 7063 25]
def bytes7024 : Bytes := ("    let r00001b9b: u32 = r00001b97.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7024 : bytes7024=statementBytes 7067 (op7024.map lower) ∧ bytes7024.length=65 := by core033_kernel_decide
def op7025 : List WordIR.Op := [.bxor 7066 7067]
def bytes7025 : Bytes := ("    let r00001b9c: u32 = r00001b9a ^ r00001b9b;\n" : String).toByteArray.data.toList
theorem checked7025 : bytes7025=statementBytes 7068 (op7025.map lower) ∧ bytes7025.length=48 := by core033_kernel_decide
def op7026 : List WordIR.Op := [.badd 1770 7068]
def bytes7026 : Bytes := ("    let r00001b9d: u32 = r000006ea.wrapping_add(r00001b9c);\n" : String).toByteArray.data.toList
theorem checked7026 : bytes7026=statementBytes 7069 (op7026.map lower) ∧ bytes7026.length=60 := by core033_kernel_decide
def op7027 : List WordIR.Op := [.band 7063 1664]
def bytes7027 : Bytes := ("    let r00001b9e: u32 = r00001b97 & r00000680;\n" : String).toByteArray.data.toList
theorem checked7027 : bytes7027=statementBytes 7070 (op7027.map lower) ∧ bytes7027.length=48 := by core033_kernel_decide
def op7028 : List WordIR.Op := [.bnot 7063]
def bytes7028 : Bytes := ("    let r00001b9f: u32 = !r00001b97;\n" : String).toByteArray.data.toList
theorem checked7028 : bytes7028=statementBytes 7071 (op7028.map lower) ∧ bytes7028.length=37 := by core033_kernel_decide
def op7029 : List WordIR.Op := [.band 7071 1717]
def bytes7029 : Bytes := ("    let r00001ba0: u32 = r00001b9f & r000006b5;\n" : String).toByteArray.data.toList
theorem checked7029 : bytes7029=statementBytes 7072 (op7029.map lower) ∧ bytes7029.length=48 := by core033_kernel_decide
def op7030 : List WordIR.Op := [.bxor 7070 7072]
def bytes7030 : Bytes := ("    let r00001ba1: u32 = r00001b9e ^ r00001ba0;\n" : String).toByteArray.data.toList
theorem checked7030 : bytes7030=statementBytes 7073 (op7030.map lower) ∧ bytes7030.length=48 := by core033_kernel_decide
def op7031 : List WordIR.Op := [.badd 7069 7073]
def bytes7031 : Bytes := ("    let r00001ba2: u32 = r00001b9d.wrapping_add(r00001ba1);\n" : String).toByteArray.data.toList
theorem checked7031 : bytes7031=statementBytes 7074 (op7031.map lower) ∧ bytes7031.length=60 := by core033_kernel_decide
def op7032 : List WordIR.Op := [.literal (BitVec.ofNat 32 1899447441)]
def bytes7032 : Bytes := ("    let r00001ba3: u32 = 0x71374491_u32;\n" : String).toByteArray.data.toList
theorem checked7032 : bytes7032=statementBytes 7075 (op7032.map lower) ∧ bytes7032.length=41 := by core033_kernel_decide
def op7033 : List WordIR.Op := [.badd 7074 7075]
def bytes7033 : Bytes := ("    let r00001ba4: u32 = r00001ba2.wrapping_add(r00001ba3);\n" : String).toByteArray.data.toList
theorem checked7033 : bytes7033=statementBytes 7076 (op7033.map lower) ∧ bytes7033.length=60 := by core033_kernel_decide
def op7034 : List WordIR.Op := [.badd 7076 5176]
def bytes7034 : Bytes := ("    let r00001ba5: u32 = r00001ba4.wrapping_add(r00001438);\n" : String).toByteArray.data.toList
theorem checked7034 : bytes7034=statementBytes 7077 (op7034.map lower) ∧ bytes7034.length=60 := by core033_kernel_decide
def op7035 : List WordIR.Op := [.rotr 7062 2]
def bytes7035 : Bytes := ("    let r00001ba6: u32 = r00001b96.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7035 : bytes7035=statementBytes 7078 (op7035.map lower) ∧ bytes7035.length=65 := by core033_kernel_decide
def op7036 : List WordIR.Op := [.rotr 7062 13]
def bytes7036 : Bytes := ("    let r00001ba7: u32 = r00001b96.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7036 : bytes7036=statementBytes 7079 (op7036.map lower) ∧ bytes7036.length=65 := by core033_kernel_decide
def op7037 : List WordIR.Op := [.bxor 7078 7079]
def bytes7037 : Bytes := ("    let r00001ba8: u32 = r00001ba6 ^ r00001ba7;\n" : String).toByteArray.data.toList
theorem checked7037 : bytes7037=statementBytes 7080 (op7037.map lower) ∧ bytes7037.length=48 := by core033_kernel_decide
def op7038 : List WordIR.Op := [.rotr 7062 22]
def bytes7038 : Bytes := ("    let r00001ba9: u32 = r00001b96.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7038 : bytes7038=statementBytes 7081 (op7038.map lower) ∧ bytes7038.length=65 := by core033_kernel_decide
def op7039 : List WordIR.Op := [.bxor 7080 7081]
def bytes7039 : Bytes := ("    let r00001baa: u32 = r00001ba8 ^ r00001ba9;\n" : String).toByteArray.data.toList
theorem checked7039 : bytes7039=statementBytes 7082 (op7039.map lower) ∧ bytes7039.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6976,op6977,op6978,op6979,op6980,op6981,op6982,op6983,op6984,op6985,op6986,op6987,op6988,op6989,op6990,op6991,op6992,op6993,op6994,op6995,op6996,op6997,op6998,op6999,op7000,op7001,op7002,op7003,op7004,op7005,op7006,op7007,op7008,op7009,op7010,op7011,op7012,op7013,op7014,op7015,op7016,op7017,op7018,op7019,op7020,op7021,op7022,op7023,op7024,op7025,op7026,op7027,op7028,op7029,op7030,op7031,op7032,op7033,op7034,op7035,op7036,op7037,op7038,op7039]
def chunks : List Bytes := [bytes6976,bytes6977,bytes6978,bytes6979,bytes6980,bytes6981,bytes6982,bytes6983,bytes6984,bytes6985,bytes6986,bytes6987,bytes6988,bytes6989,bytes6990,bytes6991,bytes6992,bytes6993,bytes6994,bytes6995,bytes6996,bytes6997,bytes6998,bytes6999,bytes7000,bytes7001,bytes7002,bytes7003,bytes7004,bytes7005,bytes7006,bytes7007,bytes7008,bytes7009,bytes7010,bytes7011,bytes7012,bytes7013,bytes7014,bytes7015,bytes7016,bytes7017,bytes7018,bytes7019,bytes7020,bytes7021,bytes7022,bytes7023,bytes7024,bytes7025,bytes7026,bytes7027,bytes7028,bytes7029,bytes7030,bytes7031,bytes7032,bytes7033,bytes7034,bytes7035,bytes7036,bytes7037,bytes7038,bytes7039]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7019 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6976.1 (.cons _ _ _ _ _ checked6977.1 (.cons _ _ _ _ _ checked6978.1 (.cons _ _ _ _ _ checked6979.1 (.cons _ _ _ _ _ checked6980.1 (.cons _ _ _ _ _ checked6981.1 (.cons _ _ _ _ _ checked6982.1 (.cons _ _ _ _ _ checked6983.1 (.cons _ _ _ _ _ checked6984.1 (.cons _ _ _ _ _ checked6985.1 (.cons _ _ _ _ _ checked6986.1 (.cons _ _ _ _ _ checked6987.1 (.cons _ _ _ _ _ checked6988.1 (.cons _ _ _ _ _ checked6989.1 (.cons _ _ _ _ _ checked6990.1 (.cons _ _ _ _ _ checked6991.1 (.cons _ _ _ _ _ checked6992.1 (.cons _ _ _ _ _ checked6993.1 (.cons _ _ _ _ _ checked6994.1 (.cons _ _ _ _ _ checked6995.1 (.cons _ _ _ _ _ checked6996.1 (.cons _ _ _ _ _ checked6997.1 (.cons _ _ _ _ _ checked6998.1 (.cons _ _ _ _ _ checked6999.1 (.cons _ _ _ _ _ checked7000.1 (.cons _ _ _ _ _ checked7001.1 (.cons _ _ _ _ _ checked7002.1 (.cons _ _ _ _ _ checked7003.1 (.cons _ _ _ _ _ checked7004.1 (.cons _ _ _ _ _ checked7005.1 (.cons _ _ _ _ _ checked7006.1 (.cons _ _ _ _ _ checked7007.1 (.cons _ _ _ _ _ checked7008.1 (.cons _ _ _ _ _ checked7009.1 (.cons _ _ _ _ _ checked7010.1 (.cons _ _ _ _ _ checked7011.1 (.cons _ _ _ _ _ checked7012.1 (.cons _ _ _ _ _ checked7013.1 (.cons _ _ _ _ _ checked7014.1 (.cons _ _ _ _ _ checked7015.1 (.cons _ _ _ _ _ checked7016.1 (.cons _ _ _ _ _ checked7017.1 (.cons _ _ _ _ _ checked7018.1 (.cons _ _ _ _ _ checked7019.1 (.cons _ _ _ _ _ checked7020.1 (.cons _ _ _ _ _ checked7021.1 (.cons _ _ _ _ _ checked7022.1 (.cons _ _ _ _ _ checked7023.1 (.cons _ _ _ _ _ checked7024.1 (.cons _ _ _ _ _ checked7025.1 (.cons _ _ _ _ _ checked7026.1 (.cons _ _ _ _ _ checked7027.1 (.cons _ _ _ _ _ checked7028.1 (.cons _ _ _ _ _ checked7029.1 (.cons _ _ _ _ _ checked7030.1 (.cons _ _ _ _ _ checked7031.1 (.cons _ _ _ _ _ checked7032.1 (.cons _ _ _ _ _ checked7033.1 (.cons _ _ _ _ _ checked7034.1 (.cons _ _ _ _ _ checked7035.1 (.cons _ _ _ _ _ checked7036.1 (.cons _ _ _ _ _ checked7037.1 (.cons _ _ _ _ _ checked7038.1 (.cons _ _ _ _ _ checked7039.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7019 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3518 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6976.2,checked6977.2,checked6978.2,checked6979.2,checked6980.2,checked6981.2,checked6982.2,checked6983.2,checked6984.2,checked6985.2,checked6986.2,checked6987.2,checked6988.2,checked6989.2,checked6990.2,checked6991.2,checked6992.2,checked6993.2,checked6994.2,checked6995.2,checked6996.2,checked6997.2,checked6998.2,checked6999.2,checked7000.2,checked7001.2,checked7002.2,checked7003.2,checked7004.2,checked7005.2,checked7006.2,checked7007.2,checked7008.2,checked7009.2,checked7010.2,checked7011.2,checked7012.2,checked7013.2,checked7014.2,checked7015.2,checked7016.2,checked7017.2,checked7018.2,checked7019.2,checked7020.2,checked7021.2,checked7022.2,checked7023.2,checked7024.2,checked7025.2,checked7026.2,checked7027.2,checked7028.2,checked7029.2,checked7030.2,checked7031.2,checked7032.2,checked7033.2,checked7034.2,checked7035.2,checked7036.2,checked7037.2,checked7038.2,checked7039.2]
  decide
end ArtifactFrameHashControllerGroup109
