"""Verifier-owned elaborated-body audit; no candidate-supplied pass flag."""


def row_abstraction_audit_source():
    return r'''module
public import NativeCanonicalRowProofs
public meta import Lean
@[expose] public meta section
open Lean Elab Command Term Meta
namespace Core036.RowAbstractionAudit

partial def norm : Expr → Expr
  | .mdata _ body => norm body
  | .app f a => .app (norm f) (norm a)
  | .lam n ty body bi => .lam n (norm ty) (norm body) bi
  | .forallE n ty body bi => .forallE n (norm ty) (norm body) bi
  | .letE n ty value body nd => .letE n (norm ty) (norm value) (norm body) nd
  | .proj n i body => .proj n i (norm body)
  | other => other

def definition (name : Name) : TermElabM DefinitionVal := do
  let info ← getConstInfo name
  if info.isUnsafe then throwError "RowAudit: unsafe declaration"
  match info with
  | .defnInfo value =>
    unless value.safety == .safe do throwError "RowAudit: nonsafe definition"
    return value
  | _ => throwError "RowAudit: expected actual definition {name}"

/- Independent binder-depth traversal: Expr.abstract handles free/meta variables,
not the closed dictionary term. Do not share the generator's implementation. -/
partial def abstractClosed (dictionary : Expr) (depth : Nat) (e : Expr) : Expr :=
  if e == dictionary then .bvar depth else
  match e with
  | .app f a => .app (abstractClosed dictionary depth f) (abstractClosed dictionary depth a)
  | .lam n ty body bi => .lam n (abstractClosed dictionary depth ty)
      (abstractClosed dictionary (depth + 1) body) bi
  | .forallE n ty body bi => .forallE n (abstractClosed dictionary depth ty)
      (abstractClosed dictionary (depth + 1) body) bi
  | .letE n ty value body nd => .letE n (abstractClosed dictionary depth ty)
      (abstractClosed dictionary depth value) (abstractClosed dictionary (depth + 1) body) nd
  | .proj n i body => .proj n i (abstractClosed dictionary depth body)
  | .mdata _ body => abstractClosed dictionary depth body
  | other => other

def exactAbstraction (original derived : DefinitionVal)
    (dictionaryType abstracted : Expr) : Bool :=
  derived.levelParams == original.levelParams &&
    match norm derived.type, norm derived.value with
    | .forallE _ domain target .default, .lam _ valueDomain value .default =>
      domain == dictionaryType && valueDomain == dictionaryType &&
        target == norm original.type && value == abstracted
    | _, _ => false

partial def sites (dictionary e : Expr) : TermElabM Nat := do
  if e == dictionary then throwError "RowAudit: unclassified dictionary use"
  let args := e.getAppArgs
  if e.getAppFn.constName? == some ``serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index &&
      args.size == 4 && args[1]! == dictionary then
    return 1 + (← sites dictionary args[0]!) +
      (← sites dictionary args[2]!) + (← sites dictionary args[3]!)
  match e with
  | .app f a => return (← sites dictionary f) + (← sites dictionary a)
  | .lam _ ty body _ | .forallE _ ty body _ =>
    return (← sites dictionary ty) + (← sites dictionary body)
  | .letE _ ty value body _ =>
    return (← sites dictionary ty) + (← sites dictionary value) + (← sites dictionary body)
  | .proj _ _ body => sites dictionary body
  | .mdata _ body => sites dictionary body
  | _ => return 0

def check : TermElabM Json := do
  if debug.skipKernelTC.get (← getOptions) then
    throwError "RowAudit: kernel checking disabled"
  let original ← definition ``transition_study036.reference.state_fact_row
  let derived ← definition ``Correspondence036.NativeRowDictionary.RowRead
  let dictionary ← elabTerm (← `(
    transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex
      transition_study036.Str.Insts.Serde_jsonValueIndexIndex)) none
  synthesizeSyntheticMVarsNoPostponing
  let dictionary := norm (← instantiateMVars dictionary)
  if dictionary.hasFVar || dictionary.hasMVar || dictionary.hasLooseBVars then
    throwError "RowAudit: open dictionary expression"
  let dictionaryType := norm (← inferType dictionary)
  let body := norm original.value
  if body.hasFVar || body.hasMVar || body.hasLooseBVars then
    throwError "RowAudit: original definition is not closed"
  let count ← sites dictionary body
  unless count == 4 do throwError "RowAudit: expected four actual read sites"
  let abstracted := abstractClosed dictionary 0 body
  unless abstracted.instantiate1 dictionary == body do
    throwError "RowAudit: structural reinstantiation mismatch"
  unless exactAbstraction original derived dictionaryType abstracted do
    throwError "RowAudit: auxiliary is not the exact dictionary abstraction"
  /- Reproduce the actual failed API usage on this same original expression.
  Kernel-register its well-typed ignored-argument definition, then require the
  independent structural checker to reject it. No caught compiler error or
  supplied pass flag can establish this negative control. -/
  let broken := body.abstract #[dictionary]
  unless broken == body do
    throwError "RowAudit: pinned closed-abstraction regression changed"
  let mutantName := Name.str .anonymous "Core036ClosedConstantAbstractionMutant"
  let mutant := mkDefinitionValEx mutantName original.levelParams
    (.forallE `dictionary dictionaryType (norm original.type) .default)
    (.lam `dictionary dictionaryType broken .default)
    (.regular 0) .safe [mutantName]
  addDecl (.defnDecl mutant) (forceExpose := true)
  let registeredMutant ← definition mutantName
  if exactAbstraction original registeredMutant dictionaryType abstracted then
    throwError "RowAudit: ignored closed dictionary mutant accepted"
  let readEq ← definition ``Correspondence036.NativeRowDictionary.ReadEq
  let expectedReadEq ← elabTerm (← `(
    fun {K : Type} (a b : transition_study036.serde_json.value.index.Index K) =>
      ∀ (key : K) (value : transition_study036.serde_json.value.Value),
        a.index_into key value = b.index_into key value)) none
  synthesizeSyntheticMVarsNoPostponing
  unless ← isDefEq readEq.value (← instantiateMVars expectedReadEq) do
    throwError "RowAudit: weakened complete-result read relation"
  let concrete ← definition ``Correspondence036.NativeRowDictionary.concreteDictionary
  unless ← isDefEq concrete.value dictionary do
    throwError "RowAudit: wrong concrete dictionary"
  return Json.mkObj [
    ("source_function", toJson "transition_study036.reference.state_fact_row"),
    ("derived_function", toJson "Correspondence036.NativeRowDictionary.RowRead"),
    ("dictionary_instance", toJson "transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex"),
    ("consumer", toJson "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index"),
    ("sites", toJson count), ("reinstantiation_exact", toJson true),
    ("closed_constant_abstraction_rejected", toJson true)]

elab "#core036_row_abstraction_audit" : command => do
  let report ← liftTermElabM check
  liftIO <| IO.println s!"CORE036_ROW_ABSTRACTION {report.compress}"
#core036_row_abstraction_audit
end Core036.RowAbstractionAudit
'''
