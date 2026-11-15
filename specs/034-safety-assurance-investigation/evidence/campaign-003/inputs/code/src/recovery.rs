//! Transported descriptors never construct an established verifier capability.
use crate::{
    error::{Result, StudyError},
    history_check::CheckedHistory,
};
use serde_json::Value;
pub fn import_descriptor(_descriptor: &Value) -> Result<CheckedHistory> {
    Err(StudyError::Prerequisite(
        "SuppliedUnverified: fresh history checking or independently justified trusted storage required",
    ))
}
pub struct Session {
    checked: Option<CheckedHistory>,
    stage: &'static str,
    events: Vec<&'static str>,
}
impl Default for Session {
    fn default() -> Self {
        Self {
            checked: None,
            stage: "absent",
            events: vec!["absent"],
        }
    }
}
impl Session {
    pub fn state(&self) -> &'static str {
        self.stage
    }
    pub fn transitions(&self) -> &[&'static str] {
        &self.events
    }
    pub fn supply(&mut self, descriptor: &Value) -> Result<()> {
        if !descriptor.is_object()
            || serde_json::to_vec(descriptor)?.len() > crate::artifacts::DOCUMENT_BOUND
        {
            return Err(StudyError::Prerequisite("InvalidBasisDescriptor"));
        }
        self.checked = None;
        self.stage = "supplied_unverified";
        self.events.push(self.stage);
        Ok(())
    }
    pub fn check_packet(
        &mut self,
        packet: &crate::history_check::HistoryPacket,
        expected: &crate::history_check::Expected,
    ) -> Result<()> {
        self.checked = None;
        self.stage = "checking";
        self.events.push(self.stage);
        match crate::history_check::check(packet, expected) {
            Ok(checked) => {
                self.establish(checked);
                Ok(())
            }
            Err(error) => {
                self.lose();
                Err(error)
            }
        }
    }
    pub fn establish(&mut self, checked: CheckedHistory) {
        self.checked = Some(checked);
        self.stage = "established_under_premises";
        self.events.push(self.stage);
    }
    pub fn lose(&mut self) {
        self.checked = None;
        self.stage = "absent";
        self.events.push(self.stage);
    }
    pub fn restart(self) -> Self {
        Self::default()
    }
    pub fn extend(
        &mut self,
        request: &Value,
        candidate: &Value,
        parent: &behavior_engine::store::documents::HistoryRef,
        endpoint: &behavior_engine::store::documents::HistoryRef,
    ) -> Result<()> {
        let checked = self.checked.take().ok_or(StudyError::Prerequisite(
            "LostBasis: continuation requires actual re-establishment",
        ))?;
        self.stage = "absent";
        let next = checked.extend(request, candidate, parent, endpoint)?;
        self.establish(next);
        Ok(())
    }
}
