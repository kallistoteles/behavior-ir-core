//! Diagnostic counters never authorize results. Missing is not zero.
use serde_json::Value;
#[derive(Default)]
pub(crate) struct Diagnostics {
    pub enabled: bool,
    pub prepared_start: u64,
    pub seed_rows: u64,
    pub points: u64,
    pub fallbacks: u64,
    pub output_bytes: u64,
}
impl Diagnostics {
    pub(crate) fn snapshot(&self, actual_prepared: u64) -> Value {
        if !self.enabled {
            return crate::native_object! {
             "mode" => crate::native_text!("timing"), "fresh_prepared_invocations" => Value::Null,
             "view_seed_rows" => Value::Null, "view_point_updates" => Value::Null,
             "fallback_invalidations" => Value::Null, "required_output_bytes" => Value::Null,
             "reason" => crate::native_text!("Detailed counters disabled in timing mode")
            };
        }
        crate::native_object! {
         "mode" => crate::native_text!("work"), "fresh_prepared_invocations" => Value::from(actual_prepared-self.prepared_start),
         "view_seed_rows" => Value::from(self.seed_rows), "view_point_updates" => Value::from(self.points),
         "fallback_invalidations" => Value::from(self.fallbacks), "required_output_bytes" => Value::from(self.output_bytes),
         "semantic_unrelated_rows" => Value::Null,
         "semantic_unrelated_rows_reason" => crate::native_text!("Native inner counters not yet integrated"),
         "old_prefix_decision_visits" => Value::Null,
         "old_prefix_decision_visits_reason" => crate::native_text!("Native inner counters not yet integrated"),
         "allocation_copy_bytes" => Value::Null,
         "allocation_copy_bytes_reason" => crate::native_text!("Exact allocator relocation/shared-page accounting unavailable")
        }
    }
}
