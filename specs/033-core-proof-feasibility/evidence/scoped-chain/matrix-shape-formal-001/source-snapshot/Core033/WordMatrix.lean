import Core033.WordFieldWitness

/- Concrete complete matrix layout. Global canonical well-formedness and actual
binary decoding remain separate obligations; this file does not mint a receipt. -/
namespace Core033.WordMatrix
open R1CS WordField

def wordCount (program : WordIR.Program) : Nat := program.inputCount+program.operations.length
def outputBase (program : WordIR.Program) : Nat := 1+34*wordCount program

def inputRows (p count : Nat) : List Row :=
  (List.range count).flatMap (fun register=>booleanBits p register++
    [packing p register,SHA256Circuit.literalRow (carry register) false])

def outputRows (p : Nat) (program : WordIR.Program) : List Row :=
  program.outputs.zipIdx.map (fun pair=>CanonicalLinear.normalizeRow
    (equality p (packed pair.1) (outputBase program+pair.2)))

def compile (p : Nat) (program : WordIR.Program) : R1CS.Matrix :=
  let count:=wordCount program
  ⟨p,outputBase program+program.outputs.length,
    (List.range program.inputCount).map packed,
    (List.range count).flatMap (fun register=>
      if register<program.inputCount then (List.range 33).map (fun offset=>base register+1+offset)
      else (List.range 34).map (fun offset=>base register+offset)),
    (List.range program.outputs.length).map (fun i=>outputBase program+i),0,
    inputRows p program.inputCount++WordField.rows p program.inputCount program.operations++outputRows p program⟩

theorem layout_exact (p : Nat) (program : WordIR.Program) :
    (compile p program).constantOne=0 ∧ (compile p program).modulus=p ∧
    (compile p program).variableCount=1+34*(program.inputCount+program.operations.length)+program.outputs.length ∧
    (compile p program).inputPorts=(List.range program.inputCount).map packed ∧
    (compile p program).outputPorts=(List.range program.outputs.length).map (fun i=>outputBase program+i) := by
  exact ⟨rfl,rfl,rfl,rfl,rfl⟩

theorem input_port_encoded {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (count register : Nat) (word : Word) (bound : register<count)
    (one : valuation 0=1) (input : valuation (packed register)=(word.toNat : F))
    (satisfied : ∀ row∈inputRows p count,row.satisfies valuation) : Encodes valuation register word := by
  have every : ∀ row∈booleanBits p register++[packing p register,SHA256Circuit.literalRow (carry register) false],row.satisfies valuation := by
    intro row member
    apply satisfied row
    exact List.mem_flatMap.mpr ⟨register,List.mem_range.mpr bound,member⟩
  have booleans : ∀ row∈booleanBits p register,row.satisfies valuation := by
    intro row member
    exact every row (List.mem_append_left _ member)
  have packedRow : (packing p register).satisfies valuation := every _ (by simp)
  obtain ⟨decoded,encoded⟩:=port_range_sound fieldBound valuation register one booleans packedRow
  have same : decoded=word := WordPorts.full_port_unique fieldBound 32 (by decide) decoded word (encoded.1.symm.trans input)
  simpa only [same] using encoded

theorem matrix_sound_at_output {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (program : WordIR.Program) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → Word)
    (satisfied : (compile p program).satisfies valuation)
    (inputValues : ∀ i,i<program.inputCount → valuation (packed i)=((inputs i).toNat : F))
    (position register : Nat) (found : program.outputs[position]?=some register) :
    valuation (outputBase program+position)=((WordIR.run program.inputCount program.operations inputs register).toNat : F) := by
  have one : valuation 0=1 := satisfied.1
  have all : (∀ row∈inputRows p program.inputCount,row.satisfies valuation) ∧
      (∀ row∈WordField.rows p program.inputCount program.operations,row.satisfies valuation) ∧
      ∀ row∈outputRows p program,row.satisfies valuation := by
    simpa only [compile,List.forall_mem_append,and_assoc] using satisfied.2
  have inputEncoded : ∀ i,i<program.inputCount → Encodes valuation i (inputs i) := by
    intro i bound
    exact input_port_encoded fieldBound valuation program.inputCount i (inputs i) bound one (inputValues i bound) all.1
  have finalEncoded:=run_rows_sound fieldBound valuation program.operations program.inputCount inputs valid.1 one inputEncoded all.2.1
  have member : register∈program.outputs := List.mem_of_getElem? found
  have final:=finalEncoded register (valid.2 register member)
  have rowMember : CanonicalLinear.normalizeRow (equality p (packed register) (outputBase program+position))∈outputRows p program := by
    apply List.mem_map.mpr
    exact ⟨(register,position),List.mk_mem_zipIdx_iff_getElem?.mpr found,rfl⟩
  have equal:=(equality_exact (by omega) valuation _ _ one).mp
    ((CanonicalLinear.row_meaning valuation _).mp (all.2.2 _ rowMember))
  exact equal.symm.trans final.1

def publicValuation {F : Type} [Field F] (program : WordIR.Program) (values : Nat → Word)
    (flags : Nat → Bool) (wire : Nat) : F :=
  if outputBase program≤wire then ((values (program.outputs.getD (wire-outputBase program) 0)).toNat : F)
  else wordValuation values flags wire

theorem public_one {F : Type} [Field F] (program : WordIR.Program) (values : Nat → Word) (flags : Nat → Bool) :
    publicValuation (F:=F) program values flags 0=1 := by
  have before : ¬outputBase program≤0 := by unfold outputBase;omega
  simp only [publicValuation,if_neg before,valuation_one]

theorem public_encodes {F : Type} [Field F] (program : WordIR.Program) (values : Nat → Word)
    (flags : Nat → Bool) (register : Nat) (bound : register<wordCount program) :
    Encodes (publicValuation (F:=F) program values flags) register (values register) := by
  have packedBefore : ¬outputBase program≤packed register := by unfold outputBase packed base;omega
  constructor
  · simp only [publicValuation,if_neg packedBefore,valuation_packed]
  · intro i
    have bitBound:=i.isLt
    have bitBefore : ¬outputBase program≤bits register i := by unfold outputBase bits base;omega
    simp only [publicValuation,if_neg bitBefore,valuation_bits]

theorem public_carry {F : Type} [Field F] (program : WordIR.Program) (values : Nat → Word)
    (flags : Nat → Bool) (register : Nat) (bound : register<wordCount program) :
    publicValuation (F:=F) program values flags (carry register)=bitValue (flags register) := by
  have before : ¬outputBase program≤carry register := by unfold outputBase carry base;omega
  simp only [publicValuation,if_neg before,valuation_carry]

theorem public_output {F : Type} [Field F] (program : WordIR.Program) (values : Nat → Word)
    (flags : Nat → Bool) (position register : Nat) (found : program.outputs[position]?=some register) :
    publicValuation (F:=F) program values flags (outputBase program+position)=((values register).toNat : F) := by
  have after : outputBase program≤outputBase program+position := by omega
  simp only [publicValuation,if_pos after,Nat.add_sub_cancel_left,Array.getD_eq_getD_getElem?]
  rw [List.getD_eq_getElem?_getD,found]
  rfl

end Core033.WordMatrix
