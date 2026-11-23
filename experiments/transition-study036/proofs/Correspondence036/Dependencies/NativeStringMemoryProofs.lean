module
public import NativeStringDerefProgram
@[expose] public section

/- Proof bodies follow the genuine missing-root run559. The declared memory
interpretation still requires separate native/compiler/caller justification. -/
namespace Correspondence036.NativeStringMemory
open Aeneas.Std

theorem word_limit (target64 : System.Platform.numBits = 64) :
    Usize.max = 18446744073709551615 := by
  simp [Usize.max, Usize.numBits, UScalarTy.numBits, target64]

private theorem execute_advance {instruction : Instruction} {before after : State}
    (rest : List Instruction) (checked : step instruction before = some after) :
    execute (instruction :: rest) before = execute rest after := by
  simp [execute, checked]

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
  let length := (NativeStringBorrow.ownedBytes text).length
  let put (locals : Nat → Option Value) (slot : Nat) (value : Option Value) :=
    fun index => if index = slot then value else locals index
  let machine (locals : Nat → Option Value) : State := {
    heap := heap, readable := readable, scope := scope, locals := locals, returned := none }
  let r0 := (initial heap readable scope object).locals
  let r1 := put r0 0 none
  let r2 := put r1 2 none
  let r3 := put r2 3 none
  let r4 := put r3 4 none
  let r5 := put r4 6 none
  let r6 := put r5 6 (some (.record [.pointer pointer]))
  let r7 := put r6 4 (some (.pointer pointer))
  let r8 := put r7 6 none
  let r9 := put r8 5 none
  let r10 := put r9 5 (some (.word length))
  let r11 := put (put r10 5 none) 3 (some (.rawSlice pointer length))
  let r12 := put r11 5 none
  let r13 := put r12 4 none
  let r14 := put r13 2 (some (.bytesRef pointer length scope))
  let r15 := put r14 3 none
  let r16 := put r15 0 (some (.strRef pointer length scope))
  let r17 := put r16 2 none
  let r18 := put r17 1 none
  let final : State := {
    heap := heap, readable := readable, scope := scope, locals := r18,
    returned := some (.strRef pointer length scope) }
  have h0 : step (.live 0) (initial heap readable scope object) = some (machine r1) := by
    simp [step, initial, update, put, machine, r0, r1]
  have h1 : step (.live 2) (machine r1) = some (machine r2) := by
    simp [step, initial, update, put, machine, r0, r1, r2]
  have h2 : step (.live 3) (machine r2) = some (machine r3) := by
    simp [step, initial, update, put, machine, r0, r1, r2, r3]
  have h3 : step (.live 4) (machine r3) = some (machine r4) := by
    simp [step, initial, update, put, machine, r0, r1, r2, r3, r4]
  have h4 : step (.live 6) (machine r4) = some (machine r5) := by
    simp [step, initial, update, put, machine, r0, r1, r2, r3, r4, r5]
  have h5 : step (.copy 6 1 [.deref, .field 0, .field 0, .field 0, .field 0, .field 0]) (machine r5) = some (machine r6) := by
    simp [step, place, readPath, readProjection, initial, update, stringCell, stored, put, machine, r0, r1, r2, r3, r4, r5, r6]
  have h6 : step (.dataPointer 4 6) (machine r6) = some (machine r7) := by
    simp [step, initial, update, nonnull, put, machine, r0, r1, r2, r3, r4, r5, r6, r7]
  have h7 : step (.dead 6) (machine r7) = some (machine r8) := by
    simp [step, initial, update, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8]
  have h8 : step (.live 5) (machine r8) = some (machine r9) := by
    simp [step, initial, update, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9]
  have h9 : step (.copy 5 1 [.deref, .field 0, .field 1]) (machine r9) = some (machine r10) := by
    simp [step, place, readPath, readProjection, initial, update, stringCell, stored, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10]
  have h10 : step (.slicePointer 3 4 5) (machine r10) = some (machine r11) := by
    simp [step, initial, update, bounded, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11]
  have h11 : step (.dead 5) (machine r11) = some (machine r12) := by
    simp [step, initial, update, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12]
  have h12 : step (.dead 4) (machine r12) = some (machine r13) := by
    simp [step, initial, update, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13]
  have h13 : step (.sharedBytes 2 3 3) (machine r13) = some (machine r14) := by
    simp [step, place, readPath, readProjection, initial, update, bytes, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14]
    intro notEmpty
    rcases permission with empty | allowed
    · exact False.elim (notEmpty (List.length_eq_zero_iff.mp empty))
    · exact allowed
  have h14 : step (.dead 3) (machine r14) = some (machine r15) := by
    simp [step, initial, update, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15]
  have h15 : step (.sharedStr 0 2) (machine r15) = some (machine r16) := by
    simp [step, initial, update, bytes, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16]
  have h16 : step (.dead 2) (machine r16) = some (machine r17) := by
    simp [step, initial, update, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17]
  have h17 : step (.dead 1) (machine r17) = some (machine r18) := by
    simp [step, initial, update, length, put, machine, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18]
  have h18 : step (.returnValue 0) (machine r18) = some (final) := by
    simp [step, initial, length, put, machine, final, r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18]
  refine ⟨final, ?_, rfl, rfl, rfl, rfl⟩
  dsimp only [NativeStringMemorySource.program]
  rw [execute_advance _ h0, execute_advance _ h1, execute_advance _ h2, execute_advance _ h3, execute_advance _ h4, execute_advance _ h5, execute_advance _ h6, execute_advance _ h7, execute_advance _ h8, execute_advance _ h9, execute_advance _ h10, execute_advance _ h11, execute_advance _ h12, execute_advance _ h13, execute_advance _ h14, execute_advance _ h15, execute_advance _ h16, execute_advance _ h17, execute_advance _ h18]
  rfl

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
