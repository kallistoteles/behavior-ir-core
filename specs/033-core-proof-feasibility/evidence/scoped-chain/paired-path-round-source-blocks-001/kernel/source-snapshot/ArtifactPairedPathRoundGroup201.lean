import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup201
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12864 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12864 : Bytes := ("    let r000032a0: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12864 : bytes12864=statementBytes 12960 (op12864.map lower) ∧ bytes12864.length=41 := by core033_kernel_decide
def op12865 : List WordIR.Op := [.bxor 442 12960]
def bytes12865 : Bytes := ("    let r000032a1: u32 = r000001ba ^ r000032a0;\n" : String).toByteArray.data.toList
theorem checked12865 : bytes12865=statementBytes 12961 (op12865.map lower) ∧ bytes12865.length=48 := by core033_kernel_decide
def op12866 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12866 : Bytes := ("    let r000032a2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12866 : bytes12866=statementBytes 12962 (op12866.map lower) ∧ bytes12866.length=41 := by core033_kernel_decide
def op12867 : List WordIR.Op := [.bnot 12962]
def bytes12867 : Bytes := ("    let r000032a3: u32 = !r000032a2;\n" : String).toByteArray.data.toList
theorem checked12867 : bytes12867=statementBytes 12963 (op12867.map lower) ∧ bytes12867.length=37 := by core033_kernel_decide
def op12868 : List WordIR.Op := [.bxor 12961 12963]
def bytes12868 : Bytes := ("    let r000032a4: u32 = r000032a1 ^ r000032a3;\n" : String).toByteArray.data.toList
theorem checked12868 : bytes12868=statementBytes 12964 (op12868.map lower) ∧ bytes12868.length=48 := by core033_kernel_decide
def op12869 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12869 : Bytes := ("    let r000032a5: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12869 : bytes12869=statementBytes 12965 (op12869.map lower) ∧ bytes12869.length=41 := by core033_kernel_decide
def op12870 : List WordIR.Op := [.bxor 442 12965]
def bytes12870 : Bytes := ("    let r000032a6: u32 = r000001ba ^ r000032a5;\n" : String).toByteArray.data.toList
theorem checked12870 : bytes12870=statementBytes 12966 (op12870.map lower) ∧ bytes12870.length=48 := by core033_kernel_decide
def op12871 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12871 : Bytes := ("    let r000032a7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12871 : bytes12871=statementBytes 12967 (op12871.map lower) ∧ bytes12871.length=41 := by core033_kernel_decide
def op12872 : List WordIR.Op := [.bnot 12967]
def bytes12872 : Bytes := ("    let r000032a8: u32 = !r000032a7;\n" : String).toByteArray.data.toList
theorem checked12872 : bytes12872=statementBytes 12968 (op12872.map lower) ∧ bytes12872.length=37 := by core033_kernel_decide
def op12873 : List WordIR.Op := [.badd 12966 12968]
def bytes12873 : Bytes := ("    let r000032a9: u32 = r000032a6.wrapping_add(r000032a8);\n" : String).toByteArray.data.toList
theorem checked12873 : bytes12873=statementBytes 12969 (op12873.map lower) ∧ bytes12873.length=60 := by core033_kernel_decide
def op12874 : List WordIR.Op := [.bnot 12969]
def bytes12874 : Bytes := ("    let r000032aa: u32 = !r000032a9;\n" : String).toByteArray.data.toList
theorem checked12874 : bytes12874=statementBytes 12970 (op12874.map lower) ∧ bytes12874.length=37 := by core033_kernel_decide
def op12875 : List WordIR.Op := [.band 12964 12970]
def bytes12875 : Bytes := ("    let r000032ab: u32 = r000032a4 & r000032aa;\n" : String).toByteArray.data.toList
theorem checked12875 : bytes12875=statementBytes 12971 (op12875.map lower) ∧ bytes12875.length=48 := by core033_kernel_decide
def op12876 : List WordIR.Op := [.bxor 12959 12971]
def bytes12876 : Bytes := ("    let r000032ac: u32 = r0000329f ^ r000032ab;\n" : String).toByteArray.data.toList
theorem checked12876 : bytes12876=statementBytes 12972 (op12876.map lower) ∧ bytes12876.length=48 := by core033_kernel_decide
def op12877 : List WordIR.Op := [.shr 12972 31]
def bytes12877 : Bytes := ("    let r000032ad: u32 = r000032ac >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12877 : bytes12877=statementBytes 12973 (op12877.map lower) ∧ bytes12877.length=54 := by core033_kernel_decide
def op12878 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12878 : Bytes := ("    let r000032ae: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12878 : bytes12878=statementBytes 12974 (op12878.map lower) ∧ bytes12878.length=41 := by core033_kernel_decide
def op12879 : List WordIR.Op := [.bxor 12973 12974]
def bytes12879 : Bytes := ("    let r000032af: u32 = r000032ad ^ r000032ae;\n" : String).toByteArray.data.toList
theorem checked12879 : bytes12879=statementBytes 12975 (op12879.map lower) ∧ bytes12879.length=48 := by core033_kernel_decide
def op12880 : List WordIR.Op := [.bnot 12975]
def bytes12880 : Bytes := ("    let r000032b0: u32 = !r000032af;\n" : String).toByteArray.data.toList
theorem checked12880 : bytes12880=statementBytes 12976 (op12880.map lower) ∧ bytes12880.length=37 := by core033_kernel_decide
def op12881 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12881 : Bytes := ("    let r000032b1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12881 : bytes12881=statementBytes 12977 (op12881.map lower) ∧ bytes12881.length=41 := by core033_kernel_decide
def op12882 : List WordIR.Op := [.badd 12976 12977]
def bytes12882 : Bytes := ("    let r000032b2: u32 = r000032b0.wrapping_add(r000032b1);\n" : String).toByteArray.data.toList
theorem checked12882 : bytes12882=statementBytes 12978 (op12882.map lower) ∧ bytes12882.length=60 := by core033_kernel_decide
def op12883 : List WordIR.Op := [.bnot 12978]
def bytes12883 : Bytes := ("    let r000032b3: u32 = !r000032b2;\n" : String).toByteArray.data.toList
theorem checked12883 : bytes12883=statementBytes 12979 (op12883.map lower) ∧ bytes12883.length=37 := by core033_kernel_decide
def op12884 : List WordIR.Op := [.band 12979 9808]
def bytes12884 : Bytes := ("    let r000032b4: u32 = r000032b3 & r00002650;\n" : String).toByteArray.data.toList
theorem checked12884 : bytes12884=statementBytes 12980 (op12884.map lower) ∧ bytes12884.length=48 := by core033_kernel_decide
def op12885 : List WordIR.Op := [.bxor 12954 12980]
def bytes12885 : Bytes := ("    let r000032b5: u32 = r0000329a ^ r000032b4;\n" : String).toByteArray.data.toList
theorem checked12885 : bytes12885=statementBytes 12981 (op12885.map lower) ∧ bytes12885.length=48 := by core033_kernel_decide
def op12886 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12886 : Bytes := ("    let r000032b6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12886 : bytes12886=statementBytes 12982 (op12886.map lower) ∧ bytes12886.length=41 := by core033_kernel_decide
def op12887 : List WordIR.Op := [.bxor 442 12982]
def bytes12887 : Bytes := ("    let r000032b7: u32 = r000001ba ^ r000032b6;\n" : String).toByteArray.data.toList
theorem checked12887 : bytes12887=statementBytes 12983 (op12887.map lower) ∧ bytes12887.length=48 := by core033_kernel_decide
def op12888 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12888 : Bytes := ("    let r000032b8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12888 : bytes12888=statementBytes 12984 (op12888.map lower) ∧ bytes12888.length=41 := by core033_kernel_decide
def op12889 : List WordIR.Op := [.bnot 12984]
def bytes12889 : Bytes := ("    let r000032b9: u32 = !r000032b8;\n" : String).toByteArray.data.toList
theorem checked12889 : bytes12889=statementBytes 12985 (op12889.map lower) ∧ bytes12889.length=37 := by core033_kernel_decide
def op12890 : List WordIR.Op := [.band 12983 12985]
def bytes12890 : Bytes := ("    let r000032ba: u32 = r000032b7 & r000032b9;\n" : String).toByteArray.data.toList
theorem checked12890 : bytes12890=statementBytes 12986 (op12890.map lower) ∧ bytes12890.length=48 := by core033_kernel_decide
def op12891 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12891 : Bytes := ("    let r000032bb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12891 : bytes12891=statementBytes 12987 (op12891.map lower) ∧ bytes12891.length=41 := by core033_kernel_decide
def op12892 : List WordIR.Op := [.bxor 442 12987]
def bytes12892 : Bytes := ("    let r000032bc: u32 = r000001ba ^ r000032bb;\n" : String).toByteArray.data.toList
theorem checked12892 : bytes12892=statementBytes 12988 (op12892.map lower) ∧ bytes12892.length=48 := by core033_kernel_decide
def op12893 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12893 : Bytes := ("    let r000032bd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12893 : bytes12893=statementBytes 12989 (op12893.map lower) ∧ bytes12893.length=41 := by core033_kernel_decide
def op12894 : List WordIR.Op := [.bnot 12989]
def bytes12894 : Bytes := ("    let r000032be: u32 = !r000032bd;\n" : String).toByteArray.data.toList
theorem checked12894 : bytes12894=statementBytes 12990 (op12894.map lower) ∧ bytes12894.length=37 := by core033_kernel_decide
def op12895 : List WordIR.Op := [.bxor 12988 12990]
def bytes12895 : Bytes := ("    let r000032bf: u32 = r000032bc ^ r000032be;\n" : String).toByteArray.data.toList
theorem checked12895 : bytes12895=statementBytes 12991 (op12895.map lower) ∧ bytes12895.length=48 := by core033_kernel_decide
def op12896 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12896 : Bytes := ("    let r000032c0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12896 : bytes12896=statementBytes 12992 (op12896.map lower) ∧ bytes12896.length=41 := by core033_kernel_decide
def op12897 : List WordIR.Op := [.bxor 442 12992]
def bytes12897 : Bytes := ("    let r000032c1: u32 = r000001ba ^ r000032c0;\n" : String).toByteArray.data.toList
theorem checked12897 : bytes12897=statementBytes 12993 (op12897.map lower) ∧ bytes12897.length=48 := by core033_kernel_decide
def op12898 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12898 : Bytes := ("    let r000032c2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12898 : bytes12898=statementBytes 12994 (op12898.map lower) ∧ bytes12898.length=41 := by core033_kernel_decide
def op12899 : List WordIR.Op := [.bnot 12994]
def bytes12899 : Bytes := ("    let r000032c3: u32 = !r000032c2;\n" : String).toByteArray.data.toList
theorem checked12899 : bytes12899=statementBytes 12995 (op12899.map lower) ∧ bytes12899.length=37 := by core033_kernel_decide
def op12900 : List WordIR.Op := [.badd 12993 12995]
def bytes12900 : Bytes := ("    let r000032c4: u32 = r000032c1.wrapping_add(r000032c3);\n" : String).toByteArray.data.toList
theorem checked12900 : bytes12900=statementBytes 12996 (op12900.map lower) ∧ bytes12900.length=60 := by core033_kernel_decide
def op12901 : List WordIR.Op := [.bnot 12996]
def bytes12901 : Bytes := ("    let r000032c5: u32 = !r000032c4;\n" : String).toByteArray.data.toList
theorem checked12901 : bytes12901=statementBytes 12997 (op12901.map lower) ∧ bytes12901.length=37 := by core033_kernel_decide
def op12902 : List WordIR.Op := [.band 12991 12997]
def bytes12902 : Bytes := ("    let r000032c6: u32 = r000032bf & r000032c5;\n" : String).toByteArray.data.toList
theorem checked12902 : bytes12902=statementBytes 12998 (op12902.map lower) ∧ bytes12902.length=48 := by core033_kernel_decide
def op12903 : List WordIR.Op := [.bxor 12986 12998]
def bytes12903 : Bytes := ("    let r000032c7: u32 = r000032ba ^ r000032c6;\n" : String).toByteArray.data.toList
theorem checked12903 : bytes12903=statementBytes 12999 (op12903.map lower) ∧ bytes12903.length=48 := by core033_kernel_decide
def op12904 : List WordIR.Op := [.shr 12999 31]
def bytes12904 : Bytes := ("    let r000032c8: u32 = r000032c7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12904 : bytes12904=statementBytes 13000 (op12904.map lower) ∧ bytes12904.length=54 := by core033_kernel_decide
def op12905 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12905 : Bytes := ("    let r000032c9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12905 : bytes12905=statementBytes 13001 (op12905.map lower) ∧ bytes12905.length=41 := by core033_kernel_decide
def op12906 : List WordIR.Op := [.bxor 13000 13001]
def bytes12906 : Bytes := ("    let r000032ca: u32 = r000032c8 ^ r000032c9;\n" : String).toByteArray.data.toList
theorem checked12906 : bytes12906=statementBytes 13002 (op12906.map lower) ∧ bytes12906.length=48 := by core033_kernel_decide
def op12907 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes12907 : Bytes := ("    let r000032cb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked12907 : bytes12907=statementBytes 13003 (op12907.map lower) ∧ bytes12907.length=41 := by core033_kernel_decide
def op12908 : List WordIR.Op := [.bxor 442 13003]
def bytes12908 : Bytes := ("    let r000032cc: u32 = r000001ba ^ r000032cb;\n" : String).toByteArray.data.toList
theorem checked12908 : bytes12908=statementBytes 13004 (op12908.map lower) ∧ bytes12908.length=48 := by core033_kernel_decide
def op12909 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12909 : Bytes := ("    let r000032cd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12909 : bytes12909=statementBytes 13005 (op12909.map lower) ∧ bytes12909.length=41 := by core033_kernel_decide
def op12910 : List WordIR.Op := [.bnot 13005]
def bytes12910 : Bytes := ("    let r000032ce: u32 = !r000032cd;\n" : String).toByteArray.data.toList
theorem checked12910 : bytes12910=statementBytes 13006 (op12910.map lower) ∧ bytes12910.length=37 := by core033_kernel_decide
def op12911 : List WordIR.Op := [.band 13004 13006]
def bytes12911 : Bytes := ("    let r000032cf: u32 = r000032cc & r000032ce;\n" : String).toByteArray.data.toList
theorem checked12911 : bytes12911=statementBytes 13007 (op12911.map lower) ∧ bytes12911.length=48 := by core033_kernel_decide
def op12912 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes12912 : Bytes := ("    let r000032d0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked12912 : bytes12912=statementBytes 13008 (op12912.map lower) ∧ bytes12912.length=41 := by core033_kernel_decide
def op12913 : List WordIR.Op := [.bxor 442 13008]
def bytes12913 : Bytes := ("    let r000032d1: u32 = r000001ba ^ r000032d0;\n" : String).toByteArray.data.toList
theorem checked12913 : bytes12913=statementBytes 13009 (op12913.map lower) ∧ bytes12913.length=48 := by core033_kernel_decide
def op12914 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12914 : Bytes := ("    let r000032d2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12914 : bytes12914=statementBytes 13010 (op12914.map lower) ∧ bytes12914.length=41 := by core033_kernel_decide
def op12915 : List WordIR.Op := [.bnot 13010]
def bytes12915 : Bytes := ("    let r000032d3: u32 = !r000032d2;\n" : String).toByteArray.data.toList
theorem checked12915 : bytes12915=statementBytes 13011 (op12915.map lower) ∧ bytes12915.length=37 := by core033_kernel_decide
def op12916 : List WordIR.Op := [.bxor 13009 13011]
def bytes12916 : Bytes := ("    let r000032d4: u32 = r000032d1 ^ r000032d3;\n" : String).toByteArray.data.toList
theorem checked12916 : bytes12916=statementBytes 13012 (op12916.map lower) ∧ bytes12916.length=48 := by core033_kernel_decide
def op12917 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes12917 : Bytes := ("    let r000032d5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked12917 : bytes12917=statementBytes 13013 (op12917.map lower) ∧ bytes12917.length=41 := by core033_kernel_decide
def op12918 : List WordIR.Op := [.bxor 442 13013]
def bytes12918 : Bytes := ("    let r000032d6: u32 = r000001ba ^ r000032d5;\n" : String).toByteArray.data.toList
theorem checked12918 : bytes12918=statementBytes 13014 (op12918.map lower) ∧ bytes12918.length=48 := by core033_kernel_decide
def op12919 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12919 : Bytes := ("    let r000032d7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12919 : bytes12919=statementBytes 13015 (op12919.map lower) ∧ bytes12919.length=41 := by core033_kernel_decide
def op12920 : List WordIR.Op := [.bnot 13015]
def bytes12920 : Bytes := ("    let r000032d8: u32 = !r000032d7;\n" : String).toByteArray.data.toList
theorem checked12920 : bytes12920=statementBytes 13016 (op12920.map lower) ∧ bytes12920.length=37 := by core033_kernel_decide
def op12921 : List WordIR.Op := [.badd 13014 13016]
def bytes12921 : Bytes := ("    let r000032d9: u32 = r000032d6.wrapping_add(r000032d8);\n" : String).toByteArray.data.toList
theorem checked12921 : bytes12921=statementBytes 13017 (op12921.map lower) ∧ bytes12921.length=60 := by core033_kernel_decide
def op12922 : List WordIR.Op := [.bnot 13017]
def bytes12922 : Bytes := ("    let r000032da: u32 = !r000032d9;\n" : String).toByteArray.data.toList
theorem checked12922 : bytes12922=statementBytes 13018 (op12922.map lower) ∧ bytes12922.length=37 := by core033_kernel_decide
def op12923 : List WordIR.Op := [.band 13012 13018]
def bytes12923 : Bytes := ("    let r000032db: u32 = r000032d4 & r000032da;\n" : String).toByteArray.data.toList
theorem checked12923 : bytes12923=statementBytes 13019 (op12923.map lower) ∧ bytes12923.length=48 := by core033_kernel_decide
def op12924 : List WordIR.Op := [.bxor 13007 13019]
def bytes12924 : Bytes := ("    let r000032dc: u32 = r000032cf ^ r000032db;\n" : String).toByteArray.data.toList
theorem checked12924 : bytes12924=statementBytes 13020 (op12924.map lower) ∧ bytes12924.length=48 := by core033_kernel_decide
def op12925 : List WordIR.Op := [.shr 13020 31]
def bytes12925 : Bytes := ("    let r000032dd: u32 = r000032dc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12925 : bytes12925=statementBytes 13021 (op12925.map lower) ∧ bytes12925.length=54 := by core033_kernel_decide
def op12926 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12926 : Bytes := ("    let r000032de: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12926 : bytes12926=statementBytes 13022 (op12926.map lower) ∧ bytes12926.length=41 := by core033_kernel_decide
def op12927 : List WordIR.Op := [.bxor 13021 13022]
def bytes12927 : Bytes := ("    let r000032df: u32 = r000032dd ^ r000032de;\n" : String).toByteArray.data.toList
theorem checked12927 : bytes12927=statementBytes 13023 (op12927.map lower) ∧ bytes12927.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12864,op12865,op12866,op12867,op12868,op12869,op12870,op12871,op12872,op12873,op12874,op12875,op12876,op12877,op12878,op12879,op12880,op12881,op12882,op12883,op12884,op12885,op12886,op12887,op12888,op12889,op12890,op12891,op12892,op12893,op12894,op12895,op12896,op12897,op12898,op12899,op12900,op12901,op12902,op12903,op12904,op12905,op12906,op12907,op12908,op12909,op12910,op12911,op12912,op12913,op12914,op12915,op12916,op12917,op12918,op12919,op12920,op12921,op12922,op12923,op12924,op12925,op12926,op12927]
def chunks : List Bytes := [bytes12864,bytes12865,bytes12866,bytes12867,bytes12868,bytes12869,bytes12870,bytes12871,bytes12872,bytes12873,bytes12874,bytes12875,bytes12876,bytes12877,bytes12878,bytes12879,bytes12880,bytes12881,bytes12882,bytes12883,bytes12884,bytes12885,bytes12886,bytes12887,bytes12888,bytes12889,bytes12890,bytes12891,bytes12892,bytes12893,bytes12894,bytes12895,bytes12896,bytes12897,bytes12898,bytes12899,bytes12900,bytes12901,bytes12902,bytes12903,bytes12904,bytes12905,bytes12906,bytes12907,bytes12908,bytes12909,bytes12910,bytes12911,bytes12912,bytes12913,bytes12914,bytes12915,bytes12916,bytes12917,bytes12918,bytes12919,bytes12920,bytes12921,bytes12922,bytes12923,bytes12924,bytes12925,bytes12926,bytes12927]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12960 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12864.1 (.cons _ _ _ _ _ checked12865.1 (.cons _ _ _ _ _ checked12866.1 (.cons _ _ _ _ _ checked12867.1 (.cons _ _ _ _ _ checked12868.1 (.cons _ _ _ _ _ checked12869.1 (.cons _ _ _ _ _ checked12870.1 (.cons _ _ _ _ _ checked12871.1 (.cons _ _ _ _ _ checked12872.1 (.cons _ _ _ _ _ checked12873.1 (.cons _ _ _ _ _ checked12874.1 (.cons _ _ _ _ _ checked12875.1 (.cons _ _ _ _ _ checked12876.1 (.cons _ _ _ _ _ checked12877.1 (.cons _ _ _ _ _ checked12878.1 (.cons _ _ _ _ _ checked12879.1 (.cons _ _ _ _ _ checked12880.1 (.cons _ _ _ _ _ checked12881.1 (.cons _ _ _ _ _ checked12882.1 (.cons _ _ _ _ _ checked12883.1 (.cons _ _ _ _ _ checked12884.1 (.cons _ _ _ _ _ checked12885.1 (.cons _ _ _ _ _ checked12886.1 (.cons _ _ _ _ _ checked12887.1 (.cons _ _ _ _ _ checked12888.1 (.cons _ _ _ _ _ checked12889.1 (.cons _ _ _ _ _ checked12890.1 (.cons _ _ _ _ _ checked12891.1 (.cons _ _ _ _ _ checked12892.1 (.cons _ _ _ _ _ checked12893.1 (.cons _ _ _ _ _ checked12894.1 (.cons _ _ _ _ _ checked12895.1 (.cons _ _ _ _ _ checked12896.1 (.cons _ _ _ _ _ checked12897.1 (.cons _ _ _ _ _ checked12898.1 (.cons _ _ _ _ _ checked12899.1 (.cons _ _ _ _ _ checked12900.1 (.cons _ _ _ _ _ checked12901.1 (.cons _ _ _ _ _ checked12902.1 (.cons _ _ _ _ _ checked12903.1 (.cons _ _ _ _ _ checked12904.1 (.cons _ _ _ _ _ checked12905.1 (.cons _ _ _ _ _ checked12906.1 (.cons _ _ _ _ _ checked12907.1 (.cons _ _ _ _ _ checked12908.1 (.cons _ _ _ _ _ checked12909.1 (.cons _ _ _ _ _ checked12910.1 (.cons _ _ _ _ _ checked12911.1 (.cons _ _ _ _ _ checked12912.1 (.cons _ _ _ _ _ checked12913.1 (.cons _ _ _ _ _ checked12914.1 (.cons _ _ _ _ _ checked12915.1 (.cons _ _ _ _ _ checked12916.1 (.cons _ _ _ _ _ checked12917.1 (.cons _ _ _ _ _ checked12918.1 (.cons _ _ _ _ _ checked12919.1 (.cons _ _ _ _ _ checked12920.1 (.cons _ _ _ _ _ checked12921.1 (.cons _ _ _ _ _ checked12922.1 (.cons _ _ _ _ _ checked12923.1 (.cons _ _ _ _ _ checked12924.1 (.cons _ _ _ _ _ checked12925.1 (.cons _ _ _ _ _ checked12926.1 (.cons _ _ _ _ _ checked12927.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12960 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2855 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12864.2,checked12865.2,checked12866.2,checked12867.2,checked12868.2,checked12869.2,checked12870.2,checked12871.2,checked12872.2,checked12873.2,checked12874.2,checked12875.2,checked12876.2,checked12877.2,checked12878.2,checked12879.2,checked12880.2,checked12881.2,checked12882.2,checked12883.2,checked12884.2,checked12885.2,checked12886.2,checked12887.2,checked12888.2,checked12889.2,checked12890.2,checked12891.2,checked12892.2,checked12893.2,checked12894.2,checked12895.2,checked12896.2,checked12897.2,checked12898.2,checked12899.2,checked12900.2,checked12901.2,checked12902.2,checked12903.2,checked12904.2,checked12905.2,checked12906.2,checked12907.2,checked12908.2,checked12909.2,checked12910.2,checked12911.2,checked12912.2,checked12913.2,checked12914.2,checked12915.2,checked12916.2,checked12917.2,checked12918.2,checked12919.2,checked12920.2,checked12921.2,checked12922.2,checked12923.2,checked12924.2,checked12925.2,checked12926.2,checked12927.2]
  decide
end ArtifactPairedPathRoundGroup201
