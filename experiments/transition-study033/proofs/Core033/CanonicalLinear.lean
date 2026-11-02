import Core033.R1CS

/- Canonical sorting/coalescing for actual field rows. No modular coefficient
reduction is hidden here: range/well-formed checks still reject coefficients
outside the declared modulus. Equal input wires must be coalesced, never dropped. -/
namespace Core033.CanonicalLinear
open R1CS

def insert (term : Term) : Linear → Linear
  | [] => if term.coefficient=0 then [] else [term]
  | head::rest =>
    if term.coefficient=0 then head::rest
    else if term.wire<head.wire then term::head::rest
    else if term.wire=head.wire then ⟨head.wire,term.coefficient+head.coefficient⟩::rest
    else head::insert term rest

def normalize : Linear → Linear
  | [] => []
  | term::rest => insert term (normalize rest)

theorem insert_meaning {F : Type} [Field F] (valuation : Nat → F) (term : Term) (terms : Linear) :
    evalLinear valuation (insert term terms)=(term.coefficient : F)*valuation term.wire+evalLinear valuation terms := by
  induction terms with
  | nil =>
    by_cases zero : term.coefficient=0
    · simp [insert,zero,evalLinear]
    · simp [insert,zero,evalLinear]
  | cons head rest ih =>
    by_cases zero : term.coefficient=0
    · simp [insert,zero,evalLinear]
    · by_cases earlier : term.wire<head.wire
      · simp [insert,zero,earlier,evalLinear]
      · by_cases same : term.wire=head.wire
        · simp [insert,zero,earlier,same,evalLinear,Nat.cast_add,add_mul,add_assoc]
        · simp [insert,zero,earlier,same,evalLinear,ih,add_assoc,add_comm,add_left_comm]

theorem normalize_meaning {F : Type} [Field F] (valuation : Nat → F) (terms : Linear) :
    evalLinear valuation (normalize terms)=evalLinear valuation terms := by
  induction terms with
  | nil => rfl
  | cons term rest ih => simp only [normalize,insert_meaning,ih,evalLinear]

def normalizeRow (row : Row) : Row := ⟨normalize row.a,normalize row.b,normalize row.c⟩

theorem row_meaning {F : Type} [Field F] (valuation : Nat → F) (row : Row) :
    (normalizeRow row).satisfies valuation ↔ row.satisfies valuation := by
  simp only [normalizeRow,Row.satisfies,normalize_meaning]

theorem duplicate_input_retained (wire : Nat) : normalize [⟨wire,1⟩,⟨wire,1⟩]=[⟨wire,2⟩] := by
  simp [normalize,insert]

end Core033.CanonicalLinear
