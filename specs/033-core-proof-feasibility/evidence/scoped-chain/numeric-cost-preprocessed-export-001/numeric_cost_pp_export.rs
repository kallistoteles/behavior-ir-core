//! Separate preprocessed-Spartan/IPA cost screen. No Core proof API or G1 authority.
//! Loads the actual numeric matrix verbatim; the Nova embedding is not certified.
use ff::{Field, PrimeField};
use nova_snark::{
    frontend::{ConstraintSystem, LinearCombination, SynthesisError, Variable, num::AllocatedNum},
    nova::{CompressedSNARK, PublicParams, RecursiveSNARK},
    provider::{PallasEngine, VestaEngine, ipa_pc::EvaluationEngine},
    spartan::ppsnark::RelaxedR1CSSNARK,
    traits::{Engine, circuit::StepCircuit, snark::RelaxedR1CSSNARKTrait},
};
use serde::Deserialize;
use sha2::{Digest, Sha256};
use std::{error::Error, fs, sync::Arc, time::Instant};

type Fr = <PallasEngine as Engine>::Scalar;
type Row = [Vec<(usize, Fr)>; 3];
type Parameters = PublicParams<PallasEngine, VestaEngine, NumericCircuit>;
type Proof = RecursiveSNARK<PallasEngine, VestaEngine, NumericCircuit>;
type S1 = RelaxedR1CSSNARK<PallasEngine, EvaluationEngine<PallasEngine>>;
type S2 = RelaxedR1CSSNARK<VestaEngine, EvaluationEngine<VestaEngine>>;
type Compressed = CompressedSNARK<PallasEngine, VestaEngine, NumericCircuit, S1, S2>;
type Result<T> = std::result::Result<T, Box<dyn Error>>;

#[derive(Debug)]
struct Matrix {
    variables: usize,
    inputs: Vec<usize>,
    outputs: Vec<usize>,
    rows: Vec<Row>,
}

struct Reader<'a> {
    bytes: &'a [u8],
    offset: usize,
}
impl Reader<'_> {
    fn take(&mut self, n: usize) -> Result<&[u8]> {
        let end = self.offset.checked_add(n).ok_or("offset overflow")?;
        let value = self.bytes.get(self.offset..end).ok_or("truncated matrix")?;
        self.offset = end;
        Ok(value)
    }
    fn number(&mut self) -> Result<usize> {
        Ok(u32::from_le_bytes(self.take(4)?.try_into()?) as usize)
    }
}
fn matrix(bytes: &[u8]) -> Result<Matrix> {
    let mut reader = Reader { bytes, offset: 0 };
    if reader.take(22)? != b"core033.semantic.v1\0\x60\0" {
        return Err("matrix format".into());
    }
    // The format must name the exact Pallas scalar modulus, without reduction.
    let modulus = reader.take(32)?;
    let mut p_minus_one = <Fr as PrimeField>::Repr::default();
    p_minus_one.as_mut().copy_from_slice(modulus);
    let mut borrow = true;
    for byte in p_minus_one.as_mut() {
        if borrow {
            let (value, underflow) = byte.overflowing_sub(1);
            *byte = value;
            borrow = underflow;
        }
    }
    if borrow || Option::<Fr>::from(Fr::from_repr(p_minus_one)) != Some(-Fr::ONE) {
        return Err("matrix modulus differs from Pallas scalar field".into());
    }
    let variables = reader.number()?;
    let ni = reader.number()?;
    let np = reader.number()?;
    let no = reader.number()?;
    let nr = reader.number()?;
    let one = reader.number()?;
    let ports = reader.number()?;
    if variables != 301706
        || ni != 43
        || no != 125
        || nr != 302936
        || one != 0
        || np != variables - 1 - ni - no
        || ports != ni + np + no
    {
        return Err("unexpected diagnostic matrix shape".into());
    }
    let mut all_ports = Vec::with_capacity(ports);
    for _ in 0..ports {
        all_ports.push(reader.number()?);
    }
    let mut seen = vec![false; variables];
    seen[0] = true;
    for &wire in &all_ports {
        if wire >= variables || seen[wire] {
            return Err("duplicate/out-of-bounds port".into());
        }
        seen[wire] = true;
    }
    if seen.iter().any(|v| !v) || reader.number()? != nr {
        return Err("incomplete ports/rows".into());
    }
    let inputs = all_ports[..ni].to_vec();
    let outputs = all_ports[ni + np..].to_vec();
    let mut rows = Vec::with_capacity(nr);
    for _ in 0..nr {
        let mut row: Row = std::array::from_fn(|_| Vec::new());
        for linear in &mut row {
            let count = reader.number()?;
            if count > 16777216 || count > (bytes.len() - reader.offset) / 36 {
                return Err("term bound".into());
            }
            for _ in 0..count {
                let wire = reader.number()?;
                let mut repr = <Fr as PrimeField>::Repr::default();
                repr.as_mut().copy_from_slice(reader.take(32)?);
                let coefficient =
                    Option::<Fr>::from(Fr::from_repr(repr)).ok_or("noncanonical coefficient")?;
                if wire >= variables {
                    return Err("term wire bound".into());
                }
                linear.push((wire, coefficient));
            }
        }
        rows.push(row);
    }
    if reader.offset != bytes.len() {
        return Err("trailing matrix bytes".into());
    }
    Ok(Matrix {
        variables,
        inputs,
        outputs,
        rows,
    })
}

#[derive(Clone, Debug)]
struct NumericCircuit {
    matrix: Arc<Matrix>,
    witness: Arc<Vec<Fr>>,
}
fn lc(
    mut out: LinearCombination<Fr>,
    terms: &[(usize, Fr)],
    wires: &[Variable],
) -> LinearCombination<Fr> {
    for &(wire, coefficient) in terms {
        out = out + (coefficient, wires[wire]);
    }
    out
}
impl StepCircuit<Fr> for NumericCircuit {
    fn arity(&self) -> usize {
        self.matrix.inputs.len()
    }
    fn synthesize<CS: ConstraintSystem<Fr>>(
        &self,
        cs: &mut CS,
        z: &[AllocatedNum<Fr>],
    ) -> std::result::Result<Vec<AllocatedNum<Fr>>, SynthesisError> {
        if z.len() != self.arity() || self.witness.len() != self.matrix.variables {
            return Err(SynthesisError::Unsatisfiable(
                "diagnostic witness shape".into(),
            ));
        }
        let mut input_at = vec![None; self.matrix.variables];
        for (i, &wire) in self.matrix.inputs.iter().enumerate() {
            input_at[wire] = Some(i);
        }
        let mut output_at = vec![None; self.matrix.variables];
        for (i, &wire) in self.matrix.outputs.iter().take(self.arity()).enumerate() {
            output_at[wire] = Some(i);
        }
        let mut wires = vec![CS::one(); self.matrix.variables];
        let mut returned = vec![None; self.arity()];
        for wire in 1..self.matrix.variables {
            if let Some(i) = input_at[wire] {
                wires[wire] = z[i].get_variable();
            } else {
                let value = AllocatedNum::alloc(cs.namespace(|| format!("wire_{wire}")), || {
                    Ok(self.witness[wire])
                })?;
                wires[wire] = value.get_variable();
                if let Some(i) = output_at[wire] {
                    returned[i] = Some(value);
                }
            }
        }
        for (index, row) in self.matrix.rows.iter().enumerate() {
            cs.enforce(
                || format!("actual_row_{index}"),
                |v| lc(v, &row[0], &wires),
                |v| lc(v, &row[1], &wires),
                |v| lc(v, &row[2], &wires),
            );
        }
        returned
            .into_iter()
            .map(|value| {
                value.ok_or_else(|| SynthesisError::Unsatisfiable("missing returned wire".into()))
            })
            .collect()
    }
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Witnesses {
    matrix_sha256: String,
    wires: Vec<Vec<u64>>,
    initial: Vec<u32>,
    expected: Vec<u32>,
}
fn digest(bytes: &[u8]) -> String {
    Sha256::digest(bytes)
        .iter()
        .map(|v| format!("{v:02x}"))
        .collect()
}
fn event(name: &str, start: Instant) {
    println!(
        "{}",
        serde_json::json!({"event":name,"elapsed_ns":start.elapsed().as_nanos(),"g1_pass":false})
    );
}
fn encoded_size<T: serde::Serialize>(directory: &std::path::Path, name: &str, value: &T) -> Result<()> {
    let start = Instant::now();
    let bytes = bincode::serde::encode_to_vec(
        value,
        bincode::config::standard().with_fixed_int_encoding(),
    )?;
    let path = directory.join(format!("{name}.bin"));
    use std::io::Write;
    let mut file = fs::OpenOptions::new().create_new(true).write(true).open(path)?;
    file.write_all(&bytes)?;
    println!(
        "{}",
        serde_json::json!({"event":"artifact_encoding","artifact":name,
        "bytes":bytes.len(),"elapsed_ns":start.elapsed().as_nanos(),"sha256":digest(&bytes),"g1_pass":false})
    );
    Ok(())
}
fn run() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    if args.len() != 4 {
        return Err("numeric_cost_export MATRIX WITNESSES.json ARTIFACT_DIR".into());
    }
    let artifacts = std::path::Path::new(&args[3]);
    fs::create_dir(artifacts)?;
    let bytes = fs::read(&args[1])?;
    let data: Witnesses = serde_json::from_slice(&fs::read(&args[2])?)?;
    if digest(&bytes) != data.matrix_sha256
        || data.wires.len() != 2
        || data.initial.len() != 43
        || data.expected.len() != 43
    {
        return Err("diagnostic input identity/shape".into());
    }
    let matrix = Arc::new(matrix(&bytes)?);
    let mut circuits = Vec::new();
    let mut endpoint: Vec<_> = data
        .initial
        .iter()
        .map(|&v| Fr::from(u64::from(v)))
        .collect();
    for witness in data.wires {
        if witness.len() != matrix.variables || witness[0] != 1 {
            return Err("witness shape/constant".into());
        }
        let witness: Vec<_> = witness.into_iter().map(Fr::from).collect();
        if matrix
            .inputs
            .iter()
            .map(|&wire| witness[wire])
            .collect::<Vec<_>>()
            != endpoint
        {
            return Err("unlinked witness inputs".into());
        }
        for (index, row) in matrix.rows.iter().enumerate() {
            let eval = |terms: &Vec<(usize, Fr)>| {
                terms.iter().fold(Fr::ZERO, |sum, &(wire, coefficient)| {
                    sum + witness[wire] * coefficient
                })
            };
            if eval(&row[0]) * eval(&row[1]) != eval(&row[2]) {
                return Err(format!("actual row {index} unsatisfied").into());
            }
        }
        endpoint = matrix
            .outputs
            .iter()
            .take(43)
            .map(|&wire| witness[wire])
            .collect();
        circuits.push(NumericCircuit {
            matrix: matrix.clone(),
            witness: Arc::new(witness),
        });
    }
    if endpoint
        != data
            .expected
            .iter()
            .map(|&v| Fr::from(u64::from(v)))
            .collect::<Vec<_>>()
    {
        return Err("native expected endpoint differs".into());
    }
    println!(
        "{}",
        serde_json::json!({"event":"native_rows_satisfied","matrix_sha256":data.matrix_sha256,"rows":matrix.rows.len(),"variables":matrix.variables,"scope":"untrusted actual numeric primitive cost diagnostic; uncertified Nova embedding; OS entropy; no full K or fresh consumer","g1_pass":false})
    );
    let start = Instant::now();
    let pp = Parameters::setup(&circuits[0], &*S1::ck_floor(), &*S2::ck_floor())?;
    event("cold_parameter_setup", start);
    println!(
        "{}",
        serde_json::json!({"event":"augmented_shape","constraints":pp.num_constraints(),"variables":pp.num_variables(),"g1_pass":false})
    );
    let initial: Vec<_> = data
        .initial
        .iter()
        .map(|&v| Fr::from(u64::from(v)))
        .collect();
    let start = Instant::now();
    let mut proof = Proof::new(&pp, &circuits[0], &initial)?;
    event("constructor_includes_first_step", start);
    let start = Instant::now();
    proof.prove_step(&pp, &circuits[0])?;
    event("first_prove_step_counter_only", start);
    let start = Instant::now();
    proof.prove_step(&pp, &circuits[1])?;
    event("second_prove_step_actual_fold", start);
    let start = Instant::now();
    let verified = proof.verify(&pp, 2, &initial)?;
    if verified != endpoint {
        return Err("verified complete endpoint differs".into());
    }
    event("recursive_verify_full_endpoint", start);
    encoded_size(artifacts, "parameters", &pp)?;
    encoded_size(artifacts, "recursive_proof", &proof)?;
    let start = Instant::now();
    let (pk, vk) = Compressed::setup(&pp)?;
    event("compression_key_setup", start);
    encoded_size(artifacts, "compression_prover_key", &pk)?;
    encoded_size(artifacts, "compression_verifier_key", &vk)?;
    let start = Instant::now();
    let compressed = Compressed::prove(&pp, &pk, &proof)?;
    event("compress", start);
    encoded_size(artifacts, "compressed_proof", &compressed)?;
    let start = Instant::now();
    let verified_compressed = compressed.verify(&vk, 2, &initial)?;
    if verified_compressed != endpoint {
        return Err("compressed complete endpoint differs".into());
    }
    event("compressed_verify_full_endpoint_same_process", start);
    println!(
        "{}",
        serde_json::json!({"event":"diagnostic_complete","recursive_verified":true,"compressed_verified":true,"complete_endpoint_equal":true,"fresh_consumer":false,"release_relation_complete":false,"g1_pass":false})
    );
    Ok(())
}
fn main() {
    if let Err(error) = run() {
        eprintln!("numeric cost diagnostic failed: {error}");
        std::process::exit(1);
    }
}
