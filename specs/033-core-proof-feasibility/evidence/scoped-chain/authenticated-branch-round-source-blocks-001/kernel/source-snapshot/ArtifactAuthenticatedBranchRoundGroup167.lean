import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup167
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10688 : List WordIR.Op := [.band 10804 10805]
def bytes10688 : Bytes := ("    let r00002a36: u32 = r00002a34 & r00002a35;\n" : String).toByteArray.data.toList
theorem checked10688 : bytes10688=statementBytes 10806 (op10688.map lower) ∧ bytes10688.length=48 := by core033_kernel_decide
def op10689 : List WordIR.Op := [.bxor 10800 10806]
def bytes10689 : Bytes := ("    let r00002a37: u32 = r00002a30 ^ r00002a36;\n" : String).toByteArray.data.toList
theorem checked10689 : bytes10689=statementBytes 10807 (op10689.map lower) ∧ bytes10689.length=48 := by core033_kernel_decide
def op10690 : List WordIR.Op := [.bnot 10609]
def bytes10690 : Bytes := ("    let r00002a38: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10690 : bytes10690=statementBytes 10808 (op10690.map lower) ∧ bytes10690.length=37 := by core033_kernel_decide
def op10691 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10691 : Bytes := ("    let r00002a39: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10691 : bytes10691=statementBytes 10809 (op10691.map lower) ∧ bytes10691.length=41 := by core033_kernel_decide
def op10692 : List WordIR.Op := [.badd 10808 10809]
def bytes10692 : Bytes := ("    let r00002a3a: u32 = r00002a38.wrapping_add(r00002a39);\n" : String).toByteArray.data.toList
theorem checked10692 : bytes10692=statementBytes 10810 (op10692.map lower) ∧ bytes10692.length=60 := by core033_kernel_decide
def op10693 : List WordIR.Op := [.band 10810 963]
def bytes10693 : Bytes := ("    let r00002a3b: u32 = r00002a3a & r000003c3;\n" : String).toByteArray.data.toList
theorem checked10693 : bytes10693=statementBytes 10811 (op10693.map lower) ∧ bytes10693.length=48 := by core033_kernel_decide
def op10694 : List WordIR.Op := [.bnot 10609]
def bytes10694 : Bytes := ("    let r00002a3c: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10694 : bytes10694=statementBytes 10812 (op10694.map lower) ∧ bytes10694.length=37 := by core033_kernel_decide
def op10695 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10695 : Bytes := ("    let r00002a3d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10695 : bytes10695=statementBytes 10813 (op10695.map lower) ∧ bytes10695.length=41 := by core033_kernel_decide
def op10696 : List WordIR.Op := [.badd 10812 10813]
def bytes10696 : Bytes := ("    let r00002a3e: u32 = r00002a3c.wrapping_add(r00002a3d);\n" : String).toByteArray.data.toList
theorem checked10696 : bytes10696=statementBytes 10814 (op10696.map lower) ∧ bytes10696.length=60 := by core033_kernel_decide
def op10697 : List WordIR.Op := [.bnot 10814]
def bytes10697 : Bytes := ("    let r00002a3f: u32 = !r00002a3e;\n" : String).toByteArray.data.toList
theorem checked10697 : bytes10697=statementBytes 10815 (op10697.map lower) ∧ bytes10697.length=37 := by core033_kernel_decide
def op10698 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10698 : Bytes := ("    let r00002a40: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10698 : bytes10698=statementBytes 10816 (op10698.map lower) ∧ bytes10698.length=41 := by core033_kernel_decide
def op10699 : List WordIR.Op := [.band 10815 10816]
def bytes10699 : Bytes := ("    let r00002a41: u32 = r00002a3f & r00002a40;\n" : String).toByteArray.data.toList
theorem checked10699 : bytes10699=statementBytes 10817 (op10699.map lower) ∧ bytes10699.length=48 := by core033_kernel_decide
def op10700 : List WordIR.Op := [.bxor 10811 10817]
def bytes10700 : Bytes := ("    let r00002a42: u32 = r00002a3b ^ r00002a41;\n" : String).toByteArray.data.toList
theorem checked10700 : bytes10700=statementBytes 10818 (op10700.map lower) ∧ bytes10700.length=48 := by core033_kernel_decide
def op10701 : List WordIR.Op := [.bnot 10609]
def bytes10701 : Bytes := ("    let r00002a43: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10701 : bytes10701=statementBytes 10819 (op10701.map lower) ∧ bytes10701.length=37 := by core033_kernel_decide
def op10702 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10702 : Bytes := ("    let r00002a44: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10702 : bytes10702=statementBytes 10820 (op10702.map lower) ∧ bytes10702.length=41 := by core033_kernel_decide
def op10703 : List WordIR.Op := [.badd 10819 10820]
def bytes10703 : Bytes := ("    let r00002a45: u32 = r00002a43.wrapping_add(r00002a44);\n" : String).toByteArray.data.toList
theorem checked10703 : bytes10703=statementBytes 10821 (op10703.map lower) ∧ bytes10703.length=60 := by core033_kernel_decide
def op10704 : List WordIR.Op := [.band 10821 973]
def bytes10704 : Bytes := ("    let r00002a46: u32 = r00002a45 & r000003cd;\n" : String).toByteArray.data.toList
theorem checked10704 : bytes10704=statementBytes 10822 (op10704.map lower) ∧ bytes10704.length=48 := by core033_kernel_decide
def op10705 : List WordIR.Op := [.bnot 10609]
def bytes10705 : Bytes := ("    let r00002a47: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10705 : bytes10705=statementBytes 10823 (op10705.map lower) ∧ bytes10705.length=37 := by core033_kernel_decide
def op10706 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10706 : Bytes := ("    let r00002a48: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10706 : bytes10706=statementBytes 10824 (op10706.map lower) ∧ bytes10706.length=41 := by core033_kernel_decide
def op10707 : List WordIR.Op := [.badd 10823 10824]
def bytes10707 : Bytes := ("    let r00002a49: u32 = r00002a47.wrapping_add(r00002a48);\n" : String).toByteArray.data.toList
theorem checked10707 : bytes10707=statementBytes 10825 (op10707.map lower) ∧ bytes10707.length=60 := by core033_kernel_decide
def op10708 : List WordIR.Op := [.bnot 10825]
def bytes10708 : Bytes := ("    let r00002a4a: u32 = !r00002a49;\n" : String).toByteArray.data.toList
theorem checked10708 : bytes10708=statementBytes 10826 (op10708.map lower) ∧ bytes10708.length=37 := by core033_kernel_decide
def op10709 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10709 : Bytes := ("    let r00002a4b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10709 : bytes10709=statementBytes 10827 (op10709.map lower) ∧ bytes10709.length=41 := by core033_kernel_decide
def op10710 : List WordIR.Op := [.band 10826 10827]
def bytes10710 : Bytes := ("    let r00002a4c: u32 = r00002a4a & r00002a4b;\n" : String).toByteArray.data.toList
theorem checked10710 : bytes10710=statementBytes 10828 (op10710.map lower) ∧ bytes10710.length=48 := by core033_kernel_decide
def op10711 : List WordIR.Op := [.bxor 10822 10828]
def bytes10711 : Bytes := ("    let r00002a4d: u32 = r00002a46 ^ r00002a4c;\n" : String).toByteArray.data.toList
theorem checked10711 : bytes10711=statementBytes 10829 (op10711.map lower) ∧ bytes10711.length=48 := by core033_kernel_decide
def op10712 : List WordIR.Op := [.bnot 10609]
def bytes10712 : Bytes := ("    let r00002a4e: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10712 : bytes10712=statementBytes 10830 (op10712.map lower) ∧ bytes10712.length=37 := by core033_kernel_decide
def op10713 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10713 : Bytes := ("    let r00002a4f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10713 : bytes10713=statementBytes 10831 (op10713.map lower) ∧ bytes10713.length=41 := by core033_kernel_decide
def op10714 : List WordIR.Op := [.badd 10830 10831]
def bytes10714 : Bytes := ("    let r00002a50: u32 = r00002a4e.wrapping_add(r00002a4f);\n" : String).toByteArray.data.toList
theorem checked10714 : bytes10714=statementBytes 10832 (op10714.map lower) ∧ bytes10714.length=60 := by core033_kernel_decide
def op10715 : List WordIR.Op := [.band 10832 983]
def bytes10715 : Bytes := ("    let r00002a51: u32 = r00002a50 & r000003d7;\n" : String).toByteArray.data.toList
theorem checked10715 : bytes10715=statementBytes 10833 (op10715.map lower) ∧ bytes10715.length=48 := by core033_kernel_decide
def op10716 : List WordIR.Op := [.bnot 10609]
def bytes10716 : Bytes := ("    let r00002a52: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10716 : bytes10716=statementBytes 10834 (op10716.map lower) ∧ bytes10716.length=37 := by core033_kernel_decide
def op10717 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10717 : Bytes := ("    let r00002a53: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10717 : bytes10717=statementBytes 10835 (op10717.map lower) ∧ bytes10717.length=41 := by core033_kernel_decide
def op10718 : List WordIR.Op := [.badd 10834 10835]
def bytes10718 : Bytes := ("    let r00002a54: u32 = r00002a52.wrapping_add(r00002a53);\n" : String).toByteArray.data.toList
theorem checked10718 : bytes10718=statementBytes 10836 (op10718.map lower) ∧ bytes10718.length=60 := by core033_kernel_decide
def op10719 : List WordIR.Op := [.bnot 10836]
def bytes10719 : Bytes := ("    let r00002a55: u32 = !r00002a54;\n" : String).toByteArray.data.toList
theorem checked10719 : bytes10719=statementBytes 10837 (op10719.map lower) ∧ bytes10719.length=37 := by core033_kernel_decide
def op10720 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10720 : Bytes := ("    let r00002a56: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10720 : bytes10720=statementBytes 10838 (op10720.map lower) ∧ bytes10720.length=41 := by core033_kernel_decide
def op10721 : List WordIR.Op := [.band 10837 10838]
def bytes10721 : Bytes := ("    let r00002a57: u32 = r00002a55 & r00002a56;\n" : String).toByteArray.data.toList
theorem checked10721 : bytes10721=statementBytes 10839 (op10721.map lower) ∧ bytes10721.length=48 := by core033_kernel_decide
def op10722 : List WordIR.Op := [.bxor 10833 10839]
def bytes10722 : Bytes := ("    let r00002a58: u32 = r00002a51 ^ r00002a57;\n" : String).toByteArray.data.toList
theorem checked10722 : bytes10722=statementBytes 10840 (op10722.map lower) ∧ bytes10722.length=48 := by core033_kernel_decide
def op10723 : List WordIR.Op := [.bnot 10609]
def bytes10723 : Bytes := ("    let r00002a59: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10723 : bytes10723=statementBytes 10841 (op10723.map lower) ∧ bytes10723.length=37 := by core033_kernel_decide
def op10724 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10724 : Bytes := ("    let r00002a5a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10724 : bytes10724=statementBytes 10842 (op10724.map lower) ∧ bytes10724.length=41 := by core033_kernel_decide
def op10725 : List WordIR.Op := [.badd 10841 10842]
def bytes10725 : Bytes := ("    let r00002a5b: u32 = r00002a59.wrapping_add(r00002a5a);\n" : String).toByteArray.data.toList
theorem checked10725 : bytes10725=statementBytes 10843 (op10725.map lower) ∧ bytes10725.length=60 := by core033_kernel_decide
def op10726 : List WordIR.Op := [.band 10843 993]
def bytes10726 : Bytes := ("    let r00002a5c: u32 = r00002a5b & r000003e1;\n" : String).toByteArray.data.toList
theorem checked10726 : bytes10726=statementBytes 10844 (op10726.map lower) ∧ bytes10726.length=48 := by core033_kernel_decide
def op10727 : List WordIR.Op := [.bnot 10609]
def bytes10727 : Bytes := ("    let r00002a5d: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10727 : bytes10727=statementBytes 10845 (op10727.map lower) ∧ bytes10727.length=37 := by core033_kernel_decide
def op10728 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10728 : Bytes := ("    let r00002a5e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10728 : bytes10728=statementBytes 10846 (op10728.map lower) ∧ bytes10728.length=41 := by core033_kernel_decide
def op10729 : List WordIR.Op := [.badd 10845 10846]
def bytes10729 : Bytes := ("    let r00002a5f: u32 = r00002a5d.wrapping_add(r00002a5e);\n" : String).toByteArray.data.toList
theorem checked10729 : bytes10729=statementBytes 10847 (op10729.map lower) ∧ bytes10729.length=60 := by core033_kernel_decide
def op10730 : List WordIR.Op := [.bnot 10847]
def bytes10730 : Bytes := ("    let r00002a60: u32 = !r00002a5f;\n" : String).toByteArray.data.toList
theorem checked10730 : bytes10730=statementBytes 10848 (op10730.map lower) ∧ bytes10730.length=37 := by core033_kernel_decide
def op10731 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10731 : Bytes := ("    let r00002a61: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10731 : bytes10731=statementBytes 10849 (op10731.map lower) ∧ bytes10731.length=41 := by core033_kernel_decide
def op10732 : List WordIR.Op := [.band 10848 10849]
def bytes10732 : Bytes := ("    let r00002a62: u32 = r00002a60 & r00002a61;\n" : String).toByteArray.data.toList
theorem checked10732 : bytes10732=statementBytes 10850 (op10732.map lower) ∧ bytes10732.length=48 := by core033_kernel_decide
def op10733 : List WordIR.Op := [.bxor 10844 10850]
def bytes10733 : Bytes := ("    let r00002a63: u32 = r00002a5c ^ r00002a62;\n" : String).toByteArray.data.toList
theorem checked10733 : bytes10733=statementBytes 10851 (op10733.map lower) ∧ bytes10733.length=48 := by core033_kernel_decide
def op10734 : List WordIR.Op := [.bnot 10609]
def bytes10734 : Bytes := ("    let r00002a64: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10734 : bytes10734=statementBytes 10852 (op10734.map lower) ∧ bytes10734.length=37 := by core033_kernel_decide
def op10735 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10735 : Bytes := ("    let r00002a65: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10735 : bytes10735=statementBytes 10853 (op10735.map lower) ∧ bytes10735.length=41 := by core033_kernel_decide
def op10736 : List WordIR.Op := [.badd 10852 10853]
def bytes10736 : Bytes := ("    let r00002a66: u32 = r00002a64.wrapping_add(r00002a65);\n" : String).toByteArray.data.toList
theorem checked10736 : bytes10736=statementBytes 10854 (op10736.map lower) ∧ bytes10736.length=60 := by core033_kernel_decide
def op10737 : List WordIR.Op := [.band 10854 1003]
def bytes10737 : Bytes := ("    let r00002a67: u32 = r00002a66 & r000003eb;\n" : String).toByteArray.data.toList
theorem checked10737 : bytes10737=statementBytes 10855 (op10737.map lower) ∧ bytes10737.length=48 := by core033_kernel_decide
def op10738 : List WordIR.Op := [.bnot 10609]
def bytes10738 : Bytes := ("    let r00002a68: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10738 : bytes10738=statementBytes 10856 (op10738.map lower) ∧ bytes10738.length=37 := by core033_kernel_decide
def op10739 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10739 : Bytes := ("    let r00002a69: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10739 : bytes10739=statementBytes 10857 (op10739.map lower) ∧ bytes10739.length=41 := by core033_kernel_decide
def op10740 : List WordIR.Op := [.badd 10856 10857]
def bytes10740 : Bytes := ("    let r00002a6a: u32 = r00002a68.wrapping_add(r00002a69);\n" : String).toByteArray.data.toList
theorem checked10740 : bytes10740=statementBytes 10858 (op10740.map lower) ∧ bytes10740.length=60 := by core033_kernel_decide
def op10741 : List WordIR.Op := [.bnot 10858]
def bytes10741 : Bytes := ("    let r00002a6b: u32 = !r00002a6a;\n" : String).toByteArray.data.toList
theorem checked10741 : bytes10741=statementBytes 10859 (op10741.map lower) ∧ bytes10741.length=37 := by core033_kernel_decide
def op10742 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10742 : Bytes := ("    let r00002a6c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10742 : bytes10742=statementBytes 10860 (op10742.map lower) ∧ bytes10742.length=41 := by core033_kernel_decide
def op10743 : List WordIR.Op := [.band 10859 10860]
def bytes10743 : Bytes := ("    let r00002a6d: u32 = r00002a6b & r00002a6c;\n" : String).toByteArray.data.toList
theorem checked10743 : bytes10743=statementBytes 10861 (op10743.map lower) ∧ bytes10743.length=48 := by core033_kernel_decide
def op10744 : List WordIR.Op := [.bxor 10855 10861]
def bytes10744 : Bytes := ("    let r00002a6e: u32 = r00002a67 ^ r00002a6d;\n" : String).toByteArray.data.toList
theorem checked10744 : bytes10744=statementBytes 10862 (op10744.map lower) ∧ bytes10744.length=48 := by core033_kernel_decide
def op10745 : List WordIR.Op := [.bnot 10609]
def bytes10745 : Bytes := ("    let r00002a6f: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10745 : bytes10745=statementBytes 10863 (op10745.map lower) ∧ bytes10745.length=37 := by core033_kernel_decide
def op10746 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10746 : Bytes := ("    let r00002a70: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10746 : bytes10746=statementBytes 10864 (op10746.map lower) ∧ bytes10746.length=41 := by core033_kernel_decide
def op10747 : List WordIR.Op := [.badd 10863 10864]
def bytes10747 : Bytes := ("    let r00002a71: u32 = r00002a6f.wrapping_add(r00002a70);\n" : String).toByteArray.data.toList
theorem checked10747 : bytes10747=statementBytes 10865 (op10747.map lower) ∧ bytes10747.length=60 := by core033_kernel_decide
def op10748 : List WordIR.Op := [.band 10865 1013]
def bytes10748 : Bytes := ("    let r00002a72: u32 = r00002a71 & r000003f5;\n" : String).toByteArray.data.toList
theorem checked10748 : bytes10748=statementBytes 10866 (op10748.map lower) ∧ bytes10748.length=48 := by core033_kernel_decide
def op10749 : List WordIR.Op := [.bnot 10609]
def bytes10749 : Bytes := ("    let r00002a73: u32 = !r00002971;\n" : String).toByteArray.data.toList
theorem checked10749 : bytes10749=statementBytes 10867 (op10749.map lower) ∧ bytes10749.length=37 := by core033_kernel_decide
def op10750 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10750 : Bytes := ("    let r00002a74: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10750 : bytes10750=statementBytes 10868 (op10750.map lower) ∧ bytes10750.length=41 := by core033_kernel_decide
def op10751 : List WordIR.Op := [.badd 10867 10868]
def bytes10751 : Bytes := ("    let r00002a75: u32 = r00002a73.wrapping_add(r00002a74);\n" : String).toByteArray.data.toList
theorem checked10751 : bytes10751=statementBytes 10869 (op10751.map lower) ∧ bytes10751.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10688,op10689,op10690,op10691,op10692,op10693,op10694,op10695,op10696,op10697,op10698,op10699,op10700,op10701,op10702,op10703,op10704,op10705,op10706,op10707,op10708,op10709,op10710,op10711,op10712,op10713,op10714,op10715,op10716,op10717,op10718,op10719,op10720,op10721,op10722,op10723,op10724,op10725,op10726,op10727,op10728,op10729,op10730,op10731,op10732,op10733,op10734,op10735,op10736,op10737,op10738,op10739,op10740,op10741,op10742,op10743,op10744,op10745,op10746,op10747,op10748,op10749,op10750,op10751]
def chunks : List Bytes := [bytes10688,bytes10689,bytes10690,bytes10691,bytes10692,bytes10693,bytes10694,bytes10695,bytes10696,bytes10697,bytes10698,bytes10699,bytes10700,bytes10701,bytes10702,bytes10703,bytes10704,bytes10705,bytes10706,bytes10707,bytes10708,bytes10709,bytes10710,bytes10711,bytes10712,bytes10713,bytes10714,bytes10715,bytes10716,bytes10717,bytes10718,bytes10719,bytes10720,bytes10721,bytes10722,bytes10723,bytes10724,bytes10725,bytes10726,bytes10727,bytes10728,bytes10729,bytes10730,bytes10731,bytes10732,bytes10733,bytes10734,bytes10735,bytes10736,bytes10737,bytes10738,bytes10739,bytes10740,bytes10741,bytes10742,bytes10743,bytes10744,bytes10745,bytes10746,bytes10747,bytes10748,bytes10749,bytes10750,bytes10751]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10806 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10688.1 (.cons _ _ _ _ _ checked10689.1 (.cons _ _ _ _ _ checked10690.1 (.cons _ _ _ _ _ checked10691.1 (.cons _ _ _ _ _ checked10692.1 (.cons _ _ _ _ _ checked10693.1 (.cons _ _ _ _ _ checked10694.1 (.cons _ _ _ _ _ checked10695.1 (.cons _ _ _ _ _ checked10696.1 (.cons _ _ _ _ _ checked10697.1 (.cons _ _ _ _ _ checked10698.1 (.cons _ _ _ _ _ checked10699.1 (.cons _ _ _ _ _ checked10700.1 (.cons _ _ _ _ _ checked10701.1 (.cons _ _ _ _ _ checked10702.1 (.cons _ _ _ _ _ checked10703.1 (.cons _ _ _ _ _ checked10704.1 (.cons _ _ _ _ _ checked10705.1 (.cons _ _ _ _ _ checked10706.1 (.cons _ _ _ _ _ checked10707.1 (.cons _ _ _ _ _ checked10708.1 (.cons _ _ _ _ _ checked10709.1 (.cons _ _ _ _ _ checked10710.1 (.cons _ _ _ _ _ checked10711.1 (.cons _ _ _ _ _ checked10712.1 (.cons _ _ _ _ _ checked10713.1 (.cons _ _ _ _ _ checked10714.1 (.cons _ _ _ _ _ checked10715.1 (.cons _ _ _ _ _ checked10716.1 (.cons _ _ _ _ _ checked10717.1 (.cons _ _ _ _ _ checked10718.1 (.cons _ _ _ _ _ checked10719.1 (.cons _ _ _ _ _ checked10720.1 (.cons _ _ _ _ _ checked10721.1 (.cons _ _ _ _ _ checked10722.1 (.cons _ _ _ _ _ checked10723.1 (.cons _ _ _ _ _ checked10724.1 (.cons _ _ _ _ _ checked10725.1 (.cons _ _ _ _ _ checked10726.1 (.cons _ _ _ _ _ checked10727.1 (.cons _ _ _ _ _ checked10728.1 (.cons _ _ _ _ _ checked10729.1 (.cons _ _ _ _ _ checked10730.1 (.cons _ _ _ _ _ checked10731.1 (.cons _ _ _ _ _ checked10732.1 (.cons _ _ _ _ _ checked10733.1 (.cons _ _ _ _ _ checked10734.1 (.cons _ _ _ _ _ checked10735.1 (.cons _ _ _ _ _ checked10736.1 (.cons _ _ _ _ _ checked10737.1 (.cons _ _ _ _ _ checked10738.1 (.cons _ _ _ _ _ checked10739.1 (.cons _ _ _ _ _ checked10740.1 (.cons _ _ _ _ _ checked10741.1 (.cons _ _ _ _ _ checked10742.1 (.cons _ _ _ _ _ checked10743.1 (.cons _ _ _ _ _ checked10744.1 (.cons _ _ _ _ _ checked10745.1 (.cons _ _ _ _ _ checked10746.1 (.cons _ _ _ _ _ checked10747.1 (.cons _ _ _ _ _ checked10748.1 (.cons _ _ _ _ _ checked10749.1 (.cons _ _ _ _ _ checked10750.1 (.cons _ _ _ _ _ checked10751.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10806 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2910 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10688.2,checked10689.2,checked10690.2,checked10691.2,checked10692.2,checked10693.2,checked10694.2,checked10695.2,checked10696.2,checked10697.2,checked10698.2,checked10699.2,checked10700.2,checked10701.2,checked10702.2,checked10703.2,checked10704.2,checked10705.2,checked10706.2,checked10707.2,checked10708.2,checked10709.2,checked10710.2,checked10711.2,checked10712.2,checked10713.2,checked10714.2,checked10715.2,checked10716.2,checked10717.2,checked10718.2,checked10719.2,checked10720.2,checked10721.2,checked10722.2,checked10723.2,checked10724.2,checked10725.2,checked10726.2,checked10727.2,checked10728.2,checked10729.2,checked10730.2,checked10731.2,checked10732.2,checked10733.2,checked10734.2,checked10735.2,checked10736.2,checked10737.2,checked10738.2,checked10739.2,checked10740.2,checked10741.2,checked10742.2,checked10743.2,checked10744.2,checked10745.2,checked10746.2,checked10747.2,checked10748.2,checked10749.2,checked10750.2,checked10751.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup167
