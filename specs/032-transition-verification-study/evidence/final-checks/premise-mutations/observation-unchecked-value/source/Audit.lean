import Lean

open Lean Elab Command

/-- Structured transitive axiom inspection; this tool is not an axiom authority. -/
elab "#audit " id:ident : command => do
  -- Callers supply exact fully qualified declaration names.
  let name := id.getId
  let env ← getEnv
  let some (.thmInfo info) := env.find? name
    | throwError "audit target is not a theorem: {name}"
  let axioms ← collectAxioms name
  let report := Json.mkObj [
    ("target", Json.str name.toString),
    ("kind", Json.str "theorem"),
    ("type_repr", Json.str (reprStr info.type)),
    ("axioms", Json.arr (axioms.map (fun ax => Json.str ax.toString)))]
  liftIO <| IO.println s!"CORE032_AXIOMS {report.compress}"
