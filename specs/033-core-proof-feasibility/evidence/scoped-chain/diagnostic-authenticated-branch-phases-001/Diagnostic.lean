import Core033.AuthenticatedBranchRound

namespace Core033.AuthenticatedBranchPhases
open WordIR AuthenticatedBranchRound
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem admission_exact (inputs : Nat → Word) : admission.eval inputs=
    WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3 ∨ inputs 0=4 ∨ inputs 0=5 ∨
      inputs 0=6 ∨ inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9)) := by
  simp only [admission,ownActivation,newActivation,equalPhase,WordEquality.expression_meaning,WordStage.Expr.eval,
    WordEquality.equal_word_exact]
  by_cases h1 : inputs 0=1
  · rw [h1];decide
  · 
    by_cases h2 : inputs 0=2
    · rw [h2];decide
    · 
      by_cases h3 : inputs 0=3
      · rw [h3];decide
      · 
        by_cases h4 : inputs 0=4
        · rw [h4];decide
        · 
          by_cases h5 : inputs 0=5
          · rw [h5];decide
          · 
            by_cases h6 : inputs 0=6
            · rw [h6];decide
            · 
              by_cases h7 : inputs 0=7
              · rw [h7];decide
              · 
                by_cases h8 : inputs 0=8
                · rw [h8];decide
                · 
                  by_cases h9 : inputs 0=9
                  · rw [h9];decide
                  · have none : ¬(inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3 ∨ inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6 ∨ inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9) := by tauto
                    simp only [decide_eq_false h1,decide_eq_false h2,decide_eq_false h3,decide_eq_false h4,decide_eq_false h5,decide_eq_false h6,decide_eq_false h7,decide_eq_false h8,decide_eq_false h9,decide_eq_false none,
                      WordControl.boolWord,Bool.false_eq_true,if_false]
                    rfl

theorem new_activation_exact (inputs : Nat → Word) : newActivation.eval inputs=
    WordControl.boolWord (decide (inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9)) := by
  simp only [newActivation,equalPhase,WordEquality.expression_meaning,WordStage.Expr.eval,
    WordEquality.equal_word_exact]
  by_cases fourth : inputs 0=7
  · rw [fourth];decide
  · by_cases fifth : inputs 0=8
    · rw [fifth];decide
    · by_cases sixth : inputs 0=9
      · rw [sixth];decide
      · have none : ¬(inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9) := by tauto
        simp only [decide_eq_false fourth,decide_eq_false fifth,decide_eq_false sixth,
          decide_eq_false none,WordControl.boolWord,Bool.false_eq_true,if_false]
        rfl

end Core033.AuthenticatedBranchPhases
