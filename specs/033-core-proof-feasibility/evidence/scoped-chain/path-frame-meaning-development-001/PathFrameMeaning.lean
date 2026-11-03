import Core033.PathFrameProgram

namespace Core033.PathFrameMeaning
open WordIR WordStage PathFrameProgram
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def geometryInputs (inputs : Nat → Word) (_ : Nat) : Word := inputs 1

theorem geometry_value (inputs : Nat → Word) (position : Nat) (bound : position<5) :
    Meaning geometry.2 inputs (geometryRegister position)
      ((PathCounterProgram.program.eval (geometryInputs inputs)).getD position 0) :=
  WordInlineOutputs.exact_output initial PathCounterProgram.program geometry_valid geometryPorts geometry_ports
    inputs position (by rw [arities.1];exact bound)

theorem geometry_depth (inputs : Nat → Word) :
    geometry.2.values inputs (geometryRegister 1)=PathCounterProgram.depth (inputs 1) := by
  have result:=geometry_value inputs 1 (by decide)
  simpa only [PathCounterProgram.program_meaning,geometryInputs] using result.2

def addressInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index<8 then inputs (2+index) else PathCounterProgram.depth (inputs 1)

theorem address_input_values (inputs : Nat → Word) :
    (fun index=>geometry.2.values inputs (addressPorts index))=addressInputs inputs := by
  funext index
  by_cases original : index<8
  · simp only [addressPorts,addressInputs,if_pos original]
    exact extends_values initial geometry.2 (WordInline.builder_extends _ _ _) inputs (2+index) (by change 2+index<34;omega)
  · simp only [addressPorts,addressInputs,if_neg original]
    exact geometry_depth inputs

theorem address_value (inputs : Nat → Word) (position : Nat) (bound : position<4) :
    Meaning addressed.2 inputs (addressRegister position)
      ((WordAddressProgram.program.eval (addressInputs inputs)).getD position 0) := by
  have result:=WordInlineOutputs.exact_output geometry.2 WordAddressProgram.program address_valid addressPorts address_ports
    inputs position (by rw [arities.2.1];exact bound)
  rw [address_input_values] at result
  exact result

theorem original_addressed_value (inputs : Nat → Word) (index : Nat) (bound : index<34) :
    addressed.2.values inputs index=inputs index :=
  extends_values initial addressed.2
    (extends_trans initial geometry.2 addressed.2 (WordInline.builder_extends _ _ _) (WordInline.builder_extends _ _ _))
    inputs index bound

def swapInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then (WordAddressProgram.program.eval (addressInputs inputs)).getD 0 0
  else if index<13 then inputs (childPort (index-1)) else inputs (siblingPort (index-13))

theorem swap_input_values (inputs : Nat → Word) (index : Nat) (bound : index<25) :
    addressed.2.values inputs (swapPorts index)=swapInputs inputs index := by
  by_cases direction : index=0
  · simp only [swapPorts,swapInputs,if_pos direction]
    exact (address_value inputs 0 (by decide)).2
  · simp only [swapPorts,swapInputs,if_neg direction]
    by_cases child : index<13
    · simp only [if_pos child]
      exact original_addressed_value inputs _ (child_port_bound _ (by omega))
    · simp only [if_neg child]
      exact original_addressed_value inputs _ (sibling_port_bound _ (by omega))

theorem swap_value (inputs : Nat → Word) (position : Nat) (bound : position<25) :
    Meaning swapped.2 inputs (swapRegister position)
      ((WordSwapProgram.program.eval (swapInputs inputs)).getD position 0) := by
  have result:=WordInlineOutputs.exact_output addressed.2 WordSwapProgram.program swap_valid swapPorts swap_ports
    inputs position (by rw [arities.2.2.1];exact bound)
  have same:=WordInline.input_congr WordSwapProgram.program swap_valid
    (fun index=>addressed.2.values inputs (swapPorts index)) (swapInputs inputs) (swap_input_values inputs)
  rw [same] at result
  exact result

theorem geometry_swapped_value (inputs : Nat → Word) (position : Nat) (bound : position<5) :
    Meaning swapped.2 inputs (geometryRegister position)
      ((PathCounterProgram.program.eval (geometryInputs inputs)).getD position 0) :=
  meaning_extends geometry.2 swapped.2
    (extends_trans geometry.2 addressed.2 swapped.2 (WordInline.builder_extends _ _ _) (WordInline.builder_extends _ _ _))
    inputs _ _ (geometry_value inputs position bound)

def parentInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then inputs 0 else if index=1 then PathCounterProgram.depth (inputs 1)
  else (WordSwapProgram.program.eval (swapInputs inputs)).getD (parentSlot index) 0

theorem parent_input_values (inputs : Nat → Word) (index : Nat) (bound : index<26) :
    swapped.2.values inputs (parentPorts index)=parentInputs inputs index := by
  by_cases kind : index=0
  · simp only [parentPorts,parentInputs,if_pos kind]
    have kept:=extends_values addressed.2 swapped.2 (WordInline.builder_extends _ _ _) inputs 0 (original_addressed_bound 0 (by decide))
    exact kept.trans (original_addressed_value inputs 0 (by decide))
  · simp only [parentPorts,parentInputs,if_neg kind]
    by_cases depth : index=1
    · simp only [if_pos depth]
      have value:=geometry_swapped_value inputs 1 (by decide)
      simpa only [PathCounterProgram.program_meaning,geometryInputs] using value.2
    · simp only [if_neg depth]
      apply (swap_value inputs (parentSlot index) _).2
      unfold parentSlot
      split_ifs <;> omega

theorem parent_meaning (inputs : Nat → Word) : parent.1.map (parent.2.values inputs)=
    ParentBranchProgram.program.eval (parentInputs inputs) := by
  have result:=WordInline.complete_meaning swapped.2 ParentBranchProgram.program parent_valid parentPorts parent_ports inputs
  have same:=WordInline.input_congr ParentBranchProgram.program parent_valid
    (fun index=>swapped.2.values inputs (parentPorts index)) (parentInputs inputs) (parent_input_values inputs)
  rw [same] at result
  exact result

theorem geometry_parent_value (inputs : Nat → Word) (position : Nat) (bound : position<5) :
    Meaning parent.2 inputs (geometryRegister position)
      ((PathCounterProgram.program.eval (geometryInputs inputs)).getD position 0) :=
  meaning_extends swapped.2 parent.2 (WordInline.builder_extends _ _ _) inputs _ _
    (geometry_swapped_value inputs position bound)

theorem address_parent_value (inputs : Nat → Word) (position : Nat) (bound : position<4) :
    Meaning parent.2 inputs (addressRegister position)
      ((WordAddressProgram.program.eval (addressInputs inputs)).getD position 0) :=
  meaning_extends addressed.2 parent.2
    (extends_trans addressed.2 swapped.2 parent.2 (WordInline.builder_extends _ _ _) (WordInline.builder_extends _ _ _))
    inputs _ _ (address_value inputs position bound)

theorem swap_parent_value (inputs : Nat → Word) (position : Nat) (bound : position<25) :
    Meaning parent.2 inputs (swapRegister position)
      ((WordSwapProgram.program.eval (swapInputs inputs)).getD position 0) :=
  meaning_extends swapped.2 parent.2 (WordInline.builder_extends _ _ _) inputs _ _ (swap_value inputs position bound)

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    ParentBranchProgram.program.eval (parentInputs inputs)++
      [ScalarRanges.flag 8 (inputs 1),
       (WordAddressProgram.program.eval (addressInputs inputs)).getD 1 0,
       (WordAddressProgram.program.eval (addressInputs inputs)).getD 2 0,
       (WordAddressProgram.program.eval (addressInputs inputs)).getD 3 0,
       (WordSwapProgram.program.eval (swapInputs inputs)).getD 24 0,inputs 1+1] := by
  change (parent.1++[geometryRegister 2,addressRegister 1,addressRegister 2,addressRegister 3,swapRegister 24,geometryRegister 0]).map
    (parent.2.values inputs)=_
  rw [List.map_append,parent_meaning]
  simp only [List.map_cons,List.map_nil,
    (geometry_parent_value inputs 2 (by decide)).2,(geometry_parent_value inputs 0 (by decide)).2,
    (address_parent_value inputs 1 (by decide)).2,(address_parent_value inputs 2 (by decide)).2,
    (address_parent_value inputs 3 (by decide)).2,(swap_parent_value inputs 24 (by decide)).2,
    PathCounterProgram.program_meaning,geometryInputs]
  rfl

end Core033.PathFrameMeaning
