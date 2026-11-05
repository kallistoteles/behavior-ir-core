import Core033.PairedPathCounterTrace
import Core033.PairedPathReloadGuards

/- Compose the actual word models of six paired phases and one reload.
This does not assert that the six phase matrices accepted: their guards,
initial leaf/expected anchor bindings and full terminal check remain required. -/
namespace Core033.PairedPathContinuation
open WordIR PairedPathTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def reloadInputs (inputs sibling : Nat → Word) (index : Nat) : Word :=
  if index<96 then iterate 6 inputs index else sibling (index-96)

def nextFrame (inputs sibling : Nat → Word) (index : Nat) : Word :=
  (PairedPathReload.program.eval (reloadInputs inputs sibling)).getD index 0

theorem state_word (inputs sibling : Nat → Word) (index : Nat) (bound : index<96) :
    nextFrame inputs sibling index=PairedPathReload.reloaded (reloadInputs inputs sibling) index :=
  PairedPathReloadGuards.state_output (reloadInputs inputs sibling) index bound

theorem next_phase (inputs sibling : Nat → Word) : nextFrame inputs sibling 0=1 :=
  (state_word inputs sibling 0 (by decide)).trans (PairedPathReload.next_phase _)

theorem next_counter (inputs sibling : Nat → Word) (start : inputs 0=1) :
    nextFrame inputs sibling 2=inputs 2+1 :=
  (state_word inputs sibling 2 (by decide)).trans
    ((PairedPathReload.counter_preserved _).trans (PairedPathCounterTrace.final_counter inputs start))

theorem next_unwrapped_counter (inputs sibling : Nat → Word) (start : inputs 0=1)
    (bound : (inputs 2).toNat<256) : (nextFrame inputs sibling 2).toNat=(inputs 2).toNat+1 :=
  (congrArg BitVec.toNat (next_counter inputs sibling start)).trans
    (PathCounterProgram.branch_coordinates (inputs 2) bound).1

theorem reload_admission (inputs sibling : Nat → Word) (start : inputs 0=1)
    (bound : (inputs 2).toNat<255) :
    reloadInputs inputs sibling 0=7 ∧ 0<(reloadInputs inputs sibling 2).toNat ∧
      (reloadInputs inputs sibling 2).toNat<256 := by
  have phase:=complete_return_phase inputs start
  have counter:=PairedPathCounterTrace.final_unwrapped_counter inputs start (by omega)
  constructor
  · exact phase
  · change 0<(iterate 6 inputs 2).toNat ∧ (iterate 6 inputs 2).toNat<256
    omega

theorem old_parent_becomes_child (inputs sibling : Nat → Word) (index : Nat) (bound : index<12) :
    nextFrame inputs sibling (11+index)=iterate 6 inputs (55+index) := by
  rw [state_word inputs sibling (11+index) (by omega),PairedPathReload.old_parent_becomes_child _ index bound]
  exact if_pos (by omega)

theorem new_parent_becomes_child (inputs sibling : Nat → Word) (index : Nat) (bound : index<12) :
    nextFrame inputs sibling (23+index)=iterate 6 inputs (67+index) := by
  rw [state_word inputs sibling (23+index) (by omega),PairedPathReload.new_parent_becomes_child _ index bound]
  exact if_pos (by omega)

theorem next_sibling_exact (inputs sibling : Nat → Word) (index : Nat) (bound : index<12) :
    nextFrame inputs sibling (35+index)=sibling index := by
  rw [state_word inputs sibling (35+index) (by omega),PairedPathReload.next_sibling_exact _ index bound]
  change (if 96+index<96 then _ else sibling (96+index-96))=sibling index
  rw [if_neg (by omega)]
  congr 1
  omega

theorem address_preserved (inputs sibling : Nat → Word) (index : Nat) (bound : index<8) :
    nextFrame inputs sibling (3+index)=inputs (3+index) := by
  rw [state_word inputs sibling (3+index) (by omega),
    PairedPathReload.original_preserved _ (3+index) (by omega) (by omega) (by omega) (by omega) (by omega)]
  change (if 3+index<96 then iterate 6 inputs (3+index) else _)=_
  rw [if_pos (by omega)]
  exact original_iterate 6 inputs (3+index) (by omega) (by omega) (by omega) (by omega)

theorem context_preserved (inputs sibling : Nat → Word) (index : Nat) (bound : index<17) :
    nextFrame inputs sibling (79+index)=inputs (79+index) := by
  rw [state_word inputs sibling (79+index) (by omega),
    PairedPathReload.original_preserved _ (79+index) (by omega) (by omega) (by omega) (by omega) (by omega)]
  change (if 79+index<96 then iterate 6 inputs (79+index) else _)=_
  rw [if_pos (by omega)]
  exact original_iterate 6 inputs (79+index) (by omega) (by omega) (by omega) (by omega)

end Core033.PairedPathContinuation
