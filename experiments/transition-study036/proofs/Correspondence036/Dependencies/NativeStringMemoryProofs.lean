module
public import NativeStringDerefProgram
@[expose] public section

/- Proof bodies follow the genuine missing-root run559. The declared memory
interpretation still requires separate native/compiler/caller justification. -/
namespace Correspondence036.NativeStringMemory
open Aeneas.Std

theorem word_limit : Usize.max = 18446744073709551615 := by
  simp [Usize.max, Usize.numBits, UScalarTy.numBits, System.Platform.numBits]

theorem deref_exact (heap : Heap) (readable : Pointer → Nat → Bool)
    (scope object : Nat) (pointer : Pointer) (text : String)
    (capacity allocator rawMarker uniqueMarker : Value)
    (valid : Representation heap readable object pointer text capacity allocator rawMarker uniqueMarker) :
    ∃ final, execute NativeStringMemorySource.program (initial heap readable scope object) = some final ∧
      final.heap = heap ∧ final.readable = readable ∧ final.scope = scope ∧
      final.returned = some (.strRef pointer (NativeStringBorrow.ownedBytes text).length scope) := by
  rcases valid with ⟨stored, nonnull, bounded, permission, bytes⟩
  have utf8 : (String.fromUTF8? (NativeStringBorrow.ownedBytes text).toByteArray).isSome = true := by
    simp
  refine ⟨_, ?_, rfl, rfl, rfl, rfl⟩
  simp [NativeStringMemorySource.program, execute, step, place, readPath,
    readProjection, initial, update, stringCell, stored, nonnull, bounded,
    permission, bytes, utf8]

theorem deref_projected (heap : Heap) (readable : Pointer → Nat → Bool)
    (scope object : Nat) (pointer : Pointer) (text : String)
    (capacity allocator rawMarker uniqueMarker : Value)
    (valid : Representation heap readable object pointer text capacity allocator rawMarker uniqueMarker) :
    ∃ final, execute NativeStringMemorySource.program (initial heap readable scope object) = some final ∧
      ∃ value, final.returned = some value ∧
        projectedStr final.heap value = some (NativeStringBorrow.borrow text valid.2.2.1) := by
  obtain ⟨final, run, frame, _, _, returned⟩ :=
    deref_exact heap readable scope object pointer text capacity allocator rawMarker uniqueMarker valid
  refine ⟨final, run, _, returned, ?_⟩
  rw [frame]
  simp [projectedStr, valid.2.2.2.2, valid.2.2.1, NativeStringBorrow.borrow]

theorem prefix_zero (heap : Heap) (pointer : Pointer) :
    «prefix» heap pointer 0 = some [] := by
  simp [«prefix»]

theorem deref_bytes (heap : Heap) (readable : Pointer → Nat → Bool)
    (scope object : Nat) (pointer : Pointer) (text : String)
    (capacity allocator rawMarker uniqueMarker : Value)
    (valid : Representation heap readable object pointer text capacity allocator rawMarker uniqueMarker) :
    ∃ final, execute NativeStringMemorySource.program (initial heap readable scope object) = some final ∧
      «prefix» final.heap pointer (NativeStringBorrow.ownedBytes text).length =
        some (NativeStringBorrow.ownedBytes text) := by
  obtain ⟨final, run, frame, _, _, _⟩ :=
    deref_exact heap readable scope object pointer text capacity allocator rawMarker uniqueMarker valid
  refine ⟨final, run, ?_⟩
  rw [frame]
  exact valid.2.2.2.2
end Correspondence036.NativeStringMemory
