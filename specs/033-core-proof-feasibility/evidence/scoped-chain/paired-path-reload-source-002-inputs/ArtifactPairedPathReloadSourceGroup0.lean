import ActualPairedPathReloadIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
namespace ArtifactPairedPathReloadSourceGroup0
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes0 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000006c: u32 = 0x00000001_u32;\n" : String)
theorem checked0 : bytes0=statementBytes 108 (op0.map lower) ∧ bytes0.length=41 := by core033_kernel_decide
def op1 : List WordIR.Op := [.literal (BitVec.ofNat 32 7)]
def bytes1 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000006d: u32 = 0x00000007_u32;\n" : String)
theorem checked1 : bytes1=statementBytes 109 (op1.map lower) ∧ bytes1.length=41 := by core033_kernel_decide
def op2 : List WordIR.Op := [.bxor 0 109]
def bytes2 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000006e: u32 = r00000000 ^ r0000006d;\n" : String)
theorem checked2 : bytes2=statementBytes 110 (op2.map lower) ∧ bytes2.length=48 := by core033_kernel_decide
def op3 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000006f: u32 = 0x00000000_u32;\n" : String)
theorem checked3 : bytes3=statementBytes 111 (op3.map lower) ∧ bytes3.length=41 := by core033_kernel_decide
def op4 : List WordIR.Op := [.bnot 111]
def bytes4 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000070: u32 = !r0000006f;\n" : String)
theorem checked4 : bytes4=statementBytes 112 (op4.map lower) ∧ bytes4.length=37 := by core033_kernel_decide
def op5 : List WordIR.Op := [.band 110 112]
def bytes5 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000071: u32 = r0000006e & r00000070;\n" : String)
theorem checked5 : bytes5=statementBytes 113 (op5.map lower) ∧ bytes5.length=48 := by core033_kernel_decide
def op6 : List WordIR.Op := [.literal (BitVec.ofNat 32 7)]
def bytes6 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000072: u32 = 0x00000007_u32;\n" : String)
theorem checked6 : bytes6=statementBytes 114 (op6.map lower) ∧ bytes6.length=41 := by core033_kernel_decide
def op7 : List WordIR.Op := [.bxor 0 114]
def bytes7 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000073: u32 = r00000000 ^ r00000072;\n" : String)
theorem checked7 : bytes7=statementBytes 115 (op7.map lower) ∧ bytes7.length=48 := by core033_kernel_decide
def op8 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000074: u32 = 0x00000000_u32;\n" : String)
theorem checked8 : bytes8=statementBytes 116 (op8.map lower) ∧ bytes8.length=41 := by core033_kernel_decide
def op9 : List WordIR.Op := [.bnot 116]
def bytes9 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000075: u32 = !r00000074;\n" : String)
theorem checked9 : bytes9=statementBytes 117 (op9.map lower) ∧ bytes9.length=37 := by core033_kernel_decide
def op10 : List WordIR.Op := [.bxor 115 117]
def bytes10 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000076: u32 = r00000073 ^ r00000075;\n" : String)
theorem checked10 : bytes10=statementBytes 118 (op10.map lower) ∧ bytes10.length=48 := by core033_kernel_decide
def op11 : List WordIR.Op := [.literal (BitVec.ofNat 32 7)]
def bytes11 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000077: u32 = 0x00000007_u32;\n" : String)
theorem checked11 : bytes11=statementBytes 119 (op11.map lower) ∧ bytes11.length=41 := by core033_kernel_decide
def op12 : List WordIR.Op := [.bxor 0 119]
def bytes12 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000078: u32 = r00000000 ^ r00000077;\n" : String)
theorem checked12 : bytes12=statementBytes 120 (op12.map lower) ∧ bytes12.length=48 := by core033_kernel_decide
def op13 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000079: u32 = 0x00000000_u32;\n" : String)
theorem checked13 : bytes13=statementBytes 121 (op13.map lower) ∧ bytes13.length=41 := by core033_kernel_decide
def op14 : List WordIR.Op := [.bnot 121]
def bytes14 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000007a: u32 = !r00000079;\n" : String)
theorem checked14 : bytes14=statementBytes 122 (op14.map lower) ∧ bytes14.length=37 := by core033_kernel_decide
def op15 : List WordIR.Op := [.badd 120 122]
def bytes15 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000007b: u32 = r00000078.wrapping_add(r0000007a);\n" : String)
theorem checked15 : bytes15=statementBytes 123 (op15.map lower) ∧ bytes15.length=60 := by core033_kernel_decide
def op16 : List WordIR.Op := [.bnot 123]
def bytes16 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000007c: u32 = !r0000007b;\n" : String)
theorem checked16 : bytes16=statementBytes 124 (op16.map lower) ∧ bytes16.length=37 := by core033_kernel_decide
def op17 : List WordIR.Op := [.band 118 124]
def bytes17 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000007d: u32 = r00000076 & r0000007c;\n" : String)
theorem checked17 : bytes17=statementBytes 125 (op17.map lower) ∧ bytes17.length=48 := by core033_kernel_decide
def op18 : List WordIR.Op := [.bxor 113 125]
def bytes18 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000007e: u32 = r00000071 ^ r0000007d;\n" : String)
theorem checked18 : bytes18=statementBytes 126 (op18.map lower) ∧ bytes18.length=48 := by core033_kernel_decide
def op19 : List WordIR.Op := [.shr 126 31]
def bytes19 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000007f: u32 = r0000007e >> 0x0000001f_u32;\n" : String)
theorem checked19 : bytes19=statementBytes 127 (op19.map lower) ∧ bytes19.length=54 := by core033_kernel_decide
def op20 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes20 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000080: u32 = 0x00000001_u32;\n" : String)
theorem checked20 : bytes20=statementBytes 128 (op20.map lower) ∧ bytes20.length=41 := by core033_kernel_decide
def op21 : List WordIR.Op := [.bxor 127 128]
def bytes21 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000081: u32 = r0000007f ^ r00000080;\n" : String)
theorem checked21 : bytes21=statementBytes 129 (op21.map lower) ∧ bytes21.length=48 := by core033_kernel_decide
def op22 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes22 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000082: u32 = 0x00000000_u32;\n" : String)
theorem checked22 : bytes22=statementBytes 130 (op22.map lower) ∧ bytes22.length=41 := by core033_kernel_decide
def op23 : List WordIR.Op := [.bnot 130]
def bytes23 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000083: u32 = !r00000082;\n" : String)
theorem checked23 : bytes23=statementBytes 131 (op23.map lower) ∧ bytes23.length=37 := by core033_kernel_decide
def op24 : List WordIR.Op := [.band 2 131]
def bytes24 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000084: u32 = r00000002 & r00000083;\n" : String)
theorem checked24 : bytes24=statementBytes 132 (op24.map lower) ∧ bytes24.length=48 := by core033_kernel_decide
def op25 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes25 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000085: u32 = 0x00000000_u32;\n" : String)
theorem checked25 : bytes25=statementBytes 133 (op25.map lower) ∧ bytes25.length=41 := by core033_kernel_decide
def op26 : List WordIR.Op := [.bnot 133]
def bytes26 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000086: u32 = !r00000085;\n" : String)
theorem checked26 : bytes26=statementBytes 134 (op26.map lower) ∧ bytes26.length=37 := by core033_kernel_decide
def op27 : List WordIR.Op := [.bxor 2 134]
def bytes27 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000087: u32 = r00000002 ^ r00000086;\n" : String)
theorem checked27 : bytes27=statementBytes 135 (op27.map lower) ∧ bytes27.length=48 := by core033_kernel_decide
def op28 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes28 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000088: u32 = 0x00000000_u32;\n" : String)
theorem checked28 : bytes28=statementBytes 136 (op28.map lower) ∧ bytes28.length=41 := by core033_kernel_decide
def op29 : List WordIR.Op := [.bnot 136]
def bytes29 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000089: u32 = !r00000088;\n" : String)
theorem checked29 : bytes29=statementBytes 137 (op29.map lower) ∧ bytes29.length=37 := by core033_kernel_decide
def op30 : List WordIR.Op := [.badd 2 137]
def bytes30 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000008a: u32 = r00000002.wrapping_add(r00000089);\n" : String)
theorem checked30 : bytes30=statementBytes 138 (op30.map lower) ∧ bytes30.length=60 := by core033_kernel_decide
def op31 : List WordIR.Op := [.bnot 138]
def bytes31 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000008b: u32 = !r0000008a;\n" : String)
theorem checked31 : bytes31=statementBytes 139 (op31.map lower) ∧ bytes31.length=37 := by core033_kernel_decide
def op32 : List WordIR.Op := [.band 135 139]
def bytes32 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000008c: u32 = r00000087 & r0000008b;\n" : String)
theorem checked32 : bytes32=statementBytes 140 (op32.map lower) ∧ bytes32.length=48 := by core033_kernel_decide
def op33 : List WordIR.Op := [.bxor 132 140]
def bytes33 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000008d: u32 = r00000084 ^ r0000008c;\n" : String)
theorem checked33 : bytes33=statementBytes 141 (op33.map lower) ∧ bytes33.length=48 := by core033_kernel_decide
def op34 : List WordIR.Op := [.shr 141 31]
def bytes34 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000008e: u32 = r0000008d >> 0x0000001f_u32;\n" : String)
theorem checked34 : bytes34=statementBytes 142 (op34.map lower) ∧ bytes34.length=54 := by core033_kernel_decide
def op35 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes35 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000008f: u32 = 0x00000100_u32;\n" : String)
theorem checked35 : bytes35=statementBytes 143 (op35.map lower) ∧ bytes35.length=41 := by core033_kernel_decide
def op36 : List WordIR.Op := [.bnot 2]
def bytes36 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000090: u32 = !r00000002;\n" : String)
theorem checked36 : bytes36=statementBytes 144 (op36.map lower) ∧ bytes36.length=37 := by core033_kernel_decide
def op37 : List WordIR.Op := [.band 143 144]
def bytes37 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000091: u32 = r0000008f & r00000090;\n" : String)
theorem checked37 : bytes37=statementBytes 145 (op37.map lower) ∧ bytes37.length=48 := by core033_kernel_decide
def op38 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes38 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000092: u32 = 0x00000100_u32;\n" : String)
theorem checked38 : bytes38=statementBytes 146 (op38.map lower) ∧ bytes38.length=41 := by core033_kernel_decide
def op39 : List WordIR.Op := [.bnot 2]
def bytes39 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000093: u32 = !r00000002;\n" : String)
theorem checked39 : bytes39=statementBytes 147 (op39.map lower) ∧ bytes39.length=37 := by core033_kernel_decide
def op40 : List WordIR.Op := [.bxor 146 147]
def bytes40 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000094: u32 = r00000092 ^ r00000093;\n" : String)
theorem checked40 : bytes40=statementBytes 148 (op40.map lower) ∧ bytes40.length=48 := by core033_kernel_decide
def op41 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes41 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000095: u32 = 0x00000100_u32;\n" : String)
theorem checked41 : bytes41=statementBytes 149 (op41.map lower) ∧ bytes41.length=41 := by core033_kernel_decide
def op42 : List WordIR.Op := [.bnot 2]
def bytes42 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000096: u32 = !r00000002;\n" : String)
theorem checked42 : bytes42=statementBytes 150 (op42.map lower) ∧ bytes42.length=37 := by core033_kernel_decide
def op43 : List WordIR.Op := [.badd 149 150]
def bytes43 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000097: u32 = r00000095.wrapping_add(r00000096);\n" : String)
theorem checked43 : bytes43=statementBytes 151 (op43.map lower) ∧ bytes43.length=60 := by core033_kernel_decide
def op44 : List WordIR.Op := [.bnot 151]
def bytes44 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000098: u32 = !r00000097;\n" : String)
theorem checked44 : bytes44=statementBytes 152 (op44.map lower) ∧ bytes44.length=37 := by core033_kernel_decide
def op45 : List WordIR.Op := [.band 148 152]
def bytes45 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000099: u32 = r00000094 & r00000098;\n" : String)
theorem checked45 : bytes45=statementBytes 153 (op45.map lower) ∧ bytes45.length=48 := by core033_kernel_decide
def op46 : List WordIR.Op := [.bxor 145 153]
def bytes46 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000009a: u32 = r00000091 ^ r00000099;\n" : String)
theorem checked46 : bytes46=statementBytes 154 (op46.map lower) ∧ bytes46.length=48 := by core033_kernel_decide
def op47 : List WordIR.Op := [.shr 154 31]
def bytes47 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000009b: u32 = r0000009a >> 0x0000001f_u32;\n" : String)
theorem checked47 : bytes47=statementBytes 155 (op47.map lower) ∧ bytes47.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28,op29,op30,op31,op32,op33,op34,op35,op36,op37,op38,op39,op40,op41,op42,op43,op44,op45,op46,op47]
def chunks : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17,bytes18,bytes19,bytes20,bytes21,bytes22,bytes23,bytes24,bytes25,bytes26,bytes27,bytes28,bytes29,bytes30,bytes31,bytes32,bytes33,bytes34,bytes35,bytes36,bytes37,bytes38,bytes39,bytes40,bytes41,bytes42,bytes43,bytes44,bytes45,bytes46,bytes47]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 108 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.cons _ _ _ _ _ checked18.1 (.cons _ _ _ _ _ checked19.1 (.cons _ _ _ _ _ checked20.1 (.cons _ _ _ _ _ checked21.1 (.cons _ _ _ _ _ checked22.1 (.cons _ _ _ _ _ checked23.1 (.cons _ _ _ _ _ checked24.1 (.cons _ _ _ _ _ checked25.1 (.cons _ _ _ _ _ checked26.1 (.cons _ _ _ _ _ checked27.1 (.cons _ _ _ _ _ checked28.1 (.cons _ _ _ _ _ checked29.1 (.cons _ _ _ _ _ checked30.1 (.cons _ _ _ _ _ checked31.1 (.cons _ _ _ _ _ checked32.1 (.cons _ _ _ _ _ checked33.1 (.cons _ _ _ _ _ checked34.1 (.cons _ _ _ _ _ checked35.1 (.cons _ _ _ _ _ checked36.1 (.cons _ _ _ _ _ checked37.1 (.cons _ _ _ _ _ checked38.1 (.cons _ _ _ _ _ checked39.1 (.cons _ _ _ _ _ checked40.1 (.cons _ _ _ _ _ checked41.1 (.cons _ _ _ _ _ checked42.1 (.cons _ _ _ _ _ checked43.1 (.cons _ _ _ _ _ checked44.1 (.cons _ _ _ _ _ checked45.1 (.cons _ _ _ _ _ checked46.1 (.cons _ _ _ _ _ checked47.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 108 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=48 := rfl
theorem partSize : partBytes.length=2128 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2,checked18.2,checked19.2,checked20.2,checked21.2,checked22.2,checked23.2,checked24.2,checked25.2,checked26.2,checked27.2,checked28.2,checked29.2,checked30.2,checked31.2,checked32.2,checked33.2,checked34.2,checked35.2,checked36.2,checked37.2,checked38.2,checked39.2,checked40.2,checked41.2,checked42.2,checked43.2,checked44.2,checked45.2,checked46.2,checked47.2]
  decide
end ArtifactPairedPathReloadSourceGroup0
