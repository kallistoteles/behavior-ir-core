import Core033.PairedPathRouting
import Core033.PairedPathPhases

namespace Core033.PairedPathRouteMeaning
open WordIR WordStage PairedPathRound PairedPathRouting
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll PairedPathRound.selectors

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
  by_cases h0 : index=0
  · simp only [if_pos h0]
    rfl
  · simp only [if_neg h0]
    by_cases h1 : index<11
    · simp only [if_pos h1]
      rfl
    · simp only [if_neg h1]
      by_cases h2 : index<19
      · simp only [if_pos h2]
        rfl
      · simp only [if_neg h2]
        by_cases h3 : index<27
        · simp only [if_pos h3]
          rfl
        · simp only [if_neg h3]
          by_cases h4 : index=27
          · simp only [if_pos h4]
            rfl
          · simp only [if_neg h4]
            by_cases h5 : index=28
            · simp only [if_pos h5]
              rfl
            · simp only [if_neg h5]
              by_cases h6 : index=29
              · simp only [if_pos h6]
                rfl
              · simp only [if_neg h6]
                by_cases h7 : index=30
                · simp only [if_pos h7]
                  rfl
                · simp only [if_neg h7]
                  by_cases h8 : index=31
                  · simp only [if_pos h8]
                    rfl
                  · simp only [if_neg h8]
                    by_cases h9 : index=32
                    · simp only [if_pos h9]
                      rfl
                    · simp only [if_neg h9]
                      by_cases h10 : index=33
                      · simp only [if_pos h10]
                        rfl
                      · simp only [if_neg h10]
                        by_cases h11 : index=34
                        · simp only [if_pos h11]
                          rfl
                        · simp only [if_neg h11]
                          rfl

theorem select_congr (mask a b c d : Word) (first : a=b) (second : c=d) :
    ControlPrimitives.selectRaw mask a c=ControlPrimitives.selectRaw mask b d := by
  cases first
  cases second
  rfl

theorem project_congr (left right : Nat → Word) (newMask secondMask thirdMask : Word)
    (same : ∀ index,index<96 → left index=right index) (index : Nat) (bound : index<43) :
    project left newMask secondMask thirdMask index=project right newMask secondMask thirdMask index := by
  unfold project
  by_cases h0 : index=0
  · simp only [if_pos h0]
    rfl
  · simp only [if_neg h0]
    by_cases h1 : index<11
    · simp only [if_pos h1]
      exact same index (by omega)
    · simp only [if_neg h1]
      by_cases h2 : index<19
      · simp only [if_pos h2]
        exact select_congr _ _ _ _ _ (same (index+12) (by omega)) (same index (by omega))
      · simp only [if_neg h2]
        by_cases h3 : index<27
        · simp only [if_pos h3]
          exact same _ (by omega)
        · simp only [if_neg h3]
          by_cases h4 : index=27
          · simp only [if_pos h4]
            exact select_congr _ _ _ _ _ (same 31 (by decide)) (same 19 (by decide))
          · simp only [if_neg h4]
            by_cases h5 : index=28
            · simp only [if_pos h5]
              exact select_congr _ _ _ _ _ (same 32 (by decide)) (same 20 (by decide))
            · simp only [if_neg h5]
              by_cases h6 : index=29
              · simp only [if_pos h6]
                exact same 43 (by decide)
              · simp only [if_neg h6]
                by_cases h7 : index=30
                · simp only [if_pos h7]
                  exact same 44 (by decide)
                · simp only [if_neg h7]
                  by_cases h8 : index=31
                  · simp only [if_pos h8]
                    exact select_congr _ _ _ _ _ (same 33 (by decide)) (same 21 (by decide))
                  · simp only [if_neg h8]
                    by_cases h9 : index=32
                    · simp only [if_pos h9]
                      exact same 45 (by decide)
                    · simp only [if_neg h9]
                      by_cases h10 : index=33
                      · simp only [if_pos h10]
                        exact select_congr _ _ _ _ _ (same 34 (by decide)) (same 22 (by decide))
                      · simp only [if_neg h10]
                        by_cases h11 : index=34
                        · simp only [if_pos h11]
                          exact same 46 (by decide)
                        · simp only [if_neg h11]
                          exact same _ (by omega)

theorem original_projected (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    routedWord inputs index=project inputs
      (selectors.2.values inputs (selectors.1.getD 0 0))
      (selectors.2.values inputs (selectors.1.getD 1 0))
      (selectors.2.values inputs (selectors.1.getD 2 0)) index :=
  (expression_projected (selectors.2.values inputs) index).trans
    (project_congr _ inputs _ _ _ (original_at_selectors inputs) index bound)

end Core033.PairedPathRouteMeaning
