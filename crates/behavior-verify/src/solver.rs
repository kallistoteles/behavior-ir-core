//! The solver behind a trait, and the pinned Z3 binary as a subprocess (research R1, R2).
//!
//! Determinism: fixed seeds, one thread, and a resource budget (`rlimit`) rather than a
//! wall-clock timeout. The wall-clock guard only stops runaway processes; results it produces
//! are reported as `WallClockGuard` and are never cached.

use std::collections::BTreeMap;
use std::io::{Read, Write};
use std::path::{Path, PathBuf};
use std::process::{Command, Stdio};
use std::time::{Duration, Instant};

use crate::smt::{Sexp, SmtValue, parse, value};

/// One satisfiability question: declarations and assertions, the symbols whose values are
/// wanted if satisfiable, and the resource budget.
#[derive(Debug, Clone)]
pub struct Query {
    pub script: String,
    pub get: Vec<String>,
    pub rlimit: u64,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum UnknownReason {
    SolverUnknown,
    ResourceLimit,
    WallClockGuard,
    Error(String),
}

impl UnknownReason {
    pub fn as_str(&self) -> &str {
        match self {
            UnknownReason::SolverUnknown => "solver_unknown",
            UnknownReason::ResourceLimit => "resource_limit",
            UnknownReason::WallClockGuard => "wall_clock_guard",
            UnknownReason::Error(_) => "solver_error",
        }
    }
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum SolverAnswer {
    Sat(BTreeMap<String, SmtValue>),
    Unsat,
    Unknown(UnknownReason),
}

pub trait Solver {
    fn check(&self, query: &Query) -> SolverAnswer;
    fn version(&self) -> String;
}

/// The Z3 version this release is verified with (feature 008). Another version may run, but may
/// prove or leave inconclusive different checks; every attestation records the version it ran.
pub const SUPPORTED_Z3: &str = "4.16.0";

#[derive(Debug, thiserror::Error)]
pub enum SolverError {
    /// The solver could not be started: the one external prerequisite of verification.
    #[error(
        "verification needs the Z3 SMT solver (supported: {SUPPORTED_Z3}); install z3 on PATH or set BEHAVIOR_Z3 (cannot run {0}: {1})"
    )]
    Spawn(String, String),
}

/// The Z3 binary, driven over stdin/stdout with SMT-LIB 2.
#[derive(Debug, Clone)]
pub struct Z3Process {
    path: PathBuf,
    version: String,
    guard: Duration,
}

impl Z3Process {
    /// Uses `BEHAVIOR_Z3` if set, otherwise `z3` on `PATH`.
    pub fn from_env() -> Result<Self, SolverError> {
        let path = std::env::var_os("BEHAVIOR_Z3")
            .map(PathBuf::from)
            .unwrap_or_else(|| "z3".into());
        Self::new(path, Duration::from_secs(60))
    }

    pub fn new(path: PathBuf, guard: Duration) -> Result<Self, SolverError> {
        let text = run_process(&path, &["--version"], None, guard)
            .map_err(|e| SolverError::Spawn(path.display().to_string(), format!("{e:?}")))?;
        // "Z3 version 4.16.0 - 64 bit"
        let number = text.split_whitespace().nth(2).unwrap_or("unknown");
        Ok(Z3Process {
            path,
            version: format!("z3 {number}"),
            guard,
        })
    }

    /// A notice if the solver is not the supported version, or `None`.
    pub fn version_mismatch(&self) -> Option<String> {
        let supported = format!("z3 {SUPPORTED_Z3}");
        (self.version != supported).then(|| {
            format!(
                "solver {} is not the supported z3 {SUPPORTED_Z3}; results may differ (the attestation records the version)",
                self.version
            )
        })
    }

    pub fn with_guard(mut self, guard: Duration) -> Self {
        self.guard = guard;
        self
    }

    fn run(&self, script: &str) -> Result<String, UnknownReason> {
        run_process(&self.path, &["-in"], Some(script.to_owned()), self.guard)
    }
}

// The operational guard covers input transport, process exit and complete output,
// including the version probe. It never becomes a semantic INCONCLUSIVE result.
fn run_process(
    path: &Path,
    args: &[&str],
    input: Option<String>,
    guard: Duration,
) -> Result<String, UnknownReason> {
    let began = Instant::now();
    let mut child = Command::new(path)
        .args(args)
        .stdin(if input.is_some() {
            Stdio::piped()
        } else {
            Stdio::null()
        })
        .stdout(Stdio::piped())
        .stderr(Stdio::null())
        .spawn()
        .map_err(|e| UnknownReason::Error(e.to_string()))?;
    let (written_tx, written_rx) = std::sync::mpsc::channel();
    if let Some(script) = input {
        if let Some(mut stdin) = child.stdin.take() {
            std::thread::spawn(move || {
                let result = stdin.write_all(script.as_bytes());
                drop(stdin);
                let _ = written_tx.send(result);
            });
        } else {
            let _ = child.kill();
            let _ = child.wait();
            return Err(UnknownReason::Error("no solver stdin".into()));
        }
    } else {
        let _ = written_tx.send(Ok(()));
    }
    let mut stdout = child
        .stdout
        .take()
        .ok_or_else(|| UnknownReason::Error("no stdout".into()))?;
    let (read_tx, read_rx) = std::sync::mpsc::channel();
    std::thread::spawn(move || {
        let mut output = String::new();
        let result = stdout.read_to_string(&mut output).map(|_| output);
        let _ = read_tx.send(result);
    });
    let mut written = false;
    let mut output = None;
    let mut exited = false;
    let result = loop {
        if !written {
            match written_rx.try_recv() {
                Ok(Ok(())) => written = true,
                Ok(Err(e)) => {
                    break Err(UnknownReason::Error(format!(
                        "solver input write failed: {e}"
                    )));
                }
                Err(std::sync::mpsc::TryRecvError::Disconnected) => {
                    break Err(UnknownReason::Error("solver writer failed".into()));
                }
                Err(std::sync::mpsc::TryRecvError::Empty) => {}
            }
        }
        if output.is_none() {
            match read_rx.try_recv() {
                Ok(Ok(text)) => output = Some(text),
                Ok(Err(e)) => {
                    break Err(UnknownReason::Error(format!(
                        "solver output read failed: {e}"
                    )));
                }
                Err(std::sync::mpsc::TryRecvError::Disconnected) => {
                    break Err(UnknownReason::Error("solver reader failed".into()));
                }
                Err(std::sync::mpsc::TryRecvError::Empty) => {}
            }
        }
        if !exited {
            match child.try_wait() {
                Ok(Some(status)) if status.success() => exited = true,
                Ok(Some(status)) => {
                    break Err(UnknownReason::Error(format!(
                        "solver process exited with {status}"
                    )));
                }
                Ok(None) => {}
                Err(e) => break Err(UnknownReason::Error(e.to_string())),
            }
        }
        if began.elapsed() >= guard {
            break Err(UnknownReason::WallClockGuard);
        }
        if exited
            && written
            && let Some(text) = output.take()
        {
            break Ok(text);
        }
        std::thread::sleep(Duration::from_millis(2));
    };
    if result.is_err() {
        let _ = child.kill();
        let _ = child.wait();
    }
    result
}

impl Solver for Z3Process {
    fn version(&self) -> String {
        self.version.clone()
    }

    fn check(&self, query: &Query) -> SolverAnswer {
        let mut script = String::new();
        script.push_str("(set-option :produce-models true)\n");
        script.push_str(&format!("(set-option :rlimit {})\n", query.rlimit.max(1)));
        script.push_str("(set-option :smt.random_seed 0)\n(set-option :sat.random_seed 0)\n");
        script.push_str(&query.script);
        script.push_str("\n(check-sat)\n(get-info :reason-unknown)\n");
        let mut output = match self.run(&script) {
            Ok(o) => o,
            Err(reason) => return SolverAnswer::Unknown(reason),
        };
        let initial = match parse(&output) {
            Ok(p) => p,
            Err(e) => return SolverAnswer::Unknown(UnknownReason::Error(e.to_string())),
        };
        // Asking for a model after UNSAT/UNKNOWN is a protocol error and makes
        // Z3 exit nonzero. Obtain a model only after SAT, with the same pinned
        // script, seeds and deterministic budget; require the repeated answer
        // to remain SAT. Never accept a failing process's printed prefix.
        if matches!(initial.first(),Some(Sexp::Atom(a)) if a == "sat") && !query.get.is_empty() {
            script.push_str(&format!("(get-value ({}))\n", query.get.join(" ")));
            output = match self.run(&script) {
                Ok(o) => o,
                Err(r) => return SolverAnswer::Unknown(r),
            };
        }
        let parsed = match parse(&output) {
            Ok(p) => p,
            Err(e) => return SolverAnswer::Unknown(UnknownReason::Error(e.to_string())),
        };
        if matches!(initial.first(),Some(Sexp::Atom(a)) if a == "sat")
            && !matches!(parsed.first(),Some(Sexp::Atom(a)) if a == "sat")
        {
            return SolverAnswer::Unknown(UnknownReason::Error(
                "solver model query changed the satisfiability answer".into(),
            ));
        }
        // Validate the complete response product, not just a printed status.
        let expected =
            if matches!(parsed.first(),Some(Sexp::Atom(a)) if a=="sat") && !query.get.is_empty() {
                3
            } else {
                2
            };
        let reason_ok = matches!(parsed.get(1),Some(Sexp::List(items)) if matches!(items.as_slice(),[Sexp::Atom(key),Sexp::Str(_)] if key==":reason-unknown"));
        if parsed.len() != expected || !reason_ok {
            return SolverAnswer::Unknown(UnknownReason::Error(
                "malformed or extra solver protocol response".into(),
            ));
        }
        match parsed.first() {
            Some(Sexp::Atom(a)) if a == "unsat" => SolverAnswer::Unsat,
            Some(Sexp::Atom(a)) if a == "sat" => {
                let mut model = BTreeMap::new();
                if let Some(Sexp::List(pairs)) = parsed.get(2) {
                    for pair in pairs {
                        let Sexp::List(kv) = pair else {
                            return SolverAnswer::Unknown(UnknownReason::Error(
                                "malformed solver model member".into(),
                            ));
                        };
                        let [Sexp::Atom(name), v] = kv.as_slice() else {
                            return SolverAnswer::Unknown(UnknownReason::Error(
                                "malformed solver model pair".into(),
                            ));
                        };
                        {
                            match value(v) {
                                Ok(val) => {
                                    if model.insert(name.clone(), val).is_some() {
                                        return SolverAnswer::Unknown(UnknownReason::Error(
                                            "duplicate solver model symbol".into(),
                                        ));
                                    }
                                }
                                Err(e) => {
                                    return SolverAnswer::Unknown(UnknownReason::Error(
                                        e.to_string(),
                                    ));
                                }
                            }
                        }
                    }
                }
                if model.len() != query.get.len()
                    || query.get.iter().any(|name| !model.contains_key(name))
                {
                    return SolverAnswer::Unknown(UnknownReason::Error(
                        "solver model omits or adds requested symbols".into(),
                    ));
                }
                SolverAnswer::Sat(model)
            }
            Some(Sexp::Atom(a)) if a == "unknown" => {
                let reason = match parsed.get(1) {
                    Some(Sexp::List(items)) => match items.get(1) {
                        Some(Sexp::Str(r)) => r.clone(),
                        _ => String::new(),
                    },
                    _ => String::new(),
                };
                // Cancellation is not a reproducible budget outcome. Only the
                // pinned solver's explicit deterministic resource diagnostics
                // can be archived as semantic inconclusiveness.
                if matches!(
                    reason.as_str(),
                    "max. resource limit exceeded"
                        | "(resource limits reached)"
                        | "resource limits reached"
                ) {
                    SolverAnswer::Unknown(UnknownReason::ResourceLimit)
                } else {
                    SolverAnswer::Unknown(UnknownReason::SolverUnknown)
                }
            }
            other => SolverAnswer::Unknown(UnknownReason::Error(format!(
                "unexpected output: {other:?}"
            ))),
        }
    }
}
