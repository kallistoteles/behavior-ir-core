module
public import Aeneas.NonPos.Std
@[expose] public section
namespace Core036QualifiedNames
open Aeneas.Std

nonpos_structure Atomic (Self : Type) : Type 1 where
  run : Self → Result Nat

def atomicNat : Atomic Nat := Atomic.mk (fun n => Result.ok n) (by nonpos_cont)
theorem atomic_exact (n : Nat) : Atomic.run atomicNat n = Result.ok n := by
  simp [atomicNat]

mutual
nonpos_structure left.Dictionary (Self : Type) : Type 1 where
  run : ∀ {__nonpos_family_0 : Type}, right.Dictionary __nonpos_family_0 →
    __nonpos_family_0 → Self → Result Nat
nonpos_structure right.Dictionary (Self : Type) : Type 1 where
  run : ∀ {Other : Type}, left.Dictionary Other → Other → Self → Result Nat
end

def leftNat : left.Dictionary Nat :=
  left.Dictionary.mk (fun {_} _ _ n => Result.ok n) (by nonpos_cont)
def rightNat : right.Dictionary Nat :=
  right.Dictionary.mk (fun {_} _ _ n => Result.ok n) (by nonpos_cont)

theorem qualified_left_exact {T : Type} (d : right.Dictionary T) (x : T) (n : Nat) :
    left.Dictionary.run leftNat d x n = Result.ok n := by
  simp [leftNat]
theorem qualified_right_exact {T : Type} (d : left.Dictionary T) (x : T) (n : Nat) :
    right.Dictionary.run rightNat d x n = Result.ok n := by
  simp [rightNat]
end Core036QualifiedNames
