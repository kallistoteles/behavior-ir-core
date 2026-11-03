import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup107
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6848 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6848 : Bytes := ("    let r00001aeb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6848 : bytes6848=statementBytes 6891 (op6848.map lower) ∧ bytes6848.length=41 := by core033_kernel_decide
def op6849 : List WordIR.Op := [.bxor 6890 6891]
def bytes6849 : Bytes := ("    let r00001aec: u32 = r00001aea ^ r00001aeb;\n" : String).toByteArray.data.toList
theorem checked6849 : bytes6849=statementBytes 6892 (op6849.map lower) ∧ bytes6849.length=48 := by core033_kernel_decide
def op6850 : List WordIR.Op := [.shr 5627 8]
def bytes6850 : Bytes := ("    let r00001aed: u32 = r000015fb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6850 : bytes6850=statementBytes 6893 (op6850.map lower) ∧ bytes6850.length=54 := by core033_kernel_decide
def op6851 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6851 : Bytes := ("    let r00001aee: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6851 : bytes6851=statementBytes 6894 (op6851.map lower) ∧ bytes6851.length=41 := by core033_kernel_decide
def op6852 : List WordIR.Op := [.bnot 6894]
def bytes6852 : Bytes := ("    let r00001aef: u32 = !r00001aee;\n" : String).toByteArray.data.toList
theorem checked6852 : bytes6852=statementBytes 6895 (op6852.map lower) ∧ bytes6852.length=37 := by core033_kernel_decide
def op6853 : List WordIR.Op := [.band 6893 6895]
def bytes6853 : Bytes := ("    let r00001af0: u32 = r00001aed & r00001aef;\n" : String).toByteArray.data.toList
theorem checked6853 : bytes6853=statementBytes 6896 (op6853.map lower) ∧ bytes6853.length=48 := by core033_kernel_decide
def op6854 : List WordIR.Op := [.shr 5627 8]
def bytes6854 : Bytes := ("    let r00001af1: u32 = r000015fb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6854 : bytes6854=statementBytes 6897 (op6854.map lower) ∧ bytes6854.length=54 := by core033_kernel_decide
def op6855 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6855 : Bytes := ("    let r00001af2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6855 : bytes6855=statementBytes 6898 (op6855.map lower) ∧ bytes6855.length=41 := by core033_kernel_decide
def op6856 : List WordIR.Op := [.bnot 6898]
def bytes6856 : Bytes := ("    let r00001af3: u32 = !r00001af2;\n" : String).toByteArray.data.toList
theorem checked6856 : bytes6856=statementBytes 6899 (op6856.map lower) ∧ bytes6856.length=37 := by core033_kernel_decide
def op6857 : List WordIR.Op := [.bxor 6897 6899]
def bytes6857 : Bytes := ("    let r00001af4: u32 = r00001af1 ^ r00001af3;\n" : String).toByteArray.data.toList
theorem checked6857 : bytes6857=statementBytes 6900 (op6857.map lower) ∧ bytes6857.length=48 := by core033_kernel_decide
def op6858 : List WordIR.Op := [.shr 5627 8]
def bytes6858 : Bytes := ("    let r00001af5: u32 = r000015fb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6858 : bytes6858=statementBytes 6901 (op6858.map lower) ∧ bytes6858.length=54 := by core033_kernel_decide
def op6859 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6859 : Bytes := ("    let r00001af6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6859 : bytes6859=statementBytes 6902 (op6859.map lower) ∧ bytes6859.length=41 := by core033_kernel_decide
def op6860 : List WordIR.Op := [.bnot 6902]
def bytes6860 : Bytes := ("    let r00001af7: u32 = !r00001af6;\n" : String).toByteArray.data.toList
theorem checked6860 : bytes6860=statementBytes 6903 (op6860.map lower) ∧ bytes6860.length=37 := by core033_kernel_decide
def op6861 : List WordIR.Op := [.badd 6901 6903]
def bytes6861 : Bytes := ("    let r00001af8: u32 = r00001af5.wrapping_add(r00001af7);\n" : String).toByteArray.data.toList
theorem checked6861 : bytes6861=statementBytes 6904 (op6861.map lower) ∧ bytes6861.length=60 := by core033_kernel_decide
def op6862 : List WordIR.Op := [.bnot 6904]
def bytes6862 : Bytes := ("    let r00001af9: u32 = !r00001af8;\n" : String).toByteArray.data.toList
theorem checked6862 : bytes6862=statementBytes 6905 (op6862.map lower) ∧ bytes6862.length=37 := by core033_kernel_decide
def op6863 : List WordIR.Op := [.band 6900 6905]
def bytes6863 : Bytes := ("    let r00001afa: u32 = r00001af4 & r00001af9;\n" : String).toByteArray.data.toList
theorem checked6863 : bytes6863=statementBytes 6906 (op6863.map lower) ∧ bytes6863.length=48 := by core033_kernel_decide
def op6864 : List WordIR.Op := [.bxor 6896 6906]
def bytes6864 : Bytes := ("    let r00001afb: u32 = r00001af0 ^ r00001afa;\n" : String).toByteArray.data.toList
theorem checked6864 : bytes6864=statementBytes 6907 (op6864.map lower) ∧ bytes6864.length=48 := by core033_kernel_decide
def op6865 : List WordIR.Op := [.shr 6907 31]
def bytes6865 : Bytes := ("    let r00001afc: u32 = r00001afb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6865 : bytes6865=statementBytes 6908 (op6865.map lower) ∧ bytes6865.length=54 := by core033_kernel_decide
def op6866 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6866 : Bytes := ("    let r00001afd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6866 : bytes6866=statementBytes 6909 (op6866.map lower) ∧ bytes6866.length=41 := by core033_kernel_decide
def op6867 : List WordIR.Op := [.bxor 6908 6909]
def bytes6867 : Bytes := ("    let r00001afe: u32 = r00001afc ^ r00001afd;\n" : String).toByteArray.data.toList
theorem checked6867 : bytes6867=statementBytes 6910 (op6867.map lower) ∧ bytes6867.length=48 := by core033_kernel_decide
def op6868 : List WordIR.Op := [.shr 5680 8]
def bytes6868 : Bytes := ("    let r00001aff: u32 = r00001630 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6868 : bytes6868=statementBytes 6911 (op6868.map lower) ∧ bytes6868.length=54 := by core033_kernel_decide
def op6869 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6869 : Bytes := ("    let r00001b00: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6869 : bytes6869=statementBytes 6912 (op6869.map lower) ∧ bytes6869.length=41 := by core033_kernel_decide
def op6870 : List WordIR.Op := [.bnot 6912]
def bytes6870 : Bytes := ("    let r00001b01: u32 = !r00001b00;\n" : String).toByteArray.data.toList
theorem checked6870 : bytes6870=statementBytes 6913 (op6870.map lower) ∧ bytes6870.length=37 := by core033_kernel_decide
def op6871 : List WordIR.Op := [.band 6911 6913]
def bytes6871 : Bytes := ("    let r00001b02: u32 = r00001aff & r00001b01;\n" : String).toByteArray.data.toList
theorem checked6871 : bytes6871=statementBytes 6914 (op6871.map lower) ∧ bytes6871.length=48 := by core033_kernel_decide
def op6872 : List WordIR.Op := [.shr 5680 8]
def bytes6872 : Bytes := ("    let r00001b03: u32 = r00001630 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6872 : bytes6872=statementBytes 6915 (op6872.map lower) ∧ bytes6872.length=54 := by core033_kernel_decide
def op6873 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6873 : Bytes := ("    let r00001b04: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6873 : bytes6873=statementBytes 6916 (op6873.map lower) ∧ bytes6873.length=41 := by core033_kernel_decide
def op6874 : List WordIR.Op := [.bnot 6916]
def bytes6874 : Bytes := ("    let r00001b05: u32 = !r00001b04;\n" : String).toByteArray.data.toList
theorem checked6874 : bytes6874=statementBytes 6917 (op6874.map lower) ∧ bytes6874.length=37 := by core033_kernel_decide
def op6875 : List WordIR.Op := [.bxor 6915 6917]
def bytes6875 : Bytes := ("    let r00001b06: u32 = r00001b03 ^ r00001b05;\n" : String).toByteArray.data.toList
theorem checked6875 : bytes6875=statementBytes 6918 (op6875.map lower) ∧ bytes6875.length=48 := by core033_kernel_decide
def op6876 : List WordIR.Op := [.shr 5680 8]
def bytes6876 : Bytes := ("    let r00001b07: u32 = r00001630 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6876 : bytes6876=statementBytes 6919 (op6876.map lower) ∧ bytes6876.length=54 := by core033_kernel_decide
def op6877 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6877 : Bytes := ("    let r00001b08: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6877 : bytes6877=statementBytes 6920 (op6877.map lower) ∧ bytes6877.length=41 := by core033_kernel_decide
def op6878 : List WordIR.Op := [.bnot 6920]
def bytes6878 : Bytes := ("    let r00001b09: u32 = !r00001b08;\n" : String).toByteArray.data.toList
theorem checked6878 : bytes6878=statementBytes 6921 (op6878.map lower) ∧ bytes6878.length=37 := by core033_kernel_decide
def op6879 : List WordIR.Op := [.badd 6919 6921]
def bytes6879 : Bytes := ("    let r00001b0a: u32 = r00001b07.wrapping_add(r00001b09);\n" : String).toByteArray.data.toList
theorem checked6879 : bytes6879=statementBytes 6922 (op6879.map lower) ∧ bytes6879.length=60 := by core033_kernel_decide
def op6880 : List WordIR.Op := [.bnot 6922]
def bytes6880 : Bytes := ("    let r00001b0b: u32 = !r00001b0a;\n" : String).toByteArray.data.toList
theorem checked6880 : bytes6880=statementBytes 6923 (op6880.map lower) ∧ bytes6880.length=37 := by core033_kernel_decide
def op6881 : List WordIR.Op := [.band 6918 6923]
def bytes6881 : Bytes := ("    let r00001b0c: u32 = r00001b06 & r00001b0b;\n" : String).toByteArray.data.toList
theorem checked6881 : bytes6881=statementBytes 6924 (op6881.map lower) ∧ bytes6881.length=48 := by core033_kernel_decide
def op6882 : List WordIR.Op := [.bxor 6914 6924]
def bytes6882 : Bytes := ("    let r00001b0d: u32 = r00001b02 ^ r00001b0c;\n" : String).toByteArray.data.toList
theorem checked6882 : bytes6882=statementBytes 6925 (op6882.map lower) ∧ bytes6882.length=48 := by core033_kernel_decide
def op6883 : List WordIR.Op := [.shr 6925 31]
def bytes6883 : Bytes := ("    let r00001b0e: u32 = r00001b0d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6883 : bytes6883=statementBytes 6926 (op6883.map lower) ∧ bytes6883.length=54 := by core033_kernel_decide
def op6884 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6884 : Bytes := ("    let r00001b0f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6884 : bytes6884=statementBytes 6927 (op6884.map lower) ∧ bytes6884.length=41 := by core033_kernel_decide
def op6885 : List WordIR.Op := [.bxor 6926 6927]
def bytes6885 : Bytes := ("    let r00001b10: u32 = r00001b0e ^ r00001b0f;\n" : String).toByteArray.data.toList
theorem checked6885 : bytes6885=statementBytes 6928 (op6885.map lower) ∧ bytes6885.length=48 := by core033_kernel_decide
def op6886 : List WordIR.Op := [.rotr 5770 17]
def bytes6886 : Bytes := ("    let r00001b11: u32 = r0000168a.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6886 : bytes6886=statementBytes 6929 (op6886.map lower) ∧ bytes6886.length=65 := by core033_kernel_decide
def op6887 : List WordIR.Op := [.rotr 5770 19]
def bytes6887 : Bytes := ("    let r00001b12: u32 = r0000168a.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6887 : bytes6887=statementBytes 6930 (op6887.map lower) ∧ bytes6887.length=65 := by core033_kernel_decide
def op6888 : List WordIR.Op := [.bxor 6929 6930]
def bytes6888 : Bytes := ("    let r00001b13: u32 = r00001b11 ^ r00001b12;\n" : String).toByteArray.data.toList
theorem checked6888 : bytes6888=statementBytes 6931 (op6888.map lower) ∧ bytes6888.length=48 := by core033_kernel_decide
def op6889 : List WordIR.Op := [.shr 5770 10]
def bytes6889 : Bytes := ("    let r00001b14: u32 = r0000168a >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6889 : bytes6889=statementBytes 6932 (op6889.map lower) ∧ bytes6889.length=54 := by core033_kernel_decide
def op6890 : List WordIR.Op := [.bxor 6931 6932]
def bytes6890 : Bytes := ("    let r00001b15: u32 = r00001b13 ^ r00001b14;\n" : String).toByteArray.data.toList
theorem checked6890 : bytes6890=statementBytes 6933 (op6890.map lower) ∧ bytes6890.length=48 := by core033_kernel_decide
def op6891 : List WordIR.Op := [.badd 6933 5740]
def bytes6891 : Bytes := ("    let r00001b16: u32 = r00001b15.wrapping_add(r0000166c);\n" : String).toByteArray.data.toList
theorem checked6891 : bytes6891=statementBytes 6934 (op6891.map lower) ∧ bytes6891.length=60 := by core033_kernel_decide
def op6892 : List WordIR.Op := [.rotr 5692 7]
def bytes6892 : Bytes := ("    let r00001b17: u32 = r0000163c.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6892 : bytes6892=statementBytes 6935 (op6892.map lower) ∧ bytes6892.length=65 := by core033_kernel_decide
def op6893 : List WordIR.Op := [.rotr 5692 18]
def bytes6893 : Bytes := ("    let r00001b18: u32 = r0000163c.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6893 : bytes6893=statementBytes 6936 (op6893.map lower) ∧ bytes6893.length=65 := by core033_kernel_decide
def op6894 : List WordIR.Op := [.bxor 6935 6936]
def bytes6894 : Bytes := ("    let r00001b19: u32 = r00001b17 ^ r00001b18;\n" : String).toByteArray.data.toList
theorem checked6894 : bytes6894=statementBytes 6937 (op6894.map lower) ∧ bytes6894.length=48 := by core033_kernel_decide
def op6895 : List WordIR.Op := [.shr 5692 3]
def bytes6895 : Bytes := ("    let r00001b1a: u32 = r0000163c >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6895 : bytes6895=statementBytes 6938 (op6895.map lower) ∧ bytes6895.length=54 := by core033_kernel_decide
def op6896 : List WordIR.Op := [.bxor 6937 6938]
def bytes6896 : Bytes := ("    let r00001b1b: u32 = r00001b19 ^ r00001b1a;\n" : String).toByteArray.data.toList
theorem checked6896 : bytes6896=statementBytes 6939 (op6896.map lower) ∧ bytes6896.length=48 := by core033_kernel_decide
def op6897 : List WordIR.Op := [.badd 6934 6939]
def bytes6897 : Bytes := ("    let r00001b1c: u32 = r00001b16.wrapping_add(r00001b1b);\n" : String).toByteArray.data.toList
theorem checked6897 : bytes6897=statementBytes 6940 (op6897.map lower) ∧ bytes6897.length=60 := by core033_kernel_decide
def op6898 : List WordIR.Op := [.badd 6940 5686]
def bytes6898 : Bytes := ("    let r00001b1d: u32 = r00001b1c.wrapping_add(r00001636);\n" : String).toByteArray.data.toList
theorem checked6898 : bytes6898=statementBytes 6941 (op6898.map lower) ∧ bytes6898.length=60 := by core033_kernel_decide
def op6899 : List WordIR.Op := [.rotr 5776 17]
def bytes6899 : Bytes := ("    let r00001b1e: u32 = r00001690.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6899 : bytes6899=statementBytes 6942 (op6899.map lower) ∧ bytes6899.length=65 := by core033_kernel_decide
def op6900 : List WordIR.Op := [.rotr 5776 19]
def bytes6900 : Bytes := ("    let r00001b1f: u32 = r00001690.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6900 : bytes6900=statementBytes 6943 (op6900.map lower) ∧ bytes6900.length=65 := by core033_kernel_decide
def op6901 : List WordIR.Op := [.bxor 6942 6943]
def bytes6901 : Bytes := ("    let r00001b20: u32 = r00001b1e ^ r00001b1f;\n" : String).toByteArray.data.toList
theorem checked6901 : bytes6901=statementBytes 6944 (op6901.map lower) ∧ bytes6901.length=48 := by core033_kernel_decide
def op6902 : List WordIR.Op := [.shr 5776 10]
def bytes6902 : Bytes := ("    let r00001b21: u32 = r00001690 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6902 : bytes6902=statementBytes 6945 (op6902.map lower) ∧ bytes6902.length=54 := by core033_kernel_decide
def op6903 : List WordIR.Op := [.bxor 6944 6945]
def bytes6903 : Bytes := ("    let r00001b22: u32 = r00001b20 ^ r00001b21;\n" : String).toByteArray.data.toList
theorem checked6903 : bytes6903=statementBytes 6946 (op6903.map lower) ∧ bytes6903.length=48 := by core033_kernel_decide
def op6904 : List WordIR.Op := [.badd 6946 5746]
def bytes6904 : Bytes := ("    let r00001b23: u32 = r00001b22.wrapping_add(r00001672);\n" : String).toByteArray.data.toList
theorem checked6904 : bytes6904=statementBytes 6947 (op6904.map lower) ∧ bytes6904.length=60 := by core033_kernel_decide
def op6905 : List WordIR.Op := [.rotr 5698 7]
def bytes6905 : Bytes := ("    let r00001b24: u32 = r00001642.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6905 : bytes6905=statementBytes 6948 (op6905.map lower) ∧ bytes6905.length=65 := by core033_kernel_decide
def op6906 : List WordIR.Op := [.rotr 5698 18]
def bytes6906 : Bytes := ("    let r00001b25: u32 = r00001642.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6906 : bytes6906=statementBytes 6949 (op6906.map lower) ∧ bytes6906.length=65 := by core033_kernel_decide
def op6907 : List WordIR.Op := [.bxor 6948 6949]
def bytes6907 : Bytes := ("    let r00001b26: u32 = r00001b24 ^ r00001b25;\n" : String).toByteArray.data.toList
theorem checked6907 : bytes6907=statementBytes 6950 (op6907.map lower) ∧ bytes6907.length=48 := by core033_kernel_decide
def op6908 : List WordIR.Op := [.shr 5698 3]
def bytes6908 : Bytes := ("    let r00001b27: u32 = r00001642 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6908 : bytes6908=statementBytes 6951 (op6908.map lower) ∧ bytes6908.length=54 := by core033_kernel_decide
def op6909 : List WordIR.Op := [.bxor 6950 6951]
def bytes6909 : Bytes := ("    let r00001b28: u32 = r00001b26 ^ r00001b27;\n" : String).toByteArray.data.toList
theorem checked6909 : bytes6909=statementBytes 6952 (op6909.map lower) ∧ bytes6909.length=48 := by core033_kernel_decide
def op6910 : List WordIR.Op := [.badd 6947 6952]
def bytes6910 : Bytes := ("    let r00001b29: u32 = r00001b23.wrapping_add(r00001b28);\n" : String).toByteArray.data.toList
theorem checked6910 : bytes6910=statementBytes 6953 (op6910.map lower) ∧ bytes6910.length=60 := by core033_kernel_decide
def op6911 : List WordIR.Op := [.badd 6953 5692]
def bytes6911 : Bytes := ("    let r00001b2a: u32 = r00001b29.wrapping_add(r0000163c);\n" : String).toByteArray.data.toList
theorem checked6911 : bytes6911=statementBytes 6954 (op6911.map lower) ∧ bytes6911.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6848,op6849,op6850,op6851,op6852,op6853,op6854,op6855,op6856,op6857,op6858,op6859,op6860,op6861,op6862,op6863,op6864,op6865,op6866,op6867,op6868,op6869,op6870,op6871,op6872,op6873,op6874,op6875,op6876,op6877,op6878,op6879,op6880,op6881,op6882,op6883,op6884,op6885,op6886,op6887,op6888,op6889,op6890,op6891,op6892,op6893,op6894,op6895,op6896,op6897,op6898,op6899,op6900,op6901,op6902,op6903,op6904,op6905,op6906,op6907,op6908,op6909,op6910,op6911]
def chunks : List Bytes := [bytes6848,bytes6849,bytes6850,bytes6851,bytes6852,bytes6853,bytes6854,bytes6855,bytes6856,bytes6857,bytes6858,bytes6859,bytes6860,bytes6861,bytes6862,bytes6863,bytes6864,bytes6865,bytes6866,bytes6867,bytes6868,bytes6869,bytes6870,bytes6871,bytes6872,bytes6873,bytes6874,bytes6875,bytes6876,bytes6877,bytes6878,bytes6879,bytes6880,bytes6881,bytes6882,bytes6883,bytes6884,bytes6885,bytes6886,bytes6887,bytes6888,bytes6889,bytes6890,bytes6891,bytes6892,bytes6893,bytes6894,bytes6895,bytes6896,bytes6897,bytes6898,bytes6899,bytes6900,bytes6901,bytes6902,bytes6903,bytes6904,bytes6905,bytes6906,bytes6907,bytes6908,bytes6909,bytes6910,bytes6911]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6891 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6848.1 (.cons _ _ _ _ _ checked6849.1 (.cons _ _ _ _ _ checked6850.1 (.cons _ _ _ _ _ checked6851.1 (.cons _ _ _ _ _ checked6852.1 (.cons _ _ _ _ _ checked6853.1 (.cons _ _ _ _ _ checked6854.1 (.cons _ _ _ _ _ checked6855.1 (.cons _ _ _ _ _ checked6856.1 (.cons _ _ _ _ _ checked6857.1 (.cons _ _ _ _ _ checked6858.1 (.cons _ _ _ _ _ checked6859.1 (.cons _ _ _ _ _ checked6860.1 (.cons _ _ _ _ _ checked6861.1 (.cons _ _ _ _ _ checked6862.1 (.cons _ _ _ _ _ checked6863.1 (.cons _ _ _ _ _ checked6864.1 (.cons _ _ _ _ _ checked6865.1 (.cons _ _ _ _ _ checked6866.1 (.cons _ _ _ _ _ checked6867.1 (.cons _ _ _ _ _ checked6868.1 (.cons _ _ _ _ _ checked6869.1 (.cons _ _ _ _ _ checked6870.1 (.cons _ _ _ _ _ checked6871.1 (.cons _ _ _ _ _ checked6872.1 (.cons _ _ _ _ _ checked6873.1 (.cons _ _ _ _ _ checked6874.1 (.cons _ _ _ _ _ checked6875.1 (.cons _ _ _ _ _ checked6876.1 (.cons _ _ _ _ _ checked6877.1 (.cons _ _ _ _ _ checked6878.1 (.cons _ _ _ _ _ checked6879.1 (.cons _ _ _ _ _ checked6880.1 (.cons _ _ _ _ _ checked6881.1 (.cons _ _ _ _ _ checked6882.1 (.cons _ _ _ _ _ checked6883.1 (.cons _ _ _ _ _ checked6884.1 (.cons _ _ _ _ _ checked6885.1 (.cons _ _ _ _ _ checked6886.1 (.cons _ _ _ _ _ checked6887.1 (.cons _ _ _ _ _ checked6888.1 (.cons _ _ _ _ _ checked6889.1 (.cons _ _ _ _ _ checked6890.1 (.cons _ _ _ _ _ checked6891.1 (.cons _ _ _ _ _ checked6892.1 (.cons _ _ _ _ _ checked6893.1 (.cons _ _ _ _ _ checked6894.1 (.cons _ _ _ _ _ checked6895.1 (.cons _ _ _ _ _ checked6896.1 (.cons _ _ _ _ _ checked6897.1 (.cons _ _ _ _ _ checked6898.1 (.cons _ _ _ _ _ checked6899.1 (.cons _ _ _ _ _ checked6900.1 (.cons _ _ _ _ _ checked6901.1 (.cons _ _ _ _ _ checked6902.1 (.cons _ _ _ _ _ checked6903.1 (.cons _ _ _ _ _ checked6904.1 (.cons _ _ _ _ _ checked6905.1 (.cons _ _ _ _ _ checked6906.1 (.cons _ _ _ _ _ checked6907.1 (.cons _ _ _ _ _ checked6908.1 (.cons _ _ _ _ _ checked6909.1 (.cons _ _ _ _ _ checked6910.1 (.cons _ _ _ _ _ checked6911.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6891 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3225 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6848.2,checked6849.2,checked6850.2,checked6851.2,checked6852.2,checked6853.2,checked6854.2,checked6855.2,checked6856.2,checked6857.2,checked6858.2,checked6859.2,checked6860.2,checked6861.2,checked6862.2,checked6863.2,checked6864.2,checked6865.2,checked6866.2,checked6867.2,checked6868.2,checked6869.2,checked6870.2,checked6871.2,checked6872.2,checked6873.2,checked6874.2,checked6875.2,checked6876.2,checked6877.2,checked6878.2,checked6879.2,checked6880.2,checked6881.2,checked6882.2,checked6883.2,checked6884.2,checked6885.2,checked6886.2,checked6887.2,checked6888.2,checked6889.2,checked6890.2,checked6891.2,checked6892.2,checked6893.2,checked6894.2,checked6895.2,checked6896.2,checked6897.2,checked6898.2,checked6899.2,checked6900.2,checked6901.2,checked6902.2,checked6903.2,checked6904.2,checked6905.2,checked6906.2,checked6907.2,checked6908.2,checked6909.2,checked6910.2,checked6911.2]
  decide
end ArtifactPathRoundDispatchGroup107
