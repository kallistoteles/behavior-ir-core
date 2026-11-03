import Core033.FrameHashController

namespace Core033.FrameHashControllerControl
open WordIR WordStage FrameHashController
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem select_meaning (values : Nat → Word) (first later : Expr) :
    (select first later).eval values=if values phasePort=2 then later.eval values else first.eval values := by
  change ControlPrimitives.selectRaw (WordEquality.equalWord (values phasePort) 2) (later.eval values) (first.eval values)=_
  rw [WordEquality.equal_word_exact]
  change WordControl.selectWord (decide (values phasePort=2)) (later.eval values) (first.eval values)=_
  rw [WordControl.select_word_exact]
  by_cases same : values phasePort=2 <;> simp [same]

theorem next_phase (values : Nat → Word) : phaseExpression.eval values=if values phasePort=2 then 3 else 2 :=
  select_meaning values (.literal 2) (.literal 3)

theorem phase_admission (values : Nat → Word) :
    admissionExpression.eval values=1 ↔ values phasePort=1 ∨ values phasePort=2 := by
  change WordEquality.equalWord (values phasePort) 1 ^^^ WordEquality.equalWord (values phasePort) 2=1 ↔ _
  rw [WordEquality.equal_word_exact,WordEquality.equal_word_exact]
  by_cases first : values phasePort=1
  · have second : values phasePort≠2 := by rw [first];decide
    simp [first,second,WordControl.boolWord]
  · by_cases second : values phasePort=2
    · simp [first,second,WordControl.boolWord]
    · simp only [decide_eq_false first,decide_eq_false second,WordControl.boolWord,Bool.false_eq_true,if_false]
      change ((0 : Word)=1 ↔ False)
      decide

theorem state_selection (values : Nat → Word) (index : Nat) :
    (stateExpression index).eval values=if values phasePort=2 then values (shaPort index)
      else (SHA256.stateWords SHA256.initial).getD index 0 :=
  select_meaning values _ _

theorem byte_selection (values : Nat → Word) (index : Nat) :
    (byteExpression index).eval values=if values phasePort=2 then (finalByteExpression index).eval values
      else values (frameRegister index) :=
  select_meaning values _ _

end Core033.FrameHashControllerControl
