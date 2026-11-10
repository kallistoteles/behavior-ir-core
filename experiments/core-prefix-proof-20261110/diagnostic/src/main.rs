//! Actual guest execution statistics only. Not a certificate or verifier path.
use risc0_zkvm::{Executor,ExecutorEnv,ExternalProver};
use serde_json::json;
use sha2::{Digest,Sha256};
use std::{fs,path::Path,time::Instant};
fn run()->Result<(),Box<dyn std::error::Error>>{
    let a=std::env::args().collect::<Vec<_>>();assert_eq!(a.len(),5);
    let program=fs::read(&a[1])?;let inputs=Path::new(&a[2]);let expected=fs::read(inputs.join("expected.json"))?;
    let mut builder=ExecutorEnv::builder();
    for i in 0..2{let raw=fs::read(inputs.join(format!("proposal-{i}.json")))?;assert!(raw.len()<=262144);builder.write(&(raw.len()as u32))?.write_slice(&raw);}
    let start=Instant::now();let session=ExternalProver::new("execution-only-diagnostic",&a[3]).execute(builder.build()?,&program)?;
    let receipt=json!({"kind":"ExecutionOnlyNotProof","elapsed_ns":start.elapsed().as_nanos(),"user_cycles":session.cycles(),
        "segments":session.segments.iter().map(|s|json!({"po2":s.po2,"user_cycles":s.cycles})).collect::<Vec<_>>(),
        "exit_code":format!("{:?}",session.exit_code),"journal_bytes":session.journal.bytes.len(),
        "journal_sha256":format!("{:x}",Sha256::digest(&session.journal.bytes)),"journal_equals_expected":session.journal.bytes==expected,
        "cryptographic_certificate":false,"g1_pass":false});
    fs::write(&a[4],serde_json::to_vec_pretty(&receipt)?)?;println!("{receipt}");
    if session.journal.bytes!=expected{return Err("DiagnosticJournalMismatch".into());}Ok(())
}
fn main(){if let Err(e)=run(){eprintln!("execution-only diagnostic error: {e}");std::process::exit(1);}}
