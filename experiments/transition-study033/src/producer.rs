//! Untrusted full/incremental proposals. No producer method creates a CheckedAttempt,
//! certificate, committed repository state or semantic acceptance authority.
use crate::{
    codec::{EntityKey, EntityValue},
    identity::{ExecutionRequest, Operation},
    origin::{self, OriginInput},
    profile::Error,
    reference::TemplateConfig,
    tree::{Digest, MAX_COUNT, MemoryNodes, Opening, Root, TreeError, TreeKind},
};
use std::collections::{BTreeMap, BTreeSet};

#[derive(Debug, thiserror::Error)]
pub enum ProducerError {
    #[error(transparent)]
    Input(#[from] Error),
    #[error(transparent)]
    Tree(#[from] TreeError),
    #[error("producer exceeds a frozen resource/counter limit")]
    ResourceLimit,
    #[error("proposal belongs to another parent/generation")]
    Stale,
    #[error("proposal differs from the recomputed untrusted result")]
    Altered,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Strategy {
    Full,
    Incremental,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum ProposedPhase {
    Binding,
    Lifetime,
    ResultingLocal,
    ResultingGlobal,
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub enum ProposedOutcome {
    Allowed,
    Refused {
        phase: ProposedPhase,
        result: &'static str,
        reason: &'static str,
    },
    EvaluationError {
        phase: ProposedPhase,
        layer: &'static str,
        code: &'static str,
        subject: EntityKey,
    },
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub enum ProposedEffect {
    Create(EntityKey, EntityValue),
    Set(EntityKey, i64),
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct ProposedCommand {
    pub name: String,
    pub kind: String,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Obligation {
    UsedMembership,
    LiveMembership,
    PositiveValue,
    ExactCount,
    LiveChangedPath,
    UsedChangedPath,
    CompleteCoverage,
    Commands,
}
#[derive(Debug, Clone)]
pub struct ReadWitness {
    pub root: Root,
    pub key: EntityKey,
    pub opening: Opening,
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct SemanticProjection {
    pub parent: (Root, Root),
    pub after: (Root, Root),
    pub request: ExecutionRequest,
    pub outcome: ProposedOutcome,
    pub effects: Vec<ProposedEffect>,
    pub commands: Vec<ProposedCommand>,
}
#[derive(Debug)]
pub struct Production {
    pub parent: (Root, Root),
    pub after: (Root, Root),
    pub request: ExecutionRequest,
    pub outcome: ProposedOutcome,
    pub effects: Vec<ProposedEffect>,
    pub commands: Vec<ProposedCommand>,
    pub obligations: Vec<Obligation>,
    pub witnesses: Vec<ReadWitness>,
    pub actual_strategy: Strategy,
    pub full_rows_visited: usize,
    generation: u64,
}
impl Production {
    pub fn semantic_projection(&self) -> SemanticProjection {
        SemanticProjection {
            parent: self.parent.clone(),
            after: self.after.clone(),
            request: self.request.clone(),
            outcome: self.outcome.clone(),
            effects: self.effects.clone(),
            commands: self.commands.clone(),
        }
    }
}
#[derive(Debug)]
pub struct Producer {
    cfg: TemplateConfig,
    live: BTreeMap<EntityKey, EntityValue>,
    used: BTreeSet<EntityKey>,
    content: Root,
    used_root: Root,
    nodes: MemoryNodes,
    generation: u64,
}
impl Producer {
    pub fn from_seed(
        input: &OriginInput,
        authority: &str,
        source: &Digest,
        cfg: &TemplateConfig,
    ) -> Result<Self, ProducerError> {
        cfg.validate()?;
        if input.used.len() > origin::MAX_USED {
            return Err(ProducerError::ResourceLimit);
        }
        let limit = u64::try_from(cfg.limit).map_err(|_| Error::Invalid("negative cap".into()))?;
        origin::validate_seed(input, authority, source, limit)?;
        let mut nodes = MemoryNodes::default();
        let mut content = Root::empty(TreeKind::Live, &mut nodes)?;
        let mut used_root = Root::empty(TreeKind::Used, &mut nodes)?;
        for (key, value) in &input.live {
            content = content.put(&mut nodes, key, Some(value.clone()))?.after;
        }
        for key in &input.used {
            used_root = used_root.put(&mut nodes, key, None)?.after;
        }
        Ok(Self {
            cfg: cfg.clone(),
            live: input.live.iter().cloned().collect(),
            used: input.used.iter().cloned().collect(),
            content,
            used_root,
            nodes,
            generation: 0,
        })
    }
    pub fn roots(&self) -> (Root, Root) {
        (self.content.clone(), self.used_root.clone())
    }
    pub fn nodes(&self) -> &MemoryNodes {
        &self.nodes
    }
    fn witness(&self, root: &Root, key: &EntityKey) -> Result<ReadWitness, ProducerError> {
        Ok(ReadWitness {
            root: root.clone(),
            key: key.clone(),
            opening: root.open(&self.nodes, key)?,
        })
    }
    pub fn propose(
        &mut self,
        request: &ExecutionRequest,
        strategy: Strategy,
    ) -> Result<Production, ProducerError> {
        request.encode()?;
        let key = match &request.operation {
            Operation::Create(key) | Operation::Set(key, _) => Some(key),
            Operation::Emit => None,
        };
        if key.is_some_and(|key| key.entity != "E") {
            return Err(Error::Unsupported("out-of-template request entity".into()).into());
        }
        let unknown =
            !self.content.summary.complete_coverage || !self.used_root.summary.complete_coverage;
        if unknown && self.live.len() + self.used.len() > 16 {
            return Err(ProducerError::ResourceLimit);
        }
        let actual_strategy = if unknown { Strategy::Full } else { strategy };
        let parent = self.roots();
        let mut out = Production {
            parent: parent.clone(),
            after: parent,
            request: request.clone(),
            outcome: ProposedOutcome::Allowed,
            effects: vec![],
            commands: vec![],
            obligations: vec![],
            witnesses: vec![],
            actual_strategy,
            full_rows_visited: 0,
            generation: self.generation,
        };
        match &request.operation {
            Operation::Create(key) => {
                out.witnesses.push(self.witness(&self.used_root, key)?);
                out.witnesses.push(self.witness(&self.content, key)?);
                out.obligations.extend([
                    Obligation::UsedMembership,
                    Obligation::LiveMembership,
                    Obligation::PositiveValue,
                    Obligation::ExactCount,
                    Obligation::LiveChangedPath,
                    Obligation::UsedChangedPath,
                ]);
                if self.used.contains(key) {
                    out.outcome = ProposedOutcome::Refused {
                        phase: ProposedPhase::Lifetime,
                        result: "ENTITY_ID_ALREADY_USED",
                        reason: "ENTITY_ID_ALREADY_USED",
                    };
                } else if self.live.len() + 1
                    > usize::try_from(self.cfg.limit).map_err(|_| ProducerError::ResourceLimit)?
                {
                    out.outcome = ProposedOutcome::Refused {
                        phase: ProposedPhase::ResultingGlobal,
                        result: "DENY",
                        reason: "INVARIANT_VIOLATED",
                    };
                } else {
                    if self.used.len()
                        >= usize::try_from(MAX_COUNT).map_err(|_| ProducerError::ResourceLimit)?
                    {
                        return Err(ProducerError::ResourceLimit);
                    }
                    let value =
                        EntityValue::new(1, &"p".repeat(usize::from(self.cfg.padding_bytes)));
                    out.effects
                        .push(ProposedEffect::Create(key.clone(), value.clone()));
                    if actual_strategy == Strategy::Incremental {
                        out.after.0 = self.content.put(&mut self.nodes, key, Some(value))?.after;
                        out.after.1 = self.used_root.put(&mut self.nodes, key, None)?.after;
                    }
                }
            }
            Operation::Set(key, value) => {
                out.witnesses.push(self.witness(&self.content, key)?);
                out.obligations.extend([
                    Obligation::LiveMembership,
                    Obligation::PositiveValue,
                    Obligation::ExactCount,
                    Obligation::LiveChangedPath,
                ]);
                if let Some(old) = self.live.get(key) {
                    if *value <= 0 {
                        out.outcome = ProposedOutcome::Refused {
                            phase: ProposedPhase::ResultingLocal,
                            result: "DENY",
                            reason: "CONSTRAINT_VIOLATED",
                        };
                    } else {
                        out.effects.push(ProposedEffect::Set(key.clone(), *value));
                        if actual_strategy == Strategy::Incremental {
                            out.after.0 = self
                                .content
                                .put(
                                    &mut self.nodes,
                                    key,
                                    Some(EntityValue::new(*value, &old.padding)),
                                )?
                                .after;
                        }
                    }
                } else {
                    out.outcome = ProposedOutcome::EvaluationError {
                        phase: ProposedPhase::Binding,
                        layer: "Store::evaluate",
                        code: "ENTITY_NOT_FOUND",
                        subject: key.clone(),
                    };
                }
            }
            Operation::Emit => {
                out.obligations.push(Obligation::ExactCount);
            }
        }
        if unknown {
            if u64::try_from(self.live.len()).map_err(|_| ProducerError::ResourceLimit)?
                != self.content.summary.count
                || u64::try_from(self.used.len()).map_err(|_| ProducerError::ResourceLimit)?
                    != self.used_root.summary.count
            {
                return Err(ProducerError::Altered);
            }
            for key in self.live.keys() {
                out.witnesses.push(self.witness(&self.content, key)?);
            }
            for key in &self.used {
                out.witnesses.push(self.witness(&self.used_root, key)?);
            }
        }
        out.obligations
            .extend([Obligation::CompleteCoverage, Obligation::Commands]);
        if out.outcome == ProposedOutcome::Allowed {
            out.commands = vec![
                ProposedCommand {
                    name: "WorkIntent".into(),
                    kind: "process".into()
                };
                usize::from(self.cfg.commands)
            ];
            if actual_strategy == Strategy::Full {
                let (rebuilt, visited) = self.rebuild(&out.effects)?;
                out.after = rebuilt;
                out.full_rows_visited = visited;
            }
        }
        if out.obligations.len() > 16 {
            return Err(ProducerError::ResourceLimit);
        }
        Ok(out)
    }
    fn rebuild(
        &mut self,
        effects: &[ProposedEffect],
    ) -> Result<((Root, Root), usize), ProducerError> {
        let mut live = Root::empty(TreeKind::Live, &mut self.nodes)?;
        let mut used = Root::empty(TreeKind::Used, &mut self.nodes)?;
        for (key, old) in &self.live {
            let mut value = old.clone();
            for effect in effects {
                if let ProposedEffect::Set(target, x) = effect
                    && target == key
                {
                    value.x = *x;
                }
            }
            live = live.put(&mut self.nodes, key, Some(value))?.after;
        }
        for key in &self.used {
            used = used.put(&mut self.nodes, key, None)?.after;
        }
        for effect in effects {
            if let ProposedEffect::Create(key, value) = effect {
                live = live.put(&mut self.nodes, key, Some(value.clone()))?.after;
                used = used.put(&mut self.nodes, key, None)?.after;
            }
        }
        Ok(((live, used), self.live.len() + self.used.len()))
    }
    /// Advance this private untrusted producer after recomputing its proposal.
    /// The certified/durable caller must separately require genuine K/proof success.
    pub fn advance_untrusted(&mut self, production: &Production) -> Result<(), ProducerError> {
        if production.generation != self.generation || production.parent != self.roots() {
            return Err(ProducerError::Stale);
        }
        let expected = self.propose(&production.request, Strategy::Incremental)?;
        if production.semantic_projection() != expected.semantic_projection() {
            return Err(ProducerError::Altered);
        }
        if production.outcome != ProposedOutcome::Allowed {
            return Ok(());
        }
        let generation = self
            .generation
            .checked_add(1)
            .ok_or(ProducerError::ResourceLimit)?;
        for effect in &production.effects {
            match effect {
                ProposedEffect::Create(key, value) => {
                    self.live.insert(key.clone(), value.clone());
                    self.used.insert(key.clone());
                }
                ProposedEffect::Set(key, x) => {
                    let value = self.live.get_mut(key).ok_or(ProducerError::Altered)?;
                    value.x = *x;
                }
            }
        }
        self.content = production.after.0.clone();
        self.used_root = production.after.1.clone();
        self.generation = generation;
        Ok(())
    }
}
