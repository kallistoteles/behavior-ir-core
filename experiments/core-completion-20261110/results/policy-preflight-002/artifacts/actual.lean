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

def flush (word : List Char) (tokens : List String) : List String :=
  if word.isEmpty then tokens else String.ofList word.reverse :: tokens
def lex (source : String) : Option (List String) := do
  let (word,tokens) ← source.toList.foldlM (fun (word,tokens) c =>
    if c.isWhitespace then some ([],flush word tokens)
    else if c.isAlphanum || c == '_' then some (c::word,tokens)
    else if ['(',')',',',':','-','>','{','}'].contains c then
      some ([],String.singleton c :: flush word tokens)
    else none) ([],[])
  pure (flush word tokens).reverse
def strip : List String → List String → Option (List String)
  | [],rest => some rest
  | x::xs,y::ys => if x=y then strip xs ys else none
  | _,_ => none
def slot : String → Option Slot
  | "existing" => some .existing | "same" => some .same | "parent" => some .parent
  | "proof" => some .proof | "require" => some .must | _ => none
def parseExpr : Nat → List String → Option (Expr × List String)
  | 0,_ => none
  | fuel+1,"if"::name::"{"::rest => do
      let var ← slot name
      let (yes,rest) ← parseExpr fuel rest
      let rest ← strip ["}","else","{"] rest
      let (no,rest) ← parseExpr fuel rest
      let rest ← strip ["}"] rest
      pure (.branch var yes no,rest)
  | _+1,number::rest => do
      let n ← number.toNat?
      if n ≤ 4 then pure (.lit n,rest) else none
  | _,_ => none
def header : List String :=
  ["pub","fn","publication_gate","(","existing",":","bool",",","same",":","bool",",",
   "parent",":","bool",",","proof",":","bool",",","require",":","bool",",",
   ")","-",">","u32","{"]
def parse (source : String) : Option Expr := do
  let tokens ← lex source
  let body ← strip header tokens
  let (expr,rest) ← parseExpr (tokens.length+1) body
  if rest = ["}"] then pure expr else none
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
def actualSource : String := "pub fn publication_gate(\n    existing: bool,\n    same: bool,\n    parent: bool,\n    proof: bool,\n    require: bool,\n) -> u32 {\n    if existing {\n        if same { 1 } else { 2 }\n    } else {\n        if parent {\n            if require {\n                if proof { 0 } else { 4 }\n            } else {\n                0\n            }\n        } else {\n            3\n        }\n    }\n}\n"
theorem parsed_actual : parse actualSource = some expected := by decide
theorem actual_source_matches_policy (existing same parent proof must : Bool) :
    (parse actualSource).map (eval ⟨existing,same,parent,proof,must⟩) =
      some (policy ⟨existing,same,parent,proof,must⟩) := by
  rw [parsed_actual]
  exact congrArg some (ir_matches_policy existing same parent proof must)
#print axioms parsed_actual
#print axioms actual_source_matches_policy
end PublicationPolicy
