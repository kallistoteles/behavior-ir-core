import Core033.AuthenticatedBranchOwnContinuity
import Core033.OwnBranchRecord

namespace Core033.AuthenticatedBranchOwnReturn
open WordIR AuthenticatedBranchRound AuthenticatedBranchTrace AuthenticatedBranchOwnProjection
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def originalRaw (inputs : Nat → Word) := ownRaw inputs 1

theorem next_compressing (inputs : Nat → Word) (start : inputs 0=1) :
    AuthenticatedBranchOwnContinuity.Compressing (next inputs 0) :=
  Or.inr ((next_phase inputs).trans (congrArg (fun word : Word=>word+1) start))

theorem two_routed (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<43) :
    AuthenticatedBranchRouting.routedWord (next (next inputs)) index=
      PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs)) index := by
  have actual:=AuthenticatedBranchOwnContinuity.complete_local_continuation (next inputs) (next_compressing inputs start) index bound
  have same:=WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
    (AuthenticatedBranchRouting.routedWord (next inputs))
    (PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs))
    (AuthenticatedBranchOwnContinuity.complete_local_continuation inputs (Or.inl start))
  exact actual.trans (congrArg (fun words : List Word=>words.getD index 0) same)

theorem third_local (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) :
    AuthenticatedBranchStateMeaning.localWords (next (next inputs)) index=
      PathRoundDispatchTrace.next (PathRoundDispatchTrace.next
        (PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs))) index := by
  have same:=WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
    (AuthenticatedBranchRouting.routedWord (next (next inputs)))
    (PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs)))
    (two_routed inputs start)
  exact congrArg (fun words : List Word=>words.getD index 0) same

theorem step_congr (left right : Nat → Word) (same : ∀ index,index<43 → left index=right index)
    (index : Nat) : PathRoundDispatchTrace.next left index=PathRoundDispatchTrace.next right index :=
  congrArg (fun words : List Word=>words.getD index 0)
    (WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid left right same)

theorem initial_original (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<43) :
    AuthenticatedBranchRouting.routedWord inputs index=OwnBranchRouting.routed (originalRaw inputs) index :=
  (own_original_operands inputs (Or.inl start) index bound).trans
    (congrArg (fun phase=>OwnBranchRouting.routed (ownRaw inputs phase) index) start)

theorem third_original_return (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) :
    AuthenticatedBranchStateMeaning.localWords (next (next inputs)) index=OwnBranchHash.returned (originalRaw inputs) index := by
  have first:=step_congr (AuthenticatedBranchRouting.routedWord inputs)
    (OwnBranchRouting.routed (originalRaw inputs)) (initial_original inputs start)
  have second:=step_congr (PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs))
    (PathRoundDispatchTrace.next (OwnBranchRouting.routed (originalRaw inputs)))
    (by intro position _;exact first position)
  have third:=step_congr (PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs)))
    (PathRoundDispatchTrace.next (PathRoundDispatchTrace.next (OwnBranchRouting.routed (originalRaw inputs))))
    (by intro position _;exact second position) index
  exact (third_local inputs start index).trans third

theorem after_two_phase (inputs : Nat → Word) (start : inputs 0=1) : next (next inputs) 0=3 :=
  (phase_iterate 2 inputs).trans (congrArg (fun word : Word=>word+BitVec.ofNat 32 2) start)

theorem sibling_return (inputs : Nat → Word) (start : inputs 0=1) (index : Nat) (bound : index<12) :
    iterate 3 inputs (35+index)=OwnBranchHash.returned (originalRaw inputs) (parentIndex index) := by
  have assigned:=AuthenticatedBranchStateMeaning.sibling_word (next (next inputs)) index bound
  have selected : (if next (next inputs) 0=3 then
      AuthenticatedBranchStateMeaning.localWords (next (next inputs)) (parentIndex index)
      else next (next inputs) (35+index))=
        AuthenticatedBranchStateMeaning.localWords (next (next inputs)) (parentIndex index) := if_pos (after_two_phase inputs start)
  exact assigned.trans (selected.trans (third_original_return inputs start (parentIndex index)))

end Core033.AuthenticatedBranchOwnReturn
