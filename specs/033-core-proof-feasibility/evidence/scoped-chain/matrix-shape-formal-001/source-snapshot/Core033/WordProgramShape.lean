import Core033.PackingShape
import Core033.WordFieldProgram

namespace Core033.WordProgramShape
open R1CS WordField WordRowShape

theorem bit_bounds (count register : Nat) (endBound : carry register<count) (i : Fin 32) :
    0<bits register i ∧ bits register i<count := by
  have small:=i.isLt
  unfold bits carry base at *
  omega

theorem carry_positive (register : Nat) : 0<carry register := by unfold carry base;omega

theorem carry_before (a b : Nat) (earlier : a<b) : carry a<carry b := by unfold carry base;omega

theorem bits_before (a b : Nat) (earlier : a<b) (i j : Fin 32) : bits a i<bits b j := by
  have first:=i.isLt
  have second:=j.isLt
  unfold bits base
  omega

theorem packed_before (a b : Nat) (earlier : a<b) : packed a<packed b := by unfold packed base;omega

theorem finish_word_shape (p count output : Nat) (large : 2^64<p) (endBound : carry output<count)
    (gates : Fin 32 → Row) (gateShapes : ∀ i,rowShape p count (CanonicalLinear.normalizeRow (gates i))=true) :
    ∀ row∈bitIndices.map gates++[packing p output,SHA256Circuit.literalRow (carry output) false],
      rowShape p count (CanonicalLinear.normalizeRow row)=true := by
  intro row member
  rcases List.mem_append.mp member with gate|ending
  · obtain ⟨i,hi,rfl⟩:=List.mem_map.mp gate
    exact gateShapes i
  · simp only [List.mem_cons,List.not_mem_nil,or_false] at ending
    rcases ending with same|same
    · subst row;exact PackingShape.packing_normalized_shape p count output large endBound
    · subst row;exact literal_shape p count (carry output) large (carry_positive output) endBound false

theorem operation_shape (p count output : Nat) (operation : WordIR.Op) (large : 2^64<p)
    (endBound : carry output<count) (valid : operation.Bounded output) :
    ∀ row∈canonicalRows p output operation,rowShape p count row=true := by
  have outputBits:=bit_bounds count output endBound
  have inputEnd (register : Nat) (before : register<output) : carry register<count :=
    Nat.lt_trans (carry_before register output before) endBound
  simp only [canonicalRows,List.forall_mem_map]
  cases operation with
  | literal word =>
    apply finish_word_shape p count output large endBound
    intro i
    exact literal_shape p count _ large (outputBits i).1 (outputBits i).2 _
  | band a b =>
    apply finish_word_shape p count output large endBound
    intro i
    exact and_shape p count _ _ _ large (bit_bounds count a (inputEnd a valid.1) i).2
      (bit_bounds count b (inputEnd b valid.2) i).2 (outputBits i).2
  | bxor a b =>
    apply finish_word_shape p count output large endBound
    intro i
    exact xor_shape p count _ _ _ large (bits_before a output valid.1 i i)
      (bits_before b output valid.2 i i) (outputBits i).2
  | bnot a =>
    apply finish_word_shape p count output large endBound
    intro i
    exact not_shape p count _ _ large (bit_bounds count a (inputEnd a valid) i).1
      (bit_bounds count a (inputEnd a valid) i).2 (outputBits i).2
  | rotr a shift =>
    apply finish_word_shape p count output large endBound
    intro i
    let j : Fin 32:=⟨(i.val+shift)%32,Nat.mod_lt _ (by decide)⟩
    change rowShape p count (CanonicalLinear.normalizeRow (equality p (bits a j) (bits output i)))=true
    exact equality_shape p count _ _ large (bits_before a output valid j i) (outputBits i).2
  | shr a shift =>
    apply finish_word_shape p count output large endBound
    intro i
    by_cases bound : i.val+shift<32
    · simp only [if_pos bound]
      let j : Fin 32:=⟨i.val+shift,bound⟩
      have same : base a+1+i.val+shift=bits a j := by
        change base a+1+i.val+shift=base a+1+(i.val+shift)
        omega
      rw [same]
      exact equality_shape p count _ _ large (bits_before a output valid j i) (outputBits i).2
    · simp only [if_neg bound]
      exact literal_shape p count _ large (outputBits i).1 (outputBits i).2 false
  | badd a b =>
    intro row member
    rcases List.mem_append.mp member with boolean|ending
    · obtain ⟨i,hi,rfl⟩:=List.mem_map.mp boolean
      have bitBound:=List.mem_range.mp hi
      have info:=outputBits ⟨i,bitBound⟩
      exact boolean_shape p count _ large info.1 info.2
    · simp only [List.mem_cons,List.not_mem_nil,or_false] at ending
      rcases ending with same|same|same
      · subst row;exact boolean_shape p count _ large (carry_positive output) endBound
      · subst row
        have after : packed output<carry output := by unfold packed carry;omega
        exact add_shape p count _ _ _ _ large (packed_before a output valid.1)
          (packed_before b output valid.2) after endBound
      · subst row;exact PackingShape.packing_normalized_shape p count output large endBound

theorem program_rows_shape (p count : Nat) (operations : List WordIR.Op) (large : 2^64<p) : ∀ first total,
    WordIR.Topological first operations → first+operations.length≤total →
    (∀ register,register<total → carry register<count) →
    ∀ row∈rows p first operations,rowShape p count row=true := by
  induction operations with
  | nil => intro first total valid size endBound row member;cases member
  | cons op rest ih =>
    intro first total valid size endBound
    have current : first<total := by simp only [List.length_cons] at size;omega
    simp only [rows,List.forall_mem_append]
    refine ⟨operation_shape p count first op large (endBound first current) valid.1,?_⟩
    apply ih (first+1) total valid.2 _ endBound
    simp only [List.length_cons] at size
    omega

end Core033.WordProgramShape
