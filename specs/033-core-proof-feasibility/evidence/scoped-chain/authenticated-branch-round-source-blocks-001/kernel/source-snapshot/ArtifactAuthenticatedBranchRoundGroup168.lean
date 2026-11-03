import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup168
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10752 : List WordIR.Op := [.bnot 10869]
def bytes10752 : Bytes := ("    let r00002a76: u32 = !r00002a75;\n" : String).toByteArray.data.toList
theorem checked10752 : bytes10752=statementBytes 10870 (op10752.map lower) ∧ bytes10752.length=37 := by core033_kernel_decide
def op10753 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10753 : Bytes := ("    let r00002a77: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10753 : bytes10753=statementBytes 10871 (op10753.map lower) ∧ bytes10753.length=41 := by core033_kernel_decide
def op10754 : List WordIR.Op := [.band 10870 10871]
def bytes10754 : Bytes := ("    let r00002a78: u32 = r00002a76 & r00002a77;\n" : String).toByteArray.data.toList
theorem checked10754 : bytes10754=statementBytes 10872 (op10754.map lower) ∧ bytes10754.length=48 := by core033_kernel_decide
def op10755 : List WordIR.Op := [.bxor 10866 10872]
def bytes10755 : Bytes := ("    let r00002a79: u32 = r00002a72 ^ r00002a78;\n" : String).toByteArray.data.toList
theorem checked10755 : bytes10755=statementBytes 10873 (op10755.map lower) ∧ bytes10755.length=48 := by core033_kernel_decide
def op10756 : List WordIR.Op := [.bnot 10609]
def bytes10756 : Bytes := ("    let r00002a7a: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10756 : bytes10756=statementBytes 10874 (op10756.map lower) ∧ bytes10756.length=37 := by core033_kernel_decide
def op10757 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10757 : Bytes := ("    let r00002a7b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10757 : bytes10757=statementBytes 10875 (op10757.map lower) ∧ bytes10757.length=41 := by core033_kernel_decide
def op10758 : List WordIR.Op := [.badd 10874 10875]
def bytes10758 : Bytes := ("    let r00002a7c: u32 = r00002a7a.wrapping_add(r00002a7b);\n" : String).toByteArray.data.toList
theorem checked10758 : bytes10758=statementBytes 10876 (op10758.map lower) ∧ bytes10758.length=60 := by core033_kernel_decide
def op10759 : List WordIR.Op := [.band 10876 1023]
def bytes10759 : Bytes := ("    let r00002a7d: u32 = r00002a7c & r000003ff;\n" : String).toByteArray.data.toList
theorem checked10759 : bytes10759=statementBytes 10877 (op10759.map lower) ∧ bytes10759.length=48 := by core033_kernel_decide
def op10760 : List WordIR.Op := [.bnot 10609]
def bytes10760 : Bytes := ("    let r00002a7e: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10760 : bytes10760=statementBytes 10878 (op10760.map lower) ∧ bytes10760.length=37 := by core033_kernel_decide
def op10761 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10761 : Bytes := ("    let r00002a7f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10761 : bytes10761=statementBytes 10879 (op10761.map lower) ∧ bytes10761.length=41 := by core033_kernel_decide
def op10762 : List WordIR.Op := [.badd 10878 10879]
def bytes10762 : Bytes := ("    let r00002a80: u32 = r00002a7e.wrapping_add(r00002a7f);\n" : String).toByteArray.data.toList
theorem checked10762 : bytes10762=statementBytes 10880 (op10762.map lower) ∧ bytes10762.length=60 := by core033_kernel_decide
def op10763 : List WordIR.Op := [.bnot 10880]
def bytes10763 : Bytes := ("    let r00002a81: u32 = !r00002a80;\n" : String).toByteArray.data.toList
theorem checked10763 : bytes10763=statementBytes 10881 (op10763.map lower) ∧ bytes10763.length=37 := by core033_kernel_decide
def op10764 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10764 : Bytes := ("    let r00002a82: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10764 : bytes10764=statementBytes 10882 (op10764.map lower) ∧ bytes10764.length=41 := by core033_kernel_decide
def op10765 : List WordIR.Op := [.band 10881 10882]
def bytes10765 : Bytes := ("    let r00002a83: u32 = r00002a81 & r00002a82;\n" : String).toByteArray.data.toList
theorem checked10765 : bytes10765=statementBytes 10883 (op10765.map lower) ∧ bytes10765.length=48 := by core033_kernel_decide
def op10766 : List WordIR.Op := [.bxor 10877 10883]
def bytes10766 : Bytes := ("    let r00002a84: u32 = r00002a7d ^ r00002a83;\n" : String).toByteArray.data.toList
theorem checked10766 : bytes10766=statementBytes 10884 (op10766.map lower) ∧ bytes10766.length=48 := by core033_kernel_decide
def op10767 : List WordIR.Op := [.bnot 10609]
def bytes10767 : Bytes := ("    let r00002a85: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10767 : bytes10767=statementBytes 10885 (op10767.map lower) ∧ bytes10767.length=37 := by core033_kernel_decide
def op10768 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10768 : Bytes := ("    let r00002a86: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10768 : bytes10768=statementBytes 10886 (op10768.map lower) ∧ bytes10768.length=41 := by core033_kernel_decide
def op10769 : List WordIR.Op := [.badd 10885 10886]
def bytes10769 : Bytes := ("    let r00002a87: u32 = r00002a85.wrapping_add(r00002a86);\n" : String).toByteArray.data.toList
theorem checked10769 : bytes10769=statementBytes 10887 (op10769.map lower) ∧ bytes10769.length=60 := by core033_kernel_decide
def op10770 : List WordIR.Op := [.band 10887 1033]
def bytes10770 : Bytes := ("    let r00002a88: u32 = r00002a87 & r00000409;\n" : String).toByteArray.data.toList
theorem checked10770 : bytes10770=statementBytes 10888 (op10770.map lower) ∧ bytes10770.length=48 := by core033_kernel_decide
def op10771 : List WordIR.Op := [.bnot 10609]
def bytes10771 : Bytes := ("    let r00002a89: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10771 : bytes10771=statementBytes 10889 (op10771.map lower) ∧ bytes10771.length=37 := by core033_kernel_decide
def op10772 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10772 : Bytes := ("    let r00002a8a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10772 : bytes10772=statementBytes 10890 (op10772.map lower) ∧ bytes10772.length=41 := by core033_kernel_decide
def op10773 : List WordIR.Op := [.badd 10889 10890]
def bytes10773 : Bytes := ("    let r00002a8b: u32 = r00002a89.wrapping_add(r00002a8a);\n" : String).toByteArray.data.toList
theorem checked10773 : bytes10773=statementBytes 10891 (op10773.map lower) ∧ bytes10773.length=60 := by core033_kernel_decide
def op10774 : List WordIR.Op := [.bnot 10891]
def bytes10774 : Bytes := ("    let r00002a8c: u32 = !r00002a8b;\n" : String).toByteArray.data.toList
theorem checked10774 : bytes10774=statementBytes 10892 (op10774.map lower) ∧ bytes10774.length=37 := by core033_kernel_decide
def op10775 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10775 : Bytes := ("    let r00002a8d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10775 : bytes10775=statementBytes 10893 (op10775.map lower) ∧ bytes10775.length=41 := by core033_kernel_decide
def op10776 : List WordIR.Op := [.band 10892 10893]
def bytes10776 : Bytes := ("    let r00002a8e: u32 = r00002a8c & r00002a8d;\n" : String).toByteArray.data.toList
theorem checked10776 : bytes10776=statementBytes 10894 (op10776.map lower) ∧ bytes10776.length=48 := by core033_kernel_decide
def op10777 : List WordIR.Op := [.bxor 10888 10894]
def bytes10777 : Bytes := ("    let r00002a8f: u32 = r00002a88 ^ r00002a8e;\n" : String).toByteArray.data.toList
theorem checked10777 : bytes10777=statementBytes 10895 (op10777.map lower) ∧ bytes10777.length=48 := by core033_kernel_decide
def op10778 : List WordIR.Op := [.bnot 10609]
def bytes10778 : Bytes := ("    let r00002a90: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10778 : bytes10778=statementBytes 10896 (op10778.map lower) ∧ bytes10778.length=37 := by core033_kernel_decide
def op10779 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10779 : Bytes := ("    let r00002a91: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10779 : bytes10779=statementBytes 10897 (op10779.map lower) ∧ bytes10779.length=41 := by core033_kernel_decide
def op10780 : List WordIR.Op := [.badd 10896 10897]
def bytes10780 : Bytes := ("    let r00002a92: u32 = r00002a90.wrapping_add(r00002a91);\n" : String).toByteArray.data.toList
theorem checked10780 : bytes10780=statementBytes 10898 (op10780.map lower) ∧ bytes10780.length=60 := by core033_kernel_decide
def op10781 : List WordIR.Op := [.band 10898 1043]
def bytes10781 : Bytes := ("    let r00002a93: u32 = r00002a92 & r00000413;\n" : String).toByteArray.data.toList
theorem checked10781 : bytes10781=statementBytes 10899 (op10781.map lower) ∧ bytes10781.length=48 := by core033_kernel_decide
def op10782 : List WordIR.Op := [.bnot 10609]
def bytes10782 : Bytes := ("    let r00002a94: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10782 : bytes10782=statementBytes 10900 (op10782.map lower) ∧ bytes10782.length=37 := by core033_kernel_decide
def op10783 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10783 : Bytes := ("    let r00002a95: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10783 : bytes10783=statementBytes 10901 (op10783.map lower) ∧ bytes10783.length=41 := by core033_kernel_decide
def op10784 : List WordIR.Op := [.badd 10900 10901]
def bytes10784 : Bytes := ("    let r00002a96: u32 = r00002a94.wrapping_add(r00002a95);\n" : String).toByteArray.data.toList
theorem checked10784 : bytes10784=statementBytes 10902 (op10784.map lower) ∧ bytes10784.length=60 := by core033_kernel_decide
def op10785 : List WordIR.Op := [.bnot 10902]
def bytes10785 : Bytes := ("    let r00002a97: u32 = !r00002a96;\n" : String).toByteArray.data.toList
theorem checked10785 : bytes10785=statementBytes 10903 (op10785.map lower) ∧ bytes10785.length=37 := by core033_kernel_decide
def op10786 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10786 : Bytes := ("    let r00002a98: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10786 : bytes10786=statementBytes 10904 (op10786.map lower) ∧ bytes10786.length=41 := by core033_kernel_decide
def op10787 : List WordIR.Op := [.band 10903 10904]
def bytes10787 : Bytes := ("    let r00002a99: u32 = r00002a97 & r00002a98;\n" : String).toByteArray.data.toList
theorem checked10787 : bytes10787=statementBytes 10905 (op10787.map lower) ∧ bytes10787.length=48 := by core033_kernel_decide
def op10788 : List WordIR.Op := [.bxor 10899 10905]
def bytes10788 : Bytes := ("    let r00002a9a: u32 = r00002a93 ^ r00002a99;\n" : String).toByteArray.data.toList
theorem checked10788 : bytes10788=statementBytes 10906 (op10788.map lower) ∧ bytes10788.length=48 := by core033_kernel_decide
def op10789 : List WordIR.Op := [.bnot 10609]
def bytes10789 : Bytes := ("    let r00002a9b: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10789 : bytes10789=statementBytes 10907 (op10789.map lower) ∧ bytes10789.length=37 := by core033_kernel_decide
def op10790 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10790 : Bytes := ("    let r00002a9c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10790 : bytes10790=statementBytes 10908 (op10790.map lower) ∧ bytes10790.length=41 := by core033_kernel_decide
def op10791 : List WordIR.Op := [.badd 10907 10908]
def bytes10791 : Bytes := ("    let r00002a9d: u32 = r00002a9b.wrapping_add(r00002a9c);\n" : String).toByteArray.data.toList
theorem checked10791 : bytes10791=statementBytes 10909 (op10791.map lower) ∧ bytes10791.length=60 := by core033_kernel_decide
def op10792 : List WordIR.Op := [.band 10909 1063]
def bytes10792 : Bytes := ("    let r00002a9e: u32 = r00002a9d & r00000427;\n" : String).toByteArray.data.toList
theorem checked10792 : bytes10792=statementBytes 10910 (op10792.map lower) ∧ bytes10792.length=48 := by core033_kernel_decide
def op10793 : List WordIR.Op := [.bnot 10609]
def bytes10793 : Bytes := ("    let r00002a9f: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10793 : bytes10793=statementBytes 10911 (op10793.map lower) ∧ bytes10793.length=37 := by core033_kernel_decide
def op10794 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10794 : Bytes := ("    let r00002aa0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10794 : bytes10794=statementBytes 10912 (op10794.map lower) ∧ bytes10794.length=41 := by core033_kernel_decide
def op10795 : List WordIR.Op := [.badd 10911 10912]
def bytes10795 : Bytes := ("    let r00002aa1: u32 = r00002a9f.wrapping_add(r00002aa0);\n" : String).toByteArray.data.toList
theorem checked10795 : bytes10795=statementBytes 10913 (op10795.map lower) ∧ bytes10795.length=60 := by core033_kernel_decide
def op10796 : List WordIR.Op := [.bnot 10913]
def bytes10796 : Bytes := ("    let r00002aa2: u32 = !r00002aa1;\n" : String).toByteArray.data.toList
theorem checked10796 : bytes10796=statementBytes 10914 (op10796.map lower) ∧ bytes10796.length=37 := by core033_kernel_decide
def op10797 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10797 : Bytes := ("    let r00002aa3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10797 : bytes10797=statementBytes 10915 (op10797.map lower) ∧ bytes10797.length=41 := by core033_kernel_decide
def op10798 : List WordIR.Op := [.band 10914 10915]
def bytes10798 : Bytes := ("    let r00002aa4: u32 = r00002aa2 & r00002aa3;\n" : String).toByteArray.data.toList
theorem checked10798 : bytes10798=statementBytes 10916 (op10798.map lower) ∧ bytes10798.length=48 := by core033_kernel_decide
def op10799 : List WordIR.Op := [.bxor 10910 10916]
def bytes10799 : Bytes := ("    let r00002aa5: u32 = r00002a9e ^ r00002aa4;\n" : String).toByteArray.data.toList
theorem checked10799 : bytes10799=statementBytes 10917 (op10799.map lower) ∧ bytes10799.length=48 := by core033_kernel_decide
def op10800 : List WordIR.Op := [.bnot 10609]
def bytes10800 : Bytes := ("    let r00002aa6: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10800 : bytes10800=statementBytes 10918 (op10800.map lower) ∧ bytes10800.length=37 := by core033_kernel_decide
def op10801 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10801 : Bytes := ("    let r00002aa7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10801 : bytes10801=statementBytes 10919 (op10801.map lower) ∧ bytes10801.length=41 := by core033_kernel_decide
def op10802 : List WordIR.Op := [.badd 10918 10919]
def bytes10802 : Bytes := ("    let r00002aa8: u32 = r00002aa6.wrapping_add(r00002aa7);\n" : String).toByteArray.data.toList
theorem checked10802 : bytes10802=statementBytes 10920 (op10802.map lower) ∧ bytes10802.length=60 := by core033_kernel_decide
def op10803 : List WordIR.Op := [.band 10920 1083]
def bytes10803 : Bytes := ("    let r00002aa9: u32 = r00002aa8 & r0000043b;\n" : String).toByteArray.data.toList
theorem checked10803 : bytes10803=statementBytes 10921 (op10803.map lower) ∧ bytes10803.length=48 := by core033_kernel_decide
def op10804 : List WordIR.Op := [.bnot 10609]
def bytes10804 : Bytes := ("    let r00002aaa: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10804 : bytes10804=statementBytes 10922 (op10804.map lower) ∧ bytes10804.length=37 := by core033_kernel_decide
def op10805 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10805 : Bytes := ("    let r00002aab: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10805 : bytes10805=statementBytes 10923 (op10805.map lower) ∧ bytes10805.length=41 := by core033_kernel_decide
def op10806 : List WordIR.Op := [.badd 10922 10923]
def bytes10806 : Bytes := ("    let r00002aac: u32 = r00002aaa.wrapping_add(r00002aab);\n" : String).toByteArray.data.toList
theorem checked10806 : bytes10806=statementBytes 10924 (op10806.map lower) ∧ bytes10806.length=60 := by core033_kernel_decide
def op10807 : List WordIR.Op := [.bnot 10924]
def bytes10807 : Bytes := ("    let r00002aad: u32 = !r00002aac;\n" : String).toByteArray.data.toList
theorem checked10807 : bytes10807=statementBytes 10925 (op10807.map lower) ∧ bytes10807.length=37 := by core033_kernel_decide
def op10808 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10808 : Bytes := ("    let r00002aae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10808 : bytes10808=statementBytes 10926 (op10808.map lower) ∧ bytes10808.length=41 := by core033_kernel_decide
def op10809 : List WordIR.Op := [.band 10925 10926]
def bytes10809 : Bytes := ("    let r00002aaf: u32 = r00002aad & r00002aae;\n" : String).toByteArray.data.toList
theorem checked10809 : bytes10809=statementBytes 10927 (op10809.map lower) ∧ bytes10809.length=48 := by core033_kernel_decide
def op10810 : List WordIR.Op := [.bxor 10921 10927]
def bytes10810 : Bytes := ("    let r00002ab0: u32 = r00002aa9 ^ r00002aaf;\n" : String).toByteArray.data.toList
theorem checked10810 : bytes10810=statementBytes 10928 (op10810.map lower) ∧ bytes10810.length=48 := by core033_kernel_decide
def op10811 : List WordIR.Op := [.bnot 10609]
def bytes10811 : Bytes := ("    let r00002ab1: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10811 : bytes10811=statementBytes 10929 (op10811.map lower) ∧ bytes10811.length=37 := by core033_kernel_decide
def op10812 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10812 : Bytes := ("    let r00002ab2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10812 : bytes10812=statementBytes 10930 (op10812.map lower) ∧ bytes10812.length=41 := by core033_kernel_decide
def op10813 : List WordIR.Op := [.badd 10929 10930]
def bytes10813 : Bytes := ("    let r00002ab3: u32 = r00002ab1.wrapping_add(r00002ab2);\n" : String).toByteArray.data.toList
theorem checked10813 : bytes10813=statementBytes 10931 (op10813.map lower) ∧ bytes10813.length=60 := by core033_kernel_decide
def op10814 : List WordIR.Op := [.band 10931 1093]
def bytes10814 : Bytes := ("    let r00002ab4: u32 = r00002ab3 & r00000445;\n" : String).toByteArray.data.toList
theorem checked10814 : bytes10814=statementBytes 10932 (op10814.map lower) ∧ bytes10814.length=48 := by core033_kernel_decide
def op10815 : List WordIR.Op := [.bnot 10609]
def bytes10815 : Bytes := ("    let r00002ab5: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10815 : bytes10815=statementBytes 10933 (op10815.map lower) ∧ bytes10815.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10752,op10753,op10754,op10755,op10756,op10757,op10758,op10759,op10760,op10761,op10762,op10763,op10764,op10765,op10766,op10767,op10768,op10769,op10770,op10771,op10772,op10773,op10774,op10775,op10776,op10777,op10778,op10779,op10780,op10781,op10782,op10783,op10784,op10785,op10786,op10787,op10788,op10789,op10790,op10791,op10792,op10793,op10794,op10795,op10796,op10797,op10798,op10799,op10800,op10801,op10802,op10803,op10804,op10805,op10806,op10807,op10808,op10809,op10810,op10811,op10812,op10813,op10814,op10815]
def chunks : List Bytes := [bytes10752,bytes10753,bytes10754,bytes10755,bytes10756,bytes10757,bytes10758,bytes10759,bytes10760,bytes10761,bytes10762,bytes10763,bytes10764,bytes10765,bytes10766,bytes10767,bytes10768,bytes10769,bytes10770,bytes10771,bytes10772,bytes10773,bytes10774,bytes10775,bytes10776,bytes10777,bytes10778,bytes10779,bytes10780,bytes10781,bytes10782,bytes10783,bytes10784,bytes10785,bytes10786,bytes10787,bytes10788,bytes10789,bytes10790,bytes10791,bytes10792,bytes10793,bytes10794,bytes10795,bytes10796,bytes10797,bytes10798,bytes10799,bytes10800,bytes10801,bytes10802,bytes10803,bytes10804,bytes10805,bytes10806,bytes10807,bytes10808,bytes10809,bytes10810,bytes10811,bytes10812,bytes10813,bytes10814,bytes10815]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10870 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10752.1 (.cons _ _ _ _ _ checked10753.1 (.cons _ _ _ _ _ checked10754.1 (.cons _ _ _ _ _ checked10755.1 (.cons _ _ _ _ _ checked10756.1 (.cons _ _ _ _ _ checked10757.1 (.cons _ _ _ _ _ checked10758.1 (.cons _ _ _ _ _ checked10759.1 (.cons _ _ _ _ _ checked10760.1 (.cons _ _ _ _ _ checked10761.1 (.cons _ _ _ _ _ checked10762.1 (.cons _ _ _ _ _ checked10763.1 (.cons _ _ _ _ _ checked10764.1 (.cons _ _ _ _ _ checked10765.1 (.cons _ _ _ _ _ checked10766.1 (.cons _ _ _ _ _ checked10767.1 (.cons _ _ _ _ _ checked10768.1 (.cons _ _ _ _ _ checked10769.1 (.cons _ _ _ _ _ checked10770.1 (.cons _ _ _ _ _ checked10771.1 (.cons _ _ _ _ _ checked10772.1 (.cons _ _ _ _ _ checked10773.1 (.cons _ _ _ _ _ checked10774.1 (.cons _ _ _ _ _ checked10775.1 (.cons _ _ _ _ _ checked10776.1 (.cons _ _ _ _ _ checked10777.1 (.cons _ _ _ _ _ checked10778.1 (.cons _ _ _ _ _ checked10779.1 (.cons _ _ _ _ _ checked10780.1 (.cons _ _ _ _ _ checked10781.1 (.cons _ _ _ _ _ checked10782.1 (.cons _ _ _ _ _ checked10783.1 (.cons _ _ _ _ _ checked10784.1 (.cons _ _ _ _ _ checked10785.1 (.cons _ _ _ _ _ checked10786.1 (.cons _ _ _ _ _ checked10787.1 (.cons _ _ _ _ _ checked10788.1 (.cons _ _ _ _ _ checked10789.1 (.cons _ _ _ _ _ checked10790.1 (.cons _ _ _ _ _ checked10791.1 (.cons _ _ _ _ _ checked10792.1 (.cons _ _ _ _ _ checked10793.1 (.cons _ _ _ _ _ checked10794.1 (.cons _ _ _ _ _ checked10795.1 (.cons _ _ _ _ _ checked10796.1 (.cons _ _ _ _ _ checked10797.1 (.cons _ _ _ _ _ checked10798.1 (.cons _ _ _ _ _ checked10799.1 (.cons _ _ _ _ _ checked10800.1 (.cons _ _ _ _ _ checked10801.1 (.cons _ _ _ _ _ checked10802.1 (.cons _ _ _ _ _ checked10803.1 (.cons _ _ _ _ _ checked10804.1 (.cons _ _ _ _ _ checked10805.1 (.cons _ _ _ _ _ checked10806.1 (.cons _ _ _ _ _ checked10807.1 (.cons _ _ _ _ _ checked10808.1 (.cons _ _ _ _ _ checked10809.1 (.cons _ _ _ _ _ checked10810.1 (.cons _ _ _ _ _ checked10811.1 (.cons _ _ _ _ _ checked10812.1 (.cons _ _ _ _ _ checked10813.1 (.cons _ _ _ _ _ checked10814.1 (.cons _ _ _ _ _ checked10815.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10870 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2887 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10752.2,checked10753.2,checked10754.2,checked10755.2,checked10756.2,checked10757.2,checked10758.2,checked10759.2,checked10760.2,checked10761.2,checked10762.2,checked10763.2,checked10764.2,checked10765.2,checked10766.2,checked10767.2,checked10768.2,checked10769.2,checked10770.2,checked10771.2,checked10772.2,checked10773.2,checked10774.2,checked10775.2,checked10776.2,checked10777.2,checked10778.2,checked10779.2,checked10780.2,checked10781.2,checked10782.2,checked10783.2,checked10784.2,checked10785.2,checked10786.2,checked10787.2,checked10788.2,checked10789.2,checked10790.2,checked10791.2,checked10792.2,checked10793.2,checked10794.2,checked10795.2,checked10796.2,checked10797.2,checked10798.2,checked10799.2,checked10800.2,checked10801.2,checked10802.2,checked10803.2,checked10804.2,checked10805.2,checked10806.2,checked10807.2,checked10808.2,checked10809.2,checked10810.2,checked10811.2,checked10812.2,checked10813.2,checked10814.2,checked10815.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup168
