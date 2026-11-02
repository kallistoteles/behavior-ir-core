import Core033.BranchAdmission
import ArtifactBranchAdmissionHeader
import ArtifactBranchAdmissionGroup0
import ArtifactBranchAdmissionGroup1
import ArtifactBranchAdmissionGroup2
import ArtifactBranchAdmissionGroup3
import ArtifactBranchAdmissionGroup4
namespace ArtifactBranchAdmissionBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 26,.band 0 27,.literal (BitVec.ofNat 32 0),.bnot 29,.bxor 0 30,.literal (BitVec.ofNat 32 0),.bnot 32,.badd 0 33,.bnot 34,.band 31 35,.bxor 28 36,.shr 37 31,.literal (BitVec.ofNat 32 3),.bnot 0,.band 39 40,.literal (BitVec.ofNat 32 3),.bnot 0,.bxor 42 43,.literal (BitVec.ofNat 32 3),.bnot 0,.badd 45 46,.bnot 47,.band 44 48,.bxor 41 49,.shr 50 31,.band 38 51,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 54,.band 53 55,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 58,.bxor 57 59,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 62,.badd 61 63,.bnot 64,.band 60 65,.bxor 56 66,.shr 67 31,.literal (BitVec.ofNat 32 1),.bxor 68 69,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 72,.band 71 73,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 76,.bxor 75 77,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 80,.badd 79 81,.bnot 82,.band 78 83,.bxor 74 84,.shr 85 31,.literal (BitVec.ofNat 32 1),.bxor 86 87,.shr 25 1]
theorem partPartition0 : partOps0=ArtifactBranchAdmissionGroup0.partOps := rfl
theorem partChecked0 : ArtifactBranchAdmissionGroup0.partBytes=statementBytes 26 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactBranchAdmissionGroup0.partChecked
theorem partLength0 : partOps0.length=64 := rfl
def partOps1 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 90,.band 89 91,.shr 25 1,.literal (BitVec.ofNat 32 0),.bnot 94,.bxor 93 95,.shr 25 1,.literal (BitVec.ofNat 32 0),.bnot 98,.badd 97 99,.bnot 100,.band 96 101,.bxor 92 102,.shr 103 31,.literal (BitVec.ofNat 32 1),.bxor 104 105,.badd 18 20,.bxor 107 22,.literal (BitVec.ofNat 32 0),.bnot 109,.band 108 110,.badd 18 20,.bxor 112 22,.literal (BitVec.ofNat 32 0),.bnot 114,.bxor 113 115,.badd 18 20,.bxor 117 22,.literal (BitVec.ofNat 32 0),.bnot 119,.badd 118 120,.bnot 121,.band 116 122,.bxor 111 123,.shr 124 31,.literal (BitVec.ofNat 32 1),.bxor 125 126,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 131,.band 130 132,.bxor 129 133,.shr 134 31,.badd 128 135,.bxor 136 23,.literal (BitVec.ofNat 32 0),.bnot 138,.band 137 139,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 144,.band 143 145,.bxor 142 146,.shr 147 31,.badd 141 148,.bxor 149 23,.literal (BitVec.ofNat 32 0),.bnot 151,.bxor 150 152]
theorem partPartition1 : partOps1=ArtifactBranchAdmissionGroup1.partOps := rfl
theorem partChecked1 : ArtifactBranchAdmissionGroup1.partBytes=statementBytes 90 (partOps1.map lower) := by
  rw [partPartition1]
  exact ArtifactBranchAdmissionGroup1.partChecked
theorem partLength1 : partOps1.length=64 := rfl
def partOps2 : List WordIR.Op := [.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 157,.band 156 158,.bxor 155 159,.shr 160 31,.badd 154 161,.bxor 162 23,.literal (BitVec.ofNat 32 0),.bnot 164,.badd 163 165,.bnot 166,.band 153 167,.bxor 140 168,.shr 169 31,.literal (BitVec.ofNat 32 1),.bxor 170 171,.literal (BitVec.ofNat 32 0),.bnot 173,.band 19 174,.literal (BitVec.ofNat 32 0),.bnot 176,.bxor 19 177,.literal (BitVec.ofNat 32 0),.bnot 179,.badd 19 180,.bnot 181,.band 178 182,.bxor 175 183,.shr 184 31,.literal (BitVec.ofNat 32 1),.bxor 185 186,.literal (BitVec.ofNat 32 1048576),.bnot 188,.band 18 189,.literal (BitVec.ofNat 32 1048576),.bnot 191,.bxor 18 192,.literal (BitVec.ofNat 32 1048576),.bnot 194,.badd 18 195,.bnot 196,.band 193 197,.bxor 190 198,.shr 199 31,.literal (BitVec.ofNat 32 1),.bxor 200 201,.band 187 202,.literal (BitVec.ofNat 32 0),.bnot 204,.band 21 205,.literal (BitVec.ofNat 32 0),.bnot 207,.bxor 21 208,.literal (BitVec.ofNat 32 0),.bnot 210,.badd 21 211,.bnot 212,.band 209 213,.bxor 206 214,.shr 215 31,.literal (BitVec.ofNat 32 1)]
theorem partPartition2 : partOps2=ArtifactBranchAdmissionGroup2.partOps := rfl
theorem partChecked2 : ArtifactBranchAdmissionGroup2.partBytes=statementBytes 154 (partOps2.map lower) := by
  rw [partPartition2]
  exact ArtifactBranchAdmissionGroup2.partChecked
theorem partLength2 : partOps2.length=64 := rfl
def partOps3 : List WordIR.Op := [.bxor 216 217,.literal (BitVec.ofNat 32 1048576),.bnot 219,.band 20 220,.literal (BitVec.ofNat 32 1048576),.bnot 222,.bxor 20 223,.literal (BitVec.ofNat 32 1048576),.bnot 225,.badd 20 226,.bnot 227,.band 224 228,.bxor 221 229,.shr 230 31,.literal (BitVec.ofNat 32 1),.bxor 231 232,.band 218 233,.band 203 234,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 239,.band 238 240,.bxor 237 241,.shr 242 31,.badd 236 243,.literal (BitVec.ofNat 32 0),.bnot 245,.band 244 246,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 251,.band 250 252,.bxor 249 253,.shr 254 31,.badd 248 255,.literal (BitVec.ofNat 32 0),.bnot 257,.bxor 256 258,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 263,.band 262 264,.bxor 261 265,.shr 266 31,.badd 260 267,.literal (BitVec.ofNat 32 0),.bnot 269,.badd 268 270,.bnot 271,.band 259 272,.bxor 247 273,.shr 274 31,.literal (BitVec.ofNat 32 1),.bxor 275 276,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 279,.band 278 280]
theorem partPartition3 : partOps3=ArtifactBranchAdmissionGroup3.partOps := rfl
theorem partChecked3 : ArtifactBranchAdmissionGroup3.partBytes=statementBytes 218 (partOps3.map lower) := by
  rw [partPartition3]
  exact ArtifactBranchAdmissionGroup3.partChecked
theorem partLength3 : partOps3.length=64 := rfl
def partOps4 : List WordIR.Op := [.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 283,.bxor 282 284,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 287,.badd 286 288,.bnot 289,.band 285 290,.bxor 281 291,.shr 292 31,.literal (BitVec.ofNat 32 1),.bxor 293 294,.band 277 295,.band 235 296]
theorem partPartition4 : partOps4=ArtifactBranchAdmissionGroup4.partOps := rfl
theorem partChecked4 : ArtifactBranchAdmissionGroup4.partBytes=statementBytes 282 (partOps4.map lower) := by
  rw [partPartition4]
  exact ArtifactBranchAdmissionGroup4.partChecked
theorem partLength4 : partOps4.length=16 := rfl
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4]
def actualBody : List Bytes := [ArtifactBranchAdmissionGroup0.partBytes,ArtifactBranchAdmissionGroup1.partBytes,ArtifactBranchAdmissionGroup2.partBytes,ArtifactBranchAdmissionGroup3.partBytes,ArtifactBranchAdmissionGroup4.partBytes]
def actualHeader : Bytes := ArtifactBranchAdmissionHeader.actualHeader
def actualFooter : Bytes := ("    [r00000034, r00000046, r00000058, r0000006a, r0000007f, r000000ac, r00000129]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualBranchAdmissionIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 26 7 ∧ actualHeader.length=572 := ArtifactBranchAdmissionHeader.checked
theorem footer_checked : actualFooter=suffix ActualBranchAdmissionIR.program.outputs ∧ actualFooter.length=84 := by core033_kernel_decide
theorem body_checked : BlockChain 26 blocks actualBody := by
  unfold blocks actualBody
  apply BlockChain.cons _ _ _ _ _ partChecked0
  simp only [partLength0]
  apply BlockChain.cons _ _ _ _ _ partChecked1
  simp only [partLength1]
  apply BlockChain.cons _ _ _ _ _ partChecked2
  simp only [partLength2]
  apply BlockChain.cons _ _ _ _ _ partChecked3
  simp only [partLength3]
  apply BlockChain.cons _ _ _ _ _ partChecked4
  simp only [partLength4]
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactBranchAdmissionGroup0.partSize,ArtifactBranchAdmissionGroup1.partSize,ArtifactBranchAdmissionGroup2.partSize,ArtifactBranchAdmissionGroup3.partSize,ArtifactBranchAdmissionGroup4.partSize]
  decide
theorem actual_validated : validate ActualBranchAdmissionIR.program actualBytes=true :=
  validate_from_facts ActualBranchAdmissionIR.program actualBytes ActualBranchAdmissionIR.safe_checked
    (assembled_bytes_exact ActualBranchAdmissionIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (BranchAdmissionProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualBranchAdmissionIR.program actualBytes actual_validated inputs
  rw [ActualBranchAdmissionIR.ir_exact] at result
  exact result
end ArtifactBranchAdmissionBlocks
