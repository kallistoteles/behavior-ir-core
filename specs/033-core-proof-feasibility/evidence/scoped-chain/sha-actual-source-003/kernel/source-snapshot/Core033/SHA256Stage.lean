import Core033.WordStage

/- A finite shared SHA program. Local templates expand once per operation;
inter-round/schedule dependencies remain previously allocated registers. -/
set_option maxHeartbeats 4000000

namespace Core033.SHA256Stage
open WordIR WordStage
attribute [local irreducible] WordStage.compile WordStage.emit

structure State where
  a : Nat
  b : Nat
  c : Nat
  d : Nat
  e : Nat
  f : Nat
  g : Nat
  h : Nat
  deriving DecidableEq, Repr

def State.registers (s : State) : List Nat := [s.a,s.b,s.c,s.d,s.e,s.f,s.g,s.h]
def State.Bounded (s : State) (builder : Builder) : Prop := ∀ register ∈ s.registers,register<builder.next

def evalState (values : Nat → Word) (s : State) : SHA256.HashState :=
  ⟨values s.a,values s.b,values s.c,values s.d,values s.e,values s.f,values s.g,values s.h⟩

def StateMeaning (builder : Builder) (inputs : Nat → Word) (s : State) (meaning : SHA256.HashState) : Prop :=
  s.Bounded builder ∧ evalState (builder.values inputs) s = meaning

theorem state_bound_extends (s : State) (before after : Builder) (extended : Extends before after)
    (bound : s.Bounded before) : s.Bounded after := by
  intro register member
  exact Nat.lt_of_lt_of_le (bound register member) (extends_next _ _ extended)

theorem state_eval_extends (s : State) (before after : Builder) (extended : Extends before after)
    (bound : s.Bounded before) (inputs : Nat → Word) :
    evalState (after.values inputs) s = evalState (before.values inputs) s := by
  simp only [evalState]
  congr 1 <;> exact extends_values before after extended inputs _ (bound _ (by simp [State.registers]))

theorem state_meaning_extends (s : State) (before after : Builder) (extended : Extends before after)
    (inputs : Nat → Word) (meaning : SHA256.HashState) (valid : StateMeaning before inputs s meaning) :
    StateMeaning after inputs s meaning :=
  ⟨state_bound_extends _ _ _ extended valid.1,(state_eval_extends _ _ _ extended valid.1 inputs).trans valid.2⟩

def choose (x y z : Nat) : WordStage.Expr :=
  .bxor (.band (.input x) (.input y)) (.band (.bnot (.input x)) (.input z))
def majority (x y z : Nat) : WordStage.Expr :=
  .bxor (.bxor (.band (.input x) (.input y)) (.band (.input x) (.input z))) (.band (.input y) (.input z))
def big0 (x : Nat) : WordStage.Expr := .bxor (.bxor (.rotr (.input x) 2) (.rotr (.input x) 13)) (.rotr (.input x) 22)
def big1 (x : Nat) : WordStage.Expr := .bxor (.bxor (.rotr (.input x) 6) (.rotr (.input x) 11)) (.rotr (.input x) 25)
def small0 (x : Nat) : WordStage.Expr := .bxor (.bxor (.rotr (.input x) 7) (.rotr (.input x) 18)) (.shr (.input x) 3)
def small1 (x : Nat) : WordStage.Expr := .bxor (.bxor (.rotr (.input x) 17) (.rotr (.input x) 19)) (.shr (.input x) 10)

theorem choose_meaning (values : Nat → Word) (x y z : Nat) :
    (choose x y z).eval values = SHA256.choose (values x) (values y) (values z) := rfl

theorem majority_meaning (values : Nat → Word) (x y z : Nat) :
    (majority x y z).eval values = SHA256.majority (values x) (values y) (values z) := rfl

theorem big0_meaning (values : Nat → Word) (x : Nat) : (big0 x).eval values = SHA256.big0 (values x) := rfl
theorem big1_meaning (values : Nat → Word) (x : Nat) : (big1 x).eval values = SHA256.big1 (values x) := rfl
theorem small0_meaning (values : Nat → Word) (x : Nat) : (small0 x).eval values = SHA256.small0 (values x) := rfl
theorem small1_meaning (values : Nat → Word) (x : Nat) : (small1 x).eval values = SHA256.small1 (values x) := rfl

def t1 (s : State) (constant : Word) (word : Nat) : WordStage.Expr :=
  .badd (.badd (.badd (.badd (.input s.h) (big1 s.e)) (choose s.e s.f s.g)) (.literal constant)) (.input word)
def t2 (s : State) : WordStage.Expr := .badd (big0 s.a) (majority s.a s.b s.c)

theorem t1_bound (s : State) (constant : Word) (word : Nat) (builder : Builder)
    (state : s.Bounded builder) (input : word<builder.next) : (t1 s constant word).Bounded builder.next := by
  have hh := state s.h (by simp [State.registers])
  have he := state s.e (by simp [State.registers])
  have hf := state s.f (by simp [State.registers])
  have hg := state s.g (by simp [State.registers])
  simp [t1,big1,choose,WordStage.Expr.Bounded,hh,he,hf,hg,input]

theorem t2_bound (s : State) (builder : Builder) (state : s.Bounded builder) : (t2 s).Bounded builder.next := by
  have ha := state s.a (by simp [State.registers])
  have hb := state s.b (by simp [State.registers])
  have hc := state s.c (by simp [State.registers])
  simp [t2,big0,majority,WordStage.Expr.Bounded,ha,hb,hc]

def round (builder : Builder) (s : State) (constant : Word) (word : Nat) : State × Builder :=
  let first := compile (t1 s constant word) builder
  let second := compile (t2 s) first.2
  let a := emit second.2 (.badd first.1 second.1)
  let e := emit a.2 (.badd s.d first.1)
  (⟨a.1,s.a,s.b,s.c,e.1,s.e,s.f,s.g⟩,e.2)

theorem round_extends (builder : Builder) (s : State) (constant : Word) (word : Nat) :
    Extends builder (round builder s constant word).2 := by
  exact extends_trans _ _ _ (extends_trans _ _ _
    (extends_trans _ _ _ (compile_extends _ _) (compile_extends _ _)) (emit_extends _ _)) (emit_extends _ _)

theorem round_meaning (builder : Builder) (inputs : Nat → Word) (s : State) (constant : Word) (word : Nat)
    (state : s.Bounded builder) (input : word<builder.next) :
    StateMeaning (round builder s constant word).2 inputs (round builder s constant word).1
      (SHA256.round (evalState (builder.values inputs) s) constant (builder.values inputs word)) := by
  let first := compile (t1 s constant word) builder
  let second := compile (t2 s) first.2
  let nextA := emit second.2 (.badd first.1 second.1)
  let nextE := emit nextA.2 (.badd s.d first.1)
  have ex1 : Extends builder first.2 := compile_extends _ _
  have ex2 : Extends first.2 second.2 := compile_extends _ _
  have exA : Extends second.2 nextA.2 := emit_extends _ _
  have exE : Extends nextA.2 nextE.2 := emit_extends _ _
  have exFinal : Extends builder nextE.2 := extends_trans _ _ _ (extends_trans _ _ _ (extends_trans _ _ _ ex1 ex2) exA) exE
  have m1 := compile_sound (t1 s constant word) builder inputs (t1_bound s constant word builder state input)
  have m2 := compile_sound (t2 s) first.2 inputs (t2_bound s first.2 (state_bound_extends _ _ _ ex1 state))
  have t2old : (t2 s).eval (first.2.values inputs) = (t2 s).eval (builder.values inputs) :=
    eval_congr (t2 s) builder.next _ _ (t2_bound s builder state) (by
      intro index bound;exact extends_values _ _ ex1 inputs index bound)
  rw [t2old] at m2
  have m1at2 := meaning_extends first.2 second.2 ex2 inputs first.1 _ m1
  have ma := emit_meaning second.2 (.badd first.1 second.1) inputs
  rw [Op.eval,m1at2.2,m2.2] at ma
  have m1atA := meaning_extends first.2 nextA.2 (extends_trans _ _ _ ex2 exA) inputs first.1 _ m1
  have dKept := extends_values builder nextA.2 (extends_trans _ _ _ (extends_trans _ _ _ ex1 ex2) exA)
    inputs s.d (state s.d (by simp [State.registers]))
  have me := emit_meaning nextA.2 (.badd s.d first.1) inputs
  rw [Op.eval,dKept,m1atA.2] at me
  change Meaning nextE.2 inputs nextE.1 _ at me
  have maFinal := meaning_extends nextA.2 nextE.2 exE inputs nextA.1 _ ma
  have finalState := state_bound_extends s builder nextE.2 exFinal state
  have copies : ∀ register ∈ s.registers,nextE.2.values inputs register = builder.values inputs register := by
    intro register member;exact extends_values _ _ exFinal inputs register (state register member)
  change StateMeaning nextE.2 inputs ⟨nextA.1,s.a,s.b,s.c,nextE.1,s.e,s.f,s.g⟩ _
  constructor
  · change ∀ register ∈ [nextA.1,s.a,s.b,s.c,nextE.1,s.e,s.f,s.g],register<nextE.2.next
    simp only [List.forall_mem_cons]
    exact ⟨maFinal.1,finalState s.a (by simp [State.registers]),finalState s.b (by simp [State.registers]),
      finalState s.c (by simp [State.registers]),me.1,finalState s.e (by simp [State.registers]),
      finalState s.f (by simp [State.registers]),finalState s.g (by simp [State.registers]),by intro x member;cases member⟩
  · simp only [evalState,maFinal.2,me.2,
      copies s.a (by simp [State.registers]),copies s.b (by simp [State.registers]),
      copies s.c (by simp [State.registers]),copies s.e (by simp [State.registers]),
      copies s.f (by simp [State.registers]),copies s.g (by simp [State.registers])]
    rfl

end Core033.SHA256Stage
