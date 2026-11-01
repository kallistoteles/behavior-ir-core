//! Immutable developer evidence. No successful Core acceptance is constructed here.
use crate::profile::{
    Error, FailureReceipt, INPUT_VERSION, InputArtifact, InputManifest, MAX_METADATA_BYTES, Profile,
};
use serde::{Deserialize, Serialize, de::DeserializeOwned};
use sha2::{Digest, Sha256};
use std::collections::BTreeMap;
use std::fs::{self, File, OpenOptions};
use std::io::{Read, Write};
use std::path::{Path, PathBuf};
use std::sync::atomic::{AtomicU64, Ordering};

static NEXT: AtomicU64 = AtomicU64::new(0);

pub fn digest(bytes: &[u8]) -> String {
    format!("{:x}", Sha256::digest(bytes))
}

pub fn read_metadata(path: &Path) -> Result<Vec<u8>, Error> {
    let mut bytes = Vec::new();
    File::open(path)?
        .take(MAX_METADATA_BYTES + 1)
        .read_to_end(&mut bytes)?;
    if bytes.len() as u64 > MAX_METADATA_BYTES {
        return Err(Error::Invalid("metadata size limit exceeded".into()));
    }
    Ok(bytes)
}

pub fn decode<T: DeserializeOwned>(bytes: &[u8]) -> Result<T, Error> {
    if bytes.len() as u64 > MAX_METADATA_BYTES {
        return Err(Error::Invalid("metadata size limit exceeded".into()));
    }
    let text =
        std::str::from_utf8(bytes).map_err(|_| Error::Invalid("metadata must be UTF-8".into()))?;
    behavior_core::canonical::decode_closed(text)
        .map_err(|_| Error::Invalid("malformed or ambiguous metadata JSON".into()))
}

pub fn encode<T: Serialize>(value: &T) -> Result<Vec<u8>, Error> {
    let mut bytes = serde_json::to_vec_pretty(value)
        .map_err(|_| Error::Invalid("metadata encoding failed".into()))?;
    bytes.push(b'\n');
    if bytes.len() as u64 > MAX_METADATA_BYTES {
        return Err(Error::Invalid(
            "encoded metadata size limit exceeded".into(),
        ));
    }
    Ok(bytes)
}

/// Same-filesystem no-replace publication; an existing incompatible file is never overwritten.
pub fn publish_file(path: &Path, bytes: &[u8]) -> Result<(), Error> {
    let parent = path
        .parent()
        .filter(|p| !p.as_os_str().is_empty())
        .unwrap_or_else(|| Path::new("."));
    fs::create_dir_all(parent)?;
    let temp = parent.join(format!(
        ".core033-{}-{}.tmp",
        std::process::id(),
        NEXT.fetch_add(1, Ordering::Relaxed)
    ));
    let mut file = OpenOptions::new()
        .write(true)
        .create_new(true)
        .open(&temp)?;
    let result = (|| {
        file.write_all(bytes)?;
        file.sync_all()?;
        match fs::hard_link(&temp, path) {
            Ok(()) => {}
            Err(error) if error.kind() == std::io::ErrorKind::AlreadyExists => {
                if fs::read(path)? != bytes {
                    return Err(Error::Rejected(
                        "immutable output already has different bytes".into(),
                    ));
                }
            }
            Err(error) => return Err(error.into()),
        }
        File::open(parent)?.sync_all()?;
        Ok(())
    })();
    drop(file);
    let _ = fs::remove_file(&temp);
    result
}

fn hash_file(path: &Path) -> Result<InputArtifact, Error> {
    let path = path.canonicalize()?;
    let mut file = File::open(&path)?;
    if !file.metadata()?.is_file() {
        return Err(Error::Invalid("input must be a regular file".into()));
    }
    let mut hasher = Sha256::new();
    let mut bytes = 0u64;
    let mut buffer = [0u8; 65536];
    loop {
        let count = file.read(&mut buffer)?;
        if count == 0 {
            break;
        }
        bytes = bytes
            .checked_add(count as u64)
            .ok_or_else(|| Error::Invalid("input length overflow".into()))?;
        hasher.update(&buffer[..count]);
    }
    Ok(InputArtifact {
        path,
        bytes,
        sha256: format!("{:x}", hasher.finalize()),
    })
}

pub fn verify_inputs(manifest: &InputManifest) -> Result<(), Error> {
    for input in manifest.inputs.values() {
        let actual = hash_file(&input.path)?;
        if actual.bytes != input.bytes || actual.sha256 != input.sha256 || actual.path != input.path
        {
            return Err(Error::Rejected("frozen input changed".into()));
        }
    }
    Ok(())
}

#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct Completion {
    format_version: String,
    input_manifest_sha256: String,
}

pub fn load_manifest(path: &Path) -> Result<(InputManifest, Vec<u8>), Error> {
    let bytes = read_metadata(path)?;
    let manifest: InputManifest = decode(&bytes)?;
    manifest.validate()?;
    let marker_path = path
        .parent()
        .unwrap_or_else(|| Path::new("."))
        .join("completion.json");
    let marker: Completion = decode(&read_metadata(&marker_path)?)?;
    if marker.format_version != "core033.completion.v1"
        || marker.input_manifest_sha256 != digest(&bytes)
    {
        return Err(Error::Rejected(
            "incomplete or mismatched output completion".into(),
        ));
    }
    Ok((manifest, bytes))
}

pub fn freeze(profile_path: &Path, out: &Path) -> Result<InputManifest, Error> {
    let profile_bytes = read_metadata(profile_path)?;
    let profile: Profile = decode(&profile_bytes)?;
    profile.validate()?;
    let base = profile_path.parent().unwrap_or_else(|| Path::new("."));
    let inputs = profile
        .inputs
        .iter()
        .map(|(name, path)| {
            let source = if path.is_absolute() {
                path.clone()
            } else {
                base.join(path)
            };
            Ok((name.clone(), hash_file(&source)?))
        })
        .collect::<Result<BTreeMap<_, _>, Error>>()?;
    let manifest = InputManifest {
        format_version: INPUT_VERSION.into(),
        name: profile.name,
        profile_sha256: digest(&profile_bytes),
        inputs,
        output_slots: profile.output_slots,
    };
    manifest.validate()?;
    let bytes = encode(&manifest)?;
    match fs::create_dir(out) {
        Ok(()) => {}
        Err(error) if error.kind() == std::io::ErrorKind::AlreadyExists => {
            let existing = load_manifest(&out.join("manifest.json"))
                .map_err(|_| Error::Rejected("existing output is partial or corrupt".into()))?;
            if existing.1 == bytes {
                return Ok(existing.0);
            }
            return Err(Error::Rejected("immutable manifest differs".into()));
        }
        Err(error) => return Err(error.into()),
    }
    publish_file(&out.join("manifest.json"), &bytes)?;
    publish_file(
        &out.join("completion.json"),
        &encode(&Completion {
            format_version: "core033.completion.v1".into(),
            input_manifest_sha256: digest(&bytes),
        })?,
    )?;
    Ok(manifest)
}

#[derive(Debug, Serialize)]
pub struct NegativeAssessment {
    pub format_version: &'static str,
    pub input_manifest_sha256: String,
    pub failure_receipt_sha256: String,
    pub completeness: &'static str,
    pub correctness: &'static str,
    pub performance: &'static str,
    pub decision: &'static str,
    pub g1_pass: bool,
    pub stage: String,
    pub blockers: Vec<String>,
    pub evidence_root: PathBuf,
}

pub fn assess_failure(
    manifest_path: &Path,
    failure_path: &Path,
    evidence: &Path,
    out: &Path,
) -> Result<NegativeAssessment, Error> {
    let (_, manifest_bytes) = load_manifest(manifest_path)?;
    let failure_bytes = read_metadata(failure_path)?;
    let failure: FailureReceipt = decode(&failure_bytes)?;
    failure.validate(&digest(&manifest_bytes))?;
    if !evidence.is_dir() {
        return Err(Error::Invalid("evidence root must be a directory".into()));
    }
    let mut blockers = vec![failure.reason];
    blockers.extend(failure.blocking_artifacts);
    let result = NegativeAssessment {
        format_version: "core033.assessment.v1",
        input_manifest_sha256: digest(&manifest_bytes),
        failure_receipt_sha256: digest(&failure_bytes),
        completeness: "partial",
        correctness: "not_established",
        performance: "not_established",
        decision: "rework",
        g1_pass: false,
        stage: failure.stage,
        blockers,
        evidence_root: evidence.canonicalize()?,
    };
    publish_file(out, &encode(&result)?)?;
    Ok(result)
}
