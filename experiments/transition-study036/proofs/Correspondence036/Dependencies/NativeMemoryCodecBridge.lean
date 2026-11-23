module
public import NativeStringCodec
public import NativeStringMemoryProofs
@[expose] public section

/- Model coherence only. Expected roots precede these bodies and actual564
compiled this context before rejecting the four missing declarations. -/
namespace Correspondence036.NativeMemoryCodecBridge
open Aeneas.Std

theorem bytes_coherent (text : String) :
    NativeStringBorrow.ownedBytes text = NativeKeyOrder.ownedBytes text := rfl

theorem borrow_coherent (text : String)
    (bound : (NativeStringBorrow.ownedBytes text).length ≤ Usize.max) :
    NativeStringBorrow.borrow text bound = NativeKeyOrder.borrow text bound := rfl

theorem result_coherent (text : String) :
    NativeStringBorrow.borrowResult text = NativeStringCodec.borrowResult text := rfl

theorem source_projected_codec (heap : NativeStringMemory.Heap)
    (readable : NativeStringMemory.Pointer → Nat → Bool)
    (scope object : Nat) (pointer : NativeStringMemory.Pointer) (text : String)
    (capacity allocator rawMarker uniqueMarker : NativeStringMemory.Value)
    (valid : NativeStringMemory.Representation heap readable object pointer text capacity allocator rawMarker uniqueMarker) :
    ∃ final, NativeStringMemory.execute NativeStringMemorySource.program
        (NativeStringMemory.initial heap readable scope object) = some final ∧
      ∃ value, final.returned = some value ∧
        NativeStringMemory.projectedStr final.heap value =
          some (NativeKeyOrder.borrow text valid.2.2.1) := by
  exact NativeStringMemory.deref_projected heap readable scope object pointer text
    capacity allocator rawMarker uniqueMarker valid
end Correspondence036.NativeMemoryCodecBridge
