import ArtifactBranchFooter
import Core033.BranchWordEncoding
import ArtifactBranchHeader
import ArtifactBranchGroup0
import ArtifactBranchGroup1
import ArtifactBranchGroup2
import ArtifactBranchGroup3
import ArtifactBranchGroup4
namespace ArtifactBranchBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 81),.literal (BitVec.ofNat 32 0),.shr 0 0,.literal (BitVec.ofNat 32 255),.band 48 49,.shr 1 0,.literal (BitVec.ofNat 32 255),.band 51 52,.shr 1 8,.literal (BitVec.ofNat 32 255),.band 54 55,.shr 2 0,.literal (BitVec.ofNat 32 255),.band 57 58,.shr 2 8,.literal (BitVec.ofNat 32 255),.band 60 61,.shr 2 16,.literal (BitVec.ofNat 32 255),.band 63 64,.shr 2 24,.literal (BitVec.ofNat 32 255),.band 66 67,.shr 3 0,.literal (BitVec.ofNat 32 255),.band 69 70,.shr 3 8,.literal (BitVec.ofNat 32 255),.band 72 73,.shr 3 16,.literal (BitVec.ofNat 32 255),.band 75 76,.shr 3 24,.literal (BitVec.ofNat 32 255),.band 78 79,.shr 4 0,.literal (BitVec.ofNat 32 255),.band 81 82,.shr 4 8,.literal (BitVec.ofNat 32 255),.band 84 85,.shr 4 16,.literal (BitVec.ofNat 32 255),.band 87 88]
theorem partPartition0 : partOps0=ArtifactBranchGroup0.partOps := rfl
theorem partChecked0 : ArtifactBranchGroup0.partBytes=statementBytes 26 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactBranchGroup0.partChecked
theorem partLength0 : partOps0.length=64 := rfl
def partOps1 : List WordIR.Op := [.shr 4 24,.literal (BitVec.ofNat 32 255),.band 90 91,.shr 5 0,.literal (BitVec.ofNat 32 255),.band 93 94,.shr 5 8,.literal (BitVec.ofNat 32 255),.band 96 97,.shr 5 16,.literal (BitVec.ofNat 32 255),.band 99 100,.shr 5 24,.literal (BitVec.ofNat 32 255),.band 102 103,.shr 6 0,.literal (BitVec.ofNat 32 255),.band 105 106,.shr 6 8,.literal (BitVec.ofNat 32 255),.band 108 109,.shr 6 16,.literal (BitVec.ofNat 32 255),.band 111 112,.shr 6 24,.literal (BitVec.ofNat 32 255),.band 114 115,.shr 7 0,.literal (BitVec.ofNat 32 255),.band 117 118,.shr 7 8,.literal (BitVec.ofNat 32 255),.band 120 121,.shr 7 16,.literal (BitVec.ofNat 32 255),.band 123 124,.shr 7 24,.literal (BitVec.ofNat 32 255),.band 126 127,.shr 8 0,.literal (BitVec.ofNat 32 255),.band 129 130,.shr 8 8,.literal (BitVec.ofNat 32 255),.band 132 133,.shr 8 16,.literal (BitVec.ofNat 32 255),.band 135 136,.shr 8 24,.literal (BitVec.ofNat 32 255),.band 138 139,.shr 9 0,.literal (BitVec.ofNat 32 255),.band 141 142,.shr 9 8,.literal (BitVec.ofNat 32 255),.band 144 145,.shr 9 16,.literal (BitVec.ofNat 32 255),.band 147 148,.shr 9 24,.literal (BitVec.ofNat 32 255),.band 150 151,.shr 10 0]
theorem partPartition1 : partOps1=ArtifactBranchGroup1.partOps := rfl
theorem partChecked1 : ArtifactBranchGroup1.partBytes=statementBytes 90 (partOps1.map lower) := by
  rw [partPartition1]
  exact ArtifactBranchGroup1.partChecked
theorem partLength1 : partOps1.length=64 := rfl
def partOps2 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 153 154,.shr 10 8,.literal (BitVec.ofNat 32 255),.band 156 157,.shr 10 16,.literal (BitVec.ofNat 32 255),.band 159 160,.shr 10 24,.literal (BitVec.ofNat 32 255),.band 162 163,.shr 11 0,.literal (BitVec.ofNat 32 255),.band 165 166,.shr 11 8,.literal (BitVec.ofNat 32 255),.band 168 169,.shr 11 16,.literal (BitVec.ofNat 32 255),.band 171 172,.shr 11 24,.literal (BitVec.ofNat 32 255),.band 174 175,.shr 12 0,.literal (BitVec.ofNat 32 255),.band 177 178,.shr 12 8,.literal (BitVec.ofNat 32 255),.band 180 181,.shr 12 16,.literal (BitVec.ofNat 32 255),.band 183 184,.shr 12 24,.literal (BitVec.ofNat 32 255),.band 186 187,.shr 13 0,.literal (BitVec.ofNat 32 255),.band 189 190,.shr 13 8,.literal (BitVec.ofNat 32 255),.band 192 193,.shr 13 16,.literal (BitVec.ofNat 32 255),.band 195 196,.shr 13 24,.literal (BitVec.ofNat 32 255),.band 198 199,.shr 14 0,.literal (BitVec.ofNat 32 255),.band 201 202,.shr 14 8,.literal (BitVec.ofNat 32 255),.band 204 205,.shr 14 16,.literal (BitVec.ofNat 32 255),.band 207 208,.shr 14 24,.literal (BitVec.ofNat 32 255),.band 210 211,.shr 15 0,.literal (BitVec.ofNat 32 255),.band 213 214,.shr 15 8,.literal (BitVec.ofNat 32 255)]
theorem partPartition2 : partOps2=ArtifactBranchGroup2.partOps := rfl
theorem partChecked2 : ArtifactBranchGroup2.partBytes=statementBytes 154 (partOps2.map lower) := by
  rw [partPartition2]
  exact ArtifactBranchGroup2.partChecked
theorem partLength2 : partOps2.length=64 := rfl
def partOps3 : List WordIR.Op := [.band 216 217,.shr 15 16,.literal (BitVec.ofNat 32 255),.band 219 220,.shr 15 24,.literal (BitVec.ofNat 32 255),.band 222 223,.shr 16 0,.literal (BitVec.ofNat 32 255),.band 225 226,.shr 16 8,.literal (BitVec.ofNat 32 255),.band 228 229,.shr 16 16,.literal (BitVec.ofNat 32 255),.band 231 232,.shr 16 24,.literal (BitVec.ofNat 32 255),.band 234 235,.shr 17 0,.literal (BitVec.ofNat 32 255),.band 237 238,.shr 17 8,.literal (BitVec.ofNat 32 255),.band 240 241,.shr 17 16,.literal (BitVec.ofNat 32 255),.band 243 244,.shr 17 24,.literal (BitVec.ofNat 32 255),.band 246 247,.shr 18 0,.literal (BitVec.ofNat 32 255),.band 249 250,.shr 18 8,.literal (BitVec.ofNat 32 255),.band 252 253,.shr 18 16,.literal (BitVec.ofNat 32 255),.band 255 256,.shr 18 24,.literal (BitVec.ofNat 32 255),.band 258 259,.shr 19 0,.literal (BitVec.ofNat 32 255),.band 261 262,.shr 19 8,.literal (BitVec.ofNat 32 255),.band 264 265,.shr 19 16,.literal (BitVec.ofNat 32 255),.band 267 268,.shr 19 24,.literal (BitVec.ofNat 32 255),.band 270 271,.shr 20 0,.literal (BitVec.ofNat 32 255),.band 273 274,.shr 20 8,.literal (BitVec.ofNat 32 255),.band 276 277,.shr 20 16,.literal (BitVec.ofNat 32 255),.band 279 280]
theorem partPartition3 : partOps3=ArtifactBranchGroup3.partOps := rfl
theorem partChecked3 : ArtifactBranchGroup3.partBytes=statementBytes 218 (partOps3.map lower) := by
  rw [partPartition3]
  exact ArtifactBranchGroup3.partChecked
theorem partLength3 : partOps3.length=64 := rfl
def partOps4 : List WordIR.Op := [.shr 20 24,.literal (BitVec.ofNat 32 255),.band 282 283,.shr 21 0,.literal (BitVec.ofNat 32 255),.band 285 286,.shr 21 8,.literal (BitVec.ofNat 32 255),.band 288 289,.shr 21 16,.literal (BitVec.ofNat 32 255),.band 291 292,.shr 21 24,.literal (BitVec.ofNat 32 255),.band 294 295,.shr 22 0,.literal (BitVec.ofNat 32 255),.band 297 298,.shr 22 8,.literal (BitVec.ofNat 32 255),.band 300 301,.shr 22 16,.literal (BitVec.ofNat 32 255),.band 303 304,.shr 22 24,.literal (BitVec.ofNat 32 255),.band 306 307,.shr 23 0,.literal (BitVec.ofNat 32 255),.band 309 310,.shr 23 8,.literal (BitVec.ofNat 32 255),.band 312 313,.shr 23 16,.literal (BitVec.ofNat 32 255),.band 315 316,.shr 23 24,.literal (BitVec.ofNat 32 255),.band 318 319,.shr 24 0,.literal (BitVec.ofNat 32 255),.band 321 322,.shr 25 0,.literal (BitVec.ofNat 32 255),.band 324 325]
theorem partPartition4 : partOps4=ArtifactBranchGroup4.partOps := rfl
theorem partChecked4 : ArtifactBranchGroup4.partBytes=statementBytes 282 (partOps4.map lower) := by
  rw [partPartition4]
  exact ArtifactBranchGroup4.partChecked
theorem partLength4 : partOps4.length=45 := rfl
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4]
def actualBody : List Bytes := [ArtifactBranchGroup0.partBytes,ArtifactBranchGroup1.partBytes,ArtifactBranchGroup2.partBytes,ArtifactBranchGroup3.partBytes,ArtifactBranchGroup4.partBytes]
def actualHeader : Bytes := ArtifactBranchHeader.actualHeader
def actualFooter : Bytes := ArtifactBranchFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualBranchIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 26 115 ∧ actualHeader.length=572 := ArtifactBranchHeader.checked
theorem footer_checked : actualFooter=suffix ActualBranchIR.program.outputs ∧ actualFooter.length=1272 := ArtifactBranchFooter.checked
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
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactBranchGroup0.partSize,ArtifactBranchGroup1.partSize,ArtifactBranchGroup2.partSize,ArtifactBranchGroup3.partSize,ArtifactBranchGroup4.partSize]
  decide
theorem actual_validated : validate ActualBranchIR.program actualBytes=true :=
  validate_from_facts ActualBranchIR.program actualBytes ActualBranchIR.safe_checked
    (assembled_bytes_exact ActualBranchIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (BranchWordProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualBranchIR.program actualBytes actual_validated inputs
  rw [ActualBranchIR.ir_exact] at result
  exact result
end ArtifactBranchBlocks
