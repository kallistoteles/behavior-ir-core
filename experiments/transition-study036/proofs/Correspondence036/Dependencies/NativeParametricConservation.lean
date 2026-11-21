module
public import NativeProjectionLaws
public import Lean
public import Lean.Util.CollectAxioms
public meta section
open Lean Elab Command Term Meta

/- Executor-side typed conservation check, not a theorem or native admission.
The independent theorem audit and kernel policy remain unchanged. -/
namespace Core036.ParametricConservation

private def qname (parts : List String) : Name := parts.foldl Name.str .anonymous
private def oldType := qname ["transition_study036", "error", "StudyError"]
private def newType := qname ["transition_study036", "error", "ParametricStudyError"]
private def oldFunction := qname ["transition_study036", "reference", "state_fact_row"]
private def newFunction := qname ["transition_study036", "reference", "parametric_state_fact_row"]
private def jsonCarrier := qname ["serde_json", "error", "Error"]
private def ioCarrier := qname ["core", "io", "error", "Error"]
private def roles : List String := ["InvalidInput", "Prerequisite", "Library", "Json", "Io"]
private def typeSort : Expr := .sort (.succ .zero)
private def foundations : List Name := [qname ["propext"], qname ["Classical", "choice"], qname ["Quot", "sound"]]

private def reject {α} (reason : String) : TermElabM α :=
  throwError "Core036ParametricConservation: {reason}"
private def require (condition : Bool) (reason : String) : TermElabM Unit := do
  unless condition do reject reason

private def references (e : Expr) (acc : NameSet := {}) : NameSet :=
  match e with
  | .const n _ => acc.insert n
  | .app f a => references a (references f acc)
  | .lam _ domain body _ | .forallE _ domain body _ => references body (references domain acc)
  | .letE _ ty value body _ => references body (references value (references ty acc))
  | .mdata _ body => references body acc
  | .proj n _ body => references body (acc.insert n)
  | _ => acc

/- Traverse types, opaque/theorem values and recursor RHSs as well as metadata
family edges. No imported axiom-cache entry substitutes for this traversal. -/
private partial def deepAxioms (todo : List Name) (seen result : NameSet)
    (fuel : Nat) : TermElabM NameSet := do
  match todo with
  | [] => return result
  | declName :: tail =>
    if seen.contains declName then return ← deepAxioms tail seen result fuel
    if fuel == 0 then reject "dependency-bound"
    let env := (← getEnv).setExporting false
    let some info := env.find? declName | reject s!"missing-dependency {declName}"
    let mut refs := references info.type
    if let some value := info.value? true then refs := references value refs
    let mut result := result
    match info with
    | .axiomInfo _ => result := result.insert declName
    | .inductInfo value =>
      for n in value.all ++ value.ctors do refs := refs.insert n
    | .ctorInfo value => refs := refs.insert value.induct
    | .recInfo value =>
      for n in value.all do refs := refs.insert n
      for rule in value.rules do
        refs := references rule.rhs (refs.insert rule.ctor)
    | _ => pure ()
    return ← deepAxioms (refs.toArray.toList ++ tail) (seen.insert declName) result (fuel - 1)

private def translate (j i : Expr) (e : Expr) : Except String Expr := do
  match e with
  | .const declName levels =>
    if declName == jsonCarrier || declName == ioCarrier then
      if !levels.isEmpty then throw "carrier-universes"
      return if declName == jsonCarrier then j else i
    let mapping := (oldType, newType) :: roles.map (fun role => (Name.str oldType role, Name.str newType role))
    if let some pair := mapping.find? (fun pair => pair.1 == declName) then
      if !levels.isEmpty then throw "family-universes"
      return mkApp2 (.const pair.2 []) j i
    return .const declName levels
  | .app f a => return .app (← translate j i f) (← translate j i a)
  | .lam declName domain body annotation => return .lam declName (← translate j i domain) (← translate j i body) annotation
  | .forallE declName domain body annotation => return .forallE declName (← translate j i domain) (← translate j i body) annotation
  | .letE declName ty value body nondep => return .letE declName (← translate j i ty) (← translate j i value) (← translate j i body) nondep
  | .mdata data body => return .mdata data (← translate j i body)
  | .proj declName index body =>
    if declName == oldType || declName == jsonCarrier || declName == ioCarrier then throw "affected-projection"
    return .proj declName index (← translate j i body)
  | .fvar _ | .mvar _ => throw "nonclosed-original"
  | _ => return e

private def tau (j i e : Expr) : TermElabM Expr :=
  match translate j i e with
  | .ok value => pure value
  | .error reason => reject reason

private def hasTypeBinders (e : Expr) (annotation : BinderInfo) : Bool :=
  match e with
  | .forallE _ a (.forallE _ b _ second) first =>
    a == typeSort && b == typeSort && first == annotation && second == annotation
  | _ => false

/- Expand only compiler-generated matchers belonging to the exact original
function. They are definitions, never new assumptions or renamed operations. -/
private def ownsMatcher (declName : Name) : Bool :=
  match declName with
  | .str parent leaf => parent == oldFunction && leaf.startsWith "match_"
  | _ => false

private partial def matcherClosure (todo : List Name) (seen : NameSet)
    (fuel : Nat) : TermElabM NameSet := do
  match todo with
  | [] => return seen
  | declName :: tail =>
    if seen.contains declName || !ownsMatcher declName then
      return ← matcherClosure tail seen fuel
    if fuel == 0 then reject "matcher-closure-bound"
    require (← Lean.Meta.isMatcher declName) "original-auxiliary-not-matcher"
    let info ← getConstInfo declName
    match info with
    | .defnInfo value =>
      require (!info.isUnsafe && !info.isPartial) "original-matcher-safety"
      let dependencies := references value.value (references value.type)
      return ← matcherClosure (dependencies.toArray.toList ++ tail)
        (seen.insert declName) (fuel - 1)
    | _ => reject "original-matcher-kind"

private partial def expandMatchers (allowed : NameSet) (e : Expr)
    (fuel : Nat) : TermElabM Expr := do
  if fuel == 0 then reject "matcher-expansion-bound"
  let next := fuel - 1
  match e with
  | .const declName levels =>
    if !allowed.contains declName then return e
    let info ← getConstInfo declName
    require (info.levelParams.length == levels.length) "matcher-universe-arity"
    let some value := info.value? true | reject "matcher-definition-missing"
    return ← expandMatchers allowed (value.instantiateLevelParams info.levelParams levels) next
  | .app f a => return .app (← expandMatchers allowed f next) (← expandMatchers allowed a next)
  | .lam binder domain body annotation =>
    return .lam binder (← expandMatchers allowed domain next) (← expandMatchers allowed body next) annotation
  | .forallE binder domain body annotation =>
    return .forallE binder (← expandMatchers allowed domain next) (← expandMatchers allowed body next) annotation
  | .letE binder ty value body nondep =>
    return .letE binder (← expandMatchers allowed ty next) (← expandMatchers allowed value next) (← expandMatchers allowed body next) nondep
  | .mdata data body => return .mdata data (← expandMatchers allowed body next)
  | .proj declName index body => return .proj declName index (← expandMatchers allowed body next)
  | _ => return e

private def admitCertificate (certificateName : Name) (certificateType certificateValue : Expr)
    (stage : String) : TermElabM Unit := do
  try
    liftM <| withOptions (fun options => Lean.Elab.async.set options false) <|
      addDecl (.thmDecl
        ⟨⟨certificateName, [], certificateType⟩, certificateValue, [certificateName]⟩)
        (forceExpose := true)
  catch error => throwError m!"Core036ParametricConservation: {stage} {error.toMessageData}"

private def check : TermElabM Json := do
  require (!(debug.skipKernelTC.get (← getOptions))) "kernel-check-disabled"
  for carrier in [jsonCarrier, ioCarrier] do
    let info ← getConstInfo carrier
    require (info.levelParams.isEmpty && info.type == typeSort && !info.isUnsafe) "original-carrier-kind"
    match info with
    | .axiomInfo _ => pure ()
    | _ => reject "original-carrier-signature"
  let oldInfo ← getConstInfo oldType
  let newInfo ← getConstInfo newType
  let oi ← match oldInfo with | .inductInfo value => pure value | _ => reject "old-family-kind"
  let ni ← match newInfo with | .inductInfo value => pure value | _ => reject "new-family-kind"
  require (oi.numParams == 0 && ni.numParams == 2 && oi.numIndices == 0 && ni.numIndices == 0) "family-parameters"
  require (oi.all == [oldType] && ni.all == [newType] && oi.numNested == 0 && ni.numNested == 0) "family-group"
  require (!oi.isUnsafe && !ni.isUnsafe && !oi.isRec && !ni.isRec && !oi.isReflexive && !ni.isReflexive) "family-safety"
  require (oldInfo.levelParams.isEmpty && newInfo.levelParams.isEmpty && oldInfo.type == typeSort && hasTypeBinders newInfo.type .default) "family-universes"
  require (oi.ctors == roles.map (Name.str oldType) && ni.ctors == roles.map (Name.str newType)) "five-constructor-order"
  let oldFn ← getConstInfo oldFunction
  let newFn ← getConstInfo newFunction
  match oldFn, newFn with
  | .defnInfo _, .defnInfo _ => pure ()
  | _, _ => reject "function-kind"
  require (!oldFn.isUnsafe && !newFn.isUnsafe && !oldFn.isPartial && !newFn.isPartial && oldFn.levelParams.isEmpty && newFn.levelParams.isEmpty) "function-safety"
  require (hasTypeBinders newFn.type .implicit) "function-type-binders"
  let some rawOriginal := oldFn.value? true | reject "old-function-value"
  let matchers ← matcherClosure (references rawOriginal).toArray.toList {} 64
  let original ← expandMatchers matchers rawOriginal 4096
  /- Meta reduction may refuse a generated matcher. Kernel admission of an
  explicit reflexivity proof checks the complete delta expansion instead.
  This old-signature certificate is separate from foundation-only roots. -/
  let expansionName := qname ["Core036", "ParametricConservation", "original_definition_expansion"]
  let expansionType ← mkEq rawOriginal original
  let expansionProof ← mkEqRefl rawOriginal
  admitCertificate expansionName expansionType expansionProof "original-expansion-kernel-certificate"
  let direct := references original (references oldFn.type)
  let mapped := jsonCarrier :: ioCarrier :: oldType :: roles.map (Name.str oldType)
  for declName in direct.toArray do
    if !mapped.contains declName then
      let axioms ← deepAxioms [declName] {} {} 50000
      require (!axioms.contains jsonCarrier && !axioms.contains ioCarrier) s!"unmapped-shared-dependency {declName}"
  let axioms ← deepAxioms [newFunction] {} {} 50000
  for declName in axioms.toArray do require (foundations.contains declName) s!"new-signature-dependency {declName}"
  withLocalDeclD (.str .anonymous "J") typeSort fun j =>
    withLocalDeclD (.str .anonymous "I") typeSort fun i => do
      unless ← isDefEq (← inferType (mkApp2 (.const newType []) j i)) typeSort do
        reject "family-codomain"
      let newCall := mkApp2 (.const newFunction []) j i
      unless ← isDefEq (← inferType newCall) (← tau j i oldFn.type) do reject "function-signature"
      let transformed ← tau j i original
      let equality ← mkEq newCall transformed
      let proof ← mkEqRefl newCall
      let certificateType ← mkForallFVars #[j, i] equality
      let certificateValue ← mkLambdaFVars #[j, i] proof
      let certificateName := qname ["Core036", "ParametricConservation", "definition_transport"]
      admitCertificate certificateName certificateType certificateValue "function-kernel-certificate"
      for index in [:roles.length] do
        let oldCtor ← getConstInfo (oi.ctors[index]!)
        let newCtor ← getConstInfo (ni.ctors[index]!)
        let oc ← match oldCtor with | .ctorInfo value => pure value | _ => reject "old-constructor-kind"
        let nc ← match newCtor with | .ctorInfo value => pure value | _ => reject "new-constructor-kind"
        require (oc.induct == oldType && nc.induct == newType && oc.cidx == index && nc.cidx == index && oc.numParams == 0 && nc.numParams == 2 && oc.numFields == 1 && nc.numFields == 1) "constructor-metadata"
        require (!oc.isUnsafe && !nc.isUnsafe && oldCtor.levelParams.isEmpty && newCtor.levelParams.isEmpty) "constructor-safety"
        let applied := mkApp2 (.const newCtor.name []) j i
        unless ← isDefEq (← inferType applied) (← tau j i oldCtor.type) do reject "constructor-signature"
      return Json.mkObj [
        ("old_function", toJson oldFunction.toString), ("new_function", toJson newFunction.toString),
        ("constructor_roles", toJson roles), ("type_value_correspondence", toJson true),
        ("kernel_certificate", toJson certificateName.toString),
        ("original_expansion_certificate", toJson expansionName.toString),
        ("expanded_original_matchers", toJson (matchers.toArray.map Name.toString)),
        ("shared_dependencies_carrier_free", toJson true),
        ("new_axioms", toJson (axioms.toArray.map Name.toString)),
        ("scope", toJson "Typed constructor and function substitution only; original specialization and native interpretation remain separate"),
        ("native_proof", toJson "unestablished"), ("feature_complete", toJson false)]

elab "#core036_parametric_audit" : command => do
  let result ← liftTermElabM check
  liftIO <| IO.println s!"CORE036_PARAMETRIC_AUDIT {result.compress}"

end Core036.ParametricConservation
