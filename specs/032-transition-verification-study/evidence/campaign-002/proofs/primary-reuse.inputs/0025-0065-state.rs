use crate::types::{Result, StudyError};
use ff::PrimeField;
use nova_snark::{provider::PallasEngine, traits::Engine};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
pub type Fr = <PallasEngine as Engine>::Scalar;
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Shape {
    pub capacity: usize,
    pub commands: u64,
    pub subject: [u8; 32],
    pub anchor: [u8; 32],
    pub catalog: Vec<String>,
}
impl Shape {
    pub fn control(capacity: usize) -> Self {
        Self {
            capacity,
            commands: 2,
            subject: [7; 32],
            anchor: [9; 32],
            catalog: (0..2 * capacity).map(|i| format!("e{i}")).collect(),
        }
    }
    pub fn validate(&self) -> Result<()> {
        if !(1..=16).contains(&self.capacity)
            || self.commands > 16
            || self.catalog.len() != 2 * self.capacity
            || self
                .catalog
                .iter()
                .collect::<std::collections::BTreeSet<_>>()
                .len()
                != self.catalog.len()
        {
            return Err(StudyError::Unsupported(
                "circuit capacity/catalog/commands".into(),
            ));
        }
        Ok(())
    }
    pub fn header(&self) -> Result<Vec<Fr>> {
        let catalog: [u8; 32] = Sha256::digest(serde_json::to_vec(&self.catalog)?).into();
        Ok([self.subject, self.anchor, catalog]
            .iter()
            .flat_map(digest_fields)
            .collect())
    }
    pub fn arity(&self) -> usize {
        12 + 3 * self.catalog.len()
    }
}
pub fn bytes_field(bytes: &[u8]) -> Fr {
    bytes.iter().rev().fold(Fr::from(0), |acc, b| {
        acc * Fr::from(256) + Fr::from(u64::from(*b))
    })
}
pub fn digest_fields(digest: &[u8; 32]) -> [Fr; 2] {
    [bytes_field(&digest[..16]), bytes_field(&digest[16..])]
}
pub fn field_u64(value: &Fr) -> Result<u64> {
    let repr = value.to_repr();
    let bytes = repr.as_ref();
    if bytes[8..].iter().any(|b| *b != 0) {
        return Err(StudyError::Integrity("field exceeds u64".into()));
    }
    let mut out = [0u8; 8];
    out.copy_from_slice(&bytes[..8]);
    Ok(u64::from_le_bytes(out))
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct StepWitness {
    pub opcode: u8,
    pub index: usize,
    pub value: i64,
    pub threshold: i64,
    pub max_matches: i64,
}
impl StepWitness {
    pub fn new(opcode: u8, index: usize, value: i64, threshold: i64, max_matches: i64) -> Self {
        Self {
            opcode,
            index,
            value,
            threshold,
            max_matches,
        }
    }
    pub fn validate(&self, shape: &Shape) -> Result<()> {
        if self.opcode > 4
            || self.index >= shape.catalog.len()
            || (self.opcode != 1 && self.value != 0)
            || (self.opcode != 4 && (self.threshold != 0 || self.max_matches != 0))
            || (self.opcode >= 3 && self.index != 0)
        {
            return Err(StudyError::Unsupported(
                "noncanonical or unsupported bounded operation".into(),
            ));
        }
        Ok(())
    }
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct MachineState {
    pub live: Vec<bool>,
    pub used: Vec<bool>,
    pub values: Vec<u64>,
    pub attempts: u64,
    pub commits: u64,
    pub command_occurrences: u64,
    pub attempt_digest: [u8; 32],
    pub last_outcome: u8,
}
pub const ATTEMPT_TAG: &[u8] = b"core032.attempt.v1\0";
pub fn attempt_hash(
    previous: [u8; 32],
    step: &StepWitness,
    outcome: u8,
    commands: u64,
) -> Result<[u8; 32]> {
    let index = u32::try_from(step.index)
        .map_err(|_| StudyError::Unsupported("ID index exceeds u32".into()))?;
    let commands = u32::try_from(commands)
        .map_err(|_| StudyError::Unsupported("command count exceeds u32".into()))?;
    let mut h = Sha256::new();
    h.update(ATTEMPT_TAG);
    h.update(previous);
    h.update([step.opcode]);
    h.update(index.to_le_bytes());
    h.update(step.value.to_le_bytes());
    h.update(step.threshold.to_le_bytes());
    h.update(step.max_matches.to_le_bytes());
    h.update([outcome]);
    h.update(commands.to_le_bytes());
    Ok(h.finalize().into())
}
impl MachineState {
    pub fn empty(shape: &Shape) -> Self {
        let n = shape.catalog.len();
        Self {
            live: vec![false; n],
            used: vec![false; n],
            values: vec![0; n],
            attempts: 0,
            commits: 0,
            command_occurrences: 0,
            attempt_digest: [0; 32],
            last_outcome: 0,
        }
    }
    pub fn validate(&self, shape: &Shape) -> Result<()> {
        shape.validate()?;
        let n = shape.catalog.len();
        if self.live.len() != n
            || self.used.len() != n
            || self.values.len() != n
            || self.live.iter().filter(|v| **v).count() > shape.capacity
        {
            return Err(StudyError::InvalidWitness(
                "finite state dimensions/cardinality".into(),
            ));
        }
        for i in 0..n {
            if (self.live[i]
                && (!self.used[i] || self.values[i] == 0 || self.values[i] > i64::MAX as u64))
                || (!self.live[i] && self.values[i] != 0)
            {
                return Err(StudyError::InvalidWitness(
                    "noncanonical or invalid live/used/value slot".into(),
                ));
            }
        }
        if self.commits > self.attempts || self.last_outcome > 3 {
            return Err(StudyError::InvalidWitness(
                "invalid counters/outcome".into(),
            ));
        }
        Ok(())
    }
    pub fn apply(&self, shape: &Shape, step: &StepWitness) -> Result<Self> {
        self.validate(shape)?;
        step.validate(shape)?;
        let mut next = self.clone();
        let i = step.index;
        let count = self.live.iter().filter(|v| **v).count();
        let result = match step.opcode {
            0 => {
                if self.used[i] {
                    2
                } else if count >= shape.capacity {
                    1
                } else {
                    next.live[i] = true;
                    next.used[i] = true;
                    next.values[i] = 1;
                    0
                }
            }
            1 => {
                if !self.live[i] {
                    3
                } else if step.value <= 0 {
                    1
                } else {
                    next.values[i] = u64::try_from(step.value)
                        .map_err(|_| StudyError::Integrity("positive value conversion".into()))?;
                    0
                }
            }
            2 => {
                if !self.live[i] {
                    3
                } else {
                    next.live[i] = false;
                    next.values[i] = 0;
                    0
                }
            }
            3 => 0,
            4 => {
                let matching = self
                    .live
                    .iter()
                    .zip(&self.values)
                    .filter(|(live, x)| **live && i128::from(**x) < i128::from(step.threshold))
                    .count();
                if i128::try_from(matching)
                    .map_err(|_| StudyError::Integrity("count conversion".into()))?
                    > i128::from(step.max_matches)
                {
                    1
                } else {
                    0
                }
            }
            _ => return Err(StudyError::Unsupported("opcode".into())),
        };
        let commands = if result == 0 { shape.commands } else { 0 };
        next.attempts = self
            .attempts
            .checked_add(1)
            .ok_or_else(|| StudyError::Unsupported("attempt count bound".into()))?;
        next.commits = self
            .commits
            .checked_add(u64::from(result == 0))
            .ok_or_else(|| StudyError::Unsupported("commit count bound".into()))?;
        next.command_occurrences = self
            .command_occurrences
            .checked_add(commands)
            .ok_or_else(|| StudyError::Unsupported("command occurrence bound".into()))?;
        next.attempt_digest = attempt_hash(self.attempt_digest, step, result, commands)?;
        next.last_outcome = result;
        Ok(next)
    }
    pub fn to_fields(&self, shape: &Shape) -> Result<Vec<Fr>> {
        let mut out = shape.header()?;
        out.extend([
            Fr::from(self.attempts),
            Fr::from(self.commits),
            Fr::from(self.command_occurrences),
        ]);
        out.extend(digest_fields(&self.attempt_digest));
        out.push(Fr::from(u64::from(self.last_outcome)));
        for i in 0..shape.catalog.len() {
            out.extend([
                Fr::from(u64::from(self.live[i])),
                Fr::from(u64::from(self.used[i])),
                Fr::from(self.values[i]),
            ]);
        }
        Ok(out)
    }
}
