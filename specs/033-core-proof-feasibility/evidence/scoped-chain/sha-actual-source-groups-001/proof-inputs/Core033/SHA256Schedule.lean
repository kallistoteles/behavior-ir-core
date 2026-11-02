import Core033.WordStage

namespace Core033.SHA256Schedule
open WordIR WordStage
attribute [local irreducible] WordStage.compile

def Bounded (words : Array Nat) (builder : Builder) : Prop := ∀ register ∈ words,register<builder.next

def evalWords (words : Array Nat) (builder : Builder) (inputs : Nat → Word) : Array Word :=
  words.map (builder.values inputs)

theorem words_bound_extends (words : Array Nat) (before after : Builder) (extended : Extends before after)
    (bound : Bounded words before) : Bounded words after := by
  intro register member
  exact Nat.lt_of_lt_of_le (bound register member) (extends_next before after extended)

theorem words_eval_extends (words : Array Nat) (before after : Builder) (extended : Extends before after)
    (bound : Bounded words before) (inputs : Nat → Word) : evalWords words after inputs = evalWords words before inputs := by
  apply Array.map_congr_left
  intro register member
  exact extends_values before after extended inputs register (bound register member)

theorem getD_member (words : Array Nat) (index : Nat) (bound : index<words.size) : words.getD index 0 ∈ words := by
  simp only [Array.getD_eq_getD_getElem?,Array.getElem?_eq_getElem bound,Option.getD_some]
  exact Array.mem_iff_getElem.mpr ⟨index,bound,rfl⟩

theorem eval_getD (words : Array Nat) (builder : Builder) (inputs : Nat → Word) (index : Nat) (bound : index<words.size) :
    builder.values inputs (words.getD index 0) = (evalWords words builder inputs).getD index 0 := by
  simp [evalWords,Array.getD_eq_getD_getElem?,Array.getElem?_eq_getElem bound]

def expression (words : Array Nat) : WordStage.Expr :=
  let size:=words.size
  let a:=words.getD (size-2) 0
  let b:=words.getD (size-7) 0
  let c:=words.getD (size-15) 0
  let d:=words.getD (size-16) 0
  let sigma1 : WordStage.Expr := .bxor (.bxor (.rotr (.input a) 17) (.rotr (.input a) 19)) (.shr (.input a) 10)
  let sigma0 : WordStage.Expr := .bxor (.bxor (.rotr (.input c) 7) (.rotr (.input c) 18)) (.shr (.input c) 3)
  .badd (.badd (.badd sigma1 (.input b)) sigma0) (.input d)

def extend (builder : Builder) (words : Array Nat) : Array Nat × Builder :=
  let next:=compile (expression words) builder
  (words.push next.1,next.2)

theorem expression_bounded (builder : Builder) (words : Array Nat) (bound : Bounded words builder) (size : 16≤words.size) :
    (expression words).Bounded builder.next := by
  have indices := SHA256.schedule_reads_in_bounds words.size size
  have a:=bound _ (getD_member words (words.size-2) indices.1)
  have b:=bound _ (getD_member words (words.size-7) indices.2.1)
  have c:=bound _ (getD_member words (words.size-15) indices.2.2.1)
  have d:=bound _ (getD_member words (words.size-16) indices.2.2.2)
  simp only [expression,WordStage.Expr.Bounded]
  refine ⟨⟨⟨?_,b⟩,?_⟩,d⟩
  · exact ⟨⟨a,a⟩,a⟩
  · exact ⟨⟨c,c⟩,c⟩

theorem extend_extends (builder : Builder) (words : Array Nat) : Extends builder (extend builder words).2 := compile_extends _ _

theorem extend_size (builder : Builder) (words : Array Nat) : (extend builder words).1.size=words.size+1 := by
  simp [extend]

theorem extend_bounded (builder : Builder) (words : Array Nat) (bound : Bounded words builder) (size : 16≤words.size)
    (inputs : Nat → Word) : Bounded (extend builder words).1 (extend builder words).2 := by
  have meaning:=compile_sound (expression words) builder inputs (expression_bounded builder words bound size)
  have old:=words_bound_extends words builder (extend builder words).2 (extend_extends _ _) bound
  intro register member
  change register ∈ words.push (compile (expression words) builder).1 at member
  rcases Array.mem_push.mp member with previous | last
  · exact old register previous
  · simpa only [last] using meaning.1

theorem extend_meaning (builder : Builder) (words : Array Nat) (inputs : Nat → Word)
    (bound : Bounded words builder) (size : 16≤words.size) :
    evalWords (extend builder words).1 (extend builder words).2 inputs = SHA256.extendSchedule (evalWords words builder inputs) := by
  let next:=compile (expression words) builder
  have output:=compile_sound (expression words) builder inputs (expression_bounded builder words bound size)
  change Meaning next.2 inputs next.1 _ at output
  have frame:=words_eval_extends words builder next.2 (compile_extends _ _) bound inputs
  simp only [extend,evalWords,Array.map_push]
  change (evalWords words next.2 inputs).push (next.2.values inputs next.1) = _
  rw [frame,output.2]
  have indices := SHA256.schedule_reads_in_bounds words.size size
  simp only [expression,WordStage.Expr.eval,SHA256.extendSchedule,evalWords,Array.size_map,SHA256.small0,SHA256.small1]
  rw [eval_getD words builder inputs (words.size-2) indices.1,
      eval_getD words builder inputs (words.size-7) indices.2.1,
      eval_getD words builder inputs (words.size-15) indices.2.2.1,
      eval_getD words builder inputs (words.size-16) indices.2.2.2]
  rfl

def loop : List Nat → Builder → Array Nat → Array Nat × Builder
  | [],builder,words => (words,builder)
  | _::rest,builder,words => let next:=extend builder words;loop rest next.2 next.1

theorem loop_extends (steps : List Nat) : ∀ builder words,Extends builder (loop steps builder words).2 := by
  induction steps with
  | nil => intro builder words;exact extends_refl builder
  | cons step rest ih =>
      intro builder words
      exact extends_trans _ _ _ (extend_extends builder words) (ih (extend builder words).2 (extend builder words).1)

theorem loop_size (steps : List Nat) : ∀ builder words,(loop steps builder words).1.size=words.size+steps.length := by
  induction steps with
  | nil => intro builder words;simp [loop]
  | cons step rest ih =>
      intro builder words
      simp only [loop,ih,extend_size,List.length_cons]
      omega

theorem loop_bounded (steps : List Nat) : ∀ builder words,Bounded words builder → 16≤words.size →
    Bounded (loop steps builder words).1 (loop steps builder words).2 := by
  induction steps with
  | nil => intro builder words bound size;exact bound
  | cons step rest ih =>
      intro builder words bound size
      exact ih (extend builder words).2 (extend builder words).1
        (extend_bounded builder words bound size (fun _=>0)) (by rw [extend_size];omega)

theorem loop_meaning (steps : List Nat) : ∀ builder words inputs,Bounded words builder → 16≤words.size →
    evalWords (loop steps builder words).1 (loop steps builder words).2 inputs =
      steps.foldl (fun current _=>SHA256.extendSchedule current) (evalWords words builder inputs) := by
  induction steps with
  | nil => intro builder words inputs bound size;rfl
  | cons step rest ih =>
      intro builder words inputs bound size
      simp only [loop,List.foldl_cons]
      rw [ih (extend builder words).2 (extend builder words).1 inputs
        (extend_bounded builder words bound size inputs) (by rw [extend_size];omega),extend_meaning builder words inputs bound size]

end Core033.SHA256Schedule
