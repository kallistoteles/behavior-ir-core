import ActualIntegerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactIntegerGroup2
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op128 : List WordIR.Op := [.shr 6 8]
def bytes128 : Bytes := ("    let r00000088: u32 = r00000006 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked128 : bytes128=statementBytes 136 (op128.map lower) ∧ bytes128.length=54 := by core033_kernel_decide
def op129 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes129 : Bytes := ("    let r00000089: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked129 : bytes129=statementBytes 137 (op129.map lower) ∧ bytes129.length=41 := by core033_kernel_decide
def op130 : List WordIR.Op := [.bnot 137]
def bytes130 : Bytes := ("    let r0000008a: u32 = !r00000089;\n" : String).toByteArray.data.toList
theorem checked130 : bytes130=statementBytes 138 (op130.map lower) ∧ bytes130.length=37 := by core033_kernel_decide
def op131 : List WordIR.Op := [.badd 136 138]
def bytes131 : Bytes := ("    let r0000008b: u32 = r00000088.wrapping_add(r0000008a);\n" : String).toByteArray.data.toList
theorem checked131 : bytes131=statementBytes 139 (op131.map lower) ∧ bytes131.length=60 := by core033_kernel_decide
def op132 : List WordIR.Op := [.bnot 139]
def bytes132 : Bytes := ("    let r0000008c: u32 = !r0000008b;\n" : String).toByteArray.data.toList
theorem checked132 : bytes132=statementBytes 140 (op132.map lower) ∧ bytes132.length=37 := by core033_kernel_decide
def op133 : List WordIR.Op := [.band 135 140]
def bytes133 : Bytes := ("    let r0000008d: u32 = r00000087 & r0000008c;\n" : String).toByteArray.data.toList
theorem checked133 : bytes133=statementBytes 141 (op133.map lower) ∧ bytes133.length=48 := by core033_kernel_decide
def op134 : List WordIR.Op := [.bxor 131 141]
def bytes134 : Bytes := ("    let r0000008e: u32 = r00000083 ^ r0000008d;\n" : String).toByteArray.data.toList
theorem checked134 : bytes134=statementBytes 142 (op134.map lower) ∧ bytes134.length=48 := by core033_kernel_decide
def op135 : List WordIR.Op := [.shr 142 31]
def bytes135 : Bytes := ("    let r0000008f: u32 = r0000008e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked135 : bytes135=statementBytes 143 (op135.map lower) ∧ bytes135.length=54 := by core033_kernel_decide
def op136 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes136 : Bytes := ("    let r00000090: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked136 : bytes136=statementBytes 144 (op136.map lower) ∧ bytes136.length=41 := by core033_kernel_decide
def op137 : List WordIR.Op := [.bxor 143 144]
def bytes137 : Bytes := ("    let r00000091: u32 = r0000008f ^ r00000090;\n" : String).toByteArray.data.toList
theorem checked137 : bytes137=statementBytes 145 (op137.map lower) ∧ bytes137.length=48 := by core033_kernel_decide
def op138 : List WordIR.Op := [.shr 7 8]
def bytes138 : Bytes := ("    let r00000092: u32 = r00000007 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked138 : bytes138=statementBytes 146 (op138.map lower) ∧ bytes138.length=54 := by core033_kernel_decide
def op139 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes139 : Bytes := ("    let r00000093: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked139 : bytes139=statementBytes 147 (op139.map lower) ∧ bytes139.length=41 := by core033_kernel_decide
def op140 : List WordIR.Op := [.bnot 147]
def bytes140 : Bytes := ("    let r00000094: u32 = !r00000093;\n" : String).toByteArray.data.toList
theorem checked140 : bytes140=statementBytes 148 (op140.map lower) ∧ bytes140.length=37 := by core033_kernel_decide
def op141 : List WordIR.Op := [.band 146 148]
def bytes141 : Bytes := ("    let r00000095: u32 = r00000092 & r00000094;\n" : String).toByteArray.data.toList
theorem checked141 : bytes141=statementBytes 149 (op141.map lower) ∧ bytes141.length=48 := by core033_kernel_decide
def op142 : List WordIR.Op := [.shr 7 8]
def bytes142 : Bytes := ("    let r00000096: u32 = r00000007 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked142 : bytes142=statementBytes 150 (op142.map lower) ∧ bytes142.length=54 := by core033_kernel_decide
def op143 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes143 : Bytes := ("    let r00000097: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked143 : bytes143=statementBytes 151 (op143.map lower) ∧ bytes143.length=41 := by core033_kernel_decide
def op144 : List WordIR.Op := [.bnot 151]
def bytes144 : Bytes := ("    let r00000098: u32 = !r00000097;\n" : String).toByteArray.data.toList
theorem checked144 : bytes144=statementBytes 152 (op144.map lower) ∧ bytes144.length=37 := by core033_kernel_decide
def op145 : List WordIR.Op := [.bxor 150 152]
def bytes145 : Bytes := ("    let r00000099: u32 = r00000096 ^ r00000098;\n" : String).toByteArray.data.toList
theorem checked145 : bytes145=statementBytes 153 (op145.map lower) ∧ bytes145.length=48 := by core033_kernel_decide
def op146 : List WordIR.Op := [.shr 7 8]
def bytes146 : Bytes := ("    let r0000009a: u32 = r00000007 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked146 : bytes146=statementBytes 154 (op146.map lower) ∧ bytes146.length=54 := by core033_kernel_decide
def op147 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes147 : Bytes := ("    let r0000009b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked147 : bytes147=statementBytes 155 (op147.map lower) ∧ bytes147.length=41 := by core033_kernel_decide
def op148 : List WordIR.Op := [.bnot 155]
def bytes148 : Bytes := ("    let r0000009c: u32 = !r0000009b;\n" : String).toByteArray.data.toList
theorem checked148 : bytes148=statementBytes 156 (op148.map lower) ∧ bytes148.length=37 := by core033_kernel_decide
def op149 : List WordIR.Op := [.badd 154 156]
def bytes149 : Bytes := ("    let r0000009d: u32 = r0000009a.wrapping_add(r0000009c);\n" : String).toByteArray.data.toList
theorem checked149 : bytes149=statementBytes 157 (op149.map lower) ∧ bytes149.length=60 := by core033_kernel_decide
def op150 : List WordIR.Op := [.bnot 157]
def bytes150 : Bytes := ("    let r0000009e: u32 = !r0000009d;\n" : String).toByteArray.data.toList
theorem checked150 : bytes150=statementBytes 158 (op150.map lower) ∧ bytes150.length=37 := by core033_kernel_decide
def op151 : List WordIR.Op := [.band 153 158]
def bytes151 : Bytes := ("    let r0000009f: u32 = r00000099 & r0000009e;\n" : String).toByteArray.data.toList
theorem checked151 : bytes151=statementBytes 159 (op151.map lower) ∧ bytes151.length=48 := by core033_kernel_decide
def op152 : List WordIR.Op := [.bxor 149 159]
def bytes152 : Bytes := ("    let r000000a0: u32 = r00000095 ^ r0000009f;\n" : String).toByteArray.data.toList
theorem checked152 : bytes152=statementBytes 160 (op152.map lower) ∧ bytes152.length=48 := by core033_kernel_decide
def op153 : List WordIR.Op := [.shr 160 31]
def bytes153 : Bytes := ("    let r000000a1: u32 = r000000a0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked153 : bytes153=statementBytes 161 (op153.map lower) ∧ bytes153.length=54 := by core033_kernel_decide
def op154 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes154 : Bytes := ("    let r000000a2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked154 : bytes154=statementBytes 162 (op154.map lower) ∧ bytes154.length=41 := by core033_kernel_decide
def op155 : List WordIR.Op := [.bxor 161 162]
def bytes155 : Bytes := ("    let r000000a3: u32 = r000000a1 ^ r000000a2;\n" : String).toByteArray.data.toList
theorem checked155 : bytes155=statementBytes 163 (op155.map lower) ∧ bytes155.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op128,op129,op130,op131,op132,op133,op134,op135,op136,op137,op138,op139,op140,op141,op142,op143,op144,op145,op146,op147,op148,op149,op150,op151,op152,op153,op154,op155]
def chunks : List Bytes := [bytes128,bytes129,bytes130,bytes131,bytes132,bytes133,bytes134,bytes135,bytes136,bytes137,bytes138,bytes139,bytes140,bytes141,bytes142,bytes143,bytes144,bytes145,bytes146,bytes147,bytes148,bytes149,bytes150,bytes151,bytes152,bytes153,bytes154,bytes155]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 136 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.cons _ _ _ _ _ checked130.1 (.cons _ _ _ _ _ checked131.1 (.cons _ _ _ _ _ checked132.1 (.cons _ _ _ _ _ checked133.1 (.cons _ _ _ _ _ checked134.1 (.cons _ _ _ _ _ checked135.1 (.cons _ _ _ _ _ checked136.1 (.cons _ _ _ _ _ checked137.1 (.cons _ _ _ _ _ checked138.1 (.cons _ _ _ _ _ checked139.1 (.cons _ _ _ _ _ checked140.1 (.cons _ _ _ _ _ checked141.1 (.cons _ _ _ _ _ checked142.1 (.cons _ _ _ _ _ checked143.1 (.cons _ _ _ _ _ checked144.1 (.cons _ _ _ _ _ checked145.1 (.cons _ _ _ _ _ checked146.1 (.cons _ _ _ _ _ checked147.1 (.cons _ _ _ _ _ checked148.1 (.cons _ _ _ _ _ checked149.1 (.cons _ _ _ _ _ checked150.1 (.cons _ _ _ _ _ checked151.1 (.cons _ _ _ _ _ checked152.1 (.cons _ _ _ _ _ checked153.1 (.cons _ _ _ _ _ checked154.1 (.cons _ _ _ _ _ checked155.1 (.empty _)))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 136 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=28 := rfl
theorem partSize : partBytes.length=1296 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked128.2,checked129.2,checked130.2,checked131.2,checked132.2,checked133.2,checked134.2,checked135.2,checked136.2,checked137.2,checked138.2,checked139.2,checked140.2,checked141.2,checked142.2,checked143.2,checked144.2,checked145.2,checked146.2,checked147.2,checked148.2,checked149.2,checked150.2,checked151.2,checked152.2,checked153.2,checked154.2,checked155.2]
  decide
end ArtifactIntegerGroup2
