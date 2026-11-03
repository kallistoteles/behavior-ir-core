import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup214
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13696 : List WordIR.Op := [.badd 13812 13813]
def bytes13696 : Bytes := ("    let r000035f6: u32 = r000035f4.wrapping_add(r000035f5);\n" : String).toByteArray.data.toList
theorem checked13696 : bytes13696=statementBytes 13814 (op13696.map lower) ∧ bytes13696.length=60 := by core033_kernel_decide
def op13697 : List WordIR.Op := [.band 13814 12416]
def bytes13697 : Bytes := ("    let r000035f7: u32 = r000035f6 & r00003080;\n" : String).toByteArray.data.toList
theorem checked13697 : bytes13697=statementBytes 13815 (op13697.map lower) ∧ bytes13697.length=48 := by core033_kernel_decide
def op13698 : List WordIR.Op := [.bnot 398]
def bytes13698 : Bytes := ("    let r000035f8: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13698 : bytes13698=statementBytes 13816 (op13698.map lower) ∧ bytes13698.length=37 := by core033_kernel_decide
def op13699 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13699 : Bytes := ("    let r000035f9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13699 : bytes13699=statementBytes 13817 (op13699.map lower) ∧ bytes13699.length=41 := by core033_kernel_decide
def op13700 : List WordIR.Op := [.badd 13816 13817]
def bytes13700 : Bytes := ("    let r000035fa: u32 = r000035f8.wrapping_add(r000035f9);\n" : String).toByteArray.data.toList
theorem checked13700 : bytes13700=statementBytes 13818 (op13700.map lower) ∧ bytes13700.length=60 := by core033_kernel_decide
def op13701 : List WordIR.Op := [.bnot 13818]
def bytes13701 : Bytes := ("    let r000035fb: u32 = !r000035fa;\n" : String).toByteArray.data.toList
theorem checked13701 : bytes13701=statementBytes 13819 (op13701.map lower) ∧ bytes13701.length=37 := by core033_kernel_decide
def op13702 : List WordIR.Op := [.band 13819 42]
def bytes13702 : Bytes := ("    let r000035fc: u32 = r000035fb & r0000002a;\n" : String).toByteArray.data.toList
theorem checked13702 : bytes13702=statementBytes 13820 (op13702.map lower) ∧ bytes13702.length=48 := by core033_kernel_decide
def op13703 : List WordIR.Op := [.bxor 13815 13820]
def bytes13703 : Bytes := ("    let r000035fd: u32 = r000035f7 ^ r000035fc;\n" : String).toByteArray.data.toList
theorem checked13703 : bytes13703=statementBytes 13821 (op13703.map lower) ∧ bytes13703.length=48 := by core033_kernel_decide
def op13704 : List WordIR.Op := [.bnot 398]
def bytes13704 : Bytes := ("    let r000035fe: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13704 : bytes13704=statementBytes 13822 (op13704.map lower) ∧ bytes13704.length=37 := by core033_kernel_decide
def op13705 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13705 : Bytes := ("    let r000035ff: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13705 : bytes13705=statementBytes 13823 (op13705.map lower) ∧ bytes13705.length=41 := by core033_kernel_decide
def op13706 : List WordIR.Op := [.badd 13822 13823]
def bytes13706 : Bytes := ("    let r00003600: u32 = r000035fe.wrapping_add(r000035ff);\n" : String).toByteArray.data.toList
theorem checked13706 : bytes13706=statementBytes 13824 (op13706.map lower) ∧ bytes13706.length=60 := by core033_kernel_decide
def op13707 : List WordIR.Op := [.band 13824 12884]
def bytes13707 : Bytes := ("    let r00003601: u32 = r00003600 & r00003254;\n" : String).toByteArray.data.toList
theorem checked13707 : bytes13707=statementBytes 13825 (op13707.map lower) ∧ bytes13707.length=48 := by core033_kernel_decide
def op13708 : List WordIR.Op := [.bnot 398]
def bytes13708 : Bytes := ("    let r00003602: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13708 : bytes13708=statementBytes 13826 (op13708.map lower) ∧ bytes13708.length=37 := by core033_kernel_decide
def op13709 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13709 : Bytes := ("    let r00003603: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13709 : bytes13709=statementBytes 13827 (op13709.map lower) ∧ bytes13709.length=41 := by core033_kernel_decide
def op13710 : List WordIR.Op := [.badd 13826 13827]
def bytes13710 : Bytes := ("    let r00003604: u32 = r00003602.wrapping_add(r00003603);\n" : String).toByteArray.data.toList
theorem checked13710 : bytes13710=statementBytes 13828 (op13710.map lower) ∧ bytes13710.length=60 := by core033_kernel_decide
def op13711 : List WordIR.Op := [.bnot 13828]
def bytes13711 : Bytes := ("    let r00003605: u32 = !r00003604;\n" : String).toByteArray.data.toList
theorem checked13711 : bytes13711=statementBytes 13829 (op13711.map lower) ∧ bytes13711.length=37 := by core033_kernel_decide
def op13712 : List WordIR.Op := [.band 13829 43]
def bytes13712 : Bytes := ("    let r00003606: u32 = r00003605 & r0000002b;\n" : String).toByteArray.data.toList
theorem checked13712 : bytes13712=statementBytes 13830 (op13712.map lower) ∧ bytes13712.length=48 := by core033_kernel_decide
def op13713 : List WordIR.Op := [.bxor 13825 13830]
def bytes13713 : Bytes := ("    let r00003607: u32 = r00003601 ^ r00003606;\n" : String).toByteArray.data.toList
theorem checked13713 : bytes13713=statementBytes 13831 (op13713.map lower) ∧ bytes13713.length=48 := by core033_kernel_decide
def op13714 : List WordIR.Op := [.bnot 398]
def bytes13714 : Bytes := ("    let r00003608: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13714 : bytes13714=statementBytes 13832 (op13714.map lower) ∧ bytes13714.length=37 := by core033_kernel_decide
def op13715 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13715 : Bytes := ("    let r00003609: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13715 : bytes13715=statementBytes 13833 (op13715.map lower) ∧ bytes13715.length=41 := by core033_kernel_decide
def op13716 : List WordIR.Op := [.badd 13832 13833]
def bytes13716 : Bytes := ("    let r0000360a: u32 = r00003608.wrapping_add(r00003609);\n" : String).toByteArray.data.toList
theorem checked13716 : bytes13716=statementBytes 13834 (op13716.map lower) ∧ bytes13716.length=60 := by core033_kernel_decide
def op13717 : List WordIR.Op := [.band 13834 12936]
def bytes13717 : Bytes := ("    let r0000360b: u32 = r0000360a & r00003288;\n" : String).toByteArray.data.toList
theorem checked13717 : bytes13717=statementBytes 13835 (op13717.map lower) ∧ bytes13717.length=48 := by core033_kernel_decide
def op13718 : List WordIR.Op := [.bnot 398]
def bytes13718 : Bytes := ("    let r0000360c: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13718 : bytes13718=statementBytes 13836 (op13718.map lower) ∧ bytes13718.length=37 := by core033_kernel_decide
def op13719 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13719 : Bytes := ("    let r0000360d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13719 : bytes13719=statementBytes 13837 (op13719.map lower) ∧ bytes13719.length=41 := by core033_kernel_decide
def op13720 : List WordIR.Op := [.badd 13836 13837]
def bytes13720 : Bytes := ("    let r0000360e: u32 = r0000360c.wrapping_add(r0000360d);\n" : String).toByteArray.data.toList
theorem checked13720 : bytes13720=statementBytes 13838 (op13720.map lower) ∧ bytes13720.length=60 := by core033_kernel_decide
def op13721 : List WordIR.Op := [.bnot 13838]
def bytes13721 : Bytes := ("    let r0000360f: u32 = !r0000360e;\n" : String).toByteArray.data.toList
theorem checked13721 : bytes13721=statementBytes 13839 (op13721.map lower) ∧ bytes13721.length=37 := by core033_kernel_decide
def op13722 : List WordIR.Op := [.band 13839 44]
def bytes13722 : Bytes := ("    let r00003610: u32 = r0000360f & r0000002c;\n" : String).toByteArray.data.toList
theorem checked13722 : bytes13722=statementBytes 13840 (op13722.map lower) ∧ bytes13722.length=48 := by core033_kernel_decide
def op13723 : List WordIR.Op := [.bxor 13835 13840]
def bytes13723 : Bytes := ("    let r00003611: u32 = r0000360b ^ r00003610;\n" : String).toByteArray.data.toList
theorem checked13723 : bytes13723=statementBytes 13841 (op13723.map lower) ∧ bytes13723.length=48 := by core033_kernel_decide
def op13724 : List WordIR.Op := [.bnot 398]
def bytes13724 : Bytes := ("    let r00003612: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13724 : bytes13724=statementBytes 13842 (op13724.map lower) ∧ bytes13724.length=37 := by core033_kernel_decide
def op13725 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13725 : Bytes := ("    let r00003613: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13725 : bytes13725=statementBytes 13843 (op13725.map lower) ∧ bytes13725.length=41 := by core033_kernel_decide
def op13726 : List WordIR.Op := [.badd 13842 13843]
def bytes13726 : Bytes := ("    let r00003614: u32 = r00003612.wrapping_add(r00003613);\n" : String).toByteArray.data.toList
theorem checked13726 : bytes13726=statementBytes 13844 (op13726.map lower) ∧ bytes13726.length=60 := by core033_kernel_decide
def op13727 : List WordIR.Op := [.band 13844 13092]
def bytes13727 : Bytes := ("    let r00003615: u32 = r00003614 & r00003324;\n" : String).toByteArray.data.toList
theorem checked13727 : bytes13727=statementBytes 13845 (op13727.map lower) ∧ bytes13727.length=48 := by core033_kernel_decide
def op13728 : List WordIR.Op := [.bnot 398]
def bytes13728 : Bytes := ("    let r00003616: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13728 : bytes13728=statementBytes 13846 (op13728.map lower) ∧ bytes13728.length=37 := by core033_kernel_decide
def op13729 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13729 : Bytes := ("    let r00003617: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13729 : bytes13729=statementBytes 13847 (op13729.map lower) ∧ bytes13729.length=41 := by core033_kernel_decide
def op13730 : List WordIR.Op := [.badd 13846 13847]
def bytes13730 : Bytes := ("    let r00003618: u32 = r00003616.wrapping_add(r00003617);\n" : String).toByteArray.data.toList
theorem checked13730 : bytes13730=statementBytes 13848 (op13730.map lower) ∧ bytes13730.length=60 := by core033_kernel_decide
def op13731 : List WordIR.Op := [.bnot 13848]
def bytes13731 : Bytes := ("    let r00003619: u32 = !r00003618;\n" : String).toByteArray.data.toList
theorem checked13731 : bytes13731=statementBytes 13849 (op13731.map lower) ∧ bytes13731.length=37 := by core033_kernel_decide
def op13732 : List WordIR.Op := [.band 13849 45]
def bytes13732 : Bytes := ("    let r0000361a: u32 = r00003619 & r0000002d;\n" : String).toByteArray.data.toList
theorem checked13732 : bytes13732=statementBytes 13850 (op13732.map lower) ∧ bytes13732.length=48 := by core033_kernel_decide
def op13733 : List WordIR.Op := [.bxor 13845 13850]
def bytes13733 : Bytes := ("    let r0000361b: u32 = r00003615 ^ r0000361a;\n" : String).toByteArray.data.toList
theorem checked13733 : bytes13733=statementBytes 13851 (op13733.map lower) ∧ bytes13733.length=48 := by core033_kernel_decide
def op13734 : List WordIR.Op := [.bnot 398]
def bytes13734 : Bytes := ("    let r0000361c: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13734 : bytes13734=statementBytes 13852 (op13734.map lower) ∧ bytes13734.length=37 := by core033_kernel_decide
def op13735 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13735 : Bytes := ("    let r0000361d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13735 : bytes13735=statementBytes 13853 (op13735.map lower) ∧ bytes13735.length=41 := by core033_kernel_decide
def op13736 : List WordIR.Op := [.badd 13852 13853]
def bytes13736 : Bytes := ("    let r0000361e: u32 = r0000361c.wrapping_add(r0000361d);\n" : String).toByteArray.data.toList
theorem checked13736 : bytes13736=statementBytes 13854 (op13736.map lower) ∧ bytes13736.length=60 := by core033_kernel_decide
def op13737 : List WordIR.Op := [.band 13854 13196]
def bytes13737 : Bytes := ("    let r0000361f: u32 = r0000361e & r0000338c;\n" : String).toByteArray.data.toList
theorem checked13737 : bytes13737=statementBytes 13855 (op13737.map lower) ∧ bytes13737.length=48 := by core033_kernel_decide
def op13738 : List WordIR.Op := [.bnot 398]
def bytes13738 : Bytes := ("    let r00003620: u32 = !r0000018e;\n" : String).toByteArray.data.toList
theorem checked13738 : bytes13738=statementBytes 13856 (op13738.map lower) ∧ bytes13738.length=37 := by core033_kernel_decide
def op13739 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13739 : Bytes := ("    let r00003621: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13739 : bytes13739=statementBytes 13857 (op13739.map lower) ∧ bytes13739.length=41 := by core033_kernel_decide
def op13740 : List WordIR.Op := [.badd 13856 13857]
def bytes13740 : Bytes := ("    let r00003622: u32 = r00003620.wrapping_add(r00003621);\n" : String).toByteArray.data.toList
theorem checked13740 : bytes13740=statementBytes 13858 (op13740.map lower) ∧ bytes13740.length=60 := by core033_kernel_decide
def op13741 : List WordIR.Op := [.bnot 13858]
def bytes13741 : Bytes := ("    let r00003623: u32 = !r00003622;\n" : String).toByteArray.data.toList
theorem checked13741 : bytes13741=statementBytes 13859 (op13741.map lower) ∧ bytes13741.length=37 := by core033_kernel_decide
def op13742 : List WordIR.Op := [.band 13859 46]
def bytes13742 : Bytes := ("    let r00003624: u32 = r00003623 & r0000002e;\n" : String).toByteArray.data.toList
theorem checked13742 : bytes13742=statementBytes 13860 (op13742.map lower) ∧ bytes13742.length=48 := by core033_kernel_decide
def op13743 : List WordIR.Op := [.bxor 13855 13860]
def bytes13743 : Bytes := ("    let r00003625: u32 = r0000361f ^ r00003624;\n" : String).toByteArray.data.toList
theorem checked13743 : bytes13743=statementBytes 13861 (op13743.map lower) ∧ bytes13743.length=48 := by core033_kernel_decide
def op13744 : List WordIR.Op := [.bnot 419]
def bytes13744 : Bytes := ("    let r00003626: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13744 : bytes13744=statementBytes 13862 (op13744.map lower) ∧ bytes13744.length=37 := by core033_kernel_decide
def op13745 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13745 : Bytes := ("    let r00003627: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13745 : bytes13745=statementBytes 13863 (op13745.map lower) ∧ bytes13745.length=41 := by core033_kernel_decide
def op13746 : List WordIR.Op := [.badd 13862 13863]
def bytes13746 : Bytes := ("    let r00003628: u32 = r00003626.wrapping_add(r00003627);\n" : String).toByteArray.data.toList
theorem checked13746 : bytes13746=statementBytes 13864 (op13746.map lower) ∧ bytes13746.length=60 := by core033_kernel_decide
def op13747 : List WordIR.Op := [.band 13864 12052]
def bytes13747 : Bytes := ("    let r00003629: u32 = r00003628 & r00002f14;\n" : String).toByteArray.data.toList
theorem checked13747 : bytes13747=statementBytes 13865 (op13747.map lower) ∧ bytes13747.length=48 := by core033_kernel_decide
def op13748 : List WordIR.Op := [.bnot 419]
def bytes13748 : Bytes := ("    let r0000362a: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13748 : bytes13748=statementBytes 13866 (op13748.map lower) ∧ bytes13748.length=37 := by core033_kernel_decide
def op13749 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13749 : Bytes := ("    let r0000362b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13749 : bytes13749=statementBytes 13867 (op13749.map lower) ∧ bytes13749.length=41 := by core033_kernel_decide
def op13750 : List WordIR.Op := [.badd 13866 13867]
def bytes13750 : Bytes := ("    let r0000362c: u32 = r0000362a.wrapping_add(r0000362b);\n" : String).toByteArray.data.toList
theorem checked13750 : bytes13750=statementBytes 13868 (op13750.map lower) ∧ bytes13750.length=60 := by core033_kernel_decide
def op13751 : List WordIR.Op := [.bnot 13868]
def bytes13751 : Bytes := ("    let r0000362d: u32 = !r0000362c;\n" : String).toByteArray.data.toList
theorem checked13751 : bytes13751=statementBytes 13869 (op13751.map lower) ∧ bytes13751.length=37 := by core033_kernel_decide
def op13752 : List WordIR.Op := [.band 13869 55]
def bytes13752 : Bytes := ("    let r0000362e: u32 = r0000362d & r00000037;\n" : String).toByteArray.data.toList
theorem checked13752 : bytes13752=statementBytes 13870 (op13752.map lower) ∧ bytes13752.length=48 := by core033_kernel_decide
def op13753 : List WordIR.Op := [.bxor 13865 13870]
def bytes13753 : Bytes := ("    let r0000362f: u32 = r00003629 ^ r0000362e;\n" : String).toByteArray.data.toList
theorem checked13753 : bytes13753=statementBytes 13871 (op13753.map lower) ∧ bytes13753.length=48 := by core033_kernel_decide
def op13754 : List WordIR.Op := [.bnot 419]
def bytes13754 : Bytes := ("    let r00003630: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13754 : bytes13754=statementBytes 13872 (op13754.map lower) ∧ bytes13754.length=37 := by core033_kernel_decide
def op13755 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13755 : Bytes := ("    let r00003631: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13755 : bytes13755=statementBytes 13873 (op13755.map lower) ∧ bytes13755.length=41 := by core033_kernel_decide
def op13756 : List WordIR.Op := [.badd 13872 13873]
def bytes13756 : Bytes := ("    let r00003632: u32 = r00003630.wrapping_add(r00003631);\n" : String).toByteArray.data.toList
theorem checked13756 : bytes13756=statementBytes 13874 (op13756.map lower) ∧ bytes13756.length=60 := by core033_kernel_decide
def op13757 : List WordIR.Op := [.band 13874 12104]
def bytes13757 : Bytes := ("    let r00003633: u32 = r00003632 & r00002f48;\n" : String).toByteArray.data.toList
theorem checked13757 : bytes13757=statementBytes 13875 (op13757.map lower) ∧ bytes13757.length=48 := by core033_kernel_decide
def op13758 : List WordIR.Op := [.bnot 419]
def bytes13758 : Bytes := ("    let r00003634: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13758 : bytes13758=statementBytes 13876 (op13758.map lower) ∧ bytes13758.length=37 := by core033_kernel_decide
def op13759 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13759 : Bytes := ("    let r00003635: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13759 : bytes13759=statementBytes 13877 (op13759.map lower) ∧ bytes13759.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13696,op13697,op13698,op13699,op13700,op13701,op13702,op13703,op13704,op13705,op13706,op13707,op13708,op13709,op13710,op13711,op13712,op13713,op13714,op13715,op13716,op13717,op13718,op13719,op13720,op13721,op13722,op13723,op13724,op13725,op13726,op13727,op13728,op13729,op13730,op13731,op13732,op13733,op13734,op13735,op13736,op13737,op13738,op13739,op13740,op13741,op13742,op13743,op13744,op13745,op13746,op13747,op13748,op13749,op13750,op13751,op13752,op13753,op13754,op13755,op13756,op13757,op13758,op13759]
def chunks : List Bytes := [bytes13696,bytes13697,bytes13698,bytes13699,bytes13700,bytes13701,bytes13702,bytes13703,bytes13704,bytes13705,bytes13706,bytes13707,bytes13708,bytes13709,bytes13710,bytes13711,bytes13712,bytes13713,bytes13714,bytes13715,bytes13716,bytes13717,bytes13718,bytes13719,bytes13720,bytes13721,bytes13722,bytes13723,bytes13724,bytes13725,bytes13726,bytes13727,bytes13728,bytes13729,bytes13730,bytes13731,bytes13732,bytes13733,bytes13734,bytes13735,bytes13736,bytes13737,bytes13738,bytes13739,bytes13740,bytes13741,bytes13742,bytes13743,bytes13744,bytes13745,bytes13746,bytes13747,bytes13748,bytes13749,bytes13750,bytes13751,bytes13752,bytes13753,bytes13754,bytes13755,bytes13756,bytes13757,bytes13758,bytes13759]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13814 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13696.1 (.cons _ _ _ _ _ checked13697.1 (.cons _ _ _ _ _ checked13698.1 (.cons _ _ _ _ _ checked13699.1 (.cons _ _ _ _ _ checked13700.1 (.cons _ _ _ _ _ checked13701.1 (.cons _ _ _ _ _ checked13702.1 (.cons _ _ _ _ _ checked13703.1 (.cons _ _ _ _ _ checked13704.1 (.cons _ _ _ _ _ checked13705.1 (.cons _ _ _ _ _ checked13706.1 (.cons _ _ _ _ _ checked13707.1 (.cons _ _ _ _ _ checked13708.1 (.cons _ _ _ _ _ checked13709.1 (.cons _ _ _ _ _ checked13710.1 (.cons _ _ _ _ _ checked13711.1 (.cons _ _ _ _ _ checked13712.1 (.cons _ _ _ _ _ checked13713.1 (.cons _ _ _ _ _ checked13714.1 (.cons _ _ _ _ _ checked13715.1 (.cons _ _ _ _ _ checked13716.1 (.cons _ _ _ _ _ checked13717.1 (.cons _ _ _ _ _ checked13718.1 (.cons _ _ _ _ _ checked13719.1 (.cons _ _ _ _ _ checked13720.1 (.cons _ _ _ _ _ checked13721.1 (.cons _ _ _ _ _ checked13722.1 (.cons _ _ _ _ _ checked13723.1 (.cons _ _ _ _ _ checked13724.1 (.cons _ _ _ _ _ checked13725.1 (.cons _ _ _ _ _ checked13726.1 (.cons _ _ _ _ _ checked13727.1 (.cons _ _ _ _ _ checked13728.1 (.cons _ _ _ _ _ checked13729.1 (.cons _ _ _ _ _ checked13730.1 (.cons _ _ _ _ _ checked13731.1 (.cons _ _ _ _ _ checked13732.1 (.cons _ _ _ _ _ checked13733.1 (.cons _ _ _ _ _ checked13734.1 (.cons _ _ _ _ _ checked13735.1 (.cons _ _ _ _ _ checked13736.1 (.cons _ _ _ _ _ checked13737.1 (.cons _ _ _ _ _ checked13738.1 (.cons _ _ _ _ _ checked13739.1 (.cons _ _ _ _ _ checked13740.1 (.cons _ _ _ _ _ checked13741.1 (.cons _ _ _ _ _ checked13742.1 (.cons _ _ _ _ _ checked13743.1 (.cons _ _ _ _ _ checked13744.1 (.cons _ _ _ _ _ checked13745.1 (.cons _ _ _ _ _ checked13746.1 (.cons _ _ _ _ _ checked13747.1 (.cons _ _ _ _ _ checked13748.1 (.cons _ _ _ _ _ checked13749.1 (.cons _ _ _ _ _ checked13750.1 (.cons _ _ _ _ _ checked13751.1 (.cons _ _ _ _ _ checked13752.1 (.cons _ _ _ _ _ checked13753.1 (.cons _ _ _ _ _ checked13754.1 (.cons _ _ _ _ _ checked13755.1 (.cons _ _ _ _ _ checked13756.1 (.cons _ _ _ _ _ checked13757.1 (.cons _ _ _ _ _ checked13758.1 (.cons _ _ _ _ _ checked13759.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13814 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2928 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13696.2,checked13697.2,checked13698.2,checked13699.2,checked13700.2,checked13701.2,checked13702.2,checked13703.2,checked13704.2,checked13705.2,checked13706.2,checked13707.2,checked13708.2,checked13709.2,checked13710.2,checked13711.2,checked13712.2,checked13713.2,checked13714.2,checked13715.2,checked13716.2,checked13717.2,checked13718.2,checked13719.2,checked13720.2,checked13721.2,checked13722.2,checked13723.2,checked13724.2,checked13725.2,checked13726.2,checked13727.2,checked13728.2,checked13729.2,checked13730.2,checked13731.2,checked13732.2,checked13733.2,checked13734.2,checked13735.2,checked13736.2,checked13737.2,checked13738.2,checked13739.2,checked13740.2,checked13741.2,checked13742.2,checked13743.2,checked13744.2,checked13745.2,checked13746.2,checked13747.2,checked13748.2,checked13749.2,checked13750.2,checked13751.2,checked13752.2,checked13753.2,checked13754.2,checked13755.2,checked13756.2,checked13757.2,checked13758.2,checked13759.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup214
