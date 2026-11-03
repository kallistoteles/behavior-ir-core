import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup75
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4800 : List WordIR.Op := [.bnot 4895]
def bytes4800 : Bytes := ("    let r00001320: u32 = !r0000131f;\n" : String).toByteArray.data.toList
theorem checked4800 : bytes4800=statementBytes 4896 (op4800.map lower) ∧ bytes4800.length=37 := by core033_kernel_decide
def op4801 : List WordIR.Op := [.bxor 4894 4896]
def bytes4801 : Bytes := ("    let r00001321: u32 = r0000131e ^ r00001320;\n" : String).toByteArray.data.toList
theorem checked4801 : bytes4801=statementBytes 4897 (op4801.map lower) ∧ bytes4801.length=48 := by core033_kernel_decide
def op4802 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4802 : Bytes := ("    let r00001322: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4802 : bytes4802=statementBytes 4898 (op4802.map lower) ∧ bytes4802.length=41 := by core033_kernel_decide
def op4803 : List WordIR.Op := [.bxor 616 4898]
def bytes4803 : Bytes := ("    let r00001323: u32 = r00000268 ^ r00001322;\n" : String).toByteArray.data.toList
theorem checked4803 : bytes4803=statementBytes 4899 (op4803.map lower) ∧ bytes4803.length=48 := by core033_kernel_decide
def op4804 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4804 : Bytes := ("    let r00001324: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4804 : bytes4804=statementBytes 4900 (op4804.map lower) ∧ bytes4804.length=41 := by core033_kernel_decide
def op4805 : List WordIR.Op := [.bnot 4900]
def bytes4805 : Bytes := ("    let r00001325: u32 = !r00001324;\n" : String).toByteArray.data.toList
theorem checked4805 : bytes4805=statementBytes 4901 (op4805.map lower) ∧ bytes4805.length=37 := by core033_kernel_decide
def op4806 : List WordIR.Op := [.badd 4899 4901]
def bytes4806 : Bytes := ("    let r00001326: u32 = r00001323.wrapping_add(r00001325);\n" : String).toByteArray.data.toList
theorem checked4806 : bytes4806=statementBytes 4902 (op4806.map lower) ∧ bytes4806.length=60 := by core033_kernel_decide
def op4807 : List WordIR.Op := [.bnot 4902]
def bytes4807 : Bytes := ("    let r00001327: u32 = !r00001326;\n" : String).toByteArray.data.toList
theorem checked4807 : bytes4807=statementBytes 4903 (op4807.map lower) ∧ bytes4807.length=37 := by core033_kernel_decide
def op4808 : List WordIR.Op := [.band 4897 4903]
def bytes4808 : Bytes := ("    let r00001328: u32 = r00001321 & r00001327;\n" : String).toByteArray.data.toList
theorem checked4808 : bytes4808=statementBytes 4904 (op4808.map lower) ∧ bytes4808.length=48 := by core033_kernel_decide
def op4809 : List WordIR.Op := [.bxor 4892 4904]
def bytes4809 : Bytes := ("    let r00001329: u32 = r0000131c ^ r00001328;\n" : String).toByteArray.data.toList
theorem checked4809 : bytes4809=statementBytes 4905 (op4809.map lower) ∧ bytes4809.length=48 := by core033_kernel_decide
def op4810 : List WordIR.Op := [.shr 4905 31]
def bytes4810 : Bytes := ("    let r0000132a: u32 = r00001329 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4810 : bytes4810=statementBytes 4906 (op4810.map lower) ∧ bytes4810.length=54 := by core033_kernel_decide
def op4811 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4811 : Bytes := ("    let r0000132b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4811 : bytes4811=statementBytes 4907 (op4811.map lower) ∧ bytes4811.length=41 := by core033_kernel_decide
def op4812 : List WordIR.Op := [.bxor 4906 4907]
def bytes4812 : Bytes := ("    let r0000132c: u32 = r0000132a ^ r0000132b;\n" : String).toByteArray.data.toList
theorem checked4812 : bytes4812=statementBytes 4908 (op4812.map lower) ∧ bytes4812.length=48 := by core033_kernel_decide
def op4813 : List WordIR.Op := [.bnot 4908]
def bytes4813 : Bytes := ("    let r0000132d: u32 = !r0000132c;\n" : String).toByteArray.data.toList
theorem checked4813 : bytes4813=statementBytes 4909 (op4813.map lower) ∧ bytes4813.length=37 := by core033_kernel_decide
def op4814 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4814 : Bytes := ("    let r0000132e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4814 : bytes4814=statementBytes 4910 (op4814.map lower) ∧ bytes4814.length=41 := by core033_kernel_decide
def op4815 : List WordIR.Op := [.badd 4909 4910]
def bytes4815 : Bytes := ("    let r0000132f: u32 = r0000132d.wrapping_add(r0000132e);\n" : String).toByteArray.data.toList
theorem checked4815 : bytes4815=statementBytes 4911 (op4815.map lower) ∧ bytes4815.length=60 := by core033_kernel_decide
def op4816 : List WordIR.Op := [.band 4911 2130]
def bytes4816 : Bytes := ("    let r00001330: u32 = r0000132f & r00000852;\n" : String).toByteArray.data.toList
theorem checked4816 : bytes4816=statementBytes 4912 (op4816.map lower) ∧ bytes4816.length=48 := by core033_kernel_decide
def op4817 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4817 : Bytes := ("    let r00001331: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4817 : bytes4817=statementBytes 4913 (op4817.map lower) ∧ bytes4817.length=41 := by core033_kernel_decide
def op4818 : List WordIR.Op := [.bxor 616 4913]
def bytes4818 : Bytes := ("    let r00001332: u32 = r00000268 ^ r00001331;\n" : String).toByteArray.data.toList
theorem checked4818 : bytes4818=statementBytes 4914 (op4818.map lower) ∧ bytes4818.length=48 := by core033_kernel_decide
def op4819 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4819 : Bytes := ("    let r00001333: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4819 : bytes4819=statementBytes 4915 (op4819.map lower) ∧ bytes4819.length=41 := by core033_kernel_decide
def op4820 : List WordIR.Op := [.bnot 4915]
def bytes4820 : Bytes := ("    let r00001334: u32 = !r00001333;\n" : String).toByteArray.data.toList
theorem checked4820 : bytes4820=statementBytes 4916 (op4820.map lower) ∧ bytes4820.length=37 := by core033_kernel_decide
def op4821 : List WordIR.Op := [.band 4914 4916]
def bytes4821 : Bytes := ("    let r00001335: u32 = r00001332 & r00001334;\n" : String).toByteArray.data.toList
theorem checked4821 : bytes4821=statementBytes 4917 (op4821.map lower) ∧ bytes4821.length=48 := by core033_kernel_decide
def op4822 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4822 : Bytes := ("    let r00001336: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4822 : bytes4822=statementBytes 4918 (op4822.map lower) ∧ bytes4822.length=41 := by core033_kernel_decide
def op4823 : List WordIR.Op := [.bxor 616 4918]
def bytes4823 : Bytes := ("    let r00001337: u32 = r00000268 ^ r00001336;\n" : String).toByteArray.data.toList
theorem checked4823 : bytes4823=statementBytes 4919 (op4823.map lower) ∧ bytes4823.length=48 := by core033_kernel_decide
def op4824 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4824 : Bytes := ("    let r00001338: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4824 : bytes4824=statementBytes 4920 (op4824.map lower) ∧ bytes4824.length=41 := by core033_kernel_decide
def op4825 : List WordIR.Op := [.bnot 4920]
def bytes4825 : Bytes := ("    let r00001339: u32 = !r00001338;\n" : String).toByteArray.data.toList
theorem checked4825 : bytes4825=statementBytes 4921 (op4825.map lower) ∧ bytes4825.length=37 := by core033_kernel_decide
def op4826 : List WordIR.Op := [.bxor 4919 4921]
def bytes4826 : Bytes := ("    let r0000133a: u32 = r00001337 ^ r00001339;\n" : String).toByteArray.data.toList
theorem checked4826 : bytes4826=statementBytes 4922 (op4826.map lower) ∧ bytes4826.length=48 := by core033_kernel_decide
def op4827 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4827 : Bytes := ("    let r0000133b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4827 : bytes4827=statementBytes 4923 (op4827.map lower) ∧ bytes4827.length=41 := by core033_kernel_decide
def op4828 : List WordIR.Op := [.bxor 616 4923]
def bytes4828 : Bytes := ("    let r0000133c: u32 = r00000268 ^ r0000133b;\n" : String).toByteArray.data.toList
theorem checked4828 : bytes4828=statementBytes 4924 (op4828.map lower) ∧ bytes4828.length=48 := by core033_kernel_decide
def op4829 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4829 : Bytes := ("    let r0000133d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4829 : bytes4829=statementBytes 4925 (op4829.map lower) ∧ bytes4829.length=41 := by core033_kernel_decide
def op4830 : List WordIR.Op := [.bnot 4925]
def bytes4830 : Bytes := ("    let r0000133e: u32 = !r0000133d;\n" : String).toByteArray.data.toList
theorem checked4830 : bytes4830=statementBytes 4926 (op4830.map lower) ∧ bytes4830.length=37 := by core033_kernel_decide
def op4831 : List WordIR.Op := [.badd 4924 4926]
def bytes4831 : Bytes := ("    let r0000133f: u32 = r0000133c.wrapping_add(r0000133e);\n" : String).toByteArray.data.toList
theorem checked4831 : bytes4831=statementBytes 4927 (op4831.map lower) ∧ bytes4831.length=60 := by core033_kernel_decide
def op4832 : List WordIR.Op := [.bnot 4927]
def bytes4832 : Bytes := ("    let r00001340: u32 = !r0000133f;\n" : String).toByteArray.data.toList
theorem checked4832 : bytes4832=statementBytes 4928 (op4832.map lower) ∧ bytes4832.length=37 := by core033_kernel_decide
def op4833 : List WordIR.Op := [.band 4922 4928]
def bytes4833 : Bytes := ("    let r00001341: u32 = r0000133a & r00001340;\n" : String).toByteArray.data.toList
theorem checked4833 : bytes4833=statementBytes 4929 (op4833.map lower) ∧ bytes4833.length=48 := by core033_kernel_decide
def op4834 : List WordIR.Op := [.bxor 4917 4929]
def bytes4834 : Bytes := ("    let r00001342: u32 = r00001335 ^ r00001341;\n" : String).toByteArray.data.toList
theorem checked4834 : bytes4834=statementBytes 4930 (op4834.map lower) ∧ bytes4834.length=48 := by core033_kernel_decide
def op4835 : List WordIR.Op := [.shr 4930 31]
def bytes4835 : Bytes := ("    let r00001343: u32 = r00001342 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4835 : bytes4835=statementBytes 4931 (op4835.map lower) ∧ bytes4835.length=54 := by core033_kernel_decide
def op4836 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4836 : Bytes := ("    let r00001344: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4836 : bytes4836=statementBytes 4932 (op4836.map lower) ∧ bytes4836.length=41 := by core033_kernel_decide
def op4837 : List WordIR.Op := [.bxor 4931 4932]
def bytes4837 : Bytes := ("    let r00001345: u32 = r00001343 ^ r00001344;\n" : String).toByteArray.data.toList
theorem checked4837 : bytes4837=statementBytes 4933 (op4837.map lower) ∧ bytes4837.length=48 := by core033_kernel_decide
def op4838 : List WordIR.Op := [.bnot 4933]
def bytes4838 : Bytes := ("    let r00001346: u32 = !r00001345;\n" : String).toByteArray.data.toList
theorem checked4838 : bytes4838=statementBytes 4934 (op4838.map lower) ∧ bytes4838.length=37 := by core033_kernel_decide
def op4839 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4839 : Bytes := ("    let r00001347: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4839 : bytes4839=statementBytes 4935 (op4839.map lower) ∧ bytes4839.length=41 := by core033_kernel_decide
def op4840 : List WordIR.Op := [.badd 4934 4935]
def bytes4840 : Bytes := ("    let r00001348: u32 = r00001346.wrapping_add(r00001347);\n" : String).toByteArray.data.toList
theorem checked4840 : bytes4840=statementBytes 4936 (op4840.map lower) ∧ bytes4840.length=60 := by core033_kernel_decide
def op4841 : List WordIR.Op := [.bnot 4936]
def bytes4841 : Bytes := ("    let r00001349: u32 = !r00001348;\n" : String).toByteArray.data.toList
theorem checked4841 : bytes4841=statementBytes 4937 (op4841.map lower) ∧ bytes4841.length=37 := by core033_kernel_decide
def op4842 : List WordIR.Op := [.band 4937 1938]
def bytes4842 : Bytes := ("    let r0000134a: u32 = r00001349 & r00000792;\n" : String).toByteArray.data.toList
theorem checked4842 : bytes4842=statementBytes 4938 (op4842.map lower) ∧ bytes4842.length=48 := by core033_kernel_decide
def op4843 : List WordIR.Op := [.bxor 4912 4938]
def bytes4843 : Bytes := ("    let r0000134b: u32 = r00001330 ^ r0000134a;\n" : String).toByteArray.data.toList
theorem checked4843 : bytes4843=statementBytes 4939 (op4843.map lower) ∧ bytes4843.length=48 := by core033_kernel_decide
def op4844 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4844 : Bytes := ("    let r0000134c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4844 : bytes4844=statementBytes 4940 (op4844.map lower) ∧ bytes4844.length=41 := by core033_kernel_decide
def op4845 : List WordIR.Op := [.bxor 616 4940]
def bytes4845 : Bytes := ("    let r0000134d: u32 = r00000268 ^ r0000134c;\n" : String).toByteArray.data.toList
theorem checked4845 : bytes4845=statementBytes 4941 (op4845.map lower) ∧ bytes4845.length=48 := by core033_kernel_decide
def op4846 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4846 : Bytes := ("    let r0000134e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4846 : bytes4846=statementBytes 4942 (op4846.map lower) ∧ bytes4846.length=41 := by core033_kernel_decide
def op4847 : List WordIR.Op := [.bnot 4942]
def bytes4847 : Bytes := ("    let r0000134f: u32 = !r0000134e;\n" : String).toByteArray.data.toList
theorem checked4847 : bytes4847=statementBytes 4943 (op4847.map lower) ∧ bytes4847.length=37 := by core033_kernel_decide
def op4848 : List WordIR.Op := [.band 4941 4943]
def bytes4848 : Bytes := ("    let r00001350: u32 = r0000134d & r0000134f;\n" : String).toByteArray.data.toList
theorem checked4848 : bytes4848=statementBytes 4944 (op4848.map lower) ∧ bytes4848.length=48 := by core033_kernel_decide
def op4849 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4849 : Bytes := ("    let r00001351: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4849 : bytes4849=statementBytes 4945 (op4849.map lower) ∧ bytes4849.length=41 := by core033_kernel_decide
def op4850 : List WordIR.Op := [.bxor 616 4945]
def bytes4850 : Bytes := ("    let r00001352: u32 = r00000268 ^ r00001351;\n" : String).toByteArray.data.toList
theorem checked4850 : bytes4850=statementBytes 4946 (op4850.map lower) ∧ bytes4850.length=48 := by core033_kernel_decide
def op4851 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4851 : Bytes := ("    let r00001353: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4851 : bytes4851=statementBytes 4947 (op4851.map lower) ∧ bytes4851.length=41 := by core033_kernel_decide
def op4852 : List WordIR.Op := [.bnot 4947]
def bytes4852 : Bytes := ("    let r00001354: u32 = !r00001353;\n" : String).toByteArray.data.toList
theorem checked4852 : bytes4852=statementBytes 4948 (op4852.map lower) ∧ bytes4852.length=37 := by core033_kernel_decide
def op4853 : List WordIR.Op := [.bxor 4946 4948]
def bytes4853 : Bytes := ("    let r00001355: u32 = r00001352 ^ r00001354;\n" : String).toByteArray.data.toList
theorem checked4853 : bytes4853=statementBytes 4949 (op4853.map lower) ∧ bytes4853.length=48 := by core033_kernel_decide
def op4854 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4854 : Bytes := ("    let r00001356: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4854 : bytes4854=statementBytes 4950 (op4854.map lower) ∧ bytes4854.length=41 := by core033_kernel_decide
def op4855 : List WordIR.Op := [.bxor 616 4950]
def bytes4855 : Bytes := ("    let r00001357: u32 = r00000268 ^ r00001356;\n" : String).toByteArray.data.toList
theorem checked4855 : bytes4855=statementBytes 4951 (op4855.map lower) ∧ bytes4855.length=48 := by core033_kernel_decide
def op4856 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4856 : Bytes := ("    let r00001358: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4856 : bytes4856=statementBytes 4952 (op4856.map lower) ∧ bytes4856.length=41 := by core033_kernel_decide
def op4857 : List WordIR.Op := [.bnot 4952]
def bytes4857 : Bytes := ("    let r00001359: u32 = !r00001358;\n" : String).toByteArray.data.toList
theorem checked4857 : bytes4857=statementBytes 4953 (op4857.map lower) ∧ bytes4857.length=37 := by core033_kernel_decide
def op4858 : List WordIR.Op := [.badd 4951 4953]
def bytes4858 : Bytes := ("    let r0000135a: u32 = r00001357.wrapping_add(r00001359);\n" : String).toByteArray.data.toList
theorem checked4858 : bytes4858=statementBytes 4954 (op4858.map lower) ∧ bytes4858.length=60 := by core033_kernel_decide
def op4859 : List WordIR.Op := [.bnot 4954]
def bytes4859 : Bytes := ("    let r0000135b: u32 = !r0000135a;\n" : String).toByteArray.data.toList
theorem checked4859 : bytes4859=statementBytes 4955 (op4859.map lower) ∧ bytes4859.length=37 := by core033_kernel_decide
def op4860 : List WordIR.Op := [.band 4949 4955]
def bytes4860 : Bytes := ("    let r0000135c: u32 = r00001355 & r0000135b;\n" : String).toByteArray.data.toList
theorem checked4860 : bytes4860=statementBytes 4956 (op4860.map lower) ∧ bytes4860.length=48 := by core033_kernel_decide
def op4861 : List WordIR.Op := [.bxor 4944 4956]
def bytes4861 : Bytes := ("    let r0000135d: u32 = r00001350 ^ r0000135c;\n" : String).toByteArray.data.toList
theorem checked4861 : bytes4861=statementBytes 4957 (op4861.map lower) ∧ bytes4861.length=48 := by core033_kernel_decide
def op4862 : List WordIR.Op := [.shr 4957 31]
def bytes4862 : Bytes := ("    let r0000135e: u32 = r0000135d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4862 : bytes4862=statementBytes 4958 (op4862.map lower) ∧ bytes4862.length=54 := by core033_kernel_decide
def op4863 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4863 : Bytes := ("    let r0000135f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4863 : bytes4863=statementBytes 4959 (op4863.map lower) ∧ bytes4863.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4800,op4801,op4802,op4803,op4804,op4805,op4806,op4807,op4808,op4809,op4810,op4811,op4812,op4813,op4814,op4815,op4816,op4817,op4818,op4819,op4820,op4821,op4822,op4823,op4824,op4825,op4826,op4827,op4828,op4829,op4830,op4831,op4832,op4833,op4834,op4835,op4836,op4837,op4838,op4839,op4840,op4841,op4842,op4843,op4844,op4845,op4846,op4847,op4848,op4849,op4850,op4851,op4852,op4853,op4854,op4855,op4856,op4857,op4858,op4859,op4860,op4861,op4862,op4863]
def chunks : List Bytes := [bytes4800,bytes4801,bytes4802,bytes4803,bytes4804,bytes4805,bytes4806,bytes4807,bytes4808,bytes4809,bytes4810,bytes4811,bytes4812,bytes4813,bytes4814,bytes4815,bytes4816,bytes4817,bytes4818,bytes4819,bytes4820,bytes4821,bytes4822,bytes4823,bytes4824,bytes4825,bytes4826,bytes4827,bytes4828,bytes4829,bytes4830,bytes4831,bytes4832,bytes4833,bytes4834,bytes4835,bytes4836,bytes4837,bytes4838,bytes4839,bytes4840,bytes4841,bytes4842,bytes4843,bytes4844,bytes4845,bytes4846,bytes4847,bytes4848,bytes4849,bytes4850,bytes4851,bytes4852,bytes4853,bytes4854,bytes4855,bytes4856,bytes4857,bytes4858,bytes4859,bytes4860,bytes4861,bytes4862,bytes4863]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4896 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4800.1 (.cons _ _ _ _ _ checked4801.1 (.cons _ _ _ _ _ checked4802.1 (.cons _ _ _ _ _ checked4803.1 (.cons _ _ _ _ _ checked4804.1 (.cons _ _ _ _ _ checked4805.1 (.cons _ _ _ _ _ checked4806.1 (.cons _ _ _ _ _ checked4807.1 (.cons _ _ _ _ _ checked4808.1 (.cons _ _ _ _ _ checked4809.1 (.cons _ _ _ _ _ checked4810.1 (.cons _ _ _ _ _ checked4811.1 (.cons _ _ _ _ _ checked4812.1 (.cons _ _ _ _ _ checked4813.1 (.cons _ _ _ _ _ checked4814.1 (.cons _ _ _ _ _ checked4815.1 (.cons _ _ _ _ _ checked4816.1 (.cons _ _ _ _ _ checked4817.1 (.cons _ _ _ _ _ checked4818.1 (.cons _ _ _ _ _ checked4819.1 (.cons _ _ _ _ _ checked4820.1 (.cons _ _ _ _ _ checked4821.1 (.cons _ _ _ _ _ checked4822.1 (.cons _ _ _ _ _ checked4823.1 (.cons _ _ _ _ _ checked4824.1 (.cons _ _ _ _ _ checked4825.1 (.cons _ _ _ _ _ checked4826.1 (.cons _ _ _ _ _ checked4827.1 (.cons _ _ _ _ _ checked4828.1 (.cons _ _ _ _ _ checked4829.1 (.cons _ _ _ _ _ checked4830.1 (.cons _ _ _ _ _ checked4831.1 (.cons _ _ _ _ _ checked4832.1 (.cons _ _ _ _ _ checked4833.1 (.cons _ _ _ _ _ checked4834.1 (.cons _ _ _ _ _ checked4835.1 (.cons _ _ _ _ _ checked4836.1 (.cons _ _ _ _ _ checked4837.1 (.cons _ _ _ _ _ checked4838.1 (.cons _ _ _ _ _ checked4839.1 (.cons _ _ _ _ _ checked4840.1 (.cons _ _ _ _ _ checked4841.1 (.cons _ _ _ _ _ checked4842.1 (.cons _ _ _ _ _ checked4843.1 (.cons _ _ _ _ _ checked4844.1 (.cons _ _ _ _ _ checked4845.1 (.cons _ _ _ _ _ checked4846.1 (.cons _ _ _ _ _ checked4847.1 (.cons _ _ _ _ _ checked4848.1 (.cons _ _ _ _ _ checked4849.1 (.cons _ _ _ _ _ checked4850.1 (.cons _ _ _ _ _ checked4851.1 (.cons _ _ _ _ _ checked4852.1 (.cons _ _ _ _ _ checked4853.1 (.cons _ _ _ _ _ checked4854.1 (.cons _ _ _ _ _ checked4855.1 (.cons _ _ _ _ _ checked4856.1 (.cons _ _ _ _ _ checked4857.1 (.cons _ _ _ _ _ checked4858.1 (.cons _ _ _ _ _ checked4859.1 (.cons _ _ _ _ _ checked4860.1 (.cons _ _ _ _ _ checked4861.1 (.cons _ _ _ _ _ checked4862.1 (.cons _ _ _ _ _ checked4863.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4896 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4800.2,checked4801.2,checked4802.2,checked4803.2,checked4804.2,checked4805.2,checked4806.2,checked4807.2,checked4808.2,checked4809.2,checked4810.2,checked4811.2,checked4812.2,checked4813.2,checked4814.2,checked4815.2,checked4816.2,checked4817.2,checked4818.2,checked4819.2,checked4820.2,checked4821.2,checked4822.2,checked4823.2,checked4824.2,checked4825.2,checked4826.2,checked4827.2,checked4828.2,checked4829.2,checked4830.2,checked4831.2,checked4832.2,checked4833.2,checked4834.2,checked4835.2,checked4836.2,checked4837.2,checked4838.2,checked4839.2,checked4840.2,checked4841.2,checked4842.2,checked4843.2,checked4844.2,checked4845.2,checked4846.2,checked4847.2,checked4848.2,checked4849.2,checked4850.2,checked4851.2,checked4852.2,checked4853.2,checked4854.2,checked4855.2,checked4856.2,checked4857.2,checked4858.2,checked4859.2,checked4860.2,checked4861.2,checked4862.2,checked4863.2]
  decide
end ArtifactPairedPathRoundGroup75
