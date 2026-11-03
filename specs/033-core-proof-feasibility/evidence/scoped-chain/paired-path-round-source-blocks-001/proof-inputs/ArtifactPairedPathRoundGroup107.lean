import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup107
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6848 : List WordIR.Op := [.bxor 6942 6943]
def bytes6848 : Bytes := ("    let r00001b20: u32 = r00001b1e ^ r00001b1f;\n" : String).toByteArray.data.toList
theorem checked6848 : bytes6848=statementBytes 6944 (op6848.map lower) ∧ bytes6848.length=48 := by core033_kernel_decide
def op6849 : List WordIR.Op := [.shr 4783 8]
def bytes6849 : Bytes := ("    let r00001b21: u32 = r000012af >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6849 : bytes6849=statementBytes 6945 (op6849.map lower) ∧ bytes6849.length=54 := by core033_kernel_decide
def op6850 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6850 : Bytes := ("    let r00001b22: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6850 : bytes6850=statementBytes 6946 (op6850.map lower) ∧ bytes6850.length=41 := by core033_kernel_decide
def op6851 : List WordIR.Op := [.bnot 6946]
def bytes6851 : Bytes := ("    let r00001b23: u32 = !r00001b22;\n" : String).toByteArray.data.toList
theorem checked6851 : bytes6851=statementBytes 6947 (op6851.map lower) ∧ bytes6851.length=37 := by core033_kernel_decide
def op6852 : List WordIR.Op := [.band 6945 6947]
def bytes6852 : Bytes := ("    let r00001b24: u32 = r00001b21 & r00001b23;\n" : String).toByteArray.data.toList
theorem checked6852 : bytes6852=statementBytes 6948 (op6852.map lower) ∧ bytes6852.length=48 := by core033_kernel_decide
def op6853 : List WordIR.Op := [.shr 4783 8]
def bytes6853 : Bytes := ("    let r00001b25: u32 = r000012af >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6853 : bytes6853=statementBytes 6949 (op6853.map lower) ∧ bytes6853.length=54 := by core033_kernel_decide
def op6854 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6854 : Bytes := ("    let r00001b26: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6854 : bytes6854=statementBytes 6950 (op6854.map lower) ∧ bytes6854.length=41 := by core033_kernel_decide
def op6855 : List WordIR.Op := [.bnot 6950]
def bytes6855 : Bytes := ("    let r00001b27: u32 = !r00001b26;\n" : String).toByteArray.data.toList
theorem checked6855 : bytes6855=statementBytes 6951 (op6855.map lower) ∧ bytes6855.length=37 := by core033_kernel_decide
def op6856 : List WordIR.Op := [.bxor 6949 6951]
def bytes6856 : Bytes := ("    let r00001b28: u32 = r00001b25 ^ r00001b27;\n" : String).toByteArray.data.toList
theorem checked6856 : bytes6856=statementBytes 6952 (op6856.map lower) ∧ bytes6856.length=48 := by core033_kernel_decide
def op6857 : List WordIR.Op := [.shr 4783 8]
def bytes6857 : Bytes := ("    let r00001b29: u32 = r000012af >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6857 : bytes6857=statementBytes 6953 (op6857.map lower) ∧ bytes6857.length=54 := by core033_kernel_decide
def op6858 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6858 : Bytes := ("    let r00001b2a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6858 : bytes6858=statementBytes 6954 (op6858.map lower) ∧ bytes6858.length=41 := by core033_kernel_decide
def op6859 : List WordIR.Op := [.bnot 6954]
def bytes6859 : Bytes := ("    let r00001b2b: u32 = !r00001b2a;\n" : String).toByteArray.data.toList
theorem checked6859 : bytes6859=statementBytes 6955 (op6859.map lower) ∧ bytes6859.length=37 := by core033_kernel_decide
def op6860 : List WordIR.Op := [.badd 6953 6955]
def bytes6860 : Bytes := ("    let r00001b2c: u32 = r00001b29.wrapping_add(r00001b2b);\n" : String).toByteArray.data.toList
theorem checked6860 : bytes6860=statementBytes 6956 (op6860.map lower) ∧ bytes6860.length=60 := by core033_kernel_decide
def op6861 : List WordIR.Op := [.bnot 6956]
def bytes6861 : Bytes := ("    let r00001b2d: u32 = !r00001b2c;\n" : String).toByteArray.data.toList
theorem checked6861 : bytes6861=statementBytes 6957 (op6861.map lower) ∧ bytes6861.length=37 := by core033_kernel_decide
def op6862 : List WordIR.Op := [.band 6952 6957]
def bytes6862 : Bytes := ("    let r00001b2e: u32 = r00001b28 & r00001b2d;\n" : String).toByteArray.data.toList
theorem checked6862 : bytes6862=statementBytes 6958 (op6862.map lower) ∧ bytes6862.length=48 := by core033_kernel_decide
def op6863 : List WordIR.Op := [.bxor 6948 6958]
def bytes6863 : Bytes := ("    let r00001b2f: u32 = r00001b24 ^ r00001b2e;\n" : String).toByteArray.data.toList
theorem checked6863 : bytes6863=statementBytes 6959 (op6863.map lower) ∧ bytes6863.length=48 := by core033_kernel_decide
def op6864 : List WordIR.Op := [.shr 6959 31]
def bytes6864 : Bytes := ("    let r00001b30: u32 = r00001b2f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6864 : bytes6864=statementBytes 6960 (op6864.map lower) ∧ bytes6864.length=54 := by core033_kernel_decide
def op6865 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6865 : Bytes := ("    let r00001b31: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6865 : bytes6865=statementBytes 6961 (op6865.map lower) ∧ bytes6865.length=41 := by core033_kernel_decide
def op6866 : List WordIR.Op := [.bxor 6960 6961]
def bytes6866 : Bytes := ("    let r00001b32: u32 = r00001b30 ^ r00001b31;\n" : String).toByteArray.data.toList
theorem checked6866 : bytes6866=statementBytes 6962 (op6866.map lower) ∧ bytes6866.length=48 := by core033_kernel_decide
def op6867 : List WordIR.Op := [.shr 4835 8]
def bytes6867 : Bytes := ("    let r00001b33: u32 = r000012e3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6867 : bytes6867=statementBytes 6963 (op6867.map lower) ∧ bytes6867.length=54 := by core033_kernel_decide
def op6868 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6868 : Bytes := ("    let r00001b34: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6868 : bytes6868=statementBytes 6964 (op6868.map lower) ∧ bytes6868.length=41 := by core033_kernel_decide
def op6869 : List WordIR.Op := [.bnot 6964]
def bytes6869 : Bytes := ("    let r00001b35: u32 = !r00001b34;\n" : String).toByteArray.data.toList
theorem checked6869 : bytes6869=statementBytes 6965 (op6869.map lower) ∧ bytes6869.length=37 := by core033_kernel_decide
def op6870 : List WordIR.Op := [.band 6963 6965]
def bytes6870 : Bytes := ("    let r00001b36: u32 = r00001b33 & r00001b35;\n" : String).toByteArray.data.toList
theorem checked6870 : bytes6870=statementBytes 6966 (op6870.map lower) ∧ bytes6870.length=48 := by core033_kernel_decide
def op6871 : List WordIR.Op := [.shr 4835 8]
def bytes6871 : Bytes := ("    let r00001b37: u32 = r000012e3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6871 : bytes6871=statementBytes 6967 (op6871.map lower) ∧ bytes6871.length=54 := by core033_kernel_decide
def op6872 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6872 : Bytes := ("    let r00001b38: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6872 : bytes6872=statementBytes 6968 (op6872.map lower) ∧ bytes6872.length=41 := by core033_kernel_decide
def op6873 : List WordIR.Op := [.bnot 6968]
def bytes6873 : Bytes := ("    let r00001b39: u32 = !r00001b38;\n" : String).toByteArray.data.toList
theorem checked6873 : bytes6873=statementBytes 6969 (op6873.map lower) ∧ bytes6873.length=37 := by core033_kernel_decide
def op6874 : List WordIR.Op := [.bxor 6967 6969]
def bytes6874 : Bytes := ("    let r00001b3a: u32 = r00001b37 ^ r00001b39;\n" : String).toByteArray.data.toList
theorem checked6874 : bytes6874=statementBytes 6970 (op6874.map lower) ∧ bytes6874.length=48 := by core033_kernel_decide
def op6875 : List WordIR.Op := [.shr 4835 8]
def bytes6875 : Bytes := ("    let r00001b3b: u32 = r000012e3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6875 : bytes6875=statementBytes 6971 (op6875.map lower) ∧ bytes6875.length=54 := by core033_kernel_decide
def op6876 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6876 : Bytes := ("    let r00001b3c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6876 : bytes6876=statementBytes 6972 (op6876.map lower) ∧ bytes6876.length=41 := by core033_kernel_decide
def op6877 : List WordIR.Op := [.bnot 6972]
def bytes6877 : Bytes := ("    let r00001b3d: u32 = !r00001b3c;\n" : String).toByteArray.data.toList
theorem checked6877 : bytes6877=statementBytes 6973 (op6877.map lower) ∧ bytes6877.length=37 := by core033_kernel_decide
def op6878 : List WordIR.Op := [.badd 6971 6973]
def bytes6878 : Bytes := ("    let r00001b3e: u32 = r00001b3b.wrapping_add(r00001b3d);\n" : String).toByteArray.data.toList
theorem checked6878 : bytes6878=statementBytes 6974 (op6878.map lower) ∧ bytes6878.length=60 := by core033_kernel_decide
def op6879 : List WordIR.Op := [.bnot 6974]
def bytes6879 : Bytes := ("    let r00001b3f: u32 = !r00001b3e;\n" : String).toByteArray.data.toList
theorem checked6879 : bytes6879=statementBytes 6975 (op6879.map lower) ∧ bytes6879.length=37 := by core033_kernel_decide
def op6880 : List WordIR.Op := [.band 6970 6975]
def bytes6880 : Bytes := ("    let r00001b40: u32 = r00001b3a & r00001b3f;\n" : String).toByteArray.data.toList
theorem checked6880 : bytes6880=statementBytes 6976 (op6880.map lower) ∧ bytes6880.length=48 := by core033_kernel_decide
def op6881 : List WordIR.Op := [.bxor 6966 6976]
def bytes6881 : Bytes := ("    let r00001b41: u32 = r00001b36 ^ r00001b40;\n" : String).toByteArray.data.toList
theorem checked6881 : bytes6881=statementBytes 6977 (op6881.map lower) ∧ bytes6881.length=48 := by core033_kernel_decide
def op6882 : List WordIR.Op := [.shr 6977 31]
def bytes6882 : Bytes := ("    let r00001b42: u32 = r00001b41 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6882 : bytes6882=statementBytes 6978 (op6882.map lower) ∧ bytes6882.length=54 := by core033_kernel_decide
def op6883 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6883 : Bytes := ("    let r00001b43: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6883 : bytes6883=statementBytes 6979 (op6883.map lower) ∧ bytes6883.length=41 := by core033_kernel_decide
def op6884 : List WordIR.Op := [.bxor 6978 6979]
def bytes6884 : Bytes := ("    let r00001b44: u32 = r00001b42 ^ r00001b43;\n" : String).toByteArray.data.toList
theorem checked6884 : bytes6884=statementBytes 6980 (op6884.map lower) ∧ bytes6884.length=48 := by core033_kernel_decide
def op6885 : List WordIR.Op := [.shr 4887 8]
def bytes6885 : Bytes := ("    let r00001b45: u32 = r00001317 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6885 : bytes6885=statementBytes 6981 (op6885.map lower) ∧ bytes6885.length=54 := by core033_kernel_decide
def op6886 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6886 : Bytes := ("    let r00001b46: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6886 : bytes6886=statementBytes 6982 (op6886.map lower) ∧ bytes6886.length=41 := by core033_kernel_decide
def op6887 : List WordIR.Op := [.bnot 6982]
def bytes6887 : Bytes := ("    let r00001b47: u32 = !r00001b46;\n" : String).toByteArray.data.toList
theorem checked6887 : bytes6887=statementBytes 6983 (op6887.map lower) ∧ bytes6887.length=37 := by core033_kernel_decide
def op6888 : List WordIR.Op := [.band 6981 6983]
def bytes6888 : Bytes := ("    let r00001b48: u32 = r00001b45 & r00001b47;\n" : String).toByteArray.data.toList
theorem checked6888 : bytes6888=statementBytes 6984 (op6888.map lower) ∧ bytes6888.length=48 := by core033_kernel_decide
def op6889 : List WordIR.Op := [.shr 4887 8]
def bytes6889 : Bytes := ("    let r00001b49: u32 = r00001317 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6889 : bytes6889=statementBytes 6985 (op6889.map lower) ∧ bytes6889.length=54 := by core033_kernel_decide
def op6890 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6890 : Bytes := ("    let r00001b4a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6890 : bytes6890=statementBytes 6986 (op6890.map lower) ∧ bytes6890.length=41 := by core033_kernel_decide
def op6891 : List WordIR.Op := [.bnot 6986]
def bytes6891 : Bytes := ("    let r00001b4b: u32 = !r00001b4a;\n" : String).toByteArray.data.toList
theorem checked6891 : bytes6891=statementBytes 6987 (op6891.map lower) ∧ bytes6891.length=37 := by core033_kernel_decide
def op6892 : List WordIR.Op := [.bxor 6985 6987]
def bytes6892 : Bytes := ("    let r00001b4c: u32 = r00001b49 ^ r00001b4b;\n" : String).toByteArray.data.toList
theorem checked6892 : bytes6892=statementBytes 6988 (op6892.map lower) ∧ bytes6892.length=48 := by core033_kernel_decide
def op6893 : List WordIR.Op := [.shr 4887 8]
def bytes6893 : Bytes := ("    let r00001b4d: u32 = r00001317 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6893 : bytes6893=statementBytes 6989 (op6893.map lower) ∧ bytes6893.length=54 := by core033_kernel_decide
def op6894 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6894 : Bytes := ("    let r00001b4e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6894 : bytes6894=statementBytes 6990 (op6894.map lower) ∧ bytes6894.length=41 := by core033_kernel_decide
def op6895 : List WordIR.Op := [.bnot 6990]
def bytes6895 : Bytes := ("    let r00001b4f: u32 = !r00001b4e;\n" : String).toByteArray.data.toList
theorem checked6895 : bytes6895=statementBytes 6991 (op6895.map lower) ∧ bytes6895.length=37 := by core033_kernel_decide
def op6896 : List WordIR.Op := [.badd 6989 6991]
def bytes6896 : Bytes := ("    let r00001b50: u32 = r00001b4d.wrapping_add(r00001b4f);\n" : String).toByteArray.data.toList
theorem checked6896 : bytes6896=statementBytes 6992 (op6896.map lower) ∧ bytes6896.length=60 := by core033_kernel_decide
def op6897 : List WordIR.Op := [.bnot 6992]
def bytes6897 : Bytes := ("    let r00001b51: u32 = !r00001b50;\n" : String).toByteArray.data.toList
theorem checked6897 : bytes6897=statementBytes 6993 (op6897.map lower) ∧ bytes6897.length=37 := by core033_kernel_decide
def op6898 : List WordIR.Op := [.band 6988 6993]
def bytes6898 : Bytes := ("    let r00001b52: u32 = r00001b4c & r00001b51;\n" : String).toByteArray.data.toList
theorem checked6898 : bytes6898=statementBytes 6994 (op6898.map lower) ∧ bytes6898.length=48 := by core033_kernel_decide
def op6899 : List WordIR.Op := [.bxor 6984 6994]
def bytes6899 : Bytes := ("    let r00001b53: u32 = r00001b48 ^ r00001b52;\n" : String).toByteArray.data.toList
theorem checked6899 : bytes6899=statementBytes 6995 (op6899.map lower) ∧ bytes6899.length=48 := by core033_kernel_decide
def op6900 : List WordIR.Op := [.shr 6995 31]
def bytes6900 : Bytes := ("    let r00001b54: u32 = r00001b53 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6900 : bytes6900=statementBytes 6996 (op6900.map lower) ∧ bytes6900.length=54 := by core033_kernel_decide
def op6901 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6901 : Bytes := ("    let r00001b55: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6901 : bytes6901=statementBytes 6997 (op6901.map lower) ∧ bytes6901.length=41 := by core033_kernel_decide
def op6902 : List WordIR.Op := [.bxor 6996 6997]
def bytes6902 : Bytes := ("    let r00001b56: u32 = r00001b54 ^ r00001b55;\n" : String).toByteArray.data.toList
theorem checked6902 : bytes6902=statementBytes 6998 (op6902.map lower) ∧ bytes6902.length=48 := by core033_kernel_decide
def op6903 : List WordIR.Op := [.shr 4939 8]
def bytes6903 : Bytes := ("    let r00001b57: u32 = r0000134b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6903 : bytes6903=statementBytes 6999 (op6903.map lower) ∧ bytes6903.length=54 := by core033_kernel_decide
def op6904 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6904 : Bytes := ("    let r00001b58: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6904 : bytes6904=statementBytes 7000 (op6904.map lower) ∧ bytes6904.length=41 := by core033_kernel_decide
def op6905 : List WordIR.Op := [.bnot 7000]
def bytes6905 : Bytes := ("    let r00001b59: u32 = !r00001b58;\n" : String).toByteArray.data.toList
theorem checked6905 : bytes6905=statementBytes 7001 (op6905.map lower) ∧ bytes6905.length=37 := by core033_kernel_decide
def op6906 : List WordIR.Op := [.band 6999 7001]
def bytes6906 : Bytes := ("    let r00001b5a: u32 = r00001b57 & r00001b59;\n" : String).toByteArray.data.toList
theorem checked6906 : bytes6906=statementBytes 7002 (op6906.map lower) ∧ bytes6906.length=48 := by core033_kernel_decide
def op6907 : List WordIR.Op := [.shr 4939 8]
def bytes6907 : Bytes := ("    let r00001b5b: u32 = r0000134b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6907 : bytes6907=statementBytes 7003 (op6907.map lower) ∧ bytes6907.length=54 := by core033_kernel_decide
def op6908 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6908 : Bytes := ("    let r00001b5c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6908 : bytes6908=statementBytes 7004 (op6908.map lower) ∧ bytes6908.length=41 := by core033_kernel_decide
def op6909 : List WordIR.Op := [.bnot 7004]
def bytes6909 : Bytes := ("    let r00001b5d: u32 = !r00001b5c;\n" : String).toByteArray.data.toList
theorem checked6909 : bytes6909=statementBytes 7005 (op6909.map lower) ∧ bytes6909.length=37 := by core033_kernel_decide
def op6910 : List WordIR.Op := [.bxor 7003 7005]
def bytes6910 : Bytes := ("    let r00001b5e: u32 = r00001b5b ^ r00001b5d;\n" : String).toByteArray.data.toList
theorem checked6910 : bytes6910=statementBytes 7006 (op6910.map lower) ∧ bytes6910.length=48 := by core033_kernel_decide
def op6911 : List WordIR.Op := [.shr 4939 8]
def bytes6911 : Bytes := ("    let r00001b5f: u32 = r0000134b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6911 : bytes6911=statementBytes 7007 (op6911.map lower) ∧ bytes6911.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6848,op6849,op6850,op6851,op6852,op6853,op6854,op6855,op6856,op6857,op6858,op6859,op6860,op6861,op6862,op6863,op6864,op6865,op6866,op6867,op6868,op6869,op6870,op6871,op6872,op6873,op6874,op6875,op6876,op6877,op6878,op6879,op6880,op6881,op6882,op6883,op6884,op6885,op6886,op6887,op6888,op6889,op6890,op6891,op6892,op6893,op6894,op6895,op6896,op6897,op6898,op6899,op6900,op6901,op6902,op6903,op6904,op6905,op6906,op6907,op6908,op6909,op6910,op6911]
def chunks : List Bytes := [bytes6848,bytes6849,bytes6850,bytes6851,bytes6852,bytes6853,bytes6854,bytes6855,bytes6856,bytes6857,bytes6858,bytes6859,bytes6860,bytes6861,bytes6862,bytes6863,bytes6864,bytes6865,bytes6866,bytes6867,bytes6868,bytes6869,bytes6870,bytes6871,bytes6872,bytes6873,bytes6874,bytes6875,bytes6876,bytes6877,bytes6878,bytes6879,bytes6880,bytes6881,bytes6882,bytes6883,bytes6884,bytes6885,bytes6886,bytes6887,bytes6888,bytes6889,bytes6890,bytes6891,bytes6892,bytes6893,bytes6894,bytes6895,bytes6896,bytes6897,bytes6898,bytes6899,bytes6900,bytes6901,bytes6902,bytes6903,bytes6904,bytes6905,bytes6906,bytes6907,bytes6908,bytes6909,bytes6910,bytes6911]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6944 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6848.1 (.cons _ _ _ _ _ checked6849.1 (.cons _ _ _ _ _ checked6850.1 (.cons _ _ _ _ _ checked6851.1 (.cons _ _ _ _ _ checked6852.1 (.cons _ _ _ _ _ checked6853.1 (.cons _ _ _ _ _ checked6854.1 (.cons _ _ _ _ _ checked6855.1 (.cons _ _ _ _ _ checked6856.1 (.cons _ _ _ _ _ checked6857.1 (.cons _ _ _ _ _ checked6858.1 (.cons _ _ _ _ _ checked6859.1 (.cons _ _ _ _ _ checked6860.1 (.cons _ _ _ _ _ checked6861.1 (.cons _ _ _ _ _ checked6862.1 (.cons _ _ _ _ _ checked6863.1 (.cons _ _ _ _ _ checked6864.1 (.cons _ _ _ _ _ checked6865.1 (.cons _ _ _ _ _ checked6866.1 (.cons _ _ _ _ _ checked6867.1 (.cons _ _ _ _ _ checked6868.1 (.cons _ _ _ _ _ checked6869.1 (.cons _ _ _ _ _ checked6870.1 (.cons _ _ _ _ _ checked6871.1 (.cons _ _ _ _ _ checked6872.1 (.cons _ _ _ _ _ checked6873.1 (.cons _ _ _ _ _ checked6874.1 (.cons _ _ _ _ _ checked6875.1 (.cons _ _ _ _ _ checked6876.1 (.cons _ _ _ _ _ checked6877.1 (.cons _ _ _ _ _ checked6878.1 (.cons _ _ _ _ _ checked6879.1 (.cons _ _ _ _ _ checked6880.1 (.cons _ _ _ _ _ checked6881.1 (.cons _ _ _ _ _ checked6882.1 (.cons _ _ _ _ _ checked6883.1 (.cons _ _ _ _ _ checked6884.1 (.cons _ _ _ _ _ checked6885.1 (.cons _ _ _ _ _ checked6886.1 (.cons _ _ _ _ _ checked6887.1 (.cons _ _ _ _ _ checked6888.1 (.cons _ _ _ _ _ checked6889.1 (.cons _ _ _ _ _ checked6890.1 (.cons _ _ _ _ _ checked6891.1 (.cons _ _ _ _ _ checked6892.1 (.cons _ _ _ _ _ checked6893.1 (.cons _ _ _ _ _ checked6894.1 (.cons _ _ _ _ _ checked6895.1 (.cons _ _ _ _ _ checked6896.1 (.cons _ _ _ _ _ checked6897.1 (.cons _ _ _ _ _ checked6898.1 (.cons _ _ _ _ _ checked6899.1 (.cons _ _ _ _ _ checked6900.1 (.cons _ _ _ _ _ checked6901.1 (.cons _ _ _ _ _ checked6902.1 (.cons _ _ _ _ _ checked6903.1 (.cons _ _ _ _ _ checked6904.1 (.cons _ _ _ _ _ checked6905.1 (.cons _ _ _ _ _ checked6906.1 (.cons _ _ _ _ _ checked6907.1 (.cons _ _ _ _ _ checked6908.1 (.cons _ _ _ _ _ checked6909.1 (.cons _ _ _ _ _ checked6910.1 (.cons _ _ _ _ _ checked6911.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6944 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2946 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6848.2,checked6849.2,checked6850.2,checked6851.2,checked6852.2,checked6853.2,checked6854.2,checked6855.2,checked6856.2,checked6857.2,checked6858.2,checked6859.2,checked6860.2,checked6861.2,checked6862.2,checked6863.2,checked6864.2,checked6865.2,checked6866.2,checked6867.2,checked6868.2,checked6869.2,checked6870.2,checked6871.2,checked6872.2,checked6873.2,checked6874.2,checked6875.2,checked6876.2,checked6877.2,checked6878.2,checked6879.2,checked6880.2,checked6881.2,checked6882.2,checked6883.2,checked6884.2,checked6885.2,checked6886.2,checked6887.2,checked6888.2,checked6889.2,checked6890.2,checked6891.2,checked6892.2,checked6893.2,checked6894.2,checked6895.2,checked6896.2,checked6897.2,checked6898.2,checked6899.2,checked6900.2,checked6901.2,checked6902.2,checked6903.2,checked6904.2,checked6905.2,checked6906.2,checked6907.2,checked6908.2,checked6909.2,checked6910.2,checked6911.2]
  decide
end ArtifactPairedPathRoundGroup107
