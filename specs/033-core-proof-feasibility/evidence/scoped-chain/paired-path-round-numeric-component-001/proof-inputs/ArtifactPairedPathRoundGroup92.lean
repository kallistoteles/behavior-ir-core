import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup92
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5888 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5888 : Bytes := ("    let r00001760: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5888 : bytes5888=statementBytes 5984 (op5888.map lower) ∧ bytes5888.length=41 := by core033_kernel_decide
def op5889 : List WordIR.Op := [.badd 5983 5984]
def bytes5889 : Bytes := ("    let r00001761: u32 = r0000175f.wrapping_add(r00001760);\n" : String).toByteArray.data.toList
theorem checked5889 : bytes5889=statementBytes 5985 (op5889.map lower) ∧ bytes5889.length=60 := by core033_kernel_decide
def op5890 : List WordIR.Op := [.bnot 5985]
def bytes5890 : Bytes := ("    let r00001762: u32 = !r00001761;\n" : String).toByteArray.data.toList
theorem checked5890 : bytes5890=statementBytes 5986 (op5890.map lower) ∧ bytes5890.length=37 := by core033_kernel_decide
def op5891 : List WordIR.Op := [.band 5986 1998]
def bytes5891 : Bytes := ("    let r00001763: u32 = r00001762 & r000007ce;\n" : String).toByteArray.data.toList
theorem checked5891 : bytes5891=statementBytes 5987 (op5891.map lower) ∧ bytes5891.length=48 := by core033_kernel_decide
def op5892 : List WordIR.Op := [.bxor 5961 5987]
def bytes5892 : Bytes := ("    let r00001764: u32 = r00001749 ^ r00001763;\n" : String).toByteArray.data.toList
theorem checked5892 : bytes5892=statementBytes 5988 (op5892.map lower) ∧ bytes5892.length=48 := by core033_kernel_decide
def op5893 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5893 : Bytes := ("    let r00001765: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5893 : bytes5893=statementBytes 5989 (op5893.map lower) ∧ bytes5893.length=41 := by core033_kernel_decide
def op5894 : List WordIR.Op := [.bxor 616 5989]
def bytes5894 : Bytes := ("    let r00001766: u32 = r00000268 ^ r00001765;\n" : String).toByteArray.data.toList
theorem checked5894 : bytes5894=statementBytes 5990 (op5894.map lower) ∧ bytes5894.length=48 := by core033_kernel_decide
def op5895 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5895 : Bytes := ("    let r00001767: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5895 : bytes5895=statementBytes 5991 (op5895.map lower) ∧ bytes5895.length=41 := by core033_kernel_decide
def op5896 : List WordIR.Op := [.bnot 5991]
def bytes5896 : Bytes := ("    let r00001768: u32 = !r00001767;\n" : String).toByteArray.data.toList
theorem checked5896 : bytes5896=statementBytes 5992 (op5896.map lower) ∧ bytes5896.length=37 := by core033_kernel_decide
def op5897 : List WordIR.Op := [.band 5990 5992]
def bytes5897 : Bytes := ("    let r00001769: u32 = r00001766 & r00001768;\n" : String).toByteArray.data.toList
theorem checked5897 : bytes5897=statementBytes 5993 (op5897.map lower) ∧ bytes5897.length=48 := by core033_kernel_decide
def op5898 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5898 : Bytes := ("    let r0000176a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5898 : bytes5898=statementBytes 5994 (op5898.map lower) ∧ bytes5898.length=41 := by core033_kernel_decide
def op5899 : List WordIR.Op := [.bxor 616 5994]
def bytes5899 : Bytes := ("    let r0000176b: u32 = r00000268 ^ r0000176a;\n" : String).toByteArray.data.toList
theorem checked5899 : bytes5899=statementBytes 5995 (op5899.map lower) ∧ bytes5899.length=48 := by core033_kernel_decide
def op5900 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5900 : Bytes := ("    let r0000176c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5900 : bytes5900=statementBytes 5996 (op5900.map lower) ∧ bytes5900.length=41 := by core033_kernel_decide
def op5901 : List WordIR.Op := [.bnot 5996]
def bytes5901 : Bytes := ("    let r0000176d: u32 = !r0000176c;\n" : String).toByteArray.data.toList
theorem checked5901 : bytes5901=statementBytes 5997 (op5901.map lower) ∧ bytes5901.length=37 := by core033_kernel_decide
def op5902 : List WordIR.Op := [.bxor 5995 5997]
def bytes5902 : Bytes := ("    let r0000176e: u32 = r0000176b ^ r0000176d;\n" : String).toByteArray.data.toList
theorem checked5902 : bytes5902=statementBytes 5998 (op5902.map lower) ∧ bytes5902.length=48 := by core033_kernel_decide
def op5903 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5903 : Bytes := ("    let r0000176f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5903 : bytes5903=statementBytes 5999 (op5903.map lower) ∧ bytes5903.length=41 := by core033_kernel_decide
def op5904 : List WordIR.Op := [.bxor 616 5999]
def bytes5904 : Bytes := ("    let r00001770: u32 = r00000268 ^ r0000176f;\n" : String).toByteArray.data.toList
theorem checked5904 : bytes5904=statementBytes 6000 (op5904.map lower) ∧ bytes5904.length=48 := by core033_kernel_decide
def op5905 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5905 : Bytes := ("    let r00001771: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5905 : bytes5905=statementBytes 6001 (op5905.map lower) ∧ bytes5905.length=41 := by core033_kernel_decide
def op5906 : List WordIR.Op := [.bnot 6001]
def bytes5906 : Bytes := ("    let r00001772: u32 = !r00001771;\n" : String).toByteArray.data.toList
theorem checked5906 : bytes5906=statementBytes 6002 (op5906.map lower) ∧ bytes5906.length=37 := by core033_kernel_decide
def op5907 : List WordIR.Op := [.badd 6000 6002]
def bytes5907 : Bytes := ("    let r00001773: u32 = r00001770.wrapping_add(r00001772);\n" : String).toByteArray.data.toList
theorem checked5907 : bytes5907=statementBytes 6003 (op5907.map lower) ∧ bytes5907.length=60 := by core033_kernel_decide
def op5908 : List WordIR.Op := [.bnot 6003]
def bytes5908 : Bytes := ("    let r00001774: u32 = !r00001773;\n" : String).toByteArray.data.toList
theorem checked5908 : bytes5908=statementBytes 6004 (op5908.map lower) ∧ bytes5908.length=37 := by core033_kernel_decide
def op5909 : List WordIR.Op := [.band 5998 6004]
def bytes5909 : Bytes := ("    let r00001775: u32 = r0000176e & r00001774;\n" : String).toByteArray.data.toList
theorem checked5909 : bytes5909=statementBytes 6005 (op5909.map lower) ∧ bytes5909.length=48 := by core033_kernel_decide
def op5910 : List WordIR.Op := [.bxor 5993 6005]
def bytes5910 : Bytes := ("    let r00001776: u32 = r00001769 ^ r00001775;\n" : String).toByteArray.data.toList
theorem checked5910 : bytes5910=statementBytes 6006 (op5910.map lower) ∧ bytes5910.length=48 := by core033_kernel_decide
def op5911 : List WordIR.Op := [.shr 6006 31]
def bytes5911 : Bytes := ("    let r00001777: u32 = r00001776 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5911 : bytes5911=statementBytes 6007 (op5911.map lower) ∧ bytes5911.length=54 := by core033_kernel_decide
def op5912 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5912 : Bytes := ("    let r00001778: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5912 : bytes5912=statementBytes 6008 (op5912.map lower) ∧ bytes5912.length=41 := by core033_kernel_decide
def op5913 : List WordIR.Op := [.bxor 6007 6008]
def bytes5913 : Bytes := ("    let r00001779: u32 = r00001777 ^ r00001778;\n" : String).toByteArray.data.toList
theorem checked5913 : bytes5913=statementBytes 6009 (op5913.map lower) ∧ bytes5913.length=48 := by core033_kernel_decide
def op5914 : List WordIR.Op := [.bnot 6009]
def bytes5914 : Bytes := ("    let r0000177a: u32 = !r00001779;\n" : String).toByteArray.data.toList
theorem checked5914 : bytes5914=statementBytes 6010 (op5914.map lower) ∧ bytes5914.length=37 := by core033_kernel_decide
def op5915 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5915 : Bytes := ("    let r0000177b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5915 : bytes5915=statementBytes 6011 (op5915.map lower) ∧ bytes5915.length=41 := by core033_kernel_decide
def op5916 : List WordIR.Op := [.badd 6010 6011]
def bytes5916 : Bytes := ("    let r0000177c: u32 = r0000177a.wrapping_add(r0000177b);\n" : String).toByteArray.data.toList
theorem checked5916 : bytes5916=statementBytes 6012 (op5916.map lower) ∧ bytes5916.length=60 := by core033_kernel_decide
def op5917 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5917 : Bytes := ("    let r0000177d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5917 : bytes5917=statementBytes 6013 (op5917.map lower) ∧ bytes5917.length=41 := by core033_kernel_decide
def op5918 : List WordIR.Op := [.band 6012 6013]
def bytes5918 : Bytes := ("    let r0000177e: u32 = r0000177c & r0000177d;\n" : String).toByteArray.data.toList
theorem checked5918 : bytes5918=statementBytes 6014 (op5918.map lower) ∧ bytes5918.length=48 := by core033_kernel_decide
def op5919 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5919 : Bytes := ("    let r0000177f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5919 : bytes5919=statementBytes 6015 (op5919.map lower) ∧ bytes5919.length=41 := by core033_kernel_decide
def op5920 : List WordIR.Op := [.bxor 616 6015]
def bytes5920 : Bytes := ("    let r00001780: u32 = r00000268 ^ r0000177f;\n" : String).toByteArray.data.toList
theorem checked5920 : bytes5920=statementBytes 6016 (op5920.map lower) ∧ bytes5920.length=48 := by core033_kernel_decide
def op5921 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5921 : Bytes := ("    let r00001781: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5921 : bytes5921=statementBytes 6017 (op5921.map lower) ∧ bytes5921.length=41 := by core033_kernel_decide
def op5922 : List WordIR.Op := [.bnot 6017]
def bytes5922 : Bytes := ("    let r00001782: u32 = !r00001781;\n" : String).toByteArray.data.toList
theorem checked5922 : bytes5922=statementBytes 6018 (op5922.map lower) ∧ bytes5922.length=37 := by core033_kernel_decide
def op5923 : List WordIR.Op := [.band 6016 6018]
def bytes5923 : Bytes := ("    let r00001783: u32 = r00001780 & r00001782;\n" : String).toByteArray.data.toList
theorem checked5923 : bytes5923=statementBytes 6019 (op5923.map lower) ∧ bytes5923.length=48 := by core033_kernel_decide
def op5924 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5924 : Bytes := ("    let r00001784: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5924 : bytes5924=statementBytes 6020 (op5924.map lower) ∧ bytes5924.length=41 := by core033_kernel_decide
def op5925 : List WordIR.Op := [.bxor 616 6020]
def bytes5925 : Bytes := ("    let r00001785: u32 = r00000268 ^ r00001784;\n" : String).toByteArray.data.toList
theorem checked5925 : bytes5925=statementBytes 6021 (op5925.map lower) ∧ bytes5925.length=48 := by core033_kernel_decide
def op5926 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5926 : Bytes := ("    let r00001786: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5926 : bytes5926=statementBytes 6022 (op5926.map lower) ∧ bytes5926.length=41 := by core033_kernel_decide
def op5927 : List WordIR.Op := [.bnot 6022]
def bytes5927 : Bytes := ("    let r00001787: u32 = !r00001786;\n" : String).toByteArray.data.toList
theorem checked5927 : bytes5927=statementBytes 6023 (op5927.map lower) ∧ bytes5927.length=37 := by core033_kernel_decide
def op5928 : List WordIR.Op := [.bxor 6021 6023]
def bytes5928 : Bytes := ("    let r00001788: u32 = r00001785 ^ r00001787;\n" : String).toByteArray.data.toList
theorem checked5928 : bytes5928=statementBytes 6024 (op5928.map lower) ∧ bytes5928.length=48 := by core033_kernel_decide
def op5929 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5929 : Bytes := ("    let r00001789: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5929 : bytes5929=statementBytes 6025 (op5929.map lower) ∧ bytes5929.length=41 := by core033_kernel_decide
def op5930 : List WordIR.Op := [.bxor 616 6025]
def bytes5930 : Bytes := ("    let r0000178a: u32 = r00000268 ^ r00001789;\n" : String).toByteArray.data.toList
theorem checked5930 : bytes5930=statementBytes 6026 (op5930.map lower) ∧ bytes5930.length=48 := by core033_kernel_decide
def op5931 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5931 : Bytes := ("    let r0000178b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5931 : bytes5931=statementBytes 6027 (op5931.map lower) ∧ bytes5931.length=41 := by core033_kernel_decide
def op5932 : List WordIR.Op := [.bnot 6027]
def bytes5932 : Bytes := ("    let r0000178c: u32 = !r0000178b;\n" : String).toByteArray.data.toList
theorem checked5932 : bytes5932=statementBytes 6028 (op5932.map lower) ∧ bytes5932.length=37 := by core033_kernel_decide
def op5933 : List WordIR.Op := [.badd 6026 6028]
def bytes5933 : Bytes := ("    let r0000178d: u32 = r0000178a.wrapping_add(r0000178c);\n" : String).toByteArray.data.toList
theorem checked5933 : bytes5933=statementBytes 6029 (op5933.map lower) ∧ bytes5933.length=60 := by core033_kernel_decide
def op5934 : List WordIR.Op := [.bnot 6029]
def bytes5934 : Bytes := ("    let r0000178e: u32 = !r0000178d;\n" : String).toByteArray.data.toList
theorem checked5934 : bytes5934=statementBytes 6030 (op5934.map lower) ∧ bytes5934.length=37 := by core033_kernel_decide
def op5935 : List WordIR.Op := [.band 6024 6030]
def bytes5935 : Bytes := ("    let r0000178f: u32 = r00001788 & r0000178e;\n" : String).toByteArray.data.toList
theorem checked5935 : bytes5935=statementBytes 6031 (op5935.map lower) ∧ bytes5935.length=48 := by core033_kernel_decide
def op5936 : List WordIR.Op := [.bxor 6019 6031]
def bytes5936 : Bytes := ("    let r00001790: u32 = r00001783 ^ r0000178f;\n" : String).toByteArray.data.toList
theorem checked5936 : bytes5936=statementBytes 6032 (op5936.map lower) ∧ bytes5936.length=48 := by core033_kernel_decide
def op5937 : List WordIR.Op := [.shr 6032 31]
def bytes5937 : Bytes := ("    let r00001791: u32 = r00001790 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5937 : bytes5937=statementBytes 6033 (op5937.map lower) ∧ bytes5937.length=54 := by core033_kernel_decide
def op5938 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5938 : Bytes := ("    let r00001792: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5938 : bytes5938=statementBytes 6034 (op5938.map lower) ∧ bytes5938.length=41 := by core033_kernel_decide
def op5939 : List WordIR.Op := [.bxor 6033 6034]
def bytes5939 : Bytes := ("    let r00001793: u32 = r00001791 ^ r00001792;\n" : String).toByteArray.data.toList
theorem checked5939 : bytes5939=statementBytes 6035 (op5939.map lower) ∧ bytes5939.length=48 := by core033_kernel_decide
def op5940 : List WordIR.Op := [.bnot 6035]
def bytes5940 : Bytes := ("    let r00001794: u32 = !r00001793;\n" : String).toByteArray.data.toList
theorem checked5940 : bytes5940=statementBytes 6036 (op5940.map lower) ∧ bytes5940.length=37 := by core033_kernel_decide
def op5941 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5941 : Bytes := ("    let r00001795: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5941 : bytes5941=statementBytes 6037 (op5941.map lower) ∧ bytes5941.length=41 := by core033_kernel_decide
def op5942 : List WordIR.Op := [.badd 6036 6037]
def bytes5942 : Bytes := ("    let r00001796: u32 = r00001794.wrapping_add(r00001795);\n" : String).toByteArray.data.toList
theorem checked5942 : bytes5942=statementBytes 6038 (op5942.map lower) ∧ bytes5942.length=60 := by core033_kernel_decide
def op5943 : List WordIR.Op := [.bnot 6038]
def bytes5943 : Bytes := ("    let r00001797: u32 = !r00001796;\n" : String).toByteArray.data.toList
theorem checked5943 : bytes5943=statementBytes 6039 (op5943.map lower) ∧ bytes5943.length=37 := by core033_kernel_decide
def op5944 : List WordIR.Op := [.band 6039 2001]
def bytes5944 : Bytes := ("    let r00001798: u32 = r00001797 & r000007d1;\n" : String).toByteArray.data.toList
theorem checked5944 : bytes5944=statementBytes 6040 (op5944.map lower) ∧ bytes5944.length=48 := by core033_kernel_decide
def op5945 : List WordIR.Op := [.bxor 6014 6040]
def bytes5945 : Bytes := ("    let r00001799: u32 = r0000177e ^ r00001798;\n" : String).toByteArray.data.toList
theorem checked5945 : bytes5945=statementBytes 6041 (op5945.map lower) ∧ bytes5945.length=48 := by core033_kernel_decide
def op5946 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5946 : Bytes := ("    let r0000179a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5946 : bytes5946=statementBytes 6042 (op5946.map lower) ∧ bytes5946.length=41 := by core033_kernel_decide
def op5947 : List WordIR.Op := [.bxor 616 6042]
def bytes5947 : Bytes := ("    let r0000179b: u32 = r00000268 ^ r0000179a;\n" : String).toByteArray.data.toList
theorem checked5947 : bytes5947=statementBytes 6043 (op5947.map lower) ∧ bytes5947.length=48 := by core033_kernel_decide
def op5948 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5948 : Bytes := ("    let r0000179c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5948 : bytes5948=statementBytes 6044 (op5948.map lower) ∧ bytes5948.length=41 := by core033_kernel_decide
def op5949 : List WordIR.Op := [.bnot 6044]
def bytes5949 : Bytes := ("    let r0000179d: u32 = !r0000179c;\n" : String).toByteArray.data.toList
theorem checked5949 : bytes5949=statementBytes 6045 (op5949.map lower) ∧ bytes5949.length=37 := by core033_kernel_decide
def op5950 : List WordIR.Op := [.band 6043 6045]
def bytes5950 : Bytes := ("    let r0000179e: u32 = r0000179b & r0000179d;\n" : String).toByteArray.data.toList
theorem checked5950 : bytes5950=statementBytes 6046 (op5950.map lower) ∧ bytes5950.length=48 := by core033_kernel_decide
def op5951 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5951 : Bytes := ("    let r0000179f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5951 : bytes5951=statementBytes 6047 (op5951.map lower) ∧ bytes5951.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5888,op5889,op5890,op5891,op5892,op5893,op5894,op5895,op5896,op5897,op5898,op5899,op5900,op5901,op5902,op5903,op5904,op5905,op5906,op5907,op5908,op5909,op5910,op5911,op5912,op5913,op5914,op5915,op5916,op5917,op5918,op5919,op5920,op5921,op5922,op5923,op5924,op5925,op5926,op5927,op5928,op5929,op5930,op5931,op5932,op5933,op5934,op5935,op5936,op5937,op5938,op5939,op5940,op5941,op5942,op5943,op5944,op5945,op5946,op5947,op5948,op5949,op5950,op5951]
def chunks : List Bytes := [bytes5888,bytes5889,bytes5890,bytes5891,bytes5892,bytes5893,bytes5894,bytes5895,bytes5896,bytes5897,bytes5898,bytes5899,bytes5900,bytes5901,bytes5902,bytes5903,bytes5904,bytes5905,bytes5906,bytes5907,bytes5908,bytes5909,bytes5910,bytes5911,bytes5912,bytes5913,bytes5914,bytes5915,bytes5916,bytes5917,bytes5918,bytes5919,bytes5920,bytes5921,bytes5922,bytes5923,bytes5924,bytes5925,bytes5926,bytes5927,bytes5928,bytes5929,bytes5930,bytes5931,bytes5932,bytes5933,bytes5934,bytes5935,bytes5936,bytes5937,bytes5938,bytes5939,bytes5940,bytes5941,bytes5942,bytes5943,bytes5944,bytes5945,bytes5946,bytes5947,bytes5948,bytes5949,bytes5950,bytes5951]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5984 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5888.1 (.cons _ _ _ _ _ checked5889.1 (.cons _ _ _ _ _ checked5890.1 (.cons _ _ _ _ _ checked5891.1 (.cons _ _ _ _ _ checked5892.1 (.cons _ _ _ _ _ checked5893.1 (.cons _ _ _ _ _ checked5894.1 (.cons _ _ _ _ _ checked5895.1 (.cons _ _ _ _ _ checked5896.1 (.cons _ _ _ _ _ checked5897.1 (.cons _ _ _ _ _ checked5898.1 (.cons _ _ _ _ _ checked5899.1 (.cons _ _ _ _ _ checked5900.1 (.cons _ _ _ _ _ checked5901.1 (.cons _ _ _ _ _ checked5902.1 (.cons _ _ _ _ _ checked5903.1 (.cons _ _ _ _ _ checked5904.1 (.cons _ _ _ _ _ checked5905.1 (.cons _ _ _ _ _ checked5906.1 (.cons _ _ _ _ _ checked5907.1 (.cons _ _ _ _ _ checked5908.1 (.cons _ _ _ _ _ checked5909.1 (.cons _ _ _ _ _ checked5910.1 (.cons _ _ _ _ _ checked5911.1 (.cons _ _ _ _ _ checked5912.1 (.cons _ _ _ _ _ checked5913.1 (.cons _ _ _ _ _ checked5914.1 (.cons _ _ _ _ _ checked5915.1 (.cons _ _ _ _ _ checked5916.1 (.cons _ _ _ _ _ checked5917.1 (.cons _ _ _ _ _ checked5918.1 (.cons _ _ _ _ _ checked5919.1 (.cons _ _ _ _ _ checked5920.1 (.cons _ _ _ _ _ checked5921.1 (.cons _ _ _ _ _ checked5922.1 (.cons _ _ _ _ _ checked5923.1 (.cons _ _ _ _ _ checked5924.1 (.cons _ _ _ _ _ checked5925.1 (.cons _ _ _ _ _ checked5926.1 (.cons _ _ _ _ _ checked5927.1 (.cons _ _ _ _ _ checked5928.1 (.cons _ _ _ _ _ checked5929.1 (.cons _ _ _ _ _ checked5930.1 (.cons _ _ _ _ _ checked5931.1 (.cons _ _ _ _ _ checked5932.1 (.cons _ _ _ _ _ checked5933.1 (.cons _ _ _ _ _ checked5934.1 (.cons _ _ _ _ _ checked5935.1 (.cons _ _ _ _ _ checked5936.1 (.cons _ _ _ _ _ checked5937.1 (.cons _ _ _ _ _ checked5938.1 (.cons _ _ _ _ _ checked5939.1 (.cons _ _ _ _ _ checked5940.1 (.cons _ _ _ _ _ checked5941.1 (.cons _ _ _ _ _ checked5942.1 (.cons _ _ _ _ _ checked5943.1 (.cons _ _ _ _ _ checked5944.1 (.cons _ _ _ _ _ checked5945.1 (.cons _ _ _ _ _ checked5946.1 (.cons _ _ _ _ _ checked5947.1 (.cons _ _ _ _ _ checked5948.1 (.cons _ _ _ _ _ checked5949.1 (.cons _ _ _ _ _ checked5950.1 (.cons _ _ _ _ _ checked5951.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5984 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5888.2,checked5889.2,checked5890.2,checked5891.2,checked5892.2,checked5893.2,checked5894.2,checked5895.2,checked5896.2,checked5897.2,checked5898.2,checked5899.2,checked5900.2,checked5901.2,checked5902.2,checked5903.2,checked5904.2,checked5905.2,checked5906.2,checked5907.2,checked5908.2,checked5909.2,checked5910.2,checked5911.2,checked5912.2,checked5913.2,checked5914.2,checked5915.2,checked5916.2,checked5917.2,checked5918.2,checked5919.2,checked5920.2,checked5921.2,checked5922.2,checked5923.2,checked5924.2,checked5925.2,checked5926.2,checked5927.2,checked5928.2,checked5929.2,checked5930.2,checked5931.2,checked5932.2,checked5933.2,checked5934.2,checked5935.2,checked5936.2,checked5937.2,checked5938.2,checked5939.2,checked5940.2,checked5941.2,checked5942.2,checked5943.2,checked5944.2,checked5945.2,checked5946.2,checked5947.2,checked5948.2,checked5949.2,checked5950.2,checked5951.2]
  decide
end ArtifactPairedPathRoundGroup92
