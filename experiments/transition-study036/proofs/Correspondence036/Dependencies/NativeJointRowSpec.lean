module
public import NativeCanonicalRowSpec
public import NativeTypedSeedSpec
@[expose] public section

/- Independent success-input/projection contract. This does not identify the
different error contracts or admit native collection/runtime interpretations. -/
namespace Correspondence036.NativeJointRow
open Aeneas.Std

def childValue (row : NativeTypedSeed.Child) : NativeCanonicalRow.Value :=
  .Object (NativeCanonicalRow.put (NativeCanonicalRow.put .nil "phase" (.String row.phase)) "owner" (.String row.owner))

def projectWith {V : Type} (encode : V → NativeCanonicalRow.Value) : NativeTypedSeed.Map V → NativeCanonicalRow.Map
  | .nil => .nil
  | .cons key value rest => .cons key (encode value) (projectWith encode rest)

def parents (rows : NativeTypedSeed.Parents) : NativeCanonicalRow.Map := projectWith (fun phase => .String phase) rows
def children (rows : NativeTypedSeed.Children) : NativeCanonicalRow.Map := projectWith childValue rows
def fromVersion (version : NativeTypedSeed.Version) : NativeCanonicalRow.Row :=
  { entity := version.entity, value := version.value }

def Compatible (key : NativeTypedSeed.Key) (version : NativeTypedSeed.Version) : Prop :=
  NativeTypedSeed.field version.value "id" = .String key.id ∧ key.entity = version.entity ∧
  ((key.entity = "Parent" ∧ ∃ phase,
      NativeTypedSeed.field version.value "phase" = .String phase ∧ phase ∈ ["Open", "Gone", "Abandoned"]) ∨
   (key.entity = "Child" ∧ ∃ owner phase,
      NativeTypedSeed.field version.value "owner" = .String owner ∧
      NativeTypedSeed.field version.value "phase" = .String phase ∧ phase ∈ ["Active", "Terminal"]))

end Correspondence036.NativeJointRow
