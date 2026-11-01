#![allow(dead_code)]
pub mod claims;
pub mod matrix;
pub mod template;

use serde_json::{Value, json};
use std::fs;
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
use std::sync::atomic::{AtomicU64, Ordering};

static NEXT: AtomicU64 = AtomicU64::new(0);

pub struct Fixture(pub PathBuf);

impl Fixture {
    pub fn new() -> Result<Self, Box<dyn std::error::Error>> {
        let root = std::env::temp_dir().join(format!(
            "core033-{}-{}-{}",
            std::process::id(),
            std::time::SystemTime::now()
                .duration_since(std::time::UNIX_EPOCH)?
                .as_nanos(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        fs::create_dir(&root)?;
        fs::write(root.join("module.ir"), b"abc")?;
        let profile = json!({
            "format_version": "core033.profile.v1",
            "name": "foundation-control",
            "inputs": {"module": root.join("module.ir")},
            "output_slots": {
                "correspondence": "correspondence/receipt.json",
                "verification_key": "parameters/vk.bin"
            }
        });
        fs::write(root.join("profile.json"), serde_json::to_vec(&profile)?)?;
        Ok(Self(root))
    }

    pub fn run(&self, args: &[&str]) -> std::io::Result<Output> {
        Command::new(env!("CARGO_BIN_EXE_core-proof-feasibility033"))
            .current_dir(&self.0)
            .args(args)
            .output()
    }

    pub fn freeze(&self) -> std::io::Result<Output> {
        self.run(&["freeze", "--profile", "profile.json", "--out", "frozen"])
    }

    pub fn profile(&self) -> Result<Value, Box<dyn std::error::Error>> {
        Ok(serde_json::from_slice(&fs::read(
            self.0.join("profile.json"),
        )?)?)
    }

    pub fn set_profile(&self, value: &Value) -> Result<(), Box<dyn std::error::Error>> {
        fs::write(self.0.join("profile.json"), serde_json::to_vec(value)?)?;
        Ok(())
    }
}

impl Drop for Fixture {
    fn drop(&mut self) {
        let _ = fs::remove_dir_all(&self.0);
    }
}

pub fn read_json(path: &Path) -> Result<Value, Box<dyn std::error::Error>> {
    Ok(serde_json::from_slice(&fs::read(path)?)?)
}

pub fn sha256(bytes: &[u8]) -> String {
    use sha2::Digest;
    format!("{:x}", sha2::Sha256::digest(bytes))
}
