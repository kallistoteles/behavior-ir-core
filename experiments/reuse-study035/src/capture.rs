//! Public Backend transport. Reconstruction alone grants no verification authority.
use crate::error::{Result, StudyError, library};
use behavior_engine::store::{
    Backend, BackendError, CasOutcome, InMemoryBackend, RefEdge, Store,
    documents::{EntityKey, EntityVersion, Genesis, Head, RefChange, TransitionRecord},
};
use serde::{Deserialize, Serialize};
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct CreateCall {
    pub genesis: Genesis,
    pub head: Head,
    pub seed: Vec<EntityVersion>,
    pub seed_refs: Vec<RefChange>,
}
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct CommitCall {
    pub expected_last_record: String,
    pub versions: Vec<EntityVersion>,
    pub removals: Vec<EntityKey>,
    pub ref_changes: Vec<RefChange>,
    pub record: TransitionRecord,
    pub new_head: Head,
}
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[serde(deny_unknown_fields)]
pub struct BackendPacket {
    pub format: String,
    pub creation: CreateCall,
    pub commits: Vec<CommitCall>,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Fault {
    BeforeCommit,
    Conflict,
    LostAcknowledgement,
}
#[derive(Default)]
pub struct Capture {
    inner: InMemoryBackend,
    fault: Option<Fault>,
    creation: Option<CreateCall>,
    commits: Vec<CommitCall>,
}
impl Capture {
    pub fn inject_fault(&mut self, fault: Fault) {
        self.fault = Some(fault);
    }
    pub fn commit_count(&self) -> usize {
        self.commits.len()
    }
    pub fn last_call(&self) -> Option<&CommitCall> {
        self.commits.last()
    }

    pub fn packet(&self) -> Result<BackendPacket> {
        Ok(BackendPacket {
            format: "core035.backend.v1".into(),
            creation: self
                .creation
                .clone()
                .ok_or(StudyError::Prerequisite("MissingCapturedCreation"))?,
            commits: self.commits.clone(),
        })
    }
    pub fn into_memory(self) -> InMemoryBackend {
        self.inner
    }
}
pub fn reconstruct(packet: &BackendPacket) -> Result<Store<InMemoryBackend>> {
    validate(packet)?;
    let mut inner = InMemoryBackend::default();
    let c = &packet.creation;
    inner
        .create(&c.genesis, &c.head, &c.seed, &c.seed_refs)
        .map_err(library)?;
    for call in &packet.commits {
        let head = inner
            .head()
            .map_err(library)?
            .ok_or(StudyError::Prerequisite("MissingParentHead"))?;
        if call.expected_last_record != head.last_record
            || call.record.previous_record != head.last_record
            || call.new_head.state_ref.position
                != head
                    .state_ref
                    .position
                    .checked_add(1)
                    .ok_or(StudyError::Prerequisite("PositionOverflow"))?
            || call.record.position != call.new_head.state_ref.position
            || call.record.hash().map_err(library)? != call.new_head.last_record
        {
            return Err(StudyError::Prerequisite("PacketPositionOrParentMismatch"));
        }
        if inner
            .commit(
                &call.expected_last_record,
                &call.versions,
                &call.removals,
                &call.ref_changes,
                &call.record,
                &call.new_head,
            )
            .map_err(library)?
            != CasOutcome::Applied
        {
            return Err(StudyError::Prerequisite("PacketCASRejected"));
        }
    }
    Store::open(inner).map_err(library)
}
fn validate(packet: &BackendPacket) -> Result<()> {
    if packet.format != "core035.backend.v1" || packet.commits.len() > 4096 {
        return Err(StudyError::Prerequisite("PacketFormatOrCount"));
    }
    if serde_json::to_vec(packet)?.len() > crate::artifacts::PACKET_BOUND {
        return Err(StudyError::Prerequisite("PacketByteBound"));
    }
    for c in &packet.commits {
        if serde_json::to_vec(&c.record)?.len() > crate::artifacts::CORE_RECORD_BOUND {
            return Err(StudyError::Prerequisite("CoreRecordByteBound"));
        }
    }
    Ok(())
}
impl Backend for Capture {
    fn genesis(&self) -> std::result::Result<Option<Genesis>, BackendError> {
        self.inner.genesis()
    }
    fn head(&self) -> std::result::Result<Option<Head>, BackendError> {
        self.inner.head()
    }
    fn create(
        &mut self,
        g: &Genesis,
        h: &Head,
        seed: &[EntityVersion],
        refs: &[RefChange],
    ) -> std::result::Result<(), BackendError> {
        let creation = CreateCall {
            genesis: g.clone(),
            head: h.clone(),
            seed: seed.to_vec(),
            seed_refs: refs.to_vec(),
        };
        if self.creation.as_ref().is_some_and(|old| old != &creation) {
            return Err(BackendError("Different captured creation".into()));
        }
        self.inner.create(g, h, seed, refs)?;
        self.creation = Some(creation);
        Ok(())
    }
    fn version_at(
        &self,
        k: &EntityKey,
        p: u64,
    ) -> std::result::Result<Option<EntityVersion>, BackendError> {
        self.inner.version_at(k, p)
    }
    fn version(
        &self,
        k: &EntityKey,
        r: u64,
    ) -> std::result::Result<Option<EntityVersion>, BackendError> {
        self.inner.version(k, r)
    }
    fn record(&self, p: u64) -> std::result::Result<Option<TransitionRecord>, BackendError> {
        self.inner.record(p)
    }
    fn removed_at(&self, k: &EntityKey) -> std::result::Result<Option<u64>, BackendError> {
        self.inner.removed_at(k)
    }
    fn incoming_at(
        &self,
        k: &EntityKey,
        p: u64,
    ) -> std::result::Result<Vec<RefEdge>, BackendError> {
        self.inner.incoming_at(k, p)
    }
    fn keys_at(&self, e: &str, p: u64) -> std::result::Result<Vec<EntityKey>, BackendError> {
        self.inner.keys_at(e, p)
    }
    fn keys_by_field_at(
        &self,
        e: &str,
        f: &str,
        v: &serde_json::Value,
        p: u64,
    ) -> std::result::Result<Option<Vec<EntityKey>>, BackendError> {
        self.inner.keys_by_field_at(e, f, v, p)
    }
    fn commit(
        &mut self,
        expected: &str,
        versions: &[EntityVersion],
        removals: &[EntityKey],
        refs: &[RefChange],
        record: &TransitionRecord,
        head: &Head,
    ) -> std::result::Result<CasOutcome, BackendError> {
        let fault = self.fault.take();
        if fault == Some(Fault::BeforeCommit) {
            return Err(BackendError(
                "Simulated performed backend failure before publication".into(),
            ));
        }
        if fault == Some(Fault::Conflict) {
            return Ok(CasOutcome::HeadMoved);
        }
        let outcome = self
            .inner
            .commit(expected, versions, removals, refs, record, head)?;
        if outcome == CasOutcome::Applied {
            self.commits.push(CommitCall {
                expected_last_record: expected.into(),
                versions: versions.to_vec(),
                removals: removals.to_vec(),
                ref_changes: refs.to_vec(),
                record: record.clone(),
                new_head: head.clone(),
            });
        }
        if outcome == CasOutcome::Applied && fault == Some(Fault::LostAcknowledgement) {
            return Err(BackendError(
                "Simulated lost acknowledgement AFTER actual in-memory Applied".into(),
            ));
        }
        Ok(outcome)
    }
}
pub fn decode_packet(raw: &[u8]) -> Result<BackendPacket> {
    let value =
        crate::artifacts::parse_json(raw, crate::artifacts::PACKET_BOUND).map_err(library)?;
    let packet: BackendPacket = serde_json::from_value(value)?;
    validate(&packet)?;
    Ok(packet)
}
