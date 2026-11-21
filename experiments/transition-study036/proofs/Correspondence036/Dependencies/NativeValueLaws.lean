module
public import CORE036_MODULE_PREFIX.NativeValueCandidate
@[expose] public section
open Aeneas Aeneas.Std transition_study036
set_option Aeneas.customDoElab false
set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
noncomputable section
namespace Correspondence036.NativeValueLowering

-- Equality of the actual complete method, including every branch and callback.
-- Native adequacy of the imported models remains a separate obligation.
theorem field_exact :
    @serde_core.ser.Serialize.serialize serde_json.value.Value
      serde_json.value.Value.Insts.Serde_coreSerSerialize =
    @serde_json.value.Value.Insts.Serde_coreSerSerialize.serialize := by
  conv =>
    lhs
    rw [serde_json.value.Value.Insts.Serde_coreSerSerialize.eq_def]
  simp only [serde_core.ser.Serialize.serialize_mk]
  rfl
end Correspondence036.NativeValueLowering
