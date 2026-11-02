import Core033.WordIR

/- Sharing-preserving staging of finite local expressions into WordIR. Schedule
and round registers remain references, rather than recursively expanding history. -/
namespace Core033.WordStage
open WordIR

structure Builder where
  inputCount : Nat
  reversedOperations : List Op

def Builder.empty (inputCount : Nat) : Builder := ⟨inputCount,[]⟩
def Builder.operations (builder : Builder) : List Op := builder.reversedOperations.reverse

def Builder.next (builder : Builder) : Nat := builder.inputCount+builder.reversedOperations.length

theorem builder_next_exact (builder : Builder) : builder.next=builder.inputCount+builder.operations.length := by simp [Builder.next,Builder.operations]
def Builder.values (builder : Builder) (inputs : Nat → Word) : Nat → Word :=
  WordIR.run builder.inputCount builder.operations inputs

def Extends (before after : Builder) : Prop :=
  after.inputCount=before.inputCount ∧ ∃ suffix, after.operations=before.operations++suffix

theorem extends_refl (builder : Builder) : Extends builder builder := ⟨rfl,[],by simp⟩
theorem extends_trans (a b c : Builder) (first : Extends a b) (second : Extends b c) : Extends a c := by
  obtain ⟨inputs,tail,operations⟩ := first
  obtain ⟨inputs2,tail2,operations2⟩ := second
  exact ⟨inputs2.trans inputs,tail++tail2,by rw [operations2,operations,List.append_assoc]⟩

theorem extends_next (before after : Builder) (extended : Extends before after) : before.next ≤ after.next := by
  obtain ⟨inputs,suffix,operations⟩ := extended
  rw [builder_next_exact before,builder_next_exact after]
  simp only [inputs,operations,List.length_append]
  omega

theorem run_append (before after : List Op) : ∀ first inputs,
    WordIR.run first (before++after) inputs =
      WordIR.run (first+before.length) after (WordIR.run first before inputs) := by
  induction before with
  | nil => intro first inputs; simp [WordIR.run]
  | cons op rest ih =>
      intro first inputs
      simpa only [List.cons_append,WordIR.run,List.length_cons,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]
        using ih (first+1) (WordIR.write inputs first (op.eval inputs))

theorem extends_values (before after : Builder) (extended : Extends before after) (inputs : Nat → Word)
    (index : Nat) (bound : index < before.next) : after.values inputs index = before.values inputs index := by
  obtain ⟨inputCount,suffix,operations⟩ := extended
  simp only [Builder.values,inputCount,operations,run_append]
  exact WordIR.run_keeps_prefix suffix _ _ index (by simpa only [builder_next_exact] using bound)

def Meaning (builder : Builder) (inputs : Nat → Word) (register : Nat) (value : Word) : Prop :=
  register < builder.next ∧ builder.values inputs register=value

def emit (builder : Builder) (operation : Op) : Nat × Builder :=
  (builder.next,⟨builder.inputCount,operation::builder.reversedOperations⟩)

theorem emit_extends (builder : Builder) (operation : Op) : Extends builder (emit builder operation).2 :=
  ⟨rfl,[operation],by simp [emit,Builder.operations]⟩

theorem emit_meaning (builder : Builder) (operation : Op) (inputs : Nat → Word) :
    Meaning (emit builder operation).2 inputs (emit builder operation).1 (operation.eval (builder.values inputs)) := by
  constructor
  · simp [emit,Builder.next]
  · simp only [emit,Builder.values,Builder.operations,List.reverse_cons,run_append,WordIR.run,WordIR.write,Builder.next,List.length_reverse]
    simp

theorem meaning_extends (before after : Builder) (extended : Extends before after) (inputs : Nat → Word)
    (register : Nat) (value : Word) (meaning : Meaning before inputs register value) : Meaning after inputs register value :=
  ⟨Nat.lt_of_lt_of_le meaning.1 (extends_next before after extended),
    (extends_values before after extended inputs register meaning.1).trans meaning.2⟩

inductive Expr where
  | input (register : Nat)
  | literal (value : Word)
  | band (a b : Expr)
  | bxor (a b : Expr)
  | bnot (a : Expr)
  | badd (a b : Expr)
  | rotr (a : Expr) (shift : Nat)
  | shr (a : Expr) (shift : Nat)

def Expr.eval (values : Nat → Word) : Expr → Word
  | .input register => values register
  | .literal word => word
  | .band a b => a.eval values &&& b.eval values
  | .bxor a b => a.eval values ^^^ b.eval values
  | .bnot a => ~~~(a.eval values)
  | .badd a b => a.eval values+b.eval values
  | .rotr a shift => (a.eval values).rotateRight shift
  | .shr a shift => (a.eval values).ushiftRight shift

def Expr.Bounded (bound : Nat) : Expr → Prop
  | .input register => register<bound
  | .literal _ => True
  | .band a b | .bxor a b | .badd a b => a.Bounded bound ∧ b.Bounded bound
  | .bnot a | .rotr a _ | .shr a _ => a.Bounded bound

theorem eval_congr (expression : Expr) (bound : Nat) (a b : Nat → Word)
    (valid : expression.Bounded bound) (same : ∀ index,index<bound → a index=b index) :
    expression.eval a = expression.eval b := by
  induction expression with
  | input index => exact same index valid
  | literal word => rfl
  | band a b iha ihb => simp only [Expr.eval,iha valid.1,ihb valid.2]
  | bxor a b iha ihb => simp only [Expr.eval,iha valid.1,ihb valid.2]
  | badd a b iha ihb => simp only [Expr.eval,iha valid.1,ihb valid.2]
  | bnot a ih => simp only [Expr.eval,ih valid]
  | rotr a shift ih => simp only [Expr.eval,ih valid]
  | shr a shift ih => simp only [Expr.eval,ih valid]

def compile : Expr → Builder → Nat × Builder
  | .input register,builder => (register,builder)
  | .literal word,builder => emit builder (.literal word)
  | .band a b,builder =>
      let left:=compile a builder
      let right:=compile b left.2
      emit right.2 (.band left.1 right.1)
  | .bxor a b,builder =>
      let left:=compile a builder
      let right:=compile b left.2
      emit right.2 (.bxor left.1 right.1)
  | .badd a b,builder =>
      let left:=compile a builder
      let right:=compile b left.2
      emit right.2 (.badd left.1 right.1)
  | .bnot a,builder => let child:=compile a builder;emit child.2 (.bnot child.1)
  | .rotr a shift,builder => let child:=compile a builder;emit child.2 (.rotr child.1 shift)
  | .shr a shift,builder => let child:=compile a builder;emit child.2 (.shr child.1 shift)

theorem compile_extends (expression : Expr) : ∀ builder,Extends builder (compile expression builder).2 := by
  induction expression with
  | input register => intro builder; exact extends_refl builder
  | literal word => intro builder; exact emit_extends builder _
  | band a b iha ihb | bxor a b iha ihb | badd a b iha ihb =>
      intro builder
      exact extends_trans _ _ _ (extends_trans _ _ _ (iha builder) (ihb (compile a builder).2)) (emit_extends _ _)
  | bnot a ih | rotr a shift ih | shr a shift ih =>
      intro builder
      exact extends_trans _ _ _ (ih builder) (emit_extends _ _)

theorem bounded_mono (expression : Expr) (old new : Nat) (larger : old ≤ new) (valid : expression.Bounded old) :
    expression.Bounded new := by
  induction expression with
  | input register => exact Nat.lt_of_lt_of_le valid larger
  | literal word => trivial
  | band a b iha ihb | bxor a b iha ihb | badd a b iha ihb => exact ⟨iha valid.1,ihb valid.2⟩
  | bnot a ih | rotr a shift ih | shr a shift ih => exact ih valid

def CompileSound (expression : Expr) : Prop := ∀ builder inputs, expression.Bounded builder.next →
  Meaning (compile expression builder).2 inputs (compile expression builder).1 (expression.eval (builder.values inputs))

theorem binary_stage_sound (a b : Expr) (operator : Nat → Nat → Op) (combine : Word → Word → Word)
    (operationMeaning : ∀ values x y,(operator x y).eval values = combine (values x) (values y))
    (firstSound : CompileSound a) (secondSound : CompileSound b) (builder : Builder) (inputs : Nat → Word)
    (firstValid : a.Bounded builder.next) (secondValid : b.Bounded builder.next) :
    let left := compile a builder
    let right := compile b left.2
    let output := emit right.2 (operator left.1 right.1)
    Meaning output.2 inputs output.1 (combine (a.eval (builder.values inputs)) (b.eval (builder.values inputs))) := by
  have left := firstSound builder inputs firstValid
  have firstExtended := compile_extends a builder
  have right := secondSound (compile a builder).2 inputs
    (bounded_mono b _ _ (extends_next _ _ firstExtended) secondValid)
  have leftKept := meaning_extends _ _ (compile_extends b (compile a builder).2) inputs _ _ left
  have rightValue : b.eval ((compile a builder).2.values inputs) = b.eval (builder.values inputs) :=
    eval_congr b builder.next _ _ secondValid (by intro index bound;exact extends_values _ _ firstExtended inputs index bound)
  have output := emit_meaning (compile b (compile a builder).2).2
    (operator (compile a builder).1 (compile b (compile a builder).2).1) inputs
  rw [operationMeaning,leftKept.2,right.2,rightValue] at output
  exact output

theorem unary_stage_sound (child : Expr) (operator : Nat → Op) (combine : Word → Word)
    (operationMeaning : ∀ values x,(operator x).eval values = combine (values x))
    (childSound : CompileSound child) (builder : Builder) (inputs : Nat → Word) (valid : child.Bounded builder.next) :
    let inner := compile child builder
    let output := emit inner.2 (operator inner.1)
    Meaning output.2 inputs output.1 (combine (child.eval (builder.values inputs))) := by
  have inner := childSound builder inputs valid
  have output := emit_meaning (compile child builder).2 (operator (compile child builder).1) inputs
  rw [operationMeaning,inner.2] at output
  exact output

theorem compile_sound (expression : Expr) : CompileSound expression := by
  induction expression with
  | input register => intro builder inputs valid; exact ⟨valid,rfl⟩
  | literal word => intro builder inputs valid; exact emit_meaning builder (.literal word) inputs
  | band a b iha ihb =>
      intro builder inputs valid
      exact binary_stage_sound a b Op.band (fun x y => x &&& y) (by intros;rfl) iha ihb builder inputs valid.1 valid.2
  | bxor a b iha ihb =>
      intro builder inputs valid
      exact binary_stage_sound a b Op.bxor (fun x y => x ^^^ y) (by intros;rfl) iha ihb builder inputs valid.1 valid.2
  | badd a b iha ihb =>
      intro builder inputs valid
      exact binary_stage_sound a b Op.badd (·+·) (by intros;rfl) iha ihb builder inputs valid.1 valid.2
  | bnot child ih =>
      intro builder inputs valid
      exact unary_stage_sound child Op.bnot (fun x => ~~~x) (by intros;rfl) ih builder inputs valid
  | rotr child shift ih =>
      intro builder inputs valid
      exact unary_stage_sound child (fun x => Op.rotr x shift) (fun x => x.rotateRight shift) (by intros;rfl) ih builder inputs valid
  | shr child shift ih =>
      intro builder inputs valid
      exact unary_stage_sound child (fun x => Op.shr x shift) (fun x => x.ushiftRight shift) (by intros;rfl) ih builder inputs valid

end Core033.WordStage
