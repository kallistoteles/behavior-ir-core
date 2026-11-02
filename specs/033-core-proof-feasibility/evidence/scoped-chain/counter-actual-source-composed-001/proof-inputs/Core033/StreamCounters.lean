import Core033.HashStream
import Core033.WideGuards

namespace Core033.StreamCounters
open WideControl WideGuards

structure Encoded where
  processed : Pair
  remaining : Pair

def Represents (encoded : Encoded) (state : HashStream.State) : Prop :=
  encoded.processed.raw=state.processed ∧ encoded.remaining.raw=state.remaining

def start (message : SHA256.Bytes) : Encoded := ⟨ofRaw 0,ofRaw (HashStream.blockCount message)⟩
def next (encoded : Encoded) : Encoded := ⟨increment encoded.processed,decrement encoded.remaining⟩
def readyFlag (encoded : Encoded) : WordControl.Word := WideGuards.zeroWord encoded.remaining

theorem profile_count_bound (message : SHA256.Bytes) (profile : message.length≤1073741824) :
    HashStream.blockCount message<2^64-1 := by
  have zeros:=SHA256.zero_count_bound message.length
  have length:=SHA256.padded_size message
  unfold HashStream.blockCount
  omega

theorem start_represents (message : SHA256.Bytes) (profile : message.length≤1073741824) :
    Represents (start message) (HashStream.start message) := by
  have bound:=profile_count_bound message profile
  constructor
  · rfl
  · change (ofRaw (HashStream.blockCount message)).raw=HashStream.blockCount message
    rw [of_raw_value,Nat.mod_eq_of_lt (by omega)]

theorem next_represents (message : SHA256.Bytes) (state : HashStream.State) (encoded : Encoded)
    (valid : HashStream.Valid message state) (profile : message.length≤1073741824)
    (represented : Represents encoded state) (pending : 0<state.remaining) :
    Represents (next encoded) (HashStream.next state) := by
  have limits:=HashStream.processing_partition message state valid
  have bound:=profile_count_bound message profile
  constructor
  · change (increment encoded.processed).raw=state.processed+1
    rw [increment_without_wrap _ (by have same:=represented.1;omega),represented.1]
  · change (decrement encoded.remaining).raw=state.remaining-1
    rw [decrement_without_wrap _ (by have same:=represented.2;omega),represented.2]

theorem all_step_guards_allowed (message : SHA256.Bytes) (state : HashStream.State) (encoded : Encoded)
    (valid : HashStream.Valid message state) (profile : message.length≤1073741824)
    (represented : Represents encoded state) (pending : 0<state.remaining) :
    incrementAllowed encoded.processed=1 ∧ decrementAllowed encoded.remaining=1 := by
  have limits:=HashStream.processing_partition message state valid
  have bound:=profile_count_bound message profile
  have processedBound : encoded.processed.raw<2^64-1 := by have same:=represented.1;omega
  have remainingPositive : 0<encoded.remaining.raw := by have same:=represented.2;omega
  rw [increment_allowed_exact,decrement_allowed_exact]
  simp only [WordControl.boolWord,decide_eq_true processedBound,decide_eq_true remainingPositive]
  exact ⟨rfl,rfl⟩

theorem ready_flag_exact (state : HashStream.State) (encoded : Encoded)
    (represented : Represents encoded state) :
    readyFlag encoded=WordControl.boolWord (decide (state.remaining=0)) := by
  unfold readyFlag
  rw [WideGuards.zero_word_exact,represented.2]

theorem ready_flag_cannot_skip_pending (state : HashStream.State) (encoded : Encoded)
    (represented : Represents encoded state) (pending : 0<state.remaining) : readyFlag encoded=0 := by
  rw [ready_flag_exact state encoded represented]
  have nonzero : state.remaining≠0 := by omega
  simp only [WordControl.boolWord,decide_eq_false nonzero]
  rfl

end Core033.StreamCounters
