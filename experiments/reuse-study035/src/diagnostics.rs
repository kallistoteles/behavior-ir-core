//! Diagnostic counters never authorize results. Missing is not zero.
use serde_json::{Value,json};
#[derive(Default)]
pub(crate) struct Diagnostics {
 pub enabled:bool,pub prepared_start:u64,pub seed_rows:u64,pub points:u64,pub fallbacks:u64,pub output_bytes:u64,
}
impl Diagnostics {
 pub(crate) fn snapshot(&self,actual_prepared:u64)->Value{
  if !self.enabled{return json!({"mode":"timing","fresh_prepared_invocations":null,"view_seed_rows":null,"view_point_updates":null,"fallback_invalidations":null,"required_output_bytes":null,"reason":"Detailed counters disabled in timing mode"});}
  json!({"mode":"work","fresh_prepared_invocations":actual_prepared-self.prepared_start,
   "view_seed_rows":self.seed_rows,"view_point_updates":self.points,"fallback_invalidations":self.fallbacks,
   "required_output_bytes":self.output_bytes,"semantic_unrelated_rows":null,
   "semantic_unrelated_rows_reason":"Native inner counters not yet integrated",
   "old_prefix_decision_visits":null,"old_prefix_decision_visits_reason":"Native inner counters not yet integrated",
   "allocation_copy_bytes":null,"allocation_copy_bytes_reason":"Exact allocator relocation/shared-page accounting unavailable"})
 }
}
