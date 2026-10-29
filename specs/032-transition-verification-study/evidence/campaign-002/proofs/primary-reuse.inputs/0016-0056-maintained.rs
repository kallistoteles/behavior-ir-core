//! Native A: retained Core executor and checked disposable derived views.
//! Whole-state J diagnostics are intentionally retained; no sublinear claim.
use crate::{fixtures::Config, reference::Reference, types::*, views::Views};
pub struct Maintained {
    reference: Reference,
    views: Views,
}
pub struct Prediction {
    pub outcome: SemanticOutcome,
    pub live: std::collections::BTreeMap<Key, EntityValue>,
    pub used: std::collections::BTreeSet<Key>,
}
/// Exact maintained memberships drive the closed rules. Full Core still renders
/// and checks normative evidence; this is never represented as bypassing it.
pub fn predict(
    config: &Config,
    state: &OperationalState,
    views: &mut Views,
    operation: &Operation,
) -> Result<Prediction> {
    if !views.matches(state) {
        return Err(StudyError::Integrity(
            "prediction lacks checked complete J".into(),
        ));
    }
    let mut result = Prediction {
        outcome: SemanticOutcome::Allow,
        live: state.live.clone(),
        used: state.used.clone(),
    };
    let error = SemanticOutcome::EvaluationError;
    let refused = SemanticOutcome::Refused;
    match operation {
        Operation::Create { ids, owner } => {
            if ids.len() != config.batch || owner.is_some() != config.references {
                return Err(StudyError::Unsupported("creation binding shape".into()));
            }
            if owner
                .as_ref()
                .is_some_and(|p| !state.live.contains_key(&Key::new("Parent", p)))
            {
                result.outcome = error;
            } else if ids.iter().collect::<std::collections::BTreeSet<_>>().len() != ids.len()
                || ids.iter().any(|id| views.used.contains(&Key::new("E", id)))
                || (views.count as i128) + (ids.len() as i128) > i128::from(config.limit)
            {
                result.outcome = refused;
            } else {
                for id in ids {
                    let key = Key::new("E", id);
                    result.used.insert(key.clone());
                    result.live.insert(
                        key,
                        EntityValue::E {
                            x: 1,
                            padding: "p".repeat(config.padding),
                            owner: owner.clone(),
                        },
                    );
                }
            }
        }
        Operation::Set { ids, value } => {
            if ids.len() != config.batch {
                return Err(StudyError::Unsupported("assignment binding shape".into()));
            }
            if ids
                .iter()
                .any(|id| !views.members.contains(&Key::new("E", id)))
                || ids.iter().collect::<std::collections::BTreeSet<_>>().len() != ids.len()
            {
                result.outcome = error;
            } else if *value <= 0 {
                result.outcome = refused;
            } else {
                for id in ids {
                    if let Some(EntityValue::E { x, .. }) = result.live.get_mut(&Key::new("E", id))
                    {
                        *x = *value;
                    }
                }
            }
        }
        Operation::Remove { key } => {
            if !state.live.contains_key(key) {
                result.outcome = error;
            } else if key.entity == "Parent"
                && views
                    .incoming
                    .get(&key.id)
                    .is_some_and(|members| !members.is_empty())
            {
                result.outcome = refused;
            } else {
                result.live.remove(key);
            }
        }
        Operation::Emit => {}
        Operation::Probe {
            threshold,
            max_matches,
        } => {
            if views.query(state, *threshold)?.len() as i128 > i128::from(*max_matches) {
                result.outcome = refused;
            }
        }
        Operation::Add { id, delta } | Operation::Lazy { id, delta, .. } => {
            match state.live.get(&Key::new("E", id)) {
                Some(EntityValue::E { x, .. }) => {
                    if matches!(operation, Operation::Lazy { enabled: false, .. }) {
                    } else {
                        match x.checked_add(*delta) {
                            None => result.outcome = error,
                            Some(next) if next <= 0 => result.outcome = refused,
                            Some(next) => {
                                if matches!(operation, Operation::Add { .. })
                                    && let Some(EntityValue::E { x, .. }) =
                                        result.live.get_mut(&Key::new("E", id))
                                {
                                    *x = next;
                                }
                            }
                        }
                    }
                }
                _ => result.outcome = error,
            }
        }
    }
    if result.outcome != SemanticOutcome::Allow {
        result.live = state.live.clone();
        result.used = state.used.clone();
    }
    Ok(result)
}
impl Maintained {
    pub fn new(config: Config, n: usize) -> Result<Self> {
        let reference = Reference::new(config, n)?;
        let views = Views::initialize(&reference.snapshot()?)?;
        Ok(Self { reference, views })
    }
    pub fn execute(&mut self, operation: Operation) -> Result<ReferenceObservation> {
        let before = self.reference.snapshot()?;
        if !self.views.matches(&before) {
            return Err(StudyError::Integrity(
                "A has no valid complete views at the requested head".into(),
            ));
        }
        let predicted = predict(
            &self.reference.subject.config,
            &before,
            &mut self.views,
            &operation,
        )?;
        let actual = self.reference.execute(operation)?;
        if actual.outcome != predicted.outcome
            || actual.after.live != predicted.live
            || actual.after.used != predicted.used
        {
            self.views.valid = false;
            return Err(StudyError::Integrity(
                "maintained computation differs from complete authoritative Core transition".into(),
            ));
        }
        self.views.advance(&actual)?;
        Ok(actual)
    }
    pub fn snapshot(&self) -> Result<OperationalState> {
        self.reference.snapshot()
    }
    pub fn view(&self) -> &Views {
        &self.views
    }
    pub fn lose_views(&mut self) {
        self.views.valid = false;
    }
    pub fn rebuild(&mut self) -> Result<()> {
        self.views = Views::initialize(&self.reference.snapshot()?)?;
        Ok(())
    }
}
