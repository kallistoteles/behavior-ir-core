//! Controller-selected filesystem roots; untrusted refs select bytes, never authority.
use crate::{
    error::{Result, StudyError},
    protocol::{self, ArtifactRefV2},
};
use serde_json::Value;
use std::{
    collections::BTreeMap,
    fs::File,
    io::Read,
    path::{Component, Path, PathBuf},
};

pub struct InputRoots {
    roots: BTreeMap<String, PathBuf>,
}

fn validate_root_components(path: &Path) -> Result<()> {
    let mut prefix = PathBuf::new();
    for component in path.components() {
        if matches!(component, Component::ParentDir | Component::CurDir) {
            return Err(StudyError::InvalidInput("InputRootNormalization".into()));
        }
        prefix.push(component.as_os_str());
        if std::fs::symlink_metadata(&prefix)?.file_type().is_symlink() {
            return Err(StudyError::InvalidInput("InputRootSymlink".into()));
        }
    }
    Ok(())
}

fn validate_root(name: &str, path: &Path) -> Result<()> {
    if name.is_empty() || name.len() > protocol::ID_BOUND || !path.is_absolute() {
        return Err(StudyError::InvalidInput("InputRootIdentity".into()));
    }
    validate_root_components(path)?;
    if !path.is_dir() {
        return Err(StudyError::InvalidInput("InputRootNotDirectory".into()));
    }
    Ok(())
}

fn validate_roots(roots: &BTreeMap<String, PathBuf>) -> Result<()> {
    for (name, path) in roots {
        validate_root(name, path)?;
    }
    Ok(())
}

fn populate_root_paths(
    map: &serde_json::Map<String, Value>,
    roots: &mut BTreeMap<String, PathBuf>,
) -> Result<()> {
    for (name, path) in map {
        let path = path
            .as_str()
            .ok_or_else(|| StudyError::InvalidInput("InputRootPath".into()))?;
        roots.insert(name.clone(), PathBuf::from(path));
    }
    Ok(())
}

fn validate_relative_path(relative: &Path) -> Result<()> {
    for part in relative.components() {
        if !matches!(part, Component::Normal(_)) {
            return Err(StudyError::InvalidInput("InputReferencePath".into()));
        }
    }
    Ok(())
}

fn append_reference_path(path: &mut PathBuf, relative: &Path) -> Result<()> {
    for part in relative.components() {
        path.push(part.as_os_str());
        if std::fs::symlink_metadata(&path)?.file_type().is_symlink() {
            return Err(StudyError::InvalidInput("InputArtifactSymlink".into()));
        }
    }
    Ok(())
}

impl InputRoots {
    /// The caller is the controller/verifier. This map is not read from a
    /// candidate request, prepared packet or claimed verification result.
    pub fn new(roots: BTreeMap<String, PathBuf>) -> Result<Self> {
        if roots.is_empty() || roots.len() > 16 {
            return Err(StudyError::InvalidInput("InputRootCount".into()));
        }
        validate_roots(&roots)?;
        Ok(Self { roots })
    }
    pub fn from_controller_environment() -> Result<Self> {
        let raw = std::env::var("CORE036_INPUT_ROOTS_JSON")
            .map_err(|_| StudyError::Prerequisite("ControllerInputRootsRequired"))?;
        let value = protocol::parse_json(raw.as_bytes(), protocol::CONTROL_BOUND_V2)?;
        let map = value
            .as_object()
            .ok_or_else(|| StudyError::InvalidInput("InputRootMap".into()))?;
        let mut roots = BTreeMap::new();
        populate_root_paths(map, &mut roots)?;
        Self::new(roots)
    }
    pub fn read(&self, reference: &ArtifactRefV2, bound: usize) -> Result<Vec<u8>> {
        reference.validate()?;
        if bound == 0 || bound > protocol::ARTIFACT_BOUND_V2 || reference.bytes > bound as u64 {
            return Err(StudyError::InvalidInput("InputArtifactBound".into()));
        }
        let root = self
            .roots
            .get(&reference.root_id)
            .ok_or_else(|| StudyError::InvalidInput("UnregisteredInputRoot".into()))?;
        let relative = Path::new(&reference.path);
        validate_relative_path(relative)?;
        let mut path = root.clone();
        append_reference_path(&mut path, relative)?;
        if !path.canonicalize()?.starts_with(root.canonicalize()?) {
            return Err(StudyError::InvalidInput("InputArtifactEscape".into()));
        }
        if !std::fs::symlink_metadata(&path)?.file_type().is_file() {
            return Err(StudyError::InvalidInput(
                "InputArtifactNotRegularFile".into(),
            ));
        }
        let mut bytes = vec![];
        File::open(path)?
            .take(reference.bytes + 1)
            .read_to_end(&mut bytes)?;
        if bytes.len() as u64 != reference.bytes
            || crate::serialization::raw_sha256(&bytes) != reference.sha256
        {
            return Err(StudyError::InvalidInput("InputArtifactBytesDiffer".into()));
        }
        Ok(bytes)
    }
    /// Resolve only after byte verification under controller-owned immutable inputs.
    pub fn verified_path(&self, reference: &ArtifactRefV2, bound: usize) -> Result<PathBuf> {
        self.read(reference, bound)?;
        let root = self
            .roots
            .get(&reference.root_id)
            .ok_or_else(|| StudyError::InvalidInput("UnregisteredInputRoot".into()))?;
        Ok(root.join(&reference.path))
    }
    pub fn semantic_json(&self, reference: &ArtifactRefV2) -> Result<Value> {
        Ok(protocol::parse_payload_json(
            &self.read(reference, protocol::ARTIFACT_BOUND_V2)?,
            protocol::ARTIFACT_BOUND_V2,
        )?)
    }
    pub fn control_json(&self, reference: &ArtifactRefV2) -> Result<Value> {
        Ok(protocol::parse_json(
            &self.read(reference, protocol::CONTROL_BOUND_V2)?,
            protocol::CONTROL_BOUND_V2,
        )?)
    }
}
