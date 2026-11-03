import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup75
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4800 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4800 : Bytes := ("    let r000012eb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4800 : bytes4800=statementBytes 4843 (op4800.map lower) ∧ bytes4800.length=41 := by core033_kernel_decide
def op4801 : List WordIR.Op := [.bnot 4843]
def bytes4801 : Bytes := ("    let r000012ec: u32 = !r000012eb;\n" : String).toByteArray.data.toList
theorem checked4801 : bytes4801=statementBytes 4844 (op4801.map lower) ∧ bytes4801.length=37 := by core033_kernel_decide
def op4802 : List WordIR.Op := [.bxor 4842 4844]
def bytes4802 : Bytes := ("    let r000012ed: u32 = r000012ea ^ r000012ec;\n" : String).toByteArray.data.toList
theorem checked4802 : bytes4802=statementBytes 4845 (op4802.map lower) ∧ bytes4802.length=48 := by core033_kernel_decide
def op4803 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4803 : Bytes := ("    let r000012ee: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4803 : bytes4803=statementBytes 4846 (op4803.map lower) ∧ bytes4803.length=41 := by core033_kernel_decide
def op4804 : List WordIR.Op := [.bxor 96 4846]
def bytes4804 : Bytes := ("    let r000012ef: u32 = r00000060 ^ r000012ee;\n" : String).toByteArray.data.toList
theorem checked4804 : bytes4804=statementBytes 4847 (op4804.map lower) ∧ bytes4804.length=48 := by core033_kernel_decide
def op4805 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4805 : Bytes := ("    let r000012f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4805 : bytes4805=statementBytes 4848 (op4805.map lower) ∧ bytes4805.length=41 := by core033_kernel_decide
def op4806 : List WordIR.Op := [.bnot 4848]
def bytes4806 : Bytes := ("    let r000012f1: u32 = !r000012f0;\n" : String).toByteArray.data.toList
theorem checked4806 : bytes4806=statementBytes 4849 (op4806.map lower) ∧ bytes4806.length=37 := by core033_kernel_decide
def op4807 : List WordIR.Op := [.badd 4847 4849]
def bytes4807 : Bytes := ("    let r000012f2: u32 = r000012ef.wrapping_add(r000012f1);\n" : String).toByteArray.data.toList
theorem checked4807 : bytes4807=statementBytes 4850 (op4807.map lower) ∧ bytes4807.length=60 := by core033_kernel_decide
def op4808 : List WordIR.Op := [.bnot 4850]
def bytes4808 : Bytes := ("    let r000012f3: u32 = !r000012f2;\n" : String).toByteArray.data.toList
theorem checked4808 : bytes4808=statementBytes 4851 (op4808.map lower) ∧ bytes4808.length=37 := by core033_kernel_decide
def op4809 : List WordIR.Op := [.band 4845 4851]
def bytes4809 : Bytes := ("    let r000012f4: u32 = r000012ed & r000012f3;\n" : String).toByteArray.data.toList
theorem checked4809 : bytes4809=statementBytes 4852 (op4809.map lower) ∧ bytes4809.length=48 := by core033_kernel_decide
def op4810 : List WordIR.Op := [.bxor 4840 4852]
def bytes4810 : Bytes := ("    let r000012f5: u32 = r000012e8 ^ r000012f4;\n" : String).toByteArray.data.toList
theorem checked4810 : bytes4810=statementBytes 4853 (op4810.map lower) ∧ bytes4810.length=48 := by core033_kernel_decide
def op4811 : List WordIR.Op := [.shr 4853 31]
def bytes4811 : Bytes := ("    let r000012f6: u32 = r000012f5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4811 : bytes4811=statementBytes 4854 (op4811.map lower) ∧ bytes4811.length=54 := by core033_kernel_decide
def op4812 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4812 : Bytes := ("    let r000012f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4812 : bytes4812=statementBytes 4855 (op4812.map lower) ∧ bytes4812.length=41 := by core033_kernel_decide
def op4813 : List WordIR.Op := [.bxor 4854 4855]
def bytes4813 : Bytes := ("    let r000012f8: u32 = r000012f6 ^ r000012f7;\n" : String).toByteArray.data.toList
theorem checked4813 : bytes4813=statementBytes 4856 (op4813.map lower) ∧ bytes4813.length=48 := by core033_kernel_decide
def op4814 : List WordIR.Op := [.bnot 4856]
def bytes4814 : Bytes := ("    let r000012f9: u32 = !r000012f8;\n" : String).toByteArray.data.toList
theorem checked4814 : bytes4814=statementBytes 4857 (op4814.map lower) ∧ bytes4814.length=37 := by core033_kernel_decide
def op4815 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4815 : Bytes := ("    let r000012fa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4815 : bytes4815=statementBytes 4858 (op4815.map lower) ∧ bytes4815.length=41 := by core033_kernel_decide
def op4816 : List WordIR.Op := [.badd 4857 4858]
def bytes4816 : Bytes := ("    let r000012fb: u32 = r000012f9.wrapping_add(r000012fa);\n" : String).toByteArray.data.toList
theorem checked4816 : bytes4816=statementBytes 4859 (op4816.map lower) ∧ bytes4816.length=60 := by core033_kernel_decide
def op4817 : List WordIR.Op := [.band 4859 1637]
def bytes4817 : Bytes := ("    let r000012fc: u32 = r000012fb & r00000665;\n" : String).toByteArray.data.toList
theorem checked4817 : bytes4817=statementBytes 4860 (op4817.map lower) ∧ bytes4817.length=48 := by core033_kernel_decide
def op4818 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4818 : Bytes := ("    let r000012fd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4818 : bytes4818=statementBytes 4861 (op4818.map lower) ∧ bytes4818.length=41 := by core033_kernel_decide
def op4819 : List WordIR.Op := [.bxor 96 4861]
def bytes4819 : Bytes := ("    let r000012fe: u32 = r00000060 ^ r000012fd;\n" : String).toByteArray.data.toList
theorem checked4819 : bytes4819=statementBytes 4862 (op4819.map lower) ∧ bytes4819.length=48 := by core033_kernel_decide
def op4820 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4820 : Bytes := ("    let r000012ff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4820 : bytes4820=statementBytes 4863 (op4820.map lower) ∧ bytes4820.length=41 := by core033_kernel_decide
def op4821 : List WordIR.Op := [.bnot 4863]
def bytes4821 : Bytes := ("    let r00001300: u32 = !r000012ff;\n" : String).toByteArray.data.toList
theorem checked4821 : bytes4821=statementBytes 4864 (op4821.map lower) ∧ bytes4821.length=37 := by core033_kernel_decide
def op4822 : List WordIR.Op := [.band 4862 4864]
def bytes4822 : Bytes := ("    let r00001301: u32 = r000012fe & r00001300;\n" : String).toByteArray.data.toList
theorem checked4822 : bytes4822=statementBytes 4865 (op4822.map lower) ∧ bytes4822.length=48 := by core033_kernel_decide
def op4823 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4823 : Bytes := ("    let r00001302: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4823 : bytes4823=statementBytes 4866 (op4823.map lower) ∧ bytes4823.length=41 := by core033_kernel_decide
def op4824 : List WordIR.Op := [.bxor 96 4866]
def bytes4824 : Bytes := ("    let r00001303: u32 = r00000060 ^ r00001302;\n" : String).toByteArray.data.toList
theorem checked4824 : bytes4824=statementBytes 4867 (op4824.map lower) ∧ bytes4824.length=48 := by core033_kernel_decide
def op4825 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4825 : Bytes := ("    let r00001304: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4825 : bytes4825=statementBytes 4868 (op4825.map lower) ∧ bytes4825.length=41 := by core033_kernel_decide
def op4826 : List WordIR.Op := [.bnot 4868]
def bytes4826 : Bytes := ("    let r00001305: u32 = !r00001304;\n" : String).toByteArray.data.toList
theorem checked4826 : bytes4826=statementBytes 4869 (op4826.map lower) ∧ bytes4826.length=37 := by core033_kernel_decide
def op4827 : List WordIR.Op := [.bxor 4867 4869]
def bytes4827 : Bytes := ("    let r00001306: u32 = r00001303 ^ r00001305;\n" : String).toByteArray.data.toList
theorem checked4827 : bytes4827=statementBytes 4870 (op4827.map lower) ∧ bytes4827.length=48 := by core033_kernel_decide
def op4828 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4828 : Bytes := ("    let r00001307: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4828 : bytes4828=statementBytes 4871 (op4828.map lower) ∧ bytes4828.length=41 := by core033_kernel_decide
def op4829 : List WordIR.Op := [.bxor 96 4871]
def bytes4829 : Bytes := ("    let r00001308: u32 = r00000060 ^ r00001307;\n" : String).toByteArray.data.toList
theorem checked4829 : bytes4829=statementBytes 4872 (op4829.map lower) ∧ bytes4829.length=48 := by core033_kernel_decide
def op4830 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4830 : Bytes := ("    let r00001309: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4830 : bytes4830=statementBytes 4873 (op4830.map lower) ∧ bytes4830.length=41 := by core033_kernel_decide
def op4831 : List WordIR.Op := [.bnot 4873]
def bytes4831 : Bytes := ("    let r0000130a: u32 = !r00001309;\n" : String).toByteArray.data.toList
theorem checked4831 : bytes4831=statementBytes 4874 (op4831.map lower) ∧ bytes4831.length=37 := by core033_kernel_decide
def op4832 : List WordIR.Op := [.badd 4872 4874]
def bytes4832 : Bytes := ("    let r0000130b: u32 = r00001308.wrapping_add(r0000130a);\n" : String).toByteArray.data.toList
theorem checked4832 : bytes4832=statementBytes 4875 (op4832.map lower) ∧ bytes4832.length=60 := by core033_kernel_decide
def op4833 : List WordIR.Op := [.bnot 4875]
def bytes4833 : Bytes := ("    let r0000130c: u32 = !r0000130b;\n" : String).toByteArray.data.toList
theorem checked4833 : bytes4833=statementBytes 4876 (op4833.map lower) ∧ bytes4833.length=37 := by core033_kernel_decide
def op4834 : List WordIR.Op := [.band 4870 4876]
def bytes4834 : Bytes := ("    let r0000130d: u32 = r00001306 & r0000130c;\n" : String).toByteArray.data.toList
theorem checked4834 : bytes4834=statementBytes 4877 (op4834.map lower) ∧ bytes4834.length=48 := by core033_kernel_decide
def op4835 : List WordIR.Op := [.bxor 4865 4877]
def bytes4835 : Bytes := ("    let r0000130e: u32 = r00001301 ^ r0000130d;\n" : String).toByteArray.data.toList
theorem checked4835 : bytes4835=statementBytes 4878 (op4835.map lower) ∧ bytes4835.length=48 := by core033_kernel_decide
def op4836 : List WordIR.Op := [.shr 4878 31]
def bytes4836 : Bytes := ("    let r0000130f: u32 = r0000130e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4836 : bytes4836=statementBytes 4879 (op4836.map lower) ∧ bytes4836.length=54 := by core033_kernel_decide
def op4837 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4837 : Bytes := ("    let r00001310: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4837 : bytes4837=statementBytes 4880 (op4837.map lower) ∧ bytes4837.length=41 := by core033_kernel_decide
def op4838 : List WordIR.Op := [.bxor 4879 4880]
def bytes4838 : Bytes := ("    let r00001311: u32 = r0000130f ^ r00001310;\n" : String).toByteArray.data.toList
theorem checked4838 : bytes4838=statementBytes 4881 (op4838.map lower) ∧ bytes4838.length=48 := by core033_kernel_decide
def op4839 : List WordIR.Op := [.bnot 4881]
def bytes4839 : Bytes := ("    let r00001312: u32 = !r00001311;\n" : String).toByteArray.data.toList
theorem checked4839 : bytes4839=statementBytes 4882 (op4839.map lower) ∧ bytes4839.length=37 := by core033_kernel_decide
def op4840 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4840 : Bytes := ("    let r00001313: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4840 : bytes4840=statementBytes 4883 (op4840.map lower) ∧ bytes4840.length=41 := by core033_kernel_decide
def op4841 : List WordIR.Op := [.badd 4882 4883]
def bytes4841 : Bytes := ("    let r00001314: u32 = r00001312.wrapping_add(r00001313);\n" : String).toByteArray.data.toList
theorem checked4841 : bytes4841=statementBytes 4884 (op4841.map lower) ∧ bytes4841.length=60 := by core033_kernel_decide
def op4842 : List WordIR.Op := [.bnot 4884]
def bytes4842 : Bytes := ("    let r00001315: u32 = !r00001314;\n" : String).toByteArray.data.toList
theorem checked4842 : bytes4842=statementBytes 4885 (op4842.map lower) ∧ bytes4842.length=37 := by core033_kernel_decide
def op4843 : List WordIR.Op := [.band 4885 1445]
def bytes4843 : Bytes := ("    let r00001316: u32 = r00001315 & r000005a5;\n" : String).toByteArray.data.toList
theorem checked4843 : bytes4843=statementBytes 4886 (op4843.map lower) ∧ bytes4843.length=48 := by core033_kernel_decide
def op4844 : List WordIR.Op := [.bxor 4860 4886]
def bytes4844 : Bytes := ("    let r00001317: u32 = r000012fc ^ r00001316;\n" : String).toByteArray.data.toList
theorem checked4844 : bytes4844=statementBytes 4887 (op4844.map lower) ∧ bytes4844.length=48 := by core033_kernel_decide
def op4845 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4845 : Bytes := ("    let r00001318: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4845 : bytes4845=statementBytes 4888 (op4845.map lower) ∧ bytes4845.length=41 := by core033_kernel_decide
def op4846 : List WordIR.Op := [.bxor 96 4888]
def bytes4846 : Bytes := ("    let r00001319: u32 = r00000060 ^ r00001318;\n" : String).toByteArray.data.toList
theorem checked4846 : bytes4846=statementBytes 4889 (op4846.map lower) ∧ bytes4846.length=48 := by core033_kernel_decide
def op4847 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4847 : Bytes := ("    let r0000131a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4847 : bytes4847=statementBytes 4890 (op4847.map lower) ∧ bytes4847.length=41 := by core033_kernel_decide
def op4848 : List WordIR.Op := [.bnot 4890]
def bytes4848 : Bytes := ("    let r0000131b: u32 = !r0000131a;\n" : String).toByteArray.data.toList
theorem checked4848 : bytes4848=statementBytes 4891 (op4848.map lower) ∧ bytes4848.length=37 := by core033_kernel_decide
def op4849 : List WordIR.Op := [.band 4889 4891]
def bytes4849 : Bytes := ("    let r0000131c: u32 = r00001319 & r0000131b;\n" : String).toByteArray.data.toList
theorem checked4849 : bytes4849=statementBytes 4892 (op4849.map lower) ∧ bytes4849.length=48 := by core033_kernel_decide
def op4850 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4850 : Bytes := ("    let r0000131d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4850 : bytes4850=statementBytes 4893 (op4850.map lower) ∧ bytes4850.length=41 := by core033_kernel_decide
def op4851 : List WordIR.Op := [.bxor 96 4893]
def bytes4851 : Bytes := ("    let r0000131e: u32 = r00000060 ^ r0000131d;\n" : String).toByteArray.data.toList
theorem checked4851 : bytes4851=statementBytes 4894 (op4851.map lower) ∧ bytes4851.length=48 := by core033_kernel_decide
def op4852 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4852 : Bytes := ("    let r0000131f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4852 : bytes4852=statementBytes 4895 (op4852.map lower) ∧ bytes4852.length=41 := by core033_kernel_decide
def op4853 : List WordIR.Op := [.bnot 4895]
def bytes4853 : Bytes := ("    let r00001320: u32 = !r0000131f;\n" : String).toByteArray.data.toList
theorem checked4853 : bytes4853=statementBytes 4896 (op4853.map lower) ∧ bytes4853.length=37 := by core033_kernel_decide
def op4854 : List WordIR.Op := [.bxor 4894 4896]
def bytes4854 : Bytes := ("    let r00001321: u32 = r0000131e ^ r00001320;\n" : String).toByteArray.data.toList
theorem checked4854 : bytes4854=statementBytes 4897 (op4854.map lower) ∧ bytes4854.length=48 := by core033_kernel_decide
def op4855 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4855 : Bytes := ("    let r00001322: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4855 : bytes4855=statementBytes 4898 (op4855.map lower) ∧ bytes4855.length=41 := by core033_kernel_decide
def op4856 : List WordIR.Op := [.bxor 96 4898]
def bytes4856 : Bytes := ("    let r00001323: u32 = r00000060 ^ r00001322;\n" : String).toByteArray.data.toList
theorem checked4856 : bytes4856=statementBytes 4899 (op4856.map lower) ∧ bytes4856.length=48 := by core033_kernel_decide
def op4857 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4857 : Bytes := ("    let r00001324: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4857 : bytes4857=statementBytes 4900 (op4857.map lower) ∧ bytes4857.length=41 := by core033_kernel_decide
def op4858 : List WordIR.Op := [.bnot 4900]
def bytes4858 : Bytes := ("    let r00001325: u32 = !r00001324;\n" : String).toByteArray.data.toList
theorem checked4858 : bytes4858=statementBytes 4901 (op4858.map lower) ∧ bytes4858.length=37 := by core033_kernel_decide
def op4859 : List WordIR.Op := [.badd 4899 4901]
def bytes4859 : Bytes := ("    let r00001326: u32 = r00001323.wrapping_add(r00001325);\n" : String).toByteArray.data.toList
theorem checked4859 : bytes4859=statementBytes 4902 (op4859.map lower) ∧ bytes4859.length=60 := by core033_kernel_decide
def op4860 : List WordIR.Op := [.bnot 4902]
def bytes4860 : Bytes := ("    let r00001327: u32 = !r00001326;\n" : String).toByteArray.data.toList
theorem checked4860 : bytes4860=statementBytes 4903 (op4860.map lower) ∧ bytes4860.length=37 := by core033_kernel_decide
def op4861 : List WordIR.Op := [.band 4897 4903]
def bytes4861 : Bytes := ("    let r00001328: u32 = r00001321 & r00001327;\n" : String).toByteArray.data.toList
theorem checked4861 : bytes4861=statementBytes 4904 (op4861.map lower) ∧ bytes4861.length=48 := by core033_kernel_decide
def op4862 : List WordIR.Op := [.bxor 4892 4904]
def bytes4862 : Bytes := ("    let r00001329: u32 = r0000131c ^ r00001328;\n" : String).toByteArray.data.toList
theorem checked4862 : bytes4862=statementBytes 4905 (op4862.map lower) ∧ bytes4862.length=48 := by core033_kernel_decide
def op4863 : List WordIR.Op := [.shr 4905 31]
def bytes4863 : Bytes := ("    let r0000132a: u32 = r00001329 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4863 : bytes4863=statementBytes 4906 (op4863.map lower) ∧ bytes4863.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4800,op4801,op4802,op4803,op4804,op4805,op4806,op4807,op4808,op4809,op4810,op4811,op4812,op4813,op4814,op4815,op4816,op4817,op4818,op4819,op4820,op4821,op4822,op4823,op4824,op4825,op4826,op4827,op4828,op4829,op4830,op4831,op4832,op4833,op4834,op4835,op4836,op4837,op4838,op4839,op4840,op4841,op4842,op4843,op4844,op4845,op4846,op4847,op4848,op4849,op4850,op4851,op4852,op4853,op4854,op4855,op4856,op4857,op4858,op4859,op4860,op4861,op4862,op4863]
def chunks : List Bytes := [bytes4800,bytes4801,bytes4802,bytes4803,bytes4804,bytes4805,bytes4806,bytes4807,bytes4808,bytes4809,bytes4810,bytes4811,bytes4812,bytes4813,bytes4814,bytes4815,bytes4816,bytes4817,bytes4818,bytes4819,bytes4820,bytes4821,bytes4822,bytes4823,bytes4824,bytes4825,bytes4826,bytes4827,bytes4828,bytes4829,bytes4830,bytes4831,bytes4832,bytes4833,bytes4834,bytes4835,bytes4836,bytes4837,bytes4838,bytes4839,bytes4840,bytes4841,bytes4842,bytes4843,bytes4844,bytes4845,bytes4846,bytes4847,bytes4848,bytes4849,bytes4850,bytes4851,bytes4852,bytes4853,bytes4854,bytes4855,bytes4856,bytes4857,bytes4858,bytes4859,bytes4860,bytes4861,bytes4862,bytes4863]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4843 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4800.1 (.cons _ _ _ _ _ checked4801.1 (.cons _ _ _ _ _ checked4802.1 (.cons _ _ _ _ _ checked4803.1 (.cons _ _ _ _ _ checked4804.1 (.cons _ _ _ _ _ checked4805.1 (.cons _ _ _ _ _ checked4806.1 (.cons _ _ _ _ _ checked4807.1 (.cons _ _ _ _ _ checked4808.1 (.cons _ _ _ _ _ checked4809.1 (.cons _ _ _ _ _ checked4810.1 (.cons _ _ _ _ _ checked4811.1 (.cons _ _ _ _ _ checked4812.1 (.cons _ _ _ _ _ checked4813.1 (.cons _ _ _ _ _ checked4814.1 (.cons _ _ _ _ _ checked4815.1 (.cons _ _ _ _ _ checked4816.1 (.cons _ _ _ _ _ checked4817.1 (.cons _ _ _ _ _ checked4818.1 (.cons _ _ _ _ _ checked4819.1 (.cons _ _ _ _ _ checked4820.1 (.cons _ _ _ _ _ checked4821.1 (.cons _ _ _ _ _ checked4822.1 (.cons _ _ _ _ _ checked4823.1 (.cons _ _ _ _ _ checked4824.1 (.cons _ _ _ _ _ checked4825.1 (.cons _ _ _ _ _ checked4826.1 (.cons _ _ _ _ _ checked4827.1 (.cons _ _ _ _ _ checked4828.1 (.cons _ _ _ _ _ checked4829.1 (.cons _ _ _ _ _ checked4830.1 (.cons _ _ _ _ _ checked4831.1 (.cons _ _ _ _ _ checked4832.1 (.cons _ _ _ _ _ checked4833.1 (.cons _ _ _ _ _ checked4834.1 (.cons _ _ _ _ _ checked4835.1 (.cons _ _ _ _ _ checked4836.1 (.cons _ _ _ _ _ checked4837.1 (.cons _ _ _ _ _ checked4838.1 (.cons _ _ _ _ _ checked4839.1 (.cons _ _ _ _ _ checked4840.1 (.cons _ _ _ _ _ checked4841.1 (.cons _ _ _ _ _ checked4842.1 (.cons _ _ _ _ _ checked4843.1 (.cons _ _ _ _ _ checked4844.1 (.cons _ _ _ _ _ checked4845.1 (.cons _ _ _ _ _ checked4846.1 (.cons _ _ _ _ _ checked4847.1 (.cons _ _ _ _ _ checked4848.1 (.cons _ _ _ _ _ checked4849.1 (.cons _ _ _ _ _ checked4850.1 (.cons _ _ _ _ _ checked4851.1 (.cons _ _ _ _ _ checked4852.1 (.cons _ _ _ _ _ checked4853.1 (.cons _ _ _ _ _ checked4854.1 (.cons _ _ _ _ _ checked4855.1 (.cons _ _ _ _ _ checked4856.1 (.cons _ _ _ _ _ checked4857.1 (.cons _ _ _ _ _ checked4858.1 (.cons _ _ _ _ _ checked4859.1 (.cons _ _ _ _ _ checked4860.1 (.cons _ _ _ _ _ checked4861.1 (.cons _ _ _ _ _ checked4862.1 (.cons _ _ _ _ _ checked4863.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4843 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4800.2,checked4801.2,checked4802.2,checked4803.2,checked4804.2,checked4805.2,checked4806.2,checked4807.2,checked4808.2,checked4809.2,checked4810.2,checked4811.2,checked4812.2,checked4813.2,checked4814.2,checked4815.2,checked4816.2,checked4817.2,checked4818.2,checked4819.2,checked4820.2,checked4821.2,checked4822.2,checked4823.2,checked4824.2,checked4825.2,checked4826.2,checked4827.2,checked4828.2,checked4829.2,checked4830.2,checked4831.2,checked4832.2,checked4833.2,checked4834.2,checked4835.2,checked4836.2,checked4837.2,checked4838.2,checked4839.2,checked4840.2,checked4841.2,checked4842.2,checked4843.2,checked4844.2,checked4845.2,checked4846.2,checked4847.2,checked4848.2,checked4849.2,checked4850.2,checked4851.2,checked4852.2,checked4853.2,checked4854.2,checked4855.2,checked4856.2,checked4857.2,checked4858.2,checked4859.2,checked4860.2,checked4861.2,checked4862.2,checked4863.2]
  decide
end ArtifactPathRoundDispatchGroup75
