import Std
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

namespace PublicationPolicy
inductive Slot where
  | existing | same | parent | proof | must
  deriving DecidableEq, Repr
inductive Expr where
  | lit : Nat → Expr
  | branch : Slot → Expr → Expr → Expr
  deriving DecidableEq, Repr
structure Env where
  existing : Bool
  same : Bool
  parent : Bool
  proof : Bool
  must : Bool

def value (env : Env) : Slot → Bool
  | .existing => env.existing | .same => env.same | .parent => env.parent
  | .proof => env.proof | .must => env.must
def eval (env : Env) : Expr → Nat
  | .lit n => n
  | .branch slot yes no => if value env slot then eval env yes else eval env no

abbrev Token := List Nat
def flush (word : Token) (tokens : List Token) : List Token :=
  if word.isEmpty then tokens else word.reverse :: tokens
def lex (source : List Nat) : Option (List Token) := do
  let (word,tokens) ← source.foldlM (fun (word,tokens) c =>
    if c=9 ∨ c=10 ∨ c=13 ∨ c=32 then some ([],flush word tokens)
    else if (48≤c ∧ c≤57) ∨ (65≤c ∧ c≤90) ∨ (97≤c ∧ c≤122) ∨ c=95 then some (c::word,tokens)
    else if [40,41,44,58,45,62,123,125].contains c then
      some ([],[c] :: flush word tokens)
    else none) ([],[])
  pure (flush word tokens).reverse
def strip : List Token → List Token → Option (List Token)
  | [],rest => some rest
  | x::xs,y::ys => if x=y then strip xs ys else none
  | _,_ => none
def slot : Token → Option Slot
  | [101,120,105,115,116,105,110,103] => some .existing
  | [115,97,109,101] => some .same
  | [112,97,114,101,110,116] => some .parent
  | [112,114,111,111,102] => some .proof
  | [114,101,113,117,105,114,101] => some .must
  | _ => none
def parseExpr : Nat → List Token → Option (Expr × List Token)
  | 0,_ => none
  | fuel+1,[105,102]::name::[123]::rest => do
      let var ← slot name
      let (yes,rest) ← parseExpr fuel rest
      let rest ← strip [[125],[101,108,115,101],[123]] rest
      let (no,rest) ← parseExpr fuel rest
      let rest ← strip [[125]] rest
      pure (.branch var yes no,rest)
  | _+1,[48]::rest => some (.lit 0,rest)
  | _+1,[49]::rest => some (.lit 1,rest)
  | _+1,[50]::rest => some (.lit 2,rest)
  | _+1,[51]::rest => some (.lit 3,rest)
  | _+1,[52]::rest => some (.lit 4,rest)
  | _,_ => none
def header : List Token :=
  [[112,117,98],[102,110],[112,117,98,108,105,99,97,116,105,111,110,95,103,97,116,101],[40],[101,120,105,115,116,105,110,103],[58],[98,111,111,108],[44],[115,97,109,101],[58],[98,111,111,108],[44],[112,97,114,101,110,116],[58],[98,111,111,108],[44],[112,114,111,111,102],[58],[98,111,111,108],[44],[114,101,113,117,105,114,101],[58],[98,111,111,108],[44],[41],[45],[62],[117,51,50],[123]]
def parse (source : List Nat) : Option Expr := do
  let tokens ← lex source
  let body ← strip header tokens
  let (expr,rest) ← parseExpr (tokens.length+1) body
  if rest = [[125]] then pure expr else none
def expected : Expr :=
  .branch .existing (.branch .same (.lit 1) (.lit 2))
    (.branch .parent (.branch .must (.branch .proof (.lit 0) (.lit 4)) (.lit 0)) (.lit 3))
def policy (env : Env) : Nat :=
  if env.existing then (if env.same then 1 else 2)
  else if !env.parent then 3
  else if env.must && !env.proof then 4 else 0

theorem ir_matches_policy (existing same parent proof must : Bool) :
    eval ⟨existing,same,parent,proof,must⟩ expected = policy ⟨existing,same,parent,proof,must⟩ := by
  cases existing <;> cases same <;> cases parent <;> cases proof <;> cases must <;> decide
end PublicationPolicy

namespace PublicationPolicy
def actualSource : List Nat := [112, 117, 98, 32, 102, 110, 32, 112, 117, 98, 108, 105, 99, 97, 116, 105, 111, 110, 95, 103, 97, 116, 101, 40, 10, 32, 32, 32, 32, 101, 120, 105, 115, 116, 105, 110, 103, 58, 32, 98, 111, 111, 108, 44, 10, 32, 32, 32, 32, 115, 97, 109, 101, 58, 32, 98, 111, 111, 108, 44, 10, 32, 32, 32, 32, 112, 97, 114, 101, 110, 116, 58, 32, 98, 111, 111, 108, 44, 10, 32, 32, 32, 32, 112, 114, 111, 111, 102, 58, 32, 98, 111, 111, 108, 44, 10, 32, 32, 32, 32, 114, 101, 113, 117, 105, 114, 101, 58, 32, 98, 111, 111, 108, 44, 10, 41, 32, 45, 62, 32, 117, 51, 50, 32, 123, 10, 32, 32, 32, 32, 105, 102, 32, 101, 120, 105, 115, 116, 105, 110, 103, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 32, 115, 97, 109, 101, 32, 123, 32, 49, 32, 125, 32, 101, 108, 115, 101, 32, 123, 32, 50, 32, 125, 10, 32, 32, 32, 32, 125, 32, 101, 108, 115, 101, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 32, 112, 97, 114, 101, 110, 116, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 32, 114, 101, 113, 117, 105, 114, 101, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 32, 112, 114, 111, 111, 102, 32, 123, 32, 48, 32, 125, 32, 101, 108, 115, 101, 32, 123, 32, 52, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 32, 101, 108, 115, 101, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 48, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 32, 101, 108, 115, 101, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 51, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 125, 10, 125, 10]
theorem parsed_actual : parse actualSource = some expected := by decide
theorem actual_source_matches_policy (existing same parent proof must : Bool) :
    (parse actualSource).map (eval ⟨existing,same,parent,proof,must⟩) =
      some (policy ⟨existing,same,parent,proof,must⟩) := by
  rw [parsed_actual]
  exact congrArg some (ir_matches_policy existing same parent proof must)
#print axioms parsed_actual
#print axioms actual_source_matches_policy
end PublicationPolicy
