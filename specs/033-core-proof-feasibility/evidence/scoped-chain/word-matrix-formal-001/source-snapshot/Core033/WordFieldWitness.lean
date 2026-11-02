import Core033.WordFieldProgram

namespace Core033.WordField
open R1CS

/-- Explicit mathematical witness layout. Proof production may use untrusted
native acceleration, but cannot choose different meanings for packed/bit/carry
ports. Wire0 is one; every other34-wire block has a unique decoded position. -/
def wordValuation {F : Type} [Field F] (values : Nat → Word) (flags : Nat → Bool) (wire : Nat) : F :=
  if wire=0 then 1
  else
    let register:=(wire-1)/34
    let offset:=(wire-1)%34
    if offset=0 then ((values register).toNat : F)
    else if offset=33 then bitValue (flags register)
    else bitValue ((values register).getLsbD (offset-1))

theorem valuation_one {F : Type} [Field F] (values : Nat → Word) (flags : Nat → Bool) :
    wordValuation (F:=F) values flags 0=1 := by simp [wordValuation]

theorem valuation_packed {F : Type} [Field F] (values : Nat → Word) (flags : Nat → Bool) (register : Nat) :
    wordValuation (F:=F) values flags (packed register)=((values register).toNat : F) := by
  have nonzero : packed register≠0 := by unfold packed base;omega
  have quotient : (packed register-1)/34=register := by unfold packed base;omega
  have remainder : (packed register-1)%34=0 := by unfold packed base;omega
  simp [wordValuation,nonzero,quotient,remainder]

theorem valuation_bits {F : Type} [Field F] (values : Nat → Word) (flags : Nat → Bool) (register : Nat) (i : Fin 32) :
    wordValuation (F:=F) values flags (bits register i)=bitValue ((values register).getLsbD i.val) := by
  have bound:=i.isLt
  have nonzero : bits register i≠0 := by unfold bits base;omega
  have quotient : (bits register i-1)/34=register := by unfold bits base;omega
  have remainder : (bits register i-1)%34=1+i.val := by unfold bits base;omega
  simp only [wordValuation,if_neg nonzero,quotient,remainder]
  rw [if_neg (by omega),if_neg (by omega),show 1+i.val-1=i.val by omega]

theorem valuation_carry {F : Type} [Field F] (values : Nat → Word) (flags : Nat → Bool) (register : Nat) :
    wordValuation (F:=F) values flags (carry register)=bitValue (flags register) := by
  have nonzero : carry register≠0 := by unfold carry base;omega
  have quotient : (carry register-1)/34=register := by unfold carry base;omega
  have remainder : (carry register-1)%34=33 := by unfold carry base;omega
  simp [wordValuation,nonzero,quotient,remainder]

theorem valuation_encodes {F : Type} [Field F] (values : Nat → Word) (flags : Nat → Bool) (register : Nat) :
    Encodes (wordValuation (F:=F) values flags) register (values register) :=
  ⟨valuation_packed values flags register,valuation_bits values flags register⟩

def FlagsMatch (values : Nat → Word) (flags : Nat → Bool) : Nat → List WordIR.Op → Prop
  | _,[] => True
  | first,op::rest => flags first=expectedCarry values op ∧ FlagsMatch values flags (first+1) rest

theorem flags_match_congr (operations : List WordIR.Op) : ∀ first values a b,
    (∀ i,first≤i → a i=b i) → FlagsMatch values a first operations → FlagsMatch values b first operations := by
  induction operations with
  | nil => intros;trivial
  | cons op rest ih =>
    intro first values a b same matched
    exact ⟨(same first (by omega)).symm.trans matched.1,
      ih (first+1) values a b (by intro i hi;exact same i (by omega)) matched.2⟩

theorem flags_exist (operations : List WordIR.Op) : ∀ first values,∃ flags,FlagsMatch values flags first operations := by
  induction operations with
  | nil => intro first values;exact ⟨fun _=>false,True.intro⟩
  | cons op rest ih =>
    intro first values
    obtain ⟨tail,matched⟩:=ih (first+1) values
    let flags:=fun i=>if i=first then expectedCarry values op else tail i
    refine ⟨flags,?_,?_⟩
    · simp [flags]
    · exact flags_match_congr rest (first+1) values tail flags
        (by intro i hi;simp only [flags,if_neg (by omega : i≠first)]) matched

theorem consistent_rows_complete {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (operations : List WordIR.Op) : ∀ first values flags,
    WordIR.Topological first operations → WordIR.Consistent first operations values →
    FlagsMatch values flags first operations →
    ∀ row∈rows p first operations,row.satisfies (wordValuation (F:=F) values flags) := by
  induction operations with
  | nil => intro first values flags valid consistent matched row member;cases member
  | cons op rest ih =>
    intro first values flags valid consistent matched
    simp only [rows,List.forall_mem_append]
    constructor
    · apply (operation_exact fieldBound (wordValuation values flags) first op values
        (valuation_one values flags) valid.1 (by intro i hi;exact valuation_encodes values flags i)).mpr
      constructor
      · rw [←consistent.1]
        exact valuation_encodes values flags first
      · rw [valuation_carry,matched.1]
    · exact ih (first+1) values flags valid.2 consistent.2 matched.2

theorem run_rows_complete {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (operations : List WordIR.Op) (first : Nat) (inputs : Nat → Word) (valid : WordIR.Topological first operations) :
    ∃ valuation : Nat → F,valuation 0=1 ∧
      (∀ register,Encodes valuation register (WordIR.run first operations inputs register)) ∧
      ∀ row∈rows p first operations,row.satisfies valuation := by
  let values:=WordIR.run first operations inputs
  obtain ⟨flags,matched⟩:=flags_exist operations first values
  exact ⟨wordValuation values flags,valuation_one values flags,valuation_encodes values flags,
    consistent_rows_complete fieldBound operations first values flags valid (WordIR.run_consistent operations first inputs valid) matched⟩

theorem consistent_rows_complete_generic {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (operations : List WordIR.Op) : ∀ first count values flags,
    WordIR.Topological first operations → WordIR.Consistent first operations values →
    FlagsMatch values flags first operations → valuation 0=1 → first+operations.length≤count →
    (∀ i,i<count → Encodes valuation i (values i)) →
    (∀ i,i<count → valuation (carry i)=bitValue (flags i)) →
    ∀ row∈rows p first operations,row.satisfies valuation := by
  induction operations with
  | nil => intro first count values flags valid consistent matched one bound encoded carryFields row member;cases member
  | cons op rest ih =>
    intro first count values flags valid consistent matched one bound encoded carryFields
    have current : first<count := by simp only [List.length_cons] at bound;omega
    simp only [rows,List.forall_mem_append]
    constructor
    · apply (operation_exact fieldBound valuation first op values one valid.1
        (by intro i hi;exact encoded i (by omega))).mpr
      constructor
      · rw [←consistent.1]
        exact encoded first current
      · rw [carryFields first current,matched.1]
    · apply ih (first+1) count values flags valid.2 consistent.2 matched.2 one _ encoded carryFields
      simp only [List.length_cons] at bound
      omega

end Core033.WordField
