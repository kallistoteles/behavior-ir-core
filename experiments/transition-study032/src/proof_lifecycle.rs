//! Disposable proof-artifact lifecycle. No Core runtime state or authorization is added.
use crate::{
    circuit::TransitionCircuit,
    prover::{self, Case, Parameters, Prepared, Proof, ProofEnvelope},
    types::*,
};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::{fs, path::Path};
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Progress {
    pub native: u64,
    pub proved: u64,
    pub bridged: u64,
    pub pending: u64,
}
impl Progress {
    /// Coordinates are committed history positions, not attempts or circuit steps.
    pub fn new(native: u64, proved: u64, bridged: u64) -> Result<Self> {
        if proved > native || bridged > native {
            return Err(StudyError::Integrity(
                "proved/bridged position exceeds native head".into(),
            ));
        }
        Ok(Self {
            native,
            proved,
            bridged,
            pending: native - proved.min(bridged),
        })
    }
    pub fn complete(&self) -> bool {
        self.pending == 0
    }
}
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Checkpoint {
    pub format: String,
    pub payload: Vec<u8>,
    pub sha256: String,
    pub steps: usize,
    pub head: HistoryRef,
    pub recipe: String,
}
fn head(p: &Prepared) -> Result<HistoryRef> {
    p.observations
        .last()
        .map(|v| v.after.history.clone())
        .ok_or_else(|| StudyError::Unsupported("empty proof segment".into()))
}
pub fn checkpoint(case: &Case, pp: &Parameters, proof: &ProofEnvelope) -> Result<Checkpoint> {
    let p = prover::prepare(case)?;
    prover::verify(&p, pp, proof)?;
    let payload = prover::encode(proof)?;
    Ok(Checkpoint {
        format: "core032.checkpoint.v1".into(),
        sha256: format!("{:x}", Sha256::digest(&payload)),
        payload,
        steps: p.steps.len(),
        head: head(&p)?,
        recipe: prover::parameter_recipe(&p)?,
    })
}
pub fn validate_checkpoint(
    case: &Case,
    pp: &Parameters,
    checkpoint: &Checkpoint,
) -> Result<ProofEnvelope> {
    let p = prover::prepare(case)?;
    if checkpoint.format != "core032.checkpoint.v1"
        || checkpoint.steps != p.steps.len()
        || checkpoint.head != head(&p)?
        || checkpoint.recipe != prover::parameter_recipe(&p)?
        || checkpoint.sha256 != format!("{:x}", Sha256::digest(&checkpoint.payload))
    {
        return Err(StudyError::InvalidWitness(
            "checkpoint is partial, corrupt or belongs to another exact segment".into(),
        ));
    }
    let envelope: ProofEnvelope = prover::decode(&checkpoint.payload)?;
    prover::verify(&p, pp, &envelope)?;
    Ok(envelope)
}
pub fn resume(
    previous: &Case,
    extended: &Case,
    pp: &Parameters,
    checkpoint: &Checkpoint,
) -> Result<ProofEnvelope> {
    if previous.config != extended.config
        || previous.initial_population != extended.initial_population
        || extended.operations.len() <= previous.operations.len()
        || !extended.operations.starts_with(&previous.operations)
    {
        return Err(StudyError::InvalidWitness(
            "restart changes shape, initial anchor or proved prefix".into(),
        ));
    }
    let envelope = validate_checkpoint(previous, pp, checkpoint)?;
    let p = prover::prepare(extended)?;
    let mut proof: Proof = prover::decode(&envelope.proof)?;
    for step in p.steps.iter().skip(previous.operations.len()) {
        proof
            .prove_step(
                pp,
                &TransitionCircuit {
                    shape: p.shape.clone(),
                    witness: step.clone(),
                    proposed: None,
                },
            )
            .map_err(|e| StudyError::Integrity(format!("Nova continuation: {e}")))?;
    }
    // Constructed output remains unaccepted until the independent verifier checks it.
    Ok(ProofEnvelope {
        format: "core032.nova-proof.v1".into(),
        binding: p.binding,
        parameters: prover::parameter_identity(pp),
        proof: prover::encode(&proof)?,
    })
}
/// Atomic create-only publication on the cooperating local filesystem. This is
/// an artifact durability experiment, not a Store backend or device guarantee.
pub fn publish(path: &Path, checkpoint: &Checkpoint, interrupt_before_publish: bool) -> Result<()> {
    let pending = path.with_extension(format!("pending-{}", std::process::id()));
    let bytes = prover::encode(checkpoint)?;
    let mut f = fs::OpenOptions::new()
        .create_new(true)
        .write(true)
        .open(&pending)?;
    std::io::Write::write_all(&mut f, &bytes)?;
    f.sync_all()?;
    if interrupt_before_publish {
        return Err(StudyError::Unavailable(
            "checkpoint staged but not published".into(),
        ));
    }
    fs::hard_link(&pending, path)?;
    fs::File::open(
        path.parent()
            .ok_or_else(|| StudyError::Io(std::io::Error::other("checkpoint parent missing")))?,
    )?
    .sync_all()?;
    fs::remove_file(pending)?;
    Ok(())
}
pub fn read_untrusted(path: &Path) -> Result<Checkpoint> {
    if !path.is_file() {
        return Err(StudyError::Unavailable(
            "published checkpoint absent".into(),
        ));
    }
    if fs::metadata(path)?.len() > 512 * 1024 * 1024 {
        return Err(StudyError::InvalidWitness("checkpoint capacity".into()));
    }
    prover::decode(&fs::read(path)?)
}
/// A bounded two-actor experiment on one CPU: actual Core commits arrive while
/// actual Nova folding consumes them. No unchecked suffix becomes accepted.
pub fn run_async(
    previous: &Case,
    extended: &Case,
    pp: &Parameters,
    checkpoint: &Checkpoint,
    interval: std::time::Duration,
) -> Result<serde_json::Value> {
    use std::sync::{
        Arc,
        atomic::{AtomicU64, Ordering},
        mpsc,
    };
    use std::time::Instant;
    if previous.config != extended.config
        || previous.initial_population != extended.initial_population
        || !extended.operations.starts_with(&previous.operations)
        || extended.operations.len() <= previous.operations.len()
    {
        return Err(StudyError::InvalidWitness(
            "async segment changes its checked prefix".into(),
        ));
    }
    let start = Instant::now();
    let envelope = validate_checkpoint(previous, pp, checkpoint)?;
    let expected = prover::prepare(extended)?;
    let mut proof: Proof = prover::decode(&envelope.proof)?;
    let initial_head = checkpoint.head.position;
    let native = Arc::new(AtomicU64::new(initial_head));
    let proved = Arc::new(AtomicU64::new(initial_head));
    let bridged = Arc::new(AtomicU64::new(initial_head));
    let (sender, receiver) = mpsc::channel();
    let source = extended.clone();
    let already = previous.operations.len();
    let arrivals = std::thread::scope(|scope| -> Result<Vec<serde_json::Value>> {
        let n = Arc::clone(&native);
        let p = Arc::clone(&proved);
        let b = Arc::clone(&bridged);
        let worker=scope.spawn(move||->Result<Vec<serde_json::Value>>{
            let mut core=crate::reference::Reference::new(source.config,source.initial_population)?;
            for operation in &source.operations[..already]{core.execute(operation.clone())?;}
            let mut arrivals=Vec::new();
            for operation in &source.operations[already..]{
                std::thread::sleep(interval);let actual=core.execute(operation.clone())?;let head=actual.after.history.position;n.store(head,Ordering::SeqCst);
                let progress=Progress::new(head,p.load(Ordering::SeqCst),b.load(Ordering::SeqCst))?;
                arrivals.push(serde_json::json!({"seconds":start.elapsed().as_secs_f64(),"progress":progress}));
                sender.send(actual).map_err(|_|StudyError::Unavailable("proof consumer closed its arrival channel".into()))?;
            }Ok(arrivals)
        });
        for index in already..expected.steps.len() {
            let actual = receiver.recv().map_err(|_| {
                StudyError::Unavailable("native actor ended before the expected prefix".into())
            })?;
            if !actual.same_claim(&expected.observations[index]) {
                return Err(StudyError::InvalidWitness(
                    "arriving Core event differs from exact expected segment".into(),
                ));
            }
            bridged.store(actual.after.history.position, Ordering::SeqCst);
            proof
                .prove_step(
                    pp,
                    &TransitionCircuit {
                        shape: expected.shape.clone(),
                        witness: expected.steps[index].clone(),
                        proposed: None,
                    },
                )
                .map_err(|e| StudyError::Integrity(format!("async Nova fold: {e}")))?;
            proved.store(actual.after.history.position, Ordering::SeqCst);
        }
        worker
            .join()
            .map_err(|_| StudyError::Integrity("native arrival actor panicked".into()))?
    })?;
    let completed = ProofEnvelope {
        format: "core032.nova-proof.v1".into(),
        binding: expected.binding.clone(),
        parameters: prover::parameter_identity(pp),
        proof: prover::encode(&proof)?,
    };
    prover::verify(&expected, pp, &completed)?;
    let progress = Progress::new(
        native.load(Ordering::SeqCst),
        proved.load(Ordering::SeqCst),
        bridged.load(Ordering::SeqCst),
    )?;
    let maximum = arrivals
        .iter()
        .filter_map(|v| v["progress"]["pending"].as_u64())
        .max()
        .unwrap_or(0);
    Ok(
        serde_json::json!({"format":"core032.async-observation.v1","arrivals":arrivals,"final":progress,"observed_max_pending":maximum,"whole_seconds":start.elapsed().as_secs_f64(),"attempts":expected.steps.len(),"scope":"bounded closed fixture; one measured CPU, one Nova worker, native/proof actor threads; trusted parameters already supplied"}),
    )
}
