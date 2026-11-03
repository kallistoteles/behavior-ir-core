import Core033.PathCounterProgram
import Core033.WordAddressProgram
import Core033.WordAddressMeaning
import Core033.WordSwapProgram
import Core033.ParentBranchProgram

/- One shared-register parent-frame computation. Inputs are kind, processed
count, eight raw SHA address words, two full roots and both child summaries.
No producer-selected depth, direction or parent metadata input is accepted.
Own-node authentication, stream phases and hash calls remain separate steps. -/
namespace Core033.PathFrameProgram
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def initial : Builder := Builder.empty 34
def geometryPorts (_ : Nat) : Nat := 1
def geometry := WordInline.inline initial PathCounterProgram.program geometryPorts
def geometryRegister (position : Nat) := WordInlineOutputs.register initial PathCounterProgram.program geometryPorts position

def addressPorts (index : Nat) : Nat := if index<8 then 2+index else geometryRegister 1
def addressed := WordInline.inline geometry.2 WordAddressProgram.program addressPorts
def addressRegister (position : Nat) := WordInlineOutputs.register geometry.2 WordAddressProgram.program addressPorts position

def childPort (index : Nat) : Nat := if index<8 then 10+index else if index=8 then 26 else if index=9 then 27 else if index=10 then 30 else 32
def siblingPort (index : Nat) : Nat := if index<8 then 18+index else if index=8 then 28 else if index=9 then 29 else if index=10 then 31 else 33

def swapPorts (index : Nat) : Nat :=
  if index=0 then addressRegister 0 else if index<13 then childPort (index-1) else siblingPort (index-13)
def swapped := WordInline.inline addressed.2 WordSwapProgram.program swapPorts
def swapRegister (position : Nat) := WordInlineOutputs.register addressed.2 WordSwapProgram.program swapPorts position

def parentPorts (index : Nat) : Nat :=
  if index=0 then 0 else if index=1 then geometryRegister 1 else
    swapRegister (if index<10 then index-2 else if index<18 then 12+(index-10)
      else if index<20 then 8+(index-18) else if index<22 then 20+(index-20)
      else if index=22 then 10 else if index=23 then 22 else if index=24 then 11 else 23)
def parent := WordInline.inline swapped.2 ParentBranchProgram.program parentPorts

def outputs : List Nat := parent.1++[geometryRegister 2,addressRegister 1,addressRegister 2,addressRegister 3,swapRegister 24,geometryRegister 0]
def program : Program := ⟨34,parent.2.operations,outputs⟩

theorem geometry_valid : PathCounterProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem address_valid : WordAddressProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem swap_valid : WordSwapProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem parent_valid : ParentBranchProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem arities : PathCounterProgram.program.outputs.length=5 ∧ WordAddressProgram.program.outputs.length=4 ∧
    WordSwapProgram.program.outputs.length=25 ∧ ParentBranchProgram.program.outputs.length=127 := by core033_kernel_decide

theorem geometry_ports : ∀ index,index<PathCounterProgram.program.inputCount → geometryPorts index<initial.next := by
  intro index bound
  change 1<34
  decide

theorem geometry_register_bound (position : Nat) (bound : position<5) : geometryRegister position<geometry.2.next :=
  (WordInlineOutputs.exact_output initial PathCounterProgram.program geometry_valid geometryPorts geometry_ports
    (fun _=>0) position (by rw [arities.1];exact bound)).1

theorem address_ports : ∀ index,index<WordAddressProgram.program.inputCount → addressPorts index<geometry.2.next := by
  intro index bound
  by_cases original : index<8
  · simp only [addressPorts,if_pos original]
    have nextBound:=extends_next initial geometry.2 (WordInline.builder_extends _ _ _)
    change 34≤geometry.2.next at nextBound
    omega
  · simp only [addressPorts,if_neg original]
    exact geometry_register_bound 1 (by decide)

theorem address_register_bound (position : Nat) (bound : position<4) : addressRegister position<addressed.2.next :=
  (WordInlineOutputs.exact_output geometry.2 WordAddressProgram.program address_valid addressPorts address_ports
    (fun _=>0) position (by rw [arities.2.1];exact bound)).1

end Core033.PathFrameProgram
