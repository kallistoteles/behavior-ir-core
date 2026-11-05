import Core033.PairedPathContinuation

/- Control trace of the actual six-phase/reload word models. This proves no
guard acceptance, original path membership, Init binding or public endpoint.
The final level executes six phases without reloading counter 256. -/
namespace Core033.PairedPathLoop
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def frames (inputs : Nat → Word) (siblings : Nat → Nat → Word) : Nat → Nat → Word
  | 0 => inputs
  | count+1 => PairedPathContinuation.nextFrame (frames inputs siblings count) (siblings count)

theorem phase (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (start : inputs 0=1) (count : Nat) : frames inputs siblings count 0=1 := by
  cases count with
  | zero => exact start
  | succ count => exact PairedPathContinuation.next_phase _ _

theorem counter (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (start : inputs 0=1) (zero : inputs 2=0) (count : Nat) (bound : count≤255) :
    (frames inputs siblings count 2).toNat=count := by
  induction count with
  | zero => simp only [frames,zero]; rfl
  | succ count ih =>
    have prior:=ih (by omega)
    change (PairedPathContinuation.nextFrame _ _ 2).toNat=count+1
    rw [PairedPathContinuation.next_unwrapped_counter _ _ (phase _ _ start count) (by omega)]
    omega

theorem reload_admitted (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (start : inputs 0=1) (zero : inputs 2=0) (count : Nat) (bound : count<255) :
    PairedPathContinuation.reloadInputs (frames inputs siblings count) (siblings count) 0=7 ∧
    0<(PairedPathContinuation.reloadInputs (frames inputs siblings count) (siblings count) 2).toNat ∧
    (PairedPathContinuation.reloadInputs (frames inputs siblings count) (siblings count) 2).toNat<256 := by
  apply PairedPathContinuation.reload_admission _ _ (phase _ _ start count)
  rw [counter _ _ start zero count (by omega)]
  exact bound

theorem address (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (count index : Nat) (bound : index<8) :
    frames inputs siblings count (3+index)=inputs (3+index) := by
  induction count with
  | zero => rfl
  | succ count ih =>
    exact (PairedPathContinuation.address_preserved _ _ index bound).trans ih

theorem context (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (count index : Nat) (bound : index<17) :
    frames inputs siblings count (79+index)=inputs (79+index) := by
  induction count with
  | zero => rfl
  | succ count ih =>
    exact (PairedPathContinuation.context_preserved _ _ index bound).trans ih

def terminal (inputs : Nat → Word) (siblings : Nat → Nat → Word) : Nat → Word :=
  PairedPathTrace.iterate 6 (frames inputs siblings 255)

theorem terminal_phase (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (start : inputs 0=1) : terminal inputs siblings 0=7 :=
  PairedPathTrace.complete_return_phase _ (phase _ _ start 255)

theorem terminal_counter (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (start : inputs 0=1) (zero : inputs 2=0) : (terminal inputs siblings 2).toNat=256 := by
  have prior:=counter inputs siblings start zero 255 (by decide)
  have final:=PairedPathCounterTrace.final_unwrapped_counter
    (frames inputs siblings 255) (phase _ _ start 255) (by omega)
  change (PairedPathTrace.iterate 6 (frames inputs siblings 255) 2).toNat=256
  omega

theorem terminal_context (inputs : Nat → Word) (siblings : Nat → Nat → Word)
    (index : Nat) (bound : index<17) :
    terminal inputs siblings (79+index)=inputs (79+index) := by
  exact (PairedPathTrace.original_iterate 6 _ (79+index)
    (by omega) (by omega) (by omega) (by omega)).trans (context _ _ 255 index bound)

end Core033.PairedPathLoop
