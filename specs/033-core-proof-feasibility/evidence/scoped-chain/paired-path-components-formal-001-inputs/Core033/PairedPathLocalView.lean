import Core033.PairedPathRouteMeaning

namespace Core033.PairedPathLocalView
open WordIR PairedPathRound PairedPathRouting PairedPathRouteMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def newMask (inputs : Nat → Word) := WordControl.boolWord (decide (inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6))
def secondMask (inputs : Nat → Word) := WordControl.boolWord (decide (inputs 0=2 ∨ inputs 0=5))
def thirdMask (inputs : Nat → Word) := WordControl.boolWord (decide (inputs 0=3 ∨ inputs 0=6))

theorem project_original (inputs : Nat → Word) (newMask secondMask thirdMask : Word)
    (index : Nat) (positive : 0<index) (bound : index<11) :
    project inputs newMask secondMask thirdMask index=inputs index := by
  simp only [project,if_neg (by omega : index≠0),if_pos bound]

theorem original_word (inputs : Nat → Word) (index : Nat) (positive : 0<index) (bound : index<11) :
    routedWord inputs index=inputs index :=
  (exact_original_operands inputs index (by omega)).trans
    (project_original inputs _ _ _ index positive bound)

theorem project_sha (inputs : Nat → Word) (newMask secondMask thirdMask : Word)
    (index : Nat) (bound : index<8) :
    project inputs newMask secondMask thirdMask (35+index)=inputs (47+index) := by
  simp only [project,if_neg (by omega : 35+index≠0),if_neg (by omega : ¬35+index<11),
    if_neg (by omega : ¬35+index<19),if_neg (by omega : ¬35+index<27),
    if_neg (by omega : 35+index≠27),if_neg (by omega : 35+index≠28),
    if_neg (by omega : 35+index≠29),if_neg (by omega : 35+index≠30),
    if_neg (by omega : 35+index≠31),if_neg (by omega : 35+index≠32),
    if_neg (by omega : 35+index≠33),if_neg (by omega : 35+index≠34),Nat.add_sub_cancel_left]

theorem sha_word (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    routedWord inputs (35+index)=inputs (47+index) :=
  (exact_original_operands inputs (35+index) (by omega)).trans
    (project_sha inputs _ _ _ index bound)

theorem project_phase (inputs : Nat → Word) (newMask secondMask thirdMask : Word) :
    project inputs newMask secondMask thirdMask 0=
      ControlPrimitives.selectRaw thirdMask 3 (ControlPrimitives.selectRaw secondMask 2 1) := rfl

def localPhase (inputs : Nat → Word) : Word :=
  if inputs 0=3 ∨ inputs 0=6 then 3 else if inputs 0=2 ∨ inputs 0=5 then 2 else 1

theorem phase_word (inputs : Nat → Word) : routedWord inputs 0=localPhase inputs := by
  have original:=exact_original_operands inputs 0 (by decide)
  have projection:=project_phase inputs (newMask inputs) (secondMask inputs) (thirdMask inputs)
  have inner:=WordControl.select_word_exact (decide (inputs 0=2 ∨ inputs 0=5)) (2 : Word) 1
  have combined:=(congrArg (fun word=>ControlPrimitives.selectRaw (thirdMask inputs) 3 word) inner).trans
    (WordControl.select_word_exact (decide (inputs 0=3 ∨ inputs 0=6)) (3 : Word)
      (if decide (inputs 0=2 ∨ inputs 0=5) then 2 else 1))
  exact original.trans (projection.trans (by simpa only [decide_eq_true_eq,localPhase] using combined))

end Core033.PairedPathLocalView
