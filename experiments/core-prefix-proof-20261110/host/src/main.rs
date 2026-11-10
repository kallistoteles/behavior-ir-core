#![forbid(unsafe_code)]
#[path = "../../../local-k-study-20261109/auth.rs"]
mod auth;
#[path = "../../../local-k-study-20261109/kernel.rs"]
mod kernel;
#[path = "../../../local-k-study-20261109/planner.rs"]
mod planner;
#[path = "../../prefix_logic.rs"]
mod prefix_logic;
use risc0_binfmt::{compute_image_id, ProgramBinary};
use risc0_zkvm::{
    Digest, ExecutorEnv, ExternalProver, FakeReceipt, InnerReceipt, Prover, ProverOpts, Receipt,
    ReceiptClaim, VerifierContext,
};
use serde::{Deserialize, Serialize};
use serde_json::json;
use sha2::{Digest as _, Sha256};
use std::{error::Error, fs, path::Path, time::Instant};
type Result<T> = std::result::Result<T, Box<dyn Error>>;
fn sha(raw: &[u8]) -> String {
    format!("{:x}", Sha256::digest(raw))
}
#[derive(Serialize, Deserialize)]
struct Image {
    image_words: Vec<u32>,
    program_sha256: String,
    user_elf_sha256: String,
    kernel_sha256: String,
}
fn image(path: &str) -> Result<Digest> {
    let i: Image = serde_json::from_slice(&fs::read(path)?)?;
    let words: [u32; 8] = i.image_words.try_into().map_err(|_| "ImageArity")?;
    Ok(words.into())
}
fn read_receipt(path: &str) -> Result<Receipt> {
    if fs::metadata(path)?.len() > 67108864 {
        return Err("ReceiptBound".into());
    }
    let raw = fs::read(path)?;
    let (r, n) = bincode::serde::decode_from_slice(
        &raw,
        bincode::config::standard()
            .with_fixed_int_encoding()
            .with_limit::<67108864>(),
    )?;
    if n != raw.len() {
        return Err("TrailingReceiptBytes".into());
    }
    Ok(r)
}
fn store_receipt(path: &Path, r: &Receipt) -> Result<()> {
    use std::io::Write;
    let raw =
        bincode::serde::encode_to_vec(r, bincode::config::standard().with_fixed_int_encoding())?;
    let mut f = fs::File::create_new(path)?;
    f.write_all(&raw)?;
    println!(
        "{}",
        json!({"event":"receipt_stored","bytes":raw.len(),"sha256":sha(&raw),"g1_pass":false})
    );
    Ok(())
}
fn verify(r: &Receipt, id: Digest, expected: &[u8]) -> Result<()> {
    if !matches!(&r.inner, InnerReceipt::Succinct(_)) {
        return Err("ReceiptNotSuccinct".into());
    }
    r.verify_with_context(&VerifierContext::default().with_dev_mode(false), id)
        .map_err(|e| format!("ReceiptVerificationFailed:{e}"))?;
    if r.journal.bytes != expected {
        return Err("CompleteExpectedJournalDiffers".into());
    }
    Ok(())
}
fn run() -> Result<()> {
    let a = std::env::args().collect::<Vec<_>>();
    match a.get(1).map(String::as_str) {
        Some("prepare-input") if a.len() == 3 => {
            let out = Path::new(&a[2]);
            fs::create_dir(out)?;
            let k = kernel::Kernel::new(2, &mut auth::Work::default())?;
            let rows = [auth::Row {
                id: "a".into(),
                x: 1,
            }];
            let used = ["a".into()];
            let mut b = k.initialize(&rows, &used, &mut auth::Work::default())?;
            let mut p = planner::Planner::new(&k, &rows, &used, &mut auth::Work::default())?;
            let mut inputs = [vec![], vec![]];
            for (i, (id, op)) in [
                ("prefix-create", kernel::Action::Create { id: "b".into() }),
                (
                    "prefix-set",
                    kernel::Action::Set {
                        id: "a".into(),
                        old: 1,
                        value: 3,
                    },
                ),
            ]
            .into_iter()
            .enumerate()
            {
                let r = b.request(id, op);
                let (proposal, next) = p.propose(&k, &r, &mut auth::Work::default())?;
                inputs[i] = serde_json::to_vec(&proposal)?;
                b = k.check(&b, &r, &proposal, &mut auth::Work::default())?.next;
                p = next;
                fs::write(out.join(format!("proposal-{i}.json")), &inputs[i])?;
            }
            let raw = prefix_logic::run(&inputs);
            let v: serde_json::Value = serde_json::from_slice(&raw)?;
            let fixture = include_str!(
                "../../../../docs/proposals/core-next-architecture/reference-fixture.jsonl"
            )
            .lines()
            .map(|s| serde_json::from_str::<serde_json::Value>(s).unwrap())
            .collect::<Vec<_>>();
            for label in ["live", "used"] {
                let h: Vec<u8> = serde_json::from_value(v["final"][label]["digest"].clone())?;
                let hex = h.iter().map(|b| format!("{b:02x}")).collect::<String>();
                assert_eq!(hex, fixture[2][format!("after_{label}")]);
            }
            fs::write(out.join("expected.json"), &raw)?;
            fs::write(
                out.join("native-input-receipt.json"),
                serde_json::to_vec_pretty(
                    &json!({"expected_bytes":raw.len(),"expected_sha256":sha(&raw),"scope":"Native exact local K initialized prefix; final roots match original golden state after set; not full Core","g1_pass":false}),
                )?,
            )?;
            println!(
                "{}",
                json!({"event":"actual_prefix_inputs_prepared","g1_pass":false})
            );
        }
        Some("prepare-program") if a.len() == 4 => {
            let user = fs::read(&a[2])?;
            let kernel = risc0_zkos_v1compat::V1COMPAT_ELF;
            let program = ProgramBinary::new(&user, kernel).encode();
            let id = compute_image_id(&program)?;
            let out = Path::new(&a[3]);
            fs::create_dir(out)?;
            fs::write(out.join("program.bin"), &program)?;
            fs::write(
                out.join("image.json"),
                serde_json::to_vec_pretty(&Image {
                    image_words: id.as_words().to_vec(),
                    program_sha256: sha(&program),
                    user_elf_sha256: sha(&user),
                    kernel_sha256: sha(kernel),
                })?,
            )?;
            println!(
                "{}",
                json!({"event":"actual_program_prepared","g1_pass":false})
            );
        }
        Some("prove") if a.len() == 7 => {
            let program = fs::read(&a[2])?;
            let dir = Path::new(&a[3]);
            let expected = fs::read(&a[4])?;
            let raw = [
                fs::read(dir.join("proposal-0.json"))?,
                fs::read(dir.join("proposal-1.json"))?,
            ];
            let mut builder = ExecutorEnv::builder();
            for r in &raw {
                if r.len() > 262144 {
                    return Err("ProposalBound".into());
                }
                builder.write(&(r.len() as u32))?.write_slice(r.as_slice());
            }
            let env = builder.build()?;
            let context = VerifierContext::default().with_dev_mode(false);
            let opts = ProverOpts::succinct().with_dev_mode(false);
            let start = Instant::now();
            let info = ExternalProver::new("actual-core-local-prefix", &a[6])
                .prove_with_ctx(env, &context, &program, &opts)?;
            println!(
                "{}",
                json!({"event":"actual_prefix_prove_ipc_sdk_integrity","elapsed_ns":start.elapsed().as_nanos(),"stats":info.stats,"g1_pass":false})
            );
            let start = Instant::now();
            verify(&info.receipt, compute_image_id(&program)?, &expected)?;
            println!(
                "{}",
                json!({"event":"resident_full_prefix_journal_verified","elapsed_ns":start.elapsed().as_nanos(),"g1_pass":false})
            );
            let out = Path::new(&a[5]);
            fs::create_dir(out)?;
            store_receipt(&out.join("receipt.bin"), &info.receipt)?;
            println!(
                "{}",
                json!({"event":"actual_initialized_two_transition_prefix_complete","g1_pass":false})
            );
        }
        Some("verify") if a.len() == 5 => {
            let start = Instant::now();
            let r = read_receipt(&a[2])?;
            verify(&r, image(&a[3])?, &fs::read(&a[4])?)?;
            println!(
                "{}",
                json!({"event":"fresh_full_expected_prefix_verified","inside_process_ns":start.elapsed().as_nanos(),"g1_pass":false})
            );
        }
        Some("alter-journal") if a.len() == 4 => {
            let mut r = read_receipt(&a[2])?;
            r.journal.bytes[0] ^= 1;
            store_receipt(Path::new(&a[3]), &r)?;
        }
        Some("make-fake") if a.len() == 5 => {
            let r = read_receipt(&a[2])?;
            let journal = r.journal.bytes;
            let fake = FakeReceipt::new(ReceiptClaim::ok(image(&a[3])?, journal.clone()));
            store_receipt(
                Path::new(&a[4]),
                &Receipt::new(InnerReceipt::Fake(fake), journal),
            )?;
        }
        _ => return Err("Usage".into()),
    }
    Ok(())
}
fn main() {
    if let Err(e) = run() {
        eprintln!("actual prefix error: {e}");
        std::process::exit(1);
    }
}
