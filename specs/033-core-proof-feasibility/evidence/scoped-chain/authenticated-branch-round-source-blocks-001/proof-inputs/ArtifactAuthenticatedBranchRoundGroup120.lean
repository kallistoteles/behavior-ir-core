import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup120
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7680 : List WordIR.Op := [.shr 5934 8]
def bytes7680 : Bytes := ("    let r00001e76: u32 = r0000172e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7680 : bytes7680=statementBytes 7798 (op7680.map lower) ∧ bytes7680.length=54 := by core033_kernel_decide
def op7681 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7681 : Bytes := ("    let r00001e77: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7681 : bytes7681=statementBytes 7799 (op7681.map lower) ∧ bytes7681.length=41 := by core033_kernel_decide
def op7682 : List WordIR.Op := [.bnot 7799]
def bytes7682 : Bytes := ("    let r00001e78: u32 = !r00001e77;\n" : String).toByteArray.data.toList
theorem checked7682 : bytes7682=statementBytes 7800 (op7682.map lower) ∧ bytes7682.length=37 := by core033_kernel_decide
def op7683 : List WordIR.Op := [.badd 7798 7800]
def bytes7683 : Bytes := ("    let r00001e79: u32 = r00001e76.wrapping_add(r00001e78);\n" : String).toByteArray.data.toList
theorem checked7683 : bytes7683=statementBytes 7801 (op7683.map lower) ∧ bytes7683.length=60 := by core033_kernel_decide
def op7684 : List WordIR.Op := [.bnot 7801]
def bytes7684 : Bytes := ("    let r00001e7a: u32 = !r00001e79;\n" : String).toByteArray.data.toList
theorem checked7684 : bytes7684=statementBytes 7802 (op7684.map lower) ∧ bytes7684.length=37 := by core033_kernel_decide
def op7685 : List WordIR.Op := [.band 7797 7802]
def bytes7685 : Bytes := ("    let r00001e7b: u32 = r00001e75 & r00001e7a;\n" : String).toByteArray.data.toList
theorem checked7685 : bytes7685=statementBytes 7803 (op7685.map lower) ∧ bytes7685.length=48 := by core033_kernel_decide
def op7686 : List WordIR.Op := [.bxor 7793 7803]
def bytes7686 : Bytes := ("    let r00001e7c: u32 = r00001e71 ^ r00001e7b;\n" : String).toByteArray.data.toList
theorem checked7686 : bytes7686=statementBytes 7804 (op7686.map lower) ∧ bytes7686.length=48 := by core033_kernel_decide
def op7687 : List WordIR.Op := [.shr 7804 31]
def bytes7687 : Bytes := ("    let r00001e7d: u32 = r00001e7c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7687 : bytes7687=statementBytes 7805 (op7687.map lower) ∧ bytes7687.length=54 := by core033_kernel_decide
def op7688 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7688 : Bytes := ("    let r00001e7e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7688 : bytes7688=statementBytes 7806 (op7688.map lower) ∧ bytes7688.length=41 := by core033_kernel_decide
def op7689 : List WordIR.Op := [.bxor 7805 7806]
def bytes7689 : Bytes := ("    let r00001e7f: u32 = r00001e7d ^ r00001e7e;\n" : String).toByteArray.data.toList
theorem checked7689 : bytes7689=statementBytes 7807 (op7689.map lower) ∧ bytes7689.length=48 := by core033_kernel_decide
def op7690 : List WordIR.Op := [.shr 5986 8]
def bytes7690 : Bytes := ("    let r00001e80: u32 = r00001762 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7690 : bytes7690=statementBytes 7808 (op7690.map lower) ∧ bytes7690.length=54 := by core033_kernel_decide
def op7691 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7691 : Bytes := ("    let r00001e81: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7691 : bytes7691=statementBytes 7809 (op7691.map lower) ∧ bytes7691.length=41 := by core033_kernel_decide
def op7692 : List WordIR.Op := [.bnot 7809]
def bytes7692 : Bytes := ("    let r00001e82: u32 = !r00001e81;\n" : String).toByteArray.data.toList
theorem checked7692 : bytes7692=statementBytes 7810 (op7692.map lower) ∧ bytes7692.length=37 := by core033_kernel_decide
def op7693 : List WordIR.Op := [.band 7808 7810]
def bytes7693 : Bytes := ("    let r00001e83: u32 = r00001e80 & r00001e82;\n" : String).toByteArray.data.toList
theorem checked7693 : bytes7693=statementBytes 7811 (op7693.map lower) ∧ bytes7693.length=48 := by core033_kernel_decide
def op7694 : List WordIR.Op := [.shr 5986 8]
def bytes7694 : Bytes := ("    let r00001e84: u32 = r00001762 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7694 : bytes7694=statementBytes 7812 (op7694.map lower) ∧ bytes7694.length=54 := by core033_kernel_decide
def op7695 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7695 : Bytes := ("    let r00001e85: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7695 : bytes7695=statementBytes 7813 (op7695.map lower) ∧ bytes7695.length=41 := by core033_kernel_decide
def op7696 : List WordIR.Op := [.bnot 7813]
def bytes7696 : Bytes := ("    let r00001e86: u32 = !r00001e85;\n" : String).toByteArray.data.toList
theorem checked7696 : bytes7696=statementBytes 7814 (op7696.map lower) ∧ bytes7696.length=37 := by core033_kernel_decide
def op7697 : List WordIR.Op := [.bxor 7812 7814]
def bytes7697 : Bytes := ("    let r00001e87: u32 = r00001e84 ^ r00001e86;\n" : String).toByteArray.data.toList
theorem checked7697 : bytes7697=statementBytes 7815 (op7697.map lower) ∧ bytes7697.length=48 := by core033_kernel_decide
def op7698 : List WordIR.Op := [.shr 5986 8]
def bytes7698 : Bytes := ("    let r00001e88: u32 = r00001762 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7698 : bytes7698=statementBytes 7816 (op7698.map lower) ∧ bytes7698.length=54 := by core033_kernel_decide
def op7699 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7699 : Bytes := ("    let r00001e89: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7699 : bytes7699=statementBytes 7817 (op7699.map lower) ∧ bytes7699.length=41 := by core033_kernel_decide
def op7700 : List WordIR.Op := [.bnot 7817]
def bytes7700 : Bytes := ("    let r00001e8a: u32 = !r00001e89;\n" : String).toByteArray.data.toList
theorem checked7700 : bytes7700=statementBytes 7818 (op7700.map lower) ∧ bytes7700.length=37 := by core033_kernel_decide
def op7701 : List WordIR.Op := [.badd 7816 7818]
def bytes7701 : Bytes := ("    let r00001e8b: u32 = r00001e88.wrapping_add(r00001e8a);\n" : String).toByteArray.data.toList
theorem checked7701 : bytes7701=statementBytes 7819 (op7701.map lower) ∧ bytes7701.length=60 := by core033_kernel_decide
def op7702 : List WordIR.Op := [.bnot 7819]
def bytes7702 : Bytes := ("    let r00001e8c: u32 = !r00001e8b;\n" : String).toByteArray.data.toList
theorem checked7702 : bytes7702=statementBytes 7820 (op7702.map lower) ∧ bytes7702.length=37 := by core033_kernel_decide
def op7703 : List WordIR.Op := [.band 7815 7820]
def bytes7703 : Bytes := ("    let r00001e8d: u32 = r00001e87 & r00001e8c;\n" : String).toByteArray.data.toList
theorem checked7703 : bytes7703=statementBytes 7821 (op7703.map lower) ∧ bytes7703.length=48 := by core033_kernel_decide
def op7704 : List WordIR.Op := [.bxor 7811 7821]
def bytes7704 : Bytes := ("    let r00001e8e: u32 = r00001e83 ^ r00001e8d;\n" : String).toByteArray.data.toList
theorem checked7704 : bytes7704=statementBytes 7822 (op7704.map lower) ∧ bytes7704.length=48 := by core033_kernel_decide
def op7705 : List WordIR.Op := [.shr 7822 31]
def bytes7705 : Bytes := ("    let r00001e8f: u32 = r00001e8e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7705 : bytes7705=statementBytes 7823 (op7705.map lower) ∧ bytes7705.length=54 := by core033_kernel_decide
def op7706 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7706 : Bytes := ("    let r00001e90: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7706 : bytes7706=statementBytes 7824 (op7706.map lower) ∧ bytes7706.length=41 := by core033_kernel_decide
def op7707 : List WordIR.Op := [.bxor 7823 7824]
def bytes7707 : Bytes := ("    let r00001e91: u32 = r00001e8f ^ r00001e90;\n" : String).toByteArray.data.toList
theorem checked7707 : bytes7707=statementBytes 7825 (op7707.map lower) ∧ bytes7707.length=48 := by core033_kernel_decide
def op7708 : List WordIR.Op := [.shr 6038 8]
def bytes7708 : Bytes := ("    let r00001e92: u32 = r00001796 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7708 : bytes7708=statementBytes 7826 (op7708.map lower) ∧ bytes7708.length=54 := by core033_kernel_decide
def op7709 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7709 : Bytes := ("    let r00001e93: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7709 : bytes7709=statementBytes 7827 (op7709.map lower) ∧ bytes7709.length=41 := by core033_kernel_decide
def op7710 : List WordIR.Op := [.bnot 7827]
def bytes7710 : Bytes := ("    let r00001e94: u32 = !r00001e93;\n" : String).toByteArray.data.toList
theorem checked7710 : bytes7710=statementBytes 7828 (op7710.map lower) ∧ bytes7710.length=37 := by core033_kernel_decide
def op7711 : List WordIR.Op := [.band 7826 7828]
def bytes7711 : Bytes := ("    let r00001e95: u32 = r00001e92 & r00001e94;\n" : String).toByteArray.data.toList
theorem checked7711 : bytes7711=statementBytes 7829 (op7711.map lower) ∧ bytes7711.length=48 := by core033_kernel_decide
def op7712 : List WordIR.Op := [.shr 6038 8]
def bytes7712 : Bytes := ("    let r00001e96: u32 = r00001796 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7712 : bytes7712=statementBytes 7830 (op7712.map lower) ∧ bytes7712.length=54 := by core033_kernel_decide
def op7713 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7713 : Bytes := ("    let r00001e97: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7713 : bytes7713=statementBytes 7831 (op7713.map lower) ∧ bytes7713.length=41 := by core033_kernel_decide
def op7714 : List WordIR.Op := [.bnot 7831]
def bytes7714 : Bytes := ("    let r00001e98: u32 = !r00001e97;\n" : String).toByteArray.data.toList
theorem checked7714 : bytes7714=statementBytes 7832 (op7714.map lower) ∧ bytes7714.length=37 := by core033_kernel_decide
def op7715 : List WordIR.Op := [.bxor 7830 7832]
def bytes7715 : Bytes := ("    let r00001e99: u32 = r00001e96 ^ r00001e98;\n" : String).toByteArray.data.toList
theorem checked7715 : bytes7715=statementBytes 7833 (op7715.map lower) ∧ bytes7715.length=48 := by core033_kernel_decide
def op7716 : List WordIR.Op := [.shr 6038 8]
def bytes7716 : Bytes := ("    let r00001e9a: u32 = r00001796 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7716 : bytes7716=statementBytes 7834 (op7716.map lower) ∧ bytes7716.length=54 := by core033_kernel_decide
def op7717 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7717 : Bytes := ("    let r00001e9b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7717 : bytes7717=statementBytes 7835 (op7717.map lower) ∧ bytes7717.length=41 := by core033_kernel_decide
def op7718 : List WordIR.Op := [.bnot 7835]
def bytes7718 : Bytes := ("    let r00001e9c: u32 = !r00001e9b;\n" : String).toByteArray.data.toList
theorem checked7718 : bytes7718=statementBytes 7836 (op7718.map lower) ∧ bytes7718.length=37 := by core033_kernel_decide
def op7719 : List WordIR.Op := [.badd 7834 7836]
def bytes7719 : Bytes := ("    let r00001e9d: u32 = r00001e9a.wrapping_add(r00001e9c);\n" : String).toByteArray.data.toList
theorem checked7719 : bytes7719=statementBytes 7837 (op7719.map lower) ∧ bytes7719.length=60 := by core033_kernel_decide
def op7720 : List WordIR.Op := [.bnot 7837]
def bytes7720 : Bytes := ("    let r00001e9e: u32 = !r00001e9d;\n" : String).toByteArray.data.toList
theorem checked7720 : bytes7720=statementBytes 7838 (op7720.map lower) ∧ bytes7720.length=37 := by core033_kernel_decide
def op7721 : List WordIR.Op := [.band 7833 7838]
def bytes7721 : Bytes := ("    let r00001e9f: u32 = r00001e99 & r00001e9e;\n" : String).toByteArray.data.toList
theorem checked7721 : bytes7721=statementBytes 7839 (op7721.map lower) ∧ bytes7721.length=48 := by core033_kernel_decide
def op7722 : List WordIR.Op := [.bxor 7829 7839]
def bytes7722 : Bytes := ("    let r00001ea0: u32 = r00001e95 ^ r00001e9f;\n" : String).toByteArray.data.toList
theorem checked7722 : bytes7722=statementBytes 7840 (op7722.map lower) ∧ bytes7722.length=48 := by core033_kernel_decide
def op7723 : List WordIR.Op := [.shr 7840 31]
def bytes7723 : Bytes := ("    let r00001ea1: u32 = r00001ea0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7723 : bytes7723=statementBytes 7841 (op7723.map lower) ∧ bytes7723.length=54 := by core033_kernel_decide
def op7724 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7724 : Bytes := ("    let r00001ea2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7724 : bytes7724=statementBytes 7842 (op7724.map lower) ∧ bytes7724.length=41 := by core033_kernel_decide
def op7725 : List WordIR.Op := [.bxor 7841 7842]
def bytes7725 : Bytes := ("    let r00001ea3: u32 = r00001ea1 ^ r00001ea2;\n" : String).toByteArray.data.toList
theorem checked7725 : bytes7725=statementBytes 7843 (op7725.map lower) ∧ bytes7725.length=48 := by core033_kernel_decide
def op7726 : List WordIR.Op := [.shr 6090 8]
def bytes7726 : Bytes := ("    let r00001ea4: u32 = r000017ca >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7726 : bytes7726=statementBytes 7844 (op7726.map lower) ∧ bytes7726.length=54 := by core033_kernel_decide
def op7727 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7727 : Bytes := ("    let r00001ea5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7727 : bytes7727=statementBytes 7845 (op7727.map lower) ∧ bytes7727.length=41 := by core033_kernel_decide
def op7728 : List WordIR.Op := [.bnot 7845]
def bytes7728 : Bytes := ("    let r00001ea6: u32 = !r00001ea5;\n" : String).toByteArray.data.toList
theorem checked7728 : bytes7728=statementBytes 7846 (op7728.map lower) ∧ bytes7728.length=37 := by core033_kernel_decide
def op7729 : List WordIR.Op := [.band 7844 7846]
def bytes7729 : Bytes := ("    let r00001ea7: u32 = r00001ea4 & r00001ea6;\n" : String).toByteArray.data.toList
theorem checked7729 : bytes7729=statementBytes 7847 (op7729.map lower) ∧ bytes7729.length=48 := by core033_kernel_decide
def op7730 : List WordIR.Op := [.shr 6090 8]
def bytes7730 : Bytes := ("    let r00001ea8: u32 = r000017ca >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7730 : bytes7730=statementBytes 7848 (op7730.map lower) ∧ bytes7730.length=54 := by core033_kernel_decide
def op7731 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7731 : Bytes := ("    let r00001ea9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7731 : bytes7731=statementBytes 7849 (op7731.map lower) ∧ bytes7731.length=41 := by core033_kernel_decide
def op7732 : List WordIR.Op := [.bnot 7849]
def bytes7732 : Bytes := ("    let r00001eaa: u32 = !r00001ea9;\n" : String).toByteArray.data.toList
theorem checked7732 : bytes7732=statementBytes 7850 (op7732.map lower) ∧ bytes7732.length=37 := by core033_kernel_decide
def op7733 : List WordIR.Op := [.bxor 7848 7850]
def bytes7733 : Bytes := ("    let r00001eab: u32 = r00001ea8 ^ r00001eaa;\n" : String).toByteArray.data.toList
theorem checked7733 : bytes7733=statementBytes 7851 (op7733.map lower) ∧ bytes7733.length=48 := by core033_kernel_decide
def op7734 : List WordIR.Op := [.shr 6090 8]
def bytes7734 : Bytes := ("    let r00001eac: u32 = r000017ca >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7734 : bytes7734=statementBytes 7852 (op7734.map lower) ∧ bytes7734.length=54 := by core033_kernel_decide
def op7735 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7735 : Bytes := ("    let r00001ead: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7735 : bytes7735=statementBytes 7853 (op7735.map lower) ∧ bytes7735.length=41 := by core033_kernel_decide
def op7736 : List WordIR.Op := [.bnot 7853]
def bytes7736 : Bytes := ("    let r00001eae: u32 = !r00001ead;\n" : String).toByteArray.data.toList
theorem checked7736 : bytes7736=statementBytes 7854 (op7736.map lower) ∧ bytes7736.length=37 := by core033_kernel_decide
def op7737 : List WordIR.Op := [.badd 7852 7854]
def bytes7737 : Bytes := ("    let r00001eaf: u32 = r00001eac.wrapping_add(r00001eae);\n" : String).toByteArray.data.toList
theorem checked7737 : bytes7737=statementBytes 7855 (op7737.map lower) ∧ bytes7737.length=60 := by core033_kernel_decide
def op7738 : List WordIR.Op := [.bnot 7855]
def bytes7738 : Bytes := ("    let r00001eb0: u32 = !r00001eaf;\n" : String).toByteArray.data.toList
theorem checked7738 : bytes7738=statementBytes 7856 (op7738.map lower) ∧ bytes7738.length=37 := by core033_kernel_decide
def op7739 : List WordIR.Op := [.band 7851 7856]
def bytes7739 : Bytes := ("    let r00001eb1: u32 = r00001eab & r00001eb0;\n" : String).toByteArray.data.toList
theorem checked7739 : bytes7739=statementBytes 7857 (op7739.map lower) ∧ bytes7739.length=48 := by core033_kernel_decide
def op7740 : List WordIR.Op := [.bxor 7847 7857]
def bytes7740 : Bytes := ("    let r00001eb2: u32 = r00001ea7 ^ r00001eb1;\n" : String).toByteArray.data.toList
theorem checked7740 : bytes7740=statementBytes 7858 (op7740.map lower) ∧ bytes7740.length=48 := by core033_kernel_decide
def op7741 : List WordIR.Op := [.shr 7858 31]
def bytes7741 : Bytes := ("    let r00001eb3: u32 = r00001eb2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7741 : bytes7741=statementBytes 7859 (op7741.map lower) ∧ bytes7741.length=54 := by core033_kernel_decide
def op7742 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7742 : Bytes := ("    let r00001eb4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7742 : bytes7742=statementBytes 7860 (op7742.map lower) ∧ bytes7742.length=41 := by core033_kernel_decide
def op7743 : List WordIR.Op := [.bxor 7859 7860]
def bytes7743 : Bytes := ("    let r00001eb5: u32 = r00001eb3 ^ r00001eb4;\n" : String).toByteArray.data.toList
theorem checked7743 : bytes7743=statementBytes 7861 (op7743.map lower) ∧ bytes7743.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7680,op7681,op7682,op7683,op7684,op7685,op7686,op7687,op7688,op7689,op7690,op7691,op7692,op7693,op7694,op7695,op7696,op7697,op7698,op7699,op7700,op7701,op7702,op7703,op7704,op7705,op7706,op7707,op7708,op7709,op7710,op7711,op7712,op7713,op7714,op7715,op7716,op7717,op7718,op7719,op7720,op7721,op7722,op7723,op7724,op7725,op7726,op7727,op7728,op7729,op7730,op7731,op7732,op7733,op7734,op7735,op7736,op7737,op7738,op7739,op7740,op7741,op7742,op7743]
def chunks : List Bytes := [bytes7680,bytes7681,bytes7682,bytes7683,bytes7684,bytes7685,bytes7686,bytes7687,bytes7688,bytes7689,bytes7690,bytes7691,bytes7692,bytes7693,bytes7694,bytes7695,bytes7696,bytes7697,bytes7698,bytes7699,bytes7700,bytes7701,bytes7702,bytes7703,bytes7704,bytes7705,bytes7706,bytes7707,bytes7708,bytes7709,bytes7710,bytes7711,bytes7712,bytes7713,bytes7714,bytes7715,bytes7716,bytes7717,bytes7718,bytes7719,bytes7720,bytes7721,bytes7722,bytes7723,bytes7724,bytes7725,bytes7726,bytes7727,bytes7728,bytes7729,bytes7730,bytes7731,bytes7732,bytes7733,bytes7734,bytes7735,bytes7736,bytes7737,bytes7738,bytes7739,bytes7740,bytes7741,bytes7742,bytes7743]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7798 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7680.1 (.cons _ _ _ _ _ checked7681.1 (.cons _ _ _ _ _ checked7682.1 (.cons _ _ _ _ _ checked7683.1 (.cons _ _ _ _ _ checked7684.1 (.cons _ _ _ _ _ checked7685.1 (.cons _ _ _ _ _ checked7686.1 (.cons _ _ _ _ _ checked7687.1 (.cons _ _ _ _ _ checked7688.1 (.cons _ _ _ _ _ checked7689.1 (.cons _ _ _ _ _ checked7690.1 (.cons _ _ _ _ _ checked7691.1 (.cons _ _ _ _ _ checked7692.1 (.cons _ _ _ _ _ checked7693.1 (.cons _ _ _ _ _ checked7694.1 (.cons _ _ _ _ _ checked7695.1 (.cons _ _ _ _ _ checked7696.1 (.cons _ _ _ _ _ checked7697.1 (.cons _ _ _ _ _ checked7698.1 (.cons _ _ _ _ _ checked7699.1 (.cons _ _ _ _ _ checked7700.1 (.cons _ _ _ _ _ checked7701.1 (.cons _ _ _ _ _ checked7702.1 (.cons _ _ _ _ _ checked7703.1 (.cons _ _ _ _ _ checked7704.1 (.cons _ _ _ _ _ checked7705.1 (.cons _ _ _ _ _ checked7706.1 (.cons _ _ _ _ _ checked7707.1 (.cons _ _ _ _ _ checked7708.1 (.cons _ _ _ _ _ checked7709.1 (.cons _ _ _ _ _ checked7710.1 (.cons _ _ _ _ _ checked7711.1 (.cons _ _ _ _ _ checked7712.1 (.cons _ _ _ _ _ checked7713.1 (.cons _ _ _ _ _ checked7714.1 (.cons _ _ _ _ _ checked7715.1 (.cons _ _ _ _ _ checked7716.1 (.cons _ _ _ _ _ checked7717.1 (.cons _ _ _ _ _ checked7718.1 (.cons _ _ _ _ _ checked7719.1 (.cons _ _ _ _ _ checked7720.1 (.cons _ _ _ _ _ checked7721.1 (.cons _ _ _ _ _ checked7722.1 (.cons _ _ _ _ _ checked7723.1 (.cons _ _ _ _ _ checked7724.1 (.cons _ _ _ _ _ checked7725.1 (.cons _ _ _ _ _ checked7726.1 (.cons _ _ _ _ _ checked7727.1 (.cons _ _ _ _ _ checked7728.1 (.cons _ _ _ _ _ checked7729.1 (.cons _ _ _ _ _ checked7730.1 (.cons _ _ _ _ _ checked7731.1 (.cons _ _ _ _ _ checked7732.1 (.cons _ _ _ _ _ checked7733.1 (.cons _ _ _ _ _ checked7734.1 (.cons _ _ _ _ _ checked7735.1 (.cons _ _ _ _ _ checked7736.1 (.cons _ _ _ _ _ checked7737.1 (.cons _ _ _ _ _ checked7738.1 (.cons _ _ _ _ _ checked7739.1 (.cons _ _ _ _ _ checked7740.1 (.cons _ _ _ _ _ checked7741.1 (.cons _ _ _ _ _ checked7742.1 (.cons _ _ _ _ _ checked7743.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7798 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7680.2,checked7681.2,checked7682.2,checked7683.2,checked7684.2,checked7685.2,checked7686.2,checked7687.2,checked7688.2,checked7689.2,checked7690.2,checked7691.2,checked7692.2,checked7693.2,checked7694.2,checked7695.2,checked7696.2,checked7697.2,checked7698.2,checked7699.2,checked7700.2,checked7701.2,checked7702.2,checked7703.2,checked7704.2,checked7705.2,checked7706.2,checked7707.2,checked7708.2,checked7709.2,checked7710.2,checked7711.2,checked7712.2,checked7713.2,checked7714.2,checked7715.2,checked7716.2,checked7717.2,checked7718.2,checked7719.2,checked7720.2,checked7721.2,checked7722.2,checked7723.2,checked7724.2,checked7725.2,checked7726.2,checked7727.2,checked7728.2,checked7729.2,checked7730.2,checked7731.2,checked7732.2,checked7733.2,checked7734.2,checked7735.2,checked7736.2,checked7737.2,checked7738.2,checked7739.2,checked7740.2,checked7741.2,checked7742.2,checked7743.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup120
