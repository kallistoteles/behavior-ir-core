import Core033.SHA256Circuit

set_option maxHeartbeats 4000000
set_option maxRecDepth 32768

namespace Core033.SHA256Words
open R1CS SHA256Circuit
abbrev Word := SHA256.Word
abbrev Wires := Fin 32 → Nat

def Encodes {F : Type} [Field F] (valuation : Nat → F) (wires : Wires) (word : Word) : Prop :=
  ∀ index, valuation (wires index) = bitValue (word.getLsbD index.val)

theorem and_word_exact {F : Type} [Field F] (valuation : Nat → F) (a b output : Wires) (x y : Word)
    (inputA : Encodes valuation a x) (inputB : Encodes valuation b y) :
    (∀ i, (andRow (a i) (b i) (output i)).satisfies valuation) ↔ Encodes valuation output (x &&& y) := by
  constructor
  · intro rows i
    simpa only [BitVec.getLsbD_and] using
      (and_row_exact valuation (a i) (b i) (output i) _ _ (inputA i) (inputB i)).mp (rows i)
  · intro encoded i
    apply (and_row_exact valuation (a i) (b i) (output i) _ _ (inputA i) (inputB i)).mpr
    simpa only [BitVec.getLsbD_and] using encoded i

theorem xor_word_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (a b output : Wires) (x y : Word)
    (inputA : Encodes valuation a x) (inputB : Encodes valuation b y) :
    (∀ i, (xorRow p (a i) (b i) (output i)).satisfies valuation) ↔ Encodes valuation output (x ^^^ y) := by
  constructor
  · intro rows i
    simpa only [BitVec.getLsbD_xor] using
      (xor_row_exact positive valuation (a i) (b i) (output i) _ _ (inputA i) (inputB i)).mp (rows i)
  · intro encoded i
    apply (xor_row_exact positive valuation (a i) (b i) (output i) _ _ (inputA i) (inputB i)).mpr
    simpa only [BitVec.getLsbD_xor] using encoded i

theorem not_word_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (a output : Wires) (x : Word)
    (one : valuation 0 = 1) (input : Encodes valuation a x) :
    (∀ i, (notRow p (a i) (output i)).satisfies valuation) ↔ Encodes valuation output (~~~x) := by
  constructor
  · intro rows i
    have exact := (not_row_exact positive valuation (a i) (output i) _ one (input i)).mp (rows i)
    simpa only [BitVec.getLsbD_not,decide_eq_true i.isLt,Bool.true_and] using exact
  · intro encoded i
    apply (not_row_exact positive valuation (a i) (output i) _ one (input i)).mpr
    simpa only [BitVec.getLsbD_not,decide_eq_true i.isLt,Bool.true_and] using encoded i

def rotated (input : Wires) (shift : Nat) : Wires :=
  fun index => input ⟨(index.val+shift)%32,Nat.mod_lt _ (by decide)⟩

theorem rotation_exact {F : Type} [Field F] (valuation : Nat → F) (input : Wires) (word : Word) (shift : Nat)
    (encoded : Encodes valuation input word) : Encodes valuation (rotated input shift) (word.rotateRight shift) := by
  intro index
  calc
    valuation (rotated input shift index) = bitValue (word.getLsbD ((index.val+shift)%32)) :=
      encoded ⟨(index.val+shift)%32,Nat.mod_lt _ (by decide)⟩
    _ = bitValue ((word.rotateRight shift).getLsbD index.val) := by
      congr 1
      rw [BitVec.getLsbD_rotateRight]
      have reduced := Nat.mod_lt shift (by decide : 0 < 32)
      by_cases noWrap : index.val < 32-shift%32
      · have same : (index.val+shift)%32 = shift%32+index.val := by omega
        simp [noWrap,same]
      · have same : (index.val+shift)%32 = index.val-(32-shift%32) := by omega
        simp [noWrap,index.isLt,same]

def shifted (input : Wires) (shift zeroWire : Nat) : Wires :=
  fun index => if bound : index.val+shift < 32 then input ⟨index.val+shift,bound⟩ else zeroWire

theorem shift_exact {F : Type} [Field F] (valuation : Nat → F) (input : Wires) (word : Word) (shift zeroWire : Nat)
    (encoded : Encodes valuation input word) (zero : valuation zeroWire = 0) :
    Encodes valuation (shifted input shift zeroWire) (word.ushiftRight shift) := by
  intro index
  by_cases bound : index.val+shift < 32
  · dsimp only [shifted]
    rw [dif_pos bound,BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,Nat.add_comm shift index.val]
    exact encoded ⟨index.val+shift,bound⟩
  · dsimp only [shifted]
    rw [dif_neg bound,zero,BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,
      BitVec.getLsbD_of_ge word (shift+index.val) (by omega)]
    rfl

structure AdderScratch where
  different : Nat
  both : Nat
  carryDifferent : Nat

def FullAdder {F : Type} [Field F] (p : Nat) (valuation : Nat → F) (a b carry sum next : Nat) (scratch : AdderScratch) : Prop :=
  (xorRow p a b scratch.different).satisfies valuation ∧
  (xorRow p scratch.different carry sum).satisfies valuation ∧
  (andRow a b scratch.both).satisfies valuation ∧
  (andRow carry scratch.different scratch.carryDifferent).satisfies valuation ∧
  (xorRow p scratch.both scratch.carryDifferent next).satisfies valuation

theorem carry_formula (a b carry : Bool) :
    Bool.xor (a && b) (carry && Bool.xor a b) = Bool.atLeastTwo a b carry := by
  cases a <;> cases b <;> cases carry <;> rfl

theorem full_adder_sound {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (a b carry sum next : Nat) (scratch : AdderScratch) (x y c : Bool)
    (inputA : valuation a = bitValue x) (inputB : valuation b = bitValue y) (inputCarry : valuation carry = bitValue c)
    (satisfied : FullAdder p valuation a b carry sum next scratch) :
    valuation sum = bitValue (Bool.xor x (Bool.xor y c)) ∧
    valuation next = bitValue (Bool.atLeastTwo x y c) := by
  have different := (xor_row_exact positive valuation a b scratch.different x y inputA inputB).mp satisfied.1
  have sumBit := (xor_row_exact positive valuation scratch.different carry sum _ c different inputCarry).mp satisfied.2.1
  have both := (and_row_exact valuation a b scratch.both x y inputA inputB).mp satisfied.2.2.1
  have carried := (and_row_exact valuation carry scratch.different scratch.carryDifferent c _ inputCarry different).mp satisfied.2.2.2.1
  have nextBit := (xor_row_exact positive valuation scratch.both scratch.carryDifferent next _ _ both carried).mp satisfied.2.2.2.2
  constructor
  · simpa only [Bool.xor_assoc] using sumBit
  · simpa only [carry_formula] using nextBit

def AddWord {F : Type} [Field F] (p : Nat) (valuation : Nat → F) (a b output : Wires)
    (carry : Fin 33 → Nat) (scratch : Fin 32 → AdderScratch) : Prop :=
  valuation (carry ⟨0,by decide⟩) = 0 ∧
  ∀ i : Fin 32, FullAdder p valuation (a i) (b i) (carry ⟨i.val,by omega⟩)
    (output i) (carry ⟨i.val+1,by omega⟩) (scratch i)

theorem add_word_sound {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (a b output : Wires) (carry : Fin 33 → Nat) (scratch : Fin 32 → AdderScratch)
    (x y : Word) (inputA : Encodes valuation a x) (inputB : Encodes valuation b y)
    (satisfied : AddWord p valuation a b output carry scratch) : Encodes valuation output (x+y) := by
  have carryCorrect : ∀ i : Nat, (bound : i ≤ 32) →
      valuation (carry ⟨i,by omega⟩) = bitValue (BitVec.carry i x y false) := by
    intro i
    induction i with
    | zero => intro bound; simpa only [BitVec.carry_zero,bitValue] using satisfied.1
    | succ i ih =>
        intro bound
        have bitIndex : i < 32 := by omega
        have exact := full_adder_sound positive valuation _ _ _ _ _ (scratch ⟨i,bitIndex⟩)
          _ _ _ (inputA ⟨i,bitIndex⟩) (inputB ⟨i,bitIndex⟩) (ih (by omega)) (satisfied.2 ⟨i,bitIndex⟩)
        simpa only [BitVec.carry_succ] using exact.2
  intro index
  have exact := full_adder_sound positive valuation _ _ _ _ _ (scratch index)
    _ _ _ (inputA index) (inputB index) (carryCorrect index.val (by omega)) (satisfied.2 index)
  simpa only [BitVec.getLsbD_add index.isLt] using exact.1

def adderOps : List Op :=
  .literal false :: (List.range 32).flatMap (fun i => [
    .bxor i (32+i), .bxor (65+5*i) (64+5*i), .band i (32+i),
    .band (64+5*i) (65+5*i), .bxor (67+5*i) (68+5*i)])

theorem adder_topological : Topological 64 adderOps := by
  exact (check_topological_exact adderOps 64).mp (by decide)

def adderInputA : Wires := fun i => i.val+1
def adderInputB : Wires := fun i => 32+i.val+1
def adderOutput : Wires := fun i => 67+5*i.val
def adderCarry : Fin 33 → Nat := fun i => 65+5*i.val
def adderScratch (i : Fin 32) : AdderScratch :=
  ⟨66+5*i.val,68+5*i.val,69+5*i.val⟩

def fullAdderRows (p : Nat) (i : Fin 32) : List Row := [
  xorRow p (adderInputA i) (adderInputB i) (adderScratch i).different,
  xorRow p (adderScratch i).different (adderCarry ⟨i.val,by omega⟩) (adderOutput i),
  andRow (adderInputA i) (adderInputB i) (adderScratch i).both,
  andRow (adderCarry ⟨i.val,by omega⟩) (adderScratch i).different (adderScratch i).carryDifferent,
  xorRow p (adderScratch i).both (adderScratch i).carryDifferent (adderCarry ⟨i.val+1,by omega⟩)]

theorem adder_row_membership (p : Nat) (i : Fin 32) :
    ∀ row ∈ fullAdderRows p i, row ∈ rows p 64 adderOps := by
  rcases i with ⟨index,bound⟩
  have choices : index = 0 ∨ index = 1 ∨ index = 2 ∨ index = 3 ∨ index = 4 ∨ index = 5 ∨ index = 6 ∨ index = 7 ∨ index = 8 ∨ index = 9 ∨ index = 10 ∨ index = 11 ∨ index = 12 ∨ index = 13 ∨ index = 14 ∨ index = 15 ∨ index = 16 ∨ index = 17 ∨ index = 18 ∨ index = 19 ∨ index = 20 ∨ index = 21 ∨ index = 22 ∨ index = 23 ∨ index = 24 ∨ index = 25 ∨ index = 26 ∨ index = 27 ∨ index = 28 ∨ index = 29 ∨ index = 30 ∨ index = 31 := by omega
  rcases choices with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31
  all_goals subst index
  all_goals simp [fullAdderRows,adderInputA,adderInputB,adderOutput,adderCarry,adderScratch,
    rows,adderOps,Op.row,List.range_succ]

theorem adder_program_implies_word {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (one : valuation 0 = 1) (satisfied : Satisfies p 64 adderOps valuation) :
    AddWord p valuation adderInputA adderInputB adderOutput adderCarry adderScratch := by
  constructor
  · have first : (literalRow 65 false).satisfies valuation := satisfied _ List.mem_cons_self
    exact (literal_row_exact valuation 65 false one).mp first
  · intro i
    have all : ∀ row ∈ fullAdderRows p i, row.satisfies valuation :=
      fun row member => satisfied row (adder_row_membership p i row member)
    exact ⟨all _ (by simp [fullAdderRows]),all _ (by simp [fullAdderRows]),
      all _ (by simp [fullAdderRows]),all _ (by simp [fullAdderRows]),all _ (by simp [fullAdderRows])⟩

def addInputBits (x y : Word) (i : Nat) : Bool :=
  if i < 32 then x.getLsbD i else if i < 64 then y.getLsbD (i-32) else false

theorem add_word_complete {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p) (x y : Word) :
    ∃ valuation : Nat → F, valuation 0 = 1 ∧ Encodes valuation adderInputA x ∧
      Encodes valuation adderInputB y ∧
      AddWord p valuation adderInputA adderInputB adderOutput adderCarry adderScratch ∧
      Encodes valuation adderOutput (x+y) := by
  obtain ⟨valuation,one,inputs,satisfied⟩ :=
    boolean_program_complete (F:=F) positive adderOps 64 (addInputBits x y) adder_topological
  have inputA : Encodes valuation adderInputA x := by
    intro i
    simpa only [adderInputA,addInputBits,if_pos i.isLt] using inputs i.val (by omega)
  have inputB : Encodes valuation adderInputB y := by
    intro i
    have lo : ¬32+i.val < 32 := by omega
    have hi : 32+i.val < 64 := by omega
    simpa only [adderInputB,addInputBits,if_neg lo,if_pos hi,Nat.add_sub_cancel_left] using
      inputs (32+i.val) hi
  have constraint := adder_program_implies_word positive valuation one satisfied
  exact ⟨valuation,one,inputA,inputB,constraint,
    add_word_sound positive valuation _ _ _ _ _ x y inputA inputB constraint⟩

end Core033.SHA256Words
