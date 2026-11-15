"""Add phase-only observations to the isolated crate copy; never edit primary inputs."""
from pathlib import Path
base=Path('/data/repos/behavior-ir-core-033/experiments/assurance-study034/private/phase-002/source')
p=base/'src/history_check.rs';s=p.read_text()
def replace(old,new):
 global s
 if s.count(old)!=1:raise ValueError('Unexpected source seam: '+old[:70])
 s=s.replace(old,new)
replace('use std::collections::BTreeMap;','''use std::{collections::BTreeMap,time::Instant};
// PHASE002 diagnostic-only timing; no Core calls or acceptance checks removed.
fn phase_ns(start:Instant)->u64{start.elapsed().as_nanos().min(u64::MAX as u128)as u64}
fn phase_add(phases:&mut BTreeMap<&'static str,u64>,name:&'static str,start:Instant){let value=phases.entry(name).or_default();*value=value.saturating_add(phase_ns(start));}''')
replace('pub fn check(packet: &HistoryPacket, expected: &Expected) -> Result<CheckedHistory> {','''pub fn check(packet: &HistoryPacket, expected: &Expected) -> Result<CheckedHistory> {
 let total=Instant::now();let mut stamp=Instant::now();
 let mut phases:BTreeMap<&'static str,u64>=["subject","reconstruct","data_replay","behavior_replay","own_origin","attempt_parent","invocation_replay","own_invoke_commit","historical_property","compare_and_reopen"].into_iter().map(|name|(name,0)).collect();''')
replace('    let rebuilt = capture::reconstruct(&packet.backend)?;','''    phase_add(&mut phases,"subject",stamp);stamp=Instant::now();
    let rebuilt = capture::reconstruct(&packet.backend)?;''')
replace('    let data = behavior_engine::store::replay::replay_data(','''    phase_add(&mut phases,"reconstruct",stamp);stamp=Instant::now();
    let data = behavior_engine::store::replay::replay_data(''')
replace('    let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);','''    phase_add(&mut phases,"data_replay",stamp);stamp=Instant::now();
    let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);''')
replace('    // Re-derive every captured argument through actual Core in a separate Store.','''    phase_add(&mut phases,"behavior_replay",stamp);stamp=Instant::now();
    // Re-derive every captured argument through actual Core in a separate Store.''')
replace('    for (request, attempt) in expected.requests.iter().zip(&packet.attempts) {','''    phase_add(&mut phases,"own_origin",stamp);
    for (request, attempt) in expected.requests.iter().zip(&packet.attempts) {
        let mut step=Instant::now();''')
replace('        let replay = rebuilt','''        phase_add(&mut phases,"attempt_parent",step);step=Instant::now();
        let replay = rebuilt''')
replace('        let inv = fixtures::invoke_request(&checked, &module, request)?;','''        phase_add(&mut phases,"invocation_replay",step);step=Instant::now();
        let inv = fixtures::invoke_request(&checked, &module, request)?;''')
replace('        if expected.require_safety\n            && behavior_models::safety::snapshot::validate_store_snapshot(','''        phase_add(&mut phases,"own_invoke_commit",step);step=Instant::now();
        if expected.require_safety
            && behavior_models::safety::snapshot::validate_store_snapshot(''')
replace('            return Err(StudyError::Prerequisite("HistoricalPropertyViolation"));\n        }\n    }','''            return Err(StudyError::Prerequisite("HistoricalPropertyViolation"));
        }
        phase_add(&mut phases,"historical_property",step);
    }
    stamp=Instant::now();''')
replace('    let report = json!({"format":"core034.checked-history.v1"','    phase_add(&mut phases,"compare_and_reopen",stamp);\n    let mut report = json!({"format":"core034.checked-history.v1"')
replace('    Ok(CheckedHistory {\n        store,','''    report["diagnostics"]=json!({"diagnostic_probe":"PHASE002","fresh_phases_ns":phases,"fresh_total_ns":phase_ns(total),"public_work_counts":{"requests_rederived":expected.requests.len(),"invocations_replayed":expected.requests.len(),"committed_arguments_compared":packet.backend.commits.len(),"original_state_checks":if expected.require_safety{expected.requests.len()+1}else{0},"explicit_data_replay_calls":1,"explicit_behavior_replay_calls":1},"count_scope":"Public call counts, not internal backend/query visits; behavior replay and Store::open perform additional work according to pinned source"});
    Ok(CheckedHistory {
        store,''')
replace('    ) -> Result<Self> {\n        if &self.endpoint()? != parent {','''    ) -> Result<Self> {
        let total=Instant::now();let mut stamp=Instant::now();let mut phases=BTreeMap::new();
        if &self.endpoint()? != parent {''')
replace('        let inv = fixtures::invoke_request(&self.store, &self.module, request)?;','''        phase_add(&mut phases,"parent_check",stamp);stamp=Instant::now();
        let inv = fixtures::invoke_request(&self.store, &self.module, request)?;
        phase_add(&mut phases,"invoke",stamp);stamp=Instant::now();''')
replace('        if let Some(bundle) = &inv.bundle {\n            self.store','''        phase_add(&mut phases,"candidate_compare",stamp);stamp=Instant::now();
        if let Some(bundle) = &inv.bundle {
            self.store''')
replace('        if &self.endpoint()? != endpoint {','''        phase_add(&mut phases,"commit",stamp);stamp=Instant::now();
        if &self.endpoint()? != endpoint {''')
replace('        if self.expected.require_safety {','''        phase_add(&mut phases,"endpoint_check",stamp);stamp=Instant::now();
        if self.expected.require_safety {''')
replace('        self.expected.endpoint = endpoint.clone();','''        phase_add(&mut phases,"property_check",stamp);stamp=Instant::now();
        self.expected.endpoint = endpoint.clone();''')
replace('        Ok(self)\n    }','''        phase_add(&mut phases,"report_update",stamp);
        self.report["diagnostics"]["resident_phases_ns"]=json!(phases);
        self.report["diagnostics"]["resident_total_ns"]=json!(phase_ns(total));
        Ok(self)
    }''')
p.write_text(s)
p=base/'src/consumer_worker.rs';s=p.read_text();old='report["diagnostics"] = json!({"basis_establishment_ns":establishment_ns,';new='let internal_phases=report["diagnostics"].clone();\n        report["diagnostics"] = json!({"internal_phases":internal_phases,"basis_establishment_ns":establishment_ns,'
if s.count(old)!=1:raise ValueError('Unexpected consumer seam')
p.write_text(s.replace(old,new))
print('Phase observations added only to isolated PHASE002 research copy')
