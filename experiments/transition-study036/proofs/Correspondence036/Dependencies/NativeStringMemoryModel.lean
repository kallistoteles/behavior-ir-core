module
public import NativeStringBorrow
@[expose] public section

/- A source memory interpretation for the checked, read-only borrow fragment.
It is not an admission of native memory/compiler adequacy. Invalid reads and
casts are undefined in this partial semantics, never successful Core results. -/
namespace Correspondence036.NativeStringMemory
open Aeneas.Std

structure Pointer where
  address : Nat
  allocation : Option Nat
  offset : Nat
  deriving DecidableEq

inductive Value where
  | word : Nat → Value
  | pointer : Pointer → Value
  | record : List Value → Value
  | objectRef : Nat → Value
  | rawSlice : Pointer → Nat → Value
  | slicePlace : Pointer → Nat → Value
  | bytesRef : Pointer → Nat → Nat → Value
  | strRef : Pointer → Nat → Nat → Value

structure Heap where
  objects : Nat → Option Value
  allocations : Nat → Option (List UInt8)

structure State where
  heap : Heap
  readable : Pointer → Nat → Bool
  scope : Nat
  locals : Nat → Option Value
  returned : Option Value

inductive Projection where
  | deref
  | field : Nat → Projection
  | metadata

inductive Instruction where
  | live : Nat → Instruction
  | dead : Nat → Instruction
  | copy : Nat → Nat → List Projection → Instruction
  | dataPointer : Nat → Nat → Instruction
  | slicePointer : Nat → Nat → Nat → Instruction
  | sharedBytes : Nat → Nat → Nat → Instruction
  | sharedStr : Nat → Nat → Instruction
  | returnValue : Nat → Instruction

def update (state : State) (local : Nat) (value : Option Value) : State :=
  { state with locals := fun index => if index = local then value else state.locals index }

def prefix (heap : Heap) (pointer : Pointer) (length : Nat) : Option (List UInt8) :=
  if length = 0 then some []
  else do
    let allocation ← pointer.allocation
    let bytes ← heap.allocations allocation
    if pointer.offset + length ≤ bytes.length then
      some ((bytes.drop pointer.offset).take length)
    else none

def readProjection (heap : Heap) (value : Value) (projection : Projection) : Option Value :=
  match projection, value with
  | .deref, .objectRef address => heap.objects address
  | .deref, .rawSlice pointer length => some (.slicePlace pointer length)
  | .field index, .record fields => fields[index]?
  | .metadata, .rawSlice _ length => some (.word length)
  | _, _ => none

def readPath (heap : Heap) : Value → List Projection → Option Value
  | value, [] => some value
  | value, step :: rest => do
    let projected ← readProjection heap value step
    readPath heap projected rest

def place (state : State) (local : Nat) (path : List Projection) : Option Value := do
  let value ← state.locals local
  readPath state.heap value path

def step (instruction : Instruction) (state : State) : Option State :=
  match instruction with
  | .live local | .dead local => some (update state local none)
  | .copy destination source path => do
    let value ← place state source path
    some (update state destination (some value))
  | .dataPointer destination source => do
    let .record [.pointer pointer] ← state.locals source | none
    if pointer.address ≠ 0 then
      some (update state destination (some (.pointer pointer)))
    else none
  | .slicePointer destination pointerLocal lengthLocal => do
    let .pointer pointer ← state.locals pointerLocal | none
    let .word length ← state.locals lengthLocal | none
    if length ≤ Usize.max then
      some (update (update state lengthLocal none) destination
        (some (.rawSlice pointer length)))
    else none
  | .sharedBytes destination sliceLocal metadataLocal => do
    let .slicePlace pointer length ← place state sliceLocal [.deref] | none
    let .word metadata ← place state metadataLocal [.metadata] | none
    if metadata = length ∧ (length = 0 ∨ state.readable pointer length = true) then
      let _ ← prefix state.heap pointer length
      some (update state destination (some (.bytesRef pointer length state.scope)))
    else none
  | .sharedStr destination source => do
    let .bytesRef pointer length scope ← state.locals source | none
    let bytes ← prefix state.heap pointer length
    if (String.fromUTF8? bytes.toByteArray).isSome then
      some (update state destination (some (.strRef pointer length scope)))
    else none
  | .returnValue local => do
    let value ← state.locals local
    some { state with returned := some value }

def execute : List Instruction → State → Option State
  | [], state => some state
  | instruction :: rest, state => do
    let next ← step instruction state
    execute rest next

/- The unobserved capacity, allocator and marker fields remain arbitrary. No
projection in this program reads them, and the interpreter never writes heap. -/
def stringCell (pointer : Pointer) (length : Nat)
    (capacity allocator rawMarker uniqueMarker : Value) : Value :=
  .record [.record [
    .record [.record [.record [.record [.pointer pointer], uniqueMarker],
      capacity, allocator], rawMarker], .word length]]

def initial (heap : Heap) (readable : Pointer → Nat → Bool)
    (scope object : Nat) : State := {
  heap := heap
  readable := readable
  scope := scope
  locals := fun local => if local = 1 then some (.objectRef object) else none
  returned := none
}

def Representation (heap : Heap) (readable : Pointer → Nat → Bool)
    (object : Nat) (pointer : Pointer) (text : String)
    (capacity allocator rawMarker uniqueMarker : Value) : Prop :=
  heap.objects object = some (stringCell pointer
    (NativeStringBorrow.ownedBytes text).length capacity allocator rawMarker uniqueMarker) ∧
  pointer.address ≠ 0 ∧
  (NativeStringBorrow.ownedBytes text).length ≤ Usize.max ∧
  ((NativeStringBorrow.ownedBytes text).length = 0 ∨
    readable pointer (NativeStringBorrow.ownedBytes text).length = true) ∧
  prefix heap pointer (NativeStringBorrow.ownedBytes text).length =
    some (NativeStringBorrow.ownedBytes text)

def projectedStr (heap : Heap) (value : Value) : Option Str := do
  let .strRef pointer length _ := value | none
  let bytes ← prefix heap pointer length
  if bound : bytes.length ≤ Usize.max then
    some (Slice.from (bytes.map NativeStringBorrow.toRustByte) (by simpa using bound))
  else none

end Correspondence036.NativeStringMemory
