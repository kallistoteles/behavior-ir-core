import Core033.AuthenticatedBranchOwnProjection

namespace Core033.AuthenticatedBranchOwnFrame
open WordIR AuthenticatedBranchOwnProjection
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem frame_congr (left right : Nat → Word) (leftPhase rightPhase : Word)
    (kind : left 1=right 1) (height : left 2=right 2)
    (record : ∀ index,index<22 → left (96+index)=right (96+index))
    (index : Nat) (positive : 0<index) (bound : index<35) :
    ownProject left leftPhase index=ownProject right rightPhase index := by
  unfold ownProject
  simp only [if_neg (by omega : index≠0)]
  by_cases first : index=1
  · simp only [if_pos first];exact kind
  · simp only [if_neg first]
    by_cases second : index=2
    · simp only [if_pos second]
      exact congrArg (fun word : Word=>word+4294967295) height
    · simp only [if_neg second]
      by_cases zero : index<11
      · simp only [if_pos zero]
      · simp only [if_neg zero]
        by_cases roots : index<27
        · simp only [if_pos roots]
          exact record _ (by omega)
        · simp only [if_neg roots]
          by_cases counts : index<31
          · simp only [if_pos counts]
            have offset : 112+(index-27)=96+(16+(index-27)) := by omega
            exact (congrArg left offset).trans ((record _ (by omega)).trans (congrArg right offset.symm))
          · simp only [if_neg counts]
            by_cases p : index=31
            · simp only [if_pos p];exact record 20 (by decide)
            · simp only [if_neg p]
              by_cases trueP : index=32
              · simp only [if_pos trueP]
              · simp only [if_neg trueP]
                by_cases c : index=33
                · simp only [if_pos c];exact record 21 (by decide)
                · simp only [if_neg c]
                  have last : index=34 := by omega
                  simp only [if_pos last]

theorem sha_projection (inputs : Nat → Word) (phase : Word) (index : Nat) (bound : index<8) :
    ownProject inputs phase (35+index)=inputs (47+index) := by
  simp only [ownProject,if_neg (by omega : 35+index≠0),if_neg (by omega : 35+index≠1),
    if_neg (by omega : 35+index≠2),if_neg (by omega : ¬35+index<11),
    if_neg (by omega : ¬35+index<27),if_neg (by omega : ¬35+index<31),
    if_neg (by omega : 35+index≠31),if_neg (by omega : 35+index≠32),
    if_neg (by omega : 35+index≠33),if_neg (by omega : 35+index≠34),Nat.add_sub_cancel_left]

end Core033.AuthenticatedBranchOwnFrame
