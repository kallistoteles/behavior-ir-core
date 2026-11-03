import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup106
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6784 : List WordIR.Op := [.bxor 6877 6879]
def bytes6784 : Bytes := ("    let r00001ae0: u32 = r00001add ^ r00001adf;\n" : String).toByteArray.data.toList
theorem checked6784 : bytes6784=statementBytes 6880 (op6784.map lower) ∧ bytes6784.length=48 := by core033_kernel_decide
def op6785 : List WordIR.Op := [.shr 4575 8]
def bytes6785 : Bytes := ("    let r00001ae1: u32 = r000011df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6785 : bytes6785=statementBytes 6881 (op6785.map lower) ∧ bytes6785.length=54 := by core033_kernel_decide
def op6786 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6786 : Bytes := ("    let r00001ae2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6786 : bytes6786=statementBytes 6882 (op6786.map lower) ∧ bytes6786.length=41 := by core033_kernel_decide
def op6787 : List WordIR.Op := [.bnot 6882]
def bytes6787 : Bytes := ("    let r00001ae3: u32 = !r00001ae2;\n" : String).toByteArray.data.toList
theorem checked6787 : bytes6787=statementBytes 6883 (op6787.map lower) ∧ bytes6787.length=37 := by core033_kernel_decide
def op6788 : List WordIR.Op := [.badd 6881 6883]
def bytes6788 : Bytes := ("    let r00001ae4: u32 = r00001ae1.wrapping_add(r00001ae3);\n" : String).toByteArray.data.toList
theorem checked6788 : bytes6788=statementBytes 6884 (op6788.map lower) ∧ bytes6788.length=60 := by core033_kernel_decide
def op6789 : List WordIR.Op := [.bnot 6884]
def bytes6789 : Bytes := ("    let r00001ae5: u32 = !r00001ae4;\n" : String).toByteArray.data.toList
theorem checked6789 : bytes6789=statementBytes 6885 (op6789.map lower) ∧ bytes6789.length=37 := by core033_kernel_decide
def op6790 : List WordIR.Op := [.band 6880 6885]
def bytes6790 : Bytes := ("    let r00001ae6: u32 = r00001ae0 & r00001ae5;\n" : String).toByteArray.data.toList
theorem checked6790 : bytes6790=statementBytes 6886 (op6790.map lower) ∧ bytes6790.length=48 := by core033_kernel_decide
def op6791 : List WordIR.Op := [.bxor 6876 6886]
def bytes6791 : Bytes := ("    let r00001ae7: u32 = r00001adc ^ r00001ae6;\n" : String).toByteArray.data.toList
theorem checked6791 : bytes6791=statementBytes 6887 (op6791.map lower) ∧ bytes6791.length=48 := by core033_kernel_decide
def op6792 : List WordIR.Op := [.shr 6887 31]
def bytes6792 : Bytes := ("    let r00001ae8: u32 = r00001ae7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6792 : bytes6792=statementBytes 6888 (op6792.map lower) ∧ bytes6792.length=54 := by core033_kernel_decide
def op6793 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6793 : Bytes := ("    let r00001ae9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6793 : bytes6793=statementBytes 6889 (op6793.map lower) ∧ bytes6793.length=41 := by core033_kernel_decide
def op6794 : List WordIR.Op := [.bxor 6888 6889]
def bytes6794 : Bytes := ("    let r00001aea: u32 = r00001ae8 ^ r00001ae9;\n" : String).toByteArray.data.toList
theorem checked6794 : bytes6794=statementBytes 6890 (op6794.map lower) ∧ bytes6794.length=48 := by core033_kernel_decide
def op6795 : List WordIR.Op := [.shr 4627 8]
def bytes6795 : Bytes := ("    let r00001aeb: u32 = r00001213 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6795 : bytes6795=statementBytes 6891 (op6795.map lower) ∧ bytes6795.length=54 := by core033_kernel_decide
def op6796 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6796 : Bytes := ("    let r00001aec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6796 : bytes6796=statementBytes 6892 (op6796.map lower) ∧ bytes6796.length=41 := by core033_kernel_decide
def op6797 : List WordIR.Op := [.bnot 6892]
def bytes6797 : Bytes := ("    let r00001aed: u32 = !r00001aec;\n" : String).toByteArray.data.toList
theorem checked6797 : bytes6797=statementBytes 6893 (op6797.map lower) ∧ bytes6797.length=37 := by core033_kernel_decide
def op6798 : List WordIR.Op := [.band 6891 6893]
def bytes6798 : Bytes := ("    let r00001aee: u32 = r00001aeb & r00001aed;\n" : String).toByteArray.data.toList
theorem checked6798 : bytes6798=statementBytes 6894 (op6798.map lower) ∧ bytes6798.length=48 := by core033_kernel_decide
def op6799 : List WordIR.Op := [.shr 4627 8]
def bytes6799 : Bytes := ("    let r00001aef: u32 = r00001213 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6799 : bytes6799=statementBytes 6895 (op6799.map lower) ∧ bytes6799.length=54 := by core033_kernel_decide
def op6800 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6800 : Bytes := ("    let r00001af0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6800 : bytes6800=statementBytes 6896 (op6800.map lower) ∧ bytes6800.length=41 := by core033_kernel_decide
def op6801 : List WordIR.Op := [.bnot 6896]
def bytes6801 : Bytes := ("    let r00001af1: u32 = !r00001af0;\n" : String).toByteArray.data.toList
theorem checked6801 : bytes6801=statementBytes 6897 (op6801.map lower) ∧ bytes6801.length=37 := by core033_kernel_decide
def op6802 : List WordIR.Op := [.bxor 6895 6897]
def bytes6802 : Bytes := ("    let r00001af2: u32 = r00001aef ^ r00001af1;\n" : String).toByteArray.data.toList
theorem checked6802 : bytes6802=statementBytes 6898 (op6802.map lower) ∧ bytes6802.length=48 := by core033_kernel_decide
def op6803 : List WordIR.Op := [.shr 4627 8]
def bytes6803 : Bytes := ("    let r00001af3: u32 = r00001213 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6803 : bytes6803=statementBytes 6899 (op6803.map lower) ∧ bytes6803.length=54 := by core033_kernel_decide
def op6804 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6804 : Bytes := ("    let r00001af4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6804 : bytes6804=statementBytes 6900 (op6804.map lower) ∧ bytes6804.length=41 := by core033_kernel_decide
def op6805 : List WordIR.Op := [.bnot 6900]
def bytes6805 : Bytes := ("    let r00001af5: u32 = !r00001af4;\n" : String).toByteArray.data.toList
theorem checked6805 : bytes6805=statementBytes 6901 (op6805.map lower) ∧ bytes6805.length=37 := by core033_kernel_decide
def op6806 : List WordIR.Op := [.badd 6899 6901]
def bytes6806 : Bytes := ("    let r00001af6: u32 = r00001af3.wrapping_add(r00001af5);\n" : String).toByteArray.data.toList
theorem checked6806 : bytes6806=statementBytes 6902 (op6806.map lower) ∧ bytes6806.length=60 := by core033_kernel_decide
def op6807 : List WordIR.Op := [.bnot 6902]
def bytes6807 : Bytes := ("    let r00001af7: u32 = !r00001af6;\n" : String).toByteArray.data.toList
theorem checked6807 : bytes6807=statementBytes 6903 (op6807.map lower) ∧ bytes6807.length=37 := by core033_kernel_decide
def op6808 : List WordIR.Op := [.band 6898 6903]
def bytes6808 : Bytes := ("    let r00001af8: u32 = r00001af2 & r00001af7;\n" : String).toByteArray.data.toList
theorem checked6808 : bytes6808=statementBytes 6904 (op6808.map lower) ∧ bytes6808.length=48 := by core033_kernel_decide
def op6809 : List WordIR.Op := [.bxor 6894 6904]
def bytes6809 : Bytes := ("    let r00001af9: u32 = r00001aee ^ r00001af8;\n" : String).toByteArray.data.toList
theorem checked6809 : bytes6809=statementBytes 6905 (op6809.map lower) ∧ bytes6809.length=48 := by core033_kernel_decide
def op6810 : List WordIR.Op := [.shr 6905 31]
def bytes6810 : Bytes := ("    let r00001afa: u32 = r00001af9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6810 : bytes6810=statementBytes 6906 (op6810.map lower) ∧ bytes6810.length=54 := by core033_kernel_decide
def op6811 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6811 : Bytes := ("    let r00001afb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6811 : bytes6811=statementBytes 6907 (op6811.map lower) ∧ bytes6811.length=41 := by core033_kernel_decide
def op6812 : List WordIR.Op := [.bxor 6906 6907]
def bytes6812 : Bytes := ("    let r00001afc: u32 = r00001afa ^ r00001afb;\n" : String).toByteArray.data.toList
theorem checked6812 : bytes6812=statementBytes 6908 (op6812.map lower) ∧ bytes6812.length=48 := by core033_kernel_decide
def op6813 : List WordIR.Op := [.shr 4679 8]
def bytes6813 : Bytes := ("    let r00001afd: u32 = r00001247 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6813 : bytes6813=statementBytes 6909 (op6813.map lower) ∧ bytes6813.length=54 := by core033_kernel_decide
def op6814 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6814 : Bytes := ("    let r00001afe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6814 : bytes6814=statementBytes 6910 (op6814.map lower) ∧ bytes6814.length=41 := by core033_kernel_decide
def op6815 : List WordIR.Op := [.bnot 6910]
def bytes6815 : Bytes := ("    let r00001aff: u32 = !r00001afe;\n" : String).toByteArray.data.toList
theorem checked6815 : bytes6815=statementBytes 6911 (op6815.map lower) ∧ bytes6815.length=37 := by core033_kernel_decide
def op6816 : List WordIR.Op := [.band 6909 6911]
def bytes6816 : Bytes := ("    let r00001b00: u32 = r00001afd & r00001aff;\n" : String).toByteArray.data.toList
theorem checked6816 : bytes6816=statementBytes 6912 (op6816.map lower) ∧ bytes6816.length=48 := by core033_kernel_decide
def op6817 : List WordIR.Op := [.shr 4679 8]
def bytes6817 : Bytes := ("    let r00001b01: u32 = r00001247 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6817 : bytes6817=statementBytes 6913 (op6817.map lower) ∧ bytes6817.length=54 := by core033_kernel_decide
def op6818 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6818 : Bytes := ("    let r00001b02: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6818 : bytes6818=statementBytes 6914 (op6818.map lower) ∧ bytes6818.length=41 := by core033_kernel_decide
def op6819 : List WordIR.Op := [.bnot 6914]
def bytes6819 : Bytes := ("    let r00001b03: u32 = !r00001b02;\n" : String).toByteArray.data.toList
theorem checked6819 : bytes6819=statementBytes 6915 (op6819.map lower) ∧ bytes6819.length=37 := by core033_kernel_decide
def op6820 : List WordIR.Op := [.bxor 6913 6915]
def bytes6820 : Bytes := ("    let r00001b04: u32 = r00001b01 ^ r00001b03;\n" : String).toByteArray.data.toList
theorem checked6820 : bytes6820=statementBytes 6916 (op6820.map lower) ∧ bytes6820.length=48 := by core033_kernel_decide
def op6821 : List WordIR.Op := [.shr 4679 8]
def bytes6821 : Bytes := ("    let r00001b05: u32 = r00001247 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6821 : bytes6821=statementBytes 6917 (op6821.map lower) ∧ bytes6821.length=54 := by core033_kernel_decide
def op6822 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6822 : Bytes := ("    let r00001b06: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6822 : bytes6822=statementBytes 6918 (op6822.map lower) ∧ bytes6822.length=41 := by core033_kernel_decide
def op6823 : List WordIR.Op := [.bnot 6918]
def bytes6823 : Bytes := ("    let r00001b07: u32 = !r00001b06;\n" : String).toByteArray.data.toList
theorem checked6823 : bytes6823=statementBytes 6919 (op6823.map lower) ∧ bytes6823.length=37 := by core033_kernel_decide
def op6824 : List WordIR.Op := [.badd 6917 6919]
def bytes6824 : Bytes := ("    let r00001b08: u32 = r00001b05.wrapping_add(r00001b07);\n" : String).toByteArray.data.toList
theorem checked6824 : bytes6824=statementBytes 6920 (op6824.map lower) ∧ bytes6824.length=60 := by core033_kernel_decide
def op6825 : List WordIR.Op := [.bnot 6920]
def bytes6825 : Bytes := ("    let r00001b09: u32 = !r00001b08;\n" : String).toByteArray.data.toList
theorem checked6825 : bytes6825=statementBytes 6921 (op6825.map lower) ∧ bytes6825.length=37 := by core033_kernel_decide
def op6826 : List WordIR.Op := [.band 6916 6921]
def bytes6826 : Bytes := ("    let r00001b0a: u32 = r00001b04 & r00001b09;\n" : String).toByteArray.data.toList
theorem checked6826 : bytes6826=statementBytes 6922 (op6826.map lower) ∧ bytes6826.length=48 := by core033_kernel_decide
def op6827 : List WordIR.Op := [.bxor 6912 6922]
def bytes6827 : Bytes := ("    let r00001b0b: u32 = r00001b00 ^ r00001b0a;\n" : String).toByteArray.data.toList
theorem checked6827 : bytes6827=statementBytes 6923 (op6827.map lower) ∧ bytes6827.length=48 := by core033_kernel_decide
def op6828 : List WordIR.Op := [.shr 6923 31]
def bytes6828 : Bytes := ("    let r00001b0c: u32 = r00001b0b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6828 : bytes6828=statementBytes 6924 (op6828.map lower) ∧ bytes6828.length=54 := by core033_kernel_decide
def op6829 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6829 : Bytes := ("    let r00001b0d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6829 : bytes6829=statementBytes 6925 (op6829.map lower) ∧ bytes6829.length=41 := by core033_kernel_decide
def op6830 : List WordIR.Op := [.bxor 6924 6925]
def bytes6830 : Bytes := ("    let r00001b0e: u32 = r00001b0c ^ r00001b0d;\n" : String).toByteArray.data.toList
theorem checked6830 : bytes6830=statementBytes 6926 (op6830.map lower) ∧ bytes6830.length=48 := by core033_kernel_decide
def op6831 : List WordIR.Op := [.shr 4731 8]
def bytes6831 : Bytes := ("    let r00001b0f: u32 = r0000127b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6831 : bytes6831=statementBytes 6927 (op6831.map lower) ∧ bytes6831.length=54 := by core033_kernel_decide
def op6832 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6832 : Bytes := ("    let r00001b10: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6832 : bytes6832=statementBytes 6928 (op6832.map lower) ∧ bytes6832.length=41 := by core033_kernel_decide
def op6833 : List WordIR.Op := [.bnot 6928]
def bytes6833 : Bytes := ("    let r00001b11: u32 = !r00001b10;\n" : String).toByteArray.data.toList
theorem checked6833 : bytes6833=statementBytes 6929 (op6833.map lower) ∧ bytes6833.length=37 := by core033_kernel_decide
def op6834 : List WordIR.Op := [.band 6927 6929]
def bytes6834 : Bytes := ("    let r00001b12: u32 = r00001b0f & r00001b11;\n" : String).toByteArray.data.toList
theorem checked6834 : bytes6834=statementBytes 6930 (op6834.map lower) ∧ bytes6834.length=48 := by core033_kernel_decide
def op6835 : List WordIR.Op := [.shr 4731 8]
def bytes6835 : Bytes := ("    let r00001b13: u32 = r0000127b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6835 : bytes6835=statementBytes 6931 (op6835.map lower) ∧ bytes6835.length=54 := by core033_kernel_decide
def op6836 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6836 : Bytes := ("    let r00001b14: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6836 : bytes6836=statementBytes 6932 (op6836.map lower) ∧ bytes6836.length=41 := by core033_kernel_decide
def op6837 : List WordIR.Op := [.bnot 6932]
def bytes6837 : Bytes := ("    let r00001b15: u32 = !r00001b14;\n" : String).toByteArray.data.toList
theorem checked6837 : bytes6837=statementBytes 6933 (op6837.map lower) ∧ bytes6837.length=37 := by core033_kernel_decide
def op6838 : List WordIR.Op := [.bxor 6931 6933]
def bytes6838 : Bytes := ("    let r00001b16: u32 = r00001b13 ^ r00001b15;\n" : String).toByteArray.data.toList
theorem checked6838 : bytes6838=statementBytes 6934 (op6838.map lower) ∧ bytes6838.length=48 := by core033_kernel_decide
def op6839 : List WordIR.Op := [.shr 4731 8]
def bytes6839 : Bytes := ("    let r00001b17: u32 = r0000127b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6839 : bytes6839=statementBytes 6935 (op6839.map lower) ∧ bytes6839.length=54 := by core033_kernel_decide
def op6840 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6840 : Bytes := ("    let r00001b18: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6840 : bytes6840=statementBytes 6936 (op6840.map lower) ∧ bytes6840.length=41 := by core033_kernel_decide
def op6841 : List WordIR.Op := [.bnot 6936]
def bytes6841 : Bytes := ("    let r00001b19: u32 = !r00001b18;\n" : String).toByteArray.data.toList
theorem checked6841 : bytes6841=statementBytes 6937 (op6841.map lower) ∧ bytes6841.length=37 := by core033_kernel_decide
def op6842 : List WordIR.Op := [.badd 6935 6937]
def bytes6842 : Bytes := ("    let r00001b1a: u32 = r00001b17.wrapping_add(r00001b19);\n" : String).toByteArray.data.toList
theorem checked6842 : bytes6842=statementBytes 6938 (op6842.map lower) ∧ bytes6842.length=60 := by core033_kernel_decide
def op6843 : List WordIR.Op := [.bnot 6938]
def bytes6843 : Bytes := ("    let r00001b1b: u32 = !r00001b1a;\n" : String).toByteArray.data.toList
theorem checked6843 : bytes6843=statementBytes 6939 (op6843.map lower) ∧ bytes6843.length=37 := by core033_kernel_decide
def op6844 : List WordIR.Op := [.band 6934 6939]
def bytes6844 : Bytes := ("    let r00001b1c: u32 = r00001b16 & r00001b1b;\n" : String).toByteArray.data.toList
theorem checked6844 : bytes6844=statementBytes 6940 (op6844.map lower) ∧ bytes6844.length=48 := by core033_kernel_decide
def op6845 : List WordIR.Op := [.bxor 6930 6940]
def bytes6845 : Bytes := ("    let r00001b1d: u32 = r00001b12 ^ r00001b1c;\n" : String).toByteArray.data.toList
theorem checked6845 : bytes6845=statementBytes 6941 (op6845.map lower) ∧ bytes6845.length=48 := by core033_kernel_decide
def op6846 : List WordIR.Op := [.shr 6941 31]
def bytes6846 : Bytes := ("    let r00001b1e: u32 = r00001b1d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6846 : bytes6846=statementBytes 6942 (op6846.map lower) ∧ bytes6846.length=54 := by core033_kernel_decide
def op6847 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6847 : Bytes := ("    let r00001b1f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6847 : bytes6847=statementBytes 6943 (op6847.map lower) ∧ bytes6847.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6784,op6785,op6786,op6787,op6788,op6789,op6790,op6791,op6792,op6793,op6794,op6795,op6796,op6797,op6798,op6799,op6800,op6801,op6802,op6803,op6804,op6805,op6806,op6807,op6808,op6809,op6810,op6811,op6812,op6813,op6814,op6815,op6816,op6817,op6818,op6819,op6820,op6821,op6822,op6823,op6824,op6825,op6826,op6827,op6828,op6829,op6830,op6831,op6832,op6833,op6834,op6835,op6836,op6837,op6838,op6839,op6840,op6841,op6842,op6843,op6844,op6845,op6846,op6847]
def chunks : List Bytes := [bytes6784,bytes6785,bytes6786,bytes6787,bytes6788,bytes6789,bytes6790,bytes6791,bytes6792,bytes6793,bytes6794,bytes6795,bytes6796,bytes6797,bytes6798,bytes6799,bytes6800,bytes6801,bytes6802,bytes6803,bytes6804,bytes6805,bytes6806,bytes6807,bytes6808,bytes6809,bytes6810,bytes6811,bytes6812,bytes6813,bytes6814,bytes6815,bytes6816,bytes6817,bytes6818,bytes6819,bytes6820,bytes6821,bytes6822,bytes6823,bytes6824,bytes6825,bytes6826,bytes6827,bytes6828,bytes6829,bytes6830,bytes6831,bytes6832,bytes6833,bytes6834,bytes6835,bytes6836,bytes6837,bytes6838,bytes6839,bytes6840,bytes6841,bytes6842,bytes6843,bytes6844,bytes6845,bytes6846,bytes6847]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6880 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6784.1 (.cons _ _ _ _ _ checked6785.1 (.cons _ _ _ _ _ checked6786.1 (.cons _ _ _ _ _ checked6787.1 (.cons _ _ _ _ _ checked6788.1 (.cons _ _ _ _ _ checked6789.1 (.cons _ _ _ _ _ checked6790.1 (.cons _ _ _ _ _ checked6791.1 (.cons _ _ _ _ _ checked6792.1 (.cons _ _ _ _ _ checked6793.1 (.cons _ _ _ _ _ checked6794.1 (.cons _ _ _ _ _ checked6795.1 (.cons _ _ _ _ _ checked6796.1 (.cons _ _ _ _ _ checked6797.1 (.cons _ _ _ _ _ checked6798.1 (.cons _ _ _ _ _ checked6799.1 (.cons _ _ _ _ _ checked6800.1 (.cons _ _ _ _ _ checked6801.1 (.cons _ _ _ _ _ checked6802.1 (.cons _ _ _ _ _ checked6803.1 (.cons _ _ _ _ _ checked6804.1 (.cons _ _ _ _ _ checked6805.1 (.cons _ _ _ _ _ checked6806.1 (.cons _ _ _ _ _ checked6807.1 (.cons _ _ _ _ _ checked6808.1 (.cons _ _ _ _ _ checked6809.1 (.cons _ _ _ _ _ checked6810.1 (.cons _ _ _ _ _ checked6811.1 (.cons _ _ _ _ _ checked6812.1 (.cons _ _ _ _ _ checked6813.1 (.cons _ _ _ _ _ checked6814.1 (.cons _ _ _ _ _ checked6815.1 (.cons _ _ _ _ _ checked6816.1 (.cons _ _ _ _ _ checked6817.1 (.cons _ _ _ _ _ checked6818.1 (.cons _ _ _ _ _ checked6819.1 (.cons _ _ _ _ _ checked6820.1 (.cons _ _ _ _ _ checked6821.1 (.cons _ _ _ _ _ checked6822.1 (.cons _ _ _ _ _ checked6823.1 (.cons _ _ _ _ _ checked6824.1 (.cons _ _ _ _ _ checked6825.1 (.cons _ _ _ _ _ checked6826.1 (.cons _ _ _ _ _ checked6827.1 (.cons _ _ _ _ _ checked6828.1 (.cons _ _ _ _ _ checked6829.1 (.cons _ _ _ _ _ checked6830.1 (.cons _ _ _ _ _ checked6831.1 (.cons _ _ _ _ _ checked6832.1 (.cons _ _ _ _ _ checked6833.1 (.cons _ _ _ _ _ checked6834.1 (.cons _ _ _ _ _ checked6835.1 (.cons _ _ _ _ _ checked6836.1 (.cons _ _ _ _ _ checked6837.1 (.cons _ _ _ _ _ checked6838.1 (.cons _ _ _ _ _ checked6839.1 (.cons _ _ _ _ _ checked6840.1 (.cons _ _ _ _ _ checked6841.1 (.cons _ _ _ _ _ checked6842.1 (.cons _ _ _ _ _ checked6843.1 (.cons _ _ _ _ _ checked6844.1 (.cons _ _ _ _ _ checked6845.1 (.cons _ _ _ _ _ checked6846.1 (.cons _ _ _ _ _ checked6847.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6880 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6784.2,checked6785.2,checked6786.2,checked6787.2,checked6788.2,checked6789.2,checked6790.2,checked6791.2,checked6792.2,checked6793.2,checked6794.2,checked6795.2,checked6796.2,checked6797.2,checked6798.2,checked6799.2,checked6800.2,checked6801.2,checked6802.2,checked6803.2,checked6804.2,checked6805.2,checked6806.2,checked6807.2,checked6808.2,checked6809.2,checked6810.2,checked6811.2,checked6812.2,checked6813.2,checked6814.2,checked6815.2,checked6816.2,checked6817.2,checked6818.2,checked6819.2,checked6820.2,checked6821.2,checked6822.2,checked6823.2,checked6824.2,checked6825.2,checked6826.2,checked6827.2,checked6828.2,checked6829.2,checked6830.2,checked6831.2,checked6832.2,checked6833.2,checked6834.2,checked6835.2,checked6836.2,checked6837.2,checked6838.2,checked6839.2,checked6840.2,checked6841.2,checked6842.2,checked6843.2,checked6844.2,checked6845.2,checked6846.2,checked6847.2]
  decide
end ArtifactPairedPathRoundGroup106
