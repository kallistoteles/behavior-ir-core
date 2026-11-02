import ActualUtf8IR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactUtf8Group1
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op64 : List WordIR.Op := [.badd 63 64]
def bytes64 : Bytes := ("    let r00000041: u32 = r0000003f.wrapping_add(r00000040);\n" : String).toByteArray.data.toList
theorem checked64 : bytes64=statementBytes 65 (op64.map lower) ∧ bytes64.length=60 := by core033_kernel_decide
def op65 : List WordIR.Op := [.bnot 65]
def bytes65 : Bytes := ("    let r00000042: u32 = !r00000041;\n" : String).toByteArray.data.toList
theorem checked65 : bytes65=statementBytes 66 (op65.map lower) ∧ bytes65.length=37 := by core033_kernel_decide
def op66 : List WordIR.Op := [.band 62 66]
def bytes66 : Bytes := ("    let r00000043: u32 = r0000003e & r00000042;\n" : String).toByteArray.data.toList
theorem checked66 : bytes66=statementBytes 67 (op66.map lower) ∧ bytes66.length=48 := by core033_kernel_decide
def op67 : List WordIR.Op := [.bxor 59 67]
def bytes67 : Bytes := ("    let r00000044: u32 = r0000003b ^ r00000043;\n" : String).toByteArray.data.toList
theorem checked67 : bytes67=statementBytes 68 (op67.map lower) ∧ bytes67.length=48 := by core033_kernel_decide
def op68 : List WordIR.Op := [.shr 68 31]
def bytes68 : Bytes := ("    let r00000045: u32 = r00000044 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked68 : bytes68=statementBytes 69 (op68.map lower) ∧ bytes68.length=54 := by core033_kernel_decide
def op69 : List WordIR.Op := [.bnot 69]
def bytes69 : Bytes := ("    let r00000046: u32 = !r00000045;\n" : String).toByteArray.data.toList
theorem checked69 : bytes69=statementBytes 70 (op69.map lower) ∧ bytes69.length=37 := by core033_kernel_decide
def op70 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes70 : Bytes := ("    let r00000047: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked70 : bytes70=statementBytes 71 (op70.map lower) ∧ bytes70.length=41 := by core033_kernel_decide
def op71 : List WordIR.Op := [.badd 70 71]
def bytes71 : Bytes := ("    let r00000048: u32 = r00000046.wrapping_add(r00000047);\n" : String).toByteArray.data.toList
theorem checked71 : bytes71=statementBytes 72 (op71.map lower) ∧ bytes71.length=60 := by core033_kernel_decide
def op72 : List WordIR.Op := [.bnot 72]
def bytes72 : Bytes := ("    let r00000049: u32 = !r00000048;\n" : String).toByteArray.data.toList
theorem checked72 : bytes72=statementBytes 73 (op72.map lower) ∧ bytes72.length=37 := by core033_kernel_decide
def op73 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes73 : Bytes := ("    let r0000004a: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked73 : bytes73=statementBytes 74 (op73.map lower) ∧ bytes73.length=41 := by core033_kernel_decide
def op74 : List WordIR.Op := [.bnot 0]
def bytes74 : Bytes := ("    let r0000004b: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked74 : bytes74=statementBytes 75 (op74.map lower) ∧ bytes74.length=37 := by core033_kernel_decide
def op75 : List WordIR.Op := [.band 74 75]
def bytes75 : Bytes := ("    let r0000004c: u32 = r0000004a & r0000004b;\n" : String).toByteArray.data.toList
theorem checked75 : bytes75=statementBytes 76 (op75.map lower) ∧ bytes75.length=48 := by core033_kernel_decide
def op76 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes76 : Bytes := ("    let r0000004d: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked76 : bytes76=statementBytes 77 (op76.map lower) ∧ bytes76.length=41 := by core033_kernel_decide
def op77 : List WordIR.Op := [.bnot 0]
def bytes77 : Bytes := ("    let r0000004e: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked77 : bytes77=statementBytes 78 (op77.map lower) ∧ bytes77.length=37 := by core033_kernel_decide
def op78 : List WordIR.Op := [.bxor 77 78]
def bytes78 : Bytes := ("    let r0000004f: u32 = r0000004d ^ r0000004e;\n" : String).toByteArray.data.toList
theorem checked78 : bytes78=statementBytes 79 (op78.map lower) ∧ bytes78.length=48 := by core033_kernel_decide
def op79 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes79 : Bytes := ("    let r00000050: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked79 : bytes79=statementBytes 80 (op79.map lower) ∧ bytes79.length=41 := by core033_kernel_decide
def op80 : List WordIR.Op := [.bnot 0]
def bytes80 : Bytes := ("    let r00000051: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked80 : bytes80=statementBytes 81 (op80.map lower) ∧ bytes80.length=37 := by core033_kernel_decide
def op81 : List WordIR.Op := [.badd 80 81]
def bytes81 : Bytes := ("    let r00000052: u32 = r00000050.wrapping_add(r00000051);\n" : String).toByteArray.data.toList
theorem checked81 : bytes81=statementBytes 82 (op81.map lower) ∧ bytes81.length=60 := by core033_kernel_decide
def op82 : List WordIR.Op := [.bnot 82]
def bytes82 : Bytes := ("    let r00000053: u32 = !r00000052;\n" : String).toByteArray.data.toList
theorem checked82 : bytes82=statementBytes 83 (op82.map lower) ∧ bytes82.length=37 := by core033_kernel_decide
def op83 : List WordIR.Op := [.band 79 83]
def bytes83 : Bytes := ("    let r00000054: u32 = r0000004f & r00000053;\n" : String).toByteArray.data.toList
theorem checked83 : bytes83=statementBytes 84 (op83.map lower) ∧ bytes83.length=48 := by core033_kernel_decide
def op84 : List WordIR.Op := [.bxor 76 84]
def bytes84 : Bytes := ("    let r00000055: u32 = r0000004c ^ r00000054;\n" : String).toByteArray.data.toList
theorem checked84 : bytes84=statementBytes 85 (op84.map lower) ∧ bytes84.length=48 := by core033_kernel_decide
def op85 : List WordIR.Op := [.shr 85 31]
def bytes85 : Bytes := ("    let r00000056: u32 = r00000055 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked85 : bytes85=statementBytes 86 (op85.map lower) ∧ bytes85.length=54 := by core033_kernel_decide
def op86 : List WordIR.Op := [.bnot 86]
def bytes86 : Bytes := ("    let r00000057: u32 = !r00000056;\n" : String).toByteArray.data.toList
theorem checked86 : bytes86=statementBytes 87 (op86.map lower) ∧ bytes86.length=37 := by core033_kernel_decide
def op87 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes87 : Bytes := ("    let r00000058: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked87 : bytes87=statementBytes 88 (op87.map lower) ∧ bytes87.length=41 := by core033_kernel_decide
def op88 : List WordIR.Op := [.badd 87 88]
def bytes88 : Bytes := ("    let r00000059: u32 = r00000057.wrapping_add(r00000058);\n" : String).toByteArray.data.toList
theorem checked88 : bytes88=statementBytes 89 (op88.map lower) ∧ bytes88.length=60 := by core033_kernel_decide
def op89 : List WordIR.Op := [.shr 0 12]
def bytes89 : Bytes := ("    let r0000005a: u32 = r00000000 >> 0x0000000c_u32;\n" : String).toByteArray.data.toList
theorem checked89 : bytes89=statementBytes 90 (op89.map lower) ∧ bytes89.length=54 := by core033_kernel_decide
def op90 : List WordIR.Op := [.literal (BitVec.ofNat 32 15)]
def bytes90 : Bytes := ("    let r0000005b: u32 = 0x0000000f_u32;\n" : String).toByteArray.data.toList
theorem checked90 : bytes90=statementBytes 91 (op90.map lower) ∧ bytes90.length=41 := by core033_kernel_decide
def op91 : List WordIR.Op := [.band 90 91]
def bytes91 : Bytes := ("    let r0000005c: u32 = r0000005a & r0000005b;\n" : String).toByteArray.data.toList
theorem checked91 : bytes91=statementBytes 92 (op91.map lower) ∧ bytes91.length=48 := by core033_kernel_decide
def op92 : List WordIR.Op := [.literal (BitVec.ofNat 32 224)]
def bytes92 : Bytes := ("    let r0000005d: u32 = 0x000000e0_u32;\n" : String).toByteArray.data.toList
theorem checked92 : bytes92=statementBytes 93 (op92.map lower) ∧ bytes92.length=41 := by core033_kernel_decide
def op93 : List WordIR.Op := [.badd 92 93]
def bytes93 : Bytes := ("    let r0000005e: u32 = r0000005c.wrapping_add(r0000005d);\n" : String).toByteArray.data.toList
theorem checked93 : bytes93=statementBytes 94 (op93.map lower) ∧ bytes93.length=60 := by core033_kernel_decide
def op94 : List WordIR.Op := [.band 89 94]
def bytes94 : Bytes := ("    let r0000005f: u32 = r00000059 & r0000005e;\n" : String).toByteArray.data.toList
theorem checked94 : bytes94=statementBytes 95 (op94.map lower) ∧ bytes94.length=48 := by core033_kernel_decide
def op95 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes95 : Bytes := ("    let r00000060: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked95 : bytes95=statementBytes 96 (op95.map lower) ∧ bytes95.length=41 := by core033_kernel_decide
def op96 : List WordIR.Op := [.bnot 0]
def bytes96 : Bytes := ("    let r00000061: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked96 : bytes96=statementBytes 97 (op96.map lower) ∧ bytes96.length=37 := by core033_kernel_decide
def op97 : List WordIR.Op := [.band 96 97]
def bytes97 : Bytes := ("    let r00000062: u32 = r00000060 & r00000061;\n" : String).toByteArray.data.toList
theorem checked97 : bytes97=statementBytes 98 (op97.map lower) ∧ bytes97.length=48 := by core033_kernel_decide
def op98 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes98 : Bytes := ("    let r00000063: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked98 : bytes98=statementBytes 99 (op98.map lower) ∧ bytes98.length=41 := by core033_kernel_decide
def op99 : List WordIR.Op := [.bnot 0]
def bytes99 : Bytes := ("    let r00000064: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked99 : bytes99=statementBytes 100 (op99.map lower) ∧ bytes99.length=37 := by core033_kernel_decide
def op100 : List WordIR.Op := [.bxor 99 100]
def bytes100 : Bytes := ("    let r00000065: u32 = r00000063 ^ r00000064;\n" : String).toByteArray.data.toList
theorem checked100 : bytes100=statementBytes 101 (op100.map lower) ∧ bytes100.length=48 := by core033_kernel_decide
def op101 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes101 : Bytes := ("    let r00000066: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked101 : bytes101=statementBytes 102 (op101.map lower) ∧ bytes101.length=41 := by core033_kernel_decide
def op102 : List WordIR.Op := [.bnot 0]
def bytes102 : Bytes := ("    let r00000067: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked102 : bytes102=statementBytes 103 (op102.map lower) ∧ bytes102.length=37 := by core033_kernel_decide
def op103 : List WordIR.Op := [.badd 102 103]
def bytes103 : Bytes := ("    let r00000068: u32 = r00000066.wrapping_add(r00000067);\n" : String).toByteArray.data.toList
theorem checked103 : bytes103=statementBytes 104 (op103.map lower) ∧ bytes103.length=60 := by core033_kernel_decide
def op104 : List WordIR.Op := [.bnot 104]
def bytes104 : Bytes := ("    let r00000069: u32 = !r00000068;\n" : String).toByteArray.data.toList
theorem checked104 : bytes104=statementBytes 105 (op104.map lower) ∧ bytes104.length=37 := by core033_kernel_decide
def op105 : List WordIR.Op := [.band 101 105]
def bytes105 : Bytes := ("    let r0000006a: u32 = r00000065 & r00000069;\n" : String).toByteArray.data.toList
theorem checked105 : bytes105=statementBytes 106 (op105.map lower) ∧ bytes105.length=48 := by core033_kernel_decide
def op106 : List WordIR.Op := [.bxor 98 106]
def bytes106 : Bytes := ("    let r0000006b: u32 = r00000062 ^ r0000006a;\n" : String).toByteArray.data.toList
theorem checked106 : bytes106=statementBytes 107 (op106.map lower) ∧ bytes106.length=48 := by core033_kernel_decide
def op107 : List WordIR.Op := [.shr 107 31]
def bytes107 : Bytes := ("    let r0000006c: u32 = r0000006b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked107 : bytes107=statementBytes 108 (op107.map lower) ∧ bytes107.length=54 := by core033_kernel_decide
def op108 : List WordIR.Op := [.bnot 108]
def bytes108 : Bytes := ("    let r0000006d: u32 = !r0000006c;\n" : String).toByteArray.data.toList
theorem checked108 : bytes108=statementBytes 109 (op108.map lower) ∧ bytes108.length=37 := by core033_kernel_decide
def op109 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes109 : Bytes := ("    let r0000006e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked109 : bytes109=statementBytes 110 (op109.map lower) ∧ bytes109.length=41 := by core033_kernel_decide
def op110 : List WordIR.Op := [.badd 109 110]
def bytes110 : Bytes := ("    let r0000006f: u32 = r0000006d.wrapping_add(r0000006e);\n" : String).toByteArray.data.toList
theorem checked110 : bytes110=statementBytes 111 (op110.map lower) ∧ bytes110.length=60 := by core033_kernel_decide
def op111 : List WordIR.Op := [.bnot 111]
def bytes111 : Bytes := ("    let r00000070: u32 = !r0000006f;\n" : String).toByteArray.data.toList
theorem checked111 : bytes111=statementBytes 112 (op111.map lower) ∧ bytes111.length=37 := by core033_kernel_decide
def op112 : List WordIR.Op := [.shr 0 18]
def bytes112 : Bytes := ("    let r00000071: u32 = r00000000 >> 0x00000012_u32;\n" : String).toByteArray.data.toList
theorem checked112 : bytes112=statementBytes 113 (op112.map lower) ∧ bytes112.length=54 := by core033_kernel_decide
def op113 : List WordIR.Op := [.literal (BitVec.ofNat 32 7)]
def bytes113 : Bytes := ("    let r00000072: u32 = 0x00000007_u32;\n" : String).toByteArray.data.toList
theorem checked113 : bytes113=statementBytes 114 (op113.map lower) ∧ bytes113.length=41 := by core033_kernel_decide
def op114 : List WordIR.Op := [.band 113 114]
def bytes114 : Bytes := ("    let r00000073: u32 = r00000071 & r00000072;\n" : String).toByteArray.data.toList
theorem checked114 : bytes114=statementBytes 115 (op114.map lower) ∧ bytes114.length=48 := by core033_kernel_decide
def op115 : List WordIR.Op := [.literal (BitVec.ofNat 32 240)]
def bytes115 : Bytes := ("    let r00000074: u32 = 0x000000f0_u32;\n" : String).toByteArray.data.toList
theorem checked115 : bytes115=statementBytes 116 (op115.map lower) ∧ bytes115.length=41 := by core033_kernel_decide
def op116 : List WordIR.Op := [.badd 115 116]
def bytes116 : Bytes := ("    let r00000075: u32 = r00000073.wrapping_add(r00000074);\n" : String).toByteArray.data.toList
theorem checked116 : bytes116=statementBytes 117 (op116.map lower) ∧ bytes116.length=60 := by core033_kernel_decide
def op117 : List WordIR.Op := [.band 112 117]
def bytes117 : Bytes := ("    let r00000076: u32 = r00000070 & r00000075;\n" : String).toByteArray.data.toList
theorem checked117 : bytes117=statementBytes 118 (op117.map lower) ∧ bytes117.length=48 := by core033_kernel_decide
def op118 : List WordIR.Op := [.bxor 95 118]
def bytes118 : Bytes := ("    let r00000077: u32 = r0000005f ^ r00000076;\n" : String).toByteArray.data.toList
theorem checked118 : bytes118=statementBytes 119 (op118.map lower) ∧ bytes118.length=48 := by core033_kernel_decide
def op119 : List WordIR.Op := [.band 73 119]
def bytes119 : Bytes := ("    let r00000078: u32 = r00000049 & r00000077;\n" : String).toByteArray.data.toList
theorem checked119 : bytes119=statementBytes 120 (op119.map lower) ∧ bytes119.length=48 := by core033_kernel_decide
def op120 : List WordIR.Op := [.bxor 56 120]
def bytes120 : Bytes := ("    let r00000079: u32 = r00000038 ^ r00000078;\n" : String).toByteArray.data.toList
theorem checked120 : bytes120=statementBytes 121 (op120.map lower) ∧ bytes120.length=48 := by core033_kernel_decide
def op121 : List WordIR.Op := [.band 34 121]
def bytes121 : Bytes := ("    let r0000007a: u32 = r00000022 & r00000079;\n" : String).toByteArray.data.toList
theorem checked121 : bytes121=statementBytes 122 (op121.map lower) ∧ bytes121.length=48 := by core033_kernel_decide
def op122 : List WordIR.Op := [.bxor 17 122]
def bytes122 : Bytes := ("    let r0000007b: u32 = r00000011 ^ r0000007a;\n" : String).toByteArray.data.toList
theorem checked122 : bytes122=statementBytes 123 (op122.map lower) ∧ bytes122.length=48 := by core033_kernel_decide
def op123 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes123 : Bytes := ("    let r0000007c: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked123 : bytes123=statementBytes 124 (op123.map lower) ∧ bytes123.length=41 := by core033_kernel_decide
def op124 : List WordIR.Op := [.bnot 0]
def bytes124 : Bytes := ("    let r0000007d: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked124 : bytes124=statementBytes 125 (op124.map lower) ∧ bytes124.length=37 := by core033_kernel_decide
def op125 : List WordIR.Op := [.band 124 125]
def bytes125 : Bytes := ("    let r0000007e: u32 = r0000007c & r0000007d;\n" : String).toByteArray.data.toList
theorem checked125 : bytes125=statementBytes 126 (op125.map lower) ∧ bytes125.length=48 := by core033_kernel_decide
def op126 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes126 : Bytes := ("    let r0000007f: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked126 : bytes126=statementBytes 127 (op126.map lower) ∧ bytes126.length=41 := by core033_kernel_decide
def op127 : List WordIR.Op := [.bnot 0]
def bytes127 : Bytes := ("    let r00000080: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked127 : bytes127=statementBytes 128 (op127.map lower) ∧ bytes127.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op64,op65,op66,op67,op68,op69,op70,op71,op72,op73,op74,op75,op76,op77,op78,op79,op80,op81,op82,op83,op84,op85,op86,op87,op88,op89,op90,op91,op92,op93,op94,op95,op96,op97,op98,op99,op100,op101,op102,op103,op104,op105,op106,op107,op108,op109,op110,op111,op112,op113,op114,op115,op116,op117,op118,op119,op120,op121,op122,op123,op124,op125,op126,op127]
def chunks : List Bytes := [bytes64,bytes65,bytes66,bytes67,bytes68,bytes69,bytes70,bytes71,bytes72,bytes73,bytes74,bytes75,bytes76,bytes77,bytes78,bytes79,bytes80,bytes81,bytes82,bytes83,bytes84,bytes85,bytes86,bytes87,bytes88,bytes89,bytes90,bytes91,bytes92,bytes93,bytes94,bytes95,bytes96,bytes97,bytes98,bytes99,bytes100,bytes101,bytes102,bytes103,bytes104,bytes105,bytes106,bytes107,bytes108,bytes109,bytes110,bytes111,bytes112,bytes113,bytes114,bytes115,bytes116,bytes117,bytes118,bytes119,bytes120,bytes121,bytes122,bytes123,bytes124,bytes125,bytes126,bytes127]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 65 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked64.1 (.cons _ _ _ _ _ checked65.1 (.cons _ _ _ _ _ checked66.1 (.cons _ _ _ _ _ checked67.1 (.cons _ _ _ _ _ checked68.1 (.cons _ _ _ _ _ checked69.1 (.cons _ _ _ _ _ checked70.1 (.cons _ _ _ _ _ checked71.1 (.cons _ _ _ _ _ checked72.1 (.cons _ _ _ _ _ checked73.1 (.cons _ _ _ _ _ checked74.1 (.cons _ _ _ _ _ checked75.1 (.cons _ _ _ _ _ checked76.1 (.cons _ _ _ _ _ checked77.1 (.cons _ _ _ _ _ checked78.1 (.cons _ _ _ _ _ checked79.1 (.cons _ _ _ _ _ checked80.1 (.cons _ _ _ _ _ checked81.1 (.cons _ _ _ _ _ checked82.1 (.cons _ _ _ _ _ checked83.1 (.cons _ _ _ _ _ checked84.1 (.cons _ _ _ _ _ checked85.1 (.cons _ _ _ _ _ checked86.1 (.cons _ _ _ _ _ checked87.1 (.cons _ _ _ _ _ checked88.1 (.cons _ _ _ _ _ checked89.1 (.cons _ _ _ _ _ checked90.1 (.cons _ _ _ _ _ checked91.1 (.cons _ _ _ _ _ checked92.1 (.cons _ _ _ _ _ checked93.1 (.cons _ _ _ _ _ checked94.1 (.cons _ _ _ _ _ checked95.1 (.cons _ _ _ _ _ checked96.1 (.cons _ _ _ _ _ checked97.1 (.cons _ _ _ _ _ checked98.1 (.cons _ _ _ _ _ checked99.1 (.cons _ _ _ _ _ checked100.1 (.cons _ _ _ _ _ checked101.1 (.cons _ _ _ _ _ checked102.1 (.cons _ _ _ _ _ checked103.1 (.cons _ _ _ _ _ checked104.1 (.cons _ _ _ _ _ checked105.1 (.cons _ _ _ _ _ checked106.1 (.cons _ _ _ _ _ checked107.1 (.cons _ _ _ _ _ checked108.1 (.cons _ _ _ _ _ checked109.1 (.cons _ _ _ _ _ checked110.1 (.cons _ _ _ _ _ checked111.1 (.cons _ _ _ _ _ checked112.1 (.cons _ _ _ _ _ checked113.1 (.cons _ _ _ _ _ checked114.1 (.cons _ _ _ _ _ checked115.1 (.cons _ _ _ _ _ checked116.1 (.cons _ _ _ _ _ checked117.1 (.cons _ _ _ _ _ checked118.1 (.cons _ _ _ _ _ checked119.1 (.cons _ _ _ _ _ checked120.1 (.cons _ _ _ _ _ checked121.1 (.cons _ _ _ _ _ checked122.1 (.cons _ _ _ _ _ checked123.1 (.cons _ _ _ _ _ checked124.1 (.cons _ _ _ _ _ checked125.1 (.cons _ _ _ _ _ checked126.1 (.cons _ _ _ _ _ checked127.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 65 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2917 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked64.2,checked65.2,checked66.2,checked67.2,checked68.2,checked69.2,checked70.2,checked71.2,checked72.2,checked73.2,checked74.2,checked75.2,checked76.2,checked77.2,checked78.2,checked79.2,checked80.2,checked81.2,checked82.2,checked83.2,checked84.2,checked85.2,checked86.2,checked87.2,checked88.2,checked89.2,checked90.2,checked91.2,checked92.2,checked93.2,checked94.2,checked95.2,checked96.2,checked97.2,checked98.2,checked99.2,checked100.2,checked101.2,checked102.2,checked103.2,checked104.2,checked105.2,checked106.2,checked107.2,checked108.2,checked109.2,checked110.2,checked111.2,checked112.2,checked113.2,checked114.2,checked115.2,checked116.2,checked117.2,checked118.2,checked119.2,checked120.2,checked121.2,checked122.2,checked123.2,checked124.2,checked125.2,checked126.2,checked127.2]
  decide
end ArtifactUtf8Group1
