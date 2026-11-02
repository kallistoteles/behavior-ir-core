import Core033.SHA256

/- Exact stream/control refinement for repeated checked SHA compression steps.
These equations are mathematical obligations; native stream/counter framing and
its actual field rows still require their own artifact correspondence. -/
namespace Core033.HashStream
open SHA256

structure State where
  processed : Nat
  remaining : Nat
  current : HashState
  buffer : Bytes

def blockCount (message : Bytes) : Nat := (pad message).length/64

def Valid (message : Bytes) (state : State) : Prop :=
  state.processed+state.remaining=blockCount message ∧
  state.current=blocks initial (pad message) state.processed ∧
  state.buffer=(pad message).drop (64*state.processed)

def start (message : Bytes) : State := ⟨0,blockCount message,initial,pad message⟩
def next (state : State) : State :=
  ⟨state.processed+1,state.remaining-1,compress state.current (parseBlock state.buffer),state.buffer.drop 64⟩

def Ready (state : State) : Prop := state.remaining=0

theorem start_valid (message : Bytes) : Valid message (start message) := by
  simp [Valid,start,SHA256.blocks]

theorem processing_partition (message : Bytes) (state : State) (valid : Valid message state) :
    state.processed≤blockCount message ∧ state.remaining≤blockCount message := by
  have count:=valid.1
  omega

theorem pending_full_block (message : Bytes) (state : State) (valid : Valid message state)
    (pending : 0<state.remaining) : 64≤state.buffer.length := by
  have division:=Nat.mod_add_div (pad message).length 64
  rw [padding_alignment] at division
  have count:=valid.1
  rw [valid.2.2,List.length_drop]
  unfold blockCount at count
  omega

theorem next_valid (message : Bytes) (state : State) (valid : Valid message state)
    (pending : 0<state.remaining) : Valid message (next state) := by
  obtain ⟨count,current,buffer⟩:=valid
  refine ⟨?_,?_,?_⟩
  · change state.processed+1+(state.remaining-1)=blockCount message
    omega
  · change compress state.current (parseBlock state.buffer)=blocks initial (pad message) (state.processed+1)
    rw [current,buffer,SHA256.blocks_split initial (pad message) state.processed 1]
    rfl
  · change state.buffer.drop 64=(pad message).drop (64*(state.processed+1))
    rw [buffer,List.drop_drop]
    congr 1

theorem ready_consumed_all (message : Bytes) (state : State) (valid : Valid message state)
    (ready : Ready state) : state.processed=blockCount message ∧ state.buffer=[] := by
  have complete : state.processed=blockCount message := by unfold Ready at ready;have :=valid.1;omega
  refine ⟨complete,?_⟩
  rw [valid.2.2,complete]
  exact SHA256.padding_all_consumed message

theorem ready_exact_digest (message : Bytes) (state : State) (valid : Valid message state)
    (ready : Ready state) : stateBytes state.current=digestBytes message := by
  have consumed:=ready_consumed_all message state valid ready
  rw [valid.2.1,consumed.1]
  rfl

theorem unfinished_has_no_result (state : State) (pending : 0<state.remaining) : ¬Ready state := by
  unfold Ready
  omega

theorem bounded_counters (message : Bytes) (state : State) (valid : Valid message state)
    (profile : message.length≤1073741824) : state.processed<2^64 ∧ state.remaining<2^64 := by
  have partition:=processing_partition message state valid
  have zeros : zeroCount message.length<64 := Nat.mod_lt _ (by decide)
  have size:=padded_size message
  unfold blockCount at partition
  omega

inductive Trace : State → State → Nat → Prop where
  | empty (state) : Trace state state 0
  | step (before middle after count) (pending : 0<before.remaining)
      (same : middle=next before) (tail : Trace middle after count) : Trace before after (count+1)

theorem trace_exact_counters {before after : State} {count : Nat} (trace : Trace before after count) :
    after.processed=before.processed+count ∧ after.remaining+count=before.remaining := by
  induction trace with
  | empty state => simp
  | step before middle after count pending same tail ih =>
    subst middle
    simp only [next] at ih
    constructor <;> omega

theorem trace_preserves (message : Bytes) {before after : State} {count : Nat}
    (trace : Trace before after count) (valid : Valid message before) : Valid message after := by
  induction trace with
  | empty => exact valid
  | step before middle after count pending same tail ih =>
    apply ih
    rw [same]
    exact next_valid message before valid pending

theorem complete_trace_exact_steps (message : Bytes) (after : State) (count : Nat)
    (trace : Trace (start message) after count) (ready : Ready after) :
    count=blockCount message ∧ stateBytes after.current=digestBytes message := by
  have valid:=trace_preserves message trace (start_valid message)
  have counters:=trace_exact_counters trace
  have all:=ready_consumed_all message after valid ready
  refine ⟨?_,ready_exact_digest message after valid ready⟩
  simpa only [start,Nat.zero_add] using counters.1.symm.trans all.1

end Core033.HashStream
