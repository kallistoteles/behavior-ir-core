//! Scoped actual-byte source/matrix checking. Full K and Nova remain pending.
use crate::profile::Error;
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::path::{Path, PathBuf};

fn hex_digest(value: &serde_json::Value, name: &str) -> Result<[u8; 32], Error> {
    let text = value
        .get(name)
        .and_then(serde_json::Value::as_str)
        .ok_or_else(|| Error::Rejected("missing artifact digest".into()))?;
    if !crate::profile::valid_digest(text) {
        return Err(Error::Rejected("noncanonical artifact digest".into()));
    }
    let mut output = [0; 32];
    for (index, part) in text.as_bytes().as_chunks::<2>().0.iter().enumerate() {
        let pair = std::str::from_utf8(part)
            .map_err(|_| Error::Rejected("invalid artifact digest".into()))?;
        output[index] = u8::from_str_radix(pair, 16)
            .map_err(|_| Error::Rejected("invalid artifact digest".into()))?;
    }
    Ok(output)
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum Primitive {
    SignedNegative64,
}

pub fn check_pair(manifest_path: &Path, out: &Path) -> Result<serde_json::Value, Error> {
    let (manifest, _) = crate::evidence::load_manifest(manifest_path)?;
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    for (name, relative) in [
        ("driver", "proofs/check_pair.py"),
        ("artifact_driver", "proofs/check_artifact.py"),
        ("kernel_driver", "proofs/check_targets.py"),
        ("audit", "proofs/Audit.lean"),
        ("IR", "proofs/Core033/IR.lean"),
        ("Source", "proofs/Core033/Source.lean"),
        ("SourceParser", "proofs/Core033/SourceParser.lean"),
        ("Bits", "proofs/Core033/Bits.lean"),
        ("R1CS", "proofs/Core033/R1CS.lean"),
        ("Matrix", "proofs/Core033/Matrix.lean"),
        ("Pair", "proofs/Core033/Pair.lean"),
        ("KernelDecide", "proofs/Core033/KernelDecide.lean"),
        ("Generate", "proofs/Core033/Generate.lean"),
        ("lake_manifest", "proofs/lake-manifest.json"),
    ] {
        let input = manifest
            .inputs
            .get(name)
            .ok_or_else(|| Error::Invalid(format!("missing frozen first-pair input {name}")))?;
        if input.path != root.join(relative).canonicalize()? {
            return Err(Error::Rejected(format!(
                "wrong first-pair build input {name}"
            )));
        }
    }
    for name in [
        "native_source",
        "ir_matrix",
        "g0_contract",
        "g0_review",
        "codec_profile",
        "budget_start",
    ] {
        if !manifest.inputs.contains_key(name) {
            return Err(Error::Invalid(format!(
                "missing frozen first-pair input {name}"
            )));
        }
    }
    let runner = manifest
        .inputs
        .get("runner")
        .ok_or_else(|| Error::Invalid("missing frozen runner identity".into()))?;
    if runner.path != std::env::current_exe()?.canonicalize()? {
        return Err(Error::Rejected(
            "wrong actual correspondence executable".into(),
        ));
    }
    crate::evidence::verify_inputs(&manifest)?;
    let process = std::process::Command::new("python3")
        .arg(root.join("proofs/check_pair.py"))
        .arg("--manifest")
        .arg(manifest_path.canonicalize()?)
        .arg("--out")
        .arg(out)
        .output()?;
    crate::evidence::verify_inputs(&manifest)?;
    if !process.status.success() {
        return Err(Error::Rejected(format!(
            "first-pair gate failed: {}",
            String::from_utf8_lossy(&process.stderr)
        )));
    }
    let receipt: serde_json::Value = crate::evidence::decode(&process.stdout)?;
    if receipt["format_version"] != "core033.first-pair.v1"
        || receipt["g1_pass"] != false
        || receipt["release_relation_complete"] != false
        || receipt["status"] != "FirstPairChecked"
        || receipt["combined_fresh_kernel_replay"] != true
    {
        return Err(Error::Rejected("wrong first-pair scope/result".into()));
    }
    Ok(receipt)
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct Term {
    pub variable: u32,
    pub coefficient: [u8; 32],
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct Row {
    pub a: Vec<Term>,
    pub b: Vec<Term>,
    pub c: Vec<Term>,
}
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct MatrixArtifact {
    pub format_version: String,
    pub modulus: [u8; 32],
    pub variables: u32,
    pub inputs: Vec<u32>,
    pub private: Vec<u32>,
    pub outputs: Vec<u32>,
    pub constant_one: u32,
    pub rows: Vec<Row>,
}
#[derive(Debug)]
pub struct SourceReceipt {
    pub format_version: String,
    pub source_sha256: [u8; 32],
    pub compiled_input_sha256: [u8; 32],
    pub executable_sha256: [u8; 32],
    pub proof_receipt: PathBuf,
    pub g1_pass: bool,
}
#[derive(Debug)]
pub struct MatrixReceipt {
    pub format_version: String,
    pub effective_matrix_sha256: [u8; 32],
    pub output_ports: Vec<u32>,
    pub proof_receipt: PathBuf,
    pub g1_pass: bool,
}
pub fn check_source(source: &Path, _: Primitive, out: &Path) -> Result<SourceReceipt, Error> {
    if source.metadata()?.len() > 8 * 1024 * 1024 {
        return Err(Error::Invalid("source exceeds frozen byte bound".into()));
    }
    let raw = std::fs::read(source)?;
    let expected: [u8; 32] = Sha256::digest(&raw).into();
    let script = Path::new(env!("CARGO_MANIFEST_DIR")).join("proofs/check_artifact.py");
    let process = std::process::Command::new("python3")
        .arg(script)
        .arg("source")
        .arg("--input")
        .arg(source)
        .arg("--out")
        .arg(out)
        .output()?;
    if !process.status.success() {
        return Err(Error::Rejected(format!(
            "actual source proof/build rejected: {}",
            String::from_utf8_lossy(&process.stderr)
        )));
    }
    let receipt: serde_json::Value = crate::evidence::decode(&process.stdout)?;
    if receipt["format_version"] != "core033.source-correspondence.v1"
        || receipt["g1_pass"] != false
        || receipt["fresh_kernel_replay"] != true
    {
        return Err(Error::Rejected(
            "wrong source-correspondence scope/version".into(),
        ));
    }
    let source_sha256 = hex_digest(&receipt, "source_sha256")?;
    let compiled_input_sha256 = hex_digest(&receipt, "compiled_input_sha256")?;
    if source_sha256 != expected
        || compiled_input_sha256 != expected
        || std::fs::read(source)? != raw
    {
        return Err(Error::Rejected(
            "source/native build input binding changed".into(),
        ));
    }
    let proof = receipt["proof_receipt"]
        .as_str()
        .ok_or_else(|| Error::Rejected("missing kernel receipt".into()))?;
    let proof_receipt = PathBuf::from(proof);
    if proof_receipt != out.canonicalize()?.join("kernel/report.json") || !proof_receipt.is_file() {
        return Err(Error::Rejected("wrong actual kernel receipt path".into()));
    }
    Ok(SourceReceipt {
        format_version: "core033.source-correspondence.v1".into(),
        source_sha256,
        compiled_input_sha256,
        executable_sha256: hex_digest(&receipt, "executable_sha256")?,
        proof_receipt,
        g1_pass: false,
    })
}
pub fn encode_matrix(matrix: &MatrixArtifact) -> Result<Vec<u8>, Error> {
    const MAX: usize = 16_777_216;
    if matrix.format_version != "core033.matrix.v1"
        || matrix.variables == 0
        || matrix.variables as usize > MAX
        || matrix.rows.is_empty()
    {
        return Err(Error::Invalid(
            "matrix version/size outside frozen profile".into(),
        ));
    }
    let mut encoder = crate::codec::Encoder::new(96);
    encoder.fixed(&matrix.modulus);
    encoder.u32(matrix.variables);
    encoder.count(matrix.inputs.len(), MAX)?;
    encoder.count(matrix.private.len(), MAX)?;
    encoder.count(matrix.outputs.len(), MAX)?;
    encoder.count(matrix.rows.len(), MAX)?;
    encoder.u32(matrix.constant_one);
    let ports: Vec<_> = matrix
        .inputs
        .iter()
        .chain(&matrix.private)
        .chain(&matrix.outputs)
        .copied()
        .collect();
    encoder.count(ports.len(), MAX)?;
    for port in ports {
        encoder.u32(port);
    }
    encoder.count(matrix.rows.len(), MAX)?;
    for row in &matrix.rows {
        for vector in [&row.a, &row.b, &row.c] {
            encoder.count(vector.len(), MAX)?;
            if vector
                .windows(2)
                .any(|pair| pair[0].variable >= pair[1].variable)
            {
                return Err(Error::Invalid(
                    "matrix terms are not strictly ordered".into(),
                ));
            }
            for term in vector {
                if term.variable >= matrix.variables
                    || term.coefficient == [0; 32]
                    || term
                        .coefficient
                        .iter()
                        .rev()
                        .cmp(matrix.modulus.iter().rev())
                        != std::cmp::Ordering::Less
                {
                    return Err(Error::Invalid(
                        "noncanonical matrix wire/coefficient".into(),
                    ));
                }
                encoder.u32(term.variable);
                encoder.fixed(&term.coefficient);
            }
        }
    }
    encoder.finish(1_073_741_824)
}
pub fn check_matrix(matrix: &Path, _: Primitive, out: &Path) -> Result<MatrixReceipt, Error> {
    if matrix.metadata()?.len() > 1_073_741_824 {
        return Err(Error::Invalid("matrix exceeds frozen byte bound".into()));
    }
    let raw = std::fs::read(matrix)?;
    let expected: [u8; 32] = Sha256::digest(&raw).into();
    let script = Path::new(env!("CARGO_MANIFEST_DIR")).join("proofs/check_artifact.py");
    let process = std::process::Command::new("python3")
        .arg(script)
        .arg("matrix")
        .arg("--input")
        .arg(matrix)
        .arg("--out")
        .arg(out)
        .output()?;
    if !process.status.success() {
        return Err(Error::Rejected(format!(
            "actual matrix proof rejected: {}",
            String::from_utf8_lossy(&process.stderr)
        )));
    }
    let receipt: serde_json::Value = crate::evidence::decode(&process.stdout)?;
    let actual = hex_digest(&receipt, "effective_matrix_sha256")?;
    if receipt["format_version"] != "core033.matrix-correspondence.v1"
        || receipt["g1_pass"] != false
        || receipt["fresh_kernel_replay"] != true
        || actual != expected
        || std::fs::read(matrix)? != raw
    {
        return Err(Error::Rejected(
            "wrong actual matrix scope/input binding".into(),
        ));
    }
    let proof = receipt["proof_receipt"]
        .as_str()
        .ok_or_else(|| Error::Rejected("missing kernel receipt".into()))?;
    let proof_receipt = PathBuf::from(proof);
    if proof_receipt != out.canonicalize()?.join("kernel/report.json")
        || !proof_receipt.is_file()
        || receipt["output_ports"] != serde_json::json!([2])
    {
        return Err(Error::Rejected(
            "wrong actual kernel matrix/port receipt".into(),
        ));
    }
    Ok(MatrixReceipt {
        format_version: "core033.matrix-correspondence.v1".into(),
        effective_matrix_sha256: actual,
        output_ports: vec![2],
        proof_receipt,
        g1_pass: false,
    })
}
