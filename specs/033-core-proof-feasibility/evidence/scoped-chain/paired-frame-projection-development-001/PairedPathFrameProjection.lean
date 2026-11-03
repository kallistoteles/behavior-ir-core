import Core033.PairedPathRouteMeaning

namespace Core033.PairedPathFrameProjection
open WordIR PairedPathRouteMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

/- Only the phase word depends on second/third masks. The frame words use
immutable original data and one old/new selector, all below physical port47. -/
theorem frame_congr (left right : Nat → Word) (newMask secondLeft thirdLeft secondRight thirdRight : Word)
    (same : ∀ index,0<index → index<47 → left index=right index)
    (index : Nat) (positive : 0<index) (bound : index<35) :
    project left newMask secondLeft thirdLeft index=project right newMask secondRight thirdRight index := by
  unfold project
  simp only [if_neg (by omega : index≠0)]
  by_cases h1 : index<11
  · simp only [if_pos h1]
    exact same index positive (by omega)
  · simp only [if_neg h1]
    by_cases h2 : index<19
    · simp only [if_pos h2]
      exact select_congr _ _ _ _ _ (same (index+12) (by omega) (by omega)) (same index positive (by omega))
    · simp only [if_neg h2]
      by_cases h3 : index<27
      · simp only [if_pos h3]
        exact same _ (by omega) (by omega)
      · simp only [if_neg h3]
        by_cases h4 : index=27
        · simp only [if_pos h4]
          exact select_congr _ _ _ _ _ (same 31 (by decide) (by decide)) (same 19 (by decide) (by decide))
        · simp only [if_neg h4]
          by_cases h5 : index=28
          · simp only [if_pos h5]
            exact select_congr _ _ _ _ _ (same 32 (by decide) (by decide)) (same 20 (by decide) (by decide))
          · simp only [if_neg h5]
            by_cases h6 : index=29
            · simp only [if_pos h6]
              exact same 43 (by decide) (by decide)
            · simp only [if_neg h6]
              by_cases h7 : index=30
              · simp only [if_pos h7]
                exact same 44 (by decide) (by decide)
              · simp only [if_neg h7]
                by_cases h8 : index=31
                · simp only [if_pos h8]
                  exact select_congr _ _ _ _ _ (same 33 (by decide) (by decide)) (same 21 (by decide) (by decide))
                · simp only [if_neg h8]
                  by_cases h9 : index=32
                  · simp only [if_pos h9]
                    exact same 45 (by decide) (by decide)
                  · simp only [if_neg h9]
                    by_cases h10 : index=33
                    · simp only [if_pos h10]
                      exact select_congr _ _ _ _ _ (same 34 (by decide) (by decide)) (same 22 (by decide) (by decide))
                    · simp only [if_neg h10]
                      have last : index=34 := by omega
                      simp only [if_pos last]
                      exact same 46 (by decide) (by decide)

end Core033.PairedPathFrameProjection
