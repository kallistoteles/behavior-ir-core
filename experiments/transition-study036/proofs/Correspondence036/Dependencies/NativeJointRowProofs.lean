module
public import NativeJointRowSpec
public import NativeCanonicalRowExact
public import NativeTypedSeedProofs
@[expose] public section

namespace Correspondence036.NativeJointRow
open Aeneas.Std

theorem lookup_agrees (rows : NativeCanonicalRow.Map) (query : String) :
    NativeCanonicalRow.lookup rows query = NativeTypedSeed.lookup rows query := by
  induction rows with
  | nil => rfl
  | cons key value rest ih => simp only [NativeCanonicalRow.lookup, NativeTypedSeed.lookup, ih]

theorem field_agrees (value : NativeCanonicalRow.Value) (query : String) :
    NativeCanonicalRow.field value query = NativeTypedSeed.field value query := by
  cases value <;> simp only [NativeCanonicalRow.field, NativeTypedSeed.field, lookup_agrees]

theorem project_put {V : Type} (encode : V → NativeCanonicalRow.Value) (rows : NativeTypedSeed.Map V)
    (key : String) (value : V) :
    projectWith encode (NativeTypedSeed.put key value rows) = NativeCanonicalRow.put (projectWith encode rows) key (encode value) := by
  induction rows with
  | nil => rfl
  | cons stored previous rest ih =>
    simp only [NativeTypedSeed.put, projectWith, NativeCanonicalRow.put, NativeCanonicalRowOperations.orderedInsert]
    cases cmp : compare key.toByteArray stored.toByteArray <;>
      simp only [cmp, projectWith, Prod.snd, ih, NativeCanonicalRow.put]

theorem pure_commutes (key : NativeTypedSeed.Key) (version : NativeTypedSeed.Version) (ps : NativeTypedSeed.Parents)
    (cs : NativeTypedSeed.Children) (active : NativeTypedSeed.Active) (compatible : Compatible key version) :
    let stepped := NativeTypedSeed.seedSpec key version ps cs active
    stepped.1 = .Ok () ∧
    NativeCanonicalRow.rowSpec (fromVersion version) (parents ps) (children cs) =
      (.Ok (), parents stepped.2.1, children stepped.2.2.1) := by
  obtain ⟨idField, sameEntity, branch⟩ := compatible
  have canonicalId : NativeCanonicalRow.textId (fromVersion version) = some key.id := by
    simp [NativeCanonicalRow.textId, fromVersion, field_agrees, idField]
  rcases branch with ⟨parent, phase, phaseField, valid⟩ | ⟨child, owner, phase, ownerField, phaseField, valid⟩
  · have entity : version.entity = "Parent" := sameEntity.symm.trans parent
    simp [NativeTypedSeed.seedSpec, NativeTypedSeed.textSpec, idField, phaseField, valid, parent, sameEntity,
      NativeCanonicalRow.rowSpec, canonicalId, fromVersion, entity, field_agrees,
      parents, children, project_put]
  · have entity : version.entity = "Child" := sameEntity.symm.trans child
    have notParent : key.entity ≠ "Parent" := by simp [child]
    simp [NativeTypedSeed.seedSpec, NativeTypedSeed.textSpec, idField, ownerField, phaseField, valid, child,
      notParent, sameEntity, NativeCanonicalRow.rowSpec, canonicalId, fromVersion, entity,
      NativeCanonicalRow.childFields, field_agrees, parents, children, project_put, childValue]

theorem rows_commute (key : NativeTypedSeed.Key) (version : NativeTypedSeed.Version) (ps : NativeTypedSeed.Parents)
    (cs : NativeTypedSeed.Children) (active : NativeTypedSeed.Active) (domain : NativeTypedSeed.InputDomain key version)
    (compatible : Compatible key version) :
    let stepped := NativeTypedSeed.seedSpec key version ps cs active
    transition_study036.views.seed_row key version ps cs active = Result.ok stepped ∧
    stepped.1 = .Ok () ∧
    transition_study036.reference.state_fact_row (fromVersion version) (parents ps) (children cs) =
      Result.ok (.Ok (), parents stepped.2.1, children stepped.2.2.1) := by
  have canonicalDomain : NativeCanonicalRow.InputDomain (fromVersion version) (parents ps) (children cs) := by
    constructor
    · simpa only [fromVersion, ← compatible.2.1] using domain.1
    · intro id found
      have idField : NativeTypedSeed.field version.value "id" = .String id := by
        cases fieldCase : NativeTypedSeed.field version.value "id" <;>
          simp_all [NativeCanonicalRow.textId, fromVersion, field_agrees]
      exact domain.2 "id" id idField
  refine ⟨NativeTypedSeed.seed_row_exact key version ps cs active domain, ?_⟩
  obtain ⟨success, commute⟩ := pure_commutes key version ps cs active compatible
  exact ⟨success, (NativeCanonicalRow.state_fact_row_exact _ _ _ canonicalDomain).trans (congrArg Result.ok commute)⟩

end Correspondence036.NativeJointRow
