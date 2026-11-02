import Core033.WordMatrix

namespace Core033.WordMatrixPorts
open WordField WordMatrix

def block (register : Nat) : List Nat := (List.range 34).map (fun offset=>base register+offset)
def tail (register : Nat) : List Nat := (List.range 33).map (fun offset=>base register+1+offset)
def allWords (count : Nat) : List Nat := (List.range count).flatMap block

theorem block_decomposition (register : Nat) : block register=packed register::tail register := by
  unfold block tail
  rw [show 34=33+1 by decide,List.range_succ_eq_map,List.map_cons,List.map_map]
  simp only [Nat.add_zero,packed]
  congr 1

theorem all_words_interval (count : Nat) : allWords count=List.range' 1 (34*count) := by
  induction count with
  | zero => simp [allWords]
  | succ count ih =>
    simp only [allWords,List.range_succ,List.flatMap_append,List.flatMap_singleton]
    rw [show (List.range count).flatMap block=List.range' 1 (34*count) from ih]
    unfold block base
    rw [←List.range'_eq_map_range,List.range'_append_1]
    congr 1

theorem heads_tails_permutation {α β : Type} (xs : List α) (head : α → β) (tails : α → List β) :
    (xs.map head++xs.flatMap tails).Perm (xs.flatMap (fun x=>head x::tails x)) := by
  induction xs with
  | nil => exact List.Perm.refl []
  | cons x rest ih =>
    simp only [List.map_cons,List.flatMap_cons,List.cons_append,List.append_assoc]
    apply List.Perm.cons
    have rearrange : (rest.map head++tails x++rest.flatMap tails).Perm
        (tails x++(rest.map head++rest.flatMap tails)) := by
      simpa only [List.append_assoc] using
        (List.perm_append_comm (l₁:=rest.map head) (l₂:=tails x)).append_right (rest.flatMap tails)
    simpa only [List.append_assoc] using rearrange.trans (ih.append_left (tails x))

theorem split_range (inputs count : Nat) (bound : inputs≤count) :
    List.range count=List.range inputs++List.range' inputs (count-inputs) := by
  have append:=List.range'_append_1 (s:=0) (m:=inputs) (n:=count-inputs)
  simpa only [Nat.zero_add,Nat.add_sub_of_le bound,←List.range_eq_range'] using append.symm

theorem flat_map_congr_on {α β : Type} (xs : List α) (f g : α → List β)
    (same : ∀ x∈xs,f x=g x) : xs.flatMap f=xs.flatMap g := by
  induction xs with
  | nil => rfl
  | cons x rest ih =>
    simp only [List.flatMap_cons]
    rw [same x (by simp),ih (by intro y hy;exact same y (List.mem_cons_of_mem x hy))]

def privateWords (inputs count : Nat) : List Nat :=
  (List.range count).flatMap (fun register=>if register<inputs then tail register else block register)

theorem private_split (inputs count : Nat) (bound : inputs≤count) :
    privateWords inputs count=(List.range inputs).flatMap tail++(List.range' inputs (count-inputs)).flatMap block := by
  unfold privateWords
  rw [split_range inputs count bound,List.flatMap_append]
  congr 1
  · apply flat_map_congr_on
    intro register member
    rw [if_pos (List.mem_range.mp member)]
  · apply flat_map_congr_on
    intro register member
    have origin:=List.mem_range'.mp member
    have after : inputs≤register := by obtain ⟨i,hi,eq⟩:=origin;omega
    rw [if_neg (by omega : ¬register<inputs)]

theorem input_private_permutation (inputs count : Nat) (bound : inputs≤count) :
    ((List.range inputs).map packed++privateWords inputs count).Perm (allWords count) := by
  rw [private_split inputs count bound,←List.append_assoc]
  have perm:=heads_tails_permutation (List.range inputs) packed tail
  have blocks : (List.range inputs).flatMap (fun register=>packed register::tail register)=allWords inputs := by
    apply flat_map_congr_on
    intro register member
    exact (block_decomposition register).symm
  rw [blocks] at perm
  have result:=perm.append_right ((List.range' inputs (count-inputs)).flatMap block)
  have whole : allWords count=allWords inputs++(List.range' inputs (count-inputs)).flatMap block := by
    unfold allWords
    rw [split_range inputs count bound,List.flatMap_append]
  rw [whole]
  exact result

def ports (p : Nat) (program : WordIR.Program) : List Nat :=
  (compile p program).inputPorts++(compile p program).privatePorts++
    (compile p program).outputPorts++[(compile p program).constantOne]

theorem all_ports_permutation (p : Nat) (program : WordIR.Program) :
    (ports p program).Perm (List.range (compile p program).variableCount) := by
  have bound : program.inputCount≤wordCount program := by unfold wordCount;omega
  have first:=input_private_permutation program.inputCount (wordCount program) bound
  have native : (compile p program).privatePorts=privateWords program.inputCount (wordCount program) := rfl
  have output : (compile p program).outputPorts=List.range' (outputBase program) program.outputs.length := by
    change (List.range program.outputs.length).map (fun i=>outputBase program+i)=_
    exact List.range'_eq_map_range.symm
  have extendedPorts:=first.append_right (compile p program).outputPorts
  rw [all_words_interval,output] at extendedPorts
  have interval : List.range' 1 (34*wordCount program)++List.range' (outputBase program) program.outputs.length=
      List.range' 1 (34*wordCount program+program.outputs.length) := by
    unfold outputBase
    exact List.range'_append_1
  rw [interval] at extendedPorts
  have withZero:=extendedPorts.append_right [0]
  have moved : (List.range' 1 (34*wordCount program+program.outputs.length)++[0]).Perm
      (0::List.range' 1 (34*wordCount program+program.outputs.length)) := by
    simpa only [List.singleton_append] using
      (List.perm_append_comm (l₁:=List.range' 1 (34*wordCount program+program.outputs.length)) (l₂:=[0]))
  have zeroInterval : 0::List.range' 1 (34*wordCount program+program.outputs.length)=
      List.range (compile p program).variableCount := by
    change _=List.range (outputBase program+program.outputs.length)
    have size : outputBase program+program.outputs.length=(34*wordCount program+program.outputs.length)+1 := by unfold outputBase;omega
    rw [size,List.range_eq_range',List.range'_succ]
  have final:=withZero.trans moved
  rw [zeroInterval] at final
  simpa only [ports,compile,privateWords,block,tail,List.range'_eq_map_range] using final

theorem all_ports_complete (p : Nat) (program : WordIR.Program) :
    (ports p program).length=(compile p program).variableCount ∧ (ports p program).Nodup ∧
      ∀ wire∈ports p program,wire<(compile p program).variableCount := by
  have perm:=all_ports_permutation p program
  refine ⟨?_,?_,?_⟩
  · simpa only [List.length_range] using perm.length_eq
  · exact perm.symm.nodup List.nodup_range
  · intro wire member
    exact List.mem_range.mp (perm.mem_iff.mp member)

end Core033.WordMatrixPorts
