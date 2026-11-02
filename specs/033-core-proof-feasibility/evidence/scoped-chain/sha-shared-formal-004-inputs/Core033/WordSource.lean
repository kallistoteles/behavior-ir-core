import Core033.WordIR
import Core033.Codec

/- Independent restricted u32 Rust derivation/meaning. The exact-format validator
must construct a lexical/derivation derivation and connect it to WordIR, not merely
compare hashes or two unchecked generator outputs. No arbitrary Rust is admitted. -/
namespace Core033.WordSource
open WordIR
abbrev Bytes := List UInt8

def digit (value : Nat) : UInt8 := UInt8.ofNat (if value < 10 then 48+value else 87+value)
def readDigit (byte : UInt8) : Option Nat :=
  if 48 ≤ byte.toNat ∧ byte.toNat ≤ 57 then some (byte.toNat-48)
  else if 97 ≤ byte.toNat ∧ byte.toNat ≤ 102 then some (byte.toNat-87) else none

theorem digit_roundtrip (value : Nat) (bound : value < 16) : readDigit (digit value) = some value := by
  unfold digit readDigit
  by_cases decimal : value < 10
  · have within : 48+value < 256 := by omega
    simp only [if_pos decimal,UInt8.toNat_ofNat',show 2^8=256 by decide,Nat.mod_eq_of_lt within]
    simp [show 48 ≤ 48+value ∧ 48+value ≤ 57 by omega]
  · have within : 87+value < 256 := by omega
    simp only [if_neg decimal,UInt8.toNat_ofNat',show 2^8=256 by decide,Nat.mod_eq_of_lt within]
    simp [show ¬ (48 ≤ 87+value ∧ 87+value ≤ 57) by omega,
      show 97 ≤ 87+value ∧ 87+value ≤ 102 by omega]

def hexDigits : Nat → Nat → Bytes
  | 0,_ => []
  | width+1,value => hexDigits width (value/16)++[digit (value%16)]

inductive HexDigits : Bytes → Nat → Prop where
  | empty : HexDigits [] 0
  | snoc {bytes value digitByte nibble} (prior : HexDigits bytes value)
      (decoded : readDigit digitByte = some nibble) :
      HexDigits (bytes++[digitByte]) (value*16+nibble)

theorem hex_digits_size (width value : Nat) : (hexDigits width value).length = width := by
  induction width generalizing value with
  | zero => rfl
  | succ width ih => simp [hexDigits,ih]

theorem hex_digits_meaning (width value : Nat) : HexDigits (hexDigits width value) (value%16^width) := by
  induction width generalizing value with
  | zero => simpa only [hexDigits,Nat.pow_zero,Nat.mod_one] using HexDigits.empty
  | succ width ih =>
      have formed := HexDigits.snoc (ih (value/16)) (digit_roundtrip (value%16) (Nat.mod_lt _ (by decide)))
      have equality : (value/16%16^width)*16+value%16 = value%16^(width+1) := by
        calc
          _ = value%16+16*(value/16%16^width) := by omega
          _ = value%(16*(16^width)) := Nat.mod_mul.symm
          _ = value%16^(width+1) := by rw [Nat.pow_succ,Nat.mul_comm]
      simpa only [hexDigits,equality] using formed

def readHex (initial : Nat) : Bytes → Option Nat
  | [] => some initial
  | byte::rest => do
      let nibble ← readDigit byte
      readHex (initial*16+nibble) rest

theorem read_hex_append (a b : Bytes) : ∀ initial,
    readHex initial (a++b) = (readHex initial a).bind (fun value => readHex value b) := by
  induction a with
  | nil => intros; rfl
  | cons byte rest ih =>
      intro initial
      cases parsed : readDigit byte <;> simp [readHex,parsed,Bind.bind,Option.bind,ih]

theorem hex_syntax_decodes (bytes : Bytes) (value : Nat) (derivation : HexDigits bytes value) : readHex 0 bytes = some value := by
  induction derivation with
  | empty => rfl
  | @snoc bytes value byte nibble prior parsed ih =>
      rw [read_hex_append,ih]
      simp [readHex,parsed,Bind.bind,Option.bind]

theorem hex_syntax_unique (bytes : Bytes) (a b : Nat) (first : HexDigits bytes a) (second : HexDigits bytes b) : a=b :=
  Option.some.inj ((hex_syntax_decodes bytes a first).symm.trans (hex_syntax_decodes bytes b second))

def name (index : Nat) : Bytes := 114::hexDigits 8 index

theorem names_do_not_alias (a b : Nat) (ha : a < 2^32) (hb : b < 2^32) (same : name a = name b) : a=b := by
  have digits := List.cons.inj same |>.2
  have first := hex_digits_meaning 8 a
  have second := hex_digits_meaning 8 b
  rw [digits] at first
  have equal := hex_syntax_unique _ _ _ first second
  simpa only [show 16^8=2^32 by decide,Nat.mod_eq_of_lt ha,Nat.mod_eq_of_lt hb] using equal

inductive Expr where
  | unsignedLiteral (word : Word)
  | bitAnd (a b : Nat)
  | bitXor (a b : Nat)
  | bitNot (a : Nat)
  | wrappingAdd (a b : Nat)
  | rotateRight (a shift : Nat)
  | logicalRight (a shift : Nat)
  deriving DecidableEq, Repr

def Expr.eval (locals : Nat → Word) : Expr → Word
  | .unsignedLiteral word => word
  | .bitAnd a b => locals a &&& locals b
  | .bitXor a b => locals a ^^^ locals b
  | .bitNot a => ~~~(locals a)
  | .wrappingAdd a b => locals a+locals b
  | .rotateRight a shift => (locals a).rotateRight shift
  | .logicalRight a shift => (locals a).ushiftRight shift

def lower : Op → Expr
  | .literal word => .unsignedLiteral word
  | .band a b => .bitAnd a b
  | .bxor a b => .bitXor a b
  | .bnot a => .bitNot a
  | .badd a b => .wrappingAdd a b
  | .rotr a shift => .rotateRight a shift
  | .shr a shift => .logicalRight a shift

theorem lower_meaning (values : Nat → Word) (operation : Op) : (lower operation).eval values = operation.eval values := by
  cases operation <;> rfl

/-- Rust logical shifts are accepted only with a static shift below 32, so this
fragment has no out-of-range shift panic or build-mode-dependent shift meaning. -/
def Expr.ShiftSafe : Expr → Prop
  | .rotateRight _ shift | .logicalRight _ shift => shift < 32
  | _ => True

instance (expr : Expr) : Decidable expr.ShiftSafe := by cases expr <;> unfold Expr.ShiftSafe <;> infer_instance

def Expr.bytes : Expr → Bytes
  | .unsignedLiteral word => Codec.textBytes "0x"++hexDigits 8 word.toNat++Codec.textBytes "_u32"
  | .bitAnd a b => name a++Codec.textBytes " & "++name b
  | .bitXor a b => name a++Codec.textBytes " ^ "++name b
  | .bitNot a => 33::name a
  | .wrappingAdd a b => name a++Codec.textBytes ".wrapping_add("++name b++[41]
  | .rotateRight a shift => name a++Codec.textBytes ".rotate_right(0x"++hexDigits 8 shift++Codec.textBytes "_u32)"
  | .logicalRight a shift => name a++Codec.textBytes " >> 0x"++hexDigits 8 shift++Codec.textBytes "_u32"

def NameSyntax (index : Nat) (bytes : Bytes) : Prop :=
  ∃ digits, bytes = 114::digits ∧ HexDigits digits index ∧ digits.length=8

def LiteralSyntax (value : Nat) (suffix bytes : Bytes) : Prop :=
  ∃ digits, bytes = Codec.textBytes "0x"++digits++suffix ∧ HexDigits digits value ∧ digits.length=8

theorem name_syntax (index : Nat) (bound : index < 2^32) : NameSyntax index (name index) := by
  refine ⟨hexDigits 8 index,rfl,?_,hex_digits_size 8 index⟩
  simpa only [show 16^8=2^32 by decide,Nat.mod_eq_of_lt bound] using hex_digits_meaning 8 index

theorem literal_syntax (value : Nat) (bound : value < 2^32) (suffix : Bytes) :
    LiteralSyntax value suffix (Codec.textBytes "0x"++hexDigits 8 value++suffix) := by
  refine ⟨hexDigits 8 value,rfl,?_,hex_digits_size 8 value⟩
  simpa only [show 16^8=2^32 by decide,Nat.mod_eq_of_lt bound] using hex_digits_meaning 8 value

/-- Declarative grammar for the selected Rust value expressions. Literal and
identifier bytes have independent lexical meaning; the AST has unsigned u32
operations and the selected wrapping/rotation intrinsics only. -/
inductive ExprSyntax : Bytes → Expr → Prop where
  | literal (word : Word) (bytes : Bytes) (numeral : LiteralSyntax word.toNat (Codec.textBytes "_u32") bytes) :
      ExprSyntax bytes (.unsignedLiteral word)
  | band (a b : Nat) (left right : Bytes) (first : NameSyntax a left) (second : NameSyntax b right) :
      ExprSyntax (left++Codec.textBytes " & "++right) (.bitAnd a b)
  | bxor (a b : Nat) (left right : Bytes) (first : NameSyntax a left) (second : NameSyntax b right) :
      ExprSyntax (left++Codec.textBytes " ^ "++right) (.bitXor a b)
  | bnot (a : Nat) (bytes : Bytes) (identifier : NameSyntax a bytes) : ExprSyntax (33::bytes) (.bitNot a)
  | add (a b : Nat) (left right : Bytes) (first : NameSyntax a left) (second : NameSyntax b right) :
      ExprSyntax (left++Codec.textBytes ".wrapping_add("++right++[41]) (.wrappingAdd a b)
  | rotr (a shift : Nat) (source numeral : Bytes) (identifier : NameSyntax a source)
      (amount : LiteralSyntax shift (Codec.textBytes "_u32)") numeral) :
      ExprSyntax (source++Codec.textBytes ".rotate_right("++numeral) (.rotateRight a shift)
  | shr (a shift : Nat) (source numeral : Bytes) (identifier : NameSyntax a source)
      (amount : LiteralSyntax shift (Codec.textBytes "_u32") numeral) (safe : shift < 32) :
      ExprSyntax (source++Codec.textBytes " >> "++numeral) (.logicalRight a shift)

def Expr.Bounded (bound : Nat) : Expr → Prop
  | .unsignedLiteral _ => True
  | .bitAnd a b | .bitXor a b | .wrappingAdd a b => a<bound ∧ b<bound
  | .bitNot a | .rotateRight a _ | .logicalRight a _ => a<bound

theorem expression_source_syntax (expr : Expr) (bound : Nat) (within : bound ≤ 2^32)
    (refs : expr.Bounded bound) (safe : expr.ShiftSafe) : ExprSyntax expr.bytes expr := by
  cases expr with
  | unsignedLiteral word => exact ExprSyntax.literal word _ (literal_syntax word.toNat word.isLt _)
  | bitAnd a b =>
      simp only [Expr.Bounded] at refs
      exact ExprSyntax.band a b _ _ (name_syntax a (by omega)) (name_syntax b (by omega))
  | bitXor a b =>
      simp only [Expr.Bounded] at refs
      exact ExprSyntax.bxor a b _ _ (name_syntax a (by omega)) (name_syntax b (by omega))
  | bitNot a =>
      simp only [Expr.Bounded] at refs
      exact ExprSyntax.bnot a _ (name_syntax a (by omega))
  | wrappingAdd a b =>
      simp only [Expr.Bounded] at refs
      exact ExprSyntax.add a b _ _ (name_syntax a (by omega)) (name_syntax b (by omega))
  | rotateRight a shift =>
      simp only [Expr.Bounded] at refs
      have amount := literal_syntax shift (by change shift<32 at safe; omega) (Codec.textBytes "_u32)")
      have formed := ExprSyntax.rotr a shift _ _ (name_syntax a (by omega)) amount
      simpa only [Expr.bytes,List.append_assoc,Codec.textBytes] using formed
  | logicalRight a shift =>
      simp only [Expr.Bounded] at refs
      have amount := literal_syntax shift (by change shift<32 at safe; omega) (Codec.textBytes "_u32")
      have formed := ExprSyntax.shr a shift _ _ (name_syntax a (by omega)) amount safe
      simpa only [Expr.bytes,List.append_assoc,Codec.textBytes] using formed

structure Function where
  inputCount : Nat
  statements : List Expr
  outputs : List Nat
  deriving DecidableEq, Repr

def lowerFunction (program : Program) : Function :=
  ⟨program.inputCount,program.operations.map lower,program.outputs⟩

def run : Nat → List Expr → (Nat → Word) → (Nat → Word)
  | _,[],locals => locals
  | first,expr::rest,locals => run (first+1) rest (WordIR.write locals first (expr.eval locals))

def Function.eval (function : Function) (inputs : Nat → Word) : List Word :=
  function.outputs.map (run function.inputCount function.statements inputs)

theorem lower_run (operations : List Op) : ∀ first inputs,
    run first (operations.map lower) inputs = WordIR.run first operations inputs := by
  induction operations with
  | nil => intros; rfl
  | cons op rest ih =>
      intro first inputs
      simpa only [List.map_cons,run,WordIR.run,lower_meaning] using
        (ih (first+1) (WordIR.write inputs first (op.eval inputs)))

theorem function_lower_meaning (program : Program) (inputs : Nat → Word) :
    (lowerFunction program).eval inputs = program.eval inputs := by
  simp only [Function.eval,lowerFunction,Program.eval,lower_run]

def parameterBytes : Nat → Nat → Bytes
  | _,0 => []
  | first,count+1 => Codec.textBytes "    "++name first++Codec.textBytes ": u32,\n"++parameterBytes (first+1) count

def statementBytes : Nat → List Expr → Bytes
  | _,[] => []
  | first,expr::rest => Codec.textBytes "    let "++name first++Codec.textBytes ": u32 = "++expr.bytes++
      Codec.textBytes ";\n"++statementBytes (first+1) rest

def returnBytes : List Nat → Bytes
  | [] => []
  | [first] => name first
  | first::second::rest => name first++Codec.textBytes ", "++returnBytes (second::rest)

def Function.bytes (function : Function) : Bytes :=
  Codec.textBytes "pub fn checker_step(\n"++parameterBytes 0 function.inputCount++
  Codec.textBytes ") -> [u32; 0x"++hexDigits 8 function.outputs.length++Codec.textBytes "_usize] {\n"++
  statementBytes function.inputCount function.statements++Codec.textBytes "    ["++
  returnBytes function.outputs++Codec.textBytes "]\n}\n"

inductive ParametersSyntax : Nat → Nat → Bytes → Prop where
  | empty (first : Nat) : ParametersSyntax first 0 []
  | cons (first count : Nat) (identifier rest : Bytes) (lexical : NameSyntax first identifier)
      (tail : ParametersSyntax (first+1) count rest) :
      ParametersSyntax first (count+1) (Codec.textBytes "    "++identifier++Codec.textBytes ": u32,\n"++rest)

inductive StatementsSyntax : Nat → List Expr → Bytes → Prop where
  | empty (first : Nat) : StatementsSyntax first [] []
  | cons (first : Nat) (expr : Expr) (tail : List Expr) (identifier expression rest : Bytes)
      (lexical : NameSyntax first identifier) (body : ExprSyntax expression expr)
      (more : StatementsSyntax (first+1) tail rest) :
      StatementsSyntax first (expr::tail) (Codec.textBytes "    let "++identifier++Codec.textBytes ": u32 = "++expression++
        Codec.textBytes ";\n"++rest)

inductive ReturnsSyntax : List Nat → Bytes → Prop where
  | empty : ReturnsSyntax [] []
  | one (index : Nat) (bytes : Bytes) (lexical : NameSyntax index bytes) : ReturnsSyntax [index] bytes
  | cons (first second : Nat) (tail : List Nat) (identifier rest : Bytes) (lexical : NameSyntax first identifier)
      (more : ReturnsSyntax (second::tail) rest) :
      ReturnsSyntax (first::second::tail) (identifier++Codec.textBytes ", "++rest)

/-- A whole standalone compilation unit: no alias, attribute, macro, foreign
call, extra declaration or trailing suffix can hide outside these bytes. -/
inductive FunctionSyntax : Bytes → Function → Prop where
  | whole (function : Function) (parameters statements returns sizeDigits : Bytes)
      (parameterList : ParametersSyntax 0 function.inputCount parameters)
      (statementList : StatementsSyntax function.inputCount function.statements statements)
      (returnList : ReturnsSyntax function.outputs returns)
      (size : HexDigits sizeDigits function.outputs.length) (sizeWidth : sizeDigits.length=8) :
      FunctionSyntax (Codec.textBytes "pub fn checker_step(\n"++parameters++Codec.textBytes ") -> [u32; 0x"++
        sizeDigits++Codec.textBytes "_usize] {\n"++statements++Codec.textBytes "    ["++returns++Codec.textBytes "]\n}\n") function

def Function.Safe (function : Function) : Prop :=
  function.inputCount+function.statements.length < 16777216 ∧ function.outputs.length < 16777216 ∧
  (∀ index ∈ function.outputs,index < function.inputCount+function.statements.length) ∧
  (∀ (first : Nat) (expr : Expr), function.statements[first]? = some expr →
    expr.Bounded (function.inputCount+first) ∧ expr.ShiftSafe)

theorem parameters_syntax (first count : Nat) (bound : first+count ≤ 2^32) :
    ParametersSyntax first count (parameterBytes first count) := by
  induction count generalizing first with
  | zero => exact ParametersSyntax.empty first
  | succ count ih =>
      exact ParametersSyntax.cons first count _ _ (name_syntax first (by omega)) (ih (first+1) (by omega))

theorem statements_syntax (expressions : List Expr) : ∀ first,
    first+expressions.length ≤ 2^32 →
    (∀ (index : Nat) (expr : Expr), expressions[index]? = some expr → expr.Bounded (first+index) ∧ expr.ShiftSafe) →
    StatementsSyntax first expressions (statementBytes first expressions) := by
  induction expressions with
  | nil => intro first bound valid; exact StatementsSyntax.empty first
  | cons expr rest ih =>
      intro first bound valid
      have head := valid 0 expr (by simp)
      have tail := ih (first+1) (by simp only [List.length_cons] at bound; omega) (by
        intro index expr found
        simpa only [Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using valid (index+1) expr (by simpa using found))
      exact StatementsSyntax.cons first expr rest _ _ _ (name_syntax first (by simp only [List.length_cons] at bound; omega))
        (expression_source_syntax expr first (by omega) (by simpa using head.1) head.2) tail

theorem returns_syntax (indices : List Nat) (bound : ∀ index ∈ indices,index < 2^32) :
    ReturnsSyntax indices (returnBytes indices) := by
  induction indices with
  | nil => exact ReturnsSyntax.empty
  | cons index rest ih =>
      have lexical := name_syntax index (bound index (by simp))
      cases rest with
      | nil => exact ReturnsSyntax.one index _ lexical
      | cons second tail =>
          exact ReturnsSyntax.cons index second tail _ _ lexical (ih (by intro i member;exact bound i (List.mem_cons_of_mem _ member)))

theorem whole_function_syntax (function : Function) (safe : function.Safe) : FunctionSyntax function.bytes function := by
  have wordBound : function.inputCount+function.statements.length ≤ 2^32 := by have := safe.1; omega
  have sizeBound : function.outputs.length < 2^32 := by have := safe.2.1; omega
  have size := hex_digits_meaning 8 function.outputs.length
  rw [show 16^8=2^32 by decide,Nat.mod_eq_of_lt sizeBound] at size
  exact FunctionSyntax.whole function _ _ _ _ (parameters_syntax 0 function.inputCount (by omega))
    (statements_syntax function.statements function.inputCount wordBound safe.2.2.2)
    (returns_syntax function.outputs (by intro index member;have := safe.2.2.1 index member;omega)) size (hex_digits_size _ _)

instance (bound : Nat) (expr : Expr) : Decidable (expr.Bounded bound) := by
  cases expr <;> unfold Expr.Bounded <;> infer_instance

def checkSafe (function : Function) : Bool :=
  decide (function.inputCount+function.statements.length < 16777216 ∧ function.outputs.length < 16777216) &&
  function.outputs.all (fun index => decide (index < function.inputCount+function.statements.length)) &&
  function.statements.zipIdx.all (fun pair => decide (pair.1.Bounded (function.inputCount+pair.2) ∧ pair.1.ShiftSafe))

theorem check_safe_exact (function : Function) : checkSafe function = true ↔ function.Safe := by
  simp only [checkSafe,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true,Function.Safe]
  constructor
  · rintro ⟨⟨⟨size,outputs⟩,refs⟩,statements⟩
    refine ⟨size,outputs,refs,?_⟩
    intro index expr found
    exact statements (expr,index) (List.mk_mem_zipIdx_iff_getElem?.mpr found)
  · rintro ⟨size,outputs,refs,statements⟩
    refine ⟨⟨⟨size,outputs⟩,refs⟩,?_⟩
    intro pair member
    exact statements pair.2 pair.1 (List.mk_mem_zipIdx_iff_getElem?.mp member)

/-- Specialized parsing against the independently fixed expected IR. The checker
constructs the proved lexical/whole-source derivation above; no hash or unproved
printer-equality assertion grants source meaning. Exact format is intentional. -/
def validate (program : Program) (actualBytes : Bytes) : Bool :=
  checkSafe (lowerFunction program) && decide (actualBytes = (lowerFunction program).bytes) &&
    decide (actualBytes.length ≤ 8388608)

def NativeDenotes (bytes : Bytes) (inputs : Nat → Word) (outputs : List Word) : Prop :=
  ∃ function, FunctionSyntax bytes function ∧ function.Safe ∧ function.eval inputs = outputs

theorem validation_facts (program : Program) (actualBytes : Bytes) (accepted : validate program actualBytes = true) :
    (lowerFunction program).Safe ∧ actualBytes = (lowerFunction program).bytes ∧ actualBytes.length ≤ 8388608 := by
  simp only [validate,Bool.and_eq_true,decide_eq_true_eq] at accepted
  exact ⟨(check_safe_exact _).mp accepted.1.1,accepted.1.2,accepted.2⟩

theorem actual_bytes_sound (program : Program) (actualBytes : Bytes) (accepted : validate program actualBytes = true)
    (inputs : Nat → Word) : NativeDenotes actualBytes inputs (program.eval inputs) := by
  obtain ⟨safe,actual,size⟩ := validation_facts program actualBytes accepted
  refine ⟨lowerFunction program,?_,safe,function_lower_meaning program inputs⟩
  rw [actual]
  exact whole_function_syntax _ safe

theorem changed_actual_bytes_rejected (program : Program) (actualBytes : Bytes)
    (changed : actualBytes ≠ (lowerFunction program).bytes) : validate program actualBytes = false := by
  simp [validate,changed]

end Core033.WordSource
