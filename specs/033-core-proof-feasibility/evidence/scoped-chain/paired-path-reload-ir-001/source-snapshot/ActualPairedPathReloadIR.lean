import Core033.PairedPathReloadGuards
import Core033.KernelDecide
namespace ActualPairedPathReloadIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def operations0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 7),.bxor 0 109,.literal (BitVec.ofNat 32 0),.bnot 111,.band 110 112,.literal (BitVec.ofNat 32 7),.bxor 0 114,.literal (BitVec.ofNat 32 0),.bnot 116,.bxor 115 117,.literal (BitVec.ofNat 32 7),.bxor 0 119,.literal (BitVec.ofNat 32 0),.bnot 121,.badd 120 122,.bnot 123,.band 118 124,.bxor 113 125,.shr 126 31,.literal (BitVec.ofNat 32 1),.bxor 127 128,.literal (BitVec.ofNat 32 0),.bnot 130,.band 2 131,.literal (BitVec.ofNat 32 0),.bnot 133,.bxor 2 134,.literal (BitVec.ofNat 32 0),.bnot 136,.badd 2 137,.bnot 138,.band 135 139,.bxor 132 140,.shr 141 31,.literal (BitVec.ofNat 32 256),.bnot 2,.band 143 144,.literal (BitVec.ofNat 32 256),.bnot 2,.bxor 146 147,.literal (BitVec.ofNat 32 256),.bnot 2,.badd 149 150,.bnot 151,.band 148 152,.bxor 145 153,.shr 154 31]
def operationChunks : List (List WordIR.Op) := [operations0]
def program : WordIR.Program := ⟨108,operationChunks.flatten,[108,1,2,3,4,5,6,7,8,9,10,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,96,97,98,99,100,101,102,103,104,105,106,107,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,129,142,155]⟩
theorem ir_exact : program=Core033.PairedPathReload.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
theorem program_valid : program.Valid := WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp safe_checked)
theorem output_count : program.outputs.length=99 := by decide
end ActualPairedPathReloadIR
