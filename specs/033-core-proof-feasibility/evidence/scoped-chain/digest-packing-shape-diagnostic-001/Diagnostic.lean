import Core033.DigestPacking
import Core033.WordMatrixPorts

namespace Core033.DigestPackingShape
open R1CS DigestPacking
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000

def ports (p : Nat) : List Nat := (compile p).inputPorts++(compile p).privatePorts++
  (compile p).outputPorts++[(compile p).constantOne]

theorem all_ports_permutation (p : Nat) : (ports p).Perm (List.range (compile p).variableCount) := by
  let newOut:=List.range' (source p).variableCount 4
  have swapped:=(List.perm_append_comm (l₁:=newOut) (l₂:=[0])).append_left
    ((source p).inputPorts++(source p).privatePorts++(source p).outputPorts)
  have moved : (ports p).Perm (WordMatrixPorts.ports p program++newOut) := by
    simpa only [ports,compile,WordMatrixPorts.ports,source,WordMatrix.compile,List.append_assoc] using swapped
  have original:=(WordMatrixPorts.all_ports_permutation p program).append_right newOut
  have joined : List.range (source p).variableCount++newOut=List.range ((source p).variableCount+4) := by
    simpa only [newOut,List.range_eq_range',Nat.zero_add] using
      (List.range'_append_1 (s:=0) (m:=(source p).variableCount) (n:=4))
  rw [show (WordMatrix.compile p program).variableCount=(source p).variableCount from rfl,joined] at original
  exact moved.trans original

theorem ports_complete (p : Nat) : (ports p).length=(compile p).variableCount ∧ (ports p).Nodup ∧
    ∀ wire∈ports p,wire<(compile p).variableCount := by
  have perm:=all_ports_permutation p
  refine ⟨?_,perm.symm.nodup List.nodup_range,?_⟩
  · simpa only [List.length_range] using perm.length_eq
  · intro wire member;exact List.mem_range.mp (perm.mem_iff.mp member)

theorem source_shape (p : Nat) (large : 2^64<p) (fieldBound : p<2^256) : (source p).wellFormed=true := by
  apply WordMatrixShape.complete_well_formedness p program large fieldBound _ program_valid
  change (source p).variableCount≤16777216
  rw [(layout p).1]
  decide

theorem all_rows_shape (p : Nat) (large : 2^64<p) (fieldBound : p<2^256) :
    ∀ row∈(compile p).rows,
      linearWellFormed p (compile p).variableCount row.a=true ∧
      linearWellFormed p (compile p).variableCount row.b=true ∧
      linearWellFormed p (compile p).variableCount row.c=true := by
  have oldShape:=source_shape p large fieldBound
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true] at oldShape
  intro row member
  change row∈(source p).rows++bindRows p at member
  rcases List.mem_append.mp member with old|binding
  · have oldRow:=oldShape.2 row old
    have larger : (source p).variableCount≤(compile p).variableCount := by change _≤(source p).variableCount+4;omega
    exact ⟨MatrixBounds.linear_count_monotone _ _ _ _ oldRow.1.1 larger,
      MatrixBounds.linear_count_monotone _ _ _ _ oldRow.1.2 larger,
      MatrixBounds.linear_count_monotone _ _ _ _ oldRow.2 larger⟩
  · obtain ⟨limb,inside,rfl⟩:=List.mem_map.mp binding
    apply PackedU64.canonical_row_shape p _ _ _ _ large
    all_goals
      simp only [(layout p).1,(layout p).2.1,(layout p).2.2.1]
      have bound:=limb.isLt
      omega

theorem complete_well_formedness (p : Nat) (large : 2^64<p) (fieldBound : p<2^256) : (compile p).wellFormed=true := by
  have portShape:=ports_complete p
  have rowShape:=all_rows_shape p large fieldBound
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq]
  refine ⟨⟨⟨large,fieldBound,?_,?_,portShape.1,portShape.2.1⟩,portShape.2.2⟩,?_⟩
  · rw [(layout p).2.2.1];decide
  · rw [(layout p).2.2.1];decide
  · intro row member
    have checked:=rowShape row member
    exact ⟨⟨checked.1,checked.2.1⟩,checked.2.2⟩

end Core033.DigestPackingShape
