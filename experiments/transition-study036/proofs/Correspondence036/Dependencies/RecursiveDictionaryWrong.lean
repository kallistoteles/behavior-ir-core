module
public import CORE036_MODULE_PREFIX.RecursiveDictionaryGood
open Aeneas.Std Core036RecursiveDictionary
example {Target : Type} (driverArg : Driver Target) (stateArg : Target) :
    Encoder.encode valueEncoder driverArg stateArg (.leaf 7) = .ok 8 := by
  simp [leaf_exact]
