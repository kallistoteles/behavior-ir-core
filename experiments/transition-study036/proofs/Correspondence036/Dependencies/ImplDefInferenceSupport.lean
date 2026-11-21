module
public import Aeneas
public meta import Lean.Elab.DefView
public meta import Lean.Elab.PreDefinition.Basic
@[expose] public section
namespace Core036.ImplInferenceSupport
open Aeneas.TraitDefault
open Lean Elab Term Meta Command
open Lean.Parser.Term Lean.Parser.Command
elab (name := implDefInferUniverses) (priority := high) mods:declModifiers "impl_def " id:declId sig:optDeclSig val:declVal : command => do
  let modifiers ← elabModifiers mods
  let inPublicScope := (← getScope).isPublic
  let (binders, type?) := expandOptDeclSig sig
  let typeStx ← match type? with
    | some t => pure t
    | none => throwErrorAt sig "impl_def requires an explicit type annotation"

  let valStx ←
    if val.raw.isOfKind ``Lean.Parser.Command.declValSimple then
      pure val.raw[1]
    else
      throwErrorAt val.raw "impl_def only supports `:= body` syntax"

  runTermElabM fun _sectionVars => do
    let isPub :=
      if inPublicScope || !(← getEnv).header.isModule then !modifiers.visibility.isPrivate
      else modifiers.visibility.isPublic
    let modifiers := { modifiers with visibility := if isPub then .public else .private }
    let ⟨shortDeclName, declName, levelNames, _⟩ ←
      Term.expandDeclId (← getCurrNamespace) (← getLevelNames) id modifiers

    withDeclName declName do
    withLevelNames levelNames do
    withAutoBoundImplicit do

    elabBinders binders.getArgs fun xs => do
      let type ← elabType typeStx
      Term.synthesizeSyntheticMVarsNoPostponing

      let fullType ← mkForallFVars xs type
      -- Infer universe constraints from the actual fields before generalizing.

      -- Introduce a local variable so the body can mention the name being defined
      withAuxDecl shortDeclName fullType declName fun selfFvar => do
        trace[Aeneas.implDef] "impl_def: declName={declName} fvar={selfFvar} type={fullType}"
        let val ← elabTermEnsuringType valStx (some type)
        Term.synthesizeSyntheticMVarsNoPostponing
        let val ← instantiateMVars val

        trace[Aeneas.implDef] "Elaborated value: {val}"

        -- Resolve recursive structure fields
        let processedVal ← resolveStructFields val selfFvar.fvarId! type

        trace[Aeneas.implDef] "Processed value: {processedVal}"

        if exprContainsFVar processedVal selfFvar.fvarId! then
          throwError "impl_def: could not eliminate all self-references in {declName}"

        let fullVal ← mkLambdaFVars xs processedVal
        let fullType ← Term.levelMVarToParam (← instantiateMVars fullType)
        let fullVal ← instantiateMVars fullVal

        -- Collect and sort universe level parameters
        let mut s : CollectLevelParams.State := {}
        s := collectLevelParams s fullType
        s := collectLevelParams s fullVal
        let scopeLevelNames ← getLevelNames
        let allUserLevelNames := levelNames
        let levelParams ← IO.ofExcept <|
          sortDeclLevelParams scopeLevelNames allUserLevelNames s.params

        -- Build and register the definition
        let preDef : PreDefinition := {
          ref := id.raw
          kind := .def
          levelParams := levelParams
          modifiers := modifiers
          declName := declName
          binders := binders
          type := fullType
          value := fullVal
          termination := .none
        }

        let docCtx := (← getLCtx, ← getLocalInstances)
        withExporting (isExporting := isPub) do
          addAndCompileNonRec docCtx preDef

end Core036.ImplInferenceSupport
