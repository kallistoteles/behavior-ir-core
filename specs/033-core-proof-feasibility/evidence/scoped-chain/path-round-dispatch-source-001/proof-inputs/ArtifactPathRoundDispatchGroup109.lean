import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup109
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6976 : List WordIR.Op := [.badd 7018 5722]
def bytes6976 : Bytes := ("    let r00001b6b: u32 = r00001b6a.wrapping_add(r0000165a);\n" : String).toByteArray.data.toList
theorem checked6976 : bytes6976=statementBytes 7019 (op6976.map lower) ∧ bytes6976.length=60 := by core033_kernel_decide
def op6977 : List WordIR.Op := [.rotr 7006 17]
def bytes6977 : Bytes := ("    let r00001b6c: u32 = r00001b5e.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6977 : bytes6977=statementBytes 7020 (op6977.map lower) ∧ bytes6977.length=65 := by core033_kernel_decide
def op6978 : List WordIR.Op := [.rotr 7006 19]
def bytes6978 : Bytes := ("    let r00001b6d: u32 = r00001b5e.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6978 : bytes6978=statementBytes 7021 (op6978.map lower) ∧ bytes6978.length=65 := by core033_kernel_decide
def op6979 : List WordIR.Op := [.bxor 7020 7021]
def bytes6979 : Bytes := ("    let r00001b6e: u32 = r00001b6c ^ r00001b6d;\n" : String).toByteArray.data.toList
theorem checked6979 : bytes6979=statementBytes 7022 (op6979.map lower) ∧ bytes6979.length=48 := by core033_kernel_decide
def op6980 : List WordIR.Op := [.shr 7006 10]
def bytes6980 : Bytes := ("    let r00001b6f: u32 = r00001b5e >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6980 : bytes6980=statementBytes 7023 (op6980.map lower) ∧ bytes6980.length=54 := by core033_kernel_decide
def op6981 : List WordIR.Op := [.bxor 7022 7023]
def bytes6981 : Bytes := ("    let r00001b70: u32 = r00001b6e ^ r00001b6f;\n" : String).toByteArray.data.toList
theorem checked6981 : bytes6981=statementBytes 7024 (op6981.map lower) ∧ bytes6981.length=48 := by core033_kernel_decide
def op6982 : List WordIR.Op := [.badd 7024 6941]
def bytes6982 : Bytes := ("    let r00001b71: u32 = r00001b70.wrapping_add(r00001b1d);\n" : String).toByteArray.data.toList
theorem checked6982 : bytes6982=statementBytes 7025 (op6982.map lower) ∧ bytes6982.length=60 := by core033_kernel_decide
def op6983 : List WordIR.Op := [.rotr 5734 7]
def bytes6983 : Bytes := ("    let r00001b72: u32 = r00001666.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6983 : bytes6983=statementBytes 7026 (op6983.map lower) ∧ bytes6983.length=65 := by core033_kernel_decide
def op6984 : List WordIR.Op := [.rotr 5734 18]
def bytes6984 : Bytes := ("    let r00001b73: u32 = r00001666.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6984 : bytes6984=statementBytes 7027 (op6984.map lower) ∧ bytes6984.length=65 := by core033_kernel_decide
def op6985 : List WordIR.Op := [.bxor 7026 7027]
def bytes6985 : Bytes := ("    let r00001b74: u32 = r00001b72 ^ r00001b73;\n" : String).toByteArray.data.toList
theorem checked6985 : bytes6985=statementBytes 7028 (op6985.map lower) ∧ bytes6985.length=48 := by core033_kernel_decide
def op6986 : List WordIR.Op := [.shr 5734 3]
def bytes6986 : Bytes := ("    let r00001b75: u32 = r00001666 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6986 : bytes6986=statementBytes 7029 (op6986.map lower) ∧ bytes6986.length=54 := by core033_kernel_decide
def op6987 : List WordIR.Op := [.bxor 7028 7029]
def bytes6987 : Bytes := ("    let r00001b76: u32 = r00001b74 ^ r00001b75;\n" : String).toByteArray.data.toList
theorem checked6987 : bytes6987=statementBytes 7030 (op6987.map lower) ∧ bytes6987.length=48 := by core033_kernel_decide
def op6988 : List WordIR.Op := [.badd 7025 7030]
def bytes6988 : Bytes := ("    let r00001b77: u32 = r00001b71.wrapping_add(r00001b76);\n" : String).toByteArray.data.toList
theorem checked6988 : bytes6988=statementBytes 7031 (op6988.map lower) ∧ bytes6988.length=60 := by core033_kernel_decide
def op6989 : List WordIR.Op := [.badd 7031 5728]
def bytes6989 : Bytes := ("    let r00001b78: u32 = r00001b77.wrapping_add(r00001660);\n" : String).toByteArray.data.toList
theorem checked6989 : bytes6989=statementBytes 7032 (op6989.map lower) ∧ bytes6989.length=60 := by core033_kernel_decide
def op6990 : List WordIR.Op := [.rotr 7019 17]
def bytes6990 : Bytes := ("    let r00001b79: u32 = r00001b6b.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6990 : bytes6990=statementBytes 7033 (op6990.map lower) ∧ bytes6990.length=65 := by core033_kernel_decide
def op6991 : List WordIR.Op := [.rotr 7019 19]
def bytes6991 : Bytes := ("    let r00001b7a: u32 = r00001b6b.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6991 : bytes6991=statementBytes 7034 (op6991.map lower) ∧ bytes6991.length=65 := by core033_kernel_decide
def op6992 : List WordIR.Op := [.bxor 7033 7034]
def bytes6992 : Bytes := ("    let r00001b7b: u32 = r00001b79 ^ r00001b7a;\n" : String).toByteArray.data.toList
theorem checked6992 : bytes6992=statementBytes 7035 (op6992.map lower) ∧ bytes6992.length=48 := by core033_kernel_decide
def op6993 : List WordIR.Op := [.shr 7019 10]
def bytes6993 : Bytes := ("    let r00001b7c: u32 = r00001b6b >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6993 : bytes6993=statementBytes 7036 (op6993.map lower) ∧ bytes6993.length=54 := by core033_kernel_decide
def op6994 : List WordIR.Op := [.bxor 7035 7036]
def bytes6994 : Bytes := ("    let r00001b7d: u32 = r00001b7b ^ r00001b7c;\n" : String).toByteArray.data.toList
theorem checked6994 : bytes6994=statementBytes 7037 (op6994.map lower) ∧ bytes6994.length=48 := by core033_kernel_decide
def op6995 : List WordIR.Op := [.badd 7037 6954]
def bytes6995 : Bytes := ("    let r00001b7e: u32 = r00001b7d.wrapping_add(r00001b2a);\n" : String).toByteArray.data.toList
theorem checked6995 : bytes6995=statementBytes 7038 (op6995.map lower) ∧ bytes6995.length=60 := by core033_kernel_decide
def op6996 : List WordIR.Op := [.rotr 5740 7]
def bytes6996 : Bytes := ("    let r00001b7f: u32 = r0000166c.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6996 : bytes6996=statementBytes 7039 (op6996.map lower) ∧ bytes6996.length=65 := by core033_kernel_decide
def op6997 : List WordIR.Op := [.rotr 5740 18]
def bytes6997 : Bytes := ("    let r00001b80: u32 = r0000166c.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6997 : bytes6997=statementBytes 7040 (op6997.map lower) ∧ bytes6997.length=65 := by core033_kernel_decide
def op6998 : List WordIR.Op := [.bxor 7039 7040]
def bytes6998 : Bytes := ("    let r00001b81: u32 = r00001b7f ^ r00001b80;\n" : String).toByteArray.data.toList
theorem checked6998 : bytes6998=statementBytes 7041 (op6998.map lower) ∧ bytes6998.length=48 := by core033_kernel_decide
def op6999 : List WordIR.Op := [.shr 5740 3]
def bytes6999 : Bytes := ("    let r00001b82: u32 = r0000166c >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6999 : bytes6999=statementBytes 7042 (op6999.map lower) ∧ bytes6999.length=54 := by core033_kernel_decide
def op7000 : List WordIR.Op := [.bxor 7041 7042]
def bytes7000 : Bytes := ("    let r00001b83: u32 = r00001b81 ^ r00001b82;\n" : String).toByteArray.data.toList
theorem checked7000 : bytes7000=statementBytes 7043 (op7000.map lower) ∧ bytes7000.length=48 := by core033_kernel_decide
def op7001 : List WordIR.Op := [.badd 7038 7043]
def bytes7001 : Bytes := ("    let r00001b84: u32 = r00001b7e.wrapping_add(r00001b83);\n" : String).toByteArray.data.toList
theorem checked7001 : bytes7001=statementBytes 7044 (op7001.map lower) ∧ bytes7001.length=60 := by core033_kernel_decide
def op7002 : List WordIR.Op := [.badd 7044 5734]
def bytes7002 : Bytes := ("    let r00001b85: u32 = r00001b84.wrapping_add(r00001666);\n" : String).toByteArray.data.toList
theorem checked7002 : bytes7002=statementBytes 7045 (op7002.map lower) ∧ bytes7002.length=60 := by core033_kernel_decide
def op7003 : List WordIR.Op := [.rotr 7032 17]
def bytes7003 : Bytes := ("    let r00001b86: u32 = r00001b78.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7003 : bytes7003=statementBytes 7046 (op7003.map lower) ∧ bytes7003.length=65 := by core033_kernel_decide
def op7004 : List WordIR.Op := [.rotr 7032 19]
def bytes7004 : Bytes := ("    let r00001b87: u32 = r00001b78.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7004 : bytes7004=statementBytes 7047 (op7004.map lower) ∧ bytes7004.length=65 := by core033_kernel_decide
def op7005 : List WordIR.Op := [.bxor 7046 7047]
def bytes7005 : Bytes := ("    let r00001b88: u32 = r00001b86 ^ r00001b87;\n" : String).toByteArray.data.toList
theorem checked7005 : bytes7005=statementBytes 7048 (op7005.map lower) ∧ bytes7005.length=48 := by core033_kernel_decide
def op7006 : List WordIR.Op := [.shr 7032 10]
def bytes7006 : Bytes := ("    let r00001b89: u32 = r00001b78 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7006 : bytes7006=statementBytes 7049 (op7006.map lower) ∧ bytes7006.length=54 := by core033_kernel_decide
def op7007 : List WordIR.Op := [.bxor 7048 7049]
def bytes7007 : Bytes := ("    let r00001b8a: u32 = r00001b88 ^ r00001b89;\n" : String).toByteArray.data.toList
theorem checked7007 : bytes7007=statementBytes 7050 (op7007.map lower) ∧ bytes7007.length=48 := by core033_kernel_decide
def op7008 : List WordIR.Op := [.badd 7050 6967]
def bytes7008 : Bytes := ("    let r00001b8b: u32 = r00001b8a.wrapping_add(r00001b37);\n" : String).toByteArray.data.toList
theorem checked7008 : bytes7008=statementBytes 7051 (op7008.map lower) ∧ bytes7008.length=60 := by core033_kernel_decide
def op7009 : List WordIR.Op := [.rotr 5746 7]
def bytes7009 : Bytes := ("    let r00001b8c: u32 = r00001672.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7009 : bytes7009=statementBytes 7052 (op7009.map lower) ∧ bytes7009.length=65 := by core033_kernel_decide
def op7010 : List WordIR.Op := [.rotr 5746 18]
def bytes7010 : Bytes := ("    let r00001b8d: u32 = r00001672.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7010 : bytes7010=statementBytes 7053 (op7010.map lower) ∧ bytes7010.length=65 := by core033_kernel_decide
def op7011 : List WordIR.Op := [.bxor 7052 7053]
def bytes7011 : Bytes := ("    let r00001b8e: u32 = r00001b8c ^ r00001b8d;\n" : String).toByteArray.data.toList
theorem checked7011 : bytes7011=statementBytes 7054 (op7011.map lower) ∧ bytes7011.length=48 := by core033_kernel_decide
def op7012 : List WordIR.Op := [.shr 5746 3]
def bytes7012 : Bytes := ("    let r00001b8f: u32 = r00001672 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7012 : bytes7012=statementBytes 7055 (op7012.map lower) ∧ bytes7012.length=54 := by core033_kernel_decide
def op7013 : List WordIR.Op := [.bxor 7054 7055]
def bytes7013 : Bytes := ("    let r00001b90: u32 = r00001b8e ^ r00001b8f;\n" : String).toByteArray.data.toList
theorem checked7013 : bytes7013=statementBytes 7056 (op7013.map lower) ∧ bytes7013.length=48 := by core033_kernel_decide
def op7014 : List WordIR.Op := [.badd 7051 7056]
def bytes7014 : Bytes := ("    let r00001b91: u32 = r00001b8b.wrapping_add(r00001b90);\n" : String).toByteArray.data.toList
theorem checked7014 : bytes7014=statementBytes 7057 (op7014.map lower) ∧ bytes7014.length=60 := by core033_kernel_decide
def op7015 : List WordIR.Op := [.badd 7057 5740]
def bytes7015 : Bytes := ("    let r00001b92: u32 = r00001b91.wrapping_add(r0000166c);\n" : String).toByteArray.data.toList
theorem checked7015 : bytes7015=statementBytes 7058 (op7015.map lower) ∧ bytes7015.length=60 := by core033_kernel_decide
def op7016 : List WordIR.Op := [.rotr 7045 17]
def bytes7016 : Bytes := ("    let r00001b93: u32 = r00001b85.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7016 : bytes7016=statementBytes 7059 (op7016.map lower) ∧ bytes7016.length=65 := by core033_kernel_decide
def op7017 : List WordIR.Op := [.rotr 7045 19]
def bytes7017 : Bytes := ("    let r00001b94: u32 = r00001b85.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7017 : bytes7017=statementBytes 7060 (op7017.map lower) ∧ bytes7017.length=65 := by core033_kernel_decide
def op7018 : List WordIR.Op := [.bxor 7059 7060]
def bytes7018 : Bytes := ("    let r00001b95: u32 = r00001b93 ^ r00001b94;\n" : String).toByteArray.data.toList
theorem checked7018 : bytes7018=statementBytes 7061 (op7018.map lower) ∧ bytes7018.length=48 := by core033_kernel_decide
def op7019 : List WordIR.Op := [.shr 7045 10]
def bytes7019 : Bytes := ("    let r00001b96: u32 = r00001b85 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7019 : bytes7019=statementBytes 7062 (op7019.map lower) ∧ bytes7019.length=54 := by core033_kernel_decide
def op7020 : List WordIR.Op := [.bxor 7061 7062]
def bytes7020 : Bytes := ("    let r00001b97: u32 = r00001b95 ^ r00001b96;\n" : String).toByteArray.data.toList
theorem checked7020 : bytes7020=statementBytes 7063 (op7020.map lower) ∧ bytes7020.length=48 := by core033_kernel_decide
def op7021 : List WordIR.Op := [.badd 7063 6980]
def bytes7021 : Bytes := ("    let r00001b98: u32 = r00001b97.wrapping_add(r00001b44);\n" : String).toByteArray.data.toList
theorem checked7021 : bytes7021=statementBytes 7064 (op7021.map lower) ∧ bytes7021.length=60 := by core033_kernel_decide
def op7022 : List WordIR.Op := [.rotr 5752 7]
def bytes7022 : Bytes := ("    let r00001b99: u32 = r00001678.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7022 : bytes7022=statementBytes 7065 (op7022.map lower) ∧ bytes7022.length=65 := by core033_kernel_decide
def op7023 : List WordIR.Op := [.rotr 5752 18]
def bytes7023 : Bytes := ("    let r00001b9a: u32 = r00001678.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7023 : bytes7023=statementBytes 7066 (op7023.map lower) ∧ bytes7023.length=65 := by core033_kernel_decide
def op7024 : List WordIR.Op := [.bxor 7065 7066]
def bytes7024 : Bytes := ("    let r00001b9b: u32 = r00001b99 ^ r00001b9a;\n" : String).toByteArray.data.toList
theorem checked7024 : bytes7024=statementBytes 7067 (op7024.map lower) ∧ bytes7024.length=48 := by core033_kernel_decide
def op7025 : List WordIR.Op := [.shr 5752 3]
def bytes7025 : Bytes := ("    let r00001b9c: u32 = r00001678 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7025 : bytes7025=statementBytes 7068 (op7025.map lower) ∧ bytes7025.length=54 := by core033_kernel_decide
def op7026 : List WordIR.Op := [.bxor 7067 7068]
def bytes7026 : Bytes := ("    let r00001b9d: u32 = r00001b9b ^ r00001b9c;\n" : String).toByteArray.data.toList
theorem checked7026 : bytes7026=statementBytes 7069 (op7026.map lower) ∧ bytes7026.length=48 := by core033_kernel_decide
def op7027 : List WordIR.Op := [.badd 7064 7069]
def bytes7027 : Bytes := ("    let r00001b9e: u32 = r00001b98.wrapping_add(r00001b9d);\n" : String).toByteArray.data.toList
theorem checked7027 : bytes7027=statementBytes 7070 (op7027.map lower) ∧ bytes7027.length=60 := by core033_kernel_decide
def op7028 : List WordIR.Op := [.badd 7070 5746]
def bytes7028 : Bytes := ("    let r00001b9f: u32 = r00001b9e.wrapping_add(r00001672);\n" : String).toByteArray.data.toList
theorem checked7028 : bytes7028=statementBytes 7071 (op7028.map lower) ∧ bytes7028.length=60 := by core033_kernel_decide
def op7029 : List WordIR.Op := [.rotr 7058 17]
def bytes7029 : Bytes := ("    let r00001ba0: u32 = r00001b92.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked7029 : bytes7029=statementBytes 7072 (op7029.map lower) ∧ bytes7029.length=65 := by core033_kernel_decide
def op7030 : List WordIR.Op := [.rotr 7058 19]
def bytes7030 : Bytes := ("    let r00001ba1: u32 = r00001b92.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked7030 : bytes7030=statementBytes 7073 (op7030.map lower) ∧ bytes7030.length=65 := by core033_kernel_decide
def op7031 : List WordIR.Op := [.bxor 7072 7073]
def bytes7031 : Bytes := ("    let r00001ba2: u32 = r00001ba0 ^ r00001ba1;\n" : String).toByteArray.data.toList
theorem checked7031 : bytes7031=statementBytes 7074 (op7031.map lower) ∧ bytes7031.length=48 := by core033_kernel_decide
def op7032 : List WordIR.Op := [.shr 7058 10]
def bytes7032 : Bytes := ("    let r00001ba3: u32 = r00001b92 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked7032 : bytes7032=statementBytes 7075 (op7032.map lower) ∧ bytes7032.length=54 := by core033_kernel_decide
def op7033 : List WordIR.Op := [.bxor 7074 7075]
def bytes7033 : Bytes := ("    let r00001ba4: u32 = r00001ba2 ^ r00001ba3;\n" : String).toByteArray.data.toList
theorem checked7033 : bytes7033=statementBytes 7076 (op7033.map lower) ∧ bytes7033.length=48 := by core033_kernel_decide
def op7034 : List WordIR.Op := [.badd 7076 6993]
def bytes7034 : Bytes := ("    let r00001ba5: u32 = r00001ba4.wrapping_add(r00001b51);\n" : String).toByteArray.data.toList
theorem checked7034 : bytes7034=statementBytes 7077 (op7034.map lower) ∧ bytes7034.length=60 := by core033_kernel_decide
def op7035 : List WordIR.Op := [.rotr 5758 7]
def bytes7035 : Bytes := ("    let r00001ba6: u32 = r0000167e.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked7035 : bytes7035=statementBytes 7078 (op7035.map lower) ∧ bytes7035.length=65 := by core033_kernel_decide
def op7036 : List WordIR.Op := [.rotr 5758 18]
def bytes7036 : Bytes := ("    let r00001ba7: u32 = r0000167e.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked7036 : bytes7036=statementBytes 7079 (op7036.map lower) ∧ bytes7036.length=65 := by core033_kernel_decide
def op7037 : List WordIR.Op := [.bxor 7078 7079]
def bytes7037 : Bytes := ("    let r00001ba8: u32 = r00001ba6 ^ r00001ba7;\n" : String).toByteArray.data.toList
theorem checked7037 : bytes7037=statementBytes 7080 (op7037.map lower) ∧ bytes7037.length=48 := by core033_kernel_decide
def op7038 : List WordIR.Op := [.shr 5758 3]
def bytes7038 : Bytes := ("    let r00001ba9: u32 = r0000167e >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked7038 : bytes7038=statementBytes 7081 (op7038.map lower) ∧ bytes7038.length=54 := by core033_kernel_decide
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
theorem partSize : partBytes.length=3640 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6976.2,checked6977.2,checked6978.2,checked6979.2,checked6980.2,checked6981.2,checked6982.2,checked6983.2,checked6984.2,checked6985.2,checked6986.2,checked6987.2,checked6988.2,checked6989.2,checked6990.2,checked6991.2,checked6992.2,checked6993.2,checked6994.2,checked6995.2,checked6996.2,checked6997.2,checked6998.2,checked6999.2,checked7000.2,checked7001.2,checked7002.2,checked7003.2,checked7004.2,checked7005.2,checked7006.2,checked7007.2,checked7008.2,checked7009.2,checked7010.2,checked7011.2,checked7012.2,checked7013.2,checked7014.2,checked7015.2,checked7016.2,checked7017.2,checked7018.2,checked7019.2,checked7020.2,checked7021.2,checked7022.2,checked7023.2,checked7024.2,checked7025.2,checked7026.2,checked7027.2,checked7028.2,checked7029.2,checked7030.2,checked7031.2,checked7032.2,checked7033.2,checked7034.2,checked7035.2,checked7036.2,checked7037.2,checked7038.2,checked7039.2]
  decide
end ArtifactPathRoundDispatchGroup109
