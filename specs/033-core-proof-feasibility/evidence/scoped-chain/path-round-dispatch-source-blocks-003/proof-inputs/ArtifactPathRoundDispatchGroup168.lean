import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup168
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10752 : List WordIR.Op := [.bnot 10794]
def bytes10752 : Bytes := ("    let r00002a2b: u32 = !r00002a2a;\n" : String).toByteArray.data.toList
theorem checked10752 : bytes10752=statementBytes 10795 (op10752.map lower) ∧ bytes10752.length=37 := by core033_kernel_decide
def op10753 : List WordIR.Op := [.band 10795 206]
def bytes10753 : Bytes := ("    let r00002a2c: u32 = r00002a2b & r000000ce;\n" : String).toByteArray.data.toList
theorem checked10753 : bytes10753=statementBytes 10796 (op10753.map lower) ∧ bytes10753.length=48 := by core033_kernel_decide
def op10754 : List WordIR.Op := [.bxor 10770 10796]
def bytes10754 : Bytes := ("    let r00002a2d: u32 = r00002a12 ^ r00002a2c;\n" : String).toByteArray.data.toList
theorem checked10754 : bytes10754=statementBytes 10797 (op10754.map lower) ∧ bytes10754.length=48 := by core033_kernel_decide
def op10755 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10755 : Bytes := ("    let r00002a2e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10755 : bytes10755=statementBytes 10798 (op10755.map lower) ∧ bytes10755.length=41 := by core033_kernel_decide
def op10756 : List WordIR.Op := [.bxor 0 10798]
def bytes10756 : Bytes := ("    let r00002a2f: u32 = r00000000 ^ r00002a2e;\n" : String).toByteArray.data.toList
theorem checked10756 : bytes10756=statementBytes 10799 (op10756.map lower) ∧ bytes10756.length=48 := by core033_kernel_decide
def op10757 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10757 : Bytes := ("    let r00002a30: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10757 : bytes10757=statementBytes 10800 (op10757.map lower) ∧ bytes10757.length=41 := by core033_kernel_decide
def op10758 : List WordIR.Op := [.bnot 10800]
def bytes10758 : Bytes := ("    let r00002a31: u32 = !r00002a30;\n" : String).toByteArray.data.toList
theorem checked10758 : bytes10758=statementBytes 10801 (op10758.map lower) ∧ bytes10758.length=37 := by core033_kernel_decide
def op10759 : List WordIR.Op := [.band 10799 10801]
def bytes10759 : Bytes := ("    let r00002a32: u32 = r00002a2f & r00002a31;\n" : String).toByteArray.data.toList
theorem checked10759 : bytes10759=statementBytes 10802 (op10759.map lower) ∧ bytes10759.length=48 := by core033_kernel_decide
def op10760 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10760 : Bytes := ("    let r00002a33: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10760 : bytes10760=statementBytes 10803 (op10760.map lower) ∧ bytes10760.length=41 := by core033_kernel_decide
def op10761 : List WordIR.Op := [.bxor 0 10803]
def bytes10761 : Bytes := ("    let r00002a34: u32 = r00000000 ^ r00002a33;\n" : String).toByteArray.data.toList
theorem checked10761 : bytes10761=statementBytes 10804 (op10761.map lower) ∧ bytes10761.length=48 := by core033_kernel_decide
def op10762 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10762 : Bytes := ("    let r00002a35: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10762 : bytes10762=statementBytes 10805 (op10762.map lower) ∧ bytes10762.length=41 := by core033_kernel_decide
def op10763 : List WordIR.Op := [.bnot 10805]
def bytes10763 : Bytes := ("    let r00002a36: u32 = !r00002a35;\n" : String).toByteArray.data.toList
theorem checked10763 : bytes10763=statementBytes 10806 (op10763.map lower) ∧ bytes10763.length=37 := by core033_kernel_decide
def op10764 : List WordIR.Op := [.bxor 10804 10806]
def bytes10764 : Bytes := ("    let r00002a37: u32 = r00002a34 ^ r00002a36;\n" : String).toByteArray.data.toList
theorem checked10764 : bytes10764=statementBytes 10807 (op10764.map lower) ∧ bytes10764.length=48 := by core033_kernel_decide
def op10765 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10765 : Bytes := ("    let r00002a38: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10765 : bytes10765=statementBytes 10808 (op10765.map lower) ∧ bytes10765.length=41 := by core033_kernel_decide
def op10766 : List WordIR.Op := [.bxor 0 10808]
def bytes10766 : Bytes := ("    let r00002a39: u32 = r00000000 ^ r00002a38;\n" : String).toByteArray.data.toList
theorem checked10766 : bytes10766=statementBytes 10809 (op10766.map lower) ∧ bytes10766.length=48 := by core033_kernel_decide
def op10767 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10767 : Bytes := ("    let r00002a3a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10767 : bytes10767=statementBytes 10810 (op10767.map lower) ∧ bytes10767.length=41 := by core033_kernel_decide
def op10768 : List WordIR.Op := [.bnot 10810]
def bytes10768 : Bytes := ("    let r00002a3b: u32 = !r00002a3a;\n" : String).toByteArray.data.toList
theorem checked10768 : bytes10768=statementBytes 10811 (op10768.map lower) ∧ bytes10768.length=37 := by core033_kernel_decide
def op10769 : List WordIR.Op := [.badd 10809 10811]
def bytes10769 : Bytes := ("    let r00002a3c: u32 = r00002a39.wrapping_add(r00002a3b);\n" : String).toByteArray.data.toList
theorem checked10769 : bytes10769=statementBytes 10812 (op10769.map lower) ∧ bytes10769.length=60 := by core033_kernel_decide
def op10770 : List WordIR.Op := [.bnot 10812]
def bytes10770 : Bytes := ("    let r00002a3d: u32 = !r00002a3c;\n" : String).toByteArray.data.toList
theorem checked10770 : bytes10770=statementBytes 10813 (op10770.map lower) ∧ bytes10770.length=37 := by core033_kernel_decide
def op10771 : List WordIR.Op := [.band 10807 10813]
def bytes10771 : Bytes := ("    let r00002a3e: u32 = r00002a37 & r00002a3d;\n" : String).toByteArray.data.toList
theorem checked10771 : bytes10771=statementBytes 10814 (op10771.map lower) ∧ bytes10771.length=48 := by core033_kernel_decide
def op10772 : List WordIR.Op := [.bxor 10802 10814]
def bytes10772 : Bytes := ("    let r00002a3f: u32 = r00002a32 ^ r00002a3e;\n" : String).toByteArray.data.toList
theorem checked10772 : bytes10772=statementBytes 10815 (op10772.map lower) ∧ bytes10772.length=48 := by core033_kernel_decide
def op10773 : List WordIR.Op := [.shr 10815 31]
def bytes10773 : Bytes := ("    let r00002a40: u32 = r00002a3f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10773 : bytes10773=statementBytes 10816 (op10773.map lower) ∧ bytes10773.length=54 := by core033_kernel_decide
def op10774 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10774 : Bytes := ("    let r00002a41: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10774 : bytes10774=statementBytes 10817 (op10774.map lower) ∧ bytes10774.length=41 := by core033_kernel_decide
def op10775 : List WordIR.Op := [.bxor 10816 10817]
def bytes10775 : Bytes := ("    let r00002a42: u32 = r00002a40 ^ r00002a41;\n" : String).toByteArray.data.toList
theorem checked10775 : bytes10775=statementBytes 10818 (op10775.map lower) ∧ bytes10775.length=48 := by core033_kernel_decide
def op10776 : List WordIR.Op := [.bnot 10818]
def bytes10776 : Bytes := ("    let r00002a43: u32 = !r00002a42;\n" : String).toByteArray.data.toList
theorem checked10776 : bytes10776=statementBytes 10819 (op10776.map lower) ∧ bytes10776.length=37 := by core033_kernel_decide
def op10777 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10777 : Bytes := ("    let r00002a44: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10777 : bytes10777=statementBytes 10820 (op10777.map lower) ∧ bytes10777.length=41 := by core033_kernel_decide
def op10778 : List WordIR.Op := [.badd 10819 10820]
def bytes10778 : Bytes := ("    let r00002a45: u32 = r00002a43.wrapping_add(r00002a44);\n" : String).toByteArray.data.toList
theorem checked10778 : bytes10778=statementBytes 10821 (op10778.map lower) ∧ bytes10778.length=60 := by core033_kernel_decide
def op10779 : List WordIR.Op := [.band 10821 9886]
def bytes10779 : Bytes := ("    let r00002a46: u32 = r00002a45 & r0000269e;\n" : String).toByteArray.data.toList
theorem checked10779 : bytes10779=statementBytes 10822 (op10779.map lower) ∧ bytes10779.length=48 := by core033_kernel_decide
def op10780 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10780 : Bytes := ("    let r00002a47: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10780 : bytes10780=statementBytes 10823 (op10780.map lower) ∧ bytes10780.length=41 := by core033_kernel_decide
def op10781 : List WordIR.Op := [.bxor 0 10823]
def bytes10781 : Bytes := ("    let r00002a48: u32 = r00000000 ^ r00002a47;\n" : String).toByteArray.data.toList
theorem checked10781 : bytes10781=statementBytes 10824 (op10781.map lower) ∧ bytes10781.length=48 := by core033_kernel_decide
def op10782 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10782 : Bytes := ("    let r00002a49: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10782 : bytes10782=statementBytes 10825 (op10782.map lower) ∧ bytes10782.length=41 := by core033_kernel_decide
def op10783 : List WordIR.Op := [.bnot 10825]
def bytes10783 : Bytes := ("    let r00002a4a: u32 = !r00002a49;\n" : String).toByteArray.data.toList
theorem checked10783 : bytes10783=statementBytes 10826 (op10783.map lower) ∧ bytes10783.length=37 := by core033_kernel_decide
def op10784 : List WordIR.Op := [.band 10824 10826]
def bytes10784 : Bytes := ("    let r00002a4b: u32 = r00002a48 & r00002a4a;\n" : String).toByteArray.data.toList
theorem checked10784 : bytes10784=statementBytes 10827 (op10784.map lower) ∧ bytes10784.length=48 := by core033_kernel_decide
def op10785 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10785 : Bytes := ("    let r00002a4c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10785 : bytes10785=statementBytes 10828 (op10785.map lower) ∧ bytes10785.length=41 := by core033_kernel_decide
def op10786 : List WordIR.Op := [.bxor 0 10828]
def bytes10786 : Bytes := ("    let r00002a4d: u32 = r00000000 ^ r00002a4c;\n" : String).toByteArray.data.toList
theorem checked10786 : bytes10786=statementBytes 10829 (op10786.map lower) ∧ bytes10786.length=48 := by core033_kernel_decide
def op10787 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10787 : Bytes := ("    let r00002a4e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10787 : bytes10787=statementBytes 10830 (op10787.map lower) ∧ bytes10787.length=41 := by core033_kernel_decide
def op10788 : List WordIR.Op := [.bnot 10830]
def bytes10788 : Bytes := ("    let r00002a4f: u32 = !r00002a4e;\n" : String).toByteArray.data.toList
theorem checked10788 : bytes10788=statementBytes 10831 (op10788.map lower) ∧ bytes10788.length=37 := by core033_kernel_decide
def op10789 : List WordIR.Op := [.bxor 10829 10831]
def bytes10789 : Bytes := ("    let r00002a50: u32 = r00002a4d ^ r00002a4f;\n" : String).toByteArray.data.toList
theorem checked10789 : bytes10789=statementBytes 10832 (op10789.map lower) ∧ bytes10789.length=48 := by core033_kernel_decide
def op10790 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10790 : Bytes := ("    let r00002a51: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10790 : bytes10790=statementBytes 10833 (op10790.map lower) ∧ bytes10790.length=41 := by core033_kernel_decide
def op10791 : List WordIR.Op := [.bxor 0 10833]
def bytes10791 : Bytes := ("    let r00002a52: u32 = r00000000 ^ r00002a51;\n" : String).toByteArray.data.toList
theorem checked10791 : bytes10791=statementBytes 10834 (op10791.map lower) ∧ bytes10791.length=48 := by core033_kernel_decide
def op10792 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10792 : Bytes := ("    let r00002a53: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10792 : bytes10792=statementBytes 10835 (op10792.map lower) ∧ bytes10792.length=41 := by core033_kernel_decide
def op10793 : List WordIR.Op := [.bnot 10835]
def bytes10793 : Bytes := ("    let r00002a54: u32 = !r00002a53;\n" : String).toByteArray.data.toList
theorem checked10793 : bytes10793=statementBytes 10836 (op10793.map lower) ∧ bytes10793.length=37 := by core033_kernel_decide
def op10794 : List WordIR.Op := [.badd 10834 10836]
def bytes10794 : Bytes := ("    let r00002a55: u32 = r00002a52.wrapping_add(r00002a54);\n" : String).toByteArray.data.toList
theorem checked10794 : bytes10794=statementBytes 10837 (op10794.map lower) ∧ bytes10794.length=60 := by core033_kernel_decide
def op10795 : List WordIR.Op := [.bnot 10837]
def bytes10795 : Bytes := ("    let r00002a56: u32 = !r00002a55;\n" : String).toByteArray.data.toList
theorem checked10795 : bytes10795=statementBytes 10838 (op10795.map lower) ∧ bytes10795.length=37 := by core033_kernel_decide
def op10796 : List WordIR.Op := [.band 10832 10838]
def bytes10796 : Bytes := ("    let r00002a57: u32 = r00002a50 & r00002a56;\n" : String).toByteArray.data.toList
theorem checked10796 : bytes10796=statementBytes 10839 (op10796.map lower) ∧ bytes10796.length=48 := by core033_kernel_decide
def op10797 : List WordIR.Op := [.bxor 10827 10839]
def bytes10797 : Bytes := ("    let r00002a58: u32 = r00002a4b ^ r00002a57;\n" : String).toByteArray.data.toList
theorem checked10797 : bytes10797=statementBytes 10840 (op10797.map lower) ∧ bytes10797.length=48 := by core033_kernel_decide
def op10798 : List WordIR.Op := [.shr 10840 31]
def bytes10798 : Bytes := ("    let r00002a59: u32 = r00002a58 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10798 : bytes10798=statementBytes 10841 (op10798.map lower) ∧ bytes10798.length=54 := by core033_kernel_decide
def op10799 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10799 : Bytes := ("    let r00002a5a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10799 : bytes10799=statementBytes 10842 (op10799.map lower) ∧ bytes10799.length=41 := by core033_kernel_decide
def op10800 : List WordIR.Op := [.bxor 10841 10842]
def bytes10800 : Bytes := ("    let r00002a5b: u32 = r00002a59 ^ r00002a5a;\n" : String).toByteArray.data.toList
theorem checked10800 : bytes10800=statementBytes 10843 (op10800.map lower) ∧ bytes10800.length=48 := by core033_kernel_decide
def op10801 : List WordIR.Op := [.bnot 10843]
def bytes10801 : Bytes := ("    let r00002a5c: u32 = !r00002a5b;\n" : String).toByteArray.data.toList
theorem checked10801 : bytes10801=statementBytes 10844 (op10801.map lower) ∧ bytes10801.length=37 := by core033_kernel_decide
def op10802 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10802 : Bytes := ("    let r00002a5d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10802 : bytes10802=statementBytes 10845 (op10802.map lower) ∧ bytes10802.length=41 := by core033_kernel_decide
def op10803 : List WordIR.Op := [.badd 10844 10845]
def bytes10803 : Bytes := ("    let r00002a5e: u32 = r00002a5c.wrapping_add(r00002a5d);\n" : String).toByteArray.data.toList
theorem checked10803 : bytes10803=statementBytes 10846 (op10803.map lower) ∧ bytes10803.length=60 := by core033_kernel_decide
def op10804 : List WordIR.Op := [.bnot 10846]
def bytes10804 : Bytes := ("    let r00002a5f: u32 = !r00002a5e;\n" : String).toByteArray.data.toList
theorem checked10804 : bytes10804=statementBytes 10847 (op10804.map lower) ∧ bytes10804.length=37 := by core033_kernel_decide
def op10805 : List WordIR.Op := [.band 10847 217]
def bytes10805 : Bytes := ("    let r00002a60: u32 = r00002a5f & r000000d9;\n" : String).toByteArray.data.toList
theorem checked10805 : bytes10805=statementBytes 10848 (op10805.map lower) ∧ bytes10805.length=48 := by core033_kernel_decide
def op10806 : List WordIR.Op := [.bxor 10822 10848]
def bytes10806 : Bytes := ("    let r00002a61: u32 = r00002a46 ^ r00002a60;\n" : String).toByteArray.data.toList
theorem checked10806 : bytes10806=statementBytes 10849 (op10806.map lower) ∧ bytes10806.length=48 := by core033_kernel_decide
def op10807 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10807 : Bytes := ("    let r00002a62: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10807 : bytes10807=statementBytes 10850 (op10807.map lower) ∧ bytes10807.length=41 := by core033_kernel_decide
def op10808 : List WordIR.Op := [.bxor 0 10850]
def bytes10808 : Bytes := ("    let r00002a63: u32 = r00000000 ^ r00002a62;\n" : String).toByteArray.data.toList
theorem checked10808 : bytes10808=statementBytes 10851 (op10808.map lower) ∧ bytes10808.length=48 := by core033_kernel_decide
def op10809 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10809 : Bytes := ("    let r00002a64: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10809 : bytes10809=statementBytes 10852 (op10809.map lower) ∧ bytes10809.length=41 := by core033_kernel_decide
def op10810 : List WordIR.Op := [.bnot 10852]
def bytes10810 : Bytes := ("    let r00002a65: u32 = !r00002a64;\n" : String).toByteArray.data.toList
theorem checked10810 : bytes10810=statementBytes 10853 (op10810.map lower) ∧ bytes10810.length=37 := by core033_kernel_decide
def op10811 : List WordIR.Op := [.band 10851 10853]
def bytes10811 : Bytes := ("    let r00002a66: u32 = r00002a63 & r00002a65;\n" : String).toByteArray.data.toList
theorem checked10811 : bytes10811=statementBytes 10854 (op10811.map lower) ∧ bytes10811.length=48 := by core033_kernel_decide
def op10812 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10812 : Bytes := ("    let r00002a67: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10812 : bytes10812=statementBytes 10855 (op10812.map lower) ∧ bytes10812.length=41 := by core033_kernel_decide
def op10813 : List WordIR.Op := [.bxor 0 10855]
def bytes10813 : Bytes := ("    let r00002a68: u32 = r00000000 ^ r00002a67;\n" : String).toByteArray.data.toList
theorem checked10813 : bytes10813=statementBytes 10856 (op10813.map lower) ∧ bytes10813.length=48 := by core033_kernel_decide
def op10814 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10814 : Bytes := ("    let r00002a69: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10814 : bytes10814=statementBytes 10857 (op10814.map lower) ∧ bytes10814.length=41 := by core033_kernel_decide
def op10815 : List WordIR.Op := [.bnot 10857]
def bytes10815 : Bytes := ("    let r00002a6a: u32 = !r00002a69;\n" : String).toByteArray.data.toList
theorem checked10815 : bytes10815=statementBytes 10858 (op10815.map lower) ∧ bytes10815.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10752,op10753,op10754,op10755,op10756,op10757,op10758,op10759,op10760,op10761,op10762,op10763,op10764,op10765,op10766,op10767,op10768,op10769,op10770,op10771,op10772,op10773,op10774,op10775,op10776,op10777,op10778,op10779,op10780,op10781,op10782,op10783,op10784,op10785,op10786,op10787,op10788,op10789,op10790,op10791,op10792,op10793,op10794,op10795,op10796,op10797,op10798,op10799,op10800,op10801,op10802,op10803,op10804,op10805,op10806,op10807,op10808,op10809,op10810,op10811,op10812,op10813,op10814,op10815]
def chunks : List Bytes := [bytes10752,bytes10753,bytes10754,bytes10755,bytes10756,bytes10757,bytes10758,bytes10759,bytes10760,bytes10761,bytes10762,bytes10763,bytes10764,bytes10765,bytes10766,bytes10767,bytes10768,bytes10769,bytes10770,bytes10771,bytes10772,bytes10773,bytes10774,bytes10775,bytes10776,bytes10777,bytes10778,bytes10779,bytes10780,bytes10781,bytes10782,bytes10783,bytes10784,bytes10785,bytes10786,bytes10787,bytes10788,bytes10789,bytes10790,bytes10791,bytes10792,bytes10793,bytes10794,bytes10795,bytes10796,bytes10797,bytes10798,bytes10799,bytes10800,bytes10801,bytes10802,bytes10803,bytes10804,bytes10805,bytes10806,bytes10807,bytes10808,bytes10809,bytes10810,bytes10811,bytes10812,bytes10813,bytes10814,bytes10815]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10795 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10752.1 (.cons _ _ _ _ _ checked10753.1 (.cons _ _ _ _ _ checked10754.1 (.cons _ _ _ _ _ checked10755.1 (.cons _ _ _ _ _ checked10756.1 (.cons _ _ _ _ _ checked10757.1 (.cons _ _ _ _ _ checked10758.1 (.cons _ _ _ _ _ checked10759.1 (.cons _ _ _ _ _ checked10760.1 (.cons _ _ _ _ _ checked10761.1 (.cons _ _ _ _ _ checked10762.1 (.cons _ _ _ _ _ checked10763.1 (.cons _ _ _ _ _ checked10764.1 (.cons _ _ _ _ _ checked10765.1 (.cons _ _ _ _ _ checked10766.1 (.cons _ _ _ _ _ checked10767.1 (.cons _ _ _ _ _ checked10768.1 (.cons _ _ _ _ _ checked10769.1 (.cons _ _ _ _ _ checked10770.1 (.cons _ _ _ _ _ checked10771.1 (.cons _ _ _ _ _ checked10772.1 (.cons _ _ _ _ _ checked10773.1 (.cons _ _ _ _ _ checked10774.1 (.cons _ _ _ _ _ checked10775.1 (.cons _ _ _ _ _ checked10776.1 (.cons _ _ _ _ _ checked10777.1 (.cons _ _ _ _ _ checked10778.1 (.cons _ _ _ _ _ checked10779.1 (.cons _ _ _ _ _ checked10780.1 (.cons _ _ _ _ _ checked10781.1 (.cons _ _ _ _ _ checked10782.1 (.cons _ _ _ _ _ checked10783.1 (.cons _ _ _ _ _ checked10784.1 (.cons _ _ _ _ _ checked10785.1 (.cons _ _ _ _ _ checked10786.1 (.cons _ _ _ _ _ checked10787.1 (.cons _ _ _ _ _ checked10788.1 (.cons _ _ _ _ _ checked10789.1 (.cons _ _ _ _ _ checked10790.1 (.cons _ _ _ _ _ checked10791.1 (.cons _ _ _ _ _ checked10792.1 (.cons _ _ _ _ _ checked10793.1 (.cons _ _ _ _ _ checked10794.1 (.cons _ _ _ _ _ checked10795.1 (.cons _ _ _ _ _ checked10796.1 (.cons _ _ _ _ _ checked10797.1 (.cons _ _ _ _ _ checked10798.1 (.cons _ _ _ _ _ checked10799.1 (.cons _ _ _ _ _ checked10800.1 (.cons _ _ _ _ _ checked10801.1 (.cons _ _ _ _ _ checked10802.1 (.cons _ _ _ _ _ checked10803.1 (.cons _ _ _ _ _ checked10804.1 (.cons _ _ _ _ _ checked10805.1 (.cons _ _ _ _ _ checked10806.1 (.cons _ _ _ _ _ checked10807.1 (.cons _ _ _ _ _ checked10808.1 (.cons _ _ _ _ _ checked10809.1 (.cons _ _ _ _ _ checked10810.1 (.cons _ _ _ _ _ checked10811.1 (.cons _ _ _ _ _ checked10812.1 (.cons _ _ _ _ _ checked10813.1 (.cons _ _ _ _ _ checked10814.1 (.cons _ _ _ _ _ checked10815.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10795 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2838 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10752.2,checked10753.2,checked10754.2,checked10755.2,checked10756.2,checked10757.2,checked10758.2,checked10759.2,checked10760.2,checked10761.2,checked10762.2,checked10763.2,checked10764.2,checked10765.2,checked10766.2,checked10767.2,checked10768.2,checked10769.2,checked10770.2,checked10771.2,checked10772.2,checked10773.2,checked10774.2,checked10775.2,checked10776.2,checked10777.2,checked10778.2,checked10779.2,checked10780.2,checked10781.2,checked10782.2,checked10783.2,checked10784.2,checked10785.2,checked10786.2,checked10787.2,checked10788.2,checked10789.2,checked10790.2,checked10791.2,checked10792.2,checked10793.2,checked10794.2,checked10795.2,checked10796.2,checked10797.2,checked10798.2,checked10799.2,checked10800.2,checked10801.2,checked10802.2,checked10803.2,checked10804.2,checked10805.2,checked10806.2,checked10807.2,checked10808.2,checked10809.2,checked10810.2,checked10811.2,checked10812.2,checked10813.2,checked10814.2,checked10815.2]
  decide
end ArtifactPathRoundDispatchGroup168
