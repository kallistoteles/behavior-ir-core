import Core033.WordSource

namespace Core033.WordSourceValidity
open WordIR WordSource

theorem lower_bounded (operation : WordIR.Op) (bound : Nat) :
    (lower operation).Bounded bound ↔ operation.Bounded bound := by
  cases operation <;> rfl

theorem topology_of_positions (operations : List WordIR.Op) : ∀ first,
    (∀ (index : Nat) (operation : WordIR.Op),operations[index]?=some operation → operation.Bounded (first+index)) →
      WordIR.Topological first operations := by
  induction operations with
  | nil => intro first positions;trivial
  | cons operation rest ih =>
    intro first positions
    constructor
    · simpa only [Nat.add_zero] using positions 0 operation (by simp)
    · apply ih (first+1)
      intro index next found
      have atNext:=positions (index+1) next (by simpa using found)
      simpa only [Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using atNext

theorem safe_program_valid (program : WordIR.Program) (safe : (lowerFunction program).Safe) : program.Valid := by
  constructor
  · apply topology_of_positions program.operations program.inputCount
    intro index operation found
    have lowerFound : (program.operations.map lower)[index]?=some (lower operation) := by
      simp only [List.getElem?_map,found,Option.map_some]
    exact (lower_bounded operation _).mp (safe.2.2.2 index (lower operation) lowerFound).1
  · simpa only [lowerFunction,List.length_map] using safe.2.2.1

end Core033.WordSourceValidity
