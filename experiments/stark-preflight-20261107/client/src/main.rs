//! Conditional CPU identity diagnostic, never Core/circuit correspondence.
#![forbid(unsafe_code)]
use risc0_binfmt::{compute_image_id, ProgramBinary};
use risc0_zkvm::{Digest, ExecutorEnv, FakeReceipt, InnerReceipt, ExternalProver,
                Prover, ProverOpts, Receipt, ReceiptClaim, VerifierContext};
use serde::{Deserialize, Serialize};
use sha2::{Digest as _, Sha256};
use std::{error::Error, fs, path::Path, time::Instant};
type Result<T> = std::result::Result<T, Box<dyn Error>>;

#[derive(Deserialize)]
struct Subject { initial: Vec<u64>, expected: Vec<u64> }
#[derive(Serialize, Deserialize)]
struct Image { image_words: Vec<u32>, program_sha256: String,
               user_elf_sha256: String, kernel_sha256: String }

fn sha(raw: &[u8]) -> String {
    Sha256::digest(raw).iter().map(|b| format!("{b:02x}")).collect()
}
fn event(name: &str, start: Instant) {
    println!("{}",serde_json::json!({"event":name,"elapsed_ns":start.elapsed().as_nanos(),"g1_pass":false}));
}
fn read_subject(path: &str) -> Result<Subject> {
    let subject: Subject = serde_json::from_slice(&fs::read(path)?)?;
    if subject.initial.len()!=43 || subject.expected.len()!=43 {
        return Err("exact43-word subject required".into());
    }
    Ok(subject)
}
fn image(path: &str) -> Result<Digest> {
    let image: Image = serde_json::from_slice(&fs::read(path)?)?;
    let words: [u32;8] = image.image_words.try_into().map_err(|_|"expected image arity")?;
    Ok(words.into())
}
fn encode_receipt(path: &Path, receipt: &Receipt) -> Result<()> {
    let raw = bincode::serde::encode_to_vec(receipt,bincode::config::standard().with_fixed_int_encoding())?;
    use std::io::Write;
    let mut file = fs::OpenOptions::new().write(true).create_new(true).open(path)?;
    file.write_all(&raw)?;
    println!("{}",serde_json::json!({"event":"receipt_stored","bytes":raw.len(),"sha256":sha(&raw),"g1_pass":false}));
    Ok(())
}
fn read_receipt(path: &str) -> Result<Receipt> {
    if fs::metadata(path)?.len()>134217728 {return Err("receipt byte bound".into());}
    let raw = fs::read(path)?;
    let (receipt,n) = bincode::serde::decode_from_slice(&raw,
        bincode::config::standard().with_fixed_int_encoding().with_limit::<134217728>())?;
    if n!=raw.len() {return Err("trailing serialized artifact bytes".into());}
    Ok(receipt)
}
fn run() -> Result<()> {
    let args:Vec<_> = std::env::args().collect();
    if args.len()<2 {return Err("prepare|prove|verify|make-fake".into());}
    match args[1].as_str() {
        "prepare" if args.len()==4 => {
            let user = fs::read(&args[2])?;
            let kernel = risc0_zkos_v1compat::V1COMPAT_ELF;
            let program = ProgramBinary::new(&user,kernel).encode();
            let id = compute_image_id(&program)?;
            let record = Image {image_words:id.as_words().to_vec(),program_sha256:sha(&program),
                                user_elf_sha256:sha(&user),kernel_sha256:sha(kernel)};
            let out = Path::new(&args[3]);fs::create_dir(out)?;
            fs::write(out.join("program.bin"),program)?;
            fs::write(out.join("image.json"),serde_json::to_vec_pretty(&record)?)?;
            println!("{}",serde_json::json!({"event":"combined_program_and_image_prepared","image_words":record.image_words,"g1_pass":false}));
        }
        "prove" if args.len()==6 => {
            let program = fs::read(&args[2])?;
            let subject = read_subject(&args[3])?;
            if subject.initial!=subject.expected {return Err("identity producer expects unchanged full endpoint".into());}
            let id = compute_image_id(&program)?;
            let env = ExecutorEnv::builder().write(&subject.initial)?.build()?;
            let context = VerifierContext::default().with_dev_mode(false);
            let options = ProverOpts::succinct().with_dev_mode(false);
            let start = Instant::now();
            let info = ExternalProver::new("private-release-r0vm", &args[5]).prove_with_ctx(env,&context,&program,&options)?;
            event("local_ipc_prove_and_sdk_integrity_through_succinct_receipt",start);
            println!("{}",serde_json::json!({"event":"session_stats","stats":info.stats,"g1_pass":false}));
            let receipt = info.receipt;
            if !matches!(&receipt.inner,InnerReceipt::Succinct(_)) {return Err("receipt kind is not succinct".into());}
            let start = Instant::now();
            receipt.verify_with_context(&context,id)?;
            let actual:Vec<u64> = receipt.journal.decode()?;
            if actual!=subject.expected {return Err("complete expected identity endpoint differs".into());}
            event("resident_verify_full43_word_endpoint",start);
            let out = Path::new(&args[4]);fs::create_dir(out)?;
            encode_receipt(&out.join("receipt.bin"),&receipt)?;
            println!("{}",serde_json::json!({"event":"identity_diagnostic_complete","full_endpoint_words":actual.len(),"g1_pass":false}));
        }
        "verify" if args.len()==5 => {
            let whole = Instant::now();
            let receipt = read_receipt(&args[2])?;
            let expected_id = image(&args[3])?;
            let subject = read_subject(&args[4])?;
            if !matches!(&receipt.inner,InnerReceipt::Succinct(_)) {return Err("receipt kind is not succinct".into());}
            event("fresh_receipt_and_expected_subject_loaded",whole);
            let start = Instant::now();
            receipt.verify_with_context(&VerifierContext::default().with_dev_mode(false),expected_id)
                .map_err(|e|format!("receipt verification failed: {e}"))?;
            let actual:Vec<u64> = receipt.journal.decode()?;
            if actual!=subject.expected {return Err("complete expected identity endpoint differs".into());}
            println!("{}",serde_json::json!({"event":"fresh_full43_word_endpoint_verified",
                "verify_ns":start.elapsed().as_nanos(),"total_inside_process_ns":whole.elapsed().as_nanos(),
                "full_endpoint_words":actual.len(),"g1_pass":false}));
        }
        "make-fake" if args.len()==5 => {
            let real = read_receipt(&args[2])?;
            let journal = real.journal.bytes;
            let fake = FakeReceipt::new(ReceiptClaim::ok(image(&args[3])?,journal.clone()));
            let receipt = Receipt::new(InnerReceipt::Fake(fake),journal);
            encode_receipt(Path::new(&args[4]),&receipt)?;
        }
        _ => return Err("invalid diagnostic mode/arguments".into()),
    }
    Ok(())
}
fn main() {
    if let Err(error)=run() {eprintln!("identity diagnostic error: {error}");std::process::exit(1);}
}
