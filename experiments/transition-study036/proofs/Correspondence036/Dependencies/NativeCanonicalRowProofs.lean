module
public import CanonicalRowNames.Funs
public meta import Lean
@[expose] public section

/- Proposed component proofs, awaiting actual compilation/kernel/source checks.
They establish no native API, runtime, error-observation or full Core claim. -/
namespace Correspondence036.NativeRowDictionary
open Aeneas.Std
abbrev Value := transition_study036.serde_json.value.Value
abbrev Dictionary (K : Type) := transition_study036.serde_json.value.index.Index K
abbrev Row := transition_study036.behavior_store.documents.SeedEntity
abbrev Rows := serde_json.map.Map String Value

def ReadEq {K : Type} (a b : Dictionary K) : Prop :=
  ∀ key value, a.index_into key value = b.index_into key value

def concreteDictionary : Dictionary Str :=
  transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex
    transition_study036.Str.Insts.Serde_jsonValueIndexIndex

def canonicalReadDict (read : Str → Value → Result (Option Value)) : Dictionary Str := {
  privateSealedInst := {}
  index_into := read
  index_into_mut := fun _ _ => Result.div
  index_or_insert := fun _ _ => Result.div
}

theorem shared_read_exact {K : Type} (dictionary : Dictionary K) (key : K) (value : Value) :
    _root_.Shared0T.Insts.Serde_jsonValueIndexIndex.index_into dictionary key value =
      dictionary.index_into key value := rfl

theorem value_index_exact {K : Type} (dictionary : Dictionary K) (key : K) (value : Value) :
    _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      (do let found ← dictionary.index_into key value; Result.ok (found.getD .Null)) := rfl

theorem shared_read_congr {K : Type} (a b : Dictionary K) (same : ReadEq a b)
    (key : K) (value : Value) :
    _root_.Shared0T.Insts.Serde_jsonValueIndexIndex.index_into a key value =
      _root_.Shared0T.Insts.Serde_jsonValueIndexIndex.index_into b key value := same key value

theorem shared_dictionary_read_congr {K : Type} (a b : Dictionary K) (same : ReadEq a b) :
    ReadEq (transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex a)
      (transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex b) := by
  intro key value
  exact same key value

theorem value_index_read_congr {K : Type} (a b : Dictionary K) (same : ReadEq a b)
    (value : Value) (key : K) :
    _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index a value key =
      _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index b value key := by
  simp only [value_index_exact, same key value]

public meta section
open Lean Elab Command Term Meta

partial def rowNorm : Expr → Expr
  | .mdata _ body => rowNorm body
  | .app f a => .app (rowNorm f) (rowNorm a)
  | .lam n ty body bi => .lam n (rowNorm ty) (rowNorm body) bi
  | .forallE n ty body bi => .forallE n (rowNorm ty) (rowNorm body) bi
  | .letE n ty value body nd => .letE n (rowNorm ty) (rowNorm value) (rowNorm body) nd
  | .proj n i body => .proj n i (rowNorm body)
  | other => other

elab "#derive_native_row_read" : command => do
  liftTermElabM do
    let info ← getConstInfo ``transition_study036.reference.state_fact_row
    let original ← match info with
      | .defnInfo value => pure value
      | _ => throwError "RowRead: actual source is not a definition"
    let dictionary ← elabTerm (← `(
      transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex
        transition_study036.Str.Insts.Serde_jsonValueIndexIndex)) none
    synthesizeSyntheticMVarsNoPostponing
    let dictionary := rowNorm (← instantiateMVars dictionary)
    let dictionaryType := rowNorm (← inferType dictionary)
    let body := rowNorm original.value
    if body.hasFVar || body.hasMVar || body.hasLooseBVars then
      throwError "RowRead: original definition is not closed"
    let abstracted ← withLocalDeclD `dictionary dictionaryType fun parameter => do
      let replaced := Expr.replace
        (fun expression => if expression == dictionary then some parameter else none) body
      unless replaced.hasFVar do
        throwError "RowRead: no closed dictionary occurrence replaced"
      pure (replaced.abstract #[parameter])
    if abstracted.hasFVar || abstracted.hasMVar then
      throwError "RowRead: open abstraction"
    unless abstracted.instantiate1 dictionary == body do
      throwError "RowRead: capture-avoiding reinstantiation failed"
    let destination := Name.str (Name.str (Name.str .anonymous "Correspondence036")
      "NativeRowDictionary") "RowRead"
    let derived := mkDefinitionValEx destination original.levelParams
      (.forallE `dictionary dictionaryType (rowNorm original.type) .default)
      (.lam `dictionary dictionaryType abstracted .default)
      (.regular 0) .safe [destination]
    addDecl (.defnDecl derived) (forceExpose := true)
    saveEqnAffectingOptions destination
    enableRealizationsForConst destination

end
#derive_native_row_read

theorem generated_row_is_RowRead (row : Row) (parents children : Rows) :
    transition_study036.reference.state_fact_row row parents children =
      RowRead concreteDictionary row parents children := rfl

theorem row_read_noninterference (a b : Dictionary Str) (same : ReadEq a b)
    (row : Row) (parents children : Rows) :
    RowRead a row parents children = RowRead b row parents children := by
  have reads : ∀ key value, a.index_into key value = b.index_into key value := same
  simp only [RowRead,
    _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index,
    NativeCanonicalRowOperations.valueIndex]
  simp only [reads]

theorem generated_row_read_replacement (row : Row) (parents children : Rows) :
    transition_study036.reference.state_fact_row row parents children =
      RowRead (canonicalReadDict concreteDictionary.index_into) row parents children := by
  rw [generated_row_is_RowRead]
  apply row_read_noninterference
  intro key value
  rfl

end Correspondence036.NativeRowDictionary
