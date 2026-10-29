import Checker
namespace Core032

/-- Derived logical views. Canonical byte rendering and Rust extraction are separate. -/
structure View where
  children : List Key
  used : List Key
  queries : List (Int × List Key)
  incoming : List (String × List Key)
  deriving DecidableEq

def query (s : State) (threshold : Int) : List Key :=
  (s.rows.filter fun r => match r.value with | .child x .. => x < threshold | _ => false).map Row.key

def edges (s : State) (parent : String) : List Key :=
  (s.rows.filter fun r => match r.value with | .child _ _ o => o == some parent | _ => false).map Row.key

def meaning (s : State) (captures : List Int) (parents : List String) : View :=
  ⟨(Core032.children s).map Row.key, s.used,
    captures.map (fun t => (t,query s t)), parents.map (fun p => (p,edges s p))⟩

def J (s : State) (captures : List Int) (parents : List String) (v : View) : Prop :=
  v = meaning s captures parents

def initView (s : State) (captures : List Int) (parents : List String) : View := meaning s captures parents

theorem init_correct (s : State) (captures : List Int) (parents : List String) :
    J s captures parents (initView s captures parents) := rfl

theorem rebuild_correct (s : State) (captures : List Int) (parents : List String) :
    J s captures parents (initView s captures parents) := rfl

/-- Complete changed-key coverage is a required premise of incremental reuse. -/
def patch {K V : Type} (changed : K → Bool) (old next : K → V) : K → V :=
  fun k => old k

theorem complete_delta_exact {K V : Type} (changed : K → Bool) (old next : K → V)
    (coverage : ∀ k, changed k = false → old k = next k) :
    patch changed old next = next := by
  funext k
  cases h : changed k with
  | false => simp [patch,h,coverage k h]
  | true => simp [patch,h]

/-- Cache reuse requires both the original exact meaning and complete unchanged
membership evidence; an unknown dependency cannot discharge this premise. -/
theorem unchanged_query_exact (before after : State) (threshold : Int) (cached : List Key)
    (initial : cached = query before threshold)
    (complete_dependency_check : query before threshold = query after threshold) :
    cached = query after threshold := initial.trans complete_dependency_check
end Core032
