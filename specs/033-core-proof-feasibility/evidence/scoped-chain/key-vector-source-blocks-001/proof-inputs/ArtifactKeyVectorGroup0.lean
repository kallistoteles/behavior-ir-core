import ActualKeyVectorIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactKeyVectorGroup0
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.bxor 0 48]
def bytes0 : Bytes := ("    let r00000060: u32 = r00000000 ^ r00000030;\n" : String).toByteArray.data.toList
theorem checked0 : bytes0=statementBytes 96 (op0.map lower) ∧ bytes0.length=48 := by core033_kernel_decide
def op1 : List WordIR.Op := [.bnot 96]
def bytes1 : Bytes := ("    let r00000061: u32 = !r00000060;\n" : String).toByteArray.data.toList
theorem checked1 : bytes1=statementBytes 97 (op1.map lower) ∧ bytes1.length=37 := by core033_kernel_decide
def op2 : List WordIR.Op := [.bxor 1 49]
def bytes2 : Bytes := ("    let r00000062: u32 = r00000001 ^ r00000031;\n" : String).toByteArray.data.toList
theorem checked2 : bytes2=statementBytes 98 (op2.map lower) ∧ bytes2.length=48 := by core033_kernel_decide
def op3 : List WordIR.Op := [.bnot 98]
def bytes3 : Bytes := ("    let r00000063: u32 = !r00000062;\n" : String).toByteArray.data.toList
theorem checked3 : bytes3=statementBytes 99 (op3.map lower) ∧ bytes3.length=37 := by core033_kernel_decide
def op4 : List WordIR.Op := [.bxor 2 50]
def bytes4 : Bytes := ("    let r00000064: u32 = r00000002 ^ r00000032;\n" : String).toByteArray.data.toList
theorem checked4 : bytes4=statementBytes 100 (op4.map lower) ∧ bytes4.length=48 := by core033_kernel_decide
def op5 : List WordIR.Op := [.bnot 100]
def bytes5 : Bytes := ("    let r00000065: u32 = !r00000064;\n" : String).toByteArray.data.toList
theorem checked5 : bytes5=statementBytes 101 (op5.map lower) ∧ bytes5.length=37 := by core033_kernel_decide
def op6 : List WordIR.Op := [.bxor 3 51]
def bytes6 : Bytes := ("    let r00000066: u32 = r00000003 ^ r00000033;\n" : String).toByteArray.data.toList
theorem checked6 : bytes6=statementBytes 102 (op6.map lower) ∧ bytes6.length=48 := by core033_kernel_decide
def op7 : List WordIR.Op := [.bnot 102]
def bytes7 : Bytes := ("    let r00000067: u32 = !r00000066;\n" : String).toByteArray.data.toList
theorem checked7 : bytes7=statementBytes 103 (op7.map lower) ∧ bytes7.length=37 := by core033_kernel_decide
def op8 : List WordIR.Op := [.bxor 4 52]
def bytes8 : Bytes := ("    let r00000068: u32 = r00000004 ^ r00000034;\n" : String).toByteArray.data.toList
theorem checked8 : bytes8=statementBytes 104 (op8.map lower) ∧ bytes8.length=48 := by core033_kernel_decide
def op9 : List WordIR.Op := [.bnot 104]
def bytes9 : Bytes := ("    let r00000069: u32 = !r00000068;\n" : String).toByteArray.data.toList
theorem checked9 : bytes9=statementBytes 105 (op9.map lower) ∧ bytes9.length=37 := by core033_kernel_decide
def op10 : List WordIR.Op := [.bxor 5 53]
def bytes10 : Bytes := ("    let r0000006a: u32 = r00000005 ^ r00000035;\n" : String).toByteArray.data.toList
theorem checked10 : bytes10=statementBytes 106 (op10.map lower) ∧ bytes10.length=48 := by core033_kernel_decide
def op11 : List WordIR.Op := [.bnot 106]
def bytes11 : Bytes := ("    let r0000006b: u32 = !r0000006a;\n" : String).toByteArray.data.toList
theorem checked11 : bytes11=statementBytes 107 (op11.map lower) ∧ bytes11.length=37 := by core033_kernel_decide
def op12 : List WordIR.Op := [.bxor 6 54]
def bytes12 : Bytes := ("    let r0000006c: u32 = r00000006 ^ r00000036;\n" : String).toByteArray.data.toList
theorem checked12 : bytes12=statementBytes 108 (op12.map lower) ∧ bytes12.length=48 := by core033_kernel_decide
def op13 : List WordIR.Op := [.bnot 108]
def bytes13 : Bytes := ("    let r0000006d: u32 = !r0000006c;\n" : String).toByteArray.data.toList
theorem checked13 : bytes13=statementBytes 109 (op13.map lower) ∧ bytes13.length=37 := by core033_kernel_decide
def op14 : List WordIR.Op := [.bxor 7 55]
def bytes14 : Bytes := ("    let r0000006e: u32 = r00000007 ^ r00000037;\n" : String).toByteArray.data.toList
theorem checked14 : bytes14=statementBytes 110 (op14.map lower) ∧ bytes14.length=48 := by core033_kernel_decide
def op15 : List WordIR.Op := [.bnot 110]
def bytes15 : Bytes := ("    let r0000006f: u32 = !r0000006e;\n" : String).toByteArray.data.toList
theorem checked15 : bytes15=statementBytes 111 (op15.map lower) ∧ bytes15.length=37 := by core033_kernel_decide
def op16 : List WordIR.Op := [.bxor 8 56]
def bytes16 : Bytes := ("    let r00000070: u32 = r00000008 ^ r00000038;\n" : String).toByteArray.data.toList
theorem checked16 : bytes16=statementBytes 112 (op16.map lower) ∧ bytes16.length=48 := by core033_kernel_decide
def op17 : List WordIR.Op := [.bnot 112]
def bytes17 : Bytes := ("    let r00000071: u32 = !r00000070;\n" : String).toByteArray.data.toList
theorem checked17 : bytes17=statementBytes 113 (op17.map lower) ∧ bytes17.length=37 := by core033_kernel_decide
def op18 : List WordIR.Op := [.bxor 9 57]
def bytes18 : Bytes := ("    let r00000072: u32 = r00000009 ^ r00000039;\n" : String).toByteArray.data.toList
theorem checked18 : bytes18=statementBytes 114 (op18.map lower) ∧ bytes18.length=48 := by core033_kernel_decide
def op19 : List WordIR.Op := [.bnot 114]
def bytes19 : Bytes := ("    let r00000073: u32 = !r00000072;\n" : String).toByteArray.data.toList
theorem checked19 : bytes19=statementBytes 115 (op19.map lower) ∧ bytes19.length=37 := by core033_kernel_decide
def op20 : List WordIR.Op := [.bxor 10 58]
def bytes20 : Bytes := ("    let r00000074: u32 = r0000000a ^ r0000003a;\n" : String).toByteArray.data.toList
theorem checked20 : bytes20=statementBytes 116 (op20.map lower) ∧ bytes20.length=48 := by core033_kernel_decide
def op21 : List WordIR.Op := [.bnot 116]
def bytes21 : Bytes := ("    let r00000075: u32 = !r00000074;\n" : String).toByteArray.data.toList
theorem checked21 : bytes21=statementBytes 117 (op21.map lower) ∧ bytes21.length=37 := by core033_kernel_decide
def op22 : List WordIR.Op := [.bxor 11 59]
def bytes22 : Bytes := ("    let r00000076: u32 = r0000000b ^ r0000003b;\n" : String).toByteArray.data.toList
theorem checked22 : bytes22=statementBytes 118 (op22.map lower) ∧ bytes22.length=48 := by core033_kernel_decide
def op23 : List WordIR.Op := [.bnot 118]
def bytes23 : Bytes := ("    let r00000077: u32 = !r00000076;\n" : String).toByteArray.data.toList
theorem checked23 : bytes23=statementBytes 119 (op23.map lower) ∧ bytes23.length=37 := by core033_kernel_decide
def op24 : List WordIR.Op := [.bxor 12 60]
def bytes24 : Bytes := ("    let r00000078: u32 = r0000000c ^ r0000003c;\n" : String).toByteArray.data.toList
theorem checked24 : bytes24=statementBytes 120 (op24.map lower) ∧ bytes24.length=48 := by core033_kernel_decide
def op25 : List WordIR.Op := [.bnot 120]
def bytes25 : Bytes := ("    let r00000079: u32 = !r00000078;\n" : String).toByteArray.data.toList
theorem checked25 : bytes25=statementBytes 121 (op25.map lower) ∧ bytes25.length=37 := by core033_kernel_decide
def op26 : List WordIR.Op := [.bxor 13 61]
def bytes26 : Bytes := ("    let r0000007a: u32 = r0000000d ^ r0000003d;\n" : String).toByteArray.data.toList
theorem checked26 : bytes26=statementBytes 122 (op26.map lower) ∧ bytes26.length=48 := by core033_kernel_decide
def op27 : List WordIR.Op := [.bnot 122]
def bytes27 : Bytes := ("    let r0000007b: u32 = !r0000007a;\n" : String).toByteArray.data.toList
theorem checked27 : bytes27=statementBytes 123 (op27.map lower) ∧ bytes27.length=37 := by core033_kernel_decide
def op28 : List WordIR.Op := [.bxor 14 62]
def bytes28 : Bytes := ("    let r0000007c: u32 = r0000000e ^ r0000003e;\n" : String).toByteArray.data.toList
theorem checked28 : bytes28=statementBytes 124 (op28.map lower) ∧ bytes28.length=48 := by core033_kernel_decide
def op29 : List WordIR.Op := [.bnot 124]
def bytes29 : Bytes := ("    let r0000007d: u32 = !r0000007c;\n" : String).toByteArray.data.toList
theorem checked29 : bytes29=statementBytes 125 (op29.map lower) ∧ bytes29.length=37 := by core033_kernel_decide
def op30 : List WordIR.Op := [.bxor 15 63]
def bytes30 : Bytes := ("    let r0000007e: u32 = r0000000f ^ r0000003f;\n" : String).toByteArray.data.toList
theorem checked30 : bytes30=statementBytes 126 (op30.map lower) ∧ bytes30.length=48 := by core033_kernel_decide
def op31 : List WordIR.Op := [.bnot 126]
def bytes31 : Bytes := ("    let r0000007f: u32 = !r0000007e;\n" : String).toByteArray.data.toList
theorem checked31 : bytes31=statementBytes 127 (op31.map lower) ∧ bytes31.length=37 := by core033_kernel_decide
def op32 : List WordIR.Op := [.bxor 16 64]
def bytes32 : Bytes := ("    let r00000080: u32 = r00000010 ^ r00000040;\n" : String).toByteArray.data.toList
theorem checked32 : bytes32=statementBytes 128 (op32.map lower) ∧ bytes32.length=48 := by core033_kernel_decide
def op33 : List WordIR.Op := [.bnot 128]
def bytes33 : Bytes := ("    let r00000081: u32 = !r00000080;\n" : String).toByteArray.data.toList
theorem checked33 : bytes33=statementBytes 129 (op33.map lower) ∧ bytes33.length=37 := by core033_kernel_decide
def op34 : List WordIR.Op := [.bxor 17 65]
def bytes34 : Bytes := ("    let r00000082: u32 = r00000011 ^ r00000041;\n" : String).toByteArray.data.toList
theorem checked34 : bytes34=statementBytes 130 (op34.map lower) ∧ bytes34.length=48 := by core033_kernel_decide
def op35 : List WordIR.Op := [.bnot 130]
def bytes35 : Bytes := ("    let r00000083: u32 = !r00000082;\n" : String).toByteArray.data.toList
theorem checked35 : bytes35=statementBytes 131 (op35.map lower) ∧ bytes35.length=37 := by core033_kernel_decide
def op36 : List WordIR.Op := [.bxor 18 66]
def bytes36 : Bytes := ("    let r00000084: u32 = r00000012 ^ r00000042;\n" : String).toByteArray.data.toList
theorem checked36 : bytes36=statementBytes 132 (op36.map lower) ∧ bytes36.length=48 := by core033_kernel_decide
def op37 : List WordIR.Op := [.bnot 132]
def bytes37 : Bytes := ("    let r00000085: u32 = !r00000084;\n" : String).toByteArray.data.toList
theorem checked37 : bytes37=statementBytes 133 (op37.map lower) ∧ bytes37.length=37 := by core033_kernel_decide
def op38 : List WordIR.Op := [.bxor 19 67]
def bytes38 : Bytes := ("    let r00000086: u32 = r00000013 ^ r00000043;\n" : String).toByteArray.data.toList
theorem checked38 : bytes38=statementBytes 134 (op38.map lower) ∧ bytes38.length=48 := by core033_kernel_decide
def op39 : List WordIR.Op := [.bnot 134]
def bytes39 : Bytes := ("    let r00000087: u32 = !r00000086;\n" : String).toByteArray.data.toList
theorem checked39 : bytes39=statementBytes 135 (op39.map lower) ∧ bytes39.length=37 := by core033_kernel_decide
def op40 : List WordIR.Op := [.bxor 20 68]
def bytes40 : Bytes := ("    let r00000088: u32 = r00000014 ^ r00000044;\n" : String).toByteArray.data.toList
theorem checked40 : bytes40=statementBytes 136 (op40.map lower) ∧ bytes40.length=48 := by core033_kernel_decide
def op41 : List WordIR.Op := [.bnot 136]
def bytes41 : Bytes := ("    let r00000089: u32 = !r00000088;\n" : String).toByteArray.data.toList
theorem checked41 : bytes41=statementBytes 137 (op41.map lower) ∧ bytes41.length=37 := by core033_kernel_decide
def op42 : List WordIR.Op := [.bxor 21 69]
def bytes42 : Bytes := ("    let r0000008a: u32 = r00000015 ^ r00000045;\n" : String).toByteArray.data.toList
theorem checked42 : bytes42=statementBytes 138 (op42.map lower) ∧ bytes42.length=48 := by core033_kernel_decide
def op43 : List WordIR.Op := [.bnot 138]
def bytes43 : Bytes := ("    let r0000008b: u32 = !r0000008a;\n" : String).toByteArray.data.toList
theorem checked43 : bytes43=statementBytes 139 (op43.map lower) ∧ bytes43.length=37 := by core033_kernel_decide
def op44 : List WordIR.Op := [.bxor 22 70]
def bytes44 : Bytes := ("    let r0000008c: u32 = r00000016 ^ r00000046;\n" : String).toByteArray.data.toList
theorem checked44 : bytes44=statementBytes 140 (op44.map lower) ∧ bytes44.length=48 := by core033_kernel_decide
def op45 : List WordIR.Op := [.bnot 140]
def bytes45 : Bytes := ("    let r0000008d: u32 = !r0000008c;\n" : String).toByteArray.data.toList
theorem checked45 : bytes45=statementBytes 141 (op45.map lower) ∧ bytes45.length=37 := by core033_kernel_decide
def op46 : List WordIR.Op := [.bxor 23 71]
def bytes46 : Bytes := ("    let r0000008e: u32 = r00000017 ^ r00000047;\n" : String).toByteArray.data.toList
theorem checked46 : bytes46=statementBytes 142 (op46.map lower) ∧ bytes46.length=48 := by core033_kernel_decide
def op47 : List WordIR.Op := [.bnot 142]
def bytes47 : Bytes := ("    let r0000008f: u32 = !r0000008e;\n" : String).toByteArray.data.toList
theorem checked47 : bytes47=statementBytes 143 (op47.map lower) ∧ bytes47.length=37 := by core033_kernel_decide
def op48 : List WordIR.Op := [.bxor 24 72]
def bytes48 : Bytes := ("    let r00000090: u32 = r00000018 ^ r00000048;\n" : String).toByteArray.data.toList
theorem checked48 : bytes48=statementBytes 144 (op48.map lower) ∧ bytes48.length=48 := by core033_kernel_decide
def op49 : List WordIR.Op := [.bnot 144]
def bytes49 : Bytes := ("    let r00000091: u32 = !r00000090;\n" : String).toByteArray.data.toList
theorem checked49 : bytes49=statementBytes 145 (op49.map lower) ∧ bytes49.length=37 := by core033_kernel_decide
def op50 : List WordIR.Op := [.bxor 25 73]
def bytes50 : Bytes := ("    let r00000092: u32 = r00000019 ^ r00000049;\n" : String).toByteArray.data.toList
theorem checked50 : bytes50=statementBytes 146 (op50.map lower) ∧ bytes50.length=48 := by core033_kernel_decide
def op51 : List WordIR.Op := [.bnot 146]
def bytes51 : Bytes := ("    let r00000093: u32 = !r00000092;\n" : String).toByteArray.data.toList
theorem checked51 : bytes51=statementBytes 147 (op51.map lower) ∧ bytes51.length=37 := by core033_kernel_decide
def op52 : List WordIR.Op := [.bxor 26 74]
def bytes52 : Bytes := ("    let r00000094: u32 = r0000001a ^ r0000004a;\n" : String).toByteArray.data.toList
theorem checked52 : bytes52=statementBytes 148 (op52.map lower) ∧ bytes52.length=48 := by core033_kernel_decide
def op53 : List WordIR.Op := [.bnot 148]
def bytes53 : Bytes := ("    let r00000095: u32 = !r00000094;\n" : String).toByteArray.data.toList
theorem checked53 : bytes53=statementBytes 149 (op53.map lower) ∧ bytes53.length=37 := by core033_kernel_decide
def op54 : List WordIR.Op := [.bxor 27 75]
def bytes54 : Bytes := ("    let r00000096: u32 = r0000001b ^ r0000004b;\n" : String).toByteArray.data.toList
theorem checked54 : bytes54=statementBytes 150 (op54.map lower) ∧ bytes54.length=48 := by core033_kernel_decide
def op55 : List WordIR.Op := [.bnot 150]
def bytes55 : Bytes := ("    let r00000097: u32 = !r00000096;\n" : String).toByteArray.data.toList
theorem checked55 : bytes55=statementBytes 151 (op55.map lower) ∧ bytes55.length=37 := by core033_kernel_decide
def op56 : List WordIR.Op := [.bxor 28 76]
def bytes56 : Bytes := ("    let r00000098: u32 = r0000001c ^ r0000004c;\n" : String).toByteArray.data.toList
theorem checked56 : bytes56=statementBytes 152 (op56.map lower) ∧ bytes56.length=48 := by core033_kernel_decide
def op57 : List WordIR.Op := [.bnot 152]
def bytes57 : Bytes := ("    let r00000099: u32 = !r00000098;\n" : String).toByteArray.data.toList
theorem checked57 : bytes57=statementBytes 153 (op57.map lower) ∧ bytes57.length=37 := by core033_kernel_decide
def op58 : List WordIR.Op := [.bxor 29 77]
def bytes58 : Bytes := ("    let r0000009a: u32 = r0000001d ^ r0000004d;\n" : String).toByteArray.data.toList
theorem checked58 : bytes58=statementBytes 154 (op58.map lower) ∧ bytes58.length=48 := by core033_kernel_decide
def op59 : List WordIR.Op := [.bnot 154]
def bytes59 : Bytes := ("    let r0000009b: u32 = !r0000009a;\n" : String).toByteArray.data.toList
theorem checked59 : bytes59=statementBytes 155 (op59.map lower) ∧ bytes59.length=37 := by core033_kernel_decide
def op60 : List WordIR.Op := [.bxor 30 78]
def bytes60 : Bytes := ("    let r0000009c: u32 = r0000001e ^ r0000004e;\n" : String).toByteArray.data.toList
theorem checked60 : bytes60=statementBytes 156 (op60.map lower) ∧ bytes60.length=48 := by core033_kernel_decide
def op61 : List WordIR.Op := [.bnot 156]
def bytes61 : Bytes := ("    let r0000009d: u32 = !r0000009c;\n" : String).toByteArray.data.toList
theorem checked61 : bytes61=statementBytes 157 (op61.map lower) ∧ bytes61.length=37 := by core033_kernel_decide
def op62 : List WordIR.Op := [.bxor 31 79]
def bytes62 : Bytes := ("    let r0000009e: u32 = r0000001f ^ r0000004f;\n" : String).toByteArray.data.toList
theorem checked62 : bytes62=statementBytes 158 (op62.map lower) ∧ bytes62.length=48 := by core033_kernel_decide
def op63 : List WordIR.Op := [.bnot 158]
def bytes63 : Bytes := ("    let r0000009f: u32 = !r0000009e;\n" : String).toByteArray.data.toList
theorem checked63 : bytes63=statementBytes 159 (op63.map lower) ∧ bytes63.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28,op29,op30,op31,op32,op33,op34,op35,op36,op37,op38,op39,op40,op41,op42,op43,op44,op45,op46,op47,op48,op49,op50,op51,op52,op53,op54,op55,op56,op57,op58,op59,op60,op61,op62,op63]
def chunks : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17,bytes18,bytes19,bytes20,bytes21,bytes22,bytes23,bytes24,bytes25,bytes26,bytes27,bytes28,bytes29,bytes30,bytes31,bytes32,bytes33,bytes34,bytes35,bytes36,bytes37,bytes38,bytes39,bytes40,bytes41,bytes42,bytes43,bytes44,bytes45,bytes46,bytes47,bytes48,bytes49,bytes50,bytes51,bytes52,bytes53,bytes54,bytes55,bytes56,bytes57,bytes58,bytes59,bytes60,bytes61,bytes62,bytes63]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 96 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.cons _ _ _ _ _ checked18.1 (.cons _ _ _ _ _ checked19.1 (.cons _ _ _ _ _ checked20.1 (.cons _ _ _ _ _ checked21.1 (.cons _ _ _ _ _ checked22.1 (.cons _ _ _ _ _ checked23.1 (.cons _ _ _ _ _ checked24.1 (.cons _ _ _ _ _ checked25.1 (.cons _ _ _ _ _ checked26.1 (.cons _ _ _ _ _ checked27.1 (.cons _ _ _ _ _ checked28.1 (.cons _ _ _ _ _ checked29.1 (.cons _ _ _ _ _ checked30.1 (.cons _ _ _ _ _ checked31.1 (.cons _ _ _ _ _ checked32.1 (.cons _ _ _ _ _ checked33.1 (.cons _ _ _ _ _ checked34.1 (.cons _ _ _ _ _ checked35.1 (.cons _ _ _ _ _ checked36.1 (.cons _ _ _ _ _ checked37.1 (.cons _ _ _ _ _ checked38.1 (.cons _ _ _ _ _ checked39.1 (.cons _ _ _ _ _ checked40.1 (.cons _ _ _ _ _ checked41.1 (.cons _ _ _ _ _ checked42.1 (.cons _ _ _ _ _ checked43.1 (.cons _ _ _ _ _ checked44.1 (.cons _ _ _ _ _ checked45.1 (.cons _ _ _ _ _ checked46.1 (.cons _ _ _ _ _ checked47.1 (.cons _ _ _ _ _ checked48.1 (.cons _ _ _ _ _ checked49.1 (.cons _ _ _ _ _ checked50.1 (.cons _ _ _ _ _ checked51.1 (.cons _ _ _ _ _ checked52.1 (.cons _ _ _ _ _ checked53.1 (.cons _ _ _ _ _ checked54.1 (.cons _ _ _ _ _ checked55.1 (.cons _ _ _ _ _ checked56.1 (.cons _ _ _ _ _ checked57.1 (.cons _ _ _ _ _ checked58.1 (.cons _ _ _ _ _ checked59.1 (.cons _ _ _ _ _ checked60.1 (.cons _ _ _ _ _ checked61.1 (.cons _ _ _ _ _ checked62.1 (.cons _ _ _ _ _ checked63.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 96 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2720 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2,checked18.2,checked19.2,checked20.2,checked21.2,checked22.2,checked23.2,checked24.2,checked25.2,checked26.2,checked27.2,checked28.2,checked29.2,checked30.2,checked31.2,checked32.2,checked33.2,checked34.2,checked35.2,checked36.2,checked37.2,checked38.2,checked39.2,checked40.2,checked41.2,checked42.2,checked43.2,checked44.2,checked45.2,checked46.2,checked47.2,checked48.2,checked49.2,checked50.2,checked51.2,checked52.2,checked53.2,checked54.2,checked55.2,checked56.2,checked57.2,checked58.2,checked59.2,checked60.2,checked61.2,checked62.2,checked63.2]
  decide
end ArtifactKeyVectorGroup0
