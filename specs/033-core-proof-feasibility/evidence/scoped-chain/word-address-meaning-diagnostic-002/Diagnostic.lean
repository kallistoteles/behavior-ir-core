import Core033.WordAddressProgram

namespace Core033.WordAddressMeaning
open WordIR WordStage WordAddressProgram
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem coordinate_extends : Extends initial coordinates.2 := WordInline.builder_extends _ _ _
theorem choose_extends : Extends coordinates.2 chosen.2 := WordInline.builder_extends _ _ _
theorem shift_extends : Extends chosen.2 shifted.2 := WordInline.builder_extends _ _ _
theorem bit_extends : Extends shifted.2 finalStage.2 := compile_extends _ _

theorem coordinate_value (inputs : Nat → Word) (position : Nat) (bound : position<3) :
    Meaning coordinates.2 inputs (coordinateRegister position)
      ([WordAddressCoordinates.index (inputs 8),WordAddressCoordinates.amount (inputs 8),
        ScalarRanges.flag 8 (inputs 8)].getD position 0) := by
  have result:=WordInlineOutputs.exact_output initial WordAddressCoordinates.program coordinate_valid id coordinate_ports
    inputs position (by rw [coordinate_arity];exact bound)
  simpa only [WordAddressCoordinates.program_meaning] using result

def choiceInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index<8 then inputs index else WordAddressCoordinates.index (inputs 8)

theorem choice_input_values (inputs : Nat → Word) :
    (fun index=>coordinates.2.values inputs (choosePorts index))=choiceInputs inputs := by
  funext index
  by_cases original : index<8
  · simp only [choosePorts,choiceInputs,if_pos original]
    exact extends_values initial coordinates.2 coordinate_extends inputs index (by change index<9;omega)
  · simp only [choosePorts,choiceInputs,if_neg original]
    exact (coordinate_value inputs 0 (by decide)).2

theorem chosen_value (inputs : Nat → Word) (position : Nat) (bound : position<2) :
    Meaning chosen.2 inputs (chosenRegister position)
      ([WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat,
        ScalarRanges.flag 3 (WordAddressCoordinates.index (inputs 8))].getD position 0) := by
  have result:=WordInlineOutputs.exact_output coordinates.2 WordChooseProgram.program choose_valid choosePorts choose_ports
    inputs position (by rw [choose_arity];exact bound)
  rw [choice_input_values] at result
  simpa [WordChooseProgram.program_meaning,choiceInputs,WordChooseProgram.choose] using result

def shiftInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat
    else WordAddressCoordinates.amount (inputs 8)

theorem shift_input_values (inputs : Nat → Word) :
    (fun index=>chosen.2.values inputs (shiftPorts index))=shiftInputs inputs := by
  funext index
  by_cases first : index=0
  · simp only [shiftPorts,shiftInputs,if_pos first]
    exact (chosen_value inputs 0 (by decide)).2
  · simp only [shiftPorts,shiftInputs,if_neg first]
    exact (meaning_extends coordinates.2 chosen.2 choose_extends inputs _ _
      (coordinate_value inputs 1 (by decide))).2

theorem shifted_value (inputs : Nat → Word) (position : Nat) (bound : position<2) :
    Meaning shifted.2 inputs (shiftedRegister position)
      ([WordBarrel.shift (WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat)
          (WordAddressCoordinates.amount (inputs 8)).toNat,
        ScalarRanges.flag 5 (WordAddressCoordinates.amount (inputs 8))].getD position 0) := by
  have result:=WordInlineOutputs.exact_output chosen.2 WordShiftProgram.program shift_valid shiftPorts shift_ports
    inputs position (by rw [shift_arity];exact bound)
  rw [shift_input_values] at result
  simpa only [WordShiftProgram.program_meaning,shiftInputs,if_pos rfl,if_neg (by decide : ¬(1:Nat)=0)] using result

theorem result_bit (inputs : Nat → Word) : Meaning finalStage.2 inputs finalStage.1
    (WordControl.boolWord ((WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat).getLsbD
      (WordAddressCoordinates.amount (inputs 8)).toNat)) := by
  have result:=compile_sound (WordBit.expression (shiftedRegister 0) 0) shifted.2 inputs bit_expression_bounded
  have rawShift : shifted.2.values inputs (shiftedRegister 0)=
      WordBarrel.shift (WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat)
        (WordAddressCoordinates.amount (inputs 8)).toNat := (shifted_value inputs 0 (by decide)).2
  rw [WordBit.expression_meaning,rawShift,WordBarrel.exact_shift _ _ (WordAddressCoordinates.amount_bounded _),
    WordBit.bit_word_exact,BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,Nat.add_zero] at result
  exact result

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    [WordControl.boolWord ((WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat).getLsbD
       (WordAddressCoordinates.amount (inputs 8)).toNat),
     ScalarRanges.flag 8 (inputs 8),ScalarRanges.flag 3 (WordAddressCoordinates.index (inputs 8)),
     ScalarRanges.flag 5 (WordAddressCoordinates.amount (inputs 8))] := by
  have coordinatesToFinal:=extends_trans coordinates.2 shifted.2 finalStage.2
    (extends_trans coordinates.2 chosen.2 shifted.2 choose_extends shift_extends) bit_extends
  have chosenToFinal:=extends_trans chosen.2 shifted.2 finalStage.2 shift_extends bit_extends
  have depth:=meaning_extends coordinates.2 finalStage.2 coordinatesToFinal inputs _ _ (coordinate_value inputs 2 (by decide))
  have index:=meaning_extends chosen.2 finalStage.2 chosenToFinal inputs _ _ (chosen_value inputs 1 (by decide))
  have amount:=meaning_extends shifted.2 finalStage.2 bit_extends inputs _ _ (shifted_value inputs 1 (by decide))
  have bit:=result_bit inputs
  change [finalStage.2.values inputs finalStage.1,finalStage.2.values inputs (coordinateRegister 2),
    finalStage.2.values inputs (chosenRegister 1),finalStage.2.values inputs (shiftedRegister 1)]=_
  rw [bit.2,depth.2,index.2,amount.2]
  rfl

theorem exact_admitted_address_bit (inputs : Nat → Word) (bound : (inputs 8).toNat<256) :
    (program.eval inputs).getD 0 0=WordControl.boolWord
      ((inputs ((inputs 8).toNat/32)).getLsbD (31-(inputs 8).toNat%32)) := by
  rw [program_meaning]
  change WordControl.boolWord ((WordChooseProgram.choose inputs (WordAddressCoordinates.index (inputs 8)).toNat).getLsbD
    (WordAddressCoordinates.amount (inputs 8)).toNat)=_
  rw [WordChooseProgram.choose_exact _ _ (WordAddressCoordinates.index_bounded _ bound),
    WordAddressCoordinates.index_exact,WordAddressCoordinates.amount_exact]

theorem depth_admission_exact (inputs : Nat → Word) :
    (program.eval inputs).getD 1 0=WordControl.boolWord (decide ((inputs 8).toNat<256)) := by
  rw [program_meaning]
  exact ScalarRanges.flag_exact _ _

end Core033.WordAddressMeaning
