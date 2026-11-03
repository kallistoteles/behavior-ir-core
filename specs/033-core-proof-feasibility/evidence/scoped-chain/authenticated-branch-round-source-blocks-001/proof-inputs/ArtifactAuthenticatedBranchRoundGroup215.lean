import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup215
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13760 : List WordIR.Op := [.badd 13876 13877]
def bytes13760 : Bytes := ("    let r00003636: u32 = r00003634.wrapping_add(r00003635);\n" : String).toByteArray.data.toList
theorem checked13760 : bytes13760=statementBytes 13878 (op13760.map lower) ∧ bytes13760.length=60 := by core033_kernel_decide
def op13761 : List WordIR.Op := [.bnot 13878]
def bytes13761 : Bytes := ("    let r00003637: u32 = !r00003636;\n" : String).toByteArray.data.toList
theorem checked13761 : bytes13761=statementBytes 13879 (op13761.map lower) ∧ bytes13761.length=37 := by core033_kernel_decide
def op13762 : List WordIR.Op := [.band 13879 56]
def bytes13762 : Bytes := ("    let r00003638: u32 = r00003637 & r00000038;\n" : String).toByteArray.data.toList
theorem checked13762 : bytes13762=statementBytes 13880 (op13762.map lower) ∧ bytes13762.length=48 := by core033_kernel_decide
def op13763 : List WordIR.Op := [.bxor 13875 13880]
def bytes13763 : Bytes := ("    let r00003639: u32 = r00003633 ^ r00003638;\n" : String).toByteArray.data.toList
theorem checked13763 : bytes13763=statementBytes 13881 (op13763.map lower) ∧ bytes13763.length=48 := by core033_kernel_decide
def op13764 : List WordIR.Op := [.bnot 419]
def bytes13764 : Bytes := ("    let r0000363a: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13764 : bytes13764=statementBytes 13882 (op13764.map lower) ∧ bytes13764.length=37 := by core033_kernel_decide
def op13765 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13765 : Bytes := ("    let r0000363b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13765 : bytes13765=statementBytes 13883 (op13765.map lower) ∧ bytes13765.length=41 := by core033_kernel_decide
def op13766 : List WordIR.Op := [.badd 13882 13883]
def bytes13766 : Bytes := ("    let r0000363c: u32 = r0000363a.wrapping_add(r0000363b);\n" : String).toByteArray.data.toList
theorem checked13766 : bytes13766=statementBytes 13884 (op13766.map lower) ∧ bytes13766.length=60 := by core033_kernel_decide
def op13767 : List WordIR.Op := [.band 13884 12156]
def bytes13767 : Bytes := ("    let r0000363d: u32 = r0000363c & r00002f7c;\n" : String).toByteArray.data.toList
theorem checked13767 : bytes13767=statementBytes 13885 (op13767.map lower) ∧ bytes13767.length=48 := by core033_kernel_decide
def op13768 : List WordIR.Op := [.bnot 419]
def bytes13768 : Bytes := ("    let r0000363e: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13768 : bytes13768=statementBytes 13886 (op13768.map lower) ∧ bytes13768.length=37 := by core033_kernel_decide
def op13769 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13769 : Bytes := ("    let r0000363f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13769 : bytes13769=statementBytes 13887 (op13769.map lower) ∧ bytes13769.length=41 := by core033_kernel_decide
def op13770 : List WordIR.Op := [.badd 13886 13887]
def bytes13770 : Bytes := ("    let r00003640: u32 = r0000363e.wrapping_add(r0000363f);\n" : String).toByteArray.data.toList
theorem checked13770 : bytes13770=statementBytes 13888 (op13770.map lower) ∧ bytes13770.length=60 := by core033_kernel_decide
def op13771 : List WordIR.Op := [.bnot 13888]
def bytes13771 : Bytes := ("    let r00003641: u32 = !r00003640;\n" : String).toByteArray.data.toList
theorem checked13771 : bytes13771=statementBytes 13889 (op13771.map lower) ∧ bytes13771.length=37 := by core033_kernel_decide
def op13772 : List WordIR.Op := [.band 13889 57]
def bytes13772 : Bytes := ("    let r00003642: u32 = r00003641 & r00000039;\n" : String).toByteArray.data.toList
theorem checked13772 : bytes13772=statementBytes 13890 (op13772.map lower) ∧ bytes13772.length=48 := by core033_kernel_decide
def op13773 : List WordIR.Op := [.bxor 13885 13890]
def bytes13773 : Bytes := ("    let r00003643: u32 = r0000363d ^ r00003642;\n" : String).toByteArray.data.toList
theorem checked13773 : bytes13773=statementBytes 13891 (op13773.map lower) ∧ bytes13773.length=48 := by core033_kernel_decide
def op13774 : List WordIR.Op := [.bnot 419]
def bytes13774 : Bytes := ("    let r00003644: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13774 : bytes13774=statementBytes 13892 (op13774.map lower) ∧ bytes13774.length=37 := by core033_kernel_decide
def op13775 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13775 : Bytes := ("    let r00003645: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13775 : bytes13775=statementBytes 13893 (op13775.map lower) ∧ bytes13775.length=41 := by core033_kernel_decide
def op13776 : List WordIR.Op := [.badd 13892 13893]
def bytes13776 : Bytes := ("    let r00003646: u32 = r00003644.wrapping_add(r00003645);\n" : String).toByteArray.data.toList
theorem checked13776 : bytes13776=statementBytes 13894 (op13776.map lower) ∧ bytes13776.length=60 := by core033_kernel_decide
def op13777 : List WordIR.Op := [.band 13894 12208]
def bytes13777 : Bytes := ("    let r00003647: u32 = r00003646 & r00002fb0;\n" : String).toByteArray.data.toList
theorem checked13777 : bytes13777=statementBytes 13895 (op13777.map lower) ∧ bytes13777.length=48 := by core033_kernel_decide
def op13778 : List WordIR.Op := [.bnot 419]
def bytes13778 : Bytes := ("    let r00003648: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13778 : bytes13778=statementBytes 13896 (op13778.map lower) ∧ bytes13778.length=37 := by core033_kernel_decide
def op13779 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13779 : Bytes := ("    let r00003649: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13779 : bytes13779=statementBytes 13897 (op13779.map lower) ∧ bytes13779.length=41 := by core033_kernel_decide
def op13780 : List WordIR.Op := [.badd 13896 13897]
def bytes13780 : Bytes := ("    let r0000364a: u32 = r00003648.wrapping_add(r00003649);\n" : String).toByteArray.data.toList
theorem checked13780 : bytes13780=statementBytes 13898 (op13780.map lower) ∧ bytes13780.length=60 := by core033_kernel_decide
def op13781 : List WordIR.Op := [.bnot 13898]
def bytes13781 : Bytes := ("    let r0000364b: u32 = !r0000364a;\n" : String).toByteArray.data.toList
theorem checked13781 : bytes13781=statementBytes 13899 (op13781.map lower) ∧ bytes13781.length=37 := by core033_kernel_decide
def op13782 : List WordIR.Op := [.band 13899 58]
def bytes13782 : Bytes := ("    let r0000364c: u32 = r0000364b & r0000003a;\n" : String).toByteArray.data.toList
theorem checked13782 : bytes13782=statementBytes 13900 (op13782.map lower) ∧ bytes13782.length=48 := by core033_kernel_decide
def op13783 : List WordIR.Op := [.bxor 13895 13900]
def bytes13783 : Bytes := ("    let r0000364d: u32 = r00003647 ^ r0000364c;\n" : String).toByteArray.data.toList
theorem checked13783 : bytes13783=statementBytes 13901 (op13783.map lower) ∧ bytes13783.length=48 := by core033_kernel_decide
def op13784 : List WordIR.Op := [.bnot 419]
def bytes13784 : Bytes := ("    let r0000364e: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13784 : bytes13784=statementBytes 13902 (op13784.map lower) ∧ bytes13784.length=37 := by core033_kernel_decide
def op13785 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13785 : Bytes := ("    let r0000364f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13785 : bytes13785=statementBytes 13903 (op13785.map lower) ∧ bytes13785.length=41 := by core033_kernel_decide
def op13786 : List WordIR.Op := [.badd 13902 13903]
def bytes13786 : Bytes := ("    let r00003650: u32 = r0000364e.wrapping_add(r0000364f);\n" : String).toByteArray.data.toList
theorem checked13786 : bytes13786=statementBytes 13904 (op13786.map lower) ∧ bytes13786.length=60 := by core033_kernel_decide
def op13787 : List WordIR.Op := [.band 13904 12260]
def bytes13787 : Bytes := ("    let r00003651: u32 = r00003650 & r00002fe4;\n" : String).toByteArray.data.toList
theorem checked13787 : bytes13787=statementBytes 13905 (op13787.map lower) ∧ bytes13787.length=48 := by core033_kernel_decide
def op13788 : List WordIR.Op := [.bnot 419]
def bytes13788 : Bytes := ("    let r00003652: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13788 : bytes13788=statementBytes 13906 (op13788.map lower) ∧ bytes13788.length=37 := by core033_kernel_decide
def op13789 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13789 : Bytes := ("    let r00003653: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13789 : bytes13789=statementBytes 13907 (op13789.map lower) ∧ bytes13789.length=41 := by core033_kernel_decide
def op13790 : List WordIR.Op := [.badd 13906 13907]
def bytes13790 : Bytes := ("    let r00003654: u32 = r00003652.wrapping_add(r00003653);\n" : String).toByteArray.data.toList
theorem checked13790 : bytes13790=statementBytes 13908 (op13790.map lower) ∧ bytes13790.length=60 := by core033_kernel_decide
def op13791 : List WordIR.Op := [.bnot 13908]
def bytes13791 : Bytes := ("    let r00003655: u32 = !r00003654;\n" : String).toByteArray.data.toList
theorem checked13791 : bytes13791=statementBytes 13909 (op13791.map lower) ∧ bytes13791.length=37 := by core033_kernel_decide
def op13792 : List WordIR.Op := [.band 13909 59]
def bytes13792 : Bytes := ("    let r00003656: u32 = r00003655 & r0000003b;\n" : String).toByteArray.data.toList
theorem checked13792 : bytes13792=statementBytes 13910 (op13792.map lower) ∧ bytes13792.length=48 := by core033_kernel_decide
def op13793 : List WordIR.Op := [.bxor 13905 13910]
def bytes13793 : Bytes := ("    let r00003657: u32 = r00003651 ^ r00003656;\n" : String).toByteArray.data.toList
theorem checked13793 : bytes13793=statementBytes 13911 (op13793.map lower) ∧ bytes13793.length=48 := by core033_kernel_decide
def op13794 : List WordIR.Op := [.bnot 419]
def bytes13794 : Bytes := ("    let r00003658: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13794 : bytes13794=statementBytes 13912 (op13794.map lower) ∧ bytes13794.length=37 := by core033_kernel_decide
def op13795 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13795 : Bytes := ("    let r00003659: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13795 : bytes13795=statementBytes 13913 (op13795.map lower) ∧ bytes13795.length=41 := by core033_kernel_decide
def op13796 : List WordIR.Op := [.badd 13912 13913]
def bytes13796 : Bytes := ("    let r0000365a: u32 = r00003658.wrapping_add(r00003659);\n" : String).toByteArray.data.toList
theorem checked13796 : bytes13796=statementBytes 13914 (op13796.map lower) ∧ bytes13796.length=60 := by core033_kernel_decide
def op13797 : List WordIR.Op := [.band 13914 12312]
def bytes13797 : Bytes := ("    let r0000365b: u32 = r0000365a & r00003018;\n" : String).toByteArray.data.toList
theorem checked13797 : bytes13797=statementBytes 13915 (op13797.map lower) ∧ bytes13797.length=48 := by core033_kernel_decide
def op13798 : List WordIR.Op := [.bnot 419]
def bytes13798 : Bytes := ("    let r0000365c: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13798 : bytes13798=statementBytes 13916 (op13798.map lower) ∧ bytes13798.length=37 := by core033_kernel_decide
def op13799 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13799 : Bytes := ("    let r0000365d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13799 : bytes13799=statementBytes 13917 (op13799.map lower) ∧ bytes13799.length=41 := by core033_kernel_decide
def op13800 : List WordIR.Op := [.badd 13916 13917]
def bytes13800 : Bytes := ("    let r0000365e: u32 = r0000365c.wrapping_add(r0000365d);\n" : String).toByteArray.data.toList
theorem checked13800 : bytes13800=statementBytes 13918 (op13800.map lower) ∧ bytes13800.length=60 := by core033_kernel_decide
def op13801 : List WordIR.Op := [.bnot 13918]
def bytes13801 : Bytes := ("    let r0000365f: u32 = !r0000365e;\n" : String).toByteArray.data.toList
theorem checked13801 : bytes13801=statementBytes 13919 (op13801.map lower) ∧ bytes13801.length=37 := by core033_kernel_decide
def op13802 : List WordIR.Op := [.band 13919 60]
def bytes13802 : Bytes := ("    let r00003660: u32 = r0000365f & r0000003c;\n" : String).toByteArray.data.toList
theorem checked13802 : bytes13802=statementBytes 13920 (op13802.map lower) ∧ bytes13802.length=48 := by core033_kernel_decide
def op13803 : List WordIR.Op := [.bxor 13915 13920]
def bytes13803 : Bytes := ("    let r00003661: u32 = r0000365b ^ r00003660;\n" : String).toByteArray.data.toList
theorem checked13803 : bytes13803=statementBytes 13921 (op13803.map lower) ∧ bytes13803.length=48 := by core033_kernel_decide
def op13804 : List WordIR.Op := [.bnot 419]
def bytes13804 : Bytes := ("    let r00003662: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13804 : bytes13804=statementBytes 13922 (op13804.map lower) ∧ bytes13804.length=37 := by core033_kernel_decide
def op13805 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13805 : Bytes := ("    let r00003663: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13805 : bytes13805=statementBytes 13923 (op13805.map lower) ∧ bytes13805.length=41 := by core033_kernel_decide
def op13806 : List WordIR.Op := [.badd 13922 13923]
def bytes13806 : Bytes := ("    let r00003664: u32 = r00003662.wrapping_add(r00003663);\n" : String).toByteArray.data.toList
theorem checked13806 : bytes13806=statementBytes 13924 (op13806.map lower) ∧ bytes13806.length=60 := by core033_kernel_decide
def op13807 : List WordIR.Op := [.band 13924 12364]
def bytes13807 : Bytes := ("    let r00003665: u32 = r00003664 & r0000304c;\n" : String).toByteArray.data.toList
theorem checked13807 : bytes13807=statementBytes 13925 (op13807.map lower) ∧ bytes13807.length=48 := by core033_kernel_decide
def op13808 : List WordIR.Op := [.bnot 419]
def bytes13808 : Bytes := ("    let r00003666: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13808 : bytes13808=statementBytes 13926 (op13808.map lower) ∧ bytes13808.length=37 := by core033_kernel_decide
def op13809 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13809 : Bytes := ("    let r00003667: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13809 : bytes13809=statementBytes 13927 (op13809.map lower) ∧ bytes13809.length=41 := by core033_kernel_decide
def op13810 : List WordIR.Op := [.badd 13926 13927]
def bytes13810 : Bytes := ("    let r00003668: u32 = r00003666.wrapping_add(r00003667);\n" : String).toByteArray.data.toList
theorem checked13810 : bytes13810=statementBytes 13928 (op13810.map lower) ∧ bytes13810.length=60 := by core033_kernel_decide
def op13811 : List WordIR.Op := [.bnot 13928]
def bytes13811 : Bytes := ("    let r00003669: u32 = !r00003668;\n" : String).toByteArray.data.toList
theorem checked13811 : bytes13811=statementBytes 13929 (op13811.map lower) ∧ bytes13811.length=37 := by core033_kernel_decide
def op13812 : List WordIR.Op := [.band 13929 61]
def bytes13812 : Bytes := ("    let r0000366a: u32 = r00003669 & r0000003d;\n" : String).toByteArray.data.toList
theorem checked13812 : bytes13812=statementBytes 13930 (op13812.map lower) ∧ bytes13812.length=48 := by core033_kernel_decide
def op13813 : List WordIR.Op := [.bxor 13925 13930]
def bytes13813 : Bytes := ("    let r0000366b: u32 = r00003665 ^ r0000366a;\n" : String).toByteArray.data.toList
theorem checked13813 : bytes13813=statementBytes 13931 (op13813.map lower) ∧ bytes13813.length=48 := by core033_kernel_decide
def op13814 : List WordIR.Op := [.bnot 419]
def bytes13814 : Bytes := ("    let r0000366c: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13814 : bytes13814=statementBytes 13932 (op13814.map lower) ∧ bytes13814.length=37 := by core033_kernel_decide
def op13815 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13815 : Bytes := ("    let r0000366d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13815 : bytes13815=statementBytes 13933 (op13815.map lower) ∧ bytes13815.length=41 := by core033_kernel_decide
def op13816 : List WordIR.Op := [.badd 13932 13933]
def bytes13816 : Bytes := ("    let r0000366e: u32 = r0000366c.wrapping_add(r0000366d);\n" : String).toByteArray.data.toList
theorem checked13816 : bytes13816=statementBytes 13934 (op13816.map lower) ∧ bytes13816.length=60 := by core033_kernel_decide
def op13817 : List WordIR.Op := [.band 13934 12416]
def bytes13817 : Bytes := ("    let r0000366f: u32 = r0000366e & r00003080;\n" : String).toByteArray.data.toList
theorem checked13817 : bytes13817=statementBytes 13935 (op13817.map lower) ∧ bytes13817.length=48 := by core033_kernel_decide
def op13818 : List WordIR.Op := [.bnot 419]
def bytes13818 : Bytes := ("    let r00003670: u32 = !r000001a3;\n" : String).toByteArray.data.toList
theorem checked13818 : bytes13818=statementBytes 13936 (op13818.map lower) ∧ bytes13818.length=37 := by core033_kernel_decide
def op13819 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13819 : Bytes := ("    let r00003671: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13819 : bytes13819=statementBytes 13937 (op13819.map lower) ∧ bytes13819.length=41 := by core033_kernel_decide
def op13820 : List WordIR.Op := [.badd 13936 13937]
def bytes13820 : Bytes := ("    let r00003672: u32 = r00003670.wrapping_add(r00003671);\n" : String).toByteArray.data.toList
theorem checked13820 : bytes13820=statementBytes 13938 (op13820.map lower) ∧ bytes13820.length=60 := by core033_kernel_decide
def op13821 : List WordIR.Op := [.bnot 13938]
def bytes13821 : Bytes := ("    let r00003673: u32 = !r00003672;\n" : String).toByteArray.data.toList
theorem checked13821 : bytes13821=statementBytes 13939 (op13821.map lower) ∧ bytes13821.length=37 := by core033_kernel_decide
def op13822 : List WordIR.Op := [.band 13939 62]
def bytes13822 : Bytes := ("    let r00003674: u32 = r00003673 & r0000003e;\n" : String).toByteArray.data.toList
theorem checked13822 : bytes13822=statementBytes 13940 (op13822.map lower) ∧ bytes13822.length=48 := by core033_kernel_decide
def op13823 : List WordIR.Op := [.bxor 13935 13940]
def bytes13823 : Bytes := ("    let r00003675: u32 = r0000366f ^ r00003674;\n" : String).toByteArray.data.toList
theorem checked13823 : bytes13823=statementBytes 13941 (op13823.map lower) ∧ bytes13823.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13760,op13761,op13762,op13763,op13764,op13765,op13766,op13767,op13768,op13769,op13770,op13771,op13772,op13773,op13774,op13775,op13776,op13777,op13778,op13779,op13780,op13781,op13782,op13783,op13784,op13785,op13786,op13787,op13788,op13789,op13790,op13791,op13792,op13793,op13794,op13795,op13796,op13797,op13798,op13799,op13800,op13801,op13802,op13803,op13804,op13805,op13806,op13807,op13808,op13809,op13810,op13811,op13812,op13813,op13814,op13815,op13816,op13817,op13818,op13819,op13820,op13821,op13822,op13823]
def chunks : List Bytes := [bytes13760,bytes13761,bytes13762,bytes13763,bytes13764,bytes13765,bytes13766,bytes13767,bytes13768,bytes13769,bytes13770,bytes13771,bytes13772,bytes13773,bytes13774,bytes13775,bytes13776,bytes13777,bytes13778,bytes13779,bytes13780,bytes13781,bytes13782,bytes13783,bytes13784,bytes13785,bytes13786,bytes13787,bytes13788,bytes13789,bytes13790,bytes13791,bytes13792,bytes13793,bytes13794,bytes13795,bytes13796,bytes13797,bytes13798,bytes13799,bytes13800,bytes13801,bytes13802,bytes13803,bytes13804,bytes13805,bytes13806,bytes13807,bytes13808,bytes13809,bytes13810,bytes13811,bytes13812,bytes13813,bytes13814,bytes13815,bytes13816,bytes13817,bytes13818,bytes13819,bytes13820,bytes13821,bytes13822,bytes13823]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13878 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13760.1 (.cons _ _ _ _ _ checked13761.1 (.cons _ _ _ _ _ checked13762.1 (.cons _ _ _ _ _ checked13763.1 (.cons _ _ _ _ _ checked13764.1 (.cons _ _ _ _ _ checked13765.1 (.cons _ _ _ _ _ checked13766.1 (.cons _ _ _ _ _ checked13767.1 (.cons _ _ _ _ _ checked13768.1 (.cons _ _ _ _ _ checked13769.1 (.cons _ _ _ _ _ checked13770.1 (.cons _ _ _ _ _ checked13771.1 (.cons _ _ _ _ _ checked13772.1 (.cons _ _ _ _ _ checked13773.1 (.cons _ _ _ _ _ checked13774.1 (.cons _ _ _ _ _ checked13775.1 (.cons _ _ _ _ _ checked13776.1 (.cons _ _ _ _ _ checked13777.1 (.cons _ _ _ _ _ checked13778.1 (.cons _ _ _ _ _ checked13779.1 (.cons _ _ _ _ _ checked13780.1 (.cons _ _ _ _ _ checked13781.1 (.cons _ _ _ _ _ checked13782.1 (.cons _ _ _ _ _ checked13783.1 (.cons _ _ _ _ _ checked13784.1 (.cons _ _ _ _ _ checked13785.1 (.cons _ _ _ _ _ checked13786.1 (.cons _ _ _ _ _ checked13787.1 (.cons _ _ _ _ _ checked13788.1 (.cons _ _ _ _ _ checked13789.1 (.cons _ _ _ _ _ checked13790.1 (.cons _ _ _ _ _ checked13791.1 (.cons _ _ _ _ _ checked13792.1 (.cons _ _ _ _ _ checked13793.1 (.cons _ _ _ _ _ checked13794.1 (.cons _ _ _ _ _ checked13795.1 (.cons _ _ _ _ _ checked13796.1 (.cons _ _ _ _ _ checked13797.1 (.cons _ _ _ _ _ checked13798.1 (.cons _ _ _ _ _ checked13799.1 (.cons _ _ _ _ _ checked13800.1 (.cons _ _ _ _ _ checked13801.1 (.cons _ _ _ _ _ checked13802.1 (.cons _ _ _ _ _ checked13803.1 (.cons _ _ _ _ _ checked13804.1 (.cons _ _ _ _ _ checked13805.1 (.cons _ _ _ _ _ checked13806.1 (.cons _ _ _ _ _ checked13807.1 (.cons _ _ _ _ _ checked13808.1 (.cons _ _ _ _ _ checked13809.1 (.cons _ _ _ _ _ checked13810.1 (.cons _ _ _ _ _ checked13811.1 (.cons _ _ _ _ _ checked13812.1 (.cons _ _ _ _ _ checked13813.1 (.cons _ _ _ _ _ checked13814.1 (.cons _ _ _ _ _ checked13815.1 (.cons _ _ _ _ _ checked13816.1 (.cons _ _ _ _ _ checked13817.1 (.cons _ _ _ _ _ checked13818.1 (.cons _ _ _ _ _ checked13819.1 (.cons _ _ _ _ _ checked13820.1 (.cons _ _ _ _ _ checked13821.1 (.cons _ _ _ _ _ checked13822.1 (.cons _ _ _ _ _ checked13823.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13878 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2935 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13760.2,checked13761.2,checked13762.2,checked13763.2,checked13764.2,checked13765.2,checked13766.2,checked13767.2,checked13768.2,checked13769.2,checked13770.2,checked13771.2,checked13772.2,checked13773.2,checked13774.2,checked13775.2,checked13776.2,checked13777.2,checked13778.2,checked13779.2,checked13780.2,checked13781.2,checked13782.2,checked13783.2,checked13784.2,checked13785.2,checked13786.2,checked13787.2,checked13788.2,checked13789.2,checked13790.2,checked13791.2,checked13792.2,checked13793.2,checked13794.2,checked13795.2,checked13796.2,checked13797.2,checked13798.2,checked13799.2,checked13800.2,checked13801.2,checked13802.2,checked13803.2,checked13804.2,checked13805.2,checked13806.2,checked13807.2,checked13808.2,checked13809.2,checked13810.2,checked13811.2,checked13812.2,checked13813.2,checked13814.2,checked13815.2,checked13816.2,checked13817.2,checked13818.2,checked13819.2,checked13820.2,checked13821.2,checked13822.2,checked13823.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup215
