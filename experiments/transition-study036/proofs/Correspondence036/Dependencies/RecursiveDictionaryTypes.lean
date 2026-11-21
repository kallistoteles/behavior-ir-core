module
public import Aeneas
public import Aeneas.NonPos.Std
@[expose] public section
namespace Core036RecursiveDictionary
open Aeneas.Std

inductive Payload where
  | leaf : Nat → Payload
  | array : Payload → Payload
  | object : Payload → Payload

mutual
nonpos_structure Encoder (Self : Type) : Type 1 where
  encode : ∀ {Target : Type}, Driver Target → Target → Self → Result Nat
nonpos_structure Driver (Self : Type) : Type 1 where
  entry : ∀ {Other : Type}, Encoder Other → Other → Self → Result Nat
end
end Core036RecursiveDictionary
