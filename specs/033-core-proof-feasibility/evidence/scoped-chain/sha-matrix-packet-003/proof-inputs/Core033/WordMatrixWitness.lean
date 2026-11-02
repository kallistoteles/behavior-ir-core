import Core033.WordMatrix

namespace Core033.WordMatrix
open R1CS WordField

theorem matrix_complete {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (program : WordIR.Program) (valid : program.Valid) (inputs : Nat → Word) :
    ∃ valuation : Nat → F,(compile p program).satisfies valuation ∧
      (∀ i,i<program.inputCount → valuation (packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,program.outputs[position]?=some register →
        valuation (outputBase program+position)=((WordIR.run program.inputCount program.operations inputs register).toNat : F) := by
  let values:=WordIR.run program.inputCount program.operations inputs
  obtain ⟨rawFlags,matched⟩:=flags_exist program.operations program.inputCount values
  let flags:=fun i=>if i<program.inputCount then false else rawFlags i
  have flagsMatched : FlagsMatch values flags program.inputCount program.operations :=
    flags_match_congr program.operations program.inputCount values rawFlags flags
      (by intro i hi;simp only [flags,if_neg (by omega : ¬i<program.inputCount)]) matched
  let valuation : Nat → F:=publicValuation program values flags
  have one : valuation 0=1 := public_one program values flags
  have encoded : ∀ i,i<wordCount program → Encodes valuation i (values i) :=
    fun i hi=>public_encodes program values flags i hi
  have carries : ∀ i,i<wordCount program → valuation (carry i)=bitValue (flags i) :=
    fun i hi=>public_carry program values flags i hi
  have inputRowsSatisfied : ∀ row∈inputRows p program.inputCount,row.satisfies valuation := by
    intro row member
    obtain ⟨register,before,inside⟩:=List.mem_flatMap.mp member
    have registerBound:=List.mem_range.mp before
    have totalBound : register<wordCount program := by unfold wordCount;omega
    have port:=encoded register totalBound
    rcases List.mem_append.mp inside with boolean|lastRows
    · obtain ⟨i,hi,rfl⟩:=List.mem_map.mp boolean
      have bitBound:=List.mem_range.mp hi
      apply (WordPorts.boolean_row_exact (by omega) valuation _ one).mpr
      rw [show valuation (base register+1+i)=bitValue ((values register).getLsbD i) from port.2 ⟨i,bitBound⟩]
      cases (values register).getLsbD i <;> simp [bitValue]
    · simp only [List.mem_cons,List.not_mem_nil,or_false] at lastRows
      rcases lastRows with same|same
      · subst row
        exact (packing_exact fieldBound valuation register (values register) one port.2).mpr port.1
      · subst row
        apply (SHA256Circuit.literal_row_exact valuation _ false one).mpr
        rw [carries register totalBound]
        simp only [flags,if_pos registerBound]
  have operationRowsSatisfied : ∀ row∈WordField.rows p program.inputCount program.operations,row.satisfies valuation :=
    consistent_rows_complete_generic fieldBound valuation program.operations program.inputCount (wordCount program)
      values flags valid.1 (WordIR.run_consistent program.operations program.inputCount inputs valid.1) flagsMatched one
      (by rfl) encoded carries
  have outputRowsSatisfied : ∀ row∈outputRows p program,row.satisfies valuation := by
    intro row member
    obtain ⟨pair,found,rfl⟩:=List.mem_map.mp member
    have actual := List.mk_mem_zipIdx_iff_getElem?.mp found
    have registerBound:=valid.2 pair.1 (List.mem_of_getElem? actual)
    apply (CanonicalLinear.row_meaning valuation _).mpr
    apply (equality_exact (by omega) valuation _ _ one).mpr
    exact (encoded pair.1 registerBound).1.trans (public_output program values flags pair.2 pair.1 actual).symm
  refine ⟨valuation,?_,?_,?_⟩
  · refine ⟨one,?_⟩
    simpa only [compile,List.forall_mem_append] using ⟨⟨inputRowsSatisfied,operationRowsSatisfied⟩,outputRowsSatisfied⟩
  · intro i before
    have total : i<wordCount program := by unfold wordCount;omega
    have original:=WordIR.run_keeps_prefix program.operations program.inputCount inputs i before
    simpa only [values,original] using (encoded i total).1
  · intro position register found
    exact public_output program values flags position register found

end Core033.WordMatrix
