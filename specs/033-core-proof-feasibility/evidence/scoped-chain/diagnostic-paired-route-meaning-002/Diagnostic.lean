import Core033.PairedPathRouting
import Core033.PairedPathPhases

namespace Core033.PairedPathRouteMeaning
open WordIR WordStage PairedPathRound PairedPathRouting
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll

def project (inputs : Nat → Word) (newMask secondMask thirdMask : Word) (index : Nat) : Word :=
  if index=0 then ControlPrimitives.selectRaw thirdMask 3 (ControlPrimitives.selectRaw secondMask 2 1)
  else if index<11 then inputs index
  else if index<19 then ControlPrimitives.selectRaw newMask (inputs (index+12)) (inputs index)
  else if index<27 then inputs (35+(index-19))
  else if index=27 then ControlPrimitives.selectRaw newMask (inputs 31) (inputs 19)
  else if index=28 then ControlPrimitives.selectRaw newMask (inputs 32) (inputs 20)
  else if index=29 then inputs 43
  else if index=30 then inputs 44
  else if index=31 then ControlPrimitives.selectRaw newMask (inputs 33) (inputs 21)
  else if index=32 then inputs 45
  else if index=33 then ControlPrimitives.selectRaw newMask (inputs 34) (inputs 22)
  else if index=34 then inputs 46
  else inputs (47+(index-35))

theorem expression_projected (values : Nat → Word) (index : Nat) :
    (localExpression index).eval values=project values
      (values (selectors.1.getD 0 0)) (values (selectors.1.getD 1 0)) (values (selectors.1.getD 2 0)) index := by
  unfold localExpression project
  split_ifs <;> rfl

theorem project_congr (left right : Nat → Word) (newMask secondMask thirdMask : Word)
    (same : ∀ index,index<96 → left index=right index) (index : Nat) (bound : index<43) :
    project left newMask secondMask thirdMask index=project right newMask secondMask thirdMask index := by
  unfold project
  split_ifs <;> first | rfl | (congr 1 <;> apply same <;> omega) | (apply same;omega)

theorem original_projected (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    routedWord inputs index=project inputs
      (selectors.2.values inputs (selectors.1.getD 0 0))
      (selectors.2.values inputs (selectors.1.getD 1 0))
      (selectors.2.values inputs (selectors.1.getD 2 0)) index :=
  (expression_projected (selectors.2.values inputs) index).trans
    (project_congr _ inputs _ _ _ (original_at_selectors inputs) index bound)

end Core033.PairedPathRouteMeaning
