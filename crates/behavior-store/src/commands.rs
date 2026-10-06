//! Read-only committed command evidence. No execution or candidate promotion API.
pub const REQUEST_FORMAT: &str = "behavior.command_stream_request.v1";
pub const OCCURRENCE_DOMAIN: &str = "behavior.command_occurrence.v1";
use crate::documents::{HistoryRef, R, StoreError};
use crate::{Backend, Store};
use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Clone, PartialEq, Eq, Serialize)]
/// Constructed only after validating committed history. A candidate is not an occurrence.
/// ```compile_fail
/// use behavior_store::commands::CommittedCommand;
/// let forged = CommittedCommand::new();
/// ```
pub struct CommittedCommand {
    command_occurrence_id: String,
    store: String,
    history_position: u64,
    commit_record_hash: String,
    multiplicity_index: u32,
    intent: Value,
}
impl CommittedCommand {
    pub fn command_occurrence_id(&self) -> &str {
        &self.command_occurrence_id
    }
    pub fn store(&self) -> &str {
        &self.store
    }
    pub fn history_position(&self) -> u64 {
        self.history_position
    }
    pub fn commit_record_hash(&self) -> &str {
        &self.commit_record_hash
    }
    pub fn multiplicity_index(&self) -> u32 {
        self.multiplicity_index
    }
    pub fn intent(&self) -> &Value {
        &self.intent
    }
    pub fn as_json(&self) -> Value {
        serde_json::json!(self)
    }
}
#[derive(Debug, Clone, PartialEq, Eq, Deserialize, Serialize)]
#[serde(deny_unknown_fields)]
pub struct CommandStreamRequest {
    format: String,
    after: HistoryRef,
    #[serde(default)]
    through: Option<HistoryRef>,
    #[serde(default = "default_limit")]
    max_records: u32,
}
fn default_limit() -> u32 {
    256
}
impl CommandStreamRequest {
    pub fn from_json(text: &str) -> R<Self> {
        let request: Self = behavior_core::canonical::decode_closed(text)
            .map_err(|e| StoreError::BundleInvalid(e.to_string()))?;
        request.validate()?;
        Ok(request)
    }
    fn validate(&self) -> R<()> {
        if self.format != REQUEST_FORMAT || !(1..=1024).contains(&self.max_records) {
            return Err(invalid(
                "unknown request format or max_records outside 1..1024",
            ));
        }
        self.after.validate()?;
        if let Some(through) = &self.through {
            through.validate()?;
        }
        Ok(())
    }
    pub fn as_json(&self) -> Value {
        serde_json::json!(self)
    }
    pub fn after(&self) -> &HistoryRef {
        &self.after
    }
    pub fn through(&self) -> Option<&HistoryRef> {
        self.through.as_ref()
    }
    pub fn max_records(&self) -> u32 {
        self.max_records
    }
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize)]
pub struct CommandStreamPage {
    format: String,
    store: String,
    after: HistoryRef,
    observed_head: HistoryRef,
    items: Vec<CommittedCommand>,
    next_after: HistoryRef,
    complete: bool,
}
impl CommandStreamPage {
    pub fn store(&self) -> &str {
        &self.store
    }
    pub fn after(&self) -> &HistoryRef {
        &self.after
    }
    pub fn observed_head(&self) -> &HistoryRef {
        &self.observed_head
    }
    pub fn items(&self) -> &[CommittedCommand] {
        &self.items
    }
    pub fn next_after(&self) -> &HistoryRef {
        &self.next_after
    }
    pub fn complete(&self) -> bool {
        self.complete
    }
    pub fn as_json(&self) -> Value {
        serde_json::json!(self)
    }
}
impl<B: Backend> Store<B> {
    /// Enumerate whole committed events; canonical serialization order promises no delivery order.
    /// The complete pinned interval is authenticated before any occurrence is returned.
    pub fn commands_since(&self, request: &CommandStreamRequest) -> R<CommandStreamPage> {
        request.validate()?;
        let captured = self
            .backend()
            .head()
            .map_err(|e| StoreError::Backend(e.0))?
            .ok_or_else(|| invalid("head missing"))?;
        let current = self.history_with_head(captured.state_ref.position, &captured)?;
        let through = request.through.as_ref().unwrap_or(&current);
        if request.after.store != current.store
            || through.store != current.store
            || request.after.position > through.position
            || through.position > current.position
        {
            return Err(invalid("wrong store, reversed or future interval"));
        }
        let start = self.history_with_head(request.after.position, &captured)?;
        let end = self.history_with_head(through.position, &captured)?;
        if start != request.after || end != *through {
            return Err(invalid("endpoint differs from exact committed history"));
        }
        // Reuse the history/state/governance checker, rather than treating backend
        // head/record or optional indexes as independently authoritative truth.
        let report = crate::replay::replay_data(self, &start.state_ref(), &end.state_ref());
        if !report.ok {
            return Err(invalid(format!(
                "committed history invalid: {:?}",
                report.divergence
            )));
        }
        let (materialized, _) = crate::replay::content_at(self, end.position)?;
        let snapshot = crate::replay::verify_snapshot(
            self,
            &end.state_ref(),
            &materialized.values().cloned().collect::<Vec<_>>(),
        );
        if !snapshot.ok {
            return Err(invalid("materialized state differs from committed history"));
        }
        let mut latest = std::collections::BTreeMap::new();
        for position in 1..=end.position {
            let event = self
                .backend()
                .record(position)
                .map_err(|e| StoreError::Backend(e.0))?
                .ok_or_else(|| invalid("committed record missing"))?;
            for version in event.new_versions.into_iter().chain(event.created) {
                latest.insert(version.key(), version);
            }
        }
        for (key, version) in &materialized {
            if version.key() != *key
                || latest.get(key).is_some_and(|expected| expected != version)
                || (!latest.contains_key(key) && (version.revision != 1 || version.created_at != 0))
            {
                return Err(invalid(
                    "as-of entity version differs from committed history",
                ));
            }
        }
        let count = (end.position - start.position).min(u64::from(request.max_records));
        let last = start
            .position
            .checked_add(count)
            .ok_or_else(|| invalid("history position overflow"))?;
        let mut items = Vec::new();
        let mut next = start.clone();
        if count > 0 {
            for position in start
                .position
                .checked_add(1)
                .ok_or_else(|| invalid("history position overflow"))?
                ..=last
            {
                let event = self
                    .backend()
                    .record(position)
                    .map_err(|e| StoreError::Backend(e.0))?
                    .ok_or_else(|| invalid("committed record missing"))?;
                let commit_record_hash = event.hash()?;
                if let Some(bundle) = &event.bundle
                    && (bundle.record.get("commands").is_some()
                        || bundle.record["record_version"] == "0.7")
                {
                    let record = behavior_core::record::DecisionRecord::from_json(
                        &bundle.record.to_string(),
                    )
                    .map_err(|e| invalid(e.to_string()))?;
                    let mut multiplicities = std::collections::BTreeMap::<String, u32>::new();
                    for intent in record.command_intents().intents() {
                        let hash = intent.as_json()["intent_hash"]
                            .as_str()
                            .ok_or_else(|| invalid("intent hash missing"))?;
                        let index = multiplicities.entry(hash.into()).or_default();
                        let command_occurrence_id = crate::documents::hash_of(
                            OCCURRENCE_DOMAIN,
                            &serde_json::json!({"store":current.store,"commit_record_hash":commit_record_hash,"intent_hash":hash,"multiplicity_index":*index}),
                        )?;
                        items.push(CommittedCommand {
                            command_occurrence_id,
                            store: current.store.clone(),
                            history_position: position,
                            commit_record_hash: commit_record_hash.clone(),
                            multiplicity_index: *index,
                            intent: intent.as_json().clone(),
                        });
                        *index = index
                            .checked_add(1)
                            .ok_or_else(|| invalid("command multiplicity exceeds u32"))?;
                    }
                }
                next = self.history_with_head(position, &captured)?;
            }
        }
        Ok(CommandStreamPage {
            format: "behavior.command_stream_page.v1".into(),
            store: current.store,
            after: start,
            observed_head: end.clone(),
            items,
            next_after: next.clone(),
            complete: next == end,
        })
    }
}
fn invalid(message: impl Into<String>) -> StoreError {
    StoreError::Contract {
        code: "INVALID_COMMAND_STREAM",
        message: message.into(),
    }
}
