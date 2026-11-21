module
public import CORE036_MODULE_PREFIX.RecursiveDictionaryTypes
@[expose] public section
open Aeneas Aeneas.Std Core036RecursiveDictionary
noncomputable section
def cannotPackageArbitraryMethod
    (unknownMethod : ∀ {Target : Type}, Driver Target → Target → Payload → Result Nat) :
    Encoder Payload := Encoder.mk unknownMethod (by nonpos_cont 5000)
