import Core033.ControlPrimitives
import Core033.SignedGuards

namespace Core033.SignedProgram
open WordIR WordStage

def expressions : List WordStage.Expr :=
  [.band (.bxor (ControlPrimitives.sign (.input 1)) (.literal 1))
    (.bxor (.band (ControlPrimitives.zero (.input 0)) (ControlPrimitives.zero (.input 1))) (.literal 1))]

def program : WordIR.Program := WordSequence.program 2 expressions

def expected (inputs : Nat → Word) : List Word := [SignedGuards.positiveWord ⟨inputs 0,inputs 1⟩]

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 2 := by
  simp [expressions,ControlPrimitives.sign,ControlPrimitives.zero,ControlPrimitives.less,
    ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 2 expressions expressions_bounded]
  rfl

theorem exact_core_int64_rule (value : Reference.Int64) :
    SignedGuards.positiveWord (WideControl.ofRaw (Codec.rawSigned value))=
      WordControl.boolWord (decide (0<value.value)) := SignedGuards.exact_reference_int64 value

end Core033.SignedProgram
