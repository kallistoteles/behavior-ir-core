import Core033.WordProgramShape
import Core033.WordMatrixPorts

namespace Core033.WordMatrixShape
open R1CS WordField WordMatrix WordRowShape WordProgramShape

theorem raw_boolean_shape (p count wire : Nat) (large : 2^64<p) (positive : 0<wire) (bound : wire<count) :
    rowShape p count (WordPorts.booleanRow p wire)=true := by
  have pOne : 1<p := by omega
  have countPositive : 0<count := by omega
  have coefficient : 0<p-1 ∧ p-1<p := by omega
  simp [rowShape,WordPorts.booleanRow,linearWellFormed,pOne,countPositive,coefficient,positive,bound]

theorem raw_literal_shape (p count output : Nat) (large : 2^64<p) (positive : 0<output) (bound : output<count) (value : Bool) :
    rowShape p count (SHA256Circuit.literalRow output value)=true := by
  have pOne : 1<p := by omega
  have countPositive : 0<count := by omega
  cases value <;> simp [rowShape,SHA256Circuit.literalRow,linearWellFormed,pOne,countPositive,bound]

theorem register_end_bound (p : Nat) (program : WordIR.Program) (register : Nat) (before : register<wordCount program) :
    carry register<(compile p program).variableCount := by
  change carry register<outputBase program+program.outputs.length
  unfold carry base outputBase
  omega

theorem all_rows_shape (p : Nat) (program : WordIR.Program) (large : 2^64<p) (valid : program.Valid) :
    ∀ row∈(compile p program).rows,rowShape p (compile p program).variableCount row=true := by
  have endBound:=register_end_bound p program
  have inputShapes : ∀ row∈inputRows p program.inputCount,rowShape p (compile p program).variableCount row=true := by
    intro row member
    obtain ⟨register,before,inside⟩:=List.mem_flatMap.mp member
    have beforeInput:=List.mem_range.mp before
    have beforeTotal : register<wordCount program := by unfold wordCount;omega
    have ending:=endBound register beforeTotal
    rcases List.mem_append.mp inside with boolean|lastRows
    · obtain ⟨i,hi,rfl⟩:=List.mem_map.mp boolean
      have bitBound:=List.mem_range.mp hi
      have info:=bit_bounds _ register ending ⟨i,bitBound⟩
      exact raw_boolean_shape p _ _ large info.1 info.2
    · simp only [List.mem_cons,List.not_mem_nil,or_false] at lastRows
      rcases lastRows with same|same
      · subst row;exact PackingShape.packing_raw_shape p _ register large ending
      · subst row;exact raw_literal_shape p _ _ large (carry_positive register) ending false
  have instructionShapes : ∀ row∈WordField.rows p program.inputCount program.operations,
      rowShape p (compile p program).variableCount row=true :=
    program_rows_shape p _ program.operations large program.inputCount (wordCount program) valid.1 (by rfl) endBound
  have outputShapes : ∀ row∈outputRows p program,rowShape p (compile p program).variableCount row=true := by
    intro row member
    obtain ⟨pair,found,rfl⟩:=List.mem_map.mp member
    have actual:=List.mk_mem_zipIdx_iff_getElem?.mp found
    have registerBound:=valid.2 pair.1 (List.mem_of_getElem? actual)
    obtain ⟨positionBound,eq⟩:=List.getElem?_eq_some_iff.mp actual
    have earlier : packed pair.1<outputBase program+pair.2 := by unfold packed base outputBase wordCount;omega
    have bound : outputBase program+pair.2<(compile p program).variableCount := by
      change outputBase program+pair.2<outputBase program+program.outputs.length
      omega
    exact equality_shape p _ _ _ large earlier bound
  simpa only [compile,List.forall_mem_append] using ⟨⟨inputShapes,instructionShapes⟩,outputShapes⟩

theorem complete_well_formedness (p : Nat) (program : WordIR.Program)
    (large : 2^64<p) (fieldSize : p<2^256) (limit : (compile p program).variableCount≤16777216)
    (valid : program.Valid) : (compile p program).wellFormed=true := by
  have portShape:=WordMatrixPorts.all_ports_complete p program
  have rowShape:=all_rows_shape p program large valid
  have countPositive : 0<(compile p program).variableCount := by
    change 0<outputBase program+program.outputs.length
    unfold outputBase
    omega
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true]
  refine ⟨⟨⟨large,fieldSize,countPositive,limit,portShape.1,portShape.2.1⟩,?_⟩,?_⟩
  · exact portShape.2.2
  · intro row member
    simpa only [WordRowShape.rowShape,Bool.and_eq_true,compile] using rowShape row member

end Core033.WordMatrixShape
