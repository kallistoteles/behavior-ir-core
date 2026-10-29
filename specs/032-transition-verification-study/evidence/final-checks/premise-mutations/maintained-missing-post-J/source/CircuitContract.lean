import Checker
import Std.Tactic
namespace Core032

/-- Two complete limbs, rather than reduction of a 256-bit digest to one field. -/
def join128 (lo hi : Nat) : Nat := lo + 2^128 * hi

theorem two_limbs_injective (lo hi lo' hi' : Nat)
    (hlo : lo < 2^128) (hlo' : lo' < 2^128)
    (same : join128 lo hi = join128 lo' hi') : lo = lo' ∧ hi = hi' := by
  unfold join128 at same
  omega

def signed64 (word : Nat) : Int :=
  if word < 2^63 then (word : Int) else (word : Int) - 2^64

theorem signed64_range (word : Nat) (bound : word < 2^64) :
    -(2^63 : Int) ≤ signed64 word ∧ signed64 word < (2^63 : Int) := by
  unfold signed64
  split <;> omega

/-- Mathematical step relation. Its correspondence to Rust R1CS constraints is
reviewed/tested and remains trusted; this theorem does not verify Nova's compiler. -/
def boundedStep (capacity : Nat) (c : Config) (s : State) (op : Operation) (w : Witness) : Prop :=
  count s ≤ capacity ∧ check c s op w = true

theorem bounded_step_exact (capacity : Nat) (c : Config) (s : State) (op : Operation) (w : Witness)
    (accepted : boundedStep capacity c s op w) : w.proposed = reference c s op :=
  (checker_sound c s op w accepted.2).2

end Core032
