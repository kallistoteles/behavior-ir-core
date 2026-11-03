import Core033.AuthenticatedBranchState
import Core033.AuthenticatedBranchValidity
import Core033.AuthenticatedBranchPhases

namespace Core033.AuthenticatedBranchPorts
open WordIR WordStage AuthenticatedBranchRound AuthenticatedBranchRouting AuthenticatedBranchState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval WordInline.inline WordSequence.compileAll

theorem append_congr {α : Type} {left right next last : List α}
    (first : left=right) (second : next=last) : left++next=right++last := by
  cases first
  cases second
  rfl

theorem round_outputs_at_end (inputs : Nat → Word) :
    round.1.map (finalized.2.values inputs)=PathRoundDispatch.program.eval (routedWord inputs) := by
  have kept:=PathRoundDispatchMeaning.map_preserved round.2 finalized.2
    (WordSequence.all_extends _ _) inputs round.1
    (WordInline.output_bounds routed.2 PathRoundDispatch.program
      PathRoundDispatchGuards.program_valid localInput round_ports)
  have value:=WordInline.complete_meaning routed.2 PathRoundDispatch.program
    PathRoundDispatchGuards.program_valid localInput round_ports inputs
  have same:=WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
    (fun position=>routed.2.values inputs (localInput position)) (routedWord inputs)
    (by intro position bound;exact (routed_value inputs position bound).2)
  exact kept.trans (value.trans same)

theorem admission_at_end (inputs : Nat → Word) :
    finalized.2.values inputs (selectors.1.getD 7 0)=admission.eval inputs :=
  (meaning_extends round.2 finalized.2 (WordSequence.all_extends _ _) inputs _ _
    (selector_at_round inputs 7 (by decide))).2

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    (List.range 118).map (nextWord inputs)++
      (PathRoundDispatch.program.eval (routedWord inputs)).drop 43++[admission.eval inputs] := by
  conv_lhs => unfold WordIR.Program.eval
  change outputs.map (WordIR.run 118 finalized.2.operations inputs)=_
  have execution:=congrArg (fun count=>outputs.map (WordIR.run count finalized.2.operations inputs)) counts.2.2.2.symm
  dsimp only at execution
  apply execution.trans
  change outputs.map (finalized.2.values inputs)=_
  simp only [outputs,List.map_append,List.map_drop,List.map_cons,List.map_nil]
  exact append_congr (append_congr (final_values inputs)
    (congrArg (fun words : List Word=>words.drop 43) (round_outputs_at_end inputs)))
    (congrArg List.singleton (admission_at_end inputs))

theorem state_word (inputs : Nat → Word) (index : Nat) (bound : index<118) :
    (program.eval inputs).getD index 0=nextWord inputs index := by
  rw [program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_map,List.length_range,
    List.length_drop,PathRoundDispatchGuards.output_count,Program.eval]
  rw [if_pos (by omega : index<118+(133-43)),if_pos bound]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]

theorem preserved_original_port (inputs : Nat → Word) (index : Nat) (bound : index<118)
    (notPhase : index≠0) (notCounter : index≠2) (notWork : ¬(35≤index ∧ index<79)) :
    (program.eval inputs).getD index 0=inputs index :=
  (state_word inputs index bound).trans (original_preserved inputs index bound notPhase notCounter notWork)

end Core033.AuthenticatedBranchPorts
