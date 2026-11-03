import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup93
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5952 : List WordIR.Op := [.bxor 616 6047]
def bytes5952 : Bytes := ("    let r000017a0: u32 = r00000268 ^ r0000179f;\n" : String).toByteArray.data.toList
theorem checked5952 : bytes5952=statementBytes 6048 (op5952.map lower) ∧ bytes5952.length=48 := by core033_kernel_decide
def op5953 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5953 : Bytes := ("    let r000017a1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5953 : bytes5953=statementBytes 6049 (op5953.map lower) ∧ bytes5953.length=41 := by core033_kernel_decide
def op5954 : List WordIR.Op := [.bnot 6049]
def bytes5954 : Bytes := ("    let r000017a2: u32 = !r000017a1;\n" : String).toByteArray.data.toList
theorem checked5954 : bytes5954=statementBytes 6050 (op5954.map lower) ∧ bytes5954.length=37 := by core033_kernel_decide
def op5955 : List WordIR.Op := [.bxor 6048 6050]
def bytes5955 : Bytes := ("    let r000017a3: u32 = r000017a0 ^ r000017a2;\n" : String).toByteArray.data.toList
theorem checked5955 : bytes5955=statementBytes 6051 (op5955.map lower) ∧ bytes5955.length=48 := by core033_kernel_decide
def op5956 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5956 : Bytes := ("    let r000017a4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5956 : bytes5956=statementBytes 6052 (op5956.map lower) ∧ bytes5956.length=41 := by core033_kernel_decide
def op5957 : List WordIR.Op := [.bxor 616 6052]
def bytes5957 : Bytes := ("    let r000017a5: u32 = r00000268 ^ r000017a4;\n" : String).toByteArray.data.toList
theorem checked5957 : bytes5957=statementBytes 6053 (op5957.map lower) ∧ bytes5957.length=48 := by core033_kernel_decide
def op5958 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5958 : Bytes := ("    let r000017a6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5958 : bytes5958=statementBytes 6054 (op5958.map lower) ∧ bytes5958.length=41 := by core033_kernel_decide
def op5959 : List WordIR.Op := [.bnot 6054]
def bytes5959 : Bytes := ("    let r000017a7: u32 = !r000017a6;\n" : String).toByteArray.data.toList
theorem checked5959 : bytes5959=statementBytes 6055 (op5959.map lower) ∧ bytes5959.length=37 := by core033_kernel_decide
def op5960 : List WordIR.Op := [.badd 6053 6055]
def bytes5960 : Bytes := ("    let r000017a8: u32 = r000017a5.wrapping_add(r000017a7);\n" : String).toByteArray.data.toList
theorem checked5960 : bytes5960=statementBytes 6056 (op5960.map lower) ∧ bytes5960.length=60 := by core033_kernel_decide
def op5961 : List WordIR.Op := [.bnot 6056]
def bytes5961 : Bytes := ("    let r000017a9: u32 = !r000017a8;\n" : String).toByteArray.data.toList
theorem checked5961 : bytes5961=statementBytes 6057 (op5961.map lower) ∧ bytes5961.length=37 := by core033_kernel_decide
def op5962 : List WordIR.Op := [.band 6051 6057]
def bytes5962 : Bytes := ("    let r000017aa: u32 = r000017a3 & r000017a9;\n" : String).toByteArray.data.toList
theorem checked5962 : bytes5962=statementBytes 6058 (op5962.map lower) ∧ bytes5962.length=48 := by core033_kernel_decide
def op5963 : List WordIR.Op := [.bxor 6046 6058]
def bytes5963 : Bytes := ("    let r000017ab: u32 = r0000179e ^ r000017aa;\n" : String).toByteArray.data.toList
theorem checked5963 : bytes5963=statementBytes 6059 (op5963.map lower) ∧ bytes5963.length=48 := by core033_kernel_decide
def op5964 : List WordIR.Op := [.shr 6059 31]
def bytes5964 : Bytes := ("    let r000017ac: u32 = r000017ab >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5964 : bytes5964=statementBytes 6060 (op5964.map lower) ∧ bytes5964.length=54 := by core033_kernel_decide
def op5965 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5965 : Bytes := ("    let r000017ad: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5965 : bytes5965=statementBytes 6061 (op5965.map lower) ∧ bytes5965.length=41 := by core033_kernel_decide
def op5966 : List WordIR.Op := [.bxor 6060 6061]
def bytes5966 : Bytes := ("    let r000017ae: u32 = r000017ac ^ r000017ad;\n" : String).toByteArray.data.toList
theorem checked5966 : bytes5966=statementBytes 6062 (op5966.map lower) ∧ bytes5966.length=48 := by core033_kernel_decide
def op5967 : List WordIR.Op := [.bnot 6062]
def bytes5967 : Bytes := ("    let r000017af: u32 = !r000017ae;\n" : String).toByteArray.data.toList
theorem checked5967 : bytes5967=statementBytes 6063 (op5967.map lower) ∧ bytes5967.length=37 := by core033_kernel_decide
def op5968 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5968 : Bytes := ("    let r000017b0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5968 : bytes5968=statementBytes 6064 (op5968.map lower) ∧ bytes5968.length=41 := by core033_kernel_decide
def op5969 : List WordIR.Op := [.badd 6063 6064]
def bytes5969 : Bytes := ("    let r000017b1: u32 = r000017af.wrapping_add(r000017b0);\n" : String).toByteArray.data.toList
theorem checked5969 : bytes5969=statementBytes 6065 (op5969.map lower) ∧ bytes5969.length=60 := by core033_kernel_decide
def op5970 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5970 : Bytes := ("    let r000017b2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5970 : bytes5970=statementBytes 6066 (op5970.map lower) ∧ bytes5970.length=41 := by core033_kernel_decide
def op5971 : List WordIR.Op := [.band 6065 6066]
def bytes5971 : Bytes := ("    let r000017b3: u32 = r000017b1 & r000017b2;\n" : String).toByteArray.data.toList
theorem checked5971 : bytes5971=statementBytes 6067 (op5971.map lower) ∧ bytes5971.length=48 := by core033_kernel_decide
def op5972 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5972 : Bytes := ("    let r000017b4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5972 : bytes5972=statementBytes 6068 (op5972.map lower) ∧ bytes5972.length=41 := by core033_kernel_decide
def op5973 : List WordIR.Op := [.bxor 616 6068]
def bytes5973 : Bytes := ("    let r000017b5: u32 = r00000268 ^ r000017b4;\n" : String).toByteArray.data.toList
theorem checked5973 : bytes5973=statementBytes 6069 (op5973.map lower) ∧ bytes5973.length=48 := by core033_kernel_decide
def op5974 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5974 : Bytes := ("    let r000017b6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5974 : bytes5974=statementBytes 6070 (op5974.map lower) ∧ bytes5974.length=41 := by core033_kernel_decide
def op5975 : List WordIR.Op := [.bnot 6070]
def bytes5975 : Bytes := ("    let r000017b7: u32 = !r000017b6;\n" : String).toByteArray.data.toList
theorem checked5975 : bytes5975=statementBytes 6071 (op5975.map lower) ∧ bytes5975.length=37 := by core033_kernel_decide
def op5976 : List WordIR.Op := [.band 6069 6071]
def bytes5976 : Bytes := ("    let r000017b8: u32 = r000017b5 & r000017b7;\n" : String).toByteArray.data.toList
theorem checked5976 : bytes5976=statementBytes 6072 (op5976.map lower) ∧ bytes5976.length=48 := by core033_kernel_decide
def op5977 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5977 : Bytes := ("    let r000017b9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5977 : bytes5977=statementBytes 6073 (op5977.map lower) ∧ bytes5977.length=41 := by core033_kernel_decide
def op5978 : List WordIR.Op := [.bxor 616 6073]
def bytes5978 : Bytes := ("    let r000017ba: u32 = r00000268 ^ r000017b9;\n" : String).toByteArray.data.toList
theorem checked5978 : bytes5978=statementBytes 6074 (op5978.map lower) ∧ bytes5978.length=48 := by core033_kernel_decide
def op5979 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5979 : Bytes := ("    let r000017bb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5979 : bytes5979=statementBytes 6075 (op5979.map lower) ∧ bytes5979.length=41 := by core033_kernel_decide
def op5980 : List WordIR.Op := [.bnot 6075]
def bytes5980 : Bytes := ("    let r000017bc: u32 = !r000017bb;\n" : String).toByteArray.data.toList
theorem checked5980 : bytes5980=statementBytes 6076 (op5980.map lower) ∧ bytes5980.length=37 := by core033_kernel_decide
def op5981 : List WordIR.Op := [.bxor 6074 6076]
def bytes5981 : Bytes := ("    let r000017bd: u32 = r000017ba ^ r000017bc;\n" : String).toByteArray.data.toList
theorem checked5981 : bytes5981=statementBytes 6077 (op5981.map lower) ∧ bytes5981.length=48 := by core033_kernel_decide
def op5982 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5982 : Bytes := ("    let r000017be: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5982 : bytes5982=statementBytes 6078 (op5982.map lower) ∧ bytes5982.length=41 := by core033_kernel_decide
def op5983 : List WordIR.Op := [.bxor 616 6078]
def bytes5983 : Bytes := ("    let r000017bf: u32 = r00000268 ^ r000017be;\n" : String).toByteArray.data.toList
theorem checked5983 : bytes5983=statementBytes 6079 (op5983.map lower) ∧ bytes5983.length=48 := by core033_kernel_decide
def op5984 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5984 : Bytes := ("    let r000017c0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5984 : bytes5984=statementBytes 6080 (op5984.map lower) ∧ bytes5984.length=41 := by core033_kernel_decide
def op5985 : List WordIR.Op := [.bnot 6080]
def bytes5985 : Bytes := ("    let r000017c1: u32 = !r000017c0;\n" : String).toByteArray.data.toList
theorem checked5985 : bytes5985=statementBytes 6081 (op5985.map lower) ∧ bytes5985.length=37 := by core033_kernel_decide
def op5986 : List WordIR.Op := [.badd 6079 6081]
def bytes5986 : Bytes := ("    let r000017c2: u32 = r000017bf.wrapping_add(r000017c1);\n" : String).toByteArray.data.toList
theorem checked5986 : bytes5986=statementBytes 6082 (op5986.map lower) ∧ bytes5986.length=60 := by core033_kernel_decide
def op5987 : List WordIR.Op := [.bnot 6082]
def bytes5987 : Bytes := ("    let r000017c3: u32 = !r000017c2;\n" : String).toByteArray.data.toList
theorem checked5987 : bytes5987=statementBytes 6083 (op5987.map lower) ∧ bytes5987.length=37 := by core033_kernel_decide
def op5988 : List WordIR.Op := [.band 6077 6083]
def bytes5988 : Bytes := ("    let r000017c4: u32 = r000017bd & r000017c3;\n" : String).toByteArray.data.toList
theorem checked5988 : bytes5988=statementBytes 6084 (op5988.map lower) ∧ bytes5988.length=48 := by core033_kernel_decide
def op5989 : List WordIR.Op := [.bxor 6072 6084]
def bytes5989 : Bytes := ("    let r000017c5: u32 = r000017b8 ^ r000017c4;\n" : String).toByteArray.data.toList
theorem checked5989 : bytes5989=statementBytes 6085 (op5989.map lower) ∧ bytes5989.length=48 := by core033_kernel_decide
def op5990 : List WordIR.Op := [.shr 6085 31]
def bytes5990 : Bytes := ("    let r000017c6: u32 = r000017c5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5990 : bytes5990=statementBytes 6086 (op5990.map lower) ∧ bytes5990.length=54 := by core033_kernel_decide
def op5991 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5991 : Bytes := ("    let r000017c7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5991 : bytes5991=statementBytes 6087 (op5991.map lower) ∧ bytes5991.length=41 := by core033_kernel_decide
def op5992 : List WordIR.Op := [.bxor 6086 6087]
def bytes5992 : Bytes := ("    let r000017c8: u32 = r000017c6 ^ r000017c7;\n" : String).toByteArray.data.toList
theorem checked5992 : bytes5992=statementBytes 6088 (op5992.map lower) ∧ bytes5992.length=48 := by core033_kernel_decide
def op5993 : List WordIR.Op := [.bnot 6088]
def bytes5993 : Bytes := ("    let r000017c9: u32 = !r000017c8;\n" : String).toByteArray.data.toList
theorem checked5993 : bytes5993=statementBytes 6089 (op5993.map lower) ∧ bytes5993.length=37 := by core033_kernel_decide
def op5994 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5994 : Bytes := ("    let r000017ca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5994 : bytes5994=statementBytes 6090 (op5994.map lower) ∧ bytes5994.length=41 := by core033_kernel_decide
def op5995 : List WordIR.Op := [.badd 6089 6090]
def bytes5995 : Bytes := ("    let r000017cb: u32 = r000017c9.wrapping_add(r000017ca);\n" : String).toByteArray.data.toList
theorem checked5995 : bytes5995=statementBytes 6091 (op5995.map lower) ∧ bytes5995.length=60 := by core033_kernel_decide
def op5996 : List WordIR.Op := [.bnot 6091]
def bytes5996 : Bytes := ("    let r000017cc: u32 = !r000017cb;\n" : String).toByteArray.data.toList
theorem checked5996 : bytes5996=statementBytes 6092 (op5996.map lower) ∧ bytes5996.length=37 := by core033_kernel_decide
def op5997 : List WordIR.Op := [.band 6092 2004]
def bytes5997 : Bytes := ("    let r000017cd: u32 = r000017cc & r000007d4;\n" : String).toByteArray.data.toList
theorem checked5997 : bytes5997=statementBytes 6093 (op5997.map lower) ∧ bytes5997.length=48 := by core033_kernel_decide
def op5998 : List WordIR.Op := [.bxor 6067 6093]
def bytes5998 : Bytes := ("    let r000017ce: u32 = r000017b3 ^ r000017cd;\n" : String).toByteArray.data.toList
theorem checked5998 : bytes5998=statementBytes 6094 (op5998.map lower) ∧ bytes5998.length=48 := by core033_kernel_decide
def op5999 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5999 : Bytes := ("    let r000017cf: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5999 : bytes5999=statementBytes 6095 (op5999.map lower) ∧ bytes5999.length=41 := by core033_kernel_decide
def op6000 : List WordIR.Op := [.bxor 616 6095]
def bytes6000 : Bytes := ("    let r000017d0: u32 = r00000268 ^ r000017cf;\n" : String).toByteArray.data.toList
theorem checked6000 : bytes6000=statementBytes 6096 (op6000.map lower) ∧ bytes6000.length=48 := by core033_kernel_decide
def op6001 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6001 : Bytes := ("    let r000017d1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6001 : bytes6001=statementBytes 6097 (op6001.map lower) ∧ bytes6001.length=41 := by core033_kernel_decide
def op6002 : List WordIR.Op := [.bnot 6097]
def bytes6002 : Bytes := ("    let r000017d2: u32 = !r000017d1;\n" : String).toByteArray.data.toList
theorem checked6002 : bytes6002=statementBytes 6098 (op6002.map lower) ∧ bytes6002.length=37 := by core033_kernel_decide
def op6003 : List WordIR.Op := [.band 6096 6098]
def bytes6003 : Bytes := ("    let r000017d3: u32 = r000017d0 & r000017d2;\n" : String).toByteArray.data.toList
theorem checked6003 : bytes6003=statementBytes 6099 (op6003.map lower) ∧ bytes6003.length=48 := by core033_kernel_decide
def op6004 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6004 : Bytes := ("    let r000017d4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6004 : bytes6004=statementBytes 6100 (op6004.map lower) ∧ bytes6004.length=41 := by core033_kernel_decide
def op6005 : List WordIR.Op := [.bxor 616 6100]
def bytes6005 : Bytes := ("    let r000017d5: u32 = r00000268 ^ r000017d4;\n" : String).toByteArray.data.toList
theorem checked6005 : bytes6005=statementBytes 6101 (op6005.map lower) ∧ bytes6005.length=48 := by core033_kernel_decide
def op6006 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6006 : Bytes := ("    let r000017d6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6006 : bytes6006=statementBytes 6102 (op6006.map lower) ∧ bytes6006.length=41 := by core033_kernel_decide
def op6007 : List WordIR.Op := [.bnot 6102]
def bytes6007 : Bytes := ("    let r000017d7: u32 = !r000017d6;\n" : String).toByteArray.data.toList
theorem checked6007 : bytes6007=statementBytes 6103 (op6007.map lower) ∧ bytes6007.length=37 := by core033_kernel_decide
def op6008 : List WordIR.Op := [.bxor 6101 6103]
def bytes6008 : Bytes := ("    let r000017d8: u32 = r000017d5 ^ r000017d7;\n" : String).toByteArray.data.toList
theorem checked6008 : bytes6008=statementBytes 6104 (op6008.map lower) ∧ bytes6008.length=48 := by core033_kernel_decide
def op6009 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6009 : Bytes := ("    let r000017d9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6009 : bytes6009=statementBytes 6105 (op6009.map lower) ∧ bytes6009.length=41 := by core033_kernel_decide
def op6010 : List WordIR.Op := [.bxor 616 6105]
def bytes6010 : Bytes := ("    let r000017da: u32 = r00000268 ^ r000017d9;\n" : String).toByteArray.data.toList
theorem checked6010 : bytes6010=statementBytes 6106 (op6010.map lower) ∧ bytes6010.length=48 := by core033_kernel_decide
def op6011 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6011 : Bytes := ("    let r000017db: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6011 : bytes6011=statementBytes 6107 (op6011.map lower) ∧ bytes6011.length=41 := by core033_kernel_decide
def op6012 : List WordIR.Op := [.bnot 6107]
def bytes6012 : Bytes := ("    let r000017dc: u32 = !r000017db;\n" : String).toByteArray.data.toList
theorem checked6012 : bytes6012=statementBytes 6108 (op6012.map lower) ∧ bytes6012.length=37 := by core033_kernel_decide
def op6013 : List WordIR.Op := [.badd 6106 6108]
def bytes6013 : Bytes := ("    let r000017dd: u32 = r000017da.wrapping_add(r000017dc);\n" : String).toByteArray.data.toList
theorem checked6013 : bytes6013=statementBytes 6109 (op6013.map lower) ∧ bytes6013.length=60 := by core033_kernel_decide
def op6014 : List WordIR.Op := [.bnot 6109]
def bytes6014 : Bytes := ("    let r000017de: u32 = !r000017dd;\n" : String).toByteArray.data.toList
theorem checked6014 : bytes6014=statementBytes 6110 (op6014.map lower) ∧ bytes6014.length=37 := by core033_kernel_decide
def op6015 : List WordIR.Op := [.band 6104 6110]
def bytes6015 : Bytes := ("    let r000017df: u32 = r000017d8 & r000017de;\n" : String).toByteArray.data.toList
theorem checked6015 : bytes6015=statementBytes 6111 (op6015.map lower) ∧ bytes6015.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5952,op5953,op5954,op5955,op5956,op5957,op5958,op5959,op5960,op5961,op5962,op5963,op5964,op5965,op5966,op5967,op5968,op5969,op5970,op5971,op5972,op5973,op5974,op5975,op5976,op5977,op5978,op5979,op5980,op5981,op5982,op5983,op5984,op5985,op5986,op5987,op5988,op5989,op5990,op5991,op5992,op5993,op5994,op5995,op5996,op5997,op5998,op5999,op6000,op6001,op6002,op6003,op6004,op6005,op6006,op6007,op6008,op6009,op6010,op6011,op6012,op6013,op6014,op6015]
def chunks : List Bytes := [bytes5952,bytes5953,bytes5954,bytes5955,bytes5956,bytes5957,bytes5958,bytes5959,bytes5960,bytes5961,bytes5962,bytes5963,bytes5964,bytes5965,bytes5966,bytes5967,bytes5968,bytes5969,bytes5970,bytes5971,bytes5972,bytes5973,bytes5974,bytes5975,bytes5976,bytes5977,bytes5978,bytes5979,bytes5980,bytes5981,bytes5982,bytes5983,bytes5984,bytes5985,bytes5986,bytes5987,bytes5988,bytes5989,bytes5990,bytes5991,bytes5992,bytes5993,bytes5994,bytes5995,bytes5996,bytes5997,bytes5998,bytes5999,bytes6000,bytes6001,bytes6002,bytes6003,bytes6004,bytes6005,bytes6006,bytes6007,bytes6008,bytes6009,bytes6010,bytes6011,bytes6012,bytes6013,bytes6014,bytes6015]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6048 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5952.1 (.cons _ _ _ _ _ checked5953.1 (.cons _ _ _ _ _ checked5954.1 (.cons _ _ _ _ _ checked5955.1 (.cons _ _ _ _ _ checked5956.1 (.cons _ _ _ _ _ checked5957.1 (.cons _ _ _ _ _ checked5958.1 (.cons _ _ _ _ _ checked5959.1 (.cons _ _ _ _ _ checked5960.1 (.cons _ _ _ _ _ checked5961.1 (.cons _ _ _ _ _ checked5962.1 (.cons _ _ _ _ _ checked5963.1 (.cons _ _ _ _ _ checked5964.1 (.cons _ _ _ _ _ checked5965.1 (.cons _ _ _ _ _ checked5966.1 (.cons _ _ _ _ _ checked5967.1 (.cons _ _ _ _ _ checked5968.1 (.cons _ _ _ _ _ checked5969.1 (.cons _ _ _ _ _ checked5970.1 (.cons _ _ _ _ _ checked5971.1 (.cons _ _ _ _ _ checked5972.1 (.cons _ _ _ _ _ checked5973.1 (.cons _ _ _ _ _ checked5974.1 (.cons _ _ _ _ _ checked5975.1 (.cons _ _ _ _ _ checked5976.1 (.cons _ _ _ _ _ checked5977.1 (.cons _ _ _ _ _ checked5978.1 (.cons _ _ _ _ _ checked5979.1 (.cons _ _ _ _ _ checked5980.1 (.cons _ _ _ _ _ checked5981.1 (.cons _ _ _ _ _ checked5982.1 (.cons _ _ _ _ _ checked5983.1 (.cons _ _ _ _ _ checked5984.1 (.cons _ _ _ _ _ checked5985.1 (.cons _ _ _ _ _ checked5986.1 (.cons _ _ _ _ _ checked5987.1 (.cons _ _ _ _ _ checked5988.1 (.cons _ _ _ _ _ checked5989.1 (.cons _ _ _ _ _ checked5990.1 (.cons _ _ _ _ _ checked5991.1 (.cons _ _ _ _ _ checked5992.1 (.cons _ _ _ _ _ checked5993.1 (.cons _ _ _ _ _ checked5994.1 (.cons _ _ _ _ _ checked5995.1 (.cons _ _ _ _ _ checked5996.1 (.cons _ _ _ _ _ checked5997.1 (.cons _ _ _ _ _ checked5998.1 (.cons _ _ _ _ _ checked5999.1 (.cons _ _ _ _ _ checked6000.1 (.cons _ _ _ _ _ checked6001.1 (.cons _ _ _ _ _ checked6002.1 (.cons _ _ _ _ _ checked6003.1 (.cons _ _ _ _ _ checked6004.1 (.cons _ _ _ _ _ checked6005.1 (.cons _ _ _ _ _ checked6006.1 (.cons _ _ _ _ _ checked6007.1 (.cons _ _ _ _ _ checked6008.1 (.cons _ _ _ _ _ checked6009.1 (.cons _ _ _ _ _ checked6010.1 (.cons _ _ _ _ _ checked6011.1 (.cons _ _ _ _ _ checked6012.1 (.cons _ _ _ _ _ checked6013.1 (.cons _ _ _ _ _ checked6014.1 (.cons _ _ _ _ _ checked6015.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6048 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5952.2,checked5953.2,checked5954.2,checked5955.2,checked5956.2,checked5957.2,checked5958.2,checked5959.2,checked5960.2,checked5961.2,checked5962.2,checked5963.2,checked5964.2,checked5965.2,checked5966.2,checked5967.2,checked5968.2,checked5969.2,checked5970.2,checked5971.2,checked5972.2,checked5973.2,checked5974.2,checked5975.2,checked5976.2,checked5977.2,checked5978.2,checked5979.2,checked5980.2,checked5981.2,checked5982.2,checked5983.2,checked5984.2,checked5985.2,checked5986.2,checked5987.2,checked5988.2,checked5989.2,checked5990.2,checked5991.2,checked5992.2,checked5993.2,checked5994.2,checked5995.2,checked5996.2,checked5997.2,checked5998.2,checked5999.2,checked6000.2,checked6001.2,checked6002.2,checked6003.2,checked6004.2,checked6005.2,checked6006.2,checked6007.2,checked6008.2,checked6009.2,checked6010.2,checked6011.2,checked6012.2,checked6013.2,checked6014.2,checked6015.2]
  decide
end ArtifactPairedPathRoundGroup93
