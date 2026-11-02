import Core033.ControlPrimitives
import Core033.StreamCounters

namespace Core033.CounterProgram
open WordIR WordStage

def pairZero (low high : WordStage.Expr) : WordStage.Expr :=
  .band (ControlPrimitives.zero low) (ControlPrimitives.zero high)

def increment (low high : WordStage.Expr) : WordStage.Expr × WordStage.Expr :=
  (.badd low (.literal 1),.badd (.badd high (.literal 0)) (ControlPrimitives.carry low (.literal 1)))

def decrement (low high : WordStage.Expr) : WordStage.Expr × WordStage.Expr :=
  (.badd low (.literal 0xffffffff),
   .badd (.badd high (.literal 0xffffffff)) (ControlPrimitives.carry low (.literal 0xffffffff)))

def expressions : List WordStage.Expr :=
  let processed:=increment (.input 0) (.input 1)
  let remaining:=decrement (.input 2) (.input 3)
  let allowIncrement:=.bxor (pairZero processed.1 processed.2) (.literal 1)
  let allowDecrement:=.bxor (pairZero (.input 2) (.input 3)) (.literal 1)
  [processed.1,processed.2,allowIncrement,remaining.1,remaining.2,allowDecrement,
    pairZero remaining.1 remaining.2,.band allowIncrement allowDecrement]

def program : WordIR.Program := WordSequence.program 4 expressions

def encoded (inputs : Nat → Word) : StreamCounters.Encoded :=
  ⟨⟨inputs 0,inputs 1⟩,⟨inputs 2,inputs 3⟩⟩

def expected (inputs : Nat → Word) : List Word :=
  let counters:=encoded inputs
  let after:=StreamCounters.next counters
  [after.processed.low,after.processed.high,WideGuards.incrementAllowed counters.processed,
    after.remaining.low,after.remaining.high,WideGuards.decrementAllowed counters.remaining,
    StreamCounters.readyFlag after,
    WideGuards.incrementAllowed counters.processed &&& WideGuards.decrementAllowed counters.remaining]

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 4 := by
  simp [expressions,increment,decrement,pairZero,ControlPrimitives.zero,ControlPrimitives.less,
    ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 4 expressions expressions_bounded]
  rfl

theorem exact_stream_counter_step (message : SHA256.Bytes) (state : HashStream.State) (inputs : Nat → Word)
    (valid : HashStream.Valid message state) (profile : message.length≤1073741824)
    (represented : StreamCounters.Represents (encoded inputs) state) (pending : 0<state.remaining) :
    StreamCounters.Represents (StreamCounters.next (encoded inputs)) (HashStream.next state) ∧
    (expected inputs).getD 2 0=1 ∧ (expected inputs).getD 5 0=1 := by
  have updated:=StreamCounters.next_represents message state (encoded inputs) valid profile represented pending
  have allowed:=StreamCounters.all_step_guards_allowed message state (encoded inputs) valid profile represented pending
  exact ⟨updated,allowed.1,allowed.2⟩

end Core033.CounterProgram
