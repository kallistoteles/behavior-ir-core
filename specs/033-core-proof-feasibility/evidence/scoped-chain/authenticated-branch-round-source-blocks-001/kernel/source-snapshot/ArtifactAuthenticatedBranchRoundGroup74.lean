import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup74
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4736 : List WordIR.Op := [.bxor 1299 4853]
def bytes4736 : Bytes := ("    let r000012f6: u32 = r00000513 ^ r000012f5;\n" : String).toByteArray.data.toList
theorem checked4736 : bytes4736=statementBytes 4854 (op4736.map lower) ∧ bytes4736.length=48 := by core033_kernel_decide
def op4737 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4737 : Bytes := ("    let r000012f7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4737 : bytes4737=statementBytes 4855 (op4737.map lower) ∧ bytes4737.length=41 := by core033_kernel_decide
def op4738 : List WordIR.Op := [.bnot 4855]
def bytes4738 : Bytes := ("    let r000012f8: u32 = !r000012f7;\n" : String).toByteArray.data.toList
theorem checked4738 : bytes4738=statementBytes 4856 (op4738.map lower) ∧ bytes4738.length=37 := by core033_kernel_decide
def op4739 : List WordIR.Op := [.badd 4854 4856]
def bytes4739 : Bytes := ("    let r000012f9: u32 = r000012f6.wrapping_add(r000012f8);\n" : String).toByteArray.data.toList
theorem checked4739 : bytes4739=statementBytes 4857 (op4739.map lower) ∧ bytes4739.length=60 := by core033_kernel_decide
def op4740 : List WordIR.Op := [.bnot 4857]
def bytes4740 : Bytes := ("    let r000012fa: u32 = !r000012f9;\n" : String).toByteArray.data.toList
theorem checked4740 : bytes4740=statementBytes 4858 (op4740.map lower) ∧ bytes4740.length=37 := by core033_kernel_decide
def op4741 : List WordIR.Op := [.band 4852 4858]
def bytes4741 : Bytes := ("    let r000012fb: u32 = r000012f4 & r000012fa;\n" : String).toByteArray.data.toList
theorem checked4741 : bytes4741=statementBytes 4859 (op4741.map lower) ∧ bytes4741.length=48 := by core033_kernel_decide
def op4742 : List WordIR.Op := [.bxor 4847 4859]
def bytes4742 : Bytes := ("    let r000012fc: u32 = r000012ef ^ r000012fb;\n" : String).toByteArray.data.toList
theorem checked4742 : bytes4742=statementBytes 4860 (op4742.map lower) ∧ bytes4742.length=48 := by core033_kernel_decide
def op4743 : List WordIR.Op := [.shr 4860 31]
def bytes4743 : Bytes := ("    let r000012fd: u32 = r000012fc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4743 : bytes4743=statementBytes 4861 (op4743.map lower) ∧ bytes4743.length=54 := by core033_kernel_decide
def op4744 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4744 : Bytes := ("    let r000012fe: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4744 : bytes4744=statementBytes 4862 (op4744.map lower) ∧ bytes4744.length=41 := by core033_kernel_decide
def op4745 : List WordIR.Op := [.bxor 4861 4862]
def bytes4745 : Bytes := ("    let r000012ff: u32 = r000012fd ^ r000012fe;\n" : String).toByteArray.data.toList
theorem checked4745 : bytes4745=statementBytes 4863 (op4745.map lower) ∧ bytes4745.length=48 := by core033_kernel_decide
def op4746 : List WordIR.Op := [.bnot 4863]
def bytes4746 : Bytes := ("    let r00001300: u32 = !r000012ff;\n" : String).toByteArray.data.toList
theorem checked4746 : bytes4746=statementBytes 4864 (op4746.map lower) ∧ bytes4746.length=37 := by core033_kernel_decide
def op4747 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4747 : Bytes := ("    let r00001301: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4747 : bytes4747=statementBytes 4865 (op4747.map lower) ∧ bytes4747.length=41 := by core033_kernel_decide
def op4748 : List WordIR.Op := [.badd 4864 4865]
def bytes4748 : Bytes := ("    let r00001302: u32 = r00001300.wrapping_add(r00001301);\n" : String).toByteArray.data.toList
theorem checked4748 : bytes4748=statementBytes 4866 (op4748.map lower) ∧ bytes4748.length=60 := by core033_kernel_decide
def op4749 : List WordIR.Op := [.band 4866 2771]
def bytes4749 : Bytes := ("    let r00001303: u32 = r00001302 & r00000ad3;\n" : String).toByteArray.data.toList
theorem checked4749 : bytes4749=statementBytes 4867 (op4749.map lower) ∧ bytes4749.length=48 := by core033_kernel_decide
def op4750 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4750 : Bytes := ("    let r00001304: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4750 : bytes4750=statementBytes 4868 (op4750.map lower) ∧ bytes4750.length=41 := by core033_kernel_decide
def op4751 : List WordIR.Op := [.bxor 1299 4868]
def bytes4751 : Bytes := ("    let r00001305: u32 = r00000513 ^ r00001304;\n" : String).toByteArray.data.toList
theorem checked4751 : bytes4751=statementBytes 4869 (op4751.map lower) ∧ bytes4751.length=48 := by core033_kernel_decide
def op4752 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4752 : Bytes := ("    let r00001306: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4752 : bytes4752=statementBytes 4870 (op4752.map lower) ∧ bytes4752.length=41 := by core033_kernel_decide
def op4753 : List WordIR.Op := [.bnot 4870]
def bytes4753 : Bytes := ("    let r00001307: u32 = !r00001306;\n" : String).toByteArray.data.toList
theorem checked4753 : bytes4753=statementBytes 4871 (op4753.map lower) ∧ bytes4753.length=37 := by core033_kernel_decide
def op4754 : List WordIR.Op := [.band 4869 4871]
def bytes4754 : Bytes := ("    let r00001308: u32 = r00001305 & r00001307;\n" : String).toByteArray.data.toList
theorem checked4754 : bytes4754=statementBytes 4872 (op4754.map lower) ∧ bytes4754.length=48 := by core033_kernel_decide
def op4755 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4755 : Bytes := ("    let r00001309: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4755 : bytes4755=statementBytes 4873 (op4755.map lower) ∧ bytes4755.length=41 := by core033_kernel_decide
def op4756 : List WordIR.Op := [.bxor 1299 4873]
def bytes4756 : Bytes := ("    let r0000130a: u32 = r00000513 ^ r00001309;\n" : String).toByteArray.data.toList
theorem checked4756 : bytes4756=statementBytes 4874 (op4756.map lower) ∧ bytes4756.length=48 := by core033_kernel_decide
def op4757 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4757 : Bytes := ("    let r0000130b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4757 : bytes4757=statementBytes 4875 (op4757.map lower) ∧ bytes4757.length=41 := by core033_kernel_decide
def op4758 : List WordIR.Op := [.bnot 4875]
def bytes4758 : Bytes := ("    let r0000130c: u32 = !r0000130b;\n" : String).toByteArray.data.toList
theorem checked4758 : bytes4758=statementBytes 4876 (op4758.map lower) ∧ bytes4758.length=37 := by core033_kernel_decide
def op4759 : List WordIR.Op := [.bxor 4874 4876]
def bytes4759 : Bytes := ("    let r0000130d: u32 = r0000130a ^ r0000130c;\n" : String).toByteArray.data.toList
theorem checked4759 : bytes4759=statementBytes 4877 (op4759.map lower) ∧ bytes4759.length=48 := by core033_kernel_decide
def op4760 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4760 : Bytes := ("    let r0000130e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4760 : bytes4760=statementBytes 4878 (op4760.map lower) ∧ bytes4760.length=41 := by core033_kernel_decide
def op4761 : List WordIR.Op := [.bxor 1299 4878]
def bytes4761 : Bytes := ("    let r0000130f: u32 = r00000513 ^ r0000130e;\n" : String).toByteArray.data.toList
theorem checked4761 : bytes4761=statementBytes 4879 (op4761.map lower) ∧ bytes4761.length=48 := by core033_kernel_decide
def op4762 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4762 : Bytes := ("    let r00001310: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4762 : bytes4762=statementBytes 4880 (op4762.map lower) ∧ bytes4762.length=41 := by core033_kernel_decide
def op4763 : List WordIR.Op := [.bnot 4880]
def bytes4763 : Bytes := ("    let r00001311: u32 = !r00001310;\n" : String).toByteArray.data.toList
theorem checked4763 : bytes4763=statementBytes 4881 (op4763.map lower) ∧ bytes4763.length=37 := by core033_kernel_decide
def op4764 : List WordIR.Op := [.badd 4879 4881]
def bytes4764 : Bytes := ("    let r00001312: u32 = r0000130f.wrapping_add(r00001311);\n" : String).toByteArray.data.toList
theorem checked4764 : bytes4764=statementBytes 4882 (op4764.map lower) ∧ bytes4764.length=60 := by core033_kernel_decide
def op4765 : List WordIR.Op := [.bnot 4882]
def bytes4765 : Bytes := ("    let r00001313: u32 = !r00001312;\n" : String).toByteArray.data.toList
theorem checked4765 : bytes4765=statementBytes 4883 (op4765.map lower) ∧ bytes4765.length=37 := by core033_kernel_decide
def op4766 : List WordIR.Op := [.band 4877 4883]
def bytes4766 : Bytes := ("    let r00001314: u32 = r0000130d & r00001313;\n" : String).toByteArray.data.toList
theorem checked4766 : bytes4766=statementBytes 4884 (op4766.map lower) ∧ bytes4766.length=48 := by core033_kernel_decide
def op4767 : List WordIR.Op := [.bxor 4872 4884]
def bytes4767 : Bytes := ("    let r00001315: u32 = r00001308 ^ r00001314;\n" : String).toByteArray.data.toList
theorem checked4767 : bytes4767=statementBytes 4885 (op4767.map lower) ∧ bytes4767.length=48 := by core033_kernel_decide
def op4768 : List WordIR.Op := [.shr 4885 31]
def bytes4768 : Bytes := ("    let r00001316: u32 = r00001315 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4768 : bytes4768=statementBytes 4886 (op4768.map lower) ∧ bytes4768.length=54 := by core033_kernel_decide
def op4769 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4769 : Bytes := ("    let r00001317: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4769 : bytes4769=statementBytes 4887 (op4769.map lower) ∧ bytes4769.length=41 := by core033_kernel_decide
def op4770 : List WordIR.Op := [.bxor 4886 4887]
def bytes4770 : Bytes := ("    let r00001318: u32 = r00001316 ^ r00001317;\n" : String).toByteArray.data.toList
theorem checked4770 : bytes4770=statementBytes 4888 (op4770.map lower) ∧ bytes4770.length=48 := by core033_kernel_decide
def op4771 : List WordIR.Op := [.bnot 4888]
def bytes4771 : Bytes := ("    let r00001319: u32 = !r00001318;\n" : String).toByteArray.data.toList
theorem checked4771 : bytes4771=statementBytes 4889 (op4771.map lower) ∧ bytes4771.length=37 := by core033_kernel_decide
def op4772 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4772 : Bytes := ("    let r0000131a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4772 : bytes4772=statementBytes 4890 (op4772.map lower) ∧ bytes4772.length=41 := by core033_kernel_decide
def op4773 : List WordIR.Op := [.badd 4889 4890]
def bytes4773 : Bytes := ("    let r0000131b: u32 = r00001319.wrapping_add(r0000131a);\n" : String).toByteArray.data.toList
theorem checked4773 : bytes4773=statementBytes 4891 (op4773.map lower) ∧ bytes4773.length=60 := by core033_kernel_decide
def op4774 : List WordIR.Op := [.bnot 4891]
def bytes4774 : Bytes := ("    let r0000131c: u32 = !r0000131b;\n" : String).toByteArray.data.toList
theorem checked4774 : bytes4774=statementBytes 4892 (op4774.map lower) ∧ bytes4774.length=37 := by core033_kernel_decide
def op4775 : List WordIR.Op := [.band 4892 2579]
def bytes4775 : Bytes := ("    let r0000131d: u32 = r0000131c & r00000a13;\n" : String).toByteArray.data.toList
theorem checked4775 : bytes4775=statementBytes 4893 (op4775.map lower) ∧ bytes4775.length=48 := by core033_kernel_decide
def op4776 : List WordIR.Op := [.bxor 4867 4893]
def bytes4776 : Bytes := ("    let r0000131e: u32 = r00001303 ^ r0000131d;\n" : String).toByteArray.data.toList
theorem checked4776 : bytes4776=statementBytes 4894 (op4776.map lower) ∧ bytes4776.length=48 := by core033_kernel_decide
def op4777 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4777 : Bytes := ("    let r0000131f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4777 : bytes4777=statementBytes 4895 (op4777.map lower) ∧ bytes4777.length=41 := by core033_kernel_decide
def op4778 : List WordIR.Op := [.bxor 1299 4895]
def bytes4778 : Bytes := ("    let r00001320: u32 = r00000513 ^ r0000131f;\n" : String).toByteArray.data.toList
theorem checked4778 : bytes4778=statementBytes 4896 (op4778.map lower) ∧ bytes4778.length=48 := by core033_kernel_decide
def op4779 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4779 : Bytes := ("    let r00001321: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4779 : bytes4779=statementBytes 4897 (op4779.map lower) ∧ bytes4779.length=41 := by core033_kernel_decide
def op4780 : List WordIR.Op := [.bnot 4897]
def bytes4780 : Bytes := ("    let r00001322: u32 = !r00001321;\n" : String).toByteArray.data.toList
theorem checked4780 : bytes4780=statementBytes 4898 (op4780.map lower) ∧ bytes4780.length=37 := by core033_kernel_decide
def op4781 : List WordIR.Op := [.band 4896 4898]
def bytes4781 : Bytes := ("    let r00001323: u32 = r00001320 & r00001322;\n" : String).toByteArray.data.toList
theorem checked4781 : bytes4781=statementBytes 4899 (op4781.map lower) ∧ bytes4781.length=48 := by core033_kernel_decide
def op4782 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4782 : Bytes := ("    let r00001324: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4782 : bytes4782=statementBytes 4900 (op4782.map lower) ∧ bytes4782.length=41 := by core033_kernel_decide
def op4783 : List WordIR.Op := [.bxor 1299 4900]
def bytes4783 : Bytes := ("    let r00001325: u32 = r00000513 ^ r00001324;\n" : String).toByteArray.data.toList
theorem checked4783 : bytes4783=statementBytes 4901 (op4783.map lower) ∧ bytes4783.length=48 := by core033_kernel_decide
def op4784 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4784 : Bytes := ("    let r00001326: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4784 : bytes4784=statementBytes 4902 (op4784.map lower) ∧ bytes4784.length=41 := by core033_kernel_decide
def op4785 : List WordIR.Op := [.bnot 4902]
def bytes4785 : Bytes := ("    let r00001327: u32 = !r00001326;\n" : String).toByteArray.data.toList
theorem checked4785 : bytes4785=statementBytes 4903 (op4785.map lower) ∧ bytes4785.length=37 := by core033_kernel_decide
def op4786 : List WordIR.Op := [.bxor 4901 4903]
def bytes4786 : Bytes := ("    let r00001328: u32 = r00001325 ^ r00001327;\n" : String).toByteArray.data.toList
theorem checked4786 : bytes4786=statementBytes 4904 (op4786.map lower) ∧ bytes4786.length=48 := by core033_kernel_decide
def op4787 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4787 : Bytes := ("    let r00001329: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4787 : bytes4787=statementBytes 4905 (op4787.map lower) ∧ bytes4787.length=41 := by core033_kernel_decide
def op4788 : List WordIR.Op := [.bxor 1299 4905]
def bytes4788 : Bytes := ("    let r0000132a: u32 = r00000513 ^ r00001329;\n" : String).toByteArray.data.toList
theorem checked4788 : bytes4788=statementBytes 4906 (op4788.map lower) ∧ bytes4788.length=48 := by core033_kernel_decide
def op4789 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4789 : Bytes := ("    let r0000132b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4789 : bytes4789=statementBytes 4907 (op4789.map lower) ∧ bytes4789.length=41 := by core033_kernel_decide
def op4790 : List WordIR.Op := [.bnot 4907]
def bytes4790 : Bytes := ("    let r0000132c: u32 = !r0000132b;\n" : String).toByteArray.data.toList
theorem checked4790 : bytes4790=statementBytes 4908 (op4790.map lower) ∧ bytes4790.length=37 := by core033_kernel_decide
def op4791 : List WordIR.Op := [.badd 4906 4908]
def bytes4791 : Bytes := ("    let r0000132d: u32 = r0000132a.wrapping_add(r0000132c);\n" : String).toByteArray.data.toList
theorem checked4791 : bytes4791=statementBytes 4909 (op4791.map lower) ∧ bytes4791.length=60 := by core033_kernel_decide
def op4792 : List WordIR.Op := [.bnot 4909]
def bytes4792 : Bytes := ("    let r0000132e: u32 = !r0000132d;\n" : String).toByteArray.data.toList
theorem checked4792 : bytes4792=statementBytes 4910 (op4792.map lower) ∧ bytes4792.length=37 := by core033_kernel_decide
def op4793 : List WordIR.Op := [.band 4904 4910]
def bytes4793 : Bytes := ("    let r0000132f: u32 = r00001328 & r0000132e;\n" : String).toByteArray.data.toList
theorem checked4793 : bytes4793=statementBytes 4911 (op4793.map lower) ∧ bytes4793.length=48 := by core033_kernel_decide
def op4794 : List WordIR.Op := [.bxor 4899 4911]
def bytes4794 : Bytes := ("    let r00001330: u32 = r00001323 ^ r0000132f;\n" : String).toByteArray.data.toList
theorem checked4794 : bytes4794=statementBytes 4912 (op4794.map lower) ∧ bytes4794.length=48 := by core033_kernel_decide
def op4795 : List WordIR.Op := [.shr 4912 31]
def bytes4795 : Bytes := ("    let r00001331: u32 = r00001330 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4795 : bytes4795=statementBytes 4913 (op4795.map lower) ∧ bytes4795.length=54 := by core033_kernel_decide
def op4796 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4796 : Bytes := ("    let r00001332: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4796 : bytes4796=statementBytes 4914 (op4796.map lower) ∧ bytes4796.length=41 := by core033_kernel_decide
def op4797 : List WordIR.Op := [.bxor 4913 4914]
def bytes4797 : Bytes := ("    let r00001333: u32 = r00001331 ^ r00001332;\n" : String).toByteArray.data.toList
theorem checked4797 : bytes4797=statementBytes 4915 (op4797.map lower) ∧ bytes4797.length=48 := by core033_kernel_decide
def op4798 : List WordIR.Op := [.bnot 4915]
def bytes4798 : Bytes := ("    let r00001334: u32 = !r00001333;\n" : String).toByteArray.data.toList
theorem checked4798 : bytes4798=statementBytes 4916 (op4798.map lower) ∧ bytes4798.length=37 := by core033_kernel_decide
def op4799 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4799 : Bytes := ("    let r00001335: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4799 : bytes4799=statementBytes 4917 (op4799.map lower) ∧ bytes4799.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4736,op4737,op4738,op4739,op4740,op4741,op4742,op4743,op4744,op4745,op4746,op4747,op4748,op4749,op4750,op4751,op4752,op4753,op4754,op4755,op4756,op4757,op4758,op4759,op4760,op4761,op4762,op4763,op4764,op4765,op4766,op4767,op4768,op4769,op4770,op4771,op4772,op4773,op4774,op4775,op4776,op4777,op4778,op4779,op4780,op4781,op4782,op4783,op4784,op4785,op4786,op4787,op4788,op4789,op4790,op4791,op4792,op4793,op4794,op4795,op4796,op4797,op4798,op4799]
def chunks : List Bytes := [bytes4736,bytes4737,bytes4738,bytes4739,bytes4740,bytes4741,bytes4742,bytes4743,bytes4744,bytes4745,bytes4746,bytes4747,bytes4748,bytes4749,bytes4750,bytes4751,bytes4752,bytes4753,bytes4754,bytes4755,bytes4756,bytes4757,bytes4758,bytes4759,bytes4760,bytes4761,bytes4762,bytes4763,bytes4764,bytes4765,bytes4766,bytes4767,bytes4768,bytes4769,bytes4770,bytes4771,bytes4772,bytes4773,bytes4774,bytes4775,bytes4776,bytes4777,bytes4778,bytes4779,bytes4780,bytes4781,bytes4782,bytes4783,bytes4784,bytes4785,bytes4786,bytes4787,bytes4788,bytes4789,bytes4790,bytes4791,bytes4792,bytes4793,bytes4794,bytes4795,bytes4796,bytes4797,bytes4798,bytes4799]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4854 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4736.1 (.cons _ _ _ _ _ checked4737.1 (.cons _ _ _ _ _ checked4738.1 (.cons _ _ _ _ _ checked4739.1 (.cons _ _ _ _ _ checked4740.1 (.cons _ _ _ _ _ checked4741.1 (.cons _ _ _ _ _ checked4742.1 (.cons _ _ _ _ _ checked4743.1 (.cons _ _ _ _ _ checked4744.1 (.cons _ _ _ _ _ checked4745.1 (.cons _ _ _ _ _ checked4746.1 (.cons _ _ _ _ _ checked4747.1 (.cons _ _ _ _ _ checked4748.1 (.cons _ _ _ _ _ checked4749.1 (.cons _ _ _ _ _ checked4750.1 (.cons _ _ _ _ _ checked4751.1 (.cons _ _ _ _ _ checked4752.1 (.cons _ _ _ _ _ checked4753.1 (.cons _ _ _ _ _ checked4754.1 (.cons _ _ _ _ _ checked4755.1 (.cons _ _ _ _ _ checked4756.1 (.cons _ _ _ _ _ checked4757.1 (.cons _ _ _ _ _ checked4758.1 (.cons _ _ _ _ _ checked4759.1 (.cons _ _ _ _ _ checked4760.1 (.cons _ _ _ _ _ checked4761.1 (.cons _ _ _ _ _ checked4762.1 (.cons _ _ _ _ _ checked4763.1 (.cons _ _ _ _ _ checked4764.1 (.cons _ _ _ _ _ checked4765.1 (.cons _ _ _ _ _ checked4766.1 (.cons _ _ _ _ _ checked4767.1 (.cons _ _ _ _ _ checked4768.1 (.cons _ _ _ _ _ checked4769.1 (.cons _ _ _ _ _ checked4770.1 (.cons _ _ _ _ _ checked4771.1 (.cons _ _ _ _ _ checked4772.1 (.cons _ _ _ _ _ checked4773.1 (.cons _ _ _ _ _ checked4774.1 (.cons _ _ _ _ _ checked4775.1 (.cons _ _ _ _ _ checked4776.1 (.cons _ _ _ _ _ checked4777.1 (.cons _ _ _ _ _ checked4778.1 (.cons _ _ _ _ _ checked4779.1 (.cons _ _ _ _ _ checked4780.1 (.cons _ _ _ _ _ checked4781.1 (.cons _ _ _ _ _ checked4782.1 (.cons _ _ _ _ _ checked4783.1 (.cons _ _ _ _ _ checked4784.1 (.cons _ _ _ _ _ checked4785.1 (.cons _ _ _ _ _ checked4786.1 (.cons _ _ _ _ _ checked4787.1 (.cons _ _ _ _ _ checked4788.1 (.cons _ _ _ _ _ checked4789.1 (.cons _ _ _ _ _ checked4790.1 (.cons _ _ _ _ _ checked4791.1 (.cons _ _ _ _ _ checked4792.1 (.cons _ _ _ _ _ checked4793.1 (.cons _ _ _ _ _ checked4794.1 (.cons _ _ _ _ _ checked4795.1 (.cons _ _ _ _ _ checked4796.1 (.cons _ _ _ _ _ checked4797.1 (.cons _ _ _ _ _ checked4798.1 (.cons _ _ _ _ _ checked4799.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4854 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4736.2,checked4737.2,checked4738.2,checked4739.2,checked4740.2,checked4741.2,checked4742.2,checked4743.2,checked4744.2,checked4745.2,checked4746.2,checked4747.2,checked4748.2,checked4749.2,checked4750.2,checked4751.2,checked4752.2,checked4753.2,checked4754.2,checked4755.2,checked4756.2,checked4757.2,checked4758.2,checked4759.2,checked4760.2,checked4761.2,checked4762.2,checked4763.2,checked4764.2,checked4765.2,checked4766.2,checked4767.2,checked4768.2,checked4769.2,checked4770.2,checked4771.2,checked4772.2,checked4773.2,checked4774.2,checked4775.2,checked4776.2,checked4777.2,checked4778.2,checked4779.2,checked4780.2,checked4781.2,checked4782.2,checked4783.2,checked4784.2,checked4785.2,checked4786.2,checked4787.2,checked4788.2,checked4789.2,checked4790.2,checked4791.2,checked4792.2,checked4793.2,checked4794.2,checked4795.2,checked4796.2,checked4797.2,checked4798.2,checked4799.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup74
