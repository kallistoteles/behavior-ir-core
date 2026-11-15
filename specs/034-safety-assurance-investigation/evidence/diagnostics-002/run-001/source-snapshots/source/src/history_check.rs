//! Actual-history consumers. A parsed packet is never a checked basis.
use crate::{
    capture::{self, BackendPacket, Capture},
    error::{Result, StudyError, library},
    fixtures,
};
use behavior_engine::{
    semantic::Module,
    store::{InMemoryBackend, Store, documents::HistoryRef},
};
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use std::{collections::BTreeMap,time::Instant};
// PHASE002 diagnostic-only timing; no Core calls or acceptance checks removed.
fn phase_ns(start:Instant)->u64{start.elapsed().as_nanos().min(u64::MAX as u128)as u64}
fn phase_add(phases:&mut BTreeMap<&'static str,u64>,name:&'static str,start:Instant){let value=phases.entry(name).or_default();*value=value.saturating_add(phase_ns(start));}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Attempt {
    pub invocation: Value,
    pub before: HistoryRef,
    pub after: HistoryRef,
    pub committed: bool,
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct HistoryPacket {
    pub format: String,
    pub backend: BackendPacket,
    pub module: String,
    pub policies: Option<Value>,
    pub attempts: Vec<Attempt>,
    pub migrations: Vec<String>,
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Expected {
    pub variant: String,
    pub behavior: String,
    pub policy_set_hash: String,
    pub origin: HistoryRef,
    pub endpoint: HistoryRef,
    pub requests: Vec<Value>,
    pub require_safety: bool,
}
// No Deserialize, public fields, boolean-import constructor or producer authority.
pub struct CheckedHistory {
    store: Store<InMemoryBackend>,
    module: Module,
    expected: Expected,
    report: Value,
}
impl CheckedHistory {
    pub fn endpoint(&self) -> Result<HistoryRef> {
        self.store.current_history().map_err(library)
    }
    pub fn report(&self) -> Value {
        self.report.clone()
    }
    pub fn safety_checked(&self) -> bool {
        self.expected.require_safety
    }
    // Consume the old capability. A failed extension cannot leave a descriptor
    // masquerading as an established new basis.
    pub fn extend(
        mut self,
        request: &Value,
        candidate: &Value,
        parent: &HistoryRef,
        endpoint: &HistoryRef,
    ) -> Result<Self> {
        let total=Instant::now();let mut stamp=Instant::now();let mut phases=BTreeMap::new();
        if &self.endpoint()? != parent {
            return Err(StudyError::Prerequisite("ResidentParentMismatch"));
        }
        phase_add(&mut phases,"parent_check",stamp);stamp=Instant::now();
        let inv = fixtures::invoke_request(&self.store, &self.module, request)?;
        phase_add(&mut phases,"invoke",stamp);stamp=Instant::now();
        let actual = json!({"invocation":inv.record.as_json(),"bundle":inv.bundle});
        if &actual != candidate {
            return Err(StudyError::Prerequisite("CompleteCandidateMismatch"));
        }
        phase_add(&mut phases,"candidate_compare",stamp);stamp=Instant::now();
        if let Some(bundle) = &inv.bundle {
            self.store
                .commit(
                    &self.module,
                    &self.store.current().map_err(library)?,
                    bundle,
                )
                .map_err(library)?;
        }
        phase_add(&mut phases,"commit",stamp);stamp=Instant::now();
        if &self.endpoint()? != endpoint {
            return Err(StudyError::Prerequisite("ResidentEndpointMismatch"));
        }
        phase_add(&mut phases,"endpoint_check",stamp);stamp=Instant::now();
        if self.expected.require_safety {
            let a = fixtures::analysis(&self.module, false)?;
            let r = behavior_models::safety::snapshot::validate_store_snapshot(
                &self.module,
                &a,
                &self.store,
                endpoint,
            );
            if r.status() != "Valid" {
                return Err(StudyError::Prerequisite("ResidentPropertyViolation"));
            }
        }
        phase_add(&mut phases,"property_check",stamp);stamp=Instant::now();
        self.expected.endpoint = endpoint.clone();
        self.expected.requests.push(request.clone());
        self.report["endpoint"] = endpoint.as_json();
        self.report["continuation"] = json!(
            "own actual Core evaluation, complete candidate comparison and exact-parent commit; public internal prefix work included"
        );
        phase_add(&mut phases,"report_update",stamp);
        self.report["diagnostics"]["resident_phases_ns"]=json!(phases);
        self.report["diagnostics"]["resident_total_ns"]=json!(phase_ns(total));
        Ok(self)
    }
}
pub fn decode(raw: &[u8]) -> Result<HistoryPacket> {
    let v = crate::artifacts::parse_json(raw, crate::artifacts::PACKET_BOUND).map_err(library)?;
    let p: HistoryPacket = serde_json::from_value(v)?;
    validate_packet(&p)?;
    Ok(p)
}
fn validate_packet(p: &HistoryPacket) -> Result<()> {
    if p.format != "core034.history-packet.v1"
        || p.attempts.len() > 4096
        || serde_json::to_vec(p)?.len() > crate::artifacts::PACKET_BOUND
    {
        return Err(StudyError::Prerequisite("HistoryPacketBoundOrFormat"));
    }
    for attempt in &p.attempts {
        if serde_json::to_vec(&attempt.invocation)?.len() > crate::artifacts::CORE_RECORD_BOUND {
            return Err(StudyError::Prerequisite("InvocationRecordBound"));
        }
    }
    // The scoped LD8/growth subject has no migrations. Missing or extra declared
    // migration material is rejected; arbitrary migration coverage is not claimed.
    if !p.migrations.is_empty() {
        return Err(StudyError::Prerequisite("UnsupportedMigrationInventory"));
    }
    Ok(())
}
pub fn check(packet: &HistoryPacket, expected: &Expected) -> Result<CheckedHistory> {
 let total=Instant::now();let mut stamp=Instant::now();
 let mut phases:BTreeMap<&'static str,u64>=["subject","reconstruct","data_replay","behavior_replay","own_origin","attempt_parent","invocation_replay","own_invoke_commit","historical_property","compare_and_reopen"].into_iter().map(|name|(name,0)).collect();
    validate_packet(packet)?;
    expected.origin.validate().map_err(library)?;
    expected.endpoint.validate().map_err(library)?;
    if expected.requests.len() != packet.attempts.len() {
        return Err(StudyError::Prerequisite("AttemptCoverageMismatch"));
    }
    let commands = match expected.variant.as_str() {
        "LD8" => false,
        "LD8C" => true,
        _ => return Err(StudyError::Prerequisite("UnknownExpectedSubject")),
    };
    let module = fixtures::module(commands, false)?;
    let analysis = fixtures::analysis(&module, false)?;
    if expected.behavior != module.behavior_version()
        || expected.policy_set_hash != analysis.policy_set_hash()
    {
        return Err(StudyError::Prerequisite("ExpectedModuleOrPoliciesMismatch"));
    }
    let admitted = behavior_engine::admit(&packet.module).map_err(library)?;
    if behavior_engine::serialize::to_wire_json(&admitted)
        != behavior_engine::serialize::to_wire_json(&module)
    {
        return Err(StudyError::Prerequisite("CompleteModuleInventoryMismatch"));
    }
    let policies = analysis.to_json()["policies"].clone();
    if packet.policies.as_ref().is_some_and(|p| p != &policies)
        || (expected.require_safety && packet.policies.is_none())
    {
        return Err(StudyError::Prerequisite("MissingOrDifferentSafetyEvidence"));
    }
    phase_add(&mut phases,"subject",stamp);stamp=Instant::now();
    let rebuilt = capture::reconstruct(&packet.backend)?;
    if rebuilt.history_at(0).map_err(library)? != expected.origin
        || rebuilt.current_history().map_err(library)? != expected.endpoint
    {
        return Err(StudyError::Prerequisite(
            "IndependentExpectedHistoryMismatch",
        ));
    }
    phase_add(&mut phases,"reconstruct",stamp);stamp=Instant::now();
    let data = behavior_engine::store::replay::replay_data(
        &rebuilt,
        &expected.origin.state_ref(),
        &expected.endpoint.state_ref(),
    );
    if !data.ok {
        return Err(StudyError::Library(format!("Data replay: {data:?}")));
    }
    phase_add(&mut phases,"data_replay",stamp);stamp=Instant::now();
    let modules = BTreeMap::from([(module.behavior_version(), module.clone())]);
    let behavior = behavior_engine::store::replay::replay_behavior_with(
        &rebuilt,
        &modules,
        &BTreeMap::new(),
        &expected.origin.state_ref(),
        &expected.endpoint.state_ref(),
    );
    if !behavior.ok {
        return Err(StudyError::Library(format!(
            "Behavior replay: {behavior:?}"
        )));
    }
    phase_add(&mut phases,"behavior_replay",stamp);stamp=Instant::now();
    // Re-derive every captured argument through actual Core in a separate Store.
    // This checks indexes/seed arguments too, rather than trust a producer-selected
    // reconstruction view. No alternative interpreter is introduced.
    let mut checked = Store::create(
        Capture::default(),
        &module,
        packet.backend.creation.genesis.clone(),
    )
    .map_err(library)?;
    if checked.backend().packet()?.creation != packet.backend.creation
        || checked.current_history().map_err(library)? != expected.origin
    {
        return Err(StudyError::Prerequisite("CompleteCreationMismatch"));
    }
    if expected.require_safety
        && behavior_models::safety::snapshot::validate_store_snapshot(
            &module,
            &analysis,
            &checked,
            &expected.origin,
        )
        .status()
            != "Valid"
    {
        return Err(StudyError::Prerequisite("InvalidHistoryOrigin"));
    }
    phase_add(&mut phases,"own_origin",stamp);
    for (request, attempt) in expected.requests.iter().zip(&packet.attempts) {
        let mut step=Instant::now();
        if checked.current_history().map_err(library)? != attempt.before {
            return Err(StudyError::Prerequisite("AttemptParentMismatch"));
        }
        phase_add(&mut phases,"attempt_parent",step);step=Instant::now();
        let replay = rebuilt
            .replay_invocation(&module, &attempt.invocation.to_string())
            .map_err(library)?;
        if !replay.matches {
            return Err(StudyError::Library(format!(
                "Invocation replay mismatch: {:?}",
                replay.diff
            )));
        }
        phase_add(&mut phases,"invocation_replay",step);step=Instant::now();
        let inv = fixtures::invoke_request(&checked, &module, request)?;
        if inv.record.as_json() != &attempt.invocation || inv.bundle.is_some() != attempt.committed
        {
            return Err(StudyError::Prerequisite(
                "FullOriginalRequestResultMismatch",
            ));
        }
        if let Some(bundle) = &inv.bundle {
            checked
                .commit(&module, &checked.current().map_err(library)?, bundle)
                .map_err(library)?;
        }
        if checked.current_history().map_err(library)? != attempt.after {
            return Err(StudyError::Prerequisite("AttemptEndpointMismatch"));
        }
        phase_add(&mut phases,"own_invoke_commit",step);step=Instant::now();
        if expected.require_safety
            && behavior_models::safety::snapshot::validate_store_snapshot(
                &module,
                &analysis,
                &checked,
                &attempt.after,
            )
            .status()
                != "Valid"
        {
            return Err(StudyError::Prerequisite("HistoricalPropertyViolation"));
        }
        phase_add(&mut phases,"historical_property",step);
    }
    stamp=Instant::now();
    if checked.backend().packet()? != packet.backend
        || checked.current_history().map_err(library)? != expected.endpoint
    {
        return Err(StudyError::Prerequisite(
            "CompleteBackendArgumentOrPrefixCoverageMismatch",
        ));
    }
    let inner = std::mem::take(checked.backend_mut()).into_memory();
    let store = Store::open(inner).map_err(library)?;
    phase_add(&mut phases,"compare_and_reopen",stamp);
    let mut report = json!({"format":"core034.checked-history.v1","origin":expected.origin.as_json(),"endpoint":expected.endpoint.as_json(),"behavior":expected.behavior,"policy_set_hash":expected.policy_set_hash,"Q3":"established under pinned Core implementation/correspondence and independent expected subjects","Q5":"exact supplied prefix checked; no authoritative latest-head claim","Q4":if expected.require_safety{"every claimed state checked directly under complete named original policies"}else{"unestablished: historical Safety evidence not requested/available"},"state_safety_checked":expected.require_safety,"Q1":"not claimed by this direct state-checking consumer","Q6":"unestablished: memory only","data_replay":data,"behavior_replay":behavior,"attempts":packet.attempts.len(),"captured_commit_arguments_compared":packet.backend.commits.len(),"basis":"established under premises, private process-local capability; export is unverified transport","work_scope":"complete public data/behavior/invocation replay, independent Core re-execution, complete captured-argument comparison and requested state validations; no O(tail) claim","product_adoption":"unactivated"});
    report["diagnostics"]=json!({"diagnostic_probe":"PHASE002","fresh_phases_ns":phases,"fresh_total_ns":phase_ns(total),"public_work_counts":{"requests_rederived":expected.requests.len(),"invocations_replayed":expected.requests.len(),"committed_arguments_compared":packet.backend.commits.len(),"original_state_checks":if expected.require_safety{expected.requests.len()+1}else{0},"explicit_data_replay_calls":1,"explicit_behavior_replay_calls":1},"count_scope":"Public call counts, not internal backend/query visits; behavior replay and Store::open perform additional work according to pinned source"});
    Ok(CheckedHistory {
        store,
        module,
        expected: expected.clone(),
        report,
    })
}
