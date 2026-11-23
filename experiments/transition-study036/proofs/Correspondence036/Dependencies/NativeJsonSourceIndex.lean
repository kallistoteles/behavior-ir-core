module
public import SeedFoldsNames.Funs
@[expose] public section

/- Actual-source caller laws are specified independently before their proofs.
This initial source intentionally supplies no theorem roots. The declared Lean
run must observe the missing-root failure before the proofs are implemented.
Native String, collection and runtime adequacy remain separate obligations. -/
namespace Correspondence036.NativeJsonSourceIndex
abbrev Value := transition_study036.serde_json.value.Value
abbrev Dictionary (I : Type) := transition_study036.serde_json.value.index.Index I
end Correspondence036.NativeJsonSourceIndex
