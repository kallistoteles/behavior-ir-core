import Core033.SHA256Expr

namespace Core033.SHA256Symbolic
open SHA256 SHA256Expr

structure State where
  a : Expr
  b : Expr
  c : Expr
  d : Expr
  e : Expr
  f : Expr
  g : Expr
  h : Expr

def evalState (inputs : Fin 24 → Word) (s : State) : HashState :=
  ⟨eval inputs s.a,eval inputs s.b,eval inputs s.c,eval inputs s.d,
   eval inputs s.e,eval inputs s.f,eval inputs s.g,eval inputs s.h⟩

def choose (x y z : Expr) : Expr := .bxor (.band x y) (.band (.bnot x) z)
def majority (x y z : Expr) : Expr := .bxor (.bxor (.band x y) (.band x z)) (.band y z)
def big0 (x : Expr) : Expr := .bxor (.bxor (.rotr x 2) (.rotr x 13)) (.rotr x 22)
def big1 (x : Expr) : Expr := .bxor (.bxor (.rotr x 6) (.rotr x 11)) (.rotr x 25)
def small0 (x : Expr) : Expr := .bxor (.bxor (.rotr x 7) (.rotr x 18)) (.shr x 3)
def small1 (x : Expr) : Expr := .bxor (.bxor (.rotr x 17) (.rotr x 19)) (.shr x 10)

def extend (words : Array Expr) : Array Expr :=
  let n := words.size
  words.push (.badd (.badd (.badd (small1 (words.getD (n-2) (.literal 0)))
    (words.getD (n-7) (.literal 0))) (small0 (words.getD (n-15) (.literal 0))))
    (words.getD (n-16) (.literal 0)))

def schedule (block : Fin 16 → Expr) : Array Expr :=
  (List.range 48).foldl (fun words _ => extend words) (Array.ofFn block)

def round (s : State) (constant word : Expr) : State :=
  let t1 := .badd (.badd (.badd (.badd s.h (big1 s.e)) (choose s.e s.f s.g)) constant) word
  let t2 := .badd (big0 s.a) (majority s.a s.b s.c)
  ⟨.badd t1 t2,s.a,s.b,s.c,.badd s.d t1,s.e,s.f,s.g⟩

def addState (a b : State) : State :=
  ⟨.badd a.a b.a,.badd a.b b.b,.badd a.c b.c,.badd a.d b.d,
    .badd a.e b.e,.badd a.f b.f,.badd a.g b.g,.badd a.h b.h⟩

def compress (state : State) (block : Fin 16 → Expr) : State :=
  let words := schedule block
  let working := (List.range 64).foldl
    (fun current index => round current (.literal (constants.getD index 0))
      (words.getD index (.literal 0))) state
  addState state working

theorem eval_getD (inputs : Fin 24 → Word) (words : Array Expr) (index : Nat) :
    eval inputs (words.getD index (.literal 0)) = (words.map (eval inputs)).getD index 0 := by
  simp only [Array.getD_eq_getD_getElem?,Array.getElem?_map]
  cases words[index]? <;> rfl

theorem eval_extend (inputs : Fin 24 → Word) (words : Array Expr) :
    (extend words).map (eval inputs) = SHA256.extendSchedule (words.map (eval inputs)) := by
  simp only [extend,SHA256.extendSchedule,Array.map_push,Array.size_map,
    small0,small1,SHA256.small0,SHA256.small1,eval,eval_getD]

theorem eval_schedule (inputs : Fin 24 → Word) (block : Fin 16 → Expr) :
    (schedule block).map (eval inputs) = SHA256.schedule (fun i => eval inputs (block i)) := by
  have fold (steps : List Nat) (words : Array Expr) :
      (steps.foldl (fun ws _ => extend ws) words).map (eval inputs) =
      steps.foldl (fun ws _ => SHA256.extendSchedule ws) (words.map (eval inputs)) := by
    induction steps generalizing words with
    | nil => rfl
    | cons head tail ih => simpa only [List.foldl_cons,eval_extend] using ih (extend words)
  simpa [schedule,SHA256.schedule] using fold (List.range 48) (Array.ofFn block)

theorem eval_round (inputs : Fin 24 → Word) (state : State) (constant word : Expr) :
    evalState inputs (round state constant word) =
      SHA256.round (evalState inputs state) (eval inputs constant) (eval inputs word) := by
  rfl

theorem eval_addState (inputs : Fin 24 → Word) (a b : State) :
    evalState inputs (addState a b) = SHA256.addState (evalState inputs a) (evalState inputs b) := rfl

theorem eval_compress (inputs : Fin 24 → Word) (state : State) (block : Fin 16 → Expr) :
    evalState inputs (compress state block) =
      SHA256.compress (evalState inputs state) (fun i => eval inputs (block i)) := by
  have fold (steps : List Nat) (current : State) :
      evalState inputs (steps.foldl (fun s i => round s (.literal (constants.getD i 0))
        ((schedule block).getD i (.literal 0))) current) =
      steps.foldl (fun s i => SHA256.round s (constants.getD i 0)
        ((SHA256.schedule (fun j => eval inputs (block j))).getD i 0)) (evalState inputs current) := by
    induction steps generalizing current with
    | nil => rfl
    | cons head tail ih =>
        simp only [List.foldl_cons]
        rw [ih,eval_round,eval_getD,eval_schedule]
        rfl
  exact (eval_addState inputs state _).trans (congrArg (SHA256.addState (evalState inputs state)) (fold (List.range 64) state))

def stateWords (state : State) : List Expr :=
  [state.a,state.b,state.c,state.d,state.e,state.f,state.g,state.h]

def CompressionRows {F : Type} [Field F] (p : Nat) (valuation : Nat → F)
    (inputWires : Fin 24 → SHA256Words.Wires) (state : State) (block : Fin 16 → Expr)
    (output : Fin 8 → SHA256Words.Wires) : Prop :=
  ∀ i, Realizes p valuation inputWires ((stateWords (compress state block)).getD i.val (.literal 0)) (output i)

theorem eval_state_word (inputs : Fin 24 → Word) (state : State) (index : Nat) :
    eval inputs ((stateWords state).getD index (.literal 0)) =
      (SHA256.stateWords (evalState inputs state)).getD index 0 := by
  have mapped : (stateWords state).map (eval inputs) = SHA256.stateWords (evalState inputs state) := rfl
  rw [← mapped]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map]
  cases (stateWords state)[index]? <;> rfl

/-- All eight output words are bound to actual numeric rows for all 64 rounds,
message expansion and feed-forward. T042 must still generate and check the
actual Rust/SSA/matrix allocation of this relation. -/
theorem compression_rows_sound {F : Type} [Field F] {p : Nat} [CharP F p]
    (positive : 1 ≤ p) (valuation : Nat → F) (inputWires : Fin 24 → SHA256Words.Wires)
    (inputs : Fin 24 → Word) (one : valuation 0 = 1)
    (encoded : ∀ i, SHA256Words.Encodes valuation (inputWires i) (inputs i))
    (state : State) (block : Fin 16 → Expr) (output : Fin 8 → SHA256Words.Wires)
    (rows : CompressionRows p valuation inputWires state block output) :
    ∀ i, SHA256Words.Encodes valuation (output i)
      ((SHA256.stateWords (SHA256.compress (evalState inputs state) (fun j => eval inputs (block j)))).getD i.val 0) := by
  intro i
  have sound := realizes_sound positive valuation inputWires inputs one encoded _ _ (rows i)
  rw [eval_state_word,eval_compress] at sound
  exact sound

end Core033.SHA256Symbolic
