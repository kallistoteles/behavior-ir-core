module
public import CORE036_MODULE_PREFIX.RecursiveDictionaryTypes
public meta import CORE036_MODULE_PREFIX.NonPosForwardProjection
@[expose] public section
open Aeneas Aeneas.Std
set_option Aeneas.customDoElab false
set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
noncomputable section
namespace Core036RecursiveDictionary

-- A diagnostic of the proposed lowering, not a native Value replacement.
def entryWith {Target : Type} (recursiveArg : Encoder Payload)
    (driverArg : Driver Target) (payloadArg : Payload) (stateArg : Target) : Result Nat :=
  Driver.entry driverArg recursiveArg payloadArg stateArg
nonpos_continuity entryWith

def loopBodyWith {Target : Type} (recursiveArg : Encoder Payload)
    (driverArg : Driver Target) (stateArg : Target) (pending : Option Payload) : Result Nat :=
  match pending with
  | none => .ok 0
  | some payloadArg => entryWith recursiveArg driverArg payloadArg stateArg
nonpos_continuity loopBodyWith

def loopWith {Target : Type} (recursiveArg : Encoder Payload)
    (driverArg : Driver Target) (stateArg : Target) (payloadArg : Payload) : Result Nat :=
  loopBodyWith recursiveArg driverArg stateArg (some payloadArg)
nonpos_continuity loopWith

def encodeWith {Target : Type} (recursiveArg : Encoder Payload)
    (driverArg : Driver Target) (stateArg : Target) (payloadArg : Payload) : Result Nat :=
  match payloadArg with
  | .leaf valueArg => .ok valueArg
  | .array childArg => loopWith recursiveArg driverArg stateArg childArg
  | .object childArg => entryWith recursiveArg driverArg childArg stateArg
nonpos_continuity encodeWith

def encoderStep (recursiveArg : Encoder Payload) : Encoder Payload :=
  Encoder.mk (encodeWith recursiveArg) (by nonpos_cont 5000)
nonpos_continuity encoderStep

theorem encoderStep_cont : NonPos.Cont encoderStep := by
  nonpos_cont 5000

set_option backward.proofsInPublic true in
def valueEncoder : Encoder Payload := encoderStep valueEncoder
partial_fixpoint monotonicity NonPos.Cont.monotone (by nonpos_cont 5000)

theorem leaf_exact {Target : Type} (driverArg : Driver Target)
    (stateArg : Target) (valueArg : Nat) :
    Encoder.encode valueEncoder driverArg stateArg (.leaf valueArg) = .ok valueArg := by
  rw [valueEncoder.eq_def]
  simp [encoderStep, encodeWith]

theorem array_exact {Target : Type} (driverArg : Driver Target)
    (stateArg : Target) (childArg : Payload) :
    Encoder.encode valueEncoder driverArg stateArg (.array childArg) =
      Driver.entry driverArg valueEncoder childArg stateArg := by
  conv =>
    lhs
    rw [valueEncoder.eq_def]
  simp [encoderStep, encodeWith, loopWith, loopBodyWith, entryWith]

theorem object_exact {Target : Type} (driverArg : Driver Target)
    (stateArg : Target) (childArg : Payload) :
    Encoder.encode valueEncoder driverArg stateArg (.object childArg) =
      Driver.entry driverArg valueEncoder childArg stateArg := by
  conv =>
    lhs
    rw [valueEncoder.eq_def]
  simp [encoderStep, encodeWith, entryWith]
end Core036RecursiveDictionary
