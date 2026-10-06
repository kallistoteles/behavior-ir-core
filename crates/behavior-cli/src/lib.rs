//! `behavior` command-line interface over the engine API (contracts/engine-api.md), as a library
//! (feature 008): the binary and the Python binding's console script run the same `run`.
//!
//! Exit codes: 0 admitted / ALLOW / VALUE / replay match / verified / authorized; 1 DENY /
//! ENTITY_ID_ALREADY_USED / LIFECYCLE_CONFLICT / not verified / refused; 2 admission failure, INVALID_INPUT, INVALID_STATE, intent rejected, replay mismatch,
//! or invalid governance input; 3 ERROR or solver unavailable; 64 usage error.
#![forbid(unsafe_code)]

use std::ffi::OsString;
use std::io::Write;

use clap::{Parser, Subcommand};

#[derive(Parser)]
#[command(name = "behavior", about = "Behavior IR engine")]
struct Cli {
    #[command(subcommand)]
    command: Command,
}

#[derive(Subcommand)]
enum Command {
    /// Fresh authenticated verification and exact-policy authorization.
    Governance {
        #[command(subcommand)]
        command: GovernanceCommand,
    },
    /// Admit wire IR and print the AdmissionResult.
    Admit { wire: String },
    /// Print the behavior version of wire IR.
    Version { wire: String },
    /// Print the SchemaHash of the store schema wire IR declares (feature 009).
    SchemaHash { wire: String },
    /// Print the name → item hash table of wire IR.
    Hashes { wire: String },
    /// Evaluate a request.
    Eval { wire: String, request: String },
    /// Resolve typed bindings against an explicit snapshot and record the result.
    Invoke {
        wire: String,
        invocation: String,
        snapshot: String,
    },
    /// Invoke a capability intent using host-supplied context.
    InvokeIntent {
        wire: String,
        intent: String,
        snapshot: String,
        #[arg(long)]
        context: String,
    },
    /// Replay an invocation record from its own evidence.
    InvokeReplay { wire: String, record: String },
    /// Evaluate a structured intent with a host context.
    Intent {
        wire: String,
        intent: String,
        host: String,
    },
    /// Replay a decision record.
    Replay { wire: String, record: String },
    /// Evaluate a read in plain mode (feature 010) and print its read record.
    Read { wire: String, request: String },
    /// Replay a read record from its own facts (feature 010).
    ReadReplay { wire: String, record: String },
    /// Evaluate a read intent with a host context (feature 010): print only the response for
    /// the caller; `--record` writes the full read record for the host.
    ReadIntent {
        wire: String,
        intent: String,
        host: String,
        #[arg(long)]
        record: Option<String>,
    },
    /// Verify wire IR with the SMT solver and print the verification attestation.
    Verify {
        wire: String,
        #[arg(long)]
        profile: Option<String>,
        #[arg(long)]
        cache: Option<String>,
        #[arg(long)]
        out: Option<String>,
    },
    /// Print the content hash of a waiver.
    WaiverHash { waiver: String },
    /// Sign a waiver with an Ed25519 key (a file holding the 32-byte seed as hex).
    SignWaiver {
        waiver: String,
        #[arg(long)]
        seed: String,
    },
    /// Print the release's versions (engine, wire IR, records, store documents, verifier).
    EngineInfo,
    /// Admit, verify or apply a migration between two schemas (feature 009).
    Migration {
        #[command(subcommand)]
        command: MigrationCommand,
    },
    /// Decide whether a decision record's transition may be committed under a policy.
    Authorize {
        wire: String,
        record: String,
        #[arg(long)]
        policy: String,
        #[arg(long)]
        attestation: Option<String>,
        #[arg(long = "waiver")]
        waivers: Vec<String>,
        #[arg(long = "signature")]
        signatures: Vec<String>,
        #[arg(long)]
        now: String,
    },
}

#[derive(Subcommand)]
enum GovernanceCommand {
    Verify {
        wire: String,
        #[arg(long)]
        profile: String,
        #[arg(long)]
        seed: String,
        #[arg(long)]
        out: String,
        #[arg(long)]
        diagnostics: Option<String>,
    },
    VerifyMigration {
        source: String,
        target: String,
        migration: String,
        #[arg(long)]
        profile: String,
        #[arg(long)]
        seed: String,
        #[arg(long)]
        out: String,
        #[arg(long)]
        diagnostics: Option<String>,
    },
    Authorize {
        candidate: String,
        #[arg(long,conflicts_with_all=["source","target","migration"])]
        wire: Option<String>,
        #[arg(long,required_unless_present="wire",requires_all=["target","migration"])]
        source: Option<String>,
        #[arg(long,required_unless_present="wire",requires_all=["source","migration"])]
        target: Option<String>,
        #[arg(long,required_unless_present="wire",requires_all=["source","target"])]
        migration: Option<String>,
        #[arg(long)]
        evidence_policy: String,
        #[arg(long)]
        policy: String,
        #[arg(long)]
        seed: String,
        #[arg(long)]
        context: String,
        #[arg(long)]
        now: String,
        #[arg(long)]
        out: String,
        #[arg(long = "verification")]
        verifications: Vec<String>,
        #[arg(long = "waiver")]
        waivers: Vec<String>,
        #[arg(long = "waiver-signature")]
        waiver_signatures: Vec<String>,
    },
}

fn trusted_error(e: behavior_engine::verify::governance::TrustedError) -> u8 {
    eprintln!("behavior: {e}");
    if e.code == "VERIFICATION_INFRASTRUCTURE" {
        3
    } else {
        2
    }
}
fn typed_json_file(path: &str) -> Result<serde_json::Value, u8> {
    behavior_engine::canonical::decode_strict(&read(path)?).map_err(|e| {
        eprintln!("behavior: {e}");
        2
    })
}

/// Replace one complete artifact with a same-directory atomic rename. Failed
/// computation never reaches this function; failed writes remove their temp file.
fn atomic_output(path: &str, text: &str) -> Result<(), u8> {
    use std::fs::{File, OpenOptions};
    use std::sync::atomic::{AtomicUsize, Ordering};
    static NEXT: AtomicUsize = AtomicUsize::new(0);
    let destination = std::path::Path::new(path);
    let parent = destination
        .parent()
        .filter(|p| !p.as_os_str().is_empty())
        .unwrap_or(std::path::Path::new("."));
    let temp = parent.join(format!(
        ".behavior-artifact-{}-{}.tmp",
        std::process::id(),
        NEXT.fetch_add(1, Ordering::Relaxed)
    ));
    let write = (|| {
        let mut file = OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(&temp)?;
        file.write_all(text.as_bytes())?;
        file.sync_all()?;
        std::fs::rename(&temp, destination)?;
        File::open(parent)?.sync_all()
    })();
    if let Err(e) = write {
        let _ = std::fs::remove_file(&temp);
        eprintln!("behavior: cannot write {path}: {e}");
        return Err(USAGE);
    }
    Ok(())
}
fn proof_output(
    proof: behavior_engine::verify::governance::AuthenticatedVerification,
    out: &str,
    diagnostics: Option<&str>,
) -> Result<u8, u8> {
    let canonical = |v: &serde_json::Value| {
        behavior_engine::canonical::to_canonical_string(v).map_err(|e| {
            eprintln!("behavior: {e}");
            2
        })
    };
    let text = canonical(&proof.envelope.as_json())?;
    let sidecar = canonical(&proof.diagnostics)?;
    if let Some(path) = diagnostics {
        let absolute = |path: &str| {
            let p = std::path::Path::new(path);
            p.canonicalize().or_else(|_| {
                p.parent()
                    .filter(|p| !p.as_os_str().is_empty())
                    .unwrap_or(std::path::Path::new("."))
                    .canonicalize()
                    .map(|dir| dir.join(p.file_name().unwrap_or_default()))
            })
        };
        if absolute(path).ok() == absolute(out).ok() {
            eprintln!("behavior: --diagnostics and --out must name distinct files");
            return Err(USAGE);
        }
        atomic_output(path, &sidecar)?;
    }
    atomic_output(out, &text)?;
    emit(&text, false);
    Ok(if proof.envelope.report()["result"] == "verified" {
        0
    } else {
        1
    })
}

fn governance_command(command: GovernanceCommand) -> Result<u8, u8> {
    use behavior_engine::verify::governance as g;
    let admit = |path: &str| {
        behavior_engine::admit(&read(path)?).map_err(|r| {
            emit(&r.to_json_string(), false);
            2
        })
    };
    match command {
        GovernanceCommand::Verify {
            wire,
            profile,
            seed,
            out,
            diagnostics,
        } => {
            let m = admit(&wire)?;
            let p = g::decode_trusted_profile(&read(&profile)?).map_err(trusted_error)?;
            let key = read(&seed)?;
            g::signing_key_id(key.trim()).map_err(trusted_error)?;
            let solver = behavior_engine::verify::solver::Z3Process::from_env()
                .map_err(|e| {
                    eprintln!("behavior: {e}");
                    3
                })?
                .with_guard(std::time::Duration::from_millis(p.wall_clock_guard_ms));
            let proof =
                g::verify_authenticated(&g::GovernanceSubject::Module(&m), &p, key.trim(), &solver)
                    .map_err(trusted_error)?;
            proof_output(proof, &out, diagnostics.as_deref())
        }
        GovernanceCommand::VerifyMigration {
            source,
            target,
            migration,
            profile,
            seed,
            out,
            diagnostics,
        } => {
            let (s, t, m) = migration_inputs(&source, &target, &migration)?;
            let p = g::decode_trusted_profile(&read(&profile)?).map_err(trusted_error)?;
            let key = read(&seed)?;
            g::signing_key_id(key.trim()).map_err(trusted_error)?;
            let solver = behavior_engine::verify::solver::Z3Process::from_env()
                .map_err(|e| {
                    eprintln!("behavior: {e}");
                    3
                })?
                .with_guard(std::time::Duration::from_millis(p.wall_clock_guard_ms));
            let proof = g::verify_migration_authenticated(&m, &s, &t, &p, key.trim(), &solver)
                .map_err(trusted_error)?;
            proof_output(proof, &out, diagnostics.as_deref())
        }
        GovernanceCommand::Authorize {
            candidate,
            wire,
            source,
            target,
            migration,
            evidence_policy,
            policy,
            seed,
            context,
            now,
            out,
            verifications,
            waivers,
            waiver_signatures,
        } => {
            let p = g::ExecutionPolicyV2::from_json(&read(&policy)?).map_err(trusted_error)?;
            let ep =
                g::EvidencePolicyV2::from_json(&read(&evidence_policy)?).map_err(trusted_error)?;
            let q = g::AuthorizationContextV2::from_json(&read(&context)?, &p)
                .map_err(trusted_error)?;
            if q.policy_time() != now {
                eprintln!("behavior: CONTEXT_MISMATCH: --now differs from explicit Q.policy_time");
                return Err(2);
            }
            let candidate =
                g::GovernanceCandidate::from_json(&read(&candidate)?).map_err(trusted_error)?;
            let key = read(&seed)?;
            let issuer = g::signing_key_id(key.trim()).map_err(trusted_error)?;
            let mut proofs = verifications
                .iter()
                .map(|path| {
                    g::VerificationEnvelopeV2::from_json(&read(path)?).map_err(trusted_error)
                })
                .collect::<Result<Vec<_>, u8>>()?;
            proofs.sort_by(|a, b| a.hash().cmp(b.hash()));
            let sort_documents = |paths: &[String],
                                  tag: &str|
             -> Result<Vec<serde_json::Value>, u8> {
                let mut documents = paths
                    .iter()
                    .map(|path| {
                        let value = typed_json_file(path)?;
                        let hash = if tag == "waiver" {
                            g::waiver_hash(&value.to_string()).map_err(invalid)?
                        } else {
                            behavior_engine::canonical::tagged_hash(tag, &value).map_err(|e| {
                                eprintln!("behavior: {e}");
                                2
                            })?
                        };
                        Ok((hash, value))
                    })
                    .collect::<Result<Vec<_>, u8>>()?;
                documents.sort_by(|a, b| a.0.cmp(&b.0));
                Ok(documents.into_iter().map(|(_, v)| v).collect())
            };
            let waivers = sort_documents(&waivers, "waiver")?;
            let signatures = sort_documents(&waiver_signatures, "behavior.waiver_signature.v1")?;
            let action;
            let pair;
            let subject = if let Some(wire) = wire {
                action = admit(&wire)?;
                g::GovernanceSubject::Module(&action)
            } else if let (Some(s), Some(t), Some(m)) = (source, target, migration) {
                pair = migration_inputs(&s, &t, &m)?;
                g::GovernanceSubject::Migration(&pair.2, &pair.0, &pair.1)
            } else {
                return Err(USAGE);
            };
            let auth = g::authorize_trusted_with_waivers(
                &subject,
                &candidate,
                &ep,
                &p,
                &proofs,
                &waivers,
                &signatures,
                &issuer,
                &q,
            )
            .map_err(trusted_error)?;
            let signed = g::sign_authorization(&auth, key.trim()).map_err(trusted_error)?;
            let evidence=g::EvidenceV2::from_json(&serde_json::json!({"format":"behavior.evidence.v2","execution_policy":p.as_json(),"authorization":signed.as_json(),"verifications":proofs.iter().map(|p|p.as_json()).collect::<Vec<_>>(),"waivers":waivers,"waiver_signatures":signatures}).to_string()).map_err(trusted_error)?;
            let text = behavior_engine::canonical::to_canonical_string(&evidence.as_json())
                .map_err(|e| {
                    eprintln!("behavior: {e}");
                    2
                })?;
            atomic_output(&out, &text)?;
            emit(&text, false);
            Ok(if auth.decision() == "allow" { 0 } else { 1 })
        }
    }
}

const USAGE: u8 = 64;

/// Exit code for a decision result.
fn result_code(result: &str) -> u8 {
    match result {
        "ALLOW" => 0,
        // Lifecycle refusals (feature 006) are decisions, like DENY.
        "DENY" | "ENTITY_ID_ALREADY_USED" | "LIFECYCLE_CONFLICT" => 1,
        "ERROR" => 3,
        _ => 2,
    }
}

/// Exit code for a read result (feature 010), in the same convention as decisions.
fn read_code(result: &str) -> u8 {
    match result {
        "VALUE" => 0,
        "EVALUATION_ERROR" => 3,
        _ => 2,
    }
}

fn read(path: &str) -> Result<String, u8> {
    std::fs::read_to_string(path).map_err(|e| {
        eprintln!("behavior: cannot read {path}: {e}");
        USAGE
    })
}

#[derive(Subcommand)]
enum MigrationCommand {
    /// Admit a migration document against its source and target wire IR; print the resolved
    /// migration, its hash and its reviewable summary.
    Admit {
        source: String,
        target: String,
        migration: String,
    },
    /// Verify a migration with the SMT solver and print its attestation.
    Verify {
        source: String,
        target: String,
        migration: String,
        #[arg(long)]
        profile: Option<String>,
    },
    /// Apply a migration to a supplied source universe (a JSON array of {entity, value}); there
    /// is no store on the command line.
    Apply {
        source: String,
        target: String,
        migration: String,
        facts: String,
    },
}

/// The source and target modules and the admitted migration, or the exit code after printing
/// the admission errors.
fn migration_inputs(
    source: &str,
    target: &str,
    migration: &str,
) -> Result<
    (
        behavior_engine::semantic::module::Module,
        behavior_engine::semantic::module::Module,
        behavior_engine::migration::Migration,
    ),
    u8,
> {
    let admit = |path: &str| match behavior_engine::admit(&read(path)?) {
        Ok(m) => Ok(m),
        Err(r) => {
            emit(&r.to_json_string(), false);
            Err(2)
        }
    };
    let (s, t) = (admit(source)?, admit(target)?);
    match behavior_engine::migration::admit_migration(&s, &t, &read(migration)?) {
        Ok(m) => Ok((s, t, m)),
        Err(r) => {
            emit(&r.to_json_string(), false);
            Err(2)
        }
    }
}

fn migration_command(command: MigrationCommand) -> Result<u8, u8> {
    let canonical = |v: &serde_json::Value| {
        behavior_engine::canonical::to_canonical_string(v).unwrap_or_default()
    };
    match command {
        MigrationCommand::Admit {
            source,
            target,
            migration,
        } => {
            let (_, _, m) = match migration_inputs(&source, &target, &migration) {
                Ok(x) => x,
                Err(code) => return Ok(code),
            };
            let out = serde_json::json!({
                "ok": true, "hash": m.hash(), "summary": m.summary(), "resolved": m.resolved(),
            });
            emit(&canonical(&out), true);
            Ok(0)
        }
        MigrationCommand::Verify {
            source,
            target,
            migration,
            profile,
        } => {
            let profile = match profile {
                Some(p) => {
                    behavior_engine::verify::Profile::from_json(&read(&p)?).map_err(|e| {
                        eprintln!("behavior: {e}");
                        USAGE
                    })?
                }
                None => behavior_engine::verify::Profile::default(),
            };
            let (s, t, m) = match migration_inputs(&source, &target, &migration) {
                Ok(x) => x,
                Err(code) => return Ok(code),
            };
            let solver = behavior_engine::verify::solver::Z3Process::from_env()
                .map_err(|e| {
                    eprintln!("behavior: {e}");
                    3
                })?
                .with_guard(std::time::Duration::from_millis(
                    profile.wall_clock_guard_ms,
                ));
            if let Some(notice) = solver.version_mismatch() {
                eprintln!("behavior: warning: {notice}");
            }
            let a = behavior_engine::verify::verify_migration(&m, &s, &t, &profile, None, &solver);
            emit(&a.to_json_string(), false);
            Ok(if a.result == "verified" { 0 } else { 1 })
        }
        MigrationCommand::Apply {
            source,
            target,
            migration,
            facts,
        } => {
            let (s, t, m) = match migration_inputs(&source, &target, &migration) {
                Ok(x) => x,
                Err(code) => return Ok(code),
            };
            let universe: Vec<serde_json::Value> =
                serde_json::from_str(&read(&facts)?).map_err(|e| {
                    eprintln!("behavior: {facts}: {e}");
                    2
                })?;
            let mut entities = Vec::new();
            for e in universe {
                let (Some(entity), Some(value)) = (e["entity"].as_str(), e.get("value")) else {
                    eprintln!("behavior: {facts}: every item needs `entity` and `value`");
                    return Ok(2);
                };
                entities.push(behavior_engine::migration::SourceEntity {
                    entity: entity.to_string(),
                    value: value.clone(),
                });
            }
            let r = behavior_engine::migration::apply_migration(&m, &s, &t, &entities);
            emit(
                &canonical(&behavior_engine::migration::outcome_json(&r)),
                true,
            );
            Ok(if r.is_ok() { 0 } else { 1 })
        }
    }
}

fn emit(text: &str, newline: bool) {
    let mut out = std::io::stdout().lock();
    let _ = out.write_all(text.as_bytes());
    if newline {
        let _ = out.write_all(b"\n");
    }
    let _ = out.flush();
}

fn verify(
    wire: &str,
    profile: Option<&str>,
    cache: Option<&str>,
    out: Option<&str>,
) -> Result<u8, u8> {
    let profile = match profile {
        Some(p) => behavior_engine::verify::Profile::from_json(&read(p)?).map_err(|e| {
            eprintln!("behavior: {e}");
            USAGE
        })?,
        None => behavior_engine::verify::Profile::default(),
    };
    let module = match behavior_engine::admit(&read(wire)?) {
        Ok(m) => m,
        Err(r) => {
            emit(&r.to_json_string(), false);
            return Ok(2);
        }
    };
    let solver = behavior_engine::verify::solver::Z3Process::from_env()
        .map_err(|e| {
            eprintln!("behavior: {e}");
            3
        })?
        .with_guard(std::time::Duration::from_millis(
            profile.wall_clock_guard_ms,
        ));
    if let Some(notice) = solver.version_mismatch() {
        eprintln!("behavior: warning: {notice}");
    }
    let a = behavior_engine::verify::verify(
        &module,
        &profile,
        cache.map(std::path::Path::new),
        &solver,
    );
    let text = a.to_json_string();
    if let Some(path) = out {
        std::fs::write(path, &text).map_err(|e| {
            eprintln!("behavior: cannot write {path}: {e}");
            USAGE
        })?;
    }
    emit(&text, false);
    Ok(if a.result == "verified" { 0 } else { 1 })
}

fn invalid(e: behavior_engine::verify::governance::GovernanceError) -> u8 {
    eprintln!("behavior: {e}");
    2
}

fn invocation_command(
    wire: &str,
    document: &str,
    snapshot: &str,
    context: Option<&str>,
) -> Result<u8, u8> {
    let module = behavior_engine::admit(&read(wire)?).map_err(|report| {
        emit(&report.to_json_string(), false);
        2
    })?;
    let context = context
        .map(|path| {
            read(path).and_then(|text| {
                serde_json::from_str::<serde_json::Value>(&text).map_err(|e| {
                    eprintln!("behavior: {e}");
                    2
                })
            })
        })
        .transpose()?;
    let record = behavior_engine::invocation::invoke_document(
        &module,
        &read(document)?,
        &read(snapshot)?,
        context.as_ref(),
    )
    .map_err(|e| {
        eprintln!("behavior: {e}");
        2
    })?;
    emit(&record.to_json_string(), false);
    Ok(if record.outcome_kind() == "evaluated" {
        0
    } else {
        3
    })
}

fn dispatch(cli: Cli) -> Result<u8, u8> {
    match cli.command {
        Command::Governance { command } => governance_command(command),
        Command::Invoke {
            wire,
            invocation,
            snapshot,
        } => invocation_command(&wire, &invocation, &snapshot, None),
        Command::InvokeIntent {
            wire,
            intent,
            snapshot,
            context,
        } => invocation_command(&wire, &intent, &snapshot, Some(&context)),
        Command::InvokeReplay { wire, record } => {
            let module = behavior_engine::admit(&read(&wire)?).map_err(|report| {
                emit(&report.to_json_string(), false);
                2
            })?;
            let replay = behavior_engine::invocation::replay_invocation(&module, &read(&record)?);
            emit(&replay.to_json_string(), false);
            Ok(if replay.matches { 0 } else { 2 })
        }
        Command::Migration { command } => migration_command(command),
        Command::EngineInfo => {
            emit(
                &behavior_engine::canonical::to_canonical_string(&behavior_engine::engine_info())
                    .unwrap_or_default(),
                true,
            );
            Ok(0)
        }
        Command::WaiverHash { waiver } => {
            let h = behavior_engine::verify::governance::waiver_hash(&read(&waiver)?)
                .map_err(invalid)?;
            emit(&h, true);
            Ok(0)
        }
        Command::SignWaiver { waiver, seed } => {
            let signed =
                behavior_engine::verify::governance::sign_waiver(&read(&seed)?, &read(&waiver)?)
                    .map_err(invalid)?;
            emit(
                &behavior_engine::canonical::to_canonical_string(&signed).unwrap_or_default(),
                false,
            );
            Ok(0)
        }
        Command::Authorize {
            wire,
            record,
            policy,
            attestation,
            waivers,
            signatures,
            now,
        } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            let attestation = attestation.as_deref().map(read).transpose()?;
            let waivers = waivers
                .iter()
                .map(|w| read(w))
                .collect::<Result<Vec<_>, _>>()?;
            let signatures = signatures
                .iter()
                .map(|s| read(s))
                .collect::<Result<Vec<_>, _>>()?;
            let a = behavior_engine::verify::governance::authorize(
                &read(&policy)?,
                &module,
                &read(&record)?,
                attestation.as_deref(),
                &waivers,
                &signatures,
                &now,
            )
            .map_err(invalid)?;
            emit(&a.to_json_string(), false);
            Ok(if a.decision == "allow" { 0 } else { 1 })
        }
        Command::Verify {
            wire,
            profile,
            cache,
            out,
        } => verify(&wire, profile.as_deref(), cache.as_deref(), out.as_deref()),
        Command::Admit { wire } => {
            let r = behavior_engine::admission_report(&read(&wire)?);
            emit(&r.to_json_string(), false);
            Ok(if r.ok { 0 } else { 2 })
        }
        Command::Version { wire } => {
            let r = behavior_engine::admission_report(&read(&wire)?);
            match r.behavior_version {
                Some(v) if r.ok => {
                    emit(&v, true);
                    Ok(0)
                }
                _ => {
                    emit(&r.to_json_string(), false);
                    Ok(2)
                }
            }
        }
        Command::SchemaHash { wire } => match behavior_engine::admit(&read(&wire)?) {
            Ok(m) => {
                emit(&behavior_engine::schema(&m).hash, true);
                Ok(0)
            }
            Err(r) => {
                emit(&r.to_json_string(), false);
                Ok(2)
            }
        },
        Command::Hashes { wire } => {
            let r = behavior_engine::admission_report(&read(&wire)?);
            if r.ok {
                let items = serde_json::to_value(&r.items).unwrap_or_default();
                emit(
                    &behavior_engine::canonical::to_canonical_string(&items).unwrap_or_default(),
                    false,
                );
                Ok(0)
            } else {
                emit(&r.to_json_string(), false);
                Ok(2)
            }
        }
        Command::Eval { wire, request } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            let record = behavior_engine::evaluate(&module, &read(&request)?);
            emit(&record.to_json_string(), false);
            Ok(result_code(record.result()))
        }
        Command::Replay { wire, record } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            let r = behavior_engine::replay(&module, &read(&record)?);
            emit(&r.to_json_string(), false);
            Ok(if r.matches { 0 } else { 2 })
        }
        Command::Read { wire, request } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            match behavior_engine::read::evaluate_read_request(&module, &read(&request)?) {
                Ok(x) => {
                    emit(&x.record.to_json_string(), false);
                    Ok(read_code(x.record.result()))
                }
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    Ok(2)
                }
            }
        }
        Command::ReadReplay { wire, record } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            let r = behavior_engine::read::replay_read(&module, &read(&record)?);
            emit(&r.to_json_string(), false);
            Ok(if r.matches { 0 } else { 2 })
        }
        Command::ReadIntent {
            wire,
            intent,
            host,
            record,
        } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            match behavior_engine::read::evaluate_read_intent(
                &module,
                &read(&intent)?,
                &read(&host)?,
            ) {
                Ok(x) => {
                    if let Some(path) = record {
                        std::fs::write(&path, x.record.to_json_string()).map_err(|e| {
                            eprintln!("behavior: cannot write {path}: {e}");
                            USAGE
                        })?;
                    }
                    emit(&x.response.to_json_string(), false);
                    Ok(read_code(x.response.result()))
                }
                Err(rejection) => {
                    emit(&rejection.to_json_string(), false);
                    Ok(2)
                }
            }
        }
        Command::Intent { wire, intent, host } => {
            let module = match behavior_engine::admit(&read(&wire)?) {
                Ok(m) => m,
                Err(r) => {
                    emit(&r.to_json_string(), false);
                    return Ok(2);
                }
            };
            match behavior_engine::evaluate_intent(&module, &read(&intent)?, &read(&host)?) {
                Ok(record) => {
                    emit(&record.to_json_string(), false);
                    Ok(result_code(record.result()))
                }
                Err(rejection) => {
                    emit(&rejection.to_json_string(), false);
                    Ok(2)
                }
            }
        }
    }
}

/// Runs the command line `args` (the program name first) and returns the exit code. Output is
/// flushed before returning.
pub fn run(args: Vec<OsString>) -> u8 {
    let cli = match Cli::try_parse_from(args) {
        Ok(cli) => cli,
        Err(e) => {
            let _ = e.print();
            return match e.kind() {
                clap::error::ErrorKind::DisplayHelp | clap::error::ErrorKind::DisplayVersion => 0,
                _ => USAGE,
            };
        }
    };
    let c = dispatch(cli).unwrap_or_else(|c| c);
    let _ = std::io::stdout().flush();
    let _ = std::io::stderr().flush();
    c
}
