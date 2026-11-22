module
public import CanonicalRowNames.Funs
@[expose] public section
open Aeneas.Std Result

/- Prospective independently checked semantic witness for the owning-source
Null mutation. No positive wrapper theorem is imported. Run only against the
actual freshly extracted mutant and separately bound source/cfg context. -/
namespace Correspondence036.NativeAccessorSourceCanary

theorem mutant_null_is_some :
    transition_study036.serde_json.value.Value.impl.as_str
      transition_study036.serde_json.value.Value.Null = ok (some (toStr "")) := rfl

theorem mutant_null_not_none :
    transition_study036.serde_json.value.Value.impl.as_str
      transition_study036.serde_json.value.Value.Null ≠ ok none := by
  intro claimed
  have impossible : some (toStr "") = (none : Option Str) :=
    Result.ok_injective (mutant_null_is_some.symm.trans claimed)
  cases impossible

end Correspondence036.NativeAccessorSourceCanary
