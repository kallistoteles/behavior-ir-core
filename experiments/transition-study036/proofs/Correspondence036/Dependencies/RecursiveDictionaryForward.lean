module
public import CORE036_MODULE_PREFIX.RecursiveDictionaryTypes
@[expose] public section
open Aeneas.Std
namespace Core036RecursiveDictionary
def forwardEntry {Target : Type} (driverArg : Driver Target)
    (payloadArg : Payload) (stateArg : Target) : Result Nat :=
  Driver.entry driverArg unavailableEncoder payloadArg stateArg
-- The dictionary would be defined after the function that needs it.
-- This is the intended forward-reference rejection, not an import failure.
end Core036RecursiveDictionary
