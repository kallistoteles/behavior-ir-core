import Core033.PairedPathRound

namespace Core033.PairedPathPhases
open WordIR PairedPathRound
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem admission_exact (inputs : Nat → Word) : admission.eval inputs=
    WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3 ∨
      inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6)) := by
  simp only [admission,equalPhase,WordEquality.expression_meaning,WordStage.Expr.eval,
    WordEquality.equal_word_exact]
  by_cases first : inputs 0=1
  · rw [first];decide
  · by_cases second : inputs 0=2
    · rw [second];decide
    · by_cases third : inputs 0=3
      · rw [third];decide
      · by_cases fourth : inputs 0=4
        · rw [fourth];decide
        · by_cases fifth : inputs 0=5
          · rw [fifth];decide
          · by_cases sixth : inputs 0=6
            · rw [sixth];decide
            · have none : ¬(inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3 ∨
                  inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6) := by tauto
              simp only [decide_eq_false first,decide_eq_false second,decide_eq_false third,
                decide_eq_false fourth,decide_eq_false fifth,decide_eq_false sixth,decide_eq_false none,
                WordControl.boolWord,Bool.false_eq_true,if_false]
              rfl

theorem new_activation_exact (inputs : Nat → Word) : newActivation.eval inputs=
    WordControl.boolWord (decide (inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6)) := by
  simp only [newActivation,equalPhase,WordEquality.expression_meaning,WordStage.Expr.eval,
    WordEquality.equal_word_exact]
  by_cases fourth : inputs 0=4
  · rw [fourth];decide
  · by_cases fifth : inputs 0=5
    · rw [fifth];decide
    · by_cases sixth : inputs 0=6
      · rw [sixth];decide
      · have none : ¬(inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6) := by tauto
        simp only [decide_eq_false fourth,decide_eq_false fifth,decide_eq_false sixth,
          decide_eq_false none,WordControl.boolWord,Bool.false_eq_true,if_false]
        rfl

end Core033.PairedPathPhases
