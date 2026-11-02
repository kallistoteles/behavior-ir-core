import Core033.WordInlineOutputs
import Core033.WordAddressCoordinates
import Core033.WordChooseProgram
import Core033.WordShiftProgram
import Core033.WordSourceValidity
import Core033.KernelDecide

namespace Core033.WordAddressProgram
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def initial : Builder := Builder.empty 9

def coordinates := WordInline.inline initial WordAddressCoordinates.program id
def coordinateRegister (position : Nat) := WordInlineOutputs.register initial WordAddressCoordinates.program id position

def choosePorts (index : Nat) := if index<8 then index else coordinateRegister 0
def chosen := WordInline.inline coordinates.2 WordChooseProgram.program choosePorts
def chosenRegister (position : Nat) := WordInlineOutputs.register coordinates.2 WordChooseProgram.program choosePorts position

def shiftPorts (index : Nat) := if index=0 then chosenRegister 0 else coordinateRegister 1
def shifted := WordInline.inline chosen.2 WordShiftProgram.program shiftPorts
def shiftedRegister (position : Nat) := WordInlineOutputs.register chosen.2 WordShiftProgram.program shiftPorts position

def finalStage := compile (WordBit.expression (shiftedRegister 0) 0) shifted.2

def program : Program := ⟨9,finalStage.2.operations,
  [finalStage.1,coordinateRegister 2,chosenRegister 1,shiftedRegister 1]⟩

theorem coordinate_valid : WordAddressCoordinates.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem choose_valid : WordChooseProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem shift_valid : WordShiftProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem coordinate_arity : WordAddressCoordinates.program.outputs.length=3 := by core033_kernel_decide

theorem choose_arity : WordChooseProgram.program.outputs.length=2 := by core033_kernel_decide

theorem shift_arity : WordShiftProgram.program.outputs.length=2 := by core033_kernel_decide

theorem coordinate_ports : ∀ index,index<WordAddressCoordinates.program.inputCount → id index<initial.next := by
  intro index bound
  exact bound

theorem coordinate_register_bound (position : Nat) (bound : position<3) : coordinateRegister position<coordinates.2.next :=
  (WordInlineOutputs.exact_output initial WordAddressCoordinates.program coordinate_valid id coordinate_ports
    (fun _=>0) position (by rw [coordinate_arity];exact bound)).1

theorem choose_ports : ∀ index,index<WordChooseProgram.program.inputCount → choosePorts index<coordinates.2.next := by
  intro index bound
  by_cases original : index<8
  · simp only [choosePorts,if_pos original]
    have nextBound:=extends_next initial coordinates.2 (WordInline.builder_extends initial WordAddressCoordinates.program id)
    change 9≤coordinates.2.next at nextBound
    omega
  · simp only [choosePorts,if_neg original]
    exact coordinate_register_bound 0 (by decide)

theorem chosen_register_bound (position : Nat) (bound : position<2) : chosenRegister position<chosen.2.next :=
  (WordInlineOutputs.exact_output coordinates.2 WordChooseProgram.program choose_valid choosePorts choose_ports
    (fun _=>0) position (by rw [choose_arity];exact bound)).1

theorem shift_ports : ∀ index,index<WordShiftProgram.program.inputCount → shiftPorts index<chosen.2.next := by
  intro index bound
  by_cases first : index=0
  · simp only [shiftPorts,if_pos first]
    exact chosen_register_bound 0 (by decide)
  · simp only [shiftPorts,if_neg first]
    have nextBound:=extends_next coordinates.2 chosen.2 (WordInline.builder_extends coordinates.2 WordChooseProgram.program choosePorts)
    exact Nat.lt_of_lt_of_le (coordinate_register_bound 1 (by decide)) nextBound

theorem shifted_register_bound (position : Nat) (bound : position<2) : shiftedRegister position<shifted.2.next :=
  (WordInlineOutputs.exact_output chosen.2 WordShiftProgram.program shift_valid shiftPorts shift_ports
    (fun _=>0) position (by rw [shift_arity];exact bound)).1

theorem bit_expression_bounded : (WordBit.expression (shiftedRegister 0) 0).Bounded shifted.2.next := by
  simp only [WordBit.expression,Expr.Bounded,true_and,and_true]
  exact shifted_register_bound 0 (by decide)

end Core033.WordAddressProgram
